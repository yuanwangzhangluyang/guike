#设置客户端连接服务器端编码
SET NAMES UTF8;
#丢弃数据库，如果存在的话
DROP DATABASE IF EXISTS guike;
#创建数据库，设置编码
CREATE DATABASE guike CHARSET=UTF8;
#进入创建的数据库
USE guike;


/**用户信息**/
CREATE TABLE guike_user(
  uid INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  user_name VARCHAR(32),#用户名，如王小明
  user_pwd VARCHAR(32),
  phone VARCHAR(16) NOT NULL UNIQUE,
  gender INT #性别 0-女 1-男
);

/**城市**/
CREATE TABLE guike_city(
  cid INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  cname VARCHAR(32) NOT null
);

/**区县**/
CREATE TABLE guike_district(
  did INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  dname VARCHAR(32) NOT null
);

/**街道**/
CREATE TABLE guike_street(
  streetId INT PRIMARY KEY,
  sname VARCHAR(50) NOT null
);

/**户型**/
CREATE TABLE guike_type(
  tid INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  tname VARCHAR(32) NOT null
);

/**房屋**/
CREATE TABLE guike_house(
  hid INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  img VARCHAR(128),            #图片路径
  title VARCHAR(50) NOT null,
  address VARCHAR(50) NOT null,
  price DECIMAL(8,2)
);

/**房间详情**/
CREATE TABLE guike_detail(
  did INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  title VARCHAR(50) NOT null,
  price DECIMAL(8,2),
  leixing VARCHAR(10),
  huxing VARCHAR(10),
  louceng VARCHAR(10),
  mianji VARCHAR(10),
  chaoxiang VARCHAR(10)
);

/**房间详情照片**/
CREATE TABLE guike_detail_pic(
  pid INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  img1 VARCHAR(128),
  img2 VARCHAR(128),
  img3 VARCHAR(128),
  img4 VARCHAR(128)
);

/**收藏**/
-- CREATE TABLE guike_cart(
--   cid INT PRIMARY KEY AUTO_INCREMENT,
--   product_id INT,	        #商品编号
-- );




/*******************/
/******数据导入******/
/*******************/
/**用户信息**/
INSERT INTO guike_user VALUES(1,'tom',md5('123456'),'13800000000',1);
INSERT INTO guike_user VALUES(2,'dingding',md5('111111'),'13811111111',0);
INSERT INTO guike_user VALUES(3,'yaya',md5('222222'),'13822222222',1);
INSERT INTO guike_user VALUES(4,'lingling',md5('333333'),'13833333333',0);
INSERT INTO guike_user VALUES(5,'dandan',md5('444444'),'13855555555',0);


/**城市信息**/
INSERT INTO guike_city VALUES(1,'北京');
INSERT INTO guike_city VALUES(2,'上海');
INSERT INTO guike_city VALUES(3,'广州');
INSERT INTO guike_city VALUES(4,'南京');
INSERT INTO guike_city VALUES(5,'郑州');

/**区县信息**/
INSERT INTO guike_district VALUES(1,'昌平区');
INSERT INTO guike_district VALUES(2,'长宁区');
INSERT INTO guike_district VALUES(3,'天河区');
INSERT INTO guike_district VALUES(4,'玄武区');
INSERT INTO guike_district VALUES(5,'金水区');

/**街道信息**/
INSERT INTO guike_street VALUES(1,'北京路');
INSERT INTO guike_street VALUES(2,'上海路');
INSERT INTO guike_street VALUES(3,'广州路');
INSERT INTO guike_street VALUES(4,'南京路');
INSERT INTO guike_street VALUES(5,'农业路街道');


/**户型信息**/
INSERT INTO guike_type VALUES(1,'标间');
INSERT INTO guike_type VALUES(2,'一室一厅');
INSERT INTO guike_type VALUES(3,'三室一厅');
INSERT INTO guike_type VALUES(4,'三室一厅');
INSERT INTO guike_type VALUES(5,'标间');


/**房屋信息**/
INSERT INTO guike_house VALUES(1,'gongyu/1.jpg','别树一阁','第八大街与京北路东400米路东',1800);
INSERT INTO guike_house VALUES(2,'gongyu/2.jpg','藏宝海湾','十里铺街南113号',2080);
INSERT INTO guike_house VALUES(3,'gongyu/3.jpg','东窗思雨','平安大道西大街南10号',1660);
INSERT INTO guike_house VALUES(4,'gongyu/4.jpg','伐木累','西湖大道城东路往南100米',2500);
INSERT INTO guike_house VALUES(5,'gongyu/5.jpg','旮沓小屋','东湖大道湖西路往南100米',1900);
INSERT INTO guike_house VALUES(6,'gongyu/6.jpg','及时雨','来宾路建设路156号',1880);
INSERT INTO guike_house VALUES(7,'gongyu/7.jpg','蓝色海岸','迎宾大道湖西路往南100米',1700);
INSERT INTO guike_house VALUES(8,'gongyu/8.jpg','莱茵小驻','桐柏路农业路往南100米',1500);
INSERT INTO guike_house VALUES(9,'gongyu/9.jpg','苏格拉底','文化路金水路99号',1580);
INSERT INTO guike_house VALUES(10,'gongyu/1.jpg','别树一阁','第八大街与京北路东400米路东',1800);
INSERT INTO guike_house VALUES(11,'gongyu/2.jpg','藏宝海湾','十里铺街南113号',2080);
INSERT INTO guike_house VALUES(12,'gongyu/3.jpg','东窗思雨','平安大道西大街南10号',1660);
INSERT INTO guike_house VALUES(13,'gongyu/4.jpg','伐木累','西湖大道城东路往南100米',2500);
INSERT INTO guike_house VALUES(14,'gongyu/5.jpg','旮沓小屋','东湖大道湖西路往南100米',1900);
INSERT INTO guike_house VALUES(15,'gongyu/6.jpg','及时雨','来宾路建设路156号',1880);
INSERT INTO guike_house VALUES(16,'gongyu/7.jpg','蓝色海岸','迎宾大道湖西路往南100米',1700);
INSERT INTO guike_house VALUES(17,'gongyu/8.jpg','莱茵小驻','桐柏路农业路往南100米',1500);
INSERT INTO guike_house VALUES(18,'gongyu/9.jpg','苏格拉底','文化路金水路99号',1580);

/**房间详情信息**/
INSERT INTO guike_detail VALUES(NULL,'别树一阁',1800,'整租','标间',5,50,'南');
INSERT INTO guike_detail VALUES(NULL,'藏宝海湾',2080,'整租','两室一厅',19,88,'南');
INSERT INTO guike_detail VALUES(NULL,'东窗思雨',1660,'整租','标间',7,50,'南');
INSERT INTO guike_detail VALUES(NULL,'伐木累',2500,'整租','两室一厅',16,100,'南');
INSERT INTO guike_detail VALUES(NULL,'旮沓小屋',1900,'整租','标间',9,60,'南');
INSERT INTO guike_detail VALUES(NULL,'及时雨',1880,'整租','标间',10,50,'南');
INSERT INTO guike_detail VALUES(NULL,'蓝色海岸',1700,'整租','标间',12,50,'南');
INSERT INTO guike_detail VALUES(NULL,'莱茵小驻',1500,'整租','标间',15,50,'南');
INSERT INTO guike_detail VALUES(NULL,'苏格拉底',1580,'整租','标间',20,50,'南');

/**房间详情照片**/
INSERT INTO guike_detail_pic VALUES(NULL,'detail/lunbo1/1.jpg','detail/lunbo1/2.jpg','detail/lunbo1/3.jpg','detail/lunbo1/4.jpg');
INSERT INTO guike_detail_pic VALUES(NULL,'detail/lunbo2/1.jpg','detail/lunbo2/2.jpg','detail/lunbo2/3.jpg','detail/lunbo2/4.jpg');
INSERT INTO guike_detail_pic VALUES(NULL,'detail/lunbo3/1.jpg','detail/lunbo3/2.jpg','detail/lunbo3/3.jpg','detail/lunbo3/4.jpg');
INSERT INTO guike_detail_pic VALUES(NULL,'detail/lunbo4/1.jpg','detail/lunbo4/2.jpg','detail/lunbo4/3.jpg','detail/lunbo4/4.jpg');
INSERT INTO guike_detail_pic VALUES(NULL,'detail/lunbo5/1.jpg','detail/lunbo5/2.jpg','detail/lunbo5/3.jpg','detail/lunbo5/4.jpg');

/**收藏条目
INSERT INTO guike_cart VALUES(1,000001,1);
INSERT INTO guike_cart VALUES(2,000002,2);
INSERT INTO guike_cart VALUES(3,000003,1);
INSERT INTO guike_cart VALUES(4,000004,5);
INSERT INTO guike_cart VALUES(5,000005,3);**/

/**CREATE TABLE `xz_laptop` (
  `lid` int(11) NOT NULL,
  `img_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `xz_laptop` (`lid`, `img_url`) VALUES
(1,m.png),**/
