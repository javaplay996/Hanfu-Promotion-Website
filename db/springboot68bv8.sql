-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot68bv8
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2021-04-18 15:13:09',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-04-18 15:13:09',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-04-18 15:13:09',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-04-18 15:13:09',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-04-18 15:13:09',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-04-18 15:13:09',6,'宇宙银河系月球1号','月某','13823888886','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpin' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/springboot68bv8/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/springboot68bv8/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springboot68bv8/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussshangpin`
--

DROP TABLE IF EXISTS `discussshangpin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussshangpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='商品评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussshangpin`
--

LOCK TABLES `discussshangpin` WRITE;
/*!40000 ALTER TABLE `discussshangpin` DISABLE KEYS */;
INSERT INTO `discussshangpin` VALUES (151,'2021-04-18 15:13:09',1,1,'用户名1','评论内容1','回复内容1'),(152,'2021-04-18 15:13:09',2,2,'用户名2','评论内容2','回复内容2'),(153,'2021-04-18 15:13:09',3,3,'用户名3','评论内容3','回复内容3'),(154,'2021-04-18 15:13:09',4,4,'用户名4','评论内容4','回复内容4'),(155,'2021-04-18 15:13:09',5,5,'用户名5','评论内容5','回复内容5'),(156,'2021-04-18 15:13:09',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussshangpin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='汉服交流';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (91,'2021-04-18 15:13:09','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(92,'2021-04-18 15:13:09','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(93,'2021-04-18 15:13:09','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(94,'2021-04-18 15:13:09','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(95,'2021-04-18 15:13:09','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(96,'2021-04-18 15:13:09','帖子标题6','帖子内容6',6,6,'用户名6','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huodongbaoming`
--

DROP TABLE IF EXISTS `huodongbaoming`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huodongbaoming` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongmingcheng` varchar(200) DEFAULT NULL COMMENT '活动名称',
  `huodongshijian` varchar(200) DEFAULT NULL COMMENT '活动时间',
  `huodongdidian` varchar(200) DEFAULT NULL COMMENT '活动地点',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='活动报名';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huodongbaoming`
--

LOCK TABLES `huodongbaoming` WRITE;
/*!40000 ALTER TABLE `huodongbaoming` DISABLE KEYS */;
INSERT INTO `huodongbaoming` VALUES (61,'2021-04-18 15:13:09','活动名称1','活动时间1','活动地点1','用户账号1','用户姓名1'),(62,'2021-04-18 15:13:09','活动名称2','活动时间2','活动地点2','用户账号2','用户姓名2'),(63,'2021-04-18 15:13:09','活动名称3','活动时间3','活动地点3','用户账号3','用户姓名3'),(64,'2021-04-18 15:13:09','活动名称4','活动时间4','活动地点4','用户账号4','用户姓名4'),(65,'2021-04-18 15:13:09','活动名称5','活动时间5','活动地点5','用户账号5','用户姓名5'),(66,'2021-04-18 15:13:09','活动名称6','活动时间6','活动地点6','用户账号6','用户姓名6');
/*!40000 ALTER TABLE `huodongbaoming` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huodongpiaoquan`
--

DROP TABLE IF EXISTS `huodongpiaoquan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huodongpiaoquan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `piaoquanbianhao` varchar(200) DEFAULT NULL COMMENT '票券编号',
  `piaoquanmingcheng` varchar(200) DEFAULT NULL COMMENT '票券名称',
  `beizhu` longtext COMMENT '备注',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `piaoquanbianhao` (`piaoquanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='活动票券';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huodongpiaoquan`
--

LOCK TABLES `huodongpiaoquan` WRITE;
/*!40000 ALTER TABLE `huodongpiaoquan` DISABLE KEYS */;
INSERT INTO `huodongpiaoquan` VALUES (81,'2021-04-18 15:13:09','票券编号1','票券名称1','备注1','用户账号1','用户姓名1'),(82,'2021-04-18 15:13:09','票券编号2','票券名称2','备注2','用户账号2','用户姓名2'),(83,'2021-04-18 15:13:09','票券编号3','票券名称3','备注3','用户账号3','用户姓名3'),(84,'2021-04-18 15:13:09','票券编号4','票券名称4','备注4','用户账号4','用户姓名4'),(85,'2021-04-18 15:13:09','票券编号5','票券名称5','备注5','用户账号5','用户姓名5'),(86,'2021-04-18 15:13:09','票券编号6','票券名称6','备注6','用户账号6','用户姓名6');
/*!40000 ALTER TABLE `huodongpiaoquan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jinqihuodong`
--

DROP TABLE IF EXISTS `jinqihuodong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jinqihuodong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongmingcheng` varchar(200) DEFAULT NULL COMMENT '活动名称',
  `huodongshijian` varchar(200) DEFAULT NULL COMMENT '活动时间',
  `huodongdidian` varchar(200) DEFAULT NULL COMMENT '活动地点',
  `diqu` varchar(200) DEFAULT NULL COMMENT '地区',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  `huodongjianjie` longtext COMMENT '活动简介',
  `beizhu` longtext COMMENT '备注',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='近期活动';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jinqihuodong`
--

LOCK TABLES `jinqihuodong` WRITE;
/*!40000 ALTER TABLE `jinqihuodong` DISABLE KEYS */;
INSERT INTO `jinqihuodong` VALUES (51,'2021-04-18 15:13:09','活动名称1','活动时间1','活动地点1','地区1','全部状态','活动简介1','备注1','http://localhost:8080/springboot68bv8/upload/jinqihuodong_tupian1.jpg'),(52,'2021-04-18 15:13:09','活动名称2','活动时间2','活动地点2','地区2','全部状态','活动简介2','备注2','http://localhost:8080/springboot68bv8/upload/jinqihuodong_tupian2.jpg'),(53,'2021-04-18 15:13:09','活动名称3','活动时间3','活动地点3','地区3','全部状态','活动简介3','备注3','http://localhost:8080/springboot68bv8/upload/jinqihuodong_tupian3.jpg'),(54,'2021-04-18 15:13:09','活动名称4','活动时间4','活动地点4','地区4','全部状态','活动简介4','备注4','http://localhost:8080/springboot68bv8/upload/jinqihuodong_tupian4.jpg'),(55,'2021-04-18 15:13:09','活动名称5','活动时间5','活动地点5','地区5','全部状态','活动简介5','备注5','http://localhost:8080/springboot68bv8/upload/jinqihuodong_tupian5.jpg'),(56,'2021-04-18 15:13:09','活动名称6','活动时间6','活动地点6','地区6','全部状态','活动简介6','备注6','http://localhost:8080/springboot68bv8/upload/jinqihuodong_tupian6.jpg');
/*!40000 ALTER TABLE `jinqihuodong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='汉服知识';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (141,'2021-04-18 15:13:09','标题1','简介1','http://localhost:8080/springboot68bv8/upload/news_picture1.jpg','内容1'),(142,'2021-04-18 15:13:09','标题2','简介2','http://localhost:8080/springboot68bv8/upload/news_picture2.jpg','内容2'),(143,'2021-04-18 15:13:09','标题3','简介3','http://localhost:8080/springboot68bv8/upload/news_picture3.jpg','内容3'),(144,'2021-04-18 15:13:09','标题4','简介4','http://localhost:8080/springboot68bv8/upload/news_picture4.jpg','内容4'),(145,'2021-04-18 15:13:09','标题5','简介5','http://localhost:8080/springboot68bv8/upload/news_picture5.jpg','内容5'),(146,'2021-04-18 15:13:09','标题6','简介6','http://localhost:8080/springboot68bv8/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpin' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpin`
--

DROP TABLE IF EXISTS `shangpin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `jieshao` longtext COMMENT '介绍',
  `shangpintupian` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='商品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpin`
--

LOCK TABLES `shangpin` WRITE;
/*!40000 ALTER TABLE `shangpin` DISABLE KEYS */;
INSERT INTO `shangpin` VALUES (11,'2021-04-18 15:13:09','商品名称1','套装','规格1','品牌1','介绍1','http://localhost:8080/springboot68bv8/upload/shangpin_shangpintupian1.jpg',1,1,99.9),(12,'2021-04-18 15:13:09','商品名称2','套装','规格2','品牌2','介绍2','http://localhost:8080/springboot68bv8/upload/shangpin_shangpintupian2.jpg',2,2,99.9),(13,'2021-04-18 15:13:09','商品名称3','套装','规格3','品牌3','介绍3','http://localhost:8080/springboot68bv8/upload/shangpin_shangpintupian3.jpg',3,3,99.9),(14,'2021-04-18 15:13:09','商品名称4','套装','规格4','品牌4','介绍4','http://localhost:8080/springboot68bv8/upload/shangpin_shangpintupian4.jpg',4,4,99.9),(15,'2021-04-18 15:13:09','商品名称5','套装','规格5','品牌5','介绍5','http://localhost:8080/springboot68bv8/upload/shangpin_shangpintupian5.jpg',5,5,99.9),(16,'2021-04-18 15:13:09','商品名称6','套装','规格6','品牌6','介绍6','http://localhost:8080/springboot68bv8/upload/shangpin_shangpintupian6.jpg',6,6,99.9);
/*!40000 ALTER TABLE `shangpin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shetuan`
--

DROP TABLE IF EXISTS `shetuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shetuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shetuanmingcheng` varchar(200) DEFAULT NULL COMMENT '社团名称',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `chengyuan` longtext COMMENT '成员',
  `chuangjianshijian` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='社团';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shetuan`
--

LOCK TABLES `shetuan` WRITE;
/*!40000 ALTER TABLE `shetuan` DISABLE KEYS */;
INSERT INTO `shetuan` VALUES (71,'2021-04-18 15:13:09','社团名称1','负责人1','成员1','2021-04-18'),(72,'2021-04-18 15:13:09','社团名称2','负责人2','成员2','2021-04-18'),(73,'2021-04-18 15:13:09','社团名称3','负责人3','成员3','2021-04-18'),(74,'2021-04-18 15:13:09','社团名称4','负责人4','成员4','2021-04-18'),(75,'2021-04-18 15:13:09','社团名称5','负责人5','成员5','2021-04-18'),(76,'2021-04-18 15:13:09','社团名称6','负责人6','成员6','2021-04-18');
/*!40000 ALTER TABLE `shetuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipindongtaiqu`
--

DROP TABLE IF EXISTS `shipindongtaiqu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipindongtaiqu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jianjie` longtext COMMENT '简介',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='视频动态区';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipindongtaiqu`
--

LOCK TABLES `shipindongtaiqu` WRITE;
/*!40000 ALTER TABLE `shipindongtaiqu` DISABLE KEYS */;
INSERT INTO `shipindongtaiqu` VALUES (41,'2021-04-18 15:13:09','标题1','http://localhost:8080/springboot68bv8/upload/shipindongtaiqu_tupian1.jpg','简介1','','2021-04-18 23:13:09','用户账号1','用户姓名1'),(42,'2021-04-18 15:13:09','标题2','http://localhost:8080/springboot68bv8/upload/shipindongtaiqu_tupian2.jpg','简介2','','2021-04-18 23:13:09','用户账号2','用户姓名2'),(43,'2021-04-18 15:13:09','标题3','http://localhost:8080/springboot68bv8/upload/shipindongtaiqu_tupian3.jpg','简介3','','2021-04-18 23:13:09','用户账号3','用户姓名3'),(44,'2021-04-18 15:13:09','标题4','http://localhost:8080/springboot68bv8/upload/shipindongtaiqu_tupian4.jpg','简介4','','2021-04-18 23:13:09','用户账号4','用户姓名4'),(45,'2021-04-18 15:13:09','标题5','http://localhost:8080/springboot68bv8/upload/shipindongtaiqu_tupian5.jpg','简介5','','2021-04-18 23:13:09','用户账号5','用户姓名5'),(46,'2021-04-18 15:13:09','标题6','http://localhost:8080/springboot68bv8/upload/shipindongtaiqu_tupian6.jpg','简介6','','2021-04-18 23:13:09','用户账号6','用户姓名6');
/*!40000 ALTER TABLE `shipindongtaiqu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tuwendongtaiqu`
--

DROP TABLE IF EXISTS `tuwendongtaiqu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tuwendongtaiqu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `wenzhang` longtext COMMENT '文章',
  `yinle` varchar(200) DEFAULT NULL COMMENT '音乐',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='图文动态区';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tuwendongtaiqu`
--

LOCK TABLES `tuwendongtaiqu` WRITE;
/*!40000 ALTER TABLE `tuwendongtaiqu` DISABLE KEYS */;
INSERT INTO `tuwendongtaiqu` VALUES (31,'2021-04-18 15:13:09','标题1','http://localhost:8080/springboot68bv8/upload/tuwendongtaiqu_tupian1.jpg','文章1','','2021-04-18 23:13:09','用户账号1','用户姓名1'),(32,'2021-04-18 15:13:09','标题2','http://localhost:8080/springboot68bv8/upload/tuwendongtaiqu_tupian2.jpg','文章2','','2021-04-18 23:13:09','用户账号2','用户姓名2'),(33,'2021-04-18 15:13:09','标题3','http://localhost:8080/springboot68bv8/upload/tuwendongtaiqu_tupian3.jpg','文章3','','2021-04-18 23:13:09','用户账号3','用户姓名3'),(34,'2021-04-18 15:13:09','标题4','http://localhost:8080/springboot68bv8/upload/tuwendongtaiqu_tupian4.jpg','文章4','','2021-04-18 23:13:09','用户账号4','用户姓名4'),(35,'2021-04-18 15:13:09','标题5','http://localhost:8080/springboot68bv8/upload/tuwendongtaiqu_tupian5.jpg','文章5','','2021-04-18 23:13:09','用户账号5','用户姓名5'),(36,'2021-04-18 15:13:09','标题6','http://localhost:8080/springboot68bv8/upload/tuwendongtaiqu_tupian6.jpg','文章6','','2021-04-18 23:13:09','用户账号6','用户姓名6');
/*!40000 ALTER TABLE `tuwendongtaiqu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-04-18 15:13:09');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (21,'2021-04-18 15:13:09','用户1','123456','用户姓名1','男','13823888881','773890001@qq.com','http://localhost:8080/springboot68bv8/upload/yonghu_touxiang1.jpg',100),(22,'2021-04-18 15:13:09','用户2','123456','用户姓名2','男','13823888882','773890002@qq.com','http://localhost:8080/springboot68bv8/upload/yonghu_touxiang2.jpg',100),(23,'2021-04-18 15:13:09','用户3','123456','用户姓名3','男','13823888883','773890003@qq.com','http://localhost:8080/springboot68bv8/upload/yonghu_touxiang3.jpg',100),(24,'2021-04-18 15:13:09','用户4','123456','用户姓名4','男','13823888884','773890004@qq.com','http://localhost:8080/springboot68bv8/upload/yonghu_touxiang4.jpg',100),(25,'2021-04-18 15:13:09','用户5','123456','用户姓名5','男','13823888885','773890005@qq.com','http://localhost:8080/springboot68bv8/upload/yonghu_touxiang5.jpg',100),(26,'2021-04-18 15:13:09','用户6','123456','用户姓名6','男','13823888886','773890006@qq.com','http://localhost:8080/springboot68bv8/upload/yonghu_touxiang6.jpg',100);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-19 11:00:28
