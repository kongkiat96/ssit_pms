# Dump of access_list 
# Dump DATE : 05-Dec-2020

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
# Dump DATE : 05-Dec-2020

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
INSERT INTO access_user VALUES("f1344bc0fb9c5594fa0e3d3f37a56957","3c08234c30a478f84be9e6442afb561f",1);
INSERT INTO access_user VALUES("26f7e62109e2566eaec8b01fe8e3598d","3c08234c30a478f84be9e6442afb561f",1);



# Dump of asset 
# Dump DATE : 05-Dec-2020

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



INSERT INTO asset VALUES("a68e7cc7f8b12ec29d12b53689d32168","TEST","2","โต๊ะ","tabel","ทดสอบ ","a68e7cc7f8b12ec29d12b53689d32168-call-to-action-bg.jpg",NULL,0,"2020-12-02","BKK","062f75c18952920165acbc35c6580bee",NULL,NULL,NULL,"2020-12-04 17:23:44","2","67b8e985b1a5ebb806e6ee8044a35828",0);
INSERT INTO asset VALUES("a7ae9066f770350876edb63103d157cf","TEST","2","โต๊ะ","tabel","ทดสอบ ","a7ae9066f770350876edb63103d157cf-call-to-action-bg.jpg",NULL,0,"2020-12-02","BKK","062f75c18952920165acbc35c6580bee",NULL,NULL,NULL,"2020-12-03 20:46:21","2","67b8e985b1a5ebb806e6ee8044a35828",1);
INSERT INTO asset VALUES("bd105f177b19ef1bca96f059dfe9a023","TEST2","2","โต๊ะ 2","tabel 2","Test 22","bd105f177b19ef1bca96f059dfe9a023-hero-bg.jpg",NULL,0,"2020-12-03","BKK","1a0e088bf3c57dc36aea4647d52fbb04",NULL,NULL,NULL,"2020-12-03 20:46:55","1","67b8e985b1a5ebb806e6ee8044a35828",1);



# Dump of asset_history 
# Dump DATE : 05-Dec-2020

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
# Dump DATE : 05-Dec-2020

DROP TABLE IF EXISTS asset_print;
CREATE TABLE asset_print (
  ID int(20) unsigned NOT NULL AUTO_INCREMENT,
  p_as_keyID varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Asset KeyID',
  p_user varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Key for user',
  date_time datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  p_status int(11) NOT NULL DEFAULT 1 COMMENT '1 selectprint 0 delete 2 successprint',
  p_status_add int(2) NOT NULL DEFAULT 1 COMMENT '1 selectprint 0 printsuccess',
  PRIMARY KEY (ID) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



INSERT INTO asset_print VALUES(1,"a68e7cc7f8b12ec29d12b53689d32168","67b8e985b1a5ebb806e6ee8044a35828","2020-12-03 20:56:52",2,0);
INSERT INTO asset_print VALUES(2,"bd105f177b19ef1bca96f059dfe9a023","67b8e985b1a5ebb806e6ee8044a35828","2020-12-03 20:56:52",2,0);
INSERT INTO asset_print VALUES(3,"a7ae9066f770350876edb63103d157cf","67b8e985b1a5ebb806e6ee8044a35828","2020-12-03 20:59:45",2,0);
INSERT INTO asset_print VALUES(4,"a68e7cc7f8b12ec29d12b53689d32168","67b8e985b1a5ebb806e6ee8044a35828","2020-12-03 21:02:10",2,0);



# Dump of backup_logs 
# Dump DATE : 05-Dec-2020

DROP TABLE IF EXISTS backup_logs;
CREATE TABLE backup_logs (
  backup_key varchar(32) NOT NULL,
  backup_file varchar(256) NOT NULL,
  backup_date timestamp NOT NULL DEFAULT current_timestamp(),
  user_key char(32) NOT NULL,
  PRIMARY KEY (backup_key)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO backup_logs VALUES("5369b921c87425830877480b74297d35","2020-12-03.bk.sql","2020-12-03 22:25:07","062f75c18952920165acbc35c6580bee");
INSERT INTO backup_logs VALUES("594142da2a0077143eccd620272e3532","2020-12-04.bk.sql","2020-12-04 03:44:34","062f75c18952920165acbc35c6580bee");
INSERT INTO backup_logs VALUES("8e23fbca3ed2f2c5c7580d29614bb8de","2020-12-04.bk.sql","2020-12-04 16:27:52","062f75c18952920165acbc35c6580bee");



# Dump of card_info 
# Dump DATE : 05-Dec-2020

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



INSERT INTO card_info VALUES("4dc5b32f29bb83b9402449d9b0918882","CS6JF514","1a0e088bf3c57dc36aea4647d52fbb04","Test-001","1","123456","sa@b.com","Test-001","1","DELL","D001","SE225-55","1","2020-11-01","1 ปี",0,"Windows 10 Pro",NULL,"2020-12-03","67b8e985b1a5ebb806e6ee8044a35828","67b8e985b1a5ebb806e6ee8044a35828","2e34609794290a770cb0349119d78d21","2020-12-01",1);



# Dump of card_item 
# Dump DATE : 05-Dec-2020

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
# Dump DATE : 05-Dec-2020

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
# Dump DATE : 05-Dec-2020

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
INSERT INTO card_type VALUES("2e34609794290a770cb0349119d78d21","ใช้งานปกติ","#26eb15",1,3,"2018-12-08 13:47:10");
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
# Dump DATE : 05-Dec-2020

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
INSERT INTO company VALUES(3,"A",1,1,1);



# Dump of department_name 
# Dump DATE : 05-Dec-2020

DROP TABLE IF EXISTS department_name;
CREATE TABLE department_name (
  id int(11) NOT NULL AUTO_INCREMENT,
  department_name varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ชื่อแผนก',
  department_status int(1) NOT NULL DEFAULT 1 COMMENT '1 use 0 del',
  PRIMARY KEY (id) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



INSERT INTO department_name VALUES(1,"Management",0);
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
# Dump DATE : 05-Dec-2020

DROP TABLE IF EXISTS device_type;
CREATE TABLE device_type (
  id int(11) NOT NULL AUTO_INCREMENT,
  device_type varchar(45) DEFAULT NULL COMMENT 'หมวดหมู่อุปกรณ์',
  device_status int(1) NOT NULL DEFAULT 1 COMMENT '1 use 0 del',
  PRIMARY KEY (id)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;



INSERT INTO device_type VALUES(1,"PC",1);
INSERT INTO device_type VALUES(2,"Monitor",1);
INSERT INTO device_type VALUES(3,"Notebook",1);
INSERT INTO device_type VALUES(4,"PC (All in one)",1);
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



# Dump of employee 
# Dump DATE : 05-Dec-2020

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



INSERT INTO employee VALUES("062f75c18952920165acbc35c6580bee",1,"ทดสอบ","ทดสอบ","IT","45",2,1,"2020-12-04 16:26:07");
INSERT INTO employee VALUES("1a0e088bf3c57dc36aea4647d52fbb04",5,"Test","System","Product Design & Development Manager","15",2,1,"2020-12-04 03:43:34");
INSERT INTO employee VALUES("4b9099562fd5bf224557982130f358b3",1,"ทดสอบ","ผู้ใช้งาน","General Manager","19",1,1,"2020-12-04 03:42:32");
INSERT INTO employee VALUES("634231aff6d429f9384437641d456d19",1,"ทดสอบ","เจ้าหน้าที่","IT","45",1,1,"2020-12-04 03:43:00");
INSERT INTO employee VALUES("3c08234c30a478f84be9e6442afb561f",1,"ฟ้า","สดใส","เจ้าหน้าที่","2",1,1,"2020-12-04 17:52:01");
INSERT INTO employee VALUES("2b8d316643d0db8bced23a15f51ea041",2,"ทดสอบ","1","พนักงาน","8",1,1,"2020-12-05 15:32:55");
INSERT INTO employee VALUES("b94267e93d4c394fdedc67b8b5317906",1,"ทดสอบ2","2","พนักงาน","1",1,1,"2020-12-05 15:33:43");
INSERT INTO employee VALUES("28ce28aa13bbe6cebca62d02045b224a",3,"ทดสอบ3","3","พนักงาน","2",1,1,"2020-12-05 15:34:18");
INSERT INTO employee VALUES("be76daf2b857bfd821ef6cc38b3185b5",2,"admin01","admin01","IT","45",2,1,"2020-12-05 15:34:47");
INSERT INTO employee VALUES("673a886cf6d84950fcf2b491467959a2",1,"admin02","admin02","General Manager","3",1,1,"2020-12-05 15:35:06");
INSERT INTO employee VALUES("f8b9b0205f6cd2dbac30c130c0cb83f5",5,"ทดสอบ4","4","พนักงาน","3",1,1,"2020-12-05 15:35:17");
INSERT INTO employee VALUES("ef995bbef697d44aa8fdd2b67d7df6a5",6,"ทดสอบ5","5","พนักงาน","4",2,1,"2020-12-05 15:35:50");
INSERT INTO employee VALUES("08912c53ff436ae36f0aceee2e63cde5",1,"ทดสอบ6","6","พนักงาน","5",2,1,"2020-12-05 15:36:24");
INSERT INTO employee VALUES("16ec766e24cb283f615a745c79c07c91",2,"ทดสอบ7","7","พนักงาน","6",3,1,"2020-12-05 15:37:01");
INSERT INTO employee VALUES("af66f1a681d48cb992585de8b48794ae",1,"admin03","admin03","Senior Chef Officer","45",1,1,"2020-12-05 15:37:29");
INSERT INTO employee VALUES("25c6f4733bb40e25bb42041b38bf1902",2,"ทดสอบแอดมิน1","01","แอดมิน","5",1,1,"2020-12-05 15:39:25");
INSERT INTO employee VALUES("f21204e0b9cb8ebdd30de804971a0c36",1,"ทดสอบแอดมิน2","02","แอดมิน","7",1,1,"2020-12-05 15:40:09");
INSERT INTO employee VALUES("50b4b32f47ac165f4b686706dc9bf755",3,"ทดสอบแอดมิน3","03","แอดมิน","7",2,1,"2020-12-05 15:40:47");



# Dump of list 
# Dump DATE : 05-Dec-2020

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
# Dump DATE : 05-Dec-2020

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
INSERT INTO logs VALUES("ea7862457ff4660e","2020-12-04 12:18:01","::1","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("8082cf7ebcd0a402","2020-12-04 12:21:32","::1","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("51bfabad9b8b14c7","2020-12-04 16:03:59","::1","001 เข้าสู่ระบบ.","4b9099562fd5bf224557982130f358b3");
INSERT INTO logs VALUES("7521dbe5ade56015","2020-12-04 16:11:55","::1","001 เข้าสู่ระบบ.","4b9099562fd5bf224557982130f358b3");
INSERT INTO logs VALUES("01268f93ac69f733","2020-12-04 16:23:36","::1","94004 ออกจากระบบ.","4e79c67b4ea5d4997353386d8b5b61a1");
INSERT INTO logs VALUES("3dadb2a7ba2c0f73","2020-12-04 16:24:06","::1","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("4e0cde8a21162ced","2020-12-04 17:06:30","184.22.211.54","user ออกจากระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("23a30516af023f9d","2020-12-04 17:09:53","223.24.168.166","admin เข้าสู่ระบบ.","67b8e985b1a5ebb806e6ee8044a35828");
INSERT INTO logs VALUES("cca1b5982de074dc","2020-12-04 17:21:01","223.206.235.64","admin เข้าสู่ระบบ.","67b8e985b1a5ebb806e6ee8044a35828");
INSERT INTO logs VALUES("d7d1c0008a62bbdb","2020-12-04 17:26:24","223.206.235.64","admin เข้าสู่ระบบ.","67b8e985b1a5ebb806e6ee8044a35828");
INSERT INTO logs VALUES("cfee09be6fbbbc5e","2020-12-04 17:42:02","223.206.235.64","admin เข้าสู่ระบบ.","67b8e985b1a5ebb806e6ee8044a35828");
INSERT INTO logs VALUES("658066021321bd64","2020-12-04 17:49:04","171.98.39.205","admin เข้าสู่ระบบ.","67b8e985b1a5ebb806e6ee8044a35828");
INSERT INTO logs VALUES("f4bd7ddc21c34f52","2020-12-04 17:54:25","223.206.235.64","admin ออกจากระบบ.","67b8e985b1a5ebb806e6ee8044a35828");
INSERT INTO logs VALUES("cade6be722d1809e","2020-12-04 17:54:28","223.206.235.64","456214 เข้าสู่ระบบ.","3c08234c30a478f84be9e6442afb561f");
INSERT INTO logs VALUES("032631ddf4efb9ba","2020-12-04 18:01:58","182.232.211.56","admin เข้าสู่ระบบ.","67b8e985b1a5ebb806e6ee8044a35828");
INSERT INTO logs VALUES("5d43856dd594807e","2020-12-04 18:04:45","223.206.235.64","456214 เข้าสู่ระบบ.","3c08234c30a478f84be9e6442afb561f");
INSERT INTO logs VALUES("b93cbff91fbea97a","2020-12-04 18:13:54","182.232.211.56","admin เข้าสู่ระบบ.","67b8e985b1a5ebb806e6ee8044a35828");
INSERT INTO logs VALUES("8438619dd28bfac5","2020-12-04 18:24:36","223.24.158.24","123456 เข้าสู่ระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("0114081d3f35e453","2020-12-04 18:32:59","202.186.110.25","admin เข้าสู่ระบบ.","67b8e985b1a5ebb806e6ee8044a35828");
INSERT INTO logs VALUES("f7e0a90281711fd9","2020-12-04 18:41:39","223.205.241.237","123456 เข้าสู่ระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("356ae5b445724ea9","2020-12-04 19:22:10","49.230.22.143","123456 เข้าสู่ระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("a324b251cce29bf2","2020-12-04 19:22:33","223.206.235.64","456214 ออกจากระบบ.","3c08234c30a478f84be9e6442afb561f");
INSERT INTO logs VALUES("c27fc4a65fe64a0e","2020-12-04 19:22:36","223.206.235.64","456214 เข้าสู่ระบบ.","3c08234c30a478f84be9e6442afb561f");
INSERT INTO logs VALUES("6d4ac15a98ddfef4","2020-12-05 11:24:39","27.55.76.36","456214 เข้าสู่ระบบ.","3c08234c30a478f84be9e6442afb561f");
INSERT INTO logs VALUES("e9411378570c6855","2020-12-05 11:24:56","27.55.76.36","456214 ออกจากระบบ.","3c08234c30a478f84be9e6442afb561f");
INSERT INTO logs VALUES("23aa24edf49cfbde","2020-12-05 11:25:35","27.55.82.39","456214 เข้าสู่ระบบ.","3c08234c30a478f84be9e6442afb561f");
INSERT INTO logs VALUES("62df86cd389438f7","2020-12-05 11:25:38","27.55.82.39","456214 ออกจากระบบ.","3c08234c30a478f84be9e6442afb561f");
INSERT INTO logs VALUES("89febdde7b6dc891","2020-12-05 11:27:05","27.55.82.39","456214 เข้าสู่ระบบ.","3c08234c30a478f84be9e6442afb561f");
INSERT INTO logs VALUES("609ff547617ed6b7","2020-12-05 11:27:50","27.55.82.39","456214 เข้าสู่ระบบ.","3c08234c30a478f84be9e6442afb561f");
INSERT INTO logs VALUES("970e1775dfaa824d","2020-12-05 13:12:16","183.89.168.25","123456 เข้าสู่ระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("6e47275db54c7cb9","2020-12-05 13:13:17","183.89.168.25","123456 ออกจากระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("4d15afa48f145a75","2020-12-05 14:13:19","124.122.84.220","123456 เข้าสู่ระบบ.","1a0e088bf3c57dc36aea4647d52fbb04");
INSERT INTO logs VALUES("26e0fe879b7ec0b5","2020-12-05 14:45:22","124.122.84.220","admin เข้าสู่ระบบ.","67b8e985b1a5ebb806e6ee8044a35828");
INSERT INTO logs VALUES("d7943b456fcda20b","2020-12-05 15:07:09","182.232.237.157","admin เข้าสู่ระบบ.","67b8e985b1a5ebb806e6ee8044a35828");
INSERT INTO logs VALUES("d590c5c226f48120","2020-12-05 15:12:50","180.183.168.14","admin เข้าสู่ระบบ.","67b8e985b1a5ebb806e6ee8044a35828");
INSERT INTO logs VALUES("e4c087d9bf6a7d47","2020-12-05 15:27:01","124.122.84.220","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");
INSERT INTO logs VALUES("9c4ac40d1b5d0da3","2020-12-05 15:29:01","124.122.84.220","superadmin เข้าสู่ระบบ.","062f75c18952920165acbc35c6580bee");



# Dump of members_prefix 
# Dump DATE : 05-Dec-2020

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
# Dump DATE : 05-Dec-2020

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
# Dump DATE : 05-Dec-2020

DROP TABLE IF EXISTS os_system;
CREATE TABLE os_system (
  id int(2) NOT NULL,
  os_name varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






# Dump of problem_comment 
# Dump DATE : 05-Dec-2020

DROP TABLE IF EXISTS problem_comment;
CREATE TABLE problem_comment (
  ID int(6) NOT NULL AUTO_INCREMENT,
  ticket varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  admin_update varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  card_status varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  comment varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  date datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






# Dump of problem_list 
# Dump DATE : 05-Dec-2020

DROP TABLE IF EXISTS problem_list;
CREATE TABLE problem_list (
  ID int(5) NOT NULL AUTO_INCREMENT,
  ticket varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  department varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  company varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  user_key varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  se_id int(2) DEFAULT NULL,
  se_li_id int(2) DEFAULT NULL,
  se_other varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  card_status varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  date date DEFAULT NULL,
  date_update date DEFAULT '0000-00-00',
  admin_update varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  time_start time DEFAULT NULL,
  time_update time DEFAULT NULL,
  PRIMARY KEY (ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;






# Dump of service 
# Dump DATE : 05-Dec-2020

DROP TABLE IF EXISTS service;
CREATE TABLE service (
  se_id int(11) NOT NULL AUTO_INCREMENT,
  se_name varchar(200) NOT NULL,
  se_group varchar(100) DEFAULT NULL,
  se_status int(1) NOT NULL DEFAULT 1,
  data_time datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (se_id)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;



INSERT INTO service VALUES(1,"อุปกรณ์ (Hardware)","1",1,"2020-09-23 10:52:20");
INSERT INTO service VALUES(2,"โปรแกรม (Software)","1",1,"2020-09-23 10:52:23");
INSERT INTO service VALUES(3,"ระบบเครือข่าย (Network)","1",1,"2020-09-23 10:52:26");
INSERT INTO service VALUES(4,"สิทธิ์ใช้งานระบบ (Authorization)","1",1,"2020-09-23 10:52:27");
INSERT INTO service VALUES(5,"อื่นๆ (Other)","1",1,"2020-09-23 10:52:30");



# Dump of service_list 
# Dump DATE : 05-Dec-2020

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
INSERT INTO service_list VALUES(99,1,"อื่น ๆ ",1,"2020-05-15 15:52:27");
INSERT INTO service_list VALUES(100,2,"อื่น ๆ",1,"2020-05-15 15:52:27");
INSERT INTO service_list VALUES(101,3,"อื่น ๆ",1,"2020-05-15 15:52:27");
INSERT INTO service_list VALUES(102,4,"อื่น ๆ",1,"2020-05-15 15:52:27");
INSERT INTO service_list VALUES(103,5,"อื่น ๆ",1,"2020-05-15 15:52:27");
INSERT INTO service_list VALUES(109,1,"Keyboard, Mouse - ชำรุด, ค้าง, ขอเพิ่ม - เปลี่ยนใหม่",1,"2020-05-15 15:52:27");
INSERT INTO service_list VALUES(110,2,"ขอติดตั้งโปรแกรม, อัพเดตโปรแกรม, โปรแกรมค้าง ช้า",1,"2020-05-15 15:52:27");
INSERT INTO service_list VALUES(111,4,"ขอปลดล็อค Youtube, G-mail",1,"2020-05-15 15:52:27");



# Dump of system_info 
# Dump DATE : 05-Dec-2020

DROP TABLE IF EXISTS system_info;
CREATE TABLE system_info (
  site_key char(32) NOT NULL,
  site_logo varchar(256) NOT NULL,
  site_favicon varchar(256) NOT NULL,
  time_zone varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO system_info VALUES("8f411b77c389d5de467af8f2c0e91cda","img.png","img.png","Asia/Bangkok");



# Dump of user 
# Dump DATE : 05-Dec-2020

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
) ENGINE=MyISAM AUTO_INCREMENT=350 DEFAULT CHARSET=utf8;



INSERT INTO user VALUES(1,"67b8e985b1a5ebb806e6ee8044a35828","ก้องเกียรติ","บุญเส็ง","admin","b871360d7d0c3ab29cf9d4e66c7a2934","noimg.jpg",3,1,"admin@admin.com","2020-12-05 15:13:21");
INSERT INTO user VALUES(335,"1a0e088bf3c57dc36aea4647d52fbb04","Test","System","123456","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,0,"a@s","2020-12-05 15:23:55");
INSERT INTO user VALUES(334,"062f75c18952920165acbc35c6580bee","ทดสอบ","ทดสอบ","superadmin","b871360d7d0c3ab29cf9d4e66c7a2934","noimg.jpg",3,1,"a@b.com","2020-12-05 15:26:39");
INSERT INTO user VALUES(336,"3c08234c30a478f84be9e6442afb561f","ฟ้า","สดใส","456214","aa85ecbc3fbe0fd8ce80f6c189bbdf2f","noimg.jpg",1,0,"222@gmail.com","2020-12-05 15:13:53");
INSERT INTO user VALUES(337,"2b8d316643d0db8bced23a15f51ea041","ทดสอบ","1","user01","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,NULL,"2020-12-05 15:32:55");
INSERT INTO user VALUES(338,"b94267e93d4c394fdedc67b8b5317906","ทดสอบ2","2","user02","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,NULL,"2020-12-05 15:33:43");
INSERT INTO user VALUES(339,"28ce28aa13bbe6cebca62d02045b224a","ทดสอบ3","3","user03","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,NULL,"2020-12-05 15:34:18");
INSERT INTO user VALUES(340,"be76daf2b857bfd821ef6cc38b3185b5","admin01","admin01","admin01","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",2,1,NULL,"2020-12-05 15:38:30");
INSERT INTO user VALUES(341,"673a886cf6d84950fcf2b491467959a2","admin02","admin02","admin02","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",2,1,NULL,"2020-12-05 15:38:37");
INSERT INTO user VALUES(342,"f8b9b0205f6cd2dbac30c130c0cb83f5","ทดสอบ4","4","user04","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,NULL,"2020-12-05 15:35:17");
INSERT INTO user VALUES(343,"ef995bbef697d44aa8fdd2b67d7df6a5","ทดสอบ5","5","user05","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,NULL,"2020-12-05 15:35:50");
INSERT INTO user VALUES(344,"08912c53ff436ae36f0aceee2e63cde5","ทดสอบ6","6","user06","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,NULL,"2020-12-05 15:36:24");
INSERT INTO user VALUES(345,"16ec766e24cb283f615a745c79c07c91","ทดสอบ7","7","user07","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,NULL,"2020-12-05 15:37:01");
INSERT INTO user VALUES(346,"af66f1a681d48cb992585de8b48794ae","admin03","admin03","admin03","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",2,1,NULL,"2020-12-05 15:38:43");
INSERT INTO user VALUES(347,"25c6f4733bb40e25bb42041b38bf1902","ทดสอบแอดมิน1","01","superadmin01","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,NULL,"2020-12-05 15:39:25");
INSERT INTO user VALUES(348,"f21204e0b9cb8ebdd30de804971a0c36","ทดสอบแอดมิน2","02","superadmin02","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,NULL,"2020-12-05 15:40:09");
INSERT INTO user VALUES(349,"50b4b32f47ac165f4b686706dc9bf755","ทดสอบแอดมิน3","03","superadmin03","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",1,1,NULL,"2020-12-05 15:40:47");



# Dump of user_online 
# Dump DATE : 05-Dec-2020

DROP TABLE IF EXISTS user_online;
CREATE TABLE user_online (
  osession varchar(128) CHARACTER SET utf8 NOT NULL DEFAULT '',
  user_key varchar(32) CHARACTER SET utf8 NOT NULL,
  otime int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO user_online VALUES("95522vphtn7a7tbgki5envcgs4","85dc6d4bd6e7189330a9e2b7b39408c2",1566376833);



