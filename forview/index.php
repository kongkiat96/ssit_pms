<!DOCTYPE html>
<html lang="en" dir="ltr">
<?php
require("../core/config.core.php");
require("../core/connect.core.php");
require("../core/functions.core.php");
$getdata = new clear_db();
$connect = $getdata->my_sql_connect(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);
mysqli_set_charset($connect, "utf8");
date_default_timezone_set('Asia/Bangkok');
$system_info = $getdata->my_sql_query($connect, NULL, "system_info", NULL);
?>

<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <meta name="description" content="<?php echo @$system_info->site_name; ?>">


  <title><?php echo @$system_info->site_name; ?></title>

  <!-- FAVICON -->
  <link rel="shortcut icon" href="../resource/system/favicon/<?php echo @$system_info->site_favicon; ?>" />

  <!-- GOOGLE FONTS -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500|Poppins:400,500,600,700|Roboto:400,500" rel="stylesheet" />
  <link href="https://cdn.materialdesignicons.com/4.4.95/css/materialdesignicons.min.css" rel="stylesheet" />

  <link rel="stylesheet" href="assets/fontsarabun/style.css">

  <!-- PLUGINS CSS STYLE -->
  <link href="assets/plugins/nprogress/nprogress.css" rel="stylesheet" />



  <!-- No Extra plugin used -->



  <link href="assets/plugins/jvectormap/jquery-jvectormap-2.0.3.css" rel="stylesheet" />

  <link href="assets/plugins/data-tables/datatables.bootstrap4.min.css" rel="stylesheet" />



  <link href="assets/plugins/data-tables/responsive.datatables.min.css" rel="stylesheet" />

  <link href="assets/plugins/daterangepicker/daterangepicker.css" rel="stylesheet" />



  <link href="assets/plugins/toastr/toastr.min.css" rel="stylesheet" />



  <!-- SLEEK CSS -->
  <link id="sleek-css" rel="stylesheet" href="assets/css/sleek.css" />

  <!-- FAVICON -->
  <link href="assets/img/favicon.png" rel="shortcut icon" />

  <link href="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.19/dist/sweetalert2.min.css" rel="stylesheet">
  <link href="../assets/plugins/fontawesome-5.12.1/css/all.css" rel="stylesheet" type="text/css">
  <!--
    HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries
  -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
  <script src="assets/plugins/nprogress/nprogress.js"></script>
  <style>
    body {
      font-family: 'THSarabunNew', sans-serif;
    }
  </style>
</head>


<body class="header-fixed sidebar-fixed sidebar-dark header-light" id="body">

  <script>
    NProgress.configure({
      showSpinner: false
    });
    NProgress.start();
  </script>


  <div id="toaster"></div>


  <div class="wrapper">

    <!--
          ====================================
          ——— LEFT SIDEBAR WITH FOOTER
          =====================================
        -->

    <aside class="left-sidebar bg-sidebar">
      <div id="sidebar" class="sidebar sidebar-with-footer">
        <!-- Aplication Brand -->
        <div class="app-brand">
          <a href="#" title="<?php echo @$system_info->site_name; ?>">
            <img src="../resource/system/logo/<?php echo @$system_info->site_logo; ?>" width="30px" alt="><?php echo @$system_info->site_name; ?>" />
            <span class="brand-name text-truncate font-weight-bold" style="font-size: 14px; color: <?php echo $system_info->site_color_name; ?>"><?php echo @$system_info->site_name; ?></span>
          </a>
        </div>
        <!-- begin sidebar scrollbar -->
        <div class="sidebar-scrollbar">

          <!-- sidebar menu -->
          <ul class="nav sidebar-inner" id="sidebar-menu">



            <li class="has-sub active expand">
              <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#dashboard" aria-expanded="false" aria-controls="dashboard">
                <i class="mdi mdi-view-dashboard-outline"></i>
                <span class="nav-text">สถานะรายการห้องว่าง</span> <b class="caret"></b>
              </a>
              <ul class="collapse show" id="dashboard" data-parent="#sidebar-menu">
                <div class="sub-menu">



                  <li class="active">
                    <a class="sidenav-item-link" href="#">
                      <i class="mdi mdi-check"></i>
                      <span class="nav-text">&nbsp;ผังแสดงและข้อมูลห้องว่าง</span>

                    </a>
                  </li>






                  <li>
                    <a class="sidenav-item-link" href="../index.php">
                      <i class="mdi mdi-login"></i>
                      <span class="nav-text">&nbsp;เข้าสู่ระบบ</span>



                    </a>
                  </li>




                </div>
              </ul>
            </li>









          </ul>

        </div>

      </div>
    </aside>


    <div class="page-wrapper">
      <!-- Header -->
      <header class="main-header " id="header">
        <nav class="navbar navbar-static-top navbar-expand-lg">
          <!-- Sidebar toggle button -->
          <button id="sidebar-toggler" class="sidebar-toggle">
            <span class="sr-only">Toggle navigation</span>
          </button>
          <!-- search form -->
          <div class="search-form d-none d-lg-inline-block">

            <div id="search-results-container">
              <ul id="search-results"></ul>
            </div>
          </div>

          <div class="navbar-right ">
            <ul class="nav navbar-nav">

              <li class="right-sidebar-in right-sidebar-2-menu">
                <i class="mdi mdi-settings mdi-spin"></i>
              </li>
              <!-- User Account -->
              <li class="dropdown user-menu">
                <button href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                  <img src="../assets/img/user/noimg.jpg" class="user-image" alt="User Image" />
                  <span class="d-none d-lg-inline-block">Guest View Room</span>
                </button>
              </li>
            </ul>
          </div>
        </nav>


      </header>

      <div class="modal fade" id="genlink" role="dialog" aria-labelledby="genlink" aria-hidden="true">
        <div class="modal-dialog modal-md" role="document">
          <form method="post" enctype="multipart/form-data" class="needs-validation">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title">ตรวจสอบข้อมูล</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="link">
                <div class="sk-wave mx-auto">
                  <div class="rect1"></div>
                  <div class="rect2"></div>
                  <div class="rect3"></div>
                  <div class="rect4"></div>
                  <div class="rect5"></div>
                </div>
              </div>
              <div class="modal-footer">

                <div class="col text-center">
                  <button type="button" class="btn btn-danger btn-sm" data-dismiss="modal"><i class="fa fa-times fa-fw"></i>ปิด</button>
                </div>
              </div>
            </div>
          </form>
        </div>
      </div>


      <div class="content-wrapper">
        <div class="content">
          <div class="card card-default">
            <div class="card-header card-header-border-bottom">
              <h2><i class="fa fa-table"></i> รายการแสดงข้อมูลห้องและการเข้าพัก</h2>
            </div>
            <div class="card-body">
              <div id="accordion3" class="accordion accordion-bordered ">
                <div class="card">
                  <div class="card-header" id="heading2">
                    <button class="btn btn-link" data-toggle="collapse" data-target="#collapse2" aria-expanded="true" aria-controls="collapse2">
                      <i class="fa fa-table"></i> แสดงข้อมูลสถานะแต่ละอาคาร
                    </button>
                  </div>
                  <div id="collapse2" class="collapse show" aria-labelledby="heading2" data-parent="#accordion3">
                    <div class="card-body">
                      <ul class="nav nav-pills">
                        <li class="nav-item">
                          <a class="nav-link active" id="list-tab" data-toggle="tab" href="#list" role="tab" aria-controls="list" aria-selected="true">อาคาร Vertex View </a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" id="showdata-tab" data-toggle="tab" href="#showdata" role="tab" aria-controls="showdata" aria-selected="false">อาคาร Horizon</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" id="showdata_2-tab" data-toggle="tab" href="#showdata_2" role="tab" aria-controls="showdata_2" aria-selected="false">อาคาร Vertical View</a>
                        </li>
                      </ul>
                      <div class="tab-content" id="myTabContent3">
                        <hr>

                        <div class="tab-pane pt-3 fade show active" id="list" role="tabpanel" aria-labelledby="list-tab">

                          <div class="row">
                            <?php
                            $i = 0;
                            $getbuilding = $getdata->my_sql_select($connect, NULL, "service", "se_id AND se_group = '1' AND se_status = '1'");
                            while ($showfloor = mysqli_fetch_object($getbuilding)) {
                              $i++
                            ?>
                              <div class="col-md-6 col-sm-12">
                                <div class="card">
                                  <div class="card-header text-center">
                                    <button class="btn btn-link" aria-expanded="true" aria-controls="collapse2">
                                      <i class="fa fa-chart-bar"></i> <?php echo $showfloor->se_name; ?>
                                    </button>
                                  </div>
                                  <div class="card-body">
                                    <div class="row">
                                      <?php

                                      $getroom = $getdata->my_sql_select($connect, NULL, "service_list", "se_id = '" . $showfloor->se_id . "' AND se_group = '1' AND se_li_status != '0'");
                                      while ($showroom = mysqli_fetch_object($getroom)) {
                                        //$guest_detail = $getdata->my_sql_query($connect, NULL, "bm_guest", "key_guest='" . htmlspecialchars($_GET['key']) . "'");
                                      ?>
                                        <?php if ($showroom->se_li_status == '1') { ?>
                                          <div class="col-md-2 col-sm-4 mt-2">
                                            <a class="mb-1 btn btn-outline-success" data-toggle="modal" data-target="#genlink" data-whatever="<?php echo @$showroom->se_li_id; ?>"><i class=" mdi mdi-checkbox-marked-outline mr-1"></i> <?php echo $showroom->se_li_name; ?></a>
                                          </div>
                                        <?php } elseif ($showroom->se_li_status == '2') {  ?>
                                          <div class="col-md-2 col-sm-4 mt-2">
                                            <a class="mb-1 btn btn-outline-danger" data-toggle="modal" data-target="#genlink" data-whatever="<?php echo @$showroom->se_li_id; ?>"><i class="mdi mdi-close-circle-outline mr-1"></i> <?php echo $showroom->se_li_name; ?></a>
                                          </div>
                                        <?php } ?>

                                      <?php } ?>
                                    </div>
                                  </div>
                                  <div class="card-footer text-center" style="background-color:#f0f8ff00">

                                  </div>
                                </div>

                              </div>
                            <?php } ?>
                          </div>

                        </div>
                        <div class="tab-pane pt-3 fade" id="showdata" role="tabpanel" aria-labelledby="showdata-tab">

                          <div class="row">
                            <?php
                            $i = 0;
                            $getbuilding = $getdata->my_sql_select($connect, NULL, "service", "se_id AND se_group = '2' AND se_status = '1'");
                            while ($showfloor = mysqli_fetch_object($getbuilding)) {
                              $i++
                            ?>
                              <div class="col-md-6 col-sm-12">
                                <div class="card">
                                  <div class="card-header text-center">
                                    <button class="btn btn-link" aria-expanded="true" aria-controls="collapse2">
                                      <i class="fa fa-chart-bar"></i> <?php echo $showfloor->se_name; ?>
                                    </button>
                                  </div>
                                  <div class="card-body">
                                    <div class="row">
                                      <?php

                                      $getroom = $getdata->my_sql_select($connect, NULL, "service_list", "se_id = '" . $showfloor->se_id . "' AND se_group = '2' AND se_li_status != '0'");
                                      while ($showroom = mysqli_fetch_object($getroom)) {
                                        //$guest_detail = $getdata->my_sql_query($connect, NULL, "bm_guest", "key_guest='" . htmlspecialchars($_GET['key']) . "'");
                                      ?>
                                        <?php if ($showroom->se_li_status == '1') { ?>
                                          <div class="col-md-2 col-sm-4 mt-2">
                                            <a class="mb-1 btn btn-outline-success" data-toggle="modal" data-target="#genlink" data-whatever="<?php echo @$showroom->se_li_id; ?>"><i class=" mdi mdi-checkbox-marked-outline mr-1"></i> <?php echo $showroom->se_li_name; ?></a>
                                          </div>
                                        <?php } elseif ($showroom->se_li_status == '2') {  ?>
                                          <div class="col-md-2 col-sm-4 mt-2">
                                            <a class="mb-1 btn btn-outline-danger" data-toggle="modal" data-target="#genlink" data-whatever="<?php echo @$showroom->se_li_id; ?>"><i class="mdi mdi-close-circle-outline mr-1"></i> <?php echo $showroom->se_li_name; ?></a>
                                          </div>
                                        <?php } ?>

                                      <?php } ?>
                                    </div>
                                  </div>
                                  <div class="card-footer text-center" style="background-color:#f0f8ff00">

                                  </div>
                                </div>

                              </div>
                            <?php } ?>
                          </div>
                        </div>
                        <div class="tab-pane pt-3 fade" id="showdata_2" role="tabpanel" aria-labelledby="showdata_2-tab">

                          <div class="row">
                            <?php
                            $i = 0;
                            $getbuilding = $getdata->my_sql_select($connect, NULL, "service", "se_id AND se_group = '3' AND se_status = '1'");
                            while ($showfloor = mysqli_fetch_object($getbuilding)) {
                              $i++
                            ?>
                              <div class="col-md-6 col-sm-12">
                                <div class="card">
                                  <div class="card-header text-center">
                                    <button class="btn btn-link" aria-expanded="true" aria-controls="collapse2">
                                      <i class="fa fa-chart-bar"></i> <?php echo $showfloor->se_name; ?>
                                    </button>
                                  </div>
                                  <div class="card-body">
                                    <div class="row">
                                      <?php

                                      $getroom = $getdata->my_sql_select($connect, NULL, "service_list", "se_id = '" . $showfloor->se_id . "' AND se_group = '3' AND se_li_status != '0'");
                                      while ($showroom = mysqli_fetch_object($getroom)) {
                                        //$guest_detail = $getdata->my_sql_query($connect, NULL, "bm_guest", "key_guest='" . htmlspecialchars($_GET['key']) . "'");
                                      ?>
                                        <?php if ($showroom->se_li_status == '1') { ?>
                                          <div class="col-md-2 col-sm-4 mt-2">
                                            <a class="mb-1 btn btn-outline-success" data-toggle="modal" data-target="#genlink" data-whatever="<?php echo @$showroom->se_li_id; ?>"><i class=" mdi mdi-checkbox-marked-outline mr-1"></i> <?php echo $showroom->se_li_name; ?></a>
                                          </div>
                                        <?php } elseif ($showroom->se_li_status == '2') {  ?>
                                          <div class="col-md-2 col-sm-4 mt-2">
                                            <a class="mb-1 btn btn-outline-danger" data-toggle="modal" data-target="#genlink" data-whatever="<?php echo @$showroom->se_li_id; ?>"><i class="mdi mdi-close-circle-outline mr-1"></i> <?php echo $showroom->se_li_name; ?></a>
                                          </div>
                                        <?php } ?>

                                      <?php } ?>
                                    </div>
                                  </div>
                                  <div class="card-footer text-center" style="background-color:#f0f8ff00">

                                  </div>
                                </div>

                              </div>
                            <?php } ?>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <div class="card">
                  <div class="card-header" id="heading1">
                    <button class="btn btn-link " data-toggle="collapse" data-target="#collapse1" aria-expanded="false" aria-controls="collapse1">
                      <i class="fa fa-table"></i> ข้อมูลรายชื่อผู้เข้าพักและสถานะ
                    </button>
                  </div>
                  <div id="collapse1" class="collapse " aria-labelledby="heading1" data-parent="#accordion3">
                    <div class="card-body">
                      <div class="responsive-data-table">
                        <table id="responsive-data-table" class="table dt-responsive nowrap" style="width:100%">
                          <thead class="text-center">
                            <tr>
                              <th>ลำดับ</th>
                              <th>ชื่อ - นาสกุลผู้เข้าพัก</th>
                              <th>ตำแหน่ง</th>
                              <th>วันที่เข้าพัก</th>
                              <th>วันที่ออกจากห้องพัก</th>
                              <th>จำนวนบริวาร</th>
                              <th>สถานะข้อมูล</th>
                              <th>เข้าพักที่</th>
                            </tr>
                          </thead>

                          <tbody>
                            <?php
                            $u = 0;
                            $getguest  = $getdata->my_sql_select($connect, NULL, "bm_guest", "key_guest <> 'hidden' AND sys_procress != '99'");
                            while ($guest_detail = mysqli_fetch_object($getguest)) {
                              $u++;
                            ?>
                              <tr>
                                <td><?php echo $u; ?></td>
                                <td><?php echo @prefixConvertor($guest_detail->prefix_name) . $guest_detail->fname . ' ' . $guest_detail->lname; ?></td>
                                <td><?php echo @$guest_detail->position; ?></td>
                                <td><?php if ($guest_detail->check_in == NULL) {
                                      echo '<span class="badge badge-danger">ยังไม่มีการระบุ</span>';
                                    } else {
                                      echo @dateTimeConvertor($guest_detail->check_in);
                                    } ?></td>
                                <td><?php if ($guest_detail->check_out == NULL) {
                                      echo '<span class="badge badge-danger">ยังไม่มีการระบุ</span>';
                                    } else {
                                      echo @dateTimeConvertor($guest_detail->check_out);
                                    } ?></td>
                                <td><?php $count_guest_detail = $getdata->my_sql_show_rows($connect, "bm_guest_detail", "code_guest = '" . $guest_detail->code . "'");
                                    echo $count_guest_detail; ?> ท่าน</td>
                                <td><?php if ($guest_detail->status == '1') {
                                      echo '<span class="badge badge-warning">รอการยืนยันเข้าพัก</span>';
                                    } elseif ($guest_detail->status == '2') {
                                      echo '<span class="badge badge-success">เข้าพัก</span>';
                                    } elseif ($guest_detail->status == '9') {
                                      echo '<span class="badge badge-danger">ยกเลิกข้อมูล</span>';
                                    } else {
                                      echo '<span class="badge badge-danger">ออกจากห้องพัก</span>';
                                    } ?></td>
                                <!-- <td>
                                  <?php
                                  // if ($guest_detail->sys_procress == '0') {
                                  //     echo '<span class="badge badge-primary">ข้อมูลไม่สมบูรณ์</span>';
                                  //   } elseif ($guest_detail->sys_procress == '1') {
                                  //     echo '<span class="badge badge-success">ข้อมูลครบถ้วน</span>';
                                  //   } elseif ($guest_detail->sys_procress == '2') {
                                  //     echo '<span class="badge badge-danger">ยกเลิกข้อมูล</span>';
                                  //   } 
                                  ?>
                                    </td> -->
                                <td><?php
                                    if ($guest_detail->sys_procress == '1') {
                                      echo @building($guest_detail->building) . ' ' . @prefixConvertorService($guest_detail->floor) . ' <br>ห้อง ' . @prefixConvertorServiceList($guest_detail->room);
                                    } elseif ($guest_detail->sys_procress == '2') {
                                      echo '<span class="badge badge-danger">ยกเลิกข้อมูล</span>';
                                    } elseif ($guest_detail->sys_procress == '0') {
                                      echo '<span class="badge badge-primary">ข้อมูลไม่สมบูรณ์</span>';
                                    }
                                    ?>
                                </td>

                              </tr>

                            <?php } ?>


                          </tbody>
                        </table>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>



        <div class="right-sidebar-2">
          <div class="right-sidebar-container-2">
            <div class="slim-scroll-right-sidebar-2">

              <div class="right-sidebar-2-header">
                <h2>Layout Settings</h2>
                <p>User Interface Settings</p>
                <div class="btn-close-right-sidebar-2">
                  <i class="mdi mdi-window-close"></i>
                </div>
              </div>

              <div class="right-sidebar-2-body">
                <span class="right-sidebar-2-subtitle">Header Layout</span>
                <div class="no-col-space">
                  <a href="javascript:void(0);" class="btn-right-sidebar-2 header-fixed-to btn-right-sidebar-2-active">Fixed</a>
                  <a href="javascript:void(0);" class="btn-right-sidebar-2 header-static-to">Static</a>
                </div>

                <span class="right-sidebar-2-subtitle">Sidebar Layout</span>
                <div class="no-col-space">
                  <select class="right-sidebar-2-select" id="sidebar-option-select">
                    <option value="sidebar-fixed">Fixed Default</option>
                    <option value="sidebar-fixed-minified">Fixed Minified</option>
                    <option value="sidebar-fixed-offcanvas">Fixed Offcanvas</option>
                    <option value="sidebar-static">Static Default</option>
                    <option value="sidebar-static-minified">Static Minified</option>
                    <option value="sidebar-static-offcanvas">Static Offcanvas</option>
                  </select>
                </div>

                <span class="right-sidebar-2-subtitle">Header Background</span>
                <div class="no-col-space">
                  <a href="javascript:void(0);" class="btn-right-sidebar-2 btn-right-sidebar-2-active header-light-to">Light</a>
                  <a href="javascript:void(0);" class="btn-right-sidebar-2 header-dark-to">Dark</a>
                </div>

                <span class="right-sidebar-2-subtitle">Navigation Background</span>
                <div class="no-col-space">
                  <a href="javascript:void(0);" class="btn-right-sidebar-2 btn-right-sidebar-2-active sidebar-dark-to">Dark</a>
                  <a href="javascript:void(0);" class="btn-right-sidebar-2 sidebar-light-to">Light</a>
                </div>

                <span class="right-sidebar-2-subtitle">Direction</span>
                <div class="no-col-space">
                  <a href="javascript:void(0);" class="btn-right-sidebar-2 btn-right-sidebar-2-active ltr-to">LTR</a>
                  <a href="javascript:void(0);" class="btn-right-sidebar-2 rtl-to">RTL</a>
                </div>

                <div class="d-flex justify-content-center" style="padding-top: 30px">
                  <div id="reset-options" style="width: auto; cursor: pointer" class="btn-right-sidebar-2 btn-reset">
                    Reset
                    Settings</div>
                </div>

              </div>

            </div>
          </div>

        </div>

      </div>

      <div class="modal" tabindex="-1" role="dialog" id="cookieConsentModal">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">ความยินยอมในการใช้คุกกี้</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <p>เว็บไซต์นี้ใช้คุกกี้เพื่อประสบการณ์ที่ดีขึ้น หากคุณต่อเนื่องการเรียกดูเว็บไซต์นี้ จะถือว่าคุณยินยอมให้เราใช้คุกกี้</p>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-primary" data-dismiss="modal">ยอมรับ</button>
            </div>
          </div>
        </div>
      </div>




      <footer class="footer mt-auto">
        <div class="copyright bg-white">
          <p>
            &copy; <span id="copy-year"><?php echo date('Y') ?></span> Copyright <?php echo @$system_info->site_name; ?>.
          </p>
        </div>
      </footer>

    </div>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.19/dist/sweetalert2.min.js"></script>
  <script>
    document.addEventListener("DOMContentLoaded", function() {
      // ตรวจสอบว่ามีคุกกี้ยินยอมหรือไม่
      if (!getCookie("cookieConsent")) {
        Swal.fire({
          title: 'ยินยอมการเปิดเผยข้อมูล',
          text: 'ทดสอบ',
          icon: 'info',
          showCancelButton: true,
          confirmButtonText: 'ยอมรับ',
          cancelButtonText: 'ปฏิเสธ'
        }).then((result) => {
          if (result.isDismissed) {
            // ถ้าผู้ใช้ปฏิเสธ, reload หน้าเว็บ
            location.reload();
        }
        });
      }
    });

    function setCookie(name, value, days) {
      let date = new Date();
      date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
      let expires = "expires=" + date.toUTCString();
      document.cookie = name + "=" + value + ";" + expires + ";path=/";
    }

    function getCookie(name) {
      let cookieArray = document.cookie.split(';');
      for (let i = 0; i < cookieArray.length; i++) {
        let cookie = cookieArray[i];
        while (cookie.charAt(0) == ' ') {
          cookie = cookie.substring(1);
        }
        if (cookie.indexOf(name + "=") == 0) {
          return cookie.substring(name.length + 1, cookie.length);
        }
      }
      return "";
    }
  </script>
  <script src="assets/plugins/jquery/jquery.min.js"></script>
  <script src="assets/plugins/slimscrollbar/jquery.slimscroll.min.js"></script>
  <script src="assets/plugins/jekyll-search.min.js"></script>



  <script src="assets/plugins/charts/Chart.min.js"></script>



  <script src="assets/plugins/jvectormap/jquery-jvectormap-2.0.3.min.js"></script>
  <script src="assets/plugins/jvectormap/jquery-jvectormap-world-mill.js"></script>



  <script src="assets/plugins/daterangepicker/moment.min.js"></script>
  <script src="assets/plugins/daterangepicker/daterangepicker.js"></script>
  <script>
    jQuery(document).ready(function() {
      jQuery('input[name="dateRange"]').daterangepicker({
        autoUpdateInput: false,
        singleDatePicker: true,
        locale: {
          cancelLabel: 'Clear'
        }
      });
      jQuery('input[name="dateRange"]').on('apply.daterangepicker', function(ev, picker) {
        jQuery(this).val(picker.startDate.format('MM/DD/YYYY'));
      });
      jQuery('input[name="dateRange"]').on('cancel.daterangepicker', function(ev, picker) {
        jQuery(this).val('');
      });
    });
  </script>

  <script>
    $('#genlink').on('show.bs.modal', function(event) {
      var button = $(event.relatedTarget) // Button that triggered the modal
      var recipient = button.data('whatever') // Extract info from data-* attributes
      var modal = $(this);
      var dataString = 'key=' + recipient;
      $.ajax({
        type: "GET",
        url: "guest/genlink.php",
        data: dataString,
        cache: false,
        success: function(data) {
          modal.find('.link').html(data); // Find div form
        },
        error: function(err) {
          console.log(err);
        }
      });
    })
  </script>

  <script src="assets/plugins/toastr/toastr.min.js"></script>

  <script src="assets/plugins/data-tables/jquery.datatables.min.js"></script>
  <script src="assets/plugins/data-tables/datatables.bootstrap4.min.js"></script>


  <script src="assets/plugins/data-tables/datatables.responsive.min.js"></script>
  <script>
    jQuery(document).ready(function() {
      jQuery('#responsive-data-table').DataTable({
        "aLengthMenu": [
          [20, 30, 50, 75, -1],
          [20, 30, 50, 75, "All"]
        ],
        "pageLength": 20,
        "dom": '<"row justify-content-between top-information"lf>rt<"row justify-content-between bottom-information"ip><"clear">'
      });
    });
  </script>

  <script src="assets/js/sleek.bundle.js"></script>
</body>

</html>