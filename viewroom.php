<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">
<?php
require("core/config.core.php");
require("core/connect.core.php");
require("core/functions.core.php");
$getdata = new clear_db();
$connect = $getdata->my_sql_connect(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);
mysqli_set_charset($connect, "utf8");
date_default_timezone_set('Asia/Bangkok');
$system_info = $getdata->my_sql_query($connect, NULL, "system_info", NULL);
//$getasset = $getdata->my_sql_query($connect, NULL, "asset", "as_id='" . htmlspecialchars($_GET['key']) . "'");
$guest_detail = $getdata->my_sql_query($connect, NULL, "bm_guest", "key_guest='" . htmlspecialchars($_GET['key']) . "'");

?>

<head>

  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="<?php echo @$system_info->site_name; ?>">


    <title><?php echo @$system_info->site_name; ?></title>

    <!-- PLUGINS CSS STYLE -->
    <link href="assets/plugins/nprogress/nprogress.css" rel="stylesheet" />
    <!-- No Extra plugin used -->
    <link href="assets/plugins/jvectormap/jquery-jvectormap-2.0.3.css" rel="stylesheet" />

    <link href="assets/plugins/daterangepicker/daterangepicker.css" rel="stylesheet" />



    <link rel="stylesheet" href="assets/plugins/toastr/toastr.min.css" />

    <!-- SLEEK CSS -->
    <link id="sleek-css" rel="stylesheet" href="assets/css/sleek.css" />

    <link href="assets/plugins/fontawesome-5.12.1/css/all.css" rel="stylesheet" type="text/css">
    <!-- <script src="assets/plugins/fontawesome-5.12.1/js/all.js"></script> -->

    <link rel="stylesheet" href="assets/plugins/MaterialDesign/css/materialdesignicons.min.css">

    <script src="assets/plugins/nprogress/nprogress.js"></script>

    <link href="assets/plugins/ladda/ladda.min.css" rel="stylesheet" />
    <!-- GOOGLE FONTS -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500|Poppins:400,500,600,700|Roboto:400,500" rel="stylesheet" />
    <link href="https://cdn.materialdesignicons.com/4.4.95/css/materialdesignicons.min.css" rel="stylesheet" />

    <link href="assets/plugins/data-tables/datatables.bootstrap4.min.css" rel="stylesheet">
    <link href="assets/plugins/data-tables/responsive.datatables.min.css" rel="stylesheet" />

    <script src="assets/plugins/sweetalert2/sweetalert2.all.min.js"></script>
    <link rel="stylesheet" href="assets/plugins/sweetalert2/sweetalert2.min.css">

    <!-- Charts Online -->
    <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>

    <link rel="stylesheet" href="assets/plugins/select2/css/select2.min.css">
    <link rel="stylesheet" href="assets/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">


    <link rel="stylesheet" href="https://cdn.datatables.net/select/1.3.1/css/select.dataTables.min.css">

    <!--<link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.6.1/css/buttons.dataTables.min.css">-->
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.6.1/css/buttons.bootstrap4.min.css">
  </head>

</head>

<body class="" id="body">

  <div class="card-header">
    <div class="card-header text-center" style="background: <?php echo @$system_info->site_color_form; ?>;">

      <img src="resource/system/logo/<?php echo @$system_info->site_logo; ?>" width="150" alt="" class="mb-2" />
      <h3 style="color: <?php echo @$system_info->site_color_name; ?>;"><strong><?php echo @$system_info->site_name; ?></strong> </h3>
    </div>
  </div>

  <div class="card mb-3">
    <div class="card-header bg-success text-white font-weight-bold">
      <div class="row">
        <span class="ml-3">รายละเอียด</span>

      </div>
    </div>
    <div class="card-body">
      <div class="form-group row text-center">
        <div class="col-md-3">
          <?php
          if ($guest_detail->pic == null) {
            echo '<img class="img-thumbnail" src="resource/guest/file_pic_now/no-img.png" width="100%">';
          } else {
            echo '<img class="img-thumbnail" src="resource/guest/delevymo/' . $guest_detail->pic . '" width="70%">';
          }
          ?>

        </div>
        <div class="col-md-9">
          <div class="form-group row mt-2">
            <div class="col-md-4 col-sm-6 text-md-right text-sm-center">
              <label for="prefix_name"><strong>ชื่อ - นามสกุล : </strong></label>
            </div>
            <div class="col-md-3 col-sm-6 text-md-left text-sm-center">
              <label for="prefix_code"><?php echo @prefixConvertor($guest_detail->prefix_name).$guest_detail->fname . ' ' . $guest_detail->lname; ?></label>
            </div>
            <div class="col-md-3 col-sm-6 text-md-right text-sm-center">
              <label for="prefix_name"><strong>ตำแหน่ง : </strong></label>
            </div>
            <div class="col-md-2 col-sm-6 text-md-left text-sm-center">
              <label for="prefix_code"><?php echo @$guest_detail->position; ?></label>
            </div>
          </div>

          <div class="form-group row mt-2">
            <div class="col-md-4 col-sm-6 text-md-right text-sm-center">
              <label for="prefix_name"><strong>สังกัด : </strong></label>
            </div>
            <div class="col-md-2 col-sm-6 text-md-left text-sm-center">
              <label for="prefix_code"><?php echo $guest_detail->department; ?></label>
            </div>
            <div class="col-md-4 col-sm-6 text-md-right text-sm-center">
              <label for="prefix_name"><strong>สถานะผู้เข้าพัก : </strong></label>
            </div>
            <div class="col-md-2 col-sm-6 text-md-left text-sm-center">
              <label for="prefix_code"><?php echo @status_guest($guest_detail->status_guest); ?></label>
            </div>

            
          </div>


          <div class="form-group row mt-2">
            <div class="col-md-4 col-sm-6 text-md-right text-sm-center">
              <label for="prefix_name"><strong>หมายเลขโทรศัพท์ : </strong></label>
            </div>
            <div class="col-md-2 col-sm-6 text-md-left text-sm-center">
              <label for="prefix_code"><?php echo $guest_detail->tel; ?></label>
            </div>
            <!-- <div class="col-md-4 col-sm-6 text-md-right text-sm-center">
              <label for="prefix_name"><strong>เลขบัตรประจำตัวประชาชน : </strong></label>
            </div>
            <div class="col-md-2 col-sm-6 text-md-left text-sm-center">
              <label for="prefix_code"><?php echo $guest_detail->id_card; ?></label>
            </div> -->
            <div class="col-md-4 col-sm-6 text-md-right text-sm-center">
              <label for="prefix_name"><strong>สถานะ : </strong></label>
            </div>
            <div class="col-md-2 col-sm-6 text-md-left text-sm-center">
              <label for="prefix_code"><?php if ($guest_detail->status == '1') {
                                          echo '<span class="badge badge-warning">รอการยืนยันเข้าพัก</span>';
                                        } elseif ($guest_detail->status == '2') {
                                          echo '<span class="badge badge-success">เข้าพัก</span>';
                                        } elseif ($guest_detail->status == '9') {
                                          echo '<span class="badge badge-danger">ยกเลิกข้อมูล</span>';
                                        } else {
                                          echo '<span class="badge badge-danger">ออกจากห้องพัก</span>';
                                        } ?></label>
            </div>
          </div>


          <div class="form-group row mt-2">
            <div class="col-md-4 col-sm-6 text-md-right text-sm-center">
              <label for="prefix_name"><strong>จำนวนบริวาร : </strong></label>
            </div>
            <div class="col-md-2 col-sm-6 text-md-left text-sm-center">
              <?php if ($guest_detail->status_guest_detail == '1') { ?>
                <h5> <label for="prefix_code"><?php $count_guest_detail = $getdata->my_sql_show_rows($connect, "bm_guest_detail", "code_guest = '" . $guest_detail->code . "'");
                                              echo $count_guest_detail; ?> ท่าน</label></h5>
              <?php } else { ?>
                <h5> <label for="prefix_code"> ไม่แจ้งบริวาร</label></h5>
              <?php } ?>
            </div>


          </div>

          <div class="form-group row mt-2">
            <div class="col-md-4 col-sm-6 text-md-right text-sm-center">
              <label for="prefix_name"><strong>ชื่ออาคาร : </strong></label>
            </div>
            <div class="col-md-2 col-sm-6 text-md-left text-sm-center">
              <label for="prefix_code"><?php echo @building($guest_detail->building); ?></label>
            </div>

            <div class="col-md-4 col-sm-6 text-md-right text-sm-center">
              <label for="prefix_name"><strong>ชื่อชั้น : </strong></label>
            </div>
            <div class="col-md-2 col-sm-6 text-md-left text-sm-center">
              <label for="prefix_code"><?php echo @prefixConvertorService($guest_detail->floor); ?></label>
            </div>
          </div>

          <div class="form-group row mt-2">
            <div class="col-md-4 col-sm-6 text-md-right text-sm-center">
              <label for="prefix_name"><strong>ชื่อห้อง/รหัสห้อง : </strong></label>
            </div>
            <div class="col-md-2 col-sm-6 text-md-left text-sm-center">
              <label for="prefix_code"><?php echo @prefixConvertorServiceList($guest_detail->room); ?></label>
            </div>

          </div>
          <?php if ($guest_detail->detail != NULL) { ?>
            <div class="form-group row mt-2">
              <div class="col-md-4 col-sm-6 text-md-right text-sm-center">
                <label for="prefix_name"><strong>รายละเอียดเพิ่มเติม : </strong></label>
              </div>
              <div class="col-md-8 col-sm-6 text-md-left text-sm-center">
                <label for="prefix_code"><?php
                                          if ($guest_detail->detail == NULL) {
                                            echo '<strong class ="text-danger">ไม่มีข้อมูล</strong>';
                                          } else {
                                            echo $guest_detail->detail;
                                          }
                                          ?></label>
              </div>
            <?php } ?>
            </div>
            <!-- <div class="form-group row mt-2">
            <div class="col-md-4 col-sm-6 text-md-right text-sm-center">
              <label for="prefix_name"><strong>ผู้บันทึกข้อมูล : </strong></label>
            </div>
            <div class="col-md-2 col-sm-6 text-md-left text-sm-center">
              <label for="prefix_code"><?php echo @getemployee($guest_detail->user_key); ?></label>
            </div>
          </div> -->
        </div>



      </div>

    </div>
    <?php if ($guest_detail->status_guest_detail == '1') { ?>
      <div class="card broder-warning ">
        <div class="card-header bg-dark text-white font-weight-bold">
          ข้อมูลบริวาร
        </div>
        <div class="card-body">
          <form method="POST" enctype="multipart/form-data">

            <div class="col-12">
              <div class="row">
                <!-- style="width: 108%" -->
                <?php
                $i = 0;
                $getdetail = $getdata->my_sql_select($connect, NULL, "bm_guest_detail", "code_guest='" . $guest_detail->code . "' ORDER BY create_time");
                while ($showlist = mysqli_fetch_object($getdetail)) {
                  $i++
                ?>

                  <div class="card col-md-4 col-sm-12 mt-3" style="border:0px solid #e5e9f2">
                    <div class="card-header text-center" style="background-color:#f0f8ff00">
                      <?php
                      if ($showlist->pic == null) {
                        echo '<img class="img-thumbnail text-center" src="resource/guest/file_pic_now/no-img.png" width="90%">';
                      } else {
                        echo '<img class="img-thumbnail" src="resource/guest/delevymo/' . $showlist->pic . '" width="60%">';
                      }
                      ?>
                      <br>

                    </div>
                    <div class="card-body">
                      <h5 class="card-title"><strong>ลำดับที่ : </strong><?php echo $i; ?><h5>
                          <div class="row m-1">
                            <div class="col-6 text-right">
                              ชื่อ - นามสกุล :
                            </div>
                            <div class="col-6">
                              <label for=""> <?php echo @prefixConvertor($showlist->prefix_name) . ' ' . $showlist->fname . ' ' . $showlist->lname; ?></label>
                            </div>
                          </div>
                          <div class="row m-1">
                            <div class="col-6 text-right">
                              ความสัมพันธ์ :
                            </div>
                            <div class="col-6">
                              <label for=""><?php echo @relation($showlist->relation); ?></label>
                            </div>
                          </div>

                          <!-- <div class="row m-1">
                          <div class="col-6 text-right">
                            หมายเลขโทรศัพท์ :
                          </div>
                          <div class="col-6">
                            <label for=""><?php echo $showlist->tel; ?></label>
                          </div>
                        </div> -->

                    </div>
                    <div class="card-footer text-center" style="background-color:#f0f8ff00">

                    </div>
                  </div>
                <?php
                }
                ?>
              </div>
            </div>




          </form>
        </div>



      </div>
    <?php } ?>




    <div class="card-footer text-center">
      <a href="#" class="btn btn-xs btn-outline-danger" onclick="window.close();"><i class="fa fa-reply"></i> กลับ</a>
    </div>

  </div>




</body>
<script src="assets/plugins/jquery/jquery.min.js"></script>
<script src="assets/plugins/slimscrollbar/jquery.slimscroll.min.js"></script>
<script src="assets/plugins/jekyll-search.min.js"></script>



<script src="assets/plugins/charts/Chart.min.js"></script>



<script src="assets/plugins/jvectormap/jquery-jvectormap-2.0.3.min.js"></script>
<script src="assets/plugins/jvectormap/jquery-jvectormap-world-mill.js"></script>



<script src="assets/plugins/daterangepicker/moment.min.js"></script>
<script src="assets/plugins/daterangepicker/daterangepicker.js"></script>

<script src="assets/plugins/toastr/toastr.min.js"></script>



<script src="assets/js/sleek.bundle.js"></script>

<script src="assets/plugins/data-tables/jquery.datatables.min.js"></script>
<script src="assets/plugins/data-tables/datatables.bootstrap4.min.js"></script>

<script src="assets/plugins/data-tables/datatables.responsive.min.js"></script>

<script src="assets/custom/customJS.js"></script>


<script src="assets/plugins/select2/js/select2.full.min.js"></script>


<script src="assets/plugins/ladda/spin.min.js"></script>
<script src="assets/plugins/ladda/ladda.min.js"></script>


<!-- onlineTest -->
<script src="https://cdn.datatables.net/buttons/1.6.1/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.6.1/js/buttons.bootstrap4.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script> -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script> -->
<!-- <script src="../js/custom/pdfmake.min.js"></script>
<script src="../js/custom/vfs_fonts.js"></script> -->
<script src="https://cdn.datatables.net/buttons/1.6.1/js/buttons.html5.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.6.1/js/buttons.print.min.js"></script>
<script src="https://cdn.datatables.net/select/1.3.1/js/dataTables.select.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.6.1/js/buttons.colVis.min.js"></script>

</html>