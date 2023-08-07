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

$guest_detail = $getdata->my_sql_query($connect, NULL, "bm_guest", "key_guest='" . htmlspecialchars($_GET['key']) . "'");
$getall = $getdata->my_sql_show_rows($connect, "bm_guest_detail", "ID <> 'hidden' AND code_guest = '" . $guest_detail->code . "'");

?>
<div class="modal-body">
    <div class="form-group row">
        <!-- <div class="col-md-4 col-sm-12">
            <label for="edit_prefixname">คำนำหน้าชื่อ</label>
            <select name="edit_prefixname" id="edit_prefixname" class="form-control select2bs42 input-sm">
                <option value="">--- เลือกข้อมูล ---</option>
                <?php
                $getprefix = $getprefix = $getdata->my_sql_select($connect, NULL, "members_prefix", "prefix_status ='1'");
                while ($showprefix = mysqli_fetch_object($getprefix)) {
                    if ($showprefix->prefix_code == $guest_detail->prefix_name) {
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
        </div> -->
        <div class="col-md-4 col-sm-12">
            <label for="fname">ชื่อเจ้าหน้าที่</label>
            <input type="text" name="edit_fname" id="fname" class="form-control input-sm" placeholder="ชื่อเจ้าหน้าที่" value="<?php echo $guest_detail->fname; ?>" autofocus required>
            <div class="invalid-feedback">
                ระบุ ชื่อเจ้าหน้าที่.
            </div>
        </div>
        <div class="col-md-4 col-sm-12">
            <label for="lname">นามสกุลเจ้าหน้าที่</label>
            <input type="text" name="edit_lname" id="lname" class="form-control input-sm" placeholder="นามสกุลเจ้าหน้าที่" value="<?php echo $guest_detail->lname; ?>" required>
            <div class="invalid-feedback">
                ระบุ นามสกุลเจ้าหน้าที่.
            </div>
        </div>

        <div class="col-md-4 col-sm-12">
            <label for="edit_position">ตำแหน่ง</label>
            <input type="text" name="edit_position" id="edit_position" class="form-control input-sm" placeholder="ตำแหน่ง" value="<?php echo $guest_detail->position; ?>" required>
            <div class="invalid-feedback">
                ระบุ ตำแหน่ง.
            </div>
        </div>
    </div>
    <div class="form-group row">
        <div class="col-md-4 col-sm-12">
            <label for="edit_department">สังกัด</label>
            <!-- <input type="text" name="edit_department" id="edit_department" class="form-control input-sm" placeholder="ตำแหน่ง" value="<?php echo $guest_detail->department; ?>" required> -->
            <select name="edit_department" id="edit_department" class="form-control select2bs42 input-sm">
                <option value="">--- เลือกข้อมูล ---</option>
                <?php
                $getDepartID = $getdata->my_sql_select($connect, NULL, "department_name", "department_status ='1'");
                while ($showDepartName = mysqli_fetch_object($getDepartID)) {
                    if ($showDepartName->id == $guest_detail->department) {
                        echo '<option value="' . $showDepartName->id . '" selected>' . $showDepartName->department_name . '</option>';
                    } else {
                        echo '<option value="' . $showDepartName->id . '">' . $showDepartName->department_name . '</option>';
                    }
                }
                ?>
            </select>
            <div class="invalid-feedback">
                ระบุ สังกัด.
            </div>
        </div>

        <div class="col-md-4 col-sm-12">
            <label for="status_guest">สถานะผู้เข้าพัก</label>
            <select name="status_guest" id="mySelect" class="form-control select2bs42" required>
                <option value="">--- เลือกข้อมูล ---</option>
                <?php if ($guest_detail->status_guest == '1') {
                    echo '<option value="1" selected>เจ้าหน้าที่</option>
                    <option value="2">ลูกจ้าง สทอภ.</option>
                    <option value="3">ลูกจ้างโครงการ</option>';
                } elseif ($guest_detail->status_guest == '2') {
                    echo '<option value="1">เจ้าหน้าที่</option>
                    <option value="2" selected>ลูกจ้าง สทอภ.</option>
                    <option value="3">ลูกจ้างโครงการ</option>';
                } elseif ($guest_detail->status_guest == '3') {
                    echo '<option value="1">เจ้าหน้าที่</option>
                    <option value="2">ลูกจ้าง สทอภ.</option>
                    <option value="3" selected>ลูกจ้างโครงการ</option>';
                } ?>

            </select>
            <div class="invalid-feedback">
                เลือก สถานะผู้เข้าพัก.
            </div>
        </div>
        <div id="myDiv" class="col-md-4 col-sm-12" style="display: none;">
            <!-- <div class="col-md-4 col-sm-12"> -->
                <label for="end_date">วันที่สิ้นสุดโครงการ</label>
                <input type="date" name="end_date" id="end_date" class="form-control input-sm" value="<?php echo $guest_detail->end_date; ?>">
        </div>

    </div>
    <div class="form-group row">

        <div class="col-md-4 col-sm-12">
            <label for="tel">หมายเลขโทรศัพท์</label>
            <input type="tel" name="edit_tel" id="tel" class="form-control input-sm" placeholder="หมายเลขโทรศัพท์" value="<?php echo $guest_detail->tel; ?>" required>
            <div class="invalid-feedback">
                ระบุ หมายเลขโทรศัพท์.
            </div>
        </div>
        <!-- <div class="col-md-4 col-sm-12">
            <label for="idcard">เลขบัตรประจำตัวประชาชน/เลขประจำตัวเจ้าหน้าที่</label>
            <input type="text" name="edit_idcard" id="idcard" class="form-control input-sm" placeholder="เลขบัตรประจำตัวประชาชน/เลขประจำตัวเจ้าหน้าที่" value="<?php echo $guest_detail->id_card; ?>" required>
            <div class="invalid-feedback">
                ระบุ เลขบัตรประจำตัวประชาชน/เลขประจำตัวเจ้าหน้าที่.
            </div>


        </div> -->

        <div class="col-md-4 col-sm-12">
            <label for="status">สถานะ</label>
            <select name="status" id="status" class="form-control select2bs42" required>
                <option value="">--- เลือกข้อมูล ---</option>
                <?php if ($guest_detail->status == '2') {
                    echo '<option value="2" selected>เข้าห้องพัก</option>
                    <option value="0">ออกห้องพัก</option>';
                } elseif ($guest_detail->status == '0') {
                    echo '<option value="2">เข้าห้องพัก</option>
                    <option value="0" selected>ออกห้องพัก</option>';
                } else {
                    echo '<option value="2">เข้าห้องพัก</option>
                    <option value="0">ออกห้องพัก</option>';
                } ?>

            </select>
            <div class="invalid-feedback">
                เลือก สถานะ.
            </div>
        </div>

        <div class="col-md-4 col-sm-12">
            <label for="check_in">วันที่เข้าพัก</label>
            <input type="date" name="check_in" id="check_in" class="form-control input-sm" required "<?php echo $guest_detail->check_in; ?>">
        </div>
    </div>
    <div class="form-group row">


        <div class="col-md-4 col-sm-12">
            <label for="check_out">วันที่ออกพัก</label>
            <input type="date" name="check_out" id="check_out" class="form-control input-sm" required "<?php echo $guest_detail->check_out; ?>">
        </div>
    </div>
    <div class="form-group row">
        <div class="col-12">
            <label for="detail">รายละเอียดเพิ่มเติม (ถ้ามี)</label>
            <textarea name="edit_detail" id="" cols="20" rows="2" class="form-control" value=""><?php echo $guest_detail->detail; ?></textarea>
        </div>
    </div>

    <div class="form-group">
        <input name="key_guest" value="<?php echo @htmlspecialchars($_GET['key']); ?>" hidden>
        <input name="user_update" value="<?php echo @$userdata->user_key; ?>" hidden>
        <input name="room_log" value="<?php echo @$guest_detail->room; ?>" hidden>

        <input type="text" hidden name="full_name" value="<?php echo $guest_detail->fname . ' ' . $guest_detail->lname; ?>">
        <input type="text" hidden name="position" value="<?php echo $guest_detail->position; ?>">
        <input type="text" hidden name="checkin" value="<?php echo @dateOnlyFromTimeConvertor($guest_detail->check_in); ?>">
        <input type="text" hidden name="checkout" value="<?php echo @dateOnlyFromTimeConvertor($guest_detail->check_out); ?>">
        <input type="text" hidden name="count" value="<?php echo @number_format($getall); ?>">
        <input type="text" hidden name="statusCheck" value="<?php echo $guest_detail->status; ?>">
    </div>

    <script>
        $('.select2bs42').select2({
            theme: 'bootstrap4',
            width: '100%'
        });

        $(document).ready(function() {
            $('#mySelect').on('change', function() {
                if (this.value == '3')
                    // เมื่อเลือก option value = '1'
                    $("#myDiv").show();
                else
                    // เมื่อเลือก option ที่ไม่ใช่ '1'
                    $("#myDiv").hide();
            });
        });
    </script>