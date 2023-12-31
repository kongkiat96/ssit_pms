<?php
session_start();
error_reporting(0);
require("../../../core/config.core.php");
require("../../../core/connect.core.php");
require("../../../core/functions.core.php");
$getdata = new clear_db();
$connect = $getdata->my_sql_connect(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);
$userdata = $getdata->my_sql_query($connect, NULL, "user", "user_key='" . $_SESSION['ukey'] . "'");
mysqli_set_charset($connect, "utf8");

$guest_list = $getdata->my_sql_query($connect, NULL, "bm_guest_detail", "ID='" . htmlspecialchars($_GET['key']) . "'");
?>
<div class="modal-body">
    <div class="form-group row">
        <div class="col-md-4 col-sm-12">
            <label for="edit_prefixname">คำนำหน้าชื่อ</label>
            <select name="edit_prefixname" id="edit_prefixname" class="form-control select2bs43 input-sm">
                <option value="">--- เลือกข้อมูล ---</option>
                <?php
                $getprefix = $getprefix = $getdata->my_sql_select($connect, NULL, "members_prefix", "prefix_status ='1'");
                while ($showprefix = mysqli_fetch_object($getprefix)) {
                    if ($showprefix->prefix_code == $guest_list->prefix_name) {
                        echo '<option value="' . $showprefix->prefix_code . '" selected>' . $showprefix->prefix_title . '</option>';
                    } else {
                        echo '<option value="' . $showprefix->prefix_code . '">' . $showprefix->prefix_title . '</option>';
                    }
                }
                ?>
            </select>
            <div class="invalid-feedback">
                เลือก คำนำหน้า.
            </div>
        </div>
        <div class="col-md-4 col-sm-12">
            <label for="fname">ชื่อบริวาร</label>
            <input type="text" name="edit_fname" id="fname" class="form-control input-sm" placeholder="ชื่อบริวาร" value="<?php echo $guest_list->fname; ?>" autofocus required>
            <div class="invalid-feedback">
                ระบุ ชื่อบริวาร.
            </div>
        </div>
        <div class="col-md-4 col-sm-12">
            <label for="lname">นามสกุลบริวาร</label>
            <input type="text" name="edit_lname" id="lname" class="form-control input-sm" placeholder="นามสกุลบริวาร" value="<?php echo $guest_list->lname; ?>" required>
            <div class="invalid-feedback">
                ระบุ นามสกุลบริวาร.
            </div>
        </div>
    </div>

    <div class="form-group row">
        <div class="col-md-4 col-sm-12">
            <label for="edit_position">ตำแหน่ง</label>

            <!-- <select name="edit_position" id="edit_position" class="form-control select2bs43 input-sm" required="">
                <option value="">--- เลือกข้อมูล ---</option>
                <?php
                $getposition = $getdata->my_sql_select($connect, NULL, "department_name", "department_status = '1'");
                while ($showposition = mysqli_fetch_object($getposition)) {
                    if ($showposition->id == $guest_list->position) {
                        echo '<option value="' . $showposition->id . '" selected>' . $showposition->department_name . '</option>';
                    } else {
                        echo '<option value="' . $showposition->id . '">' . $showposition->department_name . '</option>';
                    }
                }
                ?>
            </select> -->


            <input type="text" name="edit_position" id="edit_position" class="form-control input-sm" placeholder="ตำแหน่ง" value="<?php echo $guest_list->position; ?>" required>
            <div class="invalid-feedback">
                ระบุ ตำแหน่ง.
            </div>
        </div>
        <div class="col-md-4 col-sm-12">
            <label for="tel">หมายเลขโทรศัพท์</label>
            <input type="tel" name="edit_tel" id="tel" class="form-control input-sm" placeholder="หมายเลขโทรศัพท์" value="<?php echo $guest_list->tel; ?>" required>
            <div class="invalid-feedback">
                ระบุ หมายเลขโทรศัพท์.
            </div>
        </div>
        <div class="col-md-4 col-sm-12">
            <label for="idcard">เลขบัตรประจำตัวประชาชน/หนังสือเดินทาง</label>
            <input type="text" name="edit_idcard" id="idcard" class="form-control input-sm" value="<?php echo $guest_list->id_card; ?>" placeholder="เลขบัตรประจำตัวประชาชน/หนังสือเดินทาง">
            <div class="invalid-feedback">
                ระบุ เลขบัตรประจำตัวประชาชน/หนังสือเดินทาง.
            </div>
        </div>
    </div>

    <div class="form-group row">
        <div class="col-md-4 col-sm-12">
            <label for="edit_relation">ความสัมพันธ์</label>

            <select name="edit_relation" id="edit_relation" class="form-control select2bs43">
                <option value="">--- เลือกข้อมูล ---</option>
                <?php if ($guest_list->relation == '1') {
                    echo '<option value="1" selected>บุตร</option>
                <option value="2">คู่สมรส</option>
                <option value="3">บิดา</option>
                <option value="4">มารดา</option>';
                } elseif ($guest_list->relation == '2') {
                    echo '<option value="1">บุตร</option>
                <option value="2" selected>คู่สมรส</option>
                <option value="3">บิดา</option>
                <option value="4">มารดา</option>';
                } elseif ($guest_list->relation == '3') {
                    echo '<option value="1">บุตร</option>
                <option value="2">คู่สมรส</option>
                <option value="3" selected>บิดา</option>
                <option value="4">มารดา</option>';
                } elseif ($guest_list->relation == '4') {
                    echo '<option value="1">บุตร</option>
                <option value="2">คู่สมรส</option>
                <option value="3">บิดา</option>
                <option value="4" selected>มารดา</option>';
                } else {
                    echo '<option value="1">บุตร</option>
                <option value="2">คู่สมรส</option>
                <option value="3">บิดา</option>
                <option value="4">มารดา</option>';
                }
                ?>

            </select>

            <div class="invalid-feedback">
                เลือก ความสัมพันธ์.
            </div>
        </div>
        <div class="col-md-8 col-sm-12">
            <label for="detail">รายละเอียดเพิ่มเติม (ถ้ามี)</label>
            <textarea name="edit_detail" id="detail" cols="20" rows="2" class="form-control"><?php echo $guest_list->detail; ?></textarea>
        </div>
    </div>

    <div class="form-group">
        <input name="detail_id" value="<?php echo $guest_list->ID; ?>" hidden>
        <input name="code_guest" value="<?php echo $guest_list->code_guest; ?>" hidden>
    </div>

    <script>
        $('.select2bs43').select2({
            theme: 'bootstrap4',
            width: '100%'
        });
    </script>