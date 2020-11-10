-- MySQL dump 10.13  Distrib 8.0.21, for osx10.15 (x86_64)
--
-- Host: localhost    Database: wordpressdb
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_actionscheduler_actions`
--

DROP TABLE IF EXISTS `wp_actionscheduler_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `hook` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `group_id` bigint unsigned NOT NULL DEFAULT '0',
  `attempts` int NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint unsigned NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `hook` (`hook`),
  KEY `status` (`status`),
  KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  KEY `args` (`args`),
  KEY `group_id` (`group_id`),
  KEY `last_attempt_gmt` (`last_attempt_gmt`),
  KEY `claim_id` (`claim_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

LOCK TABLES `wp_actionscheduler_actions` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_actions` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `wp_actionscheduler_actions` VALUES (8,'action_scheduler/migration_hook','complete','2020-11-08 14:17:32','2020-11-08 14:17:32','[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1604845052;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1604845052;}',1,1,'2020-11-08 14:17:36','2020-11-08 14:17:36',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (9,'action_scheduler/migration_hook','complete','2020-11-08 14:18:37','2020-11-08 14:18:37','[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1604845117;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1604845117;}',1,1,'2020-11-08 14:19:00','2020-11-08 14:19:00',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (10,'wpforms_process_entry_emails_meta_cleanup','complete','2020-11-09 00:00:00','2020-11-09 00:00:00','{\"tasks_meta_id\":1}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1604880000;s:18:\"\0*\0first_timestamp\";i:1604880000;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1604880000;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,1,'2020-11-10 14:40:55','2020-11-10 14:40:55',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (11,'wpforms_admin_notifications_update','complete','0000-00-00 00:00:00','0000-00-00 00:00:00','{\"tasks_meta_id\":2}','O:28:\"ActionScheduler_NullSchedule\":0:{}',2,1,'2020-11-08 14:27:53','2020-11-08 14:27:53',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (12,'action_scheduler/migration_hook','complete','2020-11-08 14:55:24','2020-11-08 14:55:24','[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1604847324;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1604847324;}',1,1,'2020-11-08 14:55:25','2020-11-08 14:55:25',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (13,'action_scheduler/migration_hook','complete','2020-11-08 14:56:25','2020-11-08 14:56:25','[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1604847385;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1604847385;}',1,1,'2020-11-08 14:56:53','2020-11-08 14:56:53',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (14,'wpforms_admin_notifications_update','complete','0000-00-00 00:00:00','0000-00-00 00:00:00','{\"tasks_meta_id\":3}','O:28:\"ActionScheduler_NullSchedule\":0:{}',2,1,'2020-11-08 14:56:13','2020-11-08 14:56:13',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (15,'wpforms_process_entry_emails_meta_cleanup','pending','2020-11-11 14:40:55','2020-11-11 14:40:55','{\"tasks_meta_id\":1}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1605105655;s:18:\"\0*\0first_timestamp\";i:1604880000;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1605105655;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (16,'wpforms_admin_notifications_update','complete','0000-00-00 00:00:00','0000-00-00 00:00:00','{\"tasks_meta_id\":4}','O:28:\"ActionScheduler_NullSchedule\":0:{}',2,1,'2020-11-10 14:41:30','2020-11-10 14:41:30',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (17,'action_scheduler/migration_hook','complete','2020-11-10 14:43:17','2020-11-10 14:43:17','[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1605019397;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1605019397;}',1,1,'2020-11-10 14:43:33','2020-11-10 14:43:33',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (18,'action_scheduler/migration_hook','complete','2020-11-10 14:44:33','2020-11-10 14:44:33','[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1605019473;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1605019473;}',1,1,'2020-11-10 14:45:31','2020-11-10 14:45:31',0,NULL);
/*!40000 ALTER TABLE `wp_actionscheduler_actions` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `wp_actionscheduler_claims`
--

DROP TABLE IF EXISTS `wp_actionscheduler_claims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`claim_id`),
  KEY `date_created_gmt` (`date_created_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_claims`
--

LOCK TABLES `wp_actionscheduler_claims` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_claims` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `wp_actionscheduler_claims` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `wp_actionscheduler_groups`
--

DROP TABLE IF EXISTS `wp_actionscheduler_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `slug` (`slug`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

LOCK TABLES `wp_actionscheduler_groups` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_groups` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `wp_actionscheduler_groups` VALUES (1,'action-scheduler-migration');
INSERT INTO `wp_actionscheduler_groups` VALUES (2,'wpforms');
/*!40000 ALTER TABLE `wp_actionscheduler_groups` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `wp_actionscheduler_logs`
--

DROP TABLE IF EXISTS `wp_actionscheduler_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action_id` bigint unsigned NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`log_id`),
  KEY `action_id` (`action_id`),
  KEY `log_date_gmt` (`log_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

LOCK TABLES `wp_actionscheduler_logs` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_logs` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `wp_actionscheduler_logs` VALUES (1,8,'action created','2020-11-08 14:16:32','2020-11-08 14:16:32');
INSERT INTO `wp_actionscheduler_logs` VALUES (2,8,'action started via WP Cron','2020-11-08 14:17:36','2020-11-08 14:17:36');
INSERT INTO `wp_actionscheduler_logs` VALUES (3,8,'action complete via WP Cron','2020-11-08 14:17:36','2020-11-08 14:17:36');
INSERT INTO `wp_actionscheduler_logs` VALUES (4,9,'action created','2020-11-08 14:17:37','2020-11-08 14:17:37');
INSERT INTO `wp_actionscheduler_logs` VALUES (5,10,'action created','2020-11-08 14:17:37','2020-11-08 14:17:37');
INSERT INTO `wp_actionscheduler_logs` VALUES (6,9,'action started via WP Cron','2020-11-08 14:19:00','2020-11-08 14:19:00');
INSERT INTO `wp_actionscheduler_logs` VALUES (7,9,'action complete via WP Cron','2020-11-08 14:19:00','2020-11-08 14:19:00');
INSERT INTO `wp_actionscheduler_logs` VALUES (8,11,'action created','2020-11-08 14:27:28','2020-11-08 14:27:28');
INSERT INTO `wp_actionscheduler_logs` VALUES (9,11,'action started via WP Cron','2020-11-08 14:27:52','2020-11-08 14:27:52');
INSERT INTO `wp_actionscheduler_logs` VALUES (10,11,'action complete via WP Cron','2020-11-08 14:27:53','2020-11-08 14:27:53');
INSERT INTO `wp_actionscheduler_logs` VALUES (11,12,'action created','2020-11-08 14:54:24','2020-11-08 14:54:24');
INSERT INTO `wp_actionscheduler_logs` VALUES (12,12,'action started via WP Cron','2020-11-08 14:55:25','2020-11-08 14:55:25');
INSERT INTO `wp_actionscheduler_logs` VALUES (13,12,'action complete via WP Cron','2020-11-08 14:55:25','2020-11-08 14:55:25');
INSERT INTO `wp_actionscheduler_logs` VALUES (14,13,'action created','2020-11-08 14:55:25','2020-11-08 14:55:25');
INSERT INTO `wp_actionscheduler_logs` VALUES (15,14,'action created','2020-11-08 14:55:39','2020-11-08 14:55:39');
INSERT INTO `wp_actionscheduler_logs` VALUES (16,14,'action started via Async Request','2020-11-08 14:56:13','2020-11-08 14:56:13');
INSERT INTO `wp_actionscheduler_logs` VALUES (17,14,'action complete via Async Request','2020-11-08 14:56:13','2020-11-08 14:56:13');
INSERT INTO `wp_actionscheduler_logs` VALUES (18,13,'action started via WP Cron','2020-11-08 14:56:53','2020-11-08 14:56:53');
INSERT INTO `wp_actionscheduler_logs` VALUES (19,13,'action complete via WP Cron','2020-11-08 14:56:53','2020-11-08 14:56:53');
INSERT INTO `wp_actionscheduler_logs` VALUES (20,10,'action started via WP Cron','2020-11-10 14:40:55','2020-11-10 14:40:55');
INSERT INTO `wp_actionscheduler_logs` VALUES (21,10,'action complete via WP Cron','2020-11-10 14:40:55','2020-11-10 14:40:55');
INSERT INTO `wp_actionscheduler_logs` VALUES (22,15,'action created','2020-11-10 14:40:55','2020-11-10 14:40:55');
INSERT INTO `wp_actionscheduler_logs` VALUES (23,16,'action created','2020-11-10 14:41:15','2020-11-10 14:41:15');
INSERT INTO `wp_actionscheduler_logs` VALUES (24,16,'action started via WP Cron','2020-11-10 14:41:25','2020-11-10 14:41:25');
INSERT INTO `wp_actionscheduler_logs` VALUES (25,16,'action complete via WP Cron','2020-11-10 14:41:30','2020-11-10 14:41:30');
INSERT INTO `wp_actionscheduler_logs` VALUES (26,17,'action created','2020-11-10 14:42:17','2020-11-10 14:42:17');
INSERT INTO `wp_actionscheduler_logs` VALUES (27,17,'action started via WP Cron','2020-11-10 14:43:33','2020-11-10 14:43:33');
INSERT INTO `wp_actionscheduler_logs` VALUES (28,17,'action complete via WP Cron','2020-11-10 14:43:33','2020-11-10 14:43:33');
INSERT INTO `wp_actionscheduler_logs` VALUES (29,18,'action created','2020-11-10 14:43:33','2020-11-10 14:43:33');
INSERT INTO `wp_actionscheduler_logs` VALUES (30,18,'action started via WP Cron','2020-11-10 14:45:31','2020-11-10 14:45:31');
INSERT INTO `wp_actionscheduler_logs` VALUES (31,18,'action complete via WP Cron','2020-11-10 14:45:31','2020-11-10 14:45:31');
/*!40000 ALTER TABLE `wp_actionscheduler_logs` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint unsigned NOT NULL DEFAULT '0',
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2020-11-02 19:12:51','2020-11-02 19:12:51','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_links` (
  `link_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint unsigned NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_options` (
  `option_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://localhost/wordpress','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://localhost/wordpress','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','MyWP','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Just another WordPress site','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','admin@localhost.com','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','0','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/index.php/%year%/%monthnum%/%day%/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:79:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:42:\"index.php/feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:37:\"index.php/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:18:\"index.php/embed/?$\";s:21:\"index.php?&embed=true\";s:30:\"index.php/page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:51:\"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:46:\"index.php/comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:27:\"index.php/comments/embed/?$\";s:21:\"index.php?&embed=true\";s:54:\"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:49:\"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:30:\"index.php/search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:42:\"index.php/search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:24:\"index.php/search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:57:\"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:45:\"index.php/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:79:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:55:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:49:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:66:\"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:42:\"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:54:\"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:36:\"index.php/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:53:\"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:48:\"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:29:\"index.php/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:41:\"index.php/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:23:\"index.php/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:68:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:78:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:98:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:74:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:63:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:87:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:75:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:71:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:57:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:67:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:87:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:63:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:48:\"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:37:\"index.php/.?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"index.php/.?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/.?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"index.php/(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:30:\"index.php/(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:50:\"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:45:\"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:38:\"index.php/(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:45:\"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:34:\"index.php/(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:1:{i:1;s:24:\"wpforms-lite/wpforms.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','twentytwenty','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','twentytwenty','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','48748','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','0','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','posts','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','0','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1619896371','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'initial_db_version','48748','yes');
INSERT INTO `wp_options` VALUES (96,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (97,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (98,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (99,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (100,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (101,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'sidebars_widgets','a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (104,'cron','a:8:{i:1605019884;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1605020031;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1605020032;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1605021172;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1605035571;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1605035572;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1605535200;a:1:{s:28:\"wpforms_email_summaries_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:30:\"wpforms_email_summaries_weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (116,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.5.3\";s:7:\"version\";s:5:\"5.5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1605019255;s:15:\"version_checked\";s:5:\"5.5.3\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (121,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1605019264;s:7:\"checked\";a:1:{s:12:\"twentytwenty\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:1:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (122,'theme_mods_twentytwenty','a:1:{s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (128,'_site_transient_timeout_php_check_744549330ad044a5e94138c3c20d7f77','1605452027','no');
INSERT INTO `wp_options` VALUES (129,'_site_transient_php_check_744549330ad044a5e94138c3c20d7f77','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (130,'_transient_health-check-site-status-result','{\"good\":\"13\",\"recommended\":\"7\",\"critical\":\"0\"}','yes');
INSERT INTO `wp_options` VALUES (131,'_site_transient_timeout_browser_d106af73081ad2a7d789f526088d18ad','1605452031','no');
INSERT INTO `wp_options` VALUES (132,'_site_transient_browser_d106af73081ad2a7d789f526088d18ad','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"86.0.4240.183\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (134,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (147,'recently_activated','a:1:{s:36:\"contact-form-7/wp-contact-form-7.php\";i:1605019337;}','yes');
INSERT INTO `wp_options` VALUES (152,'schema-ActionScheduler_StoreSchema','3.0.1604847264','yes');
INSERT INTO `wp_options` VALUES (153,'schema-ActionScheduler_LoggerSchema','2.0.1604847264','yes');
INSERT INTO `wp_options` VALUES (154,'wpforms_version','1.6.3.1','yes');
INSERT INTO `wp_options` VALUES (155,'wpforms_version_lite','1.6.3.1','yes');
INSERT INTO `wp_options` VALUES (156,'wpforms_activated','a:1:{s:4:\"lite\";i:1604847264;}','yes');
INSERT INTO `wp_options` VALUES (159,'action_scheduler_lock_async-request-runner','1605019888','yes');
INSERT INTO `wp_options` VALUES (160,'widget_wpforms-widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (164,'wpforms_review','a:2:{s:4:\"time\";i:1604847264;s:9:\"dismissed\";b:0;}','yes');
INSERT INTO `wp_options` VALUES (167,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (170,'wpforms_crypto_secret_key','BQriAFBthMEVM3SBukfKBun47R5HxnJZZ4kw24Unn9s=','yes');
INSERT INTO `wp_options` VALUES (171,'wpforms_notifications','a:4:{s:6:\"update\";i:1605019290;s:4:\"feed\";a:0:{}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (179,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1605019258;s:7:\"checked\";a:2:{s:36:\"contact-form-7/wp-contact-form-7.php\";s:3:\"5.3\";s:24:\"wpforms-lite/wpforms.php\";s:7:\"1.6.3.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:3:\"5.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/contact-form-7.5.3.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:24:\"wpforms-lite/wpforms.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/wpforms-lite\";s:4:\"slug\";s:12:\"wpforms-lite\";s:6:\"plugin\";s:24:\"wpforms-lite/wpforms.php\";s:11:\"new_version\";s:7:\"1.6.3.1\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wpforms-lite/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wpforms-lite.1.6.3.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wpforms-lite/assets/icon-256x256.png?rev=1371112\";s:2:\"1x\";s:65:\"https://ps.w.org/wpforms-lite/assets/icon-128x128.png?rev=1371112\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wpforms-lite/assets/banner-1544x500.png?rev=1371112\";s:2:\"1x\";s:67:\"https://ps.w.org/wpforms-lite/assets/banner-772x250.png?rev=1371112\";}s:11:\"banners_rtl\";a:0:{}}}}','no');
INSERT INTO `wp_options` VALUES (184,'secret_key','`TgN$>Q<+p{Ni.C1XcO-Yx5 vgI>=t9VN;t>=R$XTi&;kfV|Ha@!^uRZ^5oTlzmL','no');
INSERT INTO `wp_options` VALUES (190,'_site_transient_timeout_theme_roots','1605021064','no');
INSERT INTO `wp_options` VALUES (191,'_site_transient_theme_roots','a:1:{s:12:\"twentytwenty\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (195,'_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b','1605062496','no');
INSERT INTO `wp_options` VALUES (196,'_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b','<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 28: Connection timed out after 10072 milliseconds</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 28: Connection timed out after 10074 milliseconds</p></div>','no');
INSERT INTO `wp_options` VALUES (197,'_transient_timeout_as-post-store-dependencies-met','1605105737','no');
INSERT INTO `wp_options` VALUES (198,'_transient_as-post-store-dependencies-met','yes','no');
INSERT INTO `wp_options` VALUES (201,'action_scheduler_migration_status','complete','yes');
INSERT INTO `wp_options` VALUES (205,'_transient_timeout_wpforms_dash_widget_lite_entries_by_form','1605052805','no');
INSERT INTO `wp_options` VALUES (206,'_transient_wpforms_dash_widget_lite_entries_by_form','a:3:{i:5;a:3:{s:7:\"form_id\";i:5;s:5:\"count\";i:1;s:5:\"title\";s:19:\"Simple Contact Form\";}i:17;a:3:{s:7:\"form_id\";i:17;s:5:\"count\";i:0;s:5:\"title\";s:15:\"Suggestion Form\";}i:16;a:3:{s:7:\"form_id\";i:16;s:5:\"count\";i:0;s:5:\"title\";s:22:\"Newsletter Signup Form\";}}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,6,'_edit_lock','1605019428:1');
INSERT INTO `wp_postmeta` VALUES (4,5,'wpforms_entries_count','1');
INSERT INTO `wp_postmeta` VALUES (5,8,'_edit_lock','1604847799:1');
INSERT INTO `wp_postmeta` VALUES (13,12,'_edit_lock','1604847604:1');
INSERT INTO `wp_postmeta` VALUES (15,12,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (16,12,'_wp_trash_meta_time','1605019347');
INSERT INTO `wp_postmeta` VALUES (17,12,'_wp_desired_post_slug','contact-cf7');
INSERT INTO `wp_postmeta` VALUES (18,8,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (19,8,'_wp_trash_meta_time','1605019352');
INSERT INTO `wp_postmeta` VALUES (20,8,'_wp_desired_post_slug','forms-plugin-reviews');
INSERT INTO `wp_postmeta` VALUES (21,18,'_edit_lock','1605019465:1');
INSERT INTO `wp_postmeta` VALUES (22,6,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (23,6,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (24,18,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (25,18,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (26,22,'_edit_lock','1605019546:1');
INSERT INTO `wp_postmeta` VALUES (27,24,'_edit_lock','1605019392:1');
INSERT INTO `wp_postmeta` VALUES (28,22,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (29,22,'_wp_page_template','default');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_posts` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `wp_posts` VALUES (1,1,'2020-11-02 19:12:51','2020-11-02 19:12:51','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2020-11-02 19:12:51','2020-11-02 19:12:51','',0,'http://localhost:3000/wordpress/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2020-11-02 19:12:51','2020-11-02 19:12:51','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:3000/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2020-11-02 19:12:51','2020-11-02 19:12:51','',0,'http://localhost:3000/wordpress/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2020-11-02 19:12:51','2020-11-02 19:12:51','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost:3000/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2020-11-02 19:12:51','2020-11-02 19:12:51','',0,'http://localhost:3000/wordpress/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (4,1,'2020-11-08 14:53:52','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-11-08 14:53:52','0000-00-00 00:00:00','',0,'http://localhost:3000/wordpress/?p=4',0,'post','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2020-11-08 14:54:47','2020-11-08 14:54:47','{\"id\":\"5\",\"field_id\":3,\"fields\":[{\"id\":\"0\",\"type\":\"name\",\"label\":\"Name\",\"format\":\"first-last\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"simple_placeholder\":\"\",\"simple_default\":\"\",\"first_placeholder\":\"\",\"first_default\":\"\",\"middle_placeholder\":\"\",\"middle_default\":\"\",\"last_placeholder\":\"\",\"last_default\":\"\",\"css\":\"\"},{\"id\":\"1\",\"type\":\"email\",\"label\":\"Email\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"confirmation_placeholder\":\"\",\"default_value\":\"\",\"css\":\"\",\"filter_type\":\"\",\"allowlist\":\"\",\"denylist\":\"\"},{\"id\":\"2\",\"type\":\"textarea\",\"label\":\"Comment or Message\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"limit_count\":\"1\",\"limit_mode\":\"characters\",\"default_value\":\"\",\"css\":\"\"}],\"settings\":{\"form_title\":\"Simple Contact Form\",\"form_desc\":\"\",\"form_class\":\"\",\"submit_text\":\"Submit\",\"submit_text_processing\":\"Sending...\",\"submit_class\":\"\",\"antispam\":\"1\",\"notification_enable\":\"1\",\"notifications\":{\"1\":{\"email\":\"{admin_email}\",\"subject\":\"New Entry: Simple Contact Form\",\"sender_name\":\"MyWP\",\"sender_address\":\"{admin_email}\",\"replyto\":\"{field_id=\\\"1\\\"}\",\"message\":\"{all_fields}\"}},\"confirmations\":{\"1\":{\"type\":\"message\",\"message\":\"<p>Thanks for contacting us! We will be in touch with you shortly.<\\/p>\",\"message_scroll\":\"1\",\"page\":\"2\",\"redirect\":\"\"}}},\"meta\":{\"template\":\"contact\"}}','Simple Contact Form','','publish','closed','closed','','simple-contact-form','','','2020-11-08 14:54:52','2020-11-08 14:54:52','',0,'http://localhost:3000/wordpress/?post_type=wpforms&#038;p=5',0,'wpforms','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2020-11-08 14:55:36','2020-11-08 14:55:36','<!-- wp:shortcode -->\n[wpforms id=\"5\"]\n<!-- /wp:shortcode -->','Contact Form','','publish','closed','closed','','contact-form','','','2020-11-10 14:43:48','2020-11-10 14:43:48','',18,'http://localhost:3000/wordpress/?page_id=6',0,'page','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2020-11-08 14:55:36','2020-11-08 14:55:36','<!-- wp:shortcode -->\n[wpforms id=\"5\"]\n<!-- /wp:shortcode -->','Contact','','inherit','closed','closed','','6-revision-v1','','','2020-11-08 14:55:36','2020-11-08 14:55:36','',6,'http://localhost:3000/wordpress/index.php/2020/11/08/6-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2020-11-08 14:58:42','2020-11-08 14:58:42','<!-- wp:heading -->\n<h2>WPForms (Lite)</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>The WPForms is very easy to use, but the lite version will not save entries for you. Only when you upgrade it does! So it only sends emails. This plugin let you create any form, not just contact form!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Contact Form 7</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Much form simpler, but the configurations is not UI pretty. It only sends email, no entries storage either.</p>\n<!-- /wp:paragraph -->','Forms Plugin Reviews','','trash','open','open','','forms-plugin-reviews__trashed','','','2020-11-10 14:42:32','2020-11-10 14:42:32','',0,'http://localhost:3000/wordpress/?p=8',0,'post','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2020-11-08 14:58:42','2020-11-08 14:58:42','<!-- wp:heading -->\n<h2>WPForms (Lite)</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>The WPForms is very easy to use, but the lite version will not save entries for you. Only when you upgrade it does! So it only sends emails.</p>\n<!-- /wp:paragraph -->','Forms Plugin Reviews','','inherit','closed','closed','','8-revision-v1','','','2020-11-08 14:58:42','2020-11-08 14:58:42','',8,'http://localhost:3000/wordpress/index.php/2020/11/08/8-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2020-11-08 15:01:33','2020-11-08 15:01:33','<!-- wp:shortcode -->\n[wpforms id=\"5\"]\n<!-- /wp:shortcode -->','Contact - WPForms','','inherit','closed','closed','','6-revision-v1','','','2020-11-08 15:01:33','2020-11-08 15:01:33','',6,'http://localhost:3000/wordpress/index.php/2020/11/08/6-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2020-11-08 15:02:27','2020-11-08 15:02:27','<!-- wp:shortcode -->\n[contact-form-7 id=\"10\" title=\"Contact form 1\"]\n<!-- /wp:shortcode -->','Contact - CF7','','trash','closed','closed','','contact-cf7__trashed','','','2020-11-10 14:42:27','2020-11-10 14:42:27','',0,'http://localhost:3000/wordpress/?page_id=12',0,'page','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2020-11-08 15:02:02','2020-11-08 15:02:02','<!-- wp:shortcode -->\ntest\n<!-- /wp:shortcode -->','Contact - CF7','','inherit','closed','closed','','12-revision-v1','','','2020-11-08 15:02:02','2020-11-08 15:02:02','',12,'http://localhost:3000/wordpress/index.php/2020/11/08/12-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2020-11-08 15:02:27','2020-11-08 15:02:27','<!-- wp:shortcode -->\n[contact-form-7 id=\"10\" title=\"Contact form 1\"]\n<!-- /wp:shortcode -->','Contact - CF7','','inherit','closed','closed','','12-revision-v1','','','2020-11-08 15:02:27','2020-11-08 15:02:27','',12,'http://localhost:3000/wordpress/index.php/2020/11/08/12-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2020-11-08 15:05:42','2020-11-08 15:05:42','<!-- wp:heading -->\n<h2>WPForms (Lite)</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>The WPForms is very easy to use, but the lite version will not save entries for you. Only when you upgrade it does! So it only sends emails. This plugin let you create any form, not just contact form!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Contact Form 7</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Much form simpler, but the configurations is not UI pretty. It only sends email, no entries storage either.</p>\n<!-- /wp:paragraph -->','Forms Plugin Reviews','','inherit','closed','closed','','8-revision-v1','','','2020-11-08 15:05:42','2020-11-08 15:05:42','',8,'http://localhost:3000/wordpress/index.php/2020/11/08/8-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2020-11-10 14:41:33','2020-11-10 14:41:33','{\"id\":\"16\",\"field_id\":2,\"fields\":[{\"id\":\"0\",\"type\":\"name\",\"label\":\"Name\",\"format\":\"first-last\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"simple_placeholder\":\"\",\"simple_default\":\"\",\"first_placeholder\":\"\",\"first_default\":\"\",\"middle_placeholder\":\"\",\"middle_default\":\"\",\"last_placeholder\":\"\",\"last_default\":\"\",\"css\":\"\"},{\"id\":\"1\",\"type\":\"email\",\"label\":\"Email\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"confirmation_placeholder\":\"\",\"default_value\":\"\",\"css\":\"\",\"filter_type\":\"\",\"allowlist\":\"\",\"denylist\":\"\"}],\"settings\":{\"form_title\":\"Newsletter Signup Form\",\"form_desc\":\"\",\"form_class\":\"\",\"submit_text\":\"Submit\",\"submit_text_processing\":\"Sending...\",\"submit_class\":\"\",\"antispam\":\"1\",\"notification_enable\":\"1\",\"notifications\":{\"1\":{\"email\":\"{admin_email}\",\"subject\":\"New Newsletter Signup Form Entry\",\"sender_name\":\"MyWP\",\"sender_address\":\"{admin_email}\",\"replyto\":\"\",\"message\":\"{all_fields}\"}},\"confirmations\":{\"1\":{\"type\":\"message\",\"message\":\"<p>Thanks for contacting us! We will be in touch with you shortly.<\\/p>\",\"message_scroll\":\"1\",\"page\":\"12\",\"redirect\":\"\"}}},\"meta\":{\"template\":\"subscribe\"}}','Newsletter Signup Form','','publish','closed','closed','','newsletter-signup-form','','','2020-11-10 14:41:38','2020-11-10 14:41:38','',0,'http://localhost/wordpress/?post_type=wpforms&#038;p=16',0,'wpforms','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2020-11-10 14:41:54','2020-11-10 14:41:54','{\"id\":\"17\",\"field_id\":5,\"fields\":[{\"id\":\"0\",\"type\":\"name\",\"label\":\"Name\",\"format\":\"first-last\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"simple_placeholder\":\"\",\"simple_default\":\"\",\"first_placeholder\":\"\",\"first_default\":\"\",\"middle_placeholder\":\"\",\"middle_default\":\"\",\"last_placeholder\":\"\",\"last_default\":\"\",\"css\":\"\"},{\"id\":\"1\",\"type\":\"email\",\"label\":\"Email\",\"description\":\"Please enter your email, so we can follow up with you.\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"confirmation_placeholder\":\"\",\"default_value\":\"\",\"css\":\"\",\"filter_type\":\"\",\"allowlist\":\"\",\"denylist\":\"\"},{\"id\":\"2\",\"type\":\"radio\",\"label\":\"Which department do you have a suggestion for?\",\"choices\":{\"1\":{\"label\":\"Sales\",\"value\":\"\",\"image\":\"\"},\"2\":{\"label\":\"Customer Support\",\"value\":\"\",\"image\":\"\"},\"3\":{\"label\":\"Product Development\",\"value\":\"\",\"image\":\"\"},\"4\":{\"label\":\"Other\",\"value\":\"\",\"image\":\"\"}},\"description\":\"\",\"required\":\"1\",\"choices_images_style\":\"modern\",\"input_columns\":\"\",\"css\":\"\",\"dynamic_choices\":\"\"},{\"id\":\"3\",\"type\":\"text\",\"label\":\"Subject\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"limit_count\":\"1\",\"limit_mode\":\"characters\",\"default_value\":\"\",\"css\":\"\",\"input_mask\":\"\"},{\"id\":\"4\",\"type\":\"textarea\",\"label\":\"Message\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"limit_count\":\"1\",\"limit_mode\":\"characters\",\"default_value\":\"\",\"css\":\"\"}],\"settings\":{\"form_title\":\"Suggestion Form\",\"form_desc\":\"\",\"form_class\":\"\",\"submit_text\":\"Submit\",\"submit_text_processing\":\"Sending...\",\"submit_class\":\"\",\"antispam\":\"1\",\"notification_enable\":\"1\",\"notifications\":{\"1\":{\"email\":\"{admin_email}\",\"subject\":\"New Entry: Suggestion Form\",\"sender_name\":\"{field_id=\\\"0\\\"}\",\"sender_address\":\"{admin_email}\",\"replyto\":\"{field_id=\\\"1\\\"}\",\"message\":\"{all_fields}\"}},\"confirmations\":{\"1\":{\"type\":\"message\",\"message\":\"<p>Thanks for contacting us! We will be in touch with you shortly.<\\/p>\",\"message_scroll\":\"1\",\"page\":\"12\",\"redirect\":\"\"}}},\"meta\":{\"template\":\"suggestion\"}}','Suggestion Form','','publish','closed','closed','','suggestion-form','','','2020-11-10 14:41:58','2020-11-10 14:41:58','',0,'http://localhost/wordpress/?post_type=wpforms&#038;p=17',0,'wpforms','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2020-11-10 14:42:47','2020-11-10 14:42:47','','WPForms Demos','','publish','closed','closed','','wpforms-demos','','','2020-11-10 14:44:25','2020-11-10 14:44:25','',0,'http://localhost/wordpress/?page_id=18',0,'page','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2020-11-10 14:42:47','2020-11-10 14:42:47','','Test','','inherit','closed','closed','','18-revision-v1','','','2020-11-10 14:42:47','2020-11-10 14:42:47','',18,'http://localhost/wordpress/index.php/2020/11/10/18-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2020-11-10 14:43:48','2020-11-10 14:43:48','<!-- wp:shortcode -->\n[wpforms id=\"5\"]\n<!-- /wp:shortcode -->','Contact Form','','inherit','closed','closed','','6-revision-v1','','','2020-11-10 14:43:48','2020-11-10 14:43:48','',6,'http://localhost/wordpress/index.php/2020/11/10/6-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2020-11-10 14:44:25','2020-11-10 14:44:25','','WPForms Demos','','inherit','closed','closed','','18-revision-v1','','','2020-11-10 14:44:25','2020-11-10 14:44:25','',18,'http://localhost/wordpress/index.php/2020/11/10/18-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2020-11-10 14:45:03','2020-11-10 14:45:03','<!-- wp:shortcode -->\n[wpforms id=\"17\"]\n<!-- /wp:shortcode -->','Suggestion Form','','publish','closed','closed','','suggestion-form','','','2020-11-10 14:45:46','2020-11-10 14:45:46','',18,'http://localhost/wordpress/?page_id=22',0,'page','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2020-11-10 14:45:03','2020-11-10 14:45:03','<!-- wp:shortcode -->\n[wpforms id=\"17\"]\n<!-- /wp:shortcode -->','Suggestion Form','','inherit','closed','closed','','22-revision-v1','','','2020-11-10 14:45:03','2020-11-10 14:45:03','',22,'http://localhost/wordpress/index.php/2020/11/10/22-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2020-11-10 14:45:36','2020-11-10 14:45:36','<!-- wp:shortcode -->\n[wpforms id=\"16\"]\n<!-- /wp:shortcode -->','Newsletter Signup Form','','publish','closed','closed','','newsletter-signup-form','','','2020-11-10 14:45:36','2020-11-10 14:45:36','',18,'http://localhost/wordpress/?page_id=24',0,'page','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2020-11-10 14:45:36','2020-11-10 14:45:36','<!-- wp:shortcode -->\n[wpforms id=\"16\"]\n<!-- /wp:shortcode -->','Newsletter Signup Form','','inherit','closed','closed','','24-revision-v1','','','2020-11-10 14:45:36','2020-11-10 14:45:36','',24,'http://localhost/wordpress/index.php/2020/11/10/24-revision-v1/',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (8,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint unsigned NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','admin');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','0');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:3:{s:64:\"bf45fd76058034a77194d3348baac07594658ffadf3be4d422cafb4343053ee6\";a:4:{s:10:\"expiration\";i:1605020031;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.183 Safari/537.36\";s:5:\"login\";i:1604847231;}s:64:\"12574d2b63703a3eb406afea9222a68a307839f24d32f7dacc0bd22fe4012f22\";a:4:{s:10:\"expiration\";i:1605192058;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:82:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:82.0) Gecko/20100101 Firefox/82.0\";s:5:\"login\";i:1605019258;}s:64:\"6d87c011ff7aeb2b81b96a20bde11e1587b4fa765f26805f842362986b9b6d39\";a:4:{s:10:\"expiration\";i:1605192569;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:82:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:82.0) Gecko/20100101 Firefox/82.0\";s:5:\"login\";i:1605019769;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_user-settings','libraryContent=browse&editor=tinymce&mfold=o&post_dfw=off&posts_list_mode=list');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_user-settings-time','1604847227');
INSERT INTO `wp_usermeta` VALUES (19,1,'wp_dashboard_quick_press_last_post_id','4');
INSERT INTO `wp_usermeta` VALUES (20,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'wpcf7_hide_welcome_panel_on','a:1:{i:0;s:3:\"5.3\";}');
INSERT INTO `wp_usermeta` VALUES (22,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (23,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (24,1,'meta-box-order_dashboard','a:4:{s:6:\"normal\";s:88:\"dashboard_site_health,wpforms_reports_widget_lite,dashboard_activity,dashboard_right_now\";s:4:\"side\";s:39:\"dashboard_primary,dashboard_quick_press\";s:7:\"column3\";s:0:\"\";s:7:\"column4\";s:0:\"\";}');
INSERT INTO `wp_usermeta` VALUES (25,1,'closedpostboxes_dashboard','a:4:{i:0;s:21:\"dashboard_site_health\";i:1;s:27:\"wpforms_reports_widget_lite\";i:2;s:18:\"dashboard_activity\";i:3;s:17:\"dashboard_primary\";}');
INSERT INTO `wp_usermeta` VALUES (26,1,'metaboxhidden_dashboard','a:4:{i:0;s:21:\"dashboard_site_health\";i:1;s:27:\"wpforms_reports_widget_lite\";i:2;s:18:\"dashboard_activity\";i:3;s:17:\"dashboard_primary\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_users` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `wp_users` VALUES (1,'admin','$P$BQhhCZel6SN.JCDhmv3dbbKO5.Gtl20','admin','admin@localhost.com','http://localhost:3000/wordpress','2020-11-02 19:12:51','',0,'admin');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `wp_wpforms_tasks_meta`
--

DROP TABLE IF EXISTS `wp_wpforms_tasks_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_wpforms_tasks_meta` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpforms_tasks_meta`
--

LOCK TABLES `wp_wpforms_tasks_meta` WRITE;
/*!40000 ALTER TABLE `wp_wpforms_tasks_meta` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `wp_wpforms_tasks_meta` VALUES (1,'wpforms_process_entry_emails_meta_cleanup','Wzg2NDAwXQ==','2020-11-08 14:17:37');
INSERT INTO `wp_wpforms_tasks_meta` VALUES (2,'wpforms_admin_notifications_update','W10=','2020-11-08 14:27:28');
INSERT INTO `wp_wpforms_tasks_meta` VALUES (3,'wpforms_admin_notifications_update','W10=','2020-11-08 14:55:39');
INSERT INTO `wp_wpforms_tasks_meta` VALUES (4,'wpforms_admin_notifications_update','W10=','2020-11-10 14:41:15');
/*!40000 ALTER TABLE `wp_wpforms_tasks_meta` ENABLE KEYS */;
UNLOCK TABLES;
commit;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-10  9:51:22
