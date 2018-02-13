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
INSERT INTO `category` VALUES (56,'Herrecykler',61,1),(57,'Trehjulede',62,1),(58,'Børnecykler',63,1),(59,'Cykelhjelme',64,2),(60,'Cykelcomputere',65,2),(61,'Værktøj',66,2),(62,'Cykeltøj',67,2),(63,'Barnestole',68,2),(64,'Reservedele',69,2),(65,'Damecykler',79,1),(66,'Mountainbikes',80,1),(67,'Racercykler',81,1);
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
INSERT INTO `colors` VALUES (1,'rød','image/jpeg','�\��\�\0JFIF\0\0\0d\0d\0\0�\�\0Ducky\0\0\0\0\0d\0\0�\�\0Adobe\0d�\0\0\0�\�\0�\0��\0\0\0\0�\�\0t\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0A1\"\0\0\0\0\0\0\0\0\01AQa�\�2#C45�\�\0\0\0?\0\��\�\n\�=W\�y�V\ZA\�` ��$�\�y\�s\�>\�\�_��d^A\�-�}�<\�Hp\�u\�O�|+�-�d\�U�\�\�IRI#r{\�{O\�z\�P|}\'\n�eW0\�@k|�?o\�D8����0��T\�\�@�\�֮8�S\�Ex\�\�6�5e\���aD�S�\�\\��l����1�(B	\�\���Ϊbѵli�l�\����\�-l�\�\�xRSC;�L�,m?�!G�蜵ʋ\�S��I�}Kr>K��4>`\��w\�\�ږ\"¶D&�>\�9@�n�\�I�8\�]�U�6$%\�m�L��\�V\�6$`Y����7M�2�\�X&+�g�my֨\�+Pp�\�?�\��f��j\��N�\��\�R�\�!\�v\�\�W�n�\0P�\�*���\��G)$\�_�\�'),(2,'gul','image/jpeg','�\��\�\0JFIF\0\0\0d\0d\0\0�\�\0Ducky\0\0\0\0\0d\0\0�\�\0Adobe\0d�\0\0\0�\�\0�\0��\0\0\0\0�\�\0r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0!1A\0\0\0\0\0\0\0\0\0!\01AQaq���\�\0\0\0?\0�t\�D�\'q׼Swi�:�ٖ.�T�2)\�B��\�\�!9{ޫʯϜ1�w�wf琋!%-\"R�f�\�sfk�\�%�C8\�d�\�\�\�}�\�=��\�%����gXg\�Jw��lRC�\��r�dg�x\�rc\�s�\�k�>|J��\�.L������<���آ+�I�>y~_Vö\��ylA\�\\H?�V��\�r�T�T	\�K=�\�.3\���}v�\�{�K<u�l��gO�\�\�N\n�(JA==Z\�E\�������\�ySq#�R\�>\"H��T\� ��+\�\'\�\�\�D4��\�I��z\�\�-�\�mV\�aٽcQ\�\�ql��\�_\�\�|�Z5�8�yV(3X\�؂<�\�߆8\�\�$�\� �\�{X���1\�\�\�P��5\�\����\�\�tV\�\Z[�@I B\\̚cv�j�]�i��\0DК�-ץO�<�\�'),(3,'grøn','image/jpeg','�\��\�\0JFIF\0\0\0d\0d\0\0�\�\0Ducky\0\0\0\0\0d\0\0�\�\0Adobe\0d�\0\0\0�\�\0�\0��\0\0\0\0�\�\0q\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0!1A\"\0\0\0\0\0\0\0\0\0\0!1Aa�\"��R#C�\�\0\0\0?\0�z\�\�\\��d\\\�w��\"_\Z��S���y^@��G�S�s\�}��8�\�=?)��<�%\�\0��Q�L�Ʀ8�����9��+\'��\���(\0�5����ekY�#\�s�hR\0\�O�#+U>込W^\��\�$.S\�&������\�!f&�Nr\�ˇ\�U\�O6,f���4[JMx�!\�|tS�\0��떱[5��IH��:Tbi\�Ȅ7�\�\\���\'�\�Ͻ�KX�\0���,��\��(9hKT\�q��=����>\�\�\�ĺ,\��[;�(�/\�\�5\�ckL�HM\����pʢULw���9�U5�vCoJ&N<�-)�\��`<�����N~\�nß\�����\�'),(4,'lime','image/jpeg','�\��\�\0JFIF\0\0\0d\0d\0\0�\�\0Ducky\0\0\0\0\0d\0\0�\�\0Adobe\0d�\0\0\0�\�\0�\0��\0\0\0\0�\�\0v\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0!1AB	\0\0\0\0\0\0\0\0\0\0!1Aa�Qq�\"2$�\�\0\0\0?\0�x��tg\�\Z�\�\�SbSfXaT�I=0\�S���o)�\��=W\�W\�\�/�l�\"��\�a�o%	}@\0�`/Y\�vާ5=\�%ŀyҎ��~s\�>�$-K�\�u��\0\���x��\�,K���\�̌\�\'\�rc\�s\�ɮT�Lk�G!\�A\�o��R�\�x���\�^�|���wW�>&�n\�GW\��\"�؆�}�]e�̕�Ӿ���\�օ��-�.�����G#J�DOv�QQ|�k�!̞k�Ƀb���\�#^aN$�Њ<\�q>E\�K[f\�6\��AX��[Ѻ�n/�E\�\�$=5\�s���V�Ay`�g�f�\�P\�y+\\\"��\�WȒ_��\�\�b��c�&L�7\"\r�>X?�\�Xprt�&��@�\��IaH	\r9��\�{Yg_;��\�'),(5,'blå','image/jpeg','�\��\�\0JFIF\0\0\0d\0d\0\0�\�\0Ducky\0\0\0\0\0d\0\0�\�\0Adobe\0d�\0\0\0�\�\0�\0��\0\0\0\0�\�\0n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\01A!\0\0\0\0\0\0\0\0\0\0!1aAq��\�\0\0\0?\0��\�\�<��d\n\�w\0��\"_\Z��S���y^@��G�Sۜ�_��5��\�2\�0�Ӱg+$���\�6�\�\�_�<�����30\0��\0�\�͗��-Mw|l�\0��fkY]a\\:ַ��e\�i�H�>XaZ���\�\�\��\�װ��&��䔉�GI1����\�\�\�\Za\�u\�$!\�;1Y�� ~�\�e\�\r��\�\�KƗ\\u�8��\��\�X\�5��IH��2\\bi\�\�\��\��\�*/�+�L�Ê�iKF\�W��U�	����ڇC�V%~�`�\�\�\�\�ə�IբF�\0\"W�\Zb\�.ˎʠ\�Y�`�\�ݰy/�\0V��jÍ��#ؠ�;�\��%pʣ\�;�My֬�\�<�\0\��[$���j�A�dT\�\�ﰩ\'`	\�0\�F��^?��5\�^<�\��SK��Wrvr@\Z�\�'),(6,'lilla','image/jpeg','�\��\�\0JFIF\0\0\0d\0d\0\0�\�\0Ducky\0\0\0\0\0d\0\0�\�\0Adobe\0d�\0\0\0�\�\0�\0��\0\0\0\0�\�\0o\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0A\"!1\0\0\0\0\0\0\0\0\0\0!AQ1a�2�\�\0\0\0?\0\�\�#\�<\��2\��]<�ɡ�b�\Z\�\���\�T�+�=v�\0\�~)\��:v>T��\�\� �R9$u5�5�S\'\�\�h��	6��Z�z\�<I�\�T�YZNw\0�d�\�3�uTS�U>�U��(��v\�\�M6,h*fQ�\��A!#\�r�I؂A��\�;-1��\�*�\�}:R�5U���\�P�\�=�~��\�T��1\�N\�:MmxRSE6��ʇ(m?�!G�\��j�/~��mr���f$\\�m1P	�R\�&\���;mO\��q�\�GBؚ�\ZO�\���S[~��H�\�-�]��Ǳc\'z\�a7�\�\�`\�*\�L\�\0L\��F&��\�D\��9�[\�[L\�2��7\��)?�`BSD\\���6\�&�M3`\�E[q�c\���\��u&\�\�\��O�\�'),(7,'pink','image/jpeg','�\��\�\0JFIF\0\0\0d\0d\0\0�\�\0Ducky\0\0\0\0\0d\0\0�\�\0Adobe\0d�\0\0\0�\�\0�\0��\0\0\0\0�\�\0u\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!1AB\0\0\0\0\0\0\0\0\0\01!QaAq��#�\�\0\0\0?\0�i\�\�|����9:��̗;�bd�I�!R�\�\�!;�\�U\�\�}�֘\\\�\\cɦE`\��꾟���\�9�\�2��I#��\�&�P�<EjHug�\�\�Ha\��bXϒ.^\�\�\��Q\�\����\�\'\�\�*~z>Wֱ��{Q\0M\�F\��R3���Jm\�\�\�+{o@6�b���[�\�E�պ>�1y,���E�5\��\�\�Y\�ƅ%$|��\�\�\�N�F�%x���r��\�xl�\�\"\�\���M~�@�j����\n\�v˸�\��(}	�8�@�\�\�?�$�1X�\'�~qlv�JO����<^%\�¤\�<���\�?�#(�5y\�\�Ac\���_�\�]�V\Z�W�\�����4\��S\�id�w\�\�tkr�\�!����\�j��\��\�'),(8,'hvid','image/jpeg','�\��\�\0JFIF\0\0\0d\0d\0\0�\�\0Ducky\0\0\0\0\0d\0\0�\�\0Adobe\0d�\0\0\0�\�\0�\0��\0\0\0\0�\�\0[\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!1	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\0\0?\0\�}�\�\�\\�V�[\"�\�l\Zt\�<�d��\�B�\�\�����|���^�\r��\�\�\�n��\�]¸WZlַPJ((\�ϲ\r�0\�S��\�����7�|9�T_\�R��{7\�p4\�\\k�l8��\�l<E��\�!s�C�f-�?\�\��V\0i\�\�\�\Z�\�r��\�\�\�\��Ĭ3�@\�?bv\�>�J�\�j�\�W�`��\\�,�n)�L��?\�JIR�\��{��\�'),(9,'grå','image/jpeg','�\��\�\0JFIF\0\0\0d\0d\0\0�\�\0Ducky\0\0\0\0\0d\0\0�\�\0Adobe\0d�\0\0\0�\�\0�\0��\0\0\0\0�\�\0[\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!12	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\0\0?\0��ׅ�>cϺ�\�\�T\�sfO\�*%I\�\�R����yHE�W�꾪��\�\'\�\�tT�Ȑ�>%�\�FS\�`Ա.6v9[.3�>\�I�%\�s~\�*x/��4�?+h\�6��@H���1`\�:����\�/\�e`[)#Y\�\��+\��F�% ��\�r����ǣ�|�oR2�\�f?M�Ҥ�e\�Ռ|[\��h\�\���\nDŭv+�$�H�Ǖ\�b��\�'),(10,'sort','image/jpeg','�\��\�\0JFIF\0\0\0d\0d\0\0�\�\0Ducky\0\0\0\0\0d\0\0�\�\0Adobe\0d�\0\0\0�\�\0�\0��\0\0\0\0�\�\0]\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!1A\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\0\0?\0�JҺꬵ-2���\�*\�GP\�BA\��R���T���^�^P=N�Uz���\0��\�-.��\�Wkq�l��r��\��\�I5.\�䖞C\�\�w���#\�\�ۼe��\�{�&�4\�J�7d!�6C�8�\�\"\�\�K��WɅ�.\�G9u�?#�jW��\�6q\n��ɏف$�㍃�\�');
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
INSERT INTO `pagecontent` VALUES (1,'frontpage','<p>Velkommen til City Cykler</p><p>&nbsp;</p><p>Hos os får du en cykel, der er tilpasset lige præcis til dig. Vi har nemlig bygget cykler gennem generationer, så vi ved hvilke krav en cykel kan blive udsat for i det danske vejr. Vores cykler er bygget på generationers erfaring og solidt håndværk.&nbsp;</p><p>&nbsp;</p><p>Vi har cyklen til alle i familien. Lige fra barnets første trehjulede cykel til bedstemors turcykel. Vælger du en cykel fra os, så får du en cykel, der giver maksimal køreglæde og derved gør det til en leg at få fælles familieoplevelser på cykel med masser af frisk luft og motion, for vi producerer flotte og funktionelle hverdagscykler til hele familien.</p><p>&nbsp;</p><p>En god cykel udvikles ikke af sig selv. Den er et resultat af mange års produktudvikling. Som et 100% danskejet firma kender vi det danske klima og kan tilpasse vore cykler til det ved at bruge de bedste materialer og de mest optimale processer i fremstillingen af cykler.</p><p>&nbsp;</p><p>Vi udvikler og producerer danske kvalitetscykler, der giver dig stor køreglæde, en god funktionalitet og som samtidig lever op til dine krav om holdbarhed og minimal vedligeholdelse. Men samtidig går vi ikke på kompromis med sikkerheden.&nbsp;</p>',39);
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
INSERT INTO `productbrand` VALUES (2,'Winther'),(3,'Kildemoes'),(5,'Mustang'),(6,'Jensen'),(7,'Bianchi'),(8,'Tårnby'),(9,'MET'),(10,'Lazer'),(11,'MBK'),(12,'VDO'),(13,'Tranz-x'),(14,'Michelin'),(15,'Lipu'),(16,'Sidi'),(17,'Nike'),(18,'Alessi Bianchi'),(19,'John D'),(20,'Hamax'),(21,'Shimano');
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
INSERT INTO `products` VALUES (14,'Jala','Her er cyklen for dig, der skal være smart og hurtig. Du får her en supersmart mountainbike, der også er rigtig god til bykørsel. Cyklen har aerodynamisk facon, så vindmodstanden mindskes. Cyklen fås i flere størrelser og med forskelligt udstyr. ',2195,66,82,10),(15,'Mont blanc','Dette er den ultimative cykel til bykørsel. For her får du en rigtig supersmart og elegant mountainbike. Cyklen har aerodynamisk facon, så vindmodstanden mindskes. Cyklen fås i flere størrelser, farver og med forskelligt udstyr. &#13;&#10;',2995,66,83,11),(16,'Fun','Er du barn eller ung og gerne vil have en mountainbike kan vi selvfølgelig også magte det. Cyklen fås i hvid med blå eller rød dekoration. Cyklen en særdeles god til bykørsel, så det bliver en leg at cykle til skole. ',2595,66,84,5),(17,'Racer B29','Er man til fart og elegance, så er dette cyklen for dig. For her får du en smart, smuk og funktionel cykel, som bringer dig hurtigt frem til dit bestemmelsessted. Cyklen fås til både piger og drenge, store som små. ',4995,67,85,6),(18,'Race4','Er du til specialcykler med superudstyr og gode køreegenskaber, så er dette cyklen for dig. Her får du 21 gear med tre klinger. Bremsesystemet er et af de allerbedste på markedet. Cyklen fås i flere størrelser til både kvinder og mænd. Cyklen fås i sølv, sort og rød og blå metalic. ',9599,67,86,7),(19,'Tvb Racer','Er man til fart og elegance, så er dette cyklen for dig. For her får du en smart, smuk og funktionel cykel, som bringer dig hurtigt frem til dit bestemmelsessted. Cyklen fås til både piger og drenge, store som små og i farverne sølv, sort og rød og blå metalic. ',8995,67,87,8),(20,'City 3','Denne elegante cykel er en rigtig god og all-round cykel til den aktive cyklist. Den fås i flere størrelser og i farverne rød og sølv metalic. Cyklen har 7 indvendige gear, fodbremse og håndforbremse.',4295,65,88,8),(21,'Classic 2','Er man til nostalgi eller synes at de moderne cykler er forkerte, så har man muligheden for her at få en cykel, der ligner bedstemors. Men teknologien er forbedret, så du får en topmoderne cykel i forklædning. ',3595,65,89,2),(22,'Classic 2 Pink edition','Er man til nostalgi eller synes at de moderne cykler er forkerte, så har man muligheden for her at få en cykel, der ligner bedstemors. Men teknologien er forbedret, så du får en topmoderne cykel i forklædning. Synes man at de originale farver er for kedelige, kan den også fås i en lidt mere moderne udgave i farven pink. \r\n ',3999,65,90,2),(23,'Street','En god all-round cykel, som fås i flere farver og størrelser. På cyklen er der monteret et indvendigt Shimano-gearsystem med 7 gear. Så det er også nemt at komme op ad bakken. Cyklen er fabrikeret af aluminium med speciallakering, der kan tåle det danske vejr. ',4595,65,91,8),(24,'Classic','En god all-round herrecykel, som fås i sort og sort metallic og størrelser. På cyklen er der monteret et indvendigt Shimano-gearsystem med 7 gear. Så det er også nemt at komme op ad bakken. Cyklen er fabrikeret af aluminium med speciallakering, der kan tåle det danske vejr.',5550,56,92,2),(25,'Katmandu','En let og elegant herrecykel til dig, der har brug for en god og solid cykel. Cyklen fås i flere størrelser og farver, bl.a. lys blå metalic, sort metalic og sølv metalic. På cyklen er der monteret et indvendigt Shimanogearsystem med 7 gear. Lakeringen er en speciallakering fremstillet til at modstå det danske vejr. ',4595,56,93,8),(26,'City Limit','Denne cykel er for dig, der bare har brug for en cykel uden de store dikkedarer. Her får du en god all-round cykel, der kan holde til de mange gøremål, der er i dagligdagen. Cyklen er monteret med et indvendigt Shimano gearsystem med 5 gear. Cyklen har desuden bagagebærer og støttefod. Lakeringen er en speciallakering fremstillet til at modstå det danske vejr. &#13;&#10; &#13;&#10; ',3595,56,94,2),(27,'WB-1','Her er den første juniorcykel.  Cyklen fås til både drenge og piger. Den fås i flere farver. Cyklen passer til aldersgruppen 3 – 6 år. Man kan få støttehjul til cyklen, så det bliver nemmere for barnet at lære at cykle selv. ',1495,58,95,2),(29,'WB-2','Når barnet når skolealderen er dette den perfekte cykel. Her får man en god gedigen cykel, der kan holde til at blive til at blive brugt hver dag. Cyklen har forbremser og fodbremser. Cyklen fås i et smart layout med gult og sort stel til drenge og orange og sort til piger. Cyklen har en sort bagagebærer. ',2195,58,97,2),(30,'WB-3','Når barnet når skolealderen er dette den perfekte cykel. Her får man en god gedigen cykel, der kan holde til at blive til at blive brugt hver dag. Cyklen har forbremser og fodbremser. Cyklen fås i et smart layout med rødt og hvidt stel til piger og blåt og hvidt stel til drenge. Cyklen har en sort bagagebærer.',2295,58,98,2),(32,'WB-4','Denne smarte cykel er rigtig god, når barnet skal cykle til skole hver dag og også bruge cyklen i de øvrige hverdagssituationer. Cyklen leveres i smarte farver og findes til både drenge og piger. \r\n ',1695,58,100,2),(33,'Mini','Her får dit barn en god og solid cykel i nogle spændende farver. Lige til at tage sig en god cykeltur på. Cyklen er, som alle vore øvrige cykler, solidt bygget, så den kan holde til dagligt brug. Cyklen er konstrueret, så barnet får den største fornøjelse af cyklen. ',548,57,101,2),(34,'Midi','Her får den gode velkendte røde trehjulede cykel, som gennem generationer har været det første valg. Cyklen har tippelad. Cyklen er, som alle vore øvrige cykler, solidt bygget, så den kan holde til dagligt og solidt brug. Cyklen er konstrueret, så barnet får den største fornøjelse af cyklen. ',548,57,102,2),(35,'Maxi','Den trehjulede velkendte trehjulede cykel fås også i andre farver, f. eks. I pink og blå. Gennem generationer har været den trehjulede cykel altid været det første valg. Cyklen har tippelad. Cyklen er, som alle vore øvrige cykler, solidt bygget, så den kan holde til dagligt og solidt brug. Cyklen er konstrueret, så barnet får den største fornøjelse af cyklen. ',548,57,103,2),(36,'Junior','Alle bør have en cykelhjelm. Vi har derfor fundet denne smarte model til små piger, der gerne vil være prinsesser. Hjelmen er pink med hvide blomster og passer til piger i alderen 5 – 12 år.',395,59,141,9),(37,'Mouse','Alle bør have en cykelhjelm. Også når man sidder bagpå fars eller mors cykel Vi har derfor fundet denne smarte model til små piger og drenge. Hjelmen er designet, så den ligner en sød lille mus. Den passer til piger og drenge i alderen 1 - 5 år. ',275,59,143,10),(38,'Regular','Cykelhjelme er for alle. Både børn og voksne. Vi har derfor fundet denne smarte model, som fås til både børn og voksne. Hjelmen fås i farverne rød og blå. Den fås i børnestørrelser fra 6 år og i voksenstørrelser op til 60 cm.',495,59,145,10),(39,'Blue','For den professionelle rytter eller for hende, der gerne vil have den ultimative cykelhjelm har vi denne aerodynamiske model i hvid og blå. ',995,59,147,9),(40,'Com3','Her får man en god og gedigen cykelcomputer. Computeren har otte forskellige funktioner. Computeren har et stort display og den er nem at indstille',349,60,149,11),(41,'CompuSpeed 1','Her får man en trådløs og programmerbar cykelcomputer. Computeren har selvfølgelig et stort læsevenligt display. Der er femten indbyggede funktioner inklusiv kalorie- og fedtforbrænding, så man uden problemer kan følge med i fedtforbrændingen. &#13;&#10; ',259,60,151,12),(42,'Com2','Her får man en god og gedigen cykelcomputer. Computeren har ni forskellige funktioner, som f.eks. tidsmåler og temperatur måler. Computeren har et stort display og den er nem at indstille. ',299,60,153,11),(43,'CompuSpeed 2','Cykelcomputeren her har mange forskellige funktioner. F.eks. kan man måle den aktuelle hastighed, kørt tid, gennemsnitshastighed. Man kan også se den kørte distance for en eller to cykler. ',399,60,155,12),(44,'Kædeafskiller','Vil man holde sin cykel i en god stand, er man nødt til at have det rigtige værktøj. Så derfor bør denne flotte kædeadskiller med flere forskellige funktioner være i enhver handymans cykelværktøjskasse. Der er bl.a. unbracho nøgler og skruetrækker med stjernekærv og lige kærv.',89,61,157,13),(45,'Dækjern','Det sker jo at selv det bedste dæk kan punktere. Derfor er et sæt dækjern uundværligt. Ellers bliver det at skifte dæk for besværligt. ',12,61,159,14),(46,'Foldeværktøj','Foldeværktøjet med 6 forskellige funktioner fås i rød. Her er bl.a. unbracho nøgler i forkellige størrelser. Skruetrækker med stjerne og lige kærv. ',45,61,161,15),(47,'Cykelsko','Cykler man meget på en racercykel, så kan det være en god ide, at investere i et par rigtige cykelsko. Så får du nemlig en meget større fornøjelse af din cykeltur. Her får du et rigtig godt par til en fornuftig pris.',599,62,163,16),(48,'Frakke','En god sommerjakke til herrer. Der er en god ventilation i jakken, som er både vandtæt og åndbar.',899,62,165,17),(49,'Frakke','En god sommerjakke til herrer. Der er en god ventilation i jakken, som er både vandtæt og åndbar.',899,62,167,17),(50,'Kasket','Køb denne smarte cap fra Alessi Bianchi. Så er du med på moden. Cappen fås kun i en størrelse.',89,62,169,18),(51,'Cykelsæt','Dette vintersæt med jakke og bukser er i vores sædvanlige gode kvalitet. Både jakke og bukser kan købes separat til følgende priser: Bukser 799 kr. og jakke 699 kr.',999,62,171,19),(52,'Bukser','Cykler man meget og langt, kan man i det lange løb ikke undvære et par gode cykelbukser. Bukserne er med korte bukser og fremstillet af sort lycra. &#13;&#10; ',299,62,173,19),(53,'Mini','Her får du en elegant barnestol med den største comfort til dit barn, når I cykler. Cyklen er fremstillet i formstøbt plastik med benforlængere, så benene ikke kan komme ind i cyklens hjul. ',1595,63,175,20),(54,'Midi','Her får du en elegant barnestol med den største comfort til dit barn, når I cykler. Cyklen er fremstillet i formstøbt plastik med benforlængere, der ender som støtter til barnets fødder. Derved undgår man at barnets ben kommer ind i cyklens hjul. ',1795,63,177,20),(55,'Kæde','Skal cyklen have skiftet kæde, er denne kæde et godt valg. Kæden er rustfri og passer til 7 og 8 udvendige gear. Når du skifter kæde, bør du også skifte krans. ',99,64,179,2),(56,'Støtteben','Støtteben til mountainbikes og citycyklen. Ja, det er ren rigtig god ting, da man jo ikke altid kan regne med at der er et cykelstativ, man kan placere sin cykel i. Støttebenet er blankt og kan justeres. ',149,64,181,2),(57,'Dæk','Træt af at punktere i tide og utide. Så prøv dette punkterfrie dæk med kevlar. Så får du nedsat dine punkteringer med 90 procent. Dækket er meget nemt at montere. ',299,64,183,5),(58,'Deore Gear','Her får du et godt og solidt baggear. Gearskiftet bliver derved til en leg. ',249,64,185,21);
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
INSERT INTO `sitesettings` VALUES (1,'City Cykler','Nygade 65',9000,'Ålborg',98101011,98101012,'contact@cc.dk');
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
