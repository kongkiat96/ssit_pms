# Dump of access_list 
# Dump DATE : 04-Dec-2020

DROP TABLE IF EXISTS access_list;
CREATE TABLE access_list (
  access_key char(32) NOT NULL,
  access_name varchar(256) NOT NULL,
  access_detail text NOT NULL,
  access_class int(11) NOT NULL,
  access_status tinyint(1) NOT NULL,
  PRIMARY KEY (access_key)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO access_list VALUES("0a3c8aabc6cdbce67a157ba1701b3fa9","Dashboard Report","report",0,2);
INSERT INTO access_list VALUES("1729ee3e24ffee8eee4243095be36000","Building","building",0,2);
INSERT INTO access_list VALUES("21adef826d326d4bae44eb0c9e19b8b1","แจ้งซ่อมฝ่ายสารสนเทศ","service",0,1);
INSERT INTO access_list VALUES("26f7e62109e2566eaec8b01fe8e3598d","รายการที่ยังไม่สมบูรณ์","card_create",0,1);
INSERT INTO access_list VALUES("295744c466c17b46170f88b5c1b9104d","รายการสินทรัพย์ IT","asset_it",0,1);
INSERT INTO access_list VALUES("29e4746518a2c2b2c2d4781fee025c37","IT-Service","service",0,2);
INSERT INTO access_list VALUES("acac0001f4c9f206256b9a2dfe433b42","รายการสินทรัพย์องค์กร","asset",0,1);
INSERT INTO access_list VALUES("e6ebaceb2257ae23f931da8b67225897","Asset","asset_ngg	",0,2);
INSERT INTO access_list VALUES("ee5797fd5a21692ce4e72961b7ea13b8","แจ้งซ่อมฝ่ายอาคาร	","maintenance",0,2);
INSERT INTO access_list VALUES("f1344bc0fb9c5594fa0e3d3f37a56957","พนักงาน","employee",0,1);
INSERT INTO access_list VALUES("f82e85b7c7b919048fd303ac17a14ee3","แจ้งซ่อมฝ่ายอาคาร","building",0,2);



# Dump of access_user 
# Dump DATE : 04-Dec-2020

DROP TABLE IF EXISTS access_user;
CREATE TABLE access_user (
  access_key char(32) NOT NULL,
  user_key char(32) NOT NULL,
  access_status tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO access_user VALUES("f1344bc0fb9c5594fa0e3d3f37a56957","67b8e985b1a5ebb806e6ee8044a35828",1);
INSERT INTO access_user VALUES("295744c466c17b46170f88b5c1b9104d","67b8e985b1a5ebb806e6ee8044a35828",1);
INSERT INTO access_user VALUES("21adef826d326d4bae44eb0c9e19b8b1","67b8e985b1a5ebb806e6ee8044a35828",1);
INSERT INTO access_user VALUES("f1344bc0fb9c5594fa0e3d3f37a56957","062f75c18952920165acbc35c6580bee",1);
INSERT INTO access_user VALUES("295744c466c17b46170f88b5c1b9104d","062f75c18952920165acbc35c6580bee",1);
INSERT INTO access_user VALUES("acac0001f4c9f206256b9a2dfe433b42","062f75c18952920165acbc35c6580bee",1);
INSERT INTO access_user VALUES("21adef826d326d4bae44eb0c9e19b8b1","062f75c18952920165acbc35c6580bee",1);



# Dump of asset 
# Dump DATE : 04-Dec-2020

DROP TABLE IF EXISTS asset;
CREATE TABLE asset (
  as_keyID char(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  as_code varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  company varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'บริษัท/สังกัด',
  as_name_thai varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  as_name_eng varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  as_detail text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  as_pic varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  as_file varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ไฟล์เพิ่มเติม',
  ck_file int(2) NOT NULL,
  date_buy date NOT NULL,
  as_location varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  user_res varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '-' COMMENT 'ผู้รับผิดชอบ',
  user_use varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ผู้ใช้งาน',
  date_start date DEFAULT NULL COMMENT 'วันที่เริ่มยืม',
  date_end date DEFAULT NULL COMMENT 'วันที่คืน',
  date_insert datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  as_status varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '1 โอน, 2 ยืม, 3 ขาย',
  insert_by varchar(255) NOT NULL COMMENT 'ผู้บันทึก',
  status int(2) NOT NULL DEFAULT 1 COMMENT '1 ใช้งาน 2 ลบ',
  PRIMARY KEY (as_keyID)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO asset VALUES("a68e7cc7f8b12ec29d12b53689d32168","TEST","2","โต๊ะ","tabel","ทดสอบ ","a68e7cc7f8b12ec29d12b53689d32168-call-to-action-bg.jpg",NULL,0,"2020-12-02","BKK",NULL,NULL,NULL,NULL,"2020-12-04 13:22:45","2","67b8e985b1a5ebb806e6ee8044a35828",1);
INSERT INTO asset VALUES("a7ae9066f770350876edb63103d157cf","TEST","2","โต๊ะ","tabel","ทดสอบ ","a7ae9066f770350876edb63103d157cf-call-to-action-bg.jpg",NULL,0,"2020-12-02","BKK",NULL,NULL,NULL,NULL,"2020-12-04 13:22:28","2","67b8e985b1a5ebb806e6ee8044a35828",1);
INSERT INTO asset VALUES("bd105f177b19ef1bca96f059dfe9a023","TEST2","2","โต๊ะ 2","tabel 2","Test 22","bd105f177b19ef1bca96f059dfe9a023-hero-bg.jpg",NULL,1,"2020-12-03","BKK",NULL,NULL,NULL,NULL,"2020-12-04 13:22:03","1","67b8e985b1a5ebb806e6ee8044a35828",1);



# Dump of asset_history 
# Dump DATE : 04-Dec-2020

DROP TABLE IF EXISTS asset_history;
CREATE TABLE asset_history (
  as_ID int(6) NOT NULL AUTO_INCREMENT,
  as_keyID char(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  do_stamp varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  user_stamp char(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  text_comment mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  as_status int(1) NOT NULL,
  user_key char(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  date_now datetime NOT NULL,
  PRIMARY KEY (as_ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






# Dump of asset_print 
# Dump DATE : 04-Dec-2020

DROP TABLE IF EXISTS asset_print;
CREATE TABLE asset_print (
  ID int(20) unsigned NOT NULL AUTO_INCREMENT,
  p_as_keyID varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Asset KeyID',
  p_user varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Key for user',
  date_time datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  p_status int(11) NOT NULL DEFAULT 1 COMMENT '1 selectprint 0 delete 2 successprint',
  p_status_add int(2) NOT NULL DEFAULT 1 COMMENT '1 selectprint 0 printsuccess',
  PRIMARY KEY (ID) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



INSERT INTO asset_print VALUES(1,"a68e7cc7f8b12ec29d12b53689d32168","67b8e985b1a5ebb806e6ee8044a35828","2020-12-03 20:56:52",2,0);
INSERT INTO asset_print VALUES(2,"bd105f177b19ef1bca96f059dfe9a023","67b8e985b1a5ebb806e6ee8044a35828","2020-12-03 20:56:52",2,0);
INSERT INTO asset_print VALUES(3,"a7ae9066f770350876edb63103d157cf","67b8e985b1a5ebb806e6ee8044a35828","2020-12-03 20:59:45",2,0);
INSERT INTO asset_print VALUES(4,"a68e7cc7f8b12ec29d12b53689d32168","67b8e985b1a5ebb806e6ee8044a35828","2020-12-03 21:02:10",2,0);
INSERT INTO asset_print VALUES(5,"a68e7cc7f8b12ec29d12b53689d32168","062f75c18952920165acbc35c6580bee","2020-12-04 13:11:13",2,0);
INSERT INTO asset_print VALUES(6,"a68e7cc7f8b12ec29d12b53689d32168","062f75c18952920165acbc35c6580bee","2020-12-04 13:20:58",2,0);
INSERT INTO asset_print VALUES(7,"a7ae9066f770350876edb63103d157cf","062f75c18952920165acbc35c6580bee","2020-12-04 13:30:10",2,0);
INSERT INTO asset_print VALUES(8,"a68e7cc7f8b12ec29d12b53689d32168","062f75c18952920165acbc35c6580bee","2020-12-04 13:30:10",2,0);
INSERT INTO asset_print VALUES(9,"a68e7cc7f8b12ec29d12b53689d32168","062f75c18952920165acbc35c6580bee","2020-12-04 13:30:24",1,1);
INSERT INTO asset_print VALUES(10,"a7ae9066f770350876edb63103d157cf","062f75c18952920165acbc35c6580bee","2020-12-04 13:30:24",1,1);
INSERT INTO asset_print VALUES(11,"bd105f177b19ef1bca96f059dfe9a023","062f75c18952920165acbc35c6580bee","2020-12-04 13:30:24",1,1);



# Dump of backup_logs 
# Dump DATE : 04-Dec-2020

DROP TABLE IF EXISTS backup_logs;
CREATE TABLE backup_logs (
  backup_key varchar(32) NOT NULL,
  backup_file varchar(256) NOT NULL,
  backup_date timestamp NOT NULL DEFAULT current_timestamp(),
  user_key char(32) NOT NULL,
  PRIMARY KEY (backup_key)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO backup_logs VALUES("08bcb07e41737a52d5d815905ccca098","2020-12-04.bk.sql","2020-12-04 13:31:00","062f75c18952920165acbc35c6580bee");
INSERT INTO backup_logs VALUES("25c24a3414895f5119c1c8a2867d1a66","2020-12-04.bk.sql","2020-12-04 13:26:20","062f75c18952920165acbc35c6580bee");
INSERT INTO backup_logs VALUES("5369b921c87425830877480b74297d35","2020-12-03.bk.sql","2020-12-03 22:25:07","062f75c18952920165acbc35c6580bee");
INSERT INTO backup_logs VALUES("7ae4a85c4fdc0d6b6aaa72f4404b7c74","2020-12-04.bk.sql","2020-12-04 13:20:34","062f75c18952920165acbc35c6580bee");
INSERT INTO backup_logs VALUES("ed8bede924890843b5432f0396a6ea30","2020-12-04.bk.sql","2020-12-04 13:19:12","062f75c18952920165acbc35c6580bee");



# Dump of card_info 
# Dump DATE : 04-Dec-2020

DROP TABLE IF EXISTS card_info;
CREATE TABLE card_info (
  card_key char(32) NOT NULL,
  card_code varchar(16) DEFAULT NULL,
  card_customer_name varchar(64) DEFAULT NULL,
  asset_code varchar(100) DEFAULT NULL,
  card_company varchar(100) DEFAULT NULL,
  card_customer_phone varchar(128) DEFAULT NULL,
  card_customer_email varchar(128) DEFAULT NULL,
  card_note text DEFAULT NULL COMMENT 'ชื่อเครื่อง',
  card_equipment varchar(100) DEFAULT NULL,
  card_brand varchar(50) DEFAULT NULL,
  card_model varchar(100) DEFAULT NULL,
  card_serial varchar(50) DEFAULT NULL,
  card_sum varchar(100) DEFAULT NULL COMMENT 'จำนวนอุปกรณ์',
  card_date_buy date NOT NULL COMMENT 'วันที่ซื้อ',
  card_ex varchar(20) DEFAULT NULL COMMENT 'ระยะเวลารับประกัน',
  ck_license int(2) DEFAULT NULL,
  license_name varchar(200) DEFAULT NULL,
  license_key varchar(200) DEFAULT NULL,
  card_done_aprox date NOT NULL,
  user_key varchar(32) DEFAULT NULL,
  user_update varchar(32) DEFAULT NULL,
  card_status varchar(32) DEFAULT NULL,
  card_insert date NOT NULL,
  card_delete int(2) NOT NULL DEFAULT 1 COMMENT '1 use 0 del',
  PRIMARY KEY (card_key)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO card_info VALUES("4dc5b32f29bb83b9402449d9b0918882","CS6JF514","1a0e088bf3c57dc36aea4647d52fbb04","Test-001","1","123456","sa@b.com","Test-001","1","DELL","D001","SE225-55","1","2020-11-01","1 ปี",1,"Windows 10 Pro","FD55523-665455-5588","2020-12-03","67b8e985b1a5ebb806e6ee8044a35828","67b8e985b1a5ebb806e6ee8044a35828","2e34609794290a770cb0349119d78d21","2020-12-01",1);



# Dump of card_item 
# Dump DATE : 04-Dec-2020

DROP TABLE IF EXISTS card_item;
CREATE TABLE card_item (
  item_key char(32) NOT NULL,
  card_key varchar(32) NOT NULL,
  item_number int(11) NOT NULL,
  item_name varchar(128) NOT NULL,
  item_note text NOT NULL,
  item_price_aprox float NOT NULL,
  item_insert timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (item_key)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO card_item VALUES("445a1ddb01c13682a7d3e82ec6f01915","4dc5b32f29bb83b9402449d9b0918882",0,"Ram","Ram 8 GB",1,"2020-12-03 20:04:50");



# Dump of card_status 
# Dump DATE : 04-Dec-2020

DROP TABLE IF EXISTS card_status;
CREATE TABLE card_status (
  cstatus_key char(32) NOT NULL,
  card_key varchar(32) NOT NULL,
  card_status varchar(32) NOT NULL,
  card_status_note text NOT NULL,
  user_key varchar(32) NOT NULL,
  cstatus_insert timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (cstatus_key)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO card_status VALUES("11ccf07acdb8d3dba9c573f3e9a8b396","4dc5b32f29bb83b9402449d9b0918882","2e34609794290a770cb0349119d78d21","","67b8e985b1a5ebb806e6ee8044a35828","2020-12-03 20:13:08");
INSERT INTO card_status VALUES("70bc624ba830c8da2cc9ba1b8253c848","4dc5b32f29bb83b9402449d9b0918882","9ba0f256a5f620136568c6b47dcb24bd","","67b8e985b1a5ebb806e6ee8044a35828","2020-12-03 20:12:39");
INSERT INTO card_status VALUES("b8513dcd5067ed62dc5b6dd69366d4bc","4dc5b32f29bb83b9402449d9b0918882","2e34609794290a770cb0349119d78d21","","67b8e985b1a5ebb806e6ee8044a35828","2020-12-03 20:07:39");



# Dump of card_type 
# Dump DATE : 04-Dec-2020

DROP TABLE IF EXISTS card_type;
CREATE TABLE card_type (
  ctype_key char(32) NOT NULL,
  ctype_name varchar(128) NOT NULL,
  ctype_color varchar(16) NOT NULL,
  ctype_status tinyint(1) NOT NULL DEFAULT 1,
  ctype_use int(1) NOT NULL DEFAULT 3 COMMENT '1 = it, 2 asset, 3 All',
  ctype_insert timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (ctype_key)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO card_type VALUES("0cbc6611f5540bd0809a388dc95a615b","Test","#b1fb28",2,3,"2020-12-03 23:45:35");
INSERT INTO card_type VALUES("2e34609794290a770cb0349119d78d21","ใช้งานปกติ","#eb6a14",1,3,"2018-12-08 13:47:10");
INSERT INTO card_type VALUES("3b2bd9e319992d5b63bfbbd7301b6882","รอดำเนินการสั่งซื้ออุปกรณ์","#bc680f",1,3,"2020-02-18 11:45:58");
INSERT INTO card_type VALUES("41d5e808720c8ee71257214e952a6721","Test4","#ae3737",2,3,"2020-12-04 00:01:05");
INSERT INTO card_type VALUES("47ea92cfc142a08b40abe2ddbf8837a8","กำลังซ่อม","#fff500",1,3,"2018-12-08 13:48:29");
INSERT INTO card_type VALUES("57995055c28df9e82476a54f852bd214","ยกเลิกการแจ้ง","#ff0000",1,3,"2018-12-08 13:49:07");
INSERT INTO card_type VALUES("5b93205f13e238f5a1904e095016e81f","คืนแล้ว","#100ceb",1,3,"2019-05-23 15:36:24");
INSERT INTO card_type VALUES("5cafc78523f4f5e4812f9545b2ba5ae7","แจ้งดำเนินการอีกครั้ง","#ff000b",1,3,"2020-02-17 13:59:03");
INSERT INTO card_type VALUES("9ba0f256a5f620136568c6b47dcb24bd","สำรอง","#ed4e09",1,3,"2018-12-08 13:54:34");
INSERT INTO card_type VALUES("b3f66ec1535de7702c38e94408fa4a17","Test3","#000000",2,3,"2020-12-03 23:59:59");
INSERT INTO card_type VALUES("befb5e146e599a9876757fb18ce5fa2e","รับดำเนินการ","#38c7d8",1,3,"2020-02-04 15:10:13");
INSERT INTO card_type VALUES("c454552d52d55d3ef56408742887362b","Test2","#000000",2,0,"2020-12-03 23:48:20");
INSERT INTO card_type VALUES("f2c50a9a3e802c7be809f7f506b2b46a","รอเปลี่ยนอะไหล่","#ebae13",1,3,"2018-12-08 13:51:30");



# Dump of company 
# Dump DATE : 04-Dec-2020

DROP TABLE IF EXISTS company;
CREATE TABLE company (
  id int(11) NOT NULL AUTO_INCREMENT,
  company_name varchar(255) DEFAULT NULL COMMENT 'ชื่อบริษัท',
  cp_status int(2) NOT NULL DEFAULT 1 COMMENT '1 ปกติ 0 ลบ',
  show_it int(1) NOT NULL DEFAULT 0 COMMENT '1 แสดง 0 ไม่แสดง',
  show_asset int(1) NOT NULL DEFAULT 0 COMMENT '1 แสดง 0 ไม่แสดง',
  PRIMARY KEY (id)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;



INSERT INTO company VALUES(1,"บริษัท ทดสอบ จำกัด",1,1,0);
INSERT INTO company VALUES(2,"บริษัท ทดสอบ2 จำกัด",1,0,1);
INSERT INTO company VALUES(3,"bbb",1,1,1);



# Dump of department_name 
# Dump DATE : 04-Dec-2020

DROP TABLE IF EXISTS department_name;
CREATE TABLE department_name (
  id int(11) NOT NULL AUTO_INCREMENT,
  department_name varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ชื่อแผนก',
  department_status int(1) NOT NULL DEFAULT 1 COMMENT '1 use 0 del',
  PRIMARY KEY (id) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



INSERT INTO department_name VALUES(1,"Management",1);
INSERT INTO department_name VALUES(2,"Finance & Accounting",1);
INSERT INTO department_name VALUES(3,"QA & QC",1);
INSERT INTO department_name VALUES(4,"Production",1);
INSERT INTO department_name VALUES(5,"Human Resource Management",1);
INSERT INTO department_name VALUES(6,"Business Development",1);
INSERT INTO department_name VALUES(7,"Human Resource Development & Learning Development",1);
INSERT INTO department_name VALUES(8,"HR Admin",1);
INSERT INTO department_name VALUES(9,"Sales & Marketing",1);
INSERT INTO department_name VALUES(10,"Creative & Design",1);
INSERT INTO department_name VALUES(11,"Graphic & Design",1);
INSERT INTO department_name VALUES(12,"Service Management",1);
INSERT INTO department_name VALUES(13,"Financial & Accounting",1);
INSERT INTO department_name VALUES(14,"Brand Development",1);
INSERT INTO department_name VALUES(15,"Purchaseing",1);
INSERT INTO department_name VALUES(16,"Production & Maintenance",1);
INSERT INTO department_name VALUES(17,"Planning & Logistics",1);
INSERT INTO department_name VALUES(18,"Purchasing",1);
INSERT INTO department_name VALUES(19,"Sales",1);
INSERT INTO department_name VALUES(20,"Warehouse & Logistics",1);
INSERT INTO department_name VALUES(21,"Business Consultant",1);
INSERT INTO department_name VALUES(22,"Sales Support",1);
INSERT INTO department_name VALUES(23,"Interior Visual Designer",1);
INSERT INTO department_name VALUES(24,"Internal Audit",1);
INSERT INTO department_name VALUES(25,"Repair Watch",1);
INSERT INTO department_name VALUES(26,"Marketing",1);
INSERT INTO department_name VALUES(27,"Sales Alternative",1);
INSERT INTO department_name VALUES(28,"Marketing Communication",1);
INSERT INTO department_name VALUES(29,"Business Planning",1);
INSERT INTO department_name VALUES(30,"Direct Channel",1);
INSERT INTO department_name VALUES(31,"Sales Online",1);
INSERT INTO department_name VALUES(32,"Visual Merchandiser",1);
INSERT INTO department_name VALUES(33,"Photographer",1);
INSERT INTO department_name VALUES(34,"Operation",1);
INSERT INTO department_name VALUES(35,"Branding",1);
INSERT INTO department_name VALUES(36,"Customer Service",1);
INSERT INTO department_name VALUES(37,"Business & Merchandise Development",1);
INSERT INTO department_name VALUES(38,"Stock Controller",1);
INSERT INTO department_name VALUES(39,"Gemologist",1);
INSERT INTO department_name VALUES(40,"Lawyer",1);
INSERT INTO department_name VALUES(41,"Sales Gold & Jewelry",1);
INSERT INTO department_name VALUES(42,"Provision & Lawyer",1);
INSERT INTO department_name VALUES(43,"Operation Management",1);
INSERT INTO department_name VALUES(44,"ERP",1);
INSERT INTO department_name VALUES(45,"IT Support",1);
INSERT INTO department_name VALUES(46,"Software Development",1);
INSERT INTO department_name VALUES(48,"-",1);
INSERT INTO department_name VALUES(50,"Sales Luxury Brand",1);
INSERT INTO department_name VALUES(51,"Engineer",1);
INSERT INTO department_name VALUES(52,"Gemology",1);
INSERT INTO department_name VALUES(53,"Graphic",1);
INSERT INTO department_name VALUES(54," Kitchen Team (Operation)",1);



# Dump of device_type 
# Dump DATE : 04-Dec-2020

DROP TABLE IF EXISTS device_type;
CREATE TABLE device_type (
  id int(11) NOT NULL AUTO_INCREMENT,
  device_type varchar(45) DEFAULT NULL COMMENT 'หมวดหมู่อุปกรณ์',
  device_status int(1) NOT NULL DEFAULT 1 COMMENT '1 use 0 del',
  PRIMARY KEY (id)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;



INSERT INTO device_type VALUES(1,"PC",0);
INSERT INTO device_type VALUES(2,"Monitor",1);
INSERT INTO device_type VALUES(3,"Notebook",0);
INSERT INTO device_type VALUES(4,"PC (All in one)",0);
INSERT INTO device_type VALUES(6,"Mobile",1);
INSERT INTO device_type VALUES(7,"Printer",1);
INSERT INTO device_type VALUES(8,"Hub",1);
INSERT INTO device_type VALUES(9,"Power Amp",1);
INSERT INTO device_type VALUES(10,"Speaker",1);
INSERT INTO device_type VALUES(11,"HDMI Extender",1);
INSERT INTO device_type VALUES(12,"Brightsign",1);
INSERT INTO device_type VALUES(13,"Projector",1);
INSERT INTO device_type VALUES(14,"Scanner",1);
INSERT INTO device_type VALUES(15,"RACK",1);
INSERT INTO device_type VALUES(16,"UPS",1);
INSERT INTO device_type VALUES(17,"Camera CCTV",1);
INSERT INTO device_type VALUES(18,"Digital Video Recorder",1);
INSERT INTO device_type VALUES(19,"ETC",1);
INSERT INTO device_type VALUES(20,"External Harddisk",1);
INSERT INTO device_type VALUES(21,"Android Box",1);
INSERT INTO device_type VALUES(22,"iMac",1);
INSERT INTO device_type VALUES(23,"Accessories",1);
INSERT INTO device_type VALUES(24,"POE",1);
INSERT INTO device_type VALUES(25,"AAA",1);



# Dump of employee 
# Dump DATE : 04-Dec-2020

DROP TABLE IF EXISTS employee;
CREATE TABLE employee (
  card_key char(32) NOT NULL,
  title_name int(2) DEFAULT NULL,
  name varchar(150) DEFAULT NULL,
  lastname varchar(255) DEFAULT NULL,
  user_position varchar(100) DEFAULT NULL COMMENT 'ตำแหน่ง',
  user_department varchar(100) DEFAULT NULL COMMENT 'แผนก',
  department_id int(11) NOT NULL COMMENT 'บริษัทอิงจาก company',
  em_status int(2) NOT NULL DEFAULT 1 COMMENT '1 ปกติ 0 ลบ',
  date_create datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (card_key)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



INSERT INTO employee VALUES("062f75c18952920165acbc35c6580bee",1,"ทดสอบ","ผู้ดูและระบบ","IT","45",1,1,"2020-12-04 12:50:38");
INSERT INTO employee VALUES("1a0e088bf3c57dc36aea4647d52fbb04",5,"Test","System","Product Design & Development Manager","15",2,1,"2020-12-04 03:43:34");
INSERT INTO employee VALUES("4b9099562fd5bf224557982130f358b3",1,"ทดสอบ","ผู้ใช้งาน","General Manager","19",1,1,"2020-12-04 03:42:32");
INSERT INTO employee VALUES("a58b62e0713ed06a1f0efc22ea006699",4,"Hyouka","Nukitram","IT Support","1",2,0,"2020-12-04 13:25:17");
INSERT INTO employee VALUES("83c8ab36c232e736965bcc344fc590b8",1,"ทดสอบ","เจ้าหน้าที่","IT","45",1,1,"2020-12-04 12:48:52");



# Dump of list 
# Dump DATE : 04-Dec-2020

DROP TABLE IF EXISTS list;
CREATE TABLE list (
  id int(3) unsigned NOT NULL AUTO_INCREMENT,
  cases varchar(64) NOT NULL,
  menu varchar(64) NOT NULL,
  pages varchar(128) NOT NULL,
  case_status tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (id)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;



INSERT INTO list VALUES(1,"setting","setting","settings/setting.php",1);
INSERT INTO list VALUES(2,"employee","employee","employee/index.php",1);
INSERT INTO list VALUES(3,"report","report","report/report.php",2);
INSERT INTO list VALUES(4,"report_export","report","report/report_export.php",2);
INSERT INTO list VALUES(5,"case_all_service","service","service/case_all_service.php",1);
INSERT INTO list VALUES(6,"report_logs","report","report/report_logs.php",2);
INSERT INTO list VALUES(7,"report_delivery_detail","report","report/report_delivery_detail.php",2);
INSERT INTO list VALUES(8,"setting_users","setting","settings/setting_users.php",1);
INSERT INTO list VALUES(9,"setting_backup","setting","settings/setting_backup.php",1);
INSERT INTO list VALUES(10,"setting_info","setting","settings/setting_info.php",1);
INSERT INTO list VALUES(11,"setting_system","setting","settings/setting_system.php",1);
INSERT INTO list VALUES(12,"setting_user_access","setting","settings/setting_user_access.php",1);
INSERT INTO list VALUES(13,"administrator_access_list","setting","administrator/administrator_access_list.php",1);
INSERT INTO list VALUES(14,"administrator_cases","setting","administrator/administrator_cases.php",1);
INSERT INTO list VALUES(15,"administrator_menus","setting","administrator/administrator_menus.php",1);
INSERT INTO list VALUES(16,"administrator_modules","setting","administrator/administrator_modules.php",1);
INSERT INTO list VALUES(17,"administrator_helper","seting","administrator/administrator_helper.php",1);
INSERT INTO list VALUES(18,"show_work","service","service/show_work.php",1);
INSERT INTO list VALUES(19,"case_all_company","service","service/case_all_company.php",1);
INSERT INTO list VALUES(20,"service","service","service/index.php",1);
INSERT INTO list VALUES(21,"member_detail","member","members/member_detail.php",2);
INSERT INTO list VALUES(22,"new_member","member","members/new_member.php",2);
INSERT INTO list VALUES(23,"member_history","member","members/member_history.php",2);
INSERT INTO list VALUES(24,"card_all_status","card","card/card_all_status.php",2);
INSERT INTO list VALUES(25,"card","card","card/card.php",2);
INSERT INTO list VALUES(26,"setting_card_status","setting","settings/setting_card_status.php",1);
INSERT INTO list VALUES(27,"card_create_detail","card_create","card/card_create_detail.php",2);
INSERT INTO list VALUES(28,"card_create","card_create","card/main.php",2);
INSERT INTO list VALUES(29,"administrator_log","setting","administrator/administrator_log.php",1);
INSERT INTO list VALUES(30,"show_cancel","service","service/show_cancel.php",1);
INSERT INTO list VALUES(31,"show_cancel_user","service","service/show_cancel_user.php",1);
INSERT INTO list VALUES(32,"asset_ngg_old","asset_ngg_old","asset_ngg/indexx.php",2);
INSERT INTO list VALUES(33,"asset_history","asset","asset/asset_history.php",1);
INSERT INTO list VALUES(34,"building","building","building/index.php",2);
INSERT INTO list VALUES(35,"ngg_service","building","building/building_main.php",2);
INSERT INTO list VALUES(36,"building_all_company","building","building/building_all_company.php",2);
INSERT INTO list VALUES(37,"show_building","building","building/show_building.php",2);
INSERT INTO list VALUES(38,"show_building_cancel","building","building/show_building_cancel.php",2);
INSERT INTO list VALUES(39,"show_building_work","building","building/show_building_work.php",2);
INSERT INTO list VALUES(40,"show_cancel_me","building","building/show_cancel_me.php",2);
INSERT INTO list VALUES(41,"view_info","setting","settings/view_info.php",1);
INSERT INTO list VALUES(42,"assetall","asset","asset/assetall.php",1);
INSERT INTO list VALUES(43,"printbarcode","asset","asset/printbarcode.php",1);
INSERT INTO list VALUES(44,"setting_services","settings","settings/setting_services.php",1);
INSERT INTO list VALUES(45,"asset_it","asset_it","asset_it/index.php",1);
INSERT INTO list VALUES(46,"asset_it_create_detail","asset_it","asset_it/asset_it_create_detail.php",1);
INSERT INTO list VALUES(47,"asset","asset","asset/index.php",1);



# Dump of logs 
# Dump DATE : 04-Dec-2020

DROP TABLE IF EXISTS logs;
CREATE TABLE logs (
  log_key varchar(16) NOT NULL,
  log_date timestamp NOT NULL DEFAULT current_timestamp(),
  log_ipaddress varchar(32) NOT NULL,
  log_text varchar(256) NOT NULL,
  log_user varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



INSERT INTO logs VALUES("271057129ea41ba6","2020-12-03 20:19:33","::1","022874 เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("bd523a92e3f87240","2020-12-03 22:13:41","::1","admin ออกจากระบบ.","67b8e985b1a5ebb806e6ee8044a35828");
INSERT INTO logs VALUES("9947c564ecbcf7b7","2020-12-03 22:13:49","::1","022874 เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("42d37c72475885b2","2020-12-03 22:28:30","::1","022874 ออกจากระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("9251c5d588b2ef25","2020-12-03 22:28:35","::1","123456 เข้าสู่ระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("abdfbf31e5961e17","2020-12-03 22:28:45","::1","123456 ออกจากระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("fb3ee9e3684230b8","2020-12-03 22:29:03","::1","123456 เข้าสู่ระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("2c2fab7641c34aa3","2020-12-03 23:18:43","::1","022874 เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("785e55230afd5d43","2020-12-03 23:20:44","::1","123456 เข้าสู่ระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("46b0c0ccd16fdb04","2020-12-04 03:41:25","::1","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("d330986123eb90b0","2020-12-04 12:14:22","115.87.77.215","022874 เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("dc0339f7bbf95186","2020-12-04 12:28:34","115.87.77.215","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("6e90f83c8469402b","2020-12-04 12:42:03","115.87.77.215","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("3d96f1469caa133f","2020-12-04 12:45:12","115.87.77.215","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("cb6b1a2d97811e4f","2020-12-04 12:45:38","115.87.77.215","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("3572510ed5e04f4f","2020-12-04 12:46:05","115.87.77.215","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("917b05fb0ffb6584","2020-12-04 12:54:07","115.87.77.215","superadmin ออกจากระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("df2f96208d09cfc5","2020-12-04 13:08:19","14.207.255.219","user เข้าสู่ระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("dfbda3b733b63613","2020-12-04 13:08:22","183.88.133.161","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("d0229499cbc3cb5d","2020-12-04 13:08:25","110.77.149.239","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("a0952b71f4958c90","2020-12-04 13:08:35","14.207.255.219","user ออกจากระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("40badaf7b3562aab","2020-12-04 13:08:49","14.207.255.219","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("2732b5e369865b7e","2020-12-04 13:09:02","14.207.255.219","admin ออกจากระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("dbf25599ff4f89f9","2020-12-04 13:09:10","14.207.255.219","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("efa2b5d444e308ef","2020-12-04 13:09:11","182.232.8.84","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("d20c936567c33d67","2020-12-04 13:09:20","58.8.153.231","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("4c01060f807d42a1","2020-12-04 13:09:30","161.82.192.36","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("99ca8a32fdee1cfc","2020-12-04 13:09:38","183.89.210.154","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("bde4368fe6443930","2020-12-04 13:10:09","61.19.45.234","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("658812132f19f9e3","2020-12-04 13:10:17","1.2.248.104","user เข้าสู่ระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("2b3c4f047353923a","2020-12-04 13:10:24","110.78.145.69","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("84c56add07325e9e","2020-12-04 13:10:26","171.100.61.154","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("63083b2be62e889b","2020-12-04 13:10:27","49.230.254.5","user เข้าสู่ระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("4d56b4d7280a5038","2020-12-04 13:10:30","110.164.138.161","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("05a66221f41a9341","2020-12-04 13:10:30","127.0.0.1","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("5e4f8a59983fdc3e","2020-12-04 13:10:41","122.154.109.99","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("b4f34ed6a50d8749","2020-12-04 13:10:44","161.82.192.36","admin ออกจากระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("b11169f429eadf0a","2020-12-04 13:10:50","110.77.137.110","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("dfb9d1b3bf93175b","2020-12-04 13:10:51","1.46.44.163","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("de85756b315e5bcb","2020-12-04 13:11:13","14.207.8.138","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("56cd9adeaf610541","2020-12-04 13:11:18","171.6.143.208","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("ad7f57184137ff0d","2020-12-04 13:11:23","14.207.113.127","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("30a28f0e5f952633","2020-12-04 13:11:26","49.230.246.52","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("7f6eac5a2a045ae4","2020-12-04 13:11:28","117.121.211.140","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("cd236c4a2536f940","2020-12-04 13:11:32","58.8.153.231","superadmin ออกจากระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("7c83d02d2c6db467","2020-12-04 13:11:41","1.46.44.163","admin ออกจากระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("e347a11c85a0e354","2020-12-04 13:11:42","49.230.252.155","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("9e89a38eb569fb2a","2020-12-04 13:11:42","58.8.153.231","user เข้าสู่ระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("4c0ed9775335a718","2020-12-04 13:11:43","183.88.230.64","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("656ea05ce64db371","2020-12-04 13:11:44","183.88.242.33","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("90a62d55c6554fa6","2020-12-04 13:11:44","61.90.156.126","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("721bf60362ae9753","2020-12-04 13:11:47","27.55.87.70","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("3281ca440121ee60","2020-12-04 13:11:53","180.183.6.41","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("b5b7133ef40e76ac","2020-12-04 13:12:13","183.89.81.156","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("c9d3384155b70987","2020-12-04 13:12:15","202.176.117.126","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("ff80ae005461788e","2020-12-04 13:12:16","183.88.219.166","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("668fd6321b5d3810","2020-12-04 13:12:24","171.103.63.254","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("a6be3d1308e5febc","2020-12-04 13:12:26","14.207.113.127","admin ออกจากระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("196771c7d6d5b177","2020-12-04 13:12:27","122.154.109.99","user เข้าสู่ระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("0f8045dc99e8ec61","2020-12-04 13:12:28","58.8.153.231","user ออกจากระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("c35c5d85508c8573","2020-12-04 13:12:29","27.55.87.70","admin ออกจากระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("d47cce984e747469","2020-12-04 13:12:33","49.230.254.5","user ออกจากระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("28981c48f3292125","2020-12-04 13:12:34","14.207.113.127","user เข้าสู่ระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("952058d14930b7f4","2020-12-04 13:12:35","27.55.87.70","user เข้าสู่ระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("0f2c607e466a2fc8","2020-12-04 13:12:41","124.122.58.8","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("da753b4251a07bb0","2020-12-04 13:12:45","1.47.96.183","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("bd00838097705ac4","2020-12-04 13:12:47","110.77.165.159","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("da81c014572ee04f","2020-12-04 13:12:52","202.44.131.121","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("bfbda4e857e44231","2020-12-04 13:12:54","49.230.254.5","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("b952dfbac4547b62","2020-12-04 13:12:58","110.164.49.254","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("d19ee248ab075db2","2020-12-04 13:12:59","119.76.33.69","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("8f62bc428d6cef59","2020-12-04 13:13:03","171.100.61.154","superadmin ออกจากระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("194e853f5118b0ab","2020-12-04 13:13:05","110.77.165.159","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("2983b9ed3323cac2","2020-12-04 13:13:12","110.77.154.231","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("034eec67a6b8a31d","2020-12-04 13:13:29","27.55.81.125","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("86515b2bdfa3c224","2020-12-04 13:13:32","122.154.109.99","user ออกจากระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("e3bbb9c9dddfbfc6","2020-12-04 13:13:36","110.77.137.110","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("13e73f2d01b967c4","2020-12-04 13:13:39","119.76.33.69","admin ออกจากระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("bbde9a2614946c63","2020-12-04 13:13:41","122.154.109.99","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("2957030c056b1fe4","2020-12-04 13:13:41","14.207.113.127","user ออกจากระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("d2cde7d8f1c22ff3","2020-12-04 13:13:45","183.88.225.82","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("a498b9e958dfb52c","2020-12-04 13:13:46","119.76.33.69","user เข้าสู่ระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("73c0c770df355379","2020-12-04 13:13:51","14.207.113.127","user เข้าสู่ระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("b1fdb4bbe09841c0","2020-12-04 13:13:52","180.183.251.246","user เข้าสู่ระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("a5b661d037c71aee","2020-12-04 13:13:54","49.230.254.5","admin ออกจากระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("075f2e4e5fb34b64","2020-12-04 13:13:55","36.37.148.30","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("15f59f154c69405f","2020-12-04 13:13:57","183.88.218.249","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("c8ac8f449bc154fc","2020-12-04 13:14:10","202.176.102.15","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("fed9b648025d3d68","2020-12-04 13:14:13","203.144.233.121","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("a0be1264dfd6d524","2020-12-04 13:14:18","184.82.79.227","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("64cd46c0efe7a2f4","2020-12-04 13:14:20","118.173.65.80","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("461abd2b596f4b34","2020-12-04 13:14:25","49.231.253.51","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("c57c464571b34d18","2020-12-04 13:14:27","223.24.146.8","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("fb451f5f7ca15431","2020-12-04 13:14:30","14.207.8.138","superadmin ออกจากระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("09d34698e4a587fb","2020-12-04 13:14:32","182.255.9.54","user เข้าสู่ระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("a48f2e25488a2995","2020-12-04 13:14:33","110.77.228.21","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("8f059fe0901d6c8c","2020-12-04 13:14:49","49.231.253.51","superadmin ออกจากระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("e62f5e0ce2c99f39","2020-12-04 13:14:52","119.76.33.69","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("d94cb753f7c5f5d6","2020-12-04 13:14:55","180.183.243.63","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("4c5ded9e37e2c57f","2020-12-04 13:14:55","202.176.102.15","superadmin ออกจากระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("372e30af09e94758","2020-12-04 13:14:59","14.207.8.138","user เข้าสู่ระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("16791a4fc25c5554","2020-12-04 13:15:00","49.230.254.5","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("4a0a1a5e7d16925f","2020-12-04 13:15:05","203.155.181.226","user เข้าสู่ระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("4e4cc20273dc7c7a","2020-12-04 13:15:05","223.207.103.219","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("0a416a68ec3e1ca7","2020-12-04 13:15:26","182.255.9.54","user ออกจากระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("58072e17d92dbcba","2020-12-04 13:15:27","1.20.227.236","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("215394cccea6d344","2020-12-04 13:15:34","182.255.9.54","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("fa9f43af8044b701","2020-12-04 13:15:46","182.255.9.54","admin ออกจากระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("2fb240e860995831","2020-12-04 13:15:56","182.255.9.54","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("2adc04a4a86c6fbe","2020-12-04 13:15:58","49.230.7.100","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("eb4f3b29a07f2f89","2020-12-04 13:16:08","171.7.52.235","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("af0c99a235cf3696","2020-12-04 13:16:09","49.230.252.155","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("e8f2492a168a60e8","2020-12-04 13:16:12","171.6.5.195","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("8d590bc6794d4e89","2020-12-04 13:16:13","14.207.8.138","user ออกจากระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("4171f8d38558de1e","2020-12-04 13:16:31","203.155.181.226","user ออกจากระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("4d1af803668d31d1","2020-12-04 13:16:31","14.207.8.138","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("7567a34aff7006ee","2020-12-04 13:16:40","203.155.181.226","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("e09be5b2a3dd36a1","2020-12-04 13:16:43","27.55.91.21","user เข้าสู่ระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("7525341f808584d6","2020-12-04 13:16:45","110.164.201.178","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("1c6ec3e3247b4041","2020-12-04 13:16:46","49.0.64.51","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("e573aa50612cd150","2020-12-04 13:16:57","183.88.225.82","admin ออกจากระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("934e038814ec3c80","2020-12-04 13:16:58","203.172.41.34","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("605ec414857b2fb0","2020-12-04 13:17:01","49.0.64.51","admin ออกจากระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("aeab6a0eb84ea4b9","2020-12-04 13:17:05","183.88.225.82","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("135b3fe54a039a55","2020-12-04 13:17:07","49.0.64.51","user เข้าสู่ระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("31ef7d955b4d5abd","2020-12-04 13:17:12","49.230.246.52","superadmin ออกจากระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("f0bf0cb19911abfe","2020-12-04 13:17:28","203.155.181.226","admin ออกจากระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("693cf1615da68225","2020-12-04 13:17:29","36.37.148.30","admin ออกจากระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("1ff5f011404d3a3e","2020-12-04 13:17:31","119.110.239.162","user เข้าสู่ระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("14454fa954885baa","2020-12-04 13:17:33","36.37.148.30","user เข้าสู่ระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("9511c2b3538575f0","2020-12-04 13:17:37","203.155.181.226","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("2afb1d056b270ece","2020-12-04 13:17:54","182.232.178.251","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("e2d414332635da51","2020-12-04 13:18:16","122.154.225.220","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("b7f8f5cd4ba32574","2020-12-04 13:18:18","119.110.239.162","user ออกจากระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("1e106e54fe4ebca7","2020-12-04 13:18:21","14.207.8.138","superadmin ออกจากระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("d6755a9476f5500a","2020-12-04 13:18:24","119.110.239.162","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("94b1994a384a0717","2020-12-04 13:18:26","171.7.52.235","admin ออกจากระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("4268b067dc9b839d","2020-12-04 13:18:33","184.82.73.15","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("83130dc1c1334f85","2020-12-04 13:18:39","171.96.39.207","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("f26f79f386bd2916","2020-12-04 13:18:42","171.7.52.235","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("73bc48b391e04dfd","2020-12-04 13:18:45","14.207.86.143","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("152f20841845ba36","2020-12-04 13:18:48","184.22.92.207","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("db55e067d77dc2a4","2020-12-04 13:18:49","183.88.218.249","superadmin ออกจากระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("7c6a1b879f6f589a","2020-12-04 13:18:50","180.180.217.237","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("cdce7740c324f783","2020-12-04 13:18:51","49.230.197.86","user เข้าสู่ระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("772fc78bca24977e","2020-12-04 13:18:54","43.240.114.82","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("c37e946940b3c20b","2020-12-04 13:19:08","118.174.65.45","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("1faaf930d589bea2","2020-12-04 13:19:09","119.110.239.162","admin ออกจากระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("faeef4187a9ed5d5","2020-12-04 13:19:14","14.207.86.143","admin ออกจากระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("ae220365dd0a174b","2020-12-04 13:19:16","58.137.162.34","user เข้าสู่ระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("498cc35a3ca85e73","2020-12-04 13:19:26","27.55.81.61","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("703b7b7f0836cfa5","2020-12-04 13:19:26","119.110.239.162","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("c2e959e495feafb6","2020-12-04 13:19:35","122.154.225.220","admin ออกจากระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("37bb5211a15a7889","2020-12-04 13:19:38","171.96.39.207","admin ออกจากระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("31a207e229a5c074","2020-12-04 13:19:43","203.148.160.50","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("2a8d9f2fa89bdd39","2020-12-04 13:19:46","167.220.255.150","user เข้าสู่ระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("f6e86b6183e76d00","2020-12-04 13:19:47","118.174.65.45","admin ออกจากระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("9409a0427d13cdcb","2020-12-04 13:19:48","171.97.200.70","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("2f9e2c6851d9e89e","2020-12-04 13:19:54","49.0.64.51","user ออกจากระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("bb485885a8dc1a0c","2020-12-04 13:19:55","118.174.65.45","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("acb27789825c7c30","2020-12-04 13:19:58","49.0.64.51","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("b492a58bd9116c04","2020-12-04 13:20:02","182.232.143.136","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("68d927745f7a1d0b","2020-12-04 13:20:02","27.55.69.132","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("2bc360121133e6aa","2020-12-04 13:20:08","103.51.64.80","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("05295dc47cc64afe","2020-12-04 13:20:18","184.22.92.207","superadmin ออกจากระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("c6564b14efd9956f","2020-12-04 13:20:28","49.0.64.51","admin ออกจากระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("5ba3d0c9fa8b9bfc","2020-12-04 13:20:28","223.24.161.200","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("df0bfbd5cb64c3b8","2020-12-04 13:20:31","49.0.64.51","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("c9ba97dbd2ebe10f","2020-12-04 13:20:31","122.155.142.194","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("35e6f14482dbccc0","2020-12-04 13:20:37","171.98.68.133","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("e94149e812840581","2020-12-04 13:20:37","182.232.143.136","superadmin ออกจากระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("f4d11e374bfb3a9d","2020-12-04 13:20:39","112.121.138.34","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("58b7ec46e1b1d16c","2020-12-04 13:20:43","182.232.143.136","user เข้าสู่ระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("a3c56911b82580c3","2020-12-04 13:20:53","171.98.96.52","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("3fc8a015114dcfc0","2020-12-04 13:21:09","184.82.73.15","superadmin ออกจากระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("03690eb256b6da5f","2020-12-04 13:21:18","223.204.54.183","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("1f44d26a13979848","2020-12-04 13:21:28","112.121.138.34","superadmin ออกจากระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("40173ab4f20dbcde","2020-12-04 13:21:42","122.155.142.194","superadmin ออกจากระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("75e73b6c2f370a8d","2020-12-04 13:21:47","122.155.142.194","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("520885b302605577","2020-12-04 13:21:55","203.155.181.226","superadmin ออกจากระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("371145cfdb95eaa8","2020-12-04 13:22:02","122.155.142.194","admin ออกจากระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("7aeae0b9b73fee6d","2020-12-04 13:22:04","110.164.208.124","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("1678dc00b2c31410","2020-12-04 13:22:08","122.155.142.194","user เข้าสู่ระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("3bb5d01c0bd8d33b","2020-12-04 13:22:32","27.55.74.202","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("da5c28c87dc16573","2020-12-04 13:22:33","1.46.107.69","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("aac9d4a3b9d8c1de","2020-12-04 13:22:34","171.103.164.194","user เข้าสู่ระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("89f71dade6bd2614","2020-12-04 13:23:00","118.172.51.134","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("b7bd17b171a28ebb","2020-12-04 13:23:38","223.205.244.24","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("027dabea1fe8ba58","2020-12-04 13:23:38","171.100.251.199","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("0f86763687b4b43a","2020-12-04 13:23:41","202.28.177.49","user เข้าสู่ระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("c111d38c03a90cfa","2020-12-04 13:23:42","49.237.19.83","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("b24dbca458b29051","2020-12-04 13:23:57","175.176.222.7","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("c23aea6f0e18fc3a","2020-12-04 13:24:13","203.172.41.34","admin ออกจากระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("1f89b29738a2112e","2020-12-04 13:24:23","183.88.63.129","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("285ed91304a5be31","2020-12-04 13:24:23","159.192.225.228","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("f0742d869de85d01","2020-12-04 13:24:31","180.183.9.230","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("d7e1cc200343fa54","2020-12-04 13:24:32","202.28.177.49","user ออกจากระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("2deee844455fc65e","2020-12-04 13:24:33","183.88.98.21","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("aa33665d27bcdb37","2020-12-04 13:24:39","27.55.71.172","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("4377bc20528cd872","2020-12-04 13:24:41","202.28.177.49","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("df958203c5e6903b","2020-12-04 13:24:44","27.254.202.45","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("27cfd232b875a711","2020-12-04 13:24:48","49.230.101.149","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("be1491263275fd8d","2020-12-04 13:24:53","223.206.250.132","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("514ab6d4ba09b61e","2020-12-04 13:25:01","49.0.64.19","user เข้าสู่ระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("c4f2ece11eab641c","2020-12-04 13:25:05","202.28.177.49","admin ออกจากระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("048da7c9056bd943","2020-12-04 13:25:05","27.55.71.172","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("bb5ebcbbb88621c2","2020-12-04 13:25:09","101.108.4.251","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("28e88e6ec28f0691","2020-12-04 13:25:14","202.28.177.49","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("060dff81f386e7dd","2020-12-04 13:25:22","101.108.144.173","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("2ac115334b781a48","2020-12-04 13:25:27","203.155.122.15","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("d3725a0bc65f9548","2020-12-04 13:25:36","184.82.79.227","superadmin ออกจากระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("44e55662fc04cf05","2020-12-04 13:25:40","49.230.72.154","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("f8f3149aef4e11ea","2020-12-04 13:25:46","183.88.63.129","superadmin ออกจากระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("f802324a01da4d38","2020-12-04 13:25:54","175.176.222.7","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("053e50a515f9ac12","2020-12-04 13:25:55","171.101.19.136","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("a8c35f5a8c4c096c","2020-12-04 13:26:06","49.237.19.244","user เข้าสู่ระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("916e5dfeaa298d4f","2020-12-04 13:26:07","180.183.103.86","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("4e3089cfeae7dcc4","2020-12-04 13:26:12","184.82.79.227","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("6a0085d8e8750b03","2020-12-04 13:26:12","101.108.4.251","superadmin ออกจากระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("0216ef624bfb4270","2020-12-04 13:26:17","119.42.89.82","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("48f8ece0dd096abd","2020-12-04 13:26:20","1.47.168.26","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("9f5c656cef30dccf","2020-12-04 13:26:20","101.108.144.173","superadmin ออกจากระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("ab5843ea5babac99","2020-12-04 13:26:22","159.192.189.129","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("c2d0556d32f4c1cd","2020-12-04 13:26:25","223.24.154.3","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("afd6465b056d3888","2020-12-04 13:26:27","182.232.185.48","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("ec14f7597b80e2ec","2020-12-04 13:26:36","171.102.60.220","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("af62524f3e7431a6","2020-12-04 13:26:37","182.232.141.22","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("2491f794836f5d05","2020-12-04 13:26:42","117.121.211.140","superadmin ออกจากระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("e487951c2afc1d43","2020-12-04 13:26:54","223.24.147.78","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("aa4d7913ae79efa3","2020-12-04 13:27:06","175.176.222.7","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("bb3c5a0be62105d7","2020-12-04 13:27:06","117.121.211.140","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("f1de7b6661c47e5d","2020-12-04 13:27:07","183.88.97.222","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("0fdbb7a02b84d785","2020-12-04 13:27:14","119.42.89.82","superadmin ออกจากระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("cffaa8426aad410e","2020-12-04 13:27:20","49.237.19.244","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("cfd305c2aa7c7403","2020-12-04 13:27:21","49.228.22.49","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("5c2e9129af55f232","2020-12-04 13:27:31","182.232.251.105","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("8859a71cc7bcdef4","2020-12-04 13:27:33","1.179.231.65","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("9cb1154d2dcc9d9a","2020-12-04 13:27:36","182.232.143.136","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("2d3b430ff30ce59c","2020-12-04 13:27:56","110.77.138.119","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("371410c8e0802ea2","2020-12-04 13:28:00","182.232.143.136","admin ออกจากระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("5ba9a1af91701a4b","2020-12-04 13:28:05","184.82.79.227","admin ออกจากระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("2b1f48b3023c9407","2020-12-04 13:28:06","202.29.225.38","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("ac6ef719b692f6f2","2020-12-04 13:28:14","49.228.155.175","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("97c008cb64d5ee77","2020-12-04 13:28:17","49.228.22.49","superadmin ออกจากระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("056361aeba079c10","2020-12-04 13:28:17","182.232.143.136","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("1b4792db7a6eafbd","2020-12-04 13:28:25","49.228.22.49","user เข้าสู่ระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("a8f6ca9ddca9e970","2020-12-04 13:28:27","171.96.219.8","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("09dc390390114aa6","2020-12-04 13:28:41","118.172.51.134","superadmin ออกจากระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("06852303a8e8d02a","2020-12-04 13:28:45","184.82.79.227","user เข้าสู่ระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("e61834f38915ab72","2020-12-04 13:28:49","43.249.114.178","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("b2ea54155492a862","2020-12-04 13:28:49","49.49.247.41","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("9f953447f8b3591c","2020-12-04 13:29:13","49.49.247.41","superadmin ออกจากระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("6a6ad1aade68cc29","2020-12-04 13:29:17","49.228.162.20","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("601e2a82bf386ede","2020-12-04 13:29:17","117.121.211.140","admin ออกจากระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("7969bcc25501c13e","2020-12-04 13:29:18","49.230.88.36","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("7b2bbcd0631564e4","2020-12-04 13:29:19","210.4.134.226","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("f372d41b8b6f9043","2020-12-04 13:29:29","171.102.60.220","superadmin ออกจากระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("a494205248bb97c1","2020-12-04 13:29:37","49.49.247.41","user เข้าสู่ระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("ec7c0e1230297338","2020-12-04 13:29:37","184.82.79.227","user ออกจากระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("f19170f988688774","2020-12-04 13:29:38","27.55.77.7","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("508e955d22a51b7f","2020-12-04 13:29:38","171.102.60.220","user เข้าสู่ระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("c5d137072ff33eee","2020-12-04 13:29:45","49.230.201.52","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("34d2a3f3c1c1ef8b","2020-12-04 13:29:46","184.82.79.227","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("6a7d28a4845aaab6","2020-12-04 13:29:51","49.49.210.181","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("649f73a146d63eec","2020-12-04 13:29:55","49.228.155.175","admin ออกจากระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("b57b5cc7782cc9f3","2020-12-04 13:29:58","49.228.162.20","superadmin ออกจากระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("21a3c8c3b4713802","2020-12-04 13:30:05","27.55.77.7","admin ออกจากระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("8bd28985b9bbcb96","2020-12-04 13:30:07","183.88.225.59","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("0cac703389eb740b","2020-12-04 13:30:07","49.228.162.20","user เข้าสู่ระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("de4eeedd858acd2a","2020-12-04 13:30:08","117.121.211.140","user เข้าสู่ระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("5d372612759a3543","2020-12-04 13:30:13","49.228.155.175","user เข้าสู่ระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("72483ddceba9784d","2020-12-04 13:30:16","180.183.103.86","superadmin ออกจากระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("a8d5dcd4c3eb0b76","2020-12-04 13:30:17","125.26.175.154","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("c0098b7ec96636f5","2020-12-04 13:30:22","101.108.71.94","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("77bef7ab2bfd08fe","2020-12-04 13:30:26","202.28.182.5","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("cab6994d29451af9","2020-12-04 13:30:43","183.89.147.247","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("b28cd8285e6c7449","2020-12-04 13:30:50","183.88.227.143","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("a66e2ec4452c8d0d","2020-12-04 13:30:56","171.100.182.118","user เข้าสู่ระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("9e33fb4616efd0a6","2020-12-04 13:30:57","223.24.152.116","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("646537ba8178b92a","2020-12-04 13:31:04","61.19.239.74","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("19c2ab6d90ca9ca6","2020-12-04 13:31:06","182.232.251.105","user เข้าสู่ระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("a885f466c478beb9","2020-12-04 13:31:15","1.179.185.198","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("c3024e0501aeee25","2020-12-04 13:31:15","184.22.186.57","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("f26430dfd582cd7b","2020-12-04 13:31:15","49.49.245.160","user เข้าสู่ระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("277256109685c141","2020-12-04 13:31:56","202.183.178.163","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("85bce45e0c32780d","2020-12-04 13:31:56","49.49.245.160","user ออกจากระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("f23ab3e76554ef2d","2020-12-04 13:31:57","49.228.155.175","user ออกจากระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("c30e1e0922163b0b","2020-12-04 13:32:01","171.100.182.118","user ออกจากระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("e59a13ce34f43624","2020-12-04 13:32:08","49.228.155.175","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("f62198d32f472193","2020-12-04 13:32:14","182.232.104.168","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("a6c2b3a1d0c9f9de","2020-12-04 13:32:16","184.22.186.57","superadmin ออกจากระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("18f73196d4849665","2020-12-04 13:32:19","171.102.60.220","user ออกจากระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("92716a43af9952b7","2020-12-04 13:32:21","49.228.155.175","admin ออกจากระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("8ca4d8f541e04fee","2020-12-04 13:32:22","101.108.71.94","superadmin ออกจากระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("36f0f77ce0f4ad1f","2020-12-04 13:32:36","171.102.60.220","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("5f39f54b15c884df","2020-12-04 13:32:44","49.228.155.175","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("f8cdaeec340d8e7e","2020-12-04 13:32:55","49.49.232.169","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("c4b8d4653baea08b","2020-12-04 13:33:05","171.102.60.220","superadmin ออกจากระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("64cbc8f2e3ad9e11","2020-12-04 13:33:11","171.102.60.220","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("9446ffdb46fb6ac8","2020-12-04 13:33:15","124.120.152.122","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("1bd79fd35fb82338","2020-12-04 13:33:36","49.228.155.175","superadmin ออกจากระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("20b0c49c9d62f881","2020-12-04 13:33:51","180.183.247.188","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("20c2c886ac4de151","2020-12-04 13:33:54","180.183.117.236","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("035e9ed0433b748f","2020-12-04 13:34:07","110.168.54.98","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("b2b2fb56ed555777","2020-12-04 13:34:21","180.183.134.77","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("a16ea2f251dcc569","2020-12-04 13:34:23","202.183.178.163","superadmin ออกจากระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("a509d6e80c6573c6","2020-12-04 13:34:26","202.60.204.31","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("ff5d3ef018a11652","2020-12-04 13:34:34","27.55.66.244","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("12fb6afd4eaefc3d","2020-12-04 13:34:42","183.89.147.247","admin ออกจากระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("aca5a3801e95f557","2020-12-04 13:34:48","171.102.60.220","user เข้าสู่ระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("a0442eaac52b2019","2020-12-04 13:34:51","159.192.219.102","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("b4214bd5c4301445","2020-12-04 13:34:52","1.46.132.57","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("e9d52a73b2d7b495","2020-12-04 13:34:56","183.89.147.247","user เข้าสู่ระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("39bc6176aa521f3a","2020-12-04 13:35:23","14.207.48.31","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("cb2215f6fae7df32","2020-12-04 13:35:37","27.55.75.22","admin เข้าสู่ระบบ.","83c8ab36c232e736965bcc344fc590b8");
INSERT INTO logs VALUES("f48815b4090233a0","2020-12-04 13:35:37","43.240.114.82","superadmin ออกจากระบบ.","062f75c18952920165acbc35c6580bee");



# Dump of members_prefix 
# Dump DATE : 04-Dec-2020

DROP TABLE IF EXISTS members_prefix;
CREATE TABLE members_prefix (
  prefix_code int(3) unsigned NOT NULL AUTO_INCREMENT,
  prefix_key varchar(32) NOT NULL,
  prefix_title varchar(64) NOT NULL,
  prefix_status tinyint(1) NOT NULL,
  prefix_insert timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (prefix_code)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;



INSERT INTO members_prefix VALUES(1,"00d3ee50b62c10ee1f590819a045ea47","นาย",1,"2019-01-04 15:22:28");
INSERT INTO members_prefix VALUES(2,"2f9f2c0fc106a86ea7cb3bca1a28de00","นางสาว",1,"2019-01-04 15:24:28");
INSERT INTO members_prefix VALUES(3,"b69fcedf741f32260fb2323fe8fdc9dc","นาง",1,"2019-01-04 15:26:28");
INSERT INTO members_prefix VALUES(4,"c50c44364721dd2fd78c9809ba63348b","ส่วนกลาง",1,"2019-04-20 16:39:01");
INSERT INTO members_prefix VALUES(5,"07e6dad4c35626e2eef6879f9e6bc224","Mr.",1,"2019-09-25 14:31:01");
INSERT INTO members_prefix VALUES(6,"7bb3cfcdc10f0830609626871f48a2e1","Miss.",1,"2019-09-25 14:31:15");
INSERT INTO members_prefix VALUES(7,"92fffc8038fb8082d8f3286cc95d68e3","ว่าง",1,"2020-01-28 16:13:04");
INSERT INTO members_prefix VALUES(8,"7f183ddcb3abf3cefdda95a434ba0d3a"," -",1,"2020-02-05 10:52:45");



# Dump of menus 
# Dump DATE : 04-Dec-2020

DROP TABLE IF EXISTS menus;
CREATE TABLE menus (
  menu_key char(32) NOT NULL,
  menu_icon varchar(256) NOT NULL,
  menu_name varchar(128) NOT NULL COMMENT '<span class="pull-right"><span class="badge" id="card_count"></span></span>',
  menu_case varchar(128) NOT NULL,
  menu_link varchar(256) NOT NULL,
  menu_status tinyint(1) NOT NULL,
  menu_sorting int(11) NOT NULL,
  PRIMARY KEY (menu_key)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO menus VALUES("0a3c8aabc6cdbce67a157ba1701b3fa9","fa-pie-chart","Dashboard Report","report","?p=report",2,9);
INSERT INTO menus VALUES("1729ee3e24ffee8eee4243095be36000","fa-building","Building","building","?p=building",2,81);
INSERT INTO menus VALUES("21adef826d326d4bae44eb0c9e19b8b1","fa-laptop-medical","แจ้งซ่อมฝ่ายสารสนเทศ","service","?p=service",1,5);
INSERT INTO menus VALUES("2309e0cdb2c541bf7cb8ef0dee7b7eba","fa-cogs","ตั้งค่า","setting","?p=setting",1,98);
INSERT INTO menus VALUES("26f7e62109e2566eaec8b01fe8e3598d","fa-unlink","รายการที่ยังไม่สมบูรณ์","card_create","?p=card_create",1,3);
INSERT INTO menus VALUES("295744c466c17b46170f88b5c1b9104d","fa-address-card","รายการสินทรัพย์ IT","asset_it","?p=asset_it",1,2);
INSERT INTO menus VALUES("29e4746518a2c2b2c2d4781fee025c37","fa-wrench","IT-Service","service","?p=service",2,80);
INSERT INTO menus VALUES("a16043256ea5ca0ea86995e2b69ec238","fa-home","หน้าแรก","","index.php",1,1);
INSERT INTO menus VALUES("acac0001f4c9f206256b9a2dfe433b42","fa-folder-open","รายการสินทรัพย์องค์กร","asset","?p=asset",1,6);
INSERT INTO menus VALUES("c6c8729b45d1fec563f8453c16ff03b8","fa-sign-out-alt","ออกจากระบบ","logout","../core/logout.core.php",1,99);
INSERT INTO menus VALUES("e6ebaceb2257ae23f931da8b67225897","fa-folder-open","Asset","asset_ngg	","?p=asset_ngg	",2,83);
INSERT INTO menus VALUES("ee5797fd5a21692ce4e72961b7ea13b8","fa-hammer","แจ้งซ่อมฝ่ายอาคาร	","maintenance","?p=maintenance",2,6);
INSERT INTO menus VALUES("f1344bc0fb9c5594fa0e3d3f37a56957","fa-users","พนักงาน","employee","?p=employee",1,4);
INSERT INTO menus VALUES("f82e85b7c7b919048fd303ac17a14ee3","fa-gavel","แจ้งซ่อมฝ่ายอาคาร","building","?p=ngg_service",2,82);



# Dump of os_system 
# Dump DATE : 04-Dec-2020

DROP TABLE IF EXISTS os_system;
CREATE TABLE os_system (
  id int(2) NOT NULL,
  os_name varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






# Dump of problem_comment 
# Dump DATE : 04-Dec-2020

DROP TABLE IF EXISTS problem_comment;
CREATE TABLE problem_comment (
  ID int(6) NOT NULL AUTO_INCREMENT,
  ticket varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  admin_update varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  card_status varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  comment varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  date datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (ID)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



INSERT INTO problem_comment VALUES(1,"20120301","67b8e985b1a5ebb806e6ee8044a35828","47ea92cfc142a08b40abe2ddbf8837a8",NULL,"2020-12-03 20:22:25");
INSERT INTO problem_comment VALUES(2,"20120301","67b8e985b1a5ebb806e6ee8044a35828","f2c50a9a3e802c7be809f7f506b2b46a","รอเปลี่ยนอะไหล่","2020-12-03 20:22:55");
INSERT INTO problem_comment VALUES(3,"20120301","67b8e985b1a5ebb806e6ee8044a35828","2e34609794290a770cb0349119d78d21","เสร็จสิ้น","2020-12-03 20:23:24");
INSERT INTO problem_comment VALUES(4,"20120302","062f75c18952920165acbc35c6580bee","47ea92cfc142a08b40abe2ddbf8837a8",NULL,"2020-12-03 23:20:27");
INSERT INTO problem_comment VALUES(5,"20120401","1a0e088bf3c57dc36aea4647d52fbb04","5cafc78523f4f5e4812f9545b2ba5ae7","q","2020-12-04 00:07:25");
INSERT INTO problem_comment VALUES(6,"20120401","062f75c18952920165acbc35c6580bee","f2c50a9a3e802c7be809f7f506b2b46a",NULL,"2020-12-04 13:31:39");



# Dump of problem_list 
# Dump DATE : 04-Dec-2020

DROP TABLE IF EXISTS problem_list;
CREATE TABLE problem_list (
  ID int(5) NOT NULL AUTO_INCREMENT,
  ticket varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  department varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  company varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  user_key varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  se_id int(2) NOT NULL,
  se_li_id int(2) DEFAULT NULL,
  se_other varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  card_status varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  date date NOT NULL,
  date_update date DEFAULT '0000-00-00',
  admin_update varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  time_start time NOT NULL,
  time_update time NOT NULL,
  PRIMARY KEY (ID)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



INSERT INTO problem_list VALUES(1,"20120301","1","","062f75c18952920165acbc35c6580bee",3,9,"ทดสอบ","2e34609794290a770cb0349119d78d21","2020-12-03","2020-12-03","67b8e985b1a5ebb806e6ee8044a35828","20:20:28","20:23:24");
INSERT INTO problem_list VALUES(2,"20120302","2","","1a0e088bf3c57dc36aea4647d52fbb04",1,109,"D","47ea92cfc142a08b40abe2ddbf8837a8","2020-12-03","2020-12-03","062f75c18952920165acbc35c6580bee","22:29:21","23:20:27");
INSERT INTO problem_list VALUES(3,"20120401","2","","1a0e088bf3c57dc36aea4647d52fbb04",3,101,"d","f2c50a9a3e802c7be809f7f506b2b46a","2020-12-04","2020-12-04","062f75c18952920165acbc35c6580bee","00:07:19","13:31:39");



# Dump of service 
# Dump DATE : 04-Dec-2020

DROP TABLE IF EXISTS service;
CREATE TABLE service (
  se_id int(11) NOT NULL AUTO_INCREMENT,
  se_name varchar(200) NOT NULL,
  se_group varchar(100) DEFAULT NULL,
  se_status int(1) NOT NULL DEFAULT 1,
  data_time datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (se_id)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;



INSERT INTO service VALUES(1,"อุปกรณ์ (Hardware)","1",1,"2020-12-04 13:18:13");
INSERT INTO service VALUES(2,"โปรแกรม (Software)","1",1,"2020-09-23 10:52:23");
INSERT INTO service VALUES(3,"ระบบเครือข่าย (Network)","1",1,"2020-09-23 10:52:26");
INSERT INTO service VALUES(4,"สิทธิ์ใช้งานระบบ (Authorization)","1",1,"2020-09-23 10:52:27");
INSERT INTO service VALUES(5,"อื่นๆ (Other)","1",1,"2020-09-23 10:52:30");



# Dump of service_list 
# Dump DATE : 04-Dec-2020

DROP TABLE IF EXISTS service_list;
CREATE TABLE service_list (
  se_li_id int(11) NOT NULL AUTO_INCREMENT,
  se_id int(11) NOT NULL,
  se_li_name varchar(200) NOT NULL,
  se_li_status int(1) NOT NULL DEFAULT 1,
  data_time datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (se_li_id,se_id)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;



INSERT INTO service_list VALUES(1,1,"Computer - คอมพิวเตอร์เปิดไม่ติด , ขึ้น Blue Screen, หน้าจอฟ้า, Windows error",1,"2020-05-15 15:52:27");
INSERT INTO service_list VALUES(2,1,"Monitor - หน้าจอไม่มีภาพขึ้น, หน้าจอภาพเป็นเส้น, หน้าจอเสีย",1,"2020-05-15 15:52:27");
INSERT INTO service_list VALUES(3,1,"Printer - ปริ้นส์ไม่ออก, ปริ้นส์แล้วตัวหนังสือขาด ตกหล่น, ไม่ดึงกระดาษ, รหัสปริ้นหาย, หมึกหมด",1,"2020-05-15 15:52:27");
INSERT INTO service_list VALUES(4,1,"UPS - ไม่สำรองไฟ, เปิดไม่ติด, ขอเปลี่ยน, ขอเพิ่ม",1,"2020-05-15 15:52:27");
INSERT INTO service_list VALUES(5,1,"Printer Scanner - สแกนไม่ได้, ไม่มีแสกน",1,"2020-05-15 15:52:27");
INSERT INTO service_list VALUES(6,2,"Ms Word, Ms Excel เปิดไม่ขึ้น ค้าง ช้า",1,"2020-05-15 15:52:27");
INSERT INTO service_list VALUES(7,2,"Ms Outlook เปิดไม่ขึ้น, ส่ง E-Mail ไม่ออก, ค้าง ช้า",1,"2020-05-15 15:52:27");
INSERT INTO service_list VALUES(8,2,"Browser Chrome, เปิดไม่ขึ้น ค้าง",1,"2020-05-15 15:52:27");
INSERT INTO service_list VALUES(9,3,"อินเตอร์เน็ทช้า อินเตอร์เน็ทเข้าไม่ได้",1,"2020-05-15 15:52:27");
INSERT INTO service_list VALUES(10,4,"ขอสิทธิ์การใช้งานระบบใหม่ , ยกเลิกสิทธิ์การใช้งานระบบ , เปลี่ยนแปลงสิทธิ์การใช้งาน",1,"2020-05-15 15:52:27");
INSERT INTO service_list VALUES(11,4,"ขอสิทธิ์การใช้ E-Mail , ยกเลิกสิทธิ์การใช้ E-Mail , เปลี่ยนแปลงสิทธิ์ E-Mail",1,"2020-05-15 15:52:27");
INSERT INTO service_list VALUES(99,2,"อื่น ๆ ",1,"2020-12-04 13:18:18");
INSERT INTO service_list VALUES(100,2,"อื่น ๆ",1,"2020-05-15 15:52:27");
INSERT INTO service_list VALUES(101,3,"อื่น ๆ",1,"2020-05-15 15:52:27");
INSERT INTO service_list VALUES(102,4,"อื่น ๆ",1,"2020-05-15 15:52:27");
INSERT INTO service_list VALUES(103,5,"อื่น ๆ",1,"2020-05-15 15:52:27");
INSERT INTO service_list VALUES(109,1,"Keyboard, Mouse - ชำรุด, ค้าง, ขอเพิ่ม - เปลี่ยนใหม่",1,"2020-05-15 15:52:27");
INSERT INTO service_list VALUES(110,2,"ขอติดตั้งโปรแกรม, อัพเดตโปรแกรม, โปรแกรมค้าง ช้า",1,"2020-05-15 15:52:27");
INSERT INTO service_list VALUES(111,4,"ขอปลดล็อค Youtube, G-mail",1,"2020-05-15 15:52:27");



# Dump of system_info 
# Dump DATE : 04-Dec-2020

DROP TABLE IF EXISTS system_info;
CREATE TABLE system_info (
  site_key char(32) NOT NULL,
  site_logo varchar(256) NOT NULL,
  site_favicon varchar(256) NOT NULL,
  time_zone varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO system_info VALUES("8f411b77c389d5de467af8f2c0e91cda","img.png","img.png","Asia/Bangkok");



# Dump of user 
# Dump DATE : 04-Dec-2020

DROP TABLE IF EXISTS user;
CREATE TABLE user (
  id int(11) NOT NULL AUTO_INCREMENT,
  user_key char(32) NOT NULL,
  name varchar(64) NOT NULL,
  lastname varchar(64) DEFAULT NULL,
  username varchar(64) NOT NULL,
  password varchar(32) NOT NULL DEFAULT '81dc9bdb52d04dc20036dbd8313ed055',
  user_photo varchar(128) NOT NULL DEFAULT 'noimg.jpg',
  user_class tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=user,2=admin,3=super admin',
  user_status tinyint(1) NOT NULL DEFAULT 1,
  email varchar(128) DEFAULT NULL,
  data_time datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (id)
) ENGINE=MyISAM AUTO_INCREMENT=338 DEFAULT CHARSET=utf8;



INSERT INTO user VALUES(1,"67b8e985b1a5ebb806e6ee8044a35828","ก้องเกียรติ","บุญเส็ง","admins","52c69e3a57331081823331c4e69d3f2e","noimg.jpg",3,0,"admin@admin.com","2020-12-04 13:25:14");
INSERT INTO user VALUES(335,"1a0e088bf3c57dc36aea4647d52fbb04","Test","System","user","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,"wewe@wewe.com","2020-12-04 13:29:11");
INSERT INTO user VALUES(334,"062f75c18952920165acbc35c6580bee","ทดสอบ","ผู้ดูแลระบบ","superadmin","e10adc3949ba59abbe56e057f20f883e","noimg.jpg",3,1,"a@b.com99","2020-12-04 13:24:09");
INSERT INTO user VALUES(336,"83c8ab36c232e736965bcc344fc590b8","ทดสอบ","เจ้าหน้าที่","admin","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",2,1,NULL,"2020-12-04 12:51:15");
INSERT INTO user VALUES(337,"a58b62e0713ed06a1f0efc22ea006699","Hyouka","Nukitram","147893","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,0,NULL,"2020-12-04 13:25:17");



# Dump of user_online 
# Dump DATE : 04-Dec-2020

DROP TABLE IF EXISTS user_online;
CREATE TABLE user_online (
  osession varchar(128) CHARACTER SET utf8 NOT NULL DEFAULT '',
  user_key varchar(32) CHARACTER SET utf8 NOT NULL,
  otime int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO user_online VALUES("95522vphtn7a7tbgki5envcgs4","85dc6d4bd6e7189330a9e2b7b39408c2",1566376833);



