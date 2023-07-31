<?php
require_once 'procress/dataSetting.php';
$getsystem_info = $getdata->my_sql_query($connect, NULL, "system_info", NULL);
?>
<?php echo @$alert; ?>
<div class="row">
    <div class="col-12">
        <h3 class="page-header"><i class="fa fa-sliders-h fa-fw"></i> ตั้งค่า</h3>
    </div>
</div>
<nav aria-label="breadcrumb" class="mt-3 mb-3">
    <ol class="breadcrumb breadcrumb-inverse">
        <li class="breadcrumb-item">
            <a href="index.php">หน้าแรก</a>
        </li>
        <li class="breadcrumb-item">
            <a href="?p=setting">ตั้งค่า</a>
        </li>
        <li class="breadcrumb-item active" aria-current="page">ตั้งค่าระบบ</li>
    </ol>
</nav>
<div class="card card-default">
    <div class="card-header card-header-border-bottom">
        <h2>ข้อมูลระบบ </h2>
    </div>
    <div class="card-body">
        <ul class="nav nav-pills nav-justified nav-style-fill" id="myTab" role="tablist">
            <li class="nav-item">
                <a class="nav-link active" id="site-tab" data-toggle="tab" href="#site" role="tab" aria-controls="site" aria-selected="true">เกี่ยวกับระบบ</a>
            </li>
        </ul>
        <div class="tab-content" id="myTabContent4">
            <div class="tab-pane pt-3 fade show active" id="site" role="tabpanel" aria-labelledby="site-tab">
                <form action="" method="post" enctype="multipart/form-data">
                    <div class="card-body">

                        <div class="form-group row">
                            <div class="col-md-6 col-sm-12">
                                <label for="site_logo">โลโกบริษัท</label>
                                <img src="../resource/system/logo/<?php echo @$getsystem_info->site_logo; ?>" width="256" alt="" />
                                <div class="form-group">
                                    <input type="file" name="site_logo" id="site_logo" class="form-control input-sm mt-2">
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-12">
                                <label for="site_favicon">ไอคอนบริษัท</label>
                                <img src="../resource/system/favicon/<?php echo @$getsystem_info->site_favicon; ?>" width="256" alt="" />
                                <div class="form-group">
                                    <input type="file" name="site_favicon" id="site_favicon" class="form-control input-sm mt-2">
                                </div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-12">
                                <label for="site_name">ชื่อบริษัท</label>
                                <input type="text" class="form-control" name="site_name" id="site_name" value="<?php echo @$getsystem_info->site_name; ?>">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-6 col-sm-12">
                                <label for="site_color_name">สีของชื่อบริษัท</label>
                                <input type="color" class="form-control" name="site_color_name" id="site_color_name" value="<?php echo @$getsystem_info->site_color_name; ?>">
                            </div>
                            <div class="col-md-6 col-sm-12">
                                <label for="site_color_form">สีของหน้าฟอร์ม</label>
                                <input type="color" class="form-control" name="site_color_form" id="site_color_form" value="<?php echo @$getsystem_info->site_color_form; ?>">
                            </div>

                        </div>

                        <!-- <div class="form-group row">
                            <div class="col-12">
                                <label for="token_notify">Token Line Notify</label>
                                <input type="text" class="form-control" name="token_notify" id="token_notify" value="<?php echo @$getsystem_info->site_key; ?>">
                            </div>
                        </div> -->

                    </div>
                    <div class="text-center">
                        <button class="ladda-button btn btn-primary btn-square btn-ladda bg-success " type="submit" name="save_info" data-style="expand-left">
                            <span class="mdi mdi-content-save"> บันทึก</span>
                            <span class="ladda-spinner"></span>
                        </button>
                    </div>
                </form>
            </div>

        </div>

    </div>
    <div class="card-footer text-center">
        <a class="btn btn-xs btn-outline-info" href="index.php?p=setting"><i class="fa fa-reply"></i> กลับ</a>
    </div>
</div>