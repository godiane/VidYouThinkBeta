# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.7.23)
# Database: vidyouthink
# Generation Time: 2019-04-20 14:36:44 +0000
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
	('vyt5ca775252ccdb7.77829179','RUfGbuiWGRE','0','2019-04-05 23:32:53','vyt5c93bdfc8caf15.08753899',NULL,'vyt5ca7728f335c11.57936891'),
	('vyt5ca77541298657.08396682','zqbe6k2tIhI','1\n00:00:00,000 --> 00:00:04,600\n(Arabic) As salaamu alaikum wa rahmatullahi wa barakaatuhu\n( Eng: Peace be unto you)\n\n2\n00:00:05,520 --> 00:00:19,180\n…..I am blessed with the opportunity to speak with my respected brothers and sisters and the entire ummat.\n\n3\n00:00:19,860 --> 00:00:25,760\nConcerning the calamity that took place in New Zealand a few days ago,\n\n4\n00:00:26,100 --> 00:00:33,860\nin which a savage and insane man massacred 50 muslims in two mosques.\n\n5\n00:00:34,800 --> 00:00:40,820\nI would like to say a few words.\n\n6\n00:00:44,460 --> 00:00:49,780\nAllah has given us the true and correct way of life,\n\n7\n00:00:51,960 --> 00:00:53,340\nArabic : SubhanAllah - Eng: God is perfect\n\n8\n00:00:53,680 --> 00:00:57,800\nin which there is absolutely no scope for rewarding oppression with oppression\n\n9\n00:00:58,360 --> 00:01:12,720\nYou would be surprised to know that in the annals of history, , since the dawn of conflict, our beloved Nabi is the first person to formulate regulations for war.\n\n10\n00:01:13,080 --> 00:01:18,960\n“Look, you are going to battle, but you are not to kill the elderly,women,priests,children,\n\n11\n00:01:19,640 --> 00:01:26,200\nand those who are the pops of Christ\'s and children.\n\n12\n00:01:26,760 --> 00:01:35,640\nYou are not allowed to destroy trees or burn crops, nor are you allowed to take up arms against those who have laid down theirs.\n\n13\n00:01:37,360 --> 00:01:42,280\nYou should immediately accept those who surrender or offer treaties of peace.”\n\n14\n00:01:42,800 --> 00:01:47,920\nIf he taught us such beautiful principles for war, then what beautiful principles for the rest of life must he have shown us?\n\n15\n00:01:48,320 --> 00:01:52,880\nThe ummat has responded to this heinous act.\n\n16\n00:01:53,440 --> 00:02:09,040\nFirstly, we do not reward oppression with oppression,nor do we have permission from Allah or his Rasool to do so.\n\n17\n00:02:10,920 --> 00:02:21,160\nThose who have been martyred,\n\n18\n00:02:21,160 --> 00:02:26,120\nthey have now gone to paradise by the will of Allah,and will enjoy its eternal success and have been blessed to be the recipients of Allah’s pleasure.\n\n19\n00:02:26,720 --> 00:02:35,240\n. To be martyred in namaaz(salaah),in the masjid,on Jumuah(Friday), how many virtues and accolades have been afforded to them. Also they were murdered in a horrible way.\n\n20\n00:02:35,600 --> 00:02:45,320\nConsidering all of these things, I have hope in the mercy of Allah hat he will admit them to the highest stages of Paradise.\n\n21\n00:02:49,440 --> 00:02:55,240\nAlong with this, we also have to ask Allah to guide the man who committed these horrendous acts,\n\n22\n00:02:55,240 --> 00:03:13,160\nas well as all the people of the world who do not know about Islam. We have to make dua for them that Allah gives them the guidance to follow the correct and true faith.\n\n23\n00:03:13,680 --> 00:03:16,040\nOur prophet Muhammad S.A.W conquered Makkah.\n\n24\n00:03:16,720 --> 00:03:22,800\nFor 21 years, the people of Makkah had exhausted all their strength in trying to kill him.\n\n25\n00:03:22,800 --> 00:03:28,040\nHow many difficulties did he have to bear from them?\n\n26\n00:03:28,560 --> 00:03:39,480\nWhen he conquered Makkah, everyone thought that he will execute us, we will be beheaded, and we will be crucified.\n\n27\n00:03:39,720 --> 00:03:50,560\nMay I be sacrificed for his beautiful character \n(How beautiful was his character). \nHe said “How should I treat you all?”\n\n28\n00:03:51,320 --> 00:03:53,320\nThey were all gathered in the Haram.\n\n29\n00:03:54,200 --> 00:04:01,200\nSuhail bin Amr (RA), who had not till then accepted Islam replied\n\n30\n00:04:02,040 --> 00:04:14,560\nSuhail bin Amr (RA) said “You are a person of lofty, noble character and you are the son of those who possessed lofty and noble character. We hope that you will forgive us.”\n\n31\n00:04:15,120 --> 00:04:17,080\nThe Prophet of Allah replied\n\n32\n00:04:17,520 --> 00:04:28,800\nArabic\n\n33\n00:04:28,920 --> 00:04:30,880\nSubhanAllah  (Allah is perfact)\n\n34\n00:04:32,560 --> 00:04:44,400\nThe Prophet of Allah replied \n“Today I will say to you just as my brother Yusuf had said to his brothers after undergoing hardship for 40 years.\n\n35\n00:04:44,760 --> 00:05:02,920\nGo, you are forgiven, you are guilty of nothing. You are all free, I have forgiven you all.”\n\n36\n00:05:03,600 --> 00:05:13,680\nThe Arabic word “Laa Tathreeb” means that you are not guilty of anything. “Go on, live freely.”\n\n37\n00:05:14,360 --> 00:05:17,200\nIn 21 years, how many miracles would they have seen?\n\n38\n00:05:17,360 --> 00:05:20,600\nThey saw the moon split in two pieces, water gushing from the his blessed fingers\n\n39\n00:05:20,800 --> 00:05:28,680\nhis spitting in a well which resulted in its water rising,\n\n40\n00:05:28,700 --> 00:05:36,680\nsmall pebbles reciting the praise of Allah in his hands.\n\n41\n00:05:36,840 --> 00:05:42,840\nHe cooked the leg of a sheep which fed 40 men.\n\n42\n00:05:43,400 --> 00:05:50,680\nMiracles after miracles, yet they did not accept Islam.\n\n43\n00:05:51,320 --> 00:05:57,720\nThey heard the neighing of the horse of Angel Jibraeel in the battle of Badr\n\n44\n00:05:57,720 --> 00:06:01,680\nbut they did not recite the kalimah.\n\n45\n00:06:01,680 --> 00:06:11,800\nOn that faithful day, in the 8th year after Hijrah, when he announced that I have forgiven all of you, they all accepted Islam.\n\n46\n00:06:12,160 --> 00:06:33,040\nI humbly plead to the entire Muslim Ummat, that we pray for their guidance and that we do not even think of committing acts of Ignorance, such as attacking a church.\n\n47\n00:06:33,480 --> 00:06:40,240\nThis is not the way of my Nabi. There is no permission for this in Allah’s Qur’an.\n\n48\n00:06:40,560 --> 00:06:51,600\nHe has not permitted us to do such things. We have to forgive, and to leave it up to Allah.\n\n49\n00:06:53,680 --> 00:07:01,000\nWhen the Abbasid Caliphate had grown weak, Christians attacked the city of Jerusalem and gained control.\n\n50\n00:07:01,920 --> 00:07:15,480\nThe leader of the Christians at that time had taken an oath that until Muslim blood reaches the neck of my horse, the slaughter will continue.\n\n51\n00:07:16,080 --> 00:07:23,080\nMen, women and children were slaughtered, massacred.\n\n52\n00:07:23,400 --> 00:07:26,800\nBlood flowed in the streets like water.\n\n53\n00:07:27,280 --> 00:07:34,320\nSo terrible it was that a Christian Priest pleaded with the leader to stop the bloodshed, let them be.\n\n54\n00:07:34,840 --> 00:07:49,520\nHe replied that until my oath is fulfilled, I will not stop. A bucket of blood was brought and thrown at the horse which covered its chest.\n\n55\n00:07:50,040 --> 00:07:56,520\nOnly then he ended the horrendous massacre. By then, hundreds of thousands of people were killed.\n\n56\n00:07:57,000 --> 00:08:02,200\nMay Allah illuminate the grave of Salahuddin Ayyubi.\n\n57\n00:08:02,720 --> 00:08:09,200\nWhen he conquered Jerusalem he announced that everyone was forgiven.\n\n58\n00:08:09,520 --> 00:08:20,040\nWhoever wants to stay here can do so freely, and whoever would like to leave,  , and then take whatever you can with you.\n\n59\n00:08:21,320 --> 00:08:29,440\nThose who want to leave should leave a certain amount as payment in lieu of what they take with them.\n\n60\n00:08:30,320 --> 00:08:37,120\nThose who could afford to pay this fine did so while those who could not,\n\n61\n00:08:37,760 --> 00:08:48,080\nmay I be sacrificed for the character of Salahuddin, their fine was paid from his own personal wealth and deposited in the treasury.\n\n62\n00:08:48,120 --> 00:08:59,240\nWhen all of the great Christian historians mention these incidents, their pens stop in their tracks out of shame and have no choice\n\n63\n00:08:59,360 --> 00:09:04,760\nbut to openly sing the praises of Salahuddin and denounce the atrocities of their kings.\n\n64\n00:09:05,200 --> 00:09:15,200\nMy brothers and sisters,I swear by Allah, we have to hold on firmly to the character of our Nabi.\n\n65\n00:09:15,520 --> 00:09:18,400\nThe real decision will be made by Allah in the next life.\n\n66\n00:09:18,760 --> 00:09:21,760\nOppression and hatred are to responded to with oppression and hate.\n\n67\n00:09:22,160 --> 00:09:31,880\nOne of the greatest sunnahs of our beloved Nabi is to forgive .\n\n68\n00:09:32,140 --> 00:09:33,440\nAs salaamu alaikum wa rahmatullahi wa barakaatuhu.\n(peace be onto you)\n\n','2019-04-05 23:23:57','vyt5c93bdfc8caf15.08753899','2019-04-05 23:33:21','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca800f3cfdef2.43619077','YXgn1i8O-gM','1\n00:00:00,030 --> 00:00:08,189\nso the whole point of it is ping beam\n\n2\n00:00:03,480 --> 00:00:09,929\nAllah Allah give him a million and once\n\n3\n00:00:08,189 --> 00:00:12,769\nI have said that that it\'s really a\n\n4\n00:00:09,929 --> 00:00:12,769\nlifestyle change\n\n5\n00:00:15,859 --> 00:00:21,510\nhey there today we are going to feature\n\n6\n00:00:19,050 --> 00:00:23,699\na ten step guide to losing weight based\n\n7\n00:00:21,510 --> 00:00:26,189\non a compilation of tips from no less\n\n8\n00:00:23,699 --> 00:00:28,590\nthan miss sharon cuneta if you haven\'t\n\n9\n00:00:26,189 --> 00:00:30,689\nsubscribed yet - Chatta Mary TV please\n\n10\n00:00:28,590 --> 00:00:44,270\nsubscribe for more inspiring videos like\n\n11\n00:00:30,689 --> 00:00:44,270\nthis here Sharon step number one pad\n\n12\n00:00:45,170 --> 00:00:58,289\nthai or whatever I want to eat haunted I\n\n13\n00:00:50,160 --> 00:01:00,870\ndon\'t fit in I don\'t know no carbs on\n\n14\n00:00:58,289 --> 00:01:03,420\nInstagram Sharon gave this step to one\n\n15\n00:01:00,870 --> 00:01:05,100\nof her followers she said in the\n\n16\n00:01:03,420 --> 00:01:09,150\nbeginning if you\'re serious\n\n17\n00:01:05,100 --> 00:01:12,090\ncut out all cards rice bread pasta\n\n18\n00:01:09,150 --> 00:01:14,729\npotatoes punch it just have regular\n\n19\n00:01:12,090 --> 00:01:21,200\nviolence but only eat a very small\n\n20\n00:01:14,729 --> 00:01:21,200\namount number 4 chew slowly\n\n21\n00:01:25,670 --> 00:01:34,170\nnumber five keep it up\n\n22\n00:01:30,200 --> 00:01:36,240\nshe kept telling herself Sharon just six\n\n23\n00:01:34,170 --> 00:01:39,149\nmonths out of your life and the rest of\n\n24\n00:01:36,240 --> 00:01:40,950\nyour years will be happier than now it\'s\n\n25\n00:01:39,149 --> 00:01:43,770\nbeen two years and she still keeps\n\n26\n00:01:40,950 --> 00:01:47,789\ntelling herself that she has 20 to lose\n\n27\n00:01:43,770 --> 00:01:50,820\nshe said I have dropped around 75 I keep\n\n28\n00:01:47,789 --> 00:01:53,670\nsaying I have 20 to lose after I lose\n\n29\n00:01:50,820 --> 00:01:54,880\nthe 20 I will probably still be saying I\n\n30\n00:01:53,670 --> 00:02:00,709\nhave to lose 20\n\n31\n00:01:54,880 --> 00:02:00,709\n[Music]\n\n32\n00:02:09,770 --> 00:02:16,169\n[Music]\n\n33\n00:02:19,040 --> 00:02:25,770\nnumber seven do not think of the few\n\n34\n00:02:22,440 --> 00:02:26,170\nmonths ahead instead just do it day by\n\n35\n00:02:25,770 --> 00:02:29,720\nday\n\n36\n00:02:26,170 --> 00:02:47,280\n[Music]\n\n37\n00:02:29,720 --> 00:02:50,580\nnumber eight number nine try to avoid\n\n38\n00:02:47,280 --> 00:02:58,950\nfried foods instead go for grilled or\n\n39\n00:02:50,580 --> 00:03:00,890\nsteamed number ten use stevia instead of\n\n40\n00:02:58,950 --> 00:03:03,780\nsugar\n\n41\n00:03:00,890 --> 00:03:05,820\naccording to stevia calm the stevia\n\n42\n00:03:03,780 --> 00:03:07,860\nplant is a small shrub that has been\n\n43\n00:03:05,820 --> 00:03:10,620\nused as a sweetener for hundreds of\n\n44\n00:03:07,860 --> 00:03:13,230\nyears the stevia leaf extract is a\n\n45\n00:03:10,620 --> 00:03:15,090\nhighly potent natural sweetener that can\n\n46\n00:03:13,230 --> 00:03:17,060\nbe anywhere from two hundred to three\n\n47\n00:03:15,090 --> 00:03:20,400\nhundred fifty times sweeter than sugar\n\n48\n00:03:17,060 --> 00:03:24,510\nthis alternative to sugar is known to\n\n49\n00:03:20,400 --> 00:03:27,210\nhave zero calories so these are the ten\n\n50\n00:03:24,510 --> 00:03:29,430\nvery useful and effective steps the\n\n51\n00:03:27,210 --> 00:03:32,580\ncheran followed as her guide to losing\n\n52\n00:03:29,430 --> 00:03:35,490\nweight but overall this is what Sharon\n\n53\n00:03:32,580 --> 00:03:36,520\nwants to point out well the whole point\n\n54\n00:03:35,490 --> 00:03:42,130\nof it is\n\n55\n00:03:36,520 --> 00:03:43,900\nhing be malevolent and Athene and one\n\n56\n00:03:42,130 --> 00:03:46,060\ncan accept that that it\'s really a\n\n57\n00:03:43,900 --> 00:03:48,370\nlifestyle change one of Sharon\'s\n\n58\n00:03:46,060 --> 00:03:51,010\nfollowers on Instagram posted this\n\n59\n00:03:48,370 --> 00:03:53,290\ncomment and Sharons reply somehow sums\n\n60\n00:03:51,010 --> 00:03:55,620\nup her 10 step guide on how to lose\n\n61\n00:03:53,290 --> 00:03:55,620\nweight\n\n62\n00:04:07,230 --> 00:04:10,400\n[Music]\n\n63\n00:04:12,599 --> 00:04:17,970\nlast February 12 Sharron posted an\n\n64\n00:04:16,019 --> 00:04:21,299\ninspiring message on her Facebook page\n\n65\n00:04:17,970 --> 00:04:27,539\nwherein she looked back to January 2016\n\n66\n00:04:21,299 --> 00:04:31,440\nwhen this was how she looked and then\n\n67\n00:04:27,539 --> 00:04:34,169\nshe made a vow to herself she said I\n\n68\n00:04:31,440 --> 00:04:37,380\nwould not stop until I looked in the\n\n69\n00:04:34,169 --> 00:04:41,599\nmirror and saw the real me again because\n\n70\n00:04:37,380 --> 00:04:44,639\nthese first two pictures never where and\n\n71\n00:04:41,599 --> 00:04:47,220\nthen she posted four more photos of her\n\n72\n00:04:44,639 --> 00:04:49,800\nthis time they were taken just this year\n\n73\n00:04:47,220 --> 00:04:53,960\nwhich was two years after she started\n\n74\n00:04:49,800 --> 00:04:57,960\nchanging her lifestyle and eating habits\n\n75\n00:04:53,960 --> 00:05:01,530\nSharon said she was doing this first for\n\n76\n00:04:57,960 --> 00:05:04,289\nherself secondly she said she wants to\n\n77\n00:05:01,530 --> 00:05:06,449\nlive a long healthy life for and with\n\n78\n00:05:04,289 --> 00:05:10,320\nher children and future grandchildren\n\n79\n00:05:06,449 --> 00:05:12,660\nand lastly she is also doing it for her\n\n80\n00:05:10,320 --> 00:05:17,070\nfans because they deserve the best\n\n81\n00:05:12,660 --> 00:05:19,289\nversion of their idol do you think\n\n82\n00:05:17,070 --> 00:05:22,020\nSharon\'s ten step guide will work for\n\n83\n00:05:19,289 --> 00:05:24,630\nyou are they too hard or are they do\n\n84\n00:05:22,020 --> 00:05:26,789\nabove write your comments below if you\n\n85\n00:05:24,630 --> 00:05:29,789\nhave a weight loss story to share then\n\n86\n00:05:26,789 --> 00:05:31,710\ngo ahead and write that as well don\'t\n\n87\n00:05:29,789 --> 00:05:33,960\nforget to give this video a thumbs up\n\n88\n00:05:31,710 --> 00:05:35,699\nand if you haven\'t subscribed yet click\n\n89\n00:05:33,960 --> 00:05:38,220\nthe subscribe button and we\'d love to\n\n90\n00:05:35,699 --> 00:05:42,020\nkeep you updated with our new videos so\n\n91\n00:05:38,220 --> 00:05:42,020\nI\'ll see you on the next one god bless\n\n','2019-04-05 23:35:15','vyt5c93bdfc8caf15.08753899','2019-04-06 09:29:23','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca82e48097949.54322895','DrAMsCKv_GM','1\n00:00:00,030 --> 00:00:08,280\nsorry conga Masuka car gel seen in play\n\n2\n00:00:03,120 --> 00:00:09,900\nhouse gets painfully real for fans the\n\n3\n00:00:08,280 --> 00:00:12,360\npast six months have been a roller\n\n4\n00:00:09,900 --> 00:00:14,969\ncoaster of emotions for a long time fans\n\n5\n00:00:12,360 --> 00:00:16,550\nof car gel whose on-screen reunions\n\n6\n00:00:14,969 --> 00:00:18,660\nburned hopes of a real-life\n\n7\n00:00:16,550 --> 00:00:21,029\nreconciliation until their friendship\n\n8\n00:00:18,660 --> 00:00:27,539\nwas supposedly ruined by negativity and\n\n9\n00:00:21,029 --> 00:00:29,910\nunmet expectations on Monday former\n\n10\n00:00:27,539 --> 00:00:32,279\nsweethearts Angelica Panganiban and\n\n11\n00:00:29,910 --> 00:00:34,559\nCarlo Aquino parted ways all over again\n\n12\n00:00:32,279 --> 00:00:36,600\nat least on screen with their respective\n\n13\n00:00:34,559 --> 00:00:38,489\ncharacters in the daytime series\n\n14\n00:00:36,600 --> 00:00:40,890\nPlayhouse saying goodbye to each other\n\n15\n00:00:38,489 --> 00:00:47,000\nand exchanging apologies after a failed\n\n16\n00:00:40,890 --> 00:00:50,539\nromance in the February 25th episode\n\n17\n00:00:47,000 --> 00:00:53,640\nHarold Aquino said sorry to Patty\n\n18\n00:00:50,539 --> 00:00:55,739\nPanganiban for only belatedly informing\n\n19\n00:00:53,640 --> 00:00:58,140\nher of a fellowship he is taking up in\n\n20\n00:00:55,739 --> 00:01:00,000\nSingapore for three years prompting the\n\n21\n00:00:58,140 --> 00:01:06,570\nlatter to ask whether the decision was\n\n22\n00:01:00,000 --> 00:01:08,880\nthe result of their falling-out Gus took\n\n23\n00:01:06,570 --> 00:01:14,340\non malam and mon august unga\'s took oh\n\n24\n00:01:08,880 --> 00:01:16,439\nnot IM young tail patty told Harold /\n\n25\n00:01:14,340 --> 00:01:18,710\nAugust hooker real cos I\'m aging fair\n\n26\n00:01:16,439 --> 00:01:18,710\nCEO\n\n27\n00:01:19,570 --> 00:01:25,400\nhindi naman pew Eden sapling young Pegg\n\n28\n00:01:23,000 --> 00:01:30,500\nmama hana i the big a co co CAHSEE\n\n29\n00:01:25,400 --> 00:01:31,700\nminson young support cooling sorry\n\n30\n00:01:30,500 --> 00:01:37,729\ncompany Geetha\n\n31\n00:01:31,700 --> 00:01:42,000\nsorry column Asuka she went on a Corinne\n\n32\n00:01:37,729 --> 00:01:45,870\nnent a Corinne Amasa\n\n33\n00:01:42,000 --> 00:01:56,550\na masa akan magma bago young/nasa Paso\n\n34\n00:01:45,870 --> 00:01:57,540\nCo Peru Hindi PHA a baka Hanina although\n\n35\n00:01:56,550 --> 00:02:03,150\nvisibly hurt\n\n36\n00:01:57,540 --> 00:02:05,070\nHarold conceded he said he has long\n\n37\n00:02:03,150 --> 00:02:10,340\nknown he could not possibly replace\n\n38\n00:02:05,070 --> 00:02:10,340\nMarlon sanyo mundo in Patty\'s heart I\n\n39\n00:02:10,370 --> 00:02:16,650\nknow you tried Farouk ahead and in God\n\n40\n00:02:13,650 --> 00:02:20,030\nmo oka had a nun Phillip Corinne we both\n\n41\n00:02:16,650 --> 00:02:20,030\nknow that I cannot be that guy\n\n42\n00:02:20,270 --> 00:02:29,130\nit will always be him\n\n43\n00:02:22,440 --> 00:02:31,170\nhe said the on screen parting at least\n\n44\n00:02:29,130 --> 00:02:33,630\nto some car gel fans who shared online\n\n45\n00:02:31,170 --> 00:02:35,940\ntheir reactions felt painfully familiar\n\n46\n00:02:33,630 --> 00:02:41,700\nfollowing the recent developments in the\n\n47\n00:02:35,940 --> 00:02:44,250\npersonal lives of their idols in early\n\n48\n00:02:41,700 --> 00:02:46,050\nJanuary Pangani been courted headlines\n\n49\n00:02:44,250 --> 00:02:48,480\nwhen she declared her intention to\n\n50\n00:02:46,050 --> 00:02:50,610\ndistance herself from aquino saying\n\n51\n00:02:48,480 --> 00:02:55,170\nnegativity from fans affected their\n\n52\n00:02:50,610 --> 00:02:56,910\nrelationship the rent appeared to have\n\n53\n00:02:55,170 --> 00:02:59,040\nbeen triggered by one follower who\n\n54\n00:02:56,910 --> 00:03:01,170\ncensured Pangani been over her cryptic\n\n55\n00:02:59,040 --> 00:03:04,670\nposts about love that supposedly made\n\n56\n00:03:01,170 --> 00:03:04,670\nAquino vulnerable to judgment\n\n57\n00:03:05,250 --> 00:03:13,680\na week later the actress spoke of being\n\n58\n00:03:08,670 --> 00:03:15,630\nhurt after having loved again she went\n\n59\n00:03:13,680 --> 00:03:18,000\non to ask followers on Twitter to help\n\n60\n00:03:15,630 --> 00:03:20,580\nher move on from the past boyfriend who\n\n61\n00:03:18,000 --> 00:03:25,500\nalso happens to be a play house co-star\n\n62\n00:03:20,580 --> 00:03:26,010\nboth descriptions that fit Akeno at the\n\n63\n00:03:25,500 --> 00:03:28,500\ntime\n\n64\n00:03:26,010 --> 00:03:31,140\nrumors of Akeno dating another woman had\n\n65\n00:03:28,500 --> 00:03:32,970\njust surfaced following viral photos of\n\n66\n00:03:31,140 --> 00:03:33,510\nhim apparently on vacation with the\n\n67\n00:03:32,970 --> 00:03:46,160\nmodel\n\n68\n00:03:33,510 --> 00:03:46,160\n[Music]\n\n','2019-04-03 21:45:52','vyt5ca396bdafbb89.79545145','2019-04-06 12:42:48','0');

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

LOCK TABLES `COMMENT` WRITE;
/*!40000 ALTER TABLE `COMMENT` DISABLE KEYS */;

INSERT INTO `COMMENT` (`ID`, `VIDEO_ID`, `NAME`, `COMMENT`, `INSERT_TIMESTAMP`, `INSERT_USER_ID`, `YT_COMMENT_ID`, `SEARCH_QUERY_ID`)
VALUES
	('vyt5ca77544aa2136.14127370','zqbe6k2tIhI','maru Khan',X'417373616C616D7520616C61696B756D20616C6C20667269656E647320F09FA49DF09FA49DF09FA49DF09FA49DF09FA49DF09F87AEF09F87B3E29DA4F09F87B5F09F87B0416C6C61682070616B20686172206D6F6D696E206D7573616C6D616E206B6F204465656E202D652D69736C616D206B6920736168692073616D616A20617461206661726D6179652E2041616D65656E2073756D6D2061616D65656E2E2E2E','2019-04-05 23:24:00','vyt5c93bdfc8caf15.08753899','UgzRrrpH-DzBHNyjghZ4AaABAg','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca775466e63b6.02072500','zqbe6k2tIhI','Shafqat hussain',X'416C6C6168207461726971206A616D696C20736162206B6F206C616D626920756D617220646169','2019-04-05 23:24:02','vyt5c93bdfc8caf15.08753899','UgyoLSfezScqvgzQsb54AaABAg','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca77548082526.69128544','zqbe6k2tIhI','Safdar Writes',X'576168204D61756C616E612069746E61205A756C6D205365686E65204B2042616164204268692048616D617279204E6162692053617720556E204B204C69794520447561204B6172747920546861792E2E20417572204170702E426869204E616269205361772061204661726D616E20506F6E6368612052616879204861696E204175622054616B204B657369204E6520556E204C6F676F204B204C6979652048696461796174204B61204E6169204B616861204A617A616B416C6C616820596F75207220317374204F6E6520552072204265737420416E6420317374204D61756C616E61204A65737920536162204E6F6A6177616E205A6175712053686175712053652053756E746179204861696E203C33','2019-04-05 23:24:03','vyt5c93bdfc8caf15.08753899','UgyyHA4a4YyBJswIxE94AaABAg','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca77549cb4f69.60371091','zqbe6k2tIhI','Anjum Ijaz',X'566964656F206D616B65722073686F756C642061646420456E676C6973682063617074696F6E202820456E676C697368205472616E736C6174696F6E292E0A57696C6C2068656C7066756C20666F7220666F726569676E65727320746F20756E6465727374616E6420626563617573652049736C616D20697320666F722065766572796F6E6521','2019-04-05 23:24:05','vyt5c93bdfc8caf15.08753899','Ugw5wfeY7t4K3hjkYK94AaABAg','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca7754ba5bdd0.68346941','zqbe6k2tIhI','Umair Bhat',X'416C6C61682048617A726174204B6920486966617A6174204661726D6179652041616D65656E','2019-04-05 23:24:07','vyt5c93bdfc8caf15.08753899','UgwGp9LQ1TzmgM2BqHl4AaABAg','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca7754d6ed124.65704212','zqbe6k2tIhI','i love Molana Tariq jameel sahab Mohammed Osama',X'49206C6F7665206D6F6C616E61205461726971206A616D65656C2073C3A068C3A0C39F','2019-04-05 23:24:09','vyt5c93bdfc8caf15.08753899','UgwR9vkCcD6ODWq3OZF4AaABAg','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca7754f0dd295.16076121','zqbe6k2tIhI','Muhammad Kashif',X'D8A7D984D984DB8120D8AAD8B9D8A7D984DB8CD9B020D985D988D984D8A7D986D8A720D8B5D8A7D8ADD8A820DAA9D98820D984D985D8A8DB8C20D8B9D985D8B120D8B9D8B7D8A720D981D8B1D985D8A7D8A6DB9220D8A2D985DB8CD98620D8ABD98520D8A2D985DB8CD98620DB8CD8A720D8B1D8A820D8A7D984D8B9D8A7D984D985DB8CD986','2019-04-05 23:24:10','vyt5c93bdfc8caf15.08753899','Ugz2TecJllCLVB0hvUl4AaABAg','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca77550b0b2e6.49702069','zqbe6k2tIhI','Tariq Shah Khan',X'D8A7D984D984DB81E2808E20D8A2D9BE20DAA9D98820D984D985D8A8DB8C20D8B2D986D8AFDAAFDB8C20D8AFDB922028D8A7D985DB8CD98629','2019-04-05 23:24:12','vyt5c93bdfc8caf15.08753899','Ugx00MRjepTqUdIWnTt4AaABAg','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca77552420f15.43204217','zqbe6k2tIhI','Umar Ansari',X'D8A7D984D984DB8120D8AAD8B9D8A7D984D8A720D985D988D984D8A7D986D8A720D8AAD8A7D8B1D98220D8ACD985DB8CD98420D8B5D8A7D8ADD8A820DAA9DB8C20D8B9D985D8B120D985DB8CDABA20D8A8D8B1DAA9D8AA20D8B9D8B7D8A720D981D8B1D985D8A7DB9220D8A7D985DB8CD986','2019-04-05 23:24:14','vyt5c93bdfc8caf15.08753899','UgwtPdjKJoP3ZxvJbQJ4AaABAg','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca77553ecf233.70613778','zqbe6k2tIhI','Md Ahamed Ali',X'456E676C6973682063617074696F6E2064616C6F20796161722E20476569726F206B6F206268692062616174206B6F2073616D616A686E61206A61726F6F7269206861692E','2019-04-05 23:24:15','vyt5c93bdfc8caf15.08753899','UgwO5m0PlXuySj86fu54AaABAg','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca800f6e17f58.55977361','YXgn1i8O-gM','Ann Collin',X'4D756C6120617461206E67206261746120616B6F20697361206C616E67206C616769206B6F206E61726972696E6967206E612070726F626C656D61206E6920736861726F6E20617920616E6720776569676874206E79612E204269676C61207379616E6720746174616261207461706F732070617061796174207461706F732074617461626120756C69742E','2019-04-05 23:35:19','vyt5c93bdfc8caf15.08753899','UgwurkFyn7VRXXb1hlx4AaABAg','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca800f833db51.03730640','YXgn1i8O-gM','rebecca wakabayashi',X'6472696E6B20677265656E2074656120616E64206578657263697365206576657279206461792E776167206B756D61696E206E672074696E61706179206174206E6F6F646C6573206172617720617261772E6D61746161732063616C6F72696573206E69746F2E7761672064616D6968616E206E67206B616E696E2E','2019-04-05 23:35:21','vyt5c93bdfc8caf15.08753899','Ugzo93lChRhszfLXDdx4AaABAg','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca800fa1ede20.18068074','YXgn1i8O-gM','Massage Bot',X'4E6167207061206C69706F2079616E2E204E65766572206E616D616E2070756D617561742079616E20736920736861726F6E206B756E67206469206E616770617061206C69706F2E','2019-04-05 23:35:22','vyt5c93bdfc8caf15.08753899','UgzHk8iKxz-F21dkM354AaABAg','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca800fb33b760.01774305','YXgn1i8O-gM','Eadie Angelo',X'42616C6F6E657921205468616E6B7320746F204741535452494320425950415353212121','2019-04-05 23:35:24','vyt5c93bdfc8caf15.08753899','UgyISM7x_8NkGAfdHBx4AaABAg','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca800fc6fb572.27027022','YXgn1i8O-gM','Ïñœ Õçī',X'4D617361726170206B6179616E67206B756D61696E2121','2019-04-05 23:35:25','vyt5c93bdfc8caf15.08753899','UgwJJLR6-C3Qr6ezrAR4AaABAg','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca800fde82707.25958076','YXgn1i8O-gM','Darling Cabanos',X'69206D69737320796F75206D616D20536861726F6E212121','2019-04-05 23:35:27','vyt5c93bdfc8caf15.08753899','Ugy5RNopN211_7dFnMZ4AaABAg','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca800ff44f941.15483436','YXgn1i8O-gM','ANNE AIZON WESTLIFERS',X'7468616E6B2020666F722020746869732020313020207469707320206974732020766572792020696D706F7274616E742E2E','2019-04-05 23:35:28','vyt5c93bdfc8caf15.08753899','UgyN5goKk1mxapat2gF4AaABAg','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca801006dbd94.36185095','YXgn1i8O-gM','Pinky Heart',X'4D6168697261702074616C616761206D61672064696574206D6172616D69206B6173696E67206D617361726170206E6120706167206B61696E206174206D696E73616E2079756E67207374726573732064696E616461616E207361207061676B61696E20617420616D696E696E206E616B616B6174616D6164206D6167206578657263697365','2019-04-05 23:35:30','vyt5c93bdfc8caf15.08753899','UgwjNd68A6ZB8CB5LoJ4AaABAg','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca80101b41512.18700328','YXgn1i8O-gM','Meiya Gabrinao',X'4E6963652E2E2067616E79616E2064696E2067696E6167617761206E6720616D6F206B6F206E616720706170617961742064696E2E2E206865686568206D6173206D6167616E6461206E61206B61746177616E206D6F206E676179756E206D61616D20736861726F6E2E2E206B6565702069742075702C20676F6420626C65737320796F7520706F2E','2019-04-05 23:35:31','vyt5c93bdfc8caf15.08753899','UgxFu407cqa4GQ2Rdr14AaABAg','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca80103111c79.30151173','YXgn1i8O-gM','Izuru Kamukura',X'47616C696E67212121204B656570206974207570204D732E20536861726F6E2E','2019-04-05 23:35:33','vyt5c93bdfc8caf15.08753899','UgwzuqG4mjTEKksl2n14AaABAg','vyt5ca6324b0cfd36.75046055');

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
  `SEARCH_QUERY_ID` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  PRIMARY KEY (`ID`,`VIDEO_ID`),
  UNIQUE KEY `ID` (`ID`),
  UNIQUE KEY `VIDEO_ID` (`VIDEO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

LOCK TABLES `RATING` WRITE;
/*!40000 ALTER TABLE `RATING` DISABLE KEYS */;

INSERT INTO `RATING` (`ID`, `VIDEO_ID`, `RATING`, `OVERALL_VIEW`, `LIKES`, `DISLIKES`, `INSERT_TIMESTAMP`, `INSERT_USER_ID`, `UPDATE_TIMESTAMP`, `SEARCH_QUERY_ID`)
VALUES
	('vyt5ca7752778e9b2.72981244','RUfGbuiWGRE','1806',506278,1841,35,'2019-04-05 23:21:51','vyt5c93bdfc8caf15.08753899','2019-04-05 23:32:55','vyt5ca7728f335c11.57936891'),
	('vyt5ca77527c39bd3.33711156','jFdUTbyNa1Y','50',47645,52,2,'2019-04-05 23:21:51','vyt5c93bdfc8caf15.08753899','2019-04-05 23:32:55','vyt5ca7728f335c11.57936891'),
	('vyt5ca775281c2712.49459979','xvYddgYG98Q','120',23893,122,2,'2019-04-05 23:21:52','vyt5c93bdfc8caf15.08753899','2019-04-05 23:32:56','vyt5ca7728f335c11.57936891'),
	('vyt5ca7799342c760.24755409','Dnu5a0ObYxM','1647',1672421,2181,534,'2019-04-05 00:40:45','vyt5c93bdfc8caf15.08753899','2019-04-05 23:51:47','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca77993bf5316.37963713','VOsaMaVlPWg','3013',1121029,4072,1059,'2019-04-05 00:40:46','vyt5c93bdfc8caf15.08753899','2019-04-05 23:51:47','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca77994314856.03861069','KW5ldz52pwQ','3456',991670,4789,1333,'2019-04-05 00:40:46','vyt5c93bdfc8caf15.08753899','2019-04-05 23:51:48','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca7799493b994.20578248','Qnwv_vOmbvQ','1135',788310,1887,752,'2019-04-05 00:40:47','vyt5c93bdfc8caf15.08753899','2019-04-05 23:51:48','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca77994de51e5.47400854','cN-Oq1bpvJw','1122',676114,2188,1066,'2019-04-05 00:40:47','vyt5c93bdfc8caf15.08753899','2019-04-05 23:51:48','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca779954e4793.27800012','bNpvcWqv-CQ','15629',552152,15841,212,'2019-04-05 00:40:47','vyt5c93bdfc8caf15.08753899','2019-04-05 23:51:49','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca7799598cd50.59085172','rrWN-DEjhiE','4897',388386,5559,662,'2019-04-05 00:40:48','vyt5c93bdfc8caf15.08753899','2019-04-05 23:51:49','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca77995dea224.27511478','OdxLRnBrx1s','7526',367263,8359,833,'2019-04-05 00:40:48','vyt5c93bdfc8caf15.08753899','2019-04-05 23:51:49','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca779963baed5.72633693','zqbe6k2tIhI','14169',361617,14529,360,'2019-04-05 00:40:49','vyt5c93bdfc8caf15.08753899','2019-04-05 23:51:50','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca7799688d6a8.50040557','15UrAsLzk08','281',258827,476,195,'2019-04-05 00:40:49','vyt5c93bdfc8caf15.08753899','2019-04-05 23:51:50','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca77996e9cc92.63507528','ZRmiQ2sqtOo','867',244313,1063,196,'2019-04-05 00:40:49','vyt5c93bdfc8caf15.08753899','2019-04-05 23:51:50','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca779973faec0.61679245','huovEuKvqmI','3852',221804,4046,194,'2019-04-05 00:40:50','vyt5c93bdfc8caf15.08753899','2019-04-05 23:51:51','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca7799785d142.70692843','DUk0EHSNVx8','551',210361,1057,506,'2019-04-05 00:40:50','vyt5c93bdfc8caf15.08753899','2019-04-05 23:51:51','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca77997d770c4.90291144','OVasVStyRMY','10022',197338,10670,648,'2019-04-05 00:40:50','vyt5c93bdfc8caf15.08753899','2019-04-05 23:51:51','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca779982a6ea1.26478921','i2fT_PhmYBw','7362',115412,7567,205,'2019-04-05 00:40:51','vyt5c93bdfc8caf15.08753899','2019-04-05 23:51:52','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca7799875d1f4.12174117','5tI0JVBR5RM','201',104766,380,179,'2019-04-05 00:40:51','vyt5c93bdfc8caf15.08753899','2019-04-05 23:51:52','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca77998be6c07.14523255','eWv-3mm3XDE','784',103652,862,78,'2019-04-05 00:40:52','vyt5c93bdfc8caf15.08753899','2019-04-05 23:51:52','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca779991121b0.06742153','sIOE4D90UfU','940',83921,1014,74,'2019-04-05 00:40:52','vyt5c93bdfc8caf15.08753899','2019-04-05 23:51:53','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca77999593f04.55846741','_cw9BB90620','80',77790,122,42,'2019-04-05 00:40:53','vyt5c93bdfc8caf15.08753899','2019-04-05 23:51:53','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca77999b07dd8.74187741','Jfkvk7mAr4A','557',77275,603,46,'2019-04-05 00:40:53','vyt5c93bdfc8caf15.08753899','2019-04-05 23:51:53','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca7799a2076c4.59196922','nrUiIBH3-_8','430',46859,477,47,'2019-04-05 00:40:53','vyt5c93bdfc8caf15.08753899','2019-04-05 23:51:54','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca7799a749f28.58836358','TkcQHJ4F8yw','219',46207,271,52,'2019-04-05 00:40:54','vyt5c93bdfc8caf15.08753899','2019-04-05 23:51:54','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca7799acf1298.80034551','cx0V-pVra0s','-28',44517,26,54,'2019-04-05 00:40:54','vyt5c93bdfc8caf15.08753899','2019-04-05 23:51:54','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca7799b263d68.41793965','kcWw0NsKzvM','182',42466,209,27,'2019-04-05 00:40:54','vyt5c93bdfc8caf15.08753899','2019-04-05 23:51:55','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca7799b757392.71932248','I0it863xfuQ','149',40524,205,56,'2019-04-05 00:40:55','vyt5c93bdfc8caf15.08753899','2019-04-05 23:51:55','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca81ed14e5311.01200174','_sPqIXqzJNg','10009',4177908,10181,172,'2019-04-05 23:34:08','vyt5ca396bdafbb89.79545145','2019-04-06 11:36:49','vyt5ca8013622b036.88497697'),
	('vyt5ca81ed1b24253.77783737','CaH799aJhKE','653',280828,709,56,'2019-04-05 23:34:08','vyt5ca396bdafbb89.79545145','2019-04-06 11:36:49','vyt5ca8013622b036.88497697'),
	('vyt5ca81ed2228863.72184069','YXgn1i8O-gM','1541',181548,1633,92,'2019-04-05 23:34:09','vyt5ca396bdafbb89.79545145','2019-04-06 11:36:50','vyt5ca8013622b036.88497697'),
	('vyt5ca81ed28606e3.74044791','bdsL4HNJn24','148',20426,156,8,'2019-04-05 23:34:09','vyt5ca396bdafbb89.79545145','2019-04-06 11:36:50','vyt5ca8013622b036.88497697'),
	('vyt5ca81ed2d41bb7.49490071','REvVvr77n7Y','122',13477,124,2,'2019-04-05 23:34:09','vyt5ca396bdafbb89.79545145','2019-04-06 11:36:50','vyt5ca8013622b036.88497697'),
	('vyt5ca81ed3266140.44128261','Aq2QMXdfUHA','288',11478,293,5,'2019-04-05 23:34:10','vyt5ca396bdafbb89.79545145','2019-04-06 11:36:51','vyt5ca8013622b036.88497697'),
	('vyt5ca81ed3729543.87966673','qs1Rt9gKcQo','13',4787,16,3,'2019-04-05 23:34:10','vyt5ca396bdafbb89.79545145','2019-04-06 11:36:51','vyt5ca8013622b036.88497697'),
	('vyt5ca81ed3bddce1.85427284','sQdzyzKYnjM','18',3644,20,2,'2019-04-05 23:34:11','vyt5ca396bdafbb89.79545145','2019-04-06 11:36:51','vyt5ca8013622b036.88497697'),
	('vyt5ca81ed4dca8b1.43205879','DZU7dyQnnw4','12',3424,14,2,'2019-04-05 23:34:11','vyt5ca396bdafbb89.79545145','2019-04-06 11:36:52','vyt5ca8013622b036.88497697'),
	('vyt5ca81ed54c92a2.80205399','LNd3n7nSTkI','11',1579,11,0,'2019-04-05 23:34:11','vyt5ca396bdafbb89.79545145','2019-04-06 11:36:53','vyt5ca8013622b036.88497697'),
	('vyt5ca81ed59430c9.80505383','lYAXzbn67v0','20',1473,20,0,'2019-04-05 23:34:12','vyt5ca396bdafbb89.79545145','2019-04-06 11:36:53','vyt5ca8013622b036.88497697'),
	('vyt5ca81ed5e2d6a8.21269351','T7TZLGD88-c','14',1245,14,0,'2019-04-05 23:34:12','vyt5ca396bdafbb89.79545145','2019-04-06 11:36:53','vyt5ca8013622b036.88497697'),
	('vyt5ca81ed66b9e08.90510127','1rrRL5TC6DY','10',296,10,0,'2019-04-05 23:34:13','vyt5ca396bdafbb89.79545145','2019-04-06 11:36:54','vyt5ca8013622b036.88497697'),
	('vyt5ca81ed6cf7300.05725835','SE2n-D30DzE','3',311,3,0,'2019-04-05 23:34:13','vyt5ca396bdafbb89.79545145','2019-04-06 11:36:54','vyt5ca8013622b036.88497697'),
	('vyt5ca81ed7593b04.87998980','Mms0AGjLkHM','1',244,1,0,'2019-04-05 23:34:13','vyt5ca396bdafbb89.79545145','2019-04-06 11:36:55','vyt5ca8013622b036.88497697'),
	('vyt5ca81ed7bc80e0.03391602','G2VPG--gU10','1',161,1,0,'2019-04-05 23:34:14','vyt5ca396bdafbb89.79545145','2019-04-06 11:36:55','vyt5ca8013622b036.88497697'),
	('vyt5ca81ed82ca404.43360218','33z4QgpWRag','7',140,7,0,'2019-04-05 23:34:14','vyt5ca396bdafbb89.79545145','2019-04-06 11:36:56','vyt5ca8013622b036.88497697'),
	('vyt5ca81ed8912626.72896727','ciZYA0iVRsU','0',114,1,1,'2019-04-05 23:34:14','vyt5ca396bdafbb89.79545145','2019-04-06 11:36:56','vyt5ca8013622b036.88497697'),
	('vyt5ca81ed8dbff87.65971060','A4nt0oeqE3c','0',116,1,1,'2019-04-05 23:34:15','vyt5ca396bdafbb89.79545145','2019-04-06 11:36:56','vyt5ca8013622b036.88497697'),
	('vyt5ca81ed93222e2.74702108','rabRsvRERk0','7',99,8,1,'2019-04-05 23:34:15','vyt5ca396bdafbb89.79545145','2019-04-06 11:36:57','vyt5ca8013622b036.88497697'),
	('vyt5ca81eda51bad1.48804108','9Mqgv3amcOQ','0',62,0,0,'2019-04-05 23:34:15','vyt5ca396bdafbb89.79545145','2019-04-06 11:36:58','vyt5ca8013622b036.88497697'),
	('vyt5ca81edacdad61.66603336','aE4CpTBsRYs','4',72,4,0,'2019-04-05 23:34:16','vyt5ca396bdafbb89.79545145','2019-04-06 11:36:58','vyt5ca8013622b036.88497697'),
	('vyt5ca81edb3ded40.43807755','Mpis9UWQjSA','1',46,1,0,'2019-04-05 23:34:16','vyt5ca396bdafbb89.79545145','2019-04-06 11:36:59','vyt5ca8013622b036.88497697'),
	('vyt5ca81edb92cb84.99711155','v-32lKvOZOU','1',38,1,0,'2019-04-05 23:34:16','vyt5ca396bdafbb89.79545145','2019-04-06 11:36:59','vyt5ca8013622b036.88497697'),
	('vyt5ca82d54101939.96802877','DrAMsCKv_GM','0',103,0,0,'2019-04-03 21:45:35','vyt5ca396bdafbb89.79545145','2019-04-06 12:38:44','0');

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
	('vyt5ca4b8ff6d8245.43161754','vyt5c93bdfc8caf15.08753899','cargel','2019-04-03 21:45:35',1,NULL),
	('vyt5ca6324b0cfd36.75046055','vyt5c93bdfc8caf15.08753899','new zealand muslim shooting','2019-04-05 00:35:23',1,NULL),
	('vyt5ca7728f335c11.57936891','vyt5c93bdfc8caf15.08753899','ikuta toma','2019-04-05 23:21:51',1,NULL),
	('vyt5ca77570276d54.56104362','vyt5c93bdfc8caf15.08753899','sharon cuneta','2019-04-05 23:34:08',1,NULL),
	('vyt5ca8013622b036.88497697','vyt5ca396bdafbb89.79545145','sharon cuneta','2019-04-06 09:30:30',1,NULL);

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
	('vyt5ca4b8ffc6e161.52416273','vyt5ca4b8ff6d8245.43161754','vyt5ca4b8ffc62578.54527472','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca6324b6ea458.67182793','vyt5ca6324b0cfd36.75046055','vyt5ca6324b6b9f30.87023331','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca6324bbf3ee6.93913992','vyt5ca6324b0cfd36.75046055','vyt5ca6324bbe1b18.10901899','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca6324c266553.85075999','vyt5ca6324b0cfd36.75046055','vyt5ca6324c2557d8.26201812','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca6324c8a73b6.41948946','vyt5ca6324b0cfd36.75046055','vyt5ca6324c894b60.56087639','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca6324cee99f3.77276096','vyt5ca6324b0cfd36.75046055','vyt5ca6324ced7c86.91668621','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca6324d5ea0b9.53486956','vyt5ca6324b0cfd36.75046055','vyt5ca6324d5d5e09.35770471','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca6324dc1fd68.00620110','vyt5ca6324b0cfd36.75046055','vyt5ca6324dc13e40.89795116','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca6324e326d62.59844840','vyt5ca6324b0cfd36.75046055','vyt5ca6324e3137e4.14770790','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca6324e9664e0.29091816','vyt5ca6324b0cfd36.75046055','vyt5ca6324e952146.37497849','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca6324f062de3.64176163','vyt5ca6324b0cfd36.75046055','vyt5ca6324f04ef11.80540431','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca6324f511df7.96349087','vyt5ca6324b0cfd36.75046055','vyt5ca6324f500864.05126846','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca6324fb53397.20320404','vyt5ca6324b0cfd36.75046055','vyt5ca6324fb3f954.99830858','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca632500d1544.70616846','vyt5ca6324b0cfd36.75046055','vyt5ca632500c01a1.36545409','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca63250573dc1.99961058','vyt5ca6324b0cfd36.75046055','vyt5ca63250562db1.29510259','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca63250bafe36.60770076','vyt5ca6324b0cfd36.75046055','vyt5ca63250b9ea73.55301866','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca632512ba524.05081609','vyt5ca6324b0cfd36.75046055','vyt5ca632512a92c9.93057577','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca632518f4652.17478210','vyt5ca6324b0cfd36.75046055','vyt5ca632518e3207.76492708','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca63251f32fa9.22243714','vyt5ca6324b0cfd36.75046055','vyt5ca63251f23308.08717184','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca6325249e045.71983766','vyt5ca6324b0cfd36.75046055','vyt5ca6325248b4c4.14777334','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca63252ada563.43243538','vyt5ca6324b0cfd36.75046055','vyt5ca63252ac9783.17787383','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca632531da457.54868934','vyt5ca6324b0cfd36.75046055','vyt5ca632531c6e16.96056821','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca6325365afd4.66253789','vyt5ca6324b0cfd36.75046055','vyt5ca63253649454.81421294','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca63253b3b2b8.01076250','vyt5ca6324b0cfd36.75046055','vyt5ca63253b28ab2.10759287','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca63254239812.50319359','vyt5ca6324b0cfd36.75046055','vyt5ca632542276b2.91191380','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca63254873095.45365570','vyt5ca6324b0cfd36.75046055','vyt5ca632548658b9.06469375','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca7728f7fb6e3.32522709','vyt5ca7728f335c11.57936891','vyt5ca7728f7e73a8.10643077','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca7728fd22152.03932216','vyt5ca7728f335c11.57936891','vyt5ca7728fd13418.83596857','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca7729042c4f1.51049897','vyt5ca7728f335c11.57936891','vyt5ca77290419a05.11097330','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca775707170c1.81488730','vyt5ca77570276d54.56104362','vyt5ca7757070a9f5.19912902','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca77570be98b7.83942219','vyt5ca77570276d54.56104362','vyt5ca77570bcd3d5.53029674','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca77571262fd1.74087802','vyt5ca77570276d54.56104362','vyt5ca77571254e42.05064668','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca77571712b01.42295865','vyt5ca77570276d54.56104362','vyt5ca77571704089.65084930','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca77571bb9e36.09107675','vyt5ca77570276d54.56104362','vyt5ca77571bac489.07211022','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca775721329c7.49724860','vyt5ca77570276d54.56104362','vyt5ca77572123032.86879362','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca77572767d68.54708315','vyt5ca77570276d54.56104362','vyt5ca77572755206.73777968','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca77573004ad3.16827471','vyt5ca77570276d54.56104362','vyt5ca77572f38170.01578100','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca775737d0be6.27308672','vyt5ca77570276d54.56104362','vyt5ca775737c0a54.89819357','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca77573e14fc3.81063442','vyt5ca77570276d54.56104362','vyt5ca77573e062a8.33597350','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca77574515445.02949331','vyt5ca77570276d54.56104362','vyt5ca77574500ec1.21332141','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca77574afb920.42492355','vyt5ca77570276d54.56104362','vyt5ca77574aed170.80529565','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca775750b8729.16533824','vyt5ca77570276d54.56104362','vyt5ca775750aaba1.53209466','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca77575703a39.00530164','vyt5ca77570276d54.56104362','vyt5ca775756f4bc3.48406093','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca77575c21a23.10201562','vyt5ca77570276d54.56104362','vyt5ca77575c1aa24.73681193','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca7757628a097.11189830','vyt5ca77570276d54.56104362','vyt5ca7757627b6d5.31994413','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca775767da689.85326848','vyt5ca77570276d54.56104362','vyt5ca775767cafc9.93101889','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca77576c7d247.10070823','vyt5ca77570276d54.56104362','vyt5ca77576c70f50.24055913','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca775771dd939.38717024','vyt5ca77570276d54.56104362','vyt5ca775771cb8e6.43451884','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca775777c3d87.18931653','vyt5ca77570276d54.56104362','vyt5ca775777b4a36.84057341','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca77577df5fe0.84656609','vyt5ca77570276d54.56104362','vyt5ca77577de72d2.25088957','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca77578377a50.28732516','vyt5ca77570276d54.56104362','vyt5ca77578365649.40882268','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca7757881fe64.17987696','vyt5ca77570276d54.56104362','vyt5ca7757880c430.54457590','vyt5c93bdfc8caf15.08753899'),
	('vyt5ca77578cd9819.58645306','vyt5ca77570276d54.56104362','vyt5ca77578cd1239.79615343','vyt5c93bdfc8caf15.08753899');

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
	('vyt5ca4b9126e1132.87768973','neutral','2019-04-03 21:45:54','vyt5c93bdfc8caf15.08753899',4,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca4b914149943.58010441','neutral','2019-04-03 21:45:56','vyt5c93bdfc8caf15.08753899',2,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca4b9157fd818.44078708','neutral','2019-04-03 21:45:57','vyt5c93bdfc8caf15.08753899',5,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca4b9158086c1.31481637','neutral','2019-04-03 21:45:57','vyt5c93bdfc8caf15.08753899',1,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca4b91ef411f1.72354958','neutral','2019-04-03 21:46:07','vyt5c93bdfc8caf15.08753899',4,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca4b9207c8247.97102943','neutral','2019-04-03 21:46:08','vyt5c93bdfc8caf15.08753899',2,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca4b921c768d3.27409234','neutral','2019-04-03 21:46:09','vyt5c93bdfc8caf15.08753899',5,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca4b921c80333.76753730','neutral','2019-04-03 21:46:09','vyt5c93bdfc8caf15.08753899',1,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca4b923b16dd4.10605396','neutral','2019-04-03 21:46:11','vyt5c93bdfc8caf15.08753899',4,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca4b924ee3e40.52352298','neutral','2019-04-03 21:46:12','vyt5c93bdfc8caf15.08753899',2,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca4b926355118.61761264','neutral','2019-04-03 21:46:14','vyt5c93bdfc8caf15.08753899',5,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca4b92635fbe0.88717371','neutral','2019-04-03 21:46:14','vyt5c93bdfc8caf15.08753899',1,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca4bae693f7a7.52944580','neutral','2019-04-03 21:53:42','vyt5c93bdfc8caf15.08753899',4,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca4bae7dcaca9.05671041','neutral','2019-04-03 21:53:43','vyt5c93bdfc8caf15.08753899',2,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca4bae978e821.52094552','neutral','2019-04-03 21:53:45','vyt5c93bdfc8caf15.08753899',5,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca4bae9795238.75151365','neutral','2019-04-03 21:53:45','vyt5c93bdfc8caf15.08753899',1,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca771b16cdd77.70169520','neutral','2019-04-05 23:18:09','vyt5c93bdfc8caf15.08753899',4,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca771b2bd2f77.58443764','neutral','2019-04-05 23:18:10','vyt5c93bdfc8caf15.08753899',2,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca771b4138905.66584593','neutral','2019-04-05 23:18:12','vyt5c93bdfc8caf15.08753899',5,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca771b4141749.71234185','neutral','2019-04-05 23:18:12','vyt5c93bdfc8caf15.08753899',1,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca771c6387797.34656162','neutral','2019-04-05 23:18:30','vyt5c93bdfc8caf15.08753899',4,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca771c7d7bfa1.19232503','neutral','2019-04-05 23:18:31','vyt5c93bdfc8caf15.08753899',2,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca771c980ae51.55056523','neutral','2019-04-05 23:18:33','vyt5c93bdfc8caf15.08753899',5,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca771c9810027.88687830','neutral','2019-04-05 23:18:33','vyt5c93bdfc8caf15.08753899',1,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca771d9d94427.76803688','neutral','2019-04-05 23:18:49','vyt5c93bdfc8caf15.08753899',4,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca771db6acf75.12411808','neutral','2019-04-05 23:18:51','vyt5c93bdfc8caf15.08753899',2,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca771dcf2ea65.46044987','neutral','2019-04-05 23:18:52','vyt5c93bdfc8caf15.08753899',5,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca771dcf39d06.63148780','neutral','2019-04-05 23:18:52','vyt5c93bdfc8caf15.08753899',1,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca77239505795.78656847','neutral','2019-04-05 23:20:25','vyt5c93bdfc8caf15.08753899',4,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca7723b29f833.09716262','neutral','2019-04-05 23:20:27','vyt5c93bdfc8caf15.08753899',2,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca7723d32e380.31738998','neutral','2019-04-05 23:20:29','vyt5c93bdfc8caf15.08753899',5,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca7723d333431.29233153','neutral','2019-04-05 23:20:29','vyt5c93bdfc8caf15.08753899',1,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca772588e2ab4.45161284','neutral','2019-04-05 23:20:56','vyt5c93bdfc8caf15.08753899',4,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca7725abef808.86783466','neutral','2019-04-05 23:20:58','vyt5c93bdfc8caf15.08753899',2,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca7725cb96257.93825908','neutral','2019-04-05 23:21:00','vyt5c93bdfc8caf15.08753899',5,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca7725cb9e392.00934998','neutral','2019-04-05 23:21:00','vyt5c93bdfc8caf15.08753899',1,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca772856668c8.72843089','neutral','2019-04-05 23:21:41','vyt5c93bdfc8caf15.08753899',4,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca772870b86c0.00654512','neutral','2019-04-05 23:21:43','vyt5c93bdfc8caf15.08753899',2,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca77288b72ff7.41434180','neutral','2019-04-05 23:21:44','vyt5c93bdfc8caf15.08753899',5,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca77288b7c7c4.43893102','neutral','2019-04-05 23:21:44','vyt5c93bdfc8caf15.08753899',1,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca77310704007.57838672','positive','2019-04-05 23:24:00','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','UgzRrrpH-DzBHNyjghZ4AaABAg','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca7731229e964.82018575','neutral','2019-04-05 23:24:02','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','UgyoLSfezScqvgzQsb54AaABAg','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca77313ea0022.89562118','positive','2019-04-05 23:24:03','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','UgyyHA4a4YyBJswIxE94AaABAg','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca77315ab1cd2.10876017','positive','2019-04-05 23:24:05','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','Ugw5wfeY7t4K3hjkYK94AaABAg','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca773173952a1.89973117','neutral','2019-04-05 23:24:07','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','UgwGp9LQ1TzmgM2BqHl4AaABAg','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca773191374e2.13115012','positive','2019-04-05 23:24:09','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','UgwR9vkCcD6ODWq3OZF4AaABAg','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca7731ac87a66.43561101','neutral','2019-04-05 23:24:10','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','Ugz2TecJllCLVB0hvUl4AaABAg','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca7731c70dd66.04187612','neutral','2019-04-05 23:24:12','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','Ugx00MRjepTqUdIWnTt4AaABAg','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca7731e015f84.10159400','neutral','2019-04-05 23:24:14','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','UgwtPdjKJoP3ZxvJbQJ4AaABAg','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca7731fa4cd76.17959124','neutral','2019-04-05 23:24:15','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','UgwO5m0PlXuySj86fu54AaABAg','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca7732150dce7.83050370','positive','2019-04-05 23:24:17','vyt5c93bdfc8caf15.08753899',4,'zqbe6k2tIhI',NULL,'vyt5ca6324b0cfd36.75046055'),
	('vyt5ca77323180141.04696398','positive','2019-04-05 23:24:19','vyt5c93bdfc8caf15.08753899',2,'zqbe6k2tIhI',NULL,'vyt5ca6324b0cfd36.75046055'),
	('vyt5ca77324a8d589.33003046','positive','2019-04-05 23:24:20','vyt5c93bdfc8caf15.08753899',5,'zqbe6k2tIhI',NULL,'vyt5ca6324b0cfd36.75046055'),
	('vyt5ca77324a91f12.76812273','positive','2019-04-05 23:24:20','vyt5c93bdfc8caf15.08753899',1,'zqbe6k2tIhI',NULL,'vyt5ca6324b0cfd36.75046055'),
	('vyt5ca7735235b909.57413632','neutral','2019-04-05 23:25:06','vyt5c93bdfc8caf15.08753899',4,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca77355836184.86498067','neutral','2019-04-05 23:25:09','vyt5c93bdfc8caf15.08753899',2,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca773576c3218.53651992','neutral','2019-04-05 23:25:11','vyt5c93bdfc8caf15.08753899',5,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca773576cc104.15087959','neutral','2019-04-05 23:25:11','vyt5c93bdfc8caf15.08753899',1,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca77386981b86.47016707','positive','2019-04-05 23:25:58','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','UgzRrrpH-DzBHNyjghZ4AaABAg','vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca77387dd8025.36163817','neutral','2019-04-05 23:25:59','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','UgyoLSfezScqvgzQsb54AaABAg','vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca773890c1b19.81956115','positive','2019-04-05 23:26:01','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','UgyyHA4a4YyBJswIxE94AaABAg','vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca7738a456c60.72398848','positive','2019-04-05 23:26:02','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','Ugw5wfeY7t4K3hjkYK94AaABAg','vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca7738bd65357.96043055','neutral','2019-04-05 23:26:03','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','UgwGp9LQ1TzmgM2BqHl4AaABAg','vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca7738d1a39f8.75196418','positive','2019-04-05 23:26:05','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','UgwR9vkCcD6ODWq3OZF4AaABAg','vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca7738e566fb6.70238880','neutral','2019-04-05 23:26:06','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','Ugz2TecJllCLVB0hvUl4AaABAg','vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca7738f9a8045.40086003','neutral','2019-04-05 23:26:07','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','Ugx00MRjepTqUdIWnTt4AaABAg','vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca773913050f9.87575285','neutral','2019-04-05 23:26:09','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','UgwtPdjKJoP3ZxvJbQJ4AaABAg','vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca77392c234c6.93476644','neutral','2019-04-05 23:26:10','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','UgwO5m0PlXuySj86fu54AaABAg','vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca773944f4520.65599191','positive','2019-04-05 23:26:12','vyt5c93bdfc8caf15.08753899',4,'zqbe6k2tIhI',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca77395d43a10.56641651','positive','2019-04-05 23:26:13','vyt5c93bdfc8caf15.08753899',2,'zqbe6k2tIhI',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca773976c4a85.17324942','positive','2019-04-05 23:26:15','vyt5c93bdfc8caf15.08753899',5,'zqbe6k2tIhI',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca773976cddc9.95181442','positive','2019-04-05 23:26:15','vyt5c93bdfc8caf15.08753899',1,'zqbe6k2tIhI',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca774377a2941.43889080','positive','2019-04-05 23:28:55','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','UgzRrrpH-DzBHNyjghZ4AaABAg','vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca7743926cb66.09358061','neutral','2019-04-05 23:28:57','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','UgyoLSfezScqvgzQsb54AaABAg','vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca7743acfc715.61487965','positive','2019-04-05 23:28:58','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','UgyyHA4a4YyBJswIxE94AaABAg','vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca7743cb087e0.00035299','positive','2019-04-05 23:29:00','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','Ugw5wfeY7t4K3hjkYK94AaABAg','vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca7743e63c245.06673183','neutral','2019-04-05 23:29:02','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','UgwGp9LQ1TzmgM2BqHl4AaABAg','vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca774401952c5.11007955','positive','2019-04-05 23:29:04','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','UgwR9vkCcD6ODWq3OZF4AaABAg','vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca77441ce84e1.85198211','neutral','2019-04-05 23:29:05','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','Ugz2TecJllCLVB0hvUl4AaABAg','vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca774437c91d6.29120910','neutral','2019-04-05 23:29:07','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','Ugx00MRjepTqUdIWnTt4AaABAg','vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca774454a6622.95225636','neutral','2019-04-05 23:29:09','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','UgwtPdjKJoP3ZxvJbQJ4AaABAg','vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca77446eb66d3.74426047','neutral','2019-04-05 23:29:10','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','UgwO5m0PlXuySj86fu54AaABAg','vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca77448ac0801.05766634','positive','2019-04-05 23:29:12','vyt5c93bdfc8caf15.08753899',4,'zqbe6k2tIhI',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca7744a60e6c4.68365845','positive','2019-04-05 23:29:14','vyt5c93bdfc8caf15.08753899',2,'zqbe6k2tIhI',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca7744bee2376.51705169','positive','2019-04-05 23:29:15','vyt5c93bdfc8caf15.08753899',5,'zqbe6k2tIhI',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca7744beebe99.71567463','positive','2019-04-05 23:29:15','vyt5c93bdfc8caf15.08753899',1,'zqbe6k2tIhI',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca7746c21de28.32840106','neutral','2019-04-05 23:29:48','vyt5c93bdfc8caf15.08753899',4,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca7746da79aa8.37580295','neutral','2019-04-05 23:29:49','vyt5c93bdfc8caf15.08753899',2,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca7746f616ff3.33894484','neutral','2019-04-05 23:29:51','vyt5c93bdfc8caf15.08753899',5,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca7746f6210f2.55383659','neutral','2019-04-05 23:29:51','vyt5c93bdfc8caf15.08753899',1,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca774d549a656.43591987','positive','2019-04-05 23:31:33','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','UgzRrrpH-DzBHNyjghZ4AaABAg','vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca774d6a4dd43.74236830','neutral','2019-04-05 23:31:34','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','UgyoLSfezScqvgzQsb54AaABAg','vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca774d7d03cf3.66208163','positive','2019-04-05 23:31:35','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','UgyyHA4a4YyBJswIxE94AaABAg','vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca774d9304973.87565706','positive','2019-04-05 23:31:37','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','Ugw5wfeY7t4K3hjkYK94AaABAg','vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca774da66b2f3.22879685','neutral','2019-04-05 23:31:38','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','UgwGp9LQ1TzmgM2BqHl4AaABAg','vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca774db9de7b0.71096194','positive','2019-04-05 23:31:39','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','UgwR9vkCcD6ODWq3OZF4AaABAg','vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca774dcefb725.37198060','neutral','2019-04-05 23:31:40','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','Ugz2TecJllCLVB0hvUl4AaABAg','vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca774de43ede4.89806342','neutral','2019-04-05 23:31:42','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','Ugx00MRjepTqUdIWnTt4AaABAg','vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca774df72a645.51851034','neutral','2019-04-05 23:31:43','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','UgwtPdjKJoP3ZxvJbQJ4AaABAg','vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca774e0a81a59.87701714','neutral','2019-04-05 23:31:44','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','UgwO5m0PlXuySj86fu54AaABAg','vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca774e1edd420.32785212','positive','2019-04-05 23:31:45','vyt5c93bdfc8caf15.08753899',4,'zqbe6k2tIhI',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca774e3413937.23233070','positive','2019-04-05 23:31:47','vyt5c93bdfc8caf15.08753899',2,'zqbe6k2tIhI',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca774e4aabb11.63736660','positive','2019-04-05 23:31:48','vyt5c93bdfc8caf15.08753899',5,'zqbe6k2tIhI',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca774e4aaf7c8.81675034','positive','2019-04-05 23:31:48','vyt5c93bdfc8caf15.08753899',1,'zqbe6k2tIhI',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca774f46903a0.24920509','neutral','2019-04-05 23:32:04','vyt5c93bdfc8caf15.08753899',4,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca774f6106a56.27890786','neutral','2019-04-05 23:32:06','vyt5c93bdfc8caf15.08753899',2,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca774f7b41772.80609591','neutral','2019-04-05 23:32:07','vyt5c93bdfc8caf15.08753899',5,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca774f7b490b2.89596155','neutral','2019-04-05 23:32:07','vyt5c93bdfc8caf15.08753899',1,'DrAMsCKv_GM',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca7750bbeccd6.47284156','positive','2019-04-05 23:32:27','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','UgzRrrpH-DzBHNyjghZ4AaABAg','vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca7750d67ce27.08459832','neutral','2019-04-05 23:32:29','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','UgyoLSfezScqvgzQsb54AaABAg','vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca7750f304907.83423006','positive','2019-04-05 23:32:31','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','UgyyHA4a4YyBJswIxE94AaABAg','vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca77511c56373.85333776','positive','2019-04-05 23:32:33','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','Ugw5wfeY7t4K3hjkYK94AaABAg','vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca7751370ac92.77275217','neutral','2019-04-05 23:32:35','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','UgwGp9LQ1TzmgM2BqHl4AaABAg','vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca7751549be47.91354279','positive','2019-04-05 23:32:37','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','UgwR9vkCcD6ODWq3OZF4AaABAg','vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca77516e2e603.96842804','neutral','2019-04-05 23:32:38','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','Ugz2TecJllCLVB0hvUl4AaABAg','vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca77518986df4.33413848','neutral','2019-04-05 23:32:40','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','Ugx00MRjepTqUdIWnTt4AaABAg','vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca7751a3f76a4.14962560','neutral','2019-04-05 23:32:42','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','UgwtPdjKJoP3ZxvJbQJ4AaABAg','vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca7751bddaa87.40582854','neutral','2019-04-05 23:32:43','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','UgwO5m0PlXuySj86fu54AaABAg','vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca7751d9b67b1.82152619','positive','2019-04-05 23:32:45','vyt5c93bdfc8caf15.08753899',4,'zqbe6k2tIhI',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca7751f40d263.16720187','positive','2019-04-05 23:32:47','vyt5c93bdfc8caf15.08753899',2,'zqbe6k2tIhI',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca77520edafd7.29614091','positive','2019-04-05 23:32:48','vyt5c93bdfc8caf15.08753899',5,'zqbe6k2tIhI',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca77520ede5d9.08761229','positive','2019-04-05 23:32:48','vyt5c93bdfc8caf15.08753899',1,'zqbe6k2tIhI',NULL,'vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca77544aac524.25863607','positive','2019-04-05 23:33:24','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','UgzRrrpH-DzBHNyjghZ4AaABAg','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca775466eef96.18271479','neutral','2019-04-05 23:33:26','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','UgyoLSfezScqvgzQsb54AaABAg','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca7754808b0f8.00215659','positive','2019-04-05 23:33:28','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','UgyyHA4a4YyBJswIxE94AaABAg','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca77549cbf3e6.91516367','positive','2019-04-05 23:33:29','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','Ugw5wfeY7t4K3hjkYK94AaABAg','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca7754ba64cc4.41497194','neutral','2019-04-05 23:33:31','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','UgwGp9LQ1TzmgM2BqHl4AaABAg','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca7754d6f24c4.03626850','positive','2019-04-05 23:33:33','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','UgwR9vkCcD6ODWq3OZF4AaABAg','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca7754f0e73a6.13952141','neutral','2019-04-05 23:33:35','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','Ugz2TecJllCLVB0hvUl4AaABAg','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca77550b0f813.19552131','neutral','2019-04-05 23:33:36','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','Ugx00MRjepTqUdIWnTt4AaABAg','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca77552429597.19846855','neutral','2019-04-05 23:33:38','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','UgwtPdjKJoP3ZxvJbQJ4AaABAg','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca77553ed9e25.56372694','neutral','2019-04-05 23:33:39','vyt5c93bdfc8caf15.08753899',3,'zqbe6k2tIhI','UgwO5m0PlXuySj86fu54AaABAg','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca77555c7cc30.73568054','positive','2019-04-05 23:33:41','vyt5c93bdfc8caf15.08753899',4,'zqbe6k2tIhI',NULL,'vyt5ca6324b0cfd36.75046055'),
	('vyt5ca775576e9773.11978235','positive','2019-04-05 23:33:43','vyt5c93bdfc8caf15.08753899',2,'zqbe6k2tIhI',NULL,'vyt5ca6324b0cfd36.75046055'),
	('vyt5ca7755906e3b4.66328801','positive','2019-04-05 23:33:45','vyt5c93bdfc8caf15.08753899',5,'zqbe6k2tIhI',NULL,'vyt5ca6324b0cfd36.75046055'),
	('vyt5ca77559077008.94617762','positive','2019-04-05 23:33:45','vyt5c93bdfc8caf15.08753899',1,'zqbe6k2tIhI',NULL,'vyt5ca6324b0cfd36.75046055'),
	('vyt5ca775b79bd1f8.81429829','negative','2019-04-05 23:35:19','vyt5c93bdfc8caf15.08753899',3,'YXgn1i8O-gM','UgwurkFyn7VRXXb1hlx4AaABAg','vyt5ca77570276d54.56104362'),
	('vyt5ca775b9555668.00784779','neutral','2019-04-05 23:35:21','vyt5c93bdfc8caf15.08753899',3,'YXgn1i8O-gM','Ugzo93lChRhszfLXDdx4AaABAg','vyt5ca77570276d54.56104362'),
	('vyt5ca775baeacd08.35585464','negative','2019-04-05 23:35:22','vyt5c93bdfc8caf15.08753899',3,'YXgn1i8O-gM','UgzHk8iKxz-F21dkM354AaABAg','vyt5ca77570276d54.56104362'),
	('vyt5ca775bc675c04.44091784','positive','2019-04-05 23:35:24','vyt5c93bdfc8caf15.08753899',3,'YXgn1i8O-gM','UgyISM7x_8NkGAfdHBx4AaABAg','vyt5ca77570276d54.56104362'),
	('vyt5ca775bdd1dc66.13429786','neutral','2019-04-05 23:35:25','vyt5c93bdfc8caf15.08753899',3,'YXgn1i8O-gM','UgwJJLR6-C3Qr6ezrAR4AaABAg','vyt5ca77570276d54.56104362'),
	('vyt5ca775bf477057.46351878','negative','2019-04-05 23:35:27','vyt5c93bdfc8caf15.08753899',3,'YXgn1i8O-gM','Ugy5RNopN211_7dFnMZ4AaABAg','vyt5ca77570276d54.56104362'),
	('vyt5ca775c0ceab54.14187495','positive','2019-04-05 23:35:28','vyt5c93bdfc8caf15.08753899',3,'YXgn1i8O-gM','UgyN5goKk1mxapat2gF4AaABAg','vyt5ca77570276d54.56104362'),
	('vyt5ca775c25860c0.23863165','negative','2019-04-05 23:35:30','vyt5c93bdfc8caf15.08753899',3,'YXgn1i8O-gM','UgwjNd68A6ZB8CB5LoJ4AaABAg','vyt5ca77570276d54.56104362'),
	('vyt5ca775c3c27aa7.66179476','negative','2019-04-05 23:35:31','vyt5c93bdfc8caf15.08753899',3,'YXgn1i8O-gM','UgxFu407cqa4GQ2Rdr14AaABAg','vyt5ca77570276d54.56104362'),
	('vyt5ca775c550a104.78222662','positive','2019-04-05 23:35:33','vyt5c93bdfc8caf15.08753899',3,'YXgn1i8O-gM','UgwzuqG4mjTEKksl2n14AaABAg','vyt5ca77570276d54.56104362'),
	('vyt5ca775c6b571e9.32364357','negative','2019-04-05 23:35:34','vyt5c93bdfc8caf15.08753899',4,'YXgn1i8O-gM',NULL,'vyt5ca77570276d54.56104362'),
	('vyt5ca775c83031c0.08174708','neutral','2019-04-05 23:35:36','vyt5c93bdfc8caf15.08753899',2,'YXgn1i8O-gM',NULL,'vyt5ca77570276d54.56104362'),
	('vyt5ca775c9de4605.61214974','negative','2019-04-05 23:35:37','vyt5c93bdfc8caf15.08753899',5,'YXgn1i8O-gM',NULL,'vyt5ca77570276d54.56104362'),
	('vyt5ca775c9decda6.31677685','negative','2019-04-05 23:35:37','vyt5c93bdfc8caf15.08753899',1,'YXgn1i8O-gM',NULL,'vyt5ca77570276d54.56104362'),
	('vyt5ca7761ab39d24.79901540','neutral','2019-04-05 23:36:58','vyt5c93bdfc8caf15.08753899',4,'DrAMsCKv_GM',NULL,'vyt5ca77570276d54.56104362'),
	('vyt5ca7761be86681.69440530','neutral','2019-04-05 23:36:59','vyt5c93bdfc8caf15.08753899',2,'DrAMsCKv_GM',NULL,'vyt5ca77570276d54.56104362'),
	('vyt5ca7761d3598b4.40523176','neutral','2019-04-05 23:37:01','vyt5c93bdfc8caf15.08753899',5,'DrAMsCKv_GM',NULL,'vyt5ca77570276d54.56104362'),
	('vyt5ca7761d35da98.83741384','neutral','2019-04-05 23:37:01','vyt5c93bdfc8caf15.08753899',1,'DrAMsCKv_GM',NULL,'vyt5ca77570276d54.56104362'),
	('vyt5ca800f6e2bc62.88605168','negative','2019-04-06 09:29:26','vyt5c93bdfc8caf15.08753899',3,'YXgn1i8O-gM','UgwurkFyn7VRXXb1hlx4AaABAg','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca800f83412d6.56589790','neutral','2019-04-06 09:29:28','vyt5c93bdfc8caf15.08753899',3,'YXgn1i8O-gM','Ugzo93lChRhszfLXDdx4AaABAg','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca800fa1f6180.43056711','negative','2019-04-06 09:29:30','vyt5c93bdfc8caf15.08753899',3,'YXgn1i8O-gM','UgzHk8iKxz-F21dkM354AaABAg','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca800fb342cf4.80324589','positive','2019-04-06 09:29:31','vyt5c93bdfc8caf15.08753899',3,'YXgn1i8O-gM','UgyISM7x_8NkGAfdHBx4AaABAg','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca800fc7043c6.00707770','neutral','2019-04-06 09:29:32','vyt5c93bdfc8caf15.08753899',3,'YXgn1i8O-gM','UgwJJLR6-C3Qr6ezrAR4AaABAg','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca800fde8dc63.44348889','negative','2019-04-06 09:29:33','vyt5c93bdfc8caf15.08753899',3,'YXgn1i8O-gM','Ugy5RNopN211_7dFnMZ4AaABAg','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca800ff45d7a9.12522538','positive','2019-04-06 09:29:35','vyt5c93bdfc8caf15.08753899',3,'YXgn1i8O-gM','UgyN5goKk1mxapat2gF4AaABAg','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca801006df3d8.08810722','negative','2019-04-06 09:29:36','vyt5c93bdfc8caf15.08753899',3,'YXgn1i8O-gM','UgwjNd68A6ZB8CB5LoJ4AaABAg','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca80101b49fb8.92451989','negative','2019-04-06 09:29:37','vyt5c93bdfc8caf15.08753899',3,'YXgn1i8O-gM','UgxFu407cqa4GQ2Rdr14AaABAg','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca80103114e54.63088637','positive','2019-04-06 09:29:39','vyt5c93bdfc8caf15.08753899',3,'YXgn1i8O-gM','UgwzuqG4mjTEKksl2n14AaABAg','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca80104621484.01451526','negative','2019-04-06 09:29:40','vyt5c93bdfc8caf15.08753899',4,'YXgn1i8O-gM',NULL,'vyt5ca6324b0cfd36.75046055'),
	('vyt5ca80105902016.92655955','neutral','2019-04-06 09:29:41','vyt5c93bdfc8caf15.08753899',2,'YXgn1i8O-gM',NULL,'vyt5ca6324b0cfd36.75046055'),
	('vyt5ca80106cdb201.13153136','negative','2019-04-06 09:29:42','vyt5c93bdfc8caf15.08753899',5,'YXgn1i8O-gM',NULL,'vyt5ca6324b0cfd36.75046055'),
	('vyt5ca80106cef586.70734912','negative','2019-04-06 09:29:42','vyt5c93bdfc8caf15.08753899',1,'YXgn1i8O-gM',NULL,'vyt5ca6324b0cfd36.75046055'),
	('vyt5ca805ec7bb6b9.51328229','neutral','2019-04-06 09:50:36','vyt5ca396bdafbb89.79545145',4,'DrAMsCKv_GM',NULL,'0'),
	('vyt5ca805edb1a597.04808433','neutral','2019-04-06 09:50:37','vyt5ca396bdafbb89.79545145',2,'DrAMsCKv_GM',NULL,'0'),
	('vyt5ca805ef066511.45207066','neutral','2019-04-06 09:50:39','vyt5ca396bdafbb89.79545145',5,'DrAMsCKv_GM',NULL,'0'),
	('vyt5ca805ef0708b4.51749052','neutral','2019-04-06 09:50:39','vyt5ca396bdafbb89.79545145',1,'DrAMsCKv_GM',NULL,'0'),
	('vyt5ca807c0b7d4e4.09364599','neutral','2019-04-06 09:58:24','vyt5ca396bdafbb89.79545145',4,'DrAMsCKv_GM',NULL,'0'),
	('vyt5ca807c21e0a50.55750763','neutral','2019-04-06 09:58:26','vyt5ca396bdafbb89.79545145',2,'DrAMsCKv_GM',NULL,'0'),
	('vyt5ca807c360fd34.56710175','neutral','2019-04-06 09:58:27','vyt5ca396bdafbb89.79545145',5,'DrAMsCKv_GM',NULL,'0'),
	('vyt5ca807c3613a34.17036685','neutral','2019-04-06 09:58:27','vyt5ca396bdafbb89.79545145',1,'DrAMsCKv_GM',NULL,'0'),
	('vyt5ca81bcb732bc8.93999038','neutral','2019-04-06 11:23:55','vyt5ca396bdafbb89.79545145',4,'DrAMsCKv_GM',NULL,'0'),
	('vyt5ca81bcd11c296.76808800','neutral','2019-04-06 11:23:57','vyt5ca396bdafbb89.79545145',2,'DrAMsCKv_GM',NULL,'0'),
	('vyt5ca81bcec2c951.47549184','neutral','2019-04-06 11:23:58','vyt5ca396bdafbb89.79545145',5,'DrAMsCKv_GM',NULL,'0'),
	('vyt5ca81bcec350a8.48986489','neutral','2019-04-06 11:23:58','vyt5ca396bdafbb89.79545145',1,'DrAMsCKv_GM',NULL,'0'),
	('vyt5ca81c393d4b62.45570697','neutral','2019-04-06 11:25:45','vyt5ca396bdafbb89.79545145',4,'DrAMsCKv_GM',NULL,'0'),
	('vyt5ca81c3aae0713.31640381','neutral','2019-04-06 11:25:46','vyt5ca396bdafbb89.79545145',2,'DrAMsCKv_GM',NULL,'0'),
	('vyt5ca81c3bf1dc20.78959278','neutral','2019-04-06 11:25:47','vyt5ca396bdafbb89.79545145',5,'DrAMsCKv_GM',NULL,'0'),
	('vyt5ca81c3bf28b01.47384126','neutral','2019-04-06 11:25:47','vyt5ca396bdafbb89.79545145',1,'DrAMsCKv_GM',NULL,'0'),
	('vyt5ca82d3d05db10.75926817','neutral','2019-04-06 12:38:21','vyt5ca396bdafbb89.79545145',4,'DrAMsCKv_GM',NULL,'0'),
	('vyt5ca82d3e3d5d71.61498423','neutral','2019-04-06 12:38:22','vyt5ca396bdafbb89.79545145',2,'DrAMsCKv_GM',NULL,'0'),
	('vyt5ca82d3f795bd9.73197185','neutral','2019-04-06 12:38:23','vyt5ca396bdafbb89.79545145',5,'DrAMsCKv_GM',NULL,'0'),
	('vyt5ca82d3f7a0845.49853910','neutral','2019-04-06 12:38:23','vyt5ca396bdafbb89.79545145',1,'DrAMsCKv_GM',NULL,'0'),
	('vyt5ca82d6be7bd43.85730149','neutral','2019-04-06 12:39:07','vyt5ca396bdafbb89.79545145',4,'DrAMsCKv_GM',NULL,'0'),
	('vyt5ca82d6d289824.94760377','neutral','2019-04-06 12:39:09','vyt5ca396bdafbb89.79545145',2,'DrAMsCKv_GM',NULL,'0'),
	('vyt5ca82d6ec1aee5.07084460','neutral','2019-04-06 12:39:10','vyt5ca396bdafbb89.79545145',5,'DrAMsCKv_GM',NULL,'0'),
	('vyt5ca82d6ec25a99.84754734','neutral','2019-04-06 12:39:10','vyt5ca396bdafbb89.79545145',1,'DrAMsCKv_GM',NULL,'0'),
	('vyt5ca82d707c6dd9.52435282','neutral','2019-04-06 12:39:12','vyt5ca396bdafbb89.79545145',4,'DrAMsCKv_GM',NULL,'0'),
	('vyt5ca82d71d2fe65.14145481','neutral','2019-04-06 12:39:13','vyt5ca396bdafbb89.79545145',2,'DrAMsCKv_GM',NULL,'0'),
	('vyt5ca82d73202938.70179302','neutral','2019-04-06 12:39:15','vyt5ca396bdafbb89.79545145',5,'DrAMsCKv_GM',NULL,'0'),
	('vyt5ca82d73207c41.97537037','neutral','2019-04-06 12:39:15','vyt5ca396bdafbb89.79545145',1,'DrAMsCKv_GM',NULL,'0'),
	('vyt5ca82e49e46372.37226939','neutral','2019-04-06 12:42:49','vyt5ca396bdafbb89.79545145',4,'DrAMsCKv_GM',NULL,'0'),
	('vyt5ca82e4b239a20.37424939','neutral','2019-04-06 12:42:51','vyt5ca396bdafbb89.79545145',2,'DrAMsCKv_GM',NULL,'0'),
	('vyt5ca82e4c7819f7.49932426','neutral','2019-04-06 12:42:52','vyt5ca396bdafbb89.79545145',5,'DrAMsCKv_GM',NULL,'0'),
	('vyt5ca82e4c78bf58.07335551','neutral','2019-04-06 12:42:52','vyt5ca396bdafbb89.79545145',1,'DrAMsCKv_GM',NULL,'0');

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
	('vyt5ca3988d1fbfa4.86124242','dinerss','dinerss@godiane.com','70682896e24287b0476eff2a14c148f0','68571bffca90e233c9901f2a6d9a5dec','2019-04-03 01:14:53',NULL);

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
	('vyt5ca6324f04ef11.80540431','15UrAsLzk08','https://www.youtube.com/embed/15UrAsLzk08','New Zealand shooting: Timeline of mosque attack','Global News','News & Politics','New Zealand mosque shooting: Forty-nine people have been killed in a mass shooting at two mosques in Christchurch, New Zealand. This is how the attack ...','2019-04-05 00:35:27','vyt5c93bdfc8caf15.08753899','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca775750aaba1.53209466','1rrRL5TC6DY','https://www.youtube.com/embed/1rrRL5TC6DY','WATCH: Sharon performs with KC during concert in Canada','News One','Gaming','Watch more in iWant or TFC.tv It was a family affair at the Sharon Cuneta concert in Vancouver, Canada this past week, with her daughter KC Concepcion ...','2019-04-05 23:34:13','vyt5c93bdfc8caf15.08753899','vyt5ca77570276d54.56104362'),
	('vyt5ca775767cafc9.93101889','33z4QgpWRag','https://www.youtube.com/embed/33z4QgpWRag','High School - (Sharon Cuneta) Music Video by LPCNSHS-DJC students.','Dean Andrie Espinosa','Film & Animation','This Music VIdeo was made by the students of Las Piñas CIty National Senior High School - Doña Josefa Campus for the fulfillment of their project in the subject ...','2019-04-05 23:34:14','vyt5c93bdfc8caf15.08753899','vyt5ca77570276d54.56104362'),
	('vyt5ca632512a92c9.93057577','5tI0JVBR5RM','https://www.youtube.com/embed/5tI0JVBR5RM','PM says mosque shootings one of New Zealand&#39;s darkest days','Financial Times','News & Politics','Try the Financial Times for 4 weeks for just £1. Start your trial now - http://bit.ly/2ry7Tkz Read more at https://on.ft.com/2Hdya1p New Zealand prime minister ...','2019-04-05 00:35:29','vyt5c93bdfc8caf15.08753899','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca77577de72d2.25088957','9Mqgv3amcOQ','https://www.youtube.com/embed/9Mqgv3amcOQ','LOOK: Sharon Cuneta jokes about KC Concepcion stealing her sexy pose','Fun Bad Baby Daddy','People & Blogs','LOOK: Sharon Cuneta jokes about KC Concepcion stealing her sexy pose.','2019-04-05 23:34:15','vyt5c93bdfc8caf15.08753899','vyt5ca77570276d54.56104362'),
	('vyt5ca775771cb8e6.43451884','A4nt0oeqE3c','https://www.youtube.com/embed/A4nt0oeqE3c','WATCH: Sharon performs with KC during concert in Canada','News 3','Gaming','Watch more in iWant or TFC.tv It was a family affair at the Sharon Cuneta concert in Vancouver, Canada this past week, with her daughter KC Concepcion ...','2019-04-05 23:34:15','vyt5c93bdfc8caf15.08753899','vyt5ca77570276d54.56104362'),
	('vyt5ca77578365649.40882268','aE4CpTBsRYs','https://www.youtube.com/embed/aE4CpTBsRYs','Maybe Someday perform by: Sharon Cuneta','Star Apple Production','Entertainment','We do not own any music used in this video. Copyright to the owners.** --------------SUBSCRIBE FOR MORE VIDEOS------------- --------Never miss a daily video\'s ...','2019-04-05 23:34:16','vyt5c93bdfc8caf15.08753899','vyt5ca77570276d54.56104362'),
	('vyt5ca77572123032.86879362','Aq2QMXdfUHA','https://www.youtube.com/embed/Aq2QMXdfUHA','LOISA ANDALIO - HIGH SCHOOL (NET25 LETTERS AND MUSIC)','Letters and Music','Entertainment','LOISA ANDALIO performed her debut single and rendition of Sharon Cuneta\'s \"HIGH SCHOOL\" in Eagle Rock and Rhythm segment of Letters and Music.','2019-04-05 23:34:10','vyt5c93bdfc8caf15.08753899','vyt5ca77570276d54.56104362'),
	('vyt5ca77571704089.65084930','bdsL4HNJn24','https://www.youtube.com/embed/bdsL4HNJn24','Sharon Cuneta: Why does the Philippines Love her so Much?','Travis Kraft','Nonprofits & Activism','Sharon Cuneta may be the Megastar, but why do Filipinos love her? I took to the streets to find out the reasons she has captured the hearts of the masses.','2019-04-05 23:34:09','vyt5c93bdfc8caf15.08753899','vyt5ca77570276d54.56104362'),
	('vyt5ca6324d5d5e09.35770471','bNpvcWqv-CQ','https://www.youtube.com/embed/bNpvcWqv-CQ','Stephen&#39;s Heart Goes Out To New Zealand','The Late Show with Stephen Colbert','Entertainment','Stephen Colbert offers his sympathies to the people of New Zealand and the Muslim community all around the world. Subscribe To \"The Late Show\" Channel ...','2019-04-05 00:35:25','vyt5c93bdfc8caf15.08753899','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca77570bcd3d5.53029674','CaH799aJhKE','https://www.youtube.com/embed/CaH799aJhKE','The Legal Wife Theme Song - Hanggang Kailan Kita Mamahalin','Dengel Forever','Entertainment','Official theme song performed by Angeline Quinto Watch it here soon: http://goo.gl/AYMhv0 Hanggang Kailan Kita Mamahalin Version: Sharon Cuneta featuring ...','2019-04-05 23:34:08','vyt5c93bdfc8caf15.08753899','vyt5ca77570276d54.56104362'),
	('vyt5ca77576c70f50.24055913','ciZYA0iVRsU','https://www.youtube.com/embed/ciZYA0iVRsU','Crying Ladies (2003) Movie Review | Sharon Cuneta x Mark Meily Film | Chessie 1000','Chessie 1000','People & Blogs','PERSONAL RATING: 5/5 - this is one of Sharon\'s strongest movies post her Megastardom - if you have an extra 100 mins, give this is a re-watch and you\'ll ...','2019-04-05 23:34:14','vyt5c93bdfc8caf15.08753899','vyt5ca77570276d54.56104362'),
	('vyt5ca6324ced7c86.91668621','cN-Oq1bpvJw','https://www.youtube.com/embed/cN-Oq1bpvJw','New Zealand shooting: 49 dead, Australian man charged over mosque shootings, live stream','CBS News','News & Politics','New Zealand shooting: What we know- -Police said 49 people are dead after shootings at two mosques. -At least 20 others were being treated for gunshot ...','2019-04-05 00:35:24','vyt5c93bdfc8caf15.08753899','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca63253b28ab2.10759287','cx0V-pVra0s','https://www.youtube.com/embed/cx0V-pVra0s','More than 40 dead in New Zealand mosque shooting','Click On Detroit | Local 4 | WDIV','News & Politics','More than 40 dead in New Zealand mosque shooting.','2019-04-05 00:35:31','vyt5c93bdfc8caf15.08753899','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca6324b6b9f30.87023331','Dnu5a0ObYxM','https://www.youtube.com/embed/Dnu5a0ObYxM','Many Killed in 2 New Zealand Mosque Shootings','KPIX CBS SF Bay Area','News & Politics','Multiple people were killed in mass shootings at two mosques full of worshippers attending Friday prayers on what the prime minister called \"one of New ...','2019-04-05 00:35:23','vyt5c93bdfc8caf15.08753899','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca4b8ffc62578.54527472','DrAMsCKv_GM','https://www.youtube.com/embed/DrAMsCKv_GM','‘Sorry kung umasa ka’: CarGel scene in ‘Playhouse’ gets painfully real for fans','DTN NEWS','News & Politics','\'Sorry kung umasa ka\': CarGel scene in \'Playhouse\' gets painfully real for fans Thank for watching! If you like this video, please Subscribe my channel: ...','2019-04-03 21:45:35','vyt5c93bdfc8caf15.08753899','vyt5ca4b8ff6d8245.43161754'),
	('vyt5ca632500c01a1.36545409','DUk0EHSNVx8','https://www.youtube.com/embed/DUk0EHSNVx8','Survivor describes New Zealand mosque shooting','Fox News','News & Politics','A gunman opened fire on worshipers at two New Zealand mosques mosques, killing at least 49 people Friday in what the prime minister called \'one of New ...','2019-04-05 00:35:28','vyt5c93bdfc8caf15.08753899','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca775737c0a54.89819357','DZU7dyQnnw4','https://www.youtube.com/embed/DZU7dyQnnw4','Sharon Cuneta reveals important detail about relationship with Richard Gomez in the past','PEP','Entertainment','Sharon Cuneta on Richard Gomez: \"Lahat ng natiis ko sa kanya... hindi ko titiisin kahit kalahati no\'n sa sino mang nauna sa kanya or sino mang after niya.','2019-04-05 23:34:11','vyt5c93bdfc8caf15.08753899','vyt5ca77570276d54.56104362'),
	('vyt5ca632518e3207.76492708','eWv-3mm3XDE','https://www.youtube.com/embed/eWv-3mm3XDE','New Zealand pays tribute to victims of Christchurch mosque massacre','Guardian News','News & Politics','Mosques in New Zealand have been inundated with floral tributes and messages of support after a massacre in Christchurch in which 49 people were killed, the ...','2019-04-05 00:35:29','vyt5c93bdfc8caf15.08753899','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca7757627b6d5.31994413','G2VPG--gU10','https://www.youtube.com/embed/G2VPG--gU10','Sharon Cuneta','Audiopedia','Education','HIDDEN ERROR: Usage of \"_VALUE_\" is not recognized Sharon Gamboa Cuneta-Pangilinan, better known as Sharon Cuneta, is a Filipino singer, actress and ...','2019-04-05 23:34:14','vyt5c93bdfc8caf15.08753899','vyt5ca77570276d54.56104362'),
	('vyt5ca6324fb3f954.99830858','huovEuKvqmI','https://www.youtube.com/embed/huovEuKvqmI','New Zealanders show outpouring of solidarity after mosque attacks | DW News','DW News','News & Politics','Fifty people have been confirmed dead after a right-wing terrorist attack on two mosques in the New Zealand city of Christchurch. The suspected gunman ...','2019-04-05 00:35:27','vyt5c93bdfc8caf15.08753899','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca632548658b9.06469375','I0it863xfuQ','https://www.youtube.com/embed/I0it863xfuQ','New Zealand shooting update: Prime Minister Jacinda Ardern holds press conference, live stream','CBS News','News & Politics','New Zealand Prime Minister Jacinda Ardern holds a further media briefing after 40 people were killed in the two mosque shootings in Christchurch. For live ...','2019-04-05 00:35:32','vyt5c93bdfc8caf15.08753899','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca63250b9ea73.55301866','i2fT_PhmYBw','https://www.youtube.com/embed/i2fT_PhmYBw','Ex-Muslims Silenced after New Zealand Mosque Attack (David Wood)','Acts17Apologetics','Education','Following the New Zealand mosque attacks in Christchurch, critics of Islam are being blocked, banned, and deplatformed. For instance, ex-Muslim Armin Navabi ...','2019-04-05 00:35:28','vyt5c93bdfc8caf15.08753899','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca7728fd13418.83596857','jFdUTbyNa1Y','https://www.youtube.com/embed/jFdUTbyNa1Y','IKUTA TOMA WITHOUT WORDS','epukka24','Film & Animation','to see it subs...turn on the cc at the botton of vid!','2019-04-05 23:21:51','vyt5c93bdfc8caf15.08753899','vyt5ca7728f335c11.57936891'),
	('vyt5ca6325248b4c4.14777334','Jfkvk7mAr4A','https://www.youtube.com/embed/Jfkvk7mAr4A','Muslim community offers support after mass shooting at New Zealand mosque','9NEWS','People & Blogs','Mass shootings at two mosques full of worshippers attending Friday prayers killed 49 people on what the prime minister called \"one of New Zealand\'s darkest ...','2019-04-05 00:35:30','vyt5c93bdfc8caf15.08753899','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca632542276b2.91191380','kcWw0NsKzvM','https://www.youtube.com/embed/kcWw0NsKzvM','&#39;Hello brother&#39;: Muslim victim greeted gunman in New Zealand mosque','World Newspaper','Entertainment','\'Hello brother\': Muslim victim who greeted terrorist gunman in New Zealand mosque shooting is hailed as a hero for \'showing the kindness that is Islam\' with his ...','2019-04-05 00:35:32','vyt5c93bdfc8caf15.08753899','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca6324c2557d8.26201812','KW5ldz52pwQ','https://www.youtube.com/embed/KW5ldz52pwQ','Mass shooting at mosques in Christchurch, New Zealand','Fox News','News & Politics','Witness describes hearing shots for six minutes; Kristin Fisher has the latest details. FOX News operates the FOX News Channel (FNC), FOX Business Network ...','2019-04-05 00:35:24','vyt5c93bdfc8caf15.08753899','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca77573e062a8.33597350','LNd3n7nSTkI','https://www.youtube.com/embed/LNd3n7nSTkI','Sharon Cuneta - Mr. DJ','bobexr3','Music','Sharon Cuneta - Mr. DJ From the album \"High School\" (1981) Originally released from the album \"DJ\'s Pet\" (1978) Both albums are from Vicor Music ...','2019-04-05 23:34:11','vyt5c93bdfc8caf15.08753899','vyt5ca77570276d54.56104362'),
	('vyt5ca77574500ec1.21332141','lYAXzbn67v0','https://www.youtube.com/embed/lYAXzbn67v0','Sharon Cuneta &amp; Gabby Concepcion McDonald&#39;s Kumusta Ka TV Commercial Spoof','novo ramos','People & Blogs','Here is our own amateur version of the viral McDonald\'s Philippines\' commercial advertisement featuring one of Philippines\' most loved (former) love teams, ...','2019-04-05 23:34:12','vyt5c93bdfc8caf15.08753899','vyt5ca77570276d54.56104362'),
	('vyt5ca77575c1aa24.73681193','Mms0AGjLkHM','https://www.youtube.com/embed/Mms0AGjLkHM','Gabby Concepcion Sends Birthday Greetings To Former Wife Sharon Cuneta','Fun Bad Baby Daddy','People & Blogs','Gabby Concepcion Sends Birthday Greetings To Former Wife Sharon Cuneta.','2019-04-05 23:34:13','vyt5c93bdfc8caf15.08753899','vyt5ca77570276d54.56104362'),
	('vyt5ca7757880c430.54457590','Mpis9UWQjSA','https://www.youtube.com/embed/Mpis9UWQjSA','Showbiz News - Sharon Cuneta nasaktan daw, bakit kaya? Robin ano ang sagot?(2018)','Showbiz News Philippines','Entertainment','Showbiz News - Sharon Cuneta nasaktan daw, bakit kaya? Panoorin kung ano ang sinagot ni Robin Padilla sa Instagram, at kung bakit nasaktan si Sharon ...','2019-04-05 23:34:16','vyt5c93bdfc8caf15.08753899','vyt5ca77570276d54.56104362'),
	('vyt5ca632531c6e16.96056821','nrUiIBH3-_8','https://www.youtube.com/embed/nrUiIBH3-_8','Two Muslim American communities struggle to process New Zealand attack','Washington Post','News & Politics','Muslims at the McLean Islamic Center in Virginia and the Dar Al-Farooq Islamic Center in Minnesota gathered during Friday prayers to mourn those killed in ...','2019-04-05 00:35:31','vyt5c93bdfc8caf15.08753899','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca6324e3137e4.14770790','OdxLRnBrx1s','https://www.youtube.com/embed/OdxLRnBrx1s','New Zealand parliament pays tribute to Christchurch victims','Guardian News','News & Politics','MPs in New Zealand\'s parliament have paid tribute to the victims of the Christchurch terror attacks this afternoon, opening the day\'s session with a Muslim prayer ...','2019-04-05 00:35:26','vyt5c93bdfc8caf15.08753899','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca63250562db1.29510259','OVasVStyRMY','https://www.youtube.com/embed/OVasVStyRMY','New Zealand Mosque Leader Blames Jews for Christchurch Terror Attack (David Wood)','Acts17Apologetics','Education','Following the New Zealand mosque attacks in Christchurch, mosque leader Ahmed Bhamji claimed at the \"Love Aotearoa, Hate Racism\" rally that Mossad ...','2019-04-05 00:35:28','vyt5c93bdfc8caf15.08753899','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca6324c894b60.56087639','Qnwv_vOmbvQ','https://www.youtube.com/embed/Qnwv_vOmbvQ','New Zealand Shooting Suspect Identified | NBC News','NBC News','News & Politics','The suspect in the deadly shooting spree at two New Zealand mosques has been identified as Brenton Tarrant. NBC News has verified a photo of the suspect.','2019-04-05 00:35:24','vyt5c93bdfc8caf15.08753899','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca77572755206.73777968','qs1Rt9gKcQo','https://www.youtube.com/embed/qs1Rt9gKcQo','Richard Gomez forgets important dates with ex Sharon and wife Lucy','PEP','Entertainment','Sharon Cuneta to Richard Gomez: \"Alzheimer\'s na ba yan? #richardgomez #sharoncuneta #lucytorres #threewordstoforever Video Producer: Noel Orsal Video ...','2019-04-05 23:34:10','vyt5c93bdfc8caf15.08753899','vyt5ca77570276d54.56104362'),
	('vyt5ca775777b4a36.84057341','rabRsvRERk0','https://www.youtube.com/embed/rabRsvRERk0','Ikaw Lang ang Mamahalin perform by: Sharon Cuneta','Star Apple Production','Entertainment','We do not own any music used in this video. Copyright to the owners.** --------------SUBSCRIBE FOR MORE VIDEOS------------- --------Never miss a daily video\'s ...','2019-04-05 23:34:15','vyt5c93bdfc8caf15.08753899','vyt5ca77570276d54.56104362'),
	('vyt5ca77571bac489.07211022','REvVvr77n7Y','https://www.youtube.com/embed/REvVvr77n7Y','The Voice Kids&#39; Team Sharon sing Michael Jackson hits @ Coach Sharon&#39;s Concert','Ian Joseph Prelligera','Entertainment','Team Sharon of The Voice Kids season 3 perform Michael Jackson hits\' “They Don\'t Care About Us,” and “Heal the World” at Megastar Sharon Cuneta\'s Concert ...','2019-04-05 23:34:09','vyt5c93bdfc8caf15.08753899','vyt5ca77570276d54.56104362'),
	('vyt5ca6324dc13e40.89795116','rrWN-DEjhiE','https://www.youtube.com/embed/rrWN-DEjhiE','Mosque Shooter Praises Trump, Trump Reacts','The Damage Report','News & Politics','Trump reacts to the shooting in a mosque in New Zealand by a man who praised him in his manifesto. John Iadarola and Brett Erlich break that down, and ...','2019-04-05 00:35:25','vyt5c93bdfc8caf15.08753899','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca7728f7e73a8.10643077','RUfGbuiWGRE','https://www.youtube.com/embed/RUfGbuiWGRE','Ikuta Toma in London','slightlyfantastic','Film & Animation','From the show Another Sky (April 2012) Uploaded for entertainment and interest only. No copyright infringement intended. Eng subs now in CC (not directly a ...','2019-04-05 23:21:51','vyt5c93bdfc8caf15.08753899','vyt5ca7728f335c11.57936891'),
	('vyt5ca775756f4bc3.48406093','SE2n-D30DzE','https://www.youtube.com/embed/SE2n-D30DzE','Filipina Actress Clinches &#39;History Maker Award&#39;','Global1 News Network','News & Politics','Celebrated actress \"Megastar\" Sharon Cuneta has recently been honored with HISTORY\'S \"History Maker Award 2018\" for her contribution to the Philippine ...','2019-04-05 23:34:13','vyt5c93bdfc8caf15.08753899','vyt5ca77570276d54.56104362'),
	('vyt5ca63251f23308.08717184','sIOE4D90UfU','https://www.youtube.com/embed/sIOE4D90UfU','Philadelphians Hold Vigil For Victims Of New Zealand Massacre','CBS Philly','News & Politics','Chantee Lans reports.','2019-04-05 00:35:29','vyt5c93bdfc8caf15.08753899','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca77572f38170.01578100','sQdzyzKYnjM','https://www.youtube.com/embed/sQdzyzKYnjM','Lucky Me! Mami Spicy Labuyo w/ Sharon Cuneta 2017 (Eng Subtitles)','aye','Entertainment','Megaspice with Megastar Sharon Cuneta reprises her role as a judge but this time, for the many representations of siling labuyo!','2019-04-05 23:34:10','vyt5c93bdfc8caf15.08753899','vyt5ca77570276d54.56104362'),
	('vyt5ca77574aed170.80529565','T7TZLGD88-c','https://www.youtube.com/embed/T7TZLGD88-c','MR. DJ  Sharon Cuneta cover by Mavier06 with lyrics and guitar chords','mavier06','Music','A very nice song with lyrics and guitar chords in description matching the video. Tempo from original 6/8 change to 3/4 by the foreigner guitar player so you may ...','2019-04-05 23:34:12','vyt5c93bdfc8caf15.08753899','vyt5ca77570276d54.56104362'),
	('vyt5ca63253649454.81421294','TkcQHJ4F8yw','https://www.youtube.com/embed/TkcQHJ4F8yw','News Wrap: Funerals for New Zealand shooting victims begin','PBS NewsHour','News & Politics','In our news wrap Wednesday, funerals began in New Zealand for victims of the Christchurch mosque shootings that killed 50 people. Hundreds gathered to pray ...','2019-04-05 00:35:31','vyt5c93bdfc8caf15.08753899','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca77578cd1239.79615343','v-32lKvOZOU','https://www.youtube.com/embed/v-32lKvOZOU','Sharon begins North American concert tour with daughter KC','News 3','Gaming','LOS ANGELES -- Sharon Cuneta is now in the United States to celebrate her 40th year in showbiz with a series of concerts with daughter KC Concepcion.','2019-04-05 23:34:16','vyt5c93bdfc8caf15.08753899','vyt5ca77570276d54.56104362'),
	('vyt5ca6324bbe1b18.10901899','VOsaMaVlPWg','https://www.youtube.com/embed/VOsaMaVlPWg','New Zealand Mosque Shooting: Suspect Makes First Court Appearance | TODAY','TODAY','News & Politics','The alleged gunman behind the terrorist attacks at two mosques in Christchurch, New Zealand, has been charged with murder. At least 49 people died in the ...','2019-04-05 00:35:23','vyt5c93bdfc8caf15.08753899','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca77290419a05.11097330','xvYddgYG98Q','https://www.youtube.com/embed/xvYddgYG98Q','[ Han Hyo Joo x Toma Ikuta MV ] Love Story - Miracle Debikuro&#39;s Love and Magic 2014','HAN-TV','Film & Animation','Please click \"CC\" to turn on subtitles ;) My fanmade video and hope you like this :) Hanamizuki is one of the best movie for me. Movies used: Shining Inheritance, ...','2019-04-05 23:21:52','vyt5c93bdfc8caf15.08753899','vyt5ca7728f335c11.57936891'),
	('vyt5ca77571254e42.05064668','YXgn1i8O-gM','https://www.youtube.com/embed/YXgn1i8O-gM','10 Effective Steps to LOSE WEIGHT Based on SHARON CUNETA&#39;s Tips','Jatamari\'s World','Howto & Style','These 10 simple and effective steps to lose weight really work because Sharon Cuneta, the Philippines\' megastar, is obviously getting slimmer. Slowly but surely ...','2019-04-05 23:34:09','vyt5c93bdfc8caf15.08753899','vyt5ca77570276d54.56104362'),
	('vyt5ca6324e952146.37497849','zqbe6k2tIhI','https://www.youtube.com/embed/zqbe6k2tIhI','New Zealand - Terrorism &amp; Islam | اھم بیان جاری | Molana Tariq Jameel Latest Bayan 22-March-2019','Tariq Jamil Official','Education','The Christchurch mosque shootings were two consecutive terrorist mass shootings at Muslim mosques in Christchurch, New Zealand, during Friday Prayer on ...','2019-04-05 00:35:26','vyt5c93bdfc8caf15.08753899','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca6324f500864.05126846','ZRmiQ2sqtOo','https://www.youtube.com/embed/ZRmiQ2sqtOo','New Zealand mosque shooting suspect identified and charged in court | DW News','DW News','News & Politics','The suspected gunman in mass shootings at two mosques in the New Zealand city of Christchurch has been identified and charged with murder. Following the ...','2019-04-05 00:35:27','vyt5c93bdfc8caf15.08753899','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca63252ac9783.17787383','_cw9BB90620','https://www.youtube.com/embed/_cw9BB90620','Australian Arrested In Mass Shooting On New Zealand Mosques','CBS Los Angeles','News & Politics','Forty-nine people have been killed in the livestreamed attacks on two mosques in Christchurch. Sandra Mitchell reports.','2019-04-05 00:35:30','vyt5c93bdfc8caf15.08753899','vyt5ca6324b0cfd36.75046055'),
	('vyt5ca7757070a9f5.19912902','_sPqIXqzJNg','https://www.youtube.com/embed/_sPqIXqzJNg','Kumusta Ka','McDo Philippines','People & Blogs','Masarap balik-balikan ang classic na tambalan. Enjoy our Best-Tasting Chicken McDo paired with our World Famous Fries in one delicious meal.','2019-04-05 23:34:08','vyt5c93bdfc8caf15.08753899','vyt5ca77570276d54.56104362');

/*!40000 ALTER TABLE `VIDEO` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
