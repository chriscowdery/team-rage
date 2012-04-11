CREATE DATABASE  IF NOT EXISTS `team_rage` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `team_rage`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: team_rage
-- ------------------------------------------------------
-- Server version	5.0.83-community

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
-- Not dumping tablespaces as no INFORMATION_SCHEMA.FILES table on this server
--

--
-- Table structure for table `quotes`
--

DROP TABLE IF EXISTS `quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quotes` (
  `id` int(11) NOT NULL auto_increment,
  `member_id` int(11) NOT NULL,
  `context` varchar(45) default NULL,
  `quote` varchar(255) NOT NULL,
  `date` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quotes`
--

LOCK TABLES `quotes` WRITE;
/*!40000 ALTER TABLE `quotes` DISABLE KEYS */;
INSERT INTO `quotes` VALUES (1,1,'lol derp.','3/29/2012');
/*!40000 ALTER TABLE `quotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `rage_id` int(11) NOT NULL,
  `lastUpdated` varchar(45) default NULL,
  `description` varchar(250) default NULL,
  `manualImage` varchar(500) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'Derp',0,'4/10/2012 - 9:38 PM','sample reason','http://dl.dropbox.com/u/113994/silly/gifs/j2YUb.png.gif');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rages`
--

DROP TABLE IF EXISTS `rages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rages` (
  `id` int(11) NOT NULL auto_increment,
  `image` varchar(200) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rages`
--

LOCK TABLES `rages` WRITE;
/*!40000 ALTER TABLE `rages` DISABLE KEYS */;
INSERT INTO `rages` VALUES (29,'clean-all-the-things.png','All the Things!'),(28,'classy.png','Classy'),(27,'challenge-accepted-drunk.png','Challenge Accepted (Drunk)'),(26,'Challenge Accepted.png','Challenge Accepted'),(25,'cereal-guy.png','Cereal Guy'),(24,'cereal_spit','Cereal Spit'),(23,'Awwww Yeaaaah.png','Awwww Yeaaaah'),(22,'are-you-serious.png','Are You Serious?'),(21,'agog.png','Agog'),(30,'close_enough.png','Close Enough'),(31,'crying.png','Crying'),(32,'evil_genius.png','Evil Genius'),(33,'f-that.png','F That'),(34,'FFFFFUUUU.png','FFFFFUUUU'),(35,'fuck_yea.png','F Yeah'),(36,'heck-no.png','DO NOT WANT'),(37,'i-see-what-you-did-there.png','I See What You Did There'),(38,'jackie-chan-what.png','What!?'),(39,'killstare.png','Killstare'),(40,'LOL.png','LOL'),(41,'look-of-disapproval.png','Look of Disapproval'),(42,'me_gusta.png','Me Gusta'),(43,'mother-of-god.png','Mother of God...'),(44,'no.JPG','NO.'),(45,'not-bad-obama.png','Not bad'),(46,'nothing-to-do-here.png','Nothing to do here'),(47,'OH CRAP.png','OH CRAP'),(48,'oh_fuck.png','Fuck.'),(49,'oh-god-why.jpg','Oh God Why'),(50,'okay.png','Okay...'),(51,'point-of-no-return.png','POINT OF NO RETURN'),(52,'poker_face.png','Poker Face'),(53,'rage-gas.png','Kill it with fire'),(54,'smiley.png','Smiley / No Status'),(55,'so-close.png','So close!'),(56,'surprised-wait.png','Surprised'),(57,'sweet-jesus.png','Sweet Jesus!'),(58,'troll_face.jpeg','Trollin\''),(59,'whhyyy.png','Whyyyyyyyy'),(60,'wuuuut.png','Wut!'),(61,'y_u_no.png','Y U NO'),(62,'yes-dude.png','Yes! (Freddie Mercury)'),(63,'colbert-scream.gif','Screaming (GIF)'),(64,'didnt-read-lol-dance.gif','Didn\'t read lol (GIF)'),(65,'explain-this-bs-lightning.jpg','Explain this Bullshit!'),(66,'f-this-im-out.gif','F this, I\'m out (GIF)'),(67,'grinch.gif','Grinch (GIF)'),(68,'i-have-no-idea-what-im-doing.png','I have no idea what I\'m doing'),(69,'i-told-you-so.gif','I told you so! (GIF)'),(70,'IrwhA.gif','Eating Popcorn'),(71,'its-rainin-sideways.jpg','It\'s rainin\' sideways!'),(72,'just-playing-tennis.jpg','Just playin\' tennis'),(73,'office-space.gif','Technology ragequit (GIF)'),(74,'oh-snap.gif','OH SNAP (GIF)'),(75,'paper-throw-ragequit.gif','Throw papers ragequit (GIF)'),(76,'picard-facepalm.png','Facepalm'),(77,'tumblr_lso6d2OLz21r0byljo1_250.gif','I\'ve made a huge mistake'),(78,'tyson.gif','Looks like we got a badass over here (GIF)'),(79,'vallino-tableflip.png','Vallino tableflip'),(80,'wuuuut.gif','WUUUUTTTT (GIF)'),(81,'chowdertroll.png','Chowder Trollololol'),(82,'old-spice-nod.gif','Oh yeah... (GIF)');
/*!40000 ALTER TABLE `rages` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-04-11 17:08:04
