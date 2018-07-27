-- MySQL dump 10.13  Distrib 5.7.20, for Win64 (x86_64)
--
-- Host: localhost    Database: jobplus
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- Table structure for table `alembic_version`
--

DROP TABLE IF EXISTS `alembic_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alembic_version` (
  `version_num` varchar(32) NOT NULL,
  PRIMARY KEY (`version_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alembic_version`
--

LOCK TABLES `alembic_version` WRITE;
/*!40000 ALTER TABLE `alembic_version` DISABLE KEYS */;
INSERT INTO `alembic_version` VALUES ('22991c80ed08');
/*!40000 ALTER TABLE `alembic_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_detail`
--

DROP TABLE IF EXISTS `company_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_detail` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logo` varchar(64) NOT NULL,
  `site` varchar(64) NOT NULL,
  `location` varchar(24) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `about` varchar(1024) DEFAULT NULL,
  `tags` varchar(128) DEFAULT NULL,
  `stack` varchar(128) DEFAULT NULL,
  `team_introduction` varchar(256) DEFAULT NULL,
  `welfares` varchar(256) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `field` varchar(128) DEFAULT NULL,
  `finance_stage` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `company_detail_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_detail`
--

LOCK TABLES `company_detail` WRITE;
/*!40000 ALTER TABLE `company_detail` DISABLE KEYS */;
INSERT INTO `company_detail` VALUES ('2018-07-26 20:37:53','2018-07-26 20:37:53',1,'nokia','www.nokia.com','nokia','connecting people','mobile phone company',NULL,NULL,NULL,NULL,2,NULL,NULL),('2018-07-27 22:43:53','2018-07-27 22:43:53',2,'i/image/M00/8A/62/CgqKkVh1n0eACORfAAAQPSvw5sM235.jpg','https://shiyanlou.com','北京',NULL,NULL,NULL,NULL,NULL,NULL,8,'移动互联网,硬件','C轮'),('2018-07-27 22:43:53','2018-07-27 22:43:53',3,'i/image2/M00/2A/33/CgotOVooq-OAKqXDAAAsWtz2brk407.png','https://shiyanlou.com','杭州',NULL,NULL,NULL,NULL,NULL,NULL,9,'硬件,其他','A轮'),('2018-07-27 22:43:53','2018-07-27 22:43:53',4,'i/image/M00/3A/49/CgqKkVdo9jiATR0rAAC64D1lxOs791.png','https://shiyanlou.com','上海',NULL,NULL,NULL,NULL,NULL,NULL,10,'移动互联网','C轮'),('2018-07-27 22:43:53','2018-07-27 22:43:53',5,'image1/M00/0F/B8/CgYXBlT9dyqAftjKAABei8DK6ZY292.png','https://shiyanlou.com','上海',NULL,NULL,NULL,NULL,NULL,NULL,11,'移动互联网','B轮'),('2018-07-27 22:43:53','2018-07-27 22:43:53',6,'i/image/M00/7B/73/CgqKkVhCuE6AMhXaAAAc4KLBL5k821.png','https://shiyanlou.com','北京',NULL,NULL,NULL,NULL,NULL,NULL,12,'移动互联网,社交网络','B轮'),('2018-07-27 22:43:53','2018-07-27 22:43:53',7,'i/image3/M00/44/3A/CgpOIFq4wJyAbtGoAAAlq5bQ1CU353.jpg','https://shiyanlou.com','深圳',NULL,NULL,NULL,NULL,NULL,NULL,14,'生活服务 ,硬件','B轮'),('2018-07-27 22:43:53','2018-07-27 22:43:53',8,'i/image3/M00/1E/FD/CgpOIFqQ0d-AQNuEAAArjL8TaoI894.png','https://shiyanlou.com','杭州',NULL,NULL,NULL,NULL,NULL,NULL,15,'企业服务','B轮'),('2018-07-27 22:43:53','2018-07-27 22:43:53',9,'i/image/M00/40/D2/CgqKkVd7aL2AEt0LAAALTXrSAjQ159.jpg','https://shiyanlou.com','上海',NULL,NULL,NULL,NULL,NULL,NULL,16,'数据服务,文化娱乐','C轮'),('2018-07-27 22:43:53','2018-07-27 22:43:53',10,'i/image/M00/46/CE/CgqKkVeNuE-AMgmGAACJzPxVN30374.jpg','https://shiyanlou.com','深圳',NULL,NULL,NULL,NULL,NULL,NULL,17,'企业服务,医疗健康','B轮'),('2018-07-27 22:43:53','2018-07-27 22:43:53',11,'i/image/M00/86/CD/Cgp3O1hlyeyAPUVbAAAmN7c2_rw315.png','https://shiyanlou.com','武汉',NULL,NULL,NULL,NULL,NULL,NULL,19,'信息安全,数据服务','B轮'),('2018-07-27 22:43:53','2018-07-27 22:43:53',12,'i/image3/M00/33/B0/CgpOIFqmH5iAERXHAAATykToQK4965.jpg','https://shiyanlou.com','北京',NULL,NULL,NULL,NULL,NULL,NULL,21,'旅游','B轮'),('2018-07-27 22:43:53','2018-07-27 22:43:53',13,'i/image/M00/87/99/CgpFT1rVhX6AAzBZAAAYTxtEChQ976.png','https://shiyanlou.com','上海',NULL,NULL,NULL,NULL,NULL,NULL,22,'教育','B轮');
/*!40000 ALTER TABLE `company_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `response` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `job_id` (`job_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `delivery_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`) ON DELETE SET NULL,
  CONSTRAINT `delivery_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery`
--

LOCK TABLES `delivery` WRITE;
/*!40000 ALTER TABLE `delivery` DISABLE KEYS */;
/*!40000 ALTER TABLE `delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edu_experience`
--

DROP TABLE IF EXISTS `edu_experience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `edu_experience` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin_at` datetime DEFAULT NULL,
  `end_at` datetime DEFAULT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `school` varchar(32) NOT NULL,
  `specialty` varchar(32) NOT NULL,
  `degree` varchar(16) DEFAULT NULL,
  `resume_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `resume_id` (`resume_id`),
  CONSTRAINT `edu_experience_ibfk_1` FOREIGN KEY (`resume_id`) REFERENCES `resume` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edu_experience`
--

LOCK TABLES `edu_experience` WRITE;
/*!40000 ALTER TABLE `edu_experience` DISABLE KEYS */;
/*!40000 ALTER TABLE `edu_experience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(24) DEFAULT NULL,
  `salary_low` int(11) NOT NULL,
  `salary_high` int(11) NOT NULL,
  `location` varchar(24) DEFAULT NULL,
  `tags` varchar(128) DEFAULT NULL,
  `experience_requirement` varchar(32) DEFAULT NULL,
  `degree_requirement` varchar(32) DEFAULT NULL,
  `is_fulltime` tinyint(1) DEFAULT NULL,
  `is_open` tinyint(1) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `views_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`),
  CONSTRAINT `job_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
INSERT INTO `job` VALUES ('2018-07-27 22:51:33','2018-07-27 22:51:33',1,'今天工程师',4000,16000,'北京','可以,行业,也是','不限','硕士',1,1,8,0),('2018-07-27 22:51:33','2018-07-27 22:51:33',2,'其他工程师',5000,15000,'上海','日本,出现,或者','5+','本科',1,1,16,0),('2018-07-27 22:51:33','2018-07-27 22:51:33',3,'品牌工程师',3000,18000,'北京','单位,文章,设备','不限','硕士',1,1,8,0),('2018-07-27 22:57:39','2018-07-27 22:57:39',4,'一切工程师',4000,13000,'北京','由于,今年,觉得','3-5','博士',1,1,21,0),('2018-07-27 22:57:39','2018-07-27 22:57:39',5,'中心工程师',5000,9000,'杭州','当然,政府,他们','1-3','不限',1,1,9,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',6,'会员工程师',4000,12000,NULL,'联系,网上,地区','不限','本科',1,1,9,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',7,'如果工程师',7000,8000,NULL,'不会,如果,觉得','1','不限',1,1,19,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',8,'操作工程师',5000,16000,NULL,'以后,一个,法律','5+','本科',1,1,10,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',9,'表示工程师',7000,19000,NULL,'支持,应用,直接','3-5','本科',1,1,12,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',10,'不过工程师',5000,14000,NULL,'拥有,只有,搜索','3-5','硕士',1,1,21,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',11,'之后工程师',3000,13000,NULL,'这里,企业,报告','不限','硕士',1,1,14,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',12,'今天工程师',7000,12000,NULL,'实现,单位,情况','5+','硕士',1,1,21,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',13,'必须工程师',4000,18000,NULL,'地区,技术,操作','不限','硕士',1,1,11,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',14,'社区工程师',4000,15000,NULL,'以及,网络,中国','3-5','不限',1,1,19,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',15,'日本工程师',3000,12000,NULL,'不同,我们,作为','不限','不限',1,1,17,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',16,'规定工程师',6000,9000,NULL,'规定,网上,会员','1-3','本科',1,1,22,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',17,'事情工程师',5000,8000,NULL,'以下,科技,根据','3-5','博士',1,1,2,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',18,'手机工程师',5000,12000,NULL,'服务,一切,不能','5+','本科',1,1,15,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',19,'名称工程师',3000,10000,NULL,'一下,生产,首页','3-5','博士',1,1,2,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',20,'工具工程师',5000,10000,NULL,'我的,生活,技术','3-5','硕士',1,1,6,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',21,'中国工程师',6000,13000,NULL,'商品,作为,名称','1-3','博士',1,1,5,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',22,'那些工程师',6000,18000,NULL,'需要,时间,知道','1-3','博士',1,1,3,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',23,'研究工程师',4000,10000,NULL,'资源,但是,首页','5+','本科',1,1,15,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',24,'作品工程师',6000,16000,NULL,'注册,地区,能够','不限','博士',1,1,15,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',25,'发表工程师',6000,10000,NULL,'功能,名称,学习','1-3','本科',1,1,15,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',26,'特别工程师',4000,10000,NULL,'男人,也是,其中','5+','博士',1,1,6,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',27,'还是工程师',7000,15000,NULL,'那个,网上,网站','3-5','本科',1,1,3,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',28,'历史工程师',5000,13000,NULL,'参加,公司,市场','不限','不限',1,1,3,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',29,'质量工程师',5000,15000,NULL,'看到,报告,活动','3-5','本科',1,1,14,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',30,'产品工程师',3000,17000,NULL,'关系,发现,朋友','1','不限',1,1,4,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',31,'如果工程师',6000,18000,NULL,'汽车,来自,技术','1-3','不限',1,1,17,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',32,'阅读工程师',4000,19000,NULL,'主题,是一,注意','5+','本科',1,1,6,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',33,'标题工程师',7000,19000,NULL,'开始,然后,建设','5+','不限',1,1,14,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',34,'这些工程师',4000,12000,NULL,'最新,网上,点击','1','不限',1,1,8,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',35,'根据工程师',6000,15000,NULL,'表示,介绍,一切','3-5','不限',1,1,22,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',36,'标题工程师',5000,14000,NULL,'特别,感觉,业务','5+','本科',1,1,22,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',37,'如果工程师',3000,12000,NULL,'单位,责任,公司','3-5','博士',1,1,19,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',38,'点击工程师',7000,13000,NULL,'电子,运行,部分','1','本科',1,1,10,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',39,'文件工程师',3000,16000,NULL,'她的,网上,数据','5+','不限',1,1,22,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',40,'只有工程师',3000,17000,NULL,'这样,网络,表示','1-3','本科',1,1,21,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',41,'生产工程师',6000,14000,NULL,'决定,论坛,单位','1-3','博士',1,1,21,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',42,'您的工程师',3000,11000,NULL,'自己,各种,看到','1','博士',1,1,10,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',43,'国家工程师',3000,13000,NULL,'一下,任何,很多','5+','硕士',1,1,17,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',44,'电子工程师',7000,17000,NULL,'出来,所有,直接','3-5','博士',1,1,15,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',45,'完全工程师',5000,14000,NULL,'帮助,一起,商品','1-3','硕士',1,1,21,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',46,'您的工程师',6000,18000,NULL,'加入,一次,控制','3-5','硕士',1,1,9,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',47,'图片工程师',6000,14000,NULL,'关于,文件,直接','5+','博士',1,1,14,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',48,'回复工程师',4000,15000,NULL,'功能,生产,作为','5+','本科',1,1,21,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',49,'我们工程师',4000,8000,NULL,'发生,一定,影响','3-5','博士',1,1,21,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',50,'起来工程师',3000,10000,NULL,'原因,下载,我的','5+','硕士',1,1,11,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',51,'成功工程师',4000,8000,NULL,'文章,深圳,电话','1','硕士',1,1,12,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',52,'不过工程师',4000,12000,NULL,'基本,专业,工作','1-3','本科',1,1,22,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',53,'语言工程师',6000,19000,NULL,'留言,决定,类别','5+','博士',1,1,6,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',54,'国际工程师',4000,18000,NULL,'提供,一次,研究','3-5','本科',1,1,19,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',55,'程序工程师',7000,19000,NULL,'一起,可以,自己','1','硕士',1,1,10,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',56,'首页工程师',3000,17000,NULL,'今年,最后,生活','5+','不限',1,1,9,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',57,'作为工程师',6000,15000,NULL,'以下,商品,最新','1','博士',1,1,4,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',58,'一次工程师',6000,8000,NULL,'能够,决定,国内','3-5','不限',1,1,14,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',59,'选择工程师',7000,19000,NULL,'新闻,成为,问题','1','博士',1,1,6,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',60,'所以工程师',5000,13000,NULL,'电脑,质量,责任','5+','不限',1,1,16,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',61,'其中工程师',3000,10000,NULL,'发表,简介,市场','3-5','本科',1,1,21,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',62,'法律工程师',3000,11000,NULL,'责任,处理,技术','5+','本科',1,1,22,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',63,'国内工程师',3000,15000,NULL,'出来,无法,图片','1-3','不限',1,1,22,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',64,'这些工程师',7000,8000,NULL,'认为,法律,活动','不限','不限',1,1,9,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',65,'发展工程师',3000,16000,NULL,'准备,完全,控制','1-3','本科',1,1,15,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',66,'对于工程师',6000,16000,NULL,'程序,是一,次数','1','本科',1,1,16,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',67,'上海工程师',3000,15000,NULL,'开发,完成,投资','1','硕士',1,1,8,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',68,'部门工程师',7000,12000,NULL,'法律,地方,在线','1-3','本科',1,1,16,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',69,'最新工程师',7000,17000,NULL,'原因,他的,很多','3-5','博士',1,1,10,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',70,'关系工程师',6000,15000,NULL,'还有,国际,回复','不限','本科',1,1,22,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',71,'销售工程师',7000,9000,NULL,'到了,记者,怎么','1-3','不限',1,1,19,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',72,'这个工程师',3000,17000,NULL,'继续,男人,地址','3-5','本科',1,1,21,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',73,'当然工程师',5000,10000,NULL,'专业,项目,经营','1-3','不限',1,1,6,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',74,'教育工程师',3000,10000,NULL,'问题,点击,自己','1-3','博士',1,1,11,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',75,'中文工程师',5000,15000,NULL,'可是,登录,北京','1-3','博士',1,1,8,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',76,'最大工程师',3000,17000,NULL,'软件,这个,下载','1-3','本科',1,1,12,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',77,'那些工程师',6000,12000,NULL,'主要,只是,下载','不限','博士',1,1,5,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',78,'能力工程师',6000,8000,NULL,'自己,也是,不要','1','本科',1,1,21,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',79,'不同工程师',5000,10000,NULL,'所以,空间,不要','3-5','不限',1,1,4,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',80,'拥有工程师',5000,13000,NULL,'作者,生产,相关','1-3','本科',1,1,21,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',81,'标题工程师',3000,18000,NULL,'没有,空间,来源','5+','本科',1,1,3,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',82,'有限工程师',3000,13000,NULL,'特别,数据,部门','1-3','不限',1,1,16,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',83,'她的工程师',6000,18000,NULL,'主要,以下,因为','1','本科',1,1,12,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',84,'我们工程师',5000,11000,NULL,'进行,设备,结果','1','不限',1,1,4,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',85,'音乐工程师',5000,14000,NULL,'程序,公司,那么','1-3','本科',1,1,14,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',86,'详细工程师',4000,15000,NULL,'活动,语言,关系','不限','本科',1,1,22,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',87,'地区工程师',5000,14000,NULL,'感觉,你的,实现','1-3','硕士',1,1,14,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',88,'自己工程师',7000,9000,NULL,'历史,商品,作者','1-3','硕士',1,1,9,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',89,'经济工程师',4000,9000,NULL,'浏览,服务,积分','5+','博士',1,1,21,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',90,'实现工程师',4000,15000,NULL,'最后,全部,当前','不限','本科',1,1,9,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',91,'部门工程师',5000,18000,NULL,'一起,但是,电话','1','硕士',1,1,6,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',92,'国内工程师',5000,10000,NULL,'地址,个人,准备','1-3','博士',1,1,16,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',93,'以上工程师',7000,9000,NULL,'部门,说明,是否','3-5','硕士',1,1,10,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',94,'因此工程师',6000,13000,NULL,'一次,怎么,阅读','不限','博士',1,1,11,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',95,'那个工程师',3000,15000,NULL,'得到,资料,进行','1','硕士',1,1,19,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',96,'怎么工程师',4000,19000,NULL,'同时,价格,会员','5+','博士',1,1,17,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',97,'城市工程师',4000,8000,NULL,'影响,建设,对于','3-5','本科',1,1,6,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',98,'拥有工程师',3000,13000,NULL,'大家,其实,最后','5+','博士',1,1,2,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',99,'分析工程师',3000,16000,NULL,'位置,数据,工具','1-3','博士',1,1,4,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',100,'标题工程师',7000,14000,NULL,'部分,目前,一下','5+','博士',1,1,5,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',101,'生活工程师',5000,19000,NULL,'发布,怎么,项目','3-5','硕士',1,1,19,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',102,'开始工程师',5000,15000,NULL,'网上,正在,企业','不限','博士',1,1,16,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',103,'项目工程师',3000,15000,NULL,'精华,积分,以及','1','本科',1,1,11,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',104,'点击工程师',6000,16000,NULL,'方式,由于,今年','5+','硕士',1,1,3,0),('2018-07-27 23:01:26','2018-07-27 23:01:26',105,'为什工程师',6000,17000,NULL,'一点,图片,大家','不限','博士',1,1,9,0);
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_experience`
--

DROP TABLE IF EXISTS `job_experience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_experience` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin_at` datetime DEFAULT NULL,
  `end_at` datetime DEFAULT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `company` varchar(32) NOT NULL,
  `city` varchar(32) NOT NULL,
  `resume_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `resume_id` (`resume_id`),
  CONSTRAINT `job_experience_ibfk_1` FOREIGN KEY (`resume_id`) REFERENCES `resume` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_experience`
--

LOCK TABLES `job_experience` WRITE;
/*!40000 ALTER TABLE `job_experience` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_experience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preject_experience`
--

DROP TABLE IF EXISTS `preject_experience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preject_experience` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin_at` datetime DEFAULT NULL,
  `end_at` datetime DEFAULT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `name` varchar(32) NOT NULL,
  `role` varchar(32) DEFAULT NULL,
  `technologys` varchar(64) DEFAULT NULL,
  `resume_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `resume_id` (`resume_id`),
  CONSTRAINT `preject_experience_ibfk_1` FOREIGN KEY (`resume_id`) REFERENCES `resume` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preject_experience`
--

LOCK TABLES `preject_experience` WRITE;
/*!40000 ALTER TABLE `preject_experience` DISABLE KEYS */;
/*!40000 ALTER TABLE `preject_experience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resume`
--

DROP TABLE IF EXISTS `resume`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resume` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `resume_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resume`
--

LOCK TABLES `resume` WRITE;
/*!40000 ALTER TABLE `resume` DISABLE KEYS */;
/*!40000 ALTER TABLE `resume` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `email` varchar(64) NOT NULL,
  `password` varchar(256) NOT NULL,
  `real_name` varchar(20) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `work_years` smallint(6) DEFAULT NULL,
  `role` smallint(6) DEFAULT NULL,
  `resume_url` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_user_email` (`email`),
  UNIQUE KEY `ix_user_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('2018-07-26 20:24:18','2018-07-26 20:27:48',1,'fywest','fywest2109@hotmail.com','pbkdf2:sha256:50000$C0L5Iwcx$e189c2f600cff86565e2863af19f70c996731442e520d60460361553ba105cdc','lee','13501234088',6,10,'tampere'),('2018-07-26 20:25:18','2018-07-26 20:25:18',2,'nokia','nokia@nokia.com','pbkdf2:sha256:50000$cBGvxfek$65ab7401437452c6ba4303148445c2099180070837dc06f86ae3c04c7e7d3acf',NULL,NULL,NULL,20,NULL),('2018-07-27 22:28:53','2018-07-27 22:28:53',3,'在行','ozhou@fu.cn','pbkdf2:sha256:50000$g3Ylyq6F$6855660e8d466907d547f30db6f59eb33012ae6a1c47fdd00ee6475588392450',NULL,NULL,NULL,20,NULL),('2018-07-27 22:35:15','2018-07-27 22:35:15',4,'邻动（北京）技术有限公司','huchao@han.cn','pbkdf2:sha256:50000$AuBv1kRG$5345372b3c0f94072b88ebfe5f88288dfc70824a9d9d092e1d635a928bb4d6b1',NULL,NULL,NULL,20,NULL),('2018-07-27 22:39:08','2018-07-27 22:39:08',5,'咕咚','nlei@gmail.com','pbkdf2:sha256:50000$EybQF28D$ab82f4a97dc267dcc5e6d03a3183ddd4229498b57818e9b4a95c52647af53c9f',NULL,NULL,NULL,20,NULL),('2018-07-27 22:40:40','2018-07-27 22:40:40',6,'亲宝宝','qiang29@yahoo.com','pbkdf2:sha256:50000$KXrWJvPM$16391395cefdad92bb1c5ad003d3273183ab944b8eaa6ecf8ac0041de8495655',NULL,NULL,NULL,20,NULL),('2018-07-27 22:43:53','2018-07-27 22:43:53',8,'Face++','pshen@yahoo.com','pbkdf2:sha256:50000$G17ErfE3$e7e4455200cc43772e5d0050aeb9d994919e7637268b850a93fdb63047eb42f2',NULL,NULL,NULL,20,NULL),('2018-07-27 22:43:53','2018-07-27 22:43:53',9,'若联科技','yaoxiuying@gmail.com','pbkdf2:sha256:50000$nURMIvLm$ddcbeedff55eb79e755d529aa626204dec82815d59771a9dca40608c10928ba0',NULL,NULL,NULL,20,NULL),('2018-07-27 22:43:53','2018-07-27 22:43:53',10,'车轮','xqin@chen.org','pbkdf2:sha256:50000$09A2K1Lf$432632bfa8d6aacd858859d6011f76e2be5a15421ba8a72ca23032b081557205',NULL,NULL,NULL,20,NULL),('2018-07-27 22:43:53','2018-07-27 22:43:53',11,'oTMS','juanhou@gmail.com','pbkdf2:sha256:50000$IabtCoDC$107735ee77c03610c29b995d003f9643a57de4e85e263e43cb0a3fcd434f9e06',NULL,NULL,NULL,20,NULL),('2018-07-27 22:43:53','2018-07-27 22:43:53',12,'玩吧','liwu@tian.com','pbkdf2:sha256:50000$uPEL5B7z$899e517f6b2c00e5acef51803933e20655c5f55bc5b5e95eca235452487963b8',NULL,NULL,NULL,20,NULL),('2018-07-27 22:43:53','2018-07-27 22:43:53',14,'EMIE亿觅','sjia@yang.com','pbkdf2:sha256:50000$Zzj55D5E$e5e85018c0ba5509ca45735cb05a7b6c7be2175e9d37bd5b6ca7516a92a76b53',NULL,NULL,NULL,20,NULL),('2018-07-27 22:43:53','2018-07-27 22:43:53',15,'云霁科技','xia84@hotmail.com','pbkdf2:sha256:50000$1aS7TOr4$a767f774c91d0471e54198286f4799dcd3908e2cb0e3a756422c86ba8829bb16',NULL,NULL,NULL,20,NULL),('2018-07-27 22:43:53','2018-07-27 22:43:53',16,'极链科技Video++','hzhou@gmail.com','pbkdf2:sha256:50000$SMAHoeWu$66b20c6ced5d03a0dd2f949ab5edc506d5ac252a4383c3e61c211cca23c08567',NULL,NULL,NULL,20,NULL),('2018-07-27 22:43:53','2018-07-27 22:43:53',17,'晶泰科技','jinna@yahoo.com','pbkdf2:sha256:50000$mFWLFBt8$fc17c175a3950f03e12fddab114a0259dfba4a152b3440750c014cb1c008798d',NULL,NULL,NULL,20,NULL),('2018-07-27 22:43:53','2018-07-27 22:43:53',19,'极验','gangzhou@qian.net','pbkdf2:sha256:50000$konbukQh$aeef15ac2311781f0c6b1f9ae9b97a0256af0baa650818a83c68bf8e822440a8',NULL,NULL,NULL,20,NULL),('2018-07-27 22:43:53','2018-07-27 22:43:53',21,'妙计旅行','kduan@xiao.cn','pbkdf2:sha256:50000$r7lxaqG4$507b37446a146022fe58c6b257f46b98e477ebae88e6729bb911dee198ffe486',NULL,NULL,NULL,20,NULL),('2018-07-27 22:43:53','2018-07-27 22:43:53',22,'CareerFrog职业蛙','yong47@gmail.com','pbkdf2:sha256:50000$Oqm1wb7U$660db64805bcaf47e948575c5cdfc5b36ee13d21ef586e13fa5967657502db9a',NULL,NULL,NULL,20,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_job`
--

DROP TABLE IF EXISTS `user_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_job` (
  `user_id` int(11) DEFAULT NULL,
  `job_id` int(11) DEFAULT NULL,
  KEY `job_id` (`job_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_job_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_job_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_job`
--

LOCK TABLES `user_job` WRITE;
/*!40000 ALTER TABLE `user_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_job` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-28  2:11:30
