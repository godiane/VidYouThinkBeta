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

# Dump of table USER - REGISTRATION and LOGIN PAGE
# ------------------------------------------------------------

DROP TABLE IF EXISTS `USER`;

CREATE TABLE `USER` (
  `ID` varchar(50) NOT NULL UNIQUE,
  `USERNAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL UNIQUE,
  `EMAIL` varchar(300) NOT NULL UNIQUE,
  `PASSWORD` varchar(100) NOT NULL,
  `CONFIRM_CODE` varchar(100) NOT NULL,
  `CREATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_TIMESTAMP` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`,`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Dump of table SEARCH_QUERY
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SEARCH_QUERY`;

CREATE TABLE `SEARCH_QUERY` (
  `ID` varchar(50) NOT NULL UNIQUE,
  `USER_ID` varchar(50) NOT NULL,
  `QUERY` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `CREATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table SEARCH_RESULT
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SEARCH_RESULT`;

CREATE TABLE `SEARCH_RESULT` (
  `ID` varchar(50) NOT NULL UNIQUE,
  `SEARCH_QUERY_ID` varchar(50) NOT NULL,
  `VIDEO_ID` varchar(50) NOT NULL UNIQUE,
  PRIMARY KEY (`ID`,`SEARCH_QUERY_ID`,`VIDEO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Dump of table VIDEO
# ------------------------------------------------------------

DROP TABLE IF EXISTS `VIDEO`;

CREATE TABLE `VIDEO` (
  `ID` varchar(50) NOT NULL UNIQUE,
  `YT_ID` varchar(50) NOT NULL UNIQUE,
  `URL` varchar(1000) NOT NULL,
  `TITLE` varchar(1000) NOT NULL,
  `CHANNEL_TITLE` varchar(1000) NOT NULL,
  `CATEGORY` varchar(1000) NOT NULL,
  `DESCRIPTION` varchar(500) DEFAULT NULL,
  `INSERT_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP,
  `INSERT_USER_ID` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`YT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Dump of table CAPTION
# ------------------------------------------------------------

DROP TABLE IF EXISTS `CAPTION`;

CREATE TABLE `CAPTION` (
  `ID` varchar(50) NOT NULL UNIQUE,
  `VIDEO_ID` varchar(50) NOT NULL UNIQUE,
  `CAPTION` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `INSERT_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP,
  `INSERT_USER_ID` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`,`VIDEO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Dump of table COMMENT
# ------------------------------------------------------------

DROP TABLE IF EXISTS `COMMENT`;

CREATE TABLE `COMMENT` (
  `ID` varchar(50) NOT NULL UNIQUE,
  `VIDEO_ID` varchar(50) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `COMMENT` varchar(1000) NOT NULL,
  `INSERT_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP,
  `INSERT_USER_ID` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`,`VIDEO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Dump of table RATING
# ------------------------------------------------------------

DROP TABLE IF EXISTS `RATING`;

CREATE TABLE `RATING` (
  `ID` varchar(50) NOT NULL UNIQUE,
  `VIDEO_ID` varchar(50) NOT NULL UNIQUE,
  `RATING` varchar(50) NOT NULL,
  `OVERALL_VIEW` int(50) unsigned NOT NULL,
  `LIKES` int(50) unsigned NOT NULL,
  `DISLIKES` int(50) unsigned NOT NULL,
  `INSERT_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP,
  `INSERT_USER_ID` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`,`VIDEO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Dump of table SENTIMENT_RATING
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SENTIMENT_RATING`;

CREATE TABLE `SENTIMENT_RATING` (
  `ID` varchar(50) NOT NULL UNIQUE,
  `CAPTION_ID` varchar(50) NOT NULL UNIQUE,
  `RATING` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `INSERT_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP,
  `INSERT_USER_ID` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`,`CAPTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
