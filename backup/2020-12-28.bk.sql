# Dump of access_list 
# Dump DATE : 28-Dec-2020

DROP TABLE IF EXISTS access_list;
CREATE TABLE access_list (
  access_key char(32) NOT NULL,
  access_name varchar(256) NOT NULL,
  access_detail text NOT NULL,
  access_class int(11) NOT NULL,
  access_status tinyint(1) NOT NULL,
  PRIMARY KEY (access_key)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO access_list VALUES("21adef826d326d4bae44eb0c9e19b8b1","แจ้งซ่อมฝ่ายสารสนเทศ","service",0,2);
INSERT INTO access_list VALUES("26f7e62109e2566eaec8b01fe8e3598d","รายการที่ยังไม่สมบูรณ์","card_create",0,2);
INSERT INTO access_list VALUES("295744c466c17b46170f88b5c1b9104d","รายการสินทรัพย์ IT","asset_it",0,2);
INSERT INTO access_list VALUES("acac0001f4c9f206256b9a2dfe433b42","รายการสินทรัพย์","asset",0,1);
INSERT INTO access_list VALUES("f1344bc0fb9c5594fa0e3d3f37a56957","พนักงาน","employee",0,1);



# Dump of access_user 
# Dump DATE : 28-Dec-2020

DROP TABLE IF EXISTS access_user;
CREATE TABLE access_user (
  access_key char(32) NOT NULL,
  user_key char(32) NOT NULL,
  access_status tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO access_user VALUES("f1344bc0fb9c5594fa0e3d3f37a56957","ce63f18f7cf0a712fd4a2f47bc9ae14c",1);
INSERT INTO access_user VALUES("acac0001f4c9f206256b9a2dfe433b42","ce63f18f7cf0a712fd4a2f47bc9ae14c",1);
INSERT INTO access_user VALUES("acac0001f4c9f206256b9a2dfe433b42","7f52e8801f2fb20a24fc648093460939",1);



# Dump of area_type 
# Dump DATE : 28-Dec-2020

DROP TABLE IF EXISTS area_type;
CREATE TABLE area_type (
  id int(11) NOT NULL AUTO_INCREMENT,
  area_type varchar(45) DEFAULT NULL COMMENT 'พื้นที่',
  area_status int(1) NOT NULL DEFAULT '1' COMMENT '1 use 0 del',
  PRIMARY KEY (id)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;



INSERT INTO area_type VALUES(1,"อาคาร Visionarium",1);
INSERT INTO area_type VALUES(2,"อาคาร Visionarium2",1);



# Dump of asset 
# Dump DATE : 28-Dec-2020

DROP TABLE IF EXISTS asset;
CREATE TABLE asset (
  as_key varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  as_id varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  as_pic varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  as_location varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  as_room varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  as_layout varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  as_layout_pic varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  as_brand varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  as_btu varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  as_type varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  as_price varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  as_date_get date DEFAULT NULL,
  as_use_time varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  as_status_use varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  as_date_start date DEFAULT NULL,
  as_date_end date DEFAULT NULL,
  date_insert datetime NOT NULL,
  insert_by varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  date_update datetime DEFAULT NULL,
  update_by varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  status int(2) NOT NULL DEFAULT '1' COMMENT '1 ใช้งาน 0 ลบ',
  PRIMARY KEY (as_key)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



INSERT INTO asset VALUES("3db2eecf5ce79470e859cf5f99680c3f","CE-2019-02-0002","3db2eecf5ce79470e859cf5f99680c3f-1608473426762.jpg","2","หญ้าเทียม","A446","3db2eecf5ce79470e859cf5f99680c3f-1608117368412@2x.jpg","3","12000","75fb34c890c66ac9de05d3cae0f356a3","20,000.00","2020-12-01","1","2aa10f27e6252ae28b9d11b62a5e1394","2020-12-01","2021-01-31","2020-12-27 05:54:29","ce63f18f7cf0a712fd4a2f47bc9ae14c","2020-12-27 23:22:45","ce63f18f7cf0a712fd4a2f47bc9ae14c",1);
INSERT INTO asset VALUES("6870c254de1b868839a705741a24a3bd","CE-2019-02-0001","6870c254de1b868839a705741a24a3bd-1608473426762.jpg","2","หญ้าเทียม","A446","6870c254de1b868839a705741a24a3bd-1608117368412@2x.jpg","2","12000","5e8a116870c1e8e1b6f2416ae7f3b98d","20,000.00","2020-12-01","1","ff5a5d594622a2010dfeef954f0688bd","2020-12-01","2020-12-31","2020-12-27 01:55:09","ce63f18f7cf0a712fd4a2f47bc9ae14c","2020-12-27 04:20:13","ce63f18f7cf0a712fd4a2f47bc9ae14c",1);
INSERT INTO asset VALUES("a402c7ca80622f281384238e862f0557","CE-2019-02-0004","a402c7ca80622f281384238e862f0557-1608473426762.jpg","1","หญ้าเทียม","A446","a402c7ca80622f281384238e862f0557-1608117368412@2x.jpg","1","12000","6b27fb3efd9b6a6a257ba94f2c34f6b5","20,000.00","2020-12-01","1","2aa10f27e6252ae28b9d11b62a5e1394","2020-12-02","2020-12-27","2020-12-27 06:23:00","ce63f18f7cf0a712fd4a2f47bc9ae14c","2020-12-28 01:36:36","ce63f18f7cf0a712fd4a2f47bc9ae14c",1);
INSERT INTO asset VALUES("a55e7e0da413356f6fb22d8567f42441","CE-2019-02-0003","a55e7e0da413356f6fb22d8567f42441-1608473426762.jpg","2","หญ้าเทียม","A446","a55e7e0da413356f6fb22d8567f42441-1608117368412@2x.jpg","1","12000","dc3197c5be3ad7bcd167a23b5bc81b11","20,000.00","2020-12-03","1","2aa10f27e6252ae28b9d11b62a5e1394","2020-12-03","2020-12-29","2020-12-27 06:01:53","ce63f18f7cf0a712fd4a2f47bc9ae14c","2020-12-28 01:28:07","ce63f18f7cf0a712fd4a2f47bc9ae14c",1);



# Dump of asset_history 
# Dump DATE : 28-Dec-2020

DROP TABLE IF EXISTS asset_history;
CREATE TABLE asset_history (
  as_ID int(10) NOT NULL AUTO_INCREMENT,
  as_key char(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  as_status char(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  as_detail mediumtext COLLATE utf8mb4_unicode_ci,
  price varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '0.00',
  user_key char(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  date_now datetime NOT NULL,
  PRIMARY KEY (as_ID),
  KEY as_key (as_key)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



INSERT INTO asset_history VALUES(1,"6870c254de1b868839a705741a24a3bd","ff5a5d594622a2010dfeef954f0688bd","a",NULL,"ce63f18f7cf0a712fd4a2f47bc9ae14c","2020-12-27 04:19:24");
INSERT INTO asset_history VALUES(2,"6870c254de1b868839a705741a24a3bd","ff5a5d594622a2010dfeef954f0688bd","s","0.00","ce63f18f7cf0a712fd4a2f47bc9ae14c","2020-12-27 04:20:03");
INSERT INTO asset_history VALUES(3,"6870c254de1b868839a705741a24a3bd","ff5a5d594622a2010dfeef954f0688bd","asdw","2,500.00","ce63f18f7cf0a712fd4a2f47bc9ae14c","2020-12-27 04:20:13");
INSERT INTO asset_history VALUES(4,"3db2eecf5ce79470e859cf5f99680c3f","ff5a5d594622a2010dfeef954f0688bd","ทดสอบ","5,000.00","ce63f18f7cf0a712fd4a2f47bc9ae14c","2020-12-27 23:22:17");
INSERT INTO asset_history VALUES(5,"3db2eecf5ce79470e859cf5f99680c3f","2aa10f27e6252ae28b9d11b62a5e1394","ซ่อมแล้ว","0.00","ce63f18f7cf0a712fd4a2f47bc9ae14c","2020-12-27 23:22:45");
INSERT INTO asset_history VALUES(6,"a402c7ca80622f281384238e862f0557","845c6b7cce6d61d6e812dfdef6d4ccc8","ฟฟฟ","2,500.00","ce63f18f7cf0a712fd4a2f47bc9ae14c","2020-12-28 00:30:49");



# Dump of asset_print 
# Dump DATE : 28-Dec-2020

DROP TABLE IF EXISTS asset_print;
CREATE TABLE asset_print (
  ID int(20) unsigned NOT NULL AUTO_INCREMENT,
  p_as_keyID varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Asset KeyID',
  p_user varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Key for user',
  date_time datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  p_status int(11) NOT NULL DEFAULT '1' COMMENT '1 selectprint 0 delete 2 successprint',
  p_status_add int(2) NOT NULL DEFAULT '1' COMMENT '1 selectprint 0 printsuccess',
  PRIMARY KEY (ID) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






# Dump of backup_logs 
# Dump DATE : 28-Dec-2020

DROP TABLE IF EXISTS backup_logs;
CREATE TABLE backup_logs (
  backup_key varchar(32) NOT NULL,
  backup_file varchar(256) NOT NULL,
  backup_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  user_key char(32) NOT NULL,
  PRIMARY KEY (backup_key)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO backup_logs VALUES("14c75cdc3536bfd2d71089bf73911248","2020-12-12.bk.sql","2020-12-12 13:31:08","ce63f18f7cf0a712fd4a2f47bc9ae14c");



# Dump of brand_type 
# Dump DATE : 28-Dec-2020

DROP TABLE IF EXISTS brand_type;
CREATE TABLE brand_type (
  id int(11) NOT NULL AUTO_INCREMENT,
  brand_type varchar(45) DEFAULT NULL COMMENT 'หมวดหมู่อุปกรณ์',
  brand_status int(1) NOT NULL DEFAULT '1' COMMENT '1 use 0 del',
  PRIMARY KEY (id)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;



INSERT INTO brand_type VALUES(1,"Panasonic",1);
INSERT INTO brand_type VALUES(2,"Yorks",1);
INSERT INTO brand_type VALUES(3,"ASC",1);



# Dump of card_info 
# Dump DATE : 28-Dec-2020

DROP TABLE IF EXISTS card_info;
CREATE TABLE card_info (
  card_key char(32) NOT NULL,
  card_code varchar(16) DEFAULT NULL,
  card_customer_name varchar(64) DEFAULT NULL,
  asset_code varchar(100) DEFAULT NULL,
  card_company varchar(100) DEFAULT NULL,
  card_customer_phone varchar(128) DEFAULT NULL,
  card_customer_email varchar(128) DEFAULT NULL,
  card_note text COMMENT 'ชื่อเครื่อง',
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
  p_ck_license int(2) DEFAULT NULL COMMENT 'Program License',
  p_license_name varchar(200) DEFAULT NULL COMMENT 'Program Name',
  p_license_key varchar(200) DEFAULT NULL COMMENT 'Program Key',
  card_done_aprox date NOT NULL,
  user_key varchar(32) DEFAULT NULL,
  user_update varchar(32) DEFAULT NULL,
  card_status varchar(32) DEFAULT NULL,
  card_insert date NOT NULL,
  card_delete int(2) NOT NULL DEFAULT '1' COMMENT '1 use 0 del',
  PRIMARY KEY (card_key)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO card_info VALUES("e9d6106884c1f658673e95af6cebf303","CGYG9X9L","ce63f18f7cf0a712fd4a2f47bc9ae14c","NTP-NB","1","123","a@b.com","NB001","1","DELL","D001","DSW225","1","2020-11-10","1 ปี",1,"Windows 10 Pro","FD55523-665455-5588",0,"Office 2013",NULL,"2020-12-12","ce63f18f7cf0a712fd4a2f47bc9ae14c","ce63f18f7cf0a712fd4a2f47bc9ae14c","2e34609794290a770cb0349119d78d21","2020-12-12",1);



# Dump of card_item 
# Dump DATE : 28-Dec-2020

DROP TABLE IF EXISTS card_item;
CREATE TABLE card_item (
  item_key char(32) NOT NULL,
  card_key varchar(32) NOT NULL,
  item_number int(11) NOT NULL,
  item_name varchar(128) NOT NULL,
  item_note text NOT NULL,
  item_price_aprox float NOT NULL,
  item_insert timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (item_key)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO card_item VALUES("247477236b08fb2ec66d1f0a091ce221","e9d6106884c1f658673e95af6cebf303",0,"VGA","Nvdia 4 GB",1,"2020-12-12 12:24:55");
INSERT INTO card_item VALUES("da5d0cc5e92fcc0a67dc14b5f80209d1","e9d6106884c1f658673e95af6cebf303",0,"RAM","Ram 8 GB",2,"2020-12-12 12:24:35");



# Dump of card_status 
# Dump DATE : 28-Dec-2020

DROP TABLE IF EXISTS card_status;
CREATE TABLE card_status (
  cstatus_key char(32) NOT NULL,
  card_key varchar(32) NOT NULL,
  card_status varchar(32) NOT NULL,
  card_status_note text NOT NULL,
  user_key varchar(32) NOT NULL,
  cstatus_insert timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (cstatus_key)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO card_status VALUES("8871ab8a9da25521a8388e7537d6628c","e9d6106884c1f658673e95af6cebf303","2e34609794290a770cb0349119d78d21","","ce63f18f7cf0a712fd4a2f47bc9ae14c","2020-12-12 12:25:35");



# Dump of card_type 
# Dump DATE : 28-Dec-2020

DROP TABLE IF EXISTS card_type;
CREATE TABLE card_type (
  ctype_key char(32) NOT NULL,
  ctype_name varchar(128) NOT NULL,
  ctype_color varchar(16) NOT NULL,
  ctype_status tinyint(1) NOT NULL DEFAULT '1',
  ctype_insert timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (ctype_key)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO card_type VALUES("5e8a116870c1e8e1b6f2416ae7f3b98d","แบบติดฝ้า","#dd3131",1,"2020-12-14 17:40:54");
INSERT INTO card_type VALUES("6b27fb3efd9b6a6a257ba94f2c34f6b5","แบบตั้ง","#d09d11",1,"2020-12-27 02:14:27");
INSERT INTO card_type VALUES("75fb34c890c66ac9de05d3cae0f356a3","แบบติดผนัง","#0ab3eb",1,"2020-12-14 17:39:00");
INSERT INTO card_type VALUES("dc3197c5be3ad7bcd167a23b5bc81b11","แบบแขวน","#cf8f20",1,"2020-12-16 16:45:31");



# Dump of company 
# Dump DATE : 28-Dec-2020

DROP TABLE IF EXISTS company;
CREATE TABLE company (
  id int(11) NOT NULL AUTO_INCREMENT,
  company_name varchar(255) DEFAULT NULL COMMENT 'ชื่อบริษัท',
  cp_status int(2) NOT NULL DEFAULT '1' COMMENT '1 ปกติ 0 ลบ',
  show_it int(1) NOT NULL DEFAULT '0' COMMENT '1 แสดง 0 ไม่แสดง',
  show_asset int(1) NOT NULL DEFAULT '0' COMMENT '1 แสดง 0 ไม่แสดง',
  PRIMARY KEY (id)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;



INSERT INTO company VALUES(1,"บริษัท ทดสอบ จำกัด",0,1,2);
INSERT INTO company VALUES(2,"บริษัท ทดสอบ2 จำกัด",1,0,1);



# Dump of department_name 
# Dump DATE : 28-Dec-2020

DROP TABLE IF EXISTS department_name;
CREATE TABLE department_name (
  id int(11) NOT NULL AUTO_INCREMENT,
  department_name varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ชื่อแผนก',
  department_status int(1) NOT NULL DEFAULT '1' COMMENT '1 use 0 del',
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



# Dump of employee 
# Dump DATE : 28-Dec-2020

DROP TABLE IF EXISTS employee;
CREATE TABLE employee (
  card_key char(32) NOT NULL,
  title_name int(2) DEFAULT NULL,
  name varchar(150) DEFAULT NULL,
  lastname varchar(255) DEFAULT NULL,
  user_position varchar(100) DEFAULT NULL COMMENT 'ตำแหน่ง',
  user_department varchar(100) DEFAULT NULL COMMENT 'แผนก',
  department_id int(11) NOT NULL COMMENT 'บริษัทอิงจาก company',
  em_status int(2) NOT NULL DEFAULT '1' COMMENT '1 ปกติ 0 ลบ',
  date_create datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (card_key)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



INSERT INTO employee VALUES("ce63f18f7cf0a712fd4a2f47bc9ae14c",1,"ผู้ดูแล","ระบบ","IT","45",1,1,"2020-12-11 11:52:57");
INSERT INTO employee VALUES("7f52e8801f2fb20a24fc648093460939",1,"ทดสอบ","ทดสอบ","IT","4",2,0,"2020-12-28 02:40:22");



# Dump of layout_type 
# Dump DATE : 28-Dec-2020

DROP TABLE IF EXISTS layout_type;
CREATE TABLE layout_type (
  id int(3) NOT NULL AUTO_INCREMENT,
  layout_name varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  layout_status int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (id),
  KEY layout_name (layout_name)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



INSERT INTO layout_type VALUES(1,"A66",1);
INSERT INTO layout_type VALUES(2,"A77",1);



# Dump of list 
# Dump DATE : 28-Dec-2020

DROP TABLE IF EXISTS list;
CREATE TABLE list (
  id int(3) unsigned NOT NULL AUTO_INCREMENT,
  cases varchar(64) NOT NULL,
  menu varchar(64) NOT NULL,
  pages varchar(128) NOT NULL,
  case_status tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (id)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;



INSERT INTO list VALUES(1,"setting","setting","settings/setting.php",1);
INSERT INTO list VALUES(2,"employee","employee","employee/index.php",1);
INSERT INTO list VALUES(50,"case_all_repair","asset","asset/view/case_all_repair.php",1);
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
INSERT INTO list VALUES(26,"setting_card_status","setting","settings/setting_card_status.php",1);
INSERT INTO list VALUES(29,"administrator_log","setting","administrator/administrator_log.php",1);
INSERT INTO list VALUES(33,"asset_history","asset","asset/asset_history.php",1);
INSERT INTO list VALUES(41,"view_info","setting","settings/view_info.php",1);
INSERT INTO list VALUES(42,"assetall","asset","asset/assetall.php",1);
INSERT INTO list VALUES(43,"printbarcode","asset","asset/printbarcode.php",1);
INSERT INTO list VALUES(44,"setting_services","setting","settings/setting_services.php",1);
INSERT INTO list VALUES(47,"asset","asset","asset/index.php",1);
INSERT INTO list VALUES(48,"setting_app","setting","settings/setting_app.php",1);



# Dump of logs 
# Dump DATE : 28-Dec-2020

DROP TABLE IF EXISTS logs;
CREATE TABLE logs (
  log_key varchar(16) NOT NULL,
  log_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  log_ipaddress varchar(32) NOT NULL,
  log_text varchar(256) NOT NULL,
  log_user varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



INSERT INTO logs VALUES("1c925d8983313f00","2020-12-12 11:45:19","::1","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("43233514fe096add","2020-12-13 23:57:11","::1","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("4a33e2e8ff3c8761","2020-12-14 00:08:17","::1","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("748f04864b8b14bc","2020-12-14 00:09:33","::1","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("05cfc65526a7e136","2020-12-14 17:02:41","::1","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("9c47aadcdf21fba9","2020-12-16 15:53:15","::1","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("33ff0e6417149890","2020-12-24 01:55:33","::1","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("af7651c5d0f4769e","2020-12-25 15:06:06","::1","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("8f064b3f3b08cbe4","2020-12-25 15:06:24","::1","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("b3f2a0c6ba1a1de5","2020-12-25 15:06:32","::1","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("f77324722924e044","2020-12-25 15:06:47","::1","superadmin ออกจากระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("c2f40b9c58a4a818","2020-12-25 15:06:56","::1","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");
INSERT INTO logs VALUES("53537ffd88f343f3","2020-12-27 22:48:17","::1","superadmin เข้าสู่ระบบ.","ce63f18f7cf0a712fd4a2f47bc9ae14c");



# Dump of members_prefix 
# Dump DATE : 28-Dec-2020

DROP TABLE IF EXISTS members_prefix;
CREATE TABLE members_prefix (
  prefix_code int(3) unsigned NOT NULL AUTO_INCREMENT,
  prefix_key varchar(32) NOT NULL,
  prefix_title varchar(64) NOT NULL,
  prefix_status tinyint(1) NOT NULL,
  prefix_insert timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
# Dump DATE : 28-Dec-2020

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



INSERT INTO menus VALUES("21adef826d326d4bae44eb0c9e19b8b1","fa-laptop-medical","แจ้งซ่อมฝ่ายสารสนเทศ","service","?p=service",2,5);
INSERT INTO menus VALUES("2309e0cdb2c541bf7cb8ef0dee7b7eba","fa-cogs","ตั้งค่า","setting","?p=setting",1,98);
INSERT INTO menus VALUES("26f7e62109e2566eaec8b01fe8e3598d","fa-unlink","รายการที่ยังไม่สมบูรณ์","card_create","?p=card_create",2,3);
INSERT INTO menus VALUES("295744c466c17b46170f88b5c1b9104d","fa-address-card","รายการสินทรัพย์ IT","asset_it","?p=asset_it",2,2);
INSERT INTO menus VALUES("a16043256ea5ca0ea86995e2b69ec238","fa-home","หน้าแรก","","index.php",1,1);
INSERT INTO menus VALUES("acac0001f4c9f206256b9a2dfe433b42","fa-folder-open","รายการสินทรัพย์","asset","?p=asset",1,2);
INSERT INTO menus VALUES("c6c8729b45d1fec563f8453c16ff03b8","fa-sign-out-alt","ออกจากระบบ","logout","../core/logout.core.php",1,99);
INSERT INTO menus VALUES("e6ebaceb2257ae23f931da8b67225897","fa-folder-open","Asset","asset_ngg	","?p=asset_ngg	",2,83);
INSERT INTO menus VALUES("f1344bc0fb9c5594fa0e3d3f37a56957","fa-users","พนักงาน","employee","?p=employee",1,3);



# Dump of os_system 
# Dump DATE : 28-Dec-2020

DROP TABLE IF EXISTS os_system;
CREATE TABLE os_system (
  id int(2) NOT NULL,
  os_name varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






# Dump of problem_comment 
# Dump DATE : 28-Dec-2020

DROP TABLE IF EXISTS problem_comment;
CREATE TABLE problem_comment (
  ID int(6) NOT NULL AUTO_INCREMENT,
  ticket varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  admin_update varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  card_status varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  comment varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  date datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (ID)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



INSERT INTO problem_comment VALUES(1,"20121201","ce63f18f7cf0a712fd4a2f47bc9ae14c","2e34609794290a770cb0349119d78d21",NULL,"2020-12-12 12:32:56");



# Dump of problem_list 
# Dump DATE : 28-Dec-2020

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;



INSERT INTO problem_list VALUES(1,"20121201","45","1","ce63f18f7cf0a712fd4a2f47bc9ae14c",1,1,"ทดสอบ ","2e34609794290a770cb0349119d78d21","2020-10-12","2020-12-12","ce63f18f7cf0a712fd4a2f47bc9ae14c","12:32:31","12:32:56");
INSERT INTO problem_list VALUES(2,"20121202","45","1","ce63f18f7cf0a712fd4a2f47bc9ae14c",5,103,"Test","2e34609794290a770cb0349119d78d21","2020-12-12","0000-00-00",NULL,"13:27:15",NULL);
INSERT INTO problem_list VALUES(3,"20121203","45","1","ce63f18f7cf0a712fd4a2f47bc9ae14c",1,109,"เพิ่ม",NULL,"2020-12-12","0000-00-00",NULL,"13:29:02",NULL);
INSERT INTO problem_list VALUES(4,"20121401","45","1","ce63f18f7cf0a712fd4a2f47bc9ae14c",1,99,"q",NULL,"2020-12-14","0000-00-00",NULL,"00:03:04",NULL);



# Dump of service 
# Dump DATE : 28-Dec-2020

DROP TABLE IF EXISTS service;
CREATE TABLE service (
  se_id int(11) NOT NULL AUTO_INCREMENT,
  se_name varchar(200) NOT NULL,
  se_group varchar(100) DEFAULT NULL,
  se_status int(1) NOT NULL DEFAULT '1',
  data_time datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (se_id)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;



INSERT INTO service VALUES(1,"อุปกรณ์ (Hardware)","1",1,"2020-09-23 10:52:20");
INSERT INTO service VALUES(2,"โปรแกรม (Software)","1",1,"2020-09-23 10:52:23");
INSERT INTO service VALUES(3,"ระบบเครือข่าย (Network)","1",1,"2020-09-23 10:52:26");
INSERT INTO service VALUES(4,"สิทธิ์ใช้งานระบบ (Authorization)","1",1,"2020-09-23 10:52:27");
INSERT INTO service VALUES(5,"อื่นๆ (Other)","1",1,"2020-09-23 10:52:30");



# Dump of service_list 
# Dump DATE : 28-Dec-2020

DROP TABLE IF EXISTS service_list;
CREATE TABLE service_list (
  se_li_id int(11) NOT NULL AUTO_INCREMENT,
  se_id int(11) NOT NULL,
  se_li_name varchar(200) NOT NULL,
  se_li_status int(1) NOT NULL DEFAULT '1',
  data_time datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
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



# Dump of status_type 
# Dump DATE : 28-Dec-2020

DROP TABLE IF EXISTS status_type;
CREATE TABLE status_type (
  stype_key char(32) NOT NULL,
  stype_name varchar(128) NOT NULL,
  stype_color varchar(16) NOT NULL,
  stype_status tinyint(1) NOT NULL DEFAULT '1',
  stype_insert timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (stype_key)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO status_type VALUES("2aa10f27e6252ae28b9d11b62a5e1394","ใช้งานปกติ","#20dd1d",1,"2020-12-16 16:55:24");
INSERT INTO status_type VALUES("845c6b7cce6d61d6e812dfdef6d4ccc8","รอจำหน่าย","#cbbf15",1,"2020-12-27 02:19:04");
INSERT INTO status_type VALUES("ff5a5d594622a2010dfeef954f0688bd","กำลังซ่อม","#ee1717",1,"2020-12-16 17:01:29");



# Dump of system_info 
# Dump DATE : 28-Dec-2020

DROP TABLE IF EXISTS system_info;
CREATE TABLE system_info (
  a int(2) NOT NULL AUTO_INCREMENT,
  site_key char(32) NOT NULL,
  site_logo varchar(256) NOT NULL,
  site_favicon varchar(256) NOT NULL,
  site_name varchar(255) DEFAULT NULL,
  site_color_form varchar(255) DEFAULT NULL,
  site_color_name varchar(255) DEFAULT NULL,
  time_zone varchar(128) NOT NULL,
  PRIMARY KEY (a)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;



INSERT INTO system_info VALUES(1,"8f411b77c389d5de467af8f2c0e91cda","91687.jpg","91687.jpg","Service System IT (SSIT)","#af971d","#39f613","Asia/Bangkok");



# Dump of user 
# Dump DATE : 28-Dec-2020

DROP TABLE IF EXISTS user;
CREATE TABLE user (
  id int(11) NOT NULL AUTO_INCREMENT,
  user_key char(32) NOT NULL,
  name varchar(64) NOT NULL,
  lastname varchar(64) DEFAULT NULL,
  username varchar(64) NOT NULL,
  password varchar(32) NOT NULL DEFAULT '81dc9bdb52d04dc20036dbd8313ed055',
  user_photo varchar(128) NOT NULL DEFAULT 'noimg.jpg',
  user_class tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=user,2=admin,3=super admin',
  user_status tinyint(1) NOT NULL DEFAULT '1',
  email varchar(128) DEFAULT NULL,
  data_time datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;



INSERT INTO user VALUES(1,"ce63f18f7cf0a712fd4a2f47bc9ae14c","ผู้ดูแล","ระบบ","superadmin","e10adc3949ba59abbe56e057f20f883e","noimg.jpg",3,1,NULL,"2020-12-11 11:53:43");
INSERT INTO user VALUES(2,"7f52e8801f2fb20a24fc648093460939","ทดสอบ","ทดสอบ","22874","81dc9bdb52d04dc20036dbd8313ed055","noimg.jpg",2,0,"a@b.com","2020-12-28 02:40:22");



# Dump of user_online 
# Dump DATE : 28-Dec-2020

DROP TABLE IF EXISTS user_online;
CREATE TABLE user_online (
  osession varchar(128) CHARACTER SET utf8 NOT NULL DEFAULT '',
  user_key varchar(32) CHARACTER SET utf8 NOT NULL,
  otime int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO user_online VALUES("95522vphtn7a7tbgki5envcgs4","85dc6d4bd6e7189330a9e2b7b39408c2",1566376833);



