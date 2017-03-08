-- MySQL dump 10.13  Distrib 5.5.52, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: ticker
-- ------------------------------------------------------
-- Server version	5.5.52-0ubuntu0.14.04.1

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
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `id` varchar(32) NOT NULL,
  `account` varchar(10) DEFAULT NULL,
  `pwd` varchar(45) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `role` varchar(10) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES ('ff80818158a004d30158a004d46c0000','pangjian','123','2016-11-26 09:43:40','2016-11-26 09:43:40','admin','EFFECTIVE');
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_base_data`
--

DROP TABLE IF EXISTS `t_base_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_base_data` (
  `id` varchar(32) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `zodiac_code` varchar(10) DEFAULT NULL,
  `color_code` varchar(10) DEFAULT NULL,
  `seq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_base_data`
--

LOCK TABLES `t_base_data` WRITE;
/*!40000 ALTER TABLE `t_base_data` DISABLE KEYS */;
INSERT INTO `t_base_data` VALUES ('1',2016,1,'猴','red',1),('10',2016,3,'马','blue',10),('11',2016,15,'马','blue',11),('12',2016,27,'马','green',12),('13',2016,39,'马','green',13),('14',2016,4,'蛇','blue',14),('15',2016,16,'蛇','green',15),('16',2016,28,'蛇','green',16),('17',2016,40,'蛇','red',17),('18',2016,5,'龙','green',18),('19',2016,17,'龙','green',19),('2',2016,13,'猴','red',2),('20',2016,29,'龙','red',20),('21',2016,41,'龙','blue',21),('22',2016,6,'兔','green',22),('23',2016,18,'兔','red',23),('24',2016,30,'兔','red',24),('25',2016,42,'兔','blue',25),('3',2016,25,'猴','blue',3),('4',2016,37,'猴','blue',4),('5',2016,49,'猴','green',5),('6',2016,2,'羊','red',6),('7',2016,14,'羊','blue',7),('8',2016,26,'羊','blue',8),('9',2016,38,'羊','green',9),('ff808181594d5bc301594d86a5630000',2016,7,'虎','red',NULL),('ff808181594d5bc301594d86efef0001',2016,19,'虎','red',NULL),('ff808181594d5bc301594d871ea10002',2016,31,'虎','blue',NULL),('ff808181594d5bc301594d87fe5e0004',2016,43,'虎','green',NULL),('ff808181594d5bc301594d8866800005',2016,8,'牛','red',NULL),('ff808181594d5bc301594d8893a50006',2016,20,'牛','blue',NULL),('ff808181594d5bc301594d88d76a0007',2016,32,'牛','green',NULL),('ff808181594d5bc301594d8911d60008',2016,44,'牛','green',NULL),('ff808181594d5bc301594d8a23350009',2016,9,'鼠','blue',NULL),('ff808181594d5bc301594d8a832e000a',2016,21,'鼠','green',NULL),('ff808181594d5bc301594d8ab395000b',2016,33,'鼠','green',NULL),('ff808181594d5bc301594d8afaed000c',2016,45,'鼠','red',NULL),('ff808181594d5bc301594d8cd287000d',2016,12,'鸡','red',NULL),('ff808181594d5bc301594d8d0f75000e',2016,24,'鸡','red',NULL),('ff808181594d5bc301594d8d4aff000f',2016,36,'鸡','blue',NULL),('ff808181594d5bc301594d8eaea60010',2016,48,'鸡','blue',NULL),('ff808181594d5bc301594d9050760011',2016,11,'狗','green',NULL),('ff808181594d5bc301594d909c400012',2016,23,'狗','red',NULL),('ff808181594d5bc301594d90b7fd0013',2016,35,'狗','red',NULL),('ff808181594d5bc301594d90f0c60014',2016,47,'狗','blue',NULL),('ff808181594d5bc301594d9209f60015',2016,10,'猪','blue',NULL),('ff808181594d5bc301594d922b360016',2016,22,'猪','green',NULL),('ff808181594d5bc301594d926b8e0017',2016,34,'猪','red',NULL),('ff808181594d5bc301594d929f420018',2016,46,'猪','red',NULL),('ff808181596c52cc01596c54fca40000',2017,1,'鸡','red',NULL),('ff808181596c52cc01596c55313e0001',2017,13,'鸡','red',NULL),('ff808181596c52cc01596c5577fd0002',2017,25,'鸡','blue',NULL),('ff808181596c52cc01596c55adfd0003',2017,49,'鸡','green',NULL),('ff808181596c52cc01596c55f2790004',2017,37,'鸡','blue',NULL),('ff808181596c52cc01596c56493c0005',2017,2,'猴','red',NULL),('ff808181596c52cc01596c56744c0006',2017,14,'猴','blue',NULL),('ff808181596c52cc01596c56bdad0007',2017,26,'猴','blue',NULL),('ff808181596c52cc01596c5719fb0008',2017,38,'猴','green',NULL),('ff808181596c52cc01596c576b530009',2017,3,'羊','blue',NULL),('ff808181596c52cc01596c5793f4000a',2017,15,'羊','blue',NULL),('ff808181596c52cc01596c57c28c000b',2017,27,'羊','green',NULL),('ff808181596c52cc01596c57f384000c',2017,39,'羊','green',NULL),('ff808181596c52cc01596c584f9b000d',2017,4,'马','blue',NULL),('ff808181596c52cc01596c58803b000e',2017,16,'马','green',NULL),('ff808181596c52cc01596c58b34d000f',2017,28,'马','green',NULL),('ff808181596c52cc01596c58eb4c0010',2017,40,'马','red',NULL),('ff808181596c52cc01596c592a9c0011',2017,5,'蛇','green',NULL),('ff808181596c52cc01596c5962a40012',2017,17,'蛇','green',NULL),('ff808181596c52cc01596c59956b0013',2017,29,'蛇','red',NULL),('ff808181596c52cc01596c59de1c0014',2017,41,'蛇','blue',NULL),('ff808181596c52cc01596c5a5f680015',2017,6,'龙','green',NULL),('ff808181596c52cc01596c5aace30016',2017,18,'龙','red',NULL),('ff808181596c52cc01596c5ae14c0017',2017,30,'龙','red',NULL),('ff808181596c52cc01596c5b29c30018',2017,42,'龙','blue',NULL),('ff808181596c52cc01596c5b824c0019',2017,7,'兔','red',NULL),('ff808181596c52cc01596c5bbb3c001a',2017,19,'兔','red',NULL),('ff808181596c52cc01596c5bf003001b',2017,31,'兔','blue',NULL),('ff808181596c52cc01596c5c47c0001c',2017,43,'兔','green',NULL),('ff808181596c52cc01596c5c9ed4001d',2017,8,'虎','red',NULL),('ff808181596c52cc01596c5cdbfc001e',2017,20,'虎','blue',NULL),('ff808181596c52cc01596c5d1284001f',2017,32,'虎','green',NULL),('ff808181596c52cc01596c5d46ab0020',2017,44,'虎','green',NULL),('ff808181596c52cc01596c5d91940021',2017,9,'牛','blue',NULL),('ff808181596c52cc01596c5dc71b0022',2017,21,'牛','green',NULL),('ff808181596c52cc01596c5e12840023',2017,33,'牛','green',NULL),('ff808181596c52cc01596c5e51130024',2017,45,'牛','red',NULL),('ff808181596c52cc01596c5e91a30025',2017,10,'鼠','blue',NULL),('ff808181596c52cc01596c5ec2340026',2017,22,'鼠','green',NULL),('ff808181596c52cc01596c5ef3bc0027',2017,34,'鼠','red',NULL),('ff808181596c52cc01596c5f20340028',2017,46,'鼠','red',NULL),('ff808181596c52cc01596c5fc31c0029',2017,11,'猪','green',NULL),('ff808181596c52cc01596c5ff505002a',2017,23,'猪','red',NULL),('ff808181596c52cc01596c601664002b',2017,35,'猪','red',NULL),('ff808181596c52cc01596c604de4002c',2017,47,'猪','blue',NULL),('ff808181596c52cc01596c607d53002d',2017,12,'狗','red',NULL),('ff808181596c52cc01596c60bcac002e',2017,24,'狗','red',NULL),('ff808181596c52cc01596c6107cc002f',2017,36,'狗','blue',NULL),('ff808181596c52cc01596c614d8c0030',2017,48,'狗','blue',NULL);
/*!40000 ALTER TABLE `t_base_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_consumer`
--

DROP TABLE IF EXISTS `t_consumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_consumer` (
  `id` varchar(32) NOT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `referee_id` varchar(12) DEFAULT NULL,
  `pwd` varchar(45) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_consumer`
--

LOCK TABLES `t_consumer` WRITE;
/*!40000 ALTER TABLE `t_consumer` DISABLE KEYS */;
INSERT INTO `t_consumer` VALUES ('1','18922378741',292,'2016-12-01 16:00:00','2016-12-01 16:00:00','0','a','EFFECTIVE'),('10','18922378710',156,'2016-12-01 16:00:00','2016-12-01 16:00:00','18922378742','a','EFFECTIVE'),('11','18922378711',1023,'2016-12-01 16:00:00','2016-12-01 16:00:00','18922378743','a','INVALID'),('12','18922378712',5,'2016-12-01 16:00:00','2016-12-01 16:00:00','18922378744','a','EFFECTIVE'),('13','18922378713',100,'2016-12-01 16:00:00','2016-12-01 16:00:00','1','a','EFFECTIVE'),('14','18922378714',108,'2016-12-01 16:00:00','2016-12-01 16:00:00','1','a','EFFECTIVE'),('15','18922378715',100,'2016-12-01 16:00:00','2016-12-01 16:00:00','1','a','EFFECTIVE'),('16','18922378716',100,'2016-12-01 16:00:00','2016-12-01 16:00:00','1','a','EFFECTIVE'),('19','18909874762',0,'2017-01-06 04:55:25','2017-01-06 04:55:25','00000000000','aabb12366','EFFECTIVE'),('2','18922378742',80,'2016-12-01 16:00:00','2016-12-01 16:00:00','18922378742','a','EFFECTIVE'),('3','18922378743',1000,'2016-12-01 16:00:00','2016-12-01 16:00:00','18922378743','a','EFFECTIVE'),('3c05617a1f9e41eca2901e9b24388c3f','13895424519',0,'2017-01-06 05:00:00','2017-01-06 05:00:00','00000000000','aabb12366','EFFECTIVE'),('4','18922378744',5,'2016-12-01 16:00:00','2016-12-01 16:00:00','18922378744','a','EFFECTIVE'),('5','18922378745',100,'2016-12-01 16:00:00','2016-12-01 16:00:00','1','a','EFFECTIVE'),('6','18922378746',108,'2016-12-01 16:00:00','2016-12-01 16:00:00','1','a','EFFECTIVE'),('7','18922378747',100,'2016-12-01 16:00:00','2016-12-01 16:00:00','1','a','EFFECTIVE'),('8','18922378748',100,'2016-12-01 16:00:00','2016-12-01 16:00:00','1','a','EFFECTIVE'),('9','18922378749',100,'2016-12-01 16:00:00','2016-12-01 16:00:00','0','a','EFFECTIVE'),('ff80818158cc9eb30158cd18bf270000','18922378747',100,'2016-12-01 16:00:00','2016-12-01 16:00:00','1','a','INVALID'),('ff80818158cd9fef0158cdab35160000','18922378711',1000,'2016-12-01 16:00:00','2016-12-01 16:00:00','18922378743','a','INVALID'),('ff80818158cd9fef0158cdac4e240001','18922378747',100,'2016-12-01 16:00:00','2016-12-01 16:00:00','1','a','EFFECTIVE'),('ff80818158cd9fef0158cdaea1660002','18922378713',100,'2016-12-01 16:00:00','2016-12-01 16:00:00','1','a','INVALID'),('ff80818158cd9fef0158cdaf176d0003','18922378713',100,'2016-12-01 16:00:00','2016-12-01 16:00:00','1','a','INVALID'),('ff80818158cd9fef0158cdafd9160004','18922378712',9,'2016-12-01 16:00:00','2016-12-01 16:00:00','18922378744','a','INVALID'),('ff80818158cdb17b0158cdb236170000','18922378712',5,'2016-12-01 16:00:00','2016-12-01 16:00:00','18922378744','a','INVALID'),('ff80818158cdb35f0158cdb4f4d20000','18922378711',1000,'2016-12-01 16:00:00','2016-12-01 16:00:00','18922378743','a','INVALID'),('ff808181591a414601591a499a960000','1863326584',0,'2016-12-20 03:32:28','2016-12-20 03:32:28',NULL,'a','EFFECTIVE'),('ff808181591a4bb701591a4c25360000','17897657524',0,'2016-12-20 03:35:14','2016-12-20 03:35:14',NULL,'a','EFFECTIVE'),('ff808181591a4bb701591a4d6c1e0001','1894456782',0,'2016-12-20 03:36:38','2016-12-20 03:36:38',NULL,'a','EFFECTIVE'),('ff808181591a4bb701591a60a4eb0003','123',0,'2016-12-20 03:57:38','2016-12-20 03:57:38',NULL,'a','EFFECTIVE'),('ff808181591a62e401591a62f8e80000','1234657',0,'2016-12-20 04:00:10','2016-12-20 04:00:10',NULL,'a','EFFECTIVE'),('ff808181591a62e401591a9f33d20001','13569878751',0,'2016-12-20 05:05:58','2016-12-20 05:05:58',NULL,'a','EFFECTIVE');
/*!40000 ALTER TABLE `t_consumer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_lottery_data`
--

DROP TABLE IF EXISTS `t_lottery_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_lottery_data` (
  `id` varchar(32) NOT NULL,
  `stage` int(11) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `lottery_time` timestamp NULL DEFAULT NULL,
  `flat_Number1` int(11) DEFAULT '0',
  `flat_Number2` int(11) DEFAULT '0',
  `flat_Number3` int(11) DEFAULT '0',
  `flat_Number4` int(11) DEFAULT '0',
  `flat_Number5` int(11) DEFAULT '0',
  `flat_Number6` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_lottery_data`
--

LOCK TABLES `t_lottery_data` WRITE;
/*!40000 ALTER TABLE `t_lottery_data` DISABLE KEYS */;
INSERT INTO `t_lottery_data` VALUES ('1',147,'2016-12-19 16:00:00','2016-12-19 16:00:00',2016,39,'2016-12-19 16:00:00',1,45,37,26,11,37),('2',146,'2016-12-17 16:00:00','2016-12-17 16:00:00',2016,29,'2016-12-17 16:00:00',3,49,23,31,41,6),('ff808181594a7f8a01594aae4eb50001',148,'2016-12-29 13:04:14','2016-12-29 13:04:14',2016,30,'2005-12-22 16:00:00',12,35,42,33,2,10),('ff808181594d5bc301594d9c341f0019',150,'2016-12-30 02:43:19','2016-12-30 02:43:19',2016,26,'2005-12-28 16:00:00',21,2,11,17,13,15),('ff808181594d5bc301594da2077d001a',149,'2016-12-30 02:49:41','2016-12-30 02:49:41',2016,41,'2005-12-24 16:00:00',10,43,26,3,4,37),('ff8081815967a09301596933cc210000',1,'2017-01-04 11:18:39','2017-01-04 11:18:39',2017,18,'2016-12-31 16:00:00',22,29,37,11,4,46),('ff8081815991a2bf015991bda73d0003',8,'2017-01-12 08:14:02','2017-01-12 08:14:02',2017,5,'2016-12-18 16:00:00',23,42,12,35,43,16),('ff8081815991a2bf015991c307fd0008',9,'2017-01-12 08:19:55','2017-01-12 08:19:55',2017,16,'2016-12-15 16:00:00',25,36,46,12,3,19),('ff8081815991a2bf015991c8c355000e',12,'2017-01-12 08:26:10','2017-01-12 08:26:10',2017,22,'2016-12-13 16:00:00',23,42,36,12,2,8),('ff8081815991a2bf015991cc1ea50012',13,'2017-01-12 08:29:50','2017-01-12 08:29:50',2017,49,'2017-01-18 16:00:00',23,45,12,36,48,20);
/*!40000 ALTER TABLE `t_lottery_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_msg`
--

DROP TABLE IF EXISTS `t_msg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_msg` (
  `id` varchar(32) NOT NULL,
  `content` varchar(200) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_msg`
--

LOCK TABLES `t_msg` WRITE;
/*!40000 ALTER TABLE `t_msg` DISABLE KEYS */;
INSERT INTO `t_msg` VALUES ('ff808181594851b8015949582cde0000','【皇家团购】您的短信验证码是：3991,请在页面输入完成验证！','18922378741','2016-12-29 06:50:32',NULL,NULL),('ff808181594851b80159496a91ee0001','【皇家团购】您的短信验证码是：3621,请在页面输入完成验证！','18922378741','2016-12-29 07:10:38',NULL,NULL),('ff808181594851b80159496c9a370002','【皇家团购】您的短信验证码是：2280,请在页面输入完成验证！','18922378741','2016-12-29 07:12:51',NULL,NULL),('ff808181594851b80159497a90260003','【皇家团购】您的短信验证码是：9004,请在页面输入完成验证！','18922378741','2016-12-29 07:28:06',NULL,NULL),('ff808181594851b80159498ca79e0005','【皇家团购】您的短信验证码是：6965,请在页面输入完成验证！','18922378741','2016-12-29 07:47:51',NULL,NULL),('ff8081815963884b01596388e5120000','【皇家团购】您的短信验证码是：3656,请在页面输入完成验证！','18922378741','2017-01-03 08:53:52',NULL,NULL),('ff808181596d467101596d55bfcb0000','【皇家团购】您的短信验证码是：3620,请在页面输入完成验证！','18922378741','2017-01-05 06:34:13',NULL,NULL),('ff8081815991a2bf015991a791f90001','【皇家团购】您的短信验证码是：658,请在页面输入完成验证！','18922378741','2017-01-12 07:49:55',NULL,NULL),('ff8081815991a2bf015991c198f40006','【皇家团购】您的短信验证码是：8132,请在页面输入完成验证！','18922378741','2017-01-12 08:18:21',NULL,NULL),('ff8081815991a2bf015991c7396d000c','【皇家团购】您的短信验证码是：3331,请在页面输入完成验证！','18922378741','2017-01-12 08:24:29',NULL,NULL),('ff8081815991a2bf015991c997eb0010','【皇家团购】您的短信验证码是：6373,请在页面输入完成验证！','18922378741','2017-01-12 08:27:05',NULL,NULL),('ff808181599acc3c01599ad06ac90000','【皇家团购】您的短信验证码是：5975,请在页面输入完成验证！','18922378741','2017-01-14 02:31:07',NULL,NULL);
/*!40000 ALTER TABLE `t_msg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_order`
--

DROP TABLE IF EXISTS `t_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_order` (
  `id` varchar(32) NOT NULL,
  `amount` double DEFAULT NULL,
  `user_id` varchar(32) DEFAULT NULL,
  `product_id` varchar(32) DEFAULT NULL,
  `result` varchar(1) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `stage` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_order`
--

LOCK TABLES `t_order` WRITE;
/*!40000 ALTER TABLE `t_order` DISABLE KEYS */;
INSERT INTO `t_order` VALUES ('ff8081815925e38b015925fcc1370000',5,'1','ff80818158d91a5b0158d93aaf990002',NULL,'2016-12-22 10:03:58',NULL,'COMPLETE',2016,151),('ff808181592670eb015926719c480000',5,'1','ff80818158d91a5b0158d93aaf990002',NULL,'2016-12-22 12:11:36',NULL,'COMPLETE',2016,151),('ff808181592670eb01592676fdb30002',1,'1','ff80818158d91a5b0158d92c332b0000',NULL,'2016-12-22 12:17:29',NULL,'COMPLETE',2016,141),('ff808181594851b80159497aec600004',10,'1','ff80818158d91a5b0158d93a56c90001',NULL,'2016-12-29 07:28:29',NULL,'COMPLETE',2016,142),('ff8081815991a2bf015991a7da770002',1,'1','ff8081815991a2bf015991a41fc70000',NULL,'2017-01-12 07:50:13',NULL,'COMPLETE',2017,8),('ff8081815991a2bf015991c1e41e0007',1,'1','ff8081815991a2bf015991c03a0e0005',NULL,'2017-01-12 08:18:40',NULL,'COMPLETE',2017,9),('ff8081815991a2bf015991c79ba6000d',1,'1','ff8081815991a2bf015991c625c9000a',NULL,'2017-01-12 08:24:54',NULL,'COMPLETE',2017,12),('ff8081815991a2bf015991c9fbdf0011',1,'1','ff8081815991a2bf015991c6b2fe000b',NULL,'2017-01-12 08:27:30',NULL,'COMPLETE',2017,13),('ff808181599acc3c01599ad0c38f0001',1,'1','ff808181599abcc501599ac4b1fb0000',NULL,'2017-01-14 02:31:29',NULL,'COMPLETE',2017,10);
/*!40000 ALTER TABLE `t_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_product`
--

DROP TABLE IF EXISTS `t_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_product` (
  `id` varchar(32) NOT NULL,
  `expect` varchar(1000) DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `stage` int(11) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `title` varchar(80) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `virtual_count` int(11) DEFAULT '0',
  `probability` varchar(50) DEFAULT NULL,
  `limit_count` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_product`
--

LOCK TABLES `t_product` WRITE;
/*!40000 ALTER TABLE `t_product` DISABLE KEYS */;
INSERT INTO `t_product` VALUES ('ff80818158d91a5b0158d92c332b0000','{type:0,items:[{\"name\":\"龙\",\"numbers\":[\"5\",\"17\",\"29\",\"41\"]},{\"name\":\"马\",\"numbers\":[\"15\",\"27\",\"39\",\"3\"]}]}',1,'2016-12-07 12:05:02',2016,141,'2016-12-07 12:05:02','SALE','141期：白姐救世民单双---三肖致富天下彩民，必中的神料','18922378751',0,'十期中10期',0),('ff80818158d91a5b0158d93a56c90001','{type:0,items:[{\"name\":\"龙\",\"numbers\":[\"5\",\"17\",\"29\",\"41\"]},{\"name\":\"马\",\"numbers\":[\"15\",\"27\",\"39\",\"3\"]}]}',10,'2016-12-07 12:20:28',2016,142,'2016-12-07 12:20:28','SALE','142期：白姐救世民单双---三肖致富天下彩民，必中的神料','18922378751',0,'十期中6期',0),('ff80818158d91a5b0158d93aaf990002','{type:0,items:[{\"name\":\"龙\",\"numbers\":[\"5\",\"17\",\"29\",\"41\"]},{\"name\":\"马\",\"numbers\":[\"15\",\"27\",\"39\",\"3\"]}]}',5,'2016-12-07 12:20:51',2016,151,'2016-12-07 12:20:51','SALE','151期：白姐救世民单双---三肖致富天下彩民，必中的神料','18922378751',130,'十期中9期',0),('ff808181594e8a9a01594f5f58cb0000','{type:0,items:[{\"name\":\"龙\",\"numbers\":[\"5\",\"17\",\"29\",\"41\"]},{\"name\":\"马\",\"numbers\":[\"15\",\"27\",\"39\",\"3\"]}]}',10,'2016-12-30 10:56:05',2016,151,'2016-12-30 10:56:05','SALE','151期：白姐救世民单双---两肖致富天下彩民，必中的神料','18922378742',3000,'十期中10期',0),('ff808181594e8a9a01594f76130b0001','{type:0,items:[{\"name\":\"龙\",\"numbers\":[\"5\",\"17\",\"29\",\"41\"]},{\"name\":\"马\",\"numbers\":[\"15\",\"27\",\"39\",\"3\"]}]}',18,'2016-12-30 11:20:55',2016,151,'2016-12-30 11:20:55','SALE','151期：白姐救世民单双---1肖致富天下彩民，必中的神料','18955636582',986,'十期中10期',0),('ff8081815976aa840159773e99330000','{type:0,items:[{\"name\":\"鸡\",\"numbers\":[\"25\",\"37\"]},{\"name\":\"龙\",\"numbers\":[\"30\",\"18\"]},{\"name\":\"马\",\"numbers\":[\"16\",\"40\"]}]}',10,'2017-01-07 04:45:08',2016,152,'2017-01-07 04:45:08','SALE','151期：白姐救世民单双---1肖致富天下彩民，必中的神料','18922378741',2000,'十期中10期',20),('ff8081815976aa84015978285b760001','{type:0,items:[{\"name\":\"鼠\",\"numbers\":[\"34\"]},{\"name\":\"狗\",\"numbers\":[\"48\"]},{\"name\":\"蛇\",\"numbers\":[\"29\"]},{\"name\":\"龙\",\"numbers\":[\"42\",\"30\"]},{\"name\":\"羊\",\"numbers\":[\"39\"]},{\"name\":\"牛\",\"numbers\":[\"21\"]}]}',10,'2017-01-07 09:00:27',2016,3,'2017-01-07 09:00:27','SALE','141期：白姐救世民单双---三肖致富天下彩民，必中的神料','18922378741',10,'10中10',10),('ff80818159905a9f015990a965e80001','{\"type\":\"1\",\"sizeType\":\"big\"}',10,'2017-01-12 03:12:17',2016,151,'2017-01-12 03:12:17','SALE','151期：白姐救世民单双---两肖致富天下彩民，必中的神料','18922378741',200,'10中10',230),('ff80818159905a9f015990aebaa10002','{\"type\":\"2\",\"colorType\":[\"red\",\"blue\"]}',200,'2017-01-12 03:18:07',2016,152,'2017-01-12 03:18:07','SALE','151期：白姐救世民单双---两肖致富天下彩民，必中的神料','18922378741',369,'10中10',1000),('ff8081815991a2bf015991a41fc70000','{\"type\":\"0\",\"items\":[{\"name\":\"鸡\",\"numbers\":[\"1\"]},{\"name\":\"猴\",\"numbers\":[\"2\"]},{\"name\":\"羊\",\"numbers\":[\"3\"]}]}',1,'2017-01-12 07:46:09',2017,8,'2017-01-12 07:46:09','SALE','test随机退款功能','18922378741',3,'10中10',10),('ff8081815991a2bf015991c03a0e0005','{\"type\":\"0\",\"items\":[{\"name\":\"鸡\",\"numbers\":[\"1\"]},{\"name\":\"马\",\"numbers\":[\"16\"]}]}',1,'2017-01-12 08:16:51',2017,9,'2017-01-12 08:16:51','SALE','test随机中的不退款功能','18922378741',1,'10中10',10),('ff8081815991a2bf015991c487140009','{\"type\":\"1\",\"sizeType\":\"single\"}',1,'2017-01-12 08:21:33',2016,10,'2017-01-12 08:21:33','SALE','10期test大小退款','18922378741',1,'10中10',100),('ff8081815991a2bf015991c625c9000a','{\"type\":\"1\",\"sizeType\":\"single\"}',1,'2017-01-12 08:23:19',2017,12,'2017-01-12 08:23:19','SALE','12测试大小退款功能','18922378741',10,'10中10',100),('ff8081815991a2bf015991c6b2fe000b','{\"type\":\"2\",\"colorType\":[\"red\",\"blue\"]}',1,'2017-01-12 08:23:55',2017,13,'2017-01-12 08:23:55','SALE','13测试波色退款功能','18922378741',10,'10中10',100),('ff808181599abcc501599ac4b1fb0000','{\"type\":\"0\",\"items\":[{\"name\":\"鼠\",\"numbers\":[\"22\"]},{\"name\":\"狗\",\"numbers\":[\"36\"]},{\"name\":\"马\",\"numbers\":[\"28\"]}]}',1,'2017-01-14 02:18:18',2017,10,'2017-01-14 02:34:06','REFUND','141期：白姐救世民单双---三肖致富天下彩民，必中的神料','18922378741',10,'10中10',20),('ff80818159af3a2b0159b0dc21860002','{\"type\":\"3\",\"zodiacType\":[\"猴\",\"龙\",\"马\",\"虎\"]}',100,'2017-01-18 09:15:33',2017,7,'2017-01-18 09:15:33','SALE','7期：白姐救世民单双---三肖致富天下彩民，必中的神料','18922378741',2000,'10中10',1200);
/*!40000 ALTER TABLE `t_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_recharge`
--

DROP TABLE IF EXISTS `t_recharge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_recharge` (
  `id` varchar(32) NOT NULL,
  `user_id` varchar(32) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `give_amount` double DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `source` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_recharge`
--

LOCK TABLES `t_recharge` WRITE;
/*!40000 ALTER TABLE `t_recharge` DISABLE KEYS */;
INSERT INTO `t_recharge` VALUES ('ff80818158d339a30158d339e9b30000','11',2,0,'2016-12-06 08:22:17',NULL,'sys'),('ff80818158d339a30158d33d87130001','11',2,1,'2016-12-06 08:26:14',NULL,'sys'),('ff80818158d339a30158d3476cb50002','1',100,100,'2016-12-06 08:37:03',NULL,'sys'),('ff80818158d339a30158d34978030003','1',20,2,'2016-12-06 08:39:17',NULL,'sys'),('ff80818158d7a7c10158d7b26a610001','1',1,1,'2016-12-07 05:12:23',NULL,'sys'),('ff80818158d7a7c10158d7b3a3870002','ff80818158cd9fef0158cdafd9160004',2,2,'2016-12-07 05:13:44',NULL,'sys'),('ff80818158dd07230158dd17f0340000','10',66,10,'2016-12-08 06:21:23',NULL,'sys'),('ff8081815991a2bf015991bda8310004','1',0,1,'2017-01-12 08:14:02',NULL,'refund'),('ff8081815991a2bf015991c8c3d8000f','1',0,1,'2017-01-12 08:26:10',NULL,'refund'),('ff8081815991a2bf015991cc1f2e0013','1',0,1,'2017-01-12 08:29:50',NULL,'refund'),('ff808181599acc3c01599ad3255d0002','1',0,1,'2017-01-14 02:34:05',NULL,'refund');
/*!40000 ALTER TABLE `t_recharge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_reply`
--

DROP TABLE IF EXISTS `t_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_reply` (
  `id` varchar(32) NOT NULL,
  `content` longtext,
  `user_id` varchar(32) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `topic_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_reply`
--

LOCK TABLES `t_reply` WRITE;
/*!40000 ALTER TABLE `t_reply` DISABLE KEYS */;
INSERT INTO `t_reply` VALUES ('ff808181592a4d8e01592a4f299a0001','<h1>108期：红花中彩4肖：猴虎鸡羊【开：猴25】准<br />\r\n109期：红花中彩4肖：羊牛猴龙【开：羊14】准<br />\r\n110期：红花中彩4肖：羊马猴兔【开：兔42】准<br />\r\n<strong>111期：红花中彩4肖：蛇马牛鸡【开：马27】准<br />\r\n112期：红花中彩4肖：兔蛇猪马【开：蛇40】准<br />\r\n113期：红花中彩4肖：蛇鸡兔猪【开：兔06】准<br />\r\n114期：红花中彩4肖：兔猪虎马【开：兔30】准<br />\r\n115期：红花中彩4肖：马猴兔猪【开：猪34】准<br />\r\n116期：红花中彩4肖：鼠马猴龙【开：鼠09】准<br />\r\n117期：红花中彩4肖：狗马鼠猴【开：猴13】准</strong><br />\r\n118期：红花中彩4肖：鼠龙猪马【开：猪46】准<br />\r\n119期：红花中彩4肖：猴蛇猪羊【开：猪10】准<br />\r\n120期：红花中彩4肖：兔鸡狗鼠【开：鸡12】准</h1>\r\n','1','2016-12-23 06:12:28',NULL,'OPEN','2'),('ff808181592a4d8e01592a62a5590002','<p>132期：红花中彩4肖：龙鼠鸡羊【开：羊26】准<br />\n133期：红花中彩4肖：鼠龙蛇羊【开：鼠33】准<br />\n134期：红花中彩4肖：猴鸡羊牛【开：牛32】准</p>\n','1','2016-12-23 06:33:45',NULL,'OPEN','2'),('ff808181592ee36401592fdc0ae50001','<p>专家【M记】杀特三码:20、29、41；特肖推荐：龙、蛇、牛、狗；特波色:绿、蓝；</p>\n\n<p>专家【M记】杀特三码:20、29、41；特肖推荐：<strong>龙、蛇、牛、狗</strong>；特波色:绿、蓝；</p>\n\n<p>专家【M记】杀特三码:20、29、41；特肖推荐：<strong>龙、蛇、牛、狗</strong>；特波色:绿、蓝；</p>\n\n<p>专家【M记】杀特三码:20、29、41；特肖推荐：<strong>龙、蛇、牛、狗</strong>；特波色:绿、蓝；</p>\n\n<p>专家【M记】杀特三码:20、29、41；特肖推荐：<strong>龙、蛇、牛、狗</strong>；特波色:绿、蓝；</p>\n','1','2016-12-24 08:04:26',NULL,'OPEN','ff808181592ee36401592fdb99e80000'),('ff808181596cf3d701596cf4a44e0000','<p>专家【M记】杀特三码:20、29、41；特肖推荐：龙、蛇、牛、狗；特波色:绿、蓝；</p>\n\n<p>专家【M记】杀特三码:20、29、41；特肖推荐：<strong>龙、蛇、牛、狗</strong>；特波色:绿、蓝；</p>\n\n<p>专家【M记】杀特三码:20、29、41；特肖推荐：<strong>龙、蛇、牛、狗</strong>；特波色:绿、蓝；</p>\n\n<p>专家【M记】杀特三码:20、29、41；特肖推荐：<strong>龙、蛇、牛、狗</strong>；特波色:绿、蓝；</p>\n\n<p>专家【M记】杀特三码:20、29、41；特肖推荐：<strong>龙、蛇、牛、狗</strong>；特波色:绿、蓝；</p>\n','1','2017-01-05 04:48:09',NULL,'OPEN','ff808181592ee36401592fdb99e80000'),('ff808181596cf9d301596cfb568c0000','<p>专家【M记】杀特三码:20、29、41；特肖推荐：龙、蛇、牛、狗；特波色:绿、蓝；</p>\n\n<p>专家【M记】杀特三码:20、29、41；特肖推荐：<strong>龙、蛇、牛、狗</strong>；特波色:绿、蓝；</p>\n\n<p>专家【M记】杀特三码:20、29、41；特肖推荐：<strong>龙、蛇、牛、狗</strong>；特波色:绿、蓝；</p>\n\n<p>专家【M记】杀特三码:20、29、41；特肖推荐：<strong>龙、蛇、牛、狗</strong>；特波色:绿、蓝；</p>\n\n<p>专家【M记】杀特三码:20、29、41；特肖推荐：<strong>龙、蛇、牛、狗</strong>；特波色:绿、蓝；</p>\n','1','2017-01-05 04:55:28',NULL,'OPEN','ff808181592ee36401592fdb99e80000');
/*!40000 ALTER TABLE `t_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_topic`
--

DROP TABLE IF EXISTS `t_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_topic` (
  `id` varchar(32) NOT NULL,
  `title` varchar(80) DEFAULT NULL,
  `content` longtext,
  `user_id` varchar(32) DEFAULT NULL,
  `read_count` int(11) DEFAULT '0',
  `reply_count` int(11) DEFAULT '0',
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `status` varchar(10) DEFAULT 'OPEN',
  `type` varchar(10) DEFAULT 'FREE',
  `year` int(11) DEFAULT NULL,
  `stage` int(11) DEFAULT NULL,
  `balance` double DEFAULT '0',
  `expect` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_topic`
--

LOCK TABLES `t_topic` WRITE;
/*!40000 ALTER TABLE `t_topic` DISABLE KEYS */;
INSERT INTO `t_topic` VALUES ('1','九六马会心水论坛六肖王：→羊 蛇 兔 猪 马 龙→ 准吗','<p>九六马会心水论坛六肖王：&rarr;羊 蛇 兔 猪 马 龙&rarr; 准吗</p>\r\n','1',5249,10,'2016-12-05 16:00:00','2016-12-07 06:23:03','OPEN','CHARGE',2016,180,0,NULL),('2','九六马会心水论坛六肖王：→羊 蛇 兔 猪 马 龙→ 准吗','<font size=\"5\">108期：<span style=\"color: darkorchid\">红花中彩</span><span style=\"color: red\">4肖：</span><span style=\"color: red\">猴</span>虎鸡羊【开：猴25】<span style=\"color: red\">准</span><br>109期：<span style=\"color: darkorchid\">红花中彩</span><span style=\"color: red\">4肖：</span><span style=\"color: red\">羊</span>牛猴龙【开：羊14】<span style=\"color: red\">准</span><br>110期：<span style=\"color: darkorchid\">红花中彩</span><span style=\"color: red\">4肖：</span>羊马猴<span style=\"color: red\">兔</span>【开：兔42】<span style=\"color: red\">准</span><br>111期：<span style=\"color: darkorchid\">红花中彩</span><span style=\"color: red\">4肖：</span>蛇<span style=\"color: red\">马</span>牛鸡【开：马27】<span style=\"color: red\">准</span><br>112期：<span style=\"color: darkorchid\">红花中彩</span><span style=\"color: red\">4肖：</span>兔<span style=\"color: red\">蛇</span>猪马【开：蛇40】<span style=\"color: red\">准</span><br>113期：<span style=\"color: darkorchid\">红花中彩</span><span style=\"color: red\">4肖：</span>蛇鸡<span style=\"color: red\">兔</span>猪【开：兔06】<span style=\"color: red\">准</span><br>114期：<span style=\"color: darkorchid\">红花中彩</span><span style=\"color: red\">4肖：</span><span style=\"color: red\">兔</span>猪虎马【开：兔30】<span style=\"color: red\">准</span><br>115期：<span style=\"color: darkorchid\">红花中彩</span><span style=\"color: red\">4肖：</span>马猴兔<span style=\"color: red\">猪</span>【开：猪34】<span style=\"color: red\">准</span><br>116期：<span style=\"color: darkorchid\">红花中彩</span><span style=\"color: red\">4肖：</span><span style=\"color: red\">鼠</span>马猴龙【开：鼠09】<span style=\"color: red\">准</span><br>117期：<span style=\"color: darkorchid\">红花中彩</span><span style=\"color: red\">4肖：</span>狗马鼠<span style=\"color: red\">猴</span>【开：猴13】<span style=\"color: red\">准</span><br>118期：<span style=\"color: darkorchid\">红花中彩</span><span style=\"color: red\">4肖：</span>鼠龙<span style=\"color: red\">猪</span>马【开：猪46】<span style=\"color: red\">准</span><br>119期：<span style=\"color: darkorchid\">红花中彩</span><span style=\"color: red\">4肖：</span>猴蛇<span style=\"color: red\">猪</span>羊【开：猪10】<span style=\"color: red\">准</span><br>120期：<span style=\"color: darkorchid\">红花中彩</span><span style=\"color: red\">4肖：</span>兔<span style=\"color: red\">鸡</span>狗鼠【开：鸡12】<span style=\"color: red\">准</span><br>121期：<span style=\"color: darkorchid\">红花中彩</span><span style=\"color: red\">4肖：</span><span style=\"color: red\">虎</span>马猪蛇【开：虎19】<span style=\"color: red\">准</span><br>122期：<span style=\"color: darkorchid\">红花中彩</span><span style=\"color: red\">4肖：</span>羊虎<span style=\"color: red\">狗</span>鼠【开：狗35】<span style=\"color: red\">准</span><br>123期：<span style=\"color: darkorchid\">红花中彩</span><span style=\"color: red\">4肖：</span><span style=\"color: red\">羊</span>马牛鸡【开：羊14】<span style=\"color: red\">准</span><br>124期：<span style=\"color: darkorchid\">红花中彩</span><span style=\"color: red\">4肖：</span>牛猴<span style=\"color: red\">龙</span>猪【开：龙41】<span style=\"color: red\">准</span><br>125期：<span style=\"color: darkorchid\">红花中彩</span><span style=\"color: red\">4肖：</span>蛇虎猴<span style=\"color: red\">兔</span>【开：兔42】<span style=\"color: red\">准</span><br>126期：<span style=\"color: darkorchid\">红花中彩</span><span style=\"color: red\">4肖：</span><span style=\"color: red\">牛</span>兔狗马【开：牛08】<span style=\"color: red\">准</span><br>127期：<span style=\"color: darkorchid\">红花中彩</span><span style=\"color: red\">4肖：</span>猴羊<span style=\"color: red\">狗</span>马【开：狗47】<span style=\"color: red\">准</span><br>128期：<span style=\"color: darkorchid\">红花中彩</span><span style=\"color: red\">4肖：</span>虎牛<span style=\"color: red\">鸡</span>鼠【开：鸡48】<span style=\"color: red\">准</span><br>129期：<span style=\"color: darkorchid\">红花中彩</span><span style=\"color: red\">4肖：</span>羊猴狗<span style=\"color: red\">蛇</span>【开：蛇28】<span style=\"color: red\">准</span><br>130期：<span style=\"color: darkorchid\">红花中彩</span><span style=\"color: red\">4肖：</span>羊兔<span style=\"color: red\">猴</span>猪【开：猴37】<span style=\"color: red\">准</span><br>131期：<span style=\"color: darkorchid\">红花中彩</span><span style=\"color: red\">4肖：</span>马蛇猪<span style=\"color: red\">兔</span>【开：兔42】<span style=\"color: red\">准</span><br>132期：<span style=\"color: darkorchid\">红花中彩</span><span style=\"color: red\">4肖：</span>龙鼠鸡<span style=\"color: red\">羊</span>【开：羊26】<span style=\"color: red\">准</span><br>133期：<span style=\"color: darkorchid\">红花中彩</span><span style=\"color: red\">4肖：</span><span style=\"color: red\">鼠</span>龙蛇羊【开：鼠33】<span style=\"color: red\">准</span><br>134期：<span style=\"color: darkorchid\">红花中彩</span><span style=\"color: red\">4肖：</span>猴鸡羊<span style=\"color: red\">牛</span>【开：牛32】<span style=\"color: red\">准</span><br>135期：<span style=\"color: darkorchid\">红花中彩</span><span style=\"color: red\">4肖：</span><font size=\"6\"><span style=\"color: darkorange\">收费中,来电办理</span></font>【开：0000】<span style=\"color: red\">准</span></font>','1',5766,154,'2016-12-05 16:00:00','2016-12-07 06:23:03','OPEN','FREE',2016,180,0,NULL),('ff80818158d7601f0158d760fb0a0000','123期经典六肖-经典六肖-经典六肖-经典六肖','<pre>\r\n123期经典六肖-经典六肖-经典六肖-经典六肖\r\n</pre>\r\n\r\n<pre>\r\n123期经典六肖-经典六肖-经典六肖-经典六肖</pre>\r\n\r\n<pre>\r\n123期经典六肖-经典六肖-经典六肖-经典六肖</pre>\r\n\r\n<pre>\r\n123期经典六肖-经典六肖-经典六肖-经典六肖</pre>\r\n\r\n<pre>\r\n123期经典六肖-经典六肖-经典六肖-经典六肖</pre>\r\n\r\n<pre>\r\n123期经典六肖-经典六肖-经典六肖-经典六肖</pre>\r\n','1',4473,0,'2016-12-07 03:43:26','2016-12-07 06:23:03','OPEN','CHARGE',2016,146,30,NULL),('ff80818158d7a7c10158d7b1b6460000','088期猛料平特推荐','<p>088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐</p>\r\n','1',4463,0,'2016-12-07 05:11:37','2016-12-07 06:23:03','OPEN','CHARGE',2016,88,15,NULL),('ff80818158d7a7c10158d7b4656c0003','088期猛料平特推荐','<p>哈哈哈哈哈哈</p>\r\n','1',4322,0,'2016-12-07 05:14:33','2016-12-07 06:23:03','OPEN','CHARGE',2016,88,18,NULL),('ff80818158d7dea80158d7f31a6d0000','086期haocai心水20码推荐','<pre>\r\n20码：43、10、21、26、09、18、14、29、37、04、08、31、23、33、44、36、42、11、25、22\r\n\r\n	10码：43、10、21、26、09、18、14、29、37、04\r\n\r\n	 5码：43、10、21、26、09</pre>\r\n','1',3998,0,'2016-12-07 06:23:03','2016-12-07 06:23:03','OPEN','CHARGE',2016,86,1,NULL),('ff808181592ee36401592fdb99e80000','专家【M记】杀特三码:20、29、41；特肖推荐：龙、蛇、牛、狗；特波色:绿、蓝；','<p>专家【M记】杀特三码:20、29、41；特肖推荐：龙、蛇、牛、狗；特波色:绿、蓝；</p>\r\n\r\n<p>专家【M记】杀特三码:20、29、41；特肖推荐：<span style=\"font-size:16px\"><strong><span style=\"color:#ff0000\">龙、蛇、牛、狗</span></strong></span>；特波色:绿、蓝；</p>\r\n\r\n<p>专家【M记】杀特三码:20、29、41；特肖推荐：<span style=\"font-size:16px\"><strong><span style=\"color:#ff0000\">龙、蛇、牛、狗</span></strong></span>；特波色:绿、蓝；</p>\r\n\r\n<p>专家【M记】杀特三码:20、29、41；特肖推荐：<span style=\"font-size:16px\"><strong><span style=\"color:#ff0000\">龙、蛇、牛、狗</span></strong></span>；特波色:绿、蓝；</p>\r\n\r\n<p>专家【M记】杀特三码:20、29、41；特肖推荐：<span style=\"font-size:16px\"><strong><span style=\"color:#ff0000\">龙、蛇、牛、狗</span></strong></span>；特波色:绿、蓝；</p>\r\n','1',4129,20,'2016-12-24 08:03:58','2017-01-05 04:55:28','OPEN','CHARGE',0,0,0,NULL),('ff808181597277df015972896eaf0000','003期：赌霸传承.稳赚六肖→→稳赚六肖→→稳赚六肖======好料赢钱靠你的胆量','<p>&lt;p&gt;001期【赌霸传承&amp;nbsp;稳赚六肖】&amp;rarr;&amp;rarr;【兔羊马蛇猴牛】==◆==开兔18准&lt;br /&gt;<br />\r\n002期【赌霸传承&amp;nbsp;稳赚六肖】&amp;rarr;&amp;rarr;【虎马蛇鼠羊猪】==◆==开马38准&lt;br /&gt;<br />\r\n003期【赌霸传承&amp;nbsp;稳赚六肖】&amp;rarr;&amp;rarr;【羊牛蛇猪狗龙】==◆==开？？准&lt;/p&gt;</p>\r\n','1',6425,0,'2017-01-06 06:48:40','2017-01-06 06:48:40','OPEN','CHARGE',2017,3,0,NULL),('ff808181599af72501599b44d0730000','11111111111111111111','<p>&lt;p&gt;001期【赌霸传承&amp;nbsp;稳赚六肖】&amp;rarr;&amp;rarr;【兔羊马蛇猴牛】==◆==开兔18准&lt;br /&gt;<br />\r\n002期【赌霸传承&amp;nbsp;稳赚六肖】&amp;rarr;&amp;rarr;【虎马蛇鼠羊猪】==◆==开马38准&lt;br /&gt;<br />\r\n003期【赌霸传承&amp;nbsp;稳赚六肖】&amp;rarr;&amp;rarr;【羊牛蛇猪狗龙】==◆==开？？准&lt;/p&gt;</p>\r\n','1',0,0,'2017-01-14 04:38:15','2017-01-14 04:38:15','OPEN','CHARGE',0,0,0,NULL),('ff808181599af72501599b47fbdf0001','九六马会心水论坛六肖王：→羊 蛇 兔 猪 马 龙','<p>&#39;1&#39;, &#39;九六马会心水论坛六肖王：&rarr;羊 蛇 兔 猪 马 龙&rarr; 准吗&#39;, &#39;&lt;p&gt;九六马会心水论坛六肖王：&amp;rarr;羊 蛇 兔 猪 马 龙&amp;rarr; 准吗&lt;/p&gt;\\r\\n&#39;, &#39;1&#39;, &#39;5249&#39;, &#39;10&#39;, &#39;2016-12-06 00:00:00&#39;, &#39;2016-12-07 14:23:03&#39;, &#39;OPEN&#39;, &#39;CHARGE&#39;, &#39;2016&#39;, &#39;180&#39;, &#39;0&#39;, NULL<br />\r\n&#39;2&#39;, &#39;九六马会心水论坛六肖王：&rarr;羊 蛇 兔 猪 马 龙&rarr; 准吗&#39;, &#39;&lt;font size=\\&quot;5\\&quot;&gt;108期：&lt;span style=\\&quot;color: darkorchid\\&quot;&gt;红花中彩&lt;/span&gt;&lt;span style=\\&quot;color: red\\&quot;&gt;4肖：&lt;/span&gt;&lt;span style=\\&quot;color: red\\&quot;&gt;猴&lt;/span&gt;虎鸡羊【开：猴25】&lt;span style=\\&quot;color: red\\&quot;&gt;准&lt;/span&gt;&lt;br&gt;109期：&lt;span style=\\&quot;color: darkorchid\\&quot;&gt;红花中彩&lt;/span&gt;&lt;span style=\\&quot;color: red\\&quot;&gt;4肖：&lt;/span&gt;&lt;span style=\\&quot;color: red\\&quot;&gt;羊&lt;/span&gt;牛猴龙【开：羊14】&lt;span style=\\&quot;color: red\\&quot;&gt;准&lt;/span&gt;&lt;br&gt;110期：&lt;span style=\\&quot;color: darkorchid\\&quot;&gt;红花中彩&lt;/span&gt;&lt;span style=\\&quot;color: red\\&quot;&gt;4肖：&lt;/span&gt;羊马猴&lt;span style=\\&quot;color: red\\&quot;&gt;兔&lt;/span&gt;【开：兔42】&lt;span style=\\&quot;color: red\\&quot;&gt;准&lt;/span&gt;&lt;br&gt;111期：&lt;span style=\\&quot;color: darkorchid\\&quot;&gt;红花中彩&lt;/span&gt;&lt;span style=\\&quot;color: red\\&quot;&gt;4肖：&lt;/span&gt;蛇&lt;span style=\\&quot;color: red\\&quot;&gt;马&lt;/span&gt;牛鸡【开：马27】&lt;span style=\\&quot;color: red\\&quot;&gt;准&lt;/span&gt;&lt;br&gt;112期：&lt;span style=\\&quot;color: darkorchid\\&quot;&gt;红花中彩&lt;/span&gt;&lt;span style=\\&quot;color: red\\&quot;&gt;4肖：&lt;/span&gt;兔&lt;span style=\\&quot;color: red\\&quot;&gt;蛇&lt;/span&gt;猪马【开：蛇40】&lt;span style=\\&quot;color: red\\&quot;&gt;准&lt;/span&gt;&lt;br&gt;113期：&lt;span style=\\&quot;color: darkorchid\\&quot;&gt;红花中彩&lt;/span&gt;&lt;span style=\\&quot;color: red\\&quot;&gt;4肖：&lt;/span&gt;蛇鸡&lt;span style=\\&quot;color: red\\&quot;&gt;兔&lt;/span&gt;猪【开：兔06】&lt;span style=\\&quot;color: red\\&quot;&gt;准&lt;/span&gt;&lt;br&gt;114期：&lt;span style=\\&quot;color: darkorchid\\&quot;&gt;红花中彩&lt;/span&gt;&lt;span style=\\&quot;color: red\\&quot;&gt;4肖：&lt;/span&gt;&lt;span style=\\&quot;color: red\\&quot;&gt;兔&lt;/span&gt;猪虎马【开：兔30】&lt;span style=\\&quot;color: red\\&quot;&gt;准&lt;/span&gt;&lt;br&gt;115期：&lt;span style=\\&quot;color: darkorchid\\&quot;&gt;红花中彩&lt;/span&gt;&lt;span style=\\&quot;color: red\\&quot;&gt;4肖：&lt;/span&gt;马猴兔&lt;span style=\\&quot;color: red\\&quot;&gt;猪&lt;/span&gt;【开：猪34】&lt;span style=\\&quot;color: red\\&quot;&gt;准&lt;/span&gt;&lt;br&gt;116期：&lt;span style=\\&quot;color: darkorchid\\&quot;&gt;红花中彩&lt;/span&gt;&lt;span style=\\&quot;color: red\\&quot;&gt;4肖：&lt;/span&gt;&lt;span style=\\&quot;color: red\\&quot;&gt;鼠&lt;/span&gt;马猴龙【开：鼠09】&lt;span style=\\&quot;color: red\\&quot;&gt;准&lt;/span&gt;&lt;br&gt;117期：&lt;span style=\\&quot;color: darkorchid\\&quot;&gt;红花中彩&lt;/span&gt;&lt;span style=\\&quot;color: red\\&quot;&gt;4肖：&lt;/span&gt;狗马鼠&lt;span style=\\&quot;color: red\\&quot;&gt;猴&lt;/span&gt;【开：猴13】&lt;span style=\\&quot;color: red\\&quot;&gt;准&lt;/span&gt;&lt;br&gt;118期：&lt;span style=\\&quot;color: darkorchid\\&quot;&gt;红花中彩&lt;/span&gt;&lt;span style=\\&quot;color: red\\&quot;&gt;4肖：&lt;/span&gt;鼠龙&lt;span style=\\&quot;color: red\\&quot;&gt;猪&lt;/span&gt;马【开：猪46】&lt;span style=\\&quot;color: red\\&quot;&gt;准&lt;/span&gt;&lt;br&gt;119期：&lt;span style=\\&quot;color: darkorchid\\&quot;&gt;红花中彩&lt;/span&gt;&lt;span style=\\&quot;color: red\\&quot;&gt;4肖：&lt;/span&gt;猴蛇&lt;span style=\\&quot;color: red\\&quot;&gt;猪&lt;/span&gt;羊【开：猪10】&lt;span style=\\&quot;color: red\\&quot;&gt;准&lt;/span&gt;&lt;br&gt;120期：&lt;span style=\\&quot;color: darkorchid\\&quot;&gt;红花中彩&lt;/span&gt;&lt;span style=\\&quot;color: red\\&quot;&gt;4肖：&lt;/span&gt;兔&lt;span style=\\&quot;color: red\\&quot;&gt;鸡&lt;/span&gt;狗鼠【开：鸡12】&lt;span style=\\&quot;color: red\\&quot;&gt;准&lt;/span&gt;&lt;br&gt;121期：&lt;span style=\\&quot;color: darkorchid\\&quot;&gt;红花中彩&lt;/span&gt;&lt;span style=\\&quot;color: red\\&quot;&gt;4肖：&lt;/span&gt;&lt;span style=\\&quot;color: red\\&quot;&gt;虎&lt;/span&gt;马猪蛇【开：虎19】&lt;span style=\\&quot;color: red\\&quot;&gt;准&lt;/span&gt;&lt;br&gt;122期：&lt;span style=\\&quot;color: darkorchid\\&quot;&gt;红花中彩&lt;/span&gt;&lt;span style=\\&quot;color: red\\&quot;&gt;4肖：&lt;/span&gt;羊虎&lt;span style=\\&quot;color: red\\&quot;&gt;狗&lt;/span&gt;鼠【开：狗35】&lt;span style=\\&quot;color: red\\&quot;&gt;准&lt;/span&gt;&lt;br&gt;123期：&lt;span style=\\&quot;color: darkorchid\\&quot;&gt;红花中彩&lt;/span&gt;&lt;span style=\\&quot;color: red\\&quot;&gt;4肖：&lt;/span&gt;&lt;span style=\\&quot;color: red\\&quot;&gt;羊&lt;/span&gt;马牛鸡【开：羊14】&lt;span style=\\&quot;color: red\\&quot;&gt;准&lt;/span&gt;&lt;br&gt;124期：&lt;span style=\\&quot;color: darkorchid\\&quot;&gt;红花中彩&lt;/span&gt;&lt;span style=\\&quot;color: red\\&quot;&gt;4肖：&lt;/span&gt;牛猴&lt;span style=\\&quot;color: red\\&quot;&gt;龙&lt;/span&gt;猪【开：龙41】&lt;span style=\\&quot;color: red\\&quot;&gt;准&lt;/span&gt;&lt;br&gt;125期：&lt;span style=\\&quot;color: darkorchid\\&quot;&gt;红花中彩&lt;/span&gt;&lt;span style=\\&quot;color: red\\&quot;&gt;4肖：&lt;/span&gt;蛇虎猴&lt;span style=\\&quot;color: red\\&quot;&gt;兔&lt;/span&gt;【开：兔42】&lt;span style=\\&quot;color: red\\&quot;&gt;准&lt;/span&gt;&lt;br&gt;126期：&lt;span style=\\&quot;color: darkorchid\\&quot;&gt;红花中彩&lt;/span&gt;&lt;span style=\\&quot;color: red\\&quot;&gt;4肖：&lt;/span&gt;&lt;span style=\\&quot;color: red\\&quot;&gt;牛&lt;/span&gt;兔狗马【开：牛08】&lt;span style=\\&quot;color: red\\&quot;&gt;准&lt;/span&gt;&lt;br&gt;127期：&lt;span style=\\&quot;color: darkorchid\\&quot;&gt;红花中彩&lt;/span&gt;&lt;span style=\\&quot;color: red\\&quot;&gt;4肖：&lt;/span&gt;猴羊&lt;span style=\\&quot;color: red\\&quot;&gt;狗&lt;/span&gt;马【开：狗47】&lt;span style=\\&quot;color: red\\&quot;&gt;准&lt;/span&gt;&lt;br&gt;128期：&lt;span style=\\&quot;color: darkorchid\\&quot;&gt;红花中彩&lt;/span&gt;&lt;span style=\\&quot;color: red\\&quot;&gt;4肖：&lt;/span&gt;虎牛&lt;span style=\\&quot;color: red\\&quot;&gt;鸡&lt;/span&gt;鼠【开：鸡48】&lt;span style=\\&quot;color: red\\&quot;&gt;准&lt;/span&gt;&lt;br&gt;129期：&lt;span style=\\&quot;color: darkorchid\\&quot;&gt;红花中彩&lt;/span&gt;&lt;span style=\\&quot;color: red\\&quot;&gt;4肖：&lt;/span&gt;羊猴狗&lt;span style=\\&quot;color: red\\&quot;&gt;蛇&lt;/span&gt;【开：蛇28】&lt;span style=\\&quot;color: red\\&quot;&gt;准&lt;/span&gt;&lt;br&gt;130期：&lt;span style=\\&quot;color: darkorchid\\&quot;&gt;红花中彩&lt;/span&gt;&lt;span style=\\&quot;color: red\\&quot;&gt;4肖：&lt;/span&gt;羊兔&lt;span style=\\&quot;color: red\\&quot;&gt;猴&lt;/span&gt;猪【开：猴37】&lt;span style=\\&quot;color: red\\&quot;&gt;准&lt;/span&gt;&lt;br&gt;131期：&lt;span style=\\&quot;color: darkorchid\\&quot;&gt;红花中彩&lt;/span&gt;&lt;span style=\\&quot;color: red\\&quot;&gt;4肖：&lt;/span&gt;马蛇猪&lt;span style=\\&quot;color: red\\&quot;&gt;兔&lt;/span&gt;【开：兔42】&lt;span style=\\&quot;color: red\\&quot;&gt;准&lt;/span&gt;&lt;br&gt;132期：&lt;span style=\\&quot;color: darkorchid\\&quot;&gt;红花中彩&lt;/span&gt;&lt;span style=\\&quot;color: red\\&quot;&gt;4肖：&lt;/span&gt;龙鼠鸡&lt;span style=\\&quot;color: red\\&quot;&gt;羊&lt;/span&gt;【开：羊26】&lt;span style=\\&quot;color: red\\&quot;&gt;准&lt;/span&gt;&lt;br&gt;133期：&lt;span style=\\&quot;color: darkorchid\\&quot;&gt;红花中彩&lt;/span&gt;&lt;span style=\\&quot;color: red\\&quot;&gt;4肖：&lt;/span&gt;&lt;span style=\\&quot;color: red\\&quot;&gt;鼠&lt;/span&gt;龙蛇羊【开：鼠33】&lt;span style=\\&quot;color: red\\&quot;&gt;准&lt;/span&gt;&lt;br&gt;134期：&lt;span style=\\&quot;color: darkorchid\\&quot;&gt;红花中彩&lt;/span&gt;&lt;span style=\\&quot;color: red\\&quot;&gt;4肖：&lt;/span&gt;猴鸡羊&lt;span style=\\&quot;color: red\\&quot;&gt;牛&lt;/span&gt;【开：牛32】&lt;span style=\\&quot;color: red\\&quot;&gt;准&lt;/span&gt;&lt;br&gt;135期：&lt;span style=\\&quot;color: darkorchid\\&quot;&gt;红花中彩&lt;/span&gt;&lt;span style=\\&quot;color: red\\&quot;&gt;4肖：&lt;/span&gt;&lt;font size=\\&quot;6\\&quot;&gt;&lt;span style=\\&quot;color: darkorange\\&quot;&gt;收费中,来电办理&lt;/span&gt;&lt;/font&gt;【开：0000】&lt;span style=\\&quot;color: red\\&quot;&gt;准&lt;/span&gt;&lt;/font&gt;&#39;, &#39;1&#39;, &#39;5766&#39;, &#39;154&#39;, &#39;2016-12-06 00:00:00&#39;, &#39;2016-12-07 14:23:03&#39;, &#39;OPEN&#39;, &#39;FREE&#39;, &#39;2016&#39;, &#39;180&#39;, &#39;0&#39;, NULL<br />\r\n&#39;ff80818158d7601f0158d760fb0a0000&#39;, &#39;123期经典六肖-经典六肖-经典六肖-经典六肖&#39;, &#39;&lt;pre&gt;\\r\\n123期经典六肖-经典六肖-经典六肖-经典六肖\\r\\n&lt;/pre&gt;\\r\\n\\r\\n&lt;pre&gt;\\r\\n123期经典六肖-经典六肖-经典六肖-经典六肖&lt;/pre&gt;\\r\\n\\r\\n&lt;pre&gt;\\r\\n123期经典六肖-经典六肖-经典六肖-经典六肖&lt;/pre&gt;\\r\\n\\r\\n&lt;pre&gt;\\r\\n123期经典六肖-经典六肖-经典六肖-经典六肖&lt;/pre&gt;\\r\\n\\r\\n&lt;pre&gt;\\r\\n123期经典六肖-经典六肖-经典六肖-经典六肖&lt;/pre&gt;\\r\\n\\r\\n&lt;pre&gt;\\r\\n123期经典六肖-经典六肖-经典六肖-经典六肖&lt;/pre&gt;\\r\\n&#39;, &#39;1&#39;, &#39;4473&#39;, &#39;0&#39;, &#39;2016-12-07 11:43:26&#39;, &#39;2016-12-07 14:23:03&#39;, &#39;OPEN&#39;, &#39;CHARGE&#39;, &#39;2016&#39;, &#39;146&#39;, &#39;30&#39;, NULL<br />\r\n&#39;ff80818158d7a7c10158d7b1b6460000&#39;, &#39;088期猛料平特推荐&#39;, &#39;&lt;p&gt;088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐088期猛料平特推荐&lt;/p&gt;\\r\\n&#39;, &#39;1&#39;, &#39;4463&#39;, &#39;0&#39;, &#39;2016-12-07 13:11:37&#39;, &#39;2016-12-07 14:23:03&#39;, &#39;OPEN&#39;, &#39;CHARGE&#39;, &#39;2016&#39;, &#39;88&#39;, &#39;15&#39;, NULL<br />\r\n&#39;ff80818158d7a7c10158d7b4656c0003&#39;, &#39;088期猛料平特推荐&#39;, &#39;&lt;p&gt;哈哈哈哈哈哈&lt;/p&gt;\\r\\n&#39;, &#39;1&#39;, &#39;4322&#39;, &#39;0&#39;, &#39;2016-12-07 13:14:33&#39;, &#39;2016-12-07 14:23:03&#39;, &#39;OPEN&#39;, &#39;CHARGE&#39;, &#39;2016&#39;, &#39;88&#39;, &#39;18&#39;, NULL<br />\r\n&#39;ff80818158d7dea80158d7f31a6d0000&#39;, &#39;086期haocai心水20码推荐&#39;, &#39;&lt;pre&gt;\\r\\n20码：43、10、21、26、09、18、14、29、37、04、08、31、23、33、44、36、42、11、25、22\\r\\n\\r\\n&nbsp;&nbsp; &nbsp;10码：43、10、21、26、09、18、14、29、37、04\\r\\n\\r\\n&nbsp;&nbsp; &nbsp; 5码：43、10、21、26、09&lt;/pre&gt;\\r\\n&#39;, &#39;1&#39;, &#39;3998&#39;, &#39;0&#39;, &#39;2016-12-07 14:23:03&#39;, &#39;2016-12-07 14:23:03&#39;, &#39;OPEN&#39;, &#39;CHARGE&#39;, &#39;2016&#39;, &#39;86&#39;, &#39;1&#39;, NULL<br />\r\n&#39;ff808181592ee36401592fdb99e80000&#39;, &#39;专家【M记】杀特三码:20、29、41；特肖推荐：龙、蛇、牛、狗；特波色:绿、蓝；&#39;, &#39;&lt;p&gt;专家【M记】杀特三码:20、29、41；特肖推荐：龙、蛇、牛、狗；特波色:绿、蓝；&lt;/p&gt;\\r\\n\\r\\n&lt;p&gt;专家【M记】杀特三码:20、29、41；特肖推荐：&lt;span style=\\&quot;font-size:16px\\&quot;&gt;&lt;strong&gt;&lt;span style=\\&quot;color:#ff0000\\&quot;&gt;龙、蛇、牛、狗&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;；特波色:绿、蓝；&lt;/p&gt;\\r\\n\\r\\n&lt;p&gt;专家【M记】杀特三码:20、29、41；特肖推荐：&lt;span style=\\&quot;font-size:16px\\&quot;&gt;&lt;strong&gt;&lt;span style=\\&quot;color:#ff0000\\&quot;&gt;龙、蛇、牛、狗&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;；特波色:绿、蓝；&lt;/p&gt;\\r\\n\\r\\n&lt;p&gt;专家【M记】杀特三码:20、29、41；特肖推荐：&lt;span style=\\&quot;font-size:16px\\&quot;&gt;&lt;strong&gt;&lt;span style=\\&quot;color:#ff0000\\&quot;&gt;龙、蛇、牛、狗&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;；特波色:绿、蓝；&lt;/p&gt;\\r\\n\\r\\n&lt;p&gt;专家【M记】杀特三码:20、29、41；特肖推荐：&lt;span style=\\&quot;font-size:16px\\&quot;&gt;&lt;strong&gt;&lt;span style=\\&quot;color:#ff0000\\&quot;&gt;龙、蛇、牛、狗&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;；特波色:绿、蓝；&lt;/p&gt;\\r\\n&#39;, &#39;1&#39;, &#39;4129&#39;, &#39;20&#39;, &#39;2016-12-24 16:03:58&#39;, &#39;2017-01-05 12:55:28&#39;, &#39;OPEN&#39;, &#39;CHARGE&#39;, &#39;0&#39;, &#39;0&#39;, &#39;0&#39;, NULL<br />\r\n&#39;ff808181597277df015972896eaf0000&#39;, &#39;003期：赌霸传承.稳赚六肖&rarr;&rarr;稳赚六肖&rarr;&rarr;稳赚六肖======好料赢钱靠你的胆量&#39;, &#39;&lt;p&gt;&amp;lt;p&amp;gt;001期【赌霸传承&amp;amp;nbsp;稳赚六肖】&amp;amp;rarr;&amp;amp;rarr;【兔羊马蛇猴牛】==◆==开兔18准&amp;lt;br /&amp;gt;&lt;br /&gt;\\r\\n002期【赌霸传承&amp;amp;nbsp;稳赚六肖】&amp;amp;rarr;&amp;amp;rarr;【虎马蛇鼠羊猪】==◆==开马38准&amp;lt;br /&amp;gt;&lt;br /&gt;\\r\\n003期【赌霸传承&amp;amp;nbsp;稳赚六肖】&amp;amp;rarr;&amp;amp;rarr;【羊牛蛇猪狗龙】==◆==开？？准&amp;lt;/p&amp;gt;&lt;/p&gt;\\r\\n&#39;, &#39;1&#39;, &#39;6425&#39;, &#39;0&#39;, &#39;2017-01-06 14:48:40&#39;, &#39;2017-01-06 14:48:40&#39;, &#39;OPEN&#39;, &#39;CHARGE&#39;, &#39;2017&#39;, &#39;3&#39;, &#39;0&#39;, NULL<br />\r\n&#39;ff808181599af72501599b44d0730000&#39;, &#39;11111111111111111111&#39;, &#39;&lt;p&gt;&amp;lt;p&amp;gt;001期【赌霸传承&amp;amp;nbsp;稳赚六肖】&amp;amp;rarr;&amp;amp;rarr;【兔羊马蛇猴牛】==◆==开兔18准&amp;lt;br /&amp;gt;&lt;br /&gt;\\r\\n002期【赌霸传承&amp;amp;nbsp;稳赚六肖】&amp;amp;rarr;&amp;amp;rarr;【虎马蛇鼠羊猪】==◆==开马38准&amp;lt;br /&amp;gt;&lt;br /&gt;\\r\\n003期【赌霸传承&amp;amp;nbsp;稳赚六肖】&amp;amp;rarr;&amp;amp;rarr;【羊牛蛇猪狗龙】==◆==开？？准&amp;lt;/p&amp;gt;&lt;/p&gt;\\r\\n&#39;, &#39;1&#39;, &#39;0&#39;, &#39;0&#39;, &#39;2017-01-14 12:38:15&#39;, &#39;2017-01-14 12:38:15&#39;, &#39;OPEN&#39;, &#39;CHARGE&#39;, &#39;0&#39;, &#39;0&#39;, &#39;0&#39;, NULL<br />\r\n&nbsp;</p>\r\n','1',0,0,'2017-01-14 04:41:43','2017-01-14 04:41:43','OPEN','CHARGE',0,0,0,NULL),('ff808181599af72501599b48484f0002','九六马会心水论坛六肖王：→羊 蛇 兔 猪 马 龙','<p>九六马会心水论坛六肖王：&rarr;羊 蛇 兔 猪 马 龙九六马会心水论坛六肖王：&rarr;羊 蛇 兔 猪 马 龙</p>\r\n\r\n<p>九六马会心水论坛六肖王：&rarr;羊 蛇 兔 猪 马 龙</p>\r\n\r\n<p>九六马会心水论坛六肖王：&rarr;羊 蛇 兔 猪 马 龙</p>\r\n\r\n<p>九六马会心水论坛六肖王：&rarr;羊 蛇 兔 猪 马 龙九六马会心水论坛六肖王：&rarr;羊 蛇 兔 猪 马 龙九六马会心水论坛六肖王：&rarr;羊 蛇 兔 猪 马 龙</p>\r\n','1',0,0,'2017-01-14 04:42:02','2017-01-14 04:42:02','OPEN','CHARGE',0,0,0,NULL),('ff808181599af72501599b485f310003','九六马会心水论坛六肖王：→羊 蛇 兔 猪 马 龙','<p>九六马会心水论坛六肖王：&rarr;羊 蛇 兔 猪 马 龙九六马会心水论坛六肖王：&rarr;羊 蛇 兔 猪 马 龙九六马会心水论坛六肖王：&rarr;羊 蛇 兔 猪 马 龙</p>\r\n','1',0,0,'2017-01-14 04:42:08','2017-01-14 04:42:08','OPEN','CHARGE',0,0,0,NULL),('ff808181599af72501599b486e370004','九六马会心水论坛六肖王：→羊 蛇 兔 猪 马 龙','<p>九六马会心水论坛六肖王：&rarr;羊 蛇 兔 猪 马 龙九六马会心水论坛六肖王：&rarr;羊 蛇 兔 猪 马 龙九六马会心水论坛六肖王：&rarr;羊 蛇 兔 猪 马 龙</p>\r\n','1',0,0,'2017-01-14 04:42:12','2017-01-14 04:42:12','OPEN','CHARGE',0,0,0,NULL),('ff808181599af72501599b48880f0005','九六马会心水论坛六肖王：→羊 蛇 兔 猪 马 龙','<p>九六马会心水论坛六肖王：&rarr;羊 蛇 兔 猪 马 龙九六马会心水论坛六肖王：&rarr;羊 蛇 兔 猪 马 龙九六马会心水论坛六肖王：&rarr;羊 蛇 兔 猪 马 龙九六马会心水论坛六肖王：&rarr;羊 蛇 兔 猪 马 龙九六马会心水论坛六肖王：&rarr;羊 蛇 兔 猪 马 龙</p>\r\n','1',0,0,'2017-01-14 04:42:19','2017-01-14 04:42:19','OPEN','CHARGE',0,0,0,NULL),('ff808181599af72501599b48997f0006','九六马会心水论坛六肖王：→羊 蛇 兔 猪 马 龙','<p>九六马会心水论坛六肖王：&rarr;羊 蛇 兔 猪 马 龙九六马会心水论坛六肖王：&rarr;羊 蛇 兔 猪 马 龙九六马会心水论坛六肖王：&rarr;羊 蛇 兔 猪 马 龙九六马会心水论坛六肖王：&rarr;羊 蛇 兔 猪 马 龙九六马会心水论坛六肖王：&rarr;羊 蛇 兔 猪 马 龙</p>\r\n','1',0,0,'2017-01-14 04:42:23','2017-01-14 04:42:23','OPEN','CHARGE',0,0,0,NULL),('ff808181599af72501599b48af9c0007','九六马会心水论坛六肖王：→羊 蛇 兔 猪 马 龙','<p>九六马会心水论坛六肖王：&rarr;羊 蛇 兔 猪 马 龙九六马会心水论坛六肖王：&rarr;羊 蛇 兔 猪 马 龙九六马会心水论坛六肖王：&rarr;羊 蛇 兔 猪 马 龙九六马会心水论坛六肖王：&rarr;羊 蛇 兔 猪 马 龙</p>\r\n','1',0,0,'2017-01-14 04:42:29','2017-01-14 04:42:29','OPEN','CHARGE',0,0,0,NULL),('ff808181599af72501599b48c5d60008','九六马会心水论坛六肖王：→羊 蛇 兔 猪 马 龙','<p>九六马会心水论坛六肖王：&rarr;羊 蛇 兔 猪 马 龙九六马会心水论坛六肖王：&rarr;羊 蛇 兔 猪 马 龙九六马会心水论坛六肖王：&rarr;羊 蛇 兔 猪 马 龙九六马会心水论坛六肖王：&rarr;羊 蛇 兔 猪 马 龙九六马会心水论坛六肖王：&rarr;羊 蛇 兔 猪 马 龙</p>\r\n','1',0,0,'2017-01-14 04:42:34','2017-01-14 04:42:34','OPEN','CHARGE',0,0,0,NULL);
/*!40000 ALTER TABLE `t_topic` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-08 18:01:11
