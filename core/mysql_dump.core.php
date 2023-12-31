<?php
function datadump($table, $drop = true, $stripapos = true)
{
  $getdata = new clear_db();
  $connect = $getdata->my_sql_connect(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);
  mysqli_set_charset($connect, "utf8");

  $result     = "# Dump of $table \n";
  $result    .= "# Dump DATE : " . date("d-M-Y") . "\n\n";
  if ($drop) {
    if ($stripapos) {
      $result    .= "DROP TABLE IF EXISTS $table;\n";
      // dump create table
      $createTableQuery = mysqli_query($connect, "SHOW CREATE TABLE " . $table . ";");
      $createTable      = mysqli_fetch_row($createTableQuery);
      $result          .= str_replace('`', '', $createTable[1]) . ";\n\n\n\n";
    } else {
      $result    .= "DROP TABLE IF EXISTS `$table`;\n";
      // dump create table
      $createTableQuery = mysqli_query($connect, "SHOW CREATE TABLE " . $table . ";");
      $createTable      = mysqli_fetch_row($createTableQuery);
      $result          .= $createTable[1] . ";\n\n\n\n";
    }
  } else {
    $result    .= "TRUNCATE TABLE $table;\n";
  }

  $query      = mysqli_query($connect, "SELECT * FROM $table");
  $num_fields = @mysqli_num_fields($query);
  $numrow     = mysqli_num_rows($query);

  $columnsRes = mysqli_query($connect, "SHOW COLUMNS FROM $table;");
  $columns = array();

  while ($row = mysqli_fetch_assoc($columnsRes)) {
    $columns[$row['Field']] = $row;
  }

  while ($row = mysqli_fetch_assoc($query)) {
    $result .= "INSERT INTO " . $table . " VALUES(";

    $fields = array();

    foreach ($row as $field => $data) {
      if (
        strpos(strtolower($columns[$field]['Type']), 'int') !== false
        || strpos(strtolower($columns[$field]['Type']), 'float') !== false
        || strpos(strtolower($columns[$field]['Type']), 'tinyint') !== false
      ) {
        if (strlen($data) > 0) {
          $fields[] = $data;
        } else {
          if (strtolower($columns[$field]['Null']) == 'no') {
            $fields[] = 0;
          } else {
            $fields[] = "NULL";
          }
        }
      } elseif (strpos(strtolower($columns[$field]['Type']), 'datetime') !== false) {
        if (strlen($data) > 0) {
          $fields[] = "\"" . $data . "\"";
        } else {
          if (strtolower($columns[$field]['Null']) == 'no') {
            $fields[] = '""';
          } else {
            $fields[] = "NULL";
          }
        }
      } elseif (strpos(strtolower($columns[$field]['Type']), 'time') !== false) {
        if (strlen($data) > 0) {
          $fields[] = "\"" . $data . "\"";
        } else {
          if (strtolower($columns[$field]['Null']) == 'no') {
            $fields[] = '""';
          } else {
            $fields[] = "NULL";
          }
        }
      } elseif (
        strpos(strtolower($columns[$field]['Type']), 'varchar') !== false
        || strpos(strtolower($columns[$field]['Type']), 'text') !== false
        || strpos(strtolower($columns[$field]['Type']), 'longtext') !== false
        || strpos(strtolower($columns[$field]['Type']), 'mediumtext') !== false
      ) {
        $data = addslashes($data);
        //$data = trim(ereg_replace("\n", "\\n", $data));
        if (strlen($data) > 0) {
          $fields[] = "\"" . $data . "\"";
        } else {
          if (strtolower($columns[$field]['Null']) == 'no') {
            $fields[] = '""';
          } else {
            $fields[] = "NULL";
          }
        }
      } else {
        // $columns[$field]['Type'] will contain the datatype
        if (strlen($data) > 0) {
          $fields[] = "\"" . $data . "\"";
        } else {
          if (strtolower($columns[$field]['Null']) == 'no') {
            $fields[] = '""';
          } else {
            $fields[] = "NULL";
          }
        }
      }
    }
    $result .= implode(',', $fields);
    $result .= ");\n";
  }
  return $result . "\n\n\n";
}
