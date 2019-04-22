# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.7.23)
# Database: vidyouthink
# Generation Time: 2019-04-22 23:57:52 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table CAPTION
# ------------------------------------------------------------

DROP TABLE IF EXISTS `CAPTION`;

CREATE TABLE `CAPTION` (
  `ID` varchar(50) CHARACTER SET utf8 NOT NULL,
  `VIDEO_ID` varchar(50) CHARACTER SET utf8 NOT NULL,
  `CAPTION` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `INSERT_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP,
  `INSERT_USER_ID` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `UPDATE_TIMESTAMP` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `SEARCH_QUERY_ID` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  PRIMARY KEY (`ID`,`VIDEO_ID`),
  UNIQUE KEY `ID` (`ID`),
  UNIQUE KEY `VIDEO_ID` (`VIDEO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

LOCK TABLES `CAPTION` WRITE;
/*!40000 ALTER TABLE `CAPTION` DISABLE KEYS */;

INSERT INTO `CAPTION` (`ID`, `VIDEO_ID`, `CAPTION`, `INSERT_TIMESTAMP`, `INSERT_USER_ID`, `UPDATE_TIMESTAMP`, `SEARCH_QUERY_ID`)
VALUES
	('vyt5cbdece88ff026.53936647','DrAMsCKv_GM','1\n00:00:00,030 --> 00:00:08,280\nsorry conga Masuka car gel seen in play\n\n2\n00:00:03,120 --> 00:00:09,900\nhouse gets painfully real for fans the\n\n3\n00:00:08,280 --> 00:00:12,360\npast six months have been a roller\n\n4\n00:00:09,900 --> 00:00:14,969\ncoaster of emotions for a long time fans\n\n5\n00:00:12,360 --> 00:00:16,550\nof car gel whose on-screen reunions\n\n6\n00:00:14,969 --> 00:00:18,660\nburned hopes of a real-life\n\n7\n00:00:16,550 --> 00:00:21,029\nreconciliation until their friendship\n\n8\n00:00:18,660 --> 00:00:27,539\nwas supposedly ruined by negativity and\n\n9\n00:00:21,029 --> 00:00:29,910\nunmet expectations on Monday former\n\n10\n00:00:27,539 --> 00:00:32,279\nsweethearts Angelica Panganiban and\n\n11\n00:00:29,910 --> 00:00:34,559\nCarlo Aquino parted ways all over again\n\n12\n00:00:32,279 --> 00:00:36,600\nat least on screen with their respective\n\n13\n00:00:34,559 --> 00:00:38,489\ncharacters in the daytime series\n\n14\n00:00:36,600 --> 00:00:40,890\nPlayhouse saying goodbye to each other\n\n15\n00:00:38,489 --> 00:00:47,000\nand exchanging apologies after a failed\n\n16\n00:00:40,890 --> 00:00:50,539\nromance in the February 25th episode\n\n17\n00:00:47,000 --> 00:00:53,640\nHarold Aquino said sorry to Patty\n\n18\n00:00:50,539 --> 00:00:55,739\nPanganiban for only belatedly informing\n\n19\n00:00:53,640 --> 00:00:58,140\nher of a fellowship he is taking up in\n\n20\n00:00:55,739 --> 00:01:00,000\nSingapore for three years prompting the\n\n21\n00:00:58,140 --> 00:01:06,570\nlatter to ask whether the decision was\n\n22\n00:01:00,000 --> 00:01:08,880\nthe result of their falling-out Gus took\n\n23\n00:01:06,570 --> 00:01:14,340\non malam and mon august unga\'s took oh\n\n24\n00:01:08,880 --> 00:01:16,439\nnot IM young tail patty told Harold /\n\n25\n00:01:14,340 --> 00:01:18,710\nAugust hooker real cos I\'m aging fair\n\n26\n00:01:16,439 --> 00:01:18,710\nCEO\n\n27\n00:01:19,570 --> 00:01:25,400\nhindi naman pew Eden sapling young Pegg\n\n28\n00:01:23,000 --> 00:01:30,500\nmama hana i the big a co co CAHSEE\n\n29\n00:01:25,400 --> 00:01:31,700\nminson young support cooling sorry\n\n30\n00:01:30,500 --> 00:01:37,729\ncompany Geetha\n\n31\n00:01:31,700 --> 00:01:42,000\nsorry column Asuka she went on a Corinne\n\n32\n00:01:37,729 --> 00:01:45,870\nnent a Corinne Amasa\n\n33\n00:01:42,000 --> 00:01:56,550\na masa akan magma bago young/nasa Paso\n\n34\n00:01:45,870 --> 00:01:57,540\nCo Peru Hindi PHA a baka Hanina although\n\n35\n00:01:56,550 --> 00:02:03,150\nvisibly hurt\n\n36\n00:01:57,540 --> 00:02:05,070\nHarold conceded he said he has long\n\n37\n00:02:03,150 --> 00:02:10,340\nknown he could not possibly replace\n\n38\n00:02:05,070 --> 00:02:10,340\nMarlon sanyo mundo in Patty\'s heart I\n\n39\n00:02:10,370 --> 00:02:16,650\nknow you tried Farouk ahead and in God\n\n40\n00:02:13,650 --> 00:02:20,030\nmo oka had a nun Phillip Corinne we both\n\n41\n00:02:16,650 --> 00:02:20,030\nknow that I cannot be that guy\n\n42\n00:02:20,270 --> 00:02:29,130\nit will always be him\n\n43\n00:02:22,440 --> 00:02:31,170\nhe said the on screen parting at least\n\n44\n00:02:29,130 --> 00:02:33,630\nto some car gel fans who shared online\n\n45\n00:02:31,170 --> 00:02:35,940\ntheir reactions felt painfully familiar\n\n46\n00:02:33,630 --> 00:02:41,700\nfollowing the recent developments in the\n\n47\n00:02:35,940 --> 00:02:44,250\npersonal lives of their idols in early\n\n48\n00:02:41,700 --> 00:02:46,050\nJanuary Pangani been courted headlines\n\n49\n00:02:44,250 --> 00:02:48,480\nwhen she declared her intention to\n\n50\n00:02:46,050 --> 00:02:50,610\ndistance herself from aquino saying\n\n51\n00:02:48,480 --> 00:02:55,170\nnegativity from fans affected their\n\n52\n00:02:50,610 --> 00:02:56,910\nrelationship the rent appeared to have\n\n53\n00:02:55,170 --> 00:02:59,040\nbeen triggered by one follower who\n\n54\n00:02:56,910 --> 00:03:01,170\ncensured Pangani been over her cryptic\n\n55\n00:02:59,040 --> 00:03:04,670\nposts about love that supposedly made\n\n56\n00:03:01,170 --> 00:03:04,670\nAquino vulnerable to judgment\n\n57\n00:03:05,250 --> 00:03:13,680\na week later the actress spoke of being\n\n58\n00:03:08,670 --> 00:03:15,630\nhurt after having loved again she went\n\n59\n00:03:13,680 --> 00:03:18,000\non to ask followers on Twitter to help\n\n60\n00:03:15,630 --> 00:03:20,580\nher move on from the past boyfriend who\n\n61\n00:03:18,000 --> 00:03:25,500\nalso happens to be a play house co-star\n\n62\n00:03:20,580 --> 00:03:26,010\nboth descriptions that fit Akeno at the\n\n63\n00:03:25,500 --> 00:03:28,500\ntime\n\n64\n00:03:26,010 --> 00:03:31,140\nrumors of Akeno dating another woman had\n\n65\n00:03:28,500 --> 00:03:32,970\njust surfaced following viral photos of\n\n66\n00:03:31,140 --> 00:03:33,510\nhim apparently on vacation with the\n\n67\n00:03:32,970 --> 00:03:46,160\nmodel\n\n68\n00:03:33,510 --> 00:03:46,160\n[Music]\n\n','2019-04-23 00:33:27','vyt5cbdc0ef82d0d9.01332472','2019-04-23 00:33:44','vyt5cbdecd563ac33.40582810');

/*!40000 ALTER TABLE `CAPTION` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table COMMENT
# ------------------------------------------------------------

DROP TABLE IF EXISTS `COMMENT`;

CREATE TABLE `COMMENT` (
  `ID` varchar(50) CHARACTER SET utf8 NOT NULL,
  `VIDEO_ID` varchar(50) CHARACTER SET utf8 NOT NULL,
  `NAME` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `COMMENT` blob,
  `INSERT_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `INSERT_USER_ID` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `YT_COMMENT_ID` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `SEARCH_QUERY_ID` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  PRIMARY KEY (`ID`,`VIDEO_ID`),
  UNIQUE KEY `ID` (`ID`),
  UNIQUE KEY `YT_COMMENT_ID` (`YT_COMMENT_ID`),
  KEY `VIDEO_ID` (`VIDEO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;



# Dump of table RATING
# ------------------------------------------------------------

DROP TABLE IF EXISTS `RATING`;

CREATE TABLE `RATING` (
  `ID` varchar(50) CHARACTER SET utf8 NOT NULL,
  `VIDEO_ID` varchar(50) CHARACTER SET utf8 NOT NULL,
  `RATING` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `OVERALL_VIEW` int(50) unsigned NOT NULL DEFAULT '0',
  `LIKES` int(50) unsigned NOT NULL DEFAULT '0',
  `DISLIKES` int(50) unsigned NOT NULL DEFAULT '0',
  `INSERT_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `INSERT_USER_ID` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `UPDATE_TIMESTAMP` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `SEARCH_QUERY_ID` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  PRIMARY KEY (`ID`,`VIDEO_ID`),
  UNIQUE KEY `ID` (`ID`),
  UNIQUE KEY `VIDEO_ID` (`VIDEO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

LOCK TABLES `RATING` WRITE;
/*!40000 ALTER TABLE `RATING` DISABLE KEYS */;

INSERT INTO `RATING` (`ID`, `VIDEO_ID`, `RATING`, `OVERALL_VIEW`, `LIKES`, `DISLIKES`, `INSERT_TIMESTAMP`, `INSERT_USER_ID`, `UPDATE_TIMESTAMP`, `SEARCH_QUERY_ID`)
VALUES
	('vyt5cbdeb34afd419.18488086','_sPqIXqzJNg','10029',4179756,10203,174,'2019-04-23 00:26:28','vyt5cbdc0ef82d0d9.01332472',NULL,'vyt5cbdeb344d51d3.98482705'),
	('vyt5cbdeb35217ed8.13519915','CaH799aJhKE','654',280953,710,56,'2019-04-23 00:26:29','vyt5cbdc0ef82d0d9.01332472',NULL,'vyt5cbdeb344d51d3.98482705'),
	('vyt5cbdeb35e73f27.62921335','YXgn1i8O-gM','1549',182609,1641,92,'2019-04-23 00:26:29','vyt5cbdc0ef82d0d9.01332472',NULL,'vyt5cbdeb344d51d3.98482705'),
	('vyt5cbdeb3665aef1.89629225','bdsL4HNJn24','148',20453,156,8,'2019-04-23 00:26:30','vyt5cbdc0ef82d0d9.01332472',NULL,'vyt5cbdeb344d51d3.98482705'),
	('vyt5cbdeb36c9cbb7.01913240','REvVvr77n7Y','122',13504,124,2,'2019-04-23 00:26:30','vyt5cbdc0ef82d0d9.01332472',NULL,'vyt5cbdeb344d51d3.98482705'),
	('vyt5cbdeb374da717.09557225','Aq2QMXdfUHA','290',11537,295,5,'2019-04-23 00:26:31','vyt5cbdc0ef82d0d9.01332472',NULL,'vyt5cbdeb344d51d3.98482705'),
	('vyt5cbdeb37b6aac7.49149141','qs1Rt9gKcQo','14',4937,17,3,'2019-04-23 00:26:31','vyt5cbdc0ef82d0d9.01332472',NULL,'vyt5cbdeb344d51d3.98482705'),
	('vyt5cbdeb383f1917.91540614','sQdzyzKYnjM','18',3676,20,2,'2019-04-23 00:26:32','vyt5cbdc0ef82d0d9.01332472',NULL,'vyt5cbdeb344d51d3.98482705'),
	('vyt5cbdeb38a351e0.12029797','DZU7dyQnnw4','12',3436,14,2,'2019-04-23 00:26:32','vyt5cbdc0ef82d0d9.01332472',NULL,'vyt5cbdeb344d51d3.98482705'),
	('vyt5cbdeb392cae68.71264702','LNd3n7nSTkI','11',1595,11,0,'2019-04-23 00:26:33','vyt5cbdc0ef82d0d9.01332472',NULL,'vyt5cbdeb344d51d3.98482705'),
	('vyt5cbdeb39a973e4.03096961','lYAXzbn67v0','20',1475,20,0,'2019-04-23 00:26:33','vyt5cbdc0ef82d0d9.01332472',NULL,'vyt5cbdeb344d51d3.98482705'),
	('vyt5cbdeb3a187818.24409079','T7TZLGD88-c','14',1302,14,0,'2019-04-23 00:26:34','vyt5cbdc0ef82d0d9.01332472',NULL,'vyt5cbdeb344d51d3.98482705'),
	('vyt5cbdeb3a7d3ef9.78758269','8Wy3SSfFO78','6',489,6,0,'2019-04-23 00:26:34','vyt5cbdc0ef82d0d9.01332472',NULL,'vyt5cbdeb344d51d3.98482705'),
	('vyt5cbdeb3b06b146.59401183','1rrRL5TC6DY','12',328,12,0,'2019-04-23 00:26:35','vyt5cbdc0ef82d0d9.01332472',NULL,'vyt5cbdeb344d51d3.98482705'),
	('vyt5cbdeb3b831dc8.01137457','Mms0AGjLkHM','1',257,1,0,'2019-04-23 00:26:35','vyt5cbdc0ef82d0d9.01332472',NULL,'vyt5cbdeb344d51d3.98482705'),
	('vyt5cbdeb3be922b5.81919445','1x5ybLgQo0U','1',237,1,0,'2019-04-23 00:26:35','vyt5cbdc0ef82d0d9.01332472',NULL,'vyt5cbdeb344d51d3.98482705'),
	('vyt5cbdeb3c700781.04723558','33z4QgpWRag','9',171,9,0,'2019-04-23 00:26:36','vyt5cbdc0ef82d0d9.01332472',NULL,'vyt5cbdeb344d51d3.98482705'),
	('vyt5cbdeb3d0fdec6.38240902','G2VPG--gU10','1',161,1,0,'2019-04-23 00:26:37','vyt5cbdc0ef82d0d9.01332472',NULL,'vyt5cbdeb344d51d3.98482705'),
	('vyt5cbdeb3d70e950.52398131','A4nt0oeqE3c','0',118,1,1,'2019-04-23 00:26:37','vyt5cbdc0ef82d0d9.01332472',NULL,'vyt5cbdeb344d51d3.98482705'),
	('vyt5cbdeb3dd20df1.80611987','ciZYA0iVRsU','0',124,1,1,'2019-04-23 00:26:37','vyt5cbdc0ef82d0d9.01332472',NULL,'vyt5cbdeb344d51d3.98482705'),
	('vyt5cbdeb3e4973f6.17687624','rabRsvRERk0','7',101,8,1,'2019-04-23 00:26:38','vyt5cbdc0ef82d0d9.01332472',NULL,'vyt5cbdeb344d51d3.98482705'),
	('vyt5cbdeb3eada565.54881846','ipmFsyUXX5I','6',157,6,0,'2019-04-23 00:26:38','vyt5cbdc0ef82d0d9.01332472',NULL,'vyt5cbdeb344d51d3.98482705'),
	('vyt5cbdeb3f1df005.11521087','9Mqgv3amcOQ','0',68,0,0,'2019-04-23 00:26:39','vyt5cbdc0ef82d0d9.01332472',NULL,'vyt5cbdeb344d51d3.98482705'),
	('vyt5cbdeb3f829ae0.84589613','aE4CpTBsRYs','4',74,4,0,'2019-04-23 00:26:39','vyt5cbdc0ef82d0d9.01332472',NULL,'vyt5cbdeb344d51d3.98482705'),
	('vyt5cbdeb3fea87e3.26283661','Mpis9UWQjSA','1',46,1,0,'2019-04-23 00:26:39','vyt5cbdc0ef82d0d9.01332472',NULL,'vyt5cbdeb344d51d3.98482705'),
	('vyt5cbdecd5ed5399.51188865','DrAMsCKv_GM','0',105,0,0,'2019-04-23 00:33:25','vyt5cbdc0ef82d0d9.01332472',NULL,'vyt5cbdecd563ac33.40582810');

/*!40000 ALTER TABLE `RATING` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table SEARCH_QUERY
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SEARCH_QUERY`;

CREATE TABLE `SEARCH_QUERY` (
  `ID` varchar(50) CHARACTER SET utf8 NOT NULL,
  `USER_ID` varchar(50) CHARACTER SET utf8 NOT NULL,
  `QUERY` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `CREATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP,
  `ACTIVE_FLAG` int(11) NOT NULL DEFAULT '1',
  `UPDATE_TIMESTAMP` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`,`USER_ID`),
  UNIQUE KEY `ID` (`ID`),
  KEY `USER_ID` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

LOCK TABLES `SEARCH_QUERY` WRITE;
/*!40000 ALTER TABLE `SEARCH_QUERY` DISABLE KEYS */;

INSERT INTO `SEARCH_QUERY` (`ID`, `USER_ID`, `QUERY`, `CREATE_TIMESTAMP`, `ACTIVE_FLAG`, `UPDATE_TIMESTAMP`)
VALUES
	('vyt5cbdeb344d51d3.98482705','vyt5cbdc0ef82d0d9.01332472','sharon cuneta','2019-04-23 00:26:28',1,NULL),
	('vyt5cbdecd563ac33.40582810','vyt5cbdc0ef82d0d9.01332472','cargel','2019-04-23 00:33:25',1,NULL);

/*!40000 ALTER TABLE `SEARCH_QUERY` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table SEARCH_RESULT
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SEARCH_RESULT`;

CREATE TABLE `SEARCH_RESULT` (
  `ID` varchar(50) CHARACTER SET utf8 NOT NULL,
  `SEARCH_QUERY_ID` varchar(50) CHARACTER SET utf8 NOT NULL,
  `VIDEO_ID` varchar(50) CHARACTER SET utf8 NOT NULL,
  `INSERT_USER_ID` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  PRIMARY KEY (`ID`,`SEARCH_QUERY_ID`,`VIDEO_ID`),
  UNIQUE KEY `ID` (`ID`),
  UNIQUE KEY `VIDEO_ID` (`VIDEO_ID`),
  KEY `SEARCH_QUERY` (`SEARCH_QUERY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

LOCK TABLES `SEARCH_RESULT` WRITE;
/*!40000 ALTER TABLE `SEARCH_RESULT` DISABLE KEYS */;

INSERT INTO `SEARCH_RESULT` (`ID`, `SEARCH_QUERY_ID`, `VIDEO_ID`, `INSERT_USER_ID`)
VALUES
	('vyt5cbdeb34b0f285.27853006','vyt5cbdeb344d51d3.98482705','vyt5cbdeb34acd129.88883795','vyt5cbdc0ef82d0d9.01332472'),
	('vyt5cbdeb35237912.60406233','vyt5cbdeb344d51d3.98482705','vyt5cbdeb351bf7b5.88884922','vyt5cbdc0ef82d0d9.01332472'),
	('vyt5cbdeb35e770b2.38537600','vyt5cbdeb344d51d3.98482705','vyt5cbdeb35e6c379.52092276','vyt5cbdc0ef82d0d9.01332472'),
	('vyt5cbdeb36664054.83124795','vyt5cbdeb344d51d3.98482705','vyt5cbdeb36650a19.59507884','vyt5cbdc0ef82d0d9.01332472'),
	('vyt5cbdeb36ca21a2.90825713','vyt5cbdeb344d51d3.98482705','vyt5cbdeb36c94168.10558016','vyt5cbdc0ef82d0d9.01332472'),
	('vyt5cbdeb374e1366.99503254','vyt5cbdeb344d51d3.98482705','vyt5cbdeb374cde80.64614427','vyt5cbdc0ef82d0d9.01332472'),
	('vyt5cbdeb37b70333.07181740','vyt5cbdeb344d51d3.98482705','vyt5cbdeb37b61c62.60739066','vyt5cbdc0ef82d0d9.01332472'),
	('vyt5cbdeb383f61b3.72048335','vyt5cbdeb344d51d3.98482705','vyt5cbdeb383e9a97.31362366','vyt5cbdc0ef82d0d9.01332472'),
	('vyt5cbdeb38a3a245.01934134','vyt5cbdeb344d51d3.98482705','vyt5cbdeb38a2bf23.52524512','vyt5cbdc0ef82d0d9.01332472'),
	('vyt5cbdeb392d3071.89525560','vyt5cbdeb344d51d3.98482705','vyt5cbdeb392c0231.69211005','vyt5cbdc0ef82d0d9.01332472'),
	('vyt5cbdeb39a9dc41.76372579','vyt5cbdeb344d51d3.98482705','vyt5cbdeb39a8af58.23590334','vyt5cbdc0ef82d0d9.01332472'),
	('vyt5cbdeb3a190da9.11885300','vyt5cbdeb344d51d3.98482705','vyt5cbdeb3a17cea2.48304023','vyt5cbdc0ef82d0d9.01332472'),
	('vyt5cbdeb3a7dc917.08313830','vyt5cbdeb344d51d3.98482705','vyt5cbdeb3a7c91b1.21227778','vyt5cbdc0ef82d0d9.01332472'),
	('vyt5cbdeb3b0734c5.44388849','vyt5cbdeb344d51d3.98482705','vyt5cbdeb3b05bda8.06325339','vyt5cbdc0ef82d0d9.01332472'),
	('vyt5cbdeb3b83d369.25236708','vyt5cbdeb344d51d3.98482705','vyt5cbdeb3b825760.01304472','vyt5cbdc0ef82d0d9.01332472'),
	('vyt5cbdeb3be96467.48160747','vyt5cbdeb344d51d3.98482705','vyt5cbdeb3be89861.98543082','vyt5cbdc0ef82d0d9.01332472'),
	('vyt5cbdeb3c708504.59958070','vyt5cbdeb344d51d3.98482705','vyt5cbdeb3c6f5ed1.14140809','vyt5cbdc0ef82d0d9.01332472'),
	('vyt5cbdeb3d109159.45403355','vyt5cbdeb344d51d3.98482705','vyt5cbdeb3d0ef317.48886585','vyt5cbdc0ef82d0d9.01332472'),
	('vyt5cbdeb3d716699.81970166','vyt5cbdeb344d51d3.98482705','vyt5cbdeb3d706802.28197919','vyt5cbdc0ef82d0d9.01332472'),
	('vyt5cbdeb3dd275b4.82335153','vyt5cbdeb344d51d3.98482705','vyt5cbdeb3dd197d6.99032636','vyt5cbdc0ef82d0d9.01332472'),
	('vyt5cbdeb3e49be54.14087786','vyt5cbdeb344d51d3.98482705','vyt5cbdeb3e48caf6.41404715','vyt5cbdc0ef82d0d9.01332472'),
	('vyt5cbdeb3eae5d28.53187401','vyt5cbdeb344d51d3.98482705','vyt5cbdeb3eacf842.28866422','vyt5cbdc0ef82d0d9.01332472'),
	('vyt5cbdeb3f1ebc30.18517267','vyt5cbdeb344d51d3.98482705','vyt5cbdeb3f1d3da8.19127187','vyt5cbdc0ef82d0d9.01332472'),
	('vyt5cbdeb3f8306a1.79813294','vyt5cbdeb344d51d3.98482705','vyt5cbdeb3f81f7c8.99338174','vyt5cbdc0ef82d0d9.01332472'),
	('vyt5cbdeb3feb0cd4.39992943','vyt5cbdeb344d51d3.98482705','vyt5cbdeb3fe9e0c1.21402975','vyt5cbdc0ef82d0d9.01332472'),
	('vyt5cbdecd5ee5c60.00455735','vyt5cbdecd563ac33.40582810','vyt5cbdecd5eb6591.51183813','vyt5cbdc0ef82d0d9.01332472');

/*!40000 ALTER TABLE `SEARCH_RESULT` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table SENTIMENT_RATING
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SENTIMENT_RATING`;

CREATE TABLE `SENTIMENT_RATING` (
  `ID` varchar(50) CHARACTER SET utf8 NOT NULL,
  `RATING` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `INSERT_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP,
  `INSERT_USER_ID` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `SENTIMENT_TYPE` int(11) unsigned NOT NULL,
  `VIDEO_ID` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `TYPE_ID` varchar(50) CHARACTER SET utf8 DEFAULT '',
  `SEARCH_QUERY_ID` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`),
  KEY `VIDEO_ID` (`VIDEO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

LOCK TABLES `SENTIMENT_RATING` WRITE;
/*!40000 ALTER TABLE `SENTIMENT_RATING` DISABLE KEYS */;

INSERT INTO `SENTIMENT_RATING` (`ID`, `RATING`, `INSERT_TIMESTAMP`, `INSERT_USER_ID`, `SENTIMENT_TYPE`, `VIDEO_ID`, `TYPE_ID`, `SEARCH_QUERY_ID`)
VALUES
	('vyt5cbdece599ab41.84428212','neutral','2019-04-23 00:33:41','vyt5cbdc0ef82d0d9.01332472',4,'DrAMsCKv_GM',NULL,'vyt5cbdecd563ac33.40582810'),
	('vyt5cbdece6ea5044.80555178','neutral','2019-04-23 00:33:42','vyt5cbdc0ef82d0d9.01332472',2,'DrAMsCKv_GM',NULL,'vyt5cbdecd563ac33.40582810'),
	('vyt5cbdece83ee039.20387632','neutral','2019-04-23 00:33:44','vyt5cbdc0ef82d0d9.01332472',5,'DrAMsCKv_GM',NULL,'vyt5cbdecd563ac33.40582810'),
	('vyt5cbdece83f77b3.53995613','neutral','2019-04-23 00:33:44','vyt5cbdc0ef82d0d9.01332472',1,'DrAMsCKv_GM',NULL,'vyt5cbdecd563ac33.40582810'),
	('vyt5cbdecea6a3ae4.73809118','neutral','2019-04-23 00:33:46','vyt5cbdc0ef82d0d9.01332472',4,'DrAMsCKv_GM',NULL,'vyt5cbdecd563ac33.40582810'),
	('vyt5cbdecebabcc84.13059416','neutral','2019-04-23 00:33:47','vyt5cbdc0ef82d0d9.01332472',2,'DrAMsCKv_GM',NULL,'vyt5cbdecd563ac33.40582810'),
	('vyt5cbdececcef793.05783119','neutral','2019-04-23 00:33:48','vyt5cbdc0ef82d0d9.01332472',5,'DrAMsCKv_GM',NULL,'vyt5cbdecd563ac33.40582810'),
	('vyt5cbdececcf9036.63756235','neutral','2019-04-23 00:33:48','vyt5cbdc0ef82d0d9.01332472',1,'DrAMsCKv_GM',NULL,'vyt5cbdecd563ac33.40582810');

/*!40000 ALTER TABLE `SENTIMENT_RATING` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table USER
# ------------------------------------------------------------

DROP TABLE IF EXISTS `USER`;

CREATE TABLE `USER` (
  `ID` varchar(50) CHARACTER SET utf8 NOT NULL,
  `USERNAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `EMAIL` varchar(300) CHARACTER SET utf8 NOT NULL,
  `PASSWORD` varchar(100) CHARACTER SET utf8 NOT NULL,
  `CONFIRM_CODE` varchar(100) CHARACTER SET utf8 NOT NULL,
  `CREATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_TIMESTAMP` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`,`USERNAME`),
  UNIQUE KEY `ID` (`ID`),
  UNIQUE KEY `USERNAME` (`USERNAME`),
  UNIQUE KEY `EMAIL` (`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

LOCK TABLES `USER` WRITE;
/*!40000 ALTER TABLE `USER` DISABLE KEYS */;

INSERT INTO `USER` (`ID`, `USERNAME`, `EMAIL`, `PASSWORD`, `CONFIRM_CODE`, `CREATE_TIMESTAMP`, `UPDATE_TIMESTAMP`)
VALUES
	('vyt5c93bdfc8caf15.08753899','Administrator','administrator.vidyouthink@godiane.com','70682896e24287b0476eff2a14c148f0','c4a5336a7465d3de0347a611cfd8fc44','2019-03-22 00:38:20','2019-04-02 00:42:50'),
	('vyt5ca396642b0943.20316359','dianerz','dianerz@godiane.com','70682896e24287b0476eff2a14c148f0','49fa5968b2693a6a6285c11791f7c6ac','2019-04-03 01:05:40',NULL),
	('vyt5ca396bdafbb89.79545145','dianee','dianee@godiane.com','70682896e24287b0476eff2a14c148f0','403efa7c1085e84bf8817058c24ee19d','2019-04-03 01:07:09',NULL),
	('vyt5ca3976648de33.22717084','dianerze','dianerze@godiane.com','70682896e24287b0476eff2a14c148f0','14da0ad693bfdb7d3f429ffdb8e4ddcc','2019-04-03 01:09:58',NULL),
	('vyt5ca397ecbdf4d8.63521457','diners','diners@godiane.com','70682896e24287b0476eff2a14c148f0','cb5382eb5488ffc5d3268154bf1ae305','2019-04-03 01:12:12',NULL),
	('vyt5ca398580ca112.63822249','dinersi','dinersi@godiane.com','70682896e24287b0476eff2a14c148f0','e793584f6691ca8b32addd1952e6fa8c','2019-04-03 01:14:00',NULL),
	('vyt5ca3988d1fbfa4.86124242','dinerss','dinerss@godiane.com','70682896e24287b0476eff2a14c148f0','68571bffca90e233c9901f2a6d9a5dec','2019-04-03 01:14:53',NULL),
	('vyt5cbdbaa6cb3895.04585924','user01','user01@godiane.com','b75705d7e35e7014521a46b532236ec3','9d8179e1f75570e26f3d50dc792d5514','2019-04-22 20:59:18',NULL),
	('vyt5cbdbabdc6b971.52818487','user02','user02@godiane.com','8bd108c8a01a892d129c52484ef97a0d','747dc32520c28021ac9c344d0799ce93','2019-04-22 20:59:41',NULL),
	('vyt5cbdbacb3e45a7.01784079','user03','user03@godiane.com','a7d39043afa25be5cc235d943b64917a','5c5a4c23b3bd894068bb63db47206bba','2019-04-22 20:59:55',NULL),
	('vyt5cbdc0ef82d0d9.01332472','user31','user31@godiane.com','0c673c53a29acb19c7e55b292d259e4d','03dcf4a39fcf0a5d6581ab172aebafbc','2019-04-22 21:26:07',NULL);

/*!40000 ALTER TABLE `USER` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table VIDEO
# ------------------------------------------------------------

DROP TABLE IF EXISTS `VIDEO`;

CREATE TABLE `VIDEO` (
  `ID` varchar(50) CHARACTER SET utf8 NOT NULL,
  `YT_ID` varchar(50) CHARACTER SET utf8 NOT NULL,
  `URL` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `TITLE` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `CHANNEL_TITLE` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `CATEGORY` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `DESCRIPTION` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `INSERT_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `INSERT_USER_ID` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `SEARCH_QUERY_ID` varchar(50) CHARACTER SET utf8mb4 DEFAULT '',
  PRIMARY KEY (`YT_ID`),
  UNIQUE KEY `ID` (`ID`),
  UNIQUE KEY `YT_ID` (`YT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

LOCK TABLES `VIDEO` WRITE;
/*!40000 ALTER TABLE `VIDEO` DISABLE KEYS */;

INSERT INTO `VIDEO` (`ID`, `YT_ID`, `URL`, `TITLE`, `CHANNEL_TITLE`, `CATEGORY`, `DESCRIPTION`, `INSERT_TIMESTAMP`, `INSERT_USER_ID`, `SEARCH_QUERY_ID`)
VALUES
	('vyt5cbdeb3b05bda8.06325339','1rrRL5TC6DY','https://www.youtube.com/embed/1rrRL5TC6DY','WATCH: Sharon performs with KC during concert in Canada','News One','Gaming','Watch more in iWant or TFC.tv It was a family affair at the Sharon Cuneta concert in Vancouver, Canada this past week, with her daughter KC Concepcion ...','2019-04-23 00:26:35','vyt5cbdc0ef82d0d9.01332472','vyt5cbdeb344d51d3.98482705'),
	('vyt5cbdeb3be89861.98543082','1x5ybLgQo0U','https://www.youtube.com/embed/1x5ybLgQo0U','WATCH: Sharon shows off daughter Miel&#39;s dancing video','News One','Gaming','MANILA – Sharon Cuneta took to social media to share how proud she is of her daughter Miel, who is now very much into dancing. On Instagram, Cuneta ...','2019-04-23 00:26:35','vyt5cbdc0ef82d0d9.01332472','vyt5cbdeb344d51d3.98482705'),
	('vyt5cbdeb3c6f5ed1.14140809','33z4QgpWRag','https://www.youtube.com/embed/33z4QgpWRag','High School - (Sharon Cuneta) Music Video by LPCNSHS-DJC students.','Dean Andrie Espinosa','Film & Animation','This Music VIdeo was made by the students of Las Piñas CIty National Senior High School - Doña Josefa Campus for the fulfillment of their project in the subject ...','2019-04-23 00:26:36','vyt5cbdc0ef82d0d9.01332472','vyt5cbdeb344d51d3.98482705'),
	('vyt5cbdeb3a7c91b1.21227778','8Wy3SSfFO78','https://www.youtube.com/embed/8Wy3SSfFO78','KAPANTAY AY LANGIT trailer','VCI Aqcuisition','People & Blogs','','2019-04-23 00:26:34','vyt5cbdc0ef82d0d9.01332472','vyt5cbdeb344d51d3.98482705'),
	('vyt5cbdeb3f1d3da8.19127187','9Mqgv3amcOQ','https://www.youtube.com/embed/9Mqgv3amcOQ','LOOK: Sharon Cuneta jokes about KC Concepcion stealing her sexy pose','Fun Bad Baby Daddy','People & Blogs','LOOK: Sharon Cuneta jokes about KC Concepcion stealing her sexy pose.','2019-04-23 00:26:39','vyt5cbdc0ef82d0d9.01332472','vyt5cbdeb344d51d3.98482705'),
	('vyt5cbdeb3d706802.28197919','A4nt0oeqE3c','https://www.youtube.com/embed/A4nt0oeqE3c','WATCH: Sharon performs with KC during concert in Canada','News 3','Gaming','Watch more in iWant or TFC.tv It was a family affair at the Sharon Cuneta concert in Vancouver, Canada this past week, with her daughter KC Concepcion ...','2019-04-23 00:26:37','vyt5cbdc0ef82d0d9.01332472','vyt5cbdeb344d51d3.98482705'),
	('vyt5cbdeb3f81f7c8.99338174','aE4CpTBsRYs','https://www.youtube.com/embed/aE4CpTBsRYs','Maybe Someday perform by: Sharon Cuneta','Star Apple Production','Entertainment','We do not own any music used in this video. Copyright to the owners.** --------------SUBSCRIBE FOR MORE VIDEOS------------- --------Never miss a daily video\'s ...','2019-04-23 00:26:39','vyt5cbdc0ef82d0d9.01332472','vyt5cbdeb344d51d3.98482705'),
	('vyt5cbdeb374cde80.64614427','Aq2QMXdfUHA','https://www.youtube.com/embed/Aq2QMXdfUHA','LOISA ANDALIO - HIGH SCHOOL (NET25 LETTERS AND MUSIC)','Letters and Music','Entertainment','LOISA ANDALIO performed her debut single and rendition of Sharon Cuneta\'s \"HIGH SCHOOL\" in Eagle Rock and Rhythm segment of Letters and Music.','2019-04-23 00:26:31','vyt5cbdc0ef82d0d9.01332472','vyt5cbdeb344d51d3.98482705'),
	('vyt5cbdeb36650a19.59507884','bdsL4HNJn24','https://www.youtube.com/embed/bdsL4HNJn24','Sharon Cuneta: Why does the Philippines Love her so Much?','Travis Kraft','Nonprofits & Activism','Sharon Cuneta may be the Megastar, but why do Filipinos love her? I took to the streets to find out the reasons she has captured the hearts of the masses.','2019-04-23 00:26:30','vyt5cbdc0ef82d0d9.01332472','vyt5cbdeb344d51d3.98482705'),
	('vyt5cbdeb351bf7b5.88884922','CaH799aJhKE','https://www.youtube.com/embed/CaH799aJhKE','The Legal Wife Theme Song - Hanggang Kailan Kita Mamahalin','Dengel Forever','Entertainment','Official theme song performed by Angeline Quinto Watch it here soon: http://goo.gl/AYMhv0 Hanggang Kailan Kita Mamahalin Version: Sharon Cuneta featuring ...','2019-04-23 00:26:29','vyt5cbdc0ef82d0d9.01332472','vyt5cbdeb344d51d3.98482705'),
	('vyt5cbdeb3dd197d6.99032636','ciZYA0iVRsU','https://www.youtube.com/embed/ciZYA0iVRsU','Crying Ladies (2003) Movie Review | Sharon Cuneta x Mark Meily Film | Chessie 1000','Chessie 1000','People & Blogs','PERSONAL RATING: 5/5 - this is one of Sharon\'s strongest movies post her Megastardom - if you have an extra 100 mins, give this is a re-watch and you\'ll ...','2019-04-23 00:26:37','vyt5cbdc0ef82d0d9.01332472','vyt5cbdeb344d51d3.98482705'),
	('vyt5cbdecd5eb6591.51183813','DrAMsCKv_GM','https://www.youtube.com/embed/DrAMsCKv_GM','‘Sorry kung umasa ka’: CarGel scene in ‘Playhouse’ gets painfully real for fans','DTN NEWS','News & Politics','\'Sorry kung umasa ka\': CarGel scene in \'Playhouse\' gets painfully real for fans Thank for watching! If you like this video, please Subscribe my channel: ...','2019-04-23 00:33:25','vyt5cbdc0ef82d0d9.01332472','vyt5cbdecd563ac33.40582810'),
	('vyt5cbdeb38a2bf23.52524512','DZU7dyQnnw4','https://www.youtube.com/embed/DZU7dyQnnw4','Sharon Cuneta reveals important detail about relationship with Richard Gomez in the past','PEP','Entertainment','Sharon Cuneta on Richard Gomez: \"Lahat ng natiis ko sa kanya... hindi ko titiisin kahit kalahati no\'n sa sino mang nauna sa kanya or sino mang after niya.','2019-04-23 00:26:32','vyt5cbdc0ef82d0d9.01332472','vyt5cbdeb344d51d3.98482705'),
	('vyt5cbdeb3d0ef317.48886585','G2VPG--gU10','https://www.youtube.com/embed/G2VPG--gU10','Sharon Cuneta','Audiopedia','Education','HIDDEN ERROR: Usage of \"_VALUE_\" is not recognized Sharon Gamboa Cuneta-Pangilinan, better known as Sharon Cuneta, is a Filipino singer, actress and ...','2019-04-23 00:26:37','vyt5cbdc0ef82d0d9.01332472','vyt5cbdeb344d51d3.98482705'),
	('vyt5cbdeb3eacf842.28866422','ipmFsyUXX5I','https://www.youtube.com/embed/ipmFsyUXX5I','Erik Matti promises ‘real horror’ with Sharon Cuneta in ‘Kuwaresma’','News 3','Gaming','View this post on Instagram A post shared by erikmatti (@erikmatti) on Apr 12, 2019 at 4:50am PDT Whenever Erik Matti makes a horror film, he says, he always ...','2019-04-23 00:26:38','vyt5cbdc0ef82d0d9.01332472','vyt5cbdeb344d51d3.98482705'),
	('vyt5cbdeb392c0231.69211005','LNd3n7nSTkI','https://www.youtube.com/embed/LNd3n7nSTkI','Sharon Cuneta - Mr. DJ','bobexr3','Music','Sharon Cuneta - Mr. DJ From the album \"High School\" (1981) Originally released from the album \"DJ\'s Pet\" (1978) Both albums are from Vicor Music ...','2019-04-23 00:26:33','vyt5cbdc0ef82d0d9.01332472','vyt5cbdeb344d51d3.98482705'),
	('vyt5cbdeb39a8af58.23590334','lYAXzbn67v0','https://www.youtube.com/embed/lYAXzbn67v0','Sharon Cuneta &amp; Gabby Concepcion McDonald&#39;s Kumusta Ka TV Commercial Spoof','novo ramos','People & Blogs','Here is our own amateur version of the viral McDonald\'s Philippines\' commercial advertisement featuring one of Philippines\' most loved (former) love teams, ...','2019-04-23 00:26:33','vyt5cbdc0ef82d0d9.01332472','vyt5cbdeb344d51d3.98482705'),
	('vyt5cbdeb3b825760.01304472','Mms0AGjLkHM','https://www.youtube.com/embed/Mms0AGjLkHM','Gabby Concepcion Sends Birthday Greetings To Former Wife Sharon Cuneta','Fun Bad Baby Daddy','People & Blogs','Gabby Concepcion Sends Birthday Greetings To Former Wife Sharon Cuneta.','2019-04-23 00:26:35','vyt5cbdc0ef82d0d9.01332472','vyt5cbdeb344d51d3.98482705'),
	('vyt5cbdeb3fe9e0c1.21402975','Mpis9UWQjSA','https://www.youtube.com/embed/Mpis9UWQjSA','Showbiz News - Sharon Cuneta nasaktan daw, bakit kaya? Robin ano ang sagot?(2018)','Showbiz News Philippines','Entertainment','Showbiz News - Sharon Cuneta nasaktan daw, bakit kaya? Panoorin kung ano ang sinagot ni Robin Padilla sa Instagram, at kung bakit nasaktan si Sharon ...','2019-04-23 00:26:39','vyt5cbdc0ef82d0d9.01332472','vyt5cbdeb344d51d3.98482705'),
	('vyt5cbdeb37b61c62.60739066','qs1Rt9gKcQo','https://www.youtube.com/embed/qs1Rt9gKcQo','Richard Gomez forgets important dates with ex Sharon and wife Lucy','PEP','Entertainment','Sharon Cuneta to Richard Gomez: \"Alzheimer\'s na ba yan? #richardgomez #sharoncuneta #lucytorres #threewordstoforever Video Producer: Noel Orsal Video ...','2019-04-23 00:26:31','vyt5cbdc0ef82d0d9.01332472','vyt5cbdeb344d51d3.98482705'),
	('vyt5cbdeb3e48caf6.41404715','rabRsvRERk0','https://www.youtube.com/embed/rabRsvRERk0','Ikaw Lang ang Mamahalin perform by: Sharon Cuneta','Star Apple Production','Entertainment','We do not own any music used in this video. Copyright to the owners.** --------------SUBSCRIBE FOR MORE VIDEOS------------- --------Never miss a daily video\'s ...','2019-04-23 00:26:38','vyt5cbdc0ef82d0d9.01332472','vyt5cbdeb344d51d3.98482705'),
	('vyt5cbdeb36c94168.10558016','REvVvr77n7Y','https://www.youtube.com/embed/REvVvr77n7Y','The Voice Kids&#39; Team Sharon sing Michael Jackson hits @ Coach Sharon&#39;s Concert','Ian Joseph Prelligera','Entertainment','Team Sharon of The Voice Kids season 3 perform Michael Jackson hits\' “They Don\'t Care About Us,” and “Heal the World” at Megastar Sharon Cuneta\'s Concert ...','2019-04-23 00:26:30','vyt5cbdc0ef82d0d9.01332472','vyt5cbdeb344d51d3.98482705'),
	('vyt5cbdeb383e9a97.31362366','sQdzyzKYnjM','https://www.youtube.com/embed/sQdzyzKYnjM','Lucky Me! Mami Spicy Labuyo w/ Sharon Cuneta 2017 (Eng Subtitles)','aye','Entertainment','Megaspice with Megastar Sharon Cuneta reprises her role as a judge but this time, for the many representations of siling labuyo!','2019-04-23 00:26:32','vyt5cbdc0ef82d0d9.01332472','vyt5cbdeb344d51d3.98482705'),
	('vyt5cbdeb3a17cea2.48304023','T7TZLGD88-c','https://www.youtube.com/embed/T7TZLGD88-c','MR. DJ  Sharon Cuneta cover by Mavier06 with lyrics and guitar chords','mavier06','Music','A very nice song with lyrics and guitar chords in description matching the video. Tempo from original 6/8 change to 3/4 by the foreigner guitar player so you may ...','2019-04-23 00:26:34','vyt5cbdc0ef82d0d9.01332472','vyt5cbdeb344d51d3.98482705'),
	('vyt5cbdeb35e6c379.52092276','YXgn1i8O-gM','https://www.youtube.com/embed/YXgn1i8O-gM','10 Effective Steps to LOSE WEIGHT Based on SHARON CUNETA&#39;s Tips','Jatamari\'s World','Howto & Style','These 10 simple and effective steps to lose weight really work because Sharon Cuneta, the Philippines\' megastar, is obviously getting slimmer. Slowly but surely ...','2019-04-23 00:26:29','vyt5cbdc0ef82d0d9.01332472','vyt5cbdeb344d51d3.98482705'),
	('vyt5cbdeb34acd129.88883795','_sPqIXqzJNg','https://www.youtube.com/embed/_sPqIXqzJNg','Kumusta Ka','McDo Philippines','People & Blogs','Masarap balik-balikan ang classic na tambalan. Enjoy our Best-Tasting Chicken McDo paired with our World Famous Fries in one delicious meal.','2019-04-23 00:26:28','vyt5cbdc0ef82d0d9.01332472','vyt5cbdeb344d51d3.98482705');

/*!40000 ALTER TABLE `VIDEO` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
