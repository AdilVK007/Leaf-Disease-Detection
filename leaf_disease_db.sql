/*
SQLyog Community Edition- MySQL GUI v8.03 
MySQL - 5.6.12-log : Database - leaf_disease
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`leaf_disease` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `leaf_disease`;

/*Table structure for table `complaint` */

DROP TABLE IF EXISTS `complaint`;

CREATE TABLE `complaint` (
  `complaint_id` int(11) DEFAULT NULL,
  `farmer_id` int(11) DEFAULT NULL,
  `complaint` varchar(99) DEFAULT NULL,
  `date` varchar(25) DEFAULT NULL,
  `reply` varchar(99) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `complaint` */

LOCK TABLES `complaint` WRITE;

UNLOCK TABLES;

/*Table structure for table `discussion` */

DROP TABLE IF EXISTS `discussion`;

CREATE TABLE `discussion` (
  `discussion_id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(99) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `farmer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`discussion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `discussion` */

LOCK TABLES `discussion` WRITE;

UNLOCK TABLES;

/*Table structure for table `doubt` */

DROP TABLE IF EXISTS `doubt`;

CREATE TABLE `doubt` (
  `doubts_id` int(11) NOT NULL AUTO_INCREMENT,
  `doubt` varchar(99) DEFAULT NULL,
  `date` varchar(25) DEFAULT NULL,
  `farmer_id` int(11) DEFAULT NULL,
  `reply` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`doubts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `doubt` */

LOCK TABLES `doubt` WRITE;

UNLOCK TABLES;

/*Table structure for table `farmer` */

DROP TABLE IF EXISTS `farmer`;

CREATE TABLE `farmer` (
  `farmer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) DEFAULT NULL,
  `dob` varchar(25) DEFAULT NULL,
  `gender` varchar(25) DEFAULT NULL,
  `place` varchar(25) DEFAULT NULL,
  `pin` varchar(25) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `login_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`farmer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `farmer` */

LOCK TABLES `farmer` WRITE;

UNLOCK TABLES;

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `farmer_id` int(11) DEFAULT NULL,
  `feedbacks` varchar(99) DEFAULT NULL,
  `data` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`feedback_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `feedback` */

LOCK TABLES `feedback` WRITE;

UNLOCK TABLES;

/*Table structure for table `fertilizer` */

DROP TABLE IF EXISTS `fertilizer`;

CREATE TABLE `fertilizer` (
  `fertilizer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) DEFAULT NULL,
  `pic` varchar(99) DEFAULT NULL,
  `description` varchar(30) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`fertilizer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `fertilizer` */

LOCK TABLES `fertilizer` WRITE;

UNLOCK TABLES;

/*Table structure for table `help` */

DROP TABLE IF EXISTS `help`;

CREATE TABLE `help` (
  `help_id` int(11) NOT NULL AUTO_INCREMENT,
  `farmer_id` int(11) DEFAULT NULL,
  `content` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`help_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `help` */

LOCK TABLES `help` WRITE;

UNLOCK TABLES;

/*Table structure for table `history` */

DROP TABLE IF EXISTS `history`;

CREATE TABLE `history` (
  `history_id` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(25) DEFAULT NULL,
  `leaf_id` int(11) DEFAULT NULL,
  `farmer_id` int(11) DEFAULT NULL,
  `date` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `history` */

LOCK TABLES `history` WRITE;

UNLOCK TABLES;

/*Table structure for table `leaf` */

DROP TABLE IF EXISTS `leaf`;

CREATE TABLE `leaf` (
  `leaf_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) DEFAULT NULL,
  `photo` varchar(99) DEFAULT NULL,
  `discription` varchar(99) DEFAULT NULL,
  `disease` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`leaf_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `leaf` */

LOCK TABLES `leaf` WRITE;

UNLOCK TABLES;

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

LOCK TABLES `login` WRITE;

insert  into `login`(`login_id`,`username`,`password`,`type`) values (1,'admin','admin','admin'),(2,'muhammedadilvk540@gmail.c','56921','officer'),(3,'muhammedadilvk540@gmail.c','53341','officer'),(4,'muhammedadilvk540@gmail.c','84436','officer'),(5,'muhammedadilvk540@gmail.c','64841','officer'),(6,'agr1@gmail.com','33584','officer'),(7,'salman@gmail.com','5271','marketing'),(8,'salman@gmail.com','6726','marketing'),(9,'salman@gmail.com','7641','marketing'),(10,'salman@gmail.com','6631','marketing'),(11,'salman@gmail.com','2469','technical'),(12,'salman@gmail.com','9853','marketing'),(13,'salman@gmail.com','511','technical'),(14,'salman@gmail.com','5826','technical'),(15,'salman@gmail.com','19023','officer');

UNLOCK TABLES;

/*Table structure for table `market` */

DROP TABLE IF EXISTS `market`;

CREATE TABLE `market` (
  `market_id` int(11) NOT NULL AUTO_INCREMENT,
  `crop_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `location` varchar(25) DEFAULT NULL,
  `unit` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`market_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `market` */

LOCK TABLES `market` WRITE;

UNLOCK TABLES;

/*Table structure for table `marketingstaff` */

DROP TABLE IF EXISTS `marketingstaff`;

CREATE TABLE `marketingstaff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `place` varchar(20) NOT NULL,
  `pin` bigint(20) NOT NULL,
  `qualification` varchar(20) NOT NULL,
  `experience` varchar(20) NOT NULL,
  `phone` bigint(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `login_id` int(20) NOT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `marketingstaff` */

LOCK TABLES `marketingstaff` WRITE;

insert  into `marketingstaff`(`id`,`name`,`dob`,`place`,`pin`,`qualification`,`experience`,`phone`,`type`,`login_id`,`photo`,`email`) values (1,'salman','2021-03-27','kakkur',673015,'degree','2',9846428942,'marketing',9,'static/team_members/amlogo.png.png',NULL),(2,'salman','2021-03-18','kakkur',673015,'+2','2',9846428942,'marketing',10,'static/team_members/amlogo.png.png',NULL),(4,'sam','2021-03-27','calicut',673015,'degree','3',9846428942,'marketing',12,'static/team_members/amlogo.png.png','salman@gmail.com'),(5,'salman','2021-03-17','calicut',673015,'+2','2',9846428942,'technical',13,'static/team_members/man-5110085_1920.jpg','salman@gmail.com'),(6,'samu','2021-03-09','kakkur',665,'degree','2',9846428942,'technical',14,'static/team_members/amlogo.png.png','salman@gmail.com');

UNLOCK TABLES;

/*Table structure for table `notification` */

DROP TABLE IF EXISTS `notification`;

CREATE TABLE `notification` (
  `noti_id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(25) DEFAULT NULL,
  `content` varchar(25) DEFAULT NULL,
  `date` varchar(25) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`noti_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `notification` */

LOCK TABLES `notification` WRITE;

insert  into `notification`(`noti_id`,`subject`,`content`,`date`,`type`) values (1,'zeology','fad','2021-02-20 12:06:43','admin'),(3,'khihio','gfgf','2021-02-20 12:15:14','admin');

UNLOCK TABLES;

/*Table structure for table `office` */

DROP TABLE IF EXISTS `office`;

CREATE TABLE `office` (
  `office_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) DEFAULT NULL,
  `dob` varchar(25) DEFAULT NULL,
  `place` varchar(25) DEFAULT NULL,
  `pin` varchar(25) DEFAULT NULL,
  `qualification` varchar(25) DEFAULT NULL,
  `experience` varchar(25) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `login_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`office_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `office` */

LOCK TABLES `office` WRITE;

insert  into `office`(`office_id`,`name`,`dob`,`place`,`pin`,`qualification`,`experience`,`email`,`phone`,`login_id`) values (4,'salu','2021-03-10','calicut','673012','degree','2','salman@gmail.com',9846428942,15);

UNLOCK TABLES;

/*Table structure for table `request id` */

DROP TABLE IF EXISTS `request id`;

CREATE TABLE `request id` (
  `request_id` int(11) NOT NULL AUTO_INCREMENT,
  `farmer_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`request_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `request id` */

LOCK TABLES `request id` WRITE;

UNLOCK TABLES;

/*Table structure for table `sub_admin` */

DROP TABLE IF EXISTS `sub_admin`;

CREATE TABLE `sub_admin` (
  `sub_admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) DEFAULT NULL,
  `dob` varchar(25) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `login_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`sub_admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sub_admin` */

LOCK TABLES `sub_admin` WRITE;

UNLOCK TABLES;

/*Table structure for table `tips` */

DROP TABLE IF EXISTS `tips`;

CREATE TABLE `tips` (
  `tips_id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(25) DEFAULT NULL,
  `content` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`tips_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tips` */

LOCK TABLES `tips` WRITE;

UNLOCK TABLES;

/*Table structure for table `tool` */

DROP TABLE IF EXISTS `tool`;

CREATE TABLE `tool` (
  `tool_id` int(11) NOT NULL AUTO_INCREMENT,
  `tool_name` varchar(25) DEFAULT NULL,
  `manufacture` varchar(25) DEFAULT NULL,
  `tool_usage` varchar(99) DEFAULT NULL,
  `tool_rate` int(11) DEFAULT NULL,
  PRIMARY KEY (`tool_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tool` */

LOCK TABLES `tool` WRITE;

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
