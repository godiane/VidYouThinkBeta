# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.7.23)
# Database: vidyouthink
# Generation Time: 2019-03-17 09:36:31 +0000
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
  PRIMARY KEY (`ID`,`VIDEO_ID`),
  UNIQUE KEY `ID` (`ID`),
  UNIQUE KEY `VIDEO_ID` (`VIDEO_ID`),
  CONSTRAINT `VIDEO_YT_ID` FOREIGN KEY (`VIDEO_ID`) REFERENCES `VIDEO` (`YT_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

LOCK TABLES `CAPTION` WRITE;
/*!40000 ALTER TABLE `CAPTION` DISABLE KEYS */;

INSERT INTO `CAPTION` (`ID`, `VIDEO_ID`, `CAPTION`, `INSERT_TIMESTAMP`, `INSERT_USER_ID`, `UPDATE_TIMESTAMP`)
VALUES
	('vyt5c8a6aec7758d0.91510919','DrAMsCKv_GM','1\n00:00:00,030 --> 00:00:08,280\nsorry conga Masuka car gel seen in play\n\n2\n00:00:03,120 --> 00:00:09,900\nhouse gets painfully real for fans the\n\n3\n00:00:08,280 --> 00:00:12,360\npast six months have been a roller\n\n4\n00:00:09,900 --> 00:00:14,969\ncoaster of emotions for a long time fans\n\n5\n00:00:12,360 --> 00:00:16,550\nof car gel whose on-screen reunions\n\n6\n00:00:14,969 --> 00:00:18,660\nburned hopes of a real-life\n\n7\n00:00:16,550 --> 00:00:21,029\nreconciliation until their friendship\n\n8\n00:00:18,660 --> 00:00:27,539\nwas supposedly ruined by negativity and\n\n9\n00:00:21,029 --> 00:00:29,910\nunmet expectations on Monday former\n\n10\n00:00:27,539 --> 00:00:32,279\nsweethearts Angelica Panganiban and\n\n11\n00:00:29,910 --> 00:00:34,559\nCarlo Aquino parted ways all over again\n\n12\n00:00:32,279 --> 00:00:36,600\nat least on screen with their respective\n\n13\n00:00:34,559 --> 00:00:38,489\ncharacters in the daytime series\n\n14\n00:00:36,600 --> 00:00:40,890\nPlayhouse saying goodbye to each other\n\n15\n00:00:38,489 --> 00:00:47,000\nand exchanging apologies after a failed\n\n16\n00:00:40,890 --> 00:00:50,539\nromance in the February 25th episode\n\n17\n00:00:47,000 --> 00:00:53,640\nHarold Aquino said sorry to Patty\n\n18\n00:00:50,539 --> 00:00:55,739\nPanganiban for only belatedly informing\n\n19\n00:00:53,640 --> 00:00:58,140\nher of a fellowship he is taking up in\n\n20\n00:00:55,739 --> 00:01:00,000\nSingapore for three years prompting the\n\n21\n00:00:58,140 --> 00:01:06,570\nlatter to ask whether the decision was\n\n22\n00:01:00,000 --> 00:01:08,880\nthe result of their falling-out Gus took\n\n23\n00:01:06,570 --> 00:01:14,340\non malam and mon august unga\'s took oh\n\n24\n00:01:08,880 --> 00:01:16,439\nnot IM young tail patty told Harold /\n\n25\n00:01:14,340 --> 00:01:18,710\nAugust hooker real cos I\'m aging fair\n\n26\n00:01:16,439 --> 00:01:18,710\nCEO\n\n27\n00:01:19,570 --> 00:01:25,400\nhindi naman pew Eden sapling young Pegg\n\n28\n00:01:23,000 --> 00:01:30,500\nmama hana i the big a co co CAHSEE\n\n29\n00:01:25,400 --> 00:01:31,700\nminson young support cooling sorry\n\n30\n00:01:30,500 --> 00:01:37,729\ncompany Geetha\n\n31\n00:01:31,700 --> 00:01:42,000\nsorry column Asuka she went on a Corinne\n\n32\n00:01:37,729 --> 00:01:45,870\nnent a Corinne Amasa\n\n33\n00:01:42,000 --> 00:01:56,550\na masa akan magma bago young/nasa Paso\n\n34\n00:01:45,870 --> 00:01:57,540\nCo Peru Hindi PHA a baka Hanina although\n\n35\n00:01:56,550 --> 00:02:03,150\nvisibly hurt\n\n36\n00:01:57,540 --> 00:02:05,070\nHarold conceded he said he has long\n\n37\n00:02:03,150 --> 00:02:10,340\nknown he could not possibly replace\n\n38\n00:02:05,070 --> 00:02:10,340\nMarlon sanyo mundo in Patty\'s heart I\n\n39\n00:02:10,370 --> 00:02:16,650\nknow you tried Farouk ahead and in God\n\n40\n00:02:13,650 --> 00:02:20,030\nmo oka had a nun Phillip Corinne we both\n\n41\n00:02:16,650 --> 00:02:20,030\nknow that I cannot be that guy\n\n42\n00:02:20,270 --> 00:02:29,130\nit will always be him\n\n43\n00:02:22,440 --> 00:02:31,170\nhe said the on screen parting at least\n\n44\n00:02:29,130 --> 00:02:33,630\nto some car gel fans who shared online\n\n45\n00:02:31,170 --> 00:02:35,940\ntheir reactions felt painfully familiar\n\n46\n00:02:33,630 --> 00:02:41,700\nfollowing the recent developments in the\n\n47\n00:02:35,940 --> 00:02:44,250\npersonal lives of their idols in early\n\n48\n00:02:41,700 --> 00:02:46,050\nJanuary Pangani been courted headlines\n\n49\n00:02:44,250 --> 00:02:48,480\nwhen she declared her intention to\n\n50\n00:02:46,050 --> 00:02:50,610\ndistance herself from aquino saying\n\n51\n00:02:48,480 --> 00:02:55,170\nnegativity from fans affected their\n\n52\n00:02:50,610 --> 00:02:56,910\nrelationship the rent appeared to have\n\n53\n00:02:55,170 --> 00:02:59,040\nbeen triggered by one follower who\n\n54\n00:02:56,910 --> 00:03:01,170\ncensured Pangani been over her cryptic\n\n55\n00:02:59,040 --> 00:03:04,670\nposts about love that supposedly made\n\n56\n00:03:01,170 --> 00:03:04,670\nAquino vulnerable to judgment\n\n57\n00:03:05,250 --> 00:03:13,680\na week later the actress spoke of being\n\n58\n00:03:08,670 --> 00:03:15,630\nhurt after having loved again she went\n\n59\n00:03:13,680 --> 00:03:18,000\non to ask followers on Twitter to help\n\n60\n00:03:15,630 --> 00:03:20,580\nher move on from the past boyfriend who\n\n61\n00:03:18,000 --> 00:03:25,500\nalso happens to be a play house co-star\n\n62\n00:03:20,580 --> 00:03:26,010\nboth descriptions that fit Akeno at the\n\n63\n00:03:25,500 --> 00:03:28,500\ntime\n\n64\n00:03:26,010 --> 00:03:31,140\nrumors of Akeno dating another woman had\n\n65\n00:03:28,500 --> 00:03:32,970\njust surfaced following viral photos of\n\n66\n00:03:31,140 --> 00:03:33,510\nhim apparently on vacation with the\n\n67\n00:03:32,970 --> 00:03:46,160\nmodel\n\n68\n00:03:33,510 --> 00:03:46,160\n[Music]\n\n','2019-03-14 22:52:46','vyt5c62d4b82be738.76255738','2019-03-14 22:53:32'),
	('vyt5c8d1742d6f340.43202074','7erm2ykJNqM','0','2019-03-16 23:03:22','vyt5c62d4b82be738.76255738','2019-03-16 23:33:22'),
	('vyt5c8d420b566c98.02869037','hr5Am3HREmY','1\n00:00:01,285 --> 00:00:03,255\nAngelica Panganiban\n\n2\n00:00:04,795 --> 00:00:05,795\nCarlo Aquino\n\n3\n00:00:12,515 --> 00:00:14,475\nSweet\n\n4\n00:00:16,015 --> 00:00:17,955\nMoments\n\n5\n00:00:19,965 --> 00:00:21,655\n2018\n\n6\n00:00:22,465 --> 00:00:23,495\n \n\n7\n00:00:23,965 --> 00:00:24,965\n \n\n8\n00:00:26,515 --> 00:00:29,125\n \n\n9\n00:00:29,815 --> 00:00:30,815\n \n\n10\n00:00:32,175 --> 00:00:33,175\n \n\n11\n00:00:33,645 --> 00:00:35,515\n \n\n12\n00:00:37,885 --> 00:00:38,885\n \n\n13\n00:00:39,325 --> 00:00:40,325\n \n\n14\n00:00:45,425 --> 00:00:46,425\n \n\n15\n00:00:50,745 --> 00:00:51,765\n \n\n16\n00:00:54,995 --> 00:00:55,995\n \n\n17\n00:01:01,635 --> 00:01:02,635\n \n\n18\n00:01:07,315 --> 00:01:08,315\n \n\n19\n00:01:13,075 --> 00:01:14,335\n \n\n20\n00:01:25,155 --> 00:01:26,155\n \n\n21\n00:01:47,375 --> 00:01:48,375\n \n\n22\n00:01:53,065 --> 00:01:54,065\n \n\n23\n00:01:58,585 --> 00:02:00,045\n \n\n','2019-03-17 02:31:31','vyt5c62d4b82be738.76255738','2019-03-17 02:35:55'),
	('vyt5c8d4253225977.85498308','RUfGbuiWGRE','0','2019-03-14 23:19:40','vyt5c62d4b82be738.76255738','2019-03-17 02:37:07'),
	('vyt5c8d4267c055a3.74950496','gocwRvLhDf8','1\n00:00:00,080 --> 00:00:03,120\nEvery YouTube video has a unique ID.\n\n2\n00:00:03,120 --> 00:00:05,770\nIt\'s up in the URL: a string of eleven characters\n\n3\n00:00:05,770 --> 00:00:08,820\nthat uniquely identifies which video you want.\n\n4\n00:00:08,820 --> 00:00:12,580\nNow, YouTube has millions and millions of\nvideos.\n\n5\n00:00:12,580 --> 00:00:16,460\nThe last stats that they released said they\nhave\n\n6\n00:00:16,460 --> 00:00:20,380\n400 hours of video being uploaded every minute.\n\n7\n00:00:20,380 --> 00:00:23,369\nSo: are they ever going to run out of those\nIDs?\n\n8\n00:00:23,369 --> 00:00:27,240\nWell, to find out, let\'s talk about counting\nsystems.\n\n9\n00:00:27,240 --> 00:00:29,509\nPeople count in Base 10. 0 to 9.\n\n10\n00:00:29,509 --> 00:00:31,949\nThat\'ll be, hopefully, familiar to you.\n\n11\n00:00:31,949 --> 00:00:34,060\nComputers count in base 2, in binary,\n\n12\n00:00:34,060 --> 00:00:36,200\nbut that\'s difficult for humans to read,\n\n13\n00:00:36,200 --> 00:00:38,900\nit gets too long to write really, really quickly,\n\n14\n00:00:38,900 --> 00:00:43,650\nso often computers will display it in base\n16, hexadecimal.\n\n15\n00:00:43,650 --> 00:00:46,340\nYou have 0 to 9, and then A to F,\n\n16\n00:00:46,340 --> 00:00:49,040\nand then you start adding to the next column.\n\n17\n00:00:49,040 --> 00:00:50,660\nHumans can\'t understand that easily,\n\n18\n00:00:50,660 --> 00:00:53,400\nbut it\'s efficient if we have to type it in\nsomewhere,\n\n19\n00:00:53,400 --> 00:00:59,100\nand 16 - 2 to the power of 4 - is also easy\nfor computers to deal with.\n\n20\n00:00:59,100 --> 00:01:00,790\nSo how about Base 64?\n\n21\n00:01:00,790 --> 00:01:05,360\nThat\'d be a ridiculous counting system, right?\nExcept.\n\n22\n00:01:05,360 --> 00:01:08,000\n64 is another one of those easy numbers for\ncomputers,\n\n23\n00:01:08,000 --> 00:01:10,370\nit is 2 to the power of 6.\n\n24\n00:01:10,370 --> 00:01:12,750\nAnd humans can get to 64 very easily:\n\n25\n00:01:12,750 --> 00:01:15,670\n0 to 9, then capital letters A to Z,\n\n26\n00:01:15,670 --> 00:01:18,770\nthen small letters a to z, and two other characters.\n\n27\n00:01:18,770 --> 00:01:20,850\nMost Base 64 uses slash and plus,\n\n28\n00:01:20,850 --> 00:01:22,810\nbut they don\'t work so well in URLs,\n\n29\n00:01:22,810 --> 00:01:25,830\nso YouTube uses hyphen and underscore.\n\n30\n00:01:25,830 --> 00:01:28,090\nThat YouTube URL, that unique ID,\n\n31\n00:01:28,090 --> 00:01:32,270\nis really just a random number in base 64.\n\n32\n00:01:32,270 --> 00:01:34,370\nThey could have have picked base 10 or base\n16,\n\n33\n00:01:34,370 --> 00:01:36,200\nbut they didn\'t: they went with 64,\n\n34\n00:01:36,200 --> 00:01:40,520\nbecause it will let you cram a huge number\ninto a small space\n\n35\n00:01:40,520 --> 00:01:43,090\nand still make it vaguely human readable.\n\n36\n00:01:43,090 --> 00:01:45,840\nAuthor and programmer Sam Hughes, by the way,\n\n37\n00:01:45,840 --> 00:01:51,210\npushed this to the limit, and invented Base\n65,536,\n\n38\n00:01:51,210 --> 00:01:54,740\nwhich includes basically every character from\nevery language.\n\n39\n00:01:54,740 --> 00:01:56,960\nIt is ridiculous and unnecessary,\n\n40\n00:01:56,960 --> 00:01:59,570\nbut when has that ever stopped programmers?\n\n41\n00:01:59,570 --> 00:02:04,659\nSo why didn\'t YouTube just start counting\nat 1 and work up?\n\n42\n00:02:04,659 --> 00:02:07,780\nWell, first, they would have to synchronise\ntheir counting\n\n43\n00:02:07,780 --> 00:02:11,370\nbetween all the servers handling the video\nuploads,\n\n44\n00:02:11,370 --> 00:02:14,400\nor they\'d have to assign each server a block\nof numbers.\n\n45\n00:02:14,400 --> 00:02:16,680\nEither way, there\'s a lot of tracking to do,\n\n46\n00:02:16,680 --> 00:02:18,740\na lot of making sure that it\'s never duplicated.\n\n47\n00:02:18,740 --> 00:02:21,690\nInstead, they just generate a random number\nfor each video,\n\n48\n00:02:21,690 --> 00:02:24,590\nsee if it\'s already taken, and if not, use\nit.\n\n49\n00:02:24,590 --> 00:02:28,090\nAnd secondly, it is a really, really bad idea\n\n50\n00:02:28,090 --> 00:02:32,390\nto just count 1, 2, 3 and so on in URLs.\n\n51\n00:02:32,390 --> 00:02:35,550\nIncremental counters, as they\'re called, can\nbe a big security flaw:\n\n52\n00:02:35,550 --> 00:02:39,510\nif you see video 283 up there, then you might\nwonder:\n\n53\n00:02:39,510 --> 00:02:42,260\nwhat\'s video 284? Or video 282?\n\n54\n00:02:42,260 --> 00:02:43,990\nIt\'s easy to enumerate, as it\'s called,\n\n55\n00:02:43,990 --> 00:02:46,520\nto run through the entire list.\n\n56\n00:02:46,520 --> 00:02:49,420\nYouTube Unlisted videos, the ones that don\'t\nappear publicly\n\n57\n00:02:49,420 --> 00:02:52,450\nbut that you can send the link to people,\nthose wouldn\'t work.\n\n58\n00:02:52,450 --> 00:02:57,970\nAnd by the way? Lots of badly designed sites\ndo use incremental counters.\n\n59\n00:02:57,970 --> 00:03:00,550\nAnd it is a terrible idea.\n\n60\n00:03:00,550 --> 00:03:03,569\nIt might tell your competitors exactly how\nmany customers you have,\n\n61\n00:03:03,569 --> 00:03:04,880\n\'cos they can just count them.\n\n62\n00:03:04,880 --> 00:03:07,750\nIt might let people download all your records\neasily,\n\n63\n00:03:07,750 --> 00:03:08,810\n\'cos they can just run through them.\n\n64\n00:03:08,810 --> 00:03:12,920\nAnd in one site that someone in Florida emailed\nme about this week,\n\n65\n00:03:12,920 --> 00:03:16,520\nit lets you look at other people\'s personal\ndetails.\n\n66\n00:03:16,520 --> 00:03:21,380\nDon\'t use incremental counters if you\'re building\na web site. Use a random number.\n\n67\n00:03:21,380 --> 00:03:22,930\nWhich brings me to the question:\n\n68\n00:03:22,930 --> 00:03:26,260\njust how big are the numbers that YouTube\nuses?\n\n69\n00:03:26,260 --> 00:03:28,310\nWell, let\'s work it out.\n\n70\n00:03:28,310 --> 00:03:32,310\nOne character of base 64 lets you have 64\nID numbers.\n\n71\n00:03:32,310 --> 00:03:37,569\nTwo characters? That\'s 64 by 64, or 4,096.\n\n72\n00:03:37,569 --> 00:03:42,610\nThree characters? 64 times 64 times 64 -- or\n64 to the power of 3.\n\n73\n00:03:42,610 --> 00:03:45,560\nThat is already more than a quarter of a million.\n\n74\n00:03:45,560 --> 00:03:50,590\nAnd if we go to four? Well, now we\'re above\n16 million.\n\n75\n00:03:50,590 --> 00:03:53,980\nIf you use Base 64, then you can assign an\nID number\n\n76\n00:03:53,980 --> 00:03:57,410\nto everyone who lives in London down there\ntwice over,\n\n77\n00:03:57,410 --> 00:04:00,489\nand you\'ll only need four characters.\n\n78\n00:04:00,489 --> 00:04:02,950\nThis gets big fast. We can keep on doing this,\n\n79\n00:04:02,950 --> 00:04:06,660\nand by seven characters we\'re already at four\nquadrillion.\n\n80\n00:04:06,660 --> 00:04:10,300\nNow, I assume that YouTube checks through\na dictionary,\n\n81\n00:04:10,300 --> 00:04:13,660\nand doesn\'t allow any actual words to appear\nup there --\n\n82\n00:04:13,660 --> 00:04:15,250\nparticularly anything rude.\n\n83\n00:04:15,250 --> 00:04:18,669\nBut that is going to be a tiny minority of\nthe URLs,\n\n84\n00:04:18,669 --> 00:04:22,069\nso for our purposes, we can pretty much just\nignore that.\n\n85\n00:04:22,069 --> 00:04:27,169\nAt YouTube\'s 11 characters, we are at 73 quintillion\n786 quadrillion\n\n86\n00:04:27,169 --> 00:04:30,589\n976 trillion 294 billion 838 million\n\n87\n00:04:30,589 --> 00:04:32,479\n206 thousand and 464 videos.\n\n88\n00:04:32,479 --> 00:04:35,669\nThat\'s enough for every single human on planet\nEarth\n\n89\n00:04:35,669 --> 00:04:41,629\nto upload a video every minute for around\n18,000 years.\n\n90\n00:04:41,629 --> 00:04:42,599\nYouTube planned ahead.\n\n91\n00:04:42,599 --> 00:04:45,889\nCan they run out of URLs? Technically, yes.\n\n92\n00:04:45,889 --> 00:04:49,969\nPractically? No. And if they did?\n\n93\n00:04:49,969 --> 00:04:52,559\nThey could just add one more character.\n\n94\n00:04:53,640 --> 00:04:56,180\n[Translating these subtitles? Add your name here!]\n\n95\n00:04:57,320 --> 00:05:02,960\nHa! One take! One take! Yes!\n\n','2019-03-14 23:18:41','vyt5c62d4b82be738.76255738','2019-03-17 02:37:27'),
	('vyt5c8d4f279f8388.10227781','YXgn1i8O-gM','1\n00:00:00,030 --> 00:00:08,189\nso the whole point of it is ping beam\n\n2\n00:00:03,480 --> 00:00:09,929\nAllah Allah give him a million and once\n\n3\n00:00:08,189 --> 00:00:12,769\nI have said that that it\'s really a\n\n4\n00:00:09,929 --> 00:00:12,769\nlifestyle change\n\n5\n00:00:15,859 --> 00:00:21,510\nhey there today we are going to feature\n\n6\n00:00:19,050 --> 00:00:23,699\na ten step guide to losing weight based\n\n7\n00:00:21,510 --> 00:00:26,189\non a compilation of tips from no less\n\n8\n00:00:23,699 --> 00:00:28,590\nthan miss sharon cuneta if you haven\'t\n\n9\n00:00:26,189 --> 00:00:30,689\nsubscribed yet - Chatta Mary TV please\n\n10\n00:00:28,590 --> 00:00:44,270\nsubscribe for more inspiring videos like\n\n11\n00:00:30,689 --> 00:00:44,270\nthis here Sharon step number one pad\n\n12\n00:00:45,170 --> 00:00:58,289\nthai or whatever I want to eat haunted I\n\n13\n00:00:50,160 --> 00:01:00,870\ndon\'t fit in I don\'t know no carbs on\n\n14\n00:00:58,289 --> 00:01:03,420\nInstagram Sharon gave this step to one\n\n15\n00:01:00,870 --> 00:01:05,100\nof her followers she said in the\n\n16\n00:01:03,420 --> 00:01:09,150\nbeginning if you\'re serious\n\n17\n00:01:05,100 --> 00:01:12,090\ncut out all cards rice bread pasta\n\n18\n00:01:09,150 --> 00:01:14,729\npotatoes punch it just have regular\n\n19\n00:01:12,090 --> 00:01:21,200\nviolence but only eat a very small\n\n20\n00:01:14,729 --> 00:01:21,200\namount number 4 chew slowly\n\n21\n00:01:25,670 --> 00:01:34,170\nnumber five keep it up\n\n22\n00:01:30,200 --> 00:01:36,240\nshe kept telling herself Sharon just six\n\n23\n00:01:34,170 --> 00:01:39,149\nmonths out of your life and the rest of\n\n24\n00:01:36,240 --> 00:01:40,950\nyour years will be happier than now it\'s\n\n25\n00:01:39,149 --> 00:01:43,770\nbeen two years and she still keeps\n\n26\n00:01:40,950 --> 00:01:47,789\ntelling herself that she has 20 to lose\n\n27\n00:01:43,770 --> 00:01:50,820\nshe said I have dropped around 75 I keep\n\n28\n00:01:47,789 --> 00:01:53,670\nsaying I have 20 to lose after I lose\n\n29\n00:01:50,820 --> 00:01:54,880\nthe 20 I will probably still be saying I\n\n30\n00:01:53,670 --> 00:02:00,709\nhave to lose 20\n\n31\n00:01:54,880 --> 00:02:00,709\n[Music]\n\n32\n00:02:09,770 --> 00:02:16,169\n[Music]\n\n33\n00:02:19,040 --> 00:02:25,770\nnumber seven do not think of the few\n\n34\n00:02:22,440 --> 00:02:26,170\nmonths ahead instead just do it day by\n\n35\n00:02:25,770 --> 00:02:29,720\nday\n\n36\n00:02:26,170 --> 00:02:47,280\n[Music]\n\n37\n00:02:29,720 --> 00:02:50,580\nnumber eight number nine try to avoid\n\n38\n00:02:47,280 --> 00:02:58,950\nfried foods instead go for grilled or\n\n39\n00:02:50,580 --> 00:03:00,890\nsteamed number ten use stevia instead of\n\n40\n00:02:58,950 --> 00:03:03,780\nsugar\n\n41\n00:03:00,890 --> 00:03:05,820\naccording to stevia calm the stevia\n\n42\n00:03:03,780 --> 00:03:07,860\nplant is a small shrub that has been\n\n43\n00:03:05,820 --> 00:03:10,620\nused as a sweetener for hundreds of\n\n44\n00:03:07,860 --> 00:03:13,230\nyears the stevia leaf extract is a\n\n45\n00:03:10,620 --> 00:03:15,090\nhighly potent natural sweetener that can\n\n46\n00:03:13,230 --> 00:03:17,060\nbe anywhere from two hundred to three\n\n47\n00:03:15,090 --> 00:03:20,400\nhundred fifty times sweeter than sugar\n\n48\n00:03:17,060 --> 00:03:24,510\nthis alternative to sugar is known to\n\n49\n00:03:20,400 --> 00:03:27,210\nhave zero calories so these are the ten\n\n50\n00:03:24,510 --> 00:03:29,430\nvery useful and effective steps the\n\n51\n00:03:27,210 --> 00:03:32,580\ncheran followed as her guide to losing\n\n52\n00:03:29,430 --> 00:03:35,490\nweight but overall this is what Sharon\n\n53\n00:03:32,580 --> 00:03:36,520\nwants to point out well the whole point\n\n54\n00:03:35,490 --> 00:03:42,130\nof it is\n\n55\n00:03:36,520 --> 00:03:43,900\nhing be malevolent and Athene and one\n\n56\n00:03:42,130 --> 00:03:46,060\ncan accept that that it\'s really a\n\n57\n00:03:43,900 --> 00:03:48,370\nlifestyle change one of Sharon\'s\n\n58\n00:03:46,060 --> 00:03:51,010\nfollowers on Instagram posted this\n\n59\n00:03:48,370 --> 00:03:53,290\ncomment and Sharons reply somehow sums\n\n60\n00:03:51,010 --> 00:03:55,620\nup her 10 step guide on how to lose\n\n61\n00:03:53,290 --> 00:03:55,620\nweight\n\n62\n00:04:07,230 --> 00:04:10,400\n[Music]\n\n63\n00:04:12,599 --> 00:04:17,970\nlast February 12 Sharron posted an\n\n64\n00:04:16,019 --> 00:04:21,299\ninspiring message on her Facebook page\n\n65\n00:04:17,970 --> 00:04:27,539\nwherein she looked back to January 2016\n\n66\n00:04:21,299 --> 00:04:31,440\nwhen this was how she looked and then\n\n67\n00:04:27,539 --> 00:04:34,169\nshe made a vow to herself she said I\n\n68\n00:04:31,440 --> 00:04:37,380\nwould not stop until I looked in the\n\n69\n00:04:34,169 --> 00:04:41,599\nmirror and saw the real me again because\n\n70\n00:04:37,380 --> 00:04:44,639\nthese first two pictures never where and\n\n71\n00:04:41,599 --> 00:04:47,220\nthen she posted four more photos of her\n\n72\n00:04:44,639 --> 00:04:49,800\nthis time they were taken just this year\n\n73\n00:04:47,220 --> 00:04:53,960\nwhich was two years after she started\n\n74\n00:04:49,800 --> 00:04:57,960\nchanging her lifestyle and eating habits\n\n75\n00:04:53,960 --> 00:05:01,530\nSharon said she was doing this first for\n\n76\n00:04:57,960 --> 00:05:04,289\nherself secondly she said she wants to\n\n77\n00:05:01,530 --> 00:05:06,449\nlive a long healthy life for and with\n\n78\n00:05:04,289 --> 00:05:10,320\nher children and future grandchildren\n\n79\n00:05:06,449 --> 00:05:12,660\nand lastly she is also doing it for her\n\n80\n00:05:10,320 --> 00:05:17,070\nfans because they deserve the best\n\n81\n00:05:12,660 --> 00:05:19,289\nversion of their idol do you think\n\n82\n00:05:17,070 --> 00:05:22,020\nSharon\'s ten step guide will work for\n\n83\n00:05:19,289 --> 00:05:24,630\nyou are they too hard or are they do\n\n84\n00:05:22,020 --> 00:05:26,789\nabove write your comments below if you\n\n85\n00:05:24,630 --> 00:05:29,789\nhave a weight loss story to share then\n\n86\n00:05:26,789 --> 00:05:31,710\ngo ahead and write that as well don\'t\n\n87\n00:05:29,789 --> 00:05:33,960\nforget to give this video a thumbs up\n\n88\n00:05:31,710 --> 00:05:35,699\nand if you haven\'t subscribed yet click\n\n89\n00:05:33,960 --> 00:05:38,220\nthe subscribe button and we\'d love to\n\n90\n00:05:35,699 --> 00:05:42,020\nkeep you updated with our new videos so\n\n91\n00:05:38,220 --> 00:05:42,020\nI\'ll see you on the next one god bless\n\n','2019-03-17 03:31:25','vyt5c8d4eb388e743.14979855','2019-03-17 03:31:51');

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
  PRIMARY KEY (`ID`,`VIDEO_ID`),
  UNIQUE KEY `ID` (`ID`),
  UNIQUE KEY `YT_COMMENT_ID` (`YT_COMMENT_ID`),
  KEY `VIDEO_ID` (`VIDEO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

LOCK TABLES `COMMENT` WRITE;
/*!40000 ALTER TABLE `COMMENT` DISABLE KEYS */;

INSERT INTO `COMMENT` (`ID`, `VIDEO_ID`, `NAME`, `COMMENT`, `INSERT_TIMESTAMP`, `INSERT_USER_ID`, `YT_COMMENT_ID`)
VALUES
	('vyt5c8a714302a774.28547951','gocwRvLhDf8','Sgt Moose',X'596F7520547562652077696C6C2072756E206F7574206F662068756D616E7320746F2075706C6F616420766964656F73206265666F726520746865792072756E206F7574206F6620766964656F2055524C732E','2019-03-14 23:18:52','vyt5c62d4b82be738.76255738','Ugjx7yGL2o6DEngCoAEC'),
	('vyt5c8a714d79d0a9.48861098','gocwRvLhDf8','Kirby',X'446F6E5C277420776F7272792C2077652063616E20616C77617973207374617274207573696E672074686520677265656B20616C7068616265740A0A0A0A0A0A0A0A2A6568656D6D2A20616C6765627261','2019-03-14 23:18:59','vyt5c62d4b82be738.76255738','UgzaSLUgUyHuy_kDIkp4AaABAg'),
	('vyt5c8d420d4218a8.71658380','hr5Am3HREmY','Ma Amiela Magpantay',X'536F2067616E65726E2E2E2E2061796177206E67206261737461206B6973732E2E2E20677573746F20796179616B61702070612069746F6E6720736920616E6767652E2E2E20617420616E672063616C6F79206179617720736120636865656B2E2E2E20677573746F207061207361206C6970732E2E2E206568206469206B61796F206E6121212120F09FA4A3F09FA4A3F09FA4A3','2019-03-17 02:31:33','vyt5c62d4b82be738.76255738','UgxdMP2qdMMG1GpaNK54AaABAg'),
	('vyt5c8d420e8306f1.11909029','hr5Am3HREmY','Kristian Dayrit',X'536920616E6767652079756E67207469706F6E67206469206D6168696C6967206D6167206D616B652075702E206772616265206C616E6720626968697261206C616E67206B61736920736120617274697374612079616E672067616E64612E206E6170616B612073696D706C6520E29DA4','2019-03-17 02:31:34','vyt5c62d4b82be738.76255738','UgyDmZwKo_-0lybMmMR4AaABAg'),
	('vyt5c8d420fc63f27.93976122','hr5Am3HREmY','Abby Coronado',X'43617267656C2065766572','2019-03-17 02:31:35','vyt5c62d4b82be738.76255738','UgyMNCgwIHTobADay9N4AaABAg'),
	('vyt5c8d4211023277.59617940','hr5Am3HREmY','Kristian Dayrit',X'E29DA4E29DA4E29DA4','2019-03-17 02:31:37','vyt5c62d4b82be738.76255738','UgzIabM0elKpw43eR8Z4AaABAg'),
	('vyt5c8d4269d6a4e8.16790430','gocwRvLhDf8','Nostalgia Nerd',X'5468617420776173206D696768747920696D70726573736976652C2020696E20312074616B65202D20657370656369616C6C7920776974682074686174206E756D626572207468726F776E20696E206E6561722074686520656E6421','2019-03-14 23:18:44','vyt5c62d4b82be738.76255738','UghrBlqdUkxbaHgCoAEC'),
	('vyt5c8d426b165302.58777035','gocwRvLhDf8','Demirramon',X'49206C6F7665207768656E20796F7520656E64206120766964656F2073637265616D696E67205C224F4E452054414B4521212121212121215C22','2019-03-14 23:18:45','vyt5c62d4b82be738.76255738','Ugw9qNU4LPTLOmRXMid4AaABAg'),
	('vyt5c8d426c3ee7a5.06591095','gocwRvLhDf8','Byzantium/Byzantine empire/Eastern Roman Empire',X'42726974697368207673617573652E','2019-03-14 23:18:47','vyt5c62d4b82be738.76255738','Ugx2d4hM2lhifRTHdtt4AaABAg'),
	('vyt5c8d426d7c5851.27130470','gocwRvLhDf8','SweatyHands',X'49207265616420746865207469746C65206173205C22646F20796F7574756265727320657665722072756E206F7574206F662069646561733F5C22','2019-03-14 23:18:49','vyt5c62d4b82be738.76255738','UgxFCqLF7jH6MLotRup4AaABAg'),
	('vyt5c8d426eb580b4.11038226','gocwRvLhDf8','Hadi Junaid',X'303A30342049207468696E6B2049206B6E6F772074686174206C696E6B','2019-03-14 23:18:53','vyt5c62d4b82be738.76255738','UgwfpFmqlGkvY-S4KbV4AaABAg'),
	('vyt5c8d42700dbcd4.60443422','gocwRvLhDf8','skkkr',X'495C276D207265616C6C7920696D70726573736564207468617420796F7520646964207468697320616C6C20696E206F6E652074616B65','2019-03-16 23:04:30','vyt5c62d4b82be738.76255738','Ugg3N-iJjBAu83gCoAEC'),
	('vyt5c8d42713dff77.01041153','gocwRvLhDf8','Steel Xcaliber',X'457665727920596F755475626520766964656F20686173206120756E697175652049642E2E2E2E2E2E2E657863657074206F662057617463684D6F6A6F20616E64207265616374696F6E20766964656F732E','2019-03-14 23:18:50','vyt5c62d4b82be738.76255738','UgxVIo3I5TnqotbxFSZ4AaABAg'),
	('vyt5c8d42727d7a54.41822131','gocwRvLhDf8','fiftybux',X'4973206576657279626F6479206A75737420676F6E6E612069676E6F726520746865206661637420746861742074686520766964656F20617420303A3034206973204E6576657220476F6E6E61204769766520796F752075703F','2019-03-16 23:04:34','vyt5c62d4b82be738.76255738','UgzpJSoyVRZjK-1__il4AaABAg'),
	('vyt5c8d4273adec56.14364772','gocwRvLhDf8','Aidan Mastro',X'313A3439206A757374206120676C6F7665206368696C6C696E','2019-03-14 23:18:55','vyt5c62d4b82be738.76255738','Ugz0IkNpPyAuT0NR20h4AaABAg'),
	('vyt5c8d4274e926f3.26622271','gocwRvLhDf8','formidable',X'69742061637475616C6C7920646F65736EE28099742072756E207468652075726C73207468726F75676820612070726F66616E6974792066696C7465722C2074686572652061726520766964656F73207769746820737765617220776F72647320696E207468652075726C','2019-03-14 23:18:57','vyt5c62d4b82be738.76255738','Ugy1oWJvqGImISspmqx4AaABAg'),
	('vyt5c8d4f2aaeda00.61925941','YXgn1i8O-gM','Ann Collin',X'4D756C6120617461206E67206261746120616B6F20697361206C616E67206C616769206B6F206E61726972696E6967206E612070726F626C656D61206E6920736861726F6E20617920616E6720776569676874206E79612E204269676C61207379616E6720746174616261207461706F732070617061796174207461706F732074617461626120756C69742E','2019-03-17 03:31:36','vyt5c8d4eb388e743.14979855','UgwurkFyn7VRXXb1hlx4AaABAg'),
	('vyt5c8d4f2c0f80e8.99614788','YXgn1i8O-gM','rebecca wakabayashi',X'6472696E6B20677265656E2074656120616E64206578657263697365206576657279206461792E776167206B756D61696E206E672074696E61706179206174206E6F6F646C6573206172617720617261772E6D61746161732063616C6F72696573206E69746F2E7761672064616D6968616E206E67206B616E696E2E','2019-03-17 03:31:37','vyt5c8d4eb388e743.14979855','Ugzo93lChRhszfLXDdx4AaABAg'),
	('vyt5c8d4f2d57d177.66294283','YXgn1i8O-gM','ANNE AIZON WESTLIFERS',X'7468616E6B2020666F722020746869732020313020207469707320206974732020766572792020696D706F7274616E742E2E','2019-03-17 03:31:39','vyt5c8d4eb388e743.14979855','UgyN5goKk1mxapat2gF4AaABAg'),
	('vyt5c8d4f2e981fe4.18633697','YXgn1i8O-gM','Darling Cabanos',X'69206D69737320796F75206D616D20536861726F6E212121','2019-03-17 03:31:40','vyt5c8d4eb388e743.14979855','Ugy5RNopN211_7dFnMZ4AaABAg'),
	('vyt5c8d4f300f0766.37082846','YXgn1i8O-gM','Massage Bot',X'4E6167207061206C69706F2079616E2E204E65766572206E616D616E2070756D617561742079616E20736920736861726F6E206B756E67206469206E616770617061206C69706F2E','2019-03-17 03:31:41','vyt5c8d4eb388e743.14979855','UgzHk8iKxz-F21dkM354AaABAg'),
	('vyt5c8d4f315120f8.96024876','YXgn1i8O-gM','Pinky Heart',X'4D6168697261702074616C616761206D61672064696574206D6172616D69206B6173696E67206D617361726170206E6120706167206B61696E206174206D696E73616E2079756E67207374726573732064696E616461616E207361207061676B61696E20617420616D696E696E206E616B616B6174616D6164206D6167206578657263697365','2019-03-17 03:31:42','vyt5c8d4eb388e743.14979855','UgwjNd68A6ZB8CB5LoJ4AaABAg'),
	('vyt5c8d4f32aeb362.01241924','YXgn1i8O-gM','Ïñœ Õçī',X'4D617361726170206B6179616E67206B756D61696E2121','2019-03-17 03:31:43','vyt5c8d4eb388e743.14979855','UgwJJLR6-C3Qr6ezrAR4AaABAg'),
	('vyt5c8d4f33ee76f1.64991742','YXgn1i8O-gM','pikapikachew kay Miranda',X'45206B696C616C6120646E206E6D616E2078616E672070617265746F6B65206E672070617265746F6B652065692E2E6A75737420736179696E672E2E','2019-03-17 03:31:45','vyt5c8d4eb388e743.14979855','UgxnDrW_9eiJNPMbxet4AaABAg'),
	('vyt5c8d4f3530b3e0.61005803','YXgn1i8O-gM','Eadie Angelo',X'42616C6F6E657921205468616E6B7320746F204741535452494320425950415353212121','2019-03-17 03:31:46','vyt5c8d4eb388e743.14979855','UgyISM7x_8NkGAfdHBx4AaABAg'),
	('vyt5c8d4f366b88e6.31227617','YXgn1i8O-gM','Ærophones ÆSS',X'47616C696E67212121204B656570206974207570204D732E20536861726F6E2E','2019-03-17 03:31:47','vyt5c8d4eb388e743.14979855','UgwzuqG4mjTEKksl2n14AaABAg');

/*!40000 ALTER TABLE `COMMENT` ENABLE KEYS */;
UNLOCK TABLES;


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
  PRIMARY KEY (`ID`,`VIDEO_ID`),
  UNIQUE KEY `ID` (`ID`),
  UNIQUE KEY `VIDEO_ID` (`VIDEO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

LOCK TABLES `RATING` WRITE;
/*!40000 ALTER TABLE `RATING` DISABLE KEYS */;

INSERT INTO `RATING` (`ID`, `VIDEO_ID`, `RATING`, `OVERALL_VIEW`, `LIKES`, `DISLIKES`, `INSERT_TIMESTAMP`, `INSERT_USER_ID`, `UPDATE_TIMESTAMP`)
VALUES
	('vyt5c8a70cf519dc3.05469470','GONejubmxYo','0',4,0,0,'2019-03-14 23:18:39','vyt5c62d4b82be738.76255738',NULL),
	('vyt5c8d104d6add90.10388369','buyKXjjzG8U','0',127,0,0,'2019-03-16 23:03:41','vyt5c62d4b82be738.76255738',NULL),
	('vyt5c8d1062522a51.61732706','m7Bc3pLyij0','0',212635366,4114112,67561,'2019-03-16 23:04:02','vyt5c62d4b82be738.76255738',NULL),
	('vyt5c8d10648ecf42.82338694','9mQk7Evt6Vs','0',103813989,1240780,34933,'2019-03-16 23:04:04','vyt5c62d4b82be738.76255738',NULL),
	('vyt5c8d106a026860.47899344','ENRFQ2-y0AM','0',26903970,125519,11346,'2019-03-16 23:04:10','vyt5c62d4b82be738.76255738',NULL),
	('vyt5c8d3ff84ef1a7.42423609','QSWGgUDwKt4','0',1156,70,1,'2019-03-17 02:27:04','vyt5c62d4b82be738.76255738',NULL),
	('vyt5c8d402c1da860.24279633','RtdBI-0EE0Y','0',68434,879,16,'2019-03-17 02:27:26','vyt5c62d4b82be738.76255738','2019-03-17 02:27:56'),
	('vyt5c8d402c699522.48993109','g_5LItJIi90','0',441427,6224,100,'2019-03-17 02:27:27','vyt5c62d4b82be738.76255738','2019-03-17 02:27:56'),
	('vyt5c8d402ccce483.89953478','42JyRjrLzjY','0',2060330,27700,919,'2019-03-17 02:27:27','vyt5c62d4b82be738.76255738','2019-03-17 02:27:56'),
	('vyt5c8d402e43efb7.72618758','7fAFy9v5Rk0','0',104,6,2,'2019-03-17 02:27:28','vyt5c62d4b82be738.76255738','2019-03-17 02:27:58'),
	('vyt5c8d402f4c90c3.39499647','PxRt_JeMVBo','0',3037,60,4,'2019-03-17 02:27:30','vyt5c62d4b82be738.76255738','2019-03-17 02:27:59'),
	('vyt5c8d40301bf665.64986011','8OE3DOpgwcY','0',912,6,0,'2019-03-17 02:27:31','vyt5c62d4b82be738.76255738','2019-03-17 02:28:00'),
	('vyt5c8d40307fc065.45189514','WzQBAc8i73E','0',9910545,119448,1551,'2019-03-17 02:27:31','vyt5c62d4b82be738.76255738','2019-03-17 02:28:00'),
	('vyt5c8d4030cf42c7.62513807','_MTbjHKtobY','0',8243805,70173,1231,'2019-03-17 02:27:32','vyt5c62d4b82be738.76255738','2019-03-17 02:28:00'),
	('vyt5c8d40313b0de9.76786253','-x8Sx5LHDxI','0',112222,3147,39,'2019-03-17 02:27:31','vyt5c62d4b82be738.76255738','2019-03-17 02:28:01'),
	('vyt5c8d40318bfbf3.94591484','esxJYGrJLkw','0',380,5,0,'2019-03-17 02:27:32','vyt5c62d4b82be738.76255738','2019-03-17 02:28:01'),
	('vyt5c8d4031ea76e7.20516398','M4rMYvR4D-0','0',680,14,1,'2019-03-17 02:28:01','vyt5c62d4b82be738.76255738',NULL),
	('vyt5c8d403246b664.90271838','CDNyZeD87oc','0',38807,1337,19,'2019-03-17 02:27:32','vyt5c62d4b82be738.76255738','2019-03-17 02:28:02'),
	('vyt5c8d40426daaf9.14522392','XTrnSJLXGBg','0',6447693,241618,5263,'2019-03-17 02:27:24','vyt5c62d4b82be738.76255738','2019-03-17 02:28:18'),
	('vyt5c8d40438829f2.04304524','c2-0Igwf6Es','0',66488415,87576,39078,'2019-03-17 02:27:24','vyt5c62d4b82be738.76255738','2019-03-17 02:28:19'),
	('vyt5c8d4043d6e3d3.36485534','KuOxAuRjFfE','0',5469298,123057,1822,'2019-03-17 02:28:19','vyt5c62d4b82be738.76255738',NULL),
	('vyt5c8d404446c0b7.63945604','aNaOOnc0ufo','0',752395,23351,570,'2019-03-17 02:27:25','vyt5c62d4b82be738.76255738','2019-03-17 02:28:20'),
	('vyt5c8d4044aa8e05.68352349','Yw0OeCMB1MM','0',24450592,381665,6309,'2019-03-17 02:28:20','vyt5c62d4b82be738.76255738',NULL),
	('vyt5c8d40451b1710.95886147','TPCaWQQo11A','0',6598943,82381,882,'2019-03-17 02:28:21','vyt5c62d4b82be738.76255738',NULL),
	('vyt5c8d40457e4858.94642125','FPBmVnsZaN8','0',104532,7794,83,'2019-03-17 02:27:26','vyt5c62d4b82be738.76255738','2019-03-17 02:28:21'),
	('vyt5c8d4045e21d63.98304460','Z6L4u2i97Rw','0',15677487,174372,2800,'2019-03-17 02:27:30','vyt5c62d4b82be738.76255738','2019-03-17 02:28:21'),
	('vyt5c8d4046455ab9.31846422','pTRTilG1uF0','0',901839,39418,3148,'2019-03-17 02:28:22','vyt5c62d4b82be738.76255738',NULL),
	('vyt5c8d4046929ba7.04172037','83RUhxsfLWs','0',12196980,149876,1964,'2019-03-17 02:27:28','vyt5c62d4b82be738.76255738','2019-03-17 02:28:22'),
	('vyt5c8d4046e82196.70511045','CYDP_8UTAus','0',26182526,451987,5743,'2019-03-17 02:27:26','vyt5c62d4b82be738.76255738','2019-03-17 02:28:22'),
	('vyt5c8d404757c5c8.35738706','t8WuKJa6L5E','0',7700686,109115,2586,'2019-03-17 02:27:25','vyt5c62d4b82be738.76255738','2019-03-17 02:28:23'),
	('vyt5c8d4047bc5f61.80565367','a1Rijk_TMHA','0',9055,36,2,'2019-03-17 02:28:23','vyt5c62d4b82be738.76255738',NULL),
	('vyt5c8d40482ba9a1.65366626','0Wa_CR0H8g4','0',9925240,142724,1813,'2019-03-17 02:27:29','vyt5c62d4b82be738.76255738','2019-03-17 02:28:24'),
	('vyt5c8d404878cd04.84636394','A4LiP8WFuG0','0',2910259,35597,458,'2019-03-17 02:27:28','vyt5c62d4b82be738.76255738','2019-03-17 02:28:24'),
	('vyt5c8d4048db1ca6.49002175','TXcg25C56xM','0',2234063,30001,403,'2019-03-17 02:28:24','vyt5c62d4b82be738.76255738',NULL),
	('vyt5c8d404944f634.12930809','aKfO9o2IPJ0','0',2773772,37829,556,'2019-03-17 02:27:29','vyt5c62d4b82be738.76255738','2019-03-17 02:28:25'),
	('vyt5c8d40498e4d42.19741088','H969EhPHK7w','0',212071,2444,244,'2019-03-17 02:27:33','vyt5c62d4b82be738.76255738','2019-03-17 02:28:25'),
	('vyt5c8d4049e17eb4.93967263','OGl5V5ZNya0','0',20511946,430351,13478,'2019-03-17 02:27:24','vyt5c62d4b82be738.76255738','2019-03-17 02:28:25'),
	('vyt5c8d404a374b69.41943117','uREGk0fT0GQ','0',1882668,65707,448,'2019-03-17 02:27:29','vyt5c62d4b82be738.76255738','2019-03-17 02:28:26'),
	('vyt5c8d404a867980.98401969','uKWcIaJtS6Q','0',14576605,306194,7325,'2019-03-17 02:28:26','vyt5c62d4b82be738.76255738',NULL),
	('vyt5c8d404ae6e253.77401304','LmAWaRoZ-AQ','0',378936,7277,154,'2019-03-17 02:28:26','vyt5c62d4b82be738.76255738',NULL),
	('vyt5c8d404b56c718.99798911','DhZFoinQpI0','0',57340,1613,18,'2019-03-17 02:28:27','vyt5c62d4b82be738.76255738',NULL),
	('vyt5c8d404ba1e5f2.67026459','odi-wxvklvY','0',692908,12410,427,'2019-03-17 02:28:27','vyt5c62d4b82be738.76255738',NULL),
	('vyt5c8d404bed1e49.04477226','DfFlBWCQjzA','0',7178,288,15,'2019-03-17 02:28:27','vyt5c62d4b82be738.76255738',NULL),
	('vyt5c8d4074018ab8.24865584','UmdhHo5CpQ4','0',9,0,0,'2019-03-17 02:28:46','vyt5c62d4b82be738.76255738','2019-03-17 02:29:08'),
	('vyt5c8d40744cfc62.28505585','Kzd9CmFizSk','0',117,1,0,'2019-03-17 02:28:47','vyt5c62d4b82be738.76255738','2019-03-17 02:29:08'),
	('vyt5c8d407497eaf9.63887408','t9n_fzf93gg','0',6849,29,12,'2019-03-17 02:28:47','vyt5c62d4b82be738.76255738','2019-03-17 02:29:08'),
	('vyt5c8d4075b6c0d7.91853399','6A5yebOc9vI','0',19,0,0,'2019-03-17 02:28:47','vyt5c62d4b82be738.76255738','2019-03-17 02:29:09'),
	('vyt5c8d4076265722.61278243','LrjzN-lVD1M','0',252,10,0,'2019-03-17 02:28:48','vyt5c62d4b82be738.76255738','2019-03-17 02:29:10'),
	('vyt5c8d4076819625.37854518','TcjbnJxRHDw','0',127,3,0,'2019-03-17 02:28:48','vyt5c62d4b82be738.76255738','2019-03-17 02:29:10'),
	('vyt5c8d4076db3430.84848870','70ixHz7Bc1M','0',103,1,0,'2019-03-17 02:28:49','vyt5c62d4b82be738.76255738','2019-03-17 02:29:10'),
	('vyt5c8d4077456ec3.47137920','B1s2sVg-4Ek','0',47,0,0,'2019-03-17 02:28:49','vyt5c62d4b82be738.76255738','2019-03-17 02:29:11'),
	('vyt5c8d4077a914c6.10291404','9Mcb5ke8sD8','0',6,0,0,'2019-03-17 02:28:49','vyt5c62d4b82be738.76255738','2019-03-17 02:29:11'),
	('vyt5c8d4078006ad3.31432181','Po1cpdFUS5w','0',450,2,0,'2019-03-17 02:28:50','vyt5c62d4b82be738.76255738','2019-03-17 02:29:12'),
	('vyt5c8d40784841b5.83803267','P3bPwLDg6xg','0',44,0,0,'2019-03-17 02:28:50','vyt5c62d4b82be738.76255738','2019-03-17 02:29:12'),
	('vyt5c8d407896f079.13310604','JEYgAHahoQE','0',39,1,0,'2019-03-17 02:28:50','vyt5c62d4b82be738.76255738','2019-03-17 02:29:12'),
	('vyt5c8d40fa54dc69.86617096','0Ny-OrHnKyY','0',561,11,0,'2019-03-17 02:31:22','vyt5c62d4b82be738.76255738',NULL),
	('vyt5c8d40fb5d8459.21150434','W_SqDsMAass','0',2082,43,0,'2019-03-17 02:31:23','vyt5c62d4b82be738.76255738',NULL),
	('vyt5c8d40fc334db5.33975705','SKND2qUFGm0','0',585,11,0,'2019-03-17 02:31:24','vyt5c62d4b82be738.76255738',NULL),
	('vyt5c8d41fa7238d7.30643858','7erm2ykJNqM','0',19138,274,7,'2019-03-16 23:02:47','vyt5c62d4b82be738.76255738','2019-03-17 02:35:38'),
	('vyt5c8d41fad55359.35506014','Rh9DY457bNM','0',195153,2084,40,'2019-03-16 23:02:48','vyt5c62d4b82be738.76255738','2019-03-17 02:35:38'),
	('vyt5c8d41fb45ae91.23604876','hr5Am3HREmY','0',24973,320,6,'2019-03-16 23:02:48','vyt5c62d4b82be738.76255738','2019-03-17 02:35:39'),
	('vyt5c8d41fba96948.17903783','yvX8axLtwPI','0',1302617,14107,171,'2019-03-16 23:02:48','vyt5c62d4b82be738.76255738','2019-03-17 02:35:39'),
	('vyt5c8d41fc18ee28.34515342','DrAMsCKv_GM','0',97,0,0,'2019-03-14 22:52:45','vyt5c62d4b82be738.76255738','2019-03-17 02:35:40'),
	('vyt5c8d41fc644aa8.92254768','CcQ0fxjTC8M','0',7372,107,0,'2019-03-16 23:02:49','vyt5c62d4b82be738.76255738','2019-03-17 02:35:40'),
	('vyt5c8d41fcc81440.41673052','GChKQWIaTK4','0',30577,192,8,'2019-03-16 23:02:50','vyt5c62d4b82be738.76255738','2019-03-17 02:35:40'),
	('vyt5c8d41fd1f48a6.90854574','9Rr1ufmip0I','0',15,0,0,'2019-03-16 23:02:50','vyt5c62d4b82be738.76255738','2019-03-17 02:35:41'),
	('vyt5c8d41fd6a6463.66419909','EJkrUM-82Us','0',17,0,0,'2019-03-16 23:02:51','vyt5c62d4b82be738.76255738','2019-03-17 02:35:41'),
	('vyt5c8d41fdce4865.60571778','aOggsx8aojQ','0',133,2,0,'2019-03-16 23:02:51','vyt5c62d4b82be738.76255738','2019-03-17 02:35:41'),
	('vyt5c8d41fe24b076.44299435','oO8K1DKyc1k','0',236529,1998,18,'2019-03-16 23:02:51','vyt5c62d4b82be738.76255738','2019-03-17 02:35:42'),
	('vyt5c8d41fe88ea13.95134409','UFyjzB_8eKY','0',111904,839,32,'2019-03-16 23:02:52','vyt5c62d4b82be738.76255738','2019-03-17 02:35:42'),
	('vyt5c8d41fed3f269.33039268','LLp4kgZZ4-o','0',6660,216,1,'2019-03-16 23:02:52','vyt5c62d4b82be738.76255738','2019-03-17 02:35:42'),
	('vyt5c8d41ff440f92.97881156','AoZ8zif4Oos','0',190,35,0,'2019-03-16 23:02:53','vyt5c62d4b82be738.76255738','2019-03-17 02:35:43'),
	('vyt5c8d41ff8dbaa8.49422885','pY_X_w4MrXE','0',41,1,0,'2019-03-16 23:02:53','vyt5c62d4b82be738.76255738','2019-03-17 02:35:43'),
	('vyt5c8d41ffd66993.50839637','wwKIPq4OQLw','0',2218,42,1,'2019-03-16 23:02:52','vyt5c62d4b82be738.76255738','2019-03-17 02:35:43'),
	('vyt5c8d420028ed39.60751301','zPdewquVB2w','0',662,15,1,'2019-03-16 23:02:54','vyt5c62d4b82be738.76255738','2019-03-17 02:35:44'),
	('vyt5c8d42007b3680.76375236','-nrZm2_mEAw','0',202,0,0,'2019-03-16 23:02:54','vyt5c62d4b82be738.76255738','2019-03-17 02:35:44'),
	('vyt5c8d4200c68ef7.03112246','EM08dv1FLug','0',14328,117,6,'2019-03-16 23:02:54','vyt5c62d4b82be738.76255738','2019-03-17 02:35:44'),
	('vyt5c8d420136d984.17844821','3wnZrha0ImM','0',1027,13,0,'2019-03-16 23:02:55','vyt5c62d4b82be738.76255738','2019-03-17 02:35:45'),
	('vyt5c8d42018160f3.28185025','jcRF12fj5bI','0',461,8,0,'2019-03-16 23:02:55','vyt5c62d4b82be738.76255738','2019-03-17 02:35:45'),
	('vyt5c8d4201e57e05.41260364','--ttvZEOftI','0',930,8,0,'2019-03-16 23:02:56','vyt5c62d4b82be738.76255738','2019-03-17 02:35:45'),
	('vyt5c8d4202461621.69835507','F6rIbwCpOsE','0',44,4,0,'2019-03-16 23:02:56','vyt5c62d4b82be738.76255738','2019-03-17 02:35:46'),
	('vyt5c8d42028eb9e3.24668635','UkcvHzSzadw','0',74231,685,15,'2019-03-16 23:02:56','vyt5c62d4b82be738.76255738','2019-03-17 02:35:46'),
	('vyt5c8d4202eb5506.07373541','oFGA31WgZQo','0',162,4,2,'2019-03-16 23:02:57','vyt5c62d4b82be738.76255738','2019-03-17 02:35:46'),
	('vyt5c8d42471016b4.68666534','RUfGbuiWGRE','0',505574,1838,35,'2019-03-14 23:19:34','vyt5c62d4b82be738.76255738','2019-03-17 02:36:55'),
	('vyt5c8d42475bdc05.37789692','56PISwq3pmY','0',3661,114,0,'2019-03-16 23:03:33','vyt5c62d4b82be738.76255738','2019-03-17 02:36:55'),
	('vyt5c8d4247bdbad7.97726450','jFdUTbyNa1Y','0',47603,52,2,'2019-03-14 23:19:35','vyt5c62d4b82be738.76255738','2019-03-17 02:36:55'),
	('vyt5c8d4248149a15.36449442','xvYddgYG98Q','0',23804,122,2,'2019-03-14 23:19:35','vyt5c62d4b82be738.76255738','2019-03-17 02:36:56'),
	('vyt5c8d4248792680.27323777','lwOu6xfR7R8','0',32631,517,6,'2019-03-16 23:03:33','vyt5c62d4b82be738.76255738','2019-03-17 02:36:56'),
	('vyt5c8d4248dcd449.50578261','jjo4jGqwmO8','0',6461,142,5,'2019-03-16 23:03:34','vyt5c62d4b82be738.76255738','2019-03-17 02:36:56'),
	('vyt5c8d42494c86a8.73384705','1hbeKJhLeeQ','0',143688,1449,32,'2019-03-16 23:03:34','vyt5c62d4b82be738.76255738','2019-03-17 02:36:57'),
	('vyt5c8d4249977c21.17589921','NZ0RZue_W38','0',467809,1616,59,'2019-03-16 23:03:35','vyt5c62d4b82be738.76255738','2019-03-17 02:36:57'),
	('vyt5c8d4249f24857.76934095','C6bQapUC1Yk','0',821932,4026,122,'2019-03-16 23:03:35','vyt5c62d4b82be738.76255738','2019-03-17 02:36:57'),
	('vyt5c8d424a4811f4.38846493','li0PjOUgUbY','0',2181,57,1,'2019-03-16 23:03:36','vyt5c62d4b82be738.76255738','2019-03-17 02:36:58'),
	('vyt5c8d424a938f88.73577300','cCfeCVT3TTU','0',1002,0,0,'2019-03-16 23:03:35','vyt5c62d4b82be738.76255738','2019-03-17 02:36:58'),
	('vyt5c8d424ae9cb97.34026696','IbHtJi7zFO8','0',379,8,0,'2019-03-16 23:03:36','vyt5c62d4b82be738.76255738','2019-03-17 02:36:58'),
	('vyt5c8d424b5899f7.84658493','XC_IdvhtL7U','0',33,0,0,'2019-03-16 23:03:36','vyt5c62d4b82be738.76255738','2019-03-17 02:36:59'),
	('vyt5c8d424bbd3ac2.68119179','ewWdo9ut52M','0',251432,1681,19,'2019-03-16 23:03:38','vyt5c62d4b82be738.76255738','2019-03-17 02:36:59'),
	('vyt5c8d424c2c7ce3.76576918','JVyoLB8CbZ8','0',134,3,0,'2019-03-16 23:03:38','vyt5c62d4b82be738.76255738','2019-03-17 02:37:00'),
	('vyt5c8d424c906da9.70911865','fuSrk4N87uY','0',3282,3,3,'2019-03-16 23:03:38','vyt5c62d4b82be738.76255738','2019-03-17 02:37:00'),
	('vyt5c8d424cd81770.67506837','C3IY_8w3LHU','0',183824,567,4,'2019-03-16 23:03:37','vyt5c62d4b82be738.76255738','2019-03-17 02:37:00'),
	('vyt5c8d424d3211e7.62646779','UK0AeySxdQA','0',544,4,1,'2019-03-16 23:03:37','vyt5c62d4b82be738.76255738','2019-03-17 02:37:01'),
	('vyt5c8d424d7d8358.12296939','1dYYzE56OjM','0',1567,60,1,'2019-03-16 23:03:39','vyt5c62d4b82be738.76255738','2019-03-17 02:37:01'),
	('vyt5c8d424dc91e76.23899124','1mCMyj4aMpU','0',10564,207,1,'2019-03-16 23:03:39','vyt5c62d4b82be738.76255738','2019-03-17 02:37:01'),
	('vyt5c8d424e1ee9e1.72904946','cs98MtY0qjU','0',135,0,0,'2019-03-16 23:03:39','vyt5c62d4b82be738.76255738','2019-03-17 02:37:02'),
	('vyt5c8d424e69c785.79943567','vWxq4GBlhuQ','0',287,5,0,'2019-03-16 23:03:40','vyt5c62d4b82be738.76255738','2019-03-17 02:37:02'),
	('vyt5c8d424eb4efe2.14857742','tdqZiuibACE','0',40,0,0,'2019-03-17 02:30:59','vyt5c62d4b82be738.76255738','2019-03-17 02:37:02'),
	('vyt5c8d424f1c9b65.98255076','q__EAhPEDVk','0',37585,39,4,'2019-03-16 23:03:41','vyt5c62d4b82be738.76255738','2019-03-17 02:37:03'),
	('vyt5c8d424f684bf3.53750849','YZrTvBdIKhA','0',29509,309,1,'2019-03-16 23:03:40','vyt5c62d4b82be738.76255738','2019-03-17 02:37:03'),
	('vyt5c8d425ae38b02.84578948','gocwRvLhDf8','0',2004755,85667,774,'2019-03-14 23:18:38','vyt5c62d4b82be738.76255738','2019-03-17 02:37:14'),
	('vyt5c8d425b524383.73584142','M_ThtCRAySw','0',16372931,174002,8887,'2019-03-16 23:03:59','vyt5c62d4b82be738.76255738','2019-03-17 02:37:15'),
	('vyt5c8d425bb63910.77520937','YbJOTdZBX1g','0',168745928,2567537,16328918,'2019-03-16 23:03:59','vyt5c62d4b82be738.76255738','2019-03-17 02:37:15'),
	('vyt5c8d425c2615b7.28428970','_quu68XXHEs','0',14279336,123461,12421,'2019-03-16 23:04:01','vyt5c62d4b82be738.76255738','2019-03-17 02:37:16'),
	('vyt5c8d425c83d828.76119369','9g2U12SsRns','0',1802667,0,0,'2019-03-16 23:04:00','vyt5c62d4b82be738.76255738','2019-03-17 02:37:16'),
	('vyt5c8d425ceeb949.88348576','JePnQ1gSagc','0',86427174,1350205,32045,'2019-03-16 23:04:00','vyt5c62d4b82be738.76255738','2019-03-17 02:37:16'),
	('vyt5c8d425d5de588.32594856','mbN8UH8FBm8','0',39007729,172275,14028,'2019-03-16 23:04:01','vyt5c62d4b82be738.76255738','2019-03-17 02:37:17'),
	('vyt5c8d425dc17cd9.92950819','fNubFbeIFms','0',12360402,122595,7947,'2019-03-16 23:04:03','vyt5c62d4b82be738.76255738','2019-03-17 02:37:17'),
	('vyt5c8d425e31f816.00788467','CAb_bCtKuXg','0',61319035,1424286,33649,'2019-03-16 23:04:02','vyt5c62d4b82be738.76255738','2019-03-17 02:37:18'),
	('vyt5c8d425e95ca59.42562297','VyfCR2Fy4_w','0',31108,279,115,'2019-03-16 23:04:04','vyt5c62d4b82be738.76255738','2019-03-17 02:37:18'),
	('vyt5c8d425f062f32.35762162','Mx2-3VLEDf0','0',2164,15,7,'2019-03-17 02:37:19','vyt5c62d4b82be738.76255738',NULL),
	('vyt5c8d425f4e5e35.02831304','kHLHSlExFis','0',212668242,3409175,398021,'2019-03-16 23:04:04','vyt5c62d4b82be738.76255738','2019-03-17 02:37:19'),
	('vyt5c8d425fb4e231.61699458','pbMwTqkKSps','0',176577451,3774636,97935,'2019-03-17 02:37:19','vyt5c62d4b82be738.76255738',NULL),
	('vyt5c8d4260244f62.18148121','YKx5Yd2zvKk','0',4237,120,9,'2019-03-14 23:18:38','vyt5c62d4b82be738.76255738','2019-03-17 02:37:20'),
	('vyt5c8d4261439cc8.38937630','ShZ978fBl6Y','0',356875920,2425444,48922,'2019-03-16 23:04:05','vyt5c62d4b82be738.76255738','2019-03-17 02:37:21'),
	('vyt5c8d4261a7a967.01743085','VY1eFxgRR-k','0',198009311,2283045,100388,'2019-03-16 23:04:06','vyt5c62d4b82be738.76255738','2019-03-17 02:37:21'),
	('vyt5c8d4262170ed6.05142543','VDa5iGiPgGs','0',159513386,2086161,173117,'2019-03-16 23:04:07','vyt5c62d4b82be738.76255738','2019-03-17 02:37:22'),
	('vyt5c8d42627b1207.74207824','6wVQS5qzUwM','0',701,19,1,'2019-03-16 23:04:06','vyt5c62d4b82be738.76255738','2019-03-17 02:37:22'),
	('vyt5c8d4262d1efb3.39627479','4_5lPJ5kFBs','0',52855,353,315,'2019-03-16 23:04:10','vyt5c62d4b82be738.76255738','2019-03-17 02:37:22'),
	('vyt5c8d426326e367.37318899','OKNXn2qCEws','0',52502991,1076524,29272,'2019-03-16 23:04:06','vyt5c62d4b82be738.76255738','2019-03-17 02:37:23'),
	('vyt5c8d42638133f3.77445915','VYOjWnS4cMY','0',512570669,7760996,601988,'2019-03-16 23:04:07','vyt5c62d4b82be738.76255738','2019-03-17 02:37:23'),
	('vyt5c8d4263e50f10.60927592','52nfjRzIaj8','0',128387403,1183238,26750,'2019-03-16 23:04:08','vyt5c62d4b82be738.76255738','2019-03-17 02:37:23'),
	('vyt5c8d426454f012.34612471','-PLCJqiKbjw','0',38562104,379718,15769,'2019-03-16 23:04:08','vyt5c62d4b82be738.76255738','2019-03-17 02:37:24'),
	('vyt5c8d4264b8fe96.53683196','DX8D4FRUnvY','0',19326753,51092,3377,'2019-03-17 02:37:24','vyt5c62d4b82be738.76255738',NULL),
	('vyt5c8d426528cb05.25938424','EHdK5U2hf4o','0',15754637,1081605,9246,'2019-03-16 23:04:08','vyt5c62d4b82be738.76255738','2019-03-17 02:37:25'),
	('vyt5c8d4ee3401060.72306936','_sPqIXqzJNg','0',4175711,10163,171,'2019-03-17 03:30:43','vyt5c8d4eb388e743.14979855',NULL),
	('vyt5c8d4ee3a23094.32938765','LNd3n7nSTkI','0',1557,10,0,'2019-03-17 03:30:43','vyt5c8d4eb388e743.14979855',NULL),
	('vyt5c8d4ee4b488f5.27881625','rabRsvRERk0','0',63,3,1,'2019-03-17 03:30:44','vyt5c8d4eb388e743.14979855',NULL),
	('vyt5c8d4ee5c91015.37338230','sQdzyzKYnjM','0',3565,18,2,'2019-03-17 03:30:45','vyt5c8d4eb388e743.14979855',NULL),
	('vyt5c8d4ee6de4fc1.17020321','lYAXzbn67v0','0',1471,20,0,'2019-03-17 03:30:46','vyt5c8d4eb388e743.14979855',NULL),
	('vyt5c8d4ee81067a7.61450866','Mpis9UWQjSA','0',44,1,0,'2019-03-17 03:30:48','vyt5c8d4eb388e743.14979855',NULL),
	('vyt5c8d4ee858bcd3.20298601','DZU7dyQnnw4','0',3406,14,2,'2019-03-17 03:30:48','vyt5c8d4eb388e743.14979855',NULL),
	('vyt5c8d4ee97a3f38.30456144','aE4CpTBsRYs','0',35,2,0,'2019-03-17 03:30:49','vyt5c8d4eb388e743.14979855',NULL),
	('vyt5c8d4ee9ddf540.03358900','bdsL4HNJn24','0',20388,156,8,'2019-03-17 03:30:49','vyt5c8d4eb388e743.14979855',NULL),
	('vyt5c8d4eea4e96f2.27335096','SE2n-D30DzE','0',302,3,0,'2019-03-17 03:30:50','vyt5c8d4eb388e743.14979855',NULL),
	('vyt5c8d4eeab2edf3.29798568','vJIm9-QwrSA','0',36,0,0,'2019-03-17 03:30:50','vyt5c8d4eb388e743.14979855',NULL),
	('vyt5c8d4eeb1461b3.36172099','7t2HUUVOr-0','0',787309,3160,405,'2019-03-17 03:30:51','vyt5c8d4eb388e743.14979855',NULL),
	('vyt5c8d4eeb5e9b61.16979830','n5RIrme5OtI','0',9,0,0,'2019-03-17 03:30:51','vyt5c8d4eb388e743.14979855',NULL),
	('vyt5c8d4eebb7e272.00850302','YXgn1i8O-gM','0',180198,1620,92,'2019-03-17 03:30:51','vyt5c8d4eb388e743.14979855',NULL),
	('vyt5c8d4eec118411.57229390','9Mqgv3amcOQ','0',61,0,0,'2019-03-17 03:30:52','vyt5c8d4eb388e743.14979855',NULL),
	('vyt5c8d4eed2c9048.51040476','qs1Rt9gKcQo','0',4650,16,3,'2019-03-17 03:30:53','vyt5c8d4eb388e743.14979855',NULL),
	('vyt5c8d4eed9216b9.06506780','gJ_7mG7VKqg','0',26,0,0,'2019-03-17 03:30:53','vyt5c8d4eb388e743.14979855',NULL),
	('vyt5c8d4eeddc9121.16941821','T7TZLGD88-c','0',1124,14,0,'2019-03-17 03:30:53','vyt5c8d4eb388e743.14979855',NULL),
	('vyt5c8d4eef0776f9.37081543','0B2FzAK6-O0','0',37,2,0,'2019-03-17 03:30:55','vyt5c8d4eb388e743.14979855',NULL),
	('vyt5c8d4eef6b5765.02966002','8Wy3SSfFO78','0',306,5,0,'2019-03-17 03:30:55','vyt5c8d4eb388e743.14979855',NULL),
	('vyt5c8d4eefcfbe96.27020878','1rrRL5TC6DY','0',140,4,0,'2019-03-17 03:30:55','vyt5c8d4eb388e743.14979855',NULL),
	('vyt5c8d4ef03f5286.49348578','1l3OjNPA8SU','0',3770769,42729,1374,'2019-03-17 03:30:56','vyt5c8d4eb388e743.14979855',NULL),
	('vyt5c8d4ef08a1124.69575326','CaH799aJhKE','0',280717,709,56,'2019-03-17 03:30:56','vyt5c8d4eb388e743.14979855',NULL),
	('vyt5c8d4ef1a96876.88701658','Mms0AGjLkHM','0',240,1,0,'2019-03-17 03:30:57','vyt5c8d4eb388e743.14979855',NULL),
	('vyt5c8d4ef2c82661.07627623','ciZYA0iVRsU','0',104,1,1,'2019-03-17 03:30:58','vyt5c8d4eb388e743.14979855',NULL);

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
	('vyt5c8d4ee2d71470.54567264','vyt5c8d4eb388e743.14979855','sharon cuneta','2019-03-17 03:30:42',1,NULL);

/*!40000 ALTER TABLE `SEARCH_QUERY` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table SEARCH_RESULT
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SEARCH_RESULT`;

CREATE TABLE `SEARCH_RESULT` (
  `ID` varchar(50) CHARACTER SET utf8 NOT NULL,
  `SEARCH_QUERY_ID` varchar(50) CHARACTER SET utf8 NOT NULL,
  `VIDEO_ID` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`ID`,`SEARCH_QUERY_ID`,`VIDEO_ID`),
  UNIQUE KEY `ID` (`ID`),
  UNIQUE KEY `VIDEO_ID` (`VIDEO_ID`),
  KEY `SEARCH_QUERY` (`SEARCH_QUERY_ID`),
  CONSTRAINT `SEARCH_QUERY` FOREIGN KEY (`SEARCH_QUERY_ID`) REFERENCES `SEARCH_QUERY` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `VIDEO` FOREIGN KEY (`VIDEO_ID`) REFERENCES `VIDEO` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;



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
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`),
  KEY `VIDEO_ID` (`VIDEO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

LOCK TABLES `SENTIMENT_RATING` WRITE;
/*!40000 ALTER TABLE `SENTIMENT_RATING` DISABLE KEYS */;

INSERT INTO `SENTIMENT_RATING` (`ID`, `RATING`, `INSERT_TIMESTAMP`, `INSERT_USER_ID`, `SENTIMENT_TYPE`, `VIDEO_ID`, `TYPE_ID`)
VALUES
	('vyt5c8a6ac82a1fc8.77027815','neutral','2019-03-14 22:52:56','vyt5c62d4b82be738.76255738',4,'DrAMsCKv_GM',NULL),
	('vyt5c8a6ac9cd60b1.95379704','neutral','2019-03-14 22:52:57','vyt5c62d4b82be738.76255738',2,'DrAMsCKv_GM',NULL),
	('vyt5c8a6acc58b0e1.40306982','neutral','2019-03-14 22:53:00','vyt5c62d4b82be738.76255738',5,'DrAMsCKv_GM',NULL),
	('vyt5c8a6acc594576.69549807','neutral','2019-03-14 22:53:00','vyt5c62d4b82be738.76255738',1,'DrAMsCKv_GM',NULL),
	('vyt5c8a6ae81970c2.91078743','neutral','2019-03-14 22:53:28','vyt5c62d4b82be738.76255738',4,'DrAMsCKv_GM',NULL),
	('vyt5c8a6ae9a913a6.06095134','neutral','2019-03-14 22:53:29','vyt5c62d4b82be738.76255738',2,'DrAMsCKv_GM',NULL),
	('vyt5c8a6aeba04bc5.14885115','neutral','2019-03-14 22:53:31','vyt5c62d4b82be738.76255738',5,'DrAMsCKv_GM',NULL),
	('vyt5c8a6aeba0bea6.12808529','neutral','2019-03-14 22:53:31','vyt5c62d4b82be738.76255738',1,'DrAMsCKv_GM',NULL),
	('vyt5c8a6aee71b742.27965448','neutral','2019-03-14 22:53:34','vyt5c62d4b82be738.76255738',4,'DrAMsCKv_GM',NULL),
	('vyt5c8a6af104bee2.61807221','neutral','2019-03-14 22:53:37','vyt5c62d4b82be738.76255738',2,'DrAMsCKv_GM',NULL),
	('vyt5c8a6af2d25ec4.36947020','neutral','2019-03-14 22:53:38','vyt5c62d4b82be738.76255738',5,'DrAMsCKv_GM',NULL),
	('vyt5c8a6af2d2dd63.73594073','neutral','2019-03-14 22:53:38','vyt5c62d4b82be738.76255738',1,'DrAMsCKv_GM',NULL),
	('vyt5c8a70d409b748.13158353','positive','2019-03-14 23:18:44','vyt5c62d4b82be738.76255738',3,'gocwRvLhDf8','UghrBlqdUkxbaHgCoAEC'),
	('vyt5c8a70d5a88080.11785999','positive','2019-03-14 23:18:45','vyt5c62d4b82be738.76255738',3,'gocwRvLhDf8','Ugw9qNU4LPTLOmRXMid4AaABAg'),
	('vyt5c8a70d75df8f8.60370858','neutral','2019-03-14 23:18:47','vyt5c62d4b82be738.76255738',3,'gocwRvLhDf8','Ugx2d4hM2lhifRTHdtt4AaABAg'),
	('vyt5c8a70d90350e4.65157493','negative','2019-03-14 23:18:49','vyt5c62d4b82be738.76255738',3,'gocwRvLhDf8','UgxFCqLF7jH6MLotRup4AaABAg'),
	('vyt5c8a70da873ea1.67544346','positive','2019-03-14 23:18:50','vyt5c62d4b82be738.76255738',3,'gocwRvLhDf8','UgxVIo3I5TnqotbxFSZ4AaABAg'),
	('vyt5c8a70dc398ee8.19330802','neutral','2019-03-14 23:18:52','vyt5c62d4b82be738.76255738',3,'gocwRvLhDf8','Ugjx7yGL2o6DEngCoAEC'),
	('vyt5c8a70dde5dd75.25647984','positive','2019-03-14 23:18:53','vyt5c62d4b82be738.76255738',3,'gocwRvLhDf8','UgwfpFmqlGkvY-S4KbV4AaABAg'),
	('vyt5c8a70df9a3819.64298243','negative','2019-03-14 23:18:55','vyt5c62d4b82be738.76255738',3,'gocwRvLhDf8','Ugz0IkNpPyAuT0NR20h4AaABAg'),
	('vyt5c8a70e14c85b9.13352370','negative','2019-03-14 23:18:57','vyt5c62d4b82be738.76255738',3,'gocwRvLhDf8','Ugy1oWJvqGImISspmqx4AaABAg'),
	('vyt5c8a70e3135430.83633617','neutral','2019-03-14 23:18:59','vyt5c62d4b82be738.76255738',3,'gocwRvLhDf8','UgzaSLUgUyHuy_kDIkp4AaABAg'),
	('vyt5c8a70e4c8f8d4.46044050','neutral','2019-03-14 23:19:00','vyt5c62d4b82be738.76255738',4,'gocwRvLhDf8',NULL),
	('vyt5c8a70e80d9364.61894557','neutral','2019-03-14 23:19:04','vyt5c62d4b82be738.76255738',2,'gocwRvLhDf8',NULL),
	('vyt5c8a70e9b42bf5.35599083','positive','2019-03-14 23:19:05','vyt5c62d4b82be738.76255738',5,'gocwRvLhDf8',NULL),
	('vyt5c8a70e9b4c985.20121615','neutral','2019-03-14 23:19:05','vyt5c62d4b82be738.76255738',1,'gocwRvLhDf8',NULL),
	('vyt5c8a7120dcffe0.57198116','positive','2019-03-14 23:20:00','vyt5c62d4b82be738.76255738',3,'gocwRvLhDf8','UghrBlqdUkxbaHgCoAEC'),
	('vyt5c8a7122a167b6.03831618','positive','2019-03-14 23:20:02','vyt5c62d4b82be738.76255738',3,'gocwRvLhDf8','Ugw9qNU4LPTLOmRXMid4AaABAg'),
	('vyt5c8a712442d9e8.55072784','neutral','2019-03-14 23:20:04','vyt5c62d4b82be738.76255738',3,'gocwRvLhDf8','Ugx2d4hM2lhifRTHdtt4AaABAg'),
	('vyt5c8a71260ff190.21557635','negative','2019-03-14 23:20:06','vyt5c62d4b82be738.76255738',3,'gocwRvLhDf8','UgxFCqLF7jH6MLotRup4AaABAg'),
	('vyt5c8a7127b50884.43616659','positive','2019-03-14 23:20:07','vyt5c62d4b82be738.76255738',3,'gocwRvLhDf8','UgxVIo3I5TnqotbxFSZ4AaABAg'),
	('vyt5c8a71295b6db7.04481638','neutral','2019-03-14 23:20:09','vyt5c62d4b82be738.76255738',3,'gocwRvLhDf8','Ugjx7yGL2o6DEngCoAEC'),
	('vyt5c8a712bbd92a3.46256958','positive','2019-03-14 23:20:11','vyt5c62d4b82be738.76255738',3,'gocwRvLhDf8','UgwfpFmqlGkvY-S4KbV4AaABAg'),
	('vyt5c8a712d53de46.73041628','negative','2019-03-14 23:20:13','vyt5c62d4b82be738.76255738',3,'gocwRvLhDf8','Ugz0IkNpPyAuT0NR20h4AaABAg'),
	('vyt5c8a712edfee30.60446203','negative','2019-03-14 23:20:14','vyt5c62d4b82be738.76255738',3,'gocwRvLhDf8','Ugy1oWJvqGImISspmqx4AaABAg'),
	('vyt5c8a71307e6d56.19680567','neutral','2019-03-14 23:20:16','vyt5c62d4b82be738.76255738',3,'gocwRvLhDf8','UgzaSLUgUyHuy_kDIkp4AaABAg'),
	('vyt5c8a7133216138.69484726','neutral','2019-03-14 23:20:19','vyt5c62d4b82be738.76255738',4,'gocwRvLhDf8',NULL),
	('vyt5c8a7134b5fd23.25949628','neutral','2019-03-14 23:20:20','vyt5c62d4b82be738.76255738',2,'gocwRvLhDf8',NULL),
	('vyt5c8a7136880e98.47477615','positive','2019-03-14 23:20:22','vyt5c62d4b82be738.76255738',5,'gocwRvLhDf8',NULL),
	('vyt5c8a713688b0e3.54639020','neutral','2019-03-14 23:20:22','vyt5c62d4b82be738.76255738',1,'gocwRvLhDf8',NULL),
	('vyt5c8a7138b716f4.41573242','positive','2019-03-14 23:20:24','vyt5c62d4b82be738.76255738',3,'gocwRvLhDf8','UghrBlqdUkxbaHgCoAEC'),
	('vyt5c8a713a421cb4.21550580','positive','2019-03-14 23:20:26','vyt5c62d4b82be738.76255738',3,'gocwRvLhDf8','Ugw9qNU4LPTLOmRXMid4AaABAg'),
	('vyt5c8a713bc85dd8.82865518','neutral','2019-03-14 23:20:27','vyt5c62d4b82be738.76255738',3,'gocwRvLhDf8','Ugx2d4hM2lhifRTHdtt4AaABAg'),
	('vyt5c8a713d70e482.49415853','negative','2019-03-14 23:20:29','vyt5c62d4b82be738.76255738',3,'gocwRvLhDf8','UgxFCqLF7jH6MLotRup4AaABAg'),
	('vyt5c8a713f186cf2.58432662','positive','2019-03-14 23:20:31','vyt5c62d4b82be738.76255738',3,'gocwRvLhDf8','UgxVIo3I5TnqotbxFSZ4AaABAg'),
	('vyt5c8a7143034c20.51419143','neutral','2019-03-14 23:20:35','vyt5c62d4b82be738.76255738',3,'gocwRvLhDf8','Ugjx7yGL2o6DEngCoAEC'),
	('vyt5c8a7147ed1b50.91595534','positive','2019-03-14 23:20:39','vyt5c62d4b82be738.76255738',3,'gocwRvLhDf8','UgwfpFmqlGkvY-S4KbV4AaABAg'),
	('vyt5c8a7149954ff4.95037331','negative','2019-03-14 23:20:41','vyt5c62d4b82be738.76255738',3,'gocwRvLhDf8','Ugz0IkNpPyAuT0NR20h4AaABAg'),
	('vyt5c8a714bd48d44.62232771','negative','2019-03-14 23:20:43','vyt5c62d4b82be738.76255738',3,'gocwRvLhDf8','Ugy1oWJvqGImISspmqx4AaABAg'),
	('vyt5c8a714d7a16b5.90060122','neutral','2019-03-14 23:20:45','vyt5c62d4b82be738.76255738',3,'gocwRvLhDf8','UgzaSLUgUyHuy_kDIkp4AaABAg'),
	('vyt5c8a714f2dfed9.54559459','neutral','2019-03-14 23:20:47','vyt5c62d4b82be738.76255738',4,'gocwRvLhDf8',NULL),
	('vyt5c8a715144a5c0.52498010','neutral','2019-03-14 23:20:49','vyt5c62d4b82be738.76255738',2,'gocwRvLhDf8',NULL),
	('vyt5c8a71530873d3.47696544','positive','2019-03-14 23:20:51','vyt5c62d4b82be738.76255738',5,'gocwRvLhDf8',NULL),
	('vyt5c8a71530902f7.37090286','neutral','2019-03-14 23:20:51','vyt5c62d4b82be738.76255738',1,'gocwRvLhDf8',NULL),
	('vyt5c8d1076965b31.77329269','positive','2019-03-16 23:04:22','vyt5c62d4b82be738.76255738',3,'gocwRvLhDf8','UghrBlqdUkxbaHgCoAEC'),
	('vyt5c8d10781b9189.94644548','positive','2019-03-16 23:04:24','vyt5c62d4b82be738.76255738',3,'gocwRvLhDf8','Ugw9qNU4LPTLOmRXMid4AaABAg'),
	('vyt5c8d10799df926.28307447','neutral','2019-03-16 23:04:25','vyt5c62d4b82be738.76255738',3,'gocwRvLhDf8','Ugx2d4hM2lhifRTHdtt4AaABAg'),
	('vyt5c8d107b519c92.60793635','negative','2019-03-16 23:04:27','vyt5c62d4b82be738.76255738',3,'gocwRvLhDf8','UgxFCqLF7jH6MLotRup4AaABAg'),
	('vyt5c8d107ce8dc53.40653609','positive','2019-03-16 23:04:28','vyt5c62d4b82be738.76255738',3,'gocwRvLhDf8','UgwfpFmqlGkvY-S4KbV4AaABAg'),
	('vyt5c8d107e9c8004.28937880','positive','2019-03-16 23:04:30','vyt5c62d4b82be738.76255738',3,'gocwRvLhDf8','Ugg3N-iJjBAu83gCoAEC'),
	('vyt5c8d10813e5c87.91356309','positive','2019-03-16 23:04:33','vyt5c62d4b82be738.76255738',3,'gocwRvLhDf8','UgxVIo3I5TnqotbxFSZ4AaABAg'),
	('vyt5c8d1082e9afe3.34111310','negative','2019-03-16 23:04:34','vyt5c62d4b82be738.76255738',3,'gocwRvLhDf8','UgzpJSoyVRZjK-1__il4AaABAg'),
	('vyt5c8d10849cb0d2.17854050','negative','2019-03-16 23:04:36','vyt5c62d4b82be738.76255738',3,'gocwRvLhDf8','Ugy1oWJvqGImISspmqx4AaABAg'),
	('vyt5c8d1086437648.05263600','negative','2019-03-16 23:04:38','vyt5c62d4b82be738.76255738',3,'gocwRvLhDf8','Ugz0IkNpPyAuT0NR20h4AaABAg'),
	('vyt5c8d1087d9b0b2.78659422','positive','2019-03-16 23:04:39','vyt5c62d4b82be738.76255738',4,'gocwRvLhDf8',NULL),
	('vyt5c8d108ade2e23.69084135','neutral','2019-03-16 23:04:42','vyt5c62d4b82be738.76255738',2,'gocwRvLhDf8',NULL),
	('vyt5c8d108cc879b4.15718815','positive','2019-03-16 23:04:44','vyt5c62d4b82be738.76255738',5,'gocwRvLhDf8',NULL),
	('vyt5c8d108cc8fda7.86974822','neutral','2019-03-16 23:04:44','vyt5c62d4b82be738.76255738',1,'gocwRvLhDf8',NULL),
	('vyt5c8d4105812803.16559243','positive','2019-03-17 02:31:33','vyt5c62d4b82be738.76255738',3,'hr5Am3HREmY','UgxdMP2qdMMG1GpaNK54AaABAg'),
	('vyt5c8d4106b75600.30454953','neutral','2019-03-17 02:31:34','vyt5c62d4b82be738.76255738',3,'hr5Am3HREmY','UgyDmZwKo_-0lybMmMR4AaABAg'),
	('vyt5c8d4107da3d63.84038297','neutral','2019-03-17 02:31:35','vyt5c62d4b82be738.76255738',3,'hr5Am3HREmY','UgyMNCgwIHTobADay9N4AaABAg'),
	('vyt5c8d410922fca0.66051819','neutral','2019-03-17 02:31:37','vyt5c62d4b82be738.76255738',3,'hr5Am3HREmY','UgzIabM0elKpw43eR8Z4AaABAg'),
	('vyt5c8d410a5cc0b3.21715774','positive','2019-03-17 02:31:38','vyt5c62d4b82be738.76255738',4,'hr5Am3HREmY',NULL),
	('vyt5c8d410b9d60b0.66805221','neutral','2019-03-17 02:31:39','vyt5c62d4b82be738.76255738',2,'hr5Am3HREmY',NULL),
	('vyt5c8d410cd789f0.43564811','neutral','2019-03-17 02:31:40','vyt5c62d4b82be738.76255738',5,'hr5Am3HREmY',NULL),
	('vyt5c8d410cd837b6.60453159','neutral','2019-03-17 02:31:40','vyt5c62d4b82be738.76255738',1,'hr5Am3HREmY',NULL),
	('vyt5c8d420d426a36.12468400','positive','2019-03-17 02:35:57','vyt5c62d4b82be738.76255738',3,'hr5Am3HREmY','UgxdMP2qdMMG1GpaNK54AaABAg'),
	('vyt5c8d420e83ad01.22137717','neutral','2019-03-17 02:35:58','vyt5c62d4b82be738.76255738',3,'hr5Am3HREmY','UgyDmZwKo_-0lybMmMR4AaABAg'),
	('vyt5c8d420fc6cda5.03840924','neutral','2019-03-17 02:35:59','vyt5c62d4b82be738.76255738',3,'hr5Am3HREmY','UgyMNCgwIHTobADay9N4AaABAg'),
	('vyt5c8d4211028a10.93935332','neutral','2019-03-17 02:36:01','vyt5c62d4b82be738.76255738',3,'hr5Am3HREmY','UgzIabM0elKpw43eR8Z4AaABAg'),
	('vyt5c8d42122f76b3.02232980','positive','2019-03-17 02:36:02','vyt5c62d4b82be738.76255738',4,'hr5Am3HREmY',NULL),
	('vyt5c8d4213b8c1f9.72033511','neutral','2019-03-17 02:36:03','vyt5c62d4b82be738.76255738',2,'hr5Am3HREmY',NULL),
	('vyt5c8d4214ddff65.71685488','neutral','2019-03-17 02:36:04','vyt5c62d4b82be738.76255738',5,'hr5Am3HREmY',NULL),
	('vyt5c8d4214dee5c8.03909652','neutral','2019-03-17 02:36:04','vyt5c62d4b82be738.76255738',1,'hr5Am3HREmY',NULL),
	('vyt5c8d4269d72f44.09375768','positive','2019-03-17 02:37:29','vyt5c62d4b82be738.76255738',3,'gocwRvLhDf8','UghrBlqdUkxbaHgCoAEC'),
	('vyt5c8d426b16a0b2.73469113','positive','2019-03-17 02:37:31','vyt5c62d4b82be738.76255738',3,'gocwRvLhDf8','Ugw9qNU4LPTLOmRXMid4AaABAg'),
	('vyt5c8d426c3f6840.35634735','neutral','2019-03-17 02:37:32','vyt5c62d4b82be738.76255738',3,'gocwRvLhDf8','Ugx2d4hM2lhifRTHdtt4AaABAg'),
	('vyt5c8d426d7cbcb2.10883279','negative','2019-03-17 02:37:33','vyt5c62d4b82be738.76255738',3,'gocwRvLhDf8','UgxFCqLF7jH6MLotRup4AaABAg'),
	('vyt5c8d426eb60ac0.47549846','positive','2019-03-17 02:37:34','vyt5c62d4b82be738.76255738',3,'gocwRvLhDf8','UgwfpFmqlGkvY-S4KbV4AaABAg'),
	('vyt5c8d42700e5579.97589387','positive','2019-03-17 02:37:36','vyt5c62d4b82be738.76255738',3,'gocwRvLhDf8','Ugg3N-iJjBAu83gCoAEC'),
	('vyt5c8d42713e9088.44191076','positive','2019-03-17 02:37:37','vyt5c62d4b82be738.76255738',3,'gocwRvLhDf8','UgxVIo3I5TnqotbxFSZ4AaABAg'),
	('vyt5c8d42727dff57.45035187','negative','2019-03-17 02:37:38','vyt5c62d4b82be738.76255738',3,'gocwRvLhDf8','UgzpJSoyVRZjK-1__il4AaABAg'),
	('vyt5c8d4273ae9b89.23066158','negative','2019-03-17 02:37:39','vyt5c62d4b82be738.76255738',3,'gocwRvLhDf8','Ugz0IkNpPyAuT0NR20h4AaABAg'),
	('vyt5c8d4274e9e904.57869623','negative','2019-03-17 02:37:40','vyt5c62d4b82be738.76255738',3,'gocwRvLhDf8','Ugy1oWJvqGImISspmqx4AaABAg'),
	('vyt5c8d4276441879.89322798','positive','2019-03-17 02:37:42','vyt5c62d4b82be738.76255738',4,'gocwRvLhDf8',NULL),
	('vyt5c8d4277abf040.02014787','neutral','2019-03-17 02:37:43','vyt5c62d4b82be738.76255738',2,'gocwRvLhDf8',NULL),
	('vyt5c8d4279217977.63046422','positive','2019-03-17 02:37:45','vyt5c62d4b82be738.76255738',5,'gocwRvLhDf8',NULL),
	('vyt5c8d4279221aa3.98453958','neutral','2019-03-17 02:37:45','vyt5c62d4b82be738.76255738',1,'gocwRvLhDf8',NULL),
	('vyt5c8d4f18851648.48128602','negative','2019-03-17 03:31:36','vyt5c8d4eb388e743.14979855',3,'YXgn1i8O-gM','UgwurkFyn7VRXXb1hlx4AaABAg'),
	('vyt5c8d4f19befeb7.59579038','neutral','2019-03-17 03:31:37','vyt5c8d4eb388e743.14979855',3,'YXgn1i8O-gM','Ugzo93lChRhszfLXDdx4AaABAg'),
	('vyt5c8d4f1b0322a5.70660905','positive','2019-03-17 03:31:39','vyt5c8d4eb388e743.14979855',3,'YXgn1i8O-gM','UgyN5goKk1mxapat2gF4AaABAg'),
	('vyt5c8d4f1c3a1978.52638999','negative','2019-03-17 03:31:40','vyt5c8d4eb388e743.14979855',3,'YXgn1i8O-gM','Ugy5RNopN211_7dFnMZ4AaABAg'),
	('vyt5c8d4f1d806b11.80769152','negative','2019-03-17 03:31:41','vyt5c8d4eb388e743.14979855',3,'YXgn1i8O-gM','UgzHk8iKxz-F21dkM354AaABAg'),
	('vyt5c8d4f1ea8bad9.58440985','negative','2019-03-17 03:31:42','vyt5c8d4eb388e743.14979855',3,'YXgn1i8O-gM','UgwjNd68A6ZB8CB5LoJ4AaABAg'),
	('vyt5c8d4f1fe0fef5.00572643','neutral','2019-03-17 03:31:43','vyt5c8d4eb388e743.14979855',3,'YXgn1i8O-gM','UgwJJLR6-C3Qr6ezrAR4AaABAg'),
	('vyt5c8d4f2109ae71.55609861','neutral','2019-03-17 03:31:45','vyt5c8d4eb388e743.14979855',3,'YXgn1i8O-gM','UgxnDrW_9eiJNPMbxet4AaABAg'),
	('vyt5c8d4f22424da6.04999979','positive','2019-03-17 03:31:46','vyt5c8d4eb388e743.14979855',3,'YXgn1i8O-gM','UgyISM7x_8NkGAfdHBx4AaABAg'),
	('vyt5c8d4f236b25d5.15498445','positive','2019-03-17 03:31:47','vyt5c8d4eb388e743.14979855',3,'YXgn1i8O-gM','UgwzuqG4mjTEKksl2n14AaABAg'),
	('vyt5c8d4f24aa0352.61413631','negative','2019-03-17 03:31:48','vyt5c8d4eb388e743.14979855',4,'YXgn1i8O-gM',NULL),
	('vyt5c8d4f25e197b2.93724032','neutral','2019-03-17 03:31:49','vyt5c8d4eb388e743.14979855',2,'YXgn1i8O-gM',NULL),
	('vyt5c8d4f2752a5d0.12759704','negative','2019-03-17 03:31:51','vyt5c8d4eb388e743.14979855',5,'YXgn1i8O-gM',NULL),
	('vyt5c8d4f27533692.94588823','negative','2019-03-17 03:31:51','vyt5c8d4eb388e743.14979855',1,'YXgn1i8O-gM',NULL),
	('vyt5c8d4f2aaf2966.85404943','negative','2019-03-17 03:31:54','vyt5c8d4eb388e743.14979855',3,'YXgn1i8O-gM','UgwurkFyn7VRXXb1hlx4AaABAg'),
	('vyt5c8d4f2c103d53.49940990','neutral','2019-03-17 03:31:56','vyt5c8d4eb388e743.14979855',3,'YXgn1i8O-gM','Ugzo93lChRhszfLXDdx4AaABAg'),
	('vyt5c8d4f2d587b52.53593369','positive','2019-03-17 03:31:57','vyt5c8d4eb388e743.14979855',3,'YXgn1i8O-gM','UgyN5goKk1mxapat2gF4AaABAg'),
	('vyt5c8d4f2e98b4c1.00284384','negative','2019-03-17 03:31:58','vyt5c8d4eb388e743.14979855',3,'YXgn1i8O-gM','Ugy5RNopN211_7dFnMZ4AaABAg'),
	('vyt5c8d4f300f89c7.66360148','negative','2019-03-17 03:32:00','vyt5c8d4eb388e743.14979855',3,'YXgn1i8O-gM','UgzHk8iKxz-F21dkM354AaABAg'),
	('vyt5c8d4f3151cb57.70435883','negative','2019-03-17 03:32:01','vyt5c8d4eb388e743.14979855',3,'YXgn1i8O-gM','UgwjNd68A6ZB8CB5LoJ4AaABAg'),
	('vyt5c8d4f32aee863.50286776','neutral','2019-03-17 03:32:02','vyt5c8d4eb388e743.14979855',3,'YXgn1i8O-gM','UgwJJLR6-C3Qr6ezrAR4AaABAg'),
	('vyt5c8d4f33ef10e3.89296915','neutral','2019-03-17 03:32:03','vyt5c8d4eb388e743.14979855',3,'YXgn1i8O-gM','UgxnDrW_9eiJNPMbxet4AaABAg'),
	('vyt5c8d4f35314333.10834763','positive','2019-03-17 03:32:05','vyt5c8d4eb388e743.14979855',3,'YXgn1i8O-gM','UgyISM7x_8NkGAfdHBx4AaABAg'),
	('vyt5c8d4f366c2534.18312787','positive','2019-03-17 03:32:06','vyt5c8d4eb388e743.14979855',3,'YXgn1i8O-gM','UgwzuqG4mjTEKksl2n14AaABAg'),
	('vyt5c8d4f37b09b55.70004867','negative','2019-03-17 03:32:07','vyt5c8d4eb388e743.14979855',4,'YXgn1i8O-gM',NULL),
	('vyt5c8d4f3910b931.24186398','neutral','2019-03-17 03:32:09','vyt5c8d4eb388e743.14979855',2,'YXgn1i8O-gM',NULL),
	('vyt5c8d4f3a470a84.55165637','negative','2019-03-17 03:32:10','vyt5c8d4eb388e743.14979855',5,'YXgn1i8O-gM',NULL),
	('vyt5c8d4f3a47b6b1.47182976','negative','2019-03-17 03:32:10','vyt5c8d4eb388e743.14979855',1,'YXgn1i8O-gM',NULL);

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
	('vyt5c62d4b82be738.76255738','Administrator','di.gonzales@gmail.com','70682896e24287b0476eff2a14c148f0','09e039d3be4846b8e296d6e336041ae8','2019-02-12 22:14:16','2019-03-17 00:07:14'),
	('vyt5c6ea372349da0.69506364','diane','diane@godiane.com','70682896e24287b0476eff2a14c148f0','2dd77b8ea102c987f541b2357171ec8a','2019-02-21 21:11:14',NULL),
	('vyt5c8d4eb388e743.14979855','dianee','dianee@godiane.com','70682896e24287b0476eff2a14c148f0','7495576d467eec2c3dc119bff50bd0b1','2019-03-17 03:29:55',NULL);

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
  `INSERT_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP,
  `INSERT_USER_ID` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`YT_ID`),
  UNIQUE KEY `ID` (`ID`),
  UNIQUE KEY `YT_ID` (`YT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

LOCK TABLES `VIDEO` WRITE;
/*!40000 ALTER TABLE `VIDEO` DISABLE KEYS */;

INSERT INTO `VIDEO` (`ID`, `YT_ID`, `URL`, `TITLE`, `CHANNEL_TITLE`, `CATEGORY`, `DESCRIPTION`, `INSERT_TIMESTAMP`, `INSERT_USER_ID`)
VALUES
	('vyt5c8d10207608c2.67517099','--ttvZEOftI','https://www.youtube.com/embed/--ttvZEOftI','G-Mik Season 3: Borj assaults Paks','G E','People & Blogs','No copyright infringement intended. Credits to ABS-CBN Corporation, Jeepney TV and to the person responsible for recording the video. This video is not mine.','2019-03-16 23:02:56','vyt5c62d4b82be738.76255738'),
	('vyt5c8d101e69d627.53581055','-nrZm2_mEAw','https://www.youtube.com/embed/-nrZm2_mEAw','G-Mik Season 2: Borj found out that Apple dumped Tonsy','G E','People & Blogs','No copyright infringement intended. Credits to ABS-CBN Corporation, Jeepney TV and G-mik x Youtube channel. This video is not mine Source: G-mik x ...','2019-03-16 23:02:54','vyt5c62d4b82be738.76255738'),
	('vyt5c8d10688b5382.98706244','-PLCJqiKbjw','https://www.youtube.com/embed/-PLCJqiKbjw','Jacquees - You','JacqueesVEVO','Music','You (Official Video) Song from the album 4275 Available HERE: https://Jacquees.lnk.to/4275YD Directed by Devkamera Produced by Keith Brown & Juwan Lee ...','2019-03-16 23:04:08','vyt5c62d4b82be738.76255738'),
	('vyt5c8d40139cca97.29981670','-x8Sx5LHDxI','https://www.youtube.com/embed/-x8Sx5LHDxI','Brain-Healthy Foods to Fight Aging','NutritionFacts.org','Science & Technology','What is the best source of lutein, the primary carotenoid antioxidant in the brain? Subscribe to Dr. Greger\'s free nutrition newsletter at ...','2019-03-17 02:27:31','vyt5c62d4b82be738.76255738'),
	('vyt5c8d4eef06c445.91391079','0B2FzAK6-O0','https://www.youtube.com/embed/0B2FzAK6-O0','Jamming Session at Razon&#39;s Place | Virginia Beach','Zero Mella','People & Blogs','This shows the Olongapo Firefighters inclination to music and how they are doing a wonderful job failing at it. Pun intended. Jeffrey and Jose are actually good ...','2019-03-17 03:30:55','vyt5c8d4eb388e743.14979855'),
	('vyt5c8d40fa545600.74895640','0Ny-OrHnKyY','https://www.youtube.com/embed/0Ny-OrHnKyY','G-Mik: Borj and his mom (Christine) discussing about Love','G E','People & Blogs','No copyright infringement intended. Credits to ABS-CBN Corporation, Jeepney TV, and to the person responsible for recording this video. This video is not mine ...','2019-03-17 02:31:22','vyt5c62d4b82be738.76255738'),
	('vyt5c8d4011dd2387.13065603','0Wa_CR0H8g4','https://www.youtube.com/embed/0Wa_CR0H8g4','NEFFEX - Best of Me [Official Video]','NEFFEX Music','Music','\"Best of Me\" on Spotify: https://open.spotify.com/track/7zv0i1f8kTy8hPapkm28kz?si=WMBiz6LKRsucsv9fe7Bp2A Apple Music: https://itun.es/us/UWC8kb Google ...','2019-03-17 02:27:29','vyt5c62d4b82be738.76255738'),
	('vyt5c8d104b6eff98.63542216','1dYYzE56OjM','https://www.youtube.com/embed/1dYYzE56OjM','V6 Funny Moment (with rough eng subs)','Arashi Tenno','People & Blogs','The Legendary scene from V6\'s show - Gakkou e Ikou! It spawned several parodies and the like. Please enjoy the video, I do not own, and this is just for viewing ...','2019-03-16 23:03:39','vyt5c62d4b82be738.76255738'),
	('vyt5c8d1046a5acc0.20663338','1hbeKJhLeeQ','https://www.youtube.com/embed/1hbeKJhLeeQ','(Eng subs) Japanese game show: Guess the liar','jp_arashishows','Entertainment','English subtitles available if you turn on CC. This is an episode of Himitsu no Arashi-chan. This segment is titled Doubt Action, where the 5 members of J-pop ...','2019-03-16 23:03:34','vyt5c62d4b82be738.76255738'),
	('vyt5c8d4ef03ea809.53936110','1l3OjNPA8SU','https://www.youtube.com/embed/1l3OjNPA8SU','ABS-CBN Christmas Station ID 2016 &quot;Isang Pamilya Tayo Ngayong Pasko&quot;','ABS-CBN Entertainment','Entertainment','Isang Pamilya Tayo Ngayong Pasko Nothing is impossible in life as long as we remain as one family in love and in faith. We Filipinos are known for how deeply ...','2019-03-17 03:30:56','vyt5c8d4eb388e743.14979855'),
	('vyt5c8d104b1bf706.21968927','1mCMyj4aMpU','https://www.youtube.com/embed/1mCMyj4aMpU','Cross My Mind ❖ ITO KOSAKU + SHIMADA HIBIKI','Maddie Kove','Film & Animation','[HD♥,turn up brightness?] Phew, I did this in about 4 hours, so I am really sorry if it is not that good but haha... oh well. My coloring definitely destroyed it but it ...','2019-03-16 23:03:39','vyt5c62d4b82be738.76255738'),
	('vyt5c8d4eefcef832.12127179','1rrRL5TC6DY','https://www.youtube.com/embed/1rrRL5TC6DY','WATCH: Sharon performs with KC during concert in Canada','News One','Gaming','Watch more in iWant or TFC.tv It was a family affair at the Sharon Cuneta concert in Vancouver, Canada this past week, with her daughter KC Concepcion ...','2019-03-17 03:30:55','vyt5c8d4eb388e743.14979855'),
	('vyt5c8d101f3d8359.62082233','3wnZrha0ImM','https://www.youtube.com/embed/3wnZrha0ImM','G-Mik: Borj and Roni moments (#11)','G E','People & Blogs','No copyright infringement intended. Credits to ABS-CBN Corporation, Jeepney TV and to the person responsible for recording the whole episode. This video is ...','2019-03-16 23:02:55','vyt5c62d4b82be738.76255738'),
	('vyt5c8d106a652464.61076256','4_5lPJ5kFBs','https://www.youtube.com/embed/4_5lPJ5kFBs','How Do I Enable Content ID On My YouTube Channel','David Walsh Online','Howto & Style','How Do I Enable Content ID On My YouTube Channel -- David Walsh shows you how Content ID is enabled on your YouTube Channel. Share this Video: ...','2019-03-16 23:04:10','vyt5c62d4b82be738.76255738'),
	('vyt5c8d1068d55cc2.12474811','52nfjRzIaj8','https://www.youtube.com/embed/52nfjRzIaj8','Lady Gaga, Bradley Cooper - I&#39;ll Never Love Again','LadyGagaVEVO','Music','Listen to brand new music from Bradley Cooper & Lady Gaga from the \'A Star Is Born\' Soundtrack: http://smarturl.it/ASIBSoundtrack Get tickets to see the film: ...','2019-03-16 23:04:08','vyt5c62d4b82be738.76255738'),
	('vyt5c8d104540e278.59485035','56PISwq3pmY','https://www.youtube.com/embed/56PISwq3pmY','Close Knit [CC Eng Indo]','TEN NET','Film & Animation','彼らが本気で編むときは / Karera ga Honki de Amutoki wa Close Knit; When They Knit Seriously 2017 Credit: Kevin Glenz.','2019-03-16 23:03:33','vyt5c62d4b82be738.76255738'),
	('vyt5c8d405fcbe458.97465544','6A5yebOc9vI','https://www.youtube.com/embed/6A5yebOc9vI','⭐⭐⭐⭐⭐What it Takes to Succeed in a Caregiver Business!','HomeCareFranchises','Howto & Style','What it Takes to Succeed in a Caregiver Business! Click link learn more https://goo.gl/xzSc7j Learn How To succeed in the tough small business world.','2019-03-17 02:28:47','vyt5c62d4b82be738.76255738'),
	('vyt5c8d1066805506.11264735','6wVQS5qzUwM','https://www.youtube.com/embed/6wVQS5qzUwM','How To View The Name Of Deleted Youtube Videos','FlightSim205','Howto & Style','Please leave a like and subscribe if this had helped you. I\'m sure that we all have deleted or privated videos in our playlists especially music videos. And we all ...','2019-03-16 23:04:06','vyt5c62d4b82be738.76255738'),
	('vyt5c8d40610f0063.81156929','70ixHz7Bc1M','https://www.youtube.com/embed/70ixHz7Bc1M','JAPAN_How to read Japanese songs in the Karaoke?! Comment lire les chansons en Japonais au Karaoke?!','OLFA and SHAMS','Travel & Events','Singing in a Japanese Karaoke? If you need an extra help to read those Japanese characters on the screen we\'ll introducing one tip you can use with the DAM ...','2019-03-17 02:28:49','vyt5c62d4b82be738.76255738'),
	('vyt5c8d1017bf4b11.75816406','7erm2ykJNqM','https://www.youtube.com/embed/7erm2ykJNqM','Given the chance, who would Angelica Panganiban want to be her GF? | PEP Headliner','PEP','Entertainment','Who Angelica Panganiban misses the most is not who you think. Angge also shares what she wants to achieve in five years. Read her PEP Headliner feature ...','2019-03-16 23:02:47','vyt5c62d4b82be738.76255738'),
	('vyt5c8d4010be4354.46279414','7fAFy9v5Rk0','https://www.youtube.com/embed/7fAFy9v5Rk0','How To Create Youtube Video Backlinks Urdu / Hindi','Mr Danish','Howto & Style','This Video Title: How To Create Youtube Video Backlinks Urdu / Hindi Visit This Site For Youtube Video 700 Backlinks For Free All Your Videos ...','2019-03-17 02:27:28','vyt5c62d4b82be738.76255738'),
	('vyt5c8d4eeb13aef6.11433014','7t2HUUVOr-0','https://www.youtube.com/embed/7t2HUUVOr-0','THE MISTRESS | Supercut | John Lloyd Cruz, Bea Alonzo, Ronaldo Valdez, Hilda Koronel','ABS-CBN Star Cinema','Film & Animation','Get to see the Supercut of a four-sided love story of The Wife, The Benefactor, The Lover and The Mistress. The Mistress Supercut, John Lloy Cruz, Bea Alonzo, ...','2019-03-17 03:30:51','vyt5c8d4eb388e743.14979855'),
	('vyt5c8d40100f2515.19968319','83RUhxsfLWs','https://www.youtube.com/embed/83RUhxsfLWs','NEFFEX - Grateful [Copyright Free]','NEFFEX Music','Music','Spotify: https://open.spotify.com/track/1e6aAbWR0MXCNcr4yQovNr?si=hjvUJd7IQHij_6XlkIjJmg iTunes/Apple Music: ...','2019-03-17 02:27:28','vyt5c62d4b82be738.76255738'),
	('vyt5c8d401307d4a8.43628865','8OE3DOpgwcY','https://www.youtube.com/embed/8OE3DOpgwcY','drag ur world - fake id [OFFICIAL VIDEO]','dragurworld','Music','music video for b side to single by pop group drag ur world. edited by jeffrey. clips from \"What Else Could This Be\" by justin schmitz. download the single ...','2019-03-17 02:27:31','vyt5c62d4b82be738.76255738'),
	('vyt5c8d4eef6ab525.15223418','8Wy3SSfFO78','https://www.youtube.com/embed/8Wy3SSfFO78','KAPANTAY AY LANGIT trailer','VCI Aqcuisition','People & Blogs','','2019-03-17 03:30:55','vyt5c8d4eb388e743.14979855'),
	('vyt5c8d1060923290.78515424','9g2U12SsRns','https://www.youtube.com/embed/9g2U12SsRns','YouTube Content ID','YouTube Creators','Education','','2019-03-16 23:04:00','vyt5c62d4b82be738.76255738'),
	('vyt5c8d4061be8a67.33868897','9Mcb5ke8sD8','https://www.youtube.com/embed/9Mcb5ke8sD8','Mum hopes royal picture will pay for university  Kingdom Showbiz','Kingdom Showbiz','Entertainment','Mum hopes royal picture will pay for university Kingdom Showbiz It is the picture every photographer wanted to get. The Duke and Duchess of Cambridge Prince ...','2019-03-17 02:28:49','vyt5c62d4b82be738.76255738'),
	('vyt5c8d4eec10d8d9.57407206','9Mqgv3amcOQ','https://www.youtube.com/embed/9Mqgv3amcOQ','LOOK: Sharon Cuneta jokes about KC Concepcion stealing her sexy pose','Fun Bad Baby Daddy','People & Blogs','LOOK: Sharon Cuneta jokes about KC Concepcion stealing her sexy pose.','2019-03-17 03:30:52','vyt5c8d4eb388e743.14979855'),
	('vyt5c8d10648e2564.54239323','9mQk7Evt6Vs','https://www.youtube.com/embed/9mQk7Evt6Vs','[MV] (G)I-DLE ((여자)아이들) _ LATATA','1theK (원더케이)','Music','[MV] (G)I-DLE ((여자)아이들) _ LATATA *English subtitles are now available. :D (Please click on \'CC\' button or activate \'Interactive Transcript\' function) [Notice] ...','2019-03-16 23:04:04','vyt5c62d4b82be738.76255738'),
	('vyt5c8d101a9d2f15.28706032','9Rr1ufmip0I','https://www.youtube.com/embed/9Rr1ufmip0I','Angelica Panganiban no longer friends with ex-BF Carlo Aquino','News 3','Gaming','MANILA – Angelica Panganiban categorically stated that she is no longer friends with her former boyfriend Carlo Aquino. The “Playhouse” actress made this ...','2019-03-16 23:02:50','vyt5c62d4b82be738.76255738'),
	('vyt5c8d4047bbabc2.78376268','a1Rijk_TMHA','https://www.youtube.com/embed/a1Rijk_TMHA','What is ORCID? @ORCID_Org','LSKK ITB','Education','Names are not enough to ensure credit for your work and are inadequate for reliably connecting researchers with their research outputs. Learn how the ORCID ...','2019-03-17 02:28:23','vyt5c62d4b82be738.76255738'),
	('vyt5c8d4ee9799518.75535782','aE4CpTBsRYs','https://www.youtube.com/embed/aE4CpTBsRYs','Maybe Someday perform by: Sharon Cuneta','Star Apple Production','Entertainment','We do not own any music used in this video. Copyright to the owners.** --------------SUBSCRIBE FOR MORE VIDEOS------------- --------Never miss a daily video\'s ...','2019-03-17 03:30:49','vyt5c8d4eb388e743.14979855'),
	('vyt5c8d400d45d8f1.65400733','aNaOOnc0ufo','https://www.youtube.com/embed/aNaOOnc0ufo','The Foundation: SCP 294 - The Coffee Machine','ForlornFoundry','Film & Animation','scp #scpfoundation #forlornfoundry Support us! All of it goes towards making bigger and better videos! https://www.patreon.com/ForlornFoundry We are in no ...','2019-03-17 02:27:25','vyt5c62d4b82be738.76255738'),
	('vyt5c8d40615b32a1.50966696','B1s2sVg-4Ek','https://www.youtube.com/embed/B1s2sVg-4Ek','San Miguel Corporation | Wikipedia audio article','wikipedia tts','Education','This is an audio version of the Wikipedia Article: San Miguel Corporation Listening is a more natural way of learning, when compared to reading. Written ...','2019-03-17 02:28:49','vyt5c62d4b82be738.76255738'),
	('vyt5c8d4ee9dd76e6.77341094','bdsL4HNJn24','https://www.youtube.com/embed/bdsL4HNJn24','Sharon Cuneta: Why does the Philippines Love her so Much?','Travis Kraft','Nonprofits & Activism','Sharon Cuneta may be the Megastar, but why do Filipinos love her? I took to the streets to find out the reasons she has captured the hearts of the masses.','2019-03-17 03:30:49','vyt5c8d4eb388e743.14979855'),
	('vyt5c8d104d6a3350.54909792','buyKXjjzG8U','https://www.youtube.com/embed/buyKXjjzG8U','サンティアゴくんのILSCバンクーバー校＆グレイストンカレッジ留学体験談','ilscTV Japan','Education','http://www.greystonecollege.com/ -- ILSCそしてグレイストンカレッジでのサンティアゴくんの体験をもっと詳しく知りたい方はグレイストンカレッジのウェ...','2019-03-16 23:03:41','vyt5c62d4b82be738.76255738'),
	('vyt5c8d400c74a969.56966612','c2-0Igwf6Es','https://www.youtube.com/embed/c2-0Igwf6Es','High Life &amp; Flames | Best Japanese Romance Movie 2018','MIX','Music','Best Romance Movies Of Japanese & NCS Music: Vena Cava & Project Veresen feat. Raya - Flames | David Bulla - High Life ▻ Like & Share Our Video, Thanks ...','2019-03-17 02:27:24','vyt5c62d4b82be738.76255738'),
	('vyt5c8d10493a82b7.36319845','C3IY_8w3LHU','https://www.youtube.com/embed/C3IY_8w3LHU','Hana-kimi ep 12 special - Kamen Rider reference!! (eng subs)','torakiji','Film & Animation','Clip from the Hana-kimi jdrama special after the 12th episode. Pretty much just references to the actor\'s past work (but so very, VERY awesome) grabbed the ...','2019-03-16 23:03:37','vyt5c62d4b82be738.76255738'),
	('vyt5c8d1047604032.47501426','C6bQapUC1Yk','https://www.youtube.com/embed/C6bQapUC1Yk','Hanazakari no Kimitachi e ~Episode 12~ English Sub HD','Laibeunov L','Film & Animation','Episode 12 - We\'ll Protect You. I\'m just a fan who wants to share.','2019-03-16 23:03:35','vyt5c62d4b82be738.76255738'),
	('vyt5c8d1062d17bf9.38889862','CAb_bCtKuXg','https://www.youtube.com/embed/CAb_bCtKuXg','Life is Fun - Ft. Boyinaband (Official Music Video)','TheOdd1sOut','Comedy','just don\'t think about it too much Big thanks to Dave for making this song into a real thing ➤ https://www.youtube.com/boyinaband Behind the scene video ...','2019-03-16 23:04:02','vyt5c62d4b82be738.76255738'),
	('vyt5c8d4ef0899639.69112698','CaH799aJhKE','https://www.youtube.com/embed/CaH799aJhKE','The Legal Wife Theme Song - Hanggang Kailan Kita Mamahalin','Dengel Forever','Entertainment','Official theme song performed by Angeline Quinto Watch it here soon: http://goo.gl/AYMhv0 Hanggang Kailan Kita Mamahalin Version: Sharon Cuneta featuring ...','2019-03-17 03:30:56','vyt5c8d4eb388e743.14979855'),
	('vyt5c8d1047b1d901.59357027','cCfeCVT3TTU','https://www.youtube.com/embed/cCfeCVT3TTU','PARDX SHOCKS','msa0xaxa','People & Blogs','Sano/Oguri Shun - Marion Gatcheco/Wu chun Nakatsu/Toma Ikuta - Nathan Javier/Calvin Chen.','2019-03-16 23:03:35','vyt5c62d4b82be738.76255738'),
	('vyt5c8d1019b0d1d9.25545797','CcQ0fxjTC8M','https://www.youtube.com/embed/CcQ0fxjTC8M','Cosmo.ph Spotlight: Carlo Aquino','COSMOPOLITAN PHILIPPINES','Howto & Style','VIDEO SHOT BY: Sam Navalta, Jean Saturnino, and Dennise Salvador VIDEO EDITED BY: Sam Navalta Check out more awesome videos from Cosmopolitan ...','2019-03-16 23:02:49','vyt5c62d4b82be738.76255738'),
	('vyt5c8d4014719425.66250591','CDNyZeD87oc','https://www.youtube.com/embed/CDNyZeD87oc','Blueberries for a Diabetic Diet and DNA Repair','NutritionFacts.org','Science & Technology','Blueberries are put to the test against insulin resistance, oxidation, and DNA damage. Subscribe to Dr. Greger\'s free nutrition newsletter and get the ...','2019-03-17 02:27:32','vyt5c62d4b82be738.76255738'),
	('vyt5c8d4ef2c77ae1.17320342','ciZYA0iVRsU','https://www.youtube.com/embed/ciZYA0iVRsU','Crying Ladies (2003) Movie Review | Sharon Cuneta x Mark Meily Film | Chessie 1000','Chessie 1000','People & Blogs','PERSONAL RATING: 5/5 - this is one of Sharon\'s strongest movies post her Megastardom - if you have an extra 100 mins, give this is a re-watch and you\'ll ...','2019-03-17 03:30:58','vyt5c8d4eb388e743.14979855'),
	('vyt5c8d104bc353e3.78468297','cs98MtY0qjU','https://www.youtube.com/embed/cs98MtY0qjU','生田斗真×吉岡里帆、平成を短歌で振り返る『平成万葉集』今夜放送','TVエンターテインメント','Entertainment','俳優の生田斗真と女優の吉岡里帆が、今夜放送される『平成万葉集』プロローグ（NHK BSプレミアム／1月2日21時）に出演する。今夜の放送は、平成...','2019-03-16 23:03:39','vyt5c62d4b82be738.76255738'),
	('vyt5c8d400e1ce033.15470772','CYDP_8UTAus','https://www.youtube.com/embed/CYDP_8UTAus','NEFFEX - Fight Back [Official Video]','NEFFEX Music','Music','\"Fight Back: The Collection\" is our 12 song collection of some of our most hype/high energy music now available on iTunes, Spotify, Apple Music and all other ...','2019-03-17 02:27:26','vyt5c62d4b82be738.76255738'),
	('vyt5c8d404bec6f89.06867912','DfFlBWCQjzA','https://www.youtube.com/embed/DfFlBWCQjzA','When should you use a PWA? - Progressive Web App Training','Google Chrome Developers','Science & Technology','The hardest problem with software is distribution. App developers often spend more on distribution than they earn back. This problem is solved by the web ...','2019-03-17 02:28:27','vyt5c62d4b82be738.76255738'),
	('vyt5c8d404b561c12.86619370','DhZFoinQpI0','https://www.youtube.com/embed/DhZFoinQpI0','Is Fiber an Effective Anti-Inflammatory?','NutritionFacts.org','Science & Technology','Most Americans get less than half the recommended minimum fiber intake a day and the benefits of fiber go way beyond bowel regularity. Subscribe to Dr.','2019-03-17 02:28:27','vyt5c62d4b82be738.76255738'),
	('vyt5c8a6abd4b5a86.06928123','DrAMsCKv_GM','https://www.youtube.com/embed/DrAMsCKv_GM','‘Sorry kung umasa ka’: CarGel scene in ‘Playhouse’ gets painfully real for fans','DTN NEWS','News & Politics','\'Sorry kung umasa ka\': CarGel scene in \'Playhouse\' gets painfully real for fans Thank for watching! If you like this video, please Subscribe my channel: ...','2019-03-14 22:52:45','vyt5c62d4b82be738.76255738'),
	('vyt5c8d4264b89bf8.08800802','DX8D4FRUnvY','https://www.youtube.com/embed/DX8D4FRUnvY','ABS-CBN Christmas Station ID 2013 Recording Sessions','ABS-CBN Entertainment','Entertainment','This year\'s theme is all about reality, genuine emotions and stories close to the hearts our Kapamilya stars. Our audience has given us inspiration and in return ...','2019-03-17 02:37:24','vyt5c62d4b82be738.76255738'),
	('vyt5c8d4ee857cff7.62731491','DZU7dyQnnw4','https://www.youtube.com/embed/DZU7dyQnnw4','Sharon Cuneta reveals important detail about relationship with Richard Gomez in the past','PEP','Entertainment','Sharon Cuneta on Richard Gomez: \"Lahat ng natiis ko sa kanya... hindi ko titiisin kahit kalahati no\'n sa sino mang nauna sa kanya or sino mang after niya.','2019-03-17 03:30:48','vyt5c8d4eb388e743.14979855'),
	('vyt5c8d1068279214.33531649','EHdK5U2hf4o','https://www.youtube.com/embed/EHdK5U2hf4o','BTS (방탄소년단) LOVE YOURSELF Highlight Reel &#39;起承轉結&#39;','ibighit','Music','BTS (방탄소년단) LOVE YOURSELF Highlight Reel \'起承轉結\' Highlight Reel credits: Director : YongSeok Choi (Lumpens) Assistant Director : WonJu Lee ...','2019-03-16 23:04:08','vyt5c62d4b82be738.76255738'),
	('vyt5c8d101b0d7970.20129616','EJkrUM-82Us','https://www.youtube.com/embed/EJkrUM-82Us','Angelica Panganiban no longer friends with ex-BF Carlo Aquino','DTN NEWS','News & Politics','Angelica Panganiban categorically stated that she is no longer friends with her former boyfriend Carlo Aquino. Thank for watching! If you like this video, please ...','2019-03-16 23:02:51','vyt5c62d4b82be738.76255738'),
	('vyt5c8d101ece2cc5.96177984','EM08dv1FLug','https://www.youtube.com/embed/EM08dv1FLug','What if Zanjoe Marudo woos Angelica Panganiban?','PEP','Entertainment','\"Kung na-pretty-han na siya sa \'kin, e di... wow!\" reacts Angelica Panganiban. Subscribe to our YouTube channel! http://bit.ly/PEPYouTubeChannel Know the ...','2019-03-16 23:02:54','vyt5c62d4b82be738.76255738'),
	('vyt5c8d106a01ba12.60714241','ENRFQ2-y0AM','https://www.youtube.com/embed/ENRFQ2-y0AM','ABS-CBN Christmas Station ID 2015 &quot;Thank You For The Love&quot; Recording Music Video','ABS-CBN Entertainment','Entertainment','Watch the recording session of ABS-CBN\'s 2015 Christmas Station ID, \"Thank You For The Love\". Check out the full video of ABS-CBN\'s 2015 Christmas Station ...','2019-03-16 23:04:10','vyt5c62d4b82be738.76255738'),
	('vyt5c8d4014d583a3.44335952','esxJYGrJLkw','https://www.youtube.com/embed/esxJYGrJLkw','How to find your student ID through WebAdvisor | Grossmont College','Grossmont Outreach','Education','A quick video that explains all the steps in checking the GCCCD student ID ; this video was Created by Grossmont outreach and Admissions & Records. Info: ...','2019-03-17 02:27:32','vyt5c62d4b82be738.76255738'),
	('vyt5c8d104a0e09f1.40279960','ewWdo9ut52M','https://www.youtube.com/embed/ewWdo9ut52M','Ouroboros OST - &quot;No One&quot;  Main title','patyredf','Entertainment','No One by Ena and Kimura Hideakira. Click on CC button to see the lyrics / Clique em \"CC\" para ver a letra da música em inglês. Download: ...','2019-03-16 23:03:38','vyt5c62d4b82be738.76255738'),
	('vyt5c8d102011dee0.25903589','F6rIbwCpOsE','https://www.youtube.com/embed/F6rIbwCpOsE','Angelica Panganiban may Pahaging sa kanyang IG &#39;Wag ako. Pumapatol ako kapag Pamilya ko nasa Usapan&#39;','Trending Worldwide - News Feed','Entertainment','Trending #WorldWide #AngelicaPanganiban #Instagram Watch the hottest and latest showbiz news in the Philippines also in the World. From your fav celebrety ...','2019-03-16 23:02:56','vyt5c62d4b82be738.76255738'),
	('vyt5c8d1063630a62.00774035','fNubFbeIFms','https://www.youtube.com/embed/fNubFbeIFms','ABS-CBN Christmas Station ID 2018 “Family Is Love” Recording Lyric Video','ABS-CBN Entertainment','Entertainment','ABSCBNChristmasStationID2018 #FamilyIsLove #JustLove Subscribe to the ABS-CBN Entertainment channel! - http://bit.ly/ABSCBNOnline Visit our official ...','2019-03-16 23:04:03','vyt5c62d4b82be738.76255738'),
	('vyt5c8d400e80ae16.58726214','FPBmVnsZaN8','https://www.youtube.com/embed/FPBmVnsZaN8','6 Scientific Tricks To Make You Happy','Psych2Go','Education','Go to https://audible.com/psych2go or text psych2go to 500 500 for a free 30-day trial and 1 free audiobook Are you wondering about how happiness could be ...','2019-03-17 02:27:26','vyt5c62d4b82be738.76255738'),
	('vyt5c8d104a720f64.57970611','fuSrk4N87uY','https://www.youtube.com/embed/fuSrk4N87uY','生田斗真の歴代の彼女は清野菜名？キスのプリクラ画像が流出した理由は？','KUMIKO kumiko','People & Blogs','Japan News: 『生田斗真の現在の彼女は清野菜名？』ジャニーズの中でも俳優としての活躍が目立つ生田斗真さん。そんなイケメン俳優と熱愛の噂が...','2019-03-16 23:03:38','vyt5c62d4b82be738.76255738'),
	('vyt5c8d101a205b95.61381889','GChKQWIaTK4','https://www.youtube.com/embed/GChKQWIaTK4','Angelica Panganiban who to choose: Zanjoe, Carlo, JM or JC?','PEP','Entertainment','Angelica Panganiban is being linked to four men: Zanjoe Marudo, Carlo Aquino, JM de Guzman, and JC Santos. Subscribe to our YouTube channel!','2019-03-16 23:02:50','vyt5c62d4b82be738.76255738'),
	('vyt5c8d4eed913906.26718611','gJ_7mG7VKqg','https://www.youtube.com/embed/gJ_7mG7VKqg','Remembering Chokoleit and the way he made us all laugh','News 3','Gaming','After news of his death, there\'s no shortage of people and celebrities mourning Chokoleit, thanking him mainly for the laughs he gave them. Instagram When ...','2019-03-17 03:30:53','vyt5c8d4eb388e743.14979855'),
	('vyt5c8a70ce7dd3a4.31894344','gocwRvLhDf8','https://www.youtube.com/embed/gocwRvLhDf8','Will YouTube Ever Run Out Of Video IDs?','Tom Scott','Education','In the URL of each YouTube video is the 11-character video ID, unique for each video. Can they ever run out? Just how many videos can YouTube handle?','2019-03-14 23:18:38','vyt5c62d4b82be738.76255738'),
	('vyt5c8a70cf50ef82.67948291','GONejubmxYo','https://www.youtube.com/embed/GONejubmxYo','Video: ID thiefs target airline paper boarding passes during holidays','KSAT 12','News & Politics','Before you pack your suitcase to fly somewhere for the holidays, the Defenders have a warning aimed at keeping your travel plans and personal information ...','2019-03-14 23:18:39','vyt5c62d4b82be738.76255738'),
	('vyt5c8d400f3f6f11.18546740','g_5LItJIi90','https://www.youtube.com/embed/g_5LItJIi90','Rival &amp; Cadmium - Daily (feat. Jon Becker) (Lyrics Video)','BipolarBear','Entertainment','SUBSCRIBE to the channel here ➡ https://goo.gl/qbsngH Turn on the bell to be the first to listen to new music! This song is a non-copyrighted music for you to ...','2019-03-17 02:27:27','vyt5c62d4b82be738.76255738'),
	('vyt5c8d40152a0f30.43364291','H969EhPHK7w','https://www.youtube.com/embed/H969EhPHK7w','Launching Nukes SOLO In Fallout 76 (Easy Nuke Launch Method)','SpiderGamez','Gaming','I show you how launch nukes solo in Fallout 76 by first showing you how to get the nuke codes and nuclear key card and silo alpha\'s location. Here\'s the ...','2019-03-17 02:27:33','vyt5c62d4b82be738.76255738'),
	('vyt5c8d10187c2a48.07234057','hr5Am3HREmY','https://www.youtube.com/embed/hr5Am3HREmY','Angelica Panganiban and Carlo Aquino Sweet Moments 2018','Korean Drama News','Entertainment','Carlo Aquino and Angelica Panganiban Latest News https://youtu.be/5PXHzCZOQA0 Angelica Panganiban and Carlo Aquino sweet moments Love ...','2019-03-16 23:02:48','vyt5c62d4b82be738.76255738'),
	('vyt5c8d10486fe7a9.19698855','IbHtJi7zFO8','https://www.youtube.com/embed/IbHtJi7zFO8','[English Sub] ロンドンファッションウィークを見て来ました。/ I&#39;ve been to London Fashion Week !','Risu Channel','People & Blogs','こんにちは！最近ロンドンファッションウィークというファッションショーを見に行って来ました！！ Hello there ! I\'ve been to London Fashion Week recently ;)','2019-03-16 23:03:36','vyt5c62d4b82be738.76255738'),
	('vyt5c8d101fa174b6.73092225','jcRF12fj5bI','https://www.youtube.com/embed/jcRF12fj5bI','G-Mik Season 2: Jun-Jun gets his revenge','G E','People & Blogs','No copyright infringement intended. Credits to ABS-CBN Corporation, Jeepney TV and to the person responsible for recording the video. This video is not mine.','2019-03-16 23:02:55','vyt5c62d4b82be738.76255738'),
	('vyt5c8d10604385c0.83390181','JePnQ1gSagc','https://www.youtube.com/embed/JePnQ1gSagc','Marshmello - Together (Official Music Video)','Marshmello','Music','Together music video is live! This is a reminder that despite our different cultures and backgrounds, we\'re all the same ❤   NEW Mello™   by Marshmello gear ...','2019-03-16 23:04:00','vyt5c62d4b82be738.76255738'),
	('vyt5c8d4062dce519.49825805','JEYgAHahoQE','https://www.youtube.com/embed/JEYgAHahoQE','Modernism | Wikipedia audio article','wikipedia tts','Education','This is an audio version of the Wikipedia Article: Modernism Listening is a more natural way of learning, when compared to reading. Written language only ...','2019-03-17 02:28:50','vyt5c62d4b82be738.76255738'),
	('vyt5c8a7107003796.93611183','jFdUTbyNa1Y','https://www.youtube.com/embed/jFdUTbyNa1Y','IKUTA TOMA WITHOUT WORDS','epukka24','Film & Animation','to see it subs...turn on the cc at the botton of vid!','2019-03-14 23:19:35','vyt5c62d4b82be738.76255738'),
	('vyt5c8d10465a97e6.27067329','jjo4jGqwmO8','https://www.youtube.com/embed/jjo4jGqwmO8','oguri shun and seungri Sakigake interview 2012','marie fabian','People & Blogs','I don\'t own the video french translations credits to Bigbangfansubfrance dailymotion !!English translation in captions.','2019-03-16 23:03:34','vyt5c62d4b82be738.76255738'),
	('vyt5c8d104ac79436.69948971','JVyoLB8CbZ8','https://www.youtube.com/embed/JVyoLB8CbZ8','「大坂なおみ」が最強！！「アリエール」のＣＭ &quot;Naomi Osaka&quot; but it&#39;s strongest! Commercial of &quot;Ariel&quot;','ACMチャンネル','Entertainment','女子テニス「大坂なおみ」が最強の姿を見せる！！「生田斗真」が共演する。Ｐ＆Ｇ「アリエール」のＣＭです。 是非、チャンネル登録お願いし...','2019-03-16 23:03:38','vyt5c62d4b82be738.76255738'),
	('vyt5c8d1064179267.80060098','kHLHSlExFis','https://www.youtube.com/embed/kHLHSlExFis','Ariana Grande - God is a woman','ArianaGrandeVevo','Music','God is a woman (Official Video) Song available here: https://arianagrande.lnk.to/GodIsAWomanYD Connect with Ariana: https://www.arianagrande.com ...','2019-03-16 23:04:04','vyt5c62d4b82be738.76255738'),
	('vyt5c8d4043d62350.91999456','KuOxAuRjFfE','https://www.youtube.com/embed/KuOxAuRjFfE','[HIGHLIGHTS] Pelo Strem - Cuphead &quot;Don&#39;t deal with the Devil&quot;','Sr Pelo','Comedy','What\'s - What\'s this? If you wanna watch more strems - https://www.twitch.tv/srpelo ___ Game: http://www.cupheadgame.com/ ___ https://www.twitch.tv/srpelo ...','2019-03-17 02:28:19','vyt5c62d4b82be738.76255738'),
	('vyt5c8d405f0380f0.39165076','Kzd9CmFizSk','https://www.youtube.com/embed/Kzd9CmFizSk','Grand Rapids Students Injured In Bus Crash Near Lengby','Lakeland PBS','Nonprofits & Activism','','2019-03-17 02:28:47','vyt5c62d4b82be738.76255738'),
	('vyt5c8d1048208674.81296529','li0PjOUgUbY','https://www.youtube.com/embed/li0PjOUgUbY','Arashi with Matsuko','Niko Kasukage','Entertainment','','2019-03-16 23:03:36','vyt5c62d4b82be738.76255738'),
	('vyt5c8d101c1367c3.32452093','LLp4kgZZ4-o','https://www.youtube.com/embed/LLp4kgZZ4-o','ANGELICA PANGANIBAN Todo Suporta kay CARLO AQUINO sa Meet Me in St Gallen Premiere','Jatamari\'s World','Entertainment','ANGELICA PANGANIBAN gave her full support to CARLO AQUINO during the premiere night of Carlo and Bela Padilla\'s movie Meet Me in St Gallen. Be sure to ...','2019-03-16 23:02:52','vyt5c62d4b82be738.76255738'),
	('vyt5c8d404ae635f8.66054883','LmAWaRoZ-AQ','https://www.youtube.com/embed/LmAWaRoZ-AQ','Funny And Lucky Moments - Hearthstone - Ep. 426','Trolden','Gaming','This is my personal YouTube channel! All the views and opinions are my own and do not represent my Employer. Send me your replays at: ...','2019-03-17 02:28:26','vyt5c62d4b82be738.76255738'),
	('vyt5c8d4ee3a18724.49091046','LNd3n7nSTkI','https://www.youtube.com/embed/LNd3n7nSTkI','Sharon Cuneta - Mr. DJ','bobexr3','Music','Sharon Cuneta - Mr. DJ From the album \"High School\" (1981) Originally released from the album \"DJ\'s Pet\" (1978) Both albums are from Vicor Music ...','2019-03-17 03:30:43','vyt5c8d4eb388e743.14979855'),
	('vyt5c8d40603b5379.72051571','LrjzN-lVD1M','https://www.youtube.com/embed/LrjzN-lVD1M','i n K O M P A r a b l e  グリーンドラゴンオーダー','Panama Screwd Music','Entertainment','Camilo Sesto Reventando Cintas y Bajando Panties desde.....uuufffff....comparten si relacionan permiso para montar a sus canales [FREE] Creative Commons ...','2019-03-17 02:28:48','vyt5c62d4b82be738.76255738'),
	('vyt5c8d1045f110e9.03403374','lwOu6xfR7R8','https://www.youtube.com/embed/lwOu6xfR7R8','(Eng subs) Japanese TV show: Can they cry within 1 minute?','jp_arashishows','Entertainment','English subtitles available if you turn on CC. This is a segment from the show Himitsu no Arashi-chan where the 5 members of J-pop group, Arashi, are ...','2019-03-16 23:03:33','vyt5c62d4b82be738.76255738'),
	('vyt5c8d4ee6ddab45.61906920','lYAXzbn67v0','https://www.youtube.com/embed/lYAXzbn67v0','Sharon Cuneta &amp; Gabby Concepcion McDonald&#39;s Kumusta Ka TV Commercial Spoof','novo ramos','People & Blogs','Here is our own amateur version of the viral McDonald\'s Philippines\' commercial advertisement featuring one of Philippines\' most loved (former) love teams, ...','2019-03-17 03:30:46','vyt5c8d4eb388e743.14979855'),
	('vyt5c8d4031e9aa59.87840610','M4rMYvR4D-0','https://www.youtube.com/embed/M4rMYvR4D-0','HOW TO BUY BITCOIN (BTC) Without ID','BitcoinCryptoShow','Education','Here I Present you 5 ways to buy Bitcoin without ID. Thank you so much for spending your time to watch this video and please don\'t forget to LIKE ...','2019-03-17 02:28:01','vyt5c62d4b82be738.76255738'),
	('vyt5c8d106251e9e2.04048724','m7Bc3pLyij0','https://www.youtube.com/embed/m7Bc3pLyij0','Marshmello ft. Bastille - Happier (Official Music Video)','Marshmello','Music','Marshmello ft. Bastille - Happier (Official Music Video) Download / Stream Happier ▷ http://marshmello.lnk.to/happier NEW Mello™   by Marshmello gear SHOP ...','2019-03-16 23:04:02','vyt5c62d4b82be738.76255738'),
	('vyt5c8d1061af8556.89573660','mbN8UH8FBm8','https://www.youtube.com/embed/mbN8UH8FBm8','ABS-CBN Christmas Station ID 2017 “Just Love Ngayong Christmas” Recording Lyric Video','ABS-CBN Entertainment','Entertainment','ABS-CBN Christmas Station ID 2017 “Just Love Ngayong Christmas” Recording Lyric Video Thirty eight Kapamilya singers joined their voices in this hymn of ...','2019-03-16 23:04:01','vyt5c62d4b82be738.76255738'),
	('vyt5c8d4ef1a8b4e9.63847028','Mms0AGjLkHM','https://www.youtube.com/embed/Mms0AGjLkHM','Gabby Concepcion Sends Birthday Greetings To Former Wife Sharon Cuneta','Fun Bad Baby Daddy','People & Blogs','Gabby Concepcion Sends Birthday Greetings To Former Wife Sharon Cuneta.','2019-03-17 03:30:57','vyt5c8d4eb388e743.14979855'),
	('vyt5c8d4ee80fbac0.42104974','Mpis9UWQjSA','https://www.youtube.com/embed/Mpis9UWQjSA','Showbiz News - Sharon Cuneta nasaktan daw, bakit kaya? Robin ano ang sagot?(2018)','Showbiz News Philippines','Entertainment','Showbiz News - Sharon Cuneta nasaktan daw, bakit kaya? Panoorin kung ano ang sinagot ni Robin Padilla sa Instagram, at kung bakit nasaktan si Sharon ...','2019-03-17 03:30:48','vyt5c8d4eb388e743.14979855'),
	('vyt5c8d425f059327.62382476','Mx2-3VLEDf0','https://www.youtube.com/embed/Mx2-3VLEDf0','YouTube User ID &amp; YouTube Channel ID  - HOW TO FIND 2015','Andreas Waatz','Education','How you can find your Youtube user id and your Youtube channel id fast and easy. This i great if you want to add annotations in your videos, or other tasks to ...','2019-03-17 02:37:19','vyt5c62d4b82be738.76255738'),
	('vyt5c8d105fd2d316.65884166','M_ThtCRAySw','https://www.youtube.com/embed/M_ThtCRAySw','EVERY SUBWAY EVER','Smosh','Comedy','Subway - whether it\'s the $5 footlongs that are really $11.50, sandwiches that are 85% lettuce, the sandwich artist that takes it a little *too* seriously, and more, ...','2019-03-16 23:03:59','vyt5c62d4b82be738.76255738'),
	('vyt5c8d4eeb5e47f5.26268823','n5RIrme5OtI','https://www.youtube.com/embed/n5RIrme5OtI','Happy Birthday song for Sharon','News4JAX','News & Politics','VIDEO: The Morning Show anchors come together to sing a Happy Birthday song to our Executive Producer Sharon Siegel-Cohen.','2019-03-17 03:30:51','vyt5c8d4eb388e743.14979855'),
	('vyt5c8d1047040614.33055355','NZ0RZue_W38','https://www.youtube.com/embed/NZ0RZue_W38','Hanazakari no Kimitachi e ~Episode 4~ English Sub HD','Laibeunov L','Film & Animation','Episode 4 - Dangerous Three-Person Room. I\'m just a fan who wants to share.','2019-03-16 23:03:35','vyt5c62d4b82be738.76255738'),
	('vyt5c8d404ba12e33.99358801','odi-wxvklvY','https://www.youtube.com/embed/odi-wxvklvY','Funny And Lucky Moments - Hearthstone - Ep. 391','Trolden','Gaming','This is my personal YouTube channel! All the views and opinions are my own and do not represent my Employer. Send me your replays at: ...','2019-03-17 02:28:27','vyt5c62d4b82be738.76255738'),
	('vyt5c8d400cd89ce5.57537865','OGl5V5ZNya0','https://www.youtube.com/embed/OGl5V5ZNya0','Rudy Mancuso - Mama (Official Music Video)','Rudy Mancuso','Music','Mama (Spotify) ▷ https://spoti.fi/2KtKxnP Mama (Apple Music) ▷ https://apple.co/2yVKdgs Mama (Everywhere) ▷ https://shots.lnk.to/mama MORE MUSIC ...','2019-03-17 02:27:24','vyt5c62d4b82be738.76255738'),
	('vyt5c8d1066e42f99.42399469','OKNXn2qCEws','https://www.youtube.com/embed/OKNXn2qCEws','(여자)아이들((G)I-DLE) - &#39;한(一)(HANN(Alone))&#39; Official Music Video','(G)I-DLE (여자)아이들 (Official YouTube Channel)','Music','[Digital Single] (여자)아이들 - 한(一)(HANN((Alone) - Apple Music: https://apple.co/2vP28RP - Spotify: https://spoti.fi/2PdpNDC - Melon ...','2019-03-16 23:04:06','vyt5c62d4b82be738.76255738'),
	('vyt5c8d101ba8b038.99412564','oO8K1DKyc1k','https://www.youtube.com/embed/oO8K1DKyc1k','Exes Baggage - Official Teaser 2 HD','Black Sheep','People & Blogs','Exes Baggage In cinemas everywhere September 26, 2018 Directed by Dan Villegas Starring Angelica Panganiban and Carlo Aquino Follow us: FB: ...','2019-03-16 23:02:51','vyt5c62d4b82be738.76255738'),
	('vyt5c8d4062795dc4.32025329','P3bPwLDg6xg','https://www.youtube.com/embed/P3bPwLDg6xg','Bong Revilla | Wikipedia audio article','wikipedia tts','Education','This is an audio version of the Wikipedia Article: Bong Revilla Listening is a more natural way of learning, when compared to reading. Written language only ...','2019-03-17 02:28:50','vyt5c62d4b82be738.76255738'),
	('vyt5c8d425fb44655.32114908','pbMwTqkKSps','https://www.youtube.com/embed/pbMwTqkKSps','Billie Eilish - when the party&#39;s over','BillieEilishVEVO','Music','Listen to “when the party\'s over\": http://smarturl.it/whenthepartysover Follow Billie Eilish: Facebook: https://www.facebook.com/billieeilish Instagram: ...','2019-03-17 02:37:19','vyt5c62d4b82be738.76255738'),
	('vyt5c8d40621979c1.31219146','Po1cpdFUS5w','https://www.youtube.com/embed/Po1cpdFUS5w','Cinema of the Philippines | Wikipedia audio article','wikipedia tts','Education','This is an audio version of the Wikipedia Article: Cinema of the Philippines Listening is a more natural way of learning, when compared to reading. Written ...','2019-03-17 02:28:50','vyt5c62d4b82be738.76255738'),
	('vyt5c8d404644aac6.79744666','pTRTilG1uF0','https://www.youtube.com/embed/pTRTilG1uF0','HOW TO GROW YOUR INSTAGRAM TO 10K IN 2019 *no bs | 2019 Instagram Algorithm','jade darmawangsa','Entertainment','Join my secret group for social media growth : https://bit.ly/2Ify3Ck whats up DarmaNATION ( ⸝⸝•ᴗ•⸝⸝ )੭⁾⁾ Open meeee My name is Jade Darmawangsa.','2019-03-17 02:28:22','vyt5c62d4b82be738.76255738'),
	('vyt5c8d40124cd3e6.62564953','PxRt_JeMVBo','https://www.youtube.com/embed/PxRt_JeMVBo','How to Apply National id card in Pakistan | Procedure for National id Card | How To Apply for cnic','Technical Qasar','Science & Technology','Technical Qasar show you How to Apply National id card in Pakistan and will tell you all Procedure for National id Card means How To Apply for cnic with very ...','2019-03-17 02:27:30','vyt5c62d4b82be738.76255738'),
	('vyt5c8d101d4af5d4.19697186','pY_X_w4MrXE','https://www.youtube.com/embed/pY_X_w4MrXE','Family is Love Concert: Kapamilya Love Teams 2018','Star Apple Production','Entertainment','We do not own any music used in this video. Copyright to the owners.** --------------SUBSCRIBE FOR MORE VIDEOS------------- --------Never miss a daily video\'s ...','2019-03-16 23:02:53','vyt5c62d4b82be738.76255738'),
	('vyt5c8d4eed2be6c0.47761611','qs1Rt9gKcQo','https://www.youtube.com/embed/qs1Rt9gKcQo','Richard Gomez forgets important dates with ex Sharon and wife Lucy','PEP','Entertainment','Sharon Cuneta to Richard Gomez: \"Alzheimer\'s na ba yan? #richardgomez #sharoncuneta #lucytorres #threewordstoforever Video Producer: Noel Orsal Video ...','2019-03-17 03:30:53','vyt5c8d4eb388e743.14979855'),
	('vyt5c8d3ff84c5174.98374926','QSWGgUDwKt4','https://www.youtube.com/embed/QSWGgUDwKt4','Medal of Honor Ceremony: Staff Sgt. Ronald Shurer II','The U.S. Army','News & Politics','President Donald J. Trump awards the Medal of Honor to Ronald J. Shurer II, for conspicuous gallantry for actions he took in 2008 as a staff sergeant in the U.S. ...','2019-03-17 02:27:04','vyt5c62d4b82be738.76255738'),
	('vyt5c8d104d0650c2.85433363','q__EAhPEDVk','https://www.youtube.com/embed/q__EAhPEDVk','Ao to Shiro de Mizuiro [PART 1/5]','YeSeul','Film & Animation','2001 SP Drama starring Miyazaki Aoi, Oguri Shun, Yu Aoi, and Konishi Manami. Synopsis: Uchiyama Kaede (Miyazaki Aoi) and Shiina Kasumi (Aoi Yuu) used ...','2019-03-16 23:03:41','vyt5c62d4b82be738.76255738'),
	('vyt5c8d4ee4b43a85.54250233','rabRsvRERk0','https://www.youtube.com/embed/rabRsvRERk0','Ikaw Lang ang Mamahalin perform by: Sharon Cuneta','Star Apple Production','Entertainment','We do not own any music used in this video. Copyright to the owners.** --------------SUBSCRIBE FOR MORE VIDEOS------------- --------Never miss a daily video\'s ...','2019-03-17 03:30:44','vyt5c8d4eb388e743.14979855'),
	('vyt5c8d10182e1b44.41305878','Rh9DY457bNM','https://www.youtube.com/embed/Rh9DY457bNM','Carlo Aquino And Angelica Panganiban On Their Past Relationship','COSMOPOLITAN PHILIPPINES','Howto & Style','VIDEO PRODUCED BY: Jacinda A. Lopez and Louise Ferrer VIDEO SHOT BY: Erika Dupali and Pam Carlota VIDEO EDITED BY: Pam Carlota Check out more ...','2019-03-16 23:02:48','vyt5c62d4b82be738.76255738'),
	('vyt5c8d400ee48710.47928735','RtdBI-0EE0Y','https://www.youtube.com/embed/RtdBI-0EE0Y','Copyright Tutorial: Dispute Content ID Matches (Outdated)','DarkLordofDebate','Howto & Style','Tired of having your videos blocked by copyright claims by Warner Music Group (WMG)? This video describes how to dispute the copyright claim and have ...','2019-03-17 02:27:26','vyt5c62d4b82be738.76255738'),
	('vyt5c8a71069bfea4.09726388','RUfGbuiWGRE','https://www.youtube.com/embed/RUfGbuiWGRE','Ikuta Toma in London','slightlyfantastic','Film & Animation','From the show Another Sky (April 2012) Uploaded for entertainment and interest only. No copyright infringement intended. Eng subs now in CC (not directly a ...','2019-03-14 23:19:34','vyt5c62d4b82be738.76255738'),
	('vyt5c8d4eea4db3c1.58337334','SE2n-D30DzE','https://www.youtube.com/embed/SE2n-D30DzE','Filipina Actress Clinches &#39;History Maker Award&#39;','Global1 News Network','News & Politics','Celebrated actress \"Megastar\" Sharon Cuneta has recently been honored with HISTORY\'S \"History Maker Award 2018\" for her contribution to the Philippine ...','2019-03-17 03:30:50','vyt5c8d4eb388e743.14979855'),
	('vyt5c8d1065c4f097.17742179','ShZ978fBl6Y','https://www.youtube.com/embed/ShZ978fBl6Y','Calum Scott - You Are The Reason (Official)','CalumScottVEVO','Music','Calum\'s debut album \'Only Human\' feat. “You Are The Reason” & “Dancing On My Own” out now! iTunes: https://calumscott.lnk.to/onlyhumanYD/iTunes Listen ...','2019-03-16 23:04:05','vyt5c62d4b82be738.76255738'),
	('vyt5c8d40fc3277e0.66126020','SKND2qUFGm0','https://www.youtube.com/embed/SKND2qUFGm0','G-Mik: Compilation of Borj reading Roni&#39;s diary','G E','People & Blogs','No copyright infringement intended. Credits to ABS-CBN Corporation, Jeepney TV and to the person responsible for recording the whole episode. This video is ...','2019-03-17 02:31:24','vyt5c62d4b82be738.76255738'),
	('vyt5c8d4ee5c86c71.93612885','sQdzyzKYnjM','https://www.youtube.com/embed/sQdzyzKYnjM','Lucky Me! Mami Spicy Labuyo w/ Sharon Cuneta 2017 (Eng Subtitles)','aye','Entertainment','Megaspice with Megastar Sharon Cuneta reprises her role as a judge but this time, for the many representations of siling labuyo!','2019-03-17 03:30:45','vyt5c8d4eb388e743.14979855'),
	('vyt5c8d4eeddbf621.38816356','T7TZLGD88-c','https://www.youtube.com/embed/T7TZLGD88-c','MR. DJ  Sharon Cuneta cover by Mavier06 with lyrics and guitar chords','mavier06','Music','A very nice song with lyrics and guitar chords in description matching the video. Tempo from original 6/8 change to 3/4 by the foreigner guitar player so you may ...','2019-03-17 03:30:53','vyt5c8d4eb388e743.14979855'),
	('vyt5c8d400dac8545.41521542','t8WuKJa6L5E','https://www.youtube.com/embed/t8WuKJa6L5E','[ANIMATION] ~ ♫ All Eyes On Me ♫ ~ Cover by Victor McKnight &amp; SquigglyDigg','puccagarukiss','Film & Animation','Support these animations: https://ko-fi.com/puccagarukiss Buy the Track: https://fanlink.to/alleyesonmecover Discord Server: https://discord.gg/NXY5UC Victor ...','2019-03-17 02:27:25','vyt5c62d4b82be738.76255738'),
	('vyt5c8d405f6827c5.68134058','t9n_fzf93gg','https://www.youtube.com/embed/t9n_fzf93gg','TOP MOST BEAUTIFUL PHILIPPINES GIRLS -Most Beautiful Pilipinas Babae','Beauty Hunting','People & Blogs','TOP 20 SPECIAL MOST BEAUTIFUL PHILIPPINES GIRLS -Most Beautiful Pilipinas Babae https://youtu.be/t9n_fzf93gg most beautiful filipina girl in the world ...','2019-03-17 02:28:47','vyt5c62d4b82be738.76255738'),
	('vyt5c8d40609f8f16.50741918','TcjbnJxRHDw','https://www.youtube.com/embed/TcjbnJxRHDw','BONDU BONDU BONDURE.....','AR MULTIMEDIA','People & Blogs','Bondu bondu bondure...........bangla song Ei gaanta amar khub pochender.....tai share korlam... r ekhane sobai amara frd secale..........','2019-03-17 02:28:48','vyt5c62d4b82be738.76255738'),
	('vyt5c8d40e3e32ef3.58121249','tdqZiuibACE','https://www.youtube.com/embed/tdqZiuibACE','Interview with Yuka Oguri 2','deletion0','People & Blogs','','2019-03-17 02:30:59','vyt5c62d4b82be738.76255738'),
	('vyt5c8d40451a0767.13336093','TPCaWQQo11A','https://www.youtube.com/embed/TPCaWQQo11A','NEFFEX - Life ✨ [Copyright Free]','NEFFEX Music','Music','Spotify: https://open.spotify.com/track/2KGEKCu5hMcnkXC8ryTjmN iTunes: https://itunes.apple.com/us/album/life-single/1317930056 Google Play: ...','2019-03-17 02:28:21','vyt5c62d4b82be738.76255738'),
	('vyt5c8d4048da7927.44520169','TXcg25C56xM','https://www.youtube.com/embed/TXcg25C56xM','NEFFEX - Hope [Copyright Free]','NEFFEX Music','Music','NEW MERCH STORE JUST LAUNCHED: https://neffexstore.com/ Follow us on IG: http://bit.ly/NEFFEX_Insta Spotify: ...','2019-03-17 02:28:24','vyt5c62d4b82be738.76255738'),
	('vyt5c8d101cdb6f26.79589247','UFyjzB_8eKY','https://www.youtube.com/embed/UFyjzB_8eKY','Angelica Panganiban: &quot;Please, ligawan niyo &#39;ko!&quot; | PEP Main Attraction','PEP','Entertainment','Angelica Panganiban and Zanjoe Marudo exchange love advice with each other. Read their PEP Main Attraction feature here: ...','2019-03-16 23:02:52','vyt5c62d4b82be738.76255738'),
	('vyt5c8d10499dc563.49231995','UK0AeySxdQA','https://www.youtube.com/embed/UK0AeySxdQA','Техническа полиция (1982)','Kотаран видео България','Entertainment','(Tekuno porisu 21C, Techno police 21C)','2019-03-16 23:03:37','vyt5c62d4b82be738.76255738'),
	('vyt5c8d1020c77fe6.34528154','UkcvHzSzadw','https://www.youtube.com/embed/UkcvHzSzadw','Ben&amp;Ben - Maybe The Night For FHM Sessions','FHM Philippines','Entertainment','Ben&Ben sings Maybe The Night for FHM Sessions Multimedia Producer: Lian Hammer Dumas and Jham Mariano For more of FHM Philippines, log on to ...','2019-03-16 23:02:56','vyt5c62d4b82be738.76255738'),
	('vyt5c8d404a85d269.98634405','uKWcIaJtS6Q','https://www.youtube.com/embed/uKWcIaJtS6Q','25 Roblox Death Sound Variations in 60 Seconds','Memetastic','Entertainment','gotta oof it to em. Join my discord: https://discord.gg/hwcVZQw Note: The sounds in is video can be reused for your own videos (as long as you aren\'t just ...','2019-03-17 02:28:26','vyt5c62d4b82be738.76255738'),
	('vyt5c8d405e944642.11268353','UmdhHo5CpQ4','https://www.youtube.com/embed/UmdhHo5CpQ4','Francis Pangilinan | Wikipedia audio article','wikipedia tts','Education','This is an audio version of the Wikipedia Article: Francis Pangilinan Listening is a more natural way of learning, when compared to reading. Written language ...','2019-03-17 02:28:46','vyt5c62d4b82be738.76255738'),
	('vyt5c8d4011131206.58329688','uREGk0fT0GQ','https://www.youtube.com/embed/uREGk0fT0GQ','Boys Will Be Bugs by Cavetown (Official Audio) | Animal Kingdom','cavetown','Music','Cavetown\'s \"Boys Will Be Bugs\" from the album Comet, part two of five in Cavetown\'s Animal Kingdom collaboration series. © 2018 Cavetown Typically Comet ...','2019-03-17 02:27:29','vyt5c62d4b82be738.76255738'),
	('vyt5c8d1067b7d134.55757993','VDa5iGiPgGs','https://www.youtube.com/embed/VDa5iGiPgGs','6IX9INE - STOOPID FT. BOBBY SHMURDA (Official Music Video)','Tekashi 6ix9ine','Music','Directed by Trifedrew, William Asher & TheDonCanon of Figure Eight Creative Group Mixed and Mastered by Wizard Lee. @Trifedrew @William_asher ...','2019-03-16 23:04:07','vyt5c62d4b82be738.76255738'),
	('vyt5c8d4eeab1e970.90956935','vJIm9-QwrSA','https://www.youtube.com/embed/vJIm9-QwrSA','NANG INIWAN MO AKO trailer','VCI Aqcuisition','People & Blogs','','2019-03-17 03:30:50','vyt5c8d4eb388e743.14979855'),
	('vyt5c8d104c325de7.17731452','vWxq4GBlhuQ','https://www.youtube.com/embed/vWxq4GBlhuQ','Arashi flicking game (eng subs)','Mirri1070','People & Blogs','English subtitles available if you turn on CC.','2019-03-16 23:03:40','vyt5c62d4b82be738.76255738'),
	('vyt5c8d10661c4fa4.11476653','VY1eFxgRR-k','https://www.youtube.com/embed/VY1eFxgRR-k','Selena Gomez - Back To You','SelenaGomezVEVO','Music','Get \'Back To You,\' out now: http://smarturl.it/BackToYouSG Get exclusive Selena Gomez merch, available at: http://smarturl.it/SelenaStore Sign-up to be the first ...','2019-03-16 23:04:06','vyt5c62d4b82be738.76255738'),
	('vyt5c8d1064f12905.69321780','VyfCR2Fy4_w','https://www.youtube.com/embed/VyfCR2Fy4_w','How To Find Out Youtube Channel ID &amp; User ID (New Update 2018)','Solve in Web','Howto & Style','Find Out your Youtube Channel ID & User ID Blog: http://www.solveinweb.com/ Facebook: https://www.facebook.com/solveinweb Twitter: ...','2019-03-16 23:04:04','vyt5c62d4b82be738.76255738'),
	('vyt5c8d106753ecf1.58511702','VYOjWnS4cMY','https://www.youtube.com/embed/VYOjWnS4cMY','Childish Gambino - This Is America (Official Video)','ChildishGambinoVEVO','Music','This is America” by Childish Gambino http://smarturl.it/TcIgA Director: Hiro Murai Producer: Jason Cole of Doomsday with Ibra Ake and Fam Rothstein of Wolf + ...','2019-03-16 23:04:07','vyt5c62d4b82be738.76255738'),
	('vyt5c8d101c779b86.74448825','wwKIPq4OQLw','https://www.youtube.com/embed/wwKIPq4OQLw','G-Mik Season 2: Borj, Jun-Jun, and Jelai reunites with the Salcedo&#39;s','G E','People & Blogs','No copyright infringement intended. Credits to ABS-CBN Corporation, Jeepney TV and to the person responsible for recording the video. This video is not mine.','2019-03-16 23:02:52','vyt5c62d4b82be738.76255738'),
	('vyt5c8d401352ec13.13268175','WzQBAc8i73E','https://www.youtube.com/embed/WzQBAc8i73E','NEFFEX - Cold ❄️[Copyright Free]','NEFFEX Music','Music','Stream it on Spotify! http://bit.ly/NEFFEXCold iTunes/Apple Music: http://bit.ly/NEFFEX_Cold Google Play: http://bit.ly/NEFFEXColdGP Connect with us on IG!','2019-03-17 02:27:31','vyt5c62d4b82be738.76255738'),
	('vyt5c8d40fb5ce401.23928005','W_SqDsMAass','https://www.youtube.com/embed/W_SqDsMAass','G-Mik: Borj confesses to Roni','G E','People & Blogs','No copyright infringement intended. Credits to ABS-CBN Corporation, Jeepney TV and to the person responsible for recording the whole episode. This video is ...','2019-03-17 02:31:23','vyt5c62d4b82be738.76255738'),
	('vyt5c8d1048ca1026.94422426','XC_IdvhtL7U','https://www.youtube.com/embed/XC_IdvhtL7U','最新ニュース :   「いだてん」生田斗真　竹野内豊とまさかの遊園地「楽しかった」ストックホルムロケ“秘話”語る','News VBL','Music','最新ニュース : 「いだてん」生田斗真 竹野内豊とまさかの遊園地「楽しかった」ストックホルムロケ“秘話”語る https://www.youtube.com/channel/UCfruE...','2019-03-16 23:03:36','vyt5c62d4b82be738.76255738'),
	('vyt5c8d400c1183d5.84814894','XTrnSJLXGBg','https://www.youtube.com/embed/XTrnSJLXGBg','Mokey&#39;s Show - Is Not Christmas','Sr Pelo','Film & Animation','Merry Christmas to everyone!!!! ___ twitter.com/_SrPelo_ srpelo.deviantart.com/ www.facebook.com/123Pendejos ___ If you want to react to any video, make a ...','2019-03-17 02:27:24','vyt5c62d4b82be738.76255738'),
	('vyt5c8a7107545a27.20514004','xvYddgYG98Q','https://www.youtube.com/embed/xvYddgYG98Q','[ Han Hyo Joo x Toma Ikuta MV ] Love Story - Miracle Debikuro&#39;s Love and Magic 2014','HAN-TV','Film & Animation','Please click \"CC\" to turn on subtitles ;) My fanmade video and hope you like this :) Hanamizuki is one of the best movie for me. Movies used: Shining Inheritance, ...','2019-03-14 23:19:35','vyt5c62d4b82be738.76255738'),
	('vyt5c8d105f895729.23574622','YbJOTdZBX1g','https://www.youtube.com/embed/YbJOTdZBX1g','YouTube Rewind 2018: Everyone Controls Rewind | #YouTubeRewind','YouTube','Entertainment','YouTube Rewind 2018. Celebrating the videos, people, music and moments that defined 2018. #YouTubeRewind It wouldn\'t be Rewind without the creators: ...','2019-03-16 23:03:59','vyt5c62d4b82be738.76255738'),
	('vyt5c8a70cee16f21.99675436','YKx5Yd2zvKk','https://www.youtube.com/embed/YKx5Yd2zvKk','Save Thumbnail from Any YouTube Video (Revised How to)','GodlessManitoban','Science & Technology','How to save a YouTube video thumbnail. No websites, add-ons or scripts and works with any web browser. https://i.ytimg.com/vi/(insert video ID ...','2019-03-14 23:18:38','vyt5c62d4b82be738.76255738'),
	('vyt5c8d1018dd00e6.84682431','yvX8axLtwPI','https://www.youtube.com/embed/yvX8axLtwPI','Exes Baggage - Full Trailer HD','Black Sheep','People & Blogs','Don\'t let it weigh you down. Unpacking this September 26, 2018. #ExesBaggage Directed by Dan Villegas Starring #AngelicaPanganiban and #CarloAquino ...','2019-03-16 23:02:48','vyt5c62d4b82be738.76255738'),
	('vyt5c8d4044aa4502.52426255','Yw0OeCMB1MM','https://www.youtube.com/embed/Yw0OeCMB1MM','Underpants - Genocide Ending (SPOILERS)','Sr Pelo','Comedy','LOUD AND EPILEPTIC WARNING -PLEASE, YOU NEED TO PLAY UNDERTALE FOR MORE LAUGHS- -PHONE OPTIONS BELOW!!!!- http://undertale.com/ ...','2019-03-17 02:28:20','vyt5c62d4b82be738.76255738'),
	('vyt5c8d4eebb75752.49551337','YXgn1i8O-gM','https://www.youtube.com/embed/YXgn1i8O-gM','10 Effective Steps to LOSE WEIGHT Based on SHARON CUNETA&#39;s Tips','Jatamari\'s World','Howto & Style','These 10 simple and effective steps to lose weight really work because Sharon Cuneta, the Philippines\' megastar, is obviously getting slimmer. Slowly but surely ...','2019-03-17 03:30:51','vyt5c8d4eb388e743.14979855'),
	('vyt5c8d104c966f05.31390157','YZrTvBdIKhA','https://www.youtube.com/embed/YZrTvBdIKhA','[Eng Subs] Happy Yamada Ryosuke Got Chocolate','reiRyuu','Entertainment','[ ENABLE CAPTIONS TO READ SUBTITLE ] My first time subbing video. It\'s short. But probably not 100% accurate. I\'m just trying to translate what I heard and I ...','2019-03-16 23:03:40','vyt5c62d4b82be738.76255738'),
	('vyt5c8d101e063879.60079337','zPdewquVB2w','https://www.youtube.com/embed/zPdewquVB2w','G-Mik Season 2: Sleepover','G E','People & Blogs','No copyright infringement intended. Credits to ABS-CBN Corporation, Jeepney TV and to the person responsible for recording this video. This video is not mine.','2019-03-16 23:02:54','vyt5c62d4b82be738.76255738'),
	('vyt5c8d106118c6a5.46844081','_quu68XXHEs','https://www.youtube.com/embed/_quu68XXHEs','DON&#39;T CALL ME A NOOB (Official Roblox Music Video)','Kawaii Kunicorn','Entertainment','Nominated for 6th Annual Bloxy Award Best Original Music Video Vote here https://goo.gl/KUvLDk GET THE SONG ▷   Spotify https://goo.gl/TeyajP ...','2019-03-16 23:04:01','vyt5c62d4b82be738.76255738'),
	('vyt5c8d4ee33ea0b3.26417366','_sPqIXqzJNg','https://www.youtube.com/embed/_sPqIXqzJNg','Kumusta Ka','McDo Philippines','People & Blogs','Masarap balik-balikan ang classic na tambalan. Enjoy our Best-Tasting Chicken McDo paired with our World Famous Fries in one delicious meal.','2019-03-17 03:30:43','vyt5c8d4eb388e743.14979855');

/*!40000 ALTER TABLE `VIDEO` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
