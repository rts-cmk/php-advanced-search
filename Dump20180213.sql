-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: citycykler
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `categoryId` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(15) NOT NULL,
  `categoryImage` int(11) NOT NULL,
  `categoryType` int(11) NOT NULL,
  PRIMARY KEY (`categoryId`),
  KEY `fkCategoryImage_idx` (`categoryImage`),
  KEY `fkCategoryType_idx` (`categoryType`),
  CONSTRAINT `fkCategoryImage` FOREIGN KEY (`categoryImage`) REFERENCES `media` (`mediaId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fkCategoryType` FOREIGN KEY (`categoryType`) REFERENCES `categorytype` (`categoryTypeId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (56,'Herrecykler',61,1),(57,'Trehjulede',62,1),(58,'B√∏rnecykler',63,1),(59,'Cykelhjelme',64,2),(60,'Cykelcomputere',65,2),(61,'V√¶rkt√∏j',66,2),(62,'Cykelt√∏j',67,2),(63,'Barnestole',68,2),(64,'Reservedele',69,2),(65,'Damecykler',79,1),(66,'Mountainbikes',80,1),(67,'Racercykler',81,1);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorytype`
--

DROP TABLE IF EXISTS `categorytype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorytype` (
  `categoryTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `categoryTypeName` varchar(15) NOT NULL,
  PRIMARY KEY (`categoryTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorytype`
--

LOCK TABLES `categorytype` WRITE;
/*!40000 ALTER TABLE `categorytype` DISABLE KEYS */;
INSERT INTO `categorytype` VALUES (1,'Cykler'),(2,'Udstyr');
/*!40000 ALTER TABLE `categorytype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colors` (
  `colorId` int(11) NOT NULL AUTO_INCREMENT,
  `colorName` varchar(45) NOT NULL,
  `colorMime` varchar(255) NOT NULL,
  `colorData` blob NOT NULL,
  PRIMARY KEY (`colorId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` VALUES (1,'r√∏d','image/jpeg','ˇ\ÿˇ\‡\0JFIF\0\0\0d\0d\0\0ˇ\Ï\0Ducky\0\0\0\0\0d\0\0ˇ\Ó\0Adobe\0d¿\0\0\0ˇ\€\0Ñ\0ˇ¿\0\0\0\0ˇ\ƒ\0t\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0A1\"\0\0\0\0\0\0\0\0\01AQa°\—2#C45ˇ\⁄\0\0\0?\0\Ã˙\◊\n\ﬂ=W\ÈyöV\ZA\Â` òÜ$Ω\‰y\‰Øs\’>\ \Â_û˝d^A\…-µ}¥<\‡Hp\Ïu\—Oà|+¡-∏d\…Uë\Í\·∂IRI#r{\È{O\÷z\◊P|}\'\nïeW0\Ê@k|Å?o\≈D8ú®âı0ä≠T\Óã\«@™\‰÷Æ8S\ŒEx\Ô\‘6¢5e\œ¸¿aD≠Sê\“\\º≠lêÅÙπ1§(B	\–\ÍüıñŒ™b—µliêlÜ\ŒëØé\Êß-lÑ\‹\‹xRSC;ßLÖ,m?í!GçËúµ ã\œSº¨I∂}Kr>Ká˜4>`\ÈÛw\—\„⁄ñ\"¬∂D&¡>\›9@únà\ÎIà8\”]°Uß6$%\«møLõÇ\”V\Ã6$`Y∫πßπ7Må2∏\ÊX&+åg¢my÷®\Î+Pp•\∆?ô\Ï˛f∂˚j\Ï≥ÚNõ\Ê¸\⁄R´\·!\Ëv\ﬂ\ÌWünû\0Pò\…*éûÄ\‡©G)$\„_ˇ\Ÿ'),(2,'gul','image/jpeg','ˇ\ÿˇ\‡\0JFIF\0\0\0d\0d\0\0ˇ\Ï\0Ducky\0\0\0\0\0d\0\0ˇ\Ó\0Adobe\0d¿\0\0\0ˇ\€\0Ñ\0ˇ¿\0\0\0\0ˇ\ƒ\0r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0!1A\0\0\0\0\0\0\0\0\0!\01AQaqë°ˇ\⁄\0\0\0?\0Æt\ÀD∞\'q◊ºSwiä:îŸñ.ûTâ2)\∆Bò•\›\Â!9{ﬁ´ Øœú1ÚwñwfÁêã!%-\"R¿fÄ\–sfk∫\∆%¸C8\√dñ\≈\»\‚}å\–=°ß\∆%Öâ˙ågXg\‹JwäúlRCπ\…˝r∂dg´x\‰rc\…sû\Œkï>|JÚ˛\Á.LÙªêî†å<ıä¨ÿ¢+äI˚>y~_V√∂\€µylA\Ë\\H?ÆVö∞\ÿrØTT	\›K=æ\¬.3\Í¡±}vµ\Á{òK<uÅl¥çgOè\Á\◊N\nç(JA==Z\ÂE\Á¡º£¶∫˛\ÔíySq#∫R\Õ>\"Hø™T\Ë ˚Ç+\≈\'\‰\√\∆D4∏Ü\√I∫öz\Á\Ì-®\œmV\≈aŸΩcQ\œ\Ëqlæ≤\À_\€\÷|˜Z5ã8ÙyV(3X\„ÿÇ<Ø\ÊàﬂÜ8\’\“$ó\Í ±\Â{X´Ùù1\∆\Â\ŒPõà5\√\‰§¯Ñ\–\ƒtV\œ\Z[ì@I B\\ÃöcvæjÛ]¥i˙ˇ\0D–ö¥-◊•O∞<ˇ\Ÿ'),(3,'gr√∏n','image/jpeg','ˇ\ÿˇ\‡\0JFIF\0\0\0d\0d\0\0ˇ\Ï\0Ducky\0\0\0\0\0d\0\0ˇ\Ó\0Adobe\0d¿\0\0\0ˇ\€\0Ñ\0ˇ¿\0\0\0\0ˇ\ƒ\0q\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0!1A\"\0\0\0\0\0\0\0\0\0\0!1AaÅ\"ë¡R#Cˇ\⁄\0\0\0?\0ïz\€\’\\´íd\\\Œw°ï\"_\ZÆêSñµØy^@£úGΩSÚs\’}˚Û8∑\ﬂ=?)ñ•<î%\Â\0∫ΩQπL¥∆¶8î∏†èö9±ı+\'©Æ\·ç¿(\0≥5å≤¥ÆekY˚#\ŸsähR\0\ÂO´#+U>ËæºW^\ﬁÛ\ÔΩ$.S\ƒ&ïóî≤≤±\‘!f&≠Nr\‚¨Àá\ËìU\œO6,fªØπ4[JMxñ!\‡|tSˇ\0üÖÎñ±[5ï¿IHıº:Tbi\—»Ñ7ß\À\\®®æ\'ª\ÎœΩ±KXì\0˙¨©,§˜\‰Ç(9hKT\◊qëÛ=∏ë˜¶>\√\Ï\ÿƒ∫,\ÌµÙ[;æ(©/\◊\‡5\–ckLˆHM\·¿§•p ¢ULw˙öÚ9≠U5≠vCoJ&N<Ûèî-)É\€û`<ûÄπµ•N~\∆n√ü\—ÅıØˇ\Ÿ'),(4,'lime','image/jpeg','ˇ\ÿˇ\‡\0JFIF\0\0\0d\0d\0\0ˇ\Ï\0Ducky\0\0\0\0\0d\0\0ˇ\Ó\0Adobe\0d¿\0\0\0ˇ\€\0Ñ\0ˇ¿\0\0\0\0ˇ\ƒ\0v\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0!1AB	\0\0\0\0\0\0\0\0\0\0!1AaÅQq°\"2$ˇ\⁄\0\0\0?\0¥x∑Étg\œ\Z¢\Ó\”SbSfXaTÚ§I=0\»Sî±˛o)©\Í˜=W\’W\Ô\Á/Ûl˚\"Öë\Àaôo%	}@\0£`/Y\Îvﬁß5=\‘%≈Äy“éé˛~s\Ì>Ø$-Kà\≈uéˇ\0\–Ùßx©Ü\≈,Kù°ç\÷Ãå\Á\'\‘rc\…s\ﬂ…ÆTÒLk˙G!\ÈA\…oùæRá\‘x•Ö®\ƒ^á|ûµπwW£>&´n\Ë≠GW\…˙\"ºÿÜ¸}î]eãÃï¸”æÆ°¨\·÷Ö≤í-ù.Ω±ÆùßG#JºDOvπQQ|¶ké!ÃûkØ…Éb˙¨®\È#^aN$É–ä<\Ëq>E\ÂK[f\Î6\∆˝AX•ù[—∫¶n/™E\ﬂ\È$=5\Ãs≤˘ìV±Ay`Úg¥f≤\◊P\∆y+\\\"˛®\„W»í_àÇ\¬\Ìb≠écå&Lï7\"\ræ>X?µ\ËXprt˜&¿í@©\ﬂ˘IaH	\r9Óªç˝æ\√{Yg_;µˇ\Ÿ'),(5,'bl√•','image/jpeg','ˇ\ÿˇ\‡\0JFIF\0\0\0d\0d\0\0ˇ\Ï\0Ducky\0\0\0\0\0d\0\0ˇ\Ó\0Adobe\0d¿\0\0\0ˇ\€\0Ñ\0ˇ¿\0\0\0\0ˇ\ƒ\0n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\01A!\0\0\0\0\0\0\0\0\0\0!1aAqÅˇ\⁄\0\0\0?\0ò˙\◊\’<ßíd\n\Œw\0†ï\"_\ZÆêSñµØy^@£úGΩS€úı_üø5ãı\Ê2\Ó0õ”∞g+$òé¥\÷6˚\Ÿ\Ÿ_ñ<µáòç∏30\0ë†\0Ù\—Õó®˘-Mw|lˇ\0èÅfkY]a\\:÷∑˜èe\Œi°Hï>XaZ©ˆã\Î\≈\Â∏\≈◊∞§≠&∏Ú‰îâ§GI1ë˝É†\‚\”\À\Za\—u\Ê$!\≈;1Yåπ ~¡\’e\‘\rãØ\Î\ÊK∆ó\\uÄ8Ç¿\¬ı\ÎX\…5ï¡IHıú2\\bi\—\»\“è\”Ú\◊*/ø+±LÅ√ä°iKF\‹Wà©Uí	ß¡çô⁄áCˆV%~˛`˝\ﬂ\Ÿ\≈\«…ôöI’¢Fˇ\0\"W±\Zb\Ï.Àé †\œYè`˛\¬›∞y/ˇ\0V∞¿j√ç¨Ò#ÿ†â;Ö\«§%p £\∆;˝My÷¨ú\Ô<ˇ\0\„≥ˆ[$ºØçjÇAãdT\ \»Ô∞©\'`	\–0\ÏF˝¶^?≥ä5\‚^<±\Íµ¡SK¶ÄWrvr@\Zˇ\Ÿ'),(6,'lilla','image/jpeg','ˇ\ÿˇ\‡\0JFIF\0\0\0d\0d\0\0ˇ\Ï\0Ducky\0\0\0\0\0d\0\0ˇ\Ó\0Adobe\0d¿\0\0\0ˇ\€\0Ñ\0ˇ¿\0\0\0\0ˇ\ƒ\0o\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0A\"!1\0\0\0\0\0\0\0\0\0\0!AQ1aë2ˇ\⁄\0\0\0?\0\À\Ï#\◊<\Í˜2\·∂¯]<É…°Ñbê\Z\Áë\œíΩ\œT˚+ï=vˇ\0\∆~)\”Ú:v>Tàî\‚\„ íR9$u5∏5ùS\'\≈\«h®¥	6•ıZ≥z\ÿ<I¿\·T¡YZNw\0éd∑\Ã3˘uTSâU>¶U™ü(Ω∫v\Á\‚M6,h*fQ˜\À¡A!#\—rõIÿÇAˆ´\Êµ;-1ıé\–*ñ\¬}:R¯5U˙¡ß\‰PÒ\∆=Ö~ñ∂\·Tûë1\ÕN\ :MmxRSE6øà á(m?í!Gç\È˘j™/~á°mrÜïçf$\\àm1P	¸R\»&\›Üí;mO\”Ûqô\¬GBÿö¢\ZOÛ\’êõS[~•ëH§\·-É]¶©«±c\'z\’a7¯\„\Èº`\÷*\¬L\‚\0L\⁄ˆF&™î\œD\⁄Ú9≠[\Ì[L\”2èê7\…¡)?ä`BSD\\©Ñˆ6\Í&¿M3`\ŒE[qÇc\ÕùÛ\—¿u&\¬\È\‰ˆOˇ\Ÿ'),(7,'pink','image/jpeg','ˇ\ÿˇ\‡\0JFIF\0\0\0d\0d\0\0ˇ\Ï\0Ducky\0\0\0\0\0d\0\0ˇ\Ó\0Adobe\0d¿\0\0\0ˇ\€\0Ñ\0ˇ¿\0\0\0\0ˇ\ƒ\0u\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!1AB\0\0\0\0\0\0\0\0\0\01!QaAqÅ°#ˇ\⁄\0\0\0?\0ªi\Óè\—|æÇ´Û9:∑äÃó;ábdûIÒ!RÉ\…\≈!;Ω\œU\Ô\›}˙÷ò\\\∆\\c…¶E`\Ì≠˘ÍæüÉ∫¡\€9∂\Í2í¢I#¶í\Ï&àP¯<EjHugå\ÏÖ\ÌHa\ŒÒbXœí.^\ \„\ÿ˘Q\ﬁ\‰˜àÚ\«\'\Ï\◊*~z>W÷±äÇ{Q\0M\ F\ﬂëR3æôÇJm\ \Ì\“+{o@6ìb˚É≠[£\ÌEé’∫>Æ1y,¯µ∑E5\ŒÛ\À\ƒY\Ï∆Ö%$|ñÄ\œ\«\ŒNéFî%xûû≠r¢˜\Ëxlì\∆\"\ﬁ\ÀäüM~Ñ@äjªñºñ\n\—vÀ∏ä\‚òÒ(}	ß8™@Ù\„§\€?∞$æ1Xé\'Ω~qlv∑JO≥≠˜æ<^%\◊¬§\‰<ëØ¢\“?ö#(Ä5y\‰\ƒAc\»ˆ±_ë\…]¯V\Z∑W˙\€˙õøí4\ﬁÒS\»id≤w\¬\⁄tkré\⁄!ÙÚ¬Ñí°\◊jì∞\Îˇ\Ÿ'),(8,'hvid','image/jpeg','ˇ\ÿˇ\‡\0JFIF\0\0\0d\0d\0\0ˇ\Ï\0Ducky\0\0\0\0\0d\0\0ˇ\Ó\0Adobe\0d¿\0\0\0ˇ\€\0Ñ\0ˇ¿\0\0\0\0ˇ\ƒ\0[\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!1	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˇ\⁄\0\0\0?\0\›}¸\€\÷\\ÛV¯[\"∫\·l\Zt\Î<äd©í\ËÇBú\Áç\ÓÛÆÚÚ|™™˜^˝\r¨¸\…\’\Ïnáá\Õ]¬∏WZl÷∑PJ((\¬œ≤\r˜0\‚ïS¢ë\Õ˘®íû7µ|9ÆT_\–Røû{7\∆p4\À\\kÜl8§¡\‚l<Eã™\€!sñC™f-∂?\≈\÷ıV\0i\—\»¬Ä\ƒ\Zû\Õr¢˜\Ë\Ì\Œ\ÕÒƒ¨3ä@\‹?bv\Ì>®Jé\„jû\ÀWã`∏˙\\∑,ãn)ØLïÅ?\’JIRã\ÍÖ{°ˇ\Ÿ'),(9,'gr√•','image/jpeg','ˇ\ÿˇ\‡\0JFIF\0\0\0d\0d\0\0ˇ\Ï\0Ducky\0\0\0\0\0d\0\0ˇ\Ó\0Adobe\0d¿\0\0\0ˇ\€\0Ñ\0ˇ¿\0\0\0\0ˇ\ƒ\0[\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!12	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˇ\⁄\0\0\0?\0®∏◊Ö¥>cœ∫Æ\Í\œT\‚sfO\√*%I\È\∆Rú•ééyHEıWπÍæ™´Û\‡\'\Ëû\–tT˙»êµ>%ˆ\ÎFS\‚¶`‘±.6v9[.3ï>\·Iè%\√s~\◊*x/ÛÛ¢4Ö?+h\ÿ6∏á@H≥ç≠1`\ÿ:ßö∑ï\‹/\›e`[)#Y\‘\‡ì+\ÁéFî% ûû\Ìr¢¢¯∫«£¥|¸oR2ª\Ëf?MÛ“§˛e\ﬁ’å|[\«ïh\»\Â∞¿£\nD≈≠v+è$øHÑ«ï\Ìbáˇ\Ÿ'),(10,'sort','image/jpeg','ˇ\ÿˇ\‡\0JFIF\0\0\0d\0d\0\0ˇ\Ï\0Ducky\0\0\0\0\0d\0\0ˇ\Ó\0Adobe\0d¿\0\0\0ˇ\€\0Ñ\0ˇ¿\0\0\0\0ˇ\ƒ\0]\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!1A\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˇ\⁄\0\0\0?\0¿J“∫Í¨µ-2∞¨µ\Â*\ GP\ BA\»¯R∫£´T¥†ï^≠^P=N¡Uzî¸≥\0˝ì\‡-.™¢\„Wkqólã¥r±Ä\·˝\œI5.\Â‰ñûC\€\‹wˆ™Ø#\≈\Î€ºeıØ\…{®&Ø4\–J™7d!à6C˝8˜\€\"\Ì\ŒKøµW…Öµ.\Â†G9u°?#ØjWë®\‚ü6q\nπû…èŸÅ$ô„çÉˇ\Ÿ');
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media` (
  `mediaId` int(11) NOT NULL AUTO_INCREMENT,
  `filepath` varchar(126) NOT NULL,
  `filename` varchar(128) NOT NULL,
  `mime` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`mediaId`)
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (39,'../assets/images/site','268x204_forsideImg','png'),(58,'../assets/images/products/categories/cykler','116x80_mountainbikes','jpg'),(59,'../assets/images/products/categories/cykler','116x80_racercykler','jpg'),(60,'../assets/images/products/categories/cykler','116x80_damecykler','jpg'),(61,'../assets/images/products/categories/cykler','23cc80902eb9c64045b747985f2e18cd','jpg'),(62,'../assets/images/products/categories/cykler','b009f829324d225196b3769986747423','jpg'),(63,'../assets/images/products/categories/cykler','e3666593ccbd2e9697f3df5508c6f706','jpg'),(64,'../assets/images/products/categories/udstyr','fd6f14c02dd99efd850bb1caa9a3e652','jpg'),(65,'../assets/images/products/categories/udstyr','4feef87711d56c23a0b46c30317534d9','jpg'),(66,'../assets/images/products/categories/udstyr','6fc2a7de2afbb28bd1bc4b8d0fd08ad9','jpg'),(67,'../assets/images/products/categories/udstyr','3e0eb8b6625c459fb02866637c10a453','jpg'),(68,'../assets/images/products/categories/udstyr','7c13352d3cdb6debb11fe9fdda0bd3d5','jpg'),(69,'../assets/images/products/categories/udstyr','8876a0bfd2f372b77c57792e9795590c','jpg'),(79,'../assets/images/products/categories/cykler','b64e479f484e9ea8db56e57fa640e81a','jpg'),(80,'../assets/images/products/categories/cykler','c698335e0db5831611c2be969326f59c','jpg'),(81,'../assets/images/products/categories/cykler','73f1e9de89cbd1c4be2a5e49dea31404','jpg'),(82,'../assets/images/products/cykler','12d523bb3885644330f0bee2610afa36','jpg'),(83,'../assets/images/products/cykler','494275e391776d690ec54676cce33b0b','jpg'),(84,'../assets/images/products/cykler','276a5f70ab010627aa951a84beeccfa2','jpg'),(85,'../assets/images/products/cykler','0a55d6ee40e957856d36443dfeda75bf','jpg'),(86,'../assets/images/products/cykler','3088f29231406b187f2c85bff4a75e4f','jpg'),(87,'../assets/images/products/cykler','905d28205d5fdf7b417ce659f6edf00a','jpg'),(88,'../assets/images/products/cykler','d773e8966ab695b5f1eb16da340895d3','jpg'),(89,'../assets/images/products/cykler','e2aeebda0e1dfb79ad22c9348d488d68','jpg'),(90,'../assets/images/products/cykler','8dad0efbb59c383fd2d7d889052ffed2','jpg'),(91,'../assets/images/products/cykler','c9c04e3216a70cf86846bf6786b6b82e','jpg'),(92,'../assets/images/products/cykler','33a8c87f519e2bff4c3b68f44041a16b','jpg'),(93,'../assets/images/products/cykler','d273b022b022e0afdd18ae08c30803f9','jpg'),(94,'../assets/images/products/cykler','77de24f903e1db548b51f1f18c42b6a0','jpg'),(95,'../assets/images/products/cykler','1c4394327408c73c0920117fd395205b','jpg'),(96,'../assets/images/products/','b2af3855c888d6d332f0c2939cd9bba9','jpg'),(97,'../assets/images/products/cykler','b2af3855c888d6d332f0c2939cd9bba9','jpg'),(98,'../assets/images/products/cykler','b5ec1eeb7a99243d531fd61f8c3c6f4c','jpg'),(99,'../assets/images/products/','d41d8cd98f00b204e9800998ecf8427e',''),(100,'../assets/images/products/cykler','58ff46e649fd3b6470e5b95859b63848','jpg'),(101,'../assets/images/products/cykler','3c7363847191dd8b1701117d252d05a0','jpg'),(102,'../assets/images/products/cykler','4f2d523515cff47bc335fbce3039efae','jpg'),(103,'../assets/images/products/cykler','3cea1f4d1fe84533fdb0b3cfc0ba3b8e','jpg'),(140,'../assets/images/products/udstyr','77b0e56fd8864238f4d406edeeb0b74c','jpg'),(141,'../assets/images/products/udstyr','77b0e56fd8864238f4d406edeeb0b74c','jpg'),(142,'../assets/images/products/udstyr','0b38ac54665f405d45a3435139708e0b','gif'),(143,'../assets/images/products/udstyr','0b38ac54665f405d45a3435139708e0b','gif'),(144,'../assets/images/products/udstyr','e7953e41bddd20973cbb57a1000d4cc6','gif'),(145,'../assets/images/products/udstyr','e7953e41bddd20973cbb57a1000d4cc6','gif'),(146,'../assets/images/products/udstyr','e9a64a17ad302ee0bb96699516877e9e','jpg'),(147,'../assets/images/products/udstyr','e9a64a17ad302ee0bb96699516877e9e','jpg'),(148,'../assets/images/products/udstyr','925c3ad25d8c73985452de9ecb2383b4','jpg'),(149,'../assets/images/products/udstyr','925c3ad25d8c73985452de9ecb2383b4','jpg'),(150,'../assets/images/products/udstyr','9a295628191d01e22d1cce4c40dfb85f','jpg'),(151,'../assets/images/products/udstyr','9a295628191d01e22d1cce4c40dfb85f','jpg'),(152,'../assets/images/products/udstyr','a603f5c1e834dd5945d6eee462dbcdde','jpg'),(153,'../assets/images/products/udstyr','a603f5c1e834dd5945d6eee462dbcdde','jpg'),(154,'../assets/images/products/udstyr','bf3757c1bd3e32c0d60d22030e57f454','jpg'),(155,'../assets/images/products/udstyr','bf3757c1bd3e32c0d60d22030e57f454','jpg'),(156,'../assets/images/products/udstyr','180c33a589f3a99d679782d6de4b0867','jpg'),(157,'../assets/images/products/udstyr','180c33a589f3a99d679782d6de4b0867','jpg'),(158,'../assets/images/products/udstyr','f3d8570fb984fc4e8c3b686ac207a563','jpg'),(159,'../assets/images/products/udstyr','f3d8570fb984fc4e8c3b686ac207a563','jpg'),(160,'../assets/images/products/udstyr','c311f4bd646cb8699ba8be84d56ca8a6','jpg'),(161,'../assets/images/products/udstyr','c311f4bd646cb8699ba8be84d56ca8a6','jpg'),(162,'../assets/images/products/udstyr','3f050f36134e5a4fe08484d5614a8874','jpg'),(163,'../assets/images/products/udstyr','3f050f36134e5a4fe08484d5614a8874','jpg'),(164,'../assets/images/products/udstyr','a565d055db4b061472f61f13d69b7bb5','jpg'),(165,'../assets/images/products/udstyr','a565d055db4b061472f61f13d69b7bb5','jpg'),(166,'../assets/images/products/udstyr','a565d055db4b061472f61f13d69b7bb5','jpg'),(167,'../assets/images/products/udstyr','a565d055db4b061472f61f13d69b7bb5','jpg'),(168,'../assets/images/products/udstyr','4490f89cee5e52c0ca693c869663e8a3','jpg'),(169,'../assets/images/products/udstyr','4490f89cee5e52c0ca693c869663e8a3','jpg'),(170,'../assets/images/products/udstyr','a52dbda735875602fb35f7ff374d3fac','jpg'),(171,'../assets/images/products/udstyr','a52dbda735875602fb35f7ff374d3fac','jpg'),(172,'../assets/images/products/udstyr','2a3d5beafce17229260849abd983efb7','jpg'),(173,'../assets/images/products/udstyr','2a3d5beafce17229260849abd983efb7','jpg'),(174,'../assets/images/products/udstyr','e546bca69a650c748d3415c904489bb7','jpg'),(175,'../assets/images/products/udstyr','e546bca69a650c748d3415c904489bb7','jpg'),(176,'../assets/images/products/udstyr','9951899cd53b1a8c26a2de97367698f6','gif'),(177,'../assets/images/products/udstyr','9951899cd53b1a8c26a2de97367698f6','gif'),(178,'../assets/images/products/udstyr','0d13fc5c05f4190ff849cb6f33a006ba','jpg'),(179,'../assets/images/products/udstyr','0d13fc5c05f4190ff849cb6f33a006ba','jpg'),(180,'../assets/images/products/udstyr','81824cea49b11eca98ccff03cdfaa8fd','jpg'),(181,'../assets/images/products/udstyr','81824cea49b11eca98ccff03cdfaa8fd','jpg'),(182,'../assets/images/products/udstyr','1b41ed0777a544619d8a7d23b2e16a03','jpg'),(183,'../assets/images/products/udstyr','1b41ed0777a544619d8a7d23b2e16a03','jpg'),(184,'../assets/images/products/udstyr','4d3e409c95ab87f8bd7775df88885dd6','jpg'),(185,'../assets/images/products/udstyr','4d3e409c95ab87f8bd7775df88885dd6','jpg');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offers`
--

DROP TABLE IF EXISTS `offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `offers` (
  `offerId` int(11) NOT NULL AUTO_INCREMENT,
  `fkProductId` int(11) NOT NULL,
  `offerPrice` int(10) NOT NULL,
  PRIMARY KEY (`offerId`),
  KEY `fk_prodId_idx` (`fkProductId`),
  CONSTRAINT `fk_prodId` FOREIGN KEY (`fkProductId`) REFERENCES `products` (`productId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offers`
--

LOCK TABLES `offers` WRITE;
/*!40000 ALTER TABLE `offers` DISABLE KEYS */;
INSERT INTO `offers` VALUES (6,26,3000),(7,27,1000),(8,29,1800),(9,19,7500),(10,21,3000),(11,23,3500),(12,15,1600);
/*!40000 ALTER TABLE `offers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagecontent`
--

DROP TABLE IF EXISTS `pagecontent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagecontent` (
  `pageId` int(11) NOT NULL AUTO_INCREMENT,
  `pageName` varchar(15) NOT NULL,
  `pageText` text NOT NULL,
  `pageImage` int(11) NOT NULL,
  PRIMARY KEY (`pageId`),
  KEY `pageImage_idx` (`pageImage`),
  CONSTRAINT `pageImage` FOREIGN KEY (`pageImage`) REFERENCES `media` (`mediaId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagecontent`
--

LOCK TABLES `pagecontent` WRITE;
/*!40000 ALTER TABLE `pagecontent` DISABLE KEYS */;
INSERT INTO `pagecontent` VALUES (1,'frontpage','<p>Velkommen til City Cykler</p><p>&nbsp;</p><p>Hos os f√•r du en cykel, der er tilpasset lige pr√¶cis til dig. Vi har nemlig bygget cykler gennem generationer, s√• vi ved hvilke krav en cykel kan blive udsat for i det danske vejr. Vores cykler er bygget p√• generationers erfaring og solidt h√•ndv√¶rk.&nbsp;</p><p>&nbsp;</p><p>Vi har cyklen til alle i familien. Lige fra barnets f√∏rste trehjulede cykel til bedstemors turcykel. V√¶lger du en cykel fra os, s√• f√•r du en cykel, der giver maksimal k√∏regl√¶de og derved g√∏r det til en leg at f√• f√¶lles familieoplevelser p√• cykel med masser af frisk luft og motion, for vi producerer flotte og funktionelle hverdagscykler til hele familien.</p><p>&nbsp;</p><p>En god cykel udvikles ikke af sig selv. Den er et resultat af mange √•rs produktudvikling. Som et 100% danskejet firma kender vi det danske klima og kan tilpasse vore cykler til det ved at bruge de bedste materialer og de mest optimale processer i fremstillingen af cykler.</p><p>&nbsp;</p><p>Vi udvikler og producerer danske kvalitetscykler, der giver dig stor k√∏regl√¶de, en god funktionalitet og som samtidig lever op til dine krav om holdbarhed og minimal vedligeholdelse. Men samtidig g√•r vi ikke p√• kompromis med sikkerheden.&nbsp;</p>',39);
/*!40000 ALTER TABLE `pagecontent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productbrand`
--

DROP TABLE IF EXISTS `productbrand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productbrand` (
  `brandId` int(11) NOT NULL AUTO_INCREMENT,
  `brandName` varchar(45) NOT NULL,
  PRIMARY KEY (`brandId`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productbrand`
--

LOCK TABLES `productbrand` WRITE;
/*!40000 ALTER TABLE `productbrand` DISABLE KEYS */;
INSERT INTO `productbrand` VALUES (2,'Winther'),(3,'Kildemoes'),(5,'Mustang'),(6,'Jensen'),(7,'Bianchi'),(8,'T√•rnby'),(9,'MET'),(10,'Lazer'),(11,'MBK'),(12,'VDO'),(13,'Tranz-x'),(14,'Michelin'),(15,'Lipu'),(16,'Sidi'),(17,'Nike'),(18,'Alessi Bianchi'),(19,'John D'),(20,'Hamax'),(21,'Shimano');
/*!40000 ALTER TABLE `productbrand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productcolor`
--

DROP TABLE IF EXISTS `productcolor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productcolor` (
  `productColorId` int(11) NOT NULL AUTO_INCREMENT,
  `fkProduct` int(11) DEFAULT NULL,
  `fkColor` int(11) DEFAULT NULL,
  PRIMARY KEY (`productColorId`),
  KEY `fkProduct_idx` (`fkProduct`),
  KEY `fkColor_idx` (`fkColor`),
  CONSTRAINT `fkColor` FOREIGN KEY (`fkColor`) REFERENCES `colors` (`colorId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fkProduct` FOREIGN KEY (`fkProduct`) REFERENCES `products` (`productId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=270 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productcolor`
--

LOCK TABLES `productcolor` WRITE;
/*!40000 ALTER TABLE `productcolor` DISABLE KEYS */;
INSERT INTO `productcolor` VALUES (93,14,1),(94,14,2),(95,14,3),(96,14,4),(97,14,5),(98,15,1),(99,15,2),(100,15,3),(101,15,4),(102,16,1),(103,16,8),(104,16,9),(105,16,10),(106,17,1),(107,17,2),(108,17,3),(109,17,4),(110,17,5),(111,18,1),(112,18,3),(113,18,4),(114,18,6),(115,18,7),(116,18,8),(117,19,1),(118,19,2),(119,19,3),(120,19,4),(121,20,1),(122,20,2),(123,20,3),(124,20,4),(125,20,5),(126,21,1),(127,21,2),(128,22,1),(129,22,2),(130,22,3),(131,22,6),(132,22,7),(133,23,1),(134,23,2),(135,23,3),(136,24,1),(137,24,2),(138,24,3),(139,25,1),(140,25,2),(141,25,3),(142,25,4),(143,26,1),(144,26,2),(145,26,3),(146,26,4),(147,27,1),(148,27,2),(149,27,3),(153,29,1),(154,29,4),(155,30,1),(156,30,5),(157,30,8),(158,32,5),(159,32,8),(160,32,9),(161,33,1),(162,33,2),(163,33,3),(164,34,1),(165,34,2),(166,34,3),(167,35,1),(168,35,2),(169,35,3),(203,36,2),(204,36,4),(205,37,1),(206,37,5),(207,37,6),(208,38,5),(209,38,6),(210,39,1),(211,39,3),(212,39,4),(213,39,5),(214,40,1),(215,40,3),(216,40,5),(217,40,8),(218,40,9),(219,40,10),(220,41,2),(221,41,3),(222,41,8),(223,42,1),(224,42,3),(225,42,7),(226,42,8),(227,43,3),(228,43,5),(229,43,7),(230,44,2),(231,44,4),(232,45,8),(233,45,9),(234,45,10),(235,46,2),(236,46,3),(237,47,1),(238,47,3),(239,48,1),(240,48,5),(241,48,6),(242,48,7),(243,48,9),(244,49,1),(245,49,5),(246,49,6),(247,49,7),(248,49,9),(249,50,4),(250,50,6),(251,50,7),(252,50,8),(253,51,1),(254,51,3),(255,51,4),(256,52,2),(257,52,4),(258,52,5),(259,53,1),(260,53,2),(261,53,6),(262,54,1),(263,54,2),(264,54,10),(265,55,9),(266,56,9),(267,56,10),(268,57,10),(269,58,10);
/*!40000 ALTER TABLE `productcolor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `productId` int(11) NOT NULL AUTO_INCREMENT,
  `productTitle` varchar(25) NOT NULL,
  `productDesc` text NOT NULL,
  `productPrice` int(10) NOT NULL,
  `fkCategory` int(11) NOT NULL,
  `fkImage` int(11) NOT NULL,
  `productBrand` int(11) NOT NULL,
  PRIMARY KEY (`productId`),
  KEY `fk_Category_idx` (`fkCategory`),
  KEY `fk_ProductImage_idx` (`fkImage`),
  KEY `fk_productBrand_idx` (`productBrand`),
  CONSTRAINT `fk_Category` FOREIGN KEY (`fkCategory`) REFERENCES `category` (`categoryId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ProductImage` FOREIGN KEY (`fkImage`) REFERENCES `media` (`mediaId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_productBrand` FOREIGN KEY (`productBrand`) REFERENCES `productbrand` (`brandId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (14,'Jala','Her er cyklen for dig, der skal v√¶re smart og hurtig. Du f√•r her en supersmart mountainbike, der ogs√• er rigtig god til byk√∏rsel. Cyklen har aerodynamisk facon, s√• vindmodstanden mindskes. Cyklen f√•s i flere st√∏rrelser og med forskelligt udstyr. ',2195,66,82,10),(15,'Mont blanc','Dette er den ultimative cykel til byk√∏rsel. For her f√•r du en rigtig supersmart og elegant mountainbike. Cyklen har aerodynamisk facon, s√• vindmodstanden mindskes. Cyklen f√•s i flere st√∏rrelser, farver og med forskelligt udstyr. &#13;&#10;',2995,66,83,11),(16,'Fun','Er du barn eller ung og gerne vil have en mountainbike kan vi selvf√∏lgelig ogs√• magte det. Cyklen f√•s i hvid med bl√• eller r√∏d dekoration. Cyklen en s√¶rdeles god til byk√∏rsel, s√• det bliver en leg at cykle til skole. ',2595,66,84,5),(17,'Racer B29','Er man til fart og elegance, s√• er dette cyklen for dig. For her f√•r du en smart, smuk og funktionel cykel, som bringer dig hurtigt frem til dit bestemmelsessted. Cyklen f√•s til b√•de piger og drenge, store som sm√•. ',4995,67,85,6),(18,'Race4','Er du til specialcykler med superudstyr og gode k√∏reegenskaber, s√• er dette cyklen for dig. Her f√•r du 21 gear med tre klinger. Bremsesystemet er et af de allerbedste p√• markedet. Cyklen f√•s i flere st√∏rrelser til b√•de kvinder og m√¶nd. Cyklen f√•s i s√∏lv, sort og r√∏d og bl√• metalic. ',9599,67,86,7),(19,'Tvb Racer','Er man til fart og elegance, s√• er dette cyklen for dig. For her f√•r du en smart, smuk og funktionel cykel, som bringer dig hurtigt frem til dit bestemmelsessted. Cyklen f√•s til b√•de piger og drenge, store som sm√• og i farverne s√∏lv, sort og r√∏d og bl√• metalic. ',8995,67,87,8),(20,'City 3','Denne elegante cykel er en rigtig god og all-round cykel til den aktive cyklist. Den f√•s i flere st√∏rrelser og i farverne r√∏d og s√∏lv metalic. Cyklen har 7 indvendige gear, fodbremse og h√•ndforbremse.',4295,65,88,8),(21,'Classic 2','Er man til nostalgi eller synes at de moderne cykler er forkerte, s√• har man muligheden for her at f√• en cykel, der ligner bedstemors. Men teknologien er forbedret, s√• du f√•r en topmoderne cykel i forkl√¶dning. ',3595,65,89,2),(22,'Classic 2 Pink edition','Er man til nostalgi eller synes at de moderne cykler er forkerte, s√• har man muligheden for her at f√• en cykel, der ligner bedstemors. Men teknologien er forbedret, s√• du f√•r en topmoderne cykel i forkl√¶dning. Synes man at de originale farver er for kedelige, kan den ogs√• f√•s i en lidt mere moderne udgave i farven pink. \r\n ',3999,65,90,2),(23,'Street','En god all-round cykel, som f√•s i flere farver og st√∏rrelser. P√• cyklen er der monteret et indvendigt Shimano-gearsystem med 7 gear. S√• det er ogs√• nemt at komme op ad bakken. Cyklen er fabrikeret af aluminium med speciallakering, der kan t√•le det danske vejr. ',4595,65,91,8),(24,'Classic','En god all-round herrecykel, som f√•s i sort og sort metallic og st√∏rrelser. P√• cyklen er der monteret et indvendigt Shimano-gearsystem med 7 gear. S√• det er ogs√• nemt at komme op ad bakken. Cyklen er fabrikeret af aluminium med speciallakering, der kan t√•le det danske vejr.',5550,56,92,2),(25,'Katmandu','En let og elegant herrecykel til dig, der har brug for en god og solid cykel. Cyklen f√•s i flere st√∏rrelser og farver, bl.a. lys bl√• metalic, sort metalic og s√∏lv metalic. P√• cyklen er der monteret et indvendigt Shimanogearsystem med 7 gear. Lakeringen er en speciallakering fremstillet til at modst√• det danske vejr. ',4595,56,93,8),(26,'City Limit','Denne cykel er for dig, der bare har brug for en cykel uden de store dikkedarer. Her f√•r du en god all-round cykel, der kan holde til de mange g√∏rem√•l, der er i dagligdagen. Cyklen er monteret med et indvendigt Shimano gearsystem med 5 gear. Cyklen har desuden bagageb√¶rer og st√∏ttefod. Lakeringen er en speciallakering fremstillet til at modst√• det danske vejr. &#13;&#10; &#13;&#10; ',3595,56,94,2),(27,'WB-1','Her er den f√∏rste juniorcykel.  Cyklen f√•s til b√•de drenge og piger. Den f√•s i flere farver. Cyklen passer til aldersgruppen 3 ‚Äì 6 √•r. Man kan f√• st√∏ttehjul til cyklen, s√• det bliver nemmere for barnet at l√¶re at cykle selv. ',1495,58,95,2),(29,'WB-2','N√•r barnet n√•r skolealderen er dette den perfekte cykel. Her f√•r man en god gedigen cykel, der kan holde til at blive til at blive brugt hver dag. Cyklen har forbremser og fodbremser. Cyklen f√•s i et smart layout med gult og sort stel til drenge og orange og sort til piger. Cyklen har en sort bagageb√¶rer. ',2195,58,97,2),(30,'WB-3','N√•r barnet n√•r skolealderen er dette den perfekte cykel. Her f√•r man en god gedigen cykel, der kan holde til at blive til at blive brugt hver dag. Cyklen har forbremser og fodbremser. Cyklen f√•s i et smart layout med r√∏dt og hvidt stel til piger og bl√•t og hvidt stel til drenge. Cyklen har en sort bagageb√¶rer.',2295,58,98,2),(32,'WB-4','Denne smarte cykel er rigtig god, n√•r barnet skal cykle til skole hver dag og ogs√• bruge cyklen i de √∏vrige hverdagssituationer. Cyklen leveres i smarte farver og findes til b√•de drenge og piger. \r\n ',1695,58,100,2),(33,'Mini','Her f√•r dit barn en god og solid cykel i nogle sp√¶ndende farver. Lige til at tage sig en god cykeltur p√•. Cyklen er, som alle vore √∏vrige cykler, solidt bygget, s√• den kan holde til dagligt brug. Cyklen er konstrueret, s√• barnet f√•r den st√∏rste forn√∏jelse af cyklen. ',548,57,101,2),(34,'Midi','Her f√•r den gode velkendte r√∏de trehjulede cykel, som gennem generationer har v√¶ret det f√∏rste valg. Cyklen har tippelad. Cyklen er, som alle vore √∏vrige cykler, solidt bygget, s√• den kan holde til dagligt og solidt brug. Cyklen er konstrueret, s√• barnet f√•r den st√∏rste forn√∏jelse af cyklen. ',548,57,102,2),(35,'Maxi','Den trehjulede velkendte trehjulede cykel f√•s ogs√• i andre farver, f. eks. I pink og bl√•. Gennem generationer har v√¶ret den trehjulede cykel altid v√¶ret det f√∏rste valg. Cyklen har tippelad. Cyklen er, som alle vore √∏vrige cykler, solidt bygget, s√• den kan holde til dagligt og solidt brug. Cyklen er konstrueret, s√• barnet f√•r den st√∏rste forn√∏jelse af cyklen. ',548,57,103,2),(36,'Junior','Alle b√∏r have en cykelhjelm. Vi har derfor fundet denne smarte model til sm√• piger, der gerne vil v√¶re prinsesser. Hjelmen er pink med hvide blomster og passer til piger i alderen 5 ‚Äì 12 √•r.',395,59,141,9),(37,'Mouse','Alle b√∏r have en cykelhjelm. Ogs√• n√•r man sidder bagp√• fars eller mors cykel Vi har derfor fundet denne smarte model til sm√• piger og drenge. Hjelmen er designet, s√• den ligner en s√∏d lille mus. Den passer til piger og drenge i alderen 1 - 5 √•r. ',275,59,143,10),(38,'Regular','Cykelhjelme er for alle. B√•de b√∏rn og voksne. Vi har derfor fundet denne smarte model, som f√•s til b√•de b√∏rn og voksne. Hjelmen f√•s i farverne r√∏d og bl√•. Den f√•s i b√∏rnest√∏rrelser fra 6 √•r og i voksenst√∏rrelser op til 60 cm.',495,59,145,10),(39,'Blue','For den professionelle rytter eller for hende, der gerne vil have den ultimative cykelhjelm har vi denne aerodynamiske model i hvid og bl√•. ',995,59,147,9),(40,'Com3','Her f√•r man en god og gedigen cykelcomputer. Computeren har otte forskellige funktioner. Computeren har et stort display og den er nem at indstille',349,60,149,11),(41,'CompuSpeed 1','Her f√•r man en tr√•dl√∏s og programmerbar cykelcomputer. Computeren har selvf√∏lgelig et stort l√¶sevenligt display. Der er femten indbyggede funktioner inklusiv kalorie- og fedtforbr√¶nding, s√• man uden problemer kan f√∏lge med i fedtforbr√¶ndingen. &#13;&#10; ',259,60,151,12),(42,'Com2','Her f√•r man en god og gedigen cykelcomputer. Computeren har ni forskellige funktioner, som f.eks. tidsm√•ler og temperatur m√•ler. Computeren har et stort display og den er nem at indstille. ',299,60,153,11),(43,'CompuSpeed 2','Cykelcomputeren her har mange forskellige funktioner. F.eks. kan man m√•le den aktuelle hastighed, k√∏rt tid, gennemsnitshastighed. Man kan ogs√• se den k√∏rte distance for en eller to cykler. ',399,60,155,12),(44,'K√¶deafskiller','Vil man holde sin cykel i en god stand, er man n√∏dt til at have det rigtige v√¶rkt√∏j. S√• derfor b√∏r denne flotte k√¶deadskiller med flere forskellige funktioner v√¶re i enhver handymans cykelv√¶rkt√∏jskasse. Der er bl.a. unbracho n√∏gler og skruetr√¶kker med stjernek√¶rv og lige k√¶rv.',89,61,157,13),(45,'D√¶kjern','Det sker jo at selv det bedste d√¶k kan punktere. Derfor er et s√¶t d√¶kjern uundv√¶rligt. Ellers bliver det at skifte d√¶k for besv√¶rligt. ',12,61,159,14),(46,'Foldev√¶rkt√∏j','Foldev√¶rkt√∏jet med 6 forskellige funktioner f√•s i r√∏d. Her er bl.a. unbracho n√∏gler i forkellige st√∏rrelser. Skruetr√¶kker med stjerne og lige k√¶rv. ',45,61,161,15),(47,'Cykelsko','Cykler man meget p√• en racercykel, s√• kan det v√¶re en god ide, at investere i et par rigtige cykelsko. S√• f√•r du nemlig en meget st√∏rre forn√∏jelse af din cykeltur. Her f√•r du et rigtig godt par til en fornuftig pris.',599,62,163,16),(48,'Frakke','En god sommerjakke til herrer. Der er en god ventilation i jakken, som er b√•de vandt√¶t og √•ndbar.',899,62,165,17),(49,'Frakke','En god sommerjakke til herrer. Der er en god ventilation i jakken, som er b√•de vandt√¶t og √•ndbar.',899,62,167,17),(50,'Kasket','K√∏b denne smarte cap fra Alessi Bianchi. S√• er du med p√• moden. Cappen f√•s kun i en st√∏rrelse.',89,62,169,18),(51,'Cykels√¶t','Dette vinters√¶t med jakke og bukser er i vores s√¶dvanlige gode kvalitet. B√•de jakke og bukser kan k√∏bes separat til f√∏lgende priser: Bukser 799 kr. og jakke 699 kr.',999,62,171,19),(52,'Bukser','Cykler man meget og langt, kan man i det lange l√∏b ikke undv√¶re et par gode cykelbukser. Bukserne er med korte bukser og fremstillet af sort lycra. &#13;&#10; ',299,62,173,19),(53,'Mini','Her f√•r du en elegant barnestol med den st√∏rste comfort til dit barn, n√•r I cykler. Cyklen er fremstillet i formst√∏bt plastik med benforl√¶ngere, s√• benene ikke kan komme ind i cyklens hjul. ',1595,63,175,20),(54,'Midi','Her f√•r du en elegant barnestol med den st√∏rste comfort til dit barn, n√•r I cykler. Cyklen er fremstillet i formst√∏bt plastik med benforl√¶ngere, der ender som st√∏tter til barnets f√∏dder. Derved undg√•r man at barnets ben kommer ind i cyklens hjul. ',1795,63,177,20),(55,'K√¶de','Skal cyklen have skiftet k√¶de, er denne k√¶de et godt valg. K√¶den er rustfri og passer til 7 og 8 udvendige gear. N√•r du skifter k√¶de, b√∏r du ogs√• skifte krans. ',99,64,179,2),(56,'St√∏tteben','St√∏tteben til mountainbikes og citycyklen. Ja, det er ren rigtig god ting, da man jo ikke altid kan regne med at der er et cykelstativ, man kan placere sin cykel i. St√∏ttebenet er blankt og kan justeres. ',149,64,181,2),(57,'D√¶k','Tr√¶t af at punktere i tide og utide. S√• pr√∏v dette punkterfrie d√¶k med kevlar. S√• f√•r du nedsat dine punkteringer med 90 procent. D√¶kket er meget nemt at montere. ',299,64,183,5),(58,'Deore Gear','Her f√•r du et godt og solidt baggear. Gearskiftet bliver derved til en leg. ',249,64,185,21);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sitesettings`
--

DROP TABLE IF EXISTS `sitesettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sitesettings` (
  `siteSettingsId` int(11) NOT NULL AUTO_INCREMENT,
  `siteTitle` varchar(25) NOT NULL,
  `street` varchar(25) NOT NULL,
  `zipcode` int(4) NOT NULL,
  `city` varchar(25) NOT NULL,
  `phone` int(8) NOT NULL,
  `fax` int(8) NOT NULL,
  `email` varchar(128) NOT NULL,
  PRIMARY KEY (`siteSettingsId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sitesettings`
--

LOCK TABLES `sitesettings` WRITE;
/*!40000 ALTER TABLE `sitesettings` DISABLE KEYS */;
INSERT INTO `sitesettings` VALUES (1,'City Cykler','Nygade 65',9000,'√Ölborg',98101011,98101012,'contact@cc.dk');
/*!40000 ALTER TABLE `sitesettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(45) NOT NULL,
  `userEmail` varchar(64) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','$2y$12$ltv3GS.zqnFZQWoKYEklqu5MIb4dPi8b6R4BYBlzlI1d62RYTHrgu','John Doe','admin@email.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-13  9:18:41
