# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.7.23)
# Database: vidyouthink
# Generation Time: 2019-01-24 15:02:37 +0000
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
  `VIDEO_ID` int(50) unsigned NOT NULL,
  `ID` int(50) unsigned NOT NULL AUTO_INCREMENT,
  `CAPTION` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `INSERT_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP,
  `INSERT_USER_ID` int(50) DEFAULT NULL,
  PRIMARY KEY (`ID`,`VIDEO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table COMMENT
# ------------------------------------------------------------

DROP TABLE IF EXISTS `COMMENT`;

CREATE TABLE `COMMENT` (
  `VIDEO_ID` int(50) unsigned NOT NULL,
  `ID` int(50) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) NOT NULL,
  `COMMENT` varchar(1000) NOT NULL,
  `INSERT_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP,
  `INSERT_USER_ID` int(50) DEFAULT NULL,
  PRIMARY KEY (`ID`,`VIDEO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table RATING
# ------------------------------------------------------------

DROP TABLE IF EXISTS `RATING`;

CREATE TABLE `RATING` (
  `VIDEO_ID` int(50) unsigned NOT NULL,
  `ID` int(50) unsigned NOT NULL AUTO_INCREMENT,
  `RATING` varchar(50) NOT NULL,
  `OVERALL_VIEW` int(50) unsigned NOT NULL,
  `LIKES` int(50) unsigned NOT NULL,
  `DISLIKES` int(50) unsigned NOT NULL,
  `INSERT_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP,
  `INSERT_USER_ID` int(50) DEFAULT NULL,
  PRIMARY KEY (`ID`,`VIDEO_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

LOCK TABLES `RATING` WRITE;
/*!40000 ALTER TABLE `RATING` DISABLE KEYS */;

INSERT INTO `RATING` (`VIDEO_ID`, `ID`, `RATING`, `OVERALL_VIEW`, `LIKES`, `DISLIKES`, `INSERT_TIMESTAMP`, `INSERT_USER_ID`)
VALUES
	(2,2,'0',18682,259,7,'2019-01-20 11:42:10',16);

/*!40000 ALTER TABLE `RATING` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table SEARCH_QUERY
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SEARCH_QUERY`;

CREATE TABLE `SEARCH_QUERY` (
  `ID` int(50) unsigned NOT NULL AUTO_INCREMENT,
  `USER_ID` int(50) unsigned NOT NULL,
  `QUERY` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `CREATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`,`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

LOCK TABLES `SEARCH_QUERY` WRITE;
/*!40000 ALTER TABLE `SEARCH_QUERY` DISABLE KEYS */;

INSERT INTO `SEARCH_QUERY` (`ID`, `USER_ID`, `QUERY`, `CREATE_TIMESTAMP`)
VALUES
	(1,1,'cargel','2019-01-16 22:46:41'),
	(2,16,'cargel','2019-01-19 18:22:55');

/*!40000 ALTER TABLE `SEARCH_QUERY` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table SEARCH_RESULT
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SEARCH_RESULT`;

CREATE TABLE `SEARCH_RESULT` (
  `ID` int(50) unsigned NOT NULL AUTO_INCREMENT,
  `SEARCH_QUERY_ID` int(50) unsigned NOT NULL,
  `VIDEO_ID` int(50) unsigned NOT NULL,
  PRIMARY KEY (`ID`,`SEARCH_QUERY_ID`,`VIDEO_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

LOCK TABLES `SEARCH_RESULT` WRITE;
/*!40000 ALTER TABLE `SEARCH_RESULT` DISABLE KEYS */;

INSERT INTO `SEARCH_RESULT` (`ID`, `SEARCH_QUERY_ID`, `VIDEO_ID`)
VALUES
	(1,1,2);

/*!40000 ALTER TABLE `SEARCH_RESULT` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table SENTIMENT_RATING
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SENTIMENT_RATING`;

CREATE TABLE `SENTIMENT_RATING` (
  `CAPTION_ID` int(50) unsigned NOT NULL,
  `ID` int(50) unsigned NOT NULL AUTO_INCREMENT,
  `RATING` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `INSERT_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP,
  `INSERT_USER_ID` int(50) DEFAULT NULL,
  PRIMARY KEY (`ID`,`CAPTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table USER
# ------------------------------------------------------------

DROP TABLE IF EXISTS `USER`;

CREATE TABLE `USER` (
  `ID` int(50) unsigned NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `EMAIL` varchar(300) NOT NULL,
  `PASSWORD` varchar(100) NOT NULL,
  `CONFIRM_CODE` varchar(100) NOT NULL,
  `CREATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_TIMESTAMP` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`,`USERNAME`,`EMAIL`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

LOCK TABLES `USER` WRITE;
/*!40000 ALTER TABLE `USER` DISABLE KEYS */;

INSERT INTO `USER` (`ID`, `USERNAME`, `EMAIL`, `PASSWORD`, `CONFIRM_CODE`, `CREATE_TIMESTAMP`, `UPDATE_TIMESTAMP`)
VALUES
	(1,'Administrator','di.gonzales@gmail.com','92814a387d2fe972e8aa877bc152980c','b064dcdc669f37f766c072b8b2afb9f6','2019-01-16 22:45:00',NULL);

/*!40000 ALTER TABLE `USER` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table VIDEO
# ------------------------------------------------------------

DROP TABLE IF EXISTS `VIDEO`;

CREATE TABLE `VIDEO` (
  `ID` int(50) unsigned NOT NULL AUTO_INCREMENT,
  `YT_ID` varchar(1000) NOT NULL,
  `URL` varchar(1000) NOT NULL,
  `TITLE` varchar(1000) NOT NULL,
  `CHANNEL_TITLE` varchar(1000) NOT NULL,
  `CATEGORY` varchar(1000) NOT NULL,
  `DESCRIPTION` varchar(500) DEFAULT NULL,
  `INSERT_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP,
  `INSERT_USER_ID` int(50) DEFAULT NULL,
  PRIMARY KEY (`ID`,`YT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

LOCK TABLES `VIDEO` WRITE;
/*!40000 ALTER TABLE `VIDEO` DISABLE KEYS */;

INSERT INTO `VIDEO` (`ID`, `YT_ID`, `URL`, `TITLE`, `CHANNEL_TITLE`, `CATEGORY`, `DESCRIPTION`, `INSERT_TIMESTAMP`, `INSERT_USER_ID`)
VALUES
	(2,'7erm2ykJNqM','https://www.youtube.com/embed/7erm2ykJNqM','Given the chance, who would Angelica Panganiban want to be her GF? | PEP Headliner','PEP','Entertainment','Who Angelica Panganiban misses the most is not who you think. Angge also shares what she wants to achieve in five years.\n\nRead her PEP Headliner feature here: http://bit.ly/AngelicaHeadliner\n\n#angelicapanganiban #angelicaonheadliner #playhouse\n\nSubscribe to our YouTube channel! http://bit.ly/PEPYouTubeChannel\n\nKnow the latest in showbiz on http://www.pep.ph!\n\nLike PEP.ph on Facebook! https://www.facebook.com/PEPalerts\n\nFollow PEP.ph on Twitter! https://twitter.com/pepalerts','2019-01-20 11:44:40',16);

/*!40000 ALTER TABLE `VIDEO` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
