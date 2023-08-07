<?php $getmenus = $getdata->my_sql_query($connect, null, 'menus', "menu_status ='1' AND menu_case = '" . $_GET['p'] . "' AND menu_key != 'c6c8729b45d1fec563f8453c16ff03b8'"); ?>
<div class="row">
    <div class="col-lg-12">
        <h3 class="page-header"><?php echo '<i class="fas ' . $getmenus->menu_icon . ' fa-2x"></i> <span>' . $getmenus->menu_name . '</span>'; ?></h3>
    </div>
</div>

<nav aria-label="breadcrumb" class="mt-3 mb-3">
    <ol class="breadcrumb breadcrumb-inverse">
        <li class="breadcrumb-item active">
            <a href="index.php"><?php echo '<span>' . $getmenus->menu_name . '</span>'; ?></a>
        </li>
    </ol>
</nav>


<?php
$cusmenus1 = $getdata->my_sql_query($connect, null, 'menus', "menu_status ='1' AND menu_key = 'acac0001f4c9f206256b9a2dfe433b42'");
$cusmenus2 = $getdata->my_sql_query($connect, null, 'menus', "menu_status ='1' AND menu_key = '3ea03351897df2d73bf8cf9490320d32'");

?>
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


<div class="card card-default">
    <div class="card-header card-header-border-bottom">
        <h2><i class="fa fa-chart-line"></i> รายการแสดงข้อมูลห้องและการเข้าพัก</h2>
    </div>
    <div class="card-body">
        <div id="accordion3" class="accordion accordion-bordered ">
            <div class="card">
                <div class="card-header" id="heading2">
                    <button class="btn btn-link" data-toggle="collapse" data-target="#collapse2" aria-expanded="true" aria-controls="collapse2">
                        <i class="fa fa-chart-bar"></i> แสดงข้อมูลสถานะแต่ละอาคาร
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
                                                                    <a class="mb-1 btn btn-outline-success" data-toggle="modal" data-target="#genlink" data-whatever="<?php echo @$showroom->se_li_id; ?>"><i class="fas fa-user-plus fa-lg"></i> <?php echo $showroom->se_li_name; ?></a>
                                                                </div>
                                                            <?php } elseif ($showroom->se_li_status == '2') {  ?>
                                                                <div class="col-md-2 col-sm-4 mt-2">
                                                                    <a class="mb-1 btn btn-outline-danger" data-toggle="modal" data-target="#genlink" data-whatever="<?php echo @$showroom->se_li_id; ?>"><i class="fas fa-user-slash fa-lg"></i> <?php echo $showroom->se_li_name; ?></a>
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
                                                                    <a class="mb-1 btn btn-outline-success" data-toggle="modal" data-target="#genlink" data-whatever="<?php echo @$showroom->se_li_id; ?>"><i class="fas fa-user-plus fa-lg"></i></i> <?php echo $showroom->se_li_name; ?></a>
                                                                </div>
                                                            <?php } elseif ($showroom->se_li_status == '2') {  ?>
                                                                <div class="col-md-2 col-sm-4 mt-2">
                                                                    <a class="mb-1 btn btn-outline-danger" data-toggle="modal" data-target="#genlink" data-whatever="<?php echo @$showroom->se_li_id; ?>"><i class="fas fa-user-slash fa-lg"></i> <?php echo $showroom->se_li_name; ?></a>
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
                                                                    <a class="mb-1 btn btn-outline-success" data-toggle="modal" data-target="#genlink" data-whatever="<?php echo @$showroom->se_li_id; ?>"><i class="fas fa-user-plus fa-lg"></i></i> <?php echo $showroom->se_li_name; ?></a>
                                                                </div>
                                                            <?php } elseif ($showroom->se_li_status == '2') {  ?>
                                                                <div class="col-md-2 col-sm-4 mt-2">
                                                                    <a class="mb-1 btn btn-outline-danger" data-toggle="modal" data-target="#genlink" data-whatever="<?php echo @$showroom->se_li_id; ?>"><i class="fas fa-user-slash fa-lg"></i> <?php echo $showroom->se_li_name; ?></a>
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
                        <div class="data-home-it">
                            <table id="data-home-it" class="table dt-responsive nowrap" style="width:100%">
                                <thead class="text-center">
                                    <tr>
                                        <th>ลำดับ</th>
                                        <th>ชื่อ - นาสกุลผู้เข้าพัก</th>
                                        <th>ตำแหน่ง</th>
                                        <?php if ($_SESSION['uclass'] != '1') { ?>
                                            <th>วันที่เข้าพัก</th>
                                            <th>วันที่ออกจากห้องพัก</th>
                                        <?php } ?>
                                        <th>บริวาร</th>
                                        <th>สถานะข้อมูล</th>
                                        <?php if ($_SESSION['uclass'] != '1') { ?>
                                            <th>สถานะในระบบ</th>
                                        <?php } ?>
                                        <th>เข้าพักที่</th>
                                        <?php if ($_SESSION['uclass'] != '1') { ?>
                                            <th>แก้ไขข้อมูล</th>
                                        <?php } ?>
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
                                            <td><?php echo @prefixConvertor($guest_detail->prefix_name).$guest_detail->fname . ' ' . $guest_detail->lname; ?></td>
                                            <td><?php echo @$guest_detail->position; ?></td>
                                            <?php if ($_SESSION['uclass'] != '1') { ?>
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
                                            <?php } ?>
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
                                            <?php if ($_SESSION['uclass'] != '1') { ?>
                                                <td><?php if ($guest_detail->sys_procress == '0') {
                                                        echo '<span class="badge badge-primary">ข้อมูลไม่สมบูรณ์</span>';
                                                    } elseif ($guest_detail->sys_procress == '1') {
                                                        echo '<span class="badge badge-success">ข้อมูลครบถ้วน</span>';
                                                    } elseif ($guest_detail->sys_procress == '2') {
                                                        echo '<span class="badge badge-danger">ยกเลิกข้อมูล</span>';
                                                    } ?></td>
                                            <?php } ?>
                                            <td><?php
                                                if ($guest_detail->sys_procress == '1') {
                                                    echo @building($guest_detail->building) . ' ' . @prefixConvertorService($guest_detail->floor) . ' <br>ห้อง ' . @prefixConvertorServiceList($guest_detail->room);
                                                } elseif ($guest_detail->sys_procress == '2') {
                                                    echo '<span class="badge badge-danger">ยกเลิกข้อมูล</span>';
                                                } elseif ($guest_detail->sys_procress == '0') {
                                                    echo '<span class="badge badge-primary">ยังไม่มีการระบุ</span>';
                                                }
                                                ?>
                                            </td>
                                            <?php if ($_SESSION['uclass'] != '1') { ?>
                                                <td class="text-center">
                                                    <a href="index.php?p=guest_detail&key=<?php echo $guest_detail->key_guest; ?>" target="_blank" class="btn btn-outline-info btn-sm"><i class="fas fa-edit"></i></a>
                                                    <?php if ($guest_detail->status == '9' && $guest_detail->sys_procress == '2') { ?>
                                                        <button type="button" class="btn btn-danger btn-sm" onClick="javascript:delete_guest('<?php echo @$guest_detail->key_guest; ?>');" data-top="toptitle" data-placement="top" title="ลบรายการ"><i class="fa fa-trash-alt fa-fw"></i></button>
                                                    <?php } ?>
                                                </td>
                                            <?php } ?>
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