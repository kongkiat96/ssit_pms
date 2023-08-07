<?php require_once 'procress/datasave.php'; ?>
<?php $getmenus = $getdata->my_sql_query($connect, null, 'menus', "menu_status ='1' AND menu_case = '" . $_GET['p'] . "' AND menu_key != 'c6c8729b45d1fec563f8453c16ff03b8'"); ?>
<div class="row">
    <div class="col-lg-12">
        <h3 class="page-header"><?php echo '<i class="fas ' . $getmenus->menu_icon . ' fa-2x"></i> <span>' . $getmenus->menu_name . '</span>'; ?></h3>
    </div>
</div>

<nav aria-label="breadcrumb" class="mt-3 mb-3">
    <ol class="breadcrumb breadcrumb-inverse">
        <li class="breadcrumb-item">
            <a href="index.php">หน้าแรก</a>
        </li>
        <li class="breadcrumb-item active" aria-current="page"><?php echo '<span>' . $getmenus->menu_name . '</span>'; ?></li>
    </ol>
</nav>
<div class="m-3">
    <div class="col-12">
        <ul class="progressbar">
            <li class="active">เพิ่มข้อมูลเจ้าหน้าที่</li>

            <li class="">เพิ่มข้อมูลบริวาร</li>

            <li class="">ยืนยันข้อมูลเข้าพัก</li>


        </ul>
    </div>


</div>
<?php echo @$alert; ?>
<div class="card card-default">

    <div class="card-body">

        <form method="post" enctype="multipart/form-data" class="was-validated" id="waitsave">
            <div class="form-group row">
                <div class="col-12">
                    <label for="card_code">GenCode</label>
                    <input type="text" name="card_code" id="card_code" value="<?php echo @RandomString(4, 'C', 7); ?>" class="form-control input-sm" readonly>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-md-3 col-sm-12">
                    <label for="prefixname">คำนำหน้าชื่อ</label>
                    <select name="prefixname" id="prefixname" class="form-control select2bs4" required style="width: 100%;">
                        <option value="">--- เลือกข้อมูล ---</option>
                        <?php $getprefix = $getdata->my_sql_select($connect, NULL, "members_prefix", "prefix_status ='1'");
                        while ($showprefix = mysqli_fetch_object($getprefix)) {
                            echo '<option value="' . $showprefix->prefix_code . '">' . $showprefix->prefix_title . '</option>';
                        }
                        ?>
                    </select>
                    <div class="invalid-feedback">
                        เลือก คำนำหน้า.
                    </div>
                </div>
                <div class="col-md-3 col-sm-12">
                    <label for="fname">ชื่อเจ้าหน้าที่</label>
                    <input type="text" name="fname" id="fname" class="form-control input-sm" placeholder="ชื่อเจ้าหน้าที่" autofocus required>
                    <div class="invalid-feedback">
                        ระบุ ชื่อเจ้าหน้าที่.
                    </div>
                </div>
                <div class="col-md-3 col-sm-12">
                    <label for="lname">นามสกุลเจ้าหน้าที่</label>
                    <input type="text" name="lname" id="lname" class="form-control input-sm" placeholder="นามสกุลเจ้าหน้าที่" required>
                    <div class="invalid-feedback">
                        ระบุ นามสกุลเจ้าหน้าที่.
                    </div>
                </div>
                <div class="col-md-3 col-sm-12">
                    <label for="position">ตำแหน่ง</label>
                    <input type="text" name="position" id="position" class="form-control input-sm" placeholder="ตำแหน่ง" required>
                    <div class="invalid-feedback">
                        ระบุ ตำแหน่ง.
                    </div>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-md-3 col-sm-12">
                    <label for="department">สังกัด</label>
                    <input type="text" name="department" id="department" class="form-control input-sm" placeholder="สังกัด" required>
                    <div class="invalid-feedback">
                        ระบุ สังกัด.
                    </div>
                </div>

                <div class="col-md-3 col-sm-12">
                    <label for="tel">หมายเลขโทรศัพท์</label>
                    <input type="tel" name="tel" id="tel" class="form-control input-sm" placeholder="หมายเลขโทรศัพท์" required>
                    <div class="invalid-feedback">
                        ระบุ หมายเลขโทรศัพท์.
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <label for="idcard">เลขประจำตัวเจ้าหน้าที่</label>
                    <input type="text" name="idcard" id="idcard" class="form-control input-sm" placeholder="เลขประจำตัวเจ้าหน้าที่" required>
                    <div class="invalid-feedback">
                        ระบุ เลขประจำตัวเจ้าหน้าที่.
                    </div>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-md-3 col-sm-12">
                    <label for="status_guest">สถานะ</label>
                    <select name="status_guest" id="status_guest" class="form-control select2bs4 input-sm" required style="width: 100%;">
                        <option value="">--- เลือกข้อมูล ---</option>
                        <option value="1">เจ้าหน้าที่</option>
                        <option value="2">ลูกจ้าง สทอภ.</option>
                        <option value="3">ลูกจ้างโครงการ</option>
                    </select>
                    <div class="invalid-feedback">
                        เลือก สถานะ.
                    </div>
                </div>
                <div class="col-md-3 col-sm-12">
                    <label for="end_date">วันที่สิ้นสุดโครงการ</label>
                    <input type="date" name="end_date" id="end_date" class="form-control input-sm" >
                </div>

                <div class="col-md-3 col-sm-12">
                    <label for="building">อาคาร</label>
                    <select name="building" id="building" class="form-control select2bs4 input-sm" required style="width: 100%;" onchange="getroomListcheck(this.value)">
                        <option value="">--- เลือกข้อมูล ---</option>
                        <option value="1">อาคาร Vertex View </option>
                        <option value="2">อาคาร Horizon </option>
                        <option value="3">อาคาร Vertical View </option>
                    </select>
                    <div class="invalid-feedback">
                        เลือก อาคาร.
                    </div>
                </div>
                <div class="col-md-3 col-sm-12">
                    <label for="floor">ชั้น</label>
                    <select name="floor" id="floor" class="form-control select2bs4 input-sm" required style="width: 100%;" onchange="getroomListcheckroom(this.value)">
                        <option value="">--- เลือกข้อมูล ---</option>
                    </select>
                    <div class="invalid-feedback">
                        เลือก ชั้น.
                    </div>
                </div>
            </div>

            <div class="form-group row">
                
                <div class="col-md-3 col-sm-12">
                    <label for="room">ห้อง</label>
                    <select name="room" id="room" class="form-control select2bs4 input-sm" required style="width: 100%;">
                        <option value="">--- เลือกข้อมูล ---</option>

                    </select>
                    <div class="invalid-feedback">
                        เลือก ห้อง.
                    </div>
                </div>

                <div class="col-md-3 col-sm-12">
                    <label for="pic">รูปถ่าย</label>
                    <input type="file" name="pic" id="pic" class="form-control input-sm" placeholder="รูปถ่าย">
                    <div class="invalid-feedback">
                        ระบุ รูปถ่าย.
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <label for="detail">รายละเอียดเพิ่มเติม (ถ้ามี)</label>
                    <textarea name="detail" id="" cols="20" rows="2" class="form-control"></textarea>
                </div>
            </div>
            <div class="form-group row">
                
            </div>

            <div class="form-group row">
                <div class="col-12 text-center">
                    <button class="ladda-button btn btn-warning btn-square btn-ladda bg-success" data-style="expand-left" type="submit" name="save_guest">
                        <span class="fas fa-arrow-circle-right"> ถัดไป</span>
                        <span class="ladda-spinner"></span>
                    </button>
                </div>

            </div>
        </form>

    </div>
</div>