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
  price DECIMAL(8,2),
  topic VARCHAR(50) NOT null,
  contents VARCHAR(50) NOT null
);


/**收藏条目**/
CREATE TABLE guike_cart(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,			#用户编号
  product_id INT,	        #商品编号
  count INT			#购买数量
);




/*******************/
/******数据导入******/
/*******************/
/**用户信息**/
INSERT INTO guike_user VALUES(1,'tom','123456','13800000000',1);
INSERT INTO guike_user VALUES(2,'dingding','111111','13811111111',0);
INSERT INTO guike_user VALUES(3,'yaya','222222','13822222222',1);
INSERT INTO guike_user VALUES(4,'lingling','333333','13833333333',0);
INSERT INTO guike_user VALUES(5,'dandan','444444','13855555555',0);


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


/**房屋全部信息**/
INSERT INTO guike_house VALUES(1,800,'舒适单间','家电齐全，拎包入住');
INSERT INTO guike_house VALUES(2,1080,'精装单间','家电齐全，拎包入住');
INSERT INTO guike_house VALUES(3,2000,'舒适两室','家电齐全，拎包入住');
INSERT INTO guike_house VALUES(4,980,'带阳台','家电齐全，拎包入住');
INSERT INTO guike_house VALUES(5,1580,'精装一室','家电齐全，拎包入住');



/**收藏条目**/
INSERT INTO guike_cart VALUES(1,000001,123456,1);
INSERT INTO guike_cart VALUES(2,000002,789456,2);
INSERT INTO guike_cart VALUES(3,000003,234567,1);
INSERT INTO guike_cart VALUES(4,000004,456852,5);
INSERT INTO guike_cart VALUES(5,000005,321564,3);