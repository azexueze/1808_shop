-- MySQL dump 10.13  Distrib 5.5.53, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: 1808_shop
-- ------------------------------------------------------
-- Server version	5.5.53

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_sn` char(40) NOT NULL COMMENT '订单编码',
  `u_id` int(11) NOT NULL,
  `order_amount` decimal(10,2) NOT NULL COMMENT '订单总额',
  `order_pay_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1线上支付2货到付款',
  `pay_status` tinyint(4) NOT NULL COMMENT '支付状态 1未支付2已支付',
  `pay_way` tinyint(4) NOT NULL COMMENT '支付方式1余额支付2余额宝3货到付款',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '支付状态1未支付2已支付3已确认4备货中5发货中6已发货7订单完成',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,'201902280606406',1,3000.00,2,1,1,1);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_admin`
--

DROP TABLE IF EXISTS `shop_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_admin` (
  `admin_id` tinyint(8) unsigned NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(30) NOT NULL COMMENT '管理员名称',
  `admin_pwd` char(32) NOT NULL COMMENT '管理员密码',
  `admin_tel` bigint(11) NOT NULL,
  `admin_email` varchar(60) NOT NULL,
  `add_time` int(10) NOT NULL,
  PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_admin`
--

LOCK TABLES `shop_admin` WRITE;
/*!40000 ALTER TABLE `shop_admin` DISABLE KEYS */;
INSERT INTO `shop_admin` VALUES (1,'阿泽','5432',18765432135,'987654321@qq.com',1543974564),(3,'泽','54321',10987654321,'87654321@qq.com',1544014044),(4,'啊王','12345',19876543214,'12345679@qq.com',1544014093),(5,'我阿田','543211',19876543234,'98765432@qq.com',1544055562),(8,'王浩','65432',19876543256,'987652346@qq.com',1544075705),(15,'王家河','76543',15679350475,'98765432@qq.com',1544165083),(18,'我想回家','34567',19764878393,'45678345@qq.com',1544248874),(19,'你想回家就','56789',10846753987,'2793874885@qq.com',1544248942),(23,'嗯嗯f','23456',18736498372,'2893784995@qq.com',1544533536),(24,'阿lo','123456',12345678905,'3987584994@qq.com',1544697380);
/*!40000 ALTER TABLE `shop_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_attribute`
--

DROP TABLE IF EXISTS `shop_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_attribute` (
  `attr_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attr_name` varchar(60) NOT NULL DEFAULT '',
  `attr_input_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `attr_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `attr_values` text NOT NULL,
  `attr_index` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`attr_id`) USING BTREE,
  KEY `cat_id` (`type_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=219 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_attribute`
--

LOCK TABLES `shop_attribute` WRITE;
/*!40000 ALTER TABLE `shop_attribute` DISABLE KEYS */;
INSERT INTO `shop_attribute` VALUES (1,1,'作者',0,0,'',0,0),(2,1,'出版社',0,0,'',0,0),(3,1,'图书书号/ISBN',0,0,'',0,0),(4,1,'出版日期',0,0,'',0,0),(5,1,'开本',0,0,'',0,0),(6,1,'图书页数',0,0,'',0,0),(7,1,'图书装订',1,0,'平装\r\n黑白',0,0),(8,1,'图书规格',0,0,'',0,0),(9,1,'版次',0,0,'',0,0),(10,1,'印张',0,0,'',0,0),(13,2,'中文片名',0,0,'',0,0),(14,2,'英文片名',0,0,'',0,0),(15,2,'商品别名',0,0,'',0,0),(16,2,'介质/格式',1,0,'HDCD\r\nDTS\r\nDVD\r\nDVD9\r\nVCD\r\nCD\r\nTAPE\r\nLP',0,0),(17,2,'片装数',0,0,'',0,0),(18,2,'国家地区',0,0,'',0,0),(19,2,'语种',1,0,'中文\r\n英文\r\n法文\r\n西班牙文',0,0),(20,2,'导演/指挥',0,0,'',0,0),(21,2,'主唱',0,0,'',0,0),(22,2,'所属类别',1,0,'古典\r\n流行\r\n摇滚\r\n乡村\r\n民谣\r\n爵士\r\n蓝调\r\n电子\r\n舞曲\r\n国乐\r\n民族\r\n怀旧\r\n经典\r\n人声\r\n合唱\r\n发烧\r\n试音\r\n儿童\r\n胎教\r\n轻音乐\r\n世界音乐\r\n庆典音乐\r\n影视音乐\r\n新世纪音乐\r\n大自然音乐',0,0),(23,2,'长度',0,0,'',0,0),(24,2,'歌词',1,0,'有\r\n无',0,0),(25,2,'碟片代码',0,0,'',0,0),(26,2,'ISRC码',0,0,'',0,0),(27,2,'发行公司',0,0,'',0,0),(28,2,'出版',0,0,'',0,0),(29,2,'出版号',0,0,'',0,0),(30,2,'引进号',0,0,'',0,0),(31,2,'版权号',0,0,'',0,0),(32,3,'中文片名',0,0,'',0,0),(33,3,'英文片名',0,0,'',0,0),(34,3,'商品别名',0,0,'',0,0),(35,3,'介质/格式',1,0,'HDCD\r\nDTS\r\nDVD\r\nDVD9\r\nVCD',0,0),(36,3,'碟片类型',1,0,'单面\r\n双层',0,0),(37,3,'片装数',0,0,'',0,0),(38,3,'国家地区',0,0,'',0,0),(39,3,'语种/配音',1,0,'中文\r\n英文\r\n法文\r\n西班牙文',0,0),(40,3,'字幕',0,0,'',0,0),(41,3,'色彩',0,0,'',0,0),(42,3,'中文字幕',1,0,'有\r\n无',0,0),(43,3,'导演',0,0,'',0,0),(44,3,'表演者',0,0,'',0,0),(45,3,'所属类别',1,0,'爱情\r\n偶像\r\n生活\r\n社会\r\n科幻\r\n神话\r\n武侠\r\n动作\r\n惊险\r\n恐怖\r\n传奇\r\n人物\r\n侦探\r\n警匪\r\n历史\r\n军事\r\n戏剧\r\n舞台\r\n经典\r\n名著\r\n喜剧\r\n情景\r\n动漫\r\n卡通\r\n儿童\r\n伦理激情',0,0),(46,3,'年份',0,0,'',0,0),(47,3,'音频格式',0,0,'',0,0),(48,3,'区码',0,0,'',0,0),(49,3,'碟片代码',0,0,'',0,0),(50,3,'ISRC码',0,0,'',0,0),(51,3,'发行公司',0,0,'',0,0),(52,3,'出版 ',0,0,'',0,0),(53,3,'出版号',0,0,'',0,0),(54,3,'引进号',0,0,'',0,0),(55,3,'版权号',0,0,'',0,0),(56,4,'网络制式',0,0,'',0,0),(57,4,'支持频率/网络频率',0,0,'',0,0),(58,4,'尺寸体积',1,0,'   ',0,0),(59,4,'外观样式/手机类型',1,0,'翻盖\r\n滑盖\r\n直板\r\n折叠\r\n手写',0,0),(60,4,'主屏参数/内屏参数',0,0,'',0,0),(61,4,'副屏参数/外屏参数',0,0,'',0,0),(62,4,'清晰度',0,0,'',0,0),(63,4,'色数/灰度',1,0,'   ',0,0),(64,4,'长度',0,0,'',0,0),(65,4,'宽度',0,0,'',0,0),(66,4,'厚度',0,0,'',0,0),(67,4,'屏幕材质',0,0,'',0,0),(68,4,'内存容量',0,0,'',0,0),(69,4,'操作系统',0,0,'',0,0),(70,4,'通话时间',0,0,'',0,0),(71,4,'待机时间',0,0,'',0,0),(72,4,'标准配置',0,0,'',0,0),(73,4,'WAP上网',0,0,'',0,0),(74,4,'数据业务',0,0,'',0,0),(75,4,'天线位置',1,0,'内置\r\n外置',0,0),(76,4,'随机配件',0,0,'',0,0),(77,4,'铃声',0,0,'',0,0),(78,4,'摄像头',0,0,'',0,0),(79,4,'彩信/彩e',1,0,'支持\r\n不支持',0,0),(80,4,'红外/蓝牙',0,0,'',0,0),(81,4,'价格等级',1,0,'高价机\r\n中价机\r\n低价机',0,0),(82,5,'型号',0,0,'',0,0),(83,5,'详细规格',0,0,'',0,0),(84,5,'笔记本尺寸',0,0,'',0,0),(85,5,'处理器类型',0,0,'',0,0),(86,5,'处理器最高主频',0,0,'',0,0),(87,5,'二级缓存',0,0,'',0,0),(88,5,'系统总线',0,0,'',0,0),(89,5,'主板芯片组',0,0,'',0,0),(90,5,'内存容量',0,0,'',0,0),(91,5,'内存类型',0,0,'',0,0),(92,5,'硬盘',0,0,'',0,0),(93,5,'屏幕尺寸',0,0,'',0,0),(94,5,'显示芯片',0,0,'',0,0),(95,5,'标称频率',0,0,'',0,0),(96,5,'显卡显存',0,0,'',0,0),(97,5,'显卡类型',0,0,'',0,0),(98,5,'光驱类型',0,0,'',0,0),(99,5,'电池容量',0,0,'',0,0),(100,5,'其他配置',0,0,'',0,0),(101,6,'类型',0,0,'',0,0),(102,6,'最大像素/总像素  ',0,0,'',0,0),(103,6,'有效像素',1,0,'  ',0,0),(104,6,'光学变焦倍数',0,0,'',0,0),(105,6,'数字变焦倍数',0,0,'',0,0),(106,6,'操作模式',0,0,'',0,0),(107,6,'显示屏类型',0,0,'',0,0),(108,6,'显示屏尺寸',0,0,'',0,0),(109,6,'感光器件',0,0,'',0,0),(110,6,'感光器件尺寸',0,0,'',0,0),(111,6,'最高分辨率',0,0,'',0,0),(112,6,'图像分辨率',0,0,'',0,0),(113,6,'传感器类型',0,0,'',0,0),(114,6,'传感器尺寸',0,0,'',0,0),(115,6,'镜头',0,0,'',0,0),(116,6,'光圈',0,0,'',0,0),(117,6,'焦距',0,0,'',0,0),(118,6,'旋转液晶屏',1,0,'支持\r\n不支持',0,0),(119,6,'存储介质',0,0,'',0,0),(120,6,'存储卡',1,0,'  记录媒体\r\n存储卡容量',0,0),(121,6,'影像格式',1,0,'    静像\r\n动画',0,0),(122,6,'曝光控制',0,0,'',0,0),(123,6,'曝光模式',0,0,'',0,0),(124,6,'曝光补偿',0,0,'',0,0),(125,6,'白平衡',0,0,'',0,0),(126,6,'连拍',0,0,'',0,0),(127,6,'快门速度',0,0,'',0,0),(128,6,'闪光灯',1,0,'内置\r\n外置',0,0),(129,6,'拍摄范围',1,0,'  ',0,0),(130,6,'自拍定时器',0,0,'',0,0),(131,6,'ISO感光度',0,0,'',0,0),(132,6,'测光模式',0,0,'',0,0),(133,6,'场景模式',0,0,'',0,0),(134,6,'短片拍摄',0,0,'',0,0),(135,6,'外接接口',0,0,'',0,0),(136,6,'电源',0,0,'',0,0),(137,6,'电池使用时间',0,0,'',0,0),(138,6,'外形尺寸',0,0,'',0,0),(139,6,'标配软件',0,0,'',0,0),(140,6,'标准配件',0,0,'',0,0),(141,6,'兼容操作系统',0,0,'',0,0),(142,7,'编号',0,0,'',0,0),(143,7,'类型',0,0,'',0,0),(144,7,'外型尺寸',0,0,'',0,0),(145,7,'最大像素数',0,0,'',0,0),(146,7,'光学变焦倍数',0,0,'',0,0),(147,7,'数字变焦倍数',0,0,'',0,0),(148,7,'显示屏尺寸及类型',0,0,'',0,0),(149,7,'感光器件',0,0,'',0,0),(150,7,'感光器件尺寸',0,0,'',0,0),(151,7,'感光器件数量',0,0,'',0,0),(152,7,'像素范围',0,0,'',0,0),(153,7,'传感器数量',0,0,'',0,0),(154,7,'传感器尺寸',0,0,'',0,0),(155,7,'水平清晰度',0,0,'',0,0),(156,7,'取景器',0,0,'',0,0),(157,7,'数码效果',0,0,'',0,0),(158,7,'镜头性能',0,0,'',0,0),(159,7,'对焦方式',0,0,'',0,0),(160,7,'曝光控制',0,0,'',0,0),(161,7,'其他接口',0,0,'',0,0),(162,7,'随机存储',0,0,'',0,0),(163,7,'电池类型',0,0,'',0,0),(164,7,'电池供电时间',0,0,'',0,0),(165,8,'产地',0,0,'',0,0),(166,8,'产品规格/容量',0,0,'',0,0),(167,8,'主要原料',0,0,'',0,0),(168,8,'所属类别',1,0,'彩妆\r\n化妆工具\r\n护肤品\r\n香水',0,0),(169,8,'使用部位',0,0,'',0,0),(170,8,'适合肤质',1,0,'油性\r\n中性\r\n干性',0,0),(171,8,'适用人群',1,0,'女性\r\n男性',0,0),(172,9,'上市日期',1,0,'2008年01月\r\n2008年02月\r\n2008年03月\r\n2008年04月\r\n2008年05月\r\n2008年06月\r\n2008年07月\r\n2008年08月\r\n2008年09月\r\n2008年10月\r\n2008年11月\r\n2008年12月\r\n2007年01月\r\n2007年02月\r\n2007年03月\r\n2007年04月\r\n2007年05月\r\n2007年06月\r\n2007年07月\r\n2007年08月\r\n2007年09月\r\n2007年10月\r\n2007年11月\r\n2007年12月',1,0),(173,9,'手机制式',1,0,'GSM,850,900,1800,1900\r\nGSM,900,1800,1900,2100\r\nCDMA\r\n双模（GSM,900,1800,CDMA 1X）\r\n3G(GSM,900,1800,1900,TD-SCDMA )',1,1),(174,9,'理论通话时间',0,0,'',0,2),(175,9,'理论待机时间',0,0,'',0,3),(176,9,'铃声',0,0,'',0,4),(177,9,'铃声格式',0,0,'',0,5),(178,9,'外观样式',1,0,'翻盖\r\n滑盖\r\n直板\r\n折叠',1,6),(179,9,'中文短消息',0,0,'',0,7),(180,9,'存储卡格式',0,0,'',0,0),(181,9,'内存容量',0,0,'',2,0),(182,9,'操作系统',0,0,'',0,0),(183,9,'K-JAVA',0,0,'',0,0),(184,9,'尺寸体积',0,0,'',0,0),(185,9,'颜色',1,1,'黑色\r\n白色\r\n蓝色\r\n金色\r\n粉色\r\n银色\r\n灰色\r\n深李色\r\n黑红色\r\n黑蓝色\r\n白紫色',1,0),(186,9,'屏幕颜色',1,0,'1600万\r\n262144万',1,0),(187,9,'屏幕材质',1,0,'TFT',0,0),(188,9,'屏幕分辨率',1,0,'320×240 像素\r\n240×400 像素\r\n240×320 像素\r\n176x220 像素',1,0),(189,9,'屏幕大小',0,0,'',0,0),(190,9,'中文输入法',0,0,'',0,0),(191,9,'情景模式',0,0,'',0,0),(192,9,'网络链接',0,0,'',0,0),(193,9,'蓝牙接口',0,0,'',0,0),(194,9,'数据线接口',0,0,'',0,0),(195,9,'电子邮件',0,0,'',0,0),(196,9,'闹钟',0,0,'',0,35),(197,9,'办公功能',0,0,'',0,0),(198,9,'数码相机',0,0,'',1,0),(199,9,'像素',0,0,'',0,0),(200,9,'传感器',0,0,'',0,0),(201,9,'变焦模式',0,0,'',0,0),(202,9,'视频拍摄',0,0,'',0,0),(203,9,'MP3播放器',0,0,'',0,0),(204,9,'视频播放',0,0,'',0,0),(205,9,'CPU频率',0,0,'',0,0),(206,9,'收音机',0,0,'',0,0),(207,9,'耳机接口',0,0,'',0,0),(208,9,'闪光灯',0,0,'',0,0),(209,9,'浏览器',0,0,'',0,0),(210,9,'配件',1,2,'线控耳机\r\n蓝牙耳机\r\n数据线',0,0),(211,4,'颜色',1,1,'白色\r\n金色\r\n黑色',0,0),(212,4,'内存',1,1,'64G\r\n128G\r\n256G',0,0),(215,1,'颜色',1,1,'白色\r\n黑色',0,0),(216,1,'尺寸',1,1,'32\r\n55\r\n60',0,0),(218,4,'网络配置',0,0,'',0,0);
/*!40000 ALTER TABLE `shop_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_brand`
--

DROP TABLE IF EXISTS `shop_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_brand` (
  `brand_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(60) NOT NULL DEFAULT '',
  `brand_logo` varchar(80) NOT NULL DEFAULT '',
  `brand_desc` text NOT NULL,
  `site_url` varchar(255) NOT NULL DEFAULT '',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`brand_id`) USING BTREE,
  KEY `is_show` (`is_show`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_brand`
--

LOCK TABLES `shop_brand` WRITE;
/*!40000 ALTER TABLE `shop_brand` DISABLE KEYS */;
INSERT INTO `shop_brand` VALUES (4,'飞利浦','1240803247838195732.gif','官方咨询电话：4008800008\n售后网点：http://www.philips.com.cn/service/mustservice/index.page ','http://www.philips.com.cn ',50,1),(5,'夏新','1240803352280856940.gif','官方咨询电话：4008875777\n售后网点：http://www.amobile.com.cn/service_fwyzc.asp ','http://www.amobile.com.cn',50,0),(16,'小米4','20181213\\79c783b26282e004f61751ee1fca5cde.jpg','12345678901','http://www.mi.com',50,1),(17,'苹果8p','20181212\\3750428d138b7b5f5f76e40da483572f.jpg','12345678905','http://www.apple.com',50,1),(21,'华为','20181219\\96fb852984eeb7ce1df4460222405b58.jpg','947585644','http://www.huawei.com',255,1),(22,'小米','20181221\\939d0d823921d5958c670d2cd275a463.jpg','34567890','http://www.xiaomi.com',34,1);
/*!40000 ALTER TABLE `shop_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_cart`
--

DROP TABLE IF EXISTS `shop_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_cart` (
  `cart_id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `goods_id` int(10) DEFAULT NULL,
  `goods_name` varchar(100) DEFAULT NULL,
  `goods_thumb` varchar(200) DEFAULT NULL,
  `car_number` int(10) DEFAULT NULL,
  `shop_price` decimal(10,0) DEFAULT NULL,
  `add_time` int(10) DEFAULT NULL,
  `uptime` int(10) DEFAULT NULL,
  `attr_value` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_cart`
--

LOCK TABLES `shop_cart` WRITE;
/*!40000 ALTER TABLE `shop_cart` DISABLE KEYS */;
INSERT INTO `shop_cart` VALUES (1,3,207,'oppo 30','20190114\\8b03539315cc2cf8b7bdbc1ad7f51e9d_sl.jpg',1,3000,1547645483,1548137966,'654,657'),(2,3,207,'oppo 30','20190114\\8b03539315cc2cf8b7bdbc1ad7f51e9d_sl.jpg',4,3100,1547645486,1548503686,'655,657'),(3,3,207,'oppo 30','20190114\\8b03539315cc2cf8b7bdbc1ad7f51e9d_sl.jpg',1,3300,1547645489,1547909351,'656,657'),(4,3,206,'小米70','20190114\\4d2bae7fb790a539285dcafa96e1a5d6_sl.jpg',1,3010,1547646565,1547821859,'643,646'),(5,3,206,'小米70','20190114\\4d2bae7fb790a539285dcafa96e1a5d6_sl.jpg',1,3310,1547646568,1547821859,'645,646'),(6,3,206,'小米70','20190114\\4d2bae7fb790a539285dcafa96e1a5d6_sl.jpg',1,3410,1547646572,1547821859,'645,647'),(7,3,86,'哈苏相机','20181221\\ba9764144d54d6c59c8bc4b14e9b249e.jpg',1,4999,1547647157,1547647176,''),(8,3,85,'尼康相机','20181221\\702b04d435e02e693d710ee5ade54935.jpg',1,4999,1547647164,1547821933,''),(9,3,4,'诺基亚N85原装充电器','images/200905/thumb_img/4_thumb_G_1241422402467.jpg',2,58,1548157474,1548157475,''),(10,7,84,'小米3','20181221\\e4c225d2bb09a73fb1fb9169669323ad.jpg',2,3999,1549423207,1549423212,''),(11,3,207,'oppo 30','20190114\\8b03539315cc2cf8b7bdbc1ad7f51e9d_sl.jpg',2,3600,1549504473,1549504551,'656,659'),(12,7,207,'oppo 30','20190114\\8b03539315cc2cf8b7bdbc1ad7f51e9d_sl.jpg',1,3300,1550199403,1550199403,'656,657');
/*!40000 ALTER TABLE `shop_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_category`
--

DROP TABLE IF EXISTS `shop_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_category` (
  `cate_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(30) NOT NULL,
  `parent_id` smallint(6) NOT NULL DEFAULT '0',
  `is_show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1: 展示 0：不展示',
  `keywords` varchar(150) DEFAULT NULL,
  `desc` varchar(200) DEFAULT NULL,
  `add_time` int(11) NOT NULL,
  `despath` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`cate_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_category`
--

LOCK TABLES `shop_category` WRITE;
/*!40000 ALTER TABLE `shop_category` DISABLE KEYS */;
INSERT INTO `shop_category` VALUES (1,'电器',0,1,'家电','',1544523192,'0'),(5,'空调',1,2,'空调','',1544523261,'0_1'),(8,'格力空调',5,2,'格力',NULL,1544523383,'0_1_5'),(28,'海尔空调',5,2,'海尔',NULL,1544523835,'0_1_5'),(45,'数码',0,1,'数码',NULL,1544524193,'0'),(48,'乐视电视',57,1,'乐视',NULL,1544523920,'0_1_57'),(55,'哈苏相机',65,2,'哈苏',NULL,1544524531,'0_45_65'),(56,'小天鹅空调',5,2,'小天鹅','我就是空调下面的',1544523443,'0_1_5'),(57,'电视',1,2,'电视',NULL,1544523886,'0_1'),(60,'长虹电视',57,2,'长虹',NULL,1544523981,'0_1_57'),(62,'手机',45,1,'手机',NULL,1544524226,'0_45'),(63,'小米',62,1,'小米','',1544524264,'0_45_62'),(65,'照相机',45,2,'相机',NULL,1544524341,'0_45'),(66,'华为手机',62,1,'华为',NULL,1544524299,'0_45_62'),(70,'尼康相机',65,1,'尼康',NULL,1544524499,'0_45_65'),(86,'小米4',63,2,'小米','我就是小米下面的',1544582943,'0_45_62_63'),(106,'冰箱',1,1,'冰箱','',1545305987,NULL),(107,'格力冰箱',106,1,'冰箱','',1545306295,NULL),(108,'厨卫小电',1,1,'厨卫','',1545387695,NULL);
/*!40000 ALTER TABLE `shop_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_cg`
--

DROP TABLE IF EXISTS `shop_cg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_cg` (
  `goods_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `click_count` int(10) unsigned NOT NULL DEFAULT '0',
  `brand_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_number` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `market_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `shop_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `promote_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `promote_start_date` int(11) unsigned NOT NULL DEFAULT '0',
  `promote_end_date` int(11) unsigned NOT NULL DEFAULT '0',
  `warn_number` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `goods_thumb` varchar(255) NOT NULL DEFAULT '',
  `goods_img` varchar(255) NOT NULL DEFAULT '',
  `original_img` varchar(255) NOT NULL DEFAULT '',
  `is_on_sale` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_best` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_new` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_promote` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `type_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seller_note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`goods_id`) USING BTREE,
  KEY `goods_sn` (`goods_sn`) USING BTREE,
  KEY `cat_id` (`cat_id`) USING BTREE,
  KEY `brand_id` (`brand_id`) USING BTREE,
  KEY `promote_end_date` (`promote_end_date`) USING BTREE,
  KEY `promote_start_date` (`promote_start_date`) USING BTREE,
  KEY `goods_number` (`goods_number`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_cg`
--

LOCK TABLES `shop_cg` WRITE;
/*!40000 ALTER TABLE `shop_cg` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_cg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_collection`
--

DROP TABLE IF EXISTS `shop_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_collection` (
  `c_id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) DEFAULT NULL,
  `goods_id` int(10) DEFAULT NULL,
  `goods_name` varchar(100) DEFAULT NULL,
  `shop_price` decimal(10,0) DEFAULT NULL,
  `goods_thumb` varchar(150) DEFAULT NULL,
  `attr_value` varchar(100) DEFAULT NULL,
  `add_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_collection`
--

LOCK TABLES `shop_collection` WRITE;
/*!40000 ALTER TABLE `shop_collection` DISABLE KEYS */;
INSERT INTO `shop_collection` VALUES (1,3,84,'小米3',3999,'20181221\\e4c225d2bb09a73fb1fb9169669323ad.jpg','',1547563136),(2,3,207,'oppo 30',3300,'20190114\\8b03539315cc2cf8b7bdbc1ad7f51e9d_sl.jpg','656,657',1547563145),(3,3,207,'oppo 30',3400,'20190114\\8b03539315cc2cf8b7bdbc1ad7f51e9d_sl.jpg','656,658',1547603055),(4,3,86,'哈苏相机',4999,'20181221\\ba9764144d54d6c59c8bc4b14e9b249e.jpg','',1548138049);
/*!40000 ALTER TABLE `shop_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_goods`
--

DROP TABLE IF EXISTS `shop_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `click_count` int(10) unsigned NOT NULL DEFAULT '0',
  `brand_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_number` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `market_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `shop_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `promote_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `promote_start_date` int(11) unsigned NOT NULL DEFAULT '0',
  `promote_end_date` int(11) unsigned NOT NULL DEFAULT '0',
  `warn_number` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `goods_thumb` varchar(255) NOT NULL DEFAULT '',
  `goods_img` varchar(255) NOT NULL DEFAULT '',
  `original_img` varchar(255) NOT NULL DEFAULT '',
  `is_on_sale` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_best` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_new` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_promote` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `type_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seller_note` varchar(255) NOT NULL DEFAULT '',
  `is_tell` int(2) DEFAULT NULL,
  `is_love` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_id`) USING BTREE,
  KEY `goods_sn` (`goods_sn`) USING BTREE,
  KEY `cat_id` (`cat_id`) USING BTREE,
  KEY `brand_id` (`brand_id`) USING BTREE,
  KEY `promote_end_date` (`promote_end_date`) USING BTREE,
  KEY `promote_start_date` (`promote_start_date`) USING BTREE,
  KEY `goods_number` (`goods_number`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=208 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_goods`
--

LOCK TABLES `shop_goods` WRITE;
/*!40000 ALTER TABLE `shop_goods` DISABLE KEYS */;
INSERT INTO `shop_goods` VALUES (1,4,'ECS000000','KD876',50,0,500,1665.60,1388.00,0.00,0,0,1,'LG 3g 876 支持 双模 2008年04月 灰色 GSM,850,900,1800,1900','','<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 很多朋友都已经抢先体验了3G网络的可视通话、高速上网等功能。LG KD876手机<span style=\"font-size: x-large;\"><span style=\"color: rgb(255, 0, 0);\"><strong>支持TD-SCDMA/GSM双模单待</strong></span></span>，便于测试初期GSM网络和TD网络之间的切换和共享。</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; LG KD876手机整体采用银色塑料材质，<strong><span style=\"font-size: x-large;\"><span style=\"color: rgb(255, 0, 0);\">特殊的旋转屏设计是本机的亮点</span></span></strong>，而机身背部的300万像素摄像头也是首发的六款TD-SCDMA手机中配置最高的。LG KD876手机屏幕下方设置有外键盘，该键盘由左/右软键、通话/挂机键、返回键、五维摇杆组成，摇杆灵敏度很高，定位准确。KD876的内键盘由标准12个电话键和三个功能键、一个内置摄像头组成。三个功能键分别为视频通话、MP3、和菜单键，所有按键的手感都比较一般，键程适中，当由于按键排列过于紧密，快速发短信时很容易误按，用户在使用时一定要多加注意。LG KD876手机机身周边的接口设计非常简洁，手机的厚度主要来自屏幕旋转轴的长度，如果舍弃旋屏设计的话，估计<span style=\"font-size: x-large;\"><strong><span style=\"color: rgb(255, 0, 0);\">厚度可以做到10mm以下</span></strong></span>。</p>','images/200905/thumb_img/1_thumb_G_1240902890710.jpg','images/200905/goods_img/1_G_1240902890755.jpg','images/200905/source_img/1_G_1240902890895.gif',1,0,1240902890,0,1,1,1,0,9,'',0,0),(4,8,'ECS000004','诺基亚N85原装充电器',0,0,17,69.60,58.00,0.00,0,0,1,'','','','images/200905/thumb_img/4_thumb_G_1241422402467.jpg','images/200905/goods_img/4_G_1241422402722.jpg','images/200905/source_img/4_G_1241422402919.jpg',1,0,1241422402,0,1,1,1,0,6,'',0,0),(8,3,'ECS000008','飞利浦9@9v',12,4,50,478.79,399.00,385.00,1241366400,1417276800,1,'双模 2008年春 黑色 直板 中低档','','<p align=\"left\">作为一款性价比极高的入门级<font size=\"3\" color=\"#ff0000\"><strong>商务手机</strong></font>，飞利浦<a href=\"mailto:9@9v\">Xenium&nbsp; 9@9v</a>三围大小为105&times;44&times;15.8mm，机身重量仅为<strong><font size=\"3\" color=\"#ff0000\">75g</font></strong>，装配了一块低规格1.75英寸128&times;160像素65000色CSTN显示屏。身正面采用月银色功能键区与屏幕数字键区相分隔，键盘设计较为<font size=\"3\"><strong><font color=\"#ff0000\">别</font><font color=\"#ff0000\">致</font></strong></font>，中部导航键区采用钛金色的&ldquo;腰带&rdquo;彰显出浓郁的商务气息。</p>\r\n<p align=\"left\">&nbsp;</p>\r\n<p align=\"left\">此款手机采用<strong><font size=\"3\" color=\"#ff0000\">触摸屏</font></strong>设计，搭配精致的手写笔，可支持手写中文和英文两个版本。增强的内置系统还能识别潦草字迹，确保在移动中和匆忙时输入文字的识别率。手写指令功能还支持特定图案的瞬间调用，独特的手写记事本功能，可以在触摸屏上随意绘制个性化的图案并进行<strong><font size=\"3\" color=\"#ff0000\">记事提醒</font></strong>，让商务应用更加随意。</p>\r\n<p align=\"left\">&nbsp;</p>\r\n<p align=\"left\">&nbsp;作为入门级为数不多支持<strong><font size=\"3\" color=\"#ff0000\">双卡功能</font></strong>的手机，可以同时插入两张SIM卡，通过菜单随意切换，只需开启漫游自动切换模式，<a href=\"mailto:9@9V\">9@9V</a>在该模式下能够判断网络情况，自动切换适合的手机号。</p>\r\n<p align=\"left\">&nbsp;</p>\r\n<p align=\"left\">&nbsp;</p>','images/200905/thumb_img/8_thumb_G_1241425513488.jpg','images/200905/goods_img/8_G_1241425513055.jpg','images/200905/source_img/8_G_1241425513518.jpg',1,0,1241425512,0,1,1,1,1,9,'',0,0),(9,3,'ECS000009','诺基亚E66',100,0,1000,2757.60,2298.00,0.00,0,0,1,'SMS EMS MMS 短消息群发 语音 阅读器 SMS,EMS,MMS,短消息群发语音合成信息阅读器 黑色 白色 滑盖','','<p>在机身材质方面，诺基亚E66大量采用金属材质，刨光的金属表面光泽动人，背面的点状效果规则却又不失变化，时尚感总是在不经意间诠释出来，并被人们所感知。E66机身尺寸为<span style=\"color: rgb(255, 0, 0);\"><span style=\"font-size: larger;\"><strong>107.5&times;49.5&times;13.6毫米，重量为121克</strong></span></span>，滑盖的造型竟然比E71还要轻一些。</p>\r\n<p>&nbsp;</p>\r\n<div>诺基亚E66机身正面是<span style=\"color: rgb(255, 0, 0);\"><span style=\"font-size: larger;\"><strong>一块2.4英寸1600万色QVGA分辨率（240&times;320像素）液晶显示屏</strong></span></span>。屏幕上方拥有光线感应元件，能够自适应周 围环境光调节屏幕亮度；屏幕下方是方向功能键区。打开滑盖，可以看到传统的数字键盘，按键的大小、手感、间隔以及键程适中，手感非常舒适。</div>\r\n<div>&nbsp;</div>\r\n<div>诺基亚为E66配备了一颗320万像素自动对焦摄像头，带有LED 闪光灯，支持多种拍照尺寸选择。</div>\r\n<p>&nbsp;</p>','images/200905/thumb_img/9_thumb_G_1241511871555.jpg','images/200905/goods_img/9_G_1241511871574.jpg','images/200905/source_img/9_G_1241511871550.jpg',1,0,1241511871,0,1,1,1,0,9,'',0,0),(35,19,'ECS000035','体重秤',0,0,500,16.80,14.00,0.00,0,0,1,'','','','images/201605/thumb_img/35_thumb_G_1462851036709.jpg','images/201605/goods_img/35_G_1462851036470.jpg','images/201605/source_img/35_G_1462851036185.jpg',1,0,1462851036,0,1,1,1,0,0,'',0,0),(69,24,'ECS000069','平衡车',3,15,500,2398.79,1999.00,0.00,0,0,1,'','','<p><img src=\"/images/upload/Image/3_1.jpg\" width=\"1311\" height=\"656\" alt=\"\" />&nbsp;</p>','images/201605/thumb_img/69_thumb_G_1462955300971.jpg','images/201605/goods_img/69_G_1462955300173.jpg','images/201605/source_img/69_G_1462955300153.jpg',1,0,1462955300,0,1,1,1,0,0,'',0,0),(70,24,'ECS000070','炫彩翻页保护套',3,15,500,46.80,39.00,0.00,0,0,1,'','','<p><img src=\"/images/upload/Image/4_1.jpg\" width=\"1226\" height=\"1068\" alt=\"\" />&nbsp;</p>','images/201605/thumb_img/70_thumb_G_1462955414561.jpg','images/201605/goods_img/70_G_1462955414630.jpg','images/201605/source_img/70_G_1462955414637.jpg',1,0,1462955414,0,1,1,1,0,0,'',0,0),(72,24,'ECS000072','智能相机',6,15,20,178.79,149.00,0.00,0,0,1,'','','<p>&nbsp;<img src=\"http://cbu2.test.shopex123.com/images//20160510/5984c3f800d7ef3c.jpg\" alt=\"\" /></p>','images/201605/thumb_img/72_thumb_G_1462956048008.jpg','images/201605/goods_img/72_G_1462956048145.jpg','images/201605/source_img/72_G_1462956048413.jpg',1,0,1462956048,0,1,1,1,0,0,'',0,0),(14,4,'ECS000014','诺基亚5800XM',7,0,500,3150.00,2625.00,0.00,0,0,1,'GSM 64和弦 2009年2月 320万摄像头 GPS 直板 工程塑料 支持 2008年10月 黑色','','','images/200905/thumb_img/14_thumb_G_1241968492116.jpg','images/200905/goods_img/14_G_1241968492932.jpg','images/200905/source_img/14_G_1241968492305.jpg',1,0,1241968492,0,1,1,1,0,9,'',0,0),(64,24,'ECS000064','运动相机',6,15,500,478.79,399.00,0.00,0,0,1,'','','<p>&nbsp;<img src=\"/images/upload/Image/7f10afef2984ad18.jpg\" width=\"1102\" height=\"463\" alt=\"\" /></p>','images/201605/thumb_img/64_thumb_G_1462952811633.jpg','images/201605/goods_img/64_G_1462952811554.jpg','images/201605/source_img/64_G_1462952811926.jpg',1,0,1462952811,0,1,1,1,0,11,'',0,0),(63,24,'ECS000063','自拍杆',7,15,500,49.00,49.00,0.00,0,0,1,'','','<p>&nbsp;<img src=\"http://cbu2.test.shopex123.com/images//20160510/4f04b67e7a2035bd.jpg\" alt=\"\" /></p>','images/201605/thumb_img/63_thumb_G_1462953395609.jpg','images/201605/goods_img/63_G_1462953395397.jpg','images/201605/source_img/63_G_1462953395626.jpg',1,0,1462952749,0,1,1,1,0,12,'',0,0),(61,24,'ECS000061','视频',4,15,500,24.24,20.20,0.00,0,0,1,'','','<p>&nbsp;<img src=\"http://cbu2.test.shopex123.com/images//20160510/f60016cd295b0206.jpg\" alt=\"\" /></p>','images/201605/thumb_img/61_thumb_G_1462952376889.jpg','images/201605/goods_img/61_G_1462952376993.jpg','images/201605/source_img/61_G_1462952376155.jpg',1,0,1462952376,0,1,1,1,0,0,'',0,0),(62,24,'ECS000062','随身风扇',3,15,20,23.88,19.90,0.00,0,0,1,'','','<p><img src=\"http://cbu2.test.shopex123.com/images//20160510/271725cdf1d3a7a3.jpg\" alt=\"\" /></p>','images/201605/thumb_img/62_thumb_G_1462952557730.jpg','images/201605/goods_img/62_G_1462952557657.jpg','images/201605/source_img/62_G_1462952557842.jpg',1,0,1462952557,0,1,1,1,0,0,'',0,0),(32,3,'ECS000032','诺基亚N85',24,0,100,3612.00,3010.00,2750.00,1243756800,1417248000,1,'2008年10月 GSM,850,900,1800,1900 黑色','','<p>诺基亚N85参数</p><div>&nbsp;</div><div><table width=\"100%\" cellspacing=\"1\" cellpadding=\"0\" border=\"0\" bgcolor=\"#c5d7ed\"><tbody><tr><td bgcolor=\"#f1f7fc\" colspan=\"2\"><p><b>基本参数</b></p></td></tr><tr><td width=\"100\" valign=\"center\" bgcolor=\"#ffffff\" align=\"left\">手机昵称</td><td width=\"450\" bgcolor=\"#ffffff\">N85</td></tr><tr><td width=\"100\" valign=\"center\" bgcolor=\"#ffffff\" align=\"left\">上市日期</td><td width=\"450\" bgcolor=\"#ffffff\">2008年10月</td></tr><tr><td width=\"100\" valign=\"center\" bgcolor=\"#ffffff\" align=\"left\">手机类型</td><td width=\"450\" bgcolor=\"#ffffff\">3G手机；拍照手机；智能手机</td></tr><tr><td width=\"100\" valign=\"center\" bgcolor=\"#ffffff\" align=\"left\">手机制式</td><td width=\"450\" bgcolor=\"#ffffff\">GSM</td></tr><tr><td width=\"100\" valign=\"center\" bgcolor=\"#ffffff\" align=\"left\">支持频段</td><td width=\"450\" bgcolor=\"#ffffff\">GSM850/900/1800/1900MHz</td></tr><tr><td width=\"100\" valign=\"center\" bgcolor=\"#ffffff\" align=\"left\">数据传输</td><td width=\"450\" bgcolor=\"#ffffff\">GPRS、EDGE</td></tr><tr><td width=\"100\" valign=\"center\" bgcolor=\"#ffffff\" align=\"left\">屏幕材质</td><td width=\"450\" bgcolor=\"#ffffff\">AMOLED</td></tr><tr><td width=\"100\" valign=\"center\" bgcolor=\"#ffffff\" align=\"left\">屏幕色彩</td><td width=\"450\" bgcolor=\"#ffffff\">1600万色</td></tr><tr><td width=\"100\" valign=\"center\" bgcolor=\"#ffffff\" align=\"left\">主屏尺寸</td><td width=\"450\" bgcolor=\"#ffffff\">2.6英寸</td></tr><tr><td width=\"100\" valign=\"center\" bgcolor=\"#ffffff\" align=\"left\">主屏参数</td><td width=\"450\" bgcolor=\"#ffffff\">QVGA 320&times;240像素</td></tr><tr><td width=\"100\" valign=\"center\" bgcolor=\"#ffffff\" align=\"left\">铃音描述</td><td width=\"450\" bgcolor=\"#ffffff\">可选MP3、WAV、AAC或和弦Midi铃声等格式</td></tr><tr><td width=\"100\" valign=\"center\" bgcolor=\"#ffffff\" align=\"left\">操作系统</td><td width=\"450\" bgcolor=\"#ffffff\">Symbian OS v9.3操作系统与S60 v3.2平台的组合</td></tr><tr><td width=\"100\" valign=\"center\" bgcolor=\"#ffffff\" align=\"left\">机身内存</td><td width=\"450\" bgcolor=\"#ffffff\">74MB 内部动态存储空间<br />            78MB 内置NAND闪存</td></tr><tr><td width=\"100\" valign=\"center\" bgcolor=\"#ffffff\" align=\"left\">存储卡</td><td width=\"450\" bgcolor=\"#ffffff\">支持MicroSD(T-Flash)卡扩展最大至8GB</td></tr><tr><td width=\"100\" valign=\"center\" bgcolor=\"#ffffff\" align=\"left\">电池规格</td><td width=\"450\" bgcolor=\"#ffffff\">1200毫安时锂电池</td></tr><tr><td width=\"100\" valign=\"center\" bgcolor=\"#ffffff\" align=\"left\">标配</td><td width=\"450\" bgcolor=\"#ffffff\">诺基亚 N85<br />            诺基亚电池（BL-5K）<br />            诺基亚旅行充电器（AC-10）<br />            诺基亚视频数据线（CA-75U）<br />            诺基亚数据线（CA-101）<br />            诺基亚音乐耳机（HS-45、AD-54）<br />            诺基亚 8 GB microSD 卡（MU-43）<br />            《用户手册》<br />            《快速入门》</td></tr><tr><td width=\"100\" valign=\"center\" bgcolor=\"#ffffff\" align=\"left\">理论通话时间</td><td width=\"450\" bgcolor=\"#ffffff\">6.9 小时</td></tr><tr><td width=\"100\" valign=\"center\" bgcolor=\"#ffffff\" align=\"left\">理论待机时间</td><td width=\"450\" bgcolor=\"#ffffff\">363 小时</td></tr><tr><td bgcolor=\"#f1f7fc\" colspan=\"2\"><p><b>产品外形</b></p></td></tr><tr><td width=\"100\" valign=\"center\" bgcolor=\"#ffffff\" align=\"left\">外观设计</td><td width=\"450\" bgcolor=\"#ffffff\">双向滑盖</td></tr><tr><td width=\"100\" valign=\"center\" bgcolor=\"#ffffff\" align=\"left\">产品尺寸</td><td width=\"450\" bgcolor=\"#ffffff\">103&times;50&times;16mm<br />            体积：76 立方厘米</td></tr><tr><td width=\"100\" valign=\"center\" bgcolor=\"#ffffff\" align=\"left\">手机重量</td><td width=\"450\" bgcolor=\"#ffffff\">128克</td></tr><tr><td width=\"100\" valign=\"center\" bgcolor=\"#ffffff\" align=\"left\">产品天线</td><td width=\"450\" bgcolor=\"#ffffff\">内置</td></tr><tr><td bgcolor=\"#f1f7fc\" colspan=\"2\"><p><b>拍照功能</b></p></td></tr><tr><td width=\"550\" valign=\"center\" bgcolor=\"#ffffff\" align=\"left\" style=\"padding: 8px 0px;\" colspan=\"2\"><table cellspacing=\"1\" cellpadding=\"0\" border=\"0\" align=\"left\"><tbody><tr><td width=\"100\" style=\"padding: 5px 0px 5px 10px;\"><table width=\"100%\" cellspacing=\"1\" cellpadding=\"0\" border=\"0\" bgcolor=\"#c5d7ed\"><tbody><tr><td width=\"100%\" bgcolor=\"#f1f7fc\" align=\"middle\" style=\"padding: 2px; font-weight: bold;\">定时器</td></tr></tbody></table></td><td width=\"100\" style=\"padding: 5px 0px 5px 10px;\">&nbsp;</td></tr></tbody></table></td></tr><tr><td width=\"100\" valign=\"center\" bgcolor=\"#ffffff\" align=\"left\">摄像头</td><td width=\"450\" bgcolor=\"#ffffff\">内置</td></tr><tr><td width=\"100\" valign=\"center\" bgcolor=\"#ffffff\" align=\"left\">摄像头像素</td><td width=\"450\" bgcolor=\"#ffffff\">500万像素</td></tr><tr><td width=\"100\" valign=\"center\" bgcolor=\"#ffffff\" align=\"left\">连拍功能</td><td width=\"450\" bgcolor=\"#ffffff\">支持</td></tr><tr><td width=\"100\" valign=\"center\" bgcolor=\"#ffffff\" align=\"left\">LED闪光灯</td><td width=\"450\" bgcolor=\"#ffffff\">双LED 闪光灯</td></tr><tr><td width=\"100\" valign=\"center\" bgcolor=\"#ffffff\" align=\"left\">数码变焦</td><td width=\"450\" bgcolor=\"#ffffff\">20 倍数码变焦</td></tr><tr><td width=\"100\" valign=\"center\" bgcolor=\"#ffffff\" align=\"left\">拍摄模式</td><td width=\"450\" bgcolor=\"#ffffff\">静止、连拍、自动定时器、摄像</td></tr><tr><td width=\"100\" valign=\"center\" bgcolor=\"#ffffff\" align=\"left\">照片特效</td><td width=\"450\" bgcolor=\"#ffffff\">正常、怀旧、黑白、负片、逼真</td></tr><tr><td width=\"100\" valign=\"center\" bgcolor=\"#ffffff\" align=\"left\">拍照描述</td><td width=\"450\" bgcolor=\"#ffffff\">支持最大2592&times;1944分辨率照片拍摄<br />            支持JPEG、Exif格式<br />            白平衡模式：自动、阳光、阴天、白炽灯、荧光灯<br />            感光度模式：高、中、低、自动</td></tr><tr><td width=\"100\" valign=\"center\" bgcolor=\"#ffffff\" align=\"left\">视频拍摄</td><td width=\"450\" bgcolor=\"#ffffff\">最高支持640 x 480 像素（VGA）、30 帧/秒</td></tr><tr><td bgcolor=\"#f1f7fc\" colspan=\"2\"><p><b>娱乐功能</b></p></td></tr><tr><td width=\"550\" valign=\"center\" bgcolor=\"#ffffff\" align=\"left\" style=\"padding: 8px 0px;\" colspan=\"2\"><table cellspacing=\"1\" cellpadding=\"0\" border=\"0\" align=\"left\"><tbody><tr><td width=\"100\" style=\"padding: 5px 0px 5px 10px;\"><table width=\"100%\" cellspacing=\"1\" cellpadding=\"0\" border=\"0\" bgcolor=\"#c5d7ed\"><tbody><tr><td width=\"100%\" bgcolor=\"#f1f7fc\" align=\"middle\" style=\"padding: 2px; font-weight: bold;\">收音机</td></tr></tbody></table></td><td width=\"100\" style=\"padding: 5px 0px 5px 10px;\"><table width=\"100%\" cellspacing=\"1\" cellpadding=\"0\" border=\"0\" bgcolor=\"#c5d7ed\"><tbody><tr><td width=\"100%\" bgcolor=\"#f1f7fc\" align=\"middle\" style=\"padding: 2px; font-weight: bold;\">TV-OUT</td></tr></tbody></table></td><td width=\"100\" style=\"padding: 5px 0px 5px 10px;\"><table width=\"100%\" cellspacing=\"1\" cellpadding=\"0\" border=\"0\" bgcolor=\"#c5d7ed\"><tbody><tr><td width=\"100%\" bgcolor=\"#f1f7fc\" align=\"middle\" style=\"padding: 2px; font-weight: bold;\">录音功能</td></tr></tbody></table></td><td width=\"100\" style=\"padding: 5px 0px 5px 10px;\"><table width=\"100%\" cellspacing=\"1\" cellpadding=\"0\" border=\"0\" bgcolor=\"#c5d7ed\"><tbody><tr><td width=\"100%\" bgcolor=\"#f1f7fc\" align=\"middle\" style=\"padding: 2px; font-weight: bold;\">电子书</td></tr></tbody></table></td><td width=\"100\" style=\"padding: 5px 0px 5px 10px;\">&nbsp;</td></tr></tbody></table></td></tr><tr><td width=\"100\" valign=\"center\" bgcolor=\"#ffffff\" align=\"left\">视频播放</td><td width=\"450\" bgcolor=\"#ffffff\">内置RealPlayer播放器, 支持MPEG4、H.264/AVC、H.263/3GP、RealVideo等视频格式全屏播放</td></tr><tr><td width=\"100\" valign=\"center\" bgcolor=\"#ffffff\" align=\"left\">音乐播放</td><td width=\"450\" bgcolor=\"#ffffff\">内置播放器, 支持mp3、.wma、.aac、eAAC、eAAC+格式</td></tr><tr><td width=\"100\" valign=\"center\" bgcolor=\"#ffffff\" align=\"left\">游戏</td><td width=\"450\" bgcolor=\"#ffffff\">内置</td></tr><tr><td width=\"100\" valign=\"center\" bgcolor=\"#ffffff\" align=\"left\">Java功能</td><td width=\"450\" bgcolor=\"#ffffff\">支持Java MIDP 2.0 CLDC 1.1</td></tr><tr><td width=\"100\" valign=\"center\" bgcolor=\"#ffffff\" align=\"left\">Flash功能</td><td width=\"450\" bgcolor=\"#ffffff\">第3.0版Flash lite播放器</td></tr><tr><td bgcolor=\"#f1f7fc\" colspan=\"2\"><p><b>数据功能</b></p></td></tr><tr><td width=\"550\" valign=\"center\" bgcolor=\"#ffffff\" align=\"left\" style=\"padding: 8px 0px;\" colspan=\"2\"><table cellspacing=\"1\" cellpadding=\"0\" border=\"0\" align=\"left\"><tbody><tr><td width=\"100\" style=\"padding: 5px 0px 5px 10px;\"><table width=\"100%\" cellspacing=\"1\" cellpadding=\"0\" border=\"0\" bgcolor=\"#c5d7ed\"><tbody><tr><td width=\"100%\" bgcolor=\"#f1f7fc\" align=\"middle\" style=\"padding: 2px; font-weight: bold;\">蓝牙功能</td></tr></tbody></table></td><td width=\"100\" style=\"padding: 5px 0px 5px 10px;\">&nbsp;</td></tr></tbody></table></td></tr><tr><td width=\"100\" valign=\"center\" bgcolor=\"#ffffff\" align=\"left\">数据线接口</td><td width=\"450\" bgcolor=\"#ffffff\">USB数据线 3.5mm立体声耳机插孔</td></tr><tr><td bgcolor=\"#f1f7fc\" colspan=\"2\"><p><b>基本功能</b></p></td></tr><tr><td width=\"550\" valign=\"center\" bgcolor=\"#ffffff\" align=\"left\" style=\"padding: 8px 0px;\" colspan=\"2\"><table cellspacing=\"1\" cellpadding=\"0\" border=\"0\" align=\"left\"><tbody><tr><td width=\"100\" style=\"padding: 5px 0px 5px 10px;\"><table width=\"100%\" cellspacing=\"1\" cellpadding=\"0\" border=\"0\" bgcolor=\"#c5d7ed\"><tbody><tr><td width=\"100%\" bgcolor=\"#f1f7fc\" align=\"middle\" style=\"padding: 2px; font-weight: bold;\">短信(SMS)</td></tr></tbody></table></td><td width=\"100\" style=\"padding: 5px 0px 5px 10px;\"><table width=\"100%\" cellspacing=\"1\" cellpadding=\"0\" border=\"0\" bgcolor=\"#c5d7ed\"><tbody><tr><td width=\"100%\" bgcolor=\"#f1f7fc\" align=\"middle\" style=\"padding: 2px; font-weight: bold;\">彩信(MMS)</td></tr></tbody></table></td><td width=\"100\" style=\"padding: 5px 0px 5px 10px;\"><table width=\"100%\" cellspacing=\"1\" cellpadding=\"0\" border=\"0\" bgcolor=\"#c5d7ed\"><tbody><tr><td width=\"100%\" bgcolor=\"#f1f7fc\" align=\"middle\" style=\"padding: 2px; font-weight: bold;\">免提通话</td></tr></tbody></table></td><td width=\"100\" style=\"padding: 5px 0px 5px 10px;\"><table width=\"100%\" cellspacing=\"1\" cellpadding=\"0\" border=\"0\" bgcolor=\"#c5d7ed\"><tbody><tr><td width=\"100%\" bgcolor=\"#f1f7fc\" align=\"middle\" style=\"padding: 2px; font-weight: bold;\">情景模式</td></tr></tbody></table></td><td width=\"100\" style=\"padding: 5px 0px 5px 10px;\"><table width=\"100%\" cellspacing=\"1\" cellpadding=\"0\" border=\"0\" bgcolor=\"#c5d7ed\"><tbody><tr><td width=\"100%\" bgcolor=\"#f1f7fc\" align=\"middle\" style=\"padding: 2px; font-weight: bold;\">闹钟功能</td></tr></tbody></table></td></tr><tr><td width=\"100\" style=\"padding: 5px 0px 5px 10px;\"><table width=\"100%\" cellspacing=\"1\" cellpadding=\"0\" border=\"0\" bgcolor=\"#c5d7ed\"><tbody><tr><td width=\"100%\" bgcolor=\"#f1f7fc\" align=\"middle\" style=\"padding: 2px; font-weight: bold;\">日历功能</td></tr></tbody></table></td><td width=\"100\" style=\"padding: 5px 0px 5px 10px;\">&nbsp;</td></tr></tbody></table></td></tr><tr><td width=\"100\" valign=\"center\" bgcolor=\"#ffffff\" align=\"left\">输入方式</td><td width=\"450\" bgcolor=\"#ffffff\">键盘</td></tr><tr><td width=\"100\" valign=\"center\" bgcolor=\"#ffffff\" align=\"left\">通话记录</td><td width=\"450\" bgcolor=\"#ffffff\">未接来电+已接来电+已拨电话记录</td></tr><tr><td width=\"100\" valign=\"center\" bgcolor=\"#ffffff\" align=\"left\">通讯录</td><td width=\"450\" bgcolor=\"#ffffff\">S60标准化名片式通讯录</td></tr><tr><td bgcolor=\"#f1f7fc\" colspan=\"2\"><p><b>网络功能</b></p></td></tr><tr><td width=\"550\" valign=\"center\" bgcolor=\"#ffffff\" align=\"left\" style=\"padding: 8px 0px;\" colspan=\"2\"><table cellspacing=\"1\" cellpadding=\"0\" border=\"0\" align=\"left\"><tbody><tr><td width=\"100\" style=\"padding: 5px 0px 5px 10px;\"><table width=\"100%\" cellspacing=\"1\" cellpadding=\"0\" border=\"0\" bgcolor=\"#c5d7ed\"><tbody><tr><td width=\"100%\" bgcolor=\"#f1f7fc\" align=\"middle\" style=\"padding: 2px; font-weight: bold;\">电子邮件</td></tr></tbody></table></td><td width=\"100\" style=\"padding: 5px 0px 5px 10px;\"><table width=\"100%\" cellspacing=\"1\" cellpadding=\"0\" border=\"0\" bgcolor=\"#c5d7ed\"><tbody><tr><td width=\"100%\" bgcolor=\"#f1f7fc\" align=\"middle\" style=\"padding: 2px; font-weight: bold;\">WWW浏览器</td></tr></tbody></table></td><td width=\"100\" style=\"padding: 5px 0px 5px 10px;\"><table width=\"100%\" cellspacing=\"1\" cellpadding=\"0\" border=\"0\" bgcolor=\"#c5d7ed\"><tbody><tr><td width=\"100%\" bgcolor=\"#f1f7fc\" align=\"middle\" style=\"padding: 2px; font-weight: bold;\">WAP浏览器</td></tr></tbody></table></td><td width=\"100\" style=\"padding: 5px 0px 5px 10px;\">&nbsp;</td></tr></tbody></table></td></tr><tr><td bgcolor=\"#f1f7fc\" colspan=\"2\"><p><b>商务功能</b></p></td></tr><tr><td width=\"550\" valign=\"center\" bgcolor=\"#ffffff\" align=\"left\" style=\"padding: 8px 0px;\" colspan=\"2\"><table cellspacing=\"1\" cellpadding=\"0\" border=\"0\" align=\"left\"><tbody><tr><td width=\"100\" style=\"padding: 5px 0px 5px 10px;\"><table width=\"100%\" cellspacing=\"1\" cellpadding=\"0\" border=\"0\" bgcolor=\"#c5d7ed\"><tbody><tr><td width=\"100%\" bgcolor=\"#f1f7fc\" align=\"middle\" style=\"padding: 2px; font-weight: bold;\">飞行模式</td></tr></tbody></table></td><td width=\"100\" style=\"padding: 5px 0px 5px 10px;\"><table width=\"100%\" cellspacing=\"1\" cellpadding=\"0\" border=\"0\" bgcolor=\"#c5d7ed\"><tbody><tr><td width=\"100%\" bgcolor=\"#f1f7fc\" align=\"middle\" style=\"padding: 2px; font-weight: bold;\">语音拨号</td></tr></tbody></table></td><td width=\"100\" style=\"padding: 5px 0px 5px 10px;\"><table width=\"100%\" cellspacing=\"1\" cellpadding=\"0\" border=\"0\" bgcolor=\"#c5d7ed\"><tbody><tr><td width=\"100%\" bgcolor=\"#f1f7fc\" align=\"middle\" style=\"padding: 2px; font-weight: bold;\">备忘录</td></tr></tbody></table></td><td width=\"100\" style=\"padding: 5px 0px 5px 10px;\"><table width=\"100%\" cellspacing=\"1\" cellpadding=\"0\" border=\"0\" bgcolor=\"#c5d7ed\"><tbody><tr><td width=\"100%\" bgcolor=\"#f1f7fc\" align=\"middle\" style=\"padding: 2px; font-weight: bold;\">日程表</td></tr></tbody></table></td><td width=\"100\" style=\"padding: 5px 0px 5px 10px;\"><table width=\"100%\" cellspacing=\"1\" cellpadding=\"0\" border=\"0\" bgcolor=\"#c5d7ed\"><tbody><tr><td width=\"100%\" bgcolor=\"#f1f7fc\" align=\"middle\" style=\"padding: 2px; font-weight: bold;\">世界时间</td></tr></tbody></table></td></tr><tr><td width=\"100\" style=\"padding: 5px 0px 5px 10px;\">&nbsp;</td></tr></tbody></table></td></tr><tr><td bgcolor=\"#f1f7fc\" colspan=\"2\"><p><b>其他功能</b></p></td></tr><tr><td width=\"550\" valign=\"center\" bgcolor=\"#ffffff\" align=\"left\" style=\"padding: 8px 0px;\" colspan=\"2\"><table cellspacing=\"1\" cellpadding=\"0\" border=\"0\" align=\"left\"><tbody><tr><td width=\"100\" style=\"padding: 5px 0px 5px 10px;\"><table width=\"100%\" cellspacing=\"1\" cellpadding=\"0\" border=\"0\" bgcolor=\"#c5d7ed\"><tbody><tr><td width=\"100%\" bgcolor=\"#f1f7fc\" align=\"middle\" style=\"padding: 2px; font-weight: bold;\">GPS功能</td></tr></tbody></table></td><td width=\"100\" style=\"padding: 5px 0px 5px 10px;\"><table width=\"100%\" cellspacing=\"1\" cellpadding=\"0\" border=\"0\" bgcolor=\"#c5d7ed\"><tbody><tr><td width=\"100%\" bgcolor=\"#f1f7fc\" align=\"middle\" style=\"padding: 2px; font-weight: bold;\">电子词典</td></tr></tbody></table></td><td width=\"100\" style=\"padding: 5px 0px 5px 10px;\"><table width=\"100%\" cellspacing=\"1\" cellpadding=\"0\" border=\"0\" bgcolor=\"#c5d7ed\"><tbody><tr><td width=\"100%\" bgcolor=\"#f1f7fc\" align=\"middle\" style=\"padding: 2px; font-weight: bold;\">待机图片</td></tr></tbody></table></td><td width=\"100\" style=\"padding: 5px 0px 5px 10px;\"><table width=\"100%\" cellspacing=\"1\" cellpadding=\"0\" border=\"0\" bgcolor=\"#c5d7ed\"><tbody><tr><td width=\"100%\" bgcolor=\"#f1f7fc\" align=\"middle\" style=\"padding: 2px; font-weight: bold;\">计算器</td></tr></tbody></table></td><td width=\"100\" style=\"padding: 5px 0px 5px 10px;\"><table width=\"100%\" cellspacing=\"1\" cellpadding=\"0\" border=\"0\" bgcolor=\"#c5d7ed\"><tbody><tr><td width=\"100%\" bgcolor=\"#f1f7fc\" align=\"middle\" style=\"padding: 2px; font-weight: bold;\">来电铃声识别</td></tr></tbody></table></td></tr><tr><td width=\"100\" style=\"padding: 5px 0px 5px 10px;\"><table width=\"100%\" cellspacing=\"1\" cellpadding=\"0\" border=\"0\" bgcolor=\"#c5d7ed\"><tbody><tr><td width=\"100%\" bgcolor=\"#f1f7fc\" align=\"middle\" style=\"padding: 2px; font-weight: bold;\">来电图片识别</td></tr></tbody></table></td><td width=\"100\" style=\"padding: 5px 0px 5px 10px;\"><table width=\"100%\" cellspacing=\"1\" cellpadding=\"0\" border=\"0\" bgcolor=\"#c5d7ed\"><tbody><tr><td width=\"100%\" bgcolor=\"#f1f7fc\" align=\"middle\" style=\"padding: 2px; font-weight: bold;\">来电防火墙</td></tr></tbody></table></td><td width=\"100\" style=\"padding: 5px 0px 5px 10px;\"><table width=\"100%\" cellspacing=\"1\" cellpadding=\"0\" border=\"0\" bgcolor=\"#c5d7ed\"><tbody><tr><td width=\"100%\" bgcolor=\"#f1f7fc\" align=\"middle\" style=\"padding: 2px; font-weight: bold;\">动画屏保</td></tr></tbody></table></td><td width=\"100\" style=\"padding: 5px 0px 5px 10px;\"><table width=\"100%\" cellspacing=\"1\" cellpadding=\"0\" border=\"0\" bgcolor=\"#c5d7ed\"><tbody><tr><td width=\"100%\" bgcolor=\"#f1f7fc\" align=\"middle\" style=\"padding: 2px; font-weight: bold;\">图形菜单</td></tr></tbody></table></td><td width=\"100\" style=\"padding: 5px 0px 5px 10px;\"><table width=\"100%\" cellspacing=\"1\" cellpadding=\"0\" border=\"0\" bgcolor=\"#c5d7ed\"><tbody><tr><td width=\"100%\" bgcolor=\"#f1f7fc\" align=\"middle\" style=\"padding: 2px; font-weight: bold;\">秒表</td></tr></tbody></table></td></tr><tr><td width=\"100\" style=\"padding: 5px 0px 5px 10px;\"><table width=\"100%\" cellspacing=\"1\" cellpadding=\"0\" border=\"0\" bgcolor=\"#c5d7ed\"><tbody><tr><td width=\"100%\" bgcolor=\"#f1f7fc\" align=\"middle\" style=\"padding: 2px; font-weight: bold;\">单位换算</td></tr></tbody></table></td><td width=\"100\" style=\"padding: 5px 0px 5px 10px;\"><table width=\"100%\" cellspacing=\"1\" cellpadding=\"0\" border=\"0\"><tbody><tr><td width=\"100%\" align=\"middle\" style=\"padding: 2px; float: none;\">&nbsp;</td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></div><p>&nbsp;</p>','images/200905/thumb_img/32_thumb_G_1242110760196.jpg','images/200905/goods_img/32_G_1242110760868.jpg','images/200905/source_img/32_G_1242110760437.jpg',1,0,1242110760,0,1,1,1,1,9,'',0,0),(68,24,'ECS000068','透明超薄软胶保护套',4,15,500,22.80,19.00,0.00,0,0,1,'','','<p><img src=\"/images/upload/Image/2_1.jpg\" width=\"1240\" height=\"869\" alt=\"\" />&nbsp;</p>','images/201605/thumb_img/68_thumb_G_1462955204381.jpg','images/201605/goods_img/68_G_1462955204977.jpg','images/201605/source_img/68_G_1462955204991.jpg',1,0,1462955204,0,1,1,1,0,0,'',0,0),(36,18,'ECS000036','路由器',0,0,300,178.79,149.00,0.00,0,0,1,'','','','images/201605/thumb_img/36_thumb_G_1462851087913.jpg','images/201605/goods_img/36_G_1462851087064.jpg','images/201605/source_img/36_G_1462851087201.jpg',1,0,1462851087,0,1,1,1,0,0,'',0,0),(37,19,'ECS000037','Note3 钢化玻璃膜(0.33mm) ',2,15,500,19.00,19.00,0.00,0,0,1,'','','','images/201605/thumb_img/37_thumb_G_1462852086266.jpg','images/201605/goods_img/37_G_1462852086030.jpg','images/201605/source_img/37_G_1462852086626.jpg',1,0,1462852086,0,1,1,1,0,0,'',0,0),(38,19,'ECS000038','圈铁耳机',2,15,1500,118.80,99.00,0.00,0,0,1,'','','','images/201605/thumb_img/38_thumb_G_1462951652474.jpg','images/201605/goods_img/38_G_1462951652287.jpg','images/201605/source_img/38_G_1462951652405.jpg',1,0,1462852185,0,1,1,1,0,0,'',0,0),(39,19,'ECS000039','移动电源 10000mAh 高配版',1,15,500,178.79,149.00,0.00,0,0,1,'','','','images/201605/thumb_img/39_thumb_G_1462852326734.jpg','images/201605/goods_img/39_G_1462852326708.jpg','images/201605/source_img/39_G_1462852326569.jpg',1,0,1462852326,0,1,1,1,0,0,'',0,0),(40,19,'ECS000040',' 炫彩翻页保护套',2,15,1500,39.00,39.00,0.00,0,0,1,'','','','images/201605/thumb_img/40_thumb_G_1462852478804.jpg','images/201605/goods_img/40_G_1462852478331.jpg','images/201605/source_img/40_G_1462852478647.jpg',1,0,1462852478,0,1,1,1,0,0,'',0,0),(41,19,'ECS000041','蓝牙耳机',70,15,500,94.80,79.00,0.00,0,0,1,'','','','images/201605/thumb_img/41_thumb_G_1462951739925.jpg','images/201605/goods_img/41_G_1462951739858.jpg','images/201605/source_img/41_G_1462951739827.jpg',1,0,1462852621,0,1,1,1,0,0,'',0,0),(42,16,'ECS000042','短袖T恤 米兔大游行',0,0,1400,46.80,39.00,0.00,0,0,1,'','','','images/201605/thumb_img/42_thumb_G_1462852622356.jpg','images/201605/goods_img/42_G_1462852622613.jpg','images/201605/source_img/42_G_1462852622905.jpg',1,0,1462852622,0,1,1,1,0,0,'',0,0),(43,16,'ECS000043','短袖T恤 摇滚星球',0,0,1400,46.80,39.00,0.00,0,0,1,'','','','images/201605/thumb_img/43_thumb_G_1462852740405.jpg','images/201605/goods_img/43_G_1462852740043.jpg','images/201605/source_img/43_G_1462852740973.jpg',1,0,1462852674,0,1,1,1,0,0,'',0,0),(44,16,'ECS000044','短袖POLO衫 女款',1,0,500,70.80,59.00,0.00,0,0,1,'','','','images/201605/thumb_img/44_thumb_G_1462854145205.jpg','images/201605/goods_img/44_G_1462854145484.jpg','images/201605/source_img/44_G_1462854145205.jpg',1,0,1462852818,0,1,1,1,0,0,'',0,0),(45,19,'ECS000045','自拍杆',4,15,500,58.80,49.00,0.00,0,0,1,'','','','images/201605/thumb_img/45_thumb_G_1462852876726.jpg','images/201605/goods_img/45_G_1462852876401.jpg','images/201605/source_img/45_G_1462852876959.jpg',1,0,1462852839,0,1,1,1,0,0,'',0,0),(46,16,'ECS000046','V领短袖T恤 女款',0,0,1400,46.80,39.00,0.00,0,0,1,'','','','images/201605/thumb_img/46_thumb_G_1462852854005.jpg','images/201605/goods_img/46_G_1462852854671.jpg','images/201605/source_img/46_G_1462852854698.jpg',1,0,1462852854,0,1,1,1,0,0,'',0,0),(47,16,'ECS000047','极简都市双肩包',0,0,400,178.79,149.00,0.00,0,0,1,'','','','images/201605/thumb_img/47_thumb_G_1462852887996.jpg','images/201605/goods_img/47_G_1462852887140.jpg','images/201605/source_img/47_G_1462852887382.jpg',1,0,1462852887,0,1,1,1,0,0,'',0,0),(48,16,'ECS000048','学院风简约双肩包',1,0,500,70.80,59.00,0.00,0,0,1,'','','','images/201605/thumb_img/48_thumb_G_1462852915482.jpg','images/201605/goods_img/48_G_1462852915946.jpg','images/201605/source_img/48_G_1462852915332.jpg',1,0,1462852915,0,1,1,1,0,0,'',0,0),(49,19,'ECS000049','随身风扇',2,0,500,23.88,19.90,0.00,0,0,1,'','','','images/201605/thumb_img/49_thumb_G_1462852939697.jpg','images/201605/goods_img/49_G_1462852939406.jpg','images/201605/source_img/49_G_1462852939577.jpg',1,0,1462852939,0,1,1,1,0,0,'',0,0),(50,19,'ECS000050','移动电源16000mAh',2,15,500,154.79,129.00,0.00,0,0,1,'','','','images/201605/thumb_img/50_thumb_G_1462852961640.jpg','images/201605/goods_img/50_G_1462852961232.jpg','images/201605/source_img/50_G_1462852961568.jpg',1,0,1462852961,0,1,1,1,0,0,'',0,0),(51,19,'ECS000051','鼠标垫',3,0,500,5.88,4.90,0.00,0,0,1,'','','','images/201605/thumb_img/51_thumb_G_1462852967936.jpg','images/201605/goods_img/51_G_1462852967543.jpg','images/201605/source_img/51_G_1462852967694.jpg',1,0,1462852967,0,1,1,1,0,0,'',0,0),(52,8,'ECS000052','活塞耳机 三大升级 全新听歌神器',0,15,400,99.00,69.00,0.00,0,0,1,'','','','images/201605/thumb_img/52_thumb_G_1462951604146.jpg','images/201605/goods_img/52_G_1462951604094.jpg','images/201605/source_img/52_G_1462951604873.jpg',1,0,1462853039,0,1,1,1,0,0,'',0,0),(53,8,'ECS000053','活塞耳机 标准版',2,15,500,34.80,29.00,0.00,0,0,1,'','','','images/201605/thumb_img/53_thumb_G_1462951586603.jpg','images/201605/goods_img/53_G_1462951586918.jpg','images/201605/source_img/53_G_1462951586806.jpg',1,0,1462853130,0,1,1,1,0,0,'',0,0),(54,6,'ECS000054','插线板',0,15,400,58.80,49.00,0.00,0,0,1,'','','','images/201605/thumb_img/54_thumb_G_1462853264300.jpg','images/201605/goods_img/54_G_1462853264188.jpg','images/201605/source_img/54_G_1462853264278.jpg',1,0,1462853264,0,1,1,1,0,0,'',0,0),(55,22,'ECS000055','移动电源10000mAh',0,15,400,82.80,69.00,0.00,0,0,1,'','','','images/201605/thumb_img/55_thumb_G_1462853376632.jpg','images/201605/goods_img/55_G_1462853376630.jpg','images/201605/source_img/55_G_1462853376496.jpg',1,0,1462853376,0,1,1,1,0,0,'',0,0),(58,20,'ECS000058','手机3高配版 超薄钢化玻璃膜(0.22mm) ',7,15,500,34.80,29.00,0.00,0,0,1,'','','','images/201605/thumb_img/58_thumb_G_1462854555007.jpg','images/201605/goods_img/58_G_1462854555626.jpg','images/201605/source_img/58_G_1462854555917.jpg',1,0,1462854555,0,1,1,1,0,0,'',0,0),(59,6,'ECS000059',' 标准高透贴膜(2片装) ',4,15,500,22.80,19.00,0.00,0,0,1,'','','','images/201605/thumb_img/59_thumb_G_1462854683029.jpg','images/201605/goods_img/59_G_1462854683071.jpg','images/201605/source_img/59_G_1462854683549.jpg',1,0,1462854683,0,1,1,1,0,0,'',0,0),(60,6,'ECS000060','指环式防滑手机支架',14,15,40,15.00,12.50,0.00,0,0,1,'','','','images/201605/thumb_img/60_thumb_G_1462854857483.jpg','images/201605/goods_img/60_G_1462854857550.jpg','images/201605/source_img/60_G_1462854857625.jpg',1,0,1462854857,0,1,1,1,0,0,'',0,0),(73,6,'ECS000073','苹果XS',0,5,400,12000.00,10000.00,0.00,0,0,1,'','','','images/201811/thumb_img/73_thumb_G_1543477521554.jpg','images/201811/goods_img/73_G_1543477521230.jpg','images/201811/source_img/73_G_1543477521606.jpg',1,0,1543477521,1,1,1,1,0,0,'',0,0),(74,6,'ECS000074','XS 苹果',10,5,500,12000.00,10000.00,9500.00,1541001600,1543420800,3,'苹果','苹果 很贵','<p>&nbsp;<img src=\"/ecshop/images/upload/Image/1.jpg\" width=\"450\" height=\"450\" alt=\"\" /><img src=\"/ecshop/images/upload/Image/57d0c55cNeb17a9b8.jpg\" width=\"450\" height=\"450\" alt=\"\" /></p>','images/201811/thumb_img/74_thumb_G_1543477901345.jpg','images/201811/goods_img/74_G_1543477901288.jpg','images/201811/source_img/74_G_1543477901044.jpg',1,0,1543477901,0,1,1,0,1,4,'贵鬼的苹果',0,0),(80,57,'','好电视',345,5,5000,6543.00,3456.00,0.00,0,0,1,'','','<p>好电视就是好</p>','20181221\\6eb0a7acd3bbe3e71c8a35296cb65f90.jpg','','',1,0,1545387570,0,1,1,1,0,0,'',0,1),(79,106,'','夏新冰箱',229,5,5000,7000.00,5000.00,0.00,0,0,1,'','','<p>我家冰箱很好用<img src=\"/ueditor/php/upload/image/20181220/1545306104.jpg\" title=\"1545306104.jpg\" alt=\"冰箱.jpg\"/></p>','20181220\\295cda475c19b149202056663e59888a.jpg','','',1,0,1545306107,0,1,1,1,0,0,'',0,1),(81,106,'','好冰箱',230,4,5000,5999.00,2999.00,0.00,0,0,1,'','','<p>好冰箱好用又省电</p>','20181221\\6677bcd01b72c049d6bc023379d152d0.jpg','','',1,0,1545387638,0,1,1,1,0,0,'',0,1),(82,108,'','微波炉',300,4,5000,2999.00,1999.00,0.00,0,0,1,'','','<p>微波炉就是好用澳</p>','20181221\\db6ddf4d8dcb6470b18dffb3e775195d.jpg','','',1,0,1545387807,0,1,1,1,0,0,'',0,1),(83,108,'','电饭锅',550,5,5000,3999.00,2999.00,0.00,0,0,1,'','','<p>电饭锅即使好用澳</p>','20181221\\51749544adbf34757c010b3ca7a92f17.jpg','','',1,0,1545387867,0,1,1,1,0,0,'',0,1),(84,62,'','小米3',340,16,5000,4999.00,3999.00,0.00,0,0,1,'','','<p>小米3很好用</p>','20181221\\e4c225d2bb09a73fb1fb9169669323ad.jpg','','',1,0,1545397254,0,1,1,1,0,0,'',1,1),(85,70,'','尼康相机',450,5,5000,5999.00,4999.00,0.00,0,0,1,'','','<p>康妮相机很好用</p>','20181221\\702b04d435e02e693d710ee5ade54935.jpg','','',1,0,1545397321,0,1,1,1,0,0,'',1,1),(86,55,'','哈苏相机',400,5,5000,5999.00,4999.00,0.00,0,0,1,'','','<p>哈苏相机还可以哦</p>','20181221\\ba9764144d54d6c59c8bc4b14e9b249e.jpg','','',1,0,1545397395,0,1,1,1,0,0,'',1,1),(206,63,'xz20190114092838000206','小米70',300,22,500,3612.00,3010.00,2750.00,2009,2014,1,'2018年10月 GSM,850,900,1800,1900 黑色','','<p><img src=\"/ueditor/php/upload/image/20190114/1547429255.jpg\" title=\"1547429255.jpg\" alt=\"小米6.jpg\"/><img src=\"/ueditor/php/upload/image/20190114/1547429263.jpg\" title=\"1547429263.jpg\" alt=\"小米3.jpg\"/></p>','20190114\\4d2bae7fb790a539285dcafa96e1a5d6_sl.jpg','20190114\\4d2bae7fb790a539285dcafa96e1a5d6.jpg','',1,0,0,0,1,1,1,1,0,'',1,1),(207,62,'xz20190114155827000207','oppo 30',600,5,500,3612.00,3000.00,2750.00,2009,2014,1,'2018年10月 GSM,850,900,1800,1900 黑色','','<p><img src=\"/ueditor/php/upload/image/20190114/1547452598.jpg\" title=\"1547452598.jpg\" alt=\"u=3876496933,887048660&amp;fm=26&amp;gp=0.jpg\"/><img src=\"/ueditor/php/upload/image/20190114/1547452605.jpg\" title=\"1547452605.jpg\" alt=\"小米6.jpg\"/></p>','20190114\\8b03539315cc2cf8b7bdbc1ad7f51e9d_sl.jpg','20190114\\8b03539315cc2cf8b7bdbc1ad7f51e9d.jpg','',1,0,0,0,1,1,1,1,0,'',1,1);
/*!40000 ALTER TABLE `shop_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_goods_attr`
--

DROP TABLE IF EXISTS `shop_goods_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_goods_attr` (
  `goods_attr_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `attr_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attr_value` text NOT NULL,
  `attr_price` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`goods_attr_id`) USING BTREE,
  KEY `goods_id` (`goods_id`) USING BTREE,
  KEY `attr_id` (`attr_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=660 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_goods_attr`
--

LOCK TABLES `shop_goods_attr` WRITE;
/*!40000 ALTER TABLE `shop_goods_attr` DISABLE KEYS */;
INSERT INTO `shop_goods_attr` VALUES (238,1,173,'GSM,850,900,1800,1900','0'),(237,1,185,'灰色',''),(236,1,191,'支持','0'),(235,1,190,'支持','0'),(234,1,189,'2.4英寸','0'),(233,1,172,'2008年04月','0'),(228,9,178,'滑盖','0'),(227,9,185,'白色','0'),(226,9,185,'黑色','10'),(232,8,178,'直板','0'),(231,8,185,'黑色',''),(230,8,190,'支持','0'),(229,8,189,'1.75英寸','0'),(212,14,172,'2008年10月','0'),(213,14,185,'黑色','0'),(214,14,178,'直板','0'),(152,32,172,'2008年10月','0'),(153,32,180,'MicroSD','0'),(154,32,181,'78MB','0'),(155,32,182,'Symbian OS v9.3','0'),(156,32,189,'2.6英寸','0'),(157,32,210,'线控耳机','50'),(158,32,210,'蓝牙耳机','100'),(159,32,210,'数据线','12'),(160,32,173,'GSM,850,900,1800,1900','0'),(161,32,174,'6.9 小時','0'),(162,32,175,'363 小時','0'),(163,32,185,'黑色','1000'),(239,74,56,'5G','0'),(240,74,57,'1000','0'),(241,74,59,'直板','0'),(242,74,60,'15.6','0'),(243,74,61,'4','0'),(244,74,62,'很高','0'),(245,74,64,'500','0'),(246,74,65,'300','0'),(247,74,66,'10','0'),(248,74,75,'内置','0'),(249,74,81,'高价机','0'),(251,74,211,'金色','-500'),(252,74,211,'白色','100'),(253,74,211,'黑色','0'),(254,74,212,'64G',''),(255,74,212,'128G','500'),(256,74,212,'256G','1000'),(597,202,56,'5G',''),(598,202,57,'1000',''),(599,202,59,'直板',''),(600,202,75,'内置',''),(601,202,79,'支持',''),(602,202,81,'中价机',''),(603,202,211,'白色',''),(604,202,211,'金色','100'),(605,202,211,'黑色','300'),(606,202,212,'64G',''),(607,202,212,'128G','100'),(608,202,212,'256G','300'),(609,203,56,'5G',''),(610,203,57,'1000',''),(611,203,59,'直板',''),(612,203,75,'内置',''),(613,203,79,'支持',''),(614,203,211,'白色',''),(615,203,211,'金色','100'),(616,203,211,'黑色','300'),(617,203,212,'64G',''),(618,203,212,'128G','100'),(619,203,212,'256G','300'),(620,204,56,'SMG',''),(621,204,57,'5G',''),(622,204,59,'直板',''),(623,204,60,'5.3',''),(624,204,61,'5.5',''),(625,204,62,'很清晰',''),(626,204,64,'15',''),(627,204,65,'8',''),(628,204,66,'1',''),(629,204,75,'内置',''),(630,204,79,'支持',''),(631,204,211,'白色',''),(632,204,211,'金色','100'),(633,204,211,'黑色','300'),(634,204,212,'64G',''),(635,204,212,'128G','100'),(636,204,212,'256G','300'),(637,206,56,'5G',''),(638,206,57,'1000',''),(639,206,59,'直板',''),(640,206,75,'内置',''),(641,206,79,'支持',''),(642,206,81,'中价机',''),(643,206,211,'白色',''),(644,206,211,'金色','100'),(645,206,211,'黑色','300'),(646,206,212,'64G',''),(647,206,212,'128G','100'),(648,206,212,'256G','300'),(649,207,56,'5G',''),(650,207,57,'1000',''),(651,207,59,'直板',''),(652,207,75,'内置',''),(653,207,79,'支持',''),(654,207,211,'白色',''),(655,207,211,'金色','100'),(656,207,211,'黑色','300'),(657,207,212,'64G',''),(658,207,212,'128G','100'),(659,207,212,'256G','300');
/*!40000 ALTER TABLE `shop_goods_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_goods_gallery`
--

DROP TABLE IF EXISTS `shop_goods_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_goods_gallery` (
  `img_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `img_url` varchar(255) NOT NULL DEFAULT '',
  `img_desc` varchar(255) NOT NULL DEFAULT '',
  `thumb_url` varchar(255) NOT NULL DEFAULT '',
  `img_original` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`img_id`) USING BTREE,
  KEY `goods_id` (`goods_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_goods_gallery`
--

LOCK TABLES `shop_goods_gallery` WRITE;
/*!40000 ALTER TABLE `shop_goods_gallery` DISABLE KEYS */;
INSERT INTO `shop_goods_gallery` VALUES (1,1,'images/200905/goods_img/1_P_1240902890730.gif','','images/200905/thumb_img/1_thumb_P_1240902890139.jpg','images/200905/source_img/1_P_1240902890193.gif'),(2,1,'images/200905/goods_img/1_P_1240904370445.jpg','','images/200905/thumb_img/1_thumb_P_1240904370846.jpg','images/200905/source_img/1_P_1240904370647.jpg'),(3,1,'images/200905/goods_img/1_P_1240904371414.jpg','','images/200905/thumb_img/1_thumb_P_1240904371539.jpg','images/200905/source_img/1_P_1240904371019.jpg'),(4,1,'images/200905/goods_img/1_P_1240904371355.jpg','','images/200905/thumb_img/1_thumb_P_1240904371335.jpg','images/200905/source_img/1_P_1240904371118.jpg'),(5,1,'images/200905/goods_img/1_P_1240904371252.jpg','','images/200905/thumb_img/1_thumb_P_1240904371430.jpg','images/200905/source_img/1_P_1240904371758.jpg'),(6,3,'images/200905/goods_img/3_P_1241422082461.jpg','','images/200905/thumb_img/3_thumb_P_1241422082160.jpg','images/200905/source_img/3_P_1241422082816.jpg'),(7,4,'images/200905/goods_img/4_P_1241422402169.jpg','','images/200905/thumb_img/4_thumb_P_1241422402909.jpg','images/200905/source_img/4_P_1241422402362.jpg'),(8,5,'images/200905/goods_img/5_P_1241422518168.jpg','','images/200905/thumb_img/5_thumb_P_1241422518416.jpg','images/200905/source_img/5_P_1241422518314.jpg'),(9,7,'images/200905/goods_img/7_P_1241422785926.jpg','','images/200905/thumb_img/7_thumb_P_1241422785889.jpg','images/200905/source_img/7_P_1241422785172.jpg'),(10,8,'images/200905/goods_img/8_P_1241425513388.jpg','','images/200905/thumb_img/8_thumb_P_1241425513834.jpg','images/200905/source_img/8_P_1241425513810.jpg'),(11,8,'images/200905/goods_img/8_P_1241425891781.JPG','正面','images/200905/thumb_img/8_thumb_P_1241425891460.jpg','images/200905/source_img/8_P_1241425891321.JPG'),(12,8,'images/200905/goods_img/8_P_1241425891193.jpg','背面','images/200905/thumb_img/8_thumb_P_1241425892547.jpg','images/200905/source_img/8_P_1241425891588.jpg'),(13,8,'images/200905/goods_img/8_P_1241425892941.JPG','侧面','images/200905/thumb_img/8_thumb_P_1241425892356.jpg','images/200905/source_img/8_P_1241425892999.JPG'),(14,9,'images/200905/goods_img/9_P_1241511871575.jpg','','images/200905/thumb_img/9_thumb_P_1241511871787.jpg','images/200905/source_img/9_P_1241511871749.jpg'),(15,12,'images/200905/goods_img/12_P_1241965978060.jpg','','images/200905/thumb_img/12_thumb_P_1241965978845.jpg','images/200905/source_img/12_P_1241965978333.jpg'),(16,12,'images/200905/goods_img/12_P_1241966218046.jpg','','images/200905/thumb_img/12_thumb_P_1241966218835.jpg','images/200905/source_img/12_P_1241966218225.jpg'),(17,12,'images/200905/goods_img/12_P_1241966218391.jpg','','images/200905/thumb_img/12_thumb_P_1241966218843.jpg','images/200905/source_img/12_P_1241966218859.jpg'),(18,13,'images/200905/goods_img/13_P_1241967762510.jpg','','images/200905/thumb_img/13_thumb_P_1241967762510.jpg','images/200905/source_img/13_P_1241967762358.jpg'),(19,13,'images/200905/goods_img/13_P_1241968002659.jpg','','images/200905/thumb_img/13_thumb_P_1241968002193.jpg','images/200905/source_img/13_P_1241968002709.jpg'),(20,14,'images/200905/goods_img/14_P_1241968492774.jpg','','images/200905/thumb_img/14_thumb_P_1241968492168.jpg','images/200905/source_img/14_P_1241968492973.jpg'),(21,14,'images/200905/goods_img/14_P_1241968492721.jpg','','images/200905/thumb_img/14_thumb_P_1241968492995.jpg','images/200905/source_img/14_P_1241968492307.jpg'),(22,14,'images/200905/goods_img/14_P_1241968492279.jpg','','images/200905/thumb_img/14_thumb_P_1241968492674.jpg','images/200905/source_img/14_P_1241968492392.jpg'),(23,16,'images/200905/goods_img/16_P_1241968949498.jpg','','images/200905/thumb_img/16_thumb_P_1241968949965.jpg','images/200905/source_img/16_P_1241968949069.jpg'),(24,17,'images/200905/goods_img/17_P_1241969394354.jpg','','images/200905/thumb_img/17_thumb_P_1241969394537.jpg','images/200905/source_img/17_P_1241969394369.jpg'),(25,19,'images/200905/goods_img/19_P_1241970140820.jpg','','images/200905/thumb_img/19_thumb_P_1241970140527.jpg','images/200905/source_img/19_P_1241970139925.jpg'),(26,19,'images/200905/goods_img/19_P_1241970140600.jpg','','images/200905/thumb_img/19_thumb_P_1241970140229.jpg','images/200905/source_img/19_P_1241970140187.jpg'),(27,19,'images/200905/goods_img/19_P_1241970175007.jpg','','images/200905/thumb_img/19_thumb_P_1241970175086.jpg','images/200905/source_img/19_P_1241970175028.jpg'),(28,22,'images/200905/goods_img/22_P_1241971076061.jpg','','images/200905/thumb_img/22_thumb_P_1241971076595.jpg','images/200905/source_img/22_P_1241971076696.jpg'),(29,23,'images/200905/goods_img/23_P_1241971556661.jpg','','images/200905/thumb_img/23_thumb_P_1241971556920.jpg','images/200905/source_img/23_P_1241971556122.jpg'),(30,24,'images/200905/goods_img/24_P_1241971981420.jpg','','images/200905/thumb_img/24_thumb_P_1241971981834.jpg','images/200905/source_img/24_P_1241971981824.jpg'),(31,25,'images/200905/goods_img/25_P_1241972709888.jpg','','images/200905/thumb_img/25_thumb_P_1241972709070.jpg','images/200905/source_img/25_P_1241972709222.jpg'),(32,26,'images/200905/goods_img/26_P_1241972789025.jpg','','images/200905/thumb_img/26_thumb_P_1241972789061.jpg','images/200905/source_img/26_P_1241972789731.jpg'),(33,27,'images/200905/goods_img/27_P_1241972894128.jpg','','images/200905/thumb_img/27_thumb_P_1241972894915.jpg','images/200905/source_img/27_P_1241972894886.jpg'),(34,28,'images/200905/goods_img/28_P_1241972976099.jpg','','images/200905/thumb_img/28_thumb_P_1241972976277.jpg','images/200905/source_img/28_P_1241972976150.jpg'),(35,29,'images/200905/goods_img/29_P_1241973022876.jpg','','images/200905/thumb_img/29_thumb_P_1241973022886.jpg','images/200905/source_img/29_P_1241973022880.jpg'),(36,30,'images/200905/goods_img/30_P_1241973114554.jpg','','images/200905/thumb_img/30_thumb_P_1241973114166.jpg','images/200905/source_img/30_P_1241973114795.jpg'),(38,20,'images/200905/goods_img/20_P_1242106490582.jpg','','images/200905/thumb_img/20_thumb_P_1242106490836.jpg','images/200905/source_img/20_P_1242106490796.jpg'),(39,21,'images/200905/goods_img/21_P_1242109298519.jpg','','images/200905/thumb_img/21_thumb_P_1242109298525.jpg','images/200905/source_img/21_P_1242109298459.jpg'),(40,31,'images/200905/goods_img/31_P_1242110412503.jpg','','images/200905/thumb_img/31_thumb_P_1242110412614.jpg','images/200905/source_img/31_P_1242110412152.jpg'),(41,32,'images/200905/goods_img/32_P_1242110760641.jpg','','images/200905/thumb_img/32_thumb_P_1242110760997.jpg','images/200905/source_img/32_P_1242110760203.jpg'),(42,15,'images/200905/goods_img/15_P_1242973362276.jpg','','images/200905/thumb_img/15_thumb_P_1242973362611.jpg','images/200905/source_img/15_P_1242973362172.jpg'),(43,10,'images/200905/goods_img/10_P_1242973436620.jpg','','images/200905/thumb_img/10_thumb_P_1242973436219.jpg','images/200905/source_img/10_P_1242973436898.jpg'),(44,73,'images/201811/goods_img/73_P_1543477521392.jpg','','images/201811/thumb_img/73_thumb_P_1543477521037.jpg','images/201811/source_img/73_P_1543477521464.jpg'),(45,74,'images/201811/goods_img/74_P_1543477901763.jpg','','images/201811/thumb_img/74_thumb_P_1543477901275.jpg','images/201811/source_img/74_P_1543477901550.jpg'),(46,74,'images/201811/goods_img/74_P_1543477901021.jpg','ss','images/201811/thumb_img/74_thumb_P_1543477901788.jpg','images/201811/source_img/74_P_1543477901617.jpg'),(47,74,'images/201811/goods_img/74_P_1543477901546.jpg','bb','images/201811/thumb_img/74_thumb_P_1543477901806.jpg','images/201811/source_img/74_P_1543477901691.jpg');
/*!40000 ALTER TABLE `shop_goods_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_history`
--

DROP TABLE IF EXISTS `shop_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_history` (
  `h_id` int(10) NOT NULL AUTO_INCREMENT,
  `shop_price` varchar(20) DEFAULT NULL,
  `goods_name` varchar(30) DEFAULT NULL,
  `goods_thumb` varchar(200) DEFAULT NULL,
  `h_time` int(10) DEFAULT NULL,
  `uid` int(10) DEFAULT NULL,
  `goods_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`h_id`)
) ENGINE=MyISAM AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_history`
--

LOCK TABLES `shop_history` WRITE;
/*!40000 ALTER TABLE `shop_history` DISABLE KEYS */;
INSERT INTO `shop_history` VALUES (83,'5000.00','夏新冰箱','20181220\\295cda475c19b149202056663e59888a.jpg',1546429585,3,79),(73,'1999.00','微波炉','20181221\\db6ddf4d8dcb6470b18dffb3e775195d.jpg',1546429444,3,82),(74,'69.00','活塞耳机 三大升级 全新听歌神器','images/201605/thumb_img/52_thumb_G_1462951604146.jpg',1547120110,3,52),(82,'2999.00','电饭锅','20181221\\51749544adbf34757c010b3ca7a92f17.jpg',1546429588,3,83),(98,'2999.00','好冰箱','20181221\\6677bcd01b72c049d6bc023379d152d0.jpg',1547360378,3,81),(126,'3456.00','好电视','20181221\\6eb0a7acd3bbe3e71c8a35296cb65f90.jpg',1547857898,3,80),(84,'29.00','活塞耳机 标准版','images/201605/thumb_img/53_thumb_G_1462951586603.jpg',1546429582,3,53),(133,'3000.00','oppo 30','20190114\\8b03539315cc2cf8b7bdbc1ad7f51e9d_sl.jpg',1551254734,3,207),(100,'3010.00','苹果200','20190107\\d28fd954efd3b8562bc85c9f07372601_sl.jpg',1547369531,3,202),(87,'3010.00','小米20','20190108\\c1352c1af5b5f6aed58bf7f3501f0167_sl.jpg',1547100514,3,203),(88,'4999.00','哈苏相机','20181221\\ba9764144d54d6c59c8bc4b14e9b249e.jpg',1547512990,3,86),(103,'3010.00','oppo 30','20190109\\1e922d0ac5cc149b20c441e95d136b01_sl.jpg',1547444903,3,204),(95,'58.00','诺基亚N85原装充电器','images/200905/thumb_img/4_thumb_G_1241422402467.jpg',1548157472,3,4),(125,'4999.00','尼康相机','20181221\\702b04d435e02e693d710ee5ade54935.jpg',1547821908,3,85),(119,'3999.00','小米3','20181221\\e4c225d2bb09a73fb1fb9169669323ad.jpg',1548118362,3,84),(124,'3010.00','小米70','20190114\\4d2bae7fb790a539285dcafa96e1a5d6_sl.jpg',1547821821,3,206),(134,'3999.00','小米3','20181221\\e4c225d2bb09a73fb1fb9169669323ad.jpg',1549423296,7,84),(135,'3000.00','oppo 30','20190114\\8b03539315cc2cf8b7bdbc1ad7f51e9d_sl.jpg',1550199396,7,207);
/*!40000 ALTER TABLE `shop_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_order_detail`
--

DROP TABLE IF EXISTS `shop_order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_order_detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `goods_sn` varchar(20) DEFAULT NULL,
  `buy_number` int(11) DEFAULT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_price` decimal(10,2) DEFAULT NULL,
  `goods_img` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `express` varchar(30) DEFAULT NULL,
  `utime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_order_detail`
--

LOCK TABLES `shop_order_detail` WRITE;
/*!40000 ALTER TABLE `shop_order_detail` DISABLE KEYS */;
INSERT INTO `shop_order_detail` VALUES (1,1,1,207,'201902280606406',1,'oppo 30',3000.00,'20190114\\8b03539315cc2cf8b7bdbc1ad7f51e9d_sl.jpg',1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `shop_order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_order_goods`
--

DROP TABLE IF EXISTS `shop_order_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_order_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) unsigned DEFAULT '0',
  `goods_id` mediumint(8) unsigned DEFAULT '0',
  `goods_name` varchar(120) DEFAULT '',
  `goods_sn` varchar(60) DEFAULT '',
  `product_id` mediumint(8) unsigned DEFAULT '0',
  `buy_number` smallint(5) unsigned DEFAULT '1',
  `shop_price` decimal(10,2) DEFAULT '0.00',
  `attr_values` text,
  PRIMARY KEY (`rec_id`),
  KEY `order_id` (`order_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_order_goods`
--

LOCK TABLES `shop_order_goods` WRITE;
/*!40000 ALTER TABLE `shop_order_goods` DISABLE KEYS */;
INSERT INTO `shop_order_goods` VALUES (6,6,50,'小米移动电源16000mAh','ECS000050',0,1,122.55,''),(5,5,37,'红米Note3 钢化玻璃膜(0.33mm) ','ECS000037',0,1,18.05,''),(4,4,60,'指环式防滑手机支架','ECS000060',0,1,11.88,''),(7,7,63,'自拍杆','ECS000063',0,1,46.55,''),(8,8,74,'XS 苹果','ECS000074',18,1,9500.00,'颜色:金色[-500] \n内存:64G \n'),(9,8,74,'XS 苹果','ECS000074',24,1,10500.00,'颜色:黑色 \n内存:128G[500] \n'),(34,73,206,'小米70','xz20190114092838000206',233,1,3010.00,'颜色:黑色 内存:128G [+400]\r\n'),(33,73,85,'尼康相机','',0,2,9998.00,''),(35,74,207,'oppo 30','xz20190114155827000207',235,1,3000.00,'颜色:白色 内存:64G [+0]\r\n'),(36,74,207,'oppo 30','xz20190114155827000207',238,1,3000.00,'颜色:金色 内存:64G [+100]\r\n'),(37,75,207,'oppo 30','xz20190114155827000207',235,2,6000.00,'颜色:白色 内存:64G [+0]\r\n'),(38,76,85,'尼康相机','',0,2,9998.00,''),(39,76,4,'诺基亚N85原装充电器','ECS000004',0,2,116.00,''),(40,77,4,'诺基亚N85原装充电器','ECS000004',0,2,116.00,''),(41,78,4,'诺基亚N85原装充电器','ECS000004',0,2,116.00,''),(42,79,85,'尼康相机','',0,1,4999.00,''),(43,80,86,'哈苏相机','',0,1,4999.00,''),(44,80,206,'小米70','xz20190114092838000206',226,1,3010.00,'颜色:白色 内存:64G [+0]\r\n'),(45,80,206,'小米70','xz20190114092838000206',232,1,3010.00,'颜色:黑色 内存:64G [+300]\r\n'),(46,81,207,'oppo 30','xz20190114155827000207',243,2,6000.00,'颜色:黑色 内存:256G [+600]\r\n'),(47,82,86,'哈苏相机','',0,1,4999.00,''),(48,82,206,'小米70','xz20190114092838000206',233,1,3010.00,'颜色:黑色 内存:128G [+400]\r\n');
/*!40000 ALTER TABLE `shop_order_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_order_info`
--

DROP TABLE IF EXISTS `shop_order_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_order_info` (
  `order_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(20) NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `order_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pay_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `consignee` varchar(60) NOT NULL DEFAULT '',
  `country` smallint(5) unsigned NOT NULL DEFAULT '0',
  `province` smallint(5) unsigned NOT NULL DEFAULT '0',
  `city` smallint(5) unsigned NOT NULL DEFAULT '0',
  `district` smallint(5) unsigned NOT NULL DEFAULT '0',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zipcode` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `mobile` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `best_time` varchar(120) NOT NULL DEFAULT '',
  `sign_building` varchar(120) NOT NULL DEFAULT '',
  `postscript` varchar(255) NOT NULL DEFAULT '' COMMENT '订单附言',
  `shipping_id` tinyint(3) NOT NULL DEFAULT '0',
  `shipping_name` varchar(120) NOT NULL DEFAULT '',
  `pay_id` tinyint(3) NOT NULL DEFAULT '0',
  `pay_name` varchar(120) NOT NULL DEFAULT '',
  `goods_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `money_paid` decimal(10,2) NOT NULL DEFAULT '0.00',
  `order_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `confirm_time` int(10) unsigned NOT NULL DEFAULT '0',
  `pay_time` int(10) unsigned NOT NULL DEFAULT '0',
  `shipping_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `order_sn` (`order_sn`),
  KEY `user_id` (`user_id`),
  KEY `order_status` (`order_status`),
  KEY `shipping_status` (`shipping_status`),
  KEY `pay_status` (`pay_status`),
  KEY `shipping_id` (`shipping_id`),
  KEY `pay_id` (`pay_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_order_info`
--

LOCK TABLES `shop_order_info` WRITE;
/*!40000 ALTER TABLE `shop_order_info` DISABLE KEYS */;
INSERT INTO `shop_order_info` VALUES (1,'201902280606406',1,0,0,0,'薛泽',0,0,0,0,'山西省运城市夏县','','','13994866054','','','','',0,'',0,'',3000.00,0.00,3001.00,1551334061,0,0,0);
/*!40000 ALTER TABLE `shop_order_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_payment`
--

DROP TABLE IF EXISTS `shop_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_payment` (
  `pay_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `pay_code` varchar(20) NOT NULL DEFAULT '',
  `pay_name` varchar(120) NOT NULL DEFAULT '',
  `pay_fee` varchar(10) NOT NULL DEFAULT '0',
  `pay_desc` text NOT NULL,
  `pay_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pay_config` text NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_online` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pay_id`),
  UNIQUE KEY `pay_code` (`pay_code`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_payment`
--

LOCK TABLES `shop_payment` WRITE;
/*!40000 ALTER TABLE `shop_payment` DISABLE KEYS */;
INSERT INTO `shop_payment` VALUES (1,'balance','余额支付','0','使用帐户余额支付。只有会员才能使用，通过设置信用额度，可以透支。',0,'a:0:{}',1,0,1),(2,'bank','支付宝','0','银行名称\n收款人信息：全称 ××× ；帐号或地址 ××× ；开户行 ×××。\n注意事项：办理电汇时，请在电汇单“汇款用途”一栏处注明您的订单号。',0,'a:0:{}',1,0,0),(3,'cod','货到付款','0','开通城市：×××\n货到付款区域：×××',0,'a:0:{}',1,1,0);
/*!40000 ALTER TABLE `shop_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_photo`
--

DROP TABLE IF EXISTS `shop_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_photo` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `img_url` varchar(255) DEFAULT NULL,
  `img_desc` varchar(255) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_photo`
--

LOCK TABLES `shop_photo` WRITE;
/*!40000 ALTER TABLE `shop_photo` DISABLE KEYS */;
INSERT INTO `shop_photo` VALUES (23,'20190107/5c332c29748d4.jpg','图片1',202),(24,'20190107/5c332c2975f5d.jpg','图片2',202),(25,'//www.baidu.com/img/bd_logo1.png?qua=high','图片3',202),(26,'20190108/5c34284574f45.jpg','图片1',203),(27,'//www.baidu.com/img/bd_logo1.png?qua=high','图片2',203),(28,'20190109/5c35489cb6f12.jpg','图片1',204),(29,'20190109/5c35489cb87d4.jpg','图片2',204),(30,'20190109/5c35489cb96b3.jpg','图片3',204),(31,'20190109/5c35489cbabe3.jpg','图片4',204),(32,'20190114/5c3be5c69d724.jpg','',206),(33,'20190114/5c3be5c69e6c1.jpg','',206),(34,'20190114/5c3be5c69f64c.jpg','',206),(35,'20190114/5c3c4123957a4.jpg','',207),(36,'20190114/5c3c412396432.jpg','',207),(37,'20190114/5c3c4123972f8.jpg','',207);
/*!40000 ALTER TABLE `shop_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_product`
--

DROP TABLE IF EXISTS `shop_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) DEFAULT NULL,
  `product_num` int(11) DEFAULT NULL,
  `product_sn` varchar(255) COLLATE utf8_sinhala_ci DEFAULT NULL,
  `goods_attr_id` varchar(11) COLLATE utf8_sinhala_ci DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=244 DEFAULT CHARSET=utf8 COLLATE=utf8_sinhala_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_product`
--

LOCK TABLES `shop_product` WRITE;
/*!40000 ALTER TABLE `shop_product` DISABLE KEYS */;
INSERT INTO `shop_product` VALUES (201,202,10,'xz20190107183833000202_201','603,606'),(202,202,10,'xz20190107183833000202_202','603,607'),(203,202,10,'xz20190107183833000202_203','603,608'),(204,202,10,'xz20190107183833000202_204','604,606'),(205,202,10,'xz20190107183833000202_205','604,607'),(206,202,10,'xz20190107183833000202_206','604,608'),(207,202,10,'xz20190107183833000202_207','605,606'),(208,202,10,'xz20190107183833000202_208','605,607'),(209,202,10,'xz20190107183833000202_209','605,608'),(210,203,10,'xz20190108123413000203_210','614,617'),(211,203,10,'xz20190108123413000203_211','614,618'),(212,203,10,'xz20190108123413000203_212','614,619'),(213,203,10,'xz20190108123413000203_213','615,617'),(214,203,10,'xz20190108123413000203_214','615,618'),(215,203,10,'xz20190108123413000203_215','615,619'),(216,203,10,'xz20190108123413000203_216','616,617'),(217,203,10,'xz20190108123413000203_217','616,618'),(218,203,10,'xz20190108123413000203_218','616,619'),(219,204,10,'xz20190109090428000204_219','631,634'),(220,204,10,'xz20190109090428000204_220','631,635'),(221,204,10,'xz20190109090428000204_221','631,636'),(222,204,10,'xz20190109090428000204_222','632,634'),(223,204,20,'xz20190109090428000204_223','632,635'),(224,204,10,'xz20190109090428000204_224','632,636'),(225,204,10,'xz20190109090428000204_225','633,634'),(226,206,100,'xz20190114092838000206_226','643,646'),(227,206,100,'xz20190114092838000206_227','643,647'),(228,206,100,'xz20190114092838000206_228','643,648'),(229,206,100,'xz20190114092838000206_229','644,646'),(230,206,100,'xz20190114092838000206_230','644,647'),(231,206,100,'xz20190114092838000206_231','644,648'),(232,206,100,'xz20190114092838000206_232','645,646'),(233,206,100,'xz20190114092838000206_233','645,647'),(234,206,100,'xz20190114092838000206_234','645,648'),(235,207,100,'xz20190114155827000207_235','654,657'),(236,207,100,'xz20190114155827000207_236','654,658'),(237,207,100,'xz20190114155827000207_237','654,659'),(238,207,100,'xz20190114155827000207_238','655,657'),(239,207,100,'xz20190114155827000207_239','655,658'),(240,207,100,'xz20190114155827000207_240','655,659'),(241,207,50,'xz20190114155827000207_241','656,657'),(242,207,100,'xz20190114155827000207_242','656,658'),(243,207,100,'xz20190114155827000207_243','656,659');
/*!40000 ALTER TABLE `shop_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_region`
--

DROP TABLE IF EXISTS `shop_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_region` (
  `region_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `region_name` varchar(120) NOT NULL DEFAULT '',
  `region_type` tinyint(1) NOT NULL DEFAULT '2',
  `agency_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`region_id`),
  KEY `parent_id` (`parent_id`),
  KEY `region_type` (`region_type`),
  KEY `agency_id` (`agency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4044 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_region`
--

LOCK TABLES `shop_region` WRITE;
/*!40000 ALTER TABLE `shop_region` DISABLE KEYS */;
INSERT INTO `shop_region` VALUES (1,0,'中国',0,0),(2,1,'北京',1,0),(3,1,'天津',1,0),(4,1,'河北省',1,0),(5,1,'山西省',1,0),(6,1,'内蒙古自治区',1,0),(7,1,'辽宁省',1,0),(8,1,'吉林省',1,0),(9,1,'黑龙江省',1,0),(10,1,'上海',1,0),(11,1,'江苏省',1,0),(12,1,'浙江省',1,0),(13,1,'安徽省',1,0),(14,1,'福建省',1,0),(15,1,'江西省',1,0),(16,1,'山东省',1,0),(17,1,'河南省',1,0),(18,1,'湖北省',1,0),(19,1,'湖南省',1,0),(20,1,'广东省',1,0),(21,1,'广西壮族自治区',1,0),(22,1,'海南省',1,0),(23,1,'重庆',1,0),(24,1,'四川省',1,0),(25,1,'贵州省',1,0),(26,1,'云南省',1,0),(27,1,'西藏自治区',1,0),(28,1,'陕西省',1,0),(29,1,'甘肃省',1,0),(30,1,'青海省',1,0),(31,1,'宁夏回族自治区',1,0),(32,1,'新疆维吾尔自治区',1,0),(33,1,'台湾',1,0),(34,1,'香港特别行政区',1,0),(35,1,'澳门特别行政区',1,0),(36,1,'海外',1,0),(37,2,'北京市',2,0),(38,3,'天津市',2,0),(39,4,'石家庄市',2,0),(40,4,'唐山市',2,0),(41,4,'秦皇岛市',2,0),(42,4,'邯郸市',2,0),(43,4,'邢台市',2,0),(44,4,'保定市',2,0),(45,4,'张家口市',2,0),(46,4,'承德市',2,0),(47,4,'沧州市',2,0),(48,4,'廊坊市',2,0),(49,4,'衡水市',2,0),(50,5,'太原市',2,0),(51,5,'大同市',2,0),(52,5,'阳泉市',2,0),(53,5,'长治市',2,0),(54,5,'晋城市',2,0),(55,5,'朔州市',2,0),(56,5,'晋中市',2,0),(57,5,'运城市',2,0),(58,5,'忻州市',2,0),(59,5,'临汾市',2,0),(60,5,'吕梁市',2,0),(61,6,'呼和浩特市',2,0),(62,6,'包头市',2,0),(63,6,'乌海市',2,0),(64,6,'赤峰市',2,0),(65,6,'通辽市',2,0),(66,6,'鄂尔多斯市',2,0),(67,6,'呼伦贝尔市',2,0),(68,6,'巴彦淖尔市',2,0),(69,6,'乌兰察布市',2,0),(70,6,'兴安盟',2,0),(71,6,'锡林郭勒盟',2,0),(72,6,'阿拉善盟',2,0),(73,7,'沈阳市',2,0),(74,7,'大连市',2,0),(75,7,'鞍山市',2,0),(76,7,'抚顺市',2,0),(77,7,'本溪市',2,0),(78,7,'丹东市',2,0),(79,7,'锦州市',2,0),(80,7,'营口市',2,0),(81,7,'阜新市',2,0),(82,7,'辽阳市',2,0),(83,7,'盘锦市',2,0),(84,7,'铁岭市',2,0),(85,7,'朝阳市',2,0),(86,7,'葫芦岛市',2,0),(87,8,'长春市',2,0),(88,8,'吉林市',2,0),(89,8,'四平市',2,0),(90,8,'辽源市',2,0),(91,8,'通化市',2,0),(92,8,'白山市',2,0),(93,8,'松原市',2,0),(94,8,'白城市',2,0),(95,8,'延边朝鲜族自治州',2,0),(96,9,'哈尔滨市',2,0),(97,9,'齐齐哈尔市',2,0),(98,9,'鸡西市',2,0),(99,9,'鹤岗市',2,0),(100,9,'双鸭山市',2,0),(101,9,'大庆市',2,0),(102,9,'伊春市',2,0),(103,9,'佳木斯市',2,0),(104,9,'七台河市',2,0),(105,9,'牡丹江市',2,0),(106,9,'黑河市',2,0),(107,9,'绥化市',2,0),(108,9,'大兴安岭地区',2,0),(109,10,'上海市',2,0),(110,11,'南京市',2,0),(111,11,'无锡市',2,0),(112,11,'徐州市',2,0),(113,11,'常州市',2,0),(114,11,'苏州市',2,0),(115,11,'南通市',2,0),(116,11,'连云港市',2,0),(117,11,'淮安市',2,0),(118,11,'盐城市',2,0),(119,11,'扬州市',2,0),(120,11,'镇江市',2,0),(121,11,'泰州市',2,0),(122,11,'宿迁市',2,0),(123,12,'杭州市',2,0),(124,12,'宁波市',2,0),(125,12,'温州市',2,0),(126,12,'嘉兴市',2,0),(127,12,'湖州市',2,0),(128,12,'绍兴市',2,0),(129,12,'金华市',2,0),(130,12,'衢州市',2,0),(131,12,'舟山市',2,0),(132,12,'台州市',2,0),(133,12,'丽水市',2,0),(134,13,'合肥市',2,0),(135,13,'芜湖市',2,0),(136,13,'蚌埠市',2,0),(137,13,'淮南市',2,0),(138,13,'马鞍山市',2,0),(139,13,'淮北市',2,0),(140,13,'铜陵市',2,0),(141,13,'安庆市',2,0),(142,13,'黄山市',2,0),(143,13,'滁州市',2,0),(144,13,'阜阳市',2,0),(145,13,'宿州市',2,0),(146,13,'六安市',2,0),(147,13,'亳州市',2,0),(148,13,'池州市',2,0),(149,13,'宣城市',2,0),(150,14,'福州市',2,0),(151,14,'厦门市',2,0),(152,14,'莆田市',2,0),(153,14,'三明市',2,0),(154,14,'泉州市',2,0),(155,14,'漳州市',2,0),(156,14,'南平市',2,0),(157,14,'龙岩市',2,0),(158,14,'宁德市',2,0),(159,15,'南昌市',2,0),(160,15,'景德镇市',2,0),(161,15,'萍乡市',2,0),(162,15,'九江市',2,0),(163,15,'新余市',2,0),(164,15,'鹰潭市',2,0),(165,15,'赣州市',2,0),(166,15,'吉安市',2,0),(167,15,'宜春市',2,0),(168,15,'抚州市',2,0),(169,15,'上饶市',2,0),(170,16,'济南市',2,0),(171,16,'青岛市',2,0),(172,16,'淄博市',2,0),(173,16,'枣庄市',2,0),(174,16,'东营市',2,0),(175,16,'烟台市',2,0),(176,16,'潍坊市',2,0),(177,16,'济宁市',2,0),(178,16,'泰安市',2,0),(179,16,'威海市',2,0),(180,16,'日照市',2,0),(181,16,'莱芜市',2,0),(182,16,'临沂市',2,0),(183,16,'德州市',2,0),(184,16,'聊城市',2,0),(185,16,'滨州市',2,0),(186,16,'菏泽市',2,0),(187,17,'郑州市',2,0),(188,17,'开封市',2,0),(189,17,'洛阳市',2,0),(190,17,'平顶山市',2,0),(191,17,'安阳市',2,0),(192,17,'鹤壁市',2,0),(193,17,'新乡市',2,0),(194,17,'焦作市',2,0),(195,17,'濮阳市',2,0),(196,17,'许昌市',2,0),(197,17,'漯河市',2,0),(198,17,'三门峡市',2,0),(199,17,'南阳市',2,0),(200,17,'商丘市',2,0),(201,17,'信阳市',2,0),(202,17,'周口市',2,0),(203,17,'驻马店市',2,0),(204,18,'武汉市',2,0),(205,18,'黄石市',2,0),(206,18,'十堰市',2,0),(207,18,'宜昌市',2,0),(208,18,'襄阳市',2,0),(209,18,'鄂州市',2,0),(210,18,'荆门市',2,0),(211,18,'孝感市',2,0),(212,18,'荆州市',2,0),(213,18,'黄冈市',2,0),(214,18,'咸宁市',2,0),(215,18,'随州市',2,0),(216,18,'恩施土家族苗族自治州',2,0),(217,19,'长沙市',2,0),(218,19,'株洲市',2,0),(219,19,'湘潭市',2,0),(220,19,'衡阳市',2,0),(221,19,'邵阳市',2,0),(222,19,'岳阳市',2,0),(223,19,'常德市',2,0),(224,19,'张家界市',2,0),(225,19,'益阳市',2,0),(226,19,'郴州市',2,0),(227,19,'永州市',2,0),(228,19,'怀化市',2,0),(229,19,'娄底市',2,0),(230,19,'湘西土家族苗族自治州',2,0),(231,20,'广州市',2,0),(232,20,'韶关市',2,0),(233,20,'深圳市',2,0),(234,20,'珠海市',2,0),(235,20,'汕头市',2,0),(236,20,'佛山市',2,0),(237,20,'江门市',2,0),(238,20,'湛江市',2,0),(239,20,'茂名市',2,0),(240,20,'肇庆市',2,0),(241,20,'惠州市',2,0),(242,20,'梅州市',2,0),(243,20,'汕尾市',2,0),(244,20,'河源市',2,0),(245,20,'阳江市',2,0),(246,20,'清远市',2,0),(247,20,'东莞市',2,0),(248,20,'中山市',2,0),(249,20,'东沙群岛',2,0),(250,20,'潮州市',2,0),(251,20,'揭阳市',2,0),(252,20,'云浮市',2,0),(253,21,'南宁市',2,0),(254,21,'柳州市',2,0),(255,21,'桂林市',2,0),(256,21,'梧州市',2,0),(257,21,'北海市',2,0),(258,21,'防城港市',2,0),(259,21,'钦州市',2,0),(260,21,'贵港市',2,0),(261,21,'玉林市',2,0),(262,21,'百色市',2,0),(263,21,'贺州市',2,0),(264,21,'河池市',2,0),(265,21,'来宾市',2,0),(266,21,'崇左市',2,0),(267,22,'海口市',2,0),(268,22,'三亚市',2,0),(269,22,'三沙市',2,0),(270,23,'重庆市',2,0),(271,24,'成都市',2,0),(272,24,'自贡市',2,0),(273,24,'攀枝花市',2,0),(274,24,'泸州市',2,0),(275,24,'德阳市',2,0),(276,24,'绵阳市',2,0),(277,24,'广元市',2,0),(278,24,'遂宁市',2,0),(279,24,'内江市',2,0),(280,24,'乐山市',2,0),(281,24,'南充市',2,0),(282,24,'眉山市',2,0),(283,24,'宜宾市',2,0),(284,24,'广安市',2,0),(285,24,'达州市',2,0),(286,24,'雅安市',2,0),(287,24,'巴中市',2,0),(288,24,'资阳市',2,0),(289,24,'阿坝藏族羌族自治州',2,0),(290,24,'甘孜藏族自治州',2,0),(291,24,'凉山彝族自治州',2,0),(292,25,'贵阳市',2,0),(293,25,'六盘水市',2,0),(294,25,'遵义市',2,0),(295,25,'安顺市',2,0),(296,25,'铜仁市',2,0),(297,25,'黔西南布依族苗族自治州',2,0),(298,25,'毕节市',2,0),(299,25,'黔东南苗族侗族自治州',2,0),(300,25,'黔南布依族苗族自治州',2,0),(301,26,'昆明市',2,0),(302,26,'曲靖市',2,0),(303,26,'玉溪市',2,0),(304,26,'保山市',2,0),(305,26,'昭通市',2,0),(306,26,'丽江市',2,0),(307,26,'普洱市',2,0),(308,26,'临沧市',2,0),(309,26,'楚雄彝族自治州',2,0),(310,26,'红河哈尼族彝族自治州',2,0),(311,26,'文山壮族苗族自治州',2,0),(312,26,'西双版纳傣族自治州',2,0),(313,26,'大理白族自治州',2,0),(314,26,'德宏傣族景颇族自治州',2,0),(315,26,'怒江傈僳族自治州',2,0),(316,26,'迪庆藏族自治州',2,0),(317,27,'拉萨市',2,0),(318,27,'昌都市',2,0),(319,27,'山南地区',2,0),(320,27,'日喀则市',2,0),(321,27,'那曲地区',2,0),(322,27,'阿里地区',2,0),(323,27,'林芝市',2,0),(324,28,'西安市',2,0),(325,28,'铜川市',2,0),(326,28,'宝鸡市',2,0),(327,28,'咸阳市',2,0),(328,28,'渭南市',2,0),(329,28,'延安市',2,0),(330,28,'汉中市',2,0),(331,28,'榆林市',2,0),(332,28,'安康市',2,0),(333,28,'商洛市',2,0),(334,29,'兰州市',2,0),(335,29,'嘉峪关市',2,0),(336,29,'金昌市',2,0),(337,29,'白银市',2,0),(338,29,'天水市',2,0),(339,29,'武威市',2,0),(340,29,'张掖市',2,0),(341,29,'平凉市',2,0),(342,29,'酒泉市',2,0),(343,29,'庆阳市',2,0),(344,29,'定西市',2,0),(345,29,'陇南市',2,0),(346,29,'临夏回族自治州',2,0),(347,29,'甘南藏族自治州',2,0),(348,30,'西宁市',2,0),(349,30,'海东市',2,0),(350,30,'海北藏族自治州',2,0),(351,30,'黄南藏族自治州',2,0),(352,30,'海南藏族自治州',2,0),(353,30,'果洛藏族自治州',2,0),(354,30,'玉树藏族自治州',2,0),(355,30,'海西蒙古族藏族自治州',2,0),(356,31,'银川市',2,0),(357,31,'石嘴山市',2,0),(358,31,'吴忠市',2,0),(359,31,'固原市',2,0),(360,31,'中卫市',2,0),(361,32,'乌鲁木齐市',2,0),(362,32,'克拉玛依市',2,0),(363,32,'吐鲁番市',2,0),(364,32,'哈密地区',2,0),(365,32,'昌吉回族自治州',2,0),(366,32,'博尔塔拉蒙古自治州',2,0),(367,32,'巴音郭楞蒙古自治州',2,0),(368,32,'阿克苏地区',2,0),(369,32,'克孜勒苏柯尔克孜自治州',2,0),(370,32,'喀什地区',2,0),(371,32,'和田地区',2,0),(372,32,'伊犁哈萨克自治州',2,0),(373,32,'塔城地区',2,0),(374,32,'阿勒泰地区',2,0),(375,33,'台北市',2,0),(376,33,'高雄市',2,0),(377,33,'台南市',2,0),(378,33,'台中市',2,0),(379,33,'金门县',2,0),(380,33,'南投县',2,0),(381,33,'基隆市',2,0),(382,33,'新竹市',2,0),(383,33,'嘉义市',2,0),(384,33,'新北市',2,0),(385,33,'宜兰县',2,0),(386,33,'新竹县',2,0),(387,33,'桃园县',2,0),(388,33,'苗栗县',2,0),(389,33,'彰化县',2,0),(390,33,'嘉义县',2,0),(391,33,'云林县',2,0),(392,33,'屏东县',2,0),(393,33,'台东县',2,0),(394,33,'花莲县',2,0),(395,33,'澎湖县',2,0),(396,33,'连江县',2,0),(397,34,'香港岛',2,0),(398,34,'九龙',2,0),(399,34,'新界',2,0),(400,35,'澳门半岛',2,0),(401,35,'离岛',2,0),(402,36,'海外',2,0),(403,37,'东城区',3,0),(404,37,'西城区',3,0),(405,37,'崇文区',3,0),(406,37,'宣武区',3,0),(407,37,'朝阳区',3,0),(408,37,'丰台区',3,0),(409,37,'石景山区',3,0),(410,37,'海淀区',3,0),(411,37,'门头沟区',3,0),(412,37,'房山区',3,0),(413,37,'通州区',3,0),(414,37,'顺义区',3,0),(415,37,'昌平区',3,0),(416,37,'大兴区',3,0),(417,37,'怀柔区',3,0),(418,37,'平谷区',3,0),(419,37,'密云县',3,0),(420,37,'延庆县',3,0),(421,37,'其它区',3,0),(422,38,'和平区',3,0),(423,38,'河东区',3,0),(424,38,'河西区',3,0),(425,38,'南开区',3,0),(426,38,'河北区',3,0),(427,38,'红桥区',3,0),(428,38,'塘沽区',3,0),(429,38,'汉沽区',3,0),(430,38,'大港区',3,0),(431,38,'东丽区',3,0),(432,38,'西青区',3,0),(433,38,'津南区',3,0),(434,38,'北辰区',3,0),(435,38,'武清区',3,0),(436,38,'宝坻区',3,0),(437,38,'滨海新区',3,0),(438,38,'宁河县',3,0),(439,38,'静海县',3,0),(440,38,'蓟县',3,0),(441,38,'其它区',3,0),(442,39,'长安区',3,0),(443,39,'桥东区',3,0),(444,39,'桥西区',3,0),(445,39,'新华区',3,0),(446,39,'井陉矿区',3,0),(447,39,'裕华区',3,0),(448,39,'井陉县',3,0),(449,39,'正定县',3,0),(450,39,'栾城区',3,0),(451,39,'行唐县',3,0),(452,39,'灵寿县',3,0),(453,39,'高邑县',3,0),(454,39,'深泽县',3,0),(455,39,'赞皇县',3,0),(456,39,'无极县',3,0),(457,39,'平山县',3,0),(458,39,'元氏县',3,0),(459,39,'赵县',3,0),(460,39,'辛集市',3,0),(461,39,'藁城区',3,0),(462,39,'晋州市',3,0),(463,39,'新乐市',3,0),(464,39,'鹿泉区',3,0),(465,39,'其它区',3,0),(466,40,'路南区',3,0),(467,40,'路北区',3,0),(468,40,'古冶区',3,0),(469,40,'开平区',3,0),(470,40,'丰南区',3,0),(471,40,'丰润区',3,0),(472,40,'滦县',3,0),(473,40,'滦南县',3,0),(474,40,'乐亭县',3,0),(475,40,'迁西县',3,0),(476,40,'玉田县',3,0),(477,40,'曹妃甸区',3,0),(478,40,'遵化市',3,0),(479,40,'迁安市',3,0),(480,40,'其它区',3,0),(481,41,'海港区',3,0),(482,41,'山海关区',3,0),(483,41,'北戴河区',3,0),(484,41,'青龙满族自治县',3,0),(485,41,'昌黎县',3,0),(486,41,'抚宁县',3,0),(487,41,'卢龙县',3,0),(488,41,'其它区',3,0),(489,41,'经济技术开发区',3,0),(490,42,'邯山区',3,0),(491,42,'丛台区',3,0),(492,42,'复兴区',3,0),(493,42,'峰峰矿区',3,0),(494,42,'邯郸县',3,0),(495,42,'临漳县',3,0),(496,42,'成安县',3,0),(497,42,'大名县',3,0),(498,42,'涉县',3,0),(499,42,'磁县',3,0),(500,42,'肥乡县',3,0),(501,42,'永年县',3,0),(502,42,'邱县',3,0),(503,42,'鸡泽县',3,0),(504,42,'广平县',3,0),(505,42,'馆陶县',3,0),(506,42,'魏县',3,0),(507,42,'曲周县',3,0),(508,42,'武安市',3,0),(509,42,'其它区',3,0),(510,43,'桥东区',3,0),(511,43,'桥西区',3,0),(512,43,'邢台县',3,0),(513,43,'临城县',3,0),(514,43,'内丘县',3,0),(515,43,'柏乡县',3,0),(516,43,'隆尧县',3,0),(517,43,'任县',3,0),(518,43,'南和县',3,0),(519,43,'宁晋县',3,0),(520,43,'巨鹿县',3,0),(521,43,'新河县',3,0),(522,43,'广宗县',3,0),(523,43,'平乡县',3,0),(524,43,'威县',3,0),(525,43,'清河县',3,0),(526,43,'临西县',3,0),(527,43,'南宫市',3,0),(528,43,'沙河市',3,0),(529,43,'其它区',3,0),(530,44,'新市区',3,0),(531,44,'北市区',3,0),(532,44,'南市区',3,0),(533,44,'满城县',3,0),(534,44,'清苑县',3,0),(535,44,'涞水县',3,0),(536,44,'阜平县',3,0),(537,44,'徐水县',3,0),(538,44,'定兴县',3,0),(539,44,'唐县',3,0),(540,44,'高阳县',3,0),(541,44,'容城县',3,0),(542,44,'涞源县',3,0),(543,44,'望都县',3,0),(544,44,'安新县',3,0),(545,44,'易县',3,0),(546,44,'曲阳县',3,0),(547,44,'蠡县',3,0),(548,44,'顺平县',3,0),(549,44,'博野县',3,0),(550,44,'雄县',3,0),(551,44,'涿州市',3,0),(552,44,'定州市',3,0),(553,44,'安国市',3,0),(554,44,'高碑店市',3,0),(555,44,'高开区',3,0),(556,44,'其它区',3,0),(557,45,'桥东区',3,0),(558,45,'桥西区',3,0),(559,45,'宣化区',3,0),(560,45,'下花园区',3,0),(561,45,'宣化县',3,0),(562,45,'张北县',3,0),(563,45,'康保县',3,0),(564,45,'沽源县',3,0),(565,45,'尚义县',3,0),(566,45,'蔚县',3,0),(567,45,'阳原县',3,0),(568,45,'怀安县',3,0),(569,45,'万全县',3,0),(570,45,'怀来县',3,0),(571,45,'涿鹿县',3,0),(572,45,'赤城县',3,0),(573,45,'崇礼县',3,0),(574,45,'其它区',3,0),(575,46,'双桥区',3,0),(576,46,'双滦区',3,0),(577,46,'鹰手营子矿区',3,0),(578,46,'承德县',3,0),(579,46,'兴隆县',3,0),(580,46,'平泉县',3,0),(581,46,'滦平县',3,0),(582,46,'隆化县',3,0),(583,46,'丰宁满族自治县',3,0),(584,46,'宽城满族自治县',3,0),(585,46,'围场满族蒙古族自治县',3,0),(586,46,'其它区',3,0),(587,47,'新华区',3,0),(588,47,'运河区',3,0),(589,47,'沧县',3,0),(590,47,'青县',3,0),(591,47,'东光县',3,0),(592,47,'海兴县',3,0),(593,47,'盐山县',3,0),(594,47,'肃宁县',3,0),(595,47,'南皮县',3,0),(596,47,'吴桥县',3,0),(597,47,'献县',3,0),(598,47,'孟村回族自治县',3,0),(599,47,'泊头市',3,0),(600,47,'任丘市',3,0),(601,47,'黄骅市',3,0),(602,47,'河间市',3,0),(603,47,'其它区',3,0),(604,48,'安次区',3,0),(605,48,'广阳区',3,0),(606,48,'固安县',3,0),(607,48,'永清县',3,0),(608,48,'香河县',3,0),(609,48,'大城县',3,0),(610,48,'文安县',3,0),(611,48,'大厂回族自治县',3,0),(612,48,'开发区',3,0),(613,48,'燕郊经济技术开发区',3,0),(614,48,'霸州市',3,0),(615,48,'三河市',3,0),(616,48,'其它区',3,0),(617,49,'桃城区',3,0),(618,49,'枣强县',3,0),(619,49,'武邑县',3,0),(620,49,'武强县',3,0),(621,49,'饶阳县',3,0),(622,49,'安平县',3,0),(623,49,'故城县',3,0),(624,49,'景县',3,0),(625,49,'阜城县',3,0),(626,49,'冀州市',3,0),(627,49,'深州市',3,0),(628,49,'其它区',3,0),(629,50,'小店区',3,0),(630,50,'迎泽区',3,0),(631,50,'杏花岭区',3,0),(632,50,'尖草坪区',3,0),(633,50,'万柏林区',3,0),(634,50,'晋源区',3,0),(635,50,'清徐县',3,0),(636,50,'阳曲县',3,0),(637,50,'娄烦县',3,0),(638,50,'古交市',3,0),(639,50,'其它区',3,0),(640,51,'城区',3,0),(641,51,'矿区',3,0),(642,51,'南郊区',3,0),(643,51,'新荣区',3,0),(644,51,'阳高县',3,0),(645,51,'天镇县',3,0),(646,51,'广灵县',3,0),(647,51,'灵丘县',3,0),(648,51,'浑源县',3,0),(649,51,'左云县',3,0),(650,51,'大同县',3,0),(651,51,'其它区',3,0),(652,52,'城区',3,0),(653,52,'矿区',3,0),(654,52,'郊区',3,0),(655,52,'平定县',3,0),(656,52,'盂县',3,0),(657,52,'其它区',3,0),(658,53,'长治县',3,0),(659,53,'襄垣县',3,0),(660,53,'屯留县',3,0),(661,53,'平顺县',3,0),(662,53,'黎城县',3,0),(663,53,'壶关县',3,0),(664,53,'长子县',3,0),(665,53,'武乡县',3,0),(666,53,'沁县',3,0),(667,53,'沁源县',3,0),(668,53,'潞城市',3,0),(669,53,'城区',3,0),(670,53,'郊区',3,0),(671,53,'高新区',3,0),(672,53,'其它区',3,0),(673,54,'城区',3,0),(674,54,'沁水县',3,0),(675,54,'阳城县',3,0),(676,54,'陵川县',3,0),(677,54,'泽州县',3,0),(678,54,'高平市',3,0),(679,54,'其它区',3,0),(680,55,'朔城区',3,0),(681,55,'平鲁区',3,0),(682,55,'山阴县',3,0),(683,55,'应县',3,0),(684,55,'右玉县',3,0),(685,55,'怀仁县',3,0),(686,55,'其它区',3,0),(687,56,'榆次区',3,0),(688,56,'榆社县',3,0),(689,56,'左权县',3,0),(690,56,'和顺县',3,0),(691,56,'昔阳县',3,0),(692,56,'寿阳县',3,0),(693,56,'太谷县',3,0),(694,56,'祁县',3,0),(695,56,'平遥县',3,0),(696,56,'灵石县',3,0),(697,56,'介休市',3,0),(698,56,'其它区',3,0),(699,57,'盐湖区',3,0),(700,57,'临猗县',3,0),(701,57,'万荣县',3,0),(702,57,'闻喜县',3,0),(703,57,'稷山县',3,0),(704,57,'新绛县',3,0),(705,57,'绛县',3,0),(706,57,'垣曲县',3,0),(707,57,'夏县',3,0),(708,57,'平陆县',3,0),(709,57,'芮城县',3,0),(710,57,'永济市',3,0),(711,57,'河津市',3,0),(712,57,'其它区',3,0),(713,58,'忻府区',3,0),(714,58,'定襄县',3,0),(715,58,'五台县',3,0),(716,58,'代县',3,0),(717,58,'繁峙县',3,0),(718,58,'宁武县',3,0),(719,58,'静乐县',3,0),(720,58,'神池县',3,0),(721,58,'五寨县',3,0),(722,58,'岢岚县',3,0),(723,58,'河曲县',3,0),(724,58,'保德县',3,0),(725,58,'偏关县',3,0),(726,58,'原平市',3,0),(727,58,'其它区',3,0),(728,59,'尧都区',3,0),(729,59,'曲沃县',3,0),(730,59,'翼城县',3,0),(731,59,'襄汾县',3,0),(732,59,'洪洞县',3,0),(733,59,'古县',3,0),(734,59,'安泽县',3,0),(735,59,'浮山县',3,0),(736,59,'吉县',3,0),(737,59,'乡宁县',3,0),(738,59,'大宁县',3,0),(739,59,'隰县',3,0),(740,59,'永和县',3,0),(741,59,'蒲县',3,0),(742,59,'汾西县',3,0),(743,59,'侯马市',3,0),(744,59,'霍州市',3,0),(745,59,'其它区',3,0),(746,60,'离石区',3,0),(747,60,'文水县',3,0),(748,60,'交城县',3,0),(749,60,'兴县',3,0),(750,60,'临县',3,0),(751,60,'柳林县',3,0),(752,60,'石楼县',3,0),(753,60,'岚县',3,0),(754,60,'方山县',3,0),(755,60,'中阳县',3,0),(756,60,'交口县',3,0),(757,60,'孝义市',3,0),(758,60,'汾阳市',3,0),(759,60,'其它区',3,0),(760,61,'新城区',3,0),(761,61,'回民区',3,0),(762,61,'玉泉区',3,0),(763,61,'赛罕区',3,0),(764,61,'土默特左旗',3,0),(765,61,'托克托县',3,0),(766,61,'和林格尔县',3,0),(767,61,'清水河县',3,0),(768,61,'武川县',3,0),(769,61,'其它区',3,0),(770,62,'东河区',3,0),(771,62,'昆都仑区',3,0),(772,62,'青山区',3,0),(773,62,'石拐区',3,0),(774,62,'白云鄂博矿区',3,0),(775,62,'九原区',3,0),(776,62,'土默特右旗',3,0),(777,62,'固阳县',3,0),(778,62,'达尔罕茂明安联合旗',3,0),(779,62,'其它区',3,0),(780,63,'海勃湾区',3,0),(781,63,'海南区',3,0),(782,63,'乌达区',3,0),(783,63,'其它区',3,0),(784,64,'红山区',3,0),(785,64,'元宝山区',3,0),(786,64,'松山区',3,0),(787,64,'阿鲁科尔沁旗',3,0),(788,64,'巴林左旗',3,0),(789,64,'巴林右旗',3,0),(790,64,'林西县',3,0),(791,64,'克什克腾旗',3,0),(792,64,'翁牛特旗',3,0),(793,64,'喀喇沁旗',3,0),(794,64,'宁城县',3,0),(795,64,'敖汉旗',3,0),(796,64,'其它区',3,0),(797,65,'科尔沁区',3,0),(798,65,'科尔沁左翼中旗',3,0),(799,65,'科尔沁左翼后旗',3,0),(800,65,'开鲁县',3,0),(801,65,'库伦旗',3,0),(802,65,'奈曼旗',3,0),(803,65,'扎鲁特旗',3,0),(804,65,'霍林郭勒市',3,0),(805,65,'其它区',3,0),(806,66,'东胜区',3,0),(807,66,'达拉特旗',3,0),(808,66,'准格尔旗',3,0),(809,66,'鄂托克前旗',3,0),(810,66,'鄂托克旗',3,0),(811,66,'杭锦旗',3,0),(812,66,'乌审旗',3,0),(813,66,'伊金霍洛旗',3,0),(814,66,'其它区',3,0),(815,67,'海拉尔区',3,0),(816,67,'扎赉诺尔区',3,0),(817,67,'阿荣旗',3,0),(818,67,'莫力达瓦达斡尔族自治旗',3,0),(819,67,'鄂伦春自治旗',3,0),(820,67,'鄂温克族自治旗',3,0),(821,67,'陈巴尔虎旗',3,0),(822,67,'新巴尔虎左旗',3,0),(823,67,'新巴尔虎右旗',3,0),(824,67,'满洲里市',3,0),(825,67,'牙克石市',3,0),(826,67,'扎兰屯市',3,0),(827,67,'额尔古纳市',3,0),(828,67,'根河市',3,0),(829,67,'其它区',3,0),(830,68,'临河区',3,0),(831,68,'五原县',3,0),(832,68,'磴口县',3,0),(833,68,'乌拉特前旗',3,0),(834,68,'乌拉特中旗',3,0),(835,68,'乌拉特后旗',3,0),(836,68,'杭锦后旗',3,0),(837,68,'其它区',3,0),(838,69,'集宁区',3,0),(839,69,'卓资县',3,0),(840,69,'化德县',3,0),(841,69,'商都县',3,0),(842,69,'兴和县',3,0),(843,69,'凉城县',3,0),(844,69,'察哈尔右翼前旗',3,0),(845,69,'察哈尔右翼中旗',3,0),(846,69,'察哈尔右翼后旗',3,0),(847,69,'四子王旗',3,0),(848,69,'丰镇市',3,0),(849,69,'其它区',3,0),(850,70,'乌兰浩特市',3,0),(851,70,'阿尔山市',3,0),(852,70,'科尔沁右翼前旗',3,0),(853,70,'科尔沁右翼中旗',3,0),(854,70,'扎赉特旗',3,0),(855,70,'突泉县',3,0),(856,70,'其它区',3,0),(857,71,'二连浩特市',3,0),(858,71,'锡林浩特市',3,0),(859,71,'阿巴嘎旗',3,0),(860,71,'苏尼特左旗',3,0),(861,71,'苏尼特右旗',3,0),(862,71,'东乌珠穆沁旗',3,0),(863,71,'西乌珠穆沁旗',3,0),(864,71,'太仆寺旗',3,0),(865,71,'镶黄旗',3,0),(866,71,'正镶白旗',3,0),(867,71,'正蓝旗',3,0),(868,71,'多伦县',3,0),(869,71,'其它区',3,0),(870,72,'阿拉善左旗',3,0),(871,72,'阿拉善右旗',3,0),(872,72,'额济纳旗',3,0),(873,72,'其它区',3,0),(874,73,'和平区',3,0),(875,73,'沈河区',3,0),(876,73,'大东区',3,0),(877,73,'皇姑区',3,0),(878,73,'铁西区',3,0),(879,73,'苏家屯区',3,0),(880,73,'浑南区',3,0),(881,73,'新城子区',3,0),(882,73,'于洪区',3,0),(883,73,'辽中县',3,0),(884,73,'康平县',3,0),(885,73,'法库县',3,0),(886,73,'新民市',3,0),(887,73,'浑南新区',3,0),(888,73,'张士开发区',3,0),(889,73,'沈北新区',3,0),(890,73,'其它区',3,0),(891,74,'中山区',3,0),(892,74,'西岗区',3,0),(893,74,'沙河口区',3,0),(894,74,'甘井子区',3,0),(895,74,'旅顺口区',3,0),(896,74,'金州区',3,0),(897,74,'长海县',3,0),(898,74,'开发区',3,0),(899,74,'瓦房店市',3,0),(900,74,'普兰店市',3,0),(901,74,'庄河市',3,0),(902,74,'岭前区',3,0),(903,74,'其它区',3,0),(904,75,'铁东区',3,0),(905,75,'铁西区',3,0),(906,75,'立山区',3,0),(907,75,'千山区',3,0),(908,75,'台安县',3,0),(909,75,'岫岩满族自治县',3,0),(910,75,'高新区',3,0),(911,75,'海城市',3,0),(912,75,'其它区',3,0),(913,76,'新抚区',3,0),(914,76,'东洲区',3,0),(915,76,'望花区',3,0),(916,76,'顺城区',3,0),(917,76,'抚顺县',3,0),(918,76,'新宾满族自治县',3,0),(919,76,'清原满族自治县',3,0),(920,76,'其它区',3,0),(921,77,'平山区',3,0),(922,77,'溪湖区',3,0),(923,77,'明山区',3,0),(924,77,'南芬区',3,0),(925,77,'本溪满族自治县',3,0),(926,77,'桓仁满族自治县',3,0),(927,77,'其它区',3,0),(928,78,'元宝区',3,0),(929,78,'振兴区',3,0),(930,78,'振安区',3,0),(931,78,'宽甸满族自治县',3,0),(932,78,'东港市',3,0),(933,78,'凤城市',3,0),(934,78,'其它区',3,0),(935,79,'古塔区',3,0),(936,79,'凌河区',3,0),(937,79,'太和区',3,0),(938,79,'黑山县',3,0),(939,79,'义县',3,0),(940,79,'凌海市',3,0),(941,79,'北镇市',3,0),(942,79,'其它区',3,0),(943,80,'站前区',3,0),(944,80,'西市区',3,0),(945,80,'鲅鱼圈区',3,0),(946,80,'老边区',3,0),(947,80,'盖州市',3,0),(948,80,'大石桥市',3,0),(949,80,'其它区',3,0),(950,81,'海州区',3,0),(951,81,'新邱区',3,0),(952,81,'太平区',3,0),(953,81,'清河门区',3,0),(954,81,'细河区',3,0),(955,81,'阜新蒙古族自治县',3,0),(956,81,'彰武县',3,0),(957,81,'其它区',3,0),(958,82,'白塔区',3,0),(959,82,'文圣区',3,0),(960,82,'宏伟区',3,0),(961,82,'弓长岭区',3,0),(962,82,'太子河区',3,0),(963,82,'辽阳县',3,0),(964,82,'灯塔市',3,0),(965,82,'其它区',3,0),(966,83,'双台子区',3,0),(967,83,'兴隆台区',3,0),(968,83,'大洼县',3,0),(969,83,'盘山县',3,0),(970,83,'其它区',3,0),(971,84,'银州区',3,0),(972,84,'清河区',3,0),(973,84,'铁岭县',3,0),(974,84,'西丰县',3,0),(975,84,'昌图县',3,0),(976,84,'调兵山市',3,0),(977,84,'开原市',3,0),(978,84,'其它区',3,0),(979,85,'双塔区',3,0),(980,85,'龙城区',3,0),(981,85,'朝阳县',3,0),(982,85,'建平县',3,0),(983,85,'喀喇沁左翼蒙古族自治县',3,0),(984,85,'北票市',3,0),(985,85,'凌源市',3,0),(986,85,'其它区',3,0),(987,86,'连山区',3,0),(988,86,'龙港区',3,0),(989,86,'南票区',3,0),(990,86,'绥中县',3,0),(991,86,'建昌县',3,0),(992,86,'兴城市',3,0),(993,86,'其它区',3,0),(994,87,'南关区',3,0),(995,87,'宽城区',3,0),(996,87,'朝阳区',3,0),(997,87,'二道区',3,0),(998,87,'绿园区',3,0),(999,87,'双阳区',3,0),(1000,87,'农安县',3,0),(1001,87,'九台区',3,0),(1002,87,'榆树市',3,0),(1003,87,'德惠市',3,0),(1004,87,'高新技术产业开发区',3,0),(1005,87,'汽车产业开发区',3,0),(1006,87,'经济技术开发区',3,0),(1007,87,'净月旅游开发区',3,0),(1008,87,'其它区',3,0),(1009,88,'昌邑区',3,0),(1010,88,'龙潭区',3,0),(1011,88,'船营区',3,0),(1012,88,'丰满区',3,0),(1013,88,'永吉县',3,0),(1014,88,'蛟河市',3,0),(1015,88,'桦甸市',3,0),(1016,88,'舒兰市',3,0),(1017,88,'磐石市',3,0),(1018,88,'其它区',3,0),(1019,89,'铁西区',3,0),(1020,89,'铁东区',3,0),(1021,89,'梨树县',3,0),(1022,89,'伊通满族自治县',3,0),(1023,89,'公主岭市',3,0),(1024,89,'双辽市',3,0),(1025,89,'其它区',3,0),(1026,90,'龙山区',3,0),(1027,90,'西安区',3,0),(1028,90,'东丰县',3,0),(1029,90,'东辽县',3,0),(1030,90,'其它区',3,0),(1031,91,'东昌区',3,0),(1032,91,'二道江区',3,0),(1033,91,'通化县',3,0),(1034,91,'辉南县',3,0),(1035,91,'柳河县',3,0),(1036,91,'梅河口市',3,0),(1037,91,'集安市',3,0),(1038,91,'其它区',3,0),(1039,92,'浑江区',3,0),(1040,92,'抚松县',3,0),(1041,92,'靖宇县',3,0),(1042,92,'长白朝鲜族自治县',3,0),(1043,92,'江源区',3,0),(1044,92,'临江市',3,0),(1045,92,'其它区',3,0),(1046,93,'宁江区',3,0),(1047,93,'前郭尔罗斯蒙古族自治县',3,0),(1048,93,'长岭县',3,0),(1049,93,'乾安县',3,0),(1050,93,'扶余市',3,0),(1051,93,'其它区',3,0),(1052,94,'洮北区',3,0),(1053,94,'镇赉县',3,0),(1054,94,'通榆县',3,0),(1055,94,'洮南市',3,0),(1056,94,'大安市',3,0),(1057,94,'其它区',3,0),(1058,95,'延吉市',3,0),(1059,95,'图们市',3,0),(1060,95,'敦化市',3,0),(1061,95,'珲春市',3,0),(1062,95,'龙井市',3,0),(1063,95,'和龙市',3,0),(1064,95,'汪清县',3,0),(1065,95,'安图县',3,0),(1066,95,'其它区',3,0),(1067,96,'道里区',3,0),(1068,96,'南岗区',3,0),(1069,96,'道外区',3,0),(1070,96,'香坊区',3,0),(1071,96,'动力区',3,0),(1072,96,'平房区',3,0),(1073,96,'松北区',3,0),(1074,96,'呼兰区',3,0),(1075,96,'依兰县',3,0),(1076,96,'方正县',3,0),(1077,96,'宾县',3,0),(1078,96,'巴彦县',3,0),(1079,96,'木兰县',3,0),(1080,96,'通河县',3,0),(1081,96,'延寿县',3,0),(1082,96,'阿城区',3,0),(1083,96,'双城区',3,0),(1084,96,'尚志市',3,0),(1085,96,'五常市',3,0),(1086,96,'阿城市',3,0),(1087,96,'其它区',3,0),(1088,97,'龙沙区',3,0),(1089,97,'建华区',3,0),(1090,97,'铁锋区',3,0),(1091,97,'昂昂溪区',3,0),(1092,97,'富拉尔基区',3,0),(1093,97,'碾子山区',3,0),(1094,97,'梅里斯达斡尔族区',3,0),(1095,97,'龙江县',3,0),(1096,97,'依安县',3,0),(1097,97,'泰来县',3,0),(1098,97,'甘南县',3,0),(1099,97,'富裕县',3,0),(1100,97,'克山县',3,0),(1101,97,'克东县',3,0),(1102,97,'拜泉县',3,0),(1103,97,'讷河市',3,0),(1104,97,'其它区',3,0),(1105,98,'鸡冠区',3,0),(1106,98,'恒山区',3,0),(1107,98,'滴道区',3,0),(1108,98,'梨树区',3,0),(1109,98,'城子河区',3,0),(1110,98,'麻山区',3,0),(1111,98,'鸡东县',3,0),(1112,98,'虎林市',3,0),(1113,98,'密山市',3,0),(1114,98,'其它区',3,0),(1115,99,'向阳区',3,0),(1116,99,'工农区',3,0),(1117,99,'南山区',3,0),(1118,99,'兴安区',3,0),(1119,99,'东山区',3,0),(1120,99,'兴山区',3,0),(1121,99,'萝北县',3,0),(1122,99,'绥滨县',3,0),(1123,99,'其它区',3,0),(1124,100,'尖山区',3,0),(1125,100,'岭东区',3,0),(1126,100,'四方台区',3,0),(1127,100,'宝山区',3,0),(1128,100,'集贤县',3,0),(1129,100,'友谊县',3,0),(1130,100,'宝清县',3,0),(1131,100,'饶河县',3,0),(1132,100,'其它区',3,0),(1133,101,'萨尔图区',3,0),(1134,101,'龙凤区',3,0),(1135,101,'让胡路区',3,0),(1136,101,'红岗区',3,0),(1137,101,'大同区',3,0),(1138,101,'肇州县',3,0),(1139,101,'肇源县',3,0),(1140,101,'林甸县',3,0),(1141,101,'杜尔伯特蒙古族自治县',3,0),(1142,101,'其它区',3,0),(1143,102,'伊春区',3,0),(1144,102,'南岔区',3,0),(1145,102,'友好区',3,0),(1146,102,'西林区',3,0),(1147,102,'翠峦区',3,0),(1148,102,'新青区',3,0),(1149,102,'美溪区',3,0),(1150,102,'金山屯区',3,0),(1151,102,'五营区',3,0),(1152,102,'乌马河区',3,0),(1153,102,'汤旺河区',3,0),(1154,102,'带岭区',3,0),(1155,102,'乌伊岭区',3,0),(1156,102,'红星区',3,0),(1157,102,'上甘岭区',3,0),(1158,102,'嘉荫县',3,0),(1159,102,'铁力市',3,0),(1160,102,'其它区',3,0),(1161,103,'永红区',3,0),(1162,103,'向阳区',3,0),(1163,103,'前进区',3,0),(1164,103,'东风区',3,0),(1165,103,'郊区',3,0),(1166,103,'桦南县',3,0),(1167,103,'桦川县',3,0),(1168,103,'汤原县',3,0),(1169,103,'抚远县',3,0),(1170,103,'同江市',3,0),(1171,103,'富锦市',3,0),(1172,103,'其它区',3,0),(1173,104,'新兴区',3,0),(1174,104,'桃山区',3,0),(1175,104,'茄子河区',3,0),(1176,104,'勃利县',3,0),(1177,104,'其它区',3,0),(1178,105,'东安区',3,0),(1179,105,'阳明区',3,0),(1180,105,'爱民区',3,0),(1181,105,'西安区',3,0),(1182,105,'东宁县',3,0),(1183,105,'林口县',3,0),(1184,105,'绥芬河市',3,0),(1185,105,'海林市',3,0),(1186,105,'宁安市',3,0),(1187,105,'穆棱市',3,0),(1188,105,'其它区',3,0),(1189,106,'爱辉区',3,0),(1190,106,'嫩江县',3,0),(1191,106,'逊克县',3,0),(1192,106,'孙吴县',3,0),(1193,106,'北安市',3,0),(1194,106,'五大连池市',3,0),(1195,106,'其它区',3,0),(1196,107,'北林区',3,0),(1197,107,'望奎县',3,0),(1198,107,'兰西县',3,0),(1199,107,'青冈县',3,0),(1200,107,'庆安县',3,0),(1201,107,'明水县',3,0),(1202,107,'绥棱县',3,0),(1203,107,'安达市',3,0),(1204,107,'肇东市',3,0),(1205,107,'海伦市',3,0),(1206,107,'其它区',3,0),(1207,108,'松岭区',3,0),(1208,108,'新林区',3,0),(1209,108,'呼中区',3,0),(1210,108,'呼玛县',3,0),(1211,108,'塔河县',3,0),(1212,108,'漠河县',3,0),(1213,108,'加格达奇区',3,0),(1214,108,'其它区',3,0),(1215,109,'黄浦区',3,0),(1216,109,'卢湾区',3,0),(1217,109,'徐汇区',3,0),(1218,109,'长宁区',3,0),(1219,109,'静安区',3,0),(1220,109,'普陀区',3,0),(1221,109,'闸北区',3,0),(1222,109,'虹口区',3,0),(1223,109,'杨浦区',3,0),(1224,109,'闵行区',3,0),(1225,109,'宝山区',3,0),(1226,109,'嘉定区',3,0),(1227,109,'浦东新区',3,0),(1228,109,'金山区',3,0),(1229,109,'松江区',3,0),(1230,109,'青浦区',3,0),(1231,109,'南汇区',3,0),(1232,109,'奉贤区',3,0),(1233,109,'川沙区',3,0),(1234,109,'崇明县',3,0),(1235,109,'其它区',3,0),(1236,110,'玄武区',3,0),(1237,110,'白下区',3,0),(1238,110,'秦淮区',3,0),(1239,110,'建邺区',3,0),(1240,110,'鼓楼区',3,0),(1241,110,'下关区',3,0),(1242,110,'浦口区',3,0),(1243,110,'栖霞区',3,0),(1244,110,'雨花台区',3,0),(1245,110,'江宁区',3,0),(1246,110,'六合区',3,0),(1247,110,'溧水区',3,0),(1248,110,'高淳区',3,0),(1249,110,'其它区',3,0),(1250,111,'崇安区',3,0),(1251,111,'南长区',3,0),(1252,111,'北塘区',3,0),(1253,111,'锡山区',3,0),(1254,111,'惠山区',3,0),(1255,111,'滨湖区',3,0),(1256,111,'江阴市',3,0),(1257,111,'宜兴市',3,0),(1258,111,'新区',3,0),(1259,111,'其它区',3,0),(1260,112,'鼓楼区',3,0),(1261,112,'云龙区',3,0),(1262,112,'九里区',3,0),(1263,112,'贾汪区',3,0),(1264,112,'泉山区',3,0),(1265,112,'丰县',3,0),(1266,112,'沛县',3,0),(1267,112,'铜山区',3,0),(1268,112,'睢宁县',3,0),(1269,112,'新沂市',3,0),(1270,112,'邳州市',3,0),(1271,112,'其它区',3,0),(1272,113,'天宁区',3,0),(1273,113,'钟楼区',3,0),(1274,113,'戚墅堰区',3,0),(1275,113,'新北区',3,0),(1276,113,'武进区',3,0),(1277,113,'溧阳市',3,0),(1278,113,'金坛市',3,0),(1279,113,'其它区',3,0),(1280,114,'沧浪区',3,0),(1281,114,'平江区',3,0),(1282,114,'金阊区',3,0),(1283,114,'虎丘区',3,0),(1284,114,'吴中区',3,0),(1285,114,'相城区',3,0),(1286,114,'姑苏区',3,0),(1287,114,'常熟市',3,0),(1288,114,'张家港市',3,0),(1289,114,'昆山市',3,0),(1290,114,'吴江区',3,0),(1291,114,'太仓市',3,0),(1292,114,'新区',3,0),(1293,114,'园区',3,0),(1294,114,'其它区',3,0),(1295,115,'崇川区',3,0),(1296,115,'港闸区',3,0),(1297,115,'通州区',3,0),(1298,115,'海安县',3,0),(1299,115,'如东县',3,0),(1300,115,'启东市',3,0),(1301,115,'如皋市',3,0),(1302,115,'通州市',3,0),(1303,115,'海门市',3,0),(1304,115,'开发区',3,0),(1305,115,'其它区',3,0),(1306,116,'连云区',3,0),(1307,116,'新浦区',3,0),(1308,116,'海州区',3,0),(1309,116,'赣榆区',3,0),(1310,116,'东海县',3,0),(1311,116,'灌云县',3,0),(1312,116,'灌南县',3,0),(1313,116,'其它区',3,0),(1314,117,'清河区',3,0),(1315,117,'淮安区',3,0),(1316,117,'淮阴区',3,0),(1317,117,'清浦区',3,0),(1318,117,'涟水县',3,0),(1319,117,'洪泽县',3,0),(1320,117,'盱眙县',3,0),(1321,117,'金湖县',3,0),(1322,117,'其它区',3,0),(1323,118,'亭湖区',3,0),(1324,118,'盐都区',3,0),(1325,118,'响水县',3,0),(1326,118,'滨海县',3,0),(1327,118,'阜宁县',3,0),(1328,118,'射阳县',3,0),(1329,118,'建湖县',3,0),(1330,118,'东台市',3,0),(1331,118,'大丰市',3,0),(1332,118,'其它区',3,0),(1333,119,'广陵区',3,0),(1334,119,'邗江区',3,0),(1335,119,'维扬区',3,0),(1336,119,'宝应县',3,0),(1337,119,'仪征市',3,0),(1338,119,'高邮市',3,0),(1339,119,'江都区',3,0),(1340,119,'经济开发区',3,0),(1341,119,'其它区',3,0),(1342,120,'京口区',3,0),(1343,120,'润州区',3,0),(1344,120,'丹徒区',3,0),(1345,120,'丹阳市',3,0),(1346,120,'扬中市',3,0),(1347,120,'句容市',3,0),(1348,120,'其它区',3,0),(1349,121,'海陵区',3,0),(1350,121,'高港区',3,0),(1351,121,'兴化市',3,0),(1352,121,'靖江市',3,0),(1353,121,'泰兴市',3,0),(1354,121,'姜堰区',3,0),(1355,121,'其它区',3,0),(1356,122,'宿城区',3,0),(1357,122,'宿豫区',3,0),(1358,122,'沭阳县',3,0),(1359,122,'泗阳县',3,0),(1360,122,'泗洪县',3,0),(1361,122,'其它区',3,0),(1362,123,'上城区',3,0),(1363,123,'下城区',3,0),(1364,123,'江干区',3,0),(1365,123,'拱墅区',3,0),(1366,123,'西湖区',3,0),(1367,123,'滨江区',3,0),(1368,123,'萧山区',3,0),(1369,123,'余杭区',3,0),(1370,123,'桐庐县',3,0),(1371,123,'淳安县',3,0),(1372,123,'建德市',3,0),(1373,123,'富阳区',3,0),(1374,123,'临安市',3,0),(1375,123,'其它区',3,0),(1376,124,'海曙区',3,0),(1377,124,'江东区',3,0),(1378,124,'江北区',3,0),(1379,124,'北仑区',3,0),(1380,124,'镇海区',3,0),(1381,124,'鄞州区',3,0),(1382,124,'象山县',3,0),(1383,124,'宁海县',3,0),(1384,124,'余姚市',3,0),(1385,124,'慈溪市',3,0),(1386,124,'奉化市',3,0),(1387,124,'其它区',3,0),(1388,125,'鹿城区',3,0),(1389,125,'龙湾区',3,0),(1390,125,'瓯海区',3,0),(1391,125,'洞头县',3,0),(1392,125,'永嘉县',3,0),(1393,125,'平阳县',3,0),(1394,125,'苍南县',3,0),(1395,125,'文成县',3,0),(1396,125,'泰顺县',3,0),(1397,125,'瑞安市',3,0),(1398,125,'乐清市',3,0),(1399,125,'其它区',3,0),(1400,126,'南湖区',3,0),(1401,126,'秀洲区',3,0),(1402,126,'嘉善县',3,0),(1403,126,'海盐县',3,0),(1404,126,'海宁市',3,0),(1405,126,'平湖市',3,0),(1406,126,'桐乡市',3,0),(1407,126,'其它区',3,0),(1408,127,'吴兴区',3,0),(1409,127,'南浔区',3,0),(1410,127,'德清县',3,0),(1411,127,'长兴县',3,0),(1412,127,'安吉县',3,0),(1413,127,'其它区',3,0),(1414,128,'越城区',3,0),(1415,128,'柯桥区',3,0),(1416,128,'新昌县',3,0),(1417,128,'诸暨市',3,0),(1418,128,'上虞区',3,0),(1419,128,'嵊州市',3,0),(1420,128,'其它区',3,0),(1421,129,'婺城区',3,0),(1422,129,'金东区',3,0),(1423,129,'武义县',3,0),(1424,129,'浦江县',3,0),(1425,129,'磐安县',3,0),(1426,129,'兰溪市',3,0),(1427,129,'义乌市',3,0),(1428,129,'东阳市',3,0),(1429,129,'永康市',3,0),(1430,129,'其它区',3,0),(1431,130,'柯城区',3,0),(1432,130,'衢江区',3,0),(1433,130,'常山县',3,0),(1434,130,'开化县',3,0),(1435,130,'龙游县',3,0),(1436,130,'江山市',3,0),(1437,130,'其它区',3,0),(1438,131,'定海区',3,0),(1439,131,'普陀区',3,0),(1440,131,'岱山县',3,0),(1441,131,'嵊泗县',3,0),(1442,131,'其它区',3,0),(1443,132,'椒江区',3,0),(1444,132,'黄岩区',3,0),(1445,132,'路桥区',3,0),(1446,132,'玉环县',3,0),(1447,132,'三门县',3,0),(1448,132,'天台县',3,0),(1449,132,'仙居县',3,0),(1450,132,'温岭市',3,0),(1451,132,'临海市',3,0),(1452,132,'其它区',3,0),(1453,133,'莲都区',3,0),(1454,133,'青田县',3,0),(1455,133,'缙云县',3,0),(1456,133,'遂昌县',3,0),(1457,133,'松阳县',3,0),(1458,133,'云和县',3,0),(1459,133,'庆元县',3,0),(1460,133,'景宁畲族自治县',3,0),(1461,133,'龙泉市',3,0),(1462,133,'其它区',3,0),(1463,134,'瑶海区',3,0),(1464,134,'庐阳区',3,0),(1465,134,'蜀山区',3,0),(1466,134,'包河区',3,0),(1467,134,'长丰县',3,0),(1468,134,'肥东县',3,0),(1469,134,'肥西县',3,0),(1470,134,'高新区',3,0),(1471,134,'中区',3,0),(1472,134,'其它区',3,0),(1473,135,'镜湖区',3,0),(1474,135,'弋江区',3,0),(1475,135,'鸠江区',3,0),(1476,135,'三山区',3,0),(1477,135,'芜湖县',3,0),(1478,135,'繁昌县',3,0),(1479,135,'南陵县',3,0),(1480,135,'其它区',3,0),(1481,136,'龙子湖区',3,0),(1482,136,'蚌山区',3,0),(1483,136,'禹会区',3,0),(1484,136,'淮上区',3,0),(1485,136,'怀远县',3,0),(1486,136,'五河县',3,0),(1487,136,'固镇县',3,0),(1488,136,'其它区',3,0),(1489,137,'大通区',3,0),(1490,137,'田家庵区',3,0),(1491,137,'谢家集区',3,0),(1492,137,'八公山区',3,0),(1493,137,'潘集区',3,0),(1494,137,'凤台县',3,0),(1495,137,'其它区',3,0),(1496,138,'金家庄区',3,0),(1497,138,'花山区',3,0),(1498,138,'雨山区',3,0),(1499,138,'博望区',3,0),(1500,138,'当涂县',3,0),(1501,138,'其它区',3,0),(1502,139,'杜集区',3,0),(1503,139,'相山区',3,0),(1504,139,'烈山区',3,0),(1505,139,'濉溪县',3,0),(1506,139,'其它区',3,0),(1507,140,'铜官山区',3,0),(1508,140,'狮子山区',3,0),(1509,140,'郊区',3,0),(1510,140,'铜陵县',3,0),(1511,140,'其它区',3,0),(1512,141,'迎江区',3,0),(1513,141,'大观区',3,0),(1514,141,'宜秀区',3,0),(1515,141,'怀宁县',3,0),(1516,141,'枞阳县',3,0),(1517,141,'潜山县',3,0),(1518,141,'太湖县',3,0),(1519,141,'宿松县',3,0),(1520,141,'望江县',3,0),(1521,141,'岳西县',3,0),(1522,141,'桐城市',3,0),(1523,141,'其它区',3,0),(1524,142,'屯溪区',3,0),(1525,142,'黄山区',3,0),(1526,142,'徽州区',3,0),(1527,142,'歙县',3,0),(1528,142,'休宁县',3,0),(1529,142,'黟县',3,0),(1530,142,'祁门县',3,0),(1531,142,'其它区',3,0),(1532,143,'琅琊区',3,0),(1533,143,'南谯区',3,0),(1534,143,'来安县',3,0),(1535,143,'全椒县',3,0),(1536,143,'定远县',3,0),(1537,143,'凤阳县',3,0),(1538,143,'天长市',3,0),(1539,143,'明光市',3,0),(1540,143,'其它区',3,0),(1541,144,'颍州区',3,0),(1542,144,'颍东区',3,0),(1543,144,'颍泉区',3,0),(1544,144,'临泉县',3,0),(1545,144,'太和县',3,0),(1546,144,'阜南县',3,0),(1547,144,'颍上县',3,0),(1548,144,'界首市',3,0),(1549,144,'其它区',3,0),(1550,145,'埇桥区',3,0),(1551,145,'砀山县',3,0),(1552,145,'萧县',3,0),(1553,145,'灵璧县',3,0),(1554,145,'泗县',3,0),(1555,145,'其它区',3,0),(1556,134,'巢湖市',3,0),(1557,134,'居巢区',3,0),(1558,134,'庐江县',3,0),(1559,135,'无为县',3,0),(1560,138,'含山县',3,0),(1561,138,'和县',3,0),(1562,146,'金安区',3,0),(1563,146,'裕安区',3,0),(1564,146,'寿县',3,0),(1565,146,'霍邱县',3,0),(1566,146,'舒城县',3,0),(1567,146,'金寨县',3,0),(1568,146,'霍山县',3,0),(1569,146,'其它区',3,0),(1570,147,'谯城区',3,0),(1571,147,'涡阳县',3,0),(1572,147,'蒙城县',3,0),(1573,147,'利辛县',3,0),(1574,147,'其它区',3,0),(1575,148,'贵池区',3,0),(1576,148,'东至县',3,0),(1577,148,'石台县',3,0),(1578,148,'青阳县',3,0),(1579,148,'其它区',3,0),(1580,149,'宣州区',3,0),(1581,149,'郎溪县',3,0),(1582,149,'广德县',3,0),(1583,149,'泾县',3,0),(1584,149,'绩溪县',3,0),(1585,149,'旌德县',3,0),(1586,149,'宁国市',3,0),(1587,149,'其它区',3,0),(1588,150,'鼓楼区',3,0),(1589,150,'台江区',3,0),(1590,150,'仓山区',3,0),(1591,150,'马尾区',3,0),(1592,150,'晋安区',3,0),(1593,150,'闽侯县',3,0),(1594,150,'连江县',3,0),(1595,150,'罗源县',3,0),(1596,150,'闽清县',3,0),(1597,150,'永泰县',3,0),(1598,150,'平潭县',3,0),(1599,150,'福清市',3,0),(1600,150,'长乐市',3,0),(1601,150,'其它区',3,0),(1602,151,'思明区',3,0),(1603,151,'海沧区',3,0),(1604,151,'湖里区',3,0),(1605,151,'集美区',3,0),(1606,151,'同安区',3,0),(1607,151,'翔安区',3,0),(1608,151,'其它区',3,0),(1609,152,'城厢区',3,0),(1610,152,'涵江区',3,0),(1611,152,'荔城区',3,0),(1612,152,'秀屿区',3,0),(1613,152,'仙游县',3,0),(1614,152,'其它区',3,0),(1615,153,'梅列区',3,0),(1616,153,'三元区',3,0),(1617,153,'明溪县',3,0),(1618,153,'清流县',3,0),(1619,153,'宁化县',3,0),(1620,153,'大田县',3,0),(1621,153,'尤溪县',3,0),(1622,153,'沙县',3,0),(1623,153,'将乐县',3,0),(1624,153,'泰宁县',3,0),(1625,153,'建宁县',3,0),(1626,153,'永安市',3,0),(1627,153,'其它区',3,0),(1628,154,'鲤城区',3,0),(1629,154,'丰泽区',3,0),(1630,154,'洛江区',3,0),(1631,154,'泉港区',3,0),(1632,154,'惠安县',3,0),(1633,154,'安溪县',3,0),(1634,154,'永春县',3,0),(1635,154,'德化县',3,0),(1636,154,'金门县',3,0),(1637,154,'石狮市',3,0),(1638,154,'晋江市',3,0),(1639,154,'南安市',3,0),(1640,154,'其它区',3,0),(1641,155,'芗城区',3,0),(1642,155,'龙文区',3,0),(1643,155,'云霄县',3,0),(1644,155,'漳浦县',3,0),(1645,155,'诏安县',3,0),(1646,155,'长泰县',3,0),(1647,155,'东山县',3,0),(1648,155,'南靖县',3,0),(1649,155,'平和县',3,0),(1650,155,'华安县',3,0),(1651,155,'龙海市',3,0),(1652,155,'其它区',3,0),(1653,156,'延平区',3,0),(1654,156,'顺昌县',3,0),(1655,156,'浦城县',3,0),(1656,156,'光泽县',3,0),(1657,156,'松溪县',3,0),(1658,156,'政和县',3,0),(1659,156,'邵武市',3,0),(1660,156,'武夷山市',3,0),(1661,156,'建瓯市',3,0),(1662,156,'建阳区',3,0),(1663,156,'其它区',3,0),(1664,157,'新罗区',3,0),(1665,157,'长汀县',3,0),(1666,157,'永定区',3,0),(1667,157,'上杭县',3,0),(1668,157,'武平县',3,0),(1669,157,'连城县',3,0),(1670,157,'漳平市',3,0),(1671,157,'其它区',3,0),(1672,158,'蕉城区',3,0),(1673,158,'霞浦县',3,0),(1674,158,'古田县',3,0),(1675,158,'屏南县',3,0),(1676,158,'寿宁县',3,0),(1677,158,'周宁县',3,0),(1678,158,'柘荣县',3,0),(1679,158,'福安市',3,0),(1680,158,'福鼎市',3,0),(1681,158,'其它区',3,0),(1682,159,'东湖区',3,0),(1683,159,'西湖区',3,0),(1684,159,'青云谱区',3,0),(1685,159,'湾里区',3,0),(1686,159,'青山湖区',3,0),(1687,159,'南昌县',3,0),(1688,159,'新建县',3,0),(1689,159,'安义县',3,0),(1690,159,'进贤县',3,0),(1691,159,'红谷滩新区',3,0),(1692,159,'经济技术开发区',3,0),(1693,159,'昌北区',3,0),(1694,159,'其它区',3,0),(1695,160,'昌江区',3,0),(1696,160,'珠山区',3,0),(1697,160,'浮梁县',3,0),(1698,160,'乐平市',3,0),(1699,160,'其它区',3,0),(1700,161,'安源区',3,0),(1701,161,'湘东区',3,0),(1702,161,'莲花县',3,0),(1703,161,'上栗县',3,0),(1704,161,'芦溪县',3,0),(1705,161,'其它区',3,0),(1706,162,'庐山区',3,0),(1707,162,'浔阳区',3,0),(1708,162,'九江县',3,0),(1709,162,'武宁县',3,0),(1710,162,'修水县',3,0),(1711,162,'永修县',3,0),(1712,162,'德安县',3,0),(1713,162,'星子县',3,0),(1714,162,'都昌县',3,0),(1715,162,'湖口县',3,0),(1716,162,'彭泽县',3,0),(1717,162,'瑞昌市',3,0),(1718,162,'其它区',3,0),(1719,162,'共青城市',3,0),(1720,163,'渝水区',3,0),(1721,163,'分宜县',3,0),(1722,163,'其它区',3,0),(1723,164,'月湖区',3,0),(1724,164,'余江县',3,0),(1725,164,'贵溪市',3,0),(1726,164,'其它区',3,0),(1727,165,'章贡区',3,0),(1728,165,'赣县',3,0),(1729,165,'信丰县',3,0),(1730,165,'大余县',3,0),(1731,165,'上犹县',3,0),(1732,165,'崇义县',3,0),(1733,165,'安远县',3,0),(1734,165,'龙南县',3,0),(1735,165,'定南县',3,0),(1736,165,'全南县',3,0),(1737,165,'宁都县',3,0),(1738,165,'于都县',3,0),(1739,165,'兴国县',3,0),(1740,165,'会昌县',3,0),(1741,165,'寻乌县',3,0),(1742,165,'石城县',3,0),(1743,165,'黄金区',3,0),(1744,165,'瑞金市',3,0),(1745,165,'南康区',3,0),(1746,165,'其它区',3,0),(1747,166,'吉州区',3,0),(1748,166,'青原区',3,0),(1749,166,'吉安县',3,0),(1750,166,'吉水县',3,0),(1751,166,'峡江县',3,0),(1752,166,'新干县',3,0),(1753,166,'永丰县',3,0),(1754,166,'泰和县',3,0),(1755,166,'遂川县',3,0),(1756,166,'万安县',3,0),(1757,166,'安福县',3,0),(1758,166,'永新县',3,0),(1759,166,'井冈山市',3,0),(1760,166,'其它区',3,0),(1761,167,'袁州区',3,0),(1762,167,'奉新县',3,0),(1763,167,'万载县',3,0),(1764,167,'上高县',3,0),(1765,167,'宜丰县',3,0),(1766,167,'靖安县',3,0),(1767,167,'铜鼓县',3,0),(1768,167,'丰城市',3,0),(1769,167,'樟树市',3,0),(1770,167,'高安市',3,0),(1771,167,'其它区',3,0),(1772,168,'临川区',3,0),(1773,168,'南城县',3,0),(1774,168,'黎川县',3,0),(1775,168,'南丰县',3,0),(1776,168,'崇仁县',3,0),(1777,168,'乐安县',3,0),(1778,168,'宜黄县',3,0),(1779,168,'金溪县',3,0),(1780,168,'资溪县',3,0),(1781,168,'东乡县',3,0),(1782,168,'广昌县',3,0),(1783,168,'其它区',3,0),(1784,169,'信州区',3,0),(1785,169,'上饶县',3,0),(1786,169,'广丰区',3,0),(1787,169,'玉山县',3,0),(1788,169,'铅山县',3,0),(1789,169,'横峰县',3,0),(1790,169,'弋阳县',3,0),(1791,169,'余干县',3,0),(1792,169,'鄱阳县',3,0),(1793,169,'万年县',3,0),(1794,169,'婺源县',3,0),(1795,169,'德兴市',3,0),(1796,169,'其它区',3,0),(1797,170,'历下区',3,0),(1798,170,'市中区',3,0),(1799,170,'槐荫区',3,0),(1800,170,'天桥区',3,0),(1801,170,'历城区',3,0),(1802,170,'长清区',3,0),(1803,170,'平阴县',3,0),(1804,170,'济阳县',3,0),(1805,170,'商河县',3,0),(1806,170,'章丘市',3,0),(1807,170,'其它区',3,0),(1808,171,'市南区',3,0),(1809,171,'市北区',3,0),(1810,171,'四方区',3,0),(1811,171,'黄岛区',3,0),(1812,171,'崂山区',3,0),(1813,171,'李沧区',3,0),(1814,171,'城阳区',3,0),(1815,171,'开发区',3,0),(1816,171,'胶州市',3,0),(1817,171,'即墨市',3,0),(1818,171,'平度市',3,0),(1819,171,'胶南市',3,0),(1820,171,'莱西市',3,0),(1821,171,'其它区',3,0),(1822,172,'淄川区',3,0),(1823,172,'张店区',3,0),(1824,172,'博山区',3,0),(1825,172,'临淄区',3,0),(1826,172,'周村区',3,0),(1827,172,'桓台县',3,0),(1828,172,'高青县',3,0),(1829,172,'沂源县',3,0),(1830,172,'其它区',3,0),(1831,173,'市中区',3,0),(1832,173,'薛城区',3,0),(1833,173,'峄城区',3,0),(1834,173,'台儿庄区',3,0),(1835,173,'山亭区',3,0),(1836,173,'滕州市',3,0),(1837,173,'其它区',3,0),(1838,174,'东营区',3,0),(1839,174,'河口区',3,0),(1840,174,'垦利县',3,0),(1841,174,'利津县',3,0),(1842,174,'广饶县',3,0),(1843,174,'西城区',3,0),(1844,174,'东城区',3,0),(1845,174,'其它区',3,0),(1846,175,'芝罘区',3,0),(1847,175,'福山区',3,0),(1848,175,'牟平区',3,0),(1849,175,'莱山区',3,0),(1850,175,'长岛县',3,0),(1851,175,'龙口市',3,0),(1852,175,'莱阳市',3,0),(1853,175,'莱州市',3,0),(1854,175,'蓬莱市',3,0),(1855,175,'招远市',3,0),(1856,175,'栖霞市',3,0),(1857,175,'海阳市',3,0),(1858,175,'其它区',3,0),(1859,176,'潍城区',3,0),(1860,176,'寒亭区',3,0),(1861,176,'坊子区',3,0),(1862,176,'奎文区',3,0),(1863,176,'临朐县',3,0),(1864,176,'昌乐县',3,0),(1865,176,'开发区',3,0),(1866,176,'青州市',3,0),(1867,176,'诸城市',3,0),(1868,176,'寿光市',3,0),(1869,176,'安丘市',3,0),(1870,176,'高密市',3,0),(1871,176,'昌邑市',3,0),(1872,176,'其它区',3,0),(1873,177,'市中区',3,0),(1874,177,'任城区',3,0),(1875,177,'微山县',3,0),(1876,177,'鱼台县',3,0),(1877,177,'金乡县',3,0),(1878,177,'嘉祥县',3,0),(1879,177,'汶上县',3,0),(1880,177,'泗水县',3,0),(1881,177,'梁山县',3,0),(1882,177,'曲阜市',3,0),(1883,177,'兖州区',3,0),(1884,177,'邹城市',3,0),(1885,177,'其它区',3,0),(1886,178,'泰山区',3,0),(1887,178,'岱岳区',3,0),(1888,178,'宁阳县',3,0),(1889,178,'东平县',3,0),(1890,178,'新泰市',3,0),(1891,178,'肥城市',3,0),(1892,178,'其它区',3,0),(1893,179,'环翠区',3,0),(1894,179,'文登区',3,0),(1895,179,'荣成市',3,0),(1896,179,'乳山市',3,0),(1897,179,'其它区',3,0),(1898,180,'东港区',3,0),(1899,180,'岚山区',3,0),(1900,180,'五莲县',3,0),(1901,180,'莒县',3,0),(1902,180,'其它区',3,0),(1903,181,'莱城区',3,0),(1904,181,'钢城区',3,0),(1905,181,'其它区',3,0),(1906,182,'兰山区',3,0),(1907,182,'罗庄区',3,0),(1908,182,'河东区',3,0),(1909,182,'沂南县',3,0),(1910,182,'郯城县',3,0),(1911,182,'沂水县',3,0),(1912,182,'兰陵县',3,0),(1913,182,'费县',3,0),(1914,182,'平邑县',3,0),(1915,182,'莒南县',3,0),(1916,182,'蒙阴县',3,0),(1917,182,'临沭县',3,0),(1918,182,'其它区',3,0),(1919,183,'德城区',3,0),(1920,183,'陵城区',3,0),(1921,183,'宁津县',3,0),(1922,183,'庆云县',3,0),(1923,183,'临邑县',3,0),(1924,183,'齐河县',3,0),(1925,183,'平原县',3,0),(1926,183,'夏津县',3,0),(1927,183,'武城县',3,0),(1928,183,'开发区',3,0),(1929,183,'乐陵市',3,0),(1930,183,'禹城市',3,0),(1931,183,'其它区',3,0),(1932,184,'东昌府区',3,0),(1933,184,'阳谷县',3,0),(1934,184,'莘县',3,0),(1935,184,'茌平县',3,0),(1936,184,'东阿县',3,0),(1937,184,'冠县',3,0),(1938,184,'高唐县',3,0),(1939,184,'临清市',3,0),(1940,184,'其它区',3,0),(1941,185,'滨城区',3,0),(1942,185,'惠民县',3,0),(1943,185,'阳信县',3,0),(1944,185,'无棣县',3,0),(1945,185,'沾化区',3,0),(1946,185,'博兴县',3,0),(1947,185,'邹平县',3,0),(1948,185,'其它区',3,0),(1949,186,'牡丹区',3,0),(1950,186,'曹县',3,0),(1951,186,'单县',3,0),(1952,186,'成武县',3,0),(1953,186,'巨野县',3,0),(1954,186,'郓城县',3,0),(1955,186,'鄄城县',3,0),(1956,186,'定陶县',3,0),(1957,186,'东明县',3,0),(1958,186,'其它区',3,0),(1959,187,'中原区',3,0),(1960,187,'二七区',3,0),(1961,187,'管城回族区',3,0),(1962,187,'金水区',3,0),(1963,187,'上街区',3,0),(1964,187,'惠济区',3,0),(1965,187,'中牟县',3,0),(1966,187,'巩义市',3,0),(1967,187,'荥阳市',3,0),(1968,187,'新密市',3,0),(1969,187,'新郑市',3,0),(1970,187,'登封市',3,0),(1971,187,'郑东新区',3,0),(1972,187,'高新区',3,0),(1973,187,'其它区',3,0),(1974,188,'龙亭区',3,0),(1975,188,'顺河回族区',3,0),(1976,188,'鼓楼区',3,0),(1977,188,'禹王台区',3,0),(1978,188,'金明区',3,0),(1979,188,'杞县',3,0),(1980,188,'通许县',3,0),(1981,188,'尉氏县',3,0),(1982,188,'祥符区',3,0),(1983,188,'兰考县',3,0),(1984,188,'其它区',3,0),(1985,189,'老城区',3,0),(1986,189,'西工区',3,0),(1987,189,'瀍河回族区',3,0),(1988,189,'涧西区',3,0),(1989,189,'吉利区',3,0),(1990,189,'洛龙区',3,0),(1991,189,'孟津县',3,0),(1992,189,'新安县',3,0),(1993,189,'栾川县',3,0),(1994,189,'嵩县',3,0),(1995,189,'汝阳县',3,0),(1996,189,'宜阳县',3,0),(1997,189,'洛宁县',3,0),(1998,189,'伊川县',3,0),(1999,189,'偃师市',3,0),(2000,190,'新华区',3,0),(2001,190,'卫东区',3,0),(2002,190,'石龙区',3,0),(2003,190,'湛河区',3,0),(2004,190,'宝丰县',3,0),(2005,190,'叶县',3,0),(2006,190,'鲁山县',3,0),(2007,190,'郏县',3,0),(2008,190,'舞钢市',3,0),(2009,190,'汝州市',3,0),(2010,190,'其它区',3,0),(2011,191,'文峰区',3,0),(2012,191,'北关区',3,0),(2013,191,'殷都区',3,0),(2014,191,'龙安区',3,0),(2015,191,'安阳县',3,0),(2016,191,'汤阴县',3,0),(2017,191,'滑县',3,0),(2018,191,'内黄县',3,0),(2019,191,'林州市',3,0),(2020,191,'其它区',3,0),(2021,192,'鹤山区',3,0),(2022,192,'山城区',3,0),(2023,192,'淇滨区',3,0),(2024,192,'浚县',3,0),(2025,192,'淇县',3,0),(2026,192,'其它区',3,0),(2027,193,'红旗区',3,0),(2028,193,'卫滨区',3,0),(2029,193,'凤泉区',3,0),(2030,193,'牧野区',3,0),(2031,193,'新乡县',3,0),(2032,193,'获嘉县',3,0),(2033,193,'原阳县',3,0),(2034,193,'延津县',3,0),(2035,193,'封丘县',3,0),(2036,193,'长垣县',3,0),(2037,193,'卫辉市',3,0),(2038,193,'辉县市',3,0),(2039,193,'其它区',3,0),(2040,194,'解放区',3,0),(2041,194,'中站区',3,0),(2042,194,'马村区',3,0),(2043,194,'山阳区',3,0),(2044,194,'修武县',3,0),(2045,194,'博爱县',3,0),(2046,194,'武陟县',3,0),(2047,194,'温县',3,0),(2048,194,'沁阳市',3,0),(2049,194,'孟州市',3,0),(2050,194,'其它区',3,0),(2051,195,'华龙区',3,0),(2052,195,'清丰县',3,0),(2053,195,'南乐县',3,0),(2054,195,'范县',3,0),(2055,195,'台前县',3,0),(2056,195,'濮阳县',3,0),(2057,195,'其它区',3,0),(2058,196,'魏都区',3,0),(2059,196,'许昌县',3,0),(2060,196,'鄢陵县',3,0),(2061,196,'襄城县',3,0),(2062,196,'禹州市',3,0),(2063,196,'长葛市',3,0),(2064,196,'其它区',3,0),(2065,197,'源汇区',3,0),(2066,197,'郾城区',3,0),(2067,197,'召陵区',3,0),(2068,197,'舞阳县',3,0),(2069,197,'临颍县',3,0),(2070,197,'其它区',3,0),(2071,198,'湖滨区',3,0),(2072,198,'渑池县',3,0),(2073,198,'陕州区',3,0),(2074,198,'卢氏县',3,0),(2075,198,'义马市',3,0),(2076,198,'灵宝市',3,0),(2077,198,'其它区',3,0),(2078,199,'宛城区',3,0),(2079,199,'卧龙区',3,0),(2080,199,'南召县',3,0),(2081,199,'方城县',3,0),(2082,199,'西峡县',3,0),(2083,199,'镇平县',3,0),(2084,199,'内乡县',3,0),(2085,199,'淅川县',3,0),(2086,199,'社旗县',3,0),(2087,199,'唐河县',3,0),(2088,199,'新野县',3,0),(2089,199,'桐柏县',3,0),(2090,199,'邓州市',3,0),(2091,199,'其它区',3,0),(2092,200,'梁园区',3,0),(2093,200,'睢阳区',3,0),(2094,200,'民权县',3,0),(2095,200,'睢县',3,0),(2096,200,'宁陵县',3,0),(2097,200,'柘城县',3,0),(2098,200,'虞城县',3,0),(2099,200,'夏邑县',3,0),(2100,200,'永城市',3,0),(2101,200,'其它区',3,0),(2102,201,'浉河区',3,0),(2103,201,'平桥区',3,0),(2104,201,'罗山县',3,0),(2105,201,'光山县',3,0),(2106,201,'新县',3,0),(2107,201,'商城县',3,0),(2108,201,'固始县',3,0),(2109,201,'潢川县',3,0),(2110,201,'淮滨县',3,0),(2111,201,'息县',3,0),(2112,201,'其它区',3,0),(2113,202,'川汇区',3,0),(2114,202,'扶沟县',3,0),(2115,202,'西华县',3,0),(2116,202,'商水县',3,0),(2117,202,'沈丘县',3,0),(2118,202,'郸城县',3,0),(2119,202,'淮阳县',3,0),(2120,202,'太康县',3,0),(2121,202,'鹿邑县',3,0),(2122,202,'项城市',3,0),(2123,202,'其它区',3,0),(2124,203,'驿城区',3,0),(2125,203,'西平县',3,0),(2126,203,'上蔡县',3,0),(2127,203,'平舆县',3,0),(2128,203,'正阳县',3,0),(2129,203,'确山县',3,0),(2130,203,'泌阳县',3,0),(2131,203,'汝南县',3,0),(2132,203,'遂平县',3,0),(2133,203,'新蔡县',3,0),(2134,203,'其它区',3,0),(2135,204,'江岸区',3,0),(2136,204,'江汉区',3,0),(2137,204,'硚口区',3,0),(2138,204,'汉阳区',3,0),(2139,204,'武昌区',3,0),(2140,204,'青山区',3,0),(2141,204,'洪山区',3,0),(2142,204,'东西湖区',3,0),(2143,204,'汉南区',3,0),(2144,204,'蔡甸区',3,0),(2145,204,'江夏区',3,0),(2146,204,'黄陂区',3,0),(2147,204,'新洲区',3,0),(2148,204,'其它区',3,0),(2149,205,'黄石港区',3,0),(2150,205,'西塞山区',3,0),(2151,205,'下陆区',3,0),(2152,205,'铁山区',3,0),(2153,205,'阳新县',3,0),(2154,205,'大冶市',3,0),(2155,205,'其它区',3,0),(2156,206,'茅箭区',3,0),(2157,206,'张湾区',3,0),(2158,206,'郧阳区',3,0),(2159,206,'郧西县',3,0),(2160,206,'竹山县',3,0),(2161,206,'竹溪县',3,0),(2162,206,'房县',3,0),(2163,206,'丹江口市',3,0),(2164,206,'城区',3,0),(2165,206,'其它区',3,0),(2166,207,'西陵区',3,0),(2167,207,'伍家岗区',3,0),(2168,207,'点军区',3,0),(2169,207,'猇亭区',3,0),(2170,207,'夷陵区',3,0),(2171,207,'远安县',3,0),(2172,207,'兴山县',3,0),(2173,207,'秭归县',3,0),(2174,207,'长阳土家族自治县',3,0),(2175,207,'五峰土家族自治县',3,0),(2176,207,'葛洲坝区',3,0),(2177,207,'开发区',3,0),(2178,207,'宜都市',3,0),(2179,207,'当阳市',3,0),(2180,207,'枝江市',3,0),(2181,207,'其它区',3,0),(2182,208,'襄城区',3,0),(2183,208,'樊城区',3,0),(2184,208,'襄州区',3,0),(2185,208,'南漳县',3,0),(2186,208,'谷城县',3,0),(2187,208,'保康县',3,0),(2188,208,'老河口市',3,0),(2189,208,'枣阳市',3,0),(2190,208,'宜城市',3,0),(2191,208,'其它区',3,0),(2192,209,'梁子湖区',3,0),(2193,209,'华容区',3,0),(2194,209,'鄂城区',3,0),(2195,209,'其它区',3,0),(2196,210,'东宝区',3,0),(2197,210,'掇刀区',3,0),(2198,210,'京山县',3,0),(2199,210,'沙洋县',3,0),(2200,210,'钟祥市',3,0),(2201,210,'其它区',3,0),(2202,211,'孝南区',3,0),(2203,211,'孝昌县',3,0),(2204,211,'大悟县',3,0),(2205,211,'云梦县',3,0),(2206,211,'应城市',3,0),(2207,211,'安陆市',3,0),(2208,211,'汉川市',3,0),(2209,211,'其它区',3,0),(2210,212,'沙市区',3,0),(2211,212,'荆州区',3,0),(2212,212,'公安县',3,0),(2213,212,'监利县',3,0),(2214,212,'江陵县',3,0),(2215,212,'石首市',3,0),(2216,212,'洪湖市',3,0),(2217,212,'松滋市',3,0),(2218,212,'其它区',3,0),(2219,213,'黄州区',3,0),(2220,213,'团风县',3,0),(2221,213,'红安县',3,0),(2222,213,'罗田县',3,0),(2223,213,'英山县',3,0),(2224,213,'浠水县',3,0),(2225,213,'蕲春县',3,0),(2226,213,'黄梅县',3,0),(2227,213,'麻城市',3,0),(2228,213,'武穴市',3,0),(2229,213,'其它区',3,0),(2230,214,'咸安区',3,0),(2231,214,'嘉鱼县',3,0),(2232,214,'通城县',3,0),(2233,214,'崇阳县',3,0),(2234,214,'通山县',3,0),(2235,214,'赤壁市',3,0),(2236,214,'温泉城区',3,0),(2237,214,'其它区',3,0),(2238,215,'曾都区',3,0),(2239,215,'随县',3,0),(2240,215,'广水市',3,0),(2241,215,'其它区',3,0),(2242,216,'恩施市',3,0),(2243,216,'利川市',3,0),(2244,216,'建始县',3,0),(2245,216,'巴东县',3,0),(2246,216,'宣恩县',3,0),(2247,216,'咸丰县',3,0),(2248,216,'来凤县',3,0),(2249,216,'鹤峰县',3,0),(2250,216,'其它区',3,0),(2251,217,'芙蓉区',3,0),(2252,217,'天心区',3,0),(2253,217,'岳麓区',3,0),(2254,217,'开福区',3,0),(2255,217,'雨花区',3,0),(2256,217,'长沙县',3,0),(2257,217,'望城区',3,0),(2258,217,'宁乡县',3,0),(2259,217,'浏阳市',3,0),(2260,217,'其它区',3,0),(2261,218,'荷塘区',3,0),(2262,218,'芦淞区',3,0),(2263,218,'石峰区',3,0),(2264,218,'天元区',3,0),(2265,218,'株洲县',3,0),(2266,218,'攸县',3,0),(2267,218,'茶陵县',3,0),(2268,218,'炎陵县',3,0),(2269,218,'醴陵市',3,0),(2270,218,'其它区',3,0),(2271,219,'雨湖区',3,0),(2272,219,'岳塘区',3,0),(2273,219,'湘潭县',3,0),(2274,219,'湘乡市',3,0),(2275,219,'韶山市',3,0),(2276,219,'其它区',3,0),(2277,220,'珠晖区',3,0),(2278,220,'雁峰区',3,0),(2279,220,'石鼓区',3,0),(2280,220,'蒸湘区',3,0),(2281,220,'南岳区',3,0),(2282,220,'衡阳县',3,0),(2283,220,'衡南县',3,0),(2284,220,'衡山县',3,0),(2285,220,'衡东县',3,0),(2286,220,'祁东县',3,0),(2287,220,'耒阳市',3,0),(2288,220,'常宁市',3,0),(2289,220,'其它区',3,0),(2290,221,'双清区',3,0),(2291,221,'大祥区',3,0),(2292,221,'北塔区',3,0),(2293,221,'邵东县',3,0),(2294,221,'新邵县',3,0),(2295,221,'邵阳县',3,0),(2296,221,'隆回县',3,0),(2297,221,'洞口县',3,0),(2298,221,'绥宁县',3,0),(2299,221,'新宁县',3,0),(2300,221,'城步苗族自治县',3,0),(2301,221,'武冈市',3,0),(2302,221,'其它区',3,0),(2303,222,'岳阳楼区',3,0),(2304,222,'云溪区',3,0),(2305,222,'君山区',3,0),(2306,222,'岳阳县',3,0),(2307,222,'华容县',3,0),(2308,222,'湘阴县',3,0),(2309,222,'平江县',3,0),(2310,222,'汨罗市',3,0),(2311,222,'临湘市',3,0),(2312,222,'其它区',3,0),(2313,223,'武陵区',3,0),(2314,223,'鼎城区',3,0),(2315,223,'安乡县',3,0),(2316,223,'汉寿县',3,0),(2317,223,'澧县',3,0),(2318,223,'临澧县',3,0),(2319,223,'桃源县',3,0),(2320,223,'石门县',3,0),(2321,223,'津市市',3,0),(2322,223,'其它区',3,0),(2323,224,'永定区',3,0),(2324,224,'武陵源区',3,0),(2325,224,'慈利县',3,0),(2326,224,'桑植县',3,0),(2327,224,'其它区',3,0),(2328,225,'资阳区',3,0),(2329,225,'赫山区',3,0),(2330,225,'南县',3,0),(2331,225,'桃江县',3,0),(2332,225,'安化县',3,0),(2333,225,'沅江市',3,0),(2334,225,'其它区',3,0),(2335,226,'北湖区',3,0),(2336,226,'苏仙区',3,0),(2337,226,'桂阳县',3,0),(2338,226,'宜章县',3,0),(2339,226,'永兴县',3,0),(2340,226,'嘉禾县',3,0),(2341,226,'临武县',3,0),(2342,226,'汝城县',3,0),(2343,226,'桂东县',3,0),(2344,226,'安仁县',3,0),(2345,226,'资兴市',3,0),(2346,226,'其它区',3,0),(2347,227,'零陵区',3,0),(2348,227,'冷水滩区',3,0),(2349,227,'祁阳县',3,0),(2350,227,'东安县',3,0),(2351,227,'双牌县',3,0),(2352,227,'道县',3,0),(2353,227,'江永县',3,0),(2354,227,'宁远县',3,0),(2355,227,'蓝山县',3,0),(2356,227,'新田县',3,0),(2357,227,'江华瑶族自治县',3,0),(2358,227,'其它区',3,0),(2359,228,'鹤城区',3,0),(2360,228,'中方县',3,0),(2361,228,'沅陵县',3,0),(2362,228,'辰溪县',3,0),(2363,228,'溆浦县',3,0),(2364,228,'会同县',3,0),(2365,228,'麻阳苗族自治县',3,0),(2366,228,'新晃侗族自治县',3,0),(2367,228,'芷江侗族自治县',3,0),(2368,228,'靖州苗族侗族自治县',3,0),(2369,228,'通道侗族自治县',3,0),(2370,228,'洪江市',3,0),(2371,228,'其它区',3,0),(2372,229,'娄星区',3,0),(2373,229,'双峰县',3,0),(2374,229,'新化县',3,0),(2375,229,'冷水江市',3,0),(2376,229,'涟源市',3,0),(2377,229,'其它区',3,0),(2378,230,'吉首市',3,0),(2379,230,'泸溪县',3,0),(2380,230,'凤凰县',3,0),(2381,230,'花垣县',3,0),(2382,230,'保靖县',3,0),(2383,230,'古丈县',3,0),(2384,230,'永顺县',3,0),(2385,230,'龙山县',3,0),(2386,230,'其它区',3,0),(2387,231,'荔湾区',3,0),(2388,231,'越秀区',3,0),(2389,231,'海珠区',3,0),(2390,231,'天河区',3,0),(2391,231,'白云区',3,0),(2392,231,'黄埔区',3,0),(2393,231,'番禺区',3,0),(2394,231,'花都区',3,0),(2395,231,'南沙区',3,0),(2396,231,'萝岗区',3,0),(2397,231,'增城区',3,0),(2398,231,'从化区',3,0),(2399,231,'东山区',3,0),(2400,231,'其它区',3,0),(2401,232,'武江区',3,0),(2402,232,'浈江区',3,0),(2403,232,'曲江区',3,0),(2404,232,'始兴县',3,0),(2405,232,'仁化县',3,0),(2406,232,'翁源县',3,0),(2407,232,'乳源瑶族自治县',3,0),(2408,232,'新丰县',3,0),(2409,232,'乐昌市',3,0),(2410,232,'南雄市',3,0),(2411,232,'其它区',3,0),(2412,233,'罗湖区',3,0),(2413,233,'福田区',3,0),(2414,233,'南山区',3,0),(2415,233,'宝安区',3,0),(2416,233,'龙岗区',3,0),(2417,233,'盐田区',3,0),(2418,233,'其它区',3,0),(2419,233,'光明新区',3,0),(2420,233,'坪山新区',3,0),(2421,233,'大鹏新区',3,0),(2422,233,'龙华新区',3,0),(2423,234,'香洲区',3,0),(2424,234,'斗门区',3,0),(2425,234,'金湾区',3,0),(2426,234,'金唐区',3,0),(2427,234,'南湾区',3,0),(2428,234,'其它区',3,0),(2429,235,'龙湖区',3,0),(2430,235,'金平区',3,0),(2431,235,'濠江区',3,0),(2432,235,'潮阳区',3,0),(2433,235,'潮南区',3,0),(2434,235,'澄海区',3,0),(2435,235,'南澳县',3,0),(2436,235,'其它区',3,0),(2437,236,'禅城区',3,0),(2438,236,'南海区',3,0),(2439,236,'顺德区',3,0),(2440,236,'三水区',3,0),(2441,236,'高明区',3,0),(2442,236,'其它区',3,0),(2443,237,'蓬江区',3,0),(2444,237,'江海区',3,0),(2445,237,'新会区',3,0),(2446,237,'台山市',3,0),(2447,237,'开平市',3,0),(2448,237,'鹤山市',3,0),(2449,237,'恩平市',3,0),(2450,237,'其它区',3,0),(2451,238,'赤坎区',3,0),(2452,238,'霞山区',3,0),(2453,238,'坡头区',3,0),(2454,238,'麻章区',3,0),(2455,238,'遂溪县',3,0),(2456,238,'徐闻县',3,0),(2457,238,'廉江市',3,0),(2458,238,'雷州市',3,0),(2459,238,'吴川市',3,0),(2460,238,'其它区',3,0),(2461,239,'茂南区',3,0),(2462,239,'电白区',3,0),(2463,239,'电白县',3,0),(2464,239,'高州市',3,0),(2465,239,'化州市',3,0),(2466,239,'信宜市',3,0),(2467,239,'其它区',3,0),(2468,240,'端州区',3,0),(2469,240,'鼎湖区',3,0),(2470,240,'广宁县',3,0),(2471,240,'怀集县',3,0),(2472,240,'封开县',3,0),(2473,240,'德庆县',3,0),(2474,240,'高要市',3,0),(2475,240,'四会市',3,0),(2476,240,'其它区',3,0),(2477,241,'惠城区',3,0),(2478,241,'惠阳区',3,0),(2479,241,'博罗县',3,0),(2480,241,'惠东县',3,0),(2481,241,'龙门县',3,0),(2482,241,'其它区',3,0),(2483,242,'梅江区',3,0),(2484,242,'梅县区',3,0),(2485,242,'大埔县',3,0),(2486,242,'丰顺县',3,0),(2487,242,'五华县',3,0),(2488,242,'平远县',3,0),(2489,242,'蕉岭县',3,0),(2490,242,'兴宁市',3,0),(2491,242,'其它区',3,0),(2492,243,'城区',3,0),(2493,243,'海丰县',3,0),(2494,243,'陆河县',3,0),(2495,243,'陆丰市',3,0),(2496,243,'其它区',3,0),(2497,244,'源城区',3,0),(2498,244,'紫金县',3,0),(2499,244,'龙川县',3,0),(2500,244,'连平县',3,0),(2501,244,'和平县',3,0),(2502,244,'东源县',3,0),(2503,244,'其它区',3,0),(2504,245,'江城区',3,0),(2505,245,'阳西县',3,0),(2506,245,'阳东区',3,0),(2507,245,'阳春市',3,0),(2508,245,'其它区',3,0),(2509,246,'清城区',3,0),(2510,246,'佛冈县',3,0),(2511,246,'阳山县',3,0),(2512,246,'连山壮族瑶族自治县',3,0),(2513,246,'连南瑶族自治县',3,0),(2514,246,'清新区',3,0),(2515,246,'英德市',3,0),(2516,246,'连州市',3,0),(2517,246,'其它区',3,0),(2518,250,'湘桥区',3,0),(2519,250,'潮安区',3,0),(2520,250,'饶平县',3,0),(2521,250,'枫溪区',3,0),(2522,250,'其它区',3,0),(2523,251,'榕城区',3,0),(2524,251,'揭东区',3,0),(2525,251,'揭西县',3,0),(2526,251,'惠来县',3,0),(2527,251,'普宁市',3,0),(2528,251,'东山区',3,0),(2529,251,'其它区',3,0),(2530,252,'云城区',3,0),(2531,252,'新兴县',3,0),(2532,252,'郁南县',3,0),(2533,252,'云安区',3,0),(2534,252,'罗定市',3,0),(2535,252,'其它区',3,0),(2536,253,'兴宁区',3,0),(2537,253,'青秀区',3,0),(2538,253,'江南区',3,0),(2539,253,'西乡塘区',3,0),(2540,253,'良庆区',3,0),(2541,253,'邕宁区',3,0),(2542,253,'武鸣区',3,0),(2543,253,'隆安县',3,0),(2544,253,'马山县',3,0),(2545,253,'上林县',3,0),(2546,253,'宾阳县',3,0),(2547,253,'横县',3,0),(2548,253,'其它区',3,0),(2549,254,'城中区',3,0),(2550,254,'鱼峰区',3,0),(2551,254,'柳南区',3,0),(2552,254,'柳北区',3,0),(2553,254,'柳江县',3,0),(2554,254,'柳城县',3,0),(2555,254,'鹿寨县',3,0),(2556,254,'融安县',3,0),(2557,254,'融水苗族自治县',3,0),(2558,254,'三江侗族自治县',3,0),(2559,254,'其它区',3,0),(2560,255,'秀峰区',3,0),(2561,255,'叠彩区',3,0),(2562,255,'象山区',3,0),(2563,255,'七星区',3,0),(2564,255,'雁山区',3,0),(2565,255,'阳朔县',3,0),(2566,255,'临桂区',3,0),(2567,255,'灵川县',3,0),(2568,255,'全州县',3,0),(2569,255,'兴安县',3,0),(2570,255,'永福县',3,0),(2571,255,'灌阳县',3,0),(2572,255,'龙胜各族自治县',3,0),(2573,255,'资源县',3,0),(2574,255,'平乐县',3,0),(2575,255,'荔浦县',3,0),(2576,255,'恭城瑶族自治县',3,0),(2577,255,'其它区',3,0),(2578,256,'万秀区',3,0),(2579,256,'蝶山区',3,0),(2580,256,'长洲区',3,0),(2581,256,'龙圩区',3,0),(2582,256,'苍梧县',3,0),(2583,256,'藤县',3,0),(2584,256,'蒙山县',3,0),(2585,256,'岑溪市',3,0),(2586,256,'其它区',3,0),(2587,257,'海城区',3,0),(2588,257,'银海区',3,0),(2589,257,'铁山港区',3,0),(2590,257,'合浦县',3,0),(2591,257,'其它区',3,0),(2592,258,'港口区',3,0),(2593,258,'防城区',3,0),(2594,258,'上思县',3,0),(2595,258,'东兴市',3,0),(2596,258,'其它区',3,0),(2597,259,'钦南区',3,0),(2598,259,'钦北区',3,0),(2599,259,'灵山县',3,0),(2600,259,'浦北县',3,0),(2601,259,'其它区',3,0),(2602,260,'港北区',3,0),(2603,260,'港南区',3,0),(2604,260,'覃塘区',3,0),(2605,260,'平南县',3,0),(2606,260,'桂平市',3,0),(2607,260,'其它区',3,0),(2608,261,'玉州区',3,0),(2609,261,'福绵区',3,0),(2610,261,'容县',3,0),(2611,261,'陆川县',3,0),(2612,261,'博白县',3,0),(2613,261,'兴业县',3,0),(2614,261,'北流市',3,0),(2615,261,'其它区',3,0),(2616,262,'右江区',3,0),(2617,262,'田阳县',3,0),(2618,262,'田东县',3,0),(2619,262,'平果县',3,0),(2620,262,'德保县',3,0),(2621,262,'靖西县',3,0),(2622,262,'那坡县',3,0),(2623,262,'凌云县',3,0),(2624,262,'乐业县',3,0),(2625,262,'田林县',3,0),(2626,262,'西林县',3,0),(2627,262,'隆林各族自治县',3,0),(2628,262,'其它区',3,0),(2629,263,'八步区',3,0),(2630,263,'平桂管理区',3,0),(2631,263,'昭平县',3,0),(2632,263,'钟山县',3,0),(2633,263,'富川瑶族自治县',3,0),(2634,263,'其它区',3,0),(2635,264,'金城江区',3,0),(2636,264,'南丹县',3,0),(2637,264,'天峨县',3,0),(2638,264,'凤山县',3,0),(2639,264,'东兰县',3,0),(2640,264,'罗城仫佬族自治县',3,0),(2641,264,'环江毛南族自治县',3,0),(2642,264,'巴马瑶族自治县',3,0),(2643,264,'都安瑶族自治县',3,0),(2644,264,'大化瑶族自治县',3,0),(2645,264,'宜州市',3,0),(2646,264,'其它区',3,0),(2647,265,'兴宾区',3,0),(2648,265,'忻城县',3,0),(2649,265,'象州县',3,0),(2650,265,'武宣县',3,0),(2651,265,'金秀瑶族自治县',3,0),(2652,265,'合山市',3,0),(2653,265,'其它区',3,0),(2654,266,'江州区',3,0),(2655,266,'扶绥县',3,0),(2656,266,'宁明县',3,0),(2657,266,'龙州县',3,0),(2658,266,'大新县',3,0),(2659,266,'天等县',3,0),(2660,266,'凭祥市',3,0),(2661,266,'其它区',3,0),(2662,267,'秀英区',3,0),(2663,267,'龙华区',3,0),(2664,267,'琼山区',3,0),(2665,267,'美兰区',3,0),(2666,267,'其它区',3,0),(2667,269,'西沙群岛',3,0),(2668,269,'南沙群岛',3,0),(2669,269,'中沙群岛的岛礁及其海域',3,0),(2670,189,'高新区',3,0),(2671,189,'其它区',3,0),(2672,270,'万州区',3,0),(2673,270,'涪陵区',3,0),(2674,270,'渝中区',3,0),(2675,270,'大渡口区',3,0),(2676,270,'江北区',3,0),(2677,270,'沙坪坝区',3,0),(2678,270,'九龙坡区',3,0),(2679,270,'南岸区',3,0),(2680,270,'北碚区',3,0),(2681,270,'万盛区',3,0),(2682,270,'双桥区',3,0),(2683,270,'渝北区',3,0),(2684,270,'巴南区',3,0),(2685,270,'黔江区',3,0),(2686,270,'长寿区',3,0),(2687,270,'綦江区',3,0),(2688,270,'潼南县',3,0),(2689,270,'铜梁区',3,0),(2690,270,'大足区',3,0),(2691,270,'荣昌县',3,0),(2692,270,'璧山区',3,0),(2693,270,'梁平县',3,0),(2694,270,'城口县',3,0),(2695,270,'丰都县',3,0),(2696,270,'垫江县',3,0),(2697,270,'武隆县',3,0),(2698,270,'忠县',3,0),(2699,270,'开县',3,0),(2700,270,'云阳县',3,0),(2701,270,'奉节县',3,0),(2702,270,'巫山县',3,0),(2703,270,'巫溪县',3,0),(2704,270,'石柱土家族自治县',3,0),(2705,270,'秀山土家族苗族自治县',3,0),(2706,270,'酉阳土家族苗族自治县',3,0),(2707,270,'彭水苗族土家族自治县',3,0),(2708,270,'江津区',3,0),(2709,270,'合川区',3,0),(2710,270,'永川区',3,0),(2711,270,'南川区',3,0),(2712,270,'其它区',3,0),(2713,271,'锦江区',3,0),(2714,271,'青羊区',3,0),(2715,271,'金牛区',3,0),(2716,271,'武侯区',3,0),(2717,271,'成华区',3,0),(2718,271,'龙泉驿区',3,0),(2719,271,'青白江区',3,0),(2720,271,'新都区',3,0),(2721,271,'温江区',3,0),(2722,271,'金堂县',3,0),(2723,271,'双流县',3,0),(2724,271,'郫县',3,0),(2725,271,'大邑县',3,0),(2726,271,'蒲江县',3,0),(2727,271,'新津县',3,0),(2728,271,'都江堰市',3,0),(2729,271,'彭州市',3,0),(2730,271,'邛崃市',3,0),(2731,271,'崇州市',3,0),(2732,271,'其它区',3,0),(2733,272,'自流井区',3,0),(2734,272,'贡井区',3,0),(2735,272,'大安区',3,0),(2736,272,'沿滩区',3,0),(2737,272,'荣县',3,0),(2738,272,'富顺县',3,0),(2739,272,'其它区',3,0),(2740,273,'东区',3,0),(2741,273,'西区',3,0),(2742,273,'仁和区',3,0),(2743,273,'米易县',3,0),(2744,273,'盐边县',3,0),(2745,273,'其它区',3,0),(2746,274,'江阳区',3,0),(2747,274,'纳溪区',3,0),(2748,274,'龙马潭区',3,0),(2749,274,'泸县',3,0),(2750,274,'合江县',3,0),(2751,274,'叙永县',3,0),(2752,274,'古蔺县',3,0),(2753,274,'其它区',3,0),(2754,275,'旌阳区',3,0),(2755,275,'中江县',3,0),(2756,275,'罗江县',3,0),(2757,275,'广汉市',3,0),(2758,275,'什邡市',3,0),(2759,275,'绵竹市',3,0),(2760,275,'其它区',3,0),(2761,276,'涪城区',3,0),(2762,276,'游仙区',3,0),(2763,276,'三台县',3,0),(2764,276,'盐亭县',3,0),(2765,276,'安县',3,0),(2766,276,'梓潼县',3,0),(2767,276,'北川羌族自治县',3,0),(2768,276,'平武县',3,0),(2769,276,'高新区',3,0),(2770,276,'江油市',3,0),(2771,276,'其它区',3,0),(2772,277,'利州区',3,0),(2773,277,'昭化区',3,0),(2774,277,'朝天区',3,0),(2775,277,'旺苍县',3,0),(2776,277,'青川县',3,0),(2777,277,'剑阁县',3,0),(2778,277,'苍溪县',3,0),(2779,277,'其它区',3,0),(2780,278,'船山区',3,0),(2781,278,'安居区',3,0),(2782,278,'蓬溪县',3,0),(2783,278,'射洪县',3,0),(2784,278,'大英县',3,0),(2785,278,'其它区',3,0),(2786,279,'市中区',3,0),(2787,279,'东兴区',3,0),(2788,279,'威远县',3,0),(2789,279,'资中县',3,0),(2790,279,'隆昌县',3,0),(2791,279,'其它区',3,0),(2792,280,'市中区',3,0),(2793,280,'沙湾区',3,0),(2794,280,'五通桥区',3,0),(2795,280,'金口河区',3,0),(2796,280,'犍为县',3,0),(2797,280,'井研县',3,0),(2798,280,'夹江县',3,0),(2799,280,'沐川县',3,0),(2800,280,'峨边彝族自治县',3,0),(2801,280,'马边彝族自治县',3,0),(2802,280,'峨眉山市',3,0),(2803,280,'其它区',3,0),(2804,281,'顺庆区',3,0),(2805,281,'高坪区',3,0),(2806,281,'嘉陵区',3,0),(2807,281,'南部县',3,0),(2808,281,'营山县',3,0),(2809,281,'蓬安县',3,0),(2810,281,'仪陇县',3,0),(2811,281,'西充县',3,0),(2812,281,'阆中市',3,0),(2813,281,'其它区',3,0),(2814,282,'东坡区',3,0),(2815,282,'仁寿县',3,0),(2816,282,'彭山区',3,0),(2817,282,'洪雅县',3,0),(2818,282,'丹棱县',3,0),(2819,282,'青神县',3,0),(2820,282,'其它区',3,0),(2821,283,'翠屏区',3,0),(2822,283,'宜宾县',3,0),(2823,283,'南溪区',3,0),(2824,283,'江安县',3,0),(2825,283,'长宁县',3,0),(2826,283,'高县',3,0),(2827,283,'珙县',3,0),(2828,283,'筠连县',3,0),(2829,283,'兴文县',3,0),(2830,283,'屏山县',3,0),(2831,283,'其它区',3,0),(2832,284,'广安区',3,0),(2833,284,'前锋区',3,0),(2834,284,'岳池县',3,0),(2835,284,'武胜县',3,0),(2836,284,'邻水县',3,0),(2837,284,'华蓥市',3,0),(2838,284,'市辖区',3,0),(2839,284,'其它区',3,0),(2840,285,'通川区',3,0),(2841,285,'达川区',3,0),(2842,285,'宣汉县',3,0),(2843,285,'开江县',3,0),(2844,285,'大竹县',3,0),(2845,285,'渠县',3,0),(2846,285,'万源市',3,0),(2847,285,'其它区',3,0),(2848,286,'雨城区',3,0),(2849,286,'名山区',3,0),(2850,286,'荥经县',3,0),(2851,286,'汉源县',3,0),(2852,286,'石棉县',3,0),(2853,286,'天全县',3,0),(2854,286,'芦山县',3,0),(2855,286,'宝兴县',3,0),(2856,286,'其它区',3,0),(2857,287,'巴州区',3,0),(2858,287,'恩阳区',3,0),(2859,287,'通江县',3,0),(2860,287,'南江县',3,0),(2861,287,'平昌县',3,0),(2862,287,'其它区',3,0),(2863,288,'雁江区',3,0),(2864,288,'安岳县',3,0),(2865,288,'乐至县',3,0),(2866,288,'简阳市',3,0),(2867,288,'其它区',3,0),(2868,289,'汶川县',3,0),(2869,289,'理县',3,0),(2870,289,'茂县',3,0),(2871,289,'松潘县',3,0),(2872,289,'九寨沟县',3,0),(2873,289,'金川县',3,0),(2874,289,'小金县',3,0),(2875,289,'黑水县',3,0),(2876,289,'马尔康县',3,0),(2877,289,'壤塘县',3,0),(2878,289,'阿坝县',3,0),(2879,289,'若尔盖县',3,0),(2880,289,'红原县',3,0),(2881,289,'其它区',3,0),(2882,290,'康定市',3,0),(2883,290,'泸定县',3,0),(2884,290,'丹巴县',3,0),(2885,290,'九龙县',3,0),(2886,290,'雅江县',3,0),(2887,290,'道孚县',3,0),(2888,290,'炉霍县',3,0),(2889,290,'甘孜县',3,0),(2890,290,'新龙县',3,0),(2891,290,'德格县',3,0),(2892,290,'白玉县',3,0),(2893,290,'石渠县',3,0),(2894,290,'色达县',3,0),(2895,290,'理塘县',3,0),(2896,290,'巴塘县',3,0),(2897,290,'乡城县',3,0),(2898,290,'稻城县',3,0),(2899,290,'得荣县',3,0),(2900,290,'其它区',3,0),(2901,291,'西昌市',3,0),(2902,291,'木里藏族自治县',3,0),(2903,291,'盐源县',3,0),(2904,291,'德昌县',3,0),(2905,291,'会理县',3,0),(2906,291,'会东县',3,0),(2907,291,'宁南县',3,0),(2908,291,'普格县',3,0),(2909,291,'布拖县',3,0),(2910,291,'金阳县',3,0),(2911,291,'昭觉县',3,0),(2912,291,'喜德县',3,0),(2913,291,'冕宁县',3,0),(2914,291,'越西县',3,0),(2915,291,'甘洛县',3,0),(2916,291,'美姑县',3,0),(2917,291,'雷波县',3,0),(2918,291,'其它区',3,0),(2919,292,'南明区',3,0),(2920,292,'云岩区',3,0),(2921,292,'花溪区',3,0),(2922,292,'乌当区',3,0),(2923,292,'白云区',3,0),(2924,292,'小河区',3,0),(2925,292,'开阳县',3,0),(2926,292,'息烽县',3,0),(2927,292,'修文县',3,0),(2928,292,'观山湖区',3,0),(2929,292,'清镇市',3,0),(2930,292,'其它区',3,0),(2931,293,'钟山区',3,0),(2932,293,'六枝特区',3,0),(2933,293,'水城县',3,0),(2934,293,'盘县',3,0),(2935,293,'其它区',3,0),(2936,294,'红花岗区',3,0),(2937,294,'汇川区',3,0),(2938,294,'遵义县',3,0),(2939,294,'桐梓县',3,0),(2940,294,'绥阳县',3,0),(2941,294,'正安县',3,0),(2942,294,'道真仡佬族苗族自治县',3,0),(2943,294,'务川仡佬族苗族自治县',3,0),(2944,294,'凤冈县',3,0),(2945,294,'湄潭县',3,0),(2946,294,'余庆县',3,0),(2947,294,'习水县',3,0),(2948,294,'赤水市',3,0),(2949,294,'仁怀市',3,0),(2950,294,'其它区',3,0),(2951,295,'西秀区',3,0),(2952,295,'平坝区',3,0),(2953,295,'普定县',3,0),(2954,295,'镇宁布依族苗族自治县',3,0),(2955,295,'关岭布依族苗族自治县',3,0),(2956,295,'紫云苗族布依族自治县',3,0),(2957,295,'其它区',3,0),(2958,296,'碧江区',3,0),(2959,296,'江口县',3,0),(2960,296,'玉屏侗族自治县',3,0),(2961,296,'石阡县',3,0),(2962,296,'思南县',3,0),(2963,296,'印江土家族苗族自治县',3,0),(2964,296,'德江县',3,0),(2965,296,'沿河土家族自治县',3,0),(2966,296,'松桃苗族自治县',3,0),(2967,296,'万山区',3,0),(2968,296,'其它区',3,0),(2969,297,'兴义市',3,0),(2970,297,'兴仁县',3,0),(2971,297,'普安县',3,0),(2972,297,'晴隆县',3,0),(2973,297,'贞丰县',3,0),(2974,297,'望谟县',3,0),(2975,297,'册亨县',3,0),(2976,297,'安龙县',3,0),(2977,297,'其它区',3,0),(2978,298,'七星关区',3,0),(2979,298,'大方县',3,0),(2980,298,'黔西县',3,0),(2981,298,'金沙县',3,0),(2982,298,'织金县',3,0),(2983,298,'纳雍县',3,0),(2984,298,'威宁彝族回族苗族自治县',3,0),(2985,298,'赫章县',3,0),(2986,298,'其它区',3,0),(2987,299,'凯里市',3,0),(2988,299,'黄平县',3,0),(2989,299,'施秉县',3,0),(2990,299,'三穗县',3,0),(2991,299,'镇远县',3,0),(2992,299,'岑巩县',3,0),(2993,299,'天柱县',3,0),(2994,299,'锦屏县',3,0),(2995,299,'剑河县',3,0),(2996,299,'台江县',3,0),(2997,299,'黎平县',3,0),(2998,299,'榕江县',3,0),(2999,299,'从江县',3,0),(3000,299,'雷山县',3,0),(3001,299,'麻江县',3,0),(3002,299,'丹寨县',3,0),(3003,299,'其它区',3,0),(3004,300,'都匀市',3,0),(3005,300,'福泉市',3,0),(3006,300,'荔波县',3,0),(3007,300,'贵定县',3,0),(3008,300,'瓮安县',3,0),(3009,300,'独山县',3,0),(3010,300,'平塘县',3,0),(3011,300,'罗甸县',3,0),(3012,300,'长顺县',3,0),(3013,300,'龙里县',3,0),(3014,300,'惠水县',3,0),(3015,300,'三都水族自治县',3,0),(3016,300,'其它区',3,0),(3017,301,'五华区',3,0),(3018,301,'盘龙区',3,0),(3019,301,'官渡区',3,0),(3020,301,'西山区',3,0),(3021,301,'东川区',3,0),(3022,301,'呈贡区',3,0),(3023,301,'晋宁县',3,0),(3024,301,'富民县',3,0),(3025,301,'宜良县',3,0),(3026,301,'石林彝族自治县',3,0),(3027,301,'嵩明县',3,0),(3028,301,'禄劝彝族苗族自治县',3,0),(3029,301,'寻甸回族彝族自治县',3,0),(3030,301,'安宁市',3,0),(3031,301,'其它区',3,0),(3032,302,'麒麟区',3,0),(3033,302,'马龙县',3,0),(3034,302,'陆良县',3,0),(3035,302,'师宗县',3,0),(3036,302,'罗平县',3,0),(3037,302,'富源县',3,0),(3038,302,'会泽县',3,0),(3039,302,'沾益县',3,0),(3040,302,'宣威市',3,0),(3041,302,'其它区',3,0),(3042,303,'红塔区',3,0),(3043,303,'江川县',3,0),(3044,303,'澄江县',3,0),(3045,303,'通海县',3,0),(3046,303,'华宁县',3,0),(3047,303,'易门县',3,0),(3048,303,'峨山彝族自治县',3,0),(3049,303,'新平彝族傣族自治县',3,0),(3050,303,'元江哈尼族彝族傣族自治县',3,0),(3051,303,'其它区',3,0),(3052,304,'隆阳区',3,0),(3053,304,'施甸县',3,0),(3054,304,'腾冲县',3,0),(3055,304,'龙陵县',3,0),(3056,304,'昌宁县',3,0),(3057,304,'其它区',3,0),(3058,305,'昭阳区',3,0),(3059,305,'鲁甸县',3,0),(3060,305,'巧家县',3,0),(3061,305,'盐津县',3,0),(3062,305,'大关县',3,0),(3063,305,'永善县',3,0),(3064,305,'绥江县',3,0),(3065,305,'镇雄县',3,0),(3066,305,'彝良县',3,0),(3067,305,'威信县',3,0),(3068,305,'水富县',3,0),(3069,305,'其它区',3,0),(3070,306,'古城区',3,0),(3071,306,'玉龙纳西族自治县',3,0),(3072,306,'永胜县',3,0),(3073,306,'华坪县',3,0),(3074,306,'宁蒗彝族自治县',3,0),(3075,306,'其它区',3,0),(3076,307,'思茅区',3,0),(3077,307,'宁洱哈尼族彝族自治县',3,0),(3078,307,'墨江哈尼族自治县',3,0),(3079,307,'景东彝族自治县',3,0),(3080,307,'景谷傣族彝族自治县',3,0),(3081,307,'镇沅彝族哈尼族拉祜族自治县',3,0),(3082,307,'江城哈尼族彝族自治县',3,0),(3083,307,'孟连傣族拉祜族佤族自治县',3,0),(3084,307,'澜沧拉祜族自治县',3,0),(3085,307,'西盟佤族自治县',3,0),(3086,307,'其它区',3,0),(3087,308,'临翔区',3,0),(3088,308,'凤庆县',3,0),(3089,308,'云县',3,0),(3090,308,'永德县',3,0),(3091,308,'镇康县',3,0),(3092,308,'双江拉祜族佤族布朗族傣族自治县',3,0),(3093,308,'耿马傣族佤族自治县',3,0),(3094,308,'沧源佤族自治县',3,0),(3095,308,'其它区',3,0),(3096,309,'楚雄市',3,0),(3097,309,'双柏县',3,0),(3098,309,'牟定县',3,0),(3099,309,'南华县',3,0),(3100,309,'姚安县',3,0),(3101,309,'大姚县',3,0),(3102,309,'永仁县',3,0),(3103,309,'元谋县',3,0),(3104,309,'武定县',3,0),(3105,309,'禄丰县',3,0),(3106,309,'其它区',3,0),(3107,310,'个旧市',3,0),(3108,310,'开远市',3,0),(3109,310,'蒙自市',3,0),(3110,310,'屏边苗族自治县',3,0),(3111,310,'建水县',3,0),(3112,310,'石屏县',3,0),(3113,310,'弥勒市',3,0),(3114,310,'泸西县',3,0),(3115,310,'元阳县',3,0),(3116,310,'红河县',3,0),(3117,310,'金平苗族瑶族傣族自治县',3,0),(3118,310,'绿春县',3,0),(3119,310,'河口瑶族自治县',3,0),(3120,310,'其它区',3,0),(3121,311,'文山市',3,0),(3122,311,'砚山县',3,0),(3123,311,'西畴县',3,0),(3124,311,'麻栗坡县',3,0),(3125,311,'马关县',3,0),(3126,311,'丘北县',3,0),(3127,311,'广南县',3,0),(3128,311,'富宁县',3,0),(3129,311,'其它区',3,0),(3130,312,'景洪市',3,0),(3131,312,'勐海县',3,0),(3132,312,'勐腊县',3,0),(3133,312,'其它区',3,0),(3134,313,'大理市',3,0),(3135,313,'漾濞彝族自治县',3,0),(3136,313,'祥云县',3,0),(3137,313,'宾川县',3,0),(3138,313,'弥渡县',3,0),(3139,313,'南涧彝族自治县',3,0),(3140,313,'巍山彝族回族自治县',3,0),(3141,313,'永平县',3,0),(3142,313,'云龙县',3,0),(3143,313,'洱源县',3,0),(3144,313,'剑川县',3,0),(3145,313,'鹤庆县',3,0),(3146,313,'其它区',3,0),(3147,314,'瑞丽市',3,0),(3148,314,'芒市',3,0),(3149,314,'梁河县',3,0),(3150,314,'盈江县',3,0),(3151,314,'陇川县',3,0),(3152,314,'其它区',3,0),(3153,315,'泸水县',3,0),(3154,315,'福贡县',3,0),(3155,315,'贡山独龙族怒族自治县',3,0),(3156,315,'兰坪白族普米族自治县',3,0),(3157,315,'其它区',3,0),(3158,316,'香格里拉市',3,0),(3159,316,'德钦县',3,0),(3160,316,'维西傈僳族自治县',3,0),(3161,316,'其它区',3,0),(3162,317,'城关区',3,0),(3163,317,'林周县',3,0),(3164,317,'当雄县',3,0),(3165,317,'尼木县',3,0),(3166,317,'曲水县',3,0),(3167,317,'堆龙德庆县',3,0),(3168,317,'达孜县',3,0),(3169,317,'墨竹工卡县',3,0),(3170,317,'其它区',3,0),(3171,318,'卡若区',3,0),(3172,318,'江达县',3,0),(3173,318,'贡觉县',3,0),(3174,318,'类乌齐县',3,0),(3175,318,'丁青县',3,0),(3176,318,'察雅县',3,0),(3177,318,'八宿县',3,0),(3178,318,'左贡县',3,0),(3179,318,'芒康县',3,0),(3180,318,'洛隆县',3,0),(3181,318,'边坝县',3,0),(3182,318,'其它区',3,0),(3183,319,'乃东县',3,0),(3184,319,'扎囊县',3,0),(3185,319,'贡嘎县',3,0),(3186,319,'桑日县',3,0),(3187,319,'琼结县',3,0),(3188,319,'曲松县',3,0),(3189,319,'措美县',3,0),(3190,319,'洛扎县',3,0),(3191,319,'加查县',3,0),(3192,319,'隆子县',3,0),(3193,319,'错那县',3,0),(3194,319,'浪卡子县',3,0),(3195,319,'其它区',3,0),(3196,320,'桑珠孜区',3,0),(3197,320,'南木林县',3,0),(3198,320,'江孜县',3,0),(3199,320,'定日县',3,0),(3200,320,'萨迦县',3,0),(3201,320,'拉孜县',3,0),(3202,320,'昂仁县',3,0),(3203,320,'谢通门县',3,0),(3204,320,'白朗县',3,0),(3205,320,'仁布县',3,0),(3206,320,'康马县',3,0),(3207,320,'定结县',3,0),(3208,320,'仲巴县',3,0),(3209,320,'亚东县',3,0),(3210,320,'吉隆县',3,0),(3211,320,'聂拉木县',3,0),(3212,320,'萨嘎县',3,0),(3213,320,'岗巴县',3,0),(3214,320,'其它区',3,0),(3215,321,'那曲县',3,0),(3216,321,'嘉黎县',3,0),(3217,321,'比如县',3,0),(3218,321,'聂荣县',3,0),(3219,321,'安多县',3,0),(3220,321,'申扎县',3,0),(3221,321,'索县',3,0),(3222,321,'班戈县',3,0),(3223,321,'巴青县',3,0),(3224,321,'尼玛县',3,0),(3225,321,'其它区',3,0),(3226,321,'双湖县',3,0),(3227,322,'普兰县',3,0),(3228,322,'札达县',3,0),(3229,322,'噶尔县',3,0),(3230,322,'日土县',3,0),(3231,322,'革吉县',3,0),(3232,322,'改则县',3,0),(3233,322,'措勤县',3,0),(3234,322,'其它区',3,0),(3235,323,'巴宜区',3,0),(3236,323,'工布江达县',3,0),(3237,323,'米林县',3,0),(3238,323,'墨脱县',3,0),(3239,323,'波密县',3,0),(3240,323,'察隅县',3,0),(3241,323,'朗县',3,0),(3242,323,'其它区',3,0),(3243,324,'新城区',3,0),(3244,324,'碑林区',3,0),(3245,324,'莲湖区',3,0),(3246,324,'灞桥区',3,0),(3247,324,'未央区',3,0),(3248,324,'雁塔区',3,0),(3249,324,'阎良区',3,0),(3250,324,'临潼区',3,0),(3251,324,'长安区',3,0),(3252,324,'蓝田县',3,0),(3253,324,'周至县',3,0),(3254,324,'户县',3,0),(3255,324,'高陵区',3,0),(3256,324,'其它区',3,0),(3257,325,'王益区',3,0),(3258,325,'印台区',3,0),(3259,325,'耀州区',3,0),(3260,325,'宜君县',3,0),(3261,325,'其它区',3,0),(3262,326,'渭滨区',3,0),(3263,326,'金台区',3,0),(3264,326,'陈仓区',3,0),(3265,326,'凤翔县',3,0),(3266,326,'岐山县',3,0),(3267,326,'扶风县',3,0),(3268,326,'眉县',3,0),(3269,326,'陇县',3,0),(3270,326,'千阳县',3,0),(3271,326,'麟游县',3,0),(3272,326,'凤县',3,0),(3273,326,'太白县',3,0),(3274,326,'其它区',3,0),(3275,327,'秦都区',3,0),(3276,327,'杨陵区',3,0),(3277,327,'渭城区',3,0),(3278,327,'三原县',3,0),(3279,327,'泾阳县',3,0),(3280,327,'乾县',3,0),(3281,327,'礼泉县',3,0),(3282,327,'永寿县',3,0),(3283,327,'彬县',3,0),(3284,327,'长武县',3,0),(3285,327,'旬邑县',3,0),(3286,327,'淳化县',3,0),(3287,327,'武功县',3,0),(3288,327,'兴平市',3,0),(3289,327,'其它区',3,0),(3290,328,'临渭区',3,0),(3291,328,'华县',3,0),(3292,328,'潼关县',3,0),(3293,328,'大荔县',3,0),(3294,328,'合阳县',3,0),(3295,328,'澄城县',3,0),(3296,328,'蒲城县',3,0),(3297,328,'白水县',3,0),(3298,328,'富平县',3,0),(3299,328,'韩城市',3,0),(3300,328,'华阴市',3,0),(3301,328,'其它区',3,0),(3302,329,'宝塔区',3,0),(3303,329,'延长县',3,0),(3304,329,'延川县',3,0),(3305,329,'子长县',3,0),(3306,329,'安塞县',3,0),(3307,329,'志丹县',3,0),(3308,329,'吴起县',3,0),(3309,329,'甘泉县',3,0),(3310,329,'富县',3,0),(3311,329,'洛川县',3,0),(3312,329,'宜川县',3,0),(3313,329,'黄龙县',3,0),(3314,329,'黄陵县',3,0),(3315,329,'其它区',3,0),(3316,330,'汉台区',3,0),(3317,330,'南郑县',3,0),(3318,330,'城固县',3,0),(3319,330,'洋县',3,0),(3320,330,'西乡县',3,0),(3321,330,'勉县',3,0),(3322,330,'宁强县',3,0),(3323,330,'略阳县',3,0),(3324,330,'镇巴县',3,0),(3325,330,'留坝县',3,0),(3326,330,'佛坪县',3,0),(3327,330,'其它区',3,0),(3328,331,'榆阳区',3,0),(3329,331,'神木县',3,0),(3330,331,'府谷县',3,0),(3331,331,'横山县',3,0),(3332,331,'靖边县',3,0),(3333,331,'定边县',3,0),(3334,331,'绥德县',3,0),(3335,331,'米脂县',3,0),(3336,331,'佳县',3,0),(3337,331,'吴堡县',3,0),(3338,331,'清涧县',3,0),(3339,331,'子洲县',3,0),(3340,331,'其它区',3,0),(3341,332,'汉滨区',3,0),(3342,332,'汉阴县',3,0),(3343,332,'石泉县',3,0),(3344,332,'宁陕县',3,0),(3345,332,'紫阳县',3,0),(3346,332,'岚皋县',3,0),(3347,332,'平利县',3,0),(3348,332,'镇坪县',3,0),(3349,332,'旬阳县',3,0),(3350,332,'白河县',3,0),(3351,332,'其它区',3,0),(3352,333,'商州区',3,0),(3353,333,'洛南县',3,0),(3354,333,'丹凤县',3,0),(3355,333,'商南县',3,0),(3356,333,'山阳县',3,0),(3357,333,'镇安县',3,0),(3358,333,'柞水县',3,0),(3359,333,'其它区',3,0),(3360,334,'城关区',3,0),(3361,334,'七里河区',3,0),(3362,334,'西固区',3,0),(3363,334,'安宁区',3,0),(3364,334,'红古区',3,0),(3365,334,'永登县',3,0),(3366,334,'皋兰县',3,0),(3367,334,'榆中县',3,0),(3368,334,'其它区',3,0),(3369,336,'金川区',3,0),(3370,336,'永昌县',3,0),(3371,336,'其它区',3,0),(3372,337,'白银区',3,0),(3373,337,'平川区',3,0),(3374,337,'靖远县',3,0),(3375,337,'会宁县',3,0),(3376,337,'景泰县',3,0),(3377,337,'其它区',3,0),(3378,338,'秦州区',3,0),(3379,338,'麦积区',3,0),(3380,338,'清水县',3,0),(3381,338,'秦安县',3,0),(3382,338,'甘谷县',3,0),(3383,338,'武山县',3,0),(3384,338,'张家川回族自治县',3,0),(3385,338,'其它区',3,0),(3386,339,'凉州区',3,0),(3387,339,'民勤县',3,0),(3388,339,'古浪县',3,0),(3389,339,'天祝藏族自治县',3,0),(3390,339,'其它区',3,0),(3391,340,'甘州区',3,0),(3392,340,'肃南裕固族自治县',3,0),(3393,340,'民乐县',3,0),(3394,340,'临泽县',3,0),(3395,340,'高台县',3,0),(3396,340,'山丹县',3,0),(3397,340,'其它区',3,0),(3398,341,'崆峒区',3,0),(3399,341,'泾川县',3,0),(3400,341,'灵台县',3,0),(3401,341,'崇信县',3,0),(3402,341,'华亭县',3,0),(3403,341,'庄浪县',3,0),(3404,341,'静宁县',3,0),(3405,341,'其它区',3,0),(3406,342,'肃州区',3,0),(3407,342,'金塔县',3,0),(3408,342,'瓜州县',3,0),(3409,342,'肃北蒙古族自治县',3,0),(3410,342,'阿克塞哈萨克族自治县',3,0),(3411,342,'玉门市',3,0),(3412,342,'敦煌市',3,0),(3413,342,'其它区',3,0),(3414,343,'西峰区',3,0),(3415,343,'庆城县',3,0),(3416,343,'环县',3,0),(3417,343,'华池县',3,0),(3418,343,'合水县',3,0),(3419,343,'正宁县',3,0),(3420,343,'宁县',3,0),(3421,343,'镇原县',3,0),(3422,343,'其它区',3,0),(3423,344,'安定区',3,0),(3424,344,'通渭县',3,0),(3425,344,'陇西县',3,0),(3426,344,'渭源县',3,0),(3427,344,'临洮县',3,0),(3428,344,'漳县',3,0),(3429,344,'岷县',3,0),(3430,344,'其它区',3,0),(3431,345,'武都区',3,0),(3432,345,'成县',3,0),(3433,345,'文县',3,0),(3434,345,'宕昌县',3,0),(3435,345,'康县',3,0),(3436,345,'西和县',3,0),(3437,345,'礼县',3,0),(3438,345,'徽县',3,0),(3439,345,'两当县',3,0),(3440,345,'其它区',3,0),(3441,346,'临夏市',3,0),(3442,346,'临夏县',3,0),(3443,346,'康乐县',3,0),(3444,346,'永靖县',3,0),(3445,346,'广河县',3,0),(3446,346,'和政县',3,0),(3447,346,'东乡族自治县',3,0),(3448,346,'积石山保安族东乡族撒拉族自治县',3,0),(3449,346,'其它区',3,0),(3450,347,'合作市',3,0),(3451,347,'临潭县',3,0),(3452,347,'卓尼县',3,0),(3453,347,'舟曲县',3,0),(3454,347,'迭部县',3,0),(3455,347,'玛曲县',3,0),(3456,347,'碌曲县',3,0),(3457,347,'夏河县',3,0),(3458,347,'其它区',3,0),(3459,348,'城东区',3,0),(3460,348,'城中区',3,0),(3461,348,'城西区',3,0),(3462,348,'城北区',3,0),(3463,348,'大通回族土族自治县',3,0),(3464,348,'湟中县',3,0),(3465,348,'湟源县',3,0),(3466,348,'其它区',3,0),(3467,349,'平安区',3,0),(3468,349,'民和回族土族自治县',3,0),(3469,349,'乐都区',3,0),(3470,349,'互助土族自治县',3,0),(3471,349,'化隆回族自治县',3,0),(3472,349,'循化撒拉族自治县',3,0),(3473,349,'其它区',3,0),(3474,350,'门源回族自治县',3,0),(3475,350,'祁连县',3,0),(3476,350,'海晏县',3,0),(3477,350,'刚察县',3,0),(3478,350,'其它区',3,0),(3479,351,'同仁县',3,0),(3480,351,'尖扎县',3,0),(3481,351,'泽库县',3,0),(3482,351,'河南蒙古族自治县',3,0),(3483,351,'其它区',3,0),(3484,352,'共和县',3,0),(3485,352,'同德县',3,0),(3486,352,'贵德县',3,0),(3487,352,'兴海县',3,0),(3488,352,'贵南县',3,0),(3489,352,'其它区',3,0),(3490,353,'玛沁县',3,0),(3491,353,'班玛县',3,0),(3492,353,'甘德县',3,0),(3493,353,'达日县',3,0),(3494,353,'久治县',3,0),(3495,353,'玛多县',3,0),(3496,353,'其它区',3,0),(3497,354,'玉树市',3,0),(3498,354,'杂多县',3,0),(3499,354,'称多县',3,0),(3500,354,'治多县',3,0),(3501,354,'囊谦县',3,0),(3502,354,'曲麻莱县',3,0),(3503,354,'其它区',3,0),(3504,355,'格尔木市',3,0),(3505,355,'德令哈市',3,0),(3506,355,'乌兰县',3,0),(3507,355,'都兰县',3,0),(3508,355,'天峻县',3,0),(3509,355,'其它区',3,0),(3510,356,'兴庆区',3,0),(3511,356,'西夏区',3,0),(3512,356,'金凤区',3,0),(3513,356,'永宁县',3,0),(3514,356,'贺兰县',3,0),(3515,356,'灵武市',3,0),(3516,356,'其它区',3,0),(3517,357,'大武口区',3,0),(3518,357,'惠农区',3,0),(3519,357,'平罗县',3,0),(3520,357,'其它区',3,0),(3521,358,'利通区',3,0),(3522,358,'红寺堡区',3,0),(3523,358,'盐池县',3,0),(3524,358,'同心县',3,0),(3525,358,'青铜峡市',3,0),(3526,358,'其它区',3,0),(3527,359,'原州区',3,0),(3528,359,'西吉县',3,0),(3529,359,'隆德县',3,0),(3530,359,'泾源县',3,0),(3531,359,'彭阳县',3,0),(3532,359,'其它区',3,0),(3533,360,'沙坡头区',3,0),(3534,360,'中宁县',3,0),(3535,360,'海原县',3,0),(3536,360,'其它区',3,0),(3537,361,'天山区',3,0),(3538,361,'沙依巴克区',3,0),(3539,361,'新市区',3,0),(3540,361,'水磨沟区',3,0),(3541,361,'头屯河区',3,0),(3542,361,'达坂城区',3,0),(3543,361,'东山区',3,0),(3544,361,'米东区',3,0),(3545,361,'乌鲁木齐县',3,0),(3546,361,'其它区',3,0),(3547,362,'独山子区',3,0),(3548,362,'克拉玛依区',3,0),(3549,362,'白碱滩区',3,0),(3550,362,'乌尔禾区',3,0),(3551,362,'其它区',3,0),(3552,363,'高昌区',3,0),(3553,363,'鄯善县',3,0),(3554,363,'托克逊县',3,0),(3555,363,'其它区',3,0),(3556,364,'哈密市',3,0),(3557,364,'巴里坤哈萨克自治县',3,0),(3558,364,'伊吾县',3,0),(3559,364,'其它区',3,0),(3560,365,'昌吉市',3,0),(3561,365,'阜康市',3,0),(3562,365,'米泉市',3,0),(3563,365,'呼图壁县',3,0),(3564,365,'玛纳斯县',3,0),(3565,365,'奇台县',3,0),(3566,365,'吉木萨尔县',3,0),(3567,365,'木垒哈萨克自治县',3,0),(3568,365,'其它区',3,0),(3569,366,'博乐市',3,0),(3570,366,'阿拉山口市',3,0),(3571,366,'精河县',3,0),(3572,366,'温泉县',3,0),(3573,366,'其它区',3,0),(3574,367,'库尔勒市',3,0),(3575,367,'轮台县',3,0),(3576,367,'尉犁县',3,0),(3577,367,'若羌县',3,0),(3578,367,'且末县',3,0),(3579,367,'焉耆回族自治县',3,0),(3580,367,'和静县',3,0),(3581,367,'和硕县',3,0),(3582,367,'博湖县',3,0),(3583,367,'其它区',3,0),(3584,368,'阿克苏市',3,0),(3585,368,'温宿县',3,0),(3586,368,'库车县',3,0),(3587,368,'沙雅县',3,0),(3588,368,'新和县',3,0),(3589,368,'拜城县',3,0),(3590,368,'乌什县',3,0),(3591,368,'阿瓦提县',3,0),(3592,368,'柯坪县',3,0),(3593,368,'其它区',3,0),(3594,369,'阿图什市',3,0),(3595,369,'阿克陶县',3,0),(3596,369,'阿合奇县',3,0),(3597,369,'乌恰县',3,0),(3598,369,'其它区',3,0),(3599,370,'喀什市',3,0),(3600,370,'疏附县',3,0),(3601,370,'疏勒县',3,0),(3602,370,'英吉沙县',3,0),(3603,370,'泽普县',3,0),(3604,370,'莎车县',3,0),(3605,370,'叶城县',3,0),(3606,370,'麦盖提县',3,0),(3607,370,'岳普湖县',3,0),(3608,370,'伽师县',3,0),(3609,370,'巴楚县',3,0),(3610,370,'塔什库尔干塔吉克自治县',3,0),(3611,370,'其它区',3,0),(3612,371,'和田市',3,0),(3613,371,'和田县',3,0),(3614,371,'墨玉县',3,0),(3615,371,'皮山县',3,0),(3616,371,'洛浦县',3,0),(3617,371,'策勒县',3,0),(3618,371,'于田县',3,0),(3619,371,'民丰县',3,0),(3620,371,'其它区',3,0),(3621,372,'伊宁市',3,0),(3622,372,'奎屯市',3,0),(3623,372,'伊宁县',3,0),(3624,372,'察布查尔锡伯自治县',3,0),(3625,372,'霍城县',3,0),(3626,372,'巩留县',3,0),(3627,372,'新源县',3,0),(3628,372,'昭苏县',3,0),(3629,372,'特克斯县',3,0),(3630,372,'尼勒克县',3,0),(3631,372,'其它区',3,0),(3632,373,'塔城市',3,0),(3633,373,'乌苏市',3,0),(3634,373,'额敏县',3,0),(3635,373,'沙湾县',3,0),(3636,373,'托里县',3,0),(3637,373,'裕民县',3,0),(3638,373,'和布克赛尔蒙古自治县',3,0),(3639,373,'其它区',3,0),(3640,374,'阿勒泰市',3,0),(3641,374,'布尔津县',3,0),(3642,374,'富蕴县',3,0),(3643,374,'福海县',3,0),(3644,374,'哈巴河县',3,0),(3645,374,'青河县',3,0),(3646,374,'吉木乃县',3,0),(3647,374,'其它区',3,0),(3648,375,'中正区',3,0),(3649,375,'大同区',3,0),(3650,375,'中山区',3,0),(3651,375,'松山区',3,0),(3652,375,'大安区',3,0),(3653,375,'万华区',3,0),(3654,375,'信义区',3,0),(3655,375,'士林区',3,0),(3656,375,'北投区',3,0),(3657,375,'内湖区',3,0),(3658,375,'南港区',3,0),(3659,375,'文山区',3,0),(3660,375,'其它区',3,0),(3661,376,'新兴区',3,0),(3662,376,'前金区',3,0),(3663,376,'芩雅区',3,0),(3664,376,'盐埕区',3,0),(3665,376,'鼓山区',3,0),(3666,376,'旗津区',3,0),(3667,376,'前镇区',3,0),(3668,376,'三民区',3,0),(3669,376,'左营区',3,0),(3670,376,'楠梓区',3,0),(3671,376,'小港区',3,0),(3672,376,'其它区',3,0),(3673,376,'苓雅区',3,0),(3674,376,'仁武区',3,0),(3675,376,'大社区',3,0),(3676,376,'冈山区',3,0),(3677,376,'路竹区',3,0),(3678,376,'阿莲区',3,0),(3679,376,'田寮区',3,0),(3680,376,'燕巢区',3,0),(3681,376,'桥头区',3,0),(3682,376,'梓官区',3,0),(3683,376,'弥陀区',3,0),(3684,376,'永安区',3,0),(3685,376,'湖内区',3,0),(3686,376,'凤山区',3,0),(3687,376,'大寮区',3,0),(3688,376,'林园区',3,0),(3689,376,'鸟松区',3,0),(3690,376,'大树区',3,0),(3691,376,'旗山区',3,0),(3692,376,'美浓区',3,0),(3693,376,'六龟区',3,0),(3694,376,'内门区',3,0),(3695,376,'杉林区',3,0),(3696,376,'甲仙区',3,0),(3697,376,'桃源区',3,0),(3698,376,'那玛夏区',3,0),(3699,376,'茂林区',3,0),(3700,376,'茄萣区',3,0),(3701,377,'中西区',3,0),(3702,377,'东区',3,0),(3703,377,'南区',3,0),(3704,377,'北区',3,0),(3705,377,'安平区',3,0),(3706,377,'安南区',3,0),(3707,377,'其它区',3,0),(3708,377,'永康区',3,0),(3709,377,'归仁区',3,0),(3710,377,'新化区',3,0),(3711,377,'左镇区',3,0),(3712,377,'玉井区',3,0),(3713,377,'楠西区',3,0),(3714,377,'南化区',3,0),(3715,377,'仁德区',3,0),(3716,377,'关庙区',3,0),(3717,377,'龙崎区',3,0),(3718,377,'官田区',3,0),(3719,377,'麻豆区',3,0),(3720,377,'佳里区',3,0),(3721,377,'西港区',3,0),(3722,377,'七股区',3,0),(3723,377,'将军区',3,0),(3724,377,'学甲区',3,0),(3725,377,'北门区',3,0),(3726,377,'新营区',3,0),(3727,377,'后壁区',3,0),(3728,377,'白河区',3,0),(3729,377,'东山区',3,0),(3730,377,'六甲区',3,0),(3731,377,'下营区',3,0),(3732,377,'柳营区',3,0),(3733,377,'盐水区',3,0),(3734,377,'善化区',3,0),(3735,377,'大内区',3,0),(3736,377,'山上区',3,0),(3737,377,'新市区',3,0),(3738,377,'安定区',3,0),(3739,378,'中区',3,0),(3740,378,'东区',3,0),(3741,378,'南区',3,0),(3742,378,'西区',3,0),(3743,378,'北区',3,0),(3744,378,'北屯区',3,0),(3745,378,'西屯区',3,0),(3746,378,'南屯区',3,0),(3747,378,'其它区',3,0),(3748,378,'太平区',3,0),(3749,378,'大里区',3,0),(3750,378,'雾峰区',3,0),(3751,378,'乌日区',3,0),(3752,378,'丰原区',3,0),(3753,378,'后里区',3,0),(3754,378,'石冈区',3,0),(3755,378,'东势区',3,0),(3756,378,'和平区',3,0),(3757,378,'新社区',3,0),(3758,378,'潭子区',3,0),(3759,378,'大雅区',3,0),(3760,378,'神冈区',3,0),(3761,378,'大肚区',3,0),(3762,378,'沙鹿区',3,0),(3763,378,'龙井区',3,0),(3764,378,'梧栖区',3,0),(3765,378,'清水区',3,0),(3766,378,'大甲区',3,0),(3767,378,'外埔区',3,0),(3768,378,'大安区',3,0),(3769,379,'金沙镇',3,0),(3770,379,'金湖镇',3,0),(3771,379,'金宁乡',3,0),(3772,379,'金城镇',3,0),(3773,379,'烈屿乡',3,0),(3774,379,'乌坵乡',3,0),(3775,380,'南投市',3,0),(3776,380,'中寮乡',3,0),(3777,380,'草屯镇',3,0),(3778,380,'国姓乡',3,0),(3779,380,'埔里镇',3,0),(3780,380,'仁爱乡',3,0),(3781,380,'名间乡',3,0),(3782,380,'集集镇',3,0),(3783,380,'水里乡',3,0),(3784,380,'鱼池乡',3,0),(3785,380,'信义乡',3,0),(3786,380,'竹山镇',3,0),(3787,380,'鹿谷乡',3,0),(3788,381,'仁爱区',3,0),(3789,381,'信义区',3,0),(3790,381,'中正区',3,0),(3791,381,'中山区',3,0),(3792,381,'安乐区',3,0),(3793,381,'暖暖区',3,0),(3794,381,'七堵区',3,0),(3795,381,'其它区',3,0),(3796,382,'东区',3,0),(3797,382,'北区',3,0),(3798,382,'香山区',3,0),(3799,382,'其它区',3,0),(3800,383,'东区',3,0),(3801,383,'西区',3,0),(3802,383,'其它区',3,0),(3803,384,'万里区',3,0),(3804,384,'金山区',3,0),(3805,384,'板桥区',3,0),(3806,384,'汐止区',3,0),(3807,384,'深坑区',3,0),(3808,384,'石碇区',3,0),(3809,384,'瑞芳区',3,0),(3810,384,'平溪区',3,0),(3811,384,'双溪区',3,0),(3812,384,'贡寮区',3,0),(3813,384,'新店区',3,0),(3814,384,'坪林区',3,0),(3815,384,'乌来区',3,0),(3816,384,'永和区',3,0),(3817,384,'中和区',3,0),(3818,384,'土城区',3,0),(3819,384,'三峡区',3,0),(3820,384,'树林区',3,0),(3821,384,'莺歌区',3,0),(3822,384,'三重区',3,0),(3823,384,'新庄区',3,0),(3824,384,'泰山区',3,0),(3825,384,'林口区',3,0),(3826,384,'芦洲区',3,0),(3827,384,'五股区',3,0),(3828,384,'八里区',3,0),(3829,384,'淡水区',3,0),(3830,384,'三芝区',3,0),(3831,384,'石门区',3,0),(3832,385,'宜兰市',3,0),(3833,385,'头城镇',3,0),(3834,385,'礁溪乡',3,0),(3835,385,'壮围乡',3,0),(3836,385,'员山乡',3,0),(3837,385,'罗东镇',3,0),(3838,385,'三星乡',3,0),(3839,385,'大同乡',3,0),(3840,385,'五结乡',3,0),(3841,385,'冬山乡',3,0),(3842,385,'苏澳镇',3,0),(3843,385,'南澳乡',3,0),(3844,385,'钓鱼台',3,0),(3845,386,'竹北市',3,0),(3846,386,'湖口乡',3,0),(3847,386,'新丰乡',3,0),(3848,386,'新埔镇',3,0),(3849,386,'关西镇',3,0),(3850,386,'芎林乡',3,0),(3851,386,'宝山乡',3,0),(3852,386,'竹东镇',3,0),(3853,386,'五峰乡',3,0),(3854,386,'横山乡',3,0),(3855,386,'尖石乡',3,0),(3856,386,'北埔乡',3,0),(3857,386,'峨眉乡',3,0),(3858,387,'中坜市',3,0),(3859,387,'平镇市',3,0),(3860,387,'龙潭乡',3,0),(3861,387,'杨梅市',3,0),(3862,387,'新屋乡',3,0),(3863,387,'观音乡',3,0),(3864,387,'桃园市',3,0),(3865,387,'龟山乡',3,0),(3866,387,'八德市',3,0),(3867,387,'大溪镇',3,0),(3868,387,'复兴乡',3,0),(3869,387,'大园乡',3,0),(3870,387,'芦竹乡',3,0),(3871,388,'竹南镇',3,0),(3872,388,'头份镇',3,0),(3873,388,'三湾乡',3,0),(3874,388,'南庄乡',3,0),(3875,388,'狮潭乡',3,0),(3876,388,'后龙镇',3,0),(3877,388,'通霄镇',3,0),(3878,388,'苑里镇',3,0),(3879,388,'苗栗市',3,0),(3880,388,'造桥乡',3,0),(3881,388,'头屋乡',3,0),(3882,388,'公馆乡',3,0),(3883,388,'大湖乡',3,0),(3884,388,'泰安乡',3,0),(3885,388,'铜锣乡',3,0),(3886,388,'三义乡',3,0),(3887,388,'西湖乡',3,0),(3888,388,'卓兰镇',3,0),(3889,389,'彰化市',3,0),(3890,389,'芬园乡',3,0),(3891,389,'花坛乡',3,0),(3892,389,'秀水乡',3,0),(3893,389,'鹿港镇',3,0),(3894,389,'福兴乡',3,0),(3895,389,'线西乡',3,0),(3896,389,'和美镇',3,0),(3897,389,'伸港乡',3,0),(3898,389,'员林镇',3,0),(3899,389,'社头乡',3,0),(3900,389,'永靖乡',3,0),(3901,389,'埔心乡',3,0),(3902,389,'溪湖镇',3,0),(3903,389,'大村乡',3,0),(3904,389,'埔盐乡',3,0),(3905,389,'田中镇',3,0),(3906,389,'北斗镇',3,0),(3907,389,'田尾乡',3,0),(3908,389,'埤头乡',3,0),(3909,389,'溪州乡',3,0),(3910,389,'竹塘乡',3,0),(3911,389,'二林镇',3,0),(3912,389,'大城乡',3,0),(3913,389,'芳苑乡',3,0),(3914,389,'二水乡',3,0),(3915,390,'番路乡',3,0),(3916,390,'梅山乡',3,0),(3917,390,'竹崎乡',3,0),(3918,390,'阿里山乡',3,0),(3919,390,'中埔乡',3,0),(3920,390,'大埔乡',3,0),(3921,390,'水上乡',3,0),(3922,390,'鹿草乡',3,0),(3923,390,'太保市',3,0),(3924,390,'朴子市',3,0),(3925,390,'东石乡',3,0),(3926,390,'六脚乡',3,0),(3927,390,'新港乡',3,0),(3928,390,'民雄乡',3,0),(3929,390,'大林镇',3,0),(3930,390,'溪口乡',3,0),(3931,390,'义竹乡',3,0),(3932,390,'布袋镇',3,0),(3933,391,'斗南镇',3,0),(3934,391,'大埤乡',3,0),(3935,391,'虎尾镇',3,0),(3936,391,'土库镇',3,0),(3937,391,'褒忠乡',3,0),(3938,391,'东势乡',3,0),(3939,391,'台西乡',3,0),(3940,391,'仑背乡',3,0),(3941,391,'麦寮乡',3,0),(3942,391,'斗六市',3,0),(3943,391,'林内乡',3,0),(3944,391,'古坑乡',3,0),(3945,391,'莿桐乡',3,0),(3946,391,'西螺镇',3,0),(3947,391,'二仑乡',3,0),(3948,391,'北港镇',3,0),(3949,391,'水林乡',3,0),(3950,391,'口湖乡',3,0),(3951,391,'四湖乡',3,0),(3952,391,'元长乡',3,0),(3953,392,'屏东市',3,0),(3954,392,'三地门乡',3,0),(3955,392,'雾台乡',3,0),(3956,392,'玛家乡',3,0),(3957,392,'九如乡',3,0),(3958,392,'里港乡',3,0),(3959,392,'高树乡',3,0),(3960,392,'盐埔乡',3,0),(3961,392,'长治乡',3,0),(3962,392,'麟洛乡',3,0),(3963,392,'竹田乡',3,0),(3964,392,'内埔乡',3,0),(3965,392,'万丹乡',3,0),(3966,392,'潮州镇',3,0),(3967,392,'泰武乡',3,0),(3968,392,'来义乡',3,0),(3969,392,'万峦乡',3,0),(3970,392,'崁顶乡',3,0),(3971,392,'新埤乡',3,0),(3972,392,'南州乡',3,0),(3973,392,'林边乡',3,0),(3974,392,'东港镇',3,0),(3975,392,'琉球乡',3,0),(3976,392,'佳冬乡',3,0),(3977,392,'新园乡',3,0),(3978,392,'枋寮乡',3,0),(3979,392,'枋山乡',3,0),(3980,392,'春日乡',3,0),(3981,392,'狮子乡',3,0),(3982,392,'车城乡',3,0),(3983,392,'牡丹乡',3,0),(3984,392,'恒春镇',3,0),(3985,392,'满州乡',3,0),(3986,393,'台东市',3,0),(3987,393,'绿岛乡',3,0),(3988,393,'兰屿乡',3,0),(3989,393,'延平乡',3,0),(3990,393,'卑南乡',3,0),(3991,393,'鹿野乡',3,0),(3992,393,'关山镇',3,0),(3993,393,'海端乡',3,0),(3994,393,'池上乡',3,0),(3995,393,'东河乡',3,0),(3996,393,'成功镇',3,0),(3997,393,'长滨乡',3,0),(3998,393,'金峰乡',3,0),(3999,393,'大武乡',3,0),(4000,393,'达仁乡',3,0),(4001,393,'太麻里乡',3,0),(4002,394,'花莲市',3,0),(4003,394,'新城乡',3,0),(4004,394,'太鲁阁',3,0),(4005,394,'秀林乡',3,0),(4006,394,'吉安乡',3,0),(4007,394,'寿丰乡',3,0),(4008,394,'凤林镇',3,0),(4009,394,'光复乡',3,0),(4010,394,'丰滨乡',3,0),(4011,394,'瑞穗乡',3,0),(4012,394,'万荣乡',3,0),(4013,394,'玉里镇',3,0),(4014,394,'卓溪乡',3,0),(4015,394,'富里乡',3,0),(4016,395,'马公市',3,0),(4017,395,'西屿乡',3,0),(4018,395,'望安乡',3,0),(4019,395,'七美乡',3,0),(4020,395,'白沙乡',3,0),(4021,395,'湖西乡',3,0),(4022,396,'南竿乡',3,0),(4023,396,'北竿乡',3,0),(4024,396,'莒光乡',3,0),(4025,396,'东引乡',3,0),(4026,397,'中西区',3,0),(4027,397,'湾仔',3,0),(4028,397,'东区',3,0),(4029,397,'南区',3,0),(4030,398,'九龙城区',3,0),(4031,398,'油尖旺区',3,0),(4032,398,'深水埗区',3,0),(4033,398,'黄大仙区',3,0),(4034,398,'观塘区',3,0),(4035,399,'北区',3,0),(4036,399,'大埔区',3,0),(4037,399,'沙田区',3,0),(4038,399,'西贡区',3,0),(4039,399,'元朗区',3,0),(4040,399,'屯门区',3,0),(4041,399,'荃湾区',3,0),(4042,399,'葵青区',3,0),(4043,399,'离岛区',3,0);
/*!40000 ALTER TABLE `shop_region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_session`
--

DROP TABLE IF EXISTS `shop_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_session` (
  `uid` int(10) NOT NULL,
  `session_id` varchar(100) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_session`
--

LOCK TABLES `shop_session` WRITE;
/*!40000 ALTER TABLE `shop_session` DISABLE KEYS */;
INSERT INTO `shop_session` VALUES (6,'6i759jedm0n6lcv3tde90g5264'),(3,'d7kch98j5n82iqjto5mp6s8cp3'),(7,'iq1i18vg5244uu6hc3dng0cpl1');
/*!40000 ALTER TABLE `shop_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_shipping`
--

DROP TABLE IF EXISTS `shop_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_shipping` (
  `shipping_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `shipping_code` varchar(20) NOT NULL DEFAULT '',
  `shipping_name` varchar(120) NOT NULL DEFAULT '',
  `shipping_desc` varchar(255) NOT NULL DEFAULT '',
  `insure` varchar(10) NOT NULL DEFAULT '0',
  `support_cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_print` text NOT NULL,
  `print_bg` varchar(255) DEFAULT NULL,
  `config_lable` text,
  `print_model` tinyint(1) DEFAULT '0',
  `shipping_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`shipping_id`),
  KEY `shipping_code` (`shipping_code`,`enabled`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_shipping`
--

LOCK TABLES `shop_shipping` WRITE;
/*!40000 ALTER TABLE `shop_shipping` DISABLE KEYS */;
INSERT INTO `shop_shipping` VALUES (1,'post_express','邮政快递包裹','邮政快递包裹的描述内容。','1%',0,1,'',NULL,NULL,0,0),(2,'yto','圆通速递','上海圆通物流（速递）有限公司经过多年的网络快速发展，在中国速递行业中一直处于领先地位。为了能更好的发展国际快件市场，加快与国际市场的接轨，强化圆通的整体实力，圆通已在东南亚、欧美、中东、北美洲、非洲等许多城市运作国际快件业务','0',1,1,'',NULL,NULL,0,0),(3,'city_express','城际快递','配送的运费是固定的','0',1,1,'',NULL,NULL,0,0),(4,'flat','市内快递','固定运费的配送方式内容','0',1,1,'',NULL,NULL,0,0),(5,'sto_express','申通快递','江、浙、沪地区首重为15元/KG，其他地区18元/KG， 续重均为5-6元/KG， 云南地区为8元','0',0,1,'',NULL,NULL,0,0),(6,'post_mail','邮局平邮','邮局平邮的描述内容。','0',0,1,'',NULL,NULL,0,0),(7,'fpd','运费到付','所购商品到达即付运费','0',0,1,'',NULL,NULL,0,0);
/*!40000 ALTER TABLE `shop_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_type`
--

DROP TABLE IF EXISTS `shop_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_type` (
  `type_id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `type_name` varchar(30) NOT NULL,
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_type`
--

LOCK TABLES `shop_type` WRITE;
/*!40000 ALTER TABLE `shop_type` DISABLE KEYS */;
INSERT INTO `shop_type` VALUES (1,'图书'),(2,'唱片'),(3,'电影'),(4,'手机'),(5,'笔记本'),(8,'护肤用品');
/*!40000 ALTER TABLE `shop_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_user`
--

DROP TABLE IF EXISTS `shop_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_user` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(30) NOT NULL,
  `user_pwd` char(32) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `user_mobile` bigint(11) DEFAULT NULL,
  `user_num` int(11) NOT NULL DEFAULT '0',
  `add_time` int(10) NOT NULL,
  `error_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_user`
--

LOCK TABLES `shop_user` WRITE;
/*!40000 ALTER TABLE `shop_user` DISABLE KEYS */;
INSERT INTO `shop_user` VALUES (1,'丙田的','63ee451939ed580ef3c4b6f0109d1fd0','1575238573@qq.com',NULL,2,0,1547282466),(3,'','14e1b600b1fd579f47433b88e8d85291','2957260330@qq.com',NULL,0,1545995230,0),(6,'','d2398a847d7f52c911e8e784b5bbe196','641129141@qq.com',NULL,0,1548143077,0),(7,'','550e1bafe077ff0b0b67f4e32f29d751','1138637538@qq.com',NULL,0,1549423156,0);
/*!40000 ALTER TABLE `shop_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_user_address`
--

DROP TABLE IF EXISTS `shop_user_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_user_address` (
  `address_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `address_name` varchar(50) DEFAULT NULL,
  `user_id` mediumint(8) DEFAULT NULL,
  `consignee` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `country` smallint(5) DEFAULT NULL,
  `province` smallint(5) DEFAULT NULL,
  `city` smallint(5) DEFAULT NULL,
  `district` smallint(5) DEFAULT NULL,
  `address` varchar(120) DEFAULT NULL,
  `zipcode` varchar(60) DEFAULT NULL,
  `tel` varchar(60) DEFAULT NULL,
  `mobile` varchar(60) DEFAULT NULL,
  `sign_building` varchar(120) DEFAULT NULL,
  `best_time` varchar(120) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL,
  `status` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_user_address`
--

LOCK TABLES `shop_user_address` WRITE;
/*!40000 ALTER TABLE `shop_user_address` DISABLE KEYS */;
INSERT INTO `shop_user_address` VALUES (1,NULL,1,'薛泽',NULL,NULL,NULL,NULL,NULL,'山西省运城市夏县',NULL,NULL,'13994866054','北京',NULL,1,1);
/*!40000 ALTER TABLE `shop_user_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopping`
--

DROP TABLE IF EXISTS `shopping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shopping` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(10) DEFAULT NULL,
  `uid` int(10) DEFAULT NULL,
  `goods_num` int(10) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `dele` int(2) NOT NULL DEFAULT '1',
  `creattime` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping`
--

LOCK TABLES `shopping` WRITE;
/*!40000 ALTER TABLE `shopping` DISABLE KEYS */;
INSERT INTO `shopping` VALUES (1,207,1,1,2,1,1551333971);
/*!40000 ALTER TABLE `shopping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telconde`
--

DROP TABLE IF EXISTS `telconde`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telconde` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` int(10) DEFAULT NULL,
  `tel` char(11) DEFAULT NULL,
  `time` int(10) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telconde`
--

LOCK TABLES `telconde` WRITE;
/*!40000 ALTER TABLE `telconde` DISABLE KEYS */;
INSERT INTO `telconde` VALUES (1,5067,'17634069989',1550733841,2),(3,2973,'15200117682',1550797186,2),(5,5712,'18519219302',1550798704,2);
/*!40000 ALTER TABLE `telconde` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tel` char(11) DEFAULT NULL,
  `pwd` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'13994866054','9056749f0dde456780a336ea05640d0a'),(7,'17634069989','9056749f0dde456780a336ea05640d0a'),(4,'13997688654','9056749f0dde456780a336ea05640d0a'),(5,'13889765483','9056749f0dde456780a336ea05640d0a'),(10,'18519219302','9056749f0dde456780a336ea05640d0a');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-02 10:33:06
