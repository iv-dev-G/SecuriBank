/*
SQLyog Ultimate v9.62 
MySQL - 5.5.9 : Database - db_bank
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_bank` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `db_bank`;

/*Table structure for table `bank_transaction` */

DROP TABLE IF EXISTS `bank_transaction`;

CREATE TABLE `bank_transaction` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_transactiondate` date DEFAULT NULL,
  `bank_transactionaccountnumber` int(11) DEFAULT NULL,
  `savings_account_amount` double DEFAULT NULL,
  `checking_account_amount` double DEFAULT NULL,
  `bank_transaction` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

/*Data for the table `bank_transaction` */

insert  into `bank_transaction`(`transaction_id`,`bank_transactiondate`,`bank_transactionaccountnumber`,`savings_account_amount`,`checking_account_amount`,`bank_transaction`) values (1,'2025-05-15',916678744,500,0,'DEPOSIT'),(2,'2025-05-15',916678744,0,500,'DEPOSIT'),(3,'2025-05-15',916678744,400,0,'WITHDRAW'),(4,'2025-05-15',916678744,200,0,'WITHDRAW'),(5,'2025-05-15',916678744,0,300,'DEPOSIT'),(6,'2025-05-15',254860297,50,0,'DEPOSIT'),(7,'2025-05-15',254860297,300,0,'WITHDRAW'),(8,'2025-05-15',916678744,500,0,'DEPOSIT'),(9,'2025-05-16',916678744,200,0,'DEPOSIT'),(10,'2025-05-16',916678744,0,0,'DEPOSIT'),(11,'2025-05-16',916678744,5600,0,'DEPOSIT'),(12,'2025-05-16',916678744,100,0,'WITHDRAW'),(13,'2025-05-16',377015125,500,0,'WITHDRAW'),(14,'2025-05-16',377015125,1000,0,'DEPOSIT'),(15,'2025-05-16',377015125,500,0,'WITHDRAW'),(16,'2025-05-16',377015125,500,0,'WITHDRAW'),(17,'2025-05-16',916678744,1500,0,'WITHDRAW'),(18,'2025-05-16',916678744,0,2000,'DEPOSIT'),(19,'2025-05-16',916678744,0,800,'WITHDRAW'),(20,'2025-05-16',916678744,500,0,'DEPOSIT'),(21,'2025-05-16',916678744,1000,0,'WITHDRAW'),(22,'2025-05-16',916678744,5000,0,'WITHDRAW'),(23,'2025-05-16',916678744,10000,0,'DEPOSIT'),(24,'2025-05-16',916678744,500,0,'WITHDRAW'),(25,'2025-05-16',916678744,500,0,'DEPOSIT'),(26,'2025-05-16',916678744,100,0,'DEPOSIT'),(27,'2025-05-16',916678744,10000,0,'WITHDRAW'),(28,'2025-05-16',377015125,100,0,'DEPOSIT'),(29,'2025-05-16',377015125,450,0,'WITHDRAW'),(30,'2025-05-16',916678744,500,0,'DEPOSIT'),(31,'2025-05-16',916678744,5500,0,'DEPOSIT'),(32,'2025-05-16',916678744,0,3400,'DEPOSIT'),(33,'2025-05-16',916678744,400,0,'DEPOSIT'),(34,'2025-05-16',916678744,50,0,'WITHDRAW'),(35,'2025-05-16',916678744,150,0,'WITHDRAW'),(36,'2025-05-16',916678744,300,0,'WITHDRAW'),(37,'2025-05-16',916678744,500,0,'WITHDRAW'),(38,'2025-05-16',916678744,25000,0,'DEPOSIT'),(39,'2025-05-16',916678744,80000,0,'DEPOSIT'),(40,'2025-05-16',916678744,50000,0,'WITHDRAW'),(41,'2025-05-16',916678744,60400,0,'WITHDRAW'),(42,'2025-05-16',916678744,15000,0,'DEPOSIT'),(43,'2025-05-16',916678744,1550,0,'WITHDRAW'),(44,'2025-05-16',916678744,0,400,'WITHDRAW'),(45,'2025-05-16',916678744,8000,0,'WITHDRAW');

/*Table structure for table `open_account` */

DROP TABLE IF EXISTS `open_account`;

CREATE TABLE `open_account` (
  `id number` int(11) NOT NULL AUTO_INCREMENT,
  `account_number` int(16) NOT NULL DEFAULT '100',
  `date_opened` date NOT NULL,
  `username` varchar(45) NOT NULL,
  `userpassword` varchar(45) NOT NULL,
  `user_pin` int(11) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `middlename` varchar(45) NOT NULL,
  `birthdate` date NOT NULL,
  `gender` varchar(45) NOT NULL,
  `security_question` varchar(500) NOT NULL,
  `answer` varchar(45) NOT NULL,
  `account_balance` double NOT NULL DEFAULT '100',
  `sa_balance` double NOT NULL,
  `ca_balance` double NOT NULL,
  PRIMARY KEY (`id number`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `open_account` */

insert  into `open_account`(`id number`,`account_number`,`date_opened`,`username`,`userpassword`,`user_pin`,`lastname`,`firstname`,`middlename`,`birthdate`,`gender`,`security_question`,`answer`,`account_balance`,`sa_balance`,`ca_balance`) values (4,916678744,'2025-05-14','niel','1234',2005,'Garig','Niel Adrian','Bajamunde','2005-02-19','Male','What is your mother\'s maiden name?','sabino',100,5550,5000);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
