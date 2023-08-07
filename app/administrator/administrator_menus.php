<?php include 'procress/dataSave.php'; ?>
<div class="row">
	<div class="col-12">
		<h1 class="page-header"><i class="fa fa-sitemap fa-fw"></i> [ผู้ดูแลระบบ] ตั้งค่าเมนู</h1>
	</div>
</div>

<nav aria-label="breadcrumb" class="mt-3 mb-3">
	<ol class="breadcrumb breadcrumb-inverse">
		<li class="breadcrumb-item">
			<a href="index.php">หน้าแรก</a>
		</li>
		<li class="breadcrumb-item" aria-current="page"><a href="index.php?p=setting">ตั้งค่า</a></li>
		<li class="breadcrumb-item active" aria-current="page">ตั้งค่าเมนู</li>
	</ol>
</nav>


<?php echo @$alert; ?>

<!-- Edit Menu -->
<div class="modal fade" id="edit_menu" tabindex="-1" role="dialog" aria-labelledby="modal_edit_menu" aria-hidden="true">
	<form method="post" action="<?php echo $SERVER_NAME; ?>" class="was-validated" id="waitsave2">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title font-weight-bold">แก้ไขข้อมูล</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="edit_menu">

				</div>
				<div class="modal-footer">
					<div class="col text-center">
						<div id="showload2" style="display: none;"><span class="spinner-border text-primary spinner-sm" role="status" aria-hidden="true"></span></div>
						<div id="hidden2">
							<button class="btn btn-outline-primary btn-sm" type="submit" name="save_edit_menu"><i class="fa fa-save fa-fw"></i>บันทึก</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form><!-- /.modal-dialog -->
</div>
<!-- End edit menu -->

<div class="modal fade" id="modal_new_menu" tabindex="-1" role="dialog" aria-labelledby="modal_new_menu" aria-hidden="true">
	<form method="post" enctype="multipart/form-data" action="<?php echo $SERVER_NAME; ?>" class="was-validated" id="waitsave">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title font-weight-bold">เพิ่มรายการเมนู</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="form-group row">
						<div class="col-md-6 col-sm-12">
							<label for="menu_name">ชื่อเมนู</label>
							<input type="text" id="menu_name" name="menu_name" class="form-control" autocomplete="off" required>
						</div>
						<div class="col-md-6 col-sm-12">
							<label for="menu_icon">ไอคอนเมนู <a href="https://fontawesome.com/icons?d=gallery&m=free" target="_blank"><i class="fa fa-question-circle"></i></a></label>
							<input type="text" id="menu_icon" name="menu_icon" class="form-control" placeholder="Ex. fa-home" autocomplete="off" required>
						</div>
					</div>
					<div class="form-group row">
						<div class="col-md-5 col-sm-12">
							<label for="menu_folder">โฟลเดอร์</label>
							<input type="text" id="menu_folder" name="menu_folder" class="form-control" required>
						</div>
						<div class="col-md-5 col-sm-12">
							<label for="menu_link">Link menu</label>
							<input type="text" id="menu_link" name="menu_link" class="form-control" placeholder="Ex. ?p=index" autocomplete="off" required>
						</div>
						<div class="col-md-2 col-sm-12">
							<label for="sorting">ลำดับเมนู</label>
							<input type="number" id="sorting" name="sorting" class="form-control" min="1" max="99" required>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<div class="col text-center">
						<button class="ladda-button btn btn-primary btn-square btn-ladda bg-success" type="submit" name="save_new_menu" data-style="expand-left">
							<span class="fas fa-save"> บันทึก</span>
							<span class="ladda-spinner"></span>
						</button>


					</div>
				</div>
			</div><!-- /.modal-content -->
		</div>
	</form><!-- /.modal-dialog -->
</div>



<div class="card mb-2">
	<div class="card-header">
		<ul class="nav nav-tabs card-header-tabs">
			<li class="nav-item font-weight-bold">
				<a class="nav-link text-danger active" id="access-tab" data-toggle="tab" href="#access" role="tab" aria-controls="access" aria-selected="true">รายการเมนู</a>
			</li>
		</ul>
	</div>
	<div class="card-body">
		<div class="tab-content" id="myTabContent">
			<div class="tab-panel fade show active" id="service" role="tabpanel" aria-labelledby="service-tab">
				<div class="card shadow">
					<div class="card-body">

						<button class="btn btn-danger btn-xs float-right mb-2 btn-outline" data-toggle="modal" data-target="#modal_new_menu"><i class="fa fa-plus fa-fw"></i> เพิ่มรายการเมนู</button>

						<div class="table-responsive">
							<table class="table table-bordered table-hover text-center" width="100%">
								<thead class="table-danger font-weight-bold">
									<tr>
										<td width="5%">ลำดับ</td>
										<td>Icon Menus</td>
										<td>ชื่อเมนู</td>
										<td>Folder</td>
										<td>Link</td>
										<td>Sorting</td>
										<td width="15%">จัดการ</>
									</tr>
								</thead>
								<tbody>
									<?php
									$m = 0;
									$getmenu = $getdata->my_sql_select($connect, NULL, "menus", "menu_status !='2' ORDER BY menu_sorting ASC");
									while ($showmenu = mysqli_fetch_object($getmenu)) {
										$m++;
									?>
										<tr>
											<td><?php echo @$m; ?></td>
											<td><i class="fa <?php echo $showmenu->menu_icon; ?> "></i></td>
											<td><?php echo @$showmenu->menu_name; ?></td>
											<td><?php echo @$showmenu->menu_case; ?></td>
											<td><?php echo @$showmenu->menu_link; ?></td>
											<td><?php echo @$showmenu->menu_sorting; ?></td>
											<td>

												<?php
												if ($showmenu->menu_status == '1') {
													echo '<button type="button" class="btn btn-success btn-sm" id="btn-' . @$showmenu->menu_key . '" onclick="javascript:Menulock(\'' . @$showmenu->menu_key . '\');" data-top="toptitle" data-placement="top" title="เปิด/ปิดการใช้งาน"><i class="fa fa-unlock-alt fa-fw" id="icon-' . @$showmenu->menu_key . '"></i> <span id="text-' . @$showmenu->menu_key . '"></span></button>';
												} else {
													echo '<button type="button" class="btn btn-danger btn-sm" id="btn-' . @$showmenu->menu_key . '" onclick="javascript:Menulock(\'' . @$showmenu->menu_key . '\');" data-top="toptitle" data-placement="top" title="เปิด/ปิดการใช้งาน"><i class="fa fa-lock fa-fw" id="icon-' . @$showmenu->menu_key . '"></i> <span id="text-' . @$showmenu->menu_key . '"></span></button>';
												}
												?>
												<button class="btn btn-info btn-sm" data-toggle="modal" data-target="#edit_menu" data-whatever="<?php echo @$showmenu->menu_key; ?>" data-top="toptitle" data-placement="top" title="แก้ไข"><i class="fa fa-edit fa-fw"></i></button>


											</td>
										</tr>
									<?php
									}
									?>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	<div class="card-footer text-center">
		<a class="btn btn-xs btn-outline-info" href="index.php?p=setting"><i class="fa fa-reply"></i> กลับ</a>
	</div>
</div>