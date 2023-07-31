<?php
error_reporting(0);
require("../../core/config.core.php");
require("../../core/connect.core.php");
require("../../core/functions.core.php");
$getdata = new clear_db();
$connect = $getdata->my_sql_connect(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);
$userdata = $getdata->my_sql_query($connect, NULL, "user", "user_key='" . $_SESSION['ukey'] . "'");
mysqli_set_charset($connect, "utf8");

$guest_detail = $getdata->my_sql_query($connect, NULL, "bm_guest", "room='" . htmlspecialchars($_GET['key']) . "' AND status = '2'");

$PNG_TEMP_DIR = '../../plugins/phpqrcode/temp/';
$PNG_WEB_DIR = '../plugins/phpqrcode/temp/';
require("../../plugins/phpqrcode/qrlib.php");
//ofcourse we need rights to create temp dir
if (!file_exists($PNG_TEMP_DIR))
    mkdir($PNG_TEMP_DIR);

$filename = '../../plugins/phpqrcode/temp/guest-' . md5(@urlqrview() . $guest_detail->key_guest . '|' . 'H' . '|' . '2') . '.png';
QRcode::png(@urlqrview() . $guest_detail->key_guest, $filename, 'H', 2, 2);


?>
<div class="modal-body">
    <?php if ($guest_detail->key_guest != NULL) { ?>
        <div class="col-12 text-center">
            <?php echo '<img src="' . $PNG_WEB_DIR . basename($filename) . '" /><br/>';
            //echo @$guest_detail->code;  
            ?>
        </div>
        <div class="col-12 mt-2">
            <a href="<?php echo @urlqrview() . $guest_detail->key_guest; ?>" target="_blank" class="mb-1 btn btn-outline-info btn-lg btn-block"><i class="fas fa-share-square"></i> คลิกเพื่อเปิด</a>
        </div>
        <?php //echo @urlqrview() . $guest_detail->key_guest; 
        ?>




        <div class="form-group">
            <input name="room_log" value="<?php echo $guest_detail->key_guest; ?>" hidden>
        </div>
    <?php } else { ?>
        <div class="col-12 mt-2">
            <a href="../index.php" target="_blank" class="mb-1 btn btn-outline-success btn-lg btn-block"><i class="fas fa-share-square"></i> ห้องว่าง</a>
        </div>
    <?php } ?>
</div>