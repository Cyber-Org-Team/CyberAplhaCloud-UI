-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: ::1    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `hook` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `priority` tinyint(3) unsigned NOT NULL DEFAULT '10',
  `args` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_520_ci,
  `group_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `hook_status_scheduled_date_gmt` (`hook`(163),`status`,`scheduled_date_gmt`),
  KEY `status_scheduled_date_gmt` (`status`,`scheduled_date_gmt`),
  KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  KEY `args` (`args`),
  KEY `group_id` (`group_id`),
  KEY `last_attempt_gmt` (`last_attempt_gmt`),
  KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

LOCK TABLES `wp_actionscheduler_actions` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_actions` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_actions` VALUES (12,'action_scheduler/migration_hook','complete','2024-09-07 04:18:11','2024-09-07 04:18:11',10,'[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1725682691;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1725682691;}',1,1,'2024-09-07 04:20:19','2024-09-07 04:20:19',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (13,'wp_mail_smtp_summary_report_email','complete','2024-09-09 14:00:00','2024-09-09 14:00:00',10,'[null]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1725890400;s:18:\"\0*\0first_timestamp\";i:1725890400;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1725890400;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}',2,1,'2024-09-14 06:32:18','2024-09-14 06:32:18',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (14,'wp_mail_smtp_admin_notifications_update','complete','2024-09-07 04:24:59','2024-09-07 04:24:59',10,'[1]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1725683099;s:18:\"\0*\0first_timestamp\";i:1725683099;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1725683099;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,1,'2024-09-07 04:25:48','2024-09-07 04:25:48',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (15,'wp_mail_smtp_admin_notifications_update','complete','2024-09-08 04:25:48','2024-09-08 04:25:48',10,'[1]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1725769548;s:18:\"\0*\0first_timestamp\";i:1725683099;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1725769548;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,1,'2024-09-08 04:27:26','2024-09-08 04:27:26',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (16,'wpforms_process_forms_locator_scan','complete','2024-09-07 04:37:00','2024-09-07 04:37:00',10,'{\"tasks_meta_id\":1}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1725683820;s:18:\"\0*\0first_timestamp\";i:1725683820;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1725683820;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',3,1,'2024-09-07 04:37:13','2024-09-07 04:37:13',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (17,'wpforms_email_summaries_fetch_info_blocks','complete','2024-09-02 14:13:13','2024-09-02 14:13:13',10,'{\"tasks_meta_id\":null}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1725286393;s:18:\"\0*\0first_timestamp\";i:1725286393;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1725286393;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}',3,1,'2024-09-07 04:37:13','2024-09-07 04:37:13',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (18,'wpforms_email_summaries_fetch_info_blocks','complete','2024-09-14 04:37:13','2024-09-14 04:37:13',10,'{\"tasks_meta_id\":null}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1726288633;s:18:\"\0*\0first_timestamp\";i:1725286393;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1726288633;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}',3,1,'2024-09-14 06:32:18','2024-09-14 06:32:18',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (19,'wpforms_process_forms_locator_scan','complete','2024-09-08 04:37:13','2024-09-08 04:37:13',10,'{\"tasks_meta_id\":1}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1725770233;s:18:\"\0*\0first_timestamp\";i:1725683820;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1725770233;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',3,1,'2024-09-08 04:37:31','2024-09-08 04:37:31',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (20,'wpforms_admin_notifications_update','complete','2024-09-07 04:37:19','2024-09-07 04:37:19',10,'{\"tasks_meta_id\":2}','O:28:\"ActionScheduler_NullSchedule\":0:{}',3,1,'2024-09-07 04:37:39','2024-09-07 04:37:39',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (21,'wp_mail_smtp_admin_notifications_update','complete','2024-09-09 04:27:26','2024-09-09 04:27:26',10,'[1]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1725856046;s:18:\"\0*\0first_timestamp\";i:1725683099;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1725856046;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,1,'2024-09-14 06:32:15','2024-09-14 06:32:15',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (22,'wpforms_process_forms_locator_scan','complete','2024-09-09 04:37:31','2024-09-09 04:37:31',10,'{\"tasks_meta_id\":1}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1725856651;s:18:\"\0*\0first_timestamp\";i:1725683820;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1725856651;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',3,1,'2024-09-14 06:32:15','2024-09-14 06:32:15',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (23,'wpforms_admin_notifications_update','complete','2024-09-08 20:13:32','2024-09-08 20:13:32',10,'{\"tasks_meta_id\":3}','O:28:\"ActionScheduler_NullSchedule\":0:{}',3,1,'2024-09-08 20:14:29','2024-09-08 20:14:29',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (24,'wp_mail_smtp_admin_notifications_update','complete','2024-09-15 06:32:15','2024-09-15 06:32:15',10,'[1]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1726381935;s:18:\"\0*\0first_timestamp\";i:1725683099;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1726381935;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,1,'2024-09-17 04:47:48','2024-09-17 04:47:48',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (25,'wpforms_process_forms_locator_scan','complete','2024-09-15 06:32:15','2024-09-15 06:32:15',10,'{\"tasks_meta_id\":1}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1726381935;s:18:\"\0*\0first_timestamp\";i:1725683820;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1726381935;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',3,1,'2024-09-17 04:47:48','2024-09-17 04:47:48',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (26,'wp_mail_smtp_summary_report_email','complete','2024-09-21 06:32:18','2024-09-21 06:32:18',10,'[null]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1726900338;s:18:\"\0*\0first_timestamp\";i:1725890400;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1726900338;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}',2,1,'2024-09-23 02:45:32','2024-09-23 02:45:32',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (27,'wpforms_email_summaries_fetch_info_blocks','complete','2024-09-21 06:32:18','2024-09-21 06:32:18',10,'{\"tasks_meta_id\":null}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1726900338;s:18:\"\0*\0first_timestamp\";i:1725286393;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1726900338;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}',3,1,'2024-09-23 02:45:32','2024-09-23 02:45:32',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (28,'wp_mail_smtp_admin_notifications_update','complete','2024-09-18 04:47:48','2024-09-18 04:47:48',10,'[1]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1726634868;s:18:\"\0*\0first_timestamp\";i:1725683099;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1726634868;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,1,'2024-09-23 02:45:29','2024-09-23 02:45:29',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (29,'wpforms_process_forms_locator_scan','complete','2024-09-18 04:47:48','2024-09-18 04:47:48',10,'{\"tasks_meta_id\":1}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1726634868;s:18:\"\0*\0first_timestamp\";i:1725683820;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1726634868;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',3,1,'2024-09-23 02:45:29','2024-09-23 02:45:29',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (30,'wpforms_admin_notifications_update','complete','2024-09-17 05:29:34','2024-09-17 05:29:34',10,'{\"tasks_meta_id\":4}','O:28:\"ActionScheduler_NullSchedule\":0:{}',3,1,'2024-09-17 05:30:11','2024-09-17 05:30:11',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (31,'wp_mail_smtp_admin_notifications_update','complete','2024-09-24 02:45:29','2024-09-24 02:45:29',10,'[1]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1727145929;s:18:\"\0*\0first_timestamp\";i:1725683099;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1727145929;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,1,'2024-10-04 04:00:30','2024-10-04 04:00:30',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (32,'wpforms_process_forms_locator_scan','complete','2024-09-24 02:45:29','2024-09-24 02:45:29',10,'{\"tasks_meta_id\":1}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1727145929;s:18:\"\0*\0first_timestamp\";i:1725683820;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1727145929;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',3,1,'2024-10-04 04:00:30','2024-10-04 04:00:30',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (33,'wp_mail_smtp_summary_report_email','complete','2024-09-30 02:45:32','2024-09-30 02:45:32',10,'[null]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1727664332;s:18:\"\0*\0first_timestamp\";i:1725890400;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1727664332;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}',2,1,'2024-10-04 04:00:34','2024-10-04 04:00:34',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (34,'wpforms_email_summaries_fetch_info_blocks','complete','2024-09-30 02:45:32','2024-09-30 02:45:32',10,'{\"tasks_meta_id\":null}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1727664332;s:18:\"\0*\0first_timestamp\";i:1725286393;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1727664332;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}',3,1,'2024-10-04 04:00:34','2024-10-04 04:00:34',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (35,'wp_mail_smtp_admin_notifications_update','pending','2024-10-05 04:00:30','2024-10-05 04:00:30',10,'[1]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1728100830;s:18:\"\0*\0first_timestamp\";i:1725683099;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1728100830;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (36,'wpforms_process_forms_locator_scan','pending','2024-10-05 04:00:30','2024-10-05 04:00:30',10,'{\"tasks_meta_id\":1}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1728100830;s:18:\"\0*\0first_timestamp\";i:1725683820;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1728100830;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',3,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (37,'wp_mail_smtp_summary_report_email','pending','2024-10-11 04:00:34','2024-10-11 04:00:34',10,'[null]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1728619234;s:18:\"\0*\0first_timestamp\";i:1725890400;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1728619234;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}',2,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (38,'wpforms_email_summaries_fetch_info_blocks','pending','2024-10-11 04:00:34','2024-10-11 04:00:34',10,'{\"tasks_meta_id\":null}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1728619234;s:18:\"\0*\0first_timestamp\";i:1725286393;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1728619234;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}',3,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL);
/*!40000 ALTER TABLE `wp_actionscheduler_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_claims`
--

DROP TABLE IF EXISTS `wp_actionscheduler_claims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`claim_id`),
  KEY `date_created_gmt` (`date_created_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=458 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_claims`
--

LOCK TABLES `wp_actionscheduler_claims` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_claims` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_actionscheduler_claims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_groups`
--

DROP TABLE IF EXISTS `wp_actionscheduler_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `slug` (`slug`(191))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

LOCK TABLES `wp_actionscheduler_groups` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_groups` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_groups` VALUES (1,'action-scheduler-migration');
INSERT INTO `wp_actionscheduler_groups` VALUES (2,'wp_mail_smtp');
INSERT INTO `wp_actionscheduler_groups` VALUES (3,'wpforms');
/*!40000 ALTER TABLE `wp_actionscheduler_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_logs`
--

DROP TABLE IF EXISTS `wp_actionscheduler_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `action_id` bigint(20) unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`log_id`),
  KEY `action_id` (`action_id`),
  KEY `log_date_gmt` (`log_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

LOCK TABLES `wp_actionscheduler_logs` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_logs` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_logs` VALUES (1,12,'action created','2024-09-07 04:17:11','2024-09-07 04:17:11');
INSERT INTO `wp_actionscheduler_logs` VALUES (2,12,'action started via WP Cron','2024-09-07 04:20:19','2024-09-07 04:20:19');
INSERT INTO `wp_actionscheduler_logs` VALUES (3,12,'action complete via WP Cron','2024-09-07 04:20:19','2024-09-07 04:20:19');
INSERT INTO `wp_actionscheduler_logs` VALUES (4,13,'action created','2024-09-07 04:23:58','2024-09-07 04:23:58');
INSERT INTO `wp_actionscheduler_logs` VALUES (5,14,'action created','2024-09-07 04:23:59','2024-09-07 04:23:59');
INSERT INTO `wp_actionscheduler_logs` VALUES (6,14,'action started via WP Cron','2024-09-07 04:25:48','2024-09-07 04:25:48');
INSERT INTO `wp_actionscheduler_logs` VALUES (7,14,'action complete via WP Cron','2024-09-07 04:25:48','2024-09-07 04:25:48');
INSERT INTO `wp_actionscheduler_logs` VALUES (8,15,'action created','2024-09-07 04:25:48','2024-09-07 04:25:48');
INSERT INTO `wp_actionscheduler_logs` VALUES (9,16,'action created','2024-09-07 04:37:00','2024-09-07 04:37:00');
INSERT INTO `wp_actionscheduler_logs` VALUES (10,17,'action created','2024-09-07 04:37:00','2024-09-07 04:37:00');
INSERT INTO `wp_actionscheduler_logs` VALUES (11,17,'action started via WP Cron','2024-09-07 04:37:13','2024-09-07 04:37:13');
INSERT INTO `wp_actionscheduler_logs` VALUES (12,17,'action complete via WP Cron','2024-09-07 04:37:13','2024-09-07 04:37:13');
INSERT INTO `wp_actionscheduler_logs` VALUES (13,18,'action created','2024-09-07 04:37:13','2024-09-07 04:37:13');
INSERT INTO `wp_actionscheduler_logs` VALUES (14,16,'action started via WP Cron','2024-09-07 04:37:13','2024-09-07 04:37:13');
INSERT INTO `wp_actionscheduler_logs` VALUES (15,16,'action complete via WP Cron','2024-09-07 04:37:13','2024-09-07 04:37:13');
INSERT INTO `wp_actionscheduler_logs` VALUES (16,19,'action created','2024-09-07 04:37:13','2024-09-07 04:37:13');
INSERT INTO `wp_actionscheduler_logs` VALUES (17,20,'action created','2024-09-07 04:37:19','2024-09-07 04:37:19');
INSERT INTO `wp_actionscheduler_logs` VALUES (18,20,'action started via Async Request','2024-09-07 04:37:39','2024-09-07 04:37:39');
INSERT INTO `wp_actionscheduler_logs` VALUES (19,20,'action complete via Async Request','2024-09-07 04:37:39','2024-09-07 04:37:39');
INSERT INTO `wp_actionscheduler_logs` VALUES (20,15,'action started via WP Cron','2024-09-08 04:27:26','2024-09-08 04:27:26');
INSERT INTO `wp_actionscheduler_logs` VALUES (21,15,'action complete via WP Cron','2024-09-08 04:27:26','2024-09-08 04:27:26');
INSERT INTO `wp_actionscheduler_logs` VALUES (22,21,'action created','2024-09-08 04:27:26','2024-09-08 04:27:26');
INSERT INTO `wp_actionscheduler_logs` VALUES (23,19,'action started via WP Cron','2024-09-08 04:37:31','2024-09-08 04:37:31');
INSERT INTO `wp_actionscheduler_logs` VALUES (24,19,'action complete via WP Cron','2024-09-08 04:37:31','2024-09-08 04:37:31');
INSERT INTO `wp_actionscheduler_logs` VALUES (25,22,'action created','2024-09-08 04:37:31','2024-09-08 04:37:31');
INSERT INTO `wp_actionscheduler_logs` VALUES (26,23,'action created','2024-09-08 20:13:32','2024-09-08 20:13:32');
INSERT INTO `wp_actionscheduler_logs` VALUES (27,23,'action started via WP Cron','2024-09-08 20:14:28','2024-09-08 20:14:28');
INSERT INTO `wp_actionscheduler_logs` VALUES (28,23,'action complete via WP Cron','2024-09-08 20:14:29','2024-09-08 20:14:29');
INSERT INTO `wp_actionscheduler_logs` VALUES (29,21,'action started via WP Cron','2024-09-14 06:32:14','2024-09-14 06:32:14');
INSERT INTO `wp_actionscheduler_logs` VALUES (30,21,'action complete via WP Cron','2024-09-14 06:32:15','2024-09-14 06:32:15');
INSERT INTO `wp_actionscheduler_logs` VALUES (31,24,'action created','2024-09-14 06:32:15','2024-09-14 06:32:15');
INSERT INTO `wp_actionscheduler_logs` VALUES (32,22,'action started via WP Cron','2024-09-14 06:32:15','2024-09-14 06:32:15');
INSERT INTO `wp_actionscheduler_logs` VALUES (33,22,'action complete via WP Cron','2024-09-14 06:32:15','2024-09-14 06:32:15');
INSERT INTO `wp_actionscheduler_logs` VALUES (34,25,'action created','2024-09-14 06:32:15','2024-09-14 06:32:15');
INSERT INTO `wp_actionscheduler_logs` VALUES (35,13,'action started via WP Cron','2024-09-14 06:32:15','2024-09-14 06:32:15');
INSERT INTO `wp_actionscheduler_logs` VALUES (36,13,'action complete via WP Cron','2024-09-14 06:32:18','2024-09-14 06:32:18');
INSERT INTO `wp_actionscheduler_logs` VALUES (37,26,'action created','2024-09-14 06:32:18','2024-09-14 06:32:18');
INSERT INTO `wp_actionscheduler_logs` VALUES (38,18,'action started via WP Cron','2024-09-14 06:32:18','2024-09-14 06:32:18');
INSERT INTO `wp_actionscheduler_logs` VALUES (39,18,'action complete via WP Cron','2024-09-14 06:32:18','2024-09-14 06:32:18');
INSERT INTO `wp_actionscheduler_logs` VALUES (40,27,'action created','2024-09-14 06:32:18','2024-09-14 06:32:18');
INSERT INTO `wp_actionscheduler_logs` VALUES (41,24,'action started via WP Cron','2024-09-17 04:47:48','2024-09-17 04:47:48');
INSERT INTO `wp_actionscheduler_logs` VALUES (42,24,'action complete via WP Cron','2024-09-17 04:47:48','2024-09-17 04:47:48');
INSERT INTO `wp_actionscheduler_logs` VALUES (43,28,'action created','2024-09-17 04:47:48','2024-09-17 04:47:48');
INSERT INTO `wp_actionscheduler_logs` VALUES (44,25,'action started via WP Cron','2024-09-17 04:47:48','2024-09-17 04:47:48');
INSERT INTO `wp_actionscheduler_logs` VALUES (45,25,'action complete via WP Cron','2024-09-17 04:47:48','2024-09-17 04:47:48');
INSERT INTO `wp_actionscheduler_logs` VALUES (46,29,'action created','2024-09-17 04:47:48','2024-09-17 04:47:48');
INSERT INTO `wp_actionscheduler_logs` VALUES (47,30,'action created','2024-09-17 05:29:35','2024-09-17 05:29:35');
INSERT INTO `wp_actionscheduler_logs` VALUES (48,30,'action started via WP Cron','2024-09-17 05:30:11','2024-09-17 05:30:11');
INSERT INTO `wp_actionscheduler_logs` VALUES (49,30,'action complete via WP Cron','2024-09-17 05:30:11','2024-09-17 05:30:11');
INSERT INTO `wp_actionscheduler_logs` VALUES (50,28,'action started via WP Cron','2024-09-23 02:45:28','2024-09-23 02:45:28');
INSERT INTO `wp_actionscheduler_logs` VALUES (51,28,'action complete via WP Cron','2024-09-23 02:45:29','2024-09-23 02:45:29');
INSERT INTO `wp_actionscheduler_logs` VALUES (52,31,'action created','2024-09-23 02:45:29','2024-09-23 02:45:29');
INSERT INTO `wp_actionscheduler_logs` VALUES (53,29,'action started via WP Cron','2024-09-23 02:45:29','2024-09-23 02:45:29');
INSERT INTO `wp_actionscheduler_logs` VALUES (54,29,'action complete via WP Cron','2024-09-23 02:45:29','2024-09-23 02:45:29');
INSERT INTO `wp_actionscheduler_logs` VALUES (55,32,'action created','2024-09-23 02:45:29','2024-09-23 02:45:29');
INSERT INTO `wp_actionscheduler_logs` VALUES (56,26,'action started via WP Cron','2024-09-23 02:45:29','2024-09-23 02:45:29');
INSERT INTO `wp_actionscheduler_logs` VALUES (57,26,'action complete via WP Cron','2024-09-23 02:45:32','2024-09-23 02:45:32');
INSERT INTO `wp_actionscheduler_logs` VALUES (58,33,'action created','2024-09-23 02:45:32','2024-09-23 02:45:32');
INSERT INTO `wp_actionscheduler_logs` VALUES (59,27,'action started via WP Cron','2024-09-23 02:45:32','2024-09-23 02:45:32');
INSERT INTO `wp_actionscheduler_logs` VALUES (60,27,'action complete via WP Cron','2024-09-23 02:45:32','2024-09-23 02:45:32');
INSERT INTO `wp_actionscheduler_logs` VALUES (61,34,'action created','2024-09-23 02:45:32','2024-09-23 02:45:32');
INSERT INTO `wp_actionscheduler_logs` VALUES (62,31,'action started via WP Cron','2024-10-04 04:00:30','2024-10-04 04:00:30');
INSERT INTO `wp_actionscheduler_logs` VALUES (63,31,'action complete via WP Cron','2024-10-04 04:00:30','2024-10-04 04:00:30');
INSERT INTO `wp_actionscheduler_logs` VALUES (64,35,'action created','2024-10-04 04:00:30','2024-10-04 04:00:30');
INSERT INTO `wp_actionscheduler_logs` VALUES (65,32,'action started via WP Cron','2024-10-04 04:00:30','2024-10-04 04:00:30');
INSERT INTO `wp_actionscheduler_logs` VALUES (66,32,'action complete via WP Cron','2024-10-04 04:00:30','2024-10-04 04:00:30');
INSERT INTO `wp_actionscheduler_logs` VALUES (67,36,'action created','2024-10-04 04:00:30','2024-10-04 04:00:30');
INSERT INTO `wp_actionscheduler_logs` VALUES (68,33,'action started via WP Cron','2024-10-04 04:00:30','2024-10-04 04:00:30');
INSERT INTO `wp_actionscheduler_logs` VALUES (69,33,'action complete via WP Cron','2024-10-04 04:00:34','2024-10-04 04:00:34');
INSERT INTO `wp_actionscheduler_logs` VALUES (70,37,'action created','2024-10-04 04:00:34','2024-10-04 04:00:34');
INSERT INTO `wp_actionscheduler_logs` VALUES (71,34,'action started via WP Cron','2024-10-04 04:00:34','2024-10-04 04:00:34');
INSERT INTO `wp_actionscheduler_logs` VALUES (72,34,'action complete via WP Cron','2024-10-04 04:00:34','2024-10-04 04:00:34');
INSERT INTO `wp_actionscheduler_logs` VALUES (73,38,'action created','2024-10-04 04:00:34','2024-10-04 04:00:34');
/*!40000 ALTER TABLE `wp_actionscheduler_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
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
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
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
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2024-08-28 16:45:33','2024-08-28 16:45:33','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=985 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'cron','a:13:{i:1728015071;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1728017136;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1728017280;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1728020732;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1728022532;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1728022540;a:1:{s:33:\"wpforms_weekly_entries_count_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:28:\"wpforms_weekly_entries_count\";s:4:\"args\";a:0:{}s:8:\"interval\";i:244753;}}}i:1728024332;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1728060335;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1728060480;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1728276439;a:1:{s:28:\"wpforms_email_summaries_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:30:\"wpforms_email_summaries_weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:295153;}}}i:1728493394;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1728578735;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','auto');
INSERT INTO `wp_options` VALUES (2,'siteurl','http://cyberalphacloud.local','on');
INSERT INTO `wp_options` VALUES (3,'home','http://cyberalphacloud.local','on');
INSERT INTO `wp_options` VALUES (4,'blogname','CyberAplhaCloud','on');
INSERT INTO `wp_options` VALUES (5,'blogdescription','','on');
INSERT INTO `wp_options` VALUES (6,'users_can_register','0','on');
INSERT INTO `wp_options` VALUES (7,'admin_email','anjangangishetti@gmail.com','on');
INSERT INTO `wp_options` VALUES (8,'start_of_week','1','on');
INSERT INTO `wp_options` VALUES (9,'use_balanceTags','0','on');
INSERT INTO `wp_options` VALUES (10,'use_smilies','1','on');
INSERT INTO `wp_options` VALUES (11,'require_name_email','1','on');
INSERT INTO `wp_options` VALUES (12,'comments_notify','1','on');
INSERT INTO `wp_options` VALUES (13,'posts_per_rss','10','on');
INSERT INTO `wp_options` VALUES (14,'rss_use_excerpt','0','on');
INSERT INTO `wp_options` VALUES (15,'mailserver_url','mail.example.com','on');
INSERT INTO `wp_options` VALUES (16,'mailserver_login','login@example.com','on');
INSERT INTO `wp_options` VALUES (17,'mailserver_pass','password','on');
INSERT INTO `wp_options` VALUES (18,'mailserver_port','110','on');
INSERT INTO `wp_options` VALUES (19,'default_category','1','on');
INSERT INTO `wp_options` VALUES (20,'default_comment_status','open','on');
INSERT INTO `wp_options` VALUES (21,'default_ping_status','open','on');
INSERT INTO `wp_options` VALUES (22,'default_pingback_flag','1','on');
INSERT INTO `wp_options` VALUES (23,'posts_per_page','10','on');
INSERT INTO `wp_options` VALUES (24,'date_format','F j, Y','on');
INSERT INTO `wp_options` VALUES (25,'time_format','g:i a','on');
INSERT INTO `wp_options` VALUES (26,'links_updated_date_format','F j, Y g:i a','on');
INSERT INTO `wp_options` VALUES (27,'comment_moderation','0','on');
INSERT INTO `wp_options` VALUES (28,'moderation_notify','1','on');
INSERT INTO `wp_options` VALUES (29,'permalink_structure','/%postname%/','on');
INSERT INTO `wp_options` VALUES (30,'rewrite_rules','a:93:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','on');
INSERT INTO `wp_options` VALUES (31,'hack_file','0','on');
INSERT INTO `wp_options` VALUES (32,'blog_charset','UTF-8','on');
INSERT INTO `wp_options` VALUES (33,'moderation_keys','','off');
INSERT INTO `wp_options` VALUES (34,'active_plugins','a:2:{i:0;s:29:\"wp-mail-smtp/wp_mail_smtp.php\";i:1;s:24:\"wpforms-lite/wpforms.php\";}','on');
INSERT INTO `wp_options` VALUES (35,'category_base','','on');
INSERT INTO `wp_options` VALUES (36,'ping_sites','http://rpc.pingomatic.com/','on');
INSERT INTO `wp_options` VALUES (37,'comment_max_links','2','on');
INSERT INTO `wp_options` VALUES (38,'gmt_offset','0','on');
INSERT INTO `wp_options` VALUES (39,'default_email_category','1','on');
INSERT INTO `wp_options` VALUES (40,'recently_edited','','off');
INSERT INTO `wp_options` VALUES (41,'template','one-business-blocks','on');
INSERT INTO `wp_options` VALUES (42,'stylesheet','one-business-blocks','on');
INSERT INTO `wp_options` VALUES (43,'comment_registration','0','on');
INSERT INTO `wp_options` VALUES (44,'html_type','text/html','on');
INSERT INTO `wp_options` VALUES (45,'use_trackback','0','on');
INSERT INTO `wp_options` VALUES (46,'default_role','subscriber','on');
INSERT INTO `wp_options` VALUES (47,'db_version','57155','on');
INSERT INTO `wp_options` VALUES (48,'uploads_use_yearmonth_folders','1','on');
INSERT INTO `wp_options` VALUES (49,'upload_path','','on');
INSERT INTO `wp_options` VALUES (50,'blog_public','1','on');
INSERT INTO `wp_options` VALUES (51,'default_link_category','2','on');
INSERT INTO `wp_options` VALUES (52,'show_on_front','posts','on');
INSERT INTO `wp_options` VALUES (53,'tag_base','','on');
INSERT INTO `wp_options` VALUES (54,'show_avatars','1','on');
INSERT INTO `wp_options` VALUES (55,'avatar_rating','G','on');
INSERT INTO `wp_options` VALUES (56,'upload_url_path','','on');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_w','150','on');
INSERT INTO `wp_options` VALUES (58,'thumbnail_size_h','150','on');
INSERT INTO `wp_options` VALUES (59,'thumbnail_crop','1','on');
INSERT INTO `wp_options` VALUES (60,'medium_size_w','300','on');
INSERT INTO `wp_options` VALUES (61,'medium_size_h','300','on');
INSERT INTO `wp_options` VALUES (62,'avatar_default','mystery','on');
INSERT INTO `wp_options` VALUES (63,'large_size_w','1024','on');
INSERT INTO `wp_options` VALUES (64,'large_size_h','1024','on');
INSERT INTO `wp_options` VALUES (65,'image_default_link_type','none','on');
INSERT INTO `wp_options` VALUES (66,'image_default_size','','on');
INSERT INTO `wp_options` VALUES (67,'image_default_align','','on');
INSERT INTO `wp_options` VALUES (68,'close_comments_for_old_posts','0','on');
INSERT INTO `wp_options` VALUES (69,'close_comments_days_old','14','on');
INSERT INTO `wp_options` VALUES (70,'thread_comments','1','on');
INSERT INTO `wp_options` VALUES (71,'thread_comments_depth','5','on');
INSERT INTO `wp_options` VALUES (72,'page_comments','0','on');
INSERT INTO `wp_options` VALUES (73,'comments_per_page','50','on');
INSERT INTO `wp_options` VALUES (74,'default_comments_page','newest','on');
INSERT INTO `wp_options` VALUES (75,'comment_order','asc','on');
INSERT INTO `wp_options` VALUES (76,'sticky_posts','a:0:{}','on');
INSERT INTO `wp_options` VALUES (77,'widget_categories','a:0:{}','on');
INSERT INTO `wp_options` VALUES (78,'widget_text','a:0:{}','on');
INSERT INTO `wp_options` VALUES (79,'widget_rss','a:0:{}','on');
INSERT INTO `wp_options` VALUES (80,'uninstall_plugins','a:0:{}','off');
INSERT INTO `wp_options` VALUES (81,'timezone_string','','on');
INSERT INTO `wp_options` VALUES (82,'page_for_posts','0','on');
INSERT INTO `wp_options` VALUES (83,'page_on_front','0','on');
INSERT INTO `wp_options` VALUES (84,'default_post_format','0','on');
INSERT INTO `wp_options` VALUES (85,'link_manager_enabled','0','on');
INSERT INTO `wp_options` VALUES (86,'finished_splitting_shared_terms','1','on');
INSERT INTO `wp_options` VALUES (87,'site_icon','0','on');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_w','768','on');
INSERT INTO `wp_options` VALUES (89,'medium_large_size_h','0','on');
INSERT INTO `wp_options` VALUES (90,'wp_page_for_privacy_policy','3','on');
INSERT INTO `wp_options` VALUES (91,'show_comments_cookies_opt_in','1','on');
INSERT INTO `wp_options` VALUES (92,'admin_email_lifespan','1740415532','on');
INSERT INTO `wp_options` VALUES (93,'disallowed_keys','','off');
INSERT INTO `wp_options` VALUES (94,'comment_previously_approved','1','on');
INSERT INTO `wp_options` VALUES (95,'auto_plugin_theme_update_emails','a:0:{}','off');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_dev','enabled','on');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_minor','enabled','on');
INSERT INTO `wp_options` VALUES (98,'auto_update_core_major','enabled','on');
INSERT INTO `wp_options` VALUES (99,'wp_force_deactivated_plugins','a:0:{}','on');
INSERT INTO `wp_options` VALUES (100,'wp_attachment_pages_enabled','0','on');
INSERT INTO `wp_options` VALUES (101,'initial_db_version','57155','on');
INSERT INTO `wp_options` VALUES (102,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','auto');
INSERT INTO `wp_options` VALUES (103,'fresh_site','0','auto');
INSERT INTO `wp_options` VALUES (104,'user_count','1','off');
INSERT INTO `wp_options` VALUES (105,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (106,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','auto');
INSERT INTO `wp_options` VALUES (107,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (108,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (109,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (114,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (115,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (116,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (117,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (118,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (119,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (120,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (121,'_transient_wp_core_block_css_files','a:2:{s:7:\"version\";s:5:\"6.6.2\";s:5:\"files\";a:496:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:21:\"button/editor-rtl.css\";i:29;s:25:\"button/editor-rtl.min.css\";i:30;s:17:\"button/editor.css\";i:31;s:21:\"button/editor.min.css\";i:32;s:20:\"button/style-rtl.css\";i:33;s:24:\"button/style-rtl.min.css\";i:34;s:16:\"button/style.css\";i:35;s:20:\"button/style.min.css\";i:36;s:22:\"buttons/editor-rtl.css\";i:37;s:26:\"buttons/editor-rtl.min.css\";i:38;s:18:\"buttons/editor.css\";i:39;s:22:\"buttons/editor.min.css\";i:40;s:21:\"buttons/style-rtl.css\";i:41;s:25:\"buttons/style-rtl.min.css\";i:42;s:17:\"buttons/style.css\";i:43;s:21:\"buttons/style.min.css\";i:44;s:22:\"calendar/style-rtl.css\";i:45;s:26:\"calendar/style-rtl.min.css\";i:46;s:18:\"calendar/style.css\";i:47;s:22:\"calendar/style.min.css\";i:48;s:25:\"categories/editor-rtl.css\";i:49;s:29:\"categories/editor-rtl.min.css\";i:50;s:21:\"categories/editor.css\";i:51;s:25:\"categories/editor.min.css\";i:52;s:24:\"categories/style-rtl.css\";i:53;s:28:\"categories/style-rtl.min.css\";i:54;s:20:\"categories/style.css\";i:55;s:24:\"categories/style.min.css\";i:56;s:19:\"code/editor-rtl.css\";i:57;s:23:\"code/editor-rtl.min.css\";i:58;s:15:\"code/editor.css\";i:59;s:19:\"code/editor.min.css\";i:60;s:18:\"code/style-rtl.css\";i:61;s:22:\"code/style-rtl.min.css\";i:62;s:14:\"code/style.css\";i:63;s:18:\"code/style.min.css\";i:64;s:18:\"code/theme-rtl.css\";i:65;s:22:\"code/theme-rtl.min.css\";i:66;s:14:\"code/theme.css\";i:67;s:18:\"code/theme.min.css\";i:68;s:22:\"columns/editor-rtl.css\";i:69;s:26:\"columns/editor-rtl.min.css\";i:70;s:18:\"columns/editor.css\";i:71;s:22:\"columns/editor.min.css\";i:72;s:21:\"columns/style-rtl.css\";i:73;s:25:\"columns/style-rtl.min.css\";i:74;s:17:\"columns/style.css\";i:75;s:21:\"columns/style.min.css\";i:76;s:29:\"comment-content/style-rtl.css\";i:77;s:33:\"comment-content/style-rtl.min.css\";i:78;s:25:\"comment-content/style.css\";i:79;s:29:\"comment-content/style.min.css\";i:80;s:30:\"comment-template/style-rtl.css\";i:81;s:34:\"comment-template/style-rtl.min.css\";i:82;s:26:\"comment-template/style.css\";i:83;s:30:\"comment-template/style.min.css\";i:84;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:85;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:86;s:38:\"comments-pagination-numbers/editor.css\";i:87;s:42:\"comments-pagination-numbers/editor.min.css\";i:88;s:34:\"comments-pagination/editor-rtl.css\";i:89;s:38:\"comments-pagination/editor-rtl.min.css\";i:90;s:30:\"comments-pagination/editor.css\";i:91;s:34:\"comments-pagination/editor.min.css\";i:92;s:33:\"comments-pagination/style-rtl.css\";i:93;s:37:\"comments-pagination/style-rtl.min.css\";i:94;s:29:\"comments-pagination/style.css\";i:95;s:33:\"comments-pagination/style.min.css\";i:96;s:29:\"comments-title/editor-rtl.css\";i:97;s:33:\"comments-title/editor-rtl.min.css\";i:98;s:25:\"comments-title/editor.css\";i:99;s:29:\"comments-title/editor.min.css\";i:100;s:23:\"comments/editor-rtl.css\";i:101;s:27:\"comments/editor-rtl.min.css\";i:102;s:19:\"comments/editor.css\";i:103;s:23:\"comments/editor.min.css\";i:104;s:22:\"comments/style-rtl.css\";i:105;s:26:\"comments/style-rtl.min.css\";i:106;s:18:\"comments/style.css\";i:107;s:22:\"comments/style.min.css\";i:108;s:20:\"cover/editor-rtl.css\";i:109;s:24:\"cover/editor-rtl.min.css\";i:110;s:16:\"cover/editor.css\";i:111;s:20:\"cover/editor.min.css\";i:112;s:19:\"cover/style-rtl.css\";i:113;s:23:\"cover/style-rtl.min.css\";i:114;s:15:\"cover/style.css\";i:115;s:19:\"cover/style.min.css\";i:116;s:22:\"details/editor-rtl.css\";i:117;s:26:\"details/editor-rtl.min.css\";i:118;s:18:\"details/editor.css\";i:119;s:22:\"details/editor.min.css\";i:120;s:21:\"details/style-rtl.css\";i:121;s:25:\"details/style-rtl.min.css\";i:122;s:17:\"details/style.css\";i:123;s:21:\"details/style.min.css\";i:124;s:20:\"embed/editor-rtl.css\";i:125;s:24:\"embed/editor-rtl.min.css\";i:126;s:16:\"embed/editor.css\";i:127;s:20:\"embed/editor.min.css\";i:128;s:19:\"embed/style-rtl.css\";i:129;s:23:\"embed/style-rtl.min.css\";i:130;s:15:\"embed/style.css\";i:131;s:19:\"embed/style.min.css\";i:132;s:19:\"embed/theme-rtl.css\";i:133;s:23:\"embed/theme-rtl.min.css\";i:134;s:15:\"embed/theme.css\";i:135;s:19:\"embed/theme.min.css\";i:136;s:19:\"file/editor-rtl.css\";i:137;s:23:\"file/editor-rtl.min.css\";i:138;s:15:\"file/editor.css\";i:139;s:19:\"file/editor.min.css\";i:140;s:18:\"file/style-rtl.css\";i:141;s:22:\"file/style-rtl.min.css\";i:142;s:14:\"file/style.css\";i:143;s:18:\"file/style.min.css\";i:144;s:23:\"footnotes/style-rtl.css\";i:145;s:27:\"footnotes/style-rtl.min.css\";i:146;s:19:\"footnotes/style.css\";i:147;s:23:\"footnotes/style.min.css\";i:148;s:23:\"freeform/editor-rtl.css\";i:149;s:27:\"freeform/editor-rtl.min.css\";i:150;s:19:\"freeform/editor.css\";i:151;s:23:\"freeform/editor.min.css\";i:152;s:22:\"gallery/editor-rtl.css\";i:153;s:26:\"gallery/editor-rtl.min.css\";i:154;s:18:\"gallery/editor.css\";i:155;s:22:\"gallery/editor.min.css\";i:156;s:21:\"gallery/style-rtl.css\";i:157;s:25:\"gallery/style-rtl.min.css\";i:158;s:17:\"gallery/style.css\";i:159;s:21:\"gallery/style.min.css\";i:160;s:21:\"gallery/theme-rtl.css\";i:161;s:25:\"gallery/theme-rtl.min.css\";i:162;s:17:\"gallery/theme.css\";i:163;s:21:\"gallery/theme.min.css\";i:164;s:20:\"group/editor-rtl.css\";i:165;s:24:\"group/editor-rtl.min.css\";i:166;s:16:\"group/editor.css\";i:167;s:20:\"group/editor.min.css\";i:168;s:19:\"group/style-rtl.css\";i:169;s:23:\"group/style-rtl.min.css\";i:170;s:15:\"group/style.css\";i:171;s:19:\"group/style.min.css\";i:172;s:19:\"group/theme-rtl.css\";i:173;s:23:\"group/theme-rtl.min.css\";i:174;s:15:\"group/theme.css\";i:175;s:19:\"group/theme.min.css\";i:176;s:21:\"heading/style-rtl.css\";i:177;s:25:\"heading/style-rtl.min.css\";i:178;s:17:\"heading/style.css\";i:179;s:21:\"heading/style.min.css\";i:180;s:19:\"html/editor-rtl.css\";i:181;s:23:\"html/editor-rtl.min.css\";i:182;s:15:\"html/editor.css\";i:183;s:19:\"html/editor.min.css\";i:184;s:20:\"image/editor-rtl.css\";i:185;s:24:\"image/editor-rtl.min.css\";i:186;s:16:\"image/editor.css\";i:187;s:20:\"image/editor.min.css\";i:188;s:19:\"image/style-rtl.css\";i:189;s:23:\"image/style-rtl.min.css\";i:190;s:15:\"image/style.css\";i:191;s:19:\"image/style.min.css\";i:192;s:19:\"image/theme-rtl.css\";i:193;s:23:\"image/theme-rtl.min.css\";i:194;s:15:\"image/theme.css\";i:195;s:19:\"image/theme.min.css\";i:196;s:29:\"latest-comments/style-rtl.css\";i:197;s:33:\"latest-comments/style-rtl.min.css\";i:198;s:25:\"latest-comments/style.css\";i:199;s:29:\"latest-comments/style.min.css\";i:200;s:27:\"latest-posts/editor-rtl.css\";i:201;s:31:\"latest-posts/editor-rtl.min.css\";i:202;s:23:\"latest-posts/editor.css\";i:203;s:27:\"latest-posts/editor.min.css\";i:204;s:26:\"latest-posts/style-rtl.css\";i:205;s:30:\"latest-posts/style-rtl.min.css\";i:206;s:22:\"latest-posts/style.css\";i:207;s:26:\"latest-posts/style.min.css\";i:208;s:18:\"list/style-rtl.css\";i:209;s:22:\"list/style-rtl.min.css\";i:210;s:14:\"list/style.css\";i:211;s:18:\"list/style.min.css\";i:212;s:25:\"media-text/editor-rtl.css\";i:213;s:29:\"media-text/editor-rtl.min.css\";i:214;s:21:\"media-text/editor.css\";i:215;s:25:\"media-text/editor.min.css\";i:216;s:24:\"media-text/style-rtl.css\";i:217;s:28:\"media-text/style-rtl.min.css\";i:218;s:20:\"media-text/style.css\";i:219;s:24:\"media-text/style.min.css\";i:220;s:19:\"more/editor-rtl.css\";i:221;s:23:\"more/editor-rtl.min.css\";i:222;s:15:\"more/editor.css\";i:223;s:19:\"more/editor.min.css\";i:224;s:30:\"navigation-link/editor-rtl.css\";i:225;s:34:\"navigation-link/editor-rtl.min.css\";i:226;s:26:\"navigation-link/editor.css\";i:227;s:30:\"navigation-link/editor.min.css\";i:228;s:29:\"navigation-link/style-rtl.css\";i:229;s:33:\"navigation-link/style-rtl.min.css\";i:230;s:25:\"navigation-link/style.css\";i:231;s:29:\"navigation-link/style.min.css\";i:232;s:33:\"navigation-submenu/editor-rtl.css\";i:233;s:37:\"navigation-submenu/editor-rtl.min.css\";i:234;s:29:\"navigation-submenu/editor.css\";i:235;s:33:\"navigation-submenu/editor.min.css\";i:236;s:25:\"navigation/editor-rtl.css\";i:237;s:29:\"navigation/editor-rtl.min.css\";i:238;s:21:\"navigation/editor.css\";i:239;s:25:\"navigation/editor.min.css\";i:240;s:24:\"navigation/style-rtl.css\";i:241;s:28:\"navigation/style-rtl.min.css\";i:242;s:20:\"navigation/style.css\";i:243;s:24:\"navigation/style.min.css\";i:244;s:23:\"nextpage/editor-rtl.css\";i:245;s:27:\"nextpage/editor-rtl.min.css\";i:246;s:19:\"nextpage/editor.css\";i:247;s:23:\"nextpage/editor.min.css\";i:248;s:24:\"page-list/editor-rtl.css\";i:249;s:28:\"page-list/editor-rtl.min.css\";i:250;s:20:\"page-list/editor.css\";i:251;s:24:\"page-list/editor.min.css\";i:252;s:23:\"page-list/style-rtl.css\";i:253;s:27:\"page-list/style-rtl.min.css\";i:254;s:19:\"page-list/style.css\";i:255;s:23:\"page-list/style.min.css\";i:256;s:24:\"paragraph/editor-rtl.css\";i:257;s:28:\"paragraph/editor-rtl.min.css\";i:258;s:20:\"paragraph/editor.css\";i:259;s:24:\"paragraph/editor.min.css\";i:260;s:23:\"paragraph/style-rtl.css\";i:261;s:27:\"paragraph/style-rtl.min.css\";i:262;s:19:\"paragraph/style.css\";i:263;s:23:\"paragraph/style.min.css\";i:264;s:25:\"post-author/style-rtl.css\";i:265;s:29:\"post-author/style-rtl.min.css\";i:266;s:21:\"post-author/style.css\";i:267;s:25:\"post-author/style.min.css\";i:268;s:33:\"post-comments-form/editor-rtl.css\";i:269;s:37:\"post-comments-form/editor-rtl.min.css\";i:270;s:29:\"post-comments-form/editor.css\";i:271;s:33:\"post-comments-form/editor.min.css\";i:272;s:32:\"post-comments-form/style-rtl.css\";i:273;s:36:\"post-comments-form/style-rtl.min.css\";i:274;s:28:\"post-comments-form/style.css\";i:275;s:32:\"post-comments-form/style.min.css\";i:276;s:27:\"post-content/editor-rtl.css\";i:277;s:31:\"post-content/editor-rtl.min.css\";i:278;s:23:\"post-content/editor.css\";i:279;s:27:\"post-content/editor.min.css\";i:280;s:23:\"post-date/style-rtl.css\";i:281;s:27:\"post-date/style-rtl.min.css\";i:282;s:19:\"post-date/style.css\";i:283;s:23:\"post-date/style.min.css\";i:284;s:27:\"post-excerpt/editor-rtl.css\";i:285;s:31:\"post-excerpt/editor-rtl.min.css\";i:286;s:23:\"post-excerpt/editor.css\";i:287;s:27:\"post-excerpt/editor.min.css\";i:288;s:26:\"post-excerpt/style-rtl.css\";i:289;s:30:\"post-excerpt/style-rtl.min.css\";i:290;s:22:\"post-excerpt/style.css\";i:291;s:26:\"post-excerpt/style.min.css\";i:292;s:34:\"post-featured-image/editor-rtl.css\";i:293;s:38:\"post-featured-image/editor-rtl.min.css\";i:294;s:30:\"post-featured-image/editor.css\";i:295;s:34:\"post-featured-image/editor.min.css\";i:296;s:33:\"post-featured-image/style-rtl.css\";i:297;s:37:\"post-featured-image/style-rtl.min.css\";i:298;s:29:\"post-featured-image/style.css\";i:299;s:33:\"post-featured-image/style.min.css\";i:300;s:34:\"post-navigation-link/style-rtl.css\";i:301;s:38:\"post-navigation-link/style-rtl.min.css\";i:302;s:30:\"post-navigation-link/style.css\";i:303;s:34:\"post-navigation-link/style.min.css\";i:304;s:28:\"post-template/editor-rtl.css\";i:305;s:32:\"post-template/editor-rtl.min.css\";i:306;s:24:\"post-template/editor.css\";i:307;s:28:\"post-template/editor.min.css\";i:308;s:27:\"post-template/style-rtl.css\";i:309;s:31:\"post-template/style-rtl.min.css\";i:310;s:23:\"post-template/style.css\";i:311;s:27:\"post-template/style.min.css\";i:312;s:24:\"post-terms/style-rtl.css\";i:313;s:28:\"post-terms/style-rtl.min.css\";i:314;s:20:\"post-terms/style.css\";i:315;s:24:\"post-terms/style.min.css\";i:316;s:24:\"post-title/style-rtl.css\";i:317;s:28:\"post-title/style-rtl.min.css\";i:318;s:20:\"post-title/style.css\";i:319;s:24:\"post-title/style.min.css\";i:320;s:26:\"preformatted/style-rtl.css\";i:321;s:30:\"preformatted/style-rtl.min.css\";i:322;s:22:\"preformatted/style.css\";i:323;s:26:\"preformatted/style.min.css\";i:324;s:24:\"pullquote/editor-rtl.css\";i:325;s:28:\"pullquote/editor-rtl.min.css\";i:326;s:20:\"pullquote/editor.css\";i:327;s:24:\"pullquote/editor.min.css\";i:328;s:23:\"pullquote/style-rtl.css\";i:329;s:27:\"pullquote/style-rtl.min.css\";i:330;s:19:\"pullquote/style.css\";i:331;s:23:\"pullquote/style.min.css\";i:332;s:23:\"pullquote/theme-rtl.css\";i:333;s:27:\"pullquote/theme-rtl.min.css\";i:334;s:19:\"pullquote/theme.css\";i:335;s:23:\"pullquote/theme.min.css\";i:336;s:39:\"query-pagination-numbers/editor-rtl.css\";i:337;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:338;s:35:\"query-pagination-numbers/editor.css\";i:339;s:39:\"query-pagination-numbers/editor.min.css\";i:340;s:31:\"query-pagination/editor-rtl.css\";i:341;s:35:\"query-pagination/editor-rtl.min.css\";i:342;s:27:\"query-pagination/editor.css\";i:343;s:31:\"query-pagination/editor.min.css\";i:344;s:30:\"query-pagination/style-rtl.css\";i:345;s:34:\"query-pagination/style-rtl.min.css\";i:346;s:26:\"query-pagination/style.css\";i:347;s:30:\"query-pagination/style.min.css\";i:348;s:25:\"query-title/style-rtl.css\";i:349;s:29:\"query-title/style-rtl.min.css\";i:350;s:21:\"query-title/style.css\";i:351;s:25:\"query-title/style.min.css\";i:352;s:20:\"query/editor-rtl.css\";i:353;s:24:\"query/editor-rtl.min.css\";i:354;s:16:\"query/editor.css\";i:355;s:20:\"query/editor.min.css\";i:356;s:19:\"quote/style-rtl.css\";i:357;s:23:\"quote/style-rtl.min.css\";i:358;s:15:\"quote/style.css\";i:359;s:19:\"quote/style.min.css\";i:360;s:19:\"quote/theme-rtl.css\";i:361;s:23:\"quote/theme-rtl.min.css\";i:362;s:15:\"quote/theme.css\";i:363;s:19:\"quote/theme.min.css\";i:364;s:23:\"read-more/style-rtl.css\";i:365;s:27:\"read-more/style-rtl.min.css\";i:366;s:19:\"read-more/style.css\";i:367;s:23:\"read-more/style.min.css\";i:368;s:18:\"rss/editor-rtl.css\";i:369;s:22:\"rss/editor-rtl.min.css\";i:370;s:14:\"rss/editor.css\";i:371;s:18:\"rss/editor.min.css\";i:372;s:17:\"rss/style-rtl.css\";i:373;s:21:\"rss/style-rtl.min.css\";i:374;s:13:\"rss/style.css\";i:375;s:17:\"rss/style.min.css\";i:376;s:21:\"search/editor-rtl.css\";i:377;s:25:\"search/editor-rtl.min.css\";i:378;s:17:\"search/editor.css\";i:379;s:21:\"search/editor.min.css\";i:380;s:20:\"search/style-rtl.css\";i:381;s:24:\"search/style-rtl.min.css\";i:382;s:16:\"search/style.css\";i:383;s:20:\"search/style.min.css\";i:384;s:20:\"search/theme-rtl.css\";i:385;s:24:\"search/theme-rtl.min.css\";i:386;s:16:\"search/theme.css\";i:387;s:20:\"search/theme.min.css\";i:388;s:24:\"separator/editor-rtl.css\";i:389;s:28:\"separator/editor-rtl.min.css\";i:390;s:20:\"separator/editor.css\";i:391;s:24:\"separator/editor.min.css\";i:392;s:23:\"separator/style-rtl.css\";i:393;s:27:\"separator/style-rtl.min.css\";i:394;s:19:\"separator/style.css\";i:395;s:23:\"separator/style.min.css\";i:396;s:23:\"separator/theme-rtl.css\";i:397;s:27:\"separator/theme-rtl.min.css\";i:398;s:19:\"separator/theme.css\";i:399;s:23:\"separator/theme.min.css\";i:400;s:24:\"shortcode/editor-rtl.css\";i:401;s:28:\"shortcode/editor-rtl.min.css\";i:402;s:20:\"shortcode/editor.css\";i:403;s:24:\"shortcode/editor.min.css\";i:404;s:24:\"site-logo/editor-rtl.css\";i:405;s:28:\"site-logo/editor-rtl.min.css\";i:406;s:20:\"site-logo/editor.css\";i:407;s:24:\"site-logo/editor.min.css\";i:408;s:23:\"site-logo/style-rtl.css\";i:409;s:27:\"site-logo/style-rtl.min.css\";i:410;s:19:\"site-logo/style.css\";i:411;s:23:\"site-logo/style.min.css\";i:412;s:27:\"site-tagline/editor-rtl.css\";i:413;s:31:\"site-tagline/editor-rtl.min.css\";i:414;s:23:\"site-tagline/editor.css\";i:415;s:27:\"site-tagline/editor.min.css\";i:416;s:25:\"site-title/editor-rtl.css\";i:417;s:29:\"site-title/editor-rtl.min.css\";i:418;s:21:\"site-title/editor.css\";i:419;s:25:\"site-title/editor.min.css\";i:420;s:24:\"site-title/style-rtl.css\";i:421;s:28:\"site-title/style-rtl.min.css\";i:422;s:20:\"site-title/style.css\";i:423;s:24:\"site-title/style.min.css\";i:424;s:26:\"social-link/editor-rtl.css\";i:425;s:30:\"social-link/editor-rtl.min.css\";i:426;s:22:\"social-link/editor.css\";i:427;s:26:\"social-link/editor.min.css\";i:428;s:27:\"social-links/editor-rtl.css\";i:429;s:31:\"social-links/editor-rtl.min.css\";i:430;s:23:\"social-links/editor.css\";i:431;s:27:\"social-links/editor.min.css\";i:432;s:26:\"social-links/style-rtl.css\";i:433;s:30:\"social-links/style-rtl.min.css\";i:434;s:22:\"social-links/style.css\";i:435;s:26:\"social-links/style.min.css\";i:436;s:21:\"spacer/editor-rtl.css\";i:437;s:25:\"spacer/editor-rtl.min.css\";i:438;s:17:\"spacer/editor.css\";i:439;s:21:\"spacer/editor.min.css\";i:440;s:20:\"spacer/style-rtl.css\";i:441;s:24:\"spacer/style-rtl.min.css\";i:442;s:16:\"spacer/style.css\";i:443;s:20:\"spacer/style.min.css\";i:444;s:20:\"table/editor-rtl.css\";i:445;s:24:\"table/editor-rtl.min.css\";i:446;s:16:\"table/editor.css\";i:447;s:20:\"table/editor.min.css\";i:448;s:19:\"table/style-rtl.css\";i:449;s:23:\"table/style-rtl.min.css\";i:450;s:15:\"table/style.css\";i:451;s:19:\"table/style.min.css\";i:452;s:19:\"table/theme-rtl.css\";i:453;s:23:\"table/theme-rtl.min.css\";i:454;s:15:\"table/theme.css\";i:455;s:19:\"table/theme.min.css\";i:456;s:23:\"tag-cloud/style-rtl.css\";i:457;s:27:\"tag-cloud/style-rtl.min.css\";i:458;s:19:\"tag-cloud/style.css\";i:459;s:23:\"tag-cloud/style.min.css\";i:460;s:28:\"template-part/editor-rtl.css\";i:461;s:32:\"template-part/editor-rtl.min.css\";i:462;s:24:\"template-part/editor.css\";i:463;s:28:\"template-part/editor.min.css\";i:464;s:27:\"template-part/theme-rtl.css\";i:465;s:31:\"template-part/theme-rtl.min.css\";i:466;s:23:\"template-part/theme.css\";i:467;s:27:\"template-part/theme.min.css\";i:468;s:30:\"term-description/style-rtl.css\";i:469;s:34:\"term-description/style-rtl.min.css\";i:470;s:26:\"term-description/style.css\";i:471;s:30:\"term-description/style.min.css\";i:472;s:27:\"text-columns/editor-rtl.css\";i:473;s:31:\"text-columns/editor-rtl.min.css\";i:474;s:23:\"text-columns/editor.css\";i:475;s:27:\"text-columns/editor.min.css\";i:476;s:26:\"text-columns/style-rtl.css\";i:477;s:30:\"text-columns/style-rtl.min.css\";i:478;s:22:\"text-columns/style.css\";i:479;s:26:\"text-columns/style.min.css\";i:480;s:19:\"verse/style-rtl.css\";i:481;s:23:\"verse/style-rtl.min.css\";i:482;s:15:\"verse/style.css\";i:483;s:19:\"verse/style.min.css\";i:484;s:20:\"video/editor-rtl.css\";i:485;s:24:\"video/editor-rtl.min.css\";i:486;s:16:\"video/editor.css\";i:487;s:20:\"video/editor.min.css\";i:488;s:19:\"video/style-rtl.css\";i:489;s:23:\"video/style-rtl.min.css\";i:490;s:15:\"video/style.css\";i:491;s:19:\"video/style.min.css\";i:492;s:19:\"video/theme-rtl.css\";i:493;s:23:\"video/theme-rtl.min.css\";i:494;s:15:\"video/theme.css\";i:495;s:19:\"video/theme.min.css\";}}','on');
INSERT INTO `wp_options` VALUES (125,'recovery_keys','a:0:{}','auto');
INSERT INTO `wp_options` VALUES (127,'theme_mods_twentytwentyfour','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1724864601;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','off');
INSERT INTO `wp_options` VALUES (149,'can_compress_scripts','0','on');
INSERT INTO `wp_options` VALUES (152,'finished_updating_comment_type','1','auto');
INSERT INTO `wp_options` VALUES (158,'current_theme','One Business Blocks','auto');
INSERT INTO `wp_options` VALUES (159,'theme_mods_one-business-blocks','a:4:{i:0;b:0;s:19:\"wp_classic_sidebars\";a:0:{}s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}','on');
INSERT INTO `wp_options` VALUES (160,'theme_switched','','auto');
INSERT INTO `wp_options` VALUES (205,'_transient_health-check-site-status-result','{\"good\":16,\"recommended\":2,\"critical\":2}','on');
INSERT INTO `wp_options` VALUES (279,'_site_transient_wp_plugin_dependencies_plugin_data','a:0:{}','off');
INSERT INTO `wp_options` VALUES (280,'recently_activated','a:0:{}','auto');
INSERT INTO `wp_options` VALUES (287,'action_scheduler_hybrid_store_demarkation','11','auto');
INSERT INTO `wp_options` VALUES (288,'schema-ActionScheduler_StoreSchema','7.0.1725682630','auto');
INSERT INTO `wp_options` VALUES (289,'schema-ActionScheduler_LoggerSchema','3.0.1725682631','auto');
INSERT INTO `wp_options` VALUES (290,'wp_mail_smtp_initial_version','4.1.1','off');
INSERT INTO `wp_options` VALUES (291,'wp_mail_smtp_version','4.1.1','off');
INSERT INTO `wp_options` VALUES (292,'wp_mail_smtp','a:19:{s:4:\"mail\";a:6:{s:10:\"from_email\";s:29:\"anjansrivathsav1997@gmail.com\";s:9:\"from_name\";s:15:\"CyberAplhaCloud\";s:6:\"mailer\";s:4:\"smtp\";s:11:\"return_path\";b:0;s:16:\"from_email_force\";b:1;s:15:\"from_name_force\";b:0;}s:4:\"smtp\";a:7:{s:7:\"autotls\";b:1;s:4:\"auth\";b:1;s:4:\"host\";s:14:\"smtp.gmail.com\";s:4:\"port\";i:587;s:10:\"encryption\";s:3:\"tls\";s:4:\"user\";s:29:\"anjansrivathsav1997@gmail.com\";s:4:\"pass\";s:80:\"ICDCgTkc96jT9J74D6kodNnPTo2TOzAvXT3dudieJ4De5C7zBkNEMy98rmbE2MPdqxGB1H6Uda6zpV8=\";}s:7:\"general\";a:1:{s:29:\"summary_report_email_disabled\";b:0;}s:9:\"sendlayer\";a:1:{s:7:\"api_key\";s:0:\"\";}s:7:\"smtpcom\";a:2:{s:7:\"api_key\";s:0:\"\";s:7:\"channel\";s:0:\"\";}s:10:\"sendinblue\";a:2:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";}s:7:\"mailgun\";a:3:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";s:6:\"region\";s:2:\"US\";}s:8:\"sendgrid\";a:2:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";}s:7:\"smtp2go\";a:1:{s:7:\"api_key\";s:0:\"\";}s:9:\"sparkpost\";a:2:{s:7:\"api_key\";s:0:\"\";s:6:\"region\";s:2:\"US\";}s:8:\"postmark\";a:2:{s:16:\"server_api_token\";s:0:\"\";s:14:\"message_stream\";s:0:\"\";}s:9:\"amazonses\";a:3:{s:9:\"client_id\";s:0:\"\";s:13:\"client_secret\";s:0:\"\";s:6:\"region\";s:9:\"us-east-1\";}s:5:\"gmail\";a:8:{s:9:\"client_id\";s:0:\"\";s:13:\"client_secret\";s:0:\"\";s:12:\"access_token\";a:0:{}s:13:\"refresh_token\";s:0:\"\";s:12:\"user_details\";a:1:{s:5:\"email\";s:0:\"\";}s:23:\"one_click_setup_enabled\";b:0;s:27:\"one_click_setup_credentials\";a:2:{s:3:\"key\";s:0:\"\";s:5:\"token\";s:0:\"\";}s:28:\"one_click_setup_user_details\";a:1:{s:5:\"email\";s:0:\"\";}}s:7:\"outlook\";a:5:{s:9:\"client_id\";s:0:\"\";s:13:\"client_secret\";s:0:\"\";s:12:\"access_token\";a:0:{}s:13:\"refresh_token\";s:0:\"\";s:12:\"user_details\";a:1:{s:5:\"email\";s:0:\"\";}}s:4:\"zoho\";a:6:{s:9:\"client_id\";s:0:\"\";s:13:\"client_secret\";s:0:\"\";s:6:\"domain\";s:3:\"com\";s:12:\"access_token\";a:0:{}s:13:\"refresh_token\";s:0:\"\";s:12:\"user_details\";a:1:{s:5:\"email\";s:0:\"\";}}s:4:\"logs\";a:5:{s:7:\"enabled\";b:0;s:17:\"log_email_content\";b:0;s:16:\"save_attachments\";b:0;s:19:\"open_email_tracking\";b:0;s:19:\"click_link_tracking\";b:0;}s:11:\"alert_email\";a:2:{s:7:\"enabled\";b:0;s:11:\"connections\";a:0:{}}s:7:\"license\";a:4:{s:3:\"key\";s:0:\"\";s:10:\"is_expired\";b:0;s:11:\"is_disabled\";b:0;s:10:\"is_invalid\";b:0;}s:12:\"debug_events\";a:2:{s:11:\"email_debug\";b:1;s:16:\"retention_period\";i:0;}}','off');
INSERT INTO `wp_options` VALUES (293,'wp_mail_smtp_activated_time','1725682631','off');
INSERT INTO `wp_options` VALUES (294,'wp_mail_smtp_activated','a:1:{s:4:\"lite\";i:1725682631;}','auto');
INSERT INTO `wp_options` VALUES (299,'action_scheduler_lock_async-request-runner','66ea509d01f237.57373648|1726632153','no');
INSERT INTO `wp_options` VALUES (303,'wp_mail_smtp_migration_version','5','on');
INSERT INTO `wp_options` VALUES (304,'wp_mail_smtp_debug_events_db_version','1','on');
INSERT INTO `wp_options` VALUES (305,'wp_mail_smtp_activation_prevent_redirect','1','auto');
INSERT INTO `wp_options` VALUES (306,'wp_mail_smtp_setup_wizard_stats','a:3:{s:13:\"launched_time\";i:1725682634;s:14:\"completed_time\";i:1725683834;s:14:\"was_successful\";b:0;}','off');
INSERT INTO `wp_options` VALUES (308,'action_scheduler_migration_status','complete','auto');
INSERT INTO `wp_options` VALUES (311,'wp_mail_smtp_notifications','a:4:{s:6:\"update\";i:1728014430;s:4:\"feed\";a:0:{}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}','auto');
INSERT INTO `wp_options` VALUES (319,'wp_mail_smtp_mail_key','MtyOeQ4Ofdtg7nb3RWCb7AHOW4BpCeH7cPfKWTh9pGk=','auto');
INSERT INTO `wp_options` VALUES (321,'wpforms_activation_redirect','1','auto');
INSERT INTO `wp_options` VALUES (322,'wpforms_installation_source','wp-mail-smtp-setup-wizard','auto');
INSERT INTO `wp_options` VALUES (323,'wpforms_version','1.9.0.4','auto');
INSERT INTO `wp_options` VALUES (324,'wpforms_version_lite','1.9.0.4','auto');
INSERT INTO `wp_options` VALUES (325,'wpforms_activated','a:1:{s:4:\"lite\";i:1725683811;}','auto');
INSERT INTO `wp_options` VALUES (330,'wpforms_versions_lite','a:12:{s:5:\"1.5.9\";i:0;s:7:\"1.6.7.2\";i:0;s:5:\"1.6.8\";i:0;s:5:\"1.7.5\";i:0;s:7:\"1.7.5.1\";i:0;s:5:\"1.7.7\";i:0;s:5:\"1.8.2\";i:0;s:5:\"1.8.3\";i:0;s:5:\"1.8.4\";i:0;s:5:\"1.8.6\";i:0;s:5:\"1.8.7\";i:0;s:7:\"1.9.0.4\";i:1725683820;}','auto');
INSERT INTO `wp_options` VALUES (331,'widget_wpforms-widget','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (332,'wpforms_settings','a:3:{s:13:\"modern-markup\";s:1:\"1\";s:20:\"modern-markup-is-set\";b:1;s:26:\"modern-markup-hide-setting\";b:1;}','auto');
INSERT INTO `wp_options` VALUES (333,'wpforms_admin_notices','a:1:{s:14:\"review_request\";a:2:{s:4:\"time\";i:1725683820;s:9:\"dismissed\";b:0;}}','auto');
INSERT INTO `wp_options` VALUES (335,'_wpforms_transient_wpforms_htaccess_file','a:3:{s:4:\"size\";i:737;s:5:\"mtime\";i:1725683833;s:5:\"ctime\";i:1725683833;}','on');
INSERT INTO `wp_options` VALUES (336,'wpforms_email_summaries_fetch_info_blocks_last_run','1728014434','auto');
INSERT INTO `wp_options` VALUES (337,'wpforms_process_forms_locator_status','completed','auto');
INSERT INTO `wp_options` VALUES (338,'wp_mail_smtp_debug','a:0:{}','off');
INSERT INTO `wp_options` VALUES (342,'wp_mail_smtp_review_notice','a:2:{s:4:\"time\";i:1725683839;s:9:\"dismissed\";b:0;}','auto');
INSERT INTO `wp_options` VALUES (347,'wpforms_notifications','a:4:{s:4:\"feed\";a:0:{}s:6:\"events\";a:4:{s:15:\"welcome-message\";a:6:{s:2:\"id\";s:15:\"welcome-message\";s:5:\"title\";s:19:\"Welcome to WPForms!\";s:7:\"content\";s:234:\"We’re grateful that you chose WPForms for your website! Now that you’ve installed the plugin, you’re less than 5 minutes away from publishing your first form. To make it easy, we’ve got 1800+ form templates to get you started!\";s:4:\"btns\";a:2:{s:4:\"main\";a:2:{s:3:\"url\";s:68:\"http://cyberalphacloud.local/wp-admin/admin.php?page=wpforms-builder\";s:4:\"text\";s:14:\"Start Building\";}s:3:\"alt\";a:2:{s:3:\"url\";s:163:\"https://wpforms.com/docs/creating-first-form/?utm_source=WordPress&utm_medium=Event%20Notification&utm_campaign=liteplugin&utm_content=Welcome%20Read%20the%20Guide\";s:4:\"text\";s:14:\"Read the Guide\";}}s:4:\"type\";a:7:{i:0;s:4:\"lite\";i:1;s:5:\"basic\";i:2;s:4:\"plus\";i:3;s:3:\"pro\";i:4;s:6:\"agency\";i:5;s:5:\"elite\";i:6;s:8:\"ultimate\";}s:5:\"start\";s:19:\"2024-09-07 04:37:00\";}s:15:\"join-vip-circle\";a:5:{s:2:\"id\";s:15:\"join-vip-circle\";s:5:\"title\";s:27:\"Want to Be a VIP? Join Now!\";s:7:\"content\";s:326:\"Running a WordPress site can be challenging. But help is just around the corner! Our Facebook group contains tons of tips and help to get your business growing! When you join our VIP Circle, you’ll get instant access to tips, tricks, and answers from a community of loyal WPForms users. Best of all, membership is 100% free!\";s:4:\"btns\";a:1:{s:4:\"main\";a:2:{s:3:\"url\";s:43:\"https://www.facebook.com/groups/wpformsvip/\";s:4:\"text\";s:8:\"Join Now\";}}s:5:\"start\";s:19:\"2024-10-07 04:37:00\";}s:14:\"survey-reports\";a:5:{s:2:\"id\";s:14:\"survey-reports\";s:5:\"title\";s:46:\"Want to Know What Your Customers Really Think?\";s:7:\"content\";s:334:\"Nothing beats real feedback from your customers and visitors. That’s why many small businesses love our awesome Surveys and Polls addon. Instantly unlock full survey reporting right in your WordPress dashboard. And don’t forget: building a survey is easy with our pre-made templates, so you could get started within a few minutes!\";s:4:\"btns\";a:2:{s:4:\"main\";a:1:{s:7:\"license\";a:5:{s:4:\"lite\";a:2:{s:3:\"url\";s:178:\"https://wpforms.com/lite-upgrade/?utm_source=WordPress&utm_medium=Event%20Notification&utm_campaign=liteplugin&utm_content=Surveys%20and%20Polls%20Upgrade%20Lite&utm_locale=en_US\";s:4:\"text\";s:11:\"Upgrade Now\";}s:5:\"basic\";a:2:{s:3:\"url\";s:166:\"https://wpforms.com/account/licenses/?utm_source=WordPress&utm_medium=Event%20Notification&utm_campaign=liteplugin&utm_content=Surveys%20and%20Polls%20Upgrade%20Basic\";s:4:\"text\";s:11:\"Upgrade Now\";}s:4:\"plus\";a:2:{s:3:\"url\";s:166:\"https://wpforms.com/account/licenses/?utm_source=WordPress&utm_medium=Event%20Notification&utm_campaign=liteplugin&utm_content=Surveys%20and%20Polls%20Upgrade%20Basic\";s:4:\"text\";s:11:\"Upgrade Now\";}s:3:\"pro\";a:2:{s:3:\"url\";s:67:\"http://cyberalphacloud.local/wp-admin/admin.php?page=wpforms-addons\";s:4:\"text\";s:11:\"Install Now\";}s:5:\"elite\";a:2:{s:3:\"url\";s:67:\"http://cyberalphacloud.local/wp-admin/admin.php?page=wpforms-addons\";s:4:\"text\";s:11:\"Install Now\";}}}s:3:\"alt\";a:2:{s:3:\"url\";s:202:\"https://wpforms.com/docs/how-to-install-and-use-the-surveys-and-polls-addon/?utm_source=WordPress&utm_medium=Event%20Notification&utm_campaign=liteplugin&utm_content=Surveys%20and%20Polls%20Learn%20More\";s:4:\"text\";s:10:\"Learn More\";}}s:5:\"start\";s:19:\"2024-10-22 04:37:00\";}s:16:\"form-abandonment\";a:5:{s:2:\"id\";s:16:\"form-abandonment\";s:5:\"title\";s:31:\"Get More Leads From Your Forms!\";s:7:\"content\";s:363:\"Are your forms converting fewer visitors than you hoped? Often, visitors quit forms partway through. That can prevent you from getting all the leads you deserve to capture. With our Form Abandonment addon, you can capture partial entries even if your visitor didn’t hit Submit! From there, it’s easy to follow up with leads and turn them into loyal customers.\";s:4:\"btns\";a:2:{s:4:\"main\";a:1:{s:7:\"license\";a:5:{s:4:\"lite\";a:2:{s:3:\"url\";s:175:\"https://wpforms.com/lite-upgrade/?utm_source=WordPress&utm_medium=Event%20Notification&utm_campaign=liteplugin&utm_content=Form%20Abandonment%20Upgrade%20Lite&utm_locale=en_US\";s:4:\"text\";s:11:\"Upgrade Now\";}s:5:\"basic\";a:2:{s:3:\"url\";s:163:\"https://wpforms.com/account/licenses/?utm_source=WordPress&utm_medium=Event%20Notification&utm_campaign=liteplugin&utm_content=Form%20Abandonment%20Upgrade%20Basic\";s:4:\"text\";s:11:\"Upgrade Now\";}s:4:\"plus\";a:2:{s:3:\"url\";s:163:\"https://wpforms.com/account/licenses/?utm_source=WordPress&utm_medium=Event%20Notification&utm_campaign=liteplugin&utm_content=Form%20Abandonment%20Upgrade%20Basic\";s:4:\"text\";s:11:\"Upgrade Now\";}s:3:\"pro\";a:2:{s:3:\"url\";s:67:\"http://cyberalphacloud.local/wp-admin/admin.php?page=wpforms-addons\";s:4:\"text\";s:11:\"Install Now\";}s:5:\"elite\";a:2:{s:3:\"url\";s:67:\"http://cyberalphacloud.local/wp-admin/admin.php?page=wpforms-addons\";s:4:\"text\";s:11:\"Install Now\";}}}s:3:\"alt\";a:2:{s:3:\"url\";s:201:\"https://wpforms.com/docs/how-to-install-and-use-form-abandonment-with-wpforms/?utm_source=WordPress&utm_medium=Event%20Notification&utm_campaign=liteplugin&utm_content=Form%20Abandonment%20Learn%20More\";s:4:\"text\";s:10:\"Learn More\";}}s:5:\"start\";s:19:\"2024-11-06 04:37:00\";}}s:9:\"dismissed\";a:0:{}s:6:\"update\";i:1726551011;}','auto');
INSERT INTO `wp_options` VALUES (366,'wp_mail_smtp_lite_sent_email_counter','16','on');
INSERT INTO `wp_options` VALUES (367,'wp_mail_smtp_lite_weekly_sent_email_counter','a:5:{i:36;i:1;i:37;i:6;i:38;i:5;i:39;i:3;i:40;i:1;}','on');
INSERT INTO `wp_options` VALUES (673,'wp_mail_smtp_summary_report_email_last_sent_week','40','auto');
INSERT INTO `wp_options` VALUES (678,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.6.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.6.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.6.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.6.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.6.2\";s:7:\"version\";s:5:\"6.6.2\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1728015022;s:15:\"version_checked\";s:5:\"6.6.2\";s:12:\"translations\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (680,'auto_core_update_notified','a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:26:\"anjangangishetti@gmail.com\";s:7:\"version\";s:5:\"6.6.2\";s:9:\"timestamp\";i:1726295550;}','off');
INSERT INTO `wp_options` VALUES (787,'dismissed-get_started_notice','1','auto');
INSERT INTO `wp_options` VALUES (922,'wp_calendar_block_has_published_posts','1','auto');
INSERT INTO `wp_options` VALUES (970,'_site_transient_timeout_theme_roots','1728016235','off');
INSERT INTO `wp_options` VALUES (971,'_site_transient_theme_roots','a:4:{s:19:\"one-business-blocks\";s:7:\"/themes\";s:16:\"twentytwentyfour\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}','off');
INSERT INTO `wp_options` VALUES (972,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1728014436;s:7:\"checked\";a:4:{s:19:\"one-business-blocks\";s:3:\"2.0\";s:16:\"twentytwentyfour\";s:3:\"1.2\";s:17:\"twentytwentythree\";s:3:\"1.5\";s:15:\"twentytwentytwo\";s:3:\"1.8\";}s:8:\"response\";a:1:{s:19:\"one-business-blocks\";a:6:{s:5:\"theme\";s:19:\"one-business-blocks\";s:11:\"new_version\";s:3:\"2.2\";s:3:\"url\";s:49:\"https://wordpress.org/themes/one-business-blocks/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/theme/one-business-blocks.2.2.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:3:{s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.2.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.5.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.8.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (973,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1728014436;s:8:\"response\";a:1:{s:24:\"wpforms-lite/wpforms.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:26:\"w.org/plugins/wpforms-lite\";s:4:\"slug\";s:12:\"wpforms-lite\";s:6:\"plugin\";s:24:\"wpforms-lite/wpforms.php\";s:11:\"new_version\";s:7:\"1.9.1.3\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wpforms-lite/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wpforms-lite.1.9.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:57:\"https://ps.w.org/wpforms-lite/assets/icon.svg?rev=2574198\";s:3:\"svg\";s:57:\"https://ps.w.org/wpforms-lite/assets/icon.svg?rev=2574198\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wpforms-lite/assets/banner-1544x500.png?rev=3091364\";s:2:\"1x\";s:67:\"https://ps.w.org/wpforms-lite/assets/banner-772x250.png?rev=3091364\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/wpforms-lite/assets/banner-1544x500-rtl.png?rev=3091364\";s:2:\"1x\";s:71:\"https://ps.w.org/wpforms-lite/assets/banner-772x250-rtl.png?rev=3091364\";}s:8:\"requires\";s:3:\"5.5\";s:6:\"tested\";s:5:\"6.6.2\";s:12:\"requires_php\";s:3:\"7.0\";s:16:\"requires_plugins\";a:0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:29:\"wp-mail-smtp/wp_mail_smtp.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:26:\"w.org/plugins/wp-mail-smtp\";s:4:\"slug\";s:12:\"wp-mail-smtp\";s:6:\"plugin\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:11:\"new_version\";s:5:\"4.1.1\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wp-mail-smtp/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-mail-smtp.4.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-256x256.png?rev=1755440\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-128x128.png?rev=1755440\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wp-mail-smtp/assets/banner-1544x500.jpg?rev=2811094\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-mail-smtp/assets/banner-772x250.jpg?rev=2811094\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.5\";}}s:7:\"checked\";a:2:{s:24:\"wpforms-lite/wpforms.php\";s:7:\"1.9.0.4\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:5:\"4.1.1\";}}','off');
INSERT INTO `wp_options` VALUES (974,'_site_transient_timeout_php_check_1a31e573deff9bf63840fe4b3ef8afb9','1728619236','off');
INSERT INTO `wp_options` VALUES (975,'_site_transient_php_check_1a31e573deff9bf63840fe4b3ef8afb9','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','off');
INSERT INTO `wp_options` VALUES (976,'_site_transient_timeout_wp_theme_files_patterns-5ce64b9061e9e8f1acb4c48454019c2e','1728016247','off');
INSERT INTO `wp_options` VALUES (977,'_site_transient_wp_theme_files_patterns-5ce64b9061e9e8f1acb4c48454019c2e','a:2:{s:7:\"version\";s:3:\"2.0\";s:8:\"patterns\";a:22:{s:7:\"404.php\";a:4:{s:5:\"title\";s:14:\"Page Not Found\";s:4:\"slug\";s:29:\"one-business-blocks/not-found\";s:11:\"description\";s:0:\"\";s:10:\"categories\";a:2:{i:0;s:19:\"one-business-blocks\";i:1;s:9:\"not-found\";}}s:12:\"about-us.php\";a:4:{s:5:\"title\";s:8:\"About Us\";s:4:\"slug\";s:28:\"one-business-blocks/about-us\";s:11:\"description\";s:0:\"\";s:10:\"categories\";a:2:{i:0;s:19:\"one-business-blocks\";i:1;s:8:\"about-us\";}}s:11:\"archive.php\";a:4:{s:5:\"title\";s:8:\"Archives\";s:4:\"slug\";s:27:\"one-business-blocks/archive\";s:11:\"description\";s:0:\"\";s:10:\"categories\";a:2:{i:0;s:19:\"one-business-blocks\";i:1;s:7:\"archive\";}}s:10:\"banner.php\";a:4:{s:5:\"title\";s:6:\"Banner\";s:4:\"slug\";s:26:\"one-business-blocks/banner\";s:11:\"description\";s:0:\"\";s:10:\"categories\";a:2:{i:0;s:19:\"one-business-blocks\";i:1;s:6:\"banner\";}}s:20:\"blog-grid-layout.php\";a:4:{s:5:\"title\";s:16:\"Blog Grid Layout\";s:4:\"slug\";s:36:\"one-business-blocks/blog-grid-layout\";s:11:\"description\";s:0:\"\";s:10:\"categories\";a:2:{i:0;s:19:\"one-business-blocks\";i:1;s:16:\"blog-grid-layout\";}}s:21:\"blog-left-sidebar.php\";a:4:{s:5:\"title\";s:17:\"Blog Left Sidebar\";s:4:\"slug\";s:37:\"one-business-blocks/blog-left-sidebar\";s:11:\"description\";s:0:\"\";s:10:\"categories\";a:2:{i:0;s:19:\"one-business-blocks\";i:1;s:17:\"blog-left-sidebar\";}}s:22:\"blog-right-sidebar.php\";a:4:{s:5:\"title\";s:18:\"Blog Right Sidebar\";s:4:\"slug\";s:38:\"one-business-blocks/blog-right-sidebar\";s:11:\"description\";s:0:\"\";s:10:\"categories\";a:2:{i:0;s:19:\"one-business-blocks\";i:1;s:18:\"blog-right-sidebar\";}}s:8:\"cart.php\";a:4:{s:5:\"title\";s:4:\"Cart\";s:4:\"slug\";s:24:\"one-business-blocks/cart\";s:11:\"description\";s:0:\"\";s:10:\"categories\";a:2:{i:0;s:19:\"one-business-blocks\";i:1;s:4:\"cart\";}}s:10:\"footer.php\";a:4:{s:5:\"title\";s:6:\"Footer\";s:4:\"slug\";s:26:\"one-business-blocks/footer\";s:11:\"description\";s:0:\"\";s:10:\"categories\";a:2:{i:0;s:19:\"one-business-blocks\";i:1;s:6:\"footer\";}}s:16:\"header-image.php\";a:4:{s:5:\"title\";s:12:\"Header Image\";s:4:\"slug\";s:32:\"one-business-blocks/header-image\";s:11:\"description\";s:0:\"\";s:10:\"categories\";a:2:{i:0;s:19:\"one-business-blocks\";i:1;s:12:\"header-image\";}}s:10:\"header.php\";a:4:{s:5:\"title\";s:6:\"Header\";s:4:\"slug\";s:26:\"one-business-blocks/header\";s:11:\"description\";s:0:\"\";s:10:\"categories\";a:2:{i:0;s:19:\"one-business-blocks\";i:1;s:6:\"header\";}}s:15:\"latest-news.php\";a:4:{s:5:\"title\";s:11:\"Latest News\";s:4:\"slug\";s:31:\"one-business-blocks/latest-news\";s:11:\"description\";s:0:\"\";s:10:\"categories\";a:2:{i:0;s:19:\"one-business-blocks\";i:1;s:11:\"latest-news\";}}s:16:\"our-services.php\";a:4:{s:5:\"title\";s:12:\"Our Services\";s:4:\"slug\";s:32:\"one-business-blocks/our-services\";s:11:\"description\";s:0:\"\";s:10:\"categories\";a:2:{i:0;s:19:\"one-business-blocks\";i:1;s:12:\"our-services\";}}s:14:\"our-skills.php\";a:4:{s:5:\"title\";s:10:\"Our Skills\";s:4:\"slug\";s:30:\"one-business-blocks/our-skills\";s:11:\"description\";s:0:\"\";s:10:\"categories\";a:2:{i:0;s:19:\"one-business-blocks\";i:1;s:10:\"our-skills\";}}s:16:\"page-content.php\";a:4:{s:5:\"title\";s:12:\"Page Content\";s:4:\"slug\";s:32:\"one-business-blocks/page-content\";s:11:\"description\";s:0:\"\";s:10:\"categories\";a:2:{i:0;s:19:\"one-business-blocks\";i:1;s:12:\"page-content\";}}s:14:\"page-title.php\";a:4:{s:5:\"title\";s:10:\"Page Title\";s:4:\"slug\";s:30:\"one-business-blocks/page-title\";s:11:\"description\";s:0:\"\";s:10:\"categories\";a:2:{i:0;s:19:\"one-business-blocks\";i:1;s:10:\"page-title\";}}s:16:\"profit-graph.php\";a:4:{s:5:\"title\";s:12:\"Profit Graph\";s:4:\"slug\";s:32:\"one-business-blocks/profit-graph\";s:11:\"description\";s:0:\"\";s:10:\"categories\";a:2:{i:0;s:19:\"one-business-blocks\";i:1;s:12:\"profit-graph\";}}s:11:\"records.php\";a:4:{s:5:\"title\";s:7:\"Records\";s:4:\"slug\";s:27:\"one-business-blocks/records\";s:11:\"description\";s:0:\"\";s:10:\"categories\";a:2:{i:0;s:19:\"one-business-blocks\";i:1;s:7:\"records\";}}s:10:\"search.php\";a:4:{s:5:\"title\";s:6:\"Search\";s:4:\"slug\";s:26:\"one-business-blocks/search\";s:11:\"description\";s:0:\"\";s:10:\"categories\";a:2:{i:0;s:19:\"one-business-blocks\";i:1;s:6:\"search\";}}s:11:\"sidebar.php\";a:4:{s:5:\"title\";s:7:\"Sidebar\";s:4:\"slug\";s:27:\"one-business-blocks/sidebar\";s:11:\"description\";s:0:\"\";s:10:\"categories\";a:2:{i:0;s:19:\"one-business-blocks\";i:1;s:7:\"sidebar\";}}s:10:\"single.php\";a:4:{s:5:\"title\";s:11:\"Single Post\";s:4:\"slug\";s:31:\"one-business-blocks/single-post\";s:11:\"description\";s:0:\"\";s:10:\"categories\";a:2:{i:0;s:19:\"one-business-blocks\";i:1;s:11:\"single-post\";}}s:12:\"trust-us.php\";a:4:{s:5:\"title\";s:8:\"Trust Us\";s:4:\"slug\";s:28:\"one-business-blocks/trust-us\";s:11:\"description\";s:0:\"\";s:10:\"categories\";a:2:{i:0;s:19:\"one-business-blocks\";i:1;s:8:\"trust-us\";}}}}','off');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (6,13,'_edit_lock','1726552603:1');
INSERT INTO `wp_postmeta` VALUES (11,2,'_edit_lock','1726553333:1');
INSERT INTO `wp_postmeta` VALUES (12,3,'_edit_lock','1726552558:1');
INSERT INTO `wp_postmeta` VALUES (13,13,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (14,13,'_wp_trash_meta_time','1726552901');
INSERT INTO `wp_postmeta` VALUES (15,13,'_wp_desired_post_slug','careers');
INSERT INTO `wp_postmeta` VALUES (17,21,'_edit_lock','1726555280:1');
INSERT INTO `wp_postmeta` VALUES (18,21,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (19,21,'_wp_page_template','careers');
INSERT INTO `wp_postmeta` VALUES (20,23,'_edit_lock','1726555862:1');
INSERT INTO `wp_postmeta` VALUES (21,23,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (22,23,'_wp_page_template','contact');
INSERT INTO `wp_postmeta` VALUES (23,25,'_edit_lock','1726610643:1');
INSERT INTO `wp_postmeta` VALUES (24,25,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (25,25,'_wp_page_template','assessment');
INSERT INTO `wp_postmeta` VALUES (26,27,'_edit_lock','1726630996:1');
INSERT INTO `wp_postmeta` VALUES (29,29,'_edit_lock','1726631184:1');
INSERT INTO `wp_postmeta` VALUES (30,29,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (31,29,'_wp_page_template','consulting');
INSERT INTO `wp_postmeta` VALUES (33,32,'_edit_lock','1726631809:1');
INSERT INTO `wp_postmeta` VALUES (34,32,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (35,32,'_wp_page_template','coaching');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2024-08-28 16:45:33','2024-08-28 16:45:33','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2024-08-28 16:45:33','2024-08-28 16:45:33','',0,'http://cyberalphacloud.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2024-08-28 16:45:33','2024-08-28 16:45:33','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://cyberalphacloud.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2024-08-28 16:45:33','2024-08-28 16:45:33','',0,'http://cyberalphacloud.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2024-08-28 16:45:33','2024-08-28 16:45:33','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://cyberalphacloud.local.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n','Privacy Policy','','draft','closed','open','','privacy-policy','','','2024-08-28 16:45:33','2024-08-28 16:45:33','',0,'http://cyberalphacloud.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (4,0,'2024-08-28 16:46:11','2024-08-28 16:46:11','<!-- wp:page-list /-->','Navigation','','publish','closed','closed','','navigation','','','2024-08-28 16:46:11','2024-08-28 16:46:11','',0,'http://cyberalphacloud.local/navigation/',0,'wp_navigation','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2024-08-28 17:09:03','2024-08-28 17:09:03','{\"version\": 3, \"isGlobalStylesUserThemeJSON\": true }','Custom Styles','','publish','closed','closed','','wp-global-styles-one-business-blocks','','','2024-08-28 17:09:03','2024-08-28 17:09:03','',0,'http://cyberalphacloud.local/wp-global-styles-one-business-blocks/',0,'wp_global_styles','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2024-09-07 03:44:24','2024-09-07 03:44:24','{\"version\": 3, \"isGlobalStylesUserThemeJSON\": true }','Custom Styles','','publish','closed','closed','','wp-global-styles-twentytwentyfour','','','2024-09-07 03:44:24','2024-09-07 03:44:24','',0,'http://cyberalphacloud.local/wp-global-styles-twentytwentyfour/',0,'wp_global_styles','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2024-09-17 05:31:00','2024-09-17 05:31:00','<!-- wp:paragraph -->\n<p>This is a sample page data</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','careers','','trash','closed','closed','','careers__trashed','','','2024-09-17 06:01:41','2024-09-17 06:01:41','',0,'http://cyberalphacloud.local/?page_id=13',0,'page','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2024-09-17 05:31:00','2024-09-17 05:31:00','','careers','','inherit','closed','closed','','13-revision-v1','','','2024-09-17 05:31:00','2024-09-17 05:31:00','',13,'http://cyberalphacloud.local/?p=14',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2024-09-17 05:34:52','2024-09-17 05:34:52','<!-- wp:paragraph -->\n<p>This is a sample page data</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','careers','','inherit','closed','closed','','13-revision-v1','','','2024-09-17 05:34:52','2024-09-17 05:34:52','',13,'http://cyberalphacloud.local/?p=16',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2024-09-17 06:27:21','2024-09-17 06:27:21','','Careers','','publish','closed','closed','','careers','','','2024-09-17 06:41:20','2024-09-17 06:41:20','',0,'http://cyberalphacloud.local/?page_id=21',0,'page','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2024-09-17 06:27:21','2024-09-17 06:27:21','','Careers','','inherit','closed','closed','','21-revision-v1','','','2024-09-17 06:27:21','2024-09-17 06:27:21','',21,'http://cyberalphacloud.local/?p=22',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2024-09-17 06:46:47','2024-09-17 06:46:47','','Contact','','publish','closed','closed','','contact','','','2024-09-17 06:51:02','2024-09-17 06:51:02','',0,'http://cyberalphacloud.local/?page_id=23',0,'page','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2024-09-17 06:46:47','2024-09-17 06:46:47','','Contact','','inherit','closed','closed','','23-revision-v1','','','2024-09-17 06:46:47','2024-09-17 06:46:47','',23,'http://cyberalphacloud.local/?p=24',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2024-09-17 22:01:39','2024-09-17 22:01:39','','Assessment','','publish','closed','closed','','assessment','','','2024-09-17 22:04:03','2024-09-17 22:04:03','',0,'http://cyberalphacloud.local/?page_id=25',0,'page','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2024-09-17 22:01:39','2024-09-17 22:01:39','','Assessment','','inherit','closed','closed','','25-revision-v1','','','2024-09-17 22:01:39','2024-09-17 22:01:39','',25,'http://cyberalphacloud.local/?p=26',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2024-09-18 03:45:38','2024-09-18 03:45:38','','consulting','','publish','open','open','','consulting','','','2024-09-18 03:45:38','2024-09-18 03:45:38','',0,'http://cyberalphacloud.local/?p=27',0,'post','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2024-09-18 03:45:38','2024-09-18 03:45:38','','consulting','','inherit','closed','closed','','27-revision-v1','','','2024-09-18 03:45:38','2024-09-18 03:45:38','',27,'http://cyberalphacloud.local/?p=28',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2024-09-18 03:46:12','2024-09-18 03:46:12','','Consulting','','publish','closed','closed','','consulting','','','2024-09-18 03:46:24','2024-09-18 03:46:24','',0,'http://cyberalphacloud.local/?page_id=29',0,'page','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2024-09-18 03:46:12','2024-09-18 03:46:12','','Consulting','','inherit','closed','closed','','29-revision-v1','','','2024-09-18 03:46:12','2024-09-18 03:46:12','',29,'http://cyberalphacloud.local/?p=30',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2024-09-18 03:56:36','2024-09-18 03:56:36','','Coaching','','publish','closed','closed','','coaching','','','2024-09-18 03:56:49','2024-09-18 03:56:49','',0,'http://cyberalphacloud.local/?page_id=32',0,'page','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2024-09-18 03:56:36','2024-09-18 03:56:36','','Coaching','','inherit','closed','closed','','32-revision-v1','','','2024-09-18 03:56:36','2024-09-18 03:56:36','',32,'http://cyberalphacloud.local/?p=33',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (7,2,0);
INSERT INTO `wp_term_relationships` VALUES (9,3,0);
INSERT INTO `wp_term_relationships` VALUES (27,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'wp_theme','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'wp_theme','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
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
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'one-business-blocks','one-business-blocks',0);
INSERT INTO `wp_terms` VALUES (3,'twentytwentyfour','twentytwentyfour',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','anjangangishetti');
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
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','11');
INSERT INTO `wp_usermeta` VALUES (19,1,'wp_persisted_preferences','a:3:{s:4:\"core\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:10:\"editorMode\";s:6:\"visual\";}s:14:\"core/edit-post\";a:1:{s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2024-09-17T05:47:46.847Z\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
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
INSERT INTO `wp_users` VALUES (1,'anjangangishetti','$P$B.xIPtpJGK0yGUy/p6nNdSFjdXqrDT0','anjangangishetti','anjangangishetti@gmail.com','http://cyberalphacloud.local','2024-08-28 16:45:33','',0,'anjangangishetti');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpforms_logs`
--

DROP TABLE IF EXISTS `wp_wpforms_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpforms_logs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `types` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `create_at` datetime NOT NULL,
  `form_id` bigint(20) DEFAULT NULL,
  `entry_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpforms_logs`
--

LOCK TABLES `wp_wpforms_logs` WRITE;
/*!40000 ALTER TABLE `wp_wpforms_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpforms_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpforms_payment_meta`
--

DROP TABLE IF EXISTS `wp_wpforms_payment_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpforms_payment_meta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `payment_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`),
  KEY `payment_id` (`payment_id`),
  KEY `meta_key` (`meta_key`(191)),
  KEY `meta_value` (`meta_value`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpforms_payment_meta`
--

LOCK TABLES `wp_wpforms_payment_meta` WRITE;
/*!40000 ALTER TABLE `wp_wpforms_payment_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpforms_payment_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpforms_payments`
--

DROP TABLE IF EXISTS `wp_wpforms_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpforms_payments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `form_id` bigint(20) NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `subtotal_amount` decimal(26,8) NOT NULL DEFAULT '0.00000000',
  `discount_amount` decimal(26,8) NOT NULL DEFAULT '0.00000000',
  `total_amount` decimal(26,8) NOT NULL DEFAULT '0.00000000',
  `currency` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `entry_id` bigint(20) NOT NULL DEFAULT '0',
  `gateway` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `type` varchar(12) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `mode` varchar(4) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `transaction_id` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `customer_id` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `subscription_id` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `subscription_status` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `date_created_gmt` datetime NOT NULL,
  `date_updated_gmt` datetime NOT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `status` (`status`(8)),
  KEY `total_amount` (`total_amount`),
  KEY `type` (`type`(8)),
  KEY `transaction_id` (`transaction_id`(32)),
  KEY `customer_id` (`customer_id`(32)),
  KEY `subscription_id` (`subscription_id`(32)),
  KEY `subscription_status` (`subscription_status`(8)),
  KEY `title` (`title`(64))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpforms_payments`
--

LOCK TABLES `wp_wpforms_payments` WRITE;
/*!40000 ALTER TABLE `wp_wpforms_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpforms_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpforms_tasks_meta`
--

DROP TABLE IF EXISTS `wp_wpforms_tasks_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpforms_tasks_meta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `action` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpforms_tasks_meta`
--

LOCK TABLES `wp_wpforms_tasks_meta` WRITE;
/*!40000 ALTER TABLE `wp_wpforms_tasks_meta` DISABLE KEYS */;
INSERT INTO `wp_wpforms_tasks_meta` VALUES (1,'wpforms_process_forms_locator_scan','W10=','2024-09-07 04:37:00');
/*!40000 ALTER TABLE `wp_wpforms_tasks_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpmailsmtp_debug_events`
--

DROP TABLE IF EXISTS `wp_wpmailsmtp_debug_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpmailsmtp_debug_events` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8mb4_unicode_520_ci,
  `initiator` text COLLATE utf8mb4_unicode_520_ci,
  `event_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpmailsmtp_debug_events`
--

LOCK TABLES `wp_wpmailsmtp_debug_events` WRITE;
/*!40000 ALTER TABLE `wp_wpmailsmtp_debug_events` DISABLE KEYS */;
INSERT INTO `wp_wpmailsmtp_debug_events` VALUES (1,'Mailer: Other SMTP\r\nSMTP Error: Could not authenticate.','{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\plugins\\\\wp-mail-smtp\\\\src\\\\Admin\\\\SetupWizard.php\",\"line\":1218}',0,'2024-09-07 08:37:14');
INSERT INTO `wp_wpmailsmtp_debug_events` VALUES (2,'Mailer: Other SMTP\r\nSMTP Error: Could not authenticate.','{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\plugins\\\\wp-mail-smtp\\\\src\\\\Admin\\\\Pages\\\\TestTab.php\",\"line\":351}',0,'2024-09-07 08:37:20');
INSERT INTO `wp_wpmailsmtp_debug_events` VALUES (3,'Mailer: Other SMTP\r\nYou must provide at least one recipient email address.','{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\themes\\\\one-business-blocks\\\\functions.php\",\"line\":190}',0,'2024-09-07 08:39:29');
INSERT INTO `wp_wpmailsmtp_debug_events` VALUES (4,'Mailer: Other SMTP\r\nYou must provide at least one recipient email address.','{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\themes\\\\one-business-blocks\\\\functions.php\",\"line\":190}',0,'2024-09-07 08:43:18');
INSERT INTO `wp_wpmailsmtp_debug_events` VALUES (5,'Mailer: Other SMTP\r\nYou must provide at least one recipient email address.','{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\themes\\\\one-business-blocks\\\\functions.php\",\"line\":190}',0,'2024-09-07 08:48:17');
INSERT INTO `wp_wpmailsmtp_debug_events` VALUES (6,'Mailer: Other SMTP\r\nYou must provide at least one recipient email address.','{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\themes\\\\one-business-blocks\\\\functions.php\",\"line\":190,\"backtrace\":[{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\themes\\\\one-business-blocks\\\\functions.php\",\"line\":190,\"function\":\"wp_mail\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp-hook.php\",\"line\":324,\"function\":\"handle_form_submission_styled\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp-hook.php\",\"line\":348,\"function\":\"apply_filters\",\"class\":\"WP_Hook\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\plugin.php\",\"line\":565,\"function\":\"do_action\",\"class\":\"WP_Hook\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp.php\",\"line\":830,\"function\":\"do_action_ref_array\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\functions.php\",\"line\":1336,\"function\":\"main\",\"class\":\"WP\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-blog-header.php\",\"line\":16,\"function\":\"wp\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\index.php\",\"line\":17,\"args\":[\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-blog-header.php\"],\"function\":\"require\"}]}',0,'2024-09-07 08:48:52');
INSERT INTO `wp_wpmailsmtp_debug_events` VALUES (7,'Mailer: Other SMTP\r\nSMTP Error: Could not authenticate.','{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\themes\\\\one-business-blocks\\\\functions.php\",\"line\":190,\"backtrace\":[{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\themes\\\\one-business-blocks\\\\functions.php\",\"line\":190,\"function\":\"wp_mail\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp-hook.php\",\"line\":324,\"function\":\"handle_form_submission_styled\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp-hook.php\",\"line\":348,\"function\":\"apply_filters\",\"class\":\"WP_Hook\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\plugin.php\",\"line\":565,\"function\":\"do_action\",\"class\":\"WP_Hook\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp.php\",\"line\":830,\"function\":\"do_action_ref_array\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\functions.php\",\"line\":1336,\"function\":\"main\",\"class\":\"WP\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-blog-header.php\",\"line\":16,\"function\":\"wp\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\index.php\",\"line\":17,\"args\":[\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-blog-header.php\"],\"function\":\"require\"}]}',0,'2024-09-07 08:50:14');
INSERT INTO `wp_wpmailsmtp_debug_events` VALUES (8,'Mailer: Other SMTP\r\nSMTP Error: Could not authenticate.\r\nDebug Output:\r\nConnection: opening to smtp.gmail.com:587, timeout=30, options=array()\r\nConnection: opened\r\nSERVER -> CLIENT: 220 smtp.gmail.com ESMTP af79cd13be357-7a9a7a283adsm18330485a.129 - gsmtp\r\nCLIENT -> SERVER: EHLO cyberaplhacloud.local\r\nSERVER -> CLIENT: 250-smtp.gmail.com at your service, [2607:9880:3227:ff0e:d4f3:6332:4cbb:309f]\r\n250-SIZE 35882577\r\n250-8BITMIME\r\n250-STARTTLS\r\n250-ENHANCEDSTATUSCODES\r\n250-PIPELINING\r\n250-CHUNKING\r\n250 SMTPUTF8\r\nCLIENT -> SERVER: STARTTLS\r\nSERVER -> CLIENT: 220 2.0.0 Ready to start TLS\r\nCLIENT -> SERVER: EHLO cyberaplhacloud.local\r\nSERVER -> CLIENT: 250-smtp.gmail.com at your service, [2607:9880:3227:ff0e:d4f3:6332:4cbb:309f]\r\n250-SIZE 35882577\r\n250-8BITMIME\r\n250-AUTH LOGIN PLAIN XOAUTH2 PLAIN-CLIENTTOKEN OAUTHBEARER XOAUTH\r\n250-ENHANCEDSTATUSCODES\r\n250-PIPELINING\r\n250-CHUNKING\r\n250 SMTPUTF8\r\nCLIENT -> SERVER: AUTH LOGIN\r\nSERVER -> CLIENT: 334 VXNlcm5hbWU6\r\nCLIENT -> SERVER: [credentials hidden]\r\nSERVER -> CLIENT: 334 UGFzc3dvcmQ6\r\nCLIENT -> SERVER: [credentials hidden]\r\nSERVER -> CLIENT: 534-5.7.9 Application-specific password required. For more information, go to\r\n534 5.7.9  https://support.google.com/mail/?p=InvalidSecondFactor af79cd13be357-7a9a7a283adsm18330485a.129 - gsmtp\r\nSMTP ERROR: Password command failed: 534-5.7.9 Application-specific password required. For more information, go to\r\n534 5.7.9  https://support.google.com/mail/?p=InvalidSecondFactor af79cd13be357-7a9a7a283adsm18330485a.129 - gsmtp\r\nSMTP Error: Could not authenticate.\r\nCLIENT -> SERVER: QUIT\r\nSERVER -> CLIENT: 221 2.0.0 closing connection af79cd13be357-7a9a7a283adsm18330485a.129 - gsmtp\r\nConnection: closed\r\nSMTP Error: Could not authenticate.','{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\themes\\\\one-business-blocks\\\\functions.php\",\"line\":190,\"backtrace\":[{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\themes\\\\one-business-blocks\\\\functions.php\",\"line\":190,\"function\":\"wp_mail\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp-hook.php\",\"line\":324,\"function\":\"handle_form_submission_styled\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp-hook.php\",\"line\":348,\"function\":\"apply_filters\",\"class\":\"WP_Hook\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\plugin.php\",\"line\":565,\"function\":\"do_action\",\"class\":\"WP_Hook\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp.php\",\"line\":830,\"function\":\"do_action_ref_array\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\functions.php\",\"line\":1336,\"function\":\"main\",\"class\":\"WP\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-blog-header.php\",\"line\":16,\"function\":\"wp\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\index.php\",\"line\":17,\"args\":[\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-blog-header.php\"],\"function\":\"require\"}]}',1,'2024-09-07 08:50:14');
INSERT INTO `wp_wpmailsmtp_debug_events` VALUES (9,'An email request was sent.','{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\themes\\\\one-business-blocks\\\\functions.php\",\"line\":190,\"backtrace\":[{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\themes\\\\one-business-blocks\\\\functions.php\",\"line\":190,\"function\":\"wp_mail\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp-hook.php\",\"line\":324,\"function\":\"handle_form_submission_styled\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp-hook.php\",\"line\":348,\"function\":\"apply_filters\",\"class\":\"WP_Hook\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\plugin.php\",\"line\":565,\"function\":\"do_action\",\"class\":\"WP_Hook\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp.php\",\"line\":830,\"function\":\"do_action_ref_array\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\functions.php\",\"line\":1336,\"function\":\"main\",\"class\":\"WP\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-blog-header.php\",\"line\":16,\"function\":\"wp\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\index.php\",\"line\":17,\"args\":[\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-blog-header.php\"],\"function\":\"require\"}]}',1,'2024-09-07 08:55:08');
INSERT INTO `wp_wpmailsmtp_debug_events` VALUES (10,'An email request was sent.','{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\plugins\\\\wp-mail-smtp\\\\src\\\\Reports\\\\Emails\\\\Summary.php\",\"line\":112,\"backtrace\":[{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\plugins\\\\wp-mail-smtp\\\\src\\\\Reports\\\\Emails\\\\Summary.php\",\"line\":112,\"function\":\"wp_mail\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\plugins\\\\wp-mail-smtp\\\\src\\\\Tasks\\\\Reports\\\\SummaryEmailTask.php\",\"line\":81,\"function\":\"send\",\"class\":\"WPMailSMTP\\\\Reports\\\\Emails\\\\Summary\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp-hook.php\",\"line\":324,\"function\":\"process\",\"class\":\"WPMailSMTP\\\\Tasks\\\\Reports\\\\SummaryEmailTask\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp-hook.php\",\"line\":348,\"function\":\"apply_filters\",\"class\":\"WP_Hook\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\plugin.php\",\"line\":565,\"function\":\"do_action\",\"class\":\"WP_Hook\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\plugins\\\\wpforms-lite\\\\vendor\\\\woocommerce\\\\action-scheduler\\\\classes\\\\actions\\\\ActionScheduler_Action.php\",\"line\":56,\"function\":\"do_action_ref_array\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\plugins\\\\wpforms-lite\\\\vendor\\\\woocommerce\\\\action-scheduler\\\\classes\\\\abstracts\\\\ActionScheduler_Abstract_QueueRunner.php\",\"line\":88,\"function\":\"execute\",\"class\":\"ActionScheduler_Action\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\plugins\\\\wpforms-lite\\\\vendor\\\\woocommerce\\\\action-scheduler\\\\classes\\\\ActionScheduler_QueueRunner.php\",\"line\":169,\"function\":\"process_action\",\"class\":\"ActionScheduler_Abstract_QueueRunner\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\plugins\\\\wpforms-lite\\\\vendor\\\\woocommerce\\\\action-scheduler\\\\classes\\\\ActionScheduler_QueueRunner.php\",\"line\":139,\"function\":\"do_batch\",\"class\":\"ActionScheduler_QueueRunner\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp-hook.php\",\"line\":324,\"function\":\"run\",\"class\":\"ActionScheduler_QueueRunner\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp-hook.php\",\"line\":348,\"function\":\"apply_filters\",\"class\":\"WP_Hook\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\plugin.php\",\"line\":565,\"function\":\"do_action\",\"class\":\"WP_Hook\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-cron.php\",\"line\":191,\"function\":\"do_action_ref_array\"}]}',1,'2024-09-14 10:32:18');
INSERT INTO `wp_wpmailsmtp_debug_events` VALUES (11,'An email request was sent.','{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-admin\\\\includes\\\\class-wp-automatic-updater.php\",\"line\":1141,\"backtrace\":[{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-admin\\\\includes\\\\class-wp-automatic-updater.php\",\"line\":1141,\"function\":\"wp_mail\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-admin\\\\includes\\\\class-wp-automatic-updater.php\",\"line\":804,\"function\":\"send_email\",\"class\":\"WP_Automatic_Updater\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-admin\\\\includes\\\\class-wp-automatic-updater.php\",\"line\":771,\"function\":\"after_core_update\",\"class\":\"WP_Automatic_Updater\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\update.php\",\"line\":855,\"function\":\"run\",\"class\":\"WP_Automatic_Updater\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp-hook.php\",\"line\":324,\"function\":\"wp_maybe_auto_update\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp-hook.php\",\"line\":348,\"function\":\"apply_filters\",\"class\":\"WP_Hook\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\plugin.php\",\"line\":517,\"function\":\"do_action\",\"class\":\"WP_Hook\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\update.php\",\"line\":293,\"function\":\"do_action\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp-hook.php\",\"line\":324,\"function\":\"wp_version_check\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp-hook.php\",\"line\":348,\"function\":\"apply_filters\",\"class\":\"WP_Hook\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\plugin.php\",\"line\":565,\"function\":\"do_action\",\"class\":\"WP_Hook\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-cron.php\",\"line\":191,\"function\":\"do_action_ref_array\"}]}',1,'2024-09-14 10:32:31');
INSERT INTO `wp_wpmailsmtp_debug_events` VALUES (12,'An email request was sent.','{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\themes\\\\one-business-blocks\\\\functions.php\",\"line\":190,\"backtrace\":[{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\themes\\\\one-business-blocks\\\\functions.php\",\"line\":190,\"function\":\"wp_mail\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp-hook.php\",\"line\":324,\"function\":\"handle_form_submission_styled\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp-hook.php\",\"line\":348,\"function\":\"apply_filters\",\"class\":\"WP_Hook\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\plugin.php\",\"line\":565,\"function\":\"do_action\",\"class\":\"WP_Hook\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp.php\",\"line\":830,\"function\":\"do_action_ref_array\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\functions.php\",\"line\":1336,\"function\":\"main\",\"class\":\"WP\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-blog-header.php\",\"line\":16,\"function\":\"wp\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\index.php\",\"line\":17,\"args\":[\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-blog-header.php\"],\"function\":\"require\"}]}',1,'2024-09-14 10:42:27');
INSERT INTO `wp_wpmailsmtp_debug_events` VALUES (13,'An email request was sent.','{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\themes\\\\one-business-blocks\\\\functions.php\",\"line\":191,\"backtrace\":[{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\themes\\\\one-business-blocks\\\\functions.php\",\"line\":191,\"function\":\"wp_mail\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp-hook.php\",\"line\":324,\"function\":\"handle_form_submission_styled\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp-hook.php\",\"line\":348,\"function\":\"apply_filters\",\"class\":\"WP_Hook\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\plugin.php\",\"line\":565,\"function\":\"do_action\",\"class\":\"WP_Hook\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp.php\",\"line\":830,\"function\":\"do_action_ref_array\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\functions.php\",\"line\":1336,\"function\":\"main\",\"class\":\"WP\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-blog-header.php\",\"line\":16,\"function\":\"wp\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\index.php\",\"line\":17,\"args\":[\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-blog-header.php\"],\"function\":\"require\"}]}',1,'2024-09-14 10:48:30');
INSERT INTO `wp_wpmailsmtp_debug_events` VALUES (14,'An email request was sent.','{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\themes\\\\one-business-blocks\\\\functions.php\",\"line\":191,\"backtrace\":[{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\themes\\\\one-business-blocks\\\\functions.php\",\"line\":191,\"function\":\"wp_mail\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp-hook.php\",\"line\":324,\"function\":\"handle_form_submission_styled\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp-hook.php\",\"line\":348,\"function\":\"apply_filters\",\"class\":\"WP_Hook\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\plugin.php\",\"line\":565,\"function\":\"do_action\",\"class\":\"WP_Hook\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp.php\",\"line\":830,\"function\":\"do_action_ref_array\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\functions.php\",\"line\":1336,\"function\":\"main\",\"class\":\"WP\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-blog-header.php\",\"line\":16,\"function\":\"wp\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\index.php\",\"line\":17,\"args\":[\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-blog-header.php\"],\"function\":\"require\"}]}',1,'2024-09-14 10:51:56');
INSERT INTO `wp_wpmailsmtp_debug_events` VALUES (15,'An email request was sent.','{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\themes\\\\one-business-blocks\\\\functions.php\",\"line\":191,\"backtrace\":[{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\themes\\\\one-business-blocks\\\\functions.php\",\"line\":191,\"function\":\"wp_mail\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp-hook.php\",\"line\":324,\"function\":\"handle_form_submission_styled\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp-hook.php\",\"line\":348,\"function\":\"apply_filters\",\"class\":\"WP_Hook\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\plugin.php\",\"line\":565,\"function\":\"do_action\",\"class\":\"WP_Hook\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp.php\",\"line\":830,\"function\":\"do_action_ref_array\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\functions.php\",\"line\":1336,\"function\":\"main\",\"class\":\"WP\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-blog-header.php\",\"line\":16,\"function\":\"wp\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\index.php\",\"line\":17,\"args\":[\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-blog-header.php\"],\"function\":\"require\"}]}',1,'2024-09-14 10:55:04');
INSERT INTO `wp_wpmailsmtp_debug_events` VALUES (16,'An email request was sent.','{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\themes\\\\one-business-blocks\\\\functions.php\",\"line\":310,\"backtrace\":[{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\themes\\\\one-business-blocks\\\\functions.php\",\"line\":310,\"function\":\"wp_mail\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp-hook.php\",\"line\":324,\"function\":\"handle_career_application_submission\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp-hook.php\",\"line\":348,\"function\":\"apply_filters\",\"class\":\"WP_Hook\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\plugin.php\",\"line\":565,\"function\":\"do_action\",\"class\":\"WP_Hook\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp.php\",\"line\":830,\"function\":\"do_action_ref_array\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\functions.php\",\"line\":1336,\"function\":\"main\",\"class\":\"WP\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-blog-header.php\",\"line\":16,\"function\":\"wp\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\index.php\",\"line\":17,\"args\":[\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-blog-header.php\"],\"function\":\"require\"}]}',1,'2024-09-17 08:49:10');
INSERT INTO `wp_wpmailsmtp_debug_events` VALUES (17,'An email request was sent.','{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\themes\\\\one-business-blocks\\\\functions.php\",\"line\":313,\"backtrace\":[{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\themes\\\\one-business-blocks\\\\functions.php\",\"line\":313,\"function\":\"wp_mail\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp-hook.php\",\"line\":324,\"function\":\"handle_career_application_submission\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp-hook.php\",\"line\":348,\"function\":\"apply_filters\",\"class\":\"WP_Hook\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\plugin.php\",\"line\":565,\"function\":\"do_action\",\"class\":\"WP_Hook\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp.php\",\"line\":830,\"function\":\"do_action_ref_array\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\functions.php\",\"line\":1336,\"function\":\"main\",\"class\":\"WP\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-blog-header.php\",\"line\":16,\"function\":\"wp\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\index.php\",\"line\":17,\"args\":[\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-blog-header.php\"],\"function\":\"require\"}]}',1,'2024-09-17 09:05:31');
INSERT INTO `wp_wpmailsmtp_debug_events` VALUES (18,'An email request was sent.','{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\themes\\\\one-business-blocks\\\\functions.php\",\"line\":312,\"backtrace\":[{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\themes\\\\one-business-blocks\\\\functions.php\",\"line\":312,\"function\":\"wp_mail\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp-hook.php\",\"line\":324,\"function\":\"handle_career_application_submission\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp-hook.php\",\"line\":348,\"function\":\"apply_filters\",\"class\":\"WP_Hook\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\plugin.php\",\"line\":565,\"function\":\"do_action\",\"class\":\"WP_Hook\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp.php\",\"line\":830,\"function\":\"do_action_ref_array\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\functions.php\",\"line\":1336,\"function\":\"main\",\"class\":\"WP\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-blog-header.php\",\"line\":16,\"function\":\"wp\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\index.php\",\"line\":17,\"args\":[\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-blog-header.php\"],\"function\":\"require\"}]}',1,'2024-09-17 09:09:09');
INSERT INTO `wp_wpmailsmtp_debug_events` VALUES (19,'An email request was sent.','{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\themes\\\\one-business-blocks\\\\functions.php\",\"line\":315,\"backtrace\":[{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\themes\\\\one-business-blocks\\\\functions.php\",\"line\":315,\"function\":\"wp_mail\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp-hook.php\",\"line\":324,\"function\":\"handle_career_application_submission\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp-hook.php\",\"line\":348,\"function\":\"apply_filters\",\"class\":\"WP_Hook\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\plugin.php\",\"line\":565,\"function\":\"do_action\",\"class\":\"WP_Hook\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp.php\",\"line\":830,\"function\":\"do_action_ref_array\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\functions.php\",\"line\":1336,\"function\":\"main\",\"class\":\"WP\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-blog-header.php\",\"line\":16,\"function\":\"wp\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\index.php\",\"line\":17,\"args\":[\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-blog-header.php\"],\"function\":\"require\"}]}',1,'2024-09-17 10:43:19');
INSERT INTO `wp_wpmailsmtp_debug_events` VALUES (20,'An email request was sent.','{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\themes\\\\one-business-blocks\\\\functions.php\",\"line\":262,\"backtrace\":[{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\themes\\\\one-business-blocks\\\\functions.php\",\"line\":262,\"function\":\"wp_mail\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp-hook.php\",\"line\":324,\"function\":\"handle_form_submission_styled\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp-hook.php\",\"line\":348,\"function\":\"apply_filters\",\"class\":\"WP_Hook\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\plugin.php\",\"line\":565,\"function\":\"do_action\",\"class\":\"WP_Hook\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp.php\",\"line\":830,\"function\":\"do_action_ref_array\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\functions.php\",\"line\":1336,\"function\":\"main\",\"class\":\"WP\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-blog-header.php\",\"line\":16,\"function\":\"wp\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\index.php\",\"line\":17,\"args\":[\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-blog-header.php\"],\"function\":\"require\"}]}',1,'2024-09-18 08:03:58');
INSERT INTO `wp_wpmailsmtp_debug_events` VALUES (21,'An email request was sent.','{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\plugins\\\\wp-mail-smtp\\\\src\\\\Reports\\\\Emails\\\\Summary.php\",\"line\":112,\"backtrace\":[{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\plugins\\\\wp-mail-smtp\\\\src\\\\Reports\\\\Emails\\\\Summary.php\",\"line\":112,\"function\":\"wp_mail\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\plugins\\\\wp-mail-smtp\\\\src\\\\Tasks\\\\Reports\\\\SummaryEmailTask.php\",\"line\":81,\"function\":\"send\",\"class\":\"WPMailSMTP\\\\Reports\\\\Emails\\\\Summary\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp-hook.php\",\"line\":324,\"function\":\"process\",\"class\":\"WPMailSMTP\\\\Tasks\\\\Reports\\\\SummaryEmailTask\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp-hook.php\",\"line\":348,\"function\":\"apply_filters\",\"class\":\"WP_Hook\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\plugin.php\",\"line\":565,\"function\":\"do_action\",\"class\":\"WP_Hook\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\plugins\\\\wpforms-lite\\\\vendor\\\\woocommerce\\\\action-scheduler\\\\classes\\\\actions\\\\ActionScheduler_Action.php\",\"line\":56,\"function\":\"do_action_ref_array\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\plugins\\\\wpforms-lite\\\\vendor\\\\woocommerce\\\\action-scheduler\\\\classes\\\\abstracts\\\\ActionScheduler_Abstract_QueueRunner.php\",\"line\":88,\"function\":\"execute\",\"class\":\"ActionScheduler_Action\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\plugins\\\\wpforms-lite\\\\vendor\\\\woocommerce\\\\action-scheduler\\\\classes\\\\ActionScheduler_QueueRunner.php\",\"line\":169,\"function\":\"process_action\",\"class\":\"ActionScheduler_Abstract_QueueRunner\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\plugins\\\\wpforms-lite\\\\vendor\\\\woocommerce\\\\action-scheduler\\\\classes\\\\ActionScheduler_QueueRunner.php\",\"line\":139,\"function\":\"do_batch\",\"class\":\"ActionScheduler_QueueRunner\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp-hook.php\",\"line\":324,\"function\":\"run\",\"class\":\"ActionScheduler_QueueRunner\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp-hook.php\",\"line\":348,\"function\":\"apply_filters\",\"class\":\"WP_Hook\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\plugin.php\",\"line\":565,\"function\":\"do_action\",\"class\":\"WP_Hook\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-cron.php\",\"line\":191,\"function\":\"do_action_ref_array\"}]}',1,'2024-09-23 06:45:32');
INSERT INTO `wp_wpmailsmtp_debug_events` VALUES (22,'An email request was sent.','{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\themes\\\\one-business-blocks\\\\functions.php\",\"line\":262,\"backtrace\":[{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\themes\\\\one-business-blocks\\\\functions.php\",\"line\":262,\"function\":\"wp_mail\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp-hook.php\",\"line\":324,\"function\":\"handle_form_submission_styled\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp-hook.php\",\"line\":348,\"function\":\"apply_filters\",\"class\":\"WP_Hook\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\plugin.php\",\"line\":565,\"function\":\"do_action\",\"class\":\"WP_Hook\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp.php\",\"line\":830,\"function\":\"do_action_ref_array\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\functions.php\",\"line\":1336,\"function\":\"main\",\"class\":\"WP\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-blog-header.php\",\"line\":16,\"function\":\"wp\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\index.php\",\"line\":17,\"args\":[\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-blog-header.php\"],\"function\":\"require\"}]}',1,'2024-09-23 06:49:51');
INSERT INTO `wp_wpmailsmtp_debug_events` VALUES (23,'An email request was sent.','{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\themes\\\\one-business-blocks\\\\functions.php\",\"line\":315,\"backtrace\":[{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\themes\\\\one-business-blocks\\\\functions.php\",\"line\":315,\"function\":\"wp_mail\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp-hook.php\",\"line\":324,\"function\":\"handle_career_application_submission\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp-hook.php\",\"line\":348,\"function\":\"apply_filters\",\"class\":\"WP_Hook\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\plugin.php\",\"line\":565,\"function\":\"do_action\",\"class\":\"WP_Hook\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp.php\",\"line\":830,\"function\":\"do_action_ref_array\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\functions.php\",\"line\":1336,\"function\":\"main\",\"class\":\"WP\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-blog-header.php\",\"line\":16,\"function\":\"wp\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\index.php\",\"line\":17,\"args\":[\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-blog-header.php\"],\"function\":\"require\"}]}',1,'2024-09-23 06:51:10');
INSERT INTO `wp_wpmailsmtp_debug_events` VALUES (24,'An email request was sent.','{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\plugins\\\\wp-mail-smtp\\\\src\\\\Reports\\\\Emails\\\\Summary.php\",\"line\":112,\"backtrace\":[{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\plugins\\\\wp-mail-smtp\\\\src\\\\Reports\\\\Emails\\\\Summary.php\",\"line\":112,\"function\":\"wp_mail\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\plugins\\\\wp-mail-smtp\\\\src\\\\Tasks\\\\Reports\\\\SummaryEmailTask.php\",\"line\":81,\"function\":\"send\",\"class\":\"WPMailSMTP\\\\Reports\\\\Emails\\\\Summary\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp-hook.php\",\"line\":324,\"function\":\"process\",\"class\":\"WPMailSMTP\\\\Tasks\\\\Reports\\\\SummaryEmailTask\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp-hook.php\",\"line\":348,\"function\":\"apply_filters\",\"class\":\"WP_Hook\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\plugin.php\",\"line\":565,\"function\":\"do_action\",\"class\":\"WP_Hook\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\plugins\\\\wpforms-lite\\\\vendor\\\\woocommerce\\\\action-scheduler\\\\classes\\\\actions\\\\ActionScheduler_Action.php\",\"line\":56,\"function\":\"do_action_ref_array\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\plugins\\\\wpforms-lite\\\\vendor\\\\woocommerce\\\\action-scheduler\\\\classes\\\\abstracts\\\\ActionScheduler_Abstract_QueueRunner.php\",\"line\":88,\"function\":\"execute\",\"class\":\"ActionScheduler_Action\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\plugins\\\\wpforms-lite\\\\vendor\\\\woocommerce\\\\action-scheduler\\\\classes\\\\ActionScheduler_QueueRunner.php\",\"line\":169,\"function\":\"process_action\",\"class\":\"ActionScheduler_Abstract_QueueRunner\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-content\\\\plugins\\\\wpforms-lite\\\\vendor\\\\woocommerce\\\\action-scheduler\\\\classes\\\\ActionScheduler_QueueRunner.php\",\"line\":139,\"function\":\"do_batch\",\"class\":\"ActionScheduler_QueueRunner\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp-hook.php\",\"line\":324,\"function\":\"run\",\"class\":\"ActionScheduler_QueueRunner\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\class-wp-hook.php\",\"line\":348,\"function\":\"apply_filters\",\"class\":\"WP_Hook\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-includes\\\\plugin.php\",\"line\":565,\"function\":\"do_action\",\"class\":\"WP_Hook\",\"type\":\"->\"},{\"file\":\"C:\\\\Users\\\\ANJAN\\\\Local Sites\\\\cyberaplhacloud\\\\app\\\\public\\\\wp-cron.php\",\"line\":191,\"function\":\"do_action_ref_array\"}]}',1,'2024-10-04 08:00:34');
/*!40000 ALTER TABLE `wp_wpmailsmtp_debug_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpmailsmtp_tasks_meta`
--

DROP TABLE IF EXISTS `wp_wpmailsmtp_tasks_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpmailsmtp_tasks_meta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `action` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpmailsmtp_tasks_meta`
--

LOCK TABLES `wp_wpmailsmtp_tasks_meta` WRITE;
/*!40000 ALTER TABLE `wp_wpmailsmtp_tasks_meta` DISABLE KEYS */;
INSERT INTO `wp_wpmailsmtp_tasks_meta` VALUES (1,'wp_mail_smtp_admin_notifications_update','W10=','2024-09-07 04:23:59');
/*!40000 ALTER TABLE `wp_wpmailsmtp_tasks_meta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-04  0:11:08
