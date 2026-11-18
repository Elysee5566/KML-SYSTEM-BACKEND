/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.16-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: KigaliMicroloans
-- ------------------------------------------------------
-- Server version	10.11.16-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES
(1,'Can add log entry',1,'add_logentry'),
(2,'Can change log entry',1,'change_logentry'),
(3,'Can delete log entry',1,'delete_logentry'),
(4,'Can view log entry',1,'view_logentry'),
(5,'Can add permission',3,'add_permission'),
(6,'Can change permission',3,'change_permission'),
(7,'Can delete permission',3,'delete_permission'),
(8,'Can view permission',3,'view_permission'),
(9,'Can add group',2,'add_group'),
(10,'Can change group',2,'change_group'),
(11,'Can delete group',2,'delete_group'),
(12,'Can view group',2,'view_group'),
(13,'Can add content type',4,'add_contenttype'),
(14,'Can change content type',4,'change_contenttype'),
(15,'Can delete content type',4,'delete_contenttype'),
(16,'Can view content type',4,'view_contenttype'),
(17,'Can add session',5,'add_session'),
(18,'Can change session',5,'change_session'),
(19,'Can delete session',5,'delete_session'),
(20,'Can view session',5,'view_session'),
(21,'Can add user',7,'add_user'),
(22,'Can change user',7,'change_user'),
(23,'Can delete user',7,'delete_user'),
(24,'Can view user',7,'view_user'),
(25,'Can add password reset request',6,'add_passwordresetrequest'),
(26,'Can change password reset request',6,'change_passwordresetrequest'),
(27,'Can delete password reset request',6,'delete_passwordresetrequest'),
(28,'Can view password reset request',6,'view_passwordresetrequest'),
(29,'Can add client',8,'add_client'),
(30,'Can change client',8,'change_client'),
(31,'Can delete client',8,'delete_client'),
(32,'Can view client',8,'view_client'),
(33,'Can add loan',9,'add_loan'),
(34,'Can change loan',9,'change_loan'),
(35,'Can delete loan',9,'delete_loan'),
(36,'Can view loan',9,'view_loan'),
(37,'Can add loan type',12,'add_loantype'),
(38,'Can change loan type',12,'change_loantype'),
(39,'Can delete loan type',12,'delete_loantype'),
(40,'Can view loan type',12,'view_loantype'),
(41,'Can add loan application',10,'add_loanapplication'),
(42,'Can change loan application',10,'change_loanapplication'),
(43,'Can delete loan application',10,'delete_loanapplication'),
(44,'Can view loan application',10,'view_loanapplication'),
(45,'Can add repayment schedule',14,'add_repaymentschedule'),
(46,'Can change repayment schedule',14,'change_repaymentschedule'),
(47,'Can delete repayment schedule',14,'delete_repaymentschedule'),
(48,'Can view repayment schedule',14,'view_repaymentschedule'),
(49,'Can add loan payment',11,'add_loanpayment'),
(50,'Can change loan payment',11,'change_loanpayment'),
(51,'Can delete loan payment',11,'delete_loanpayment'),
(52,'Can view loan payment',11,'view_loanpayment'),
(53,'Can add public loan application',13,'add_publicloanapplication'),
(54,'Can change public loan application',13,'change_publicloanapplication'),
(55,'Can delete public loan application',13,'delete_publicloanapplication'),
(56,'Can view public loan application',13,'view_publicloanapplication'),
(57,'Can add past loan sheet',15,'add_pastloansheet'),
(58,'Can change past loan sheet',15,'change_pastloansheet'),
(59,'Can delete past loan sheet',15,'delete_pastloansheet'),
(60,'Can view past loan sheet',15,'view_pastloansheet'),
(61,'Can add onboarding video',16,'add_onboardingvideo'),
(62,'Can change onboarding video',16,'change_onboardingvideo'),
(63,'Can delete onboarding video',16,'delete_onboardingvideo'),
(64,'Can view onboarding video',16,'view_onboardingvideo'),
(65,'Can add system setting',17,'add_systemsetting'),
(66,'Can change system setting',17,'change_systemsetting'),
(67,'Can delete system setting',17,'delete_systemsetting'),
(68,'Can view system setting',17,'view_systemsetting');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients_client`
--

DROP TABLE IF EXISTS `clients_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients_client` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_number` varchar(50) NOT NULL,
  `names` varchar(255) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `district` varchar(100) NOT NULL,
  `sector` varchar(100) NOT NULL,
  `cell` varchar(100) NOT NULL,
  `village` varchar(100) NOT NULL,
  `marital_status` varchar(20) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `id_document` varchar(100) NOT NULL,
  `job_contract` varchar(100) DEFAULT NULL,
  `bank_statement` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `clients_client_user_id_57c8fc4a_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients_client`
--

LOCK TABLES `clients_client` WRITE;
/*!40000 ALTER TABLE `clients_client` DISABLE KEYS */;
INSERT INTO `clients_client` VALUES
(6,'1200370095917191','BIZIMUNGU ZIGA LARISSA','Female','Gasabo','Jali','Agateko','Kinunga','Single','b.zigalarissa@gmail.com','0787114061','documents/id/Personal_Id.pdf','documents/job/Ziga_Assistant_Project_Manager_Agreement.pdf','documents/bank/Bank_Statement_Jan-Mar.pdf','2026-06-08 09:53:59.153282',12),
(7,'1200070075370109','Agatoni Mukunde Deborah','female','Kicukiro','Nyarugunga','Kamashashi','Mukoni','single','mukundedee200@gmail.com','0783344884','documents/id/IMG-20250802-WA0020_jLdYkuo.jpg','documents/job/Mukunde_Deborah_Contract__tZ5J6JI.pdf','documents/bank/20039097001_Cw25XPG.pdf','2026-06-09 17:39:49.036043',13),
(8,'1198470012276149','MUTONI JULIET','Female','GASABO','KIMIHURURA','KIMIHURURA','KIMIHURURA','Married','juliettemutoni5@gmail.com','0788686821','documents/id/IMG_1947.jpeg','documents/job/CONTRACT_LETTER.pdf','documents/bank/STATEMENT_W3EKmgS.pdf','2026-06-09 17:53:46.608925',14),
(9,'119968010246209','DUSHIMIMANA DIOGENE','Male','KICUKIRO','KANOMBE','KABEZA','IKAZE','Single','dushimimanadiogene6@gmail.com','0788324824','documents/id/ID.pdf','documents/job/NARD.pdf','documents/bank/Dusimimana_1774532098429_STMT_BANK__59_.pdf','2026-06-10 08:53:13.392204',15),
(10,'1198880148610048','MUTUYEYESU THEOPHILE','Male','BUGESERA','RWERU','RWERU','RWERU','Married','mutuyeyesutheophile1@gmail.com','0785362049','documents/id/WhatsApp_Image_2026-06-10_at_11.30.48.jpeg','documents/job/Account_statement.pdf','documents/bank/Account_statement.pdf','2026-06-10 09:32:50.061562',16),
(11,'1198670176258049','KUBWIMANA IMMACULEE','Male','NYARUGENGE','GITEGA','AKABEZA','GITWA','Married','immack30@gmail.com','0788267168','documents/id/SCAN0056.PDF','documents/job/SCAN0055.PDF','documents/bank/SCAN0054.PDF','2026-06-10 09:52:05.827908',17),
(12,'1198180042957079','BIHEZANDE BERNARD','Male','HUYE','NGOMA','NGOMA','NGOMA','Married','bihezaberna@gmail.com','0788535697','documents/id/DOC-20240411-WA0006.PDF','documents/job/DOC-20240411-WA0006.PDF','documents/bank/DOC-20240411-WA0006.PDF','2026-06-10 10:00:49.441995',18),
(13,'1198970071092130','NYIRAHABIMANA SERAPHINE','Female','KAMONYI','RUNDA','RUNDA','RUNDA','Married','seraphinen02@gmail.com','0786041365','documents/id/bank_statementID.pdf','documents/job/appointment_letter_Seraphine_Nyirahabimana.pdf','documents/bank/bank_statementID.pdf','2026-06-10 10:22:27.013774',19),
(14,'1197280070631006','NSANZABAGANWA JOSIAS','Male','BUGESERA','MAREBA','MAREBA','MAREBA','Married','nsanzabaganwajosias2@gmail.com','0788563021','documents/id/CamScanner_07-09-2025_17.16_1.jpg','documents/job/CamScanner_07-09-2025_14.35_1.jpg','documents/bank/CamScanner_07-09-2025_17.17_1.jpg','2026-06-10 10:29:11.423855',20),
(15,'1199080174253226','DUSHIMIMANA JONATHAN','Male','GASABO','KINYINYA','KAGUGU','AKAGARAMA','Single','du1.jonathan@gmail.com','0788691290','documents/id/Jonathan_DUSHIMIMANA_ID.pdf','documents/job/200511_Jonathan_Contract.pdf','documents/bank/DUSHIMIMANA_JONATHAN_Bank_Statement.pdf','2026-06-19 16:22:15.272150',21),
(16,'1199380002910040','NGENZI JOEL','Male','KICUKIRO','NIBOYI','GATARE','BYIMANA','Single','ngenzijoel18@gmail.com','0 784 146 856','documents/id/Joel_Ngenzi_ID.jpg','documents/job/Employment_contract_1.pdf','documents/bank/Bank_statement_Mar-May.pdf','2026-06-19 16:33:54.198586',22),
(17,'1199670254641034','NGABO CHRISTIAN','Male','KICUKIRO','KAGARAMA','RWAMPARA','URUMURI','Single','c7.ngabo@gmail.com','0788521412','documents/id/IMG-20250410-WA0012.jpg','documents/job/offerletter8323_1.pdf','documents/bank/Statement_1764282_100153650432.pdf','2026-06-19 16:43:29.532516',23),
(18,'119970137026031','TUYIZERE ROSE','Female','KICUKIRO','GIKONDO','KAGUNGA','KAGUNGA 2','Married','rosetuyizere128@gmail.com','0781511053','documents/id/ID_1.png','documents/job/Contract.pdf','documents/bank/TUYIZERE_STMT_BANK_.pdf','2026-06-19 16:50:50.115076',24),
(20,'1199580075566021','Elysee Test One','Male','NYARUGENGE','GITEGA','AKABEZA','GITWA','Single','alphonse01961@gmail.com','0798117214','documents/id/screenshot2.pdf','','','2026-06-22 06:42:15.432530',26),
(22,'3198580202101361','TWEBAZE ROGERS','Male','GASABO','JABANA','KABUYE','AMASANGANO','Single','twebazerogers2015@gmail.com','0795873663','documents/id/CamScanner_10-22-2025_13.58.pdf','documents/job/Contract_page_1.pdf','documents/bank/CamScanner_10-22-2025_14.10.pdf','2026-06-22 17:34:38.921419',28),
(23,'1198480007906109','DUSENGE DIEUDONNE','Male','GASABO','JALI','NYAKABUNGO','AKAREGE','Married','dusenge96@gmail.com','0788833110','documents/id/id.pdf','documents/job/doc05194220241206093648_1.pdf','documents/bank/Statement-Thu_Feb_13_2025_15_03_08_GMT0200_Eastern_European_Standard_Time.pdf','2026-06-22 18:18:02.068819',29),
(24,'1199480161317144','UMUHIRE GATARE VALENTIN','Male','NYARUGENGE','KIMISAGARA','KAMUHOZA','BUHORO','Single','umuhiregatarevalentin@gmail.com','0789246927','documents/id/valent_ID.pdf','documents/job/MUHIRE_CONTTTT5.pdf','documents/bank/muhire_bank_statement.pdf','2026-06-22 18:26:45.517788',30),
(25,'1198770186237158','MUKASINAYOBYE IMMACULEE','Female','NYARUGENGE','KIGALI','KIGALI','KADOBOGO','Single','simmac01@yahoo.com','0788855217','documents/id/CERTIFICATE_FOR_REPLACEMENT_OF_NATIONAL_IDENTITY_CARD_-_B250821163913XAUR_2.pdf','documents/job/Contract-.pdf','documents/bank/STATEMENT_3.pdf','2026-06-22 18:38:36.575624',31),
(26,'1197480010436193','FRANK MUBERUKA','Male','KICUKIRO','KICUKIRO','KICUKIRO','KICUKIRO','Married','frankmuberuka@gmail.com','0788351440','documents/id/WhatsApp_Image_2026-06-09_at_09.53.14.jpeg','documents/job/loan-agreement-_muberuka_frank.pdf','documents/bank/loan-agreement-_muberuka_frank.pdf','2026-06-22 18:50:34.072391',32),
(27,'1200070075370109','NDAGIJIMANA JEAN PIERRE','Male','KICUCKIRO','KICUKIRO','NGOMA','ISANGANO','Single','ishimwejay@gmail.com','0780329903','documents/id/IMG_20260519_083123_884.jpg','documents/job/Contract17_1732627702.pdf','documents/bank/Bank_statement.pdf','2026-06-22 19:32:44.358932',33),
(28,'1196880037942260','KAZOORA STEVEN','Male','RUBAVU','GISENYI','GISENYI','GISENYI','Married','stevenkazoora@yahoo.com','0788303402','documents/id/32656388-7bfc-4322-ab70-bf64e86d5cb6.jpeg','documents/job/PHOTO-2025-02-12-16-03-11.jpg','documents/bank/PHOTO-2025-02-12-16-03-11.jpg','2026-06-22 19:46:16.223047',34),
(30,'1199170002141267','DUSABIMANA JENNY','Female','NYARUGENGE','NYAMIRAMBO','NYAMIRAMBO','NYAMIRAMBO','Single','jennydusabimana4@gmail.com','0788885884','documents/id/id_1.pdf','documents/job/CONTRACT_tek.pdf','documents/bank/statement_4.pdf','2026-06-26 20:37:15.684052',36),
(31,'1199180164806285','ANICET HAGENIMANA','Male','NYARUGENGE','NYAMIRAMBO','CYIVUGIZA','IMANZI','Single','gatera1anicet@gmail.com','0785659883','documents/id/ID_1_2.pdf','documents/job/My_Contract_dAGErQ9.pdf','documents/bank/Statement_1935062_100192044191.pdf','2026-06-26 20:47:26.533352',37),
(32,'1198280164273033','HIGIRO GATO CYPRIEN','Male','NGOMA','MUGESERA','MUGESERA','MUGESERA','Married','higirogatoc@gmail.com','0788453079','documents/id/ID_HIGIRO.jpeg','documents/job/ID_HIGIRO.jpeg','documents/bank/ID_HIGIRO.jpeg','2026-06-27 07:22:16.786628',40),
(33,'AK0306724','KELVIN KIBET CHIRCHIR','Male','GASABO','GISOZI','GISOZI','GISOZI','Single','langatchirchir@gmail.com','0791461846','documents/id/Copy_of_passport_biodata_page.pdf','documents/job/Kelvin_ChiChir_Contract.pdf','documents/bank/receipts_2022-07-26_2024-07-26.pdf','2026-06-27 07:31:15.631320',41),
(34,'1198780049442197','DUSHIME PATRICK','Male','KICUKIRO','NIBOYI','NIBOYI','NIBOYI','Single','dushimepazo@gmail.com','0788626992','documents/id/ID_1_C7U73BO.pdf','documents/job/Contract_Patrick_DUSHIME.PDF','documents/bank/ACCOUNT_STATEMENTPAGE_3.pdf','2026-06-27 07:42:42.847206',42),
(35,'1200470084850073','UWASE CYNTHIA','Female','NYARUGENGE','NYARUGENGE','AGATARE','INYAMBO','Single','uwaselannah1@gmail.com','0798581888','documents/id/WhatsApp_Image_2026-04-13_at_2.23.44_PM.jpeg','documents/job/Uwase.pdf','documents/bank/UWASE_STM.pdf','2026-06-27 07:50:36.564629',43),
(36,'PC506491','NGOGA NTWALI SERGE','Male','KICUKIRO','KANOMBE','KANOMBE','KANOMBE','Single','ngogaserge02@gmail.com','0784572537','documents/id/img20250115_11261285.pdf','documents/job/Contract_1.pdf','documents/bank/Bank_statement_II.pdf','2026-06-27 08:13:01.002119',44),
(37,'1199670132026191','MARIE GRACE BYUKUSENGE','Female','KAMONYI','RUNDA','RUYEGI','NYABITARE','Married','bymariegrace@gmail.com','0782746678','documents/id/ID.jpeg','documents/job/Signed_First_Addendum_to_the_Employment_Agreement_-_UVU_Bio_NPC___Marie_Gr_qbSX8iR.pdf','documents/bank/Jan_-_April_Statement.pdf','2026-06-27 10:06:28.790649',45),
(38,'1199780021435078','RWIBASIRA CHRISTIAN MUNANA','Male','KICUKIRO','MASAKA','MASAKA','MASAKA','Single','crstmuna@gmail.com','0784264929','documents/id/1000154598.jpg','documents/job/PHIONA_2.pdf','documents/bank/PHIONA_2.pdf','2026-06-27 10:21:47.857746',46),
(39,'1198780079364217','ELISE ASGAR SANO','Male','NYARUGENGE','MUHIMA','RUGENGE','RUGENGE','Single','sanoelyat6@gmail.com','0780359378','documents/id/img20260410_11460861.png','documents/job/CONTRACT_2.pdf','documents/bank/STATMENT.pdf','2026-07-01 10:36:57.364326',47),
(40,'1199980097371060','GAGA MARSHALL','Male','NYARUGENGE','NYAMIRAMBO','CYIVUGIZA','INTWALI','Single','gagamarshall9@gmail.com','0780513102','documents/id/MARSHALL_GAGA_Contract.pdf','','documents/bank/STMT_ENT_BOOK_53_3tUytHP.pdf','2026-07-01 10:56:33.873469',48),
(41,'1199670157679158','MARIE BONNE CHANCE HIRUMUKUNZI','Female','GICUMBI','KAGEYO','HOREZO','MUSETSA','Married','hirumukunzichance@gmail.com','0787997273','documents/id/Chance_required_doc.pdf','documents/job/Chance_required_doc.pdf','documents/bank/Chance_required_doc.pdf','2026-07-01 11:47:39.426240',49),
(42,'1198780084056005','TWAHIRWA THARCISSE TOUSSAINT','Male','RUBAVU','RUGERERO','RUGERERO','RUGERERO','Married','ttoussaint02@gmail.com','0788777730','documents/id/ID_Toussaint_.pdf','documents/job/ID_Toussaint_.pdf','documents/bank/ID_Toussaint_.pdf','2026-07-01 13:49:05.215788',50),
(43,'1200180126496026','KARANGWA ARSENE','Male','GASABO','KINYINYA','KINYINYA','KINYINYA','Single','karangwaarsene1@gmail.com','0788718128','documents/id/Arsene_ID_2024_December.pdf','documents/job/Sp_contract_new.pdf','documents/bank/1752494414399_Statement_1151187_100178294975.pdf','2026-07-01 13:54:53.190139',51),
(44,'1199880097670131','SHEMA BERTRAND RUZINDANA','Male','KICUKIRO','KAGARAMA','BWIZA','KANSEREGE','Single','bertrand1998@gmail.com','0780628157','documents/id/Bertrand_Shema_ID.pdf','documents/job/Bertrand_Shema_ID.pdf','documents/bank/Bertrand_Shema_ID.pdf','2026-07-01 15:23:39.968781',52),
(46,'1200370005880004','BENITA ATETE','Female','KAYONZA','MUKARANGE','BWIZA','ABISUNGANYE','Single','benitaatete@gmail.com','0788830525','documents/id/IMG_0866.PNG','documents/job/Contract_3.pdf','documents/bank/statement.pdf-_3months','2026-07-02 19:00:07.975393',55),
(47,'008706744','TUMUSINGIZE BRIDGET','Female','KICUKIRO','GATENGA','NYANZA','MURAMBI','Married','bridgettumusingize9@gmail.com','0782509576','documents/id/ID_CARD.pdf','documents/job/IMPLOYEMENT_CONTRACT.pdf','documents/bank/Bank_statement_1.pdf','2026-07-02 19:11:16.611968',56),
(48,'TAE108335','CHARLSE DANIEL MWANGILA','Male','KICUKIRO','GATENGA','NYANZA','BWIZA','Single','mwangiladaniel9@gmail.com','0784834021','documents/id/IMG_0053.jpg','documents/job/bboxx_africa_contract_DcHp6Qn.pdf','documents/bank/Statement_260629_160232.pdf','2026-07-02 19:22:30.982052',57),
(49,'1200070051065147','TETA HONORNE','Female','NYAGATARE','NYAGATARE','NYAGATARE','NYAGATARE','Single','tetahonor372@gmail.com','0782067033','documents/id/TETA_ID.jpeg','documents/job/TETA_ID.jpeg','documents/bank/TETA_ID.jpeg','2026-07-02 19:46:34.059364',58),
(50,'1199680021725148','KAYIBANDA CYUBAHIRO CONFIANCE','Male','KICUKIRO','GATENGA','KARAMBO','RAMIRO','Single','confiance.cyubahiro@ampersand.solar','0792695053','documents/id/ID_Card_1.pdf','documents/job/Contract_Cyubahiro_Kayibanda_Confiance_Operator_Nov_2025.pdf','documents/bank/Bank_Statement_Cyubahiro_Kayibanda_Confiance.pdf','2026-07-03 15:00:14.833414',59),
(51,'1200180194871028','MUTANGANA AIME JULES','Male','RUSIZI','GIHWENDE','BURUNGA','KARANGIRO','Single','mutanganaa63@gmail.com','0790368083','documents/id/MUTANGANAS_ID_2.pdf','documents/job/MUTANGANAS_JOB_LETTER_2.pdf','documents/bank/Statement_5.pdf','2026-07-06 09:53:52.318803',60),
(52,'1199380029823012','NTAKIRUTIMANA VICENT','Male','RUSIZI','GIHUNDE','BURUNGA','KARUSHARIRIZA','Married','ntakirutimanavincent93@gmail.com','0784306212','documents/id/CamScanner_02-27-2026_12.08.pdf','documents/job/CamScanner_02-27-2026_09.52.pdf','documents/bank/Vincent_Bank_statement_.pdf','2026-07-14 16:30:46.858853',62),
(53,'1199080226514073','GASASIRA RONALD','Male','BUGESERA','NYAMATA','NYAMATA','NYAMATA','Married','rongas10@gmail.com','0786461844','documents/id/Gasasiras_Docs','documents/job/Gasasiras_Docs','documents/bank/Gasasiras_Docs','2026-07-14 17:17:13.062369',63),
(54,'11983800144471171','HAGENIMANA ANTOINE','Male','GASABO','NDERA','NDERA','NDERA','Married','hagenarwaka@gmail.com','0788515591','documents/id/Loan_Request_0001.pdf','documents/job/Loan_Request_0001.pdf','documents/bank/Loan_Request_0001.pdf','2026-07-14 17:51:51.892708',64),
(55,'1199880170691174','NTAKIRUTIMANA KARIM','Male','GASABO','REMERA','REMERA','REMERA','Single','karimntakirutimana17@gmail.com','0781987638','documents/id/ID_NK.pdf','documents/job/current_contract.pdf','documents/bank/Bank_statement_2.pdf','2026-07-14 18:05:45.114425',65),
(56,'1198470022260216','MARIE NADINE RURANGWA','Female','GASABO','JABANA','KABUYE','UMUJYI WA KIGALI','Married','rurangwanadine7@gmail.com','0789297112','documents/id/2068.pdf','documents/job/2068.pdf','documents/bank/2068.pdf','2026-07-20 14:27:43.621781',66),
(57,'1198780144663180','MASAMAZA PRINCE','Male','KIREHE','NYARUGURU','NYARUGURU','NYARUGURU','Single','0788602822m@gmail.com','0788305393','documents/id/Doc_17413525637073_1.jpg','documents/job/Screenshot_20250307_171352_PDF_Scanner.jpg','documents/bank/Doc_17413525637073.jpg','2026-07-20 14:39:50.856446',67),
(58,'12000701407460006','UMURINGA ROLANDE','Female','GASABO','GISOZI','MUSEZERO','GASAVE','Single','rolmuringa@gmail.com','0788635248','documents/id/IMG_5108.jpeg','documents/job/IMG_0252.jpeg','documents/bank/Statement_1792717_100229526043.pdf','2026-07-20 15:18:24.101408',68),
(59,'1198880070343067','NTEZIRYIMANA JEAN PAUL','Male','NYAMASHEKE','KANJOGO','KANJOGO','KANJOGO','Married','nteziryimanajeanpaul0@gmail.com','0782264876','documents/id/CamScanner_12-29-2025_12.41.pdfJPPP.pdf','documents/job/STMT_ENT_FULL_13.pdfJPP.pdf','documents/bank/CamScanner_12-29-2025_12.43.pdf_JP.pdf','2026-07-20 15:38:57.398901',69),
(60,'1199780146061062','ERIC RUKUNDO','Male','GASABO','JABANA','KABUYE','IHURIRO','Married','rukundoeeric@gmail.com','0780574009','documents/id/RUKUNDO_ID.pdf','documents/job/IMG_2490.heic','documents/bank/RUKUNDO_ERIC.pdf','2026-07-21 14:22:53.488936',70),
(61,'1198180044772022','BURAKEBA THIERY','Male','HUYE','SIMBI','SIMBI','SIMBI','Married','burakebat@gmail.com','0782325957','documents/id/IMG-20250328-WA0018.jpg','documents/job/IMG-20250328-WA0016.jpg','documents/bank/IMG-20250328-WA0018.jpg','2026-07-21 14:51:28.432893',71),
(62,'1200270093526075','MUHOZA DIANA','Female','GASABO','RUSORORO','KABUGA 1','KALISIMBI','Single','muhozadiana62@gmail.com','0786812804','documents/id/ID_2.pdf','documents/job/Contract_4.pdf','documents/bank/STMTBANK.pdf','2026-07-21 15:05:36.594297',72),
(63,'1199880101087127','AIME SHEMA CHRISTIAN','Male','KICUKIRO','GATENGA','GATENGA','GATENGA','Single','chrisaime45@gmail.com','0780935451','documents/id/ID_3.pdf','documents/job/Employment_Offer-KEA-Recruitment_signed.pdf','documents/bank/My_bank_statement.pdf','2026-07-21 15:13:35.907320',73),
(64,'1199370146857034','NIYONSENGA GISELLE','Female','NYARUGENGE','NYAKABANDA','NYAKABANDA','BUHORO','Married','chinnygigi2020@gmail.com','0785468964','documents/id/NIYONSENGA_Gisele__23_1.pdf','documents/job/DOC-20260313-WA0026._2.pdf','documents/bank/NIYONSENGA_Gisele__31.pdf','2026-07-21 15:26:36.728500',74),
(65,'1199570124934100','IGIZENEZA ADELPHINE','Female','GASABO','KINYINYA','GASHARU','AGATARE','Married','igizenezaadelphine@gmail.com','0791999009','documents/id/MKL_1_1.pdf','documents/job/MKL_1_1.pdf','documents/bank/MKL_1_1.pdf','2026-07-21 15:50:05.428092',75),
(66,'1198470012884011','MASIMBI RWABUHIHI NISHIMWE','Female','GASABO','GISOZI','MUNEZERO','NYAKARIBA','Married','nishimwemasimbi@gmail.com','0788484168','documents/id/Rwabuhihi_Nishimwe_Masimbi_ID_26112024.pdf','documents/job/Rwabuhihi_Nishimwe_Masimbi_ID_26112024.pdf','documents/bank/STMT_BANK_24_1.pdf','2026-07-22 08:24:29.587994',76),
(67,'1199880101934041','CEDRICK RUKUNDO','Male','GASABO','NDERA','CYARAZIGE','AYABAKORA','Single','rukundocedrick6@gmail.com','0785038902','documents/id/Screenshot_20240811-063206_WhatsApp.jpg','documents/job/20241209_063539.jpg','documents/bank/1733757744074_RUKUNDO_CEDRICK.pdf','2026-07-22 08:33:55.127476',77),
(68,'1198180008115103','NDAYISHIMIYE EVARISTE','Male','GASABO','JABANA','JABANA','JABANA','Married','ebruzzy@gmail.com','0788498812','documents/id/img20260715_16011059_1.pdf','documents/job/img20260715_16011059_1.pdf','documents/bank/img20260715_16011059_1.pdf','2026-07-22 09:46:57.453051',78),
(69,'1198380011433123','SHEMA SERGE','Male','GASABO','KIMIHURURA','KIMIHURURA','KIMIHURURA','Married','sshema@bpr.rw','0788689542','documents/id/SEERGE_SHEMA_NATIONAL_ID.pdf','documents/job/CONTRACT_LETTER_FOR_SERGE_SHEMA.pdf','documents/bank/SHEMA_SERGE.pdf','2026-07-22 09:59:31.538938',79),
(70,'1198980182374248','MUCYO JEAN CLAUDE BERNARD','Male','MUHANGA','NYARUSANGE','NYARUSANGE','NYARUSANGE','Single','mucyojcb@gmail.com','0783516411','documents/id/5.1_NID_-_Mucyo.pdf','documents/job/5.1_NID_-_Mucyo.pdf','documents/bank/5.1_NID_-_Mucyo.pdf','2026-07-22 10:12:12.328270',80),
(71,'1198880086912167','EVODE MWITENDE','Male','GASABO','JABANA','KABUYE','KABEZA','Married','evodemwitende@gmail.com','0783232714','documents/id/My_ID.pdf','documents/job/contract_5.pdf','documents/bank/Bank_Statement_3.pdf','2026-07-22 10:27:33.579254',81),
(72,'1198280094986086','MUKESHIMANA FELIX','Male','BUGESERA','NTARAMA','CYUGARO','KIGABO','Married','felixmukeshimana9@gmail.com','0788425941','documents/id/form_B_1.pdf','documents/job/Contr_ban_1.pdf','documents/bank/BANK_STATEMENT_-_FELIX_1.pdf','2026-07-22 10:32:32.735948',82),
(73,'1198470011543101','MARY KEMBAGA','Female','GASABO','KACYIRU','KACYIRU','KACYIRU','Married','marykembaga@gmail.com','0788302749','documents/id/DOC-20260605-WA0003_','documents/job/DOC-20260605-WA0003_','documents/bank/DOC-20260605-WA0003_','2026-07-22 10:39:58.999183',83),
(74,'1199880100804184','YVES MUGENGA','Male','GASABO','GISOZI','MUNEZERO','GASAVE','Single','ymugenga@gmail.com','0780348088','documents/id/REPUBULIKA_YU_RWANDA_1.pdf','documents/job/FE_Offer_letter_2.PDF','documents/bank/Transaction_Details_1.pdf','2026-07-22 10:49:03.176013',84),
(75,'1198180011564087','NIYIGENA ERNEST','Male','GASABO','BUMBOGO','KINYAGA','MUHOZI','Married','niyernesta@gmail.com','0788536728','documents/id/Identity_Card_1.pdf','documents/job/Identity_Card_1.pdf','documents/bank/NIYIGENA_ERNEST-Bank_Statement.pdf','2026-07-27 14:42:38.676162',85),
(76,'1199270072239110','TEGURUGORI PIORETTE','Female','GASABO','BUMBOGO','NYABIKENKE','KILIZA','Married','tegurugopio20@gmail.com','0785199492','documents/id/Tegurugoti_piorette.pdf','documents/job/Tegurugoti_piorette.pdf','documents/bank/Tegurugoti_piorette.pdf','2026-07-27 14:51:51.552728',86),
(77,'1199180037947046','HARERIMANA DANIEL','Male','GASABO','NDERA','KIBENGA','BERWA','Married','dannyha2020@gmail.com','0788203657','documents/id/NID_Daniel_HARERIMANA.pdf','documents/job/BOA_Contract_2026_1.pdf','documents/bank/Bank_Statement_Daniel_1.pdf','2026-07-30 16:19:34.309387',88),
(78,'1198280022316019','SADIKI JEAN DE DIEU','Male','KICUKIRO','KANOMBE','KABEZA','MULINDI','Single','junior.sadiki1@gmail.com','0788772040','documents/id/Sadikis_Contract.pdf','documents/job/SADIKI_Jean_de_Dieu_Employment_Contract_June_1_2026_to_May_31_2028.pdf','documents/bank/Bank_Statement_MAY_2026_-_JULY_2026.pdf','2026-07-30 16:28:53.356697',89),
(79,'1198270004480278','YVETTE UWIRINGIYIMANA','Female','NYARUGENGE','MUHIMA','MUHIMA','MUHIMA','Single','yvetu82@gmail.com','0 788 358 279','documents/id/YV_ID.pdf','documents/job/YV_ID.pdf','documents/bank/YV_ID.pdf','2026-07-30 16:39:03.386980',90),
(80,'3199780237960065','OMONDI DENZEL AKWANY','Male','GASABO','KIMIHURURA','GATENGA','KAMUKINA','Single','omondiakwany@gmail.com','0794105067','documents/id/NationalID.pdf','documents/job/Denzel_-_Contract_lvh.pdf','documents/bank/Denzel_BS-May_Sept_USD_RWF.pdf','2026-07-30 17:18:45.993810',91),
(81,'1198080175736250','MUCYO BENON MUZUNGU','Male','GASABO','NDERA','CYARUZINGE','GATARE','Married','benmcyo@gmail.com','0788361555','documents/id/ID_Benon_M.Mucyo.pdf','documents/job/Mucyos_Contract.pdf','documents/bank/Benon_M.Mucyo_STMT_BANK_-_2025-08-25T165240.907.pdf','2026-07-30 17:26:25.097399',92),
(82,'12001801980446047','MANZI RWAJE','Male','RWAMAGANA','MUYUMBO','KAMPINGIKA','AKINYAMBO','Single','rwaje1@gmail.com','0782169768','documents/id/RWAJE_ID.pdf','documents/job/offerletter11201.pdf','documents/bank/Statement_2076295_100191217076.pdf','2026-07-30 17:37:04.018499',93),
(84,'1197980097634130','JEAN REGIS MULINDI','Male','BUGESERA','RILIMA','KABEZA','NYAMISAGARA','Married','mjeanregis5@gmail.com','0794273758','documents/id/ID_MULINDI_Jean_REgis.jpg','documents/job/Ibaruwa_ya_Burundu_mu_kazi_EP_Mbuye_11_08_2024.pdf','documents/bank/U_SACCO_MULINDI_Jean_REgis_Historique_12-19-2025_17.42.pdf','2026-08-01 16:37:04.624818',95),
(85,'BOO491801','TUSIIME REBEC','Female','UGANDA','UGANDA','UGANDA','UGANDA','Single','tusiimerebec31@gmail.com','0795754376','documents/id/loan_agreement_signed.pdf','documents/job/loan_agreement_signed.pdf','documents/bank/loan_agreement_signed.pdf','2026-08-01 16:50:09.976026',96),
(86,'1198480088716137','ISREAL RAPERT NKUNDIMANA','Male','RUBAVU','GISENYI','GISENYI','GISENYI','Single','nkundimana1984@gmail.com','0788781145','documents/id/Scanned_20260728_075342.pdf','documents/job/Scanned_20260728_074805.pdf','documents/bank/Scanned_20260728_074805.pdf','2026-08-01 16:58:21.316257',97),
(87,'1198480016529005','NTORANYI DIEUDONNE','Male','GASABO','REMERA','REMERA','REMERA','Married','ntoranyidieudonne@gmail.com','0786694096','documents/id/ID_1.jpeg','documents/job/contract_6.PDF','documents/bank/bank_statement_from_jan_to_march_2025.pdf','2026-08-01 17:35:56.093156',98),
(88,'1199680022787140','HIRWA PACIFIQUE','Male','BUGESERA','NTARAMA','KANZENZE','KARUMUNA','Single','pacifiquehirwa2@gmail.com','0785294134','documents/id/ID.....pdf','documents/job/Contract_7.pdf','documents/bank/bank_statement_2_1.pdf','2026-08-01 17:41:17.212853',99),
(89,'1198880158114042','RUTSINDINTWARANE EMMANUEL','Male','KAYONZA','RUKARA','RUKARA','RUKARA','Married','emmyrutsinda0@gmail.com','0788639405','documents/id/ID_E.jpeg','documents/job/ID_E.jpeg','documents/bank/ID_E.jpeg','2026-08-01 17:47:03.077450',100),
(90,'1199270153016195','FAITH KIBATENGA','Female','KICUKIRO','KANOMBE','KANOMBE','KANOMBE','Married','kibatengafaith92@gmail.com','0780289157','documents/id/KIBATENGA_Faith.pdf','documents/job/KIBATENGA_Faith.pdf','documents/bank/KIBATENGA_Faith.pdf','2026-08-04 17:34:34.794036',101),
(91,'1199180176955026','KABALISA PATRICK','Male','GASABO','KIMIHURURA','KIMIHURURA','KIMIHURURA','Single','kabalisapatrick1@gmail.com','0788915403','documents/id/ID_PATRICKOVE.pdf','documents/job/PATRICKOVO.pdf','documents/bank/ID_PATRICKOVE.pdf','2026-08-04 17:41:50.683911',102),
(92,'1111111111111111','KAYIHURA ERIC','Male','GASABO','KIMIHURURA','KIMIHURURA','KIMIHURURA','Single','kayihuraeric15@gmail.com','0781633558','documents/id/NO_ID_PROVIDED.docx_ERIC_DOC_.pdf','documents/job/NO_ID_PROVIDED.docx_ERIC_DOC_.pdf','documents/bank/NO_ID_PROVIDED.docx_ERIC_DOC_.pdf','2026-08-05 14:19:37.983908',103),
(93,'1196870032501135','MUKAMANA SYLVIE','Female','NYARUGENGE','KIGALI','KIGALI','MUREME','Single','mukasyl1@gmail.com','0788639621','documents/id/Document.pdf','documents/job/Document.pdf','documents/bank/Document.pdf','2026-08-05 14:40:56.066861',104),
(94,'1199070186955114','MUKARAGE DOTTY','Female','RWAMAGANA','NYAKARIRO','GISHORE','RUSUSA','Married','mukadotty01@gmail.com','0788446516','documents/id/DOC-20251215-WA0002_','documents/job/MUKARAGE_Dotty_nyakaliro.pdf','documents/bank/DOTTY_OG.pdf','2026-08-05 15:01:56.961308',105),
(95,'1199880022030244','AKIBA PHILBERT','Male','KICUKIRO','GATENGA','NYARURAMA','BISAMBU','Single','akibap49@gmail.com','0785837095','documents/id/PHILBERT_AKIBA.pdf','documents/job/PHILBERT_AKIBA.pdf','documents/bank/Philbert_Akiba_3_1.pdf','2026-08-05 15:22:11.200400',106),
(96,'1199480134119137','MUCYO THIERRY','Male','GASABO','KACYIRU','KAMATAMU','CYIMANA','Single','t.mucyo@brd.rw','0783192784','documents/id/My_contract_and_bank_statement.pdf','documents/job/My_contract_and_bank_statement.pdf','documents/bank/My_contract_and_bank_statement.pdf','2026-08-10 14:03:49.071599',107),
(97,'1199080014746034','NTIRENGANYA SYLIVAIN','Male','NYAMAGABE','CYANIKA','NYANZA','BUHINGA','Single','ntirenganyasylvain@gmail.com','0787050411','documents/id/id_4.pdf','documents/job/NEW_JOB_CONTRACT.pdf','documents/bank/Statement_7.pdf','2026-08-10 14:26:37.580880',108),
(98,'1197380091250006','NTAGARA THEOPHILE','Male','KICUKIRO','MASAKA','GAKO','UBUTANGAMPUNDU','Married','ntagaratheophile@gmail.com','07888934440','documents/id/ID_THEO.pdf','documents/job/WHO_CONTRACT_THEO_2025.pdf','documents/bank/ID_THEO.pdf','2026-08-10 14:44:43.450603',109),
(99,'1199280209781170','MFASHINGABO JOSUE','Male','GASABO','NDERA','KIBENGA','BUHORO','Single','mfashingabomaojosue001@gmail.com','9787722736','documents/id/microloan_form_.pdf','documents/job/microloan_form_.pdf','documents/bank/microloan_form_.pdf','2026-08-11 15:58:55.935428',110),
(100,'1198280032285222','CHRISTIAN CYUBAHIRO','Male','GASABO','NDUBA','GASANGE','GASANZE','Married','cyubahirotian@gmail.com','0788678545','documents/id/Cyubahiro_ID.pdf','documents/job/CYUBAHIRO_CHRISTIAN-Provisional_appointment_on_the_job_position_Network_Sp_Is3m6Fu.pdf','documents/bank/CYUBAHIRO_CHRISTIAN_ACCOUNT_STATEMENT.pdf','2026-08-11 16:07:38.137057',111),
(101,'1199570179094132','UWASE DONNA CHANTAL','Female','KICUKIRO','NIBOYI','NYAKABANDA','AMAHORO','Single','uwachantal1998@gmail.com','0781073337','documents/id/UWASE12.pdf','documents/job/UWASE12.pdf','documents/bank/UWASE12.pdf','2026-08-11 16:17:14.404902',112),
(102,'1199870172322078','IRADUKUNDA GLORIA','Female','Kicukiro','Nyarugunga','KAMASHASHI','KIBAYA','Single','g.iradukunda99@gmail.com','0788816176','documents/id/IMG_6298.jpeg','documents/job/IMG_6298.jpeg','documents/bank/Bank_statement_4.pdf','2026-08-11 16:23:10.944967',113),
(103,'1199380153277091','ANDRE AHIMANA','Male','NYARUGENGE','NYAMIRAMBO','GASHARU','KAGUNGA','Married','andreahimana95@gmail.com','0782523553','documents/id/ANDRE_AHIMANA_LOAN_APPLICATION.pdf','documents/job/ANDRE_AHIMANA_LOAN_APPLICATION.pdf','documents/bank/ANDRE_AHIMANA_LOAN_APPLICATION.pdf','2026-08-11 16:34:16.335371',114),
(104,'1199180107270269','TWAGIRIMANA OLIVIER','Male','GASABO','KINYINYA','GASHARU','AGATARE','Married','oliviertwagirimana91@gmail.com','0780200781','documents/id/loan-agreement-_twagirimana_olivier_3.docx','documents/job/loan-agreement-_twagirimana_olivier_3.docx','documents/bank/loan-agreement-_twagirimana_olivier_3.docx','2026-08-11 17:28:40.050314',115),
(105,'1197370007489058','UWAMAHORO MELANIE','Female','KICUKIRO','KICUKIRO','NGOMA','INTAHO','Married','melanieuwamahoro@yahoo.fr','0788483469','documents/id/DEMANDE_DE_CREDIT.pdf','documents/job/DEMANDE_DE_CREDIT.pdf','documents/bank/DEMANDE_DE_CREDIT.pdf','2026-08-11 17:42:17.226978',116),
(106,'1197580005425086','BAZAGIRABATE Felicien','Male','GASABO','KACYIRU','KACYIRU','KACYIRU','Married','felicienbaza@gmail.com','0788623057','documents/id/ID_card_-_BAZAGIRABATE_Felicien.pdf','documents/job/loan-agreement-_felicien_bazagiba.docx','documents/bank/loan-agreement-_felicien_bazagiba.docx','2026-08-11 18:38:28.341277',117),
(107,'1198880145082034','DUSINGIZIMANA JEAN CLAUDE','Male','HUYE','MUKURA','RANGO','MPAZA','Married','dusiclaude2@gmail.com','0788521301','documents/id/Application_documents.pdf','documents/job/Application_documents.pdf','documents/bank/DUSINGIZIMANA-1_1.pdf','2026-08-11 18:49:19.556398',118),
(108,'1200280015446280','NDACYAYIZERA APHRODIS','Male','GICUMBI','RUTARE','GATWARO','KABIRA','Single','andacyayizera@gmail.com','07805156712','documents/id/my_id_1.pdf','documents/job/letter.pdf','documents/bank/APHRODICE_HISTOLIQUE.pdf','2026-08-11 18:57:48.069690',119),
(109,'1197780007681286','GASANA JEAN DE DIEU','Male','GASABO','KINYINYA','GASHURU','AGATARE','Married','jeandedieu.gasana38@gmail.com','0788630407','documents/id/JD_Gasana_docs.pdf','documents/job/JD_Gasana_docs.pdf','documents/bank/JD_Gasana_docs.pdf','2026-08-11 19:08:47.460746',120),
(110,'1198070121923098','UWIMANA MARIE CLAIRE','Female','BUGESERA','MAREBA','MAREBA','MAREBA','Married','uwimanamarieclaire20@gmail.com','0788831429','documents/id/DocScanner_2_Sept_2025_07-54.pdf','documents/job/DocScanner_2_Sept_2025_07-54.pdf','documents/bank/DocScanner_2_Sept_2025_07-54.pdf','2026-08-14 11:26:12.826979',121),
(111,'1199080106208092','JEAN D AMOUR IYAKAREMYE','Male','MUSANZE','GATARAGA','GATARAGA','GATARAGA','Married','iyakaremyejeandamour3@gmail.com','0786314988','documents/id/IMG_20260309_165200_336-2042992618.jpg','documents/job/IMG_20260309_165200_336-2042992618.jpg','documents/bank/IMG_20260309_165200_336-2042992618.jpg','2026-08-14 13:49:32.354406',122),
(112,'1199480196376108','CALEB SABIIT','Male','KICUKIRO','NYARUGUNGA','KAMASHASHI','KIBAYA','Married','calebsabiiti5@gmail.com','0780443530','documents/id/ID_5.pdf','documents/job/Contract_9.pdf','documents/bank/Statement_1560135_100027094281.pdf','2026-08-14 14:19:02.050174',123),
(113,'1198170006061132','INGABIRE JACQUELINE','Female','NYARUGENGE','RWEZAMENYO','RWEZAMENYO','RWEZAMENYO','Married','ingabirejacqueline2000@gmail.com','0788604444','documents/id/IMG-20260814-WA0022.jpg','documents/job/IMG-20260814-WA0022.jpg','documents/bank/IMG-20260814-WA0022.jpg','2026-08-16 10:07:11.681284',124),
(114,'1200070163970078','UMUHUMURIZA MPANO YVONNE','Female','NYARUGENGE','NYAMIRAMBO','NYAMIRAMBO','NYAMIRAMBO','Single','mpanoumuhumuriza@gmail.com','0781650155','documents/id/ID_3.jpeg','documents/job/Appointment_Letter.jpeg','documents/bank/Appointment_Letter.jpeg','2026-08-16 10:13:17.558881',125),
(115,'018730193','BETTY NAKIWUNGE','Female','UGANDA','UGANDA','UGANDA','UGANDA','Married','nakiwugebetty10@gmail.com','0792578857','documents/id/document_ya_NAKIWUGE_Betty.pdf','documents/job/document_ya_NAKIWUGE_Betty.pdf','documents/bank/document_ya_NAKIWUGE_Betty.pdf','2026-08-16 10:24:34.055696',126),
(116,'119918052812168','HAKUZIMANA SETH','Male','KICUKIRO','GIKONDO','KAGUNGA','KAGUNGA','Married','sethhakz@gmail.com','0782196209','documents/id/Seth_ID.png','documents/job/EMPLOYMENT_CONTRACT.pdf','documents/bank/SETH_HAKUZIMANA_BANK_STATEMENT.pdf','2026-08-16 10:33:23.499544',127),
(117,'1199080129888082','UWIMANIMAYE SERGE','Male','KICUKIRO','KANOMBE','RUBIRIZI','UWABAREZI','Married','suwimanimpaye@gmail.com','0788268848','documents/id/ID_SERGE.pdf','documents/job/Appointment_Letter.pdf','documents/bank/Bank_statement_6.pdf','2026-08-16 10:44:06.170223',128),
(118,'1199780158239129','ROGER MUHIRE','Male','KICUKIRO','NYANZA','MURAMBI','MURAMBI','Single','rogermuhire@gmail.com','0781870110','documents/id/Roger_National_ID_1.jpg','documents/job/Employment_Contract_2.pdf','documents/bank/Bank_Statements.pdf','2026-08-18 19:53:53.670970',129),
(119,'1199680160437109','NDERERIMANA SERLIVIEN','Male','BURERA','BUTARO','BUTARO','BUTARO','Married','ndereriserv96@gmail.com','0787251399','documents/id/ID_6.pdf','documents/job/Appointment_Letter_1.pdf','documents/bank/NDERERIMAN.pdf','2026-08-19 11:30:30.187117',130),
(120,'1197470008043199','SEBUFILIRA SOPHIE','Female','GASABO','KIMIRONKO','BIBARE','IMITARI','Married','sebusophier3@gmail.com','0788384501','documents/id/IMG_4382.jpeg','documents/job/IMG_4382.jpeg','documents/bank/Page_2_of_3.pdf','2026-08-19 17:48:58.648580',131),
(121,'1197680107851111','MBUNGIRA JEAN','Male','NYARUGENGE','NYARUGENGE','NYARUGENGE','NYARUGENGE','Married','jmbungira@gmail.com','0786072549','documents/id/IMG-20250425-WA0007.jpg','documents/job/IMG-20250425-WA0006.jpg','documents/bank/MBUNGIRA_JEAN.pdf','2026-08-19 17:57:20.613917',132),
(122,'1198480209199558','BIZIMANA YVES LAURENT','Male','KICUKIRO','MASAKA','GAKO','KIBANDE','Married','yveslaurentbizi@gmail.com','0781198380','documents/id/ID_YVES_LAURENTB_BIZIMANA.pdf','documents/job/employment__contract__.pdf','documents/bank/YVES_LAURENT_BIZIMANA_BANK_STATEMENT_1_4.pdf','2026-08-19 18:38:27.008764',133),
(123,'1198980012220070','NTIZIMIRA PILA','Male','KICUKIRO','KANOMBE','KABEZA','GIPOROSO 1','Married','ntizimirapila@gmail.com','0788270937','documents/id/20260505_171755.jpg','documents/job/pilla_contract_ampersand.pdf','documents/bank/PILA.pdf','2026-08-19 18:47:45.394780',134),
(124,'1199580196640184','NIYONKURU FLORIBERT','Male','GASABO','KIMIRINKO','NYAGATOVU','IJABIRO','Married','floriniyo7@gmail.com','07871056039','documents/id/ID_FLORI220251215_17154219.pdf','documents/job/ID_FLORI220251215_17154219.pdf','documents/bank/FLORIBERT_NIYONKURU_2.pdf','2026-08-19 18:57:41.954675',135),
(125,'1199780032083241','UWIYUBASHYE FESTUS','Male','GASABO','KIMIRINKO','NYAGATOVU','IJABIRO','Single','festusuwiyubashye@gmail.com','0785774876','documents/id/N_ID.pdf','documents/job/UWIYUBASHYE_FESTUS_16.pdf','documents/bank/UWIYUBASHYE_FESTUS_16_1.pdf','2026-08-22 16:41:46.088581',136),
(126,'1199880095807122','NSANZIMANA THEOPHILE','Male','BURERA','GAHANGA','RWONA','MUTARA','Single','theophsanzimana@gmail.com','0782836006','documents/id/ID_7.pdf','documents/job/ID_7.pdf','documents/bank/STMT_BANK_68.pdf','2026-08-22 18:52:09.398262',137),
(127,'1199680131498055','TWAHIRWA HIDJAZI','Male','KICUKIRO','MASAKA','MASAKA','MASAKA','Single','thidjazi@gmail.com','0785380909','documents/id/doc05542320250211133705.pdf','documents/job/Copy_of_CONTRACT.pdf','documents/bank/Hidjazi_TWAHIRWA.pdf','2026-08-22 19:00:46.418468',138),
(128,'1199680165713102','NIBYAYO PLACIDE','Male','KIGALI','BUMBOGO','NGARA','GISASA','Single','placide10j@gmail.com','0780838553','documents/id/ID_3_1.pdf','documents/job/Contract_10.pdf','documents/bank/Statement_1644744_100043697883.pdf','2026-08-24 11:26:08.489329',139),
(129,'1199480002257073','NIYONGIRA  DAMASCENE','Male','GAKENKE','GAKENKE','GAKENKE','GAKENKE','Married','jeandamasceneniyongira@gmail.com','0787429891','documents/id/ID_8.pdf','documents/job/Final_appoitment_letter_RIB.pdf','documents/bank/ZIgama_CSS_Bank_statement.pdf','2026-08-24 11:49:34.366814',140),
(130,'1198470175796178','NAUME MUREBWAYIRE','Female','KICUKIRO','MASAKA','GAKO','CYUGAMO','Married','nmurebwayire@bpr.rw','0788735008','documents/id/DOCUMENTS_NAUME.pdf','documents/job/DOCUMENTS_NAUME.pdf','documents/bank/DOCUMENTS_NAUME.pdf','2026-08-24 12:13:42.906044',141),
(131,'1198180018341188','VICTOR MUTARINDWA','Male','KICUKIRO','KAGARAMA','MUYANGE','KAMUNA','Married','mutav.victor@gmail.com','0788547229','documents/id/ID_COPY.pdf','documents/job/additinal_contract.pdf','documents/bank/STMT_VICTOR.pdf','2026-08-24 12:22:59.777265',142),
(132,'1198980088105103','MOISE NGIZWENAYO','Male','GASABO','NDERA','MASORO','MUBUGA','Married','ngizwenayomoise@gmail.com','0785464580','documents/id/Moise.pdf','documents/job/Moise.pdf','documents/bank/Moise.pdf','2026-08-24 12:38:35.462648',143),
(133,'1199080029788001','GUSENGA JEAN CLAUDE','Male','NYANZA','BUSASAMANA','BUSASAMANA','BUSASAMANA','Married','gusengajeanclau@gmail.com','0787393869','documents/id/IMG-20240711-WA0056.jpg','documents/job/IMG-20240711-WA0056.jpg','documents/bank/IMG-20240711-WA0056.jpg','2026-08-24 12:51:40.943364',144),
(134,'1199870054144056','NTAWUYIRUTA PASCASIE','Male','RUSIZI','GIHUNDWE','BURUNGA','KARANGIRO','Married','ntawuyirutapascasie3@gmail.com','0789233940','documents/id/PASCASIE_ID.jpg','documents/job/PASCASIE_JOB_LETTER.pdf','documents/bank/pascasie_statements.pdf','2026-08-24 14:01:01.629355',145),
(135,'1199070168186151','SYLVINE MUTAREMARA','Female','KICUKIRO','MASAKA','CYIMO','MURAMBI','Married','Sylvine.MUTAREMARA@bpr.rw','07855226505','documents/id/LOAN_REQUEST_-_SYLVINE_MUTAREMARA.pdf','documents/job/LOAN_REQUEST_-_SYLVINE_MUTAREMARA.pdf','documents/bank/ACCOUNT_STATEMENT_-_SYLVINE_MUTAREMARA_1.pdf','2026-08-24 15:06:28.796210',146),
(136,'1198180073776225','NZABAHIMANA ELIE','Male','MUHANGA','NYAMABUYE','GAHOGO','RUTENGA','Married','www.nzabahimana@gmail.com','0788742256','documents/id/ID_9.pdf','documents/job/Contract_11.pdf','documents/bank/NR639_ACCOUNT_STATEMENT_87.pdf','2026-08-24 19:32:48.176751',147),
(137,'1199880050660063','RUKUNDO SAMUEL','Male','GASABO','KIMIRONKO','KIBAGABAGA','NYIRABWANA','Single','srukundo808@gmail.com','0781148226','documents/id/Samuel_IDS_.jpg','documents/job/Rukundo_Contract_1.pdf','documents/bank/Statement_2163439_100022493382.pdf','2026-08-26 07:33:13.668683',148),
(138,'1198280192152246','BAGAMBIKI LEONARD','Male','KIGALI','KICUKIRO','KAMASHASHI','MULINDI','Married','Leonard.Bagambaki@marriott.com','0781464059','documents/id/image002.png','documents/job/Xerox_Scan_15012026135923.pdf','documents/bank/BANK_ACCOUNT_STATEMENT_FOR_LEONARD.pdf','2026-09-01 16:39:35.334020',149),
(139,'1199680023325086','SHEMA EMILLE','Male','GASABO','KIMIRONKO','NYAGATOVU','UBUHORO','Single','shemile4@gmail.com','0785367173','documents/id/CamScanner_16-03-2026_12.00_1.jpeg','documents/job/20260729_FO_contract.pdf','documents/bank/receipts_2026-07-28T00_00_00.00002_00_2026-08-28T11_35_32.19802_00.pdf','2026-09-01 17:03:46.127146',150),
(140,'1199870029641017','UMUTONI CARINE','Female','GASABO','GISOZI','MUSEZERO','BYIMANA','Single','carinemutoni135@gmail.com','0788834907','documents/id/ID-_Carine_Umutoni.pdf','documents/job/Employment_Contract_3.pdf','documents/bank/BankStatement_-_2025-11-19_CARINE_UMUTONI.pdf','2026-09-01 17:15:51.179039',151),
(141,'1198680001639117','GISODA ALBERT NDAYISENGA','Male','BUGESERA','NYAMATA','KAYUMBA','RWAZA','Married','gisalberto@gmail.com','0788694559','documents/id/National_ID.pdf','documents/job/2026_Salary_Adjustments-Albert_1.pdf','documents/bank/Bank_Statement_7.pdf','2026-09-01 18:49:41.890136',152),
(142,'1199380139346173','BAVANGA INNOCENT','Male','NYAGATARE','KARANGAZI','KARANGAZI','KARANGAZI','Single','bavangainnocent250@gmail.com','0788361447','documents/id/BA.pdf','documents/job/BA.pdf','documents/bank/BA.pdf','2026-09-01 19:05:33.528489',153),
(143,'1198780033675083','KABANDA ANATHOLE','Male','KICUKIRO','NYARUGUNGA','RUKIRI 1','RUKIRI 2','Married','anatholekabanda2020@gmail.com','0785077751','documents/id/20251129_134756.jpg','documents/job/20251129_134756.jpg','documents/bank/20251129_134756.jpg','2026-09-10 16:13:18.205231',154),
(144,'1199780054882056','KIRENGA NICK MUVUNYI','Male','GASABO','KIMIRONKO','KIBAGABAGA','RINDIRO','Single','nickkirenga@gmail.com','0788471144','documents/id/REPUBULIKA_YU_RWANDA_2.pdf','documents/job/kirenga_offer_letter.pdf','documents/bank/Statement_1659089_100246620077.pdf','2026-09-10 16:30:17.947371',155),
(145,'11996380073771102','NDAHAYO IIDEPHONSE','Male','KICUKIRO','KAGARAMA','MUYANGE','BIGABO','Divorced','ndahayoilde@gmail.com','0786747947','documents/id/WhatsApp_Image_2026-04-28_at_11.31.48_AM_1.jpeg','documents/job/WhatsApp_Image_2026-04-28_at_11.31.48_AM_1.jpeg','documents/bank/WhatsApp_Image_2026-04-28_at_11.31.48_AM_1.jpeg','2026-09-10 16:48:17.869216',156),
(146,'1199670254641034','JEANNE GENTILLE MUKANEZA','Female','NYARUGENGE','KIMISAGARA','KAMUHOZA','KARAMA','Single','mukanezagentille6@gmail.com','0787846597','documents/id/IMG-20260401-WA0003.jpg','documents/job/IMG-20260401-WA0003.jpg','documents/bank/IMG-20260401-WA0003.jpg','2026-09-10 16:54:39.915648',157),
(147,'1199180137284006','UWINGABIRE JENINAH','Female','RWAMAGANA','MUYUMBO','MUYUMBO','MUYUMBO','Married','jeninah12@gmail.com','0785794795','documents/id/ID_10.pdf','documents/job/Contract_12.pdf','documents/bank/Bank_Statment_1.pdf','2026-09-10 17:02:22.077958',158),
(148,'1199480118046043','HISHAMUNDA JEAN MARIE VIANNEY','Male','GASABO','NDERA','KIBENGA','GITARAGA','Married','jmvhishamunda500@gmail.com','0788697035','documents/id/DOCUMENTS.pdf','documents/job/DOCUMENTS.pdf','documents/bank/DOCUMENTS.pdf','2026-09-10 17:13:52.461946',159),
(149,'1199380008788100','SERGE RUSIMBI','Male','GASABO','KINYINYA','GASHARU','GASHARU','Single','s.rusimbi@gmail.com','0786177325','documents/id/SRUSIMBI_ID.pdf','documents/job/SRUSIMBI_Contract.pdf','documents/bank/SRUSIMBI_Bank_Statement.pdf','2026-09-10 17:23:13.591960',160),
(150,'1198980008661372','MURENZI EMMANUEL','Male','KIGALI CITY','KINYINYA','MURAMA','NGANYINKA','Single','murenziemmanuel80@gmail.com','0788525045','documents/id/1000058852.jpg','documents/job/offerletter6989_2.pdf','documents/bank/Statement_1_1.pdf','2026-09-10 17:39:42.206960',161),
(151,'1198770139007045','MUHAWENIMANA MEDIATRICE','Female','BUGESERA','NYAMATA','NYAMATA','NYAMATA','Married','medim456@gmail.com','0788235596','documents/id/MEDIM_DOCS.pdf','documents/job/MEDIM_DOCS.pdf','documents/bank/MEDIM_DOCS.pdf','2026-09-10 17:59:46.280436',162),
(152,'1198880069682018','MUNYANEZA CHRISTIAN','Male','NYAMASHEKE','KAGANO','KAGANO','KAGANO','Single','muchrist33@yahoo.fr','0783208277','documents/id/PXL_20240723_104939431.MP.jpg','documents/job/SALARY_CERTIFICATE_CHRIS.pdf','documents/bank/BANK_Statement_to_KML.pdf','2026-09-10 18:19:50.783169',163),
(153,'1199280231468003','HALINDIMANA JABEL','Male','KAMONYI','RUNDA','MUGANZA','KIGABIRO','Single','halindimanajabel@gmail.com','0785470868','documents/id/Jabel_ID_1.pdf','documents/job/BLC-FIN-25-11-JABEL_PERMANENT_CONTRACT.pdf','documents/bank/Statement_1711885_100241723636.pdf','2026-09-10 18:31:23.662539',164),
(154,'1199680219017124','HAMIN MANIRAMPA','Male','GASABO','KIMIRONKO','BIBARE','INGANJI','Single','manirampa55@gmail.com','0781213777','documents/id/REPUBULIKA_YU_RWANDA_2_ViY27s9.pdf','documents/job/QUESTION_3.pdf','documents/bank/Statement_1731385_100161845145.pdf','2026-09-10 18:41:04.999853',165),
(155,'1197170051489083','MUKAGATERA AURELIE','Female','GICUMBI','KAGEYO','GIHEMBE','MUNINI','Married','mukagatareaurelie1@gmail.com','0782891933','documents/id/Mukagatare_Aurerie_compressed.pdf','documents/job/Mukagatare_Aurerie_compressed.pdf','documents/bank/Mukagatare_Aurerie_compressed.pdf','2026-09-10 18:50:06.822274',166),
(156,'1198680043781008','NKUSI PLACIDE','Male','KICUKIRO','KIGARAMA','KARUGIRA','IHURIRO','Married','nkusip@gmail.com','0788388353','documents/id/ID_Placide_Nkusi.jpeg','documents/job/10_Employment_Contract_Placide_Nkusi_2024.pdf','documents/bank/Nkusi_Placide_Statement.pdf','2026-09-10 19:26:03.910731',167),
(157,'1196670002728049','DUSABE DINA','Female','GASABO','KACYIRU','KACYIRU','KACYIRU','Married','dusdina@yahoo.fr','0788675020','documents/id/MY_ID.jpg','documents/job/MY_ID.jpg','documents/bank/BANK_STATEMENT_DUSABE_DINA_2.pdf','2026-09-10 19:35:24.966200',168),
(158,'1196580040889014','HABUMUREMYI VENUSTE','Male','GASABO','BUMBOGO','NYABIKENKE','MASIZI','Married','habavenus@gmail.com','0785445334','documents/id/Venuste_loan.pdf','documents/job/Venuste_loan.pdf','documents/bank/VENUSTE_1.pdf','2026-09-10 19:51:28.483265',169),
(159,'1199180055403533','CYUBAHIRO JEAN CLAUDE','Male','RUSIZI','MURURU','MURURU','MURURU','Married','jeanclaudecyubahiro@gmail.com','0788946029','documents/id/1000841128.jpg','documents/job/1000841128.jpg','documents/bank/1000841128.jpg','2026-09-16 19:40:49.468468',170),
(160,'1198780172006172','MBARUSHIMANA THEONESTE','Male','KICUKIRO','KAGARAMA','KAGARAMA','KAGARAMA','Married','theonestus08@gmail.com','0788340985','documents/id/ID_OF_THEONESTE.jpeg','documents/job/CONTRACT_OF_MBARUSHIMANA_THEONESTE-DOC.pdf','documents/bank/BANK_STATEMENT_THEONESTE_MBARUSHIMANA.pdf','2026-09-16 19:47:51.117513',171),
(161,'1199180153082076','NTIBAZIRIKANA JEAN DE DIEU','Male','GASABO','KINYINYA','GASHARU','AGATARE','Married','unclejohn01991@gmail.com','0798336640','documents/id/NTIBAZIRIKANA._LOAN_APPLICATION.pdf','documents/job/NTIBAZIRIKANA._LOAN_APPLICATION.pdf','documents/bank/NTIBAZIRIKANA._LOAN_APPLICATION.pdf','2026-09-17 16:11:59.605411',172),
(162,'1199570125702088','EMIMA MUREKATETE','Female','KICUKIRO','KAGARAMA','KAGARAMA','KAGARAMA','Married','honorinetuyishime4@gmail.com','0788792495','documents/id/WhatsApp_Image_2026-09-16_at_20.44.15.jpeg','documents/job/WhatsApp_Image_2026-09-16_at_20.44.15.jpeg','documents/bank/WhatsApp_Image_2026-09-16_at_20.44.15.jpeg','2026-09-17 16:21:11.182649',173),
(163,'009698543','NASSALI JULIET','Female','UGANDA','UGANDA','UGANDA','UGANDA','Married','julietnassali03@gmail.com','0795693325','documents/id/Documents_of_Juliet.pdf','documents/job/Documents_of_Juliet.pdf','documents/bank/Documents_of_Juliet.pdf','2026-09-17 17:00:58.819967',174),
(164,'1199480095863122','AMANI JAMES','Male','NYAGATARE','KARANGAZI','KARANGAZI','KARANGAZI','Single','amaijames164@gmail.com','0788324861','documents/id/JAMES_BANK_STATEMENT_ID.pdf','documents/job/JAMES_BANK_STATEMENT_ID.pdf','documents/bank/JAMES_BANK_STATEMENT_ID.pdf','2026-09-17 17:09:10.066680',175),
(165,'1199280084850016','KABASHA JEAN PAUL','Male','KICUKIRO','MASAKA','KICUKIRO','BWIZA','Single','kabashajp@gmail.com','0788418935','documents/id/NID.jpg','documents/job/BANK_STATEMENT-KABASHA_JEAN_PAUL.pdf','documents/bank/BANK_STATEMENT-KABASHA_JEAN_PAUL.pdf','2026-09-17 17:21:33.350970',176),
(166,'1199480018728072','MUPENZI SEBAGANJI','Male','RUHANGO','BWERAMANA','BUHANDA','GIKARABIRO','Single','sebaganjim@gmail.com','0782550937','documents/id/sebaganji_mupenzi_ID-1.jpg','documents/job/contact_mupenzi.pdf','documents/bank/Statement_1764978_100010612548.pdf','2026-09-17 17:34:10.532537',177),
(167,'1198280018185019','TUYISENGE HENRI JACQUE','Male','GASABO','GISOZI','GISOZI','GISOZI','Married','thjack501@gmail.com','0788523184','documents/id/Loan-Agreement_Tuyisenge_Henri_Jacques_12122025_1101.pdf','documents/job/Loan-Agreement_Tuyisenge_Henri_Jacques_12122025_1101.pdf','documents/bank/Loan-Agreement_Tuyisenge_Henri_Jacques_12122025_1101.pdf','2026-09-17 17:46:31.753659',178),
(168,'1197980004680047','INNOCENT GATERA','Male','NYARUGENGE','NYARUGENGE','NYARUGENGE','NYARUGENGE','Married','innocentgatera742@gmail.com','0788488411','documents/id/DOC-20260410-WA0037_','documents/job/DOC-20260410-WA0037_','documents/bank/DOC-20260410-WA0037_','2026-09-17 17:51:44.602731',179),
(169,'1196570070256142','AIME DEO MARIE ROSE','Female','GASABO','REMERA','REMERA','REMERA','Married','amiedeomarierose@gmail.com','0788848986','documents/id/DOC-20260209-WA0003._1.pdf','documents/job/DOC-20260209-WA0003._1.pdf','documents/bank/DOC-20260207-WA0003..pdf','2026-09-22 17:01:02.678855',180),
(170,'1198480063386165','NIYOMUGABO EGIDE','Male','GASABO','REMERA','REMERA','REMERA','Married','egideniyomugabo661@gmail.com','0792052849','documents/id/Id.pdf_niyo.pdf','documents/job/Id.pdf_niyo.pdf','documents/bank/Id.pdf_niyo.pdf','2026-09-24 12:16:40.083871',181),
(171,'1197680031576010','GASASIRA JEAN','Male','HUYE','TUMBA','TUMBA','TUMBA','Married','gasasirajean18@gmail.com','0788893304','documents/id/IMG-20240822-WA0000.jpg','documents/job/Contract__GASASIRA_Jean_II.pdf','documents/bank/STMT_BANK_56.pdf','2026-09-24 20:06:49.010482',182),
(172,'1198380003911107','ANACLET MUYOMBAYIRE','Male','NYARUGENGE','MUHIMA','MUHIMA','MUHIMA','Single','muyombayire.anaclet@gmail.com','0788309011','documents/id/Anaclet_Muyombayire.jpg','documents/job/Anaclet_Muyombayire.jpg','documents/bank/Anaclet_Muyombayire.jpg','2026-09-28 15:34:26.888682',183),
(173,'1197480009714043','EMILE KAREMERA','Male','KICUKIRO','KAGARAMA','KAGARAMA','KAGARAMA','Married','emilekaremera4@gmail.com','0788356225','documents/id/gmail_images20260929_114414.png','documents/job/gmail_images20260929_114414.png','documents/bank/gmail_images20260929_114414.png','2026-09-29 19:42:09.572951',184),
(174,'1199780078025019','SAMUEL NIYOMWUNGERI','Male','GASABO','KINYINYA','GASHARU','RWANKUBA','Married','niyosamu280@gmail.com','0780260702','documents/id/SAMs_I.D.jpeg','documents/job/Samuel_NIYOMWUNGERI_CHB_Contract.pdf.pdf','documents/bank/Bank_Statement_July_September_2026.pdf','2026-09-30 21:24:15.035037',185);
/*!40000 ALTER TABLE `clients_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_users_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES
(1,'2026-05-02 19:48:48.364094','1','admin',2,'[{\"changed\": {\"fields\": [\"Role\"]}}]',7,1),
(2,'2026-05-08 08:12:31.064454','2','elysee.admin',2,'[{\"changed\": {\"fields\": [\"Role\"]}}]',7,1),
(3,'2026-06-03 05:46:14.013672','8','LoanApplication object (8)',3,'',10,1),
(4,'2026-06-03 05:46:14.013716','7','LoanApplication object (7)',3,'',10,1),
(5,'2026-06-03 05:46:14.013733','6','LoanApplication object (6)',3,'',10,1),
(6,'2026-06-03 05:46:26.172192','4','Loan #7 - Byiringiro Emmanuel - 110000.00',3,'',11,1),
(7,'2026-06-03 05:46:37.678134','9','Loan #9 - Asante Queen',3,'',9,1),
(8,'2026-06-03 05:46:37.678175','8','Loan #8 - Byiringiro Emmanuel',3,'',9,1),
(9,'2026-06-03 05:46:37.678195','7','Loan #7 - Byiringiro Emmanuel',3,'',9,1),
(10,'2026-07-29 10:36:59.905198','30','Loan #30 - Elysee Test One',2,'[{\"changed\": {\"fields\": [\"Disbursement date\"]}}]',9,1),
(11,'2026-10-06 18:29:29.809159','1','System Settings',2,'[{\"changed\": {\"fields\": [\"Allow sending emails\"]}}]',17,1),
(12,'2026-10-08 07:27:21.685946','1','System Settings',2,'[{\"changed\": {\"fields\": [\"Allow sending emails\"]}}]',17,1),
(13,'2026-10-08 07:28:35.061944','1','System Settings',2,'[{\"changed\": {\"fields\": [\"Allow sending emails\"]}}]',17,1),
(14,'2026-10-09 07:57:20.102177','1','System Settings',2,'[{\"changed\": {\"fields\": [\"Allow sending emails\"]}}]',17,1),
(15,'2026-10-09 08:09:34.141674','1','System Settings',2,'[]',17,1),
(16,'2026-10-16 09:03:30.072102','1','System Settings',2,'[{\"changed\": {\"fields\": [\"Allow sending emails\"]}}]',17,1),
(17,'2026-11-17 16:55:02.563574','1','System Settings',2,'[{\"changed\": {\"fields\": [\"Allow sending emails\"]}}]',17,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES
(1,'admin','logentry'),
(2,'auth','group'),
(3,'auth','permission'),
(8,'clients','client'),
(4,'contenttypes','contenttype'),
(9,'loans','loan'),
(10,'loans','loanapplication'),
(11,'loans','loanpayment'),
(12,'loans','loantype'),
(15,'loans','pastloansheet'),
(13,'loans','publicloanapplication'),
(14,'loans','repaymentschedule'),
(16,'OnBoarding','onboardingvideo'),
(5,'sessions','session'),
(17,'SystemSettings','systemsetting'),
(6,'users','passwordresetrequest'),
(7,'users','user');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES
(1,'contenttypes','0001_initial','2026-05-02 17:17:31.613127'),
(2,'contenttypes','0002_remove_content_type_name','2026-05-02 17:17:31.657410'),
(3,'auth','0001_initial','2026-05-02 17:17:31.798853'),
(4,'auth','0002_alter_permission_name_max_length','2026-05-02 17:17:31.819887'),
(5,'auth','0003_alter_user_email_max_length','2026-05-02 17:17:31.828227'),
(6,'auth','0004_alter_user_username_opts','2026-05-02 17:17:31.835497'),
(7,'auth','0005_alter_user_last_login_null','2026-05-02 17:17:31.840351'),
(8,'auth','0006_require_contenttypes_0002','2026-05-02 17:17:31.842210'),
(9,'auth','0007_alter_validators_add_error_messages','2026-05-02 17:17:31.846958'),
(10,'auth','0008_alter_user_username_max_length','2026-05-02 17:17:31.852470'),
(11,'auth','0009_alter_user_last_name_max_length','2026-05-02 17:17:31.856552'),
(12,'auth','0010_alter_group_name_max_length','2026-05-02 17:17:31.892014'),
(13,'auth','0011_update_proxy_permissions','2026-05-02 17:17:31.897806'),
(14,'auth','0012_alter_user_first_name_max_length','2026-05-02 17:17:31.903568'),
(15,'users','0001_initial','2026-05-02 17:17:32.102488'),
(16,'admin','0001_initial','2026-05-02 17:17:32.175715'),
(17,'admin','0002_logentry_remove_auto_add','2026-05-02 17:17:32.182754'),
(18,'admin','0003_logentry_add_action_flag_choices','2026-05-02 17:17:32.190090'),
(19,'clients','0001_initial','2026-05-02 17:17:32.235455'),
(20,'clients','0002_alter_client_bank_statement_alter_client_id_document_and_more','2026-05-02 17:17:32.319184'),
(21,'loans','0001_initial','2026-05-02 17:17:32.358745'),
(22,'loans','0002_loantype_loan_remaining_balance_alter_loan_status_and_more','2026-05-02 17:17:32.741662'),
(23,'loans','0003_loanapplication_contract_loanapplication_is_signed_and_more','2026-05-02 17:17:32.825970'),
(24,'loans','0004_loanapplication_signed_contract','2026-05-02 17:17:32.846797'),
(25,'loans','0005_loanpayment_payment_proof_loanpayment_reviewed_by_and_more','2026-05-02 17:17:33.019668'),
(26,'loans','0006_loan_overdue_notified_loan_reminder_1_day_sent_and_more','2026-05-02 17:17:33.188939'),
(27,'loans','0007_loan_last_penalty_date_loan_penalty_amount_and_more','2026-05-02 17:17:33.311288'),
(28,'loans','0008_publicloanapplication','2026-05-02 17:17:33.384732'),
(29,'loans','0009_alter_publicloanapplication_loan_type','2026-05-02 17:17:33.823183'),
(30,'loans','0010_alter_publicloanapplication_application_date','2026-05-02 17:17:33.842384'),
(31,'loans','0011_publicloanapplication_bank_statement_and_more','2026-05-02 17:17:33.938886'),
(32,'loans','0012_loan_parent_loan_alter_loan_status','2026-05-02 17:17:33.987625'),
(33,'loans','0013_loan_overdue_last_notified','2026-05-02 17:17:34.011253'),
(34,'loans','0014_alter_publicloanapplication_signature','2026-05-02 17:17:34.047713'),
(35,'loans','0015_loanpayment_cancellation_reason_and_more','2026-05-02 17:17:34.157393'),
(36,'loans','0016_alter_loan_status','2026-05-02 17:17:34.175901'),
(37,'sessions','0001_initial','2026-05-02 17:17:34.211550'),
(38,'users','0002_user_must_change_password','2026-05-02 17:17:34.249093'),
(39,'users','0003_alter_user_email_alter_user_username','2026-05-02 17:17:34.313913'),
(40,'users','0004_passwordresetrequest','2026-05-02 17:17:34.357512'),
(41,'users','0005_user_is_2fa_enabled_user_otp_secret','2026-05-02 17:17:34.427256'),
(42,'users','0006_user_id_card_user_phone_number','2026-05-05 12:18:03.025206'),
(43,'users','0007_user_full_name','2026-05-05 12:18:03.061284'),
(44,'loans','0017_pastloansheet','2026-05-08 13:17:54.746714'),
(45,'loans','0018_loanpayment_rejection_reason','2026-05-20 17:45:35.570500'),
(46,'OnBoarding','0001_initial','2026-06-18 13:09:34.241535'),
(47,'OnBoarding','0002_onboardingvideo_category','2026-06-18 13:09:34.267441'),
(48,'SystemSettings','0001_initial','2026-06-18 13:09:34.278257'),
(49,'SystemSettings','0002_alter_systemsetting_loan_application_enabled','2026-06-18 13:09:34.281959'),
(50,'SystemSettings','0003_alter_systemsetting_loan_application_enabled','2026-06-18 13:09:34.285492'),
(51,'clients','0003_alter_client_id_document','2026-06-18 13:09:34.347319'),
(52,'loans','0019_loan_defaulting_date_alter_loan_status','2026-06-18 13:09:34.385425'),
(53,'loans','0020_loanpayment_name_of_paid','2026-06-18 13:09:34.415899'),
(54,'SystemSettings','0004_systemsetting_allow_sending_emails','2026-09-04 17:38:23.422907');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES
('3k69lb4hasci1soeqnk2gq8m7y7xxn5e','.eJxVjEEKwyAQAP_iuYgaRdNj732D7LprTVsUYnIK_XsRcmivM8McIsK-lbh3XuNC4iq0uPwyhPTiOgQ9oT6aTK1u64JyJPK0Xd4b8ft2tn-DAr2MbZhd0OACmuwyZWUtG0DnvA3ok_caA2nOaUpsg8lkvKMZVdITMCsrPl_iMDg3:1wJGJs:zQYmAzn_5sNTHHnsueoKjzqC3HdcwMi6RVeY75wR49A','2026-05-16 19:48:08.579758'),
('7h4e6zhd1nut6f8p0odenus4t7g55n4r','.eJxVjEEOwiAQAP-yZ0MEFoQevfuGZhe2UjWQlPZk_Ltp0oNeZybzhpG2tYxbl2WcMwyg4fTLmNJT6i7yg-q9qdTqusys9kQdtqtby_K6Hu3foFAvMAD7M1KIFxRr8-QtGSuCHo0QWSPeaDZRZ9YpI0ZxFIwOyaLGyJNzCT5f2T43lg:1xTKa7:ElJZ8qYFP2LnDutyRUsNqoXSO8ngK83vzaQ7bN_5WNE','2026-12-01 16:54:47.447417'),
('boxdw36vlhqxvi7mwxlzsg0fg8laddcv','.eJxVjEEOwiAQRe_C2hBgCgWX7nsGMgwTqRpISrsy3t026UK3773_3yLitpa4dV7inMVVaHH5ZQnpyfUQ-YH13iS1ui5zkkciT9vl1DK_bmf7d1Cwl31NdsQUDCkHCGowrAKTNphdDgSjH8B7IGCrvFfsnbOJdojKJNAma_H5As93NwI:1wUeQQ:rlmSlXE6Kc_QGM_px4WLehKRFR5N6gGFeX7N3viexs4','2026-06-17 05:45:58.304162'),
('ramzpycm91hhpqs7ew9m0xpnbd4xhs9s','.eJxVjEEOwiAQRe_C2hAHBgSX7j0DmYGpVA1NSrsy3l2bdKHb_977L5VoXWpau8xpLOqsQB1-N6b8kLaBcqd2m3Se2jKPrDdF77Tr61Tkedndv4NKvX5r9kekEE8o1pbBWzJWBD0aIbJGvAE2EQpDLohRHAUDIVsEjDw4l9X7A9k-N5Y:1x9iJs:LKAma9IWVyg07HgPIxNBkVz6J-9wAqQK-Puj0YyPp8k','2026-10-08 12:12:56.904785'),
('stky5o8dg8qhgubpcv20slm8xl0gf590','.eJxVjEEOwiAQRe_C2hAHBgSX7j0DmYGpVA1NSrsy3l2bdKHb_977L5VoXWpau8xpLOqsQB1-N6b8kLaBcqd2m3Se2jKPrDdF77Tr61Tkedndv4NKvX5r9kekEE8o1pbBWzJWBD0aIbJGvAE2EQpDLohRHAUDIVsEjDw4l9X7A9k-N5Y:1xF5Ta:oudr1r0dFux_L_ndaXRt2XNrUeBe0cHrrLea4p0-Nvo','2026-10-23 07:57:10.469331'),
('visuau1hbw14xff6qgd1sib4q5o0biwn','.eJxVjEEOwiAQRe_C2hAHBgSX7j0DmYGpVA1NSrsy3l2bdKHb_977L5VoXWpau8xpLOqsQB1-N6b8kLaBcqd2m3Se2jKPrDdF77Tr61Tkedndv4NKvX5r9kekEE8o1pbBWzJWBD0aIbJGvAE2EQpDLohRHAUDIVsEjDw4l9X7A9k-N5Y:1wp1c0:jd7y4BMhiDu9J5Q2LM1qq3MOT-jrmB5MPig80JQXDFU','2026-08-12 10:34:08.530135');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loans_loan`
--

DROP TABLE IF EXISTS `loans_loan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `loans_loan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `loan_amount` decimal(12,2) NOT NULL,
  `interest_amount` decimal(12,2) NOT NULL,
  `disbursement_date` date NOT NULL,
  `repayment_due_date` date NOT NULL,
  `total_repayment` decimal(12,2) NOT NULL,
  `status` varchar(20) NOT NULL,
  `contract` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `client_id` bigint(20) NOT NULL,
  `remaining_balance` decimal(12,2) NOT NULL,
  `application_id` bigint(20) DEFAULT NULL,
  `loan_type_id` bigint(20) DEFAULT NULL,
  `overdue_notified` tinyint(1) NOT NULL,
  `reminder_1_day_sent` tinyint(1) NOT NULL,
  `reminder_5_days_sent` tinyint(1) NOT NULL,
  `reminder_due_today_sent` tinyint(1) NOT NULL,
  `last_penalty_date` date DEFAULT NULL,
  `penalty_amount` decimal(12,2) NOT NULL,
  `penalty_applied` tinyint(1) NOT NULL,
  `parent_loan_id` bigint(20) DEFAULT NULL,
  `overdue_last_notified` date DEFAULT NULL,
  `defaulting_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `application_id` (`application_id`),
  KEY `loans_loan_client_id_e8ddd5f3_fk_clients_client_id` (`client_id`),
  KEY `loans_loan_loan_type_id_8782e997_fk_loans_loantype_id` (`loan_type_id`),
  KEY `loans_loan_parent_loan_id_7fc68d4e_fk_loans_loan_id` (`parent_loan_id`),
  CONSTRAINT `loans_loan_application_id_c00fef67_fk_loans_loanapplication_id` FOREIGN KEY (`application_id`) REFERENCES `loans_loanapplication` (`id`),
  CONSTRAINT `loans_loan_client_id_e8ddd5f3_fk_clients_client_id` FOREIGN KEY (`client_id`) REFERENCES `clients_client` (`id`),
  CONSTRAINT `loans_loan_loan_type_id_8782e997_fk_loans_loantype_id` FOREIGN KEY (`loan_type_id`) REFERENCES `loans_loantype` (`id`),
  CONSTRAINT `loans_loan_parent_loan_id_7fc68d4e_fk_loans_loan_id` FOREIGN KEY (`parent_loan_id`) REFERENCES `loans_loan` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1781 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loans_loan`
--

LOCK TABLES `loans_loan` WRITE;
/*!40000 ALTER TABLE `loans_loan` DISABLE KEYS */;
INSERT INTO `loans_loan` VALUES
(10,350000.00,35000.00,'2026-06-15','2026-07-15',420000.00,'reloaned','signed_contract/scan_juliette.mutoni_2026-06-01-11-37-59.pdf','2026-06-15 15:44:16.524510',8,0.00,10,3,0,1,1,0,'2026-10-06',35000.00,0,NULL,'2026-10-06','2026-07-26 00:00:00.000000'),
(11,50000.00,5000.00,'2026-06-15','2026-07-15',55000.00,'reloaned','signed_contract/loan-agreement-_agatoni_deborah.pdf','2026-06-15 15:47:18.370042',7,0.00,9,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(12,300000.00,30000.00,'2026-06-16','2026-07-16',330000.00,'reloaned','signed_contract/loan-agreement-__Larissa_June_2026.pdf','2026-06-16 17:41:09.274132',6,0.00,11,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(13,150000.00,15000.00,'2026-06-16','2026-07-16',309769.03,'to_be_reported','signed_contract/loan-agreement_dushimimana_diogene.pdf','2026-06-16 17:41:12.529408',9,309769.03,12,3,0,1,1,0,'2026-10-12',144769.03,0,NULL,'2026-10-12','2026-07-29 00:00:00.000000'),
(14,500000.00,50000.00,'2026-06-16','2026-07-16',550000.00,'reloaned','signed_contract/CamScanner_06-02-2026_08.36.pdf','2026-06-16 17:41:15.661281',10,0.00,13,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(15,60000.00,6000.00,'2026-06-16','2026-07-16',66000.00,'paid','signed_contract/SCAN0019.PDF','2026-06-16 17:41:19.294379',11,0.00,14,3,0,0,0,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(16,100000.00,10000.00,'2026-06-16','2026-07-16',110000.00,'reloaned','signed_contract/loan-agreement-_seraphine_nyirahabimana_4.pdf','2026-06-16 17:41:22.501370',13,0.00,15,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(17,200000.00,20000.00,'2026-06-16','2026-07-16',220000.00,'reloaned','signed_contract/CamScanner_06-03-2026_10.23.pdf','2026-06-16 17:41:25.789132',14,0.00,16,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-07-29 00:00:00.000000'),
(18,3000000.00,300000.00,'2026-06-16','2026-07-16',3300000.00,'paid','signed_contract/loan-agreement_bernard_bihezande.2.pdf','2026-06-16 18:22:57.618059',12,0.00,17,3,0,0,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(19,500000.00,50000.00,'2026-06-19','2026-07-19',550000.00,'reloaned','signed_contract/Loan_Agreement_Dushimimana_Jonathan.pdf','2026-06-19 16:26:50.797198',15,0.00,18,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(20,300000.00,30000.00,'2026-06-19','2026-07-31',331000.00,'to_be_reported','signed_contract/loan-agreement__NGENZI_JOEL_1.pdf','2026-06-19 16:35:51.891028',16,1000.00,19,3,0,1,1,0,'2026-10-06',1000.00,0,NULL,'2026-10-06','2026-07-30 00:00:00.000000'),
(21,500000.00,50000.00,'2026-06-19','2026-07-19',801246.15,'reloaned','signed_contract/loan-agreement-_chris_ngabo.211.pdf','2026-06-19 16:46:28.153159',17,0.00,20,3,0,1,1,0,'2026-10-06',251246.15,0,NULL,'2026-10-06','2026-07-30 00:00:00.000000'),
(22,100000.00,10000.00,'2026-06-19','2026-07-19',202757.35,'to_be_reported','signed_contract/loan-agreement-_tuyizere_rose.pdf','2026-06-19 16:53:50.861575',18,202757.35,21,3,0,1,1,0,'2026-10-12',92757.35,0,NULL,'2026-10-12','2026-07-30 00:00:00.000000'),
(23,300000.00,30000.00,'2026-06-22','2026-07-22',330000.00,'reloaned','signed_contract/CamScanner_06-08-2026_11.15.pdf','2026-06-22 17:38:26.699180',22,0.00,22,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-08-02 00:00:00.000000'),
(24,150000.00,15000.00,'2026-06-22','2026-07-22',165000.00,'reloaned','signed_contract/SIGNED_LOAN_AGREEMENT.pdf','2026-06-22 18:21:18.825665',23,0.00,23,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(25,200000.00,20000.00,'2026-06-22','2026-07-22',383856.36,'to_be_reported','signed_contract/CamScanner_08-06-2026_14.16.pdf','2026-06-22 18:29:51.115152',24,383856.36,24,3,0,1,1,0,'2026-10-12',163856.36,0,NULL,'2026-10-12','2026-08-02 00:00:00.000000'),
(26,500000.00,25000.00,'2026-06-22','2026-07-22',525000.00,'paid','signed_contract/loan-agreement-_immaculee_muka._3.pdf','2026-06-22 18:40:54.983766',25,0.00,25,3,0,0,0,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(27,5000000.00,500000.00,'2026-06-22','2026-07-22',5500000.00,'reloaned','signed_contract/loan-agreement-_muberuka_frank.pdf','2026-06-22 18:54:20.424574',26,0.00,26,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-08-02 00:00:00.000000'),
(28,100000.00,10000.00,'2026-06-22','2026-07-22',110000.00,'reloaned','signed_contract/Loan_Agreement_Sign-06-10-2026-1231.pdf','2026-06-22 19:37:09.641952',27,0.00,27,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-08-02 00:00:00.000000'),
(29,200000.00,20000.00,'2026-06-22','2026-07-22',238801.67,'paid','signed_contract/loan-agreement-__kazoora_steven.2.pdf','2026-06-22 19:51:56.900700',28,666.67,28,3,0,1,1,0,'2026-10-06',18801.67,0,NULL,'2026-10-06','2026-08-02 00:00:00.000000'),
(31,100000.00,10000.00,'2026-06-26','2026-07-26',110000.00,'paid','signed_contract/agreement.pdf','2026-06-26 20:40:26.536260',30,0.00,30,3,0,0,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-08-06 00:00:00.000000'),
(32,1000000.00,100000.00,'2026-06-26','2026-07-26',1100000.00,'paid','signed_contract/loan-agreement-__hagenimana_anicet.pdf','2026-06-26 20:50:59.933324',31,0.00,31,3,0,0,0,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(33,1500000.00,150000.00,'2026-06-27','2026-07-27',1650000.00,'reloaned','signed_contract/HIGIRO_CONTRACT_LOAN.pdf','2026-06-27 07:24:09.155050',32,0.00,32,3,0,0,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(34,1000000.00,100000.00,'2026-06-27','2026-07-27',1100000.00,'paid','signed_contract/loan-agreement-_chirchir_kelvin._8.pdf','2026-06-27 07:34:19.045643',33,0.00,33,3,0,0,0,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(35,200000.00,20000.00,'2026-06-27','2026-07-27',350498.62,'to_be_reported','signed_contract/Loan_Areement-DUSHIME_PATRICK.pdf','2026-06-27 07:45:09.686315',34,350498.62,34,3,0,0,1,0,'2026-10-12',130498.62,0,NULL,'2026-10-12','2026-08-07 00:00:00.000000'),
(36,60000.00,6000.00,'2026-06-27','2026-07-27',73200.00,'to_be_reported','signed_contract/UWASE_STM.pdf','2026-06-27 07:54:34.764861',35,200.00,35,3,0,0,1,0,'2026-10-06',7200.00,0,NULL,'2026-10-06','2026-08-07 00:00:00.000000'),
(37,90000.00,9000.00,'2026-06-27','2026-07-27',99000.00,'paid','signed_contract/img20250115_11261285.pdf','2026-06-27 08:15:15.514294',36,0.00,36,3,0,0,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(38,100000.00,10000.00,'2026-06-27','2026-07-27',121449.00,'paid','signed_contract/20260622144100.pdf','2026-06-27 10:09:31.680063',37,0.00,37,3,0,0,1,0,'2026-10-06',11449.00,0,NULL,'2026-10-06','2026-08-07 00:00:00.000000'),
(39,100000.00,10000.00,'2026-06-27','2026-07-27',110000.00,'paid','signed_contract/PHIONA_2.pdf','2026-06-27 10:23:51.460424',38,0.00,38,3,0,0,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(40,50000.00,5000.00,'2026-07-01','2026-07-31',56266.67,'reloaned','signed_contract/loan_agreement_.pdf','2026-07-01 10:40:29.703449',39,166.67,39,3,0,1,0,0,'2026-10-06',1266.67,0,NULL,'2026-10-06','2026-08-11 00:00:00.000000'),
(41,100000.00,10000.00,'2026-07-01','2026-07-31',110000.00,'reloaned','signed_contract/loan-agreement-__gaga_marshall.2.pdf','2026-07-01 10:59:23.188461',40,0.00,40,3,0,1,0,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-08-11 00:00:00.000000'),
(42,60000.00,6000.00,'2026-07-01','2026-07-31',66200.00,'reloaned','signed_contract/Chance_.pdf','2026-07-01 11:54:32.684078',41,200.00,41,3,0,1,0,0,'2026-10-06',200.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(43,500000.00,50000.00,'2026-07-01','2026-07-31',550000.00,'reloaned','signed_contract/ID_Toussaint_.pdf','2026-07-01 13:58:13.270397',42,0.00,42,3,0,1,0,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(44,100000.00,10000.00,'2026-07-01','2026-07-31',110000.00,'paid','signed_contract/doc01186120260626102123.pdf','2026-07-01 13:58:17.616598',43,0.00,43,3,0,0,0,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(45,200000.00,60000.00,'2026-07-01','2026-09-30',264666.69,'to_be_reported','signed_contract/Bertrand_Shema_ID.pdf','2026-07-01 15:30:42.788074',44,264666.69,44,3,0,1,1,0,'2026-10-12',4666.69,0,NULL,'2026-10-12','2026-08-11 00:00:00.000000'),
(47,150000.00,15000.00,'2026-07-02','2026-08-01',165000.00,'reloaned','signed_contract/TUMUSINGIZE_AGGREMENT.pdf','2026-07-02 19:13:00.647004',47,0.00,46,3,0,1,0,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(48,200000.00,20000.00,'2026-07-02','2026-08-01',220000.00,'reloaned','signed_contract/loan-agreement-__mwangil_daniel_2_2.pdf','2026-07-02 19:24:31.174485',48,0.00,47,3,0,1,0,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(49,50000.00,5000.00,'2026-07-03','2026-08-02',55000.00,'paid','signed_contract/Compressed_loan-agreement-__CYUBAHIRO_CONFIANCE.2.pdf.pdf','2026-07-03 15:01:49.436656',50,0.00,48,3,0,1,0,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(50,100000.00,10000.00,'2026-07-06','2026-08-05',110000.00,'reloaned','signed_contract/CamScanner_06-04-2026_19.08.pdf','2026-07-06 09:56:33.633915',51,0.00,49,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(51,200000.00,20000.00,'2026-07-06','2026-08-05',220000.00,'reloaned','signed_contract/teta_id.pdf','2026-07-06 10:05:07.132141',49,0.00,50,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(52,200000.00,20000.00,'2026-07-14','2026-07-05',220000.00,'reloaned','signed_contract/CamScanner_06-04-2026_20.49.pdf','2026-07-14 16:32:32.657067',52,0.00,51,3,0,0,0,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(53,600000.00,60000.00,'2026-07-14','2026-08-13',660000.00,'reloaned','signed_contract/CamScanner_12-02-2025_09.36.pdf','2026-07-14 17:21:40.393534',53,0.00,52,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(54,1700000.00,170000.00,'2026-07-14','2026-08-13',1870000.00,'reloaned','signed_contract/loan-agreement-_HAGENIMANA_ANTOINE.3.pdf','2026-07-14 17:58:02.727209',54,0.00,53,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(55,120000.00,12000.00,'2026-07-14','2026-08-13',132000.00,'reloaned','signed_contract/signed_contract.pdf','2026-07-14 18:07:35.232099',55,0.00,54,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(56,1000000.00,100000.00,'2026-07-14','2026-08-13',1100000.00,'paid','signed_contract/loan-agreement-_chirchir_kelvin._9.pdf','2026-07-14 18:19:10.899714',33,0.00,55,3,0,0,0,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(57,200000.00,20000.00,'2026-07-15','2026-08-14',220000.00,'reloaned','','2026-07-15 04:00:35.174145',52,0.00,NULL,3,0,1,1,0,'2026-10-06',0.00,0,52,'2026-10-06','2026-10-06 00:00:00.000000'),
(58,50000.00,0.00,'2026-07-16','2026-08-15',50000.00,'paid','','2026-07-16 04:00:42.440295',7,0.00,NULL,3,0,1,1,0,'2026-10-06',0.00,0,11,'2026-10-06','2026-10-06 00:00:00.000000'),
(59,300000.00,30000.00,'2026-07-17','2026-08-16',330000.00,'paid','','2026-07-17 04:00:39.297102',6,0.00,NULL,3,0,1,1,0,'2026-10-06',0.00,0,12,'2026-10-06','2026-10-06 00:00:00.000000'),
(60,500000.00,50000.00,'2026-07-17','2026-08-16',611666.79,'reloaned','','2026-07-17 04:00:39.934398',10,0.00,NULL,3,0,1,1,0,'2026-10-01',61666.79,0,14,'2026-10-01','2026-08-26 00:00:00.000000'),
(61,100000.00,10000.00,'2026-07-17','2026-08-16',110000.00,'paid','','2026-07-17 04:00:40.374546',13,0.00,NULL,3,0,0,0,0,'2026-10-06',0.00,0,16,'2026-10-06','2026-10-06 00:00:00.000000'),
(62,500000.00,50000.00,'2026-07-20','2026-08-19',550000.00,'reloaned','','2026-07-20 04:00:51.645340',15,0.00,NULL,3,0,1,1,0,'2026-10-06',0.00,0,19,'2026-10-06','2026-10-06 00:00:00.000000'),
(63,60000.00,6000.00,'2026-07-20','2026-08-19',66000.00,'paid','signed_contract/RURANGWA_Nadine_Doc_2.pdf','2026-07-20 14:31:21.734708',56,0.00,56,3,0,0,0,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(64,150000.00,15000.00,'2026-07-20','2026-08-19',180500.00,'to_be_reported','signed_contract/loan-agreement-_prince_masamaz_6_.pdf','2026-07-20 14:51:56.083553',57,500.00,57,3,0,1,1,0,'2026-10-06',15500.00,0,NULL,'2026-10-06','2026-08-26 00:00:00.000000'),
(65,300000.00,30000.00,'2026-07-20','2026-08-19',330000.00,'paid','signed_contract/NYARUGENGE_3.pdf','2026-07-20 15:27:46.118898',58,0.00,58,3,0,0,0,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(66,600000.00,60000.00,'2026-07-20','2026-08-19',660000.00,'paid','signed_contract/CamScanner_07-03-2026_15.28.pdf','2026-07-20 15:43:27.518190',59,0.00,59,3,0,0,0,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(67,100000.00,10000.00,'2026-07-21','2026-08-20',115333.33,'to_be_reported','signed_contract/RUKUNDO_ID.pdf','2026-07-21 14:28:15.477680',60,333.33,60,3,0,1,1,0,'2026-10-06',5333.33,0,NULL,'2026-10-06','2026-08-26 00:00:00.000000'),
(68,300000.00,30000.00,'2026-07-21','2026-08-20',330000.00,'reloaned','signed_contract/CamScanner_07-09-2026_15.17.pdf','2026-07-21 14:53:49.855307',61,0.00,61,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(69,200000.00,20000.00,'2026-07-21','2026-08-20',220000.00,'paid','signed_contract/Agreement_loan_.pdf','2026-07-21 15:07:33.907597',62,0.00,62,3,0,0,0,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(70,250000.00,25000.00,'2026-07-21','2026-08-20',312499.85,'to_be_reported','signed_contract/ID_3.pdf','2026-07-21 15:15:32.424116',63,312499.85,63,3,0,1,1,0,'2026-10-12',37499.85,0,NULL,'2026-10-12','2026-08-26 00:00:00.000000'),
(71,500000.00,50000.00,'2026-07-21','2026-08-20',550000.00,'paid','signed_contract/loan-agreement-__niyosenga_gisele.2.pdf','2026-07-21 15:29:12.628286',64,0.00,64,3,0,0,0,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(72,100000.00,10000.00,'2026-07-21','2026-08-20',110000.00,'reloaned','signed_contract/MKL_1_1.pdf','2026-07-21 15:54:44.087594',65,0.00,65,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(73,1000000.00,100000.00,'2026-07-22','2026-08-21',1100000.00,'reloaned','signed_contract/loan-agreement-_rwabuhihi_masimbi.pdf','2026-07-22 08:26:20.798249',66,0.00,66,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(74,50000.00,5000.00,'2026-07-22','2026-08-21',55000.00,'paid','signed_contract/SCANNED_DOC20260715_15022567.pdf','2026-07-22 08:43:17.872991',67,0.00,67,3,0,0,0,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(75,100000.00,10000.00,'2026-07-22','2026-08-21',110000.00,'paid','signed_contract/img20260715_16011059_1.pdf','2026-07-22 09:48:42.912633',68,0.00,68,3,0,0,0,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(76,500000.00,25000.00,'2026-07-22','2026-08-21',525000.00,'paid','signed_contract/CERTIFICATE_FOR_REPLACEMENT_OF_NATIONAL_IDENTITY_CARD_-_B250821163913XAUR_2_1.pdf','2026-07-22 09:52:16.342370',25,0.00,69,3,0,0,0,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(77,1000000.00,100000.00,'2026-07-22','2026-08-21',1100000.00,'reloaned','signed_contract/doc08506220260704084820.pdf','2026-07-22 10:04:00.522535',69,0.00,70,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(78,1250000.00,27333.00,'2026-07-22','2026-08-27',1277333.00,'paid','signed_contract/loan-agreement-_MUCYO_JEAN_CLAUDE.2_signed.pdf','2026-07-22 10:16:50.923111',70,0.00,71,3,0,0,0,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(79,300000.00,30000.00,'2026-07-22','2026-08-21',330000.00,'reloaned','signed_contract/KML17.pdf','2026-07-22 10:28:50.364205',71,0.00,72,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(80,200000.00,20000.00,'2026-07-22','2026-08-21',220000.00,'reloaned','signed_contract/contr_bn.pdf','2026-07-22 10:34:34.849041',72,0.00,73,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(81,1000000.00,100000.00,'2026-07-22','2026-08-27',1100000.00,'paid','signed_contract/Signed_letter_-2.pdf','2026-07-22 10:42:21.691576',73,0.00,74,3,0,0,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(82,450000.00,45000.00,'2026-07-22','2026-08-21',495000.00,'paid','signed_contract/loan-agreement-_mugenga_yves._6_6.pdf','2026-07-22 10:53:12.768667',74,0.00,75,3,0,0,0,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(83,2000000.00,200000.00,'2026-07-27','2026-08-26',2200000.00,'paid','signed_contract/loan-agreement-_niyigena_ernest.docx_22_1.pdf','2026-07-27 14:45:10.046830',75,0.00,76,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(84,70000.00,7000.00,'2026-07-27','2026-08-26',77000.00,'reloaned','signed_contract/Tegurugoti_piorette.pdf','2026-07-27 14:55:08.659433',76,0.00,77,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(85,100000.00,10000.00,'2026-07-29','2026-08-28',110000.00,'paid','signed_contract/July_026.pdf','2026-07-29 15:11:12.237884',38,0.00,78,3,0,0,0,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(86,200000.00,20000.00,'2026-07-29','2026-08-28',220000.00,'reloaned','signed_contract/loan-agreement-_AIME_JULE_MUTAN._51.pdf','2026-07-29 15:52:05.860052',51,0.00,79,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-08-31 00:00:00.000000'),
(87,150000.00,15000.00,'2026-07-30','2026-08-29',165000.00,'reloaned','','2026-07-30 04:00:44.762165',23,0.00,NULL,3,0,1,1,0,'2026-10-06',0.00,0,24,'2026-10-06','2026-10-06 00:00:00.000000'),
(88,300000.00,30000.00,'2026-07-30','2026-08-29',330000.00,'paid','signed_contract/loan-agreement-_HARERIMANA._daniel_2Signed.pdf','2026-07-30 16:22:20.069045',77,0.00,80,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-09-01 00:00:00.000000'),
(89,200000.00,20000.00,'2026-07-30','2026-08-29',220000.00,'reloaned','signed_contract/loan-agreement-_sadiki_jean.3.pdf','2026-07-30 16:30:12.282321',78,0.00,81,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-09-01 00:00:00.000000'),
(90,500000.00,50000.00,'2026-07-30','2026-08-29',550000.00,'reloaned','signed_contract/loan-agreement-__yvette._2.1.pdf','2026-07-30 16:40:28.251780',79,0.00,82,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(91,900000.00,90000.00,'2026-07-30','2026-08-29',990000.00,'paid','signed_contract/loan-agreement_akwany_omondi._10.pdf','2026-07-30 17:20:34.682581',80,0.00,83,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-09-01 00:00:00.000000'),
(92,350000.00,35000.00,'2026-07-30','2026-08-29',386166.67,'to_be_reported','signed_contract/ID_Benon_M.Mucyo.pdf','2026-07-30 17:30:10.583424',81,1166.67,84,3,0,1,1,0,'2026-10-06',1166.67,0,NULL,'2026-10-06','2026-09-01 00:00:00.000000'),
(93,100000.00,20000.00,'2026-07-30','2026-08-29',120333.33,'to_be_reported','signed_contract/Signed_Contact_Manzi_Rwaje_Loan_Agreement_.pdf','2026-07-30 17:39:50.551005',82,333.33,85,3,0,1,1,0,'2026-10-06',333.33,0,NULL,'2026-10-06','2026-09-01 00:00:00.000000'),
(94,300000.00,30000.00,'2026-08-01','2026-08-31',367000.00,'to_be_reported','','2026-08-01 04:00:37.027403',16,367000.00,NULL,3,0,1,1,0,'2026-10-12',37000.00,0,20,'2026-10-12','2026-09-03 00:00:00.000000'),
(95,30000.00,3000.00,'2026-08-01','2026-08-31',33000.00,'paid','','2026-08-01 04:00:40.607926',41,0.00,NULL,3,0,0,0,0,'2026-10-06',0.00,0,42,'2026-10-06','2026-10-06 00:00:00.000000'),
(96,300000.00,30000.00,'2026-08-01','2026-08-31',330000.00,'paid','','2026-08-01 04:00:41.149906',42,0.00,NULL,3,0,1,1,0,'2026-10-06',0.00,0,43,'2026-10-06','2026-10-06 00:00:00.000000'),
(97,100000.00,10000.00,'2026-08-01','2026-08-31',122333.21,'to_be_reported','signed_contract/Signed_loan-agreement-_mulindi_regis._3.pdf','2026-08-01 16:38:55.268769',84,122333.21,86,3,0,1,1,0,'2026-10-12',12333.21,0,NULL,'2026-10-12','2026-09-03 00:00:00.000000'),
(98,80000.00,8000.00,'2026-08-01','2026-08-31',88000.00,'reloaned','signed_contract/loan_agreement_signed.pdf','2026-08-01 16:51:12.529980',85,0.00,87,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(99,150000.00,15000.00,'2026-08-01','2026-08-31',165000.00,'paid','signed_contract/Scanned_20260729_124113.pdf','2026-08-01 16:59:46.711857',86,0.00,88,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(101,1000000.00,100000.00,'2026-08-01','2026-08-31',1146666.62,'to_be_reported','signed_contract/loan-agreement-_NTORANYI_DIEdonne_4.pdf','2026-08-01 17:37:13.223743',87,3333.33,90,3,0,1,1,0,'2026-10-06',46666.62,0,NULL,'2026-10-06','2026-09-03 00:00:00.000000'),
(102,150000.00,15000.00,'2026-08-01','2026-08-31',165000.00,'paid','signed_contract/loan-agreement-__HIRWA_PACIFIQUE.Signed.pdf','2026-08-01 17:43:15.954029',88,0.00,91,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(103,1000000.00,100000.00,'2026-08-01','2026-08-31',1100000.00,'reloaned','signed_contract/KML.pdf','2026-08-01 17:48:19.667194',89,0.00,92,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(104,150000.00,15000.00,'2026-08-02','2026-09-01',165000.00,'reloaned','','2026-08-02 04:00:46.764012',47,0.00,NULL,3,0,1,1,0,'2026-10-06',0.00,0,47,'2026-10-06','2026-09-04 00:00:00.000000'),
(105,180000.00,18000.00,'2026-08-02','2026-09-01',198000.00,'reloaned','','2026-08-02 04:00:47.307239',48,0.00,NULL,3,0,1,1,0,'2026-10-06',0.00,0,48,'2026-10-06','2026-10-06 00:00:00.000000'),
(106,200000.00,20000.00,'2026-08-04','2026-09-03',220000.00,'paid','signed_contract/doc03235320260804100759.pdf','2026-08-04 16:43:44.505750',43,0.00,93,3,0,0,0,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(107,800000.00,80000.00,'2026-08-04','2026-09-03',880000.00,'reloaned','signed_contract/CamScanner_08-03-2026_13.17.pdf','2026-08-04 16:57:47.219254',59,0.00,94,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-09-06 00:00:00.000000'),
(108,600000.00,60000.00,'2026-08-04','2026-09-03',692000.00,'to_be_reported','signed_contract/KIBATENGA_Faith.pdf','2026-08-04 17:36:31.149347',90,2000.00,95,3,0,1,1,0,'2026-10-06',32000.00,0,NULL,'2026-10-06','2026-09-06 00:00:00.000000'),
(109,100000.00,10000.00,'2026-08-04','2026-09-03',121333.22,'to_be_reported','signed_contract/PATCOPE.pdf','2026-08-04 17:43:20.910386',91,121333.22,96,3,0,1,1,0,'2026-10-12',11333.22,0,NULL,'2026-10-12','2026-09-06 00:00:00.000000'),
(110,1500000.00,150000.00,'2026-08-05','2026-09-04',1665000.00,'reloaned','','2026-08-05 04:00:23.791974',32,0.00,NULL,3,0,1,1,0,'2026-10-06',15000.00,0,33,'2026-10-06','2026-09-07 00:00:00.000000'),
(111,200000.00,20000.00,'2026-08-05','2026-09-04',220000.00,'paid','signed_contract/NO_ID_PROVIDED.docx_ERIC_DOC_.pdf','2026-08-05 14:20:58.893044',92,0.00,97,3,0,0,0,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(112,650000.00,65000.00,'2026-08-05','2026-09-04',715000.00,'reloaned','signed_contract/loan-agreement-__mukamana_sylvie.__x.pdf','2026-08-05 14:43:57.001679',93,0.00,98,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(113,50000.00,5000.00,'2026-08-05','2026-09-04',55000.00,'reloaned','signed_contract/MUKARAGE_DOTTY20260803_16500822.pdf','2026-08-05 15:03:44.853337',94,0.00,99,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(114,400000.00,40000.00,'2026-08-05','2026-09-04',441333.33,'paid','signed_contract/doc13550720260803142806.pdf','2026-08-05 15:23:54.710324',95,1333.33,100,3,0,0,1,0,'2026-10-06',1333.33,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(115,200000.00,20000.00,'2026-08-06','2026-09-05',220000.00,'paid','','2026-08-06 06:34:00.465138',14,0.00,NULL,3,0,0,0,0,'2026-10-06',0.00,0,17,'2026-10-06','2026-10-06 00:00:00.000000'),
(116,300000.00,30000.00,'2026-08-06','2026-09-05',330000.00,'reloaned','','2026-08-06 06:34:01.210624',22,0.00,NULL,3,0,1,1,0,'2026-10-06',0.00,0,23,'2026-10-06','2026-10-06 00:00:00.000000'),
(117,871000.00,50000.00,'2026-08-06','2026-09-12',921000.00,'paid','','2026-08-06 06:34:01.884303',26,0.00,NULL,3,0,0,0,0,'2026-10-06',0.00,0,27,'2026-10-06','2026-10-06 00:00:00.000000'),
(118,104334.66,10433.47,'2026-08-06','2026-09-05',114768.13,'paid','','2026-08-06 06:34:02.539499',27,0.00,NULL,3,0,0,0,0,'2026-10-06',0.00,0,28,'2026-10-06','2026-10-06 00:00:00.000000'),
(120,55000.00,5500.00,'2026-08-06','2026-09-05',66366.56,'to_be_reported','','2026-08-06 06:34:05.382506',51,66366.56,NULL,3,0,1,1,0,'2026-10-12',5866.56,0,50,'2026-10-12','2026-09-08 00:00:00.000000'),
(121,180000.00,18000.00,'2026-08-06','2026-09-05',198000.00,'reloaned','','2026-08-06 06:34:05.927787',49,0.00,NULL,3,0,1,1,0,'2026-10-06',0.00,0,51,'2026-10-06','2026-10-06 00:00:00.000000'),
(122,90000.00,10000.00,'2026-08-10','2026-09-09',100000.00,'paid','signed_contract/Thierry_Mucyos_agreement_contract.pdf','2026-08-10 14:06:29.144941',96,0.00,101,3,0,0,0,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(123,100000.00,10000.00,'2026-08-10','2026-09-09',116999.93,'in_payment','signed_contract/loan-agreement-_ntirenganaya_signed.pdf','2026-08-10 14:28:29.166455',97,96999.93,102,3,0,1,1,0,'2026-10-02',6999.93,0,NULL,'2026-10-02','2026-09-12 00:00:00.000000'),
(124,250000.00,25000.00,'2026-08-10','2026-09-09',298333.24,'to_be_reported','signed_contract/KAZO_D.pdf','2026-08-10 14:34:41.747986',28,298333.24,103,3,0,1,1,0,'2026-10-12',23333.24,0,NULL,'2026-10-12','2026-09-12 00:00:00.000000'),
(125,1500000.00,150000.00,'2026-08-10','2026-09-09',1650000.00,'reloaned','signed_contract/1626_001.pdf','2026-08-10 14:48:26.726680',98,0.00,104,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(126,80000.00,8000.00,'2026-08-11','2026-09-06',88000.00,'reloaned','signed_contract/microloan_form__1.pdf','2026-08-11 16:01:26.796073',99,0.00,105,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-09-09 00:00:00.000000'),
(127,200000.00,20000.00,'2026-08-11','2026-09-02',222666.68,'to_be_reported','signed_contract/Signed_Agreement.pdf','2026-08-11 16:09:34.975887',100,666.67,106,3,0,1,1,0,'2026-10-06',2666.68,0,NULL,'2026-10-06','2026-09-05 00:00:00.000000'),
(128,350000.00,35000.00,'2026-08-11','2026-09-01',385000.00,'reloaned','signed_contract/UWASE12.pdf','2026-08-11 16:18:17.469793',101,0.00,107,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(129,250000.00,25000.00,'2026-08-11','2026-09-10',275000.00,'reloaned','signed_contract/ilovepdf_merged.pdf','2026-08-11 16:25:20.346652',102,0.00,108,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(130,60000.00,6000.00,'2026-08-11','2026-09-06',66000.00,'paid','signed_contract/ANDRE_AHIMANA_LOAN_APPLICATION.pdf','2026-08-11 16:36:19.097009',103,0.00,109,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(131,300000.00,30000.00,'2026-08-11','2026-09-10',330000.00,'reloaned','signed_contract/CONT.pdf','2026-08-11 17:31:07.241086',104,0.00,111,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-09-13 00:00:00.000000'),
(132,500000.00,50000.00,'2026-08-11','2026-09-10',550000.00,'reloaned','signed_contract/loan-agreement-_immaculee_muka._6.pdf','2026-08-11 17:31:11.054086',25,0.00,110,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(133,1000000.00,100000.00,'2026-08-11','2026-09-10',1100000.00,'reloaned','signed_contract/LOAN_CONTRACT_10_AOUT_26.pdf','2026-08-11 17:44:07.631639',105,0.00,112,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(134,200000.00,20000.00,'2026-08-11','2026-09-10',220000.00,'paid','signed_contract/Signed_loan_agreement_-_Felicien_Bazagirabate_10.08.2026.pdf','2026-08-11 18:40:06.288106',106,0.00,113,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(135,150000.00,15000.00,'2026-08-11','2026-09-10',165000.00,'reloaned','signed_contract/Agreement_1.pdf','2026-08-11 18:50:35.665171',107,0.00,114,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(136,200000.00,20000.00,'2026-08-11','2026-09-10',228000.00,'reloaned','signed_contract/AP.pdf','2026-08-11 19:01:27.653741',108,0.00,115,3,0,1,1,0,'2026-10-06',8000.00,0,NULL,'2026-10-06','2026-09-13 00:00:00.000000'),
(137,200000.00,20000.00,'2026-08-11','2026-09-10',220000.00,'reloaned','signed_contract/img20260811_18153910.pdf','2026-08-11 19:11:24.494632',109,0.00,116,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(138,30000.00,3000.00,'2026-08-12','2026-09-11',33000.00,'paid','','2026-08-12 04:00:52.361698',39,0.00,NULL,3,0,0,0,0,'2026-10-06',0.00,0,40,'2026-10-06','2026-10-06 00:00:00.000000'),
(139,102200.00,10220.00,'2026-08-12','2026-09-11',121277.42,'defaulted','','2026-08-12 04:00:53.178026',40,121277.42,NULL,3,0,1,1,0,'2026-10-12',8857.42,0,41,'2026-10-12','2026-09-14 00:00:00.000000'),
(141,600000.00,60000.00,'2026-08-13','2026-09-12',660000.00,'paid','','2026-08-13 04:00:57.726787',53,0.00,NULL,3,0,0,0,0,'2026-10-06',0.00,0,53,'2026-10-06','2026-10-06 00:00:00.000000'),
(142,1200000.00,120000.00,'2026-08-13','2026-09-12',1320000.00,'reloaned','','2026-08-13 04:00:58.413293',54,0.00,NULL,3,0,1,1,0,'2026-10-06',0.00,0,54,'2026-10-06','2026-10-06 00:00:00.000000'),
(143,120000.00,12000.00,'2026-08-13','2026-09-12',132000.00,'reloaned','','2026-08-13 04:00:58.993648',55,0.00,NULL,3,0,1,1,0,'2026-10-06',0.00,0,55,'2026-10-06','2026-10-06 00:00:00.000000'),
(144,200000.00,20000.00,'2026-08-14','2026-09-13',220000.00,'paid','','2026-08-14 04:00:38.861219',52,0.00,NULL,3,0,0,0,0,'2026-10-06',0.00,0,57,'2026-10-06','2026-10-06 00:00:00.000000'),
(145,300000.00,45000.00,'2026-08-14','2026-09-09',345000.00,'paid','signed_contract/CamScanner_04-09-2026_11.46.pdf','2026-08-14 11:27:51.053504',110,0.00,118,3,0,0,0,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(146,200000.00,20000.00,'2026-08-14','2026-09-09',238666.76,'to_be_reported','signed_contract/IDDD.pdf','2026-08-14 13:59:03.075929',111,238666.76,119,3,0,1,1,0,'2026-10-12',18666.76,0,NULL,'2026-10-12','2026-09-12 00:00:00.000000'),
(147,250000.00,25000.00,'2026-08-14','2026-09-10',275833.33,'reloaned','signed_contract/ID_5.pdf','2026-08-14 14:21:57.350885',112,833.33,120,3,0,1,1,0,'2026-10-06',833.33,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(148,2000000.00,115000.00,'2026-08-14','2026-09-13',2115000.00,'paid','signed_contract/loan-agreement-_MUCYO_JEAN_CLAUDE._3_signed.pdf','2026-08-14 14:33:59.242461',70,0.00,121,3,0,0,0,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(149,1200000.00,120000.00,'2026-08-14','2026-09-13',1320000.00,'reloaned','signed_contract/NEW.pdf','2026-08-14 14:47:53.935304',64,0.00,122,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(150,200000.00,20000.00,'2026-08-14','2026-09-13',220000.00,'reloaned','signed_contract/CamScanner_08-13-2026_12.19.pdf','2026-08-14 14:51:27.836062',14,0.00,123,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-09-16 00:00:00.000000'),
(151,550000.00,55000.00,'2026-08-14','2026-09-13',605000.00,'paid','signed_contract/YV.pdf','2026-08-14 14:59:55.686904',74,0.00,124,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-09-16 00:00:00.000000'),
(152,1500000.00,300000.00,'2026-08-16','2026-09-23',1800000.00,'paid','signed_contract/loan-agreement-__hagenimana_anicet_2..._1.pdF......pdf','2026-08-16 10:01:18.104483',31,0.00,125,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(153,2000000.00,200000.00,'2026-08-16','2026-09-15',2200000.00,'reloaned','signed_contract/Document_kml.pdf','2026-08-16 10:09:24.972775',113,0.00,126,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(154,200000.00,20000.00,'2026-08-16','2026-09-15',220000.00,'paid','signed_contract/Loan.pdf','2026-08-16 10:16:53.359461',114,0.00,127,3,0,0,0,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(155,200000.00,20000.00,'2026-08-16','2026-09-15',234666.74,'defaulted','signed_contract/KIGALI_120260813_14402278.pdf','2026-08-16 10:28:51.406078',115,234666.74,128,3,0,1,1,0,'2026-10-12',14666.74,0,NULL,'2026-10-12','2026-09-18 00:00:00.000000'),
(156,500000.00,50000.00,'2026-08-16','2026-09-15',550000.00,'reloaned','signed_contract/Seth.Hakuzimana_Loan_application_signed_document.pdf','2026-08-16 10:34:40.530006',116,0.00,129,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(157,200000.00,20000.00,'2026-08-16','2026-09-15',220000.00,'reloaned','signed_contract/loan-agreement-_UWIMANIMPAYE_SERGE_1.pdf','2026-08-16 10:45:23.572416',117,0.00,130,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(158,200000.00,20000.00,'2026-08-16','2026-09-15',228000.00,'paid','signed_contract/IDDD_8v42Nbv.pdf','2026-08-16 10:49:05.100792',67,0.00,131,3,0,1,1,0,'2026-10-06',8000.00,0,NULL,'2026-10-06','2026-09-18 00:00:00.000000'),
(159,120000.00,7000.00,'2026-08-16','2026-09-15',127000.00,'reloaned','signed_contract/ERIC_ID.pdf','2026-08-16 11:05:13.223284',92,0.00,132,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(160,385000.00,38500.00,'2026-08-17','2026-09-16',458500.00,'defaulted','','2026-08-17 04:00:48.473121',8,458500.00,NULL,3,0,1,1,0,'2026-10-12',35000.00,0,10,'2026-10-12','2026-09-19 00:00:00.000000'),
(161,1000000.00,84000.00,'2026-08-17','2026-09-16',1084000.00,'paid','signed_contract/loan-agreement-_MUCYO_JEAN_CLAUDE._3_top_up_signed.pdf','2026-08-17 17:26:48.208061',70,0.00,133,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(162,701246.15,70124.62,'2026-08-18','2026-09-17',818120.57,'defaulted','','2026-08-18 04:00:33.526421',17,818120.57,NULL,3,0,1,1,0,'2026-10-12',46749.80,0,21,'2026-10-12','2026-09-20 00:00:00.000000'),
(163,300000.00,30000.00,'2026-08-18','2026-08-14',366600.00,'to_be_reported','signed_contract/Bank_Statements.pdf','2026-08-18 19:57:53.923068',118,1000.00,134,3,0,0,0,0,'2026-10-06',36600.00,0,NULL,'2026-10-06','2026-08-25 00:00:00.000000'),
(164,500000.00,50000.00,'2026-08-19','2026-09-18',550000.00,'paid','','2026-08-19 04:00:23.469707',15,0.00,NULL,3,0,0,0,0,'2026-10-06',0.00,0,62,'2026-10-06','2026-10-06 00:00:00.000000'),
(165,200000.00,20000.00,'2026-08-19','2026-09-18',220000.00,'reloaned','signed_contract/PaymentStatusReport_20260818_2.pdf','2026-08-19 11:23:18.299976',6,0.00,135,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(166,100000.00,10000.00,'2026-08-19','2026-09-18',110000.00,'paid','signed_contract/Aug_026_Contract.pdf','2026-08-19 11:25:17.891651',38,0.00,136,3,0,0,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(167,250000.00,25000.00,'2026-08-19','2026-09-18',275000.00,'paid','signed_contract/loan-agreement-__ndererimana._5...pdf','2026-08-19 11:33:27.839103',119,0.00,137,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(168,600000.00,60000.00,'2026-08-19','2026-08-20',660000.00,'reloaned','signed_contract/Loan_Agreement.pdf','2026-08-19 17:51:52.604072',120,0.00,138,3,0,0,0,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(169,150000.00,15000.00,'2026-08-19','2026-08-10',165000.00,'reloaned','signed_contract/loan-agreement-_mbungira_jean_3_1.pdf','2026-08-19 18:02:15.576903',121,0.00,139,3,0,0,0,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(170,800000.00,80000.00,'2026-08-19','2026-09-14',880000.00,'reloaned','signed_contract/loan-agreement-_yves_bizimana1.pdf','2026-08-19 18:40:09.961553',122,0.00,140,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(171,80000.00,8000.00,'2026-08-19','2026-08-15',95466.76,'to_be_reported','signed_contract/PILA.pdf','2026-08-19 18:50:17.316137',123,266.67,141,3,0,0,0,0,'2026-10-06',7466.76,0,NULL,'2026-10-06','2026-08-26 00:00:00.000000'),
(172,850000.00,85000.00,'2026-08-19','2026-09-13',935000.00,'reloaned','signed_contract/KML_FLORI.pdf','2026-08-19 18:59:42.903850',124,0.00,142,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(174,130000.00,13000.00,'2026-08-20','2026-09-19',143000.00,'paid','','2026-08-20 04:00:43.839856',61,0.00,NULL,3,0,1,1,0,'2026-10-06',0.00,0,68,'2026-10-06','2026-09-22 00:00:00.000000'),
(175,50000.00,5000.00,'2026-08-20','2026-09-19',55000.00,'reloaned','','2026-08-20 04:00:44.491768',65,0.00,NULL,3,0,1,1,0,'2026-10-06',0.00,0,72,'2026-10-06','2026-10-06 00:00:00.000000'),
(176,1000000.00,100000.00,'2026-08-21','2026-09-20',1156666.61,'defaulted','','2026-08-21 04:00:30.893665',66,1156666.61,NULL,3,0,1,1,0,'2026-10-12',56666.61,0,73,'2026-10-12','2026-09-23 00:00:00.000000'),
(177,300000.00,30000.00,'2026-08-21','2026-09-20',330000.00,'paid','','2026-08-21 04:00:31.498145',71,0.00,NULL,3,0,0,1,0,'2026-10-06',0.00,0,79,'2026-10-06','2026-10-06 00:00:00.000000'),
(178,900000.00,90000.00,'2026-08-22','2026-08-17',990000.00,'reloaned','signed_contract/Loan_Agreement_1.pdf','2026-08-22 16:48:01.913670',125,0.00,143,3,0,0,0,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(179,100000.00,10000.00,'2026-08-22','2026-09-21',110000.00,'paid','signed_contract/loan-agreement-__CYUBAHIRO_CONFIANCE.3.pdf','2026-08-22 18:18:43.092164',50,0.00,144,3,0,0,0,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(180,500000.00,50000.00,'2026-08-22','2026-09-21',550000.00,'reloaned','signed_contract/signed_contra.pdf','2026-08-22 18:54:39.868678',126,0.00,145,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(181,100000.00,10000.00,'2026-08-22','2026-09-21',115333.28,'defaulted','signed_contract/doc06648320250711114950.pdf','2026-08-22 19:02:16.126573',127,115333.28,146,3,0,1,1,0,'2026-10-12',5333.28,0,NULL,'2026-10-12','2026-09-24 00:00:00.000000'),
(182,300000.00,30000.00,'2026-08-22','2026-09-21',330000.00,'reloaned','signed_contract/CamScanner_08-21-2026_13.37.pdf','2026-08-22 19:04:42.253536',110,0.00,147,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-09-24 00:00:00.000000'),
(184,200000.00,20000.00,'2026-08-23','2026-09-22',220000.00,'paid','','2026-08-23 04:00:16.100188',72,0.00,NULL,3,0,0,0,0,'2026-10-06',0.00,0,80,'2026-10-06','2026-10-06 00:00:00.000000'),
(185,331960.00,33196.00,'2026-08-24','2026-08-20',414949.85,'to_be_reported','signed_contract/LOAN_AGREEMENT_2.pdf','2026-08-24 11:31:25.758396',128,414949.85,148,3,0,0,0,0,'2026-10-12',49793.85,0,NULL,'2026-10-12','2026-08-26 00:00:00.000000'),
(186,350000.00,35000.00,'2026-08-24','2026-08-21',385000.00,'reloaned','signed_contract/signed_letter.pdf','2026-08-24 11:55:23.387919',129,0.00,149,3,0,0,0,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(187,700000.00,50000.00,'2026-08-24','2026-08-26',750000.00,'reloaned','signed_contract/LOAN_CONTRACT_NAUME26.pdf','2026-08-24 12:15:24.662619',130,0.00,150,3,0,1,0,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(188,200000.00,20000.00,'2026-08-24','2026-09-23',220000.00,'paid','signed_contract/ID_COPY.pdf','2026-08-24 12:30:59.032276',131,0.00,151,3,0,0,0,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(189,80000.00,8000.00,'2026-08-24','2026-08-28',88000.00,'reloaned','signed_contract/Moise.pdf','2026-08-24 12:43:09.672113',132,0.00,152,3,0,1,0,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(190,300000.00,30000.00,'2026-08-24','2026-09-23',330000.00,'reloaned','signed_contract/loan-agreement-__VICTOR_mutarindwa_4_1.pdf','2026-08-24 14:39:18.806313',131,0.00,155,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-09-26 00:00:00.000000'),
(191,100000.00,10000.00,'2026-08-24','2026-08-26',110000.00,'reloaned','signed_contract/gusenga-2.pdf','2026-08-24 14:39:23.398311',133,0.00,153,3,0,1,0,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(192,100000.00,10000.00,'2026-08-24','2026-08-27',110000.00,'reloaned','signed_contract/PASCASIE_JOB_LETTER.pdf','2026-08-24 14:39:29.957188',134,0.00,154,3,0,1,0,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(193,100000.00,10000.00,'2026-08-24','2026-09-23',110000.00,'paid','signed_contract/LOAN_AGREEMENT_-_SYLVINE_MUTAREMARA.pdf','2026-08-24 15:07:50.723108',135,0.00,156,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(194,750000.00,75000.00,'2026-08-24','2026-08-27',825000.00,'reloaned','signed_contract/AGREEMENT_ELIE.pdf','2026-08-24 19:37:16.630820',136,0.00,157,3,0,1,0,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-08-30 00:00:00.000000'),
(195,1000000.00,100000.00,'2026-08-25','2026-09-24',1100000.00,'reloaned','','2026-08-25 04:00:37.945324',69,0.00,NULL,3,0,1,1,0,'2026-10-06',0.00,0,77,'2026-10-06','2026-10-06 00:00:00.000000'),
(196,600000.00,60000.00,'2026-08-25','2026-09-24',660000.00,'reloaned','','2026-08-25 04:00:39.973424',120,0.00,NULL,3,0,1,1,0,'2026-10-06',0.00,0,168,'2026-10-06','2026-10-06 00:00:00.000000'),
(197,150000.00,15000.00,'2026-08-25','2026-09-24',171500.00,'defaulted','','2026-08-25 04:00:40.629645',121,171500.00,NULL,3,0,1,1,0,'2026-10-12',6500.00,0,169,'2026-10-12','2026-09-27 00:00:00.000000'),
(198,700000.00,70000.00,'2026-08-25','2026-09-24',770000.00,'reloaned','','2026-08-25 04:00:41.916969',125,0.00,NULL,3,0,1,1,0,'2026-10-06',0.00,0,178,'2026-10-06','2026-10-06 00:00:00.000000'),
(199,350000.00,35000.00,'2026-08-25','2026-09-24',385000.00,'reloaned','','2026-08-25 04:00:42.534700',129,0.00,NULL,3,0,1,1,0,'2026-10-06',0.00,0,186,'2026-10-06','2026-10-06 00:00:00.000000'),
(200,70000.00,7000.00,'2026-08-26','2026-09-25',77000.00,'paid','','2026-08-26 04:01:00.400260',76,0.00,NULL,3,0,0,1,0,'2026-10-06',0.00,0,84,'2026-10-06','2026-10-06 00:00:00.000000'),
(201,700000.00,70000.00,'2026-08-26','2026-09-25',770000.00,'reloaned','','2026-08-26 04:01:02.709039',130,0.00,NULL,3,0,1,1,0,'2026-10-06',0.00,0,187,'2026-10-06','2026-10-06 00:00:00.000000'),
(202,100000.00,10000.00,'2026-08-26','2026-09-25',110000.00,'reloaned','','2026-08-26 04:01:04.234894',133,0.00,NULL,3,0,1,1,0,'2026-10-06',0.00,0,191,'2026-10-06','2026-10-06 00:00:00.000000'),
(203,200000.00,20000.00,'2026-08-26','2026-09-25',220000.00,'paid','signed_contract/doc04151820260825114200.pdf','2026-08-26 07:24:00.223343',43,0.00,158,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(204,70000.00,7000.00,'2026-08-26','2026-09-25',77000.00,'reloaned','signed_contract/CamScanner_25-08-2026_11.58.pdf','2026-08-26 07:26:24.844375',39,0.00,159,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(205,4000000.00,400000.00,'2026-08-26','2026-09-25',4400000.00,'reloaned','signed_contract/loan-agreement-_niyigena_ernest.EN.pdf','2026-08-26 07:27:58.261240',75,0.00,160,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-09-28 00:00:00.000000'),
(206,100000.00,10000.00,'2026-08-26','2026-09-25',110000.00,'reloaned','signed_contract/loan-agreement-__samuel_rukundo_5.pdf','2026-08-26 07:35:31.714243',137,0.00,161,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(207,100000.00,10000.00,'2026-08-27','2026-09-26',110000.00,'reloaned','','2026-08-27 04:00:23.664183',134,0.00,NULL,3,0,1,1,0,'2026-10-06',0.00,0,192,'2026-10-06','2026-10-06 00:00:00.000000'),
(208,80000.00,8000.00,'2026-08-28','2026-09-27',88000.00,'reloaned','','2026-08-28 04:00:25.495809',132,0.00,NULL,3,0,1,1,0,'2026-10-06',0.00,0,189,'2026-10-06','2026-10-06 00:00:00.000000'),
(209,150000.00,15000.00,'2026-08-29','2026-09-28',180000.00,'paid','','2026-08-29 04:00:49.106244',23,0.00,NULL,3,0,1,1,0,'2026-10-12',15000.00,0,87,'2026-10-12','2026-10-01 00:00:00.000000'),
(210,450000.00,45000.00,'2026-08-29','2026-09-28',495000.00,'reloaned','','2026-08-29 04:00:51.585147',79,0.00,NULL,3,0,1,1,0,'2026-10-06',0.00,0,90,'2026-10-06','2026-10-06 00:00:00.000000'),
(211,400000.00,40000.00,'2026-09-01','2026-10-01',440000.00,'reloaned','signed_contract/Diana_muhoza_loan_agreement_PDF.pdf','2026-09-01 09:55:00.014840',62,0.00,163,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(212,530000.00,53000.00,'2026-09-01','2026-10-01',583000.00,'reloaned','signed_contract/doc13633120260827165319.pdf','2026-09-01 10:13:07.073738',95,0.00,164,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(213,600000.00,60000.00,'2026-09-01','2026-10-01',674000.00,'defaulted','signed_contract/Xerox_Scan_28082026134250.pdf','2026-09-01 16:41:36.402037',138,674000.00,165,3,0,1,1,0,'2026-10-12',14000.00,0,NULL,'2026-10-12','2026-10-06 00:00:00.000000'),
(214,200000.00,20000.00,'2026-09-01','2026-10-01',220000.00,'reloaned','signed_contract/loan-agreement-__shema_emile._2_signed.pdf','2026-09-01 17:07:50.027415',139,0.00,166,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(215,200000.00,20000.00,'2026-09-01','2026-10-01',220000.00,'paid','signed_contract/loan-agreement-_UMUTONI_CARINE.4.pdf','2026-09-01 17:18:23.793072',140,0.00,167,3,0,0,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(216,250000.00,25000.00,'2026-09-01','2026-10-01',275000.00,'paid','signed_contract/Signed_KML_Contract.pdf','2026-09-01 17:33:26.543411',37,0.00,168,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(217,1000000.00,100000.00,'2026-09-01','2026-10-01',1100000.00,'paid','signed_contract/loan-agreement_akwany_omondi._11.pdf','2026-09-01 17:50:22.783309',80,0.00,169,3,0,0,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(218,1500000.00,150000.00,'2026-09-01','2026-10-01',1650000.00,'reloaned','signed_contract/LOAN_AGREEMENT_3.pdf','2026-09-01 17:58:17.506132',73,0.00,170,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(219,600000.00,60000.00,'2026-09-01','2026-10-01',660000.00,'reloaned','signed_contract/Signed_Loan_Agreement_2.pdf','2026-09-01 18:01:00.879602',15,0.00,171,3,0,1,1,0,NULL,0.00,0,NULL,NULL,NULL),
(220,400000.00,40000.00,'2026-09-01','2026-10-01',440000.00,'paid','signed_contract/loan-agreement-__DANIEL_HARERIMANA__aug_2026_1.pdf','2026-09-01 18:02:52.446285',77,0.00,172,3,0,0,0,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(222,2000000.00,200000.00,'2026-09-01','2026-10-01',2246666.69,'defaulted','signed_contract/loan-agreement-__GISODA_2.pdf','2026-09-01 18:50:54.874354',141,2246666.69,174,3,0,1,1,0,'2026-10-12',46666.69,0,NULL,'2026-10-12','2026-10-06 00:00:00.000000'),
(223,100000.00,10000.00,'2026-09-01','2026-10-01',112333.31,'defaulted','signed_contract/BA2.pdf','2026-09-01 19:08:11.826045',142,112333.31,175,3,0,1,1,0,'2026-10-12',2333.31,0,NULL,'2026-10-12','2026-10-06 00:00:00.000000'),
(224,200000.00,20000.00,'2026-09-01','2026-10-01',220000.00,'paid','signed_contract/loan-agreement-__HIRWA_PACIFIQUE_Signed.pdf','2026-09-01 19:09:53.719402',88,0.00,176,3,0,0,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(225,73000.00,22000.00,'2026-09-02','2026-10-02',95000.00,'paid','','2026-09-02 04:00:17.960554',48,0.00,NULL,3,0,0,1,0,'2026-10-06',0.00,0,105,'2026-10-06','2026-10-06 00:00:00.000000'),
(226,200000.00,20000.00,'2026-09-02','2026-10-02',220000.00,'in_payment','','2026-09-02 04:00:18.710032',51,200000.00,NULL,3,0,1,1,0,NULL,0.00,0,86,NULL,NULL),
(227,200000.00,20000.00,'2026-09-02','2026-10-02',224666.69,'defaulted','','2026-09-02 04:00:20.101763',78,224666.69,NULL,3,0,1,1,0,'2026-10-12',4666.69,0,89,'2026-10-12','2026-10-06 00:00:00.000000'),
(228,350000.00,35000.00,'2026-09-02','2026-10-02',385000.00,'paid','','2026-09-02 04:00:20.948709',81,0.00,NULL,3,0,1,1,0,NULL,0.00,0,92,NULL,NULL),
(229,80000.00,8000.00,'2026-09-02','2026-10-02',88000.00,'reloaned','','2026-09-02 04:00:21.856421',85,0.00,NULL,3,0,1,1,0,NULL,0.00,0,98,NULL,NULL),
(230,1000000.00,100000.00,'2026-09-02','2026-10-02',1100000.00,'reloaned','','2026-09-02 04:00:22.577706',89,1000000.00,NULL,3,0,1,1,0,NULL,0.00,0,103,NULL,NULL),
(231,750000.00,0.00,'2026-09-02','2026-10-02',750000.00,'paid','','2026-09-02 04:00:24.287281',136,0.00,NULL,3,0,0,0,0,'2026-10-06',0.00,0,194,'2026-10-06','2026-10-06 00:00:00.000000'),
(232,1000000.00,100000.00,'2026-09-02','2026-10-02',1100000.00,'paid','signed_contract/loan-agreement-_chirchir_kelvin._11.pdf','2026-09-02 08:54:22.899022',33,0.00,177,3,0,0,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(233,650000.00,65000.00,'2026-09-04','2026-10-04',715000.00,'reloaned','','2026-09-04 04:00:22.826485',93,650000.00,NULL,3,0,0,1,0,NULL,0.00,0,112,NULL,NULL),
(234,50000.00,5000.00,'2026-09-04','2026-10-04',55000.00,'reloaned','','2026-09-04 04:00:23.779197',94,50000.00,NULL,3,0,0,1,0,NULL,0.00,0,113,NULL,NULL),
(235,350000.00,35000.00,'2026-09-04','2026-10-04',385000.00,'reloaned','','2026-09-04 04:00:25.284617',101,350000.00,NULL,3,0,0,1,0,NULL,0.00,0,128,NULL,NULL),
(236,500000.00,50000.00,'2026-09-04','2026-10-04',560000.02,'defaulted','signed_contract/ID_Toussaint__1.pdf','2026-09-04 06:17:55.243713',42,560000.02,178,3,0,0,1,0,'2026-10-12',10000.02,0,NULL,'2026-10-12','2026-10-07 00:00:00.000000'),
(237,300000.00,30000.00,'2026-09-05','2026-10-05',330000.00,'paid','','2026-09-05 04:00:46.794352',22,0.00,NULL,3,0,0,0,0,NULL,0.00,0,116,'2026-10-06',NULL),
(238,178000.00,17800.00,'2026-09-05','2026-10-05',198766.65,'defaulted','','2026-09-05 04:00:48.902012',49,198766.65,NULL,3,0,0,1,0,'2026-10-12',2966.65,0,121,'2026-10-12','2026-10-08 00:00:00.000000'),
(242,800000.00,80000.00,'2026-09-08','2026-10-08',885333.34,'defaulted','','2026-09-08 04:00:22.719441',59,885333.34,NULL,3,0,1,0,0,'2026-10-12',5333.34,0,107,'2026-10-12','2026-10-11 00:00:00.000000'),
(243,200000.01,20000.00,'2026-09-08','2026-10-08',221333.35,'defaulted','','2026-09-08 04:00:24.638412',100,221333.35,NULL,3,0,1,0,0,'2026-10-12',1333.34,0,127,'2026-10-12','2026-10-11 00:00:00.000000'),
(244,1000000.00,100000.00,'2026-09-09','2026-10-09',1103333.33,'defaulted','','2026-09-09 04:00:31.337457',98,1103333.33,NULL,3,0,1,0,0,'2026-10-12',3333.33,0,125,'2026-10-12','2026-10-12 00:00:00.000000'),
(245,400000.00,40000.00,'2026-09-09','2026-10-09',441333.33,'defaulted','signed_contract/NYARUGENGE_5.pdf','2026-09-09 16:43:15.804723',58,441333.33,182,3,0,1,0,0,'2026-10-12',1333.33,0,NULL,'2026-10-12','2026-10-12 00:00:00.000000'),
(246,750000.00,75000.00,'2026-09-09','2026-10-09',825000.00,'in_payment','signed_contract/img20260904_10505845.pdf','2026-09-09 16:47:50.221778',136,750000.00,183,3,0,1,0,0,NULL,0.00,0,NULL,NULL,NULL),
(247,100000.00,10000.00,'2026-09-09','2026-10-09',110333.33,'defaulted','signed_contract/signed_contract_eric_rukundo_5_1.pdf','2026-09-09 16:55:05.804123',60,110333.33,184,3,0,1,0,0,'2026-10-12',333.33,0,NULL,'2026-10-12','2026-10-12 00:00:00.000000'),
(248,200000.00,20000.00,'2026-09-09','2026-10-09',220000.00,'reloaned','signed_contract/vincent001.pdf','2026-09-09 16:57:33.788042',52,200000.00,185,3,0,1,0,0,NULL,0.00,0,NULL,NULL,NULL),
(249,150000.00,15000.00,'2026-09-09','2026-10-09',165500.00,'defaulted','signed_contract/Thierry_Mucyos_signed_loan_agreement_contract.pdf','2026-09-09 17:04:41.815353',96,165500.00,186,3,0,1,0,0,'2026-10-12',500.00,0,NULL,'2026-10-12','2026-10-12 00:00:00.000000'),
(250,300000.00,30000.00,'2026-09-09','2026-10-09',331000.00,'defaulted','signed_contract/CamScanner_0909155933.pdf','2026-09-09 18:06:27.997381',22,331000.00,187,3,0,1,0,0,'2026-10-12',1000.00,0,NULL,'2026-10-12','2026-10-12 00:00:00.000000'),
(251,250000.00,20000.00,'2026-09-10','2026-10-10',270000.00,'paid','','2026-09-10 04:00:52.546179',102,0.00,NULL,3,0,0,0,0,NULL,0.00,0,129,NULL,NULL),
(252,250000.00,25000.00,'2026-09-10','2026-10-10',275000.00,'overdue','','2026-09-10 04:00:53.553184',112,275000.00,NULL,3,0,1,0,0,NULL,0.00,0,147,'2026-10-12',NULL),
(253,300000.00,30000.00,'2026-09-10','2026-09-01',358000.00,'to_be_reported','signed_contract/KML_.pdf','2026-09-10 16:15:14.073563',143,358000.00,188,3,0,0,0,0,'2026-10-12',28000.00,0,NULL,'2026-10-12','2026-09-12 00:00:00.000000'),
(254,150000.00,15000.00,'2026-09-10','2026-09-22',172500.00,'defaulted','signed_contract/loan-agreement-__nick_muvunyi.2_1.pdf','2026-09-10 16:34:12.225625',144,172500.00,189,3,0,1,1,0,'2026-10-12',7500.00,0,NULL,'2026-10-12','2026-09-25 00:00:00.000000'),
(255,137000.00,13700.00,'2026-09-10','2026-09-27',155266.70,'defaulted','signed_contract/CamScanner_28-04-2026_13.58.pdf','2026-09-10 16:50:09.656098',145,155266.70,190,3,0,1,1,0,'2026-10-12',4566.70,0,NULL,'2026-10-12','2026-09-30 00:00:00.000000'),
(256,95000.00,9500.00,'2026-09-10','2026-08-01',113366.76,'to_be_reported','signed_contract/CamScanner_01-04-2026_19.58.pdf','2026-09-10 16:57:12.657912',146,113366.76,191,3,0,0,0,0,'2026-10-12',8866.76,0,NULL,'2026-10-12','2026-09-12 00:00:00.000000'),
(257,370000.00,37000.00,'2026-09-10','2026-08-18',441533.24,'to_be_reported','signed_contract/loan-agreement-_uwingabire_jeninah4.pdf','2026-09-10 17:05:54.474980',147,441533.24,192,3,0,0,0,0,'2026-10-12',34533.24,0,NULL,'2026-10-12','2026-09-12 00:00:00.000000'),
(258,180000.00,18000.00,'2026-09-10','2026-09-14',198000.00,'reloaned','signed_contract/loan-agreement-_hishamunda_jmv100.pdf','2026-09-10 17:17:16.066168',148,0.00,193,3,0,1,0,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(259,175000.00,17500.00,'2026-09-10','2026-09-26',193666.66,'reloaned','signed_contract/SRUSIMBI_ID.pdf','2026-09-10 17:34:26.476616',149,0.00,194,3,0,1,1,0,'2026-10-06',1166.66,0,NULL,'2026-10-06','2026-09-29 00:00:00.000000'),
(260,250000.00,25000.00,'2026-09-10','2026-09-26',284166.63,'defaulted','signed_contract/loan-agreement-__murenzi_emmanuel_32.pdf','2026-09-10 17:49:22.179560',150,284166.63,195,3,0,1,1,0,'2026-10-12',9166.63,0,NULL,'2026-10-12','2026-09-29 00:00:00.000000'),
(261,200000.00,0.00,'2026-09-10','2026-09-26',200000.00,'paid','signed_contract/CamScanner_02-26-2026_11.40.pdf','2026-09-10 18:02:45.786692',151,0.00,196,3,0,0,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(262,500000.00,50000.00,'2026-09-10','2026-08-09',550000.00,'reloaned','signed_contract/Signed_Contract_Kml.pdf','2026-09-10 18:22:17.043787',152,0.00,197,3,0,0,0,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-09-12 00:00:00.000000'),
(263,150000.00,15000.00,'2026-09-10','2026-08-10',174000.00,'reloaned','signed_contract/KML_Loan_Application-26-03.pdf','2026-09-10 18:33:35.889659',153,0.00,198,3,0,0,0,0,'2026-10-06',9000.00,0,NULL,'2026-10-06','2026-09-12 00:00:00.000000'),
(264,60000.00,6000.00,'2026-09-10','2026-08-18',66000.00,'reloaned','signed_contract/KML_2.pdf','2026-09-10 18:43:24.477536',154,0.00,199,3,0,0,0,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-09-12 00:00:00.000000'),
(265,80000.00,8000.00,'2026-09-10','2026-10-10',88000.00,'in_payment','signed_contract/AMASEZERANO.pdf','2026-09-10 18:52:53.569377',155,40000.00,200,3,0,1,0,0,NULL,0.00,0,NULL,NULL,NULL),
(266,150000.00,15000.00,'2026-09-10','2026-10-10',165000.00,'overdue','signed_contract/loan-agreement-_serge_ntwali._5_1.pdf','2026-09-10 18:57:34.776544',36,165000.00,201,3,0,1,0,0,NULL,0.00,0,NULL,'2026-10-12',NULL),
(267,950000.00,95000.00,'2026-09-10','2026-09-27',1045000.00,'paid','signed_contract/loan-agreement-__nkunsi_placide__top_Signed.pdf','2026-09-10 19:28:23.506510',156,0.00,202,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(268,147000.00,35800.00,'2026-09-10','2026-09-08',196520.00,'to_be_reported','signed_contract/KML_2_1.pdf','2026-09-10 19:37:32.586763',157,196520.00,203,3,0,0,0,0,'2026-10-12',13720.00,0,NULL,'2026-10-12','2026-09-12 00:00:00.000000'),
(269,100000.00,10000.00,'2026-09-10','2026-09-21',110000.00,'reloaned','signed_contract/Loan_agreement_Habumuremyi.pdf','2026-09-10 19:53:21.766597',158,0.00,204,3,0,1,1,0,'2026-10-06',0.00,0,NULL,'2026-10-06','2026-10-06 00:00:00.000000'),
(270,500000.00,30000.00,'2026-09-11','2026-10-11',530000.00,'paid','','2026-09-11 04:00:19.255803',25,0.00,NULL,3,0,1,1,0,NULL,0.00,0,132,NULL,NULL),
(271,80000.00,8000.00,'2026-09-11','2026-10-11',88000.00,'paid','','2026-09-11 04:00:23.103870',99,0.00,NULL,3,0,0,1,0,NULL,0.00,0,126,NULL,NULL),
(272,500000.00,50000.00,'2026-09-11','2026-10-11',550000.00,'overdue','','2026-09-11 04:00:23.973269',105,550000.00,NULL,3,0,1,1,0,NULL,0.00,0,133,'2026-10-12',NULL),
(273,200000.00,20000.00,'2026-09-11','2026-10-11',220000.00,'overdue','','2026-09-11 04:00:25.180898',109,220000.00,NULL,3,0,1,1,0,NULL,0.00,0,137,'2026-10-12',NULL),
(274,920000.00,92000.00,'2026-09-12','2026-10-12',1012000.00,'active','','2026-09-12 04:00:47.640524',54,1012000.00,NULL,3,0,1,1,0,NULL,0.00,0,142,NULL,NULL),
(275,120000.00,12000.00,'2026-09-12','2026-10-12',132000.00,'in_payment','','2026-09-12 04:00:47.665434',55,120000.00,NULL,3,0,1,1,0,NULL,0.00,0,143,NULL,NULL),
(276,100000.00,10000.00,'2026-09-12','2026-10-12',110000.00,'active','','2026-09-12 04:00:47.851144',107,110000.00,NULL,3,0,1,1,0,NULL,0.00,0,135,NULL,NULL),
(277,850000.00,85000.00,'2026-09-13','2026-10-13',935000.00,'active','','2026-09-13 04:00:48.253721',124,935000.00,NULL,3,0,1,1,0,NULL,0.00,0,172,NULL,NULL),
(278,720000.00,72000.00,'2026-09-14','2026-10-14',792000.00,'active','','2026-09-14 04:00:14.489346',122,792000.00,NULL,3,0,0,1,0,NULL,0.00,0,170,NULL,NULL),
(279,1500000.00,150000.00,'2026-09-15','2026-10-15',1650000.00,'active','','2026-09-15 04:00:16.932308',32,1650000.00,NULL,3,0,0,1,0,NULL,0.00,0,110,NULL,NULL),
(280,800000.00,80000.00,'2026-09-15','2026-10-15',880000.00,'active','','2026-09-15 04:00:18.863934',64,880000.00,NULL,3,0,0,1,0,NULL,0.00,0,149,NULL,NULL),
(281,120000.00,12000.00,'2026-09-15','2026-10-15',132000.00,'paid','','2026-09-15 04:00:20.739582',92,0.00,NULL,3,0,0,0,0,NULL,0.00,0,159,NULL,NULL),
(282,300000.00,30000.00,'2026-09-15','2026-10-15',330000.00,'active','','2026-09-15 04:00:21.450976',104,330000.00,NULL,3,0,0,1,0,NULL,0.00,0,131,NULL,NULL),
(283,200000.00,20000.00,'2026-09-15','2026-10-15',220000.00,'active','','2026-09-15 04:00:22.286425',117,220000.00,NULL,3,0,0,1,0,NULL,0.00,0,157,NULL,NULL),
(284,643333.29,64333.33,'2026-09-16','2026-10-16',707666.62,'active','','2026-09-16 04:00:28.188381',87,707666.62,NULL,3,0,0,1,0,NULL,0.00,0,101,NULL,NULL),
(285,2000000.00,200000.00,'2026-09-16','2026-10-16',2200000.00,'active','','2026-09-16 04:00:30.067017',113,2200000.00,NULL,3,0,0,1,0,NULL,0.00,0,153,NULL,NULL),
(286,200000.00,20000.00,'2026-09-16','2026-10-16',220000.00,'active','signed_contract/Signed_-_Loan_agreement_Felicien_B_11.09.2026_1.pdf','2026-09-16 19:16:36.496895',106,220000.00,205,3,0,0,1,0,NULL,0.00,0,NULL,NULL,NULL),
(287,1000000.00,100000.00,'2026-09-16','2026-10-16',1100000.00,'active','signed_contract/CamScanner_11-09-2026_12.12.pdf','2026-09-16 19:43:40.955920',159,1100000.00,206,3,0,0,1,0,NULL,0.00,0,NULL,NULL,NULL),
(288,900000.00,90000.00,'2026-09-16','2026-10-16',990000.00,'active','signed_contract/LOAN_AGREEMENT_OF_THEONESTE_-SEPTEMMBER_2026.pdf','2026-09-16 20:08:22.696327',160,990000.00,207,3,0,0,1,0,NULL,0.00,0,NULL,NULL,NULL),
(289,400000.00,40000.00,'2026-09-16','2026-10-16',440000.00,'active','signed_contract/kml_09.pdf','2026-09-16 20:10:32.692589',71,440000.00,208,3,0,0,1,0,NULL,0.00,0,NULL,NULL,NULL),
(290,300000.00,30000.00,'2026-09-16','2026-10-16',330000.00,'active','signed_contract/loan-agreement-_MUKESHIMANA_FELIX_2.pdf','2026-09-16 20:12:37.636716',72,330000.00,209,3,0,0,1,0,NULL,0.00,0,NULL,NULL,NULL),
(291,1800000.00,180000.00,'2026-09-16','2026-10-16',1980000.00,'active','signed_contract/loan-agreement-__hagenimana_anicet_3_1.pdf','2026-09-16 20:17:35.217997',31,1980000.00,210,3,0,0,1,0,NULL,0.00,0,NULL,NULL,NULL),
(292,180000.00,18000.00,'2026-09-17','2026-10-17',198000.00,'active','','2026-09-17 04:00:37.128481',148,198000.00,NULL,3,0,0,1,0,NULL,0.00,0,258,NULL,NULL),
(293,60000.00,6000.00,'2026-09-17','2026-10-17',66000.00,'in_payment','','2026-09-17 04:00:38.051802',154,60000.00,NULL,3,0,0,1,0,NULL,0.00,0,264,NULL,NULL),
(294,150000.00,15000.00,'2026-09-17','2026-10-17',165000.00,'active','signed_contract/loan-agreement-__ntibazirikana_jean.pdf','2026-09-17 16:17:47.550622',161,165000.00,211,3,0,0,1,0,NULL,0.00,0,NULL,NULL,NULL),
(295,3600000.00,360000.00,'2026-09-17','2026-10-17',3960000.00,'in_payment','signed_contract/HONO.pdf','2026-09-17 16:23:31.948442',162,3160000.00,212,3,0,0,1,0,NULL,0.00,0,NULL,NULL,NULL),
(296,200000.00,20000.00,'2026-09-17','2026-08-28',224666.69,'reloaned','signed_contract/LOAN_AGREEMENT_4.pdf','2026-09-17 17:03:06.853892',163,0.00,213,3,0,0,0,0,'2026-10-06',4666.69,0,NULL,'2026-10-06','2026-09-22 00:00:00.000000'),
(297,250000.00,25000.00,'2026-09-17','2026-08-20',289999.94,'defaulted','signed_contract/JAMES_BANK_STATEMENT_ID.pdf','2026-09-17 17:12:29.623436',164,289999.94,214,3,0,0,0,0,'2026-10-12',14999.94,0,NULL,'2026-10-12','2026-09-22 00:00:00.000000'),
(298,80000.00,0.00,'2026-09-17','2026-10-17',80000.00,'paid','signed_contract/BANK_STATEMENT-KABASHA_JEAN_PAUL.pdf','2026-09-17 17:26:24.407746',165,0.00,215,3,0,0,0,0,NULL,0.00,0,NULL,NULL,NULL),
(299,200000.00,20000.00,'2026-09-17','2026-10-09',220000.00,'in_payment','signed_contract/CamScanner_04-04-2026_08.17.pdf','2026-09-17 17:38:28.929786',166,200000.00,216,3,0,1,0,0,NULL,0.00,0,NULL,NULL,NULL),
(300,2000000.00,300000.00,'2026-09-17','2026-10-30',2300000.00,'active','signed_contract/Loan-Agreement_Tuyisenge_Henri_Jacques_12122025_1101.pdf','2026-09-17 17:48:03.029891',167,2300000.00,217,3,0,0,0,0,NULL,0.00,0,NULL,NULL,NULL),
(301,2200000.00,220000.00,'2026-09-17','2026-09-10',2493333.30,'paid','signed_contract/Signed_Contract-_Gatera.pdf','2026-09-17 17:59:36.944208',168,0.00,218,3,0,0,0,0,'2026-10-01',73333.30,0,NULL,'2026-10-01','2026-09-22 00:00:00.000000'),
(302,200000.00,20000.00,'2026-09-18','2026-10-18',220000.00,'active','','2026-09-18 04:00:42.106530',6,220000.00,NULL,3,0,0,0,0,NULL,0.00,0,165,NULL,NULL),
(303,500000.00,50000.00,'2026-09-18','2026-10-18',550000.00,'active','','2026-09-18 04:00:49.661392',116,550000.00,NULL,3,0,0,0,0,NULL,0.00,0,156,NULL,NULL),
(304,50000.00,5000.00,'2026-09-19','2026-10-19',55000.00,'active','','2026-09-19 04:00:16.664730',65,55000.00,NULL,3,0,0,0,0,NULL,0.00,0,175,NULL,NULL),
(305,200000.00,20000.00,'2026-09-19','2026-10-19',220000.00,'in_payment','signed_contract/img20260715_16011059_3.pdf','2026-09-19 18:42:15.953384',68,200000.00,219,3,0,0,0,0,NULL,0.00,0,NULL,NULL,NULL),
(306,500000.00,50000.00,'2026-09-19','2026-10-19',550000.00,'active','signed_contract/loan-agreement-_ndererimana._6.pdf','2026-09-19 18:52:46.367914',119,550000.00,220,3,0,0,0,0,NULL,0.00,0,NULL,NULL,NULL),
(307,6000000.00,600000.00,'2026-09-19','2026-11-05',6600000.00,'active','signed_contract/Loan-Agreement-MUCYO_JEAN_CLAUDE.4_signed.pdf','2026-09-19 18:54:51.767816',70,6600000.00,221,3,0,0,0,0,NULL,0.00,0,NULL,NULL,NULL),
(308,202666.68,20266.67,'2026-09-20','2026-10-20',222933.35,'active','','2026-09-20 04:00:45.519048',14,222933.35,NULL,3,0,0,0,0,NULL,0.00,0,150,NULL,NULL),
(309,100000.00,10000.00,'2026-09-21','2026-10-21',110000.00,'active','signed_contract/loan-agreement-__CYUBAHIRO_CONFIANCE.4.pdf','2026-09-21 19:40:06.198579',50,110000.00,222,3,0,0,0,0,NULL,0.00,0,NULL,NULL,NULL),
(310,600000.00,60000.00,'2026-09-21','2026-10-21',660000.00,'active','signed_contract/loan-agreement__gasasira_ronald.7.pdf','2026-09-21 19:42:53.526188',53,660000.00,223,3,0,0,0,0,NULL,0.00,0,NULL,NULL,NULL),
(311,80800.09,8080.01,'2026-09-22','2026-10-22',88880.10,'active','','2026-09-22 04:00:25.134729',123,88880.10,NULL,3,0,0,0,0,NULL,0.00,0,171,NULL,NULL),
(312,400000.00,40000.00,'2026-09-22','2026-10-22',440000.00,'active','','2026-09-22 04:00:25.729139',126,440000.00,NULL,3,0,0,0,0,NULL,0.00,0,180,NULL,NULL),
(314,600000.00,60000.00,'2026-09-24','2026-10-24',660000.00,'active','','2026-09-24 04:00:21.972308',120,660000.00,NULL,3,0,0,0,0,NULL,0.00,0,196,NULL,NULL),
(315,630000.00,63000.00,'2026-09-24','2026-10-24',693000.00,'active','','2026-09-24 04:00:22.981884',125,693000.00,NULL,3,0,0,0,0,NULL,0.00,0,198,NULL,NULL),
(316,350000.00,35000.00,'2026-09-24','2026-10-24',385000.00,'active','','2026-09-24 04:00:24.303621',129,385000.00,NULL,3,0,0,0,0,NULL,0.00,0,199,NULL,NULL),
(317,270000.04,27000.00,'2026-09-24','2026-10-24',297000.04,'active','','2026-09-24 04:00:26.793607',152,297000.04,NULL,3,0,0,0,0,NULL,0.00,0,262,NULL,NULL),
(318,100000.00,10000.00,'2026-09-24','2026-10-24',110000.00,'active','','2026-09-24 04:00:27.771085',158,110000.00,NULL,3,0,0,0,0,NULL,0.00,0,269,NULL,NULL),
(319,200000.00,20000.00,'2026-09-24','2026-10-24',220000.00,'paid','signed_contract/Id.pdf_niyo.pdf','2026-09-24 12:17:47.588277',170,0.00,224,3,0,0,0,0,NULL,0.00,0,NULL,NULL,NULL),
(320,500000.00,50000.00,'2026-09-24','2026-10-24',550000.00,'in_payment','signed_contract/CamScanner_08-18-2026_15.00.pdf','2026-09-24 20:09:00.360830',171,500000.00,226,3,0,0,0,0,NULL,0.00,0,NULL,NULL,NULL),
(321,100000.00,10000.00,'2026-09-24','2026-10-24',110000.00,'active','signed_contract/SIGNED_CONTRACT-_MUTAREMARA_SYLVINE.pdf','2026-09-24 20:09:07.090079',135,110000.00,225,3,0,0,0,0,NULL,0.00,0,NULL,NULL,NULL),
(322,70000.00,7000.00,'2026-09-25','2026-10-25',77000.00,'active','','2026-09-25 04:00:25.121207',39,77000.00,NULL,3,0,0,0,0,NULL,0.00,0,204,NULL,NULL),
(323,200000.04,20000.00,'2026-09-25','2026-10-25',220000.04,'active','','2026-09-25 04:00:28.764082',108,220000.04,NULL,3,0,0,0,0,NULL,0.00,0,136,NULL,NULL),
(324,700000.00,70000.00,'2026-09-25','2026-10-25',770000.00,'active','','2026-09-25 04:00:30.930637',130,770000.00,NULL,3,0,0,0,0,NULL,0.00,0,201,NULL,NULL),
(325,100000.00,10000.00,'2026-09-25','2026-10-25',110000.00,'in_payment','','2026-09-25 04:00:31.753969',133,100000.00,NULL,3,0,0,0,0,NULL,0.00,0,202,NULL,NULL),
(326,60000.00,6000.00,'2026-09-25','2026-10-25',66000.00,'active','','2026-09-25 04:00:32.538740',137,66000.00,NULL,3,0,0,0,0,NULL,0.00,0,206,NULL,NULL),
(327,500000.00,50000.00,'2026-09-25','2026-10-25',550000.00,'active','signed_contract/loan-agreement-__DANIEL_HARERIMANA__3_Sept_26.pdf','2026-09-25 15:53:17.557410',77,550000.00,227,3,0,0,0,0,NULL,0.00,0,NULL,NULL,NULL),
(328,150000.00,0.00,'2026-09-26','2026-10-26',150000.00,'paid','','2026-09-26 04:00:58.276290',69,0.00,NULL,3,0,0,0,0,NULL,0.00,0,195,NULL,NULL),
(329,100000.00,10000.00,'2026-09-26','2026-10-26',110000.00,'active','','2026-09-26 04:01:00.680188',82,110000.00,NULL,3,0,0,0,0,NULL,0.00,0,93,NULL,NULL),
(330,100000.00,10000.00,'2026-09-26','2026-10-26',110000.00,'in_payment','','2026-09-26 04:01:04.153288',134,100000.00,NULL,3,0,0,0,0,NULL,0.00,0,207,NULL,NULL),
(331,80000.00,8000.00,'2026-09-27','2026-10-27',88000.00,'in_payment','','2026-09-27 04:00:50.415298',132,40000.00,NULL,3,0,0,0,0,NULL,0.00,0,208,NULL,NULL),
(332,145000.00,14500.00,'2026-09-28','2026-10-28',159500.00,'active','','2026-09-28 04:00:44.525877',79,159500.00,NULL,3,0,0,0,0,NULL,0.00,0,210,NULL,NULL),
(333,130000.00,13000.00,'2026-09-28','2026-10-28',143000.00,'active','signed_contract/SCAN0056_3.PDF','2026-09-28 15:31:25.534588',11,143000.00,228,3,0,0,0,0,NULL,0.00,0,NULL,NULL,NULL),
(334,2000000.00,200000.00,'2026-09-28','2026-10-28',2200000.00,'active','signed_contract/CamScanner_09-28-2026_15.50.pdf','2026-09-28 15:35:52.908313',172,2200000.00,229,3,0,0,0,0,NULL,0.00,0,NULL,NULL,NULL),
(335,305000.00,30500.00,'2026-09-29','2026-10-29',335500.00,'active','','2026-09-29 04:01:03.267679',110,335500.00,NULL,3,0,0,0,0,NULL,0.00,0,182,NULL,NULL),
(336,303000.00,30300.00,'2026-09-29','2026-10-29',333300.00,'active','','2026-09-29 04:01:04.211000',131,333300.00,NULL,3,0,0,0,0,NULL,0.00,0,190,NULL,NULL),
(337,3013333.33,301333.33,'2026-09-29','2026-10-29',3314666.66,'active','','2026-09-29 04:01:05.010688',75,3314666.66,NULL,3,0,0,0,0,NULL,0.00,0,205,NULL,NULL),
(338,500000.00,50000.00,'2026-09-29','2026-10-29',550000.00,'active','','2026-09-29 04:01:07.882841',156,550000.00,NULL,3,0,0,0,0,NULL,0.00,0,267,NULL,NULL),
(339,184666.69,18466.67,'2026-09-29','2026-10-29',203133.36,'active','','2026-09-29 04:01:08.601050',163,203133.36,NULL,3,0,0,0,0,NULL,0.00,0,296,NULL,NULL),
(340,1000000.00,100000.00,'2026-09-29','2026-10-29',1100000.00,'active','signed_contract/loan-agreement_akwany_omondi._12_1.pdf','2026-09-29 19:34:04.608027',80,1100000.00,230,3,0,0,0,0,NULL,0.00,0,NULL,NULL,NULL),
(341,250000.00,25000.00,'2026-09-29','2026-10-29',275000.00,'active','signed_contract/doc05863420260929093751.pdf','2026-09-29 19:35:48.381886',43,275000.00,231,3,0,0,0,0,NULL,0.00,0,NULL,NULL,NULL),
(342,1000000.00,100000.00,'2026-09-29','2026-10-29',1100000.00,'active','signed_contract/def11a64-6138-4ffc-ad72-6a903f427fd0.pdf','2026-09-29 19:43:31.462563',173,1100000.00,232,3,0,0,0,0,NULL,0.00,0,NULL,NULL,NULL),
(343,1200000.00,120000.00,'2026-09-29','2026-10-29',1320000.00,'active','signed_contract/serge_shema_Micro_Loan_request.pdf','2026-09-29 19:47:54.254771',69,1320000.00,233,3,0,0,0,0,NULL,0.00,0,NULL,NULL,NULL),
(346,114000.00,11400.00,'2026-09-30','2026-10-30',125400.00,'active','','2026-09-30 04:00:30.903360',153,125400.00,NULL,3,0,0,0,0,NULL,0.00,0,263,NULL,NULL),
(347,200000.00,20000.00,'2026-09-30','2026-10-30',220000.00,'active','signed_contract/DOC-20260930-WA0014.pdf','2026-09-30 21:17:29.878184',170,220000.00,234,3,0,0,0,0,NULL,0.00,0,NULL,NULL,NULL),
(348,450000.00,45000.00,'2026-09-30','2026-10-30',495000.00,'active','signed_contract/loan-agreement-_mugenga_yves._8.docx...pdf','2026-09-30 21:19:36.623054',74,495000.00,235,3,0,0,0,0,NULL,0.00,0,NULL,NULL,NULL),
(349,150000.00,15000.00,'2026-09-30','2026-10-30',165000.00,'active','signed_contract/loan-agreement-_niyomwungeri.pdf','2026-09-30 21:25:31.302853',174,165000.00,236,3,0,0,0,0,NULL,0.00,0,NULL,NULL,NULL),
(350,150000.00,15000.00,'2026-10-01','2026-10-31',165000.00,'active','','2026-10-01 04:00:27.962335',47,165000.00,NULL,3,0,0,0,0,NULL,0.00,0,104,NULL,NULL),
(351,340000.00,34000.00,'2026-10-01','2026-10-31',374000.00,'active','','2026-10-01 04:00:31.424317',62,374000.00,NULL,3,0,0,0,0,NULL,0.00,0,211,NULL,NULL),
(352,530000.00,53000.00,'2026-10-01','2026-10-31',583000.00,'active','','2026-10-01 04:00:32.085216',95,583000.00,NULL,3,0,0,0,0,NULL,0.00,0,212,NULL,NULL),
(353,180000.00,18000.00,'2026-10-01','2026-10-31',198000.00,'active','','2026-10-01 04:00:32.604726',139,198000.00,NULL,3,0,0,0,0,NULL,0.00,0,214,NULL,NULL),
(354,1500000.00,150000.00,'2026-10-01','2026-10-31',1650000.00,'active','','2026-10-01 04:00:33.265289',73,1650000.00,NULL,3,0,0,0,0,NULL,0.00,0,218,NULL,NULL),
(356,143666.66,14366.67,'2026-10-01','2026-10-31',158033.33,'active','','2026-10-01 04:00:36.013915',149,158033.33,NULL,3,0,0,0,0,NULL,0.00,0,259,NULL,NULL),
(357,531666.79,53166.68,'2026-10-02','2026-11-01',584833.47,'active','','2026-10-02 04:00:22.391072',10,584833.47,NULL,3,0,0,0,0,NULL,0.00,0,60,NULL,NULL),
(358,600000.00,60000.00,'2026-10-02','2026-11-01',660000.00,'active','','2026-10-02 04:00:27.759067',15,660000.00,NULL,3,0,0,0,0,NULL,0.00,0,219,NULL,NULL),
(359,200000.00,20000.00,'2026-10-02','2026-11-01',220000.00,'active','','2026-10-02 04:00:29.063400',81,220000.00,NULL,3,0,0,0,0,NULL,0.00,0,228,NULL,NULL),
(360,80000.00,8000.00,'2026-10-02','2026-11-01',88000.00,'active','','2026-10-02 04:00:29.683072',85,88000.00,NULL,3,0,0,0,0,NULL,0.00,0,229,NULL,NULL),
(361,1093333.30,109333.33,'2026-10-02','2026-11-01',1202666.63,'active','','2026-10-02 04:00:31.903545',168,1202666.63,NULL,3,0,0,0,0,NULL,0.00,0,301,NULL,NULL),
(362,100000.00,10000.00,'2026-10-06','2026-10-01',111333.32,'in_payment','signed_contract/Motor_Insurance_Certificate-09-20-2026-1821.pdf','2026-10-06 03:50:34.319037',20,91333.32,238,3,0,0,0,0,'2026-10-09',1333.32,0,NULL,'2026-10-09','2026-10-06 00:00:00.000000'),
(363,200000.00,20000.00,'2026-10-06','2026-11-05',220000.00,'active','signed_contract/loan-agreement-__HIRWA_PACIFIQUE_signed_1.pdf','2026-10-06 09:53:24.619120',88,220000.00,239,3,0,0,0,0,NULL,0.00,0,NULL,NULL,NULL),
(364,70000.00,7000.00,'2026-10-06','2026-11-05',77000.00,'active','signed_contract/CamScanner_01-10-2026_11.25.pdf','2026-10-06 09:55:14.023669',38,77000.00,240,3,0,0,0,0,NULL,0.00,0,NULL,NULL,NULL),
(365,1250000.00,125000.00,'2026-10-06','2026-11-05',1375000.00,'active','signed_contract/loan-agreement-_chirchir_kelvin._12.pdf','2026-10-06 09:57:16.927442',33,1375000.00,241,3,0,0,0,0,NULL,0.00,0,NULL,NULL,NULL),
(366,96999.93,9699.99,'2026-10-06','2026-11-05',106699.92,'active','','2026-10-06 11:41:28.228419',97,106699.92,NULL,3,0,0,0,0,NULL,0.00,0,123,NULL,NULL),
(368,1000000.00,100000.00,'2026-10-06','2026-11-05',1100000.00,'active','','2026-10-06 11:42:00.861518',89,1100000.00,NULL,3,0,0,0,0,NULL,0.00,0,230,NULL,NULL),
(369,650000.00,65000.00,'2026-10-06','2026-11-05',715000.00,'active','','2026-10-06 11:42:02.067986',93,715000.00,NULL,3,0,0,0,0,NULL,0.00,0,233,NULL,NULL),
(370,50000.00,5000.00,'2026-10-06','2026-11-05',55000.00,'active','','2026-10-06 11:42:02.675237',94,55000.00,NULL,3,0,0,0,0,NULL,0.00,0,234,NULL,NULL),
(371,350000.00,35000.00,'2026-10-06','2026-11-05',385000.00,'active','','2026-10-06 11:42:03.451747',101,385000.00,NULL,3,0,0,0,0,NULL,0.00,0,235,NULL,NULL),
(381,1000.00,100.00,'2026-10-06','2026-11-05',1100.00,'active','','2026-10-06 17:17:59.896872',16,1100.00,NULL,3,0,0,0,0,NULL,0.00,0,20,NULL,NULL),
(393,200.00,20.00,'2026-10-06','2026-11-05',220.00,'active','','2026-10-06 17:18:00.133610',35,220.00,NULL,3,0,0,0,0,NULL,0.00,0,36,NULL,NULL),
(398,333.33,33.33,'2026-10-06','2026-11-05',366.66,'active','','2026-10-06 17:18:00.217957',40,366.66,NULL,3,0,0,0,0,NULL,0.00,0,41,NULL,NULL),
(419,500.00,50.00,'2026-10-06','2026-11-05',550.00,'active','','2026-10-06 17:18:00.655851',57,550.00,NULL,3,0,0,0,0,NULL,0.00,0,64,NULL,NULL),
(422,333.33,33.33,'2026-10-06','2026-11-05',366.66,'active','','2026-10-06 17:18:00.730437',60,366.66,NULL,3,0,0,0,0,NULL,0.00,0,67,NULL,NULL),
(446,1166.67,116.67,'2026-10-06','2026-11-05',1283.34,'active','','2026-10-06 17:18:01.335284',81,1283.34,NULL,3,0,0,0,0,NULL,0.00,0,92,NULL,NULL),
(447,333.33,33.33,'2026-10-06','2026-11-05',366.66,'active','','2026-10-06 17:18:01.349795',82,366.66,NULL,3,0,0,0,0,NULL,0.00,0,93,NULL,NULL),
(453,3333.33,333.33,'2026-10-06','2026-11-05',3666.66,'active','','2026-10-06 17:18:01.444667',87,3666.66,NULL,3,0,0,0,0,NULL,0.00,0,101,NULL,NULL),
(460,2000.00,200.00,'2026-10-06','2026-11-05',2200.00,'active','','2026-10-06 17:18:01.559105',90,2200.00,NULL,3,0,0,0,0,NULL,0.00,0,108,NULL,NULL),
(472,96999.93,9699.99,'2026-10-06','2026-11-05',106699.92,'active','','2026-10-06 17:18:01.922351',97,106699.92,NULL,3,0,0,0,0,NULL,0.00,0,123,NULL,NULL),
(475,666.67,66.67,'2026-10-06','2026-11-05',733.34,'active','','2026-10-06 17:18:02.011808',100,733.34,NULL,3,0,0,0,0,NULL,0.00,0,127,NULL,NULL),
(505,1000.00,100.00,'2026-10-06','2026-11-05',1100.00,'active','','2026-10-06 17:18:02.553096',118,1100.00,NULL,3,0,0,0,0,NULL,0.00,0,163,NULL,NULL),
(513,266.67,26.67,'2026-10-06','2026-11-05',293.34,'active','','2026-10-06 17:18:02.674452',123,293.34,NULL,3,0,0,0,0,NULL,0.00,0,171,NULL,NULL),
(590,1000.00,100.00,'2026-10-07','2026-11-06',1100.00,'active','','2026-10-07 04:00:44.202624',16,1100.00,NULL,3,0,0,0,0,NULL,0.00,0,20,NULL,NULL),
(612,200.00,20.00,'2026-10-07','2026-11-06',220.00,'active','','2026-10-07 04:01:03.710541',35,220.00,NULL,3,0,0,0,0,NULL,0.00,0,36,NULL,NULL),
(622,333.33,33.33,'2026-10-07','2026-11-06',366.66,'active','','2026-10-07 04:01:12.180074',40,366.66,NULL,3,0,0,0,0,NULL,0.00,0,41,NULL,NULL),
(655,500.00,50.00,'2026-10-07','2026-11-06',550.00,'active','','2026-10-07 04:01:41.009956',57,550.00,NULL,3,0,0,0,0,NULL,0.00,0,64,NULL,NULL),
(659,333.33,33.33,'2026-10-07','2026-11-06',366.66,'active','','2026-10-07 04:01:43.995623',60,366.66,NULL,3,0,0,0,0,NULL,0.00,0,67,NULL,NULL),
(696,1166.67,116.67,'2026-10-07','2026-11-06',1283.34,'active','','2026-10-07 04:02:17.306654',81,1283.34,NULL,3,0,0,0,0,NULL,0.00,0,92,NULL,NULL),
(697,333.33,33.33,'2026-10-07','2026-11-06',366.66,'active','','2026-10-07 04:02:17.974153',82,366.66,NULL,3,0,0,0,0,NULL,0.00,0,93,NULL,NULL),
(700,3333.33,333.33,'2026-10-07','2026-11-06',3666.66,'active','','2026-10-07 04:02:20.567143',87,3666.66,NULL,3,0,0,0,0,NULL,0.00,0,101,NULL,NULL),
(705,2000.00,200.00,'2026-10-07','2026-11-06',2200.00,'active','','2026-10-07 04:02:24.158235',90,2200.00,NULL,3,0,0,0,0,NULL,0.00,0,108,NULL,NULL),
(715,96999.93,9699.99,'2026-10-07','2026-11-06',106699.92,'active','','2026-10-07 04:02:33.788564',97,106699.92,NULL,3,0,0,0,0,NULL,0.00,0,123,NULL,NULL),
(718,666.67,66.67,'2026-10-07','2026-11-06',733.34,'active','','2026-10-07 04:02:35.617247',100,733.34,NULL,3,0,0,0,0,NULL,0.00,0,127,NULL,NULL),
(736,1000.00,100.00,'2026-10-07','2026-11-06',1100.00,'active','','2026-10-07 04:02:47.971021',118,1100.00,NULL,3,0,0,0,0,NULL,0.00,0,163,NULL,NULL),
(742,266.67,26.67,'2026-10-07','2026-11-06',293.34,'active','','2026-10-07 04:02:52.531002',123,293.34,NULL,3,0,0,0,0,NULL,0.00,0,171,NULL,NULL),
(791,1000.00,100.00,'2026-10-08','2026-11-07',1100.00,'active','','2026-10-08 04:00:40.832350',16,1100.00,NULL,3,0,0,0,0,NULL,0.00,0,20,NULL,NULL),
(813,200.00,20.00,'2026-10-08','2026-11-07',220.00,'active','','2026-10-08 04:00:41.332569',35,220.00,NULL,3,0,0,0,0,NULL,0.00,0,36,NULL,NULL),
(823,333.33,33.33,'2026-10-08','2026-11-07',366.66,'active','','2026-10-08 04:00:41.529134',40,366.66,NULL,3,0,0,0,0,NULL,0.00,0,41,NULL,NULL),
(856,500.00,50.00,'2026-10-08','2026-11-07',550.00,'active','','2026-10-08 04:00:42.120717',57,550.00,NULL,3,0,0,0,0,NULL,0.00,0,64,NULL,NULL),
(860,333.33,33.33,'2026-10-08','2026-11-07',366.66,'active','','2026-10-08 04:00:42.209088',60,366.66,NULL,3,0,0,0,0,NULL,0.00,0,67,NULL,NULL),
(897,1166.67,116.67,'2026-10-08','2026-11-07',1283.34,'active','','2026-10-08 04:00:42.843043',81,1283.34,NULL,3,0,0,0,0,NULL,0.00,0,92,NULL,NULL),
(898,333.33,33.33,'2026-10-08','2026-11-07',366.66,'active','','2026-10-08 04:00:42.862680',82,366.66,NULL,3,0,0,0,0,NULL,0.00,0,93,NULL,NULL),
(901,3333.33,333.33,'2026-10-08','2026-11-07',3666.66,'active','','2026-10-08 04:00:42.989357',87,3666.66,NULL,3,0,0,0,0,NULL,0.00,0,101,NULL,NULL),
(906,2000.00,200.00,'2026-10-08','2026-11-07',2200.00,'active','','2026-10-08 04:00:43.121380',90,2200.00,NULL,3,0,0,0,0,NULL,0.00,0,108,NULL,NULL),
(916,96999.93,9699.99,'2026-10-08','2026-11-07',106699.92,'active','','2026-10-08 04:00:43.305445',97,106699.92,NULL,3,0,0,0,0,NULL,0.00,0,123,NULL,NULL),
(919,666.67,66.67,'2026-10-08','2026-11-07',733.34,'active','','2026-10-08 04:00:43.364006',100,733.34,NULL,3,0,0,0,0,NULL,0.00,0,127,NULL,NULL),
(937,1000.00,100.00,'2026-10-08','2026-11-07',1100.00,'active','','2026-10-08 04:00:43.671577',118,1100.00,NULL,3,0,0,0,0,NULL,0.00,0,163,NULL,NULL),
(943,266.67,26.67,'2026-10-08','2026-11-07',293.34,'active','','2026-10-08 04:00:43.773097',123,293.34,NULL,3,0,0,0,0,NULL,0.00,0,171,NULL,NULL),
(987,1000.00,100.00,'2026-10-09','2026-11-08',1100.00,'active','','2026-10-09 04:00:48.387255',16,1100.00,NULL,3,0,0,0,0,NULL,0.00,0,20,NULL,NULL),
(1009,200.00,20.00,'2026-10-09','2026-11-08',220.00,'active','','2026-10-09 04:00:49.473245',35,220.00,NULL,3,0,0,0,0,NULL,0.00,0,36,NULL,NULL),
(1019,333.33,33.33,'2026-10-09','2026-11-08',366.66,'active','','2026-10-09 04:00:49.775772',40,366.66,NULL,3,0,0,0,0,NULL,0.00,0,41,NULL,NULL),
(1045,200000.00,20000.00,'2026-10-09','2026-11-08',220000.00,'active','','2026-10-09 04:00:50.801954',52,220000.00,NULL,3,0,0,0,0,NULL,0.00,0,248,NULL,NULL),
(1053,500.00,50.00,'2026-10-09','2026-11-08',550.00,'active','','2026-10-09 04:00:51.037138',57,550.00,NULL,3,0,0,0,0,NULL,0.00,0,64,NULL,NULL),
(1057,333.33,33.33,'2026-10-09','2026-11-08',366.66,'active','','2026-10-09 04:00:51.137313',60,366.66,NULL,3,0,0,0,0,NULL,0.00,0,67,NULL,NULL),
(1094,1166.67,116.67,'2026-10-09','2026-11-08',1283.34,'active','','2026-10-09 04:00:52.106528',81,1283.34,NULL,3,0,0,0,0,NULL,0.00,0,92,NULL,NULL),
(1095,333.33,33.33,'2026-10-09','2026-11-08',366.66,'active','','2026-10-09 04:00:52.134209',82,366.66,NULL,3,0,0,0,0,NULL,0.00,0,93,NULL,NULL),
(1098,3333.33,333.33,'2026-10-09','2026-11-08',3666.66,'active','','2026-10-09 04:00:52.236928',87,3666.66,NULL,3,0,0,0,0,NULL,0.00,0,101,NULL,NULL),
(1103,2000.00,200.00,'2026-10-09','2026-11-08',2200.00,'active','','2026-10-09 04:00:52.353428',90,2200.00,NULL,3,0,0,0,0,NULL,0.00,0,108,NULL,NULL),
(1113,96999.93,9699.99,'2026-10-09','2026-11-08',106699.92,'active','','2026-10-09 04:00:52.993482',97,106699.92,NULL,3,0,0,0,0,NULL,0.00,0,123,NULL,NULL),
(1116,666.67,66.67,'2026-10-09','2026-11-08',733.34,'active','','2026-10-09 04:00:53.160263',100,733.34,NULL,3,0,0,0,0,NULL,0.00,0,127,NULL,NULL),
(1134,1000.00,100.00,'2026-10-09','2026-11-08',1100.00,'active','','2026-10-09 04:00:53.757341',118,1100.00,NULL,3,0,0,0,0,NULL,0.00,0,163,NULL,NULL),
(1140,266.67,26.67,'2026-10-09','2026-11-08',293.34,'active','','2026-10-09 04:00:53.932143',123,293.34,NULL,3,0,0,0,0,NULL,0.00,0,171,NULL,NULL),
(1173,200000.00,20000.00,'2026-10-09','2026-11-08',220000.00,'active','','2026-10-09 04:00:55.111351',166,220000.00,NULL,3,0,0,0,0,NULL,0.00,0,299,NULL,NULL),
(1186,1000.00,100.00,'2026-10-10','2026-11-09',1100.00,'active','','2026-10-10 04:00:19.823041',16,1100.00,NULL,3,0,0,0,0,NULL,0.00,0,20,NULL,NULL),
(1188,91333.32,9133.33,'2026-10-10','2026-11-09',100466.65,'active','','2026-10-10 04:00:19.930777',20,100466.65,NULL,3,0,0,0,0,NULL,0.00,0,362,NULL,NULL),
(1209,200.00,20.00,'2026-10-10','2026-11-09',220.00,'active','','2026-10-10 04:00:20.662866',35,220.00,NULL,3,0,0,0,0,NULL,0.00,0,36,NULL,NULL),
(1219,333.33,33.33,'2026-10-10','2026-11-09',366.66,'active','','2026-10-10 04:00:20.970552',40,366.66,NULL,3,0,0,0,0,NULL,0.00,0,41,NULL,NULL),
(1253,500.00,50.00,'2026-10-10','2026-11-09',550.00,'active','','2026-10-10 04:00:23.365252',57,550.00,NULL,3,0,0,0,0,NULL,0.00,0,64,NULL,NULL),
(1257,333.33,33.33,'2026-10-10','2026-11-09',366.66,'active','','2026-10-10 04:00:23.620208',60,366.66,NULL,3,0,0,0,0,NULL,0.00,0,67,NULL,NULL),
(1294,1166.67,116.67,'2026-10-10','2026-11-09',1283.34,'active','','2026-10-10 04:00:25.443895',81,1283.34,NULL,3,0,0,0,0,NULL,0.00,0,92,NULL,NULL),
(1295,333.33,33.33,'2026-10-10','2026-11-09',366.66,'active','','2026-10-10 04:00:25.472372',82,366.66,NULL,3,0,0,0,0,NULL,0.00,0,93,NULL,NULL),
(1298,3333.33,333.33,'2026-10-10','2026-11-09',3666.66,'active','','2026-10-10 04:00:25.566959',87,3666.66,NULL,3,0,0,0,0,NULL,0.00,0,101,NULL,NULL),
(1303,2000.00,200.00,'2026-10-10','2026-11-09',2200.00,'active','','2026-10-10 04:00:25.799453',90,2200.00,NULL,3,0,0,0,0,NULL,0.00,0,108,NULL,NULL),
(1313,96999.93,9699.99,'2026-10-10','2026-11-09',106699.92,'active','','2026-10-10 04:00:26.471059',97,106699.92,NULL,3,0,0,0,0,NULL,0.00,0,123,NULL,NULL),
(1316,666.67,66.67,'2026-10-10','2026-11-09',733.34,'active','','2026-10-10 04:00:26.658219',100,733.34,NULL,3,0,0,0,0,NULL,0.00,0,127,NULL,NULL),
(1334,1000.00,100.00,'2026-10-10','2026-11-09',1100.00,'active','','2026-10-10 04:00:27.742476',118,1100.00,NULL,3,0,0,0,0,NULL,0.00,0,163,NULL,NULL),
(1340,266.67,26.67,'2026-10-10','2026-11-09',293.34,'active','','2026-10-10 04:00:28.360107',123,293.34,NULL,3,0,0,0,0,NULL,0.00,0,171,NULL,NULL),
(1370,40000.00,4000.00,'2026-10-10','2026-11-09',44000.00,'active','','2026-10-10 04:00:30.070981',155,44000.00,NULL,3,0,0,0,0,NULL,0.00,0,265,NULL,NULL),
(1374,200000.00,20000.00,'2026-10-10','2026-11-09',220000.00,'active','','2026-10-10 04:00:30.320095',166,220000.00,NULL,3,0,0,0,0,NULL,0.00,0,299,NULL,NULL),
(1387,1000.00,100.00,'2026-10-11','2026-11-10',1100.00,'active','','2026-10-11 04:00:24.234951',16,1100.00,NULL,3,0,0,0,0,NULL,0.00,0,20,NULL,NULL),
(1389,91333.32,9133.33,'2026-10-11','2026-11-10',100466.65,'active','','2026-10-11 04:00:24.302034',20,100466.65,NULL,3,0,0,0,0,NULL,0.00,0,362,NULL,NULL),
(1411,200.00,20.00,'2026-10-11','2026-11-10',220.00,'active','','2026-10-11 04:00:25.116692',35,220.00,NULL,3,0,0,0,0,NULL,0.00,0,36,NULL,NULL),
(1421,333.33,33.33,'2026-10-11','2026-11-10',366.66,'active','','2026-10-11 04:00:25.469636',40,366.66,NULL,3,0,0,0,0,NULL,0.00,0,41,NULL,NULL),
(1455,500.00,50.00,'2026-10-11','2026-11-10',550.00,'active','','2026-10-11 04:00:26.703158',57,550.00,NULL,3,0,0,0,0,NULL,0.00,0,64,NULL,NULL),
(1459,333.33,33.33,'2026-10-11','2026-11-10',366.66,'active','','2026-10-11 04:00:26.880473',60,366.66,NULL,3,0,0,0,0,NULL,0.00,0,67,NULL,NULL),
(1496,1166.67,116.67,'2026-10-11','2026-11-10',1283.34,'active','','2026-10-11 04:00:28.413615',81,1283.34,NULL,3,0,0,0,0,NULL,0.00,0,92,NULL,NULL),
(1497,333.33,33.33,'2026-10-11','2026-11-10',366.66,'active','','2026-10-11 04:00:28.462129',82,366.66,NULL,3,0,0,0,0,NULL,0.00,0,93,NULL,NULL),
(1500,3333.33,333.33,'2026-10-11','2026-11-10',3666.66,'active','','2026-10-11 04:00:28.558552',87,3666.66,NULL,3,0,0,0,0,NULL,0.00,0,101,NULL,NULL),
(1505,2000.00,200.00,'2026-10-11','2026-11-10',2200.00,'active','','2026-10-11 04:00:28.722700',90,2200.00,NULL,3,0,0,0,0,NULL,0.00,0,108,NULL,NULL),
(1515,96999.93,9699.99,'2026-10-11','2026-11-10',106699.92,'active','','2026-10-11 04:00:28.986406',97,106699.92,NULL,3,0,0,0,0,NULL,0.00,0,123,NULL,NULL),
(1518,666.67,66.67,'2026-10-11','2026-11-10',733.34,'active','','2026-10-11 04:00:29.080577',100,733.34,NULL,3,0,0,0,0,NULL,0.00,0,127,NULL,NULL),
(1536,1000.00,100.00,'2026-10-11','2026-11-10',1100.00,'active','','2026-10-11 04:00:29.634278',118,1100.00,NULL,3,0,0,0,0,NULL,0.00,0,163,NULL,NULL),
(1542,266.67,26.67,'2026-10-11','2026-11-10',293.34,'active','','2026-10-11 04:00:29.786635',123,293.34,NULL,3,0,0,0,0,NULL,0.00,0,171,NULL,NULL),
(1562,750000.00,75000.00,'2026-10-11','2026-11-10',825000.00,'active','','2026-10-11 04:00:30.311385',136,825000.00,NULL,3,0,0,0,0,NULL,0.00,0,246,NULL,NULL),
(1572,40000.00,4000.00,'2026-10-11','2026-11-10',44000.00,'active','','2026-10-11 04:00:30.643827',155,44000.00,NULL,3,0,0,0,0,NULL,0.00,0,265,NULL,NULL),
(1576,200000.00,20000.00,'2026-10-11','2026-11-10',220000.00,'active','','2026-10-11 04:00:30.766886',166,220000.00,NULL,3,0,0,0,0,NULL,0.00,0,299,NULL,NULL),
(1589,1000.00,100.00,'2026-10-12','2026-11-11',1100.00,'active','','2026-10-12 04:00:47.547129',16,1100.00,NULL,3,0,0,0,0,NULL,0.00,0,20,NULL,NULL),
(1591,91333.32,9133.33,'2026-10-12','2026-11-11',100466.65,'active','','2026-10-12 04:00:47.611530',20,100466.65,NULL,3,0,0,0,0,NULL,0.00,0,362,NULL,NULL),
(1613,200.00,20.00,'2026-10-12','2026-11-11',220.00,'active','','2026-10-12 04:00:48.211487',35,220.00,NULL,3,0,0,0,0,NULL,0.00,0,36,NULL,NULL),
(1623,333.33,33.33,'2026-10-12','2026-11-11',366.66,'active','','2026-10-12 04:00:48.479015',40,366.66,NULL,3,0,0,0,0,NULL,0.00,0,41,NULL,NULL),
(1658,500.00,50.00,'2026-10-12','2026-11-11',550.00,'active','','2026-10-12 04:00:49.557712',57,550.00,NULL,3,0,0,0,0,NULL,0.00,0,64,NULL,NULL),
(1662,333.33,33.33,'2026-10-12','2026-11-11',366.66,'active','','2026-10-12 04:00:49.696511',60,366.66,NULL,3,0,0,0,0,NULL,0.00,0,67,NULL,NULL),
(1699,1166.67,116.67,'2026-10-12','2026-11-11',1283.34,'active','','2026-10-12 04:00:50.878321',81,1283.34,NULL,3,0,0,0,0,NULL,0.00,0,92,NULL,NULL),
(1700,333.33,33.33,'2026-10-12','2026-11-11',366.66,'active','','2026-10-12 04:00:50.912402',82,366.66,NULL,3,0,0,0,0,NULL,0.00,0,93,NULL,NULL),
(1703,3333.33,333.33,'2026-10-12','2026-11-11',3666.66,'active','','2026-10-12 04:00:51.032308',87,3666.66,NULL,3,0,0,0,0,NULL,0.00,0,101,NULL,NULL),
(1708,2000.00,200.00,'2026-10-12','2026-11-11',2200.00,'active','','2026-10-12 04:00:51.186345',90,2200.00,NULL,3,0,0,0,0,NULL,0.00,0,108,NULL,NULL),
(1718,96999.93,9699.99,'2026-10-12','2026-11-11',106699.92,'active','','2026-10-12 04:00:51.613587',97,106699.92,NULL,3,0,0,0,0,NULL,0.00,0,123,NULL,NULL),
(1721,666.67,66.67,'2026-10-12','2026-11-11',733.34,'active','','2026-10-12 04:00:51.726970',100,733.34,NULL,3,0,0,0,0,NULL,0.00,0,127,NULL,NULL),
(1739,1000.00,100.00,'2026-10-12','2026-11-11',1100.00,'active','','2026-10-12 04:00:52.404254',118,1100.00,NULL,3,0,0,0,0,NULL,0.00,0,163,NULL,NULL),
(1745,266.67,26.67,'2026-10-12','2026-11-11',293.34,'active','','2026-10-12 04:00:52.654304',123,293.34,NULL,3,0,0,0,0,NULL,0.00,0,171,NULL,NULL),
(1775,40000.00,4000.00,'2026-10-12','2026-11-11',44000.00,'active','','2026-10-12 04:00:53.717865',155,44000.00,NULL,3,0,0,0,0,NULL,0.00,0,265,NULL,NULL),
(1779,200000.00,20000.00,'2026-10-12','2026-11-11',220000.00,'active','','2026-10-12 04:00:53.848353',166,220000.00,NULL,3,0,0,0,0,NULL,0.00,0,299,NULL,NULL),
(1780,500000.00,50000.00,'2026-10-19','2026-11-18',550000.00,'active','signed_contract/Lost_Loan_Due_to_System_error.pdf','2026-10-19 15:47:55.869403',46,550000.00,242,3,0,0,0,0,NULL,0.00,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `loans_loan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loans_loanapplication`
--

DROP TABLE IF EXISTS `loans_loanapplication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `loans_loanapplication` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `requested_amount` decimal(12,2) NOT NULL,
  `status` varchar(20) NOT NULL,
  `comment` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `client_id` bigint(20) NOT NULL,
  `reviewed_by_id` bigint(20) DEFAULT NULL,
  `loan_type_id` bigint(20) NOT NULL,
  `contract` varchar(100) DEFAULT NULL,
  `is_signed` tinyint(1) NOT NULL,
  `signed_at` datetime(6) DEFAULT NULL,
  `signed_contract` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `loans_loanapplication_client_id_448bd9ed_fk_clients_client_id` (`client_id`),
  KEY `loans_loanapplication_reviewed_by_id_295423a3_fk_users_user_id` (`reviewed_by_id`),
  KEY `loans_loanapplication_loan_type_id_a397f90d_fk_loans_loantype_id` (`loan_type_id`),
  CONSTRAINT `loans_loanapplication_client_id_448bd9ed_fk_clients_client_id` FOREIGN KEY (`client_id`) REFERENCES `clients_client` (`id`),
  CONSTRAINT `loans_loanapplication_loan_type_id_a397f90d_fk_loans_loantype_id` FOREIGN KEY (`loan_type_id`) REFERENCES `loans_loantype` (`id`),
  CONSTRAINT `loans_loanapplication_reviewed_by_id_295423a3_fk_users_user_id` FOREIGN KEY (`reviewed_by_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=243 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loans_loanapplication`
--

LOCK TABLES `loans_loanapplication` WRITE;
/*!40000 ALTER TABLE `loans_loanapplication` DISABLE KEYS */;
INSERT INTO `loans_loanapplication` VALUES
(9,50000.00,'approved','HJOJ','2026-06-09 17:39:49.346674',7,7,3,'contracts/loan-agreement-_agatoni_deborah.docx',1,'2026-06-15 15:47:02.879267','signed_contract/loan-agreement-_agatoni_deborah.pdf'),
(10,350000.00,'approved','','2026-06-15 15:43:42.291606',8,NULL,3,'contracts/loan-agreement_mutoni_juliet._2.pdf',1,NULL,'signed_contract/scan_juliette.mutoni_2026-06-01-11-37-59.pdf'),
(11,300000.00,'approved','','2026-06-16 16:34:33.210134',6,NULL,3,'contracts/loan-agreement-__Larissa_June_2026.pdf',1,NULL,'signed_contract/loan-agreement-__Larissa_June_2026.pdf'),
(12,150000.00,'approved','','2026-06-16 16:45:04.103530',9,NULL,3,'contracts/loan-agreement_dushimimana_diogene.pdf',1,NULL,'signed_contract/loan-agreement_dushimimana_diogene.pdf'),
(13,500000.00,'approved','','2026-06-16 16:49:09.761788',10,NULL,3,'contracts/loan-agreement-_MUTUYEYESU_THEOPHILE._5.pdf',1,NULL,'signed_contract/CamScanner_06-02-2026_08.36.pdf'),
(14,60000.00,'approved','','2026-06-16 16:59:06.605526',11,NULL,3,'contracts/loan-agreement-__IMMACULEE_KUBWIMANA.2.pdf',1,NULL,'signed_contract/SCAN0019.PDF'),
(15,100000.00,'approved','','2026-06-16 17:12:54.633394',13,NULL,3,'contracts/loan-agreement-_seraphine_nyirahabimana_4_1.pdf',1,NULL,'signed_contract/loan-agreement-_seraphine_nyirahabimana_4.pdf'),
(16,200000.00,'approved','','2026-06-16 17:15:53.527847',14,NULL,3,'contracts/loan-agreement__NSANZABAGANWA_JOSIA_5_1.pdf',1,NULL,'signed_contract/CamScanner_06-03-2026_10.23.pdf'),
(17,3000000.00,'approved','','2026-06-16 18:20:13.594413',12,NULL,3,'contracts/loan-agreement_bernard_bihezande.2.pdf',1,NULL,'signed_contract/loan-agreement_bernard_bihezande.2.pdf'),
(18,500000.00,'approved','','2026-06-19 16:25:55.641153',15,NULL,3,'contracts/loan-agreement__dushimimana_jonathan.pdf',1,NULL,'signed_contract/Loan_Agreement_Dushimimana_Jonathan.pdf'),
(19,300000.00,'approved','','2026-06-19 16:35:35.116498',16,NULL,3,'contracts/loan-agreement__NGENZI_JOEL.pdf',1,NULL,'signed_contract/loan-agreement__NGENZI_JOEL_1.pdf'),
(20,500000.00,'approved','','2026-06-19 16:46:20.656222',17,NULL,3,'contracts/loan-agreement-_chris_ngabo.2.pdf',1,NULL,'signed_contract/loan-agreement-_chris_ngabo.211.pdf'),
(21,100000.00,'approved','','2026-06-19 16:53:43.116824',18,NULL,3,'contracts/loan-agreement-_tuyizere_rose.pdf',1,NULL,'signed_contract/loan-agreement-_tuyizere_rose.pdf'),
(22,300000.00,'approved','','2026-06-22 17:38:13.612165',22,NULL,3,'contracts/loan-agreement-_twebaze_rogers_3.pdf',1,NULL,'signed_contract/CamScanner_06-08-2026_11.15.pdf'),
(23,150000.00,'approved','','2026-06-22 18:21:05.058241',23,NULL,3,'contracts/loan-agreement-_DUSENGE_DIODONNE2.pdf',1,NULL,'signed_contract/SIGNED_LOAN_AGREEMENT.pdf'),
(24,200000.00,'approved','','2026-06-22 18:29:33.622634',24,NULL,3,'contracts/loan-agreement-_umuhire_gatare.pdf',1,NULL,'signed_contract/CamScanner_08-06-2026_14.16.pdf'),
(25,500000.00,'approved','','2026-06-22 18:40:42.425702',25,NULL,3,'contracts/loan-agreement-_immaculee_muka._3_1.pdf',1,NULL,'signed_contract/loan-agreement-_immaculee_muka._3.pdf'),
(26,5000000.00,'approved','','2026-06-22 18:54:12.380807',26,NULL,3,'contracts/loan-agreement-_muberuka_frank.pdf',1,NULL,'signed_contract/loan-agreement-_muberuka_frank.pdf'),
(27,100000.00,'approved','','2026-06-22 19:37:01.686888',27,NULL,3,'contracts/loan-agreement-_ndagijimana_jean.pdf',1,NULL,'signed_contract/Loan_Agreement_Sign-06-10-2026-1231.pdf'),
(28,200000.00,'approved','uyu yatanze ari nka pic contract ye none yanze kujyamo still. n umusilikare nta contract bagira','2026-06-22 19:51:46.621985',28,NULL,3,'contracts/loan-agreement-__kazoora_steven.2.pdf',1,NULL,'signed_contract/loan-agreement-__kazoora_steven.2.pdf'),
(29,100000.00,'approved','For testing','2026-06-23 16:34:39.080980',20,NULL,3,'contracts/screenshot2.pdf',1,NULL,'signed_contract/screenshot2.pdf'),
(30,100000.00,'approved','','2026-06-26 20:40:09.366801',30,NULL,3,'contracts/loan-agreement-_DUSABIMANA_JENNY.pdf',1,NULL,'signed_contract/agreement.pdf'),
(31,1000000.00,'approved','','2026-06-26 20:50:51.616033',31,NULL,3,'contracts/loan-agreement-__hagenimana_anicet.pdf',1,NULL,'signed_contract/loan-agreement-__hagenimana_anicet.pdf'),
(32,1500000.00,'approved','','2026-06-27 07:24:00.510681',32,NULL,3,'contracts/loan-agreement-__higiro_gato.docx',1,NULL,'signed_contract/HIGIRO_CONTRACT_LOAN.pdf'),
(33,1000000.00,'approved','','2026-06-27 07:34:05.947029',33,NULL,3,'contracts/loan-agreement-_chirchir_kelvin._8.docx',1,NULL,'signed_contract/loan-agreement-_chirchir_kelvin._8.pdf'),
(34,200000.00,'approved','','2026-06-27 07:44:44.967046',34,NULL,3,'contracts/loan-agreement-__dushime_patrriick.docx',1,NULL,'signed_contract/Loan_Areement-DUSHIME_PATRICK.pdf'),
(35,60000.00,'approved','','2026-06-27 07:54:18.302431',35,NULL,3,'contracts/loan-agreement-_Uwase_Cynthia_2.docx',1,NULL,'signed_contract/UWASE_STM.pdf'),
(36,90000.00,'approved','','2026-06-27 08:14:51.320895',36,NULL,3,'contracts/loan-agreement-_serge_ntwali._4.docx',1,NULL,'signed_contract/img20250115_11261285.pdf'),
(37,100000.00,'approved','','2026-06-27 10:09:19.238533',37,NULL,3,'contracts/loan-agreement-_Marie_grace_4.docx',1,NULL,'signed_contract/20260622144100.pdf'),
(38,100000.00,'approved','','2026-06-27 10:23:43.596308',38,NULL,3,'contracts/loan-agreement-__munana_rwibasira._3.docx',1,NULL,'signed_contract/PHIONA_2.pdf'),
(39,50000.00,'approved','','2026-07-01 10:40:16.130813',39,NULL,3,'contracts/loan-agreement-_SANO_ELLISE2.docx',1,NULL,'signed_contract/loan_agreement_.pdf'),
(40,100000.00,'approved','','2026-07-01 10:58:47.896501',40,NULL,3,'contracts/loan-agreement-__gaga_marshall.2.docx',1,NULL,'signed_contract/loan-agreement-__gaga_marshall.2.pdf'),
(41,60000.00,'approved','','2026-07-01 11:54:25.891121',41,NULL,3,'contracts/loan-agreement-__marie_chance.docx',1,NULL,'signed_contract/Chance_.pdf'),
(42,500000.00,'approved','','2026-07-01 13:50:18.551554',42,NULL,3,'contracts/ID_Toussaint_.pdf',1,NULL,'signed_contract/ID_Toussaint_.pdf'),
(43,100000.00,'approved','','2026-07-01 13:58:03.783595',43,NULL,3,'contracts/loan-agreement-_karangwa_arsene._8.docx',1,NULL,'signed_contract/doc01186120260626102123.pdf'),
(44,200000.00,'approved','','2026-07-01 15:30:09.342218',44,NULL,3,'contracts/loan-agreement-__ruzindana_bertarnd_shema_4.docx',1,NULL,'signed_contract/Bertrand_Shema_ID.pdf'),
(45,500000.00,'approved','','2026-07-02 19:04:11.284745',46,NULL,3,'contracts/loan-agreement-_atete_benita_5.docx',1,NULL,'signed_contract/loan-agreement-_atete_benita_5.docx.pdf'),
(46,150000.00,'approved','','2026-07-02 19:12:53.340141',47,NULL,3,'contracts/loan-agreement-__tumusingize_briget_3.docx',1,NULL,'signed_contract/TUMUSINGIZE_AGGREMENT.pdf'),
(47,200000.00,'approved','','2026-07-02 19:24:23.686703',48,NULL,3,'contracts/loan-agreement-__mwangil_daniel_2.docx',1,NULL,'signed_contract/loan-agreement-__mwangil_daniel_2_2.pdf'),
(48,50000.00,'approved','','2026-07-03 15:01:31.168291',50,NULL,3,'contracts/loan-agreement-__CYUBAHIRO_CONFIANCE.2.docx',1,NULL,'signed_contract/Compressed_loan-agreement-__CYUBAHIRO_CONFIANCE.2.pdf.pdf'),
(49,100000.00,'approved','','2026-07-06 09:56:21.208759',51,NULL,3,'contracts/loan-agreement-_AIME_JULE_MUTAN._4.docx',1,NULL,'signed_contract/CamScanner_06-04-2026_19.08.pdf'),
(50,200000.00,'approved','','2026-07-06 10:04:53.219537',49,NULL,3,'contracts/teta_id.pdf',1,NULL,'signed_contract/teta_id.pdf'),
(51,200000.00,'approved','','2026-07-14 16:32:17.488211',52,NULL,3,'contracts/loan-agreement-_vincent.2.docx',1,NULL,'signed_contract/CamScanner_06-04-2026_20.49.pdf'),
(52,600000.00,'approved','','2026-07-14 17:21:30.446320',53,NULL,3,'contracts/loan-agreement__gasasira_ronald.5.docx',1,NULL,'signed_contract/CamScanner_12-02-2025_09.36.pdf'),
(53,1700000.00,'approved','','2026-07-14 17:57:49.041747',54,NULL,3,'contracts/loan-agreement-_HAGENIMANA_ANTOINE.3.docx',1,NULL,'signed_contract/loan-agreement-_HAGENIMANA_ANTOINE.3.pdf'),
(54,120000.00,'approved','','2026-07-14 18:07:20.886294',55,NULL,3,'contracts/loan-agreement-__karim_ntakirutimana._7_1.docx',1,NULL,'signed_contract/signed_contract.pdf'),
(55,1000000.00,'approved','','2026-07-14 18:19:01.120621',33,NULL,3,'contracts/loan-agreement-_chirchir_kelvin._9.docx',1,NULL,'signed_contract/loan-agreement-_chirchir_kelvin._9.pdf'),
(56,60000.00,'approved','','2026-07-20 14:31:14.786053',56,NULL,3,'contracts/loan-agreement-__rurangwa_nadine_2.docx',1,NULL,'signed_contract/RURANGWA_Nadine_Doc_2.pdf'),
(57,150000.00,'approved','','2026-07-20 14:51:48.981811',57,NULL,3,'contracts/loan-agreement-_prince_masamaz_6.docx',1,NULL,'signed_contract/loan-agreement-_prince_masamaz_6_.pdf'),
(58,300000.00,'approved','','2026-07-20 15:20:55.439313',58,NULL,3,'contracts/loan-agreement-_umuringa_rolande._3.docx',1,NULL,'signed_contract/NYARUGENGE_3.pdf'),
(59,600000.00,'approved','','2026-07-20 15:43:12.770385',59,NULL,3,'contracts/loan-agreement_NTEZIRYIMANA_JEAN_PAUL_2.docx',1,NULL,'signed_contract/CamScanner_07-03-2026_15.28.pdf'),
(60,100000.00,'approved','','2026-07-21 14:28:07.446146',60,NULL,3,'contracts/loan-agreement-__eric_rukundo_4.docx',1,NULL,'signed_contract/RUKUNDO_ID.pdf'),
(61,300000.00,'approved','','2026-07-21 14:53:36.544816',61,NULL,3,'contracts/CamScanner_07-09-2026_15.17.pdf',1,NULL,'signed_contract/CamScanner_07-09-2026_15.17.pdf'),
(62,200000.00,'approved','','2026-07-21 15:07:25.129024',62,NULL,3,'contracts/loan-agreement-__MUHOZA_DIANA_3.docx',1,NULL,'signed_contract/Agreement_loan_.pdf'),
(63,250000.00,'approved','','2026-07-21 15:15:18.166840',63,NULL,3,'contracts/loan-agreement-__AIME_SHEMA_CHRIS.4.docx',1,NULL,'signed_contract/ID_3.pdf'),
(64,500000.00,'approved','','2026-07-21 15:29:04.842598',64,NULL,3,'contracts/loan-agreement-__niyosenga_gisele.2.pdf',1,NULL,'signed_contract/loan-agreement-__niyosenga_gisele.2.pdf'),
(65,100000.00,'approved','','2026-07-21 15:54:31.663209',65,NULL,3,'contracts/loan-agreement-_adeliphine_igizeneza._3.docx',1,NULL,'signed_contract/MKL_1_1.pdf'),
(66,1000000.00,'approved','','2026-07-22 08:26:13.356921',66,NULL,3,'contracts/loan-agreement-_rwabuhihi_masimbi.docx',1,NULL,'signed_contract/loan-agreement-_rwabuhihi_masimbi.pdf'),
(67,50000.00,'approved','','2026-07-22 08:43:10.170376',67,NULL,3,'contracts/loan-agreement-_rukundo_cedrick_7.docx',1,NULL,'signed_contract/SCANNED_DOC20260715_15022567.pdf'),
(68,100000.00,'approved','','2026-07-22 09:48:35.321030',68,NULL,3,'contracts/img20260715_16011059_1.pdf',1,NULL,'signed_contract/img20260715_16011059_1.pdf'),
(69,500000.00,'approved','','2026-07-22 09:51:56.751871',25,NULL,3,'contracts/loan-agreement-_immaculee_muka._5.docx',1,NULL,'signed_contract/CERTIFICATE_FOR_REPLACEMENT_OF_NATIONAL_IDENTITY_CARD_-_B250821163913XAUR_2_1.pdf'),
(70,1000000.00,'approved','','2026-07-22 10:02:12.494070',69,NULL,3,'contracts/loan-agreement-_shema_serge._10.docx',1,NULL,'signed_contract/doc08506220260704084820.pdf'),
(71,100000.00,'approved','','2026-07-22 10:13:42.108925',70,NULL,3,'contracts/loan-agreement-_MUCYO_JEAN_CLAUDE.2.docx',1,NULL,'signed_contract/loan-agreement-_MUCYO_JEAN_CLAUDE.2_signed.pdf'),
(72,300000.00,'approved','','2026-07-22 10:28:42.035907',71,NULL,3,'contracts/loan-agreement-_mwitende_evode_3_1.docx',1,NULL,'signed_contract/KML17.pdf'),
(73,200000.00,'approved','','2026-07-22 10:34:28.175953',72,NULL,3,'contracts/loan-agreement-_MUKESHIMANA_FELIX.docx',1,NULL,'signed_contract/contr_bn.pdf'),
(74,500000.00,'approved','','2026-07-22 10:42:13.904607',73,NULL,3,'contracts/loan-agreement-_KEMBAGA_MARY.2.docx',1,NULL,'signed_contract/Signed_letter_-2.pdf'),
(75,450000.00,'approved','','2026-07-22 10:53:03.830024',74,NULL,3,'contracts/loan-agreement-_mugenga_yves._6.docx',1,NULL,'signed_contract/loan-agreement-_mugenga_yves._6_6.pdf'),
(76,2000000.00,'approved','','2026-07-27 14:44:19.878885',75,NULL,3,'contracts/loan-agreement-_niyigena_ernest.docx_22.docx',1,NULL,'signed_contract/loan-agreement-_niyigena_ernest.docx_22_1.pdf'),
(77,70000.00,'approved','','2026-07-27 14:54:59.771991',76,NULL,3,'contracts/Tegurugoti_piorette.pdf',1,NULL,'signed_contract/Tegurugoti_piorette.pdf'),
(78,100000.00,'approved','','2026-07-29 15:10:33.256439',38,NULL,3,'contracts/loan-agreement-__munana_rwibasira._5.docx',1,NULL,'signed_contract/July_026.pdf'),
(79,200000.00,'approved','','2026-07-29 15:51:50.151970',51,NULL,3,'contracts/loan-agreement-_AIME_JULE_MUTAN._5.docx',1,NULL,'signed_contract/loan-agreement-_AIME_JULE_MUTAN._51.pdf'),
(80,300000.00,'approved','','2026-07-30 16:22:10.132947',77,NULL,3,'contracts/loan-agreement-_HARERIMANA._daniel_2.docx',1,NULL,'signed_contract/loan-agreement-_HARERIMANA._daniel_2Signed.pdf'),
(81,200000.00,'approved','','2026-07-30 16:29:49.442180',78,NULL,3,'contracts/loan-agreement-_sadiki_jean.3.docx',1,NULL,'signed_contract/loan-agreement-_sadiki_jean.3.pdf'),
(82,500000.00,'approved','','2026-07-30 16:40:19.461278',79,NULL,3,'contracts/loan-agreement-__yvette._2.docx',1,NULL,'signed_contract/loan-agreement-__yvette._2.1.pdf'),
(83,900000.00,'approved','','2026-07-30 17:20:28.566005',80,NULL,3,'contracts/loan-agreement_akwany_omondi._10.docx',1,NULL,'signed_contract/loan-agreement_akwany_omondi._10.pdf'),
(84,350000.00,'approved','','2026-07-30 17:30:01.365241',81,NULL,3,'contracts/loan-agreement-_mucyo_benon.Signed_27_July_2026.docx',1,NULL,'signed_contract/ID_Benon_M.Mucyo.pdf'),
(85,200000.00,'approved','','2026-07-30 17:39:39.271285',82,NULL,3,'contracts/loan-agreement-__manzi_rwaje._3_1.docx',1,NULL,'signed_contract/Signed_Contact_Manzi_Rwaje_Loan_Agreement_.pdf'),
(86,100000.00,'approved','','2026-08-01 16:38:45.516373',84,NULL,3,'contracts/loan-agreement-_mulindi_regis._3.docx',1,NULL,'signed_contract/Signed_loan-agreement-_mulindi_regis._3.pdf'),
(87,80000.00,'approved','','2026-08-01 16:51:04.539752',85,NULL,3,'contracts/loan-agreement-__rebecca_tusiime_2.docx',1,NULL,'signed_contract/loan_agreement_signed.pdf'),
(88,150000.00,'approved','','2026-08-01 16:59:40.212657',86,NULL,3,'contracts/loan-agreement_israel_nkundimana.docx',1,NULL,'signed_contract/Scanned_20260729_124113.pdf'),
(89,500000.00,'approved','','2026-08-01 17:30:37.162463',46,NULL,3,'contracts/LOAN-agreement-_atete_benita_6.docx',1,NULL,'signed_contract/May-_July.pdf'),
(90,1000000.00,'approved','','2026-08-01 17:37:06.829094',87,NULL,3,'contracts/loan-agreement-_NTORANYI_DIEdonne_4.docx',1,NULL,'signed_contract/loan-agreement-_NTORANYI_DIEdonne_4.pdf'),
(91,150000.00,'approved','','2026-08-01 17:43:07.362410',88,NULL,3,'contracts/loan-agreement-__HIRWA_PACIFIQUE.3.docx',1,NULL,'signed_contract/loan-agreement-__HIRWA_PACIFIQUE.Signed.pdf'),
(92,1000000.00,'approved','','2026-08-01 17:48:11.446177',89,NULL,3,'contracts/loan-agreement-__rutsindintwarane.docx',1,NULL,'signed_contract/KML.pdf'),
(93,200000.00,'approved','','2026-08-04 16:43:38.721895',43,NULL,3,'contracts/loan-agreement-_karangwa_arsene._9.docx',1,NULL,'signed_contract/doc03235320260804100759.pdf'),
(94,800000.00,'approved','','2026-08-04 16:57:39.779364',59,NULL,3,'contracts/loan-agreement_NTEZIRYIMANA_JEAN_PAUL_3.docx',1,NULL,'signed_contract/CamScanner_08-03-2026_13.17.pdf'),
(95,600000.00,'approved','','2026-08-04 17:36:23.385670',90,NULL,3,'contracts/KIBATENGA_Faith.pdf',1,NULL,'signed_contract/KIBATENGA_Faith.pdf'),
(96,100000.00,'approved','','2026-08-04 17:43:13.744039',91,NULL,3,'contracts/loan-agreement-_kabalisa_patrick.3.docx',1,NULL,'signed_contract/PATCOPE.pdf'),
(97,200000.00,'approved','','2026-08-05 14:20:51.339517',92,NULL,3,'contracts/NO_ID_PROVIDED.docx_ERIC_DOC_.pdf',1,NULL,'signed_contract/NO_ID_PROVIDED.docx_ERIC_DOC_.pdf'),
(98,650000.00,'approved','','2026-08-05 14:43:38.332918',93,NULL,3,'contracts/loan-agreement-__mukamana_sylvie._3.docx',1,NULL,'signed_contract/loan-agreement-__mukamana_sylvie.__x.pdf'),
(99,50000.00,'approved','','2026-08-05 15:03:37.632846',94,NULL,3,'contracts/loan-agreement-_mukarage_dotty_3.docx',1,NULL,'signed_contract/MUKARAGE_DOTTY20260803_16500822.pdf'),
(100,400000.00,'approved','','2026-08-05 15:23:46.468925',95,NULL,3,'contracts/loan-agreement-__AKIBA._6.docx',1,NULL,'signed_contract/doc13550720260803142806.pdf'),
(101,90000.00,'approved','','2026-08-10 14:05:58.697654',96,NULL,3,'contracts/loan-agreement-__MUCYO_THIERRY.4.docx',1,NULL,'signed_contract/Thierry_Mucyos_agreement_contract.pdf'),
(102,100000.00,'approved','','2026-08-10 14:28:21.037225',97,NULL,3,'contracts/loan-agreement-_ntirenganaya.docx',1,NULL,'signed_contract/loan-agreement-_ntirenganaya_signed.pdf'),
(103,250000.00,'approved','','2026-08-10 14:34:33.886520',28,NULL,3,'contracts/loan-agreement-__kazoora_steven.3_1.docx',1,NULL,'signed_contract/KAZO_D.pdf'),
(104,1500000.00,'approved','','2026-08-10 14:48:18.654508',98,NULL,3,'contracts/loan-agreement-_ntagara_theophile.4.docx',1,NULL,'signed_contract/1626_001.pdf'),
(105,80000.00,'approved','','2026-08-11 16:01:17.283576',99,NULL,3,'contracts/microloan_form__1.pdf',1,NULL,'signed_contract/microloan_form__1.pdf'),
(106,200000.00,'approved','','2026-08-11 16:09:24.675791',100,NULL,3,'contracts/loan-agreement-__chris_cyubahiro.docx',1,NULL,'signed_contract/Signed_Agreement.pdf'),
(107,350000.00,'approved','','2026-08-11 16:18:07.885593',101,NULL,3,'contracts/loan-agreement-_UWASE_CHANTAL.3.docx',1,NULL,'signed_contract/UWASE12.pdf'),
(108,250000.00,'approved','','2026-08-11 16:25:12.541112',102,NULL,3,'contracts/loan-agreement-_iradukunda_gloria_1.docx',1,NULL,'signed_contract/ilovepdf_merged.pdf'),
(109,60000.00,'approved','','2026-08-11 16:36:11.606231',103,NULL,3,'contracts/ANDRE_AHIMANA_LOAN_APPLICATION.pdf',1,NULL,'signed_contract/ANDRE_AHIMANA_LOAN_APPLICATION.pdf'),
(110,200000.00,'approved','','2026-08-11 17:08:45.223033',25,NULL,3,'contracts/loan-agreement-_immaculee_muka._6.pdf',1,NULL,'signed_contract/loan-agreement-_immaculee_muka._6.pdf'),
(111,300000.00,'approved','','2026-08-11 17:30:58.920409',104,NULL,3,'contracts/loan-agreement-_twagirimana_olivier_3.docx',1,NULL,'signed_contract/CONT.pdf'),
(112,1000000.00,'approved','','2026-08-11 17:43:57.826527',105,NULL,3,'contracts/loan-agreement-__uwamahoro_mela._5.docx',1,NULL,'signed_contract/LOAN_CONTRACT_10_AOUT_26.pdf'),
(113,200000.00,'approved','','2026-08-11 18:39:59.242278',106,NULL,3,'contracts/loan-agreement-_felicien_bazagiba.docx',1,NULL,'signed_contract/Signed_loan_agreement_-_Felicien_Bazagirabate_10.08.2026.pdf'),
(114,150000.00,'approved','','2026-08-11 18:50:28.691795',107,NULL,3,'contracts/loan-agreement-__dusingizimana_jean_cluade.docx',1,NULL,'signed_contract/Agreement_1.pdf'),
(115,200000.00,'approved','','2026-08-11 19:01:19.868295',108,NULL,3,'contracts/AP.pdf',1,NULL,'signed_contract/AP.pdf'),
(116,200000.00,'approved','','2026-08-11 19:10:48.172324',109,NULL,3,'contracts/loan-agreement-_GASANA_2.docx',1,NULL,'signed_contract/img20260811_18153910.pdf'),
(117,650000.00,'rejected','','2026-08-14 09:33:06.265530',74,7,3,'',0,NULL,''),
(118,300000.00,'approved','','2026-08-14 11:27:39.099136',110,NULL,3,'contracts/loan-agreement-_uwimana_marie_claire._4.docx',1,NULL,'signed_contract/CamScanner_04-09-2026_11.46.pdf'),
(119,200000.00,'approved','','2026-08-14 13:56:12.942678',111,NULL,3,'contracts/loan-agreement-__iyakaremye_jean_d_amour.docx',1,NULL,'signed_contract/IDDD.pdf'),
(120,250000.00,'approved','','2026-08-14 14:21:33.523349',112,NULL,3,'contracts/loan-agreement-__SABIITI_CALEB.2_1.docx',1,NULL,'signed_contract/ID_5.pdf'),
(121,2000000.00,'approved','','2026-08-14 14:33:52.731055',70,NULL,3,'contracts/loan-agreement-_MUCYO_JEAN_CLAUDE._3.docx',1,NULL,'signed_contract/loan-agreement-_MUCYO_JEAN_CLAUDE._3_signed.pdf'),
(122,1200000.00,'approved','','2026-08-14 14:47:39.003950',64,NULL,3,'contracts/loan-agreement-__niyosenga_gisele.3_1.docx',1,NULL,'signed_contract/NEW.pdf'),
(123,200000.00,'approved','','2026-08-14 14:51:17.900181',14,NULL,3,'contracts/loan-agreement__NSANZABAGANWA_JOSIA_6.docx',1,NULL,'signed_contract/CamScanner_08-13-2026_12.19.pdf'),
(124,550000.00,'approved','','2026-08-14 14:59:49.373680',74,NULL,3,'contracts/loan-agreement-_mugenga_yves._7_2.docx',1,NULL,'signed_contract/YV.pdf'),
(125,1500000.00,'approved','','2026-08-16 10:01:04.267951',31,NULL,3,'contracts/ID_1_2_1.pdf',1,NULL,'signed_contract/loan-agreement-__hagenimana_anicet_2..._1.pdF......pdf'),
(126,2000000.00,'approved','','2026-08-16 10:09:18.167734',113,NULL,3,'contracts/loan-agreement-_ingabire_jacqline.docx',1,NULL,'signed_contract/Document_kml.pdf'),
(127,200000.00,'approved','','2026-08-16 10:16:43.556092',114,NULL,3,'contracts/loan-agreement-__mpano_yv_5.docx',1,NULL,'signed_contract/Loan.pdf'),
(128,200000.00,'approved','','2026-08-16 10:28:43.476789',115,NULL,3,'contracts/loan-agreement-_nakiwunge_betty_3.docx',1,NULL,'signed_contract/KIGALI_120260813_14402278.pdf'),
(129,500000.00,'approved','','2026-08-16 10:34:34.085366',116,NULL,3,'contracts/loan-agreement-_seth_hakuzimana.3.docx',1,NULL,'signed_contract/Seth.Hakuzimana_Loan_application_signed_document.pdf'),
(130,200000.00,'approved','','2026-08-16 10:45:16.478056',117,NULL,3,'contracts/loan-agreement-_UWIMANIMPAYE_SERGE.docx',1,NULL,'signed_contract/loan-agreement-_UWIMANIMPAYE_SERGE_1.pdf'),
(131,200000.00,'approved','','2026-08-16 10:48:56.776547',67,NULL,3,'contracts/IDDD.pdf',1,NULL,'signed_contract/IDDD_8v42Nbv.pdf'),
(132,70000.00,'approved','','2026-08-16 11:05:06.350199',92,NULL,3,'contracts/ERIC_ID.pdf',1,NULL,'signed_contract/ERIC_ID.pdf'),
(133,1000000.00,'approved','','2026-08-17 17:26:41.354568',70,NULL,3,'contracts/loan-agreement-_MUCYO_JEAN_CLAUDE._3_top_up.docx',1,NULL,'signed_contract/loan-agreement-_MUCYO_JEAN_CLAUDE._3_top_up_signed.pdf'),
(134,300000.00,'approved','','2026-08-18 19:57:47.358824',118,NULL,3,'contracts/loan-agreement-_MUHIRE_ROGER.docx',1,NULL,'signed_contract/Bank_Statements.pdf'),
(135,200000.00,'approved','','2026-08-19 11:23:01.559577',6,NULL,3,'contracts/loan-agreement-__Larissa_August_2026.docx',1,NULL,'signed_contract/PaymentStatusReport_20260818_2.pdf'),
(136,100000.00,'approved','','2026-08-19 11:25:07.860913',38,NULL,3,'contracts/loan-agreement-__munana_rwibasira._6.docx',1,NULL,'signed_contract/Aug_026_Contract.pdf'),
(137,250000.00,'approved','','2026-08-19 11:33:17.167679',119,NULL,3,'contracts/loan-agreement-__ndererimana._5.docx',1,NULL,'signed_contract/loan-agreement-__ndererimana._5...pdf'),
(138,600000.00,'approved','','2026-08-19 17:51:45.188438',120,NULL,3,'contracts/loan-agreement-_sophia.docx',1,NULL,'signed_contract/Loan_Agreement.pdf'),
(139,150000.00,'approved','','2026-08-19 18:02:08.918560',121,NULL,3,'contracts/loan-agreement-_mbungira_jean_3.docx',1,NULL,'signed_contract/loan-agreement-_mbungira_jean_3_1.pdf'),
(140,800000.00,'approved','','2026-08-19 18:40:03.470114',122,NULL,3,'contracts/loan-agreement-_yves_bizimana.docx',1,NULL,'signed_contract/loan-agreement-_yves_bizimana1.pdf'),
(141,80000.00,'approved','','2026-08-19 18:50:03.718883',123,NULL,3,'contracts/loan-agreement-_pila_ntizimira.docx',1,NULL,'signed_contract/PILA.pdf'),
(142,850000.00,'approved','','2026-08-19 18:59:06.568046',124,NULL,3,'contracts/loan-agreement-__floribert_niyonkuru.2.docx',1,NULL,'signed_contract/KML_FLORI.pdf'),
(143,900000.00,'approved','','2026-08-22 16:47:54.988144',125,NULL,3,'contracts/Loan_Agreement_1.pdf',1,NULL,'signed_contract/Loan_Agreement_1.pdf'),
(144,50000.00,'approved','','2026-08-22 18:18:36.437451',50,NULL,3,'contracts/loan-agreement-__CYUBAHIRO_CONFIANCE.3.docx',1,NULL,'signed_contract/loan-agreement-__CYUBAHIRO_CONFIANCE.3.pdf'),
(145,500000.00,'approved','','2026-08-22 18:53:39.304930',126,NULL,3,'contracts/loan-agreement-_theophile_nsanzimana_3.docx',1,NULL,'signed_contract/signed_contra.pdf'),
(146,100000.00,'approved','','2026-08-22 19:02:05.522107',127,NULL,3,'contracts/loan-agreement-__HIDJAZI._JUL_1.docx',1,NULL,'signed_contract/doc06648320250711114950.pdf'),
(147,300000.00,'approved','','2026-08-22 19:04:19.282752',110,NULL,3,'contracts/loan-agreement-_uwimana_marie_claire._5.docx',1,NULL,'signed_contract/CamScanner_08-21-2026_13.37.pdf'),
(148,600000.00,'approved','','2026-08-24 11:28:51.492868',128,NULL,3,'contracts/loan-agreement-__placide_nibyayo.2.docx',1,NULL,'signed_contract/LOAN_AGREEMENT_2.pdf'),
(149,350000.00,'approved','','2026-08-24 11:51:33.972883',129,NULL,3,'contracts/loan-agreement-_niyongira_damascene.3_1.docx',1,NULL,'signed_contract/signed_letter.pdf'),
(150,500000.00,'approved','','2026-08-24 12:15:17.027758',130,NULL,3,'contracts/loan-agreement-__naume_murebwayire_4_1.docx',1,NULL,'signed_contract/LOAN_CONTRACT_NAUME26.pdf'),
(151,200000.00,'approved','','2026-08-24 12:30:47.822638',131,NULL,3,'contracts/ID_COPY.pdf',1,NULL,'signed_contract/ID_COPY.pdf'),
(152,80000.00,'approved','','2026-08-24 12:43:02.248843',132,NULL,3,'contracts/loan-agreement-__MOISE._new.docx',1,NULL,'signed_contract/Moise.pdf'),
(153,100000.00,'approved','','2026-08-24 12:57:30.277579',133,NULL,3,'contracts/loan-agreement-__gusenga_jean.2.docx',1,NULL,'signed_contract/gusenga-2.pdf'),
(154,100000.00,'approved','','2026-08-24 14:04:39.798468',134,NULL,3,'contracts/loan-agreement-__NTAWIYIRUTA._4_1.docx',1,NULL,'signed_contract/PASCASIE_JOB_LETTER.pdf'),
(155,300000.00,'approved','','2026-08-24 14:39:10.160716',131,NULL,3,'contracts/loan-agreement-__VICTOR_mutarindwa_4.docx',1,NULL,'signed_contract/loan-agreement-__VICTOR_mutarindwa_4_1.pdf'),
(156,100000.00,'approved','','2026-08-24 15:07:43.369585',135,NULL,3,'contracts/loan-agreement-__MUTAREMARA_SYLVINE.docx',1,NULL,'signed_contract/LOAN_AGREEMENT_-_SYLVINE_MUTAREMARA.pdf'),
(157,750000.00,'approved','','2026-08-24 19:34:45.670294',136,NULL,3,'contracts/loan-agreement-__nzabahimana._elie_3.docx',1,NULL,'signed_contract/AGREEMENT_ELIE.pdf'),
(158,100000.00,'approved','','2026-08-26 07:23:53.461420',43,NULL,3,'contracts/loan-agreement-_karangwa_arsene._10.docx',1,NULL,'signed_contract/doc04151820260825114200.pdf'),
(159,70000.00,'approved','','2026-08-26 07:25:39.711681',39,NULL,3,'contracts/loan-agreement-_SANO_ELLISE_3.docx',1,NULL,'signed_contract/CamScanner_25-08-2026_11.58.pdf'),
(160,4000000.00,'approved','','2026-08-26 07:27:49.603014',75,NULL,3,'contracts/loan-agreement-_niyigena_ernest.docx_3.docx',1,NULL,'signed_contract/loan-agreement-_niyigena_ernest.EN.pdf'),
(161,100000.00,'approved','','2026-08-26 07:35:24.597587',137,NULL,3,'contracts/loan-agreement-__samuel_rukundo_4.docx',1,NULL,'signed_contract/loan-agreement-__samuel_rukundo_5.pdf'),
(162,200000.00,'rejected','','2026-08-27 06:26:39.857961',37,7,3,'',0,NULL,''),
(163,400000.00,'approved','','2026-09-01 09:54:04.130264',62,NULL,3,'contracts/loan-agreement-__MUHOZA_DIANA_2_1.docx',1,NULL,'signed_contract/Diana_muhoza_loan_agreement_PDF.pdf'),
(164,530000.00,'approved','','2026-09-01 10:12:58.914984',95,NULL,3,'contracts/loan-agreement-__AKIBA_1.docx',1,NULL,'signed_contract/doc13633120260827165319.pdf'),
(165,600000.00,'approved','','2026-09-01 16:41:18.728488',138,NULL,3,'contracts/loan-agreement-_LEONARD_BAGAMBAKI_1.docx',1,NULL,'signed_contract/Xerox_Scan_28082026134250.pdf'),
(166,200000.00,'approved','','2026-09-01 17:07:32.465122',139,NULL,3,'contracts/loan-agreement-__shema_emile._2.docx',1,NULL,'signed_contract/loan-agreement-__shema_emile._2_signed.pdf'),
(167,200000.00,'approved','','2026-09-01 17:17:43.076847',140,NULL,3,'contracts/loan-agreement-_UMUTONI_CARINE.4_1.docx',1,NULL,'signed_contract/loan-agreement-_UMUTONI_CARINE.4.pdf'),
(168,250000.00,'approved','','2026-09-01 17:33:18.330198',37,NULL,3,'contracts/loan-agreement-_Marie_grace_5.docx',1,NULL,'signed_contract/Signed_KML_Contract.pdf'),
(169,1000000.00,'approved','','2026-09-01 17:45:29.068237',80,NULL,3,'contracts/loan-agreement_akwany_omondi._11.docx',1,NULL,'signed_contract/loan-agreement_akwany_omondi._11.pdf'),
(170,1000000.00,'approved','','2026-09-01 17:57:35.134036',73,NULL,3,'contracts/loan-agreement-_KEMBAGA_MARY_3.docx',1,NULL,'signed_contract/LOAN_AGREEMENT_3.pdf'),
(171,600000.00,'approved','','2026-09-01 18:00:29.101422',15,NULL,3,'contracts/loan-agreement__dushimimana_jonathan_2_1.docx',1,NULL,'signed_contract/Signed_Loan_Agreement_2.pdf'),
(172,400000.00,'approved','','2026-09-01 18:02:44.794487',77,NULL,3,'contracts/loan-agreement-__DANIEL_HARERIMANA__1.docx',1,NULL,'signed_contract/loan-agreement-__DANIEL_HARERIMANA__aug_2026_1.pdf'),
(173,500000.00,'approved','','2026-09-01 18:19:07.207465',46,NULL,3,'contracts/loan-agreement-_Atete_Benita_6_3.docx',1,NULL,'signed_contract/loan-agreement-_atete_benita_6_2.pdf'),
(174,2000000.00,'approved','','2026-09-01 18:50:44.307854',141,NULL,3,'contracts/loan-agreement-__GISODA_2.docx',1,NULL,'signed_contract/loan-agreement-__GISODA_2.pdf'),
(175,100000.00,'approved','','2026-09-01 19:08:05.650166',142,NULL,3,'contracts/loan-agreement_bavange_innocent._3.docx',1,NULL,'signed_contract/BA2.pdf'),
(176,200000.00,'approved','','2026-09-01 19:09:47.476273',88,NULL,3,'contracts/loan-agreement-__HIRWA_PACIFIQUE.4.docx',1,NULL,'signed_contract/loan-agreement-__HIRWA_PACIFIQUE_Signed.pdf'),
(177,1000000.00,'approved','','2026-09-02 08:54:16.246849',33,NULL,3,'contracts/loan-agreement-_chirchir_kelvin._11.docx',1,NULL,'signed_contract/loan-agreement-_chirchir_kelvin._11.pdf'),
(178,500000.00,'approved','','2026-09-04 06:17:47.559837',42,NULL,3,'contracts/loan-agreement-__toussaint._3.docx',1,NULL,'signed_contract/ID_Toussaint__1.pdf'),
(179,50000.00,'approved','Testing','2026-09-05 05:42:45.628285',20,NULL,3,'contracts/NO_ID_PROVIDED_47CkbZ9.docx_ERIC_DOC_.pdf',1,NULL,'signed_contract/NO_ID_PROVIDED_wcCsfHI.docx_ERIC_DOC_.pdf'),
(180,60000.00,'approved','Testing','2026-09-05 05:56:22.939982',20,NULL,3,'contracts/SalesReciept_SDC012009062_162.pdf',1,NULL,'signed_contract/SalesReciept_SDC012009062_162.pdf'),
(181,50000.00,'approved','Test','2026-09-05 10:11:46.245819',20,NULL,3,'contracts/SalesReciept_SDC012009062_162_Ft0bqvs.pdf',1,NULL,'signed_contract/SalesReciept_SDC012009062_162_Iyxp7aG.pdf'),
(182,400000.00,'approved','','2026-09-09 16:40:48.280467',58,NULL,3,'contracts/loan-agreement-_umuringa_rolande._5.docx',1,NULL,'signed_contract/NYARUGENGE_5.pdf'),
(183,750000.00,'approved','','2026-09-09 16:47:41.933830',136,NULL,3,'contracts/loan-agreement-__nzabahimana._elie_4.docx',1,NULL,'signed_contract/img20260904_10505845.pdf'),
(184,100000.00,'approved','','2026-09-09 16:54:58.517529',60,NULL,3,'contracts/loan-agreement-__eric_rukundo_5_1.docx',1,NULL,'signed_contract/signed_contract_eric_rukundo_5_1.pdf'),
(185,200000.00,'approved','','2026-09-09 16:57:26.326666',52,NULL,3,'contracts/loan-agreement-_vincent.3.docx',1,NULL,'signed_contract/vincent001.pdf'),
(186,150000.00,'approved','','2026-09-09 17:04:33.701392',96,NULL,3,'contracts/loan-agreement-__MUCYO_THIERRY.5.docx',1,NULL,'signed_contract/Thierry_Mucyos_signed_loan_agreement_contract.pdf'),
(187,300000.00,'approved','','2026-09-09 18:06:20.250414',22,NULL,3,'contracts/loan-agreement-_twebaze_rogers_4.docx',1,NULL,'signed_contract/CamScanner_0909155933.pdf'),
(188,300000.00,'approved','','2026-09-10 16:15:06.695606',143,NULL,3,'contracts/loan-agreement_kabanda_anathole.docx',1,NULL,'signed_contract/KML_.pdf'),
(189,150000.00,'approved','','2026-09-10 16:33:49.551781',144,NULL,3,'contracts/loan-agreement-__nick_muvunyi.2.docx',1,NULL,'signed_contract/loan-agreement-__nick_muvunyi.2_1.pdf'),
(190,170000.00,'approved','','2026-09-10 16:50:00.533299',145,NULL,3,'contracts/loan-agreement-_ndahayo_iidephonse.docx',1,NULL,'signed_contract/CamScanner_28-04-2026_13.58.pdf'),
(191,95000.00,'approved','','2026-09-10 16:57:06.484334',146,NULL,3,'contracts/loan-agreement-_jeanne_gentile.docx',1,NULL,'signed_contract/CamScanner_01-04-2026_19.58.pdf'),
(192,370000.00,'approved','','2026-09-10 17:05:39.919864',147,NULL,3,'contracts/loan-agreement-__uwingabire_jeninah4.docx',1,NULL,'signed_contract/loan-agreement-_uwingabire_jeninah4.pdf'),
(193,180000.00,'approved','','2026-09-10 17:17:02.953032',148,NULL,3,'contracts/loan-agreement-_hishamunda_jmv100.docx',1,NULL,'signed_contract/loan-agreement-_hishamunda_jmv100.pdf'),
(194,175000.00,'approved','','2026-09-10 17:33:35.942412',149,NULL,3,'contracts/loan-agreement-__RUSIMBI_SERGE._3.docx',1,NULL,'signed_contract/SRUSIMBI_ID.pdf'),
(195,250000.00,'approved','','2026-09-10 17:48:12.653482',150,NULL,3,'contracts/loan-agreement-__murenzi_emmanuel_3.docx',1,NULL,'signed_contract/loan-agreement-__murenzi_emmanuel_32.pdf'),
(196,200000.00,'approved','','2026-09-10 18:02:39.939145',151,NULL,3,'contracts/loan-agreement-_muhawenimana_media._3.docx',1,NULL,'signed_contract/CamScanner_02-26-2026_11.40.pdf'),
(197,500000.00,'approved','','2026-09-10 18:22:01.352146',152,NULL,3,'contracts/loan-agreement-__MUNYANEZA_CHRISTIAN.docx',1,NULL,'signed_contract/Signed_Contract_Kml.pdf'),
(198,150000.00,'approved','','2026-09-10 18:33:01.819382',153,NULL,3,'contracts/loan-agreement-_JABEL_HALINDIMANA.docx',1,NULL,'signed_contract/KML_Loan_Application-26-03.pdf'),
(199,60000.00,'approved','','2026-09-10 18:43:13.174629',154,NULL,3,'contracts/loan-agreement-__HAMIM_MANIRAMPA.docx',1,NULL,'signed_contract/KML_2.pdf'),
(200,80000.00,'approved','','2026-09-10 18:52:41.462124',155,NULL,3,'contracts/loan-agreement-__mukagatare_kml.docx',1,NULL,'signed_contract/AMASEZERANO.pdf'),
(201,150000.00,'approved','','2026-09-10 18:57:03.422064',36,NULL,3,'contracts/loan-agreement-_serge_ntwali._5.docx',1,NULL,'signed_contract/loan-agreement-_serge_ntwali._5_1.pdf'),
(202,950000.00,'approved','','2026-09-10 19:28:12.684649',156,NULL,3,'contracts/loan-agreement-__nkunsi_placide__top.docx',1,NULL,'signed_contract/loan-agreement-__nkunsi_placide__top_Signed.pdf'),
(203,300000.00,'approved','','2026-09-10 19:37:24.578440',157,NULL,3,'contracts/loan-agreement-_DUSABE.docx',1,NULL,'signed_contract/KML_2_1.pdf'),
(204,100000.00,'approved','','2026-09-10 19:53:06.938546',158,NULL,3,'contracts/loan-agreement-_habumuremyi_venuste.docx',1,NULL,'signed_contract/Loan_agreement_Habumuremyi.pdf'),
(205,200000.00,'approved','','2026-09-16 19:16:28.829120',106,NULL,3,'contracts/loan-agreement-_felicien_bazagibate_2.docx',1,NULL,'signed_contract/Signed_-_Loan_agreement_Felicien_B_11.09.2026_1.pdf'),
(206,1000000.00,'approved','','2026-09-16 19:43:33.608391',159,NULL,3,'contracts/loan-agreement-_cyubahiro_jean_claude.docx',1,NULL,'signed_contract/CamScanner_11-09-2026_12.12.pdf'),
(207,900000.00,'approved','','2026-09-16 20:06:12.722083',160,NULL,3,'contracts/loan-agreement-__theonest_mbarusimana._3.docx',1,NULL,'signed_contract/LOAN_AGREEMENT_OF_THEONESTE_-SEPTEMMBER_2026.pdf'),
(208,400000.00,'approved','','2026-09-16 20:10:26.159339',71,NULL,3,'contracts/loan-agreement-_mwitende_evode_4.docx',1,NULL,'signed_contract/kml_09.pdf'),
(209,300000.00,'approved','','2026-09-16 20:12:28.333850',72,NULL,3,'contracts/loan-agreement-_MUKESHIMANA_FELIX_2.docx',1,NULL,'signed_contract/loan-agreement-_MUKESHIMANA_FELIX_2.pdf'),
(210,1800000.00,'approved','','2026-09-16 20:17:29.202632',31,NULL,3,'contracts/loan-agreement-__hagenimana_anicet_3_1.docx',1,NULL,'signed_contract/loan-agreement-__hagenimana_anicet_3_1.pdf'),
(211,150000.00,'approved','','2026-09-17 16:17:34.930866',161,NULL,3,'contracts/loan-agreement-__ntibazirikana_jean.docx',1,NULL,'signed_contract/loan-agreement-__ntibazirikana_jean.pdf'),
(212,3600000.00,'approved','','2026-09-17 16:23:22.668815',162,NULL,3,'contracts/HONO.pdf',1,NULL,'signed_contract/HONO.pdf'),
(213,200000.00,'approved','','2026-09-17 17:02:55.720941',163,NULL,3,'contracts/loan-agreement_JULIET_NASSALI._3.docx',1,NULL,'signed_contract/LOAN_AGREEMENT_4.pdf'),
(214,250000.00,'approved','','2026-09-17 17:12:21.441247',164,NULL,3,'contracts/JAMES_BANK_STATEMENT_ID.pdf',1,NULL,'signed_contract/JAMES_BANK_STATEMENT_ID.pdf'),
(215,80000.00,'approved','','2026-09-17 17:26:17.425139',165,NULL,3,'contracts/BANK_STATEMENT-KABASHA_JEAN_PAUL.pdf',1,NULL,'signed_contract/BANK_STATEMENT-KABASHA_JEAN_PAUL.pdf'),
(216,200000.00,'approved','','2026-09-17 17:38:21.097300',166,NULL,3,'contracts/loan-agreement-_SEBAGANJI_1.docx',1,NULL,'signed_contract/CamScanner_04-04-2026_08.17.pdf'),
(217,2000000.00,'approved','','2026-09-17 17:47:31.128419',167,NULL,3,'contracts/loan-agreement-__tuyisenge_henri_1.docx',1,NULL,'signed_contract/Loan-Agreement_Tuyisenge_Henri_Jacques_12122025_1101.pdf'),
(218,2200000.00,'approved','','2026-09-17 17:58:58.458001',168,NULL,3,'contracts/Signed_Contract-_Gatera.pdf',1,NULL,'signed_contract/Signed_Contract-_Gatera.pdf'),
(219,200000.00,'approved','uyu mabye nifashishije iyo contract ya mbere kuko aid ansyibuze twamuhaye mu kwa 8 amafaranga sinamurecordinga rero nibwo mushyizemo, yishyuyeho na interest','2026-09-19 18:41:34.205967',68,NULL,3,'contracts/img20260715_16011059_3.pdf',1,NULL,'signed_contract/img20260715_16011059_3.pdf'),
(220,500000.00,'approved','','2026-09-19 18:52:38.535042',119,NULL,3,'contracts/loan-agreement-__ndererimana._6.docx',1,NULL,'signed_contract/loan-agreement-_ndererimana._6.pdf'),
(221,2000000.00,'approved','','2026-09-19 18:54:44.718067',70,NULL,3,'contracts/loan-agreement-_MUCYO_JEAN_CLAUDE._4.docx',1,NULL,'signed_contract/Loan-Agreement-MUCYO_JEAN_CLAUDE.4_signed.pdf'),
(222,100000.00,'approved','','2026-09-21 19:39:57.527129',50,NULL,3,'contracts/loan-agreement-__CYUBAHIRO_CONFIANCE.4.docx',1,NULL,'signed_contract/loan-agreement-__CYUBAHIRO_CONFIANCE.4.pdf'),
(223,600000.00,'approved','','2026-09-21 19:42:46.995279',53,NULL,3,'contracts/loan-agreement__gasasira_ronald.7.docx',1,NULL,'signed_contract/loan-agreement__gasasira_ronald.7.pdf'),
(224,200000.00,'approved','','2026-09-24 12:17:40.830300',170,NULL,3,'contracts/Id.pdf_niyo.pdf',1,NULL,'signed_contract/Id.pdf_niyo.pdf'),
(225,100000.00,'approved','','2026-09-24 12:33:00.243625',135,NULL,3,'contracts/loan-agreement-__MUTAREMARA_SYLVINE_2.docx',1,NULL,'signed_contract/SIGNED_CONTRACT-_MUTAREMARA_SYLVINE.pdf'),
(226,500000.00,'approved','','2026-09-24 20:08:33.403953',171,NULL,3,'contracts/loan-agreement-__gaasasira_jean_5.docx',1,NULL,'signed_contract/CamScanner_08-18-2026_15.00.pdf'),
(227,500000.00,'approved','','2026-09-25 15:53:10.443235',77,NULL,3,'contracts/loan-agreement-__DANIEL_HARERIMANA__3.docx',1,NULL,'signed_contract/loan-agreement-__DANIEL_HARERIMANA__3_Sept_26.pdf'),
(228,130000.00,'approved','','2026-09-28 15:31:04.488441',11,NULL,3,'contracts/SCAN0056_3.PDF',1,NULL,'signed_contract/SCAN0056_3.PDF'),
(229,2000000.00,'approved','','2026-09-28 15:35:44.910794',172,NULL,3,'contracts/loan-agreement-__ANACLET-.docx',1,NULL,'signed_contract/CamScanner_09-28-2026_15.50.pdf'),
(230,1000000.00,'approved','','2026-09-29 19:33:57.339861',80,NULL,3,'contracts/loan-agreement_akwany_omondi._12.docx',1,NULL,'signed_contract/loan-agreement_akwany_omondi._12_1.pdf'),
(231,250000.00,'approved','','2026-09-29 19:35:41.545109',43,NULL,3,'contracts/loan-agreement-_karangwa_arsene._11.docx',1,NULL,'signed_contract/doc05863420260929093751.pdf'),
(232,1000000.00,'approved','','2026-09-29 19:43:20.405194',173,NULL,3,'contracts/loan-agreement-_kaREMERA_EMILE..docx',1,NULL,'signed_contract/def11a64-6138-4ffc-ad72-6a903f427fd0.pdf'),
(233,1200000.00,'approved','','2026-09-29 19:47:47.095807',69,NULL,3,'contracts/loan-agreement-_shema_serge.__11.docx',1,NULL,'signed_contract/serge_shema_Micro_Loan_request.pdf'),
(234,200000.00,'approved','','2026-09-30 21:17:20.190839',170,NULL,3,'contracts/loan-agreement-_mugenga_yves._7_4.docx',1,NULL,'signed_contract/DOC-20260930-WA0014.pdf'),
(235,450000.00,'approved','','2026-09-30 21:19:27.115275',74,NULL,3,'contracts/loan-agreement-_mugenga_yves_Ravk2Pc._7_4.docx',1,NULL,'signed_contract/loan-agreement-_mugenga_yves._8.docx...pdf'),
(236,150000.00,'approved','','2026-09-30 21:25:23.718823',174,NULL,3,'contracts/loan-agreement-_niyomwungeri.docx',1,NULL,'signed_contract/loan-agreement-_niyomwungeri.pdf'),
(237,120000.00,'pending','','2026-10-05 09:49:18.581230',99,NULL,3,'',0,NULL,''),
(238,100000.00,'approved','','2026-10-06 03:49:58.923126',20,NULL,3,'contracts/Motor_Insurance_Certificate-09-20-2026-1821.pdf',1,NULL,'signed_contract/Motor_Insurance_Certificate-09-20-2026-1821.pdf'),
(239,200000.00,'approved','','2026-10-06 09:53:10.424670',88,NULL,3,'contracts/loan-agreement-__HIRWA_PACIFIQUE._5.docx',1,NULL,'signed_contract/loan-agreement-__HIRWA_PACIFIQUE_signed_1.pdf'),
(240,70000.00,'approved','','2026-10-06 09:55:02.801760',38,NULL,3,'contracts/loan-agreement-__munana_rwibasira._7.docx',1,NULL,'signed_contract/CamScanner_01-10-2026_11.25.pdf'),
(241,1250000.00,'approved','','2026-10-06 09:57:10.098798',33,NULL,3,'contracts/loan-agreement-_chirchir_kelvin._12_1.docx',1,NULL,'signed_contract/loan-agreement-_chirchir_kelvin._12.pdf'),
(242,500000.00,'approved','Lost loan','2026-10-19 15:47:42.714845',46,NULL,3,'contracts/Lost_Loan_Due_to_System_error.pdf',1,NULL,'signed_contract/Lost_Loan_Due_to_System_error.pdf');
/*!40000 ALTER TABLE `loans_loanapplication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loans_loanpayment`
--

DROP TABLE IF EXISTS `loans_loanpayment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `loans_loanpayment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount_paid` decimal(12,2) NOT NULL,
  `payment_date` date NOT NULL,
  `reference` varchar(100) NOT NULL,
  `loan_id` bigint(20) NOT NULL,
  `schedule_id` bigint(20) DEFAULT NULL,
  `payment_proof` varchar(100) DEFAULT NULL,
  `reviewed_by_id` bigint(20) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `cancellation_reason` longtext NOT NULL,
  `cancelled_at` datetime(6) DEFAULT NULL,
  `cancelled_by_id` bigint(20) DEFAULT NULL,
  `rejection_reason` longtext DEFAULT NULL,
  `name_of_paid` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `loans_loanpayment_loan_id_47ae01f8_fk_loans_loan_id` (`loan_id`),
  KEY `loans_loanpayment_schedule_id_fb961c10_fk_loans_rep` (`schedule_id`),
  KEY `loans_loanpayment_reviewed_by_id_15699095_fk_users_user_id` (`reviewed_by_id`),
  KEY `loans_loanpayment_cancelled_by_id_34193018_fk_users_user_id` (`cancelled_by_id`),
  CONSTRAINT `loans_loanpayment_cancelled_by_id_34193018_fk_users_user_id` FOREIGN KEY (`cancelled_by_id`) REFERENCES `users_user` (`id`),
  CONSTRAINT `loans_loanpayment_loan_id_47ae01f8_fk_loans_loan_id` FOREIGN KEY (`loan_id`) REFERENCES `loans_loan` (`id`),
  CONSTRAINT `loans_loanpayment_reviewed_by_id_15699095_fk_users_user_id` FOREIGN KEY (`reviewed_by_id`) REFERENCES `users_user` (`id`),
  CONSTRAINT `loans_loanpayment_schedule_id_fb961c10_fk_loans_rep` FOREIGN KEY (`schedule_id`) REFERENCES `loans_repaymentschedule` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=269 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loans_loanpayment`
--

LOCK TABLES `loans_loanpayment` WRITE;
/*!40000 ALTER TABLE `loans_loanpayment` DISABLE KEYS */;
INSERT INTO `loans_loanpayment` VALUES
(9,525000.00,'2026-06-27','',26,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(10,66000.00,'2026-07-01','',15,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(11,30000.00,'2026-07-02','',12,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(12,1100000.00,'2026-07-09','',34,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(13,50000.00,'2026-07-09','',14,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(14,50000.00,'2026-07-09','',19,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(15,5000.00,'2026-07-14','',11,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(16,10000.00,'2026-07-14','',16,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(17,3300000.00,'2026-07-14','',18,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(18,1100000.00,'2026-07-14','',32,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(19,20000.00,'2026-07-14','',52,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(20,495000.00,'2026-07-24','',82,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(21,20000.00,'2026-07-24','',48,NULL,'',7,'approved','',NULL,NULL,NULL,''),
(22,55000.00,'2026-07-29','',50,NULL,'',7,'approved','',NULL,NULL,NULL,'null'),
(23,110000.00,'2026-07-29','',75,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(24,25000.00,'2026-07-29','',74,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(25,330000.00,'2026-07-29','',65,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(26,60000.00,'2026-07-29','',53,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(27,250000.00,'2026-07-29','',43,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(28,15000.00,'2026-07-29','',47,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(29,20000.00,'2026-07-29','',48,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(30,110000.00,'2026-07-29','',44,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(31,36000.00,'2026-07-29','',42,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(32,220000.00,'2026-07-29','',69,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(33,15000.00,'2026-07-29','',24,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(34,30000.00,'2026-07-29','',20,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(35,1277333.00,'2026-07-30','',78,NULL,'payment_proofs/2026_07_28_Repayment.jpeg',7,'approved','',NULL,NULL,NULL,''),
(36,20000.00,'2026-07-30','',51,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(37,100000.00,'2026-07-30','',90,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(38,1277333.00,'2026-07-30','',78,NULL,'',2,'rejected','',NULL,NULL,NULL,NULL),
(39,97667.00,'2026-07-30','',78,NULL,'payment_proofs/Contract_Article_on_Pro-rata_basis_payment.jpg',2,'rejected','',NULL,NULL,NULL,NULL),
(41,525000.00,'2026-08-01','',76,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(42,12000.00,'2026-08-01','',55,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(44,20000.00,'2026-08-01','',51,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(45,15000.00,'2026-08-04','',87,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(46,1883000.00,'2026-08-04','',27,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(47,1100000.00,'2026-08-04','',56,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(48,550000.00,'2026-08-04','',71,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(49,110000.00,'2026-08-04','',61,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(50,14444.00,'2026-08-04','',28,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(51,50000.00,'2026-08-04','',62,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(52,70000.00,'2026-08-04','',54,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(53,30000.00,'2026-08-04','',74,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(54,20000.00,'2026-08-04','',57,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(55,150000.00,'2026-08-04','',33,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(56,600000.00,'2026-08-04','',54,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(57,660000.00,'2026-08-04','',66,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(58,20000.00,'2026-08-05','',17,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(59,30000.00,'2026-08-05','',23,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(60,110000.00,'2026-08-05','',39,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(61,66000.00,'2026-08-05','',63,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(62,220000.00,'2026-08-05','',111,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(63,99000.00,'2026-08-05','',37,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(64,238135.00,'2026-08-05','',29,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(65,55000.00,'2026-08-06','',49,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(66,30000.00,'2026-08-10','',116,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(67,121449.00,'2026-08-11','',38,NULL,'payment_proofs/Screenshot_20260811_083955_Phone.jpg',7,'rejected','',NULL,NULL,NULL,NULL),
(68,121449.00,'2026-08-11','',38,NULL,'payment_proofs/Screenshot_20260811_083955_Phone_mazPj35.jpg',7,'rejected','',NULL,NULL,NULL,NULL),
(69,121449.00,'2026-08-11','',38,NULL,'',7,'rejected','',NULL,NULL,NULL,NULL),
(70,121449.00,'2026-08-11','',38,NULL,'',2,'approved','',NULL,NULL,NULL,NULL),
(71,25000.00,'2026-08-11','',40,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(72,10000.00,'2026-08-11','',41,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(74,100000.00,'2026-08-14','',73,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(75,60000.00,'2026-08-14','',72,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(76,1883000.00,'2026-08-14','',117,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(77,180000.00,'2026-08-14','',145,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(78,114768.13,'2026-08-14','',118,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(79,25000.00,'2026-08-14','',147,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(80,220000.00,'2026-08-14','',115,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(81,200000.00,'2026-08-16','',68,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(82,35000.00,'2026-08-16','',10,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(83,150000.00,'2026-08-16','',152,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(84,330000.00,'2026-08-17','',59,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(85,100000.00,'2026-08-17','',21,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(86,30000.00,'2026-08-18','',79,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(87,110000.00,'2026-08-18','',85,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(88,60000.00,'2026-08-19','',168,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(89,15000.00,'2026-08-19','',169,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(90,80000.00,'2026-08-19','',170,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(91,85000.00,'2026-08-19','',172,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(92,110000.00,'2026-08-19','',31,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(93,290000.00,'2026-08-22','',178,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(94,20000.00,'2026-08-22','',80,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(95,220000.00,'2026-08-22','',154,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(96,50000.00,'2026-08-22','',58,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(97,400000.00,'2026-08-22','',142,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(98,165000.00,'2026-08-22','',145,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(99,33000.00,'2026-08-22','',95,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(100,35000.00,'2026-08-24','',186,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(101,50000.00,'2026-08-24','',187,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(102,20000.00,'2026-08-24','',188,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(103,8000.00,'2026-08-24','',189,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(104,1100000.00,'2026-08-24','',81,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(105,33000.00,'2026-08-24','',138,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(106,100000.00,'2026-08-24','',77,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(107,220000.00,'2026-08-24','',106,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(108,7000.00,'2026-08-24','',84,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(109,1500000.00,'2026-08-24','',117,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(110,200000.00,'2026-08-24','',188,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(111,10000.00,'2026-08-24','',191,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(112,10000.00,'2026-08-24','',192,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(113,2200000.00,'2026-08-26','',83,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(114,10000.00,'2026-08-26','',202,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(115,440000.00,'2026-08-27','',114,NULL,'',7,'approved','',NULL,NULL,NULL,''),
(116,350000.00,'2026-08-31','',210,NULL,'',7,'approved','',NULL,NULL,NULL,''),
(117,990000.00,'2026-08-31','',91,NULL,'payment_proofs/IMG_6927.jpeg',7,'approved','',NULL,NULL,NULL,'null'),
(118,990000.00,'2026-08-31','',91,NULL,'payment_proofs/IMG_6927_Lk6fFxh.jpeg',7,'rejected','',NULL,NULL,NULL,NULL),
(119,125000.00,'2026-08-31','',105,NULL,'payment_proofs/Screenshot_20260831_153528_Messages.jpg',7,'approved','',NULL,NULL,NULL,''),
(120,20000.00,'2026-08-31','',121,NULL,'payment_proofs/IMG_1306.png',7,'approved','',NULL,NULL,NULL,''),
(121,330000.00,'2026-09-01','',88,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(122,35000.00,'2026-09-01','',92,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(123,10000.00,'2026-09-01','',207,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(124,75000.00,'2026-09-01','',194,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(125,2115000.00,'2026-09-01','',148,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(126,165000.00,'2026-09-01','',99,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(127,165000.00,'2026-09-01','',102,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(128,20000.00,'2026-09-01','',86,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(129,8000.00,'2026-09-01','',208,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(130,115000.00,'2026-09-01','',67,NULL,'',2,'approved','',NULL,NULL,NULL,NULL),
(132,330000.00,'2026-09-01','',96,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(133,8000.00,'2026-09-01','',98,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(134,20000.00,'2026-09-01','',89,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(135,550000.00,'2026-09-01','',164,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(136,100000.00,'2026-09-01','',103,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(137,660000.00,'2026-09-02','',141,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(138,220000.00,'2026-09-02','',144,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(139,7000.00,'2026-09-03','',159,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(140,100000.00,'2026-09-03','',122,NULL,'',2,'approved','',NULL,NULL,NULL,NULL),
(141,65000.00,'2026-09-03','',112,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(142,5000.00,'2026-09-03','',113,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(143,35000.00,'2026-09-03','',128,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(144,750000.00,'2026-09-04','',231,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(145,22000.00,'2026-09-07','',127,NULL,'payment_proofs/KML_Interest.txt',7,'approved','',NULL,NULL,NULL,''),
(146,12000.00,'2026-09-07','',143,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(147,80000.00,'2026-09-07','',107,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(148,66000.00,'2026-09-07','',130,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(149,25000.00,'2026-09-07','',129,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(150,650000.00,'2026-09-07','',125,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(151,330000.00,'2026-09-09','',237,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(152,220000.00,'2026-09-09','',134,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(153,40000.00,'2026-09-10','',200,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(154,600000.00,'2026-09-10','',133,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(155,8000.00,'2026-09-10','',126,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(156,20000.00,'2026-09-10','',137,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(157,50000.00,'2026-09-10','',132,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(158,65000.00,'2026-09-11','',135,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(159,1084000.00,'2026-09-11','',161,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(160,80000.00,'2026-09-11','',170,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(161,175000.00,'2026-09-14','',110,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(162,520000.00,'2026-09-14','',149,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(163,30000.00,'2026-09-14','',131,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(164,200000.00,'2026-09-14','',261,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(165,60000.00,'2026-09-14','',196,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(166,1500000.00,'2026-09-14','',152,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(167,20000.00,'2026-09-14','',157,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(168,5000.00,'2026-09-15','',175,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(169,330000.00,'2026-09-15','',177,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(170,220000.00,'2026-09-15','',184,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(171,500000.00,'2026-09-15','',101,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(172,110000.00,'2026-09-15','',179,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(173,200000.00,'2026-09-15','',153,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(174,6000.00,'2026-09-16','',264,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(175,18000.00,'2026-09-16','',258,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(176,110000.00,'2026-09-16','',166,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(177,150000.00,'2026-09-16','',152,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(178,50000.00,'2026-09-17','',156,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(179,20000.00,'2026-09-17','',165,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(180,275000.00,'2026-09-17','',167,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(181,80000.00,'2026-09-19','',298,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(182,20000.00,'2026-09-19','',150,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(183,6000.00,'2026-09-19','',293,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(184,690000.00,'2026-09-19','',108,NULL,'',2,'approved','',NULL,NULL,NULL,NULL),
(185,70000.00,'2026-09-19','',198,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(186,20000.00,'2026-09-19','',305,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(187,70000.00,'2026-09-21','',198,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(188,150000.00,'2026-09-21','',180,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(189,14400.00,'2026-09-21','',171,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(190,365600.00,'2026-09-23','',163,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(191,143866.00,'2026-09-23','',174,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(192,37000.00,'2026-09-23','',200,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(193,10000.00,'2026-09-23','',269,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(194,7000.00,'2026-09-23','',204,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(195,35000.00,'2026-09-23','',199,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(196,300000.00,'2026-09-23','',262,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(197,110000.00,'2026-09-23','',193,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(198,70000.00,'2026-09-23','',201,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(199,621499.97,'2026-09-24','',151,NULL,'payment_proofs/unnamed.jpg',7,'approved','',NULL,NULL,NULL,NULL),
(200,50000.00,'2026-09-24','',320,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(201,50000.00,'2026-09-24','',206,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(202,150000.00,'2026-09-24','',218,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(203,28000.00,'2026-09-24','',136,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(204,950000.00,'2026-09-25','',195,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(205,950000.00,'2026-09-25','',195,NULL,'',7,'rejected','',NULL,NULL,NULL,NULL),
(206,220000.00,'2026-09-25','',203,NULL,'',2,'approved','',NULL,NULL,NULL,NULL),
(207,440000.00,'2026-09-25','',220,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(208,350000.00,'2026-09-25','',210,NULL,'',7,'rejected','',NULL,NULL,NULL,NULL),
(209,20000.00,'2026-09-25','',214,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(210,10000.00,'2026-09-25','',93,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(211,10000.00,'2026-09-25','',93,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(212,20000.00,'2026-09-28','',214,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(213,30000.00,'2026-09-28','',182,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(214,30000.00,'2026-09-28','',190,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(215,220000.00,'2026-09-28','',251,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(216,10000.00,'2026-09-28','',325,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(217,150000.00,'2026-09-28','',328,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(218,48000.00,'2026-09-28','',331,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(219,1400000.00,'2026-09-28','',205,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(220,53000.00,'2026-09-28','',212,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(221,545000.00,'2026-09-28','',267,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(223,40000.00,'2026-09-28','',296,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(224,95000.00,'2026-09-29','',225,NULL,'payment_proofs/Screenshot_20260929_160307_Messages.jpg',2,'approved','',NULL,NULL,NULL,NULL),
(225,8000.00,'2026-09-29','',229,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(226,220000.00,'2026-09-29','',215,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(227,228000.00,'2026-09-29','',158,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(228,180000.00,'2026-09-29','',64,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(229,1100000.00,'2026-09-29','',217,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(230,95000.00,'2026-09-29','',225,NULL,'',7,'rejected','',NULL,NULL,NULL,NULL),
(231,60000.00,'2026-09-29','',263,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(232,88000.00,'2026-09-29','',271,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(233,220000.00,'2026-09-29','',224,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(234,1100000.00,'2026-09-29','',232,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(235,220000.00,'2026-09-30','',319,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(236,50000.00,'2026-09-30','',259,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(237,15000.00,'2026-09-30','',104,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(238,65000.00,'2026-09-30','',233,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(239,185000.00,'2026-09-30','',228,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(240,100000.00,'2026-09-30','',211,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(241,50000.00,'2026-10-01','',251,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(242,73000.00,'2026-10-01','',36,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(243,35000.00,'2026-10-01','',235,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(244,60000.00,'2026-10-01','',219,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(245,80000.00,'2026-10-01','',60,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(246,132000.00,'2026-10-01','',281,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(247,5000.00,'2026-10-01','',234,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(248,1400000.00,'2026-10-01','',301,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(249,10000.00,'2026-10-01','',330,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(250,275000.00,'2026-10-02','',216,NULL,'payment_proofs/Screenshot_20261002_111856_Phone.jpg',7,'approved','',NULL,NULL,NULL,NULL),
(251,530000.00,'2026-10-05','',270,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(252,20000.00,'2026-10-05','',123,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(253,100000.00,'2026-10-05','',230,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(254,20000.00,'2026-10-05','',299,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(255,20000.00,'2026-10-05','',226,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(256,20000.00,'2026-10-05','',248,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(257,75000.00,'2026-10-05','',246,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(258,12000.00,'2026-10-05','',275,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(259,48000.00,'2026-10-05','',265,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(260,180000.00,'2026-10-06','',209,NULL,'',2,'approved','',NULL,NULL,NULL,NULL),
(261,800000.00,'2026-10-06','',295,NULL,'',7,'approved','',NULL,NULL,NULL,NULL),
(262,800000.00,'2026-10-07','',295,NULL,'',7,'rejected','',NULL,NULL,'',NULL),
(263,20000.00,'2026-10-09','',362,NULL,'',1,'approved','',NULL,NULL,NULL,NULL),
(264,227133.00,'2026-10-29','',1721,NULL,'payment_proofs/Payment_KML.pdf',NULL,'pending','',NULL,NULL,NULL,''),
(265,495000.00,'2026-10-29','',348,NULL,'payment_proofs/WhatsApp_Image_2026-10-29_at_16.46.44.jpeg',NULL,'pending','',NULL,NULL,NULL,NULL),
(266,110000.00,'2026-11-06','',123,NULL,'',NULL,'pending','',NULL,NULL,NULL,NULL),
(267,110000.00,'2026-11-06','',715,NULL,'',NULL,'pending','',NULL,NULL,NULL,NULL),
(268,110000.00,'2026-11-06','',715,NULL,'payment_proofs/Screenshot_20261106-0938562.jpg',NULL,'pending','',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `loans_loanpayment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loans_loantype`
--

DROP TABLE IF EXISTS `loans_loantype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `loans_loantype` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `min_amount` decimal(12,2) NOT NULL,
  `max_amount` decimal(12,2) NOT NULL,
  `interest_rate` decimal(5,2) NOT NULL,
  `interest_type` varchar(20) NOT NULL,
  `repayment_period_value` int(11) NOT NULL,
  `repayment_period_unit` varchar(10) NOT NULL,
  `repayment_frequency` varchar(10) NOT NULL,
  `processing_fee_percentage` decimal(5,2) NOT NULL,
  `late_payment_penalty_percentage` decimal(5,2) NOT NULL,
  `grace_period_days` int(11) NOT NULL,
  `requires_collateral` tinyint(1) NOT NULL,
  `collateral_description` longtext NOT NULL,
  `currency` varchar(10) NOT NULL,
  `max_concurrent_loans` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loans_loantype`
--

LOCK TABLES `loans_loantype` WRITE;
/*!40000 ALTER TABLE `loans_loantype` DISABLE KEYS */;
INSERT INTO `loans_loantype` VALUES
(3,'Umurabyo Loan','Umurabyo Loan Service',50000.00,10000000.00,10.00,'flat',30,'days','daily',0.00,0.00,2,0,'','RWF',1,1,'2026-06-03 17:47:34.315268');
/*!40000 ALTER TABLE `loans_loantype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loans_pastloansheet`
--

DROP TABLE IF EXISTS `loans_pastloansheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `loans_pastloansheet` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `file` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `row_count` int(10) unsigned NOT NULL CHECK (`row_count` >= 0),
  `uploaded_at` datetime(6) NOT NULL,
  `uploaded_by_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `loans_pastloansheet_uploaded_by_id_c2d7e563_fk_users_user_id` (`uploaded_by_id`),
  CONSTRAINT `loans_pastloansheet_uploaded_by_id_c2d7e563_fk_users_user_id` FOREIGN KEY (`uploaded_by_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loans_pastloansheet`
--

LOCK TABLES `loans_pastloansheet` WRITE;
/*!40000 ALTER TABLE `loans_pastloansheet` DISABLE KEYS */;
/*!40000 ALTER TABLE `loans_pastloansheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loans_publicloanapplication`
--

DROP TABLE IF EXISTS `loans_publicloanapplication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `loans_publicloanapplication` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `requested_amount` decimal(12,2) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `national_id` varchar(50) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `marital_status` varchar(20) NOT NULL,
  `district` varchar(100) NOT NULL,
  `sector` varchar(100) NOT NULL,
  `cell` varchar(100) NOT NULL,
  `village` varchar(100) NOT NULL,
  `employer` varchar(255) NOT NULL,
  `position` varchar(100) NOT NULL,
  `supervisor` varchar(255) NOT NULL,
  `employer_phone` varchar(20) NOT NULL,
  `salary` decimal(12,2) DEFAULT NULL,
  `loan_words` varchar(255) NOT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `application_date` date NOT NULL,
  `status` varchar(20) NOT NULL,
  `comment` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `loan_type_id` bigint(20) DEFAULT NULL,
  `reviewed_by_id` bigint(20) DEFAULT NULL,
  `bank_statement` varchar(100) DEFAULT NULL,
  `id_document` varchar(100) DEFAULT NULL,
  `job_contract` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `loans_publicloanappl_reviewed_by_id_0fe66714_fk_users_use` (`reviewed_by_id`),
  KEY `loans_publicloanappl_loan_type_id_8349afbb_fk_loans_loa` (`loan_type_id`),
  CONSTRAINT `loans_publicloanappl_loan_type_id_8349afbb_fk_loans_loa` FOREIGN KEY (`loan_type_id`) REFERENCES `loans_loantype` (`id`),
  CONSTRAINT `loans_publicloanappl_reviewed_by_id_0fe66714_fk_users_use` FOREIGN KEY (`reviewed_by_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loans_publicloanapplication`
--

LOCK TABLES `loans_publicloanapplication` WRITE;
/*!40000 ALTER TABLE `loans_publicloanapplication` DISABLE KEYS */;
INSERT INTO `loans_publicloanapplication` VALUES
(15,100000.00,'NSHIMIYE SANGWA Jules','0783464121','nshimiyesangwajules@gmail.com','1200180042694146','male','single','NYARUGENGE','NYARUGENGE','RWAMPARA','AMAHORO','KABGAYI LEVEL 2 TEACHING HOSPITAL','DATA MANAGER','KIVUMU HEALTH CENTER','0784000086',191340.00,'One hundred thousand.','NSHIMIYE SANGWA Jules','2026-06-03','rejected','Please provide a clear bank statement and which have 3 recent months payments.','2026-06-03 08:59:14.352640',NULL,7,'documents/bank/STATEMENT_K687Zdd.pdf','documents/id/Jules_ID_Wydb6kP.pdf','documents/job/job_contract_jH5e0ej.pdf'),
(16,500000.00,'HAGENIMANA GATERA Anicet','0785659883','gatera1anicet@gmail.com','11991801648062','male','single','kicukiro','gahanga','rwabutenge','kaboshya','Techouse Ltd','Manager GRC','Allen KARUNGI','(+250) 782 083588',2300000.00,'Cinq cents milles','HAGENIMANA GATERA Anicet','2026-06-04','rejected','Dear customer, we have not been able to review your documents including Employment Contract and Bank Statement. Feel free to apply again anytime with full requested documents. ','2026-06-04 18:05:07.408512',3,2,'documents/bank/Statement_1881063_100192044191.pdf','documents/id/MY_ID.jpeg','documents/job/My_Contract.pdf'),
(17,300000.00,'Gratien Twagirumukiza','+250785758142','gratien@aims.edu.gh','1199080036008267','male','married','Gasabo','Jali','Nyabuliba','Nyarurembo','University of Gitwe','Lecturer','Mbaraga Eliezer','0784003503',450000.00,'Three  hundred thousands Rwf','Gratien Twagirumukiza','2026-06-07','rejected','Due to delays in last months payments, we can not provide you another loan this time.','2026-06-07 15:02:35.363784',3,7,'documents/bank/Attestation_de_Salaire_.pdf','documents/id/scan0011.pdf','documents/job/Gratien_Doc.pdf'),
(18,100000.00,'Agatoni deborah mukunde','0783344884','mukundedee200@gmail.com','1200070075370109','female','single','Kicukiro','Nyarugunga','Kamashashi','Mukoni','Cci Rwanda','Call center','Freddie','0788309069',243000.00,'One hundred thousand','Agatoni deborah mukunde','2026-06-08','rejected','You have alot of amount you are paying for a loan you have in your bank, we can give you 50k. if interested, apply again.','2026-06-08 08:56:55.921817',3,7,'documents/bank/20039097001.pdf','documents/id/IMG-20250802-WA0020.jpg','documents/job/Mukunde_Deborah_Contract_.pdf'),
(19,50000.00,'Agatoni Mukunde Deborah','0783344884','mukundedee200@gmail.com','1200070075370109','female','single','Kicukiro','Nyarugunga','Kamashashi','Mukoni','Cci Rwanda','Call center','Freddie','0788309069',243000.00,'Fifty thousand','Agatoni Mukunde Deborah','2026-06-08','converted','','2026-06-08 11:29:25.706452',3,7,'documents/bank/20039097001_Cw25XPG.pdf','documents/id/IMG-20250802-WA0020_jLdYkuo.jpg','documents/job/Mukunde_Deborah_Contract__tZ5J6JI.pdf'),
(20,1500000.00,'ISHIMWE YAMURAGIYE','ERIC','ericishimwee@gmail.com','1199580198148387','male','married','Gasabo','Kinyinya','Kagugu','Rukingu','Reportage Rwanda','Marketing Manager','HR/ADMIN','0790 001 007',600000.00,'One million five hundred thousand','ISHIMWE YAMURAGIYE','2026-06-15','rejected','The required documents are not uplaaded ','2026-06-15 15:16:35.903314',3,2,'documents/bank/KCB_ACCT_STMT_ONLINE_DETAILS_2.pdf','documents/id/ISHIMWE_ID.pdf','documents/job/Job_contract.pdf'),
(21,500000.00,'Prince','Irakoze','hermanprince35@gmail.com','1200180051279064','male','single','Kicukiro','Gatenga','Nyanza','Ihuriro','OPPI','Managing Director','Prince Irakoze','0788700607',600000.00,'Five hundred thousand','Prince','2026-06-17','rejected','the loan request amount is high than income','2026-06-17 07:40:25.453998',3,7,'documents/bank/transaction-history-20260614_114314036.pdf','documents/id/IMG-20241218-WA00002_1.jpg','documents/job/transaction-history-20260614_114314036.pdf'),
(22,450000.00,'Byukusenge Marie Grace','0782746678','bymariegrace@gmail.com','1199670132026191','female','married','Kamonyi','Runda','Ruyenzi','Nyabitare','UVU BIO NPC','Skills Development Administrative Offcer','Diana Kanyabutembo','0788701924',500000.00,'five hundred thousands','Byukusenge Marie Grace','2026-06-17','rejected','we helped you via email','2026-06-17 10:25:07.862857',3,7,'documents/bank/Bank_Statement.pdf','documents/id/Scanned_ID.jpeg','documents/job/Employment_contract_-_UVU_Bio_NPC___Marie_Grace_Byukusenge_3.pdf'),
(23,500000.00,'NYIRANEZA Jeanne','0787285204','mberabahizipascal@gmail.com','1196170003323245','female','married','kicukiro','kicukiro','gasharu','umunyinya','Trece ltd','It manager','MBERABAHIZI Pascal','0785464855',753000.00,'five hundred thousand','NYIRANEZA Jeanne','2026-06-17','rejected','the loan request amount is higher than the income','2026-06-17 17:40:28.072200',3,7,'documents/bank/Statement_1963524_100044518788_1.pdf','documents/id/CamScanner_06-17-2026_17.58.pdf','documents/job/jobs___contract.pdf'),
(24,125000.00,'Daniel Charles Mwangila','0784834021','mwangiladaniel9@gmail.com','TAE108335','male','single','Kicukiro','Gatenga','Nyanza','Bwiza','BBOXX Africa Management','Senior Software Engineer','','',1337000.00,'One hundred and twenty five thousand','Daniel Charles Mwangila','2026-06-18','rejected','we helped you via email','2026-06-18 22:33:59.452667',3,7,'documents/bank/Statement_260619_003057.pdf','documents/id/PASSPORT.pdf','documents/job/bboxx_africa_contract.pdf'),
(25,200000.00,'Hitiyise Cyriaque Olivier','+250788567257','hitolvao@gmail.com','1199480099085120','male','single','Gasabo','Kimironko','Bibare','Intwari','Centrika Rwanda Ltd','Remittance Officer','Ndabarasa Patrick','0781272036',600000.00,'two hundred thousands','Hitiyise Cyriaque Olivier','2026-06-22','rejected','no documents attached','2026-06-22 13:28:01.364918',3,7,'documents/bank/Hitiyise_Cyriaque_Olivier_Contract.pdf','documents/id/Hitiyise_Cyriaque_Olivier_ID.jpeg','documents/job/Hitiyise_Cyriaque_Olivier_Contract.pdf'),
(26,150000.00,'Shimirwa Pacifique','0788491738','spaci20@gmail.com','1199480072164306','male','single','Nyarugenge','Nyamirambo','Mumena','Mumena','ECE Ltd','M&E and Quality Supervisor','Habyarimana Pierre Celestin','+250788501426',425000.00,'One Hundred and Fifty Thousands Rwandan Francs','Shimirwa Pacifique','2026-06-27','rejected','no documents attached','2026-06-27 15:00:12.102149',3,7,'documents/bank/CUSTOMMER_ACCOUNT_STATEMENT_F12_CESA1-scan.pdf','documents/id/Photo_ID_-_PACIFIQUE_SHIMIRWA.pdf','documents/job/MPC_CONTRACTHR.pdf'),
(27,250000.00,'Jean Yves Habimana','0785252225','roidalas@gmail.com','1199480153684069','male','married','Kicukiro','Masaka','Cyimo','Cyimo','Teknowledge Rwanda Ltd','Techincal support engineer','Mbonimpa Sylvain','0786087298',492000.00,'Two hundred and fifty thousand','Jean Yves Habimana','2026-06-29','rejected','no documents attached','2026-06-29 20:37:19.307960',3,7,'documents/bank/Statement_1997426_100131029483.pdf','documents/id/My_ID.pdf','documents/job/ConfirmationContract-_Jean_Yves.pdf'),
(28,60000.00,'Boris Otto ishimwe','0786824522','borisottoishimwe@gmail.com','1200080125969169','male','single','Musanze','MUHOZA','RUHENGERI','MUHE','District huye','Tvet trainer','Huye district','',266900.00,'Sixty housands','Boris Otto ishimwe','2026-07-02','rejected','we need bank statement and you provided pay roll','2026-07-02 05:30:09.838656',3,7,'documents/bank/PAY_HISTORY.pdf','documents/id/Nid.JPG','documents/job/260701_PROFILE_2207235930_32_001.pdf'),
(29,2000000.00,'Charmant Ishimwe','0791283646','charmpacifique9@gmail.com','1200480028082193','male','single','Gasabo','Kacyiru','Kamutwe','Kigugu','Zetta creative','Videographer','Ndibwami','0784 180 861',400000.00,'2 million','Charmant Ishimwe','2026-07-03','rejected','your loan request amount is high than the income','2026-07-03 11:46:55.918520',3,7,'documents/bank/receipts_2024-06-24T220000.000Z_2026-06-25T101629.165Z.pdf','documents/id/image.jpg','documents/job/Employment_Contract_Ishimwe_and_Zetta_creative_.pdf'),
(30,2000000.00,'Aimable Uwineza','0788788938','aimabruce98@gmail.com','1199880068112063','male','married','Gasabo','Gatsata','Nyamugali','Bwiza','Kigali Marriott hotel','Laundry valet','Nshimiyimana Aimable','',350000.00,'Two hundred thousand rwandan francs','Aimable Uwineza','2026-07-04','rejected','no ducuments attached','2026-07-04 11:46:04.722829',3,7,'documents/bank/Payslip_5.pdf','documents/id/ID_W43gCft.pdf','documents/job/Aima_Contract_.pdf'),
(31,5000000.00,'ISHIMWE CEDRICK','0788327696','cedrickishiimwe@gmail.com','1199980040699286','male','single','Kigali','Kanombe','Nyandungu','Rwimbogo','RSB LTD','Social media manager','ERIC RUTABINGWA','+250 788 301 192',500000.00,'Five millions Rwandan francs','ISHIMWE CEDRICK','2026-07-06','rejected','your loan request is higher than the income','2026-07-06 16:01:21.278377',3,7,'documents/bank/Statement_2022223_100163906613.pdf','documents/id/IMG_0240.jpeg','documents/job/SOCIAL_MEDIA_MANAGER.pdf'),
(32,500000.00,'Ramadhan','Guela','guelaramadhan@gmail.com','1198980217207123','male','married','GASABO','KINYINYA','KAGUGU','NYAKABUNGO','SILVER BELLS INTERNATIONAL SCHOOL','Teacher','Frank','250782491725',550000.00,'five hundred thousand francs','Ramadhan','2026-07-12','rejected','your loan request amount is higher than the income','2026-07-12 15:41:43.444997',3,7,'documents/bank/Statement_1509123_100020901424.pdf','documents/id/ID.pdf','documents/job/CONTRACT.pdf'),
(33,9985090.00,'akrueiureurh','0830580034','ruthmbabazi05@gmail.com','-09343029483984','male','single','afakfak','ausrgu','akjf','kauhgru','aurfhurfhru','aufhurfhru','sihfudi','0jhfskhfsf',89235.00,'kshooewerikldj','akrueiureurh','2026-07-16','rejected','your loan request is higher than your income','2026-07-16 07:55:41.729690',3,7,'documents/bank/Tianis_StayIconic_Pitch_2.pptx','documents/id/Tianis_StayIconic_Pitch.pptx','documents/job/Tianis_StayIconic_Pitch.pptx'),
(34,400000.00,'Kwitonda Alain Fabrice','0788901963','ruvualain11@gmail.com','1199480092740126','male','married','Kigali city','Kicukiro','Cyimo','Kabeza','Teknowledge','Technical support Engineer','Gbenga Odewade','0798689653',537000.00,'Four hundred thousand','Kwitonda Alain Fabrice','2026-07-17','rejected','we no longer serve people from Tec','2026-07-17 13:26:53.683189',3,7,'documents/bank/Statement_2052382_100120453078.pdf','documents/id/IMG_0993.jpeg','documents/job/Contract_Fabrice.pdf'),
(35,100000.00,'ISABWE ALINE DIANE','0787166453','isabwesebudiane24@gmail.com','1200170029987226','female','single','Gasabo','GISOZI','Kinyinya','Kinyinya','Study Net','Incountry representative','William Nimusiim','0793904375',220000.00,'One hundred Thousand','ISABWE ALINE DIANE','2026-07-19','rejected','no bank ststement provided','2026-07-19 16:46:22.258776',3,7,'documents/bank/Screenshot_20260719_182307_My_Airtel.jpg','documents/id/MY_ID_-_isabwe_annediane.pdf','documents/job/Employment_Contract_.pdf'),
(36,100000.00,'Bigirimfura Elissa','0795321177','phoenixstudio1000@gmail.com','1199880166988111','male','single','Rwamagana','Munyiginya','Binunga','Kabeza','Dinesoro construction Ltd','Project manager','Muzatsinda placide','0788919084',300000.00,'One hundred thousand','Bigirimfura Elissa','2026-07-21','rejected','no documents required provided.','2026-07-21 13:01:43.770381',3,7,'documents/bank/IMG-20260331-WA0005.jpg','documents/id/IMG-20240901-WA0011.jpg','documents/job/121640'),
(37,50000.00,'TUYISENGE ALICE SANDRINE','0793617314','sandatal50@gmail.com','1199270011668293','female','single','GISAGARA','KIBIRIZI','KIBIRIZI','TORERO','GOVERNMENT','SEDO(SOCIAL ECONOMIC DEVELOPMENT OFFICER)','GISAGARA DISTRICT','4058',94000.00,'FIFTY THOUSANDS','TUYISENGE ALICE SANDRINE','2026-07-23','rejected','no bank statement provided','2026-07-23 22:39:35.822290',3,7,'documents/bank/PAY_HISTORY.pdf','documents/id/ID_aBPlfiP.pdf','documents/job/ACE_Scanner_2026_07_23.pdf'),
(38,50000.00,'JABO Jules Parfait','+250787919398','jabuujules12@gmail.com','1199580099293107','male','single','gasabo','kimironko','nyagatovu','ijabiro','reg','billing officer','Landfried Gasigwa','0785270537',395327.00,'Fifty Thousand','JABO Jules Parfait','2026-07-31','rejected','the salary is little and a recovary loan at the bank, no more loan from us','2026-07-31 12:23:28.804411',3,7,'documents/bank/bank_statement.pdf','documents/id/ID_moFZ14i.pdf','documents/job/Jabo_Jules_parfait_eucl_contract_.pdf'),
(39,1000000.00,'mugabo john','0789759699','mugabojohn797@gmail.com','1198580173638230','male','married','kicukiro','nyarugunga','nonko','runyonza','rulindo district','Etat civil','tumba sector','0788509096',280000.00,'one million','mugabo john','2026-08-02','rejected','loan amount requestes is higher than your salary','2026-08-02 10:11:03.174775',3,7,'documents/bank/bk.docx','documents/id/my_id.pdf','documents/job/RULINDO_LETTER.pdf'),
(40,400000.00,'Philbert Akiba','0785837095','akibap49@gmail.com','1199880022030244','male','single','Kicukiro','Gatenga','Nyarurama','Bisambu','RWACOF EXPORTS LTD','LOGISTICS OFFICER','Thierry Pascal Rwirangira','0788368546',626000.00,'Four hundred Thousand Rwandan francs','Philbert Akiba','2026-08-03','rejected','we helped you via email','2026-08-03 10:13:07.781515',3,7,'documents/bank/accountTransactionHistory_1.pdf','documents/id/20260803_120829.heic','documents/job/EMPLOYMENT.pdf'),
(41,5000000.00,'Denys','0784156029','gakwayade@gmail.com','1198780111764027','male','married','Musanze','Cyuve','Rwebeya','Nyiraruhengeri','Lindo pharmacy','Pharmacist','Umutoni Assouma','0788423101',1000000.00,'Five million','Denys','2026-08-04','rejected','Absence of required documents. ','2026-08-04 06:53:03.266423',3,2,'documents/bank/ID_RECTO.PDF','documents/id/ID_RECTO.PDF','documents/job/ID_RECTO.PDF'),
(42,2500000.00,'Evode Munyaneza','0788531770','munyaneza.evode@gmail.com','1198780041047242','male','married','Kicukiro','Kanombe','Karama','Byimana','Minecofin','Deputy Accountant General','Accountant General','0788210998',2400000.00,'Two million and five hunderd Frw','Evode Munyaneza','2026-08-05','rejected','we request bank ststement no momo ','2026-08-05 11:19:59.281016',3,7,'documents/bank/Momo_Bank.pdf','documents/id/ID.jpg','documents/job/Statement_on_Cabinet_Decisions_of_27__04_2018_final.pdf'),
(43,350000.00,'MUGABO Olivier','0795624406','oliviermugabo450@gmail.com','1199580197197178','male','single','Kigali','Kicukiro','Niboy','Kanserege','Bank of kigali','Finance officer','Shayla jeremie','0788469495',940000.00,'Three hundred and fifty thousand Rwandan francs','MUGABO Olivier','2026-08-07','reviewed','','2026-08-07 08:40:47.844696',3,7,'documents/bank/CamScanner_07-08-2026_10.26_1.jpeg','documents/id/ID_Card_07-08-2026_10.01_1.jpeg','documents/job/CamScanner_07-08-2026_10.16.pdf'),
(44,1800000.00,'Mutijima Eric','0788451975','mutijimaeric06@gmail.com','1199980063731117','male','single','Gasabo','Gisozi','Musezero','Amarembo','KAKANDE Ceramics Ltd','Owner','Owner','0788451975',600000.00,'One Million Eight Hundred thousand','Mutijima Eric','2026-08-21','rejected','the loan request amount is higher than the income, and if you re a business owner, we dont give loans to business owners','2026-08-21 11:35:30.588815',3,7,'documents/bank/receipts_2026-05-21T000000.0000200_2026-08-21T132956.4050200.pdf','documents/id/image.jpg','documents/job/GenerateAndDisplayDomesticDetailCertificate_8.pdf'),
(45,300000.00,'NSABYUMUKIZA ERIC','0790224662','nsabyumukizaerc@gmail.com','1200080245237096','male','single','GASABO','NDERA','MASORO','MASORO','C&D PRODUCTS RWANDA','HR ASSISTANT','RICHARD RUKUNDO','0789815272',200000.00,'THREE HUNDRED  THOUSANDS','NSABYUMUKIZA ERIC','2026-08-25','rejected','income is low, compared to the loan request amount','2026-08-25 11:27:20.874791',3,7,'documents/bank/Bank_statement_Eric.pdf','documents/id/ID_and_celtificate.pdf','documents/job/Employment_contract.pdf'),
(46,650000.00,'Armela Ndacyayisenga','0781943864','larmella11@gmail.com','119970115341096','female','married','Kicukiro','Nyarugunga','Mukoni','Isheja','MAGERWA Ltd','Warehouse Supervisor','Vincent Mazimpaka','+250 783 050 268',500000.00,'Six hundred and fifty thousands','Armela Ndacyayisenga','2026-08-26','rejected','Dear customer, thanks for your loan application at Kigali MicroLoans. After careful review, you\'re not qualified for the loan you requested for this time. Please note that this decision does not concern your future application, feel free to apply again anytime. ','2026-08-26 15:58:50.822741',3,2,'documents/bank/Bank_statement.pdf','documents/id/ID_card.pdf','documents/job/Contract_agreement.pdf'),
(47,500000.00,'Grace MUTESI','0780917604','gracemutesi1998@gmail.com','1199870114021144','female','single','Kamonyi','Runda','Ruyezi','Nyagacaca','We got your back NGo','Finance Associate','Strategy& Development Manager','0788711030',100000.00,'five hundred thousand Rwandan francs','Grace MUTESI','2026-09-02','rejected','we request bank statements  not momo','2026-09-02 14:51:13.162015',3,7,'documents/bank/my_contract.htm','documents/id/my_ID.htm','documents/job/my_contract.htm'),
(48,100000.00,'ERIC NSABYUMUKIZA','+250790224662','nsabyumukizaerc@gmail.com','1200080245237096','male','single','GASABO','NDERA','MASORO','MASORO','C&D PRODUCTS RWANDA LTD','HR ASSISTANT','RICHARD','0789815272',300000.00,'ONE HUNDRED THOUSAND','ERIC NSABYUMUKIZA','2026-09-03','rejected','the salary is low','2026-09-03 07:45:14.652818',3,7,'documents/bank/Bank_statement_Eric_xqEKyax.pdf','documents/id/id_eric.pdf','documents/job/Employment_contract_1JK1M7u.pdf'),
(49,500000.00,'Rutaganda Eric','0792526521','rutagzeric@gmail.com','1199780117765050','male','single','Kicukiro','Kanombe','Kabeza','Muhabura','National Bank of Rwanda','Senior Officer, Strategy Oversight','','',1300000.00,'Five Hundred Thousand Francs','Rutaganda Eric','2026-09-04','rejected','your contract is not clear','2026-09-04 07:56:36.627310',3,7,'documents/bank/Bank_Statement.pdf','documents/id/National_ID_NRPVLJ6.pdf','documents/job/Service_Order_for_Placement_of_Staff__Internal_recruitment_2025_redacted.pdf'),
(50,500000.00,'Bruce Munyakazi','0788345525','munyakakazibruce@gmail.com','1199380174101208','male','single','Kigali','Kimihurura','Kimihurura','Kamukina','Radisson Blu Kigali Convention Centre','Security Officer','James Mugabo','0788830403',700000.00,'Five Hundred Thousand','Bruce Munyakazi','2026-09-04','rejected','.','2026-09-04 09:50:34.589827',3,7,'documents/bank/Bank_Of_Kigali_Statement.pdf','documents/id/IDD.jpeg','documents/job/Contract.pdf'),
(51,999998.00,'Innocent patrick NGOGA','0782214360','ngogainnocent1@gmail.com','1200770068850036','male','single','Nyagatare','Gatunda','Nyangara','Ryanyabugwende','Sailor Pin','Founder','Francisco','0782214360',9999996.00,'','Innocent patrick NGOGA','2026-10-02','rejected','testn','2026-10-02 15:19:07.812036',3,2,'documents/bank/Permission_Request_Letter.pdf','documents/id/Permission_Request_Letter.pdf','documents/job/Permission_Request_Letter.pdf'),
(52,234567.00,'Innocent patrick NGOGA','0782214360','ngogainnocent1@gmail.com','234567854','male','single','Nyagatare','Gatunda','Nyangara','Ryanyabugwende','Ngoga','Founder','Francisco','0782214360',123455.00,'two hundreds','Innocent patrick NGOGA','2026-10-02','rejected','erty','2026-10-02 15:24:13.808124',3,2,'documents/bank/Permission_Request_Letter_QMlBTvp.pdf','documents/id/Permission_Request_Letter_olvFtjk.pdf','documents/job/Permission_Request_Letter_AoyTYK8.pdf'),
(53,100000.00,'Elysee test two','0798117214','bienvenueinnocent2000@gmail.com','12345678909876','male','single','Nyagatare','Gatunda','Nyangara','Ryanyabugwende','CST','IT','Emmy','',12000000.00,'ghgjhkjghfgdfgfhgjh','Elysee test two','2026-10-02','rejected','fgh','2026-10-02 15:25:13.541863',3,2,'documents/bank/Area_to_focus_on.pdf','documents/id/Area_to_focus_on.pdf','documents/job/Area_to_focus_on.pdf'),
(54,100000.00,'Uwase Ngoga Sarah','0788602821','sarahngoga12@gmail.com','1200470091404046','female','single','Gasabo','Kimironko','Bibare','Ntashyo','AB Rwanda plc','Receptionist& Executive assistant','Kayitesi Guilaine','0788602821',346000.00,'One hundred thousand Rwandan francs','Uwase Ngoga Sarah','2026-10-05','rejected','our CRB account has some issues so we can not access the information we want before giving out a loan','2026-10-05 16:27:46.260107',3,7,'documents/bank/Bank_statements_.pdf','documents/id/ID.JPG','documents/job/Contract_.pdf'),
(55,500000.00,'roger prince cyicarano','0781838287','cyicaranorogerprince52@gmail.com','1199780118651015','male','single','Gasabo','Kacyiru','Kamutwa','Ubumwe','Nyungwe Management Company','Control Room Operator','RUYUMBU NKA MUSANGO','',842705.00,'five hundred thousands','roger prince cyicarano','2026-10-06','rejected','This bank statement dont show your personal information','2026-10-06 07:33:05.657357',3,7,'documents/bank/Bank_Statement_heMrqeB.pdf','documents/id/nid.pdf','documents/job/Contract_KzLPWop.pdf'),
(56,5000000.00,'Charmant Ishimwe','0791283646','charmpacifique9@gmail.com','1200480028082193','male','single','Gasabo','Kacyiru','Kamutwa','Kanserege','Beast nation','Videographer & Photographer','Charmant pacifique','0733542229',400000.00,'Five Million Rwandan Francs','Charmant Ishimwe','2026-10-19','pending','','2026-10-19 13:41:19.466014',3,NULL,'documents/bank/receipts_2026-04-19T000000.0000200_2026-10-19T142344.8670200.pdf','documents/id/Screenshot_2026-10-19_at_15.38.00.png','documents/job/2026-09-24_TW-LD_signed_1.pdf'),
(57,50000.00,'Ngabo David','0792625422','ngabodavid04@gmail.com','1200480094190087','male','single','Kicukiro','Masaka','Gake','Butare','004 Black zone pub','Manager','Ishimwe christian','0789642338',150000.00,'Fifty thousand rwf','Ngabo David','2026-10-27','pending','','2026-10-27 14:05:06.684486',3,NULL,'documents/bank/Official_Payslip_and_Salary_History_Suite_1.pdf','documents/id/DSC_0289.JPG','documents/job/Official_Payslip_and_Salary_History_Suite_1.pdf'),
(58,250000.00,'Mugisha Gentil Hubert','0781837821','muhubert68@gmail.com','1199880102109090','male','single','Nyarugenge','Muhima','Nyabugogo','Umutekano','Zipline Rwanda','Order operation specialist','0785152509','0785152509',450000.00,'two hundred and fifty thousands','Mugisha Gentil Hubert','2026-11-03','pending','','2026-11-03 13:22:02.903828',3,NULL,'documents/bank/Statement.pdf','documents/id/ID_OCL877T.pdf','documents/job/Worker_Verification_Letter.pdf'),
(59,1200000.00,'Limon NIYONTEZE','0785545040','limonniyonteze@gmail.com','1200180222268262','female','single','Kicukiro','Gatenga','Nyanza','Murambi','AMAHORO HUMAN RESPECT ORGANISATION (A.H.R)','IT Support Technician','MUNANA Manzi Tonny','0789370616',820000.00,'one million two hundred thousand Rwandan Franc','Limon NIYONTEZE','2026-11-09','pending','','2026-11-09 08:13:19.352934',3,NULL,'documents/bank/transaction-history-20261003_045416825_1.pdf','documents/id/ID_Card_Limon_1.pdf','documents/job/Contract__Limon.pdf'),
(60,200000.00,'Iduherubuntu Efuta','079025883','iduherubuntuefuta1@gmail.com','12005800694069','male','single','Gatsibo','Muhura','Taba','Gatare','JEFF HAMILITON','Swap Executive','Hussein MUGABO','0793633978',125000.00,'Two hundred thousand','Iduherubuntu Efuta','2026-11-09','pending','','2026-11-09 09:06:53.368152',3,NULL,'documents/bank/WhatsApp_Image_2026-11-09_at_1.04.00_AM.jpeg','documents/id/WhatsApp_Image_2026-11-09_at_1.03.59_AM.jpeg','documents/job/WhatsApp_Image_2026-11-09_at_1.03.59_AM.jpeg'),
(61,200000.00,'Mugisha Olivier','0783344915','mugishaolivier198@gmail.com','1199880035810241','male','single','Kicukiro','Kagarama','Rukatsa','Rukatsa','Goodlife Health and Beauty','IT','','',700000.00,'Ibihumbi maganabiri','Mugisha Olivier','2026-11-09','pending','','2026-11-09 13:58:14.414971',3,NULL,'documents/bank/Statement_2218637_100175786486.pdf','documents/id/ID_MUGISHA_OLIVER.pdf','documents/job/Signed_Contract.pdf'),
(62,2000000.00,'Habyarimana Evariste','+250788985896','habyarimanaevariste5@gmail.com','1199480173062067','male','single','Kicukiro','Niboyi','Nyakabanda','Bwiza','Bluesky Business Ltd','Managing Director','','0788985896',2000000.00,'Un million Rwandan Francs','Habyarimana Evariste','2026-11-09','pending','','2026-11-09 18:05:45.563041',3,NULL,'documents/bank/PDF_document.pdf','documents/id/REPUBULIKA_YU_RWANDA.pdf','documents/job/GenerateAndDisplayDomesticDetailCertificate_1.pdf'),
(63,250000.00,'Rene Patience Iradukunda','0793251969','iradukundarenepatience@gmail.com','1200280246691038','male','single','Gicumbi','byumba','gacurabwenge','gacurabwenge','Iramiro clinic','Dental assistant','Iyakaremye Alex','0786672925',100000.00,'two hundred fifty thousand','Rene Patience Iradukunda','2026-11-10','pending','','2026-11-10 10:32:23.704995',3,NULL,'documents/bank/IRADUKUNDA_RENE_PATIENCE.pdf','documents/id/ID_8qbiu2x.pdf','documents/job/contract.pdf'),
(64,1500000.00,'Uwingabiye Henriette','+250791997262','henriettesail880@gmail.com','1200370235521053','female','single','Gasabo','Gatsata','Nyamugari','Kabimbura','Self employed','Self employed','Business manager','0728187340',500000.00,'One Million five hundred thousand','Uwingabiye Henriette','2026-11-10','pending','','2026-11-10 19:42:26.639063',3,NULL,'documents/bank/Rwf_Statement_7524273368233676800.pdf','documents/id/20261110_210328.JPG','documents/job/Personal_Loan_Application_Uwingabiye_Henriette.pdf'),
(65,1500000.00,'Ange Gaju','0791394414','gajuange@gmail.com','1199570068935119','female','single','Gasabo','Kimironko','Bibare','Ubwiza','Expertise France','Gender Equality and Inclusion specialist','Cyrielle Cahuzac','',2000000.00,'One million five hundred thousands rwandan francs','Ange Gaju','2026-11-12','pending','','2026-11-12 08:38:14.541592',3,NULL,'documents/bank/Statement_2422997_100217557911.pdf','documents/id/ID_Ange.jpeg','documents/job/Employment_and_Salary_Confirmation_letter_Ange_Gaju_1.pdf'),
(66,250000.00,'Protegene KWEZERA','0788444206','protegenek7@gmail.com','1199880040222124','male','single','Nyagatare','Rukomo','Rukomo2','Isangano','Prot Ltd','Trader','Protegene','0788444206',350000.00,'Two hundred fifty thousand','Protegene KWEZERA','2026-11-16','pending','','2026-11-16 06:58:37.922554',3,NULL,'documents/bank/ID_prote.pdf','documents/id/ID_prote.pdf','documents/job/residence_form.pdf');
/*!40000 ALTER TABLE `loans_publicloanapplication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loans_repaymentschedule`
--

DROP TABLE IF EXISTS `loans_repaymentschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `loans_repaymentschedule` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `installment_number` int(11) NOT NULL,
  `due_date` date NOT NULL,
  `principal_amount` decimal(12,2) NOT NULL,
  `interest_amount` decimal(12,2) NOT NULL,
  `total_amount` decimal(12,2) NOT NULL,
  `status` varchar(20) NOT NULL,
  `loan_id` bigint(20) NOT NULL,
  `paid_amount` decimal(12,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `loans_repaymentschedule_loan_id_b797cc67_fk_loans_loan_id` (`loan_id`),
  CONSTRAINT `loans_repaymentschedule_loan_id_b797cc67_fk_loans_loan_id` FOREIGN KEY (`loan_id`) REFERENCES `loans_loan` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loans_repaymentschedule`
--

LOCK TABLES `loans_repaymentschedule` WRITE;
/*!40000 ALTER TABLE `loans_repaymentschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `loans_repaymentschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `onboarding_onboardingvideo`
--

DROP TABLE IF EXISTS `onboarding_onboardingvideo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `onboarding_onboardingvideo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `video` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `category` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `onboarding_onboardingvideo`
--

LOCK TABLES `onboarding_onboardingvideo` WRITE;
/*!40000 ALTER TABLE `onboarding_onboardingvideo` DISABLE KEYS */;
/*!40000 ALTER TABLE `onboarding_onboardingvideo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemsettings_systemsetting`
--

DROP TABLE IF EXISTS `systemsettings_systemsetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `systemsettings_systemsetting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `loan_application_enabled` tinyint(1) NOT NULL,
  `loan_application_message` longtext NOT NULL,
  `allow_sending_emails` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemsettings_systemsetting`
--

LOCK TABLES `systemsettings_systemsetting` WRITE;
/*!40000 ALTER TABLE `systemsettings_systemsetting` DISABLE KEYS */;
INSERT INTO `systemsettings_systemsetting` VALUES
(1,1,'Loan applications are temporarily unavailable. Please try again later.',1);
/*!40000 ALTER TABLE `systemsettings_systemsetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_passwordresetrequest`
--

DROP TABLE IF EXISTS `users_passwordresetrequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_passwordresetrequest` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) DEFAULT NULL,
  `status` varchar(10) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `users_passwordresetrequest_user_id_5db2d209_fk_users_user_id` (`user_id`),
  CONSTRAINT `users_passwordresetrequest_user_id_5db2d209_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_passwordresetrequest`
--

LOCK TABLES `users_passwordresetrequest` WRITE;
/*!40000 ALTER TABLE `users_passwordresetrequest` DISABLE KEYS */;
INSERT INTO `users_passwordresetrequest` VALUES
(1,'1cf7c3ee-4a9c-48a4-81b6-1af7019de102','APPROVED','2026-05-06 22:03:42.998037','2026-05-06 22:27:57.579772',1),
(2,'5b5abbf8-6ee1-4596-bcdf-e1b09c63ec91','EXPIRED','2026-06-16 22:37:27.380915','2026-06-17 04:33:25.981539',19),
(3,'d01d80ac-3321-4b46-97f4-0359bb16ee65','APPROVED','2026-06-27 14:26:27.366154','2026-07-04 01:54:03.604119',37),
(4,'c7bb06af-b884-4f8a-adc8-c52baa09d0a1','EXPIRED','2026-07-02 15:43:55.489236','2026-07-04 01:54:11.372542',12),
(5,'13440b92-dc8a-4cff-ba0e-a0545365355a','EXPIRED','2026-07-03 19:34:04.423467','2026-07-04 01:54:14.974506',19),
(6,'700a4a2d-11ff-4bd1-a84c-3b285655e22f','EXPIRED','2026-07-11 06:40:32.348245','2026-07-12 02:54:31.025169',19),
(7,'e8344e82-9e8d-4a65-be7c-fa3a8e18bcbf','APPROVED','2026-07-20 00:59:12.050980','2026-07-23 04:28:18.257781',45),
(8,'e053a4dc-75b8-439c-862e-6b8551501e28','APPROVED','2026-07-22 18:31:41.784095','2026-07-23 04:28:08.365743',12),
(9,'f3556e67-1b11-4811-bc23-597ee63858b8','APPROVED','2026-08-01 18:52:50.108940','2026-08-11 19:50:38.063317',97),
(10,'f2e79d4e-329e-4adc-84b8-f66faad556a2','EXPIRED','2026-08-11 16:15:59.238995','2026-08-11 19:50:41.785355',110),
(11,'59c1c74f-da8c-49a7-9944-574084cb3098','APPROVED','2026-08-14 20:04:49.612290','2026-08-15 05:52:12.372284',115),
(12,'d31c17a7-a20d-42cf-9081-85893312db42','APPROVED','2026-08-18 08:37:44.140684','2026-08-18 17:18:42.005997',12),
(13,'e351649a-278c-4ecd-92e6-d6fe5b1fc97e','EXPIRED','2026-08-24 08:18:43.028952','2026-08-30 09:18:48.708774',21),
(14,'429cb4b6-8214-48a3-bb57-94d0088b7883','APPROVED','2026-08-24 13:23:18.541528','2026-08-30 09:18:39.845878',47),
(15,'e5b30d5a-723c-4353-8b85-1bb4ab3ab60c','APPROVED','2026-08-25 08:37:54.031272','2026-08-30 09:18:30.727480',47),
(16,'7227be02-a143-4830-bc3b-188d5f795937','APPROVED','2026-08-26 10:11:35.397918','2026-08-30 09:18:21.286498',88),
(17,'691a4922-8e4a-4199-b77e-7df915e469ff','APPROVED','2026-08-29 13:15:51.331505','2026-08-30 09:18:12.202872',90),
(18,'3d4c2581-e05e-4417-a841-f07be5d5a5c2','APPROVED','2026-08-30 07:31:13.732565','2026-08-30 09:18:02.954069',93),
(19,'96a04c00-1f44-4f51-8fe2-ec5b949eab46','USED','2026-08-30 09:00:37.186247','2026-08-30 09:21:06.514084',26),
(20,'c1f7de01-2cfa-4760-8dca-a9130e0c3851','APPROVED','2026-08-31 11:30:50.797065','2026-09-04 18:41:37.898709',21),
(21,'c337816c-640a-47db-b65a-e461b45a730e','APPROVED','2026-09-10 11:37:32.983415','2026-09-10 14:23:10.909561',115),
(22,'ab5d2605-01f4-442f-9f56-ec39dabd3310','APPROVED','2026-09-24 12:44:30.515213','2026-10-01 10:28:27.034336',181),
(23,'a4516ecd-d2c5-48b3-ba3f-c3843b7ccbd0','USED','2026-09-24 12:46:04.506467','2026-10-01 10:28:29.631242',181),
(24,'7e8687c4-ab83-44af-b9cd-026e573dc3b3','APPROVED','2026-09-24 14:33:32.188301','2026-10-01 10:28:32.657329',84),
(25,'5e80e4a9-a366-45f3-9fb7-c1302e642177','APPROVED','2026-10-02 04:04:09.494003','2026-10-05 10:00:30.281296',160),
(26,'d7ba7008-72bd-4b38-bd5b-eab437fafb86','USED','2026-10-05 09:38:09.439603','2026-10-05 10:00:33.875148',110),
(27,NULL,'PENDING','2026-11-11 12:52:37.004938',NULL,167);
/*!40000 ALTER TABLE `users_passwordresetrequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_user`
--

DROP TABLE IF EXISTS `users_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `role` varchar(20) NOT NULL,
  `must_change_password` tinyint(1) NOT NULL,
  `is_2fa_enabled` tinyint(1) NOT NULL,
  `otp_secret` varchar(32) DEFAULT NULL,
  `id_card` varchar(100) DEFAULT NULL,
  `phone_number` varchar(14) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `users_user_email_243f6e77_uniq` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_user`
--

LOCK TABLES `users_user` WRITE;
/*!40000 ALTER TABLE `users_user` DISABLE KEYS */;
INSERT INTO `users_user` VALUES
(1,'pbkdf2_sha256$1200000$SBdaaesiSGeJBnc8QcjAx5$WY/ZjZtLoahW34jcDxf5YrlxWQqma1nvPU2zcnzGUGU=','2026-11-17 16:54:47.444938',1,'admin','','','ngogainnocent1@gmail.com',1,1,'2026-05-02 17:18:14.000000','admin',0,1,'6BUR536XWOHYRIGDNC5NBF3GH5LCZZYS','users_id/284fe0bad3bb4bed9c3099d2765f6de4-Uduhe_kumenya_ubwenge_2__Harm__Apollinaire_Hab_SoMe3BL.pdf','0782214360','NGOGA Patrick'),
(2,'pbkdf2_sha256$1200000$GOpa0giA6nhmGWpXSw3g4x$uYbM73zbCrcHBszAOQfNYsHZMbXU+yDbbqOUFFhWta4=',NULL,1,'elysee.admin','','','elyseendayishimye@gmail.com',1,1,'2026-05-08 08:11:50.000000','admin',0,1,'C772V6CZ6E27EKMSR6FMVI4KW75REFYO','users_id/NDAYISHIMYE_Elysee_ID.pdf','0798117214','Elysee NDAYISHIMYE'),
(3,'pbkdf2_sha256$1200000$VtLmb3SVbCkICtlq89ggdG$KbFLJNmeyEspocIrInJh+VKw3aY18/qd93oC0p60XjQ=',NULL,0,'Elysee.KML','','','elysee@kigalimicroloans.com',0,1,'2026-05-08 09:51:04.939886','manager',0,1,'KCYTM64AVOFS2HZKR2FV4C3Z5XDYEOUH','users_id/NDAYISHIMYE_Elysee_ID_QUVlNeC.pdf','0798117214','Elysee NDAYISHIMYE'),
(7,'pbkdf2_sha256$1200000$s96XDy66kWg2m2QWYeFE69$BMJs3D5C4Jl9oCO9BVq8k/mKdBzCfzyq9s5AkGddo1o=',NULL,0,'Lilian.KML','','','lilian@kigalimicroloans.com',0,1,'2026-05-26 17:42:24.056725','manager',0,1,'5ONN2OS3UWUUBU5OMUSVHTYUKGPNN2ML','users_id/Liliane_ID.pdf','+250781001491','Lilian Kashema'),
(11,'pbkdf2_sha256$1000000$neNLeacxKEz6yLBfl1W50t$STryDaPNE+LqprzSGk1NwuqcEeB2wNOSNZdHsQ75coY=',NULL,0,'KML','','','kigalimicroloans@gmail.com',0,1,'2026-06-04 17:29:18.879632','manager',0,1,'6MD4JXF2OZ6DBX5XSIQJQE76JCXGYFNA','users_id/KML_Logo.png','0798117214','KML'),
(12,'pbkdf2_sha256$1000000$fRlCLDlGWttkzlEoREvWmQ$sbij2c/q/DkCSP5l3NzxroNJ6qLyhUXaR+83tfww00g=',NULL,0,'b.zigalarissa@gmail.com','','','b.zigalarissa@gmail.com',0,1,'2026-06-08 09:53:58.376016','client',0,0,NULL,'',NULL,NULL),
(13,'pbkdf2_sha256$1000000$rTI15EOfiY2ei6LzbrxH92$gMC/dGYLRUP6VKlsOF3oJVeL9O/H/mddf31YYLITyAk=',NULL,0,'mukundedee200@gmail.com','','','mukundedee200@gmail.com',0,1,'2026-06-09 17:39:48.213030','client',1,0,NULL,'',NULL,NULL),
(14,'pbkdf2_sha256$1000000$nTHt8ibk3FT0e8TOL9mUcD$XDMwinFYcUlM1dz5X+Zca6LIG184+FtdL7iJhtD6p28=',NULL,0,'juliettemutoni5@gmail.com','','','juliettemutoni5@gmail.com',0,1,'2026-06-09 17:53:45.763509','client',1,0,NULL,'',NULL,NULL),
(15,'pbkdf2_sha256$1000000$kCLgZCapqqkTorANGQ4QZA$XnJcOOfyz18hFm4BvqwlLUNXZLl4J6B3obxWHqDCrrU=',NULL,0,'dushimimanadiogene6@gmail.com','','','dushimimanadiogene6@gmail.com',0,1,'2026-06-10 08:53:12.539194','client',1,0,NULL,'',NULL,NULL),
(16,'pbkdf2_sha256$1000000$Q14qSMnyHW15FbnEcoo9iV$U+QewhR472ElSiWfJnG+yURj+uXYI3sueI3vA4fxAv0=',NULL,0,'mutuyeyesutheophile1@gmail.com','','','mutuyeyesutheophile1@gmail.com',0,1,'2026-06-10 09:32:49.267350','client',1,0,NULL,'',NULL,NULL),
(17,'pbkdf2_sha256$1000000$DcZPUAhdUsMa0R8IiNlwqv$dZWbpelwK4DaLj5Yhw+TTENl6nz/iP7nMb5hOIfYNu4=',NULL,0,'immack30@gmail.com','','','immack30@gmail.com',0,1,'2026-06-10 09:52:04.752987','client',1,0,NULL,'',NULL,NULL),
(18,'pbkdf2_sha256$1000000$qMT60sOvfGOtnqHBlqmjSZ$xaKRqqxJvGZ69uzZABZmGsHNE2Hpu1ThhqiTM2vVUE8=',NULL,0,'bihezaberna@gmail.com','','','bihezaberna@gmail.com',0,1,'2026-06-10 10:00:48.422616','client',1,0,NULL,'',NULL,NULL),
(19,'pbkdf2_sha256$1000000$CboueYKiE60FzBKut2FbOk$M3KLsYFvJHXJxUxZUfovGhZuI1Rav7B/kXcs07vQMcc=',NULL,0,'seraphinen02@gmail.com','','','seraphinen02@gmail.com',0,1,'2026-06-10 10:22:25.949985','client',0,0,NULL,'',NULL,NULL),
(20,'pbkdf2_sha256$1000000$Fn2qNLaov32xBqHEHkZB9w$NCR3kw5m5934kyjxHVHm9VZrPQCP/6xD8rlcJ1Z0chM=',NULL,0,'nsanzabaganwajosias2@gmail.com','','','nsanzabaganwajosias2@gmail.com',0,1,'2026-06-10 10:29:10.531504','client',1,0,NULL,'',NULL,NULL),
(21,'pbkdf2_sha256$1000000$MbzVYfjDE5AY522O5HKAJ9$vF/hO7zh5+W7OJtckLOmAU57u/1IrZmYdqjN0yyeleo=',NULL,0,'du1.jonathan@gmail.com','','','du1.jonathan@gmail.com',0,1,'2026-06-19 16:22:14.359764','client',1,0,NULL,'',NULL,NULL),
(22,'pbkdf2_sha256$1200000$5VmfUQS106Jf4bz9FBLjw6$0QqnIkrA+5utakth6r+uFZALagwZdvIr4rVW9ASIgrc=',NULL,0,'ngenzijoel18@gmail.com','','','ngenzijoel18@gmail.com',0,1,'2026-06-19 16:33:53.329505','client',0,0,NULL,'',NULL,NULL),
(23,'pbkdf2_sha256$1000000$jWZHYYzDB2LbHME0efKDUO$pXNUGCpT/5rDJmK8Hv6Maqcvi7UDOei8iko5H8DXhj8=',NULL,0,'c7.ngabo@gmail.com','','','c7.ngabo@gmail.com',0,1,'2026-06-19 16:43:28.572039','client',1,0,NULL,'',NULL,NULL),
(24,'pbkdf2_sha256$1000000$C1JoRUcyx4GInAhva2eWLR$YvnwDOgjceRnDIe5SJX36VvpfXldmA3r4WTSh0J+PSE=',NULL,0,'rosetuyizere128@gmail.com','','','rosetuyizere128@gmail.com',0,1,'2026-06-19 16:50:49.187284','client',1,0,NULL,'',NULL,NULL),
(26,'pbkdf2_sha256$1200000$RT20bqwwXKuj8T5pDHNKQC$gpFjLDxpFKAE7cl9CuUSCRoI4OrZWuQxI3h7G9JYBg0=',NULL,0,'alphonse01961@gmail.com','','','alphonse01961@gmail.com',0,1,'2026-06-22 06:42:14.625785','client',0,0,NULL,'',NULL,NULL),
(28,'pbkdf2_sha256$1000000$pK8q61gQWKZn4bIPsNi5HA$luPoiF5E9yVxMFxKU4YMG5SwXp5JyAjXpCXxuNWHpOE=',NULL,0,'twebazerogers2015@gmail.com','','','twebazerogers2015@gmail.com',0,1,'2026-06-22 17:34:38.161900','client',1,0,NULL,'',NULL,NULL),
(29,'pbkdf2_sha256$1000000$d1GR03zjHBlXckxyR3d1pf$V2+UiD729SVhG8Z4l7XmqBKK+4JKJ5oILorcgcfm4Nw=',NULL,0,'dusenge96@gmail.com','','','dusenge96@gmail.com',0,1,'2026-06-22 18:18:01.034651','client',1,0,NULL,'',NULL,NULL),
(30,'pbkdf2_sha256$1000000$bMuAD5r2s1p2ymb5XiGVWh$XhDj+Hwzje/pqIirLyWzF6bAuGGDPrwBztNBhwvrCJo=',NULL,0,'umuhiregatarevalentin@gmail.com','','','umuhiregatarevalentin@gmail.com',0,1,'2026-06-22 18:26:44.722094','client',1,0,NULL,'',NULL,NULL),
(31,'pbkdf2_sha256$1000000$cFK0hRGC95EUSId5sn0M9v$WtwZnj7yMK6rG0gMIQUsgMVta4MXNfbW/p3s3o3mdWo=',NULL,0,'simmac01@yahoo.com','','','simmac01@yahoo.com',0,1,'2026-06-22 18:38:35.584122','client',1,0,NULL,'',NULL,NULL),
(32,'pbkdf2_sha256$1000000$EvlZxYnMsPIc4RCA1MDe1e$YVaTJXZzloKEf6hhvDMtAzv7fFyOMKnEGVRgaiul4dc=',NULL,0,'frankmuberuka@gmail.com','','','frankmuberuka@gmail.com',0,1,'2026-06-22 18:50:33.157729','client',1,0,NULL,'',NULL,NULL),
(33,'pbkdf2_sha256$1200000$gWXQty77FXtYADb09R4dgP$nR50ESxPkKwTD8pDMbvk3hvp5hQkJyQ/EQr+8fBF91c=',NULL,0,'ishimwejay@gmail.com','','','ishimwejay@gmail.com',0,1,'2026-06-22 19:32:43.478295','client',0,0,NULL,'',NULL,NULL),
(34,'pbkdf2_sha256$1000000$obrFV1SgUrMqbQvlw17MGZ$wiYI+USvsvC8D/04DdaoCKmpom1giU1vTJiwmZVjZbc=',NULL,0,'stevenkazoora@yahoo.com','','','stevenkazoora@yahoo.com',0,1,'2026-06-22 19:46:15.025963','client',1,0,NULL,'',NULL,NULL),
(36,'pbkdf2_sha256$1000000$4COJsIzbozgJ9QIpiC1gZM$iPkpVFo8D0z4e716RhVuAKoZFxlLEyAT2bWVwA2NGRg=',NULL,0,'jennydusabimana4@gmail.com','','','jennydusabimana4@gmail.com',0,1,'2026-06-26 20:37:14.725922','client',1,0,NULL,'',NULL,NULL),
(37,'pbkdf2_sha256$1000000$KKPZDZdgFn8PcBTHX15kAx$eVAYw+qpSHSzJkcjaCOsNL/UrIX4WEjFBkRgACoBJjM=',NULL,0,'gatera1anicet@gmail.com','','','gatera1anicet@gmail.com',0,1,'2026-06-26 20:47:25.662577','client',0,0,NULL,'',NULL,NULL),
(40,'pbkdf2_sha256$1000000$VYjY1ccORFOrBKngpljZRI$k4Qc8qCNDZD2PNXjoHyI8cTj+KtA3DZY+jd1xcrYy/8=',NULL,0,'higirogatoc@gmail.com','','','higirogatoc@gmail.com',0,1,'2026-06-27 07:22:15.965716','client',1,0,NULL,'',NULL,NULL),
(41,'pbkdf2_sha256$1000000$0Ug6Z6EZphhAOju3azHdyL$iPg2SXots1ST9q0w1DBAWUPxWGlnmk8rk0gcRy3lWHY=',NULL,0,'langatchirchir@gmail.com','','','langatchirchir@gmail.com',0,1,'2026-06-27 07:31:14.784394','client',0,0,NULL,'',NULL,NULL),
(42,'pbkdf2_sha256$1000000$CMfXHFPtSShzFy1ZAhHoQI$lscunE7IDcIQFbBbGtnNApD8jZRNCqIPWJCWsL65JJQ=',NULL,0,'dushimepazo@gmail.com','','','dushimepazo@gmail.com',0,1,'2026-06-27 07:42:42.052769','client',1,0,NULL,'',NULL,NULL),
(43,'pbkdf2_sha256$1000000$u1bMAmoMbDHae03IRN5mxI$do802zsrWRwgv5I/yOiii3QibGTHccM8WipaQtgZTzI=',NULL,0,'uwaselannah1@gmail.com','','','uwaselannah1@gmail.com',0,1,'2026-06-27 07:50:35.654625','client',1,0,NULL,'',NULL,NULL),
(44,'pbkdf2_sha256$1000000$HdnighgXa9QCzf6Uz3WCJh$VLtU70uFY6ydPdkot5sKNTs64y3yViG0o1m/OPxGLhI=',NULL,0,'ngogaserge02@gmail.com','','','ngogaserge02@gmail.com',0,1,'2026-06-27 08:13:00.142208','client',1,0,NULL,'',NULL,NULL),
(45,'pbkdf2_sha256$1200000$GV5BUIdJ790gHQLsM8N5dG$ATaUKgLTgqc3MEF8rQRmjHIGNpZUhbqNECKZ1dn6aJ8=',NULL,0,'bymariegrace@gmail.com','','','bymariegrace@gmail.com',0,1,'2026-06-27 10:06:27.859322','client',0,0,NULL,'',NULL,NULL),
(46,'pbkdf2_sha256$1000000$WygTiCHmIcT0Rf0noSr92u$05NppUZOdwvyZstGghYetekvKGROVnwqUN+YhTwV0ew=',NULL,0,'crstmuna@gmail.com','','','crstmuna@gmail.com',0,1,'2026-06-27 10:21:47.029619','client',1,0,NULL,'',NULL,NULL),
(47,'pbkdf2_sha256$1000000$PmaYRmnNrdPhttI7QIfTMQ$M0DfdcjMfvrbOYxFeQcDSdZSBELOaHosHKiV5GOPRLI=',NULL,0,'sanoelyat6@gmail.com','','','sanoelyat6@gmail.com',0,1,'2026-07-01 10:36:56.540996','client',1,0,NULL,'',NULL,NULL),
(48,'pbkdf2_sha256$1200000$DiFHS0RdoPDA4Dujn74ONs$0DuG2/EyHtT6i2MfEos1sQ/U+RoVKH4A4vzqBKhVuFY=',NULL,0,'gagamarshall9@gmail.com','','','gagamarshall9@gmail.com',0,1,'2026-07-01 10:56:33.032801','client',0,0,NULL,'',NULL,NULL),
(49,'pbkdf2_sha256$1000000$qYcQB6w3pEipft12d3i10N$p8gMt1gjRhBo0cqorrGwe0iZhuxBlfOJ+axeB4ZTTt0=',NULL,0,'hirumukunzichance@gmail.com','','','hirumukunzichance@gmail.com',0,1,'2026-07-01 11:47:38.635871','client',1,0,NULL,'',NULL,NULL),
(50,'pbkdf2_sha256$1000000$7WIn4aBNMW4i5uuNUBJBIz$Gb2gDztMgblW0y36yweCo/rvPoTqh5s32Mq5t1H4ouk=',NULL,0,'ttoussaint02@gmail.com','','','ttoussaint02@gmail.com',0,1,'2026-07-01 13:49:04.364098','client',1,0,NULL,'',NULL,NULL),
(51,'pbkdf2_sha256$1000000$JFtMyAIihX0icFQQtp3MQm$6jeR2Qv0sTXI3BZ4GvHWmD6RLDw0Gv15j8jbzjueSMo=',NULL,0,'karangwaarsene1@gmail.com','','','karangwaarsene1@gmail.com',0,1,'2026-07-01 13:54:52.372357','client',1,0,NULL,'',NULL,NULL),
(52,'pbkdf2_sha256$1000000$YEawuJJBpAk10jrzxS6hov$7fNdnkbDeJiBkIlC0P5FOx0COP2ow9GY5wOsbzwRh+U=',NULL,0,'bertrand1998@gmail.com','','','bertrand1998@gmail.com',0,1,'2026-07-01 15:23:39.180895','client',1,0,NULL,'',NULL,NULL),
(55,'pbkdf2_sha256$1200000$RlHnqBxSq4WHM1NU4LfExn$KqrIMIwsGX8r4ReUaFQg3e56N1K4AaRQvnRvQkHl6Dw=',NULL,0,'benitaatete@gmail.com','','','benitaatete@gmail.com',0,1,'2026-07-02 19:00:07.145454','client',0,0,NULL,'',NULL,NULL),
(56,'pbkdf2_sha256$1000000$Gf3dAy0GAYXWW7dIjmc7Vj$glfQWYSEHP572hMf0/8vlvOKY7yiIBrfGCw5vxAl1O0=',NULL,0,'bridgettumusingize9@gmail.com','','','bridgettumusingize9@gmail.com',0,1,'2026-07-02 19:11:15.691096','client',1,0,NULL,'',NULL,NULL),
(57,'pbkdf2_sha256$1200000$8CCPLrIxZY0N0uDaEbBZgg$riORVrbxl52i5tfAAKeWX5E6eBZzC7Pcb1gOf9inVEk=',NULL,0,'mwangiladaniel9@gmail.com','','','mwangiladaniel9@gmail.com',0,1,'2026-07-02 19:22:30.175981','client',0,0,NULL,'',NULL,NULL),
(58,'pbkdf2_sha256$1200000$UwaM9qS1kFp7c3Rn8wsa77$q9YuHuf6aLfsYywOOKZQ3CfZllQJADMcJI0iaBOkQMs=',NULL,0,'tetahonor372@gmail.com','','','tetahonor372@gmail.com',0,1,'2026-07-02 19:46:33.205938','client',0,0,NULL,'',NULL,NULL),
(59,'pbkdf2_sha256$1000000$ql9KoySvkARoxBojax6urJ$bryt1FvjGrRYbg6wwPkHpyTjrfZFqC0U5g+bOHFZaZA=',NULL,0,'confiance.cyubahiro@ampersand.solar','','','confiance.cyubahiro@ampersand.solar',0,1,'2026-07-03 15:00:13.942123','client',1,0,NULL,'',NULL,NULL),
(60,'pbkdf2_sha256$1000000$HL2oV4Js92kCs13uLmGgYO$0d7mrO1dl5hufLzZIiLLdGmYqG0WLGOjjqrmG3fZs34=',NULL,0,'mutanganaa63@gmail.com','','','mutanganaa63@gmail.com',0,1,'2026-07-06 09:53:51.517743','client',1,0,NULL,'',NULL,NULL),
(62,'pbkdf2_sha256$1200000$H3umLzS2E62PLIGLCnevVV$39b5HvxYaslyW9qtmpRP92zJlV1P23Bo29nbRxsBWy4=',NULL,0,'ntakirutimanavincent93@gmail.com','','','ntakirutimanavincent93@gmail.com',0,1,'2026-07-14 16:30:45.960117','client',1,0,NULL,'',NULL,NULL),
(63,'pbkdf2_sha256$1200000$K1KjVOw4tDFoX4AvkSA9Xv$fkBvsQjdoTIOOss1edJRMj2yrE+N/IPSXBVVF98igdY=',NULL,0,'rongas10@gmail.com','','','rongas10@gmail.com',0,1,'2026-07-14 17:17:12.186833','client',1,0,NULL,'',NULL,NULL),
(64,'pbkdf2_sha256$1200000$RbDReAYFL7qoxxIzhY2Nyb$PtuAO/O4ghneXpjw0oGHZxCcpnhCKOHxK7emUhdUrQA=',NULL,0,'hagenarwaka@gmail.com','','','hagenarwaka@gmail.com',0,1,'2026-07-14 17:51:51.047172','client',1,0,NULL,'',NULL,NULL),
(65,'pbkdf2_sha256$1200000$Cw9P6YUyKM37v9G14kCrzK$FSGbrIySwyFU0VhfdBEF1X6Cah0y+zkEYO7P7GBnPCU=',NULL,0,'karimntakirutimana17@gmail.com','','','karimntakirutimana17@gmail.com',0,1,'2026-07-14 18:05:44.168425','client',1,0,NULL,'',NULL,NULL),
(66,'pbkdf2_sha256$1200000$pqGK1fX6oRvg2cBXTsEsQw$KCdPG7bgWmTsONphtF9LEWG8UfRQdwPHg7efFZO0pI8=',NULL,0,'rurangwanadine7@gmail.com','','','rurangwanadine7@gmail.com',0,1,'2026-07-20 14:27:43.250377','client',1,0,NULL,'',NULL,NULL),
(67,'pbkdf2_sha256$1200000$lKCx0h4EXCYrBtML8QTKal$txd4NE9yk6DG0gITeLECWBsP2v4eRbZvUUpz3pUTJqA=',NULL,0,'0788602822m@gmail.com','','','0788602822m@gmail.com',0,1,'2026-07-20 14:39:50.506403','client',1,0,NULL,'',NULL,NULL),
(68,'pbkdf2_sha256$1200000$NAEYOnDqFaADjjj7yCn2FT$YbZyKuY+bo4Hd2qtyyiBAGMXSkeaVT2JusnvRrNT1mA=',NULL,0,'rolmuringa@gmail.com','','','rolmuringa@gmail.com',0,1,'2026-07-20 15:18:23.740679','client',0,0,NULL,'',NULL,NULL),
(69,'pbkdf2_sha256$1200000$rBIdnliHc9hQAY6sCVzhc8$AlH7G7IiUDGmX8ApmvImbxSWIgexZMC1qXrT++Hwhd8=',NULL,0,'nteziryimanajeanpaul0@gmail.com','','','nteziryimanajeanpaul0@gmail.com',0,1,'2026-07-20 15:38:57.000035','client',1,0,NULL,'',NULL,NULL),
(70,'pbkdf2_sha256$1200000$aoX7sIbpmeCL2YctGnPj2L$fYyjOiN0AfmEPIcDB/syzNu4awXrhvNlnrSRI0tugrI=',NULL,0,'rukundoeeric@gmail.com','','','rukundoeeric@gmail.com',0,1,'2026-07-21 14:22:53.124529','client',1,0,NULL,'',NULL,NULL),
(71,'pbkdf2_sha256$1200000$OrZclNTPTbWhaIoF0wBJD1$YYOUuHwwxWBYgIJEBEELSVSgpLkxSNIVgQWm6pRs9Jk=',NULL,0,'burakebat@gmail.com','','','burakebat@gmail.com',0,1,'2026-07-21 14:51:28.065146','client',1,0,NULL,'',NULL,NULL),
(72,'pbkdf2_sha256$1200000$Og5MVTCFuIIYswes2UN7sj$Np8wHn6GXRTB/7NUkgiJA3DXQzBAyeZnpnF7SMNCLuo=',NULL,0,'muhozadiana62@gmail.com','','','muhozadiana62@gmail.com',0,1,'2026-07-21 15:05:36.215625','client',0,0,NULL,'',NULL,NULL),
(73,'pbkdf2_sha256$1200000$TFCYzMwH31AaVXEEg6IoRr$25fIt6GMf2q6CFbfDEFuxahgacqZFmdZCRbSvzeeYUE=',NULL,0,'chrisaime45@gmail.com','','','chrisaime45@gmail.com',0,1,'2026-07-21 15:13:35.573213','client',0,0,NULL,'',NULL,NULL),
(74,'pbkdf2_sha256$1200000$yoKgMKp57HfGbLdOcILYNN$hb9FEwBCVso1F8iQJ0PytQMjROuF8QojImsJxGQxhFo=',NULL,0,'chinnygigi2020@gmail.com','','','chinnygigi2020@gmail.com',0,1,'2026-07-21 15:26:36.309175','client',1,0,NULL,'',NULL,NULL),
(75,'pbkdf2_sha256$1200000$MRhDCzc8cJmXIP9J7U2Mqi$rrIXiESxzZaUz3udViBcYVvDY3qDkEupVtDl/R1Rd20=',NULL,0,'igizenezaadelphine@gmail.com','','','igizenezaadelphine@gmail.com',0,1,'2026-07-21 15:50:05.044803','client',1,0,NULL,'',NULL,NULL),
(76,'pbkdf2_sha256$1200000$iiSBE1ESWbmkdHhxk9YqSG$BcltZ4mEP5LOhSOL8I+bJHTfI/8/4ImdxgqH5ZC7YFc=',NULL,0,'nishimwemasimbi@gmail.com','','','nishimwemasimbi@gmail.com',0,1,'2026-07-22 08:24:29.207579','client',1,0,NULL,'',NULL,NULL),
(77,'pbkdf2_sha256$1200000$1dc5qD23aMv2s6IYR305hw$gHMV35OhtMNl8q2MS4h10wvu5HqjUnz2jWXbfbBxBK4=',NULL,0,'rukundocedrick6@gmail.com','','','rukundocedrick6@gmail.com',0,1,'2026-07-22 08:33:54.723183','client',0,0,NULL,'',NULL,NULL),
(78,'pbkdf2_sha256$1200000$iOTmLsAvXjDcvqPfqutbDP$gUT4LyTACRujdAevryF4JzZ95WIF5ehG9Al1A5TspPw=',NULL,0,'ebruzzy@gmail.com','','','ebruzzy@gmail.com',0,1,'2026-07-22 09:46:57.062888','client',1,0,NULL,'',NULL,NULL),
(79,'pbkdf2_sha256$1200000$KMNteWEbJ6hQfwCFxmnk3j$Db+2ajM5piJT3lLCEU12gX7Ex1dTyBHP2UhrUO2ut0k=',NULL,0,'sshema@bpr.rw','','','sshema@bpr.rw',0,1,'2026-07-22 09:59:31.107231','client',1,0,NULL,'',NULL,NULL),
(80,'pbkdf2_sha256$1200000$y9g05fB1JaPGH7mcRG2egX$3irpBfRYIPwqTY6cDjt06mDuuUnkqEqX0GhyA9SRPn8=',NULL,0,'mucyojcb@gmail.com','','','mucyojcb@gmail.com',0,1,'2026-07-22 10:12:11.913274','client',0,0,NULL,'',NULL,NULL),
(81,'pbkdf2_sha256$1200000$Owrj9IrBGURhHugozQktyu$SpYrDHe6WJyJoDqbTGymUGvZizK9U38iozRIK4hs5uA=',NULL,0,'evodemwitende@gmail.com','','','evodemwitende@gmail.com',0,1,'2026-07-22 10:27:33.133366','client',1,0,NULL,'',NULL,NULL),
(82,'pbkdf2_sha256$1200000$vlkh5IL8PvHNtaNbtFb1kZ$2Gc655DOLRhgnFp3uURUFITnHhkLNYOX5iMTQZJ9qsU=',NULL,0,'felixmukeshimana9@gmail.com','','','felixmukeshimana9@gmail.com',0,1,'2026-07-22 10:32:32.345222','client',1,0,NULL,'',NULL,NULL),
(83,'pbkdf2_sha256$1200000$uCp2DiHVhXVQqRY6Wprvp5$nlygAfBM60RF/oc/PZZqazYuXt+JxE3B5zvzWlICilI=',NULL,0,'marykembaga@gmail.com','','','marykembaga@gmail.com',0,1,'2026-07-22 10:39:58.635576','client',1,0,NULL,'',NULL,NULL),
(84,'pbkdf2_sha256$1200000$BEmu3kVABCH5xIMjcyLXm8$BaElob0SSJKoaPQE9YD/xB+yHTzoOh+xcLhMgp8UtFQ=',NULL,0,'ymugenga@gmail.com','','','ymugenga@gmail.com',0,1,'2026-07-22 10:49:02.795581','client',0,0,NULL,'',NULL,NULL),
(85,'pbkdf2_sha256$1200000$9XLlRgjrpBUeTfNb43nSdQ$NWVHCd7P5X+WEK6bYW830/DSRPp+Ns3N/SrmcePdqr4=',NULL,0,'niyernesta@gmail.com','','','niyernesta@gmail.com',0,1,'2026-07-27 14:42:38.325239','client',0,0,NULL,'',NULL,NULL),
(86,'pbkdf2_sha256$1200000$3rpPVPMPkyPdRGIXGfnQQB$O4v+URGXGZpNCpU9pfjn/KBHvO3TJ9HRotbeFZgAuo8=',NULL,0,'tegurugopio20@gmail.com','','','tegurugopio20@gmail.com',0,1,'2026-07-27 14:51:51.182826','client',1,0,NULL,'',NULL,NULL),
(87,'pbkdf2_sha256$1200000$o3z3FRUR0RDh3xBW6ldpe1$gVjULfR/JyfFg6RDrFjiVqx5jYprFoDOsJmpzAZS+Wg=',NULL,0,'sebalamuedward45@gmail.com','','','sebalamuedward45@gmail.com',0,1,'2026-07-29 16:22:16.809304','client',1,0,NULL,'',NULL,NULL),
(88,'pbkdf2_sha256$1200000$x3tC6lpBJqmFSdKVBbBLe7$rtwHlu8419GELPMvpvAubQS6o4WU9lZw5vVUcnkP1qQ=',NULL,0,'dannyha2020@gmail.com','','','dannyha2020@gmail.com',0,1,'2026-07-30 16:19:33.933954','client',1,0,NULL,'',NULL,NULL),
(89,'pbkdf2_sha256$1200000$cSlDR8BYlJ1oanfkbZ0u0O$RVjan2e6JhW3jJKAgNijn6OlrLav//1i02VHsVkxF8g=',NULL,0,'junior.sadiki1@gmail.com','','','junior.sadiki1@gmail.com',0,1,'2026-07-30 16:28:52.914699','client',1,0,NULL,'',NULL,NULL),
(90,'pbkdf2_sha256$1200000$hvq9tDezgF7x240Wz9zlZQ$1+7fxLXnDpDaJRCR8ceMYluTgJCBGf6Y0mG6C7nLf0I=',NULL,0,'yvetu82@gmail.com','','','yvetu82@gmail.com',0,1,'2026-07-30 16:39:02.977016','client',0,0,NULL,'',NULL,NULL),
(91,'pbkdf2_sha256$1200000$H69UV1gD2NssKtwf4dWnLW$yaRMyesMbE/unPkFB5/RH65rgjY2zQrrESTHWHfBgJE=',NULL,0,'omondiakwany@gmail.com','','','omondiakwany@gmail.com',0,1,'2026-07-30 17:18:45.642343','client',0,0,NULL,'',NULL,NULL),
(92,'pbkdf2_sha256$1200000$epM59AbDZeDvFhz7Kaqj5W$AveQqD58GG87FlcwRmhlAMY30MvP85YktGO2/QTgxbU=',NULL,0,'benmcyo@gmail.com','','','benmcyo@gmail.com',0,1,'2026-07-30 17:26:24.715496','client',1,0,NULL,'',NULL,NULL),
(93,'pbkdf2_sha256$1200000$WYxyuCmxU4SH0vb9ZxkvTF$Tz38K8mv6MZ2lQ87LnAtW67O3PJK4dATKrMv1cwt5yQ=',NULL,0,'rwaje1@gmail.com','','','rwaje1@gmail.com',0,1,'2026-07-30 17:37:03.666522','client',1,0,NULL,'',NULL,NULL),
(95,'pbkdf2_sha256$1200000$aHQpZg14PRgd7wYHfPyp86$5XPdkt6eAYJJLRr69EeremFimBKTy1MjfN2D26hXOb0=',NULL,0,'mjeanregis5@gmail.com','','','mjeanregis5@gmail.com',0,1,'2026-08-01 16:37:04.199966','client',1,0,NULL,'',NULL,NULL),
(96,'pbkdf2_sha256$1200000$LjHYq56zQw8Rh85Hqcg2PH$ddcGG7jhjrCFgUPnNHmNz09SRk3tdT3xALZBmnmysIs=',NULL,0,'tusiimerebec31@gmail.com','','','tusiimerebec31@gmail.com',0,1,'2026-08-01 16:50:09.612456','client',1,0,NULL,'',NULL,NULL),
(97,'pbkdf2_sha256$1200000$80pnZ95INNi9fHX1S9SbBf$P2tSZkLAUlOAX9eBLyfoKm1GwsYzFcQdA4K2dDSvq44=',NULL,0,'nkundimana1984@gmail.com','','','nkundimana1984@gmail.com',0,1,'2026-08-01 16:58:20.954211','client',0,0,NULL,'',NULL,NULL),
(98,'pbkdf2_sha256$1200000$VRHGReBx4OAPxIWEFtPBZv$2yvL/Y77RDO8ecZu4QCNn7p+Pnw2FCORE7HX9pbmd0g=',NULL,0,'ntoranyidieudonne@gmail.com','','','ntoranyidieudonne@gmail.com',0,1,'2026-08-01 17:35:55.678997','client',1,0,NULL,'',NULL,NULL),
(99,'pbkdf2_sha256$1200000$yO9VoPE3b2Axf1v7yF9dgx$94efgdq2g1uEAmENOQudbORNzq9nNQEApu8nUG0rsyo=',NULL,0,'pacifiquehirwa2@gmail.com','','','pacifiquehirwa2@gmail.com',0,1,'2026-08-01 17:41:16.771980','client',1,0,NULL,'',NULL,NULL),
(100,'pbkdf2_sha256$1200000$WMDkxz3rpa9cNf9Dh235rR$bD1A7M81/JrtbWrRMdNtceRB0TyyPrEDQZj4AANpCDk=',NULL,0,'emmyrutsinda0@gmail.com','','','emmyrutsinda0@gmail.com',0,1,'2026-08-01 17:47:02.708127','client',1,0,NULL,'',NULL,NULL),
(101,'pbkdf2_sha256$1200000$GbJdAdSUDEOCJR70G8K7cQ$OOSeM0MEQj8ABMyBw/CKMTBVtZyHD5OoTyURnUIMpbc=',NULL,0,'kibatengafaith92@gmail.com','','','kibatengafaith92@gmail.com',0,1,'2026-08-04 17:34:34.387414','client',1,0,NULL,'',NULL,NULL),
(102,'pbkdf2_sha256$1200000$vzVdnKbWqbk56wdA68mtxu$e5072qGFemHyOBzMuU1EXYrKMWMEvt4+c2L93/K16kU=',NULL,0,'kabalisapatrick1@gmail.com','','','kabalisapatrick1@gmail.com',0,1,'2026-08-04 17:41:50.318868','client',1,0,NULL,'',NULL,NULL),
(103,'pbkdf2_sha256$1200000$6OhxGMmn5h3LoCd5f9dSL2$d0odfOJKbb0POyhhi/ExHMsc5DwU0UvGENDfblvnkdc=',NULL,0,'kayihuraeric15@gmail.com','','','kayihuraeric15@gmail.com',0,1,'2026-08-05 14:19:37.630388','client',1,0,NULL,'',NULL,NULL),
(104,'pbkdf2_sha256$1200000$aorxPpxjwoEjC0RQ7wnWVa$p7LNgZBOuslV3tpNwiBGPsYPMnEjuC/LvQjG9y/hzFM=',NULL,0,'mukasyl1@gmail.com','','','mukasyl1@gmail.com',0,1,'2026-08-05 14:40:55.656540','client',0,0,NULL,'',NULL,NULL),
(105,'pbkdf2_sha256$1200000$mn9vjEivUjqS99QZDQCaBF$T7X3g7zYJ38QGhYven/ok4qgK2kiRgwKfDNtI9MlDrs=',NULL,0,'mukadotty01@gmail.com','','','mukadotty01@gmail.com',0,1,'2026-08-05 15:01:56.547217','client',1,0,NULL,'',NULL,NULL),
(106,'pbkdf2_sha256$1200000$R1roP67Zcz2y7dAg6Z74Xy$XgpaRwWyhFbxScKlZBBf3ntxvOsqFdb6g08snzPNkac=',NULL,0,'akibap49@gmail.com','','','akibap49@gmail.com',0,1,'2026-08-05 15:22:10.808158','client',0,0,NULL,'',NULL,NULL),
(107,'pbkdf2_sha256$1200000$w0u9ujRs78BYChL9OvErCN$fvnBSdHBOTxgBPwn3cBmCo81bj00OuOUhLNtqhGoVE4=',NULL,0,'t.mucyo@brd.rw','','','t.mucyo@brd.rw',0,1,'2026-08-10 14:03:48.674466','client',1,0,NULL,'',NULL,NULL),
(108,'pbkdf2_sha256$1200000$SrRJ1Sv5LECDumNE3HG732$UD+wz0RjDOPo5Nv2bn4jjX37K9masMQz8YrIFcR6vs4=',NULL,0,'ntirenganyasylvain@gmail.com','','','ntirenganyasylvain@gmail.com',0,1,'2026-08-10 14:26:37.234518','client',0,0,NULL,'',NULL,NULL),
(109,'pbkdf2_sha256$1200000$wp1RZSz84NSCwRzccEOoHr$4sWZ+Qbv4yv9WR9wzgcWobwaapgazigA+z1H1QfqxmY=',NULL,0,'ntagaratheophile@gmail.com','','','ntagaratheophile@gmail.com',0,1,'2026-08-10 14:44:43.034099','client',1,0,NULL,'',NULL,NULL),
(110,'pbkdf2_sha256$1200000$c93ucIP1JVYXBrImCAJ2VH$xSUgJgxQQ0XvU8T0MB1relZhCIyaDJskyrclA26w51Y=',NULL,0,'mfashingabomaojosue001@gmail.com','','','mfashingabomaojosue001@gmail.com',0,1,'2026-08-11 15:58:55.536574','client',0,0,NULL,'',NULL,NULL),
(111,'pbkdf2_sha256$1200000$SjuVd0diGdoLD41L3awvyP$+y+4VtFEJMMgHOxjzyYls8ePrOJ9BZ1NYDo3Vzs1dT0=',NULL,0,'cyubahirotian@gmail.com','','','cyubahirotian@gmail.com',0,1,'2026-08-11 16:07:37.744343','client',0,0,NULL,'',NULL,NULL),
(112,'pbkdf2_sha256$1200000$O4HpHeSJCbG69GVxOGLRi3$uTHDDp6NFVgcCdVpIqDaNQWjSMTAAX5yfalNUnNHKWc=',NULL,0,'uwachantal1998@gmail.com','','','uwachantal1998@gmail.com',0,1,'2026-08-11 16:17:13.925028','client',0,0,NULL,'',NULL,NULL),
(113,'pbkdf2_sha256$1200000$CmRl2ADBz0BGRCj3iH1E8T$9/IlcRO6LdcVIY8xA99HSAxyZUkBQSB8Y1iWi6RqQig=',NULL,0,'g.iradukunda99@gmail.com','','','g.iradukunda99@gmail.com',0,1,'2026-08-11 16:23:10.514372','client',1,0,NULL,'',NULL,NULL),
(114,'pbkdf2_sha256$1200000$EAWqANCBrTqm3Y7GT6DC16$xbsI+BuoapYOaX2bs2falnx9A7ZvJb3WNjgscnVC6i4=',NULL,0,'andreahimana95@gmail.com','','','andreahimana95@gmail.com',0,1,'2026-08-11 16:34:15.943492','client',1,0,NULL,'',NULL,NULL),
(115,'pbkdf2_sha256$1200000$rYpszoSRAdb5hE9IXPTQ6z$Un6ObdSdrutkgHMrlo/zzMrJbB2u1+H/prdzmSaragw=',NULL,0,'oliviertwagirimana91@gmail.com','','','oliviertwagirimana91@gmail.com',0,1,'2026-08-11 17:28:39.636994','client',1,0,NULL,'',NULL,NULL),
(116,'pbkdf2_sha256$1200000$BDXCqpY42nLJ3H0nthSmtO$+lPKf2NkhzqeouaCnA9Dg6pcO28o88wn1VUdgRt1uIc=',NULL,0,'melanieuwamahoro@yahoo.fr','','','melanieuwamahoro@yahoo.fr',0,1,'2026-08-11 17:42:16.841794','client',1,0,NULL,'',NULL,NULL),
(117,'pbkdf2_sha256$1200000$4ABcq1hsLXKRdM1jSxRSvh$UmqhMJQfX097+1YYT82H9tGoJ62VJNf1h4nBaGZ0VJU=',NULL,0,'felicienbaza@gmail.com','','','felicienbaza@gmail.com',0,1,'2026-08-11 18:38:27.807413','client',1,0,NULL,'',NULL,NULL),
(118,'pbkdf2_sha256$1200000$xhyXSgjhDLDimgD1CXAIRs$lbZUsiWM0oK5gms7po4ESm1znK+V6xP8WcgVpsMWB4k=',NULL,0,'dusiclaude2@gmail.com','','','dusiclaude2@gmail.com',0,1,'2026-08-11 18:49:19.183974','client',1,0,NULL,'',NULL,NULL),
(119,'pbkdf2_sha256$1200000$tbuV5bHtyknc4DYnDCr7rN$mGwR63r35/LvGUlbYwP1XrkTUZxXIAcFw/JRBXPtj80=',NULL,0,'andacyayizera@gmail.com','','','andacyayizera@gmail.com',0,1,'2026-08-11 18:57:47.647073','client',1,0,NULL,'',NULL,NULL),
(120,'pbkdf2_sha256$1200000$aWsX9H6d0o9g7owLUqdgrm$iVXKX1QS3Xc9PCc2WfgAcMz1v1GPVzTR3y0G1NUIMso=',NULL,0,'jeandedieu.gasana38@gmail.com','','','jeandedieu.gasana38@gmail.com',0,1,'2026-08-11 19:08:47.004096','client',1,0,NULL,'',NULL,NULL),
(121,'pbkdf2_sha256$1200000$uPWlDQAbG4o7CCSuYu9NOu$75rwK5Ow9HCuhif7Wc+KkrHRjrkvhQ1JsJd8dyHUd1k=',NULL,0,'uwimanamarieclaire20@gmail.com','','','uwimanamarieclaire20@gmail.com',0,1,'2026-08-14 11:26:12.488931','client',1,0,NULL,'',NULL,NULL),
(122,'pbkdf2_sha256$1200000$eOO9wixy9JZt47VYNRxBHO$oKz2kI156k03JeYk4551ISt/awkQnJGMxTBM7cQsV5o=',NULL,0,'iyakaremyejeandamour3@gmail.com','','','iyakaremyejeandamour3@gmail.com',0,1,'2026-08-14 13:49:31.990424','client',1,0,NULL,'',NULL,NULL),
(123,'pbkdf2_sha256$1200000$PYZYKkzS7eBQWDFdXvtRzC$mih0YMlG3sU4oQC7/by/tUSK5HiAsCBph2cF7gbLz0U=',NULL,0,'calebsabiiti5@gmail.com','','','calebsabiiti5@gmail.com',0,1,'2026-08-14 14:19:01.659997','client',1,0,NULL,'',NULL,NULL),
(124,'pbkdf2_sha256$1200000$T5T9pYolTk0wnvQkeiHWzZ$PHY80up1EwbNzLPpsF7Y9e3LWfVZdKG/0XrlSyy1PlY=',NULL,0,'ingabirejacqueline2000@gmail.com','','','ingabirejacqueline2000@gmail.com',0,1,'2026-08-16 10:07:11.263735','client',1,0,NULL,'',NULL,NULL),
(125,'pbkdf2_sha256$1200000$cmnrVeSgIzCjhlAKNhnNPc$XKLPd1KhMj488seIdzo4JgsVjL9E3jCdzmc7YYENFt0=',NULL,0,'mpanoumuhumuriza@gmail.com','','','mpanoumuhumuriza@gmail.com',0,1,'2026-08-16 10:13:17.164454','client',1,0,NULL,'',NULL,NULL),
(126,'pbkdf2_sha256$1200000$Ms1x4nGFOIMDi9ZUBtF3H1$cAOQzfExqNGCTNyYmNBZOJNtMQVTA9xs5H4WLRZim8E=',NULL,0,'nakiwugebetty10@gmail.com','','','nakiwugebetty10@gmail.com',0,1,'2026-08-16 10:24:33.622155','client',1,0,NULL,'',NULL,NULL),
(127,'pbkdf2_sha256$1200000$o96VIz2y3qj4yySifjeYeB$tyOyy3qpUvWkTRX80lFFNQHoMIy0YM3eKBlzglgLJJg=',NULL,0,'sethhakz@gmail.com','','','sethhakz@gmail.com',0,1,'2026-08-16 10:33:23.090167','client',1,0,NULL,'',NULL,NULL),
(128,'pbkdf2_sha256$1200000$HshqDEvxzi87cyr1WO1ifA$zt6oAyfdGp0qJpLF+aXhzyr/HCRQmuPPxRG3bikVL7o=',NULL,0,'suwimanimpaye@gmail.com','','','suwimanimpaye@gmail.com',0,1,'2026-08-16 10:44:05.793912','client',1,0,NULL,'',NULL,NULL),
(129,'pbkdf2_sha256$1200000$e197QMcyLQvIT3wxBsqenQ$k56wuP7xdApOxP+2kC/FI7rmYt9/+Sob8jXQDh1fbrg=',NULL,0,'rogermuhire@gmail.com','','','rogermuhire@gmail.com',0,1,'2026-08-18 19:53:53.256759','client',0,0,NULL,'',NULL,NULL),
(130,'pbkdf2_sha256$1200000$DWTAmS8lgUPfZy1jvnmyZF$15014MdPCWEccm5bdjADbKDq9Wohf9A775c4WOL2nSc=',NULL,0,'ndereriserv96@gmail.com','','','ndereriserv96@gmail.com',0,1,'2026-08-19 11:30:29.783082','client',1,0,NULL,'',NULL,NULL),
(131,'pbkdf2_sha256$1200000$sz1uH5Alh8mgAN0brCINj3$qqPgxGnXGOTQnSssLRDv2zWnUtvFh+MX5tFr8xg+FCs=',NULL,0,'sebusophier3@gmail.com','','','sebusophier3@gmail.com',0,1,'2026-08-19 17:48:58.233362','client',1,0,NULL,'',NULL,NULL),
(132,'pbkdf2_sha256$1200000$TbcuH9RTrzsgydSmREoHC4$DnGmEa98U9fmd2DWgyPsBccxzCPqw7mdX7rMADF+zQ4=',NULL,0,'jmbungira@gmail.com','','','jmbungira@gmail.com',0,1,'2026-08-19 17:57:20.264376','client',1,0,NULL,'',NULL,NULL),
(133,'pbkdf2_sha256$1200000$paGSzDbo77iAlYwnDodw9e$dIFwKFh9gRkRnvr3NEPtthBbXEUVpChtCLw9uyjlzDw=',NULL,0,'yveslaurentbizi@gmail.com','','','yveslaurentbizi@gmail.com',0,1,'2026-08-19 18:38:26.649599','client',0,0,NULL,'',NULL,NULL),
(134,'pbkdf2_sha256$1200000$qXnAsB47Wkvt6yyYEitHuz$G6iHEh96ZZs+Momr1V/IutEJGlr1LbynPvsgeGhYHSI=',NULL,0,'ntizimirapila@gmail.com','','','ntizimirapila@gmail.com',0,1,'2026-08-19 18:47:45.030412','client',1,0,NULL,'',NULL,NULL),
(135,'pbkdf2_sha256$1200000$JmZ8Hc6krwsvpGILdWxUrz$iUTHo29mtKWQwPhOBDfxwbjbig+egkkxv+d2yR/t2rE=',NULL,0,'floriniyo7@gmail.com','','','floriniyo7@gmail.com',0,1,'2026-08-19 18:57:41.576040','client',1,0,NULL,'',NULL,NULL),
(136,'pbkdf2_sha256$1200000$XgBkOzEnqA3M00fAn4y78z$KJfifvbJNzBdnsi+3t3FLBs6dXdz+94YBM6rWwmbe7Q=',NULL,0,'festusuwiyubashye@gmail.com','','','festusuwiyubashye@gmail.com',0,1,'2026-08-22 16:41:45.708250','client',1,0,NULL,'',NULL,NULL),
(137,'pbkdf2_sha256$1200000$TRPvr6jde3BlxqAv1DQass$nwRJHu5B1Auw/W3Kfq/7OHWsenCH2fJ8wjVPUUvJvLM=',NULL,0,'theophsanzimana@gmail.com','','','theophsanzimana@gmail.com',0,1,'2026-08-22 18:52:09.027231','client',1,0,NULL,'',NULL,NULL),
(138,'pbkdf2_sha256$1200000$r6LJpdqST4j66AYGZaZL5M$rSGqeEh4OJfeEYhbdX+KdJPnXw34tBs+72vZ/GX2kEY=',NULL,0,'thidjazi@gmail.com','','','thidjazi@gmail.com',0,1,'2026-08-22 19:00:46.042400','client',0,0,NULL,'',NULL,NULL),
(139,'pbkdf2_sha256$1200000$VSGpoHyJuM1ftfIg2ZZBDo$1H6bbuwiLal5TLXw3PlfoVyzU/YA3OF/zb3PobO561o=',NULL,0,'placide10j@gmail.com','','','placide10j@gmail.com',0,1,'2026-08-24 11:26:08.051759','client',1,0,NULL,'',NULL,NULL),
(140,'pbkdf2_sha256$1200000$qKUEuxkUQQduPEYxCQsQ6v$XCTXbBnou6gaV2UKLiLIu2DiVWQWsDbVNjP1Zy+0TPk=',NULL,0,'jeandamasceneniyongira@gmail.com','','','jeandamasceneniyongira@gmail.com',0,1,'2026-08-24 11:49:33.988039','client',1,0,NULL,'',NULL,NULL),
(141,'pbkdf2_sha256$1200000$GJzJ9dcnDpE7LWlIOmANhr$AF6foQXuC67zg4s8jVo22hxrJiKtkv4XMCSj1Qog5CY=',NULL,0,'nmurebwayire@bpr.rw','','','nmurebwayire@bpr.rw',0,1,'2026-08-24 12:13:42.417483','client',1,0,NULL,'',NULL,NULL),
(142,'pbkdf2_sha256$1200000$oY63luQG82U8SP0zG9TO4O$qvfOZfdcEY9cN6uzHwwU+Uzeskgvere3edqBeFkuwOI=',NULL,0,'mutav.victor@gmail.com','','','mutav.victor@gmail.com',0,1,'2026-08-24 12:22:59.398758','client',1,0,NULL,'',NULL,NULL),
(143,'pbkdf2_sha256$1200000$7SzojIESDxOBqPal52xOUc$Sgds8VkUg1PUky5TvqvmfJ8YmlQ4AAyRDzYQyZQ0s9c=',NULL,0,'ngizwenayomoise@gmail.com','','','ngizwenayomoise@gmail.com',0,1,'2026-08-24 12:38:35.084568','client',1,0,NULL,'',NULL,NULL),
(144,'pbkdf2_sha256$1200000$QLxJrWkUSd1JKrTR3vlOVQ$9duh9bWsGFfdWxaAnNZRMmAV+wtlLX7GwoAYPm9trA0=',NULL,0,'gusengajeanclau@gmail.com','','','gusengajeanclau@gmail.com',0,1,'2026-08-24 12:51:40.493319','client',1,0,NULL,'',NULL,NULL),
(145,'pbkdf2_sha256$1200000$0wP4KeJ6MU3R1Rf6nxhEFQ$kEY7ENFrybz3bgeMdyyyg7w2sx6pLliH2mffD4tfSak=',NULL,0,'ntawuyirutapascasie3@gmail.com','','','ntawuyirutapascasie3@gmail.com',0,1,'2026-08-24 14:01:01.201190','client',1,0,NULL,'',NULL,NULL),
(146,'pbkdf2_sha256$1200000$zvByGiOn5pt61uANJ8eGN8$eN1JXuEgZFlHQtDaihLNyd77mtoso9nyvj5gHPH9Myk=',NULL,0,'Sylvine.MUTAREMARA@bpr.rw','','','Sylvine.MUTAREMARA@bpr.rw',0,1,'2026-08-24 15:06:28.421838','client',1,0,NULL,'',NULL,NULL),
(147,'pbkdf2_sha256$1200000$gfhb6r8JvXb6ozMuGvJ96o$RpQL+yyaRaJLjfnOag3IuJUCe9srgV15sebeTFDS1uE=',NULL,0,'www.nzabahimana@gmail.com','','','www.nzabahimana@gmail.com',0,1,'2026-08-24 19:32:47.820013','client',1,0,NULL,'',NULL,NULL),
(148,'pbkdf2_sha256$1200000$8MrhEHZBvAWfcjSsN3NlvQ$UGW+bqhNBWJJrCPyeE2dTNB0kuAopVdxCXkXGFhuzm8=',NULL,0,'srukundo808@gmail.com','','','srukundo808@gmail.com',0,1,'2026-08-26 07:33:13.261018','client',1,0,NULL,'',NULL,NULL),
(149,'pbkdf2_sha256$1200000$JQfTSGHFAQRM5Egimss9JI$ZZt1Eir7i1CuVylogU2u2KfZvQIgMeJD26PeXsYfrEI=',NULL,0,'Leonard.Bagambaki@marriott.com','','','Leonard.Bagambaki@marriott.com',0,1,'2026-09-01 16:39:34.865020','client',1,0,NULL,'',NULL,NULL),
(150,'pbkdf2_sha256$1200000$bw3JdD5m9rdARfAQVCWEi7$a0WMnYEFNtyRhW7Yd10JKRc5HpxJpKuWW1esDrkj0s0=',NULL,0,'shemile4@gmail.com','','','shemile4@gmail.com',0,1,'2026-09-01 17:03:45.726779','client',0,0,NULL,'',NULL,NULL),
(151,'pbkdf2_sha256$1200000$uyWiAX4erBstAmAO9miV08$I6M4DuFbzA5m33lDoVMuRLkDnIYgHijbPDEXE6H908o=',NULL,0,'carinemutoni135@gmail.com','','','carinemutoni135@gmail.com',0,1,'2026-09-01 17:15:50.684145','client',1,0,NULL,'',NULL,NULL),
(152,'pbkdf2_sha256$1200000$oIU44GZQuWtD38UyqHRrhE$z3I9ofBbJhN6Uy5/uC5//Vqg9zr8GLRQdup18lgFDwc=',NULL,0,'gisalberto@gmail.com','','','gisalberto@gmail.com',0,1,'2026-09-01 18:49:41.477199','client',1,0,NULL,'',NULL,NULL),
(153,'pbkdf2_sha256$1200000$r3ny0JNstHi0wQYldBQfie$2wyd3QH5toEepji2ycmwmsSKnZX1ywxeFwMrM77NKhM=',NULL,0,'bavangainnocent250@gmail.com','','','bavangainnocent250@gmail.com',0,1,'2026-09-01 19:05:33.052272','client',1,0,NULL,'',NULL,NULL),
(154,'pbkdf2_sha256$1200000$7NejHcLkWIUXNhHOmmGrRk$NPyfSUpFOa38FEEoz8tLJz9/o6oLsChOrt00fMdviiE=',NULL,0,'anatholekabanda2020@gmail.com','','','anatholekabanda2020@gmail.com',0,1,'2026-09-10 16:13:17.756813','client',1,0,NULL,'',NULL,NULL),
(155,'pbkdf2_sha256$1200000$p93r3xfPUcjHAQ9YID23gt$c5wrs+zRRqrxo/RFZH7NXng3HCAKZlMkrD+XUOoMwNo=',NULL,0,'nickkirenga@gmail.com','','','nickkirenga@gmail.com',0,1,'2026-09-10 16:30:17.451266','client',1,0,NULL,'',NULL,NULL),
(156,'pbkdf2_sha256$1200000$SeoHOL4V0zyjbgBGXahsED$tyD6phf/MWOvtYMo/XH6XOLT5t4AI6GeI1rdYFWXtro=',NULL,0,'ndahayoilde@gmail.com','','','ndahayoilde@gmail.com',0,1,'2026-09-10 16:48:17.507473','client',1,0,NULL,'',NULL,NULL),
(157,'pbkdf2_sha256$1200000$FAhHx72Q6sRgXT7qrmpgzd$VfkzidsIzJGnbofZ6UcrqKkIGguimvUw7GCV2MRhnFU=',NULL,0,'mukanezagentille6@gmail.com','','','mukanezagentille6@gmail.com',0,1,'2026-09-10 16:54:39.490879','client',1,0,NULL,'',NULL,NULL),
(158,'pbkdf2_sha256$1200000$86Fdfjmd2nWxd8jAiNOF8b$riHAxIV0oki3lqh0wJlD8pmkf68k0v3Boj7ZpLUqhBs=',NULL,0,'jeninah12@gmail.com','','','jeninah12@gmail.com',0,1,'2026-09-10 17:02:21.658152','client',1,0,NULL,'',NULL,NULL),
(159,'pbkdf2_sha256$1200000$sKjvWmqC6oPWn73s7PcNZd$bIQa+BbezLb2S3cYhcJw7UWZI2VYKajd6ArElld+vBc=',NULL,0,'jmvhishamunda500@gmail.com','','','jmvhishamunda500@gmail.com',0,1,'2026-09-10 17:13:52.018314','client',1,0,NULL,'',NULL,NULL),
(160,'pbkdf2_sha256$1200000$ZgaRvGWPMNpuehBWo0JfDa$tRwD/o4zx2sZKcSoKIwMPb4HEdsYA6MP5ikXM92/T3s=',NULL,0,'s.rusimbi@gmail.com','','','s.rusimbi@gmail.com',0,1,'2026-09-10 17:23:13.041003','client',1,0,NULL,'',NULL,NULL),
(161,'pbkdf2_sha256$1200000$M1u3I90FVatMUfiiwCJ4Ir$WTY6JqYHzW/vCUAlGT+ChRWbhfiPluDWFml3dqoT3/Y=',NULL,0,'murenziemmanuel80@gmail.com','','','murenziemmanuel80@gmail.com',0,1,'2026-09-10 17:39:41.822541','client',1,0,NULL,'',NULL,NULL),
(162,'pbkdf2_sha256$1200000$j7l23zw0kke7aaR4wWkgki$GDD3taQjhlmEZrfWo/Yg5q11WFYKpQ4Cazv9Th1g2bE=',NULL,0,'medim456@gmail.com','','','medim456@gmail.com',0,1,'2026-09-10 17:59:45.904273','client',1,0,NULL,'',NULL,NULL),
(163,'pbkdf2_sha256$1200000$yCxe5VtW6ypExNMPEz6fqi$+L99KEnHefxg5yDaX6dZmjJVXh8UugdB+AAxg9mN7Ns=',NULL,0,'muchrist33@yahoo.fr','','','muchrist33@yahoo.fr',0,1,'2026-09-10 18:19:50.378176','client',1,0,NULL,'',NULL,NULL),
(164,'pbkdf2_sha256$1200000$8ai6kmfpOq9MijEkxuvg8U$bFH7PTkHPsgkG7mFx64uTSRcB7KSs7jDu+Z5x7IPu4o=',NULL,0,'halindimanajabel@gmail.com','','','halindimanajabel@gmail.com',0,1,'2026-09-10 18:31:23.295117','client',1,0,NULL,'',NULL,NULL),
(165,'pbkdf2_sha256$1200000$3Hp32mDGKwop7178NvIh4r$Redu//t0/HVFr+bF/9swTcJF5iacZb+HC5U9c1PcXGY=',NULL,0,'manirampa55@gmail.com','','','manirampa55@gmail.com',0,1,'2026-09-10 18:41:04.525682','client',1,0,NULL,'',NULL,NULL),
(166,'pbkdf2_sha256$1200000$5KWtyDQQHkIaC2iMTwKMaT$OOISF7VnlhhTBgFw/I2gcZgFP523yJsWJRnOtK1k+lM=',NULL,0,'mukagatareaurelie1@gmail.com','','','mukagatareaurelie1@gmail.com',0,1,'2026-09-10 18:50:06.308014','client',1,0,NULL,'',NULL,NULL),
(167,'pbkdf2_sha256$1200000$S0hglwAjNOX7VLSqos01FE$VcoFZPEiKZVuNkYCXOQ6kCjP7s2wkaauvAPrRnc8plI=',NULL,0,'nkusip@gmail.com','','','nkusip@gmail.com',0,1,'2026-09-10 19:26:03.489649','client',1,0,NULL,'',NULL,NULL),
(168,'pbkdf2_sha256$1200000$FdnqGVZp1oONbwlPZu8Y7T$CvBcSzc3wHGGsv9yy+QIS9CvKzKwx1bI/t5MtxI3vJA=',NULL,0,'dusdina@yahoo.fr','','','dusdina@yahoo.fr',0,1,'2026-09-10 19:35:24.593495','client',1,0,NULL,'',NULL,NULL),
(169,'pbkdf2_sha256$1200000$GgzWp7Jkya0Qf3JDWrFIlX$SVlsKSb0T95Nsush7S/+58LMG3x123x4gQO9KJxc1RE=',NULL,0,'habavenus@gmail.com','','','habavenus@gmail.com',0,1,'2026-09-10 19:51:28.101897','client',1,0,NULL,'',NULL,NULL),
(170,'pbkdf2_sha256$1200000$h0kQE5rCKrej6f0VsrL99J$3AufJLJOKFqwu4E5KfVltvXSxikwD6aiO+wh77AB9+g=',NULL,0,'jeanclaudecyubahiro@gmail.com','','','jeanclaudecyubahiro@gmail.com',0,1,'2026-09-16 19:40:49.023623','client',1,0,NULL,'',NULL,NULL),
(171,'pbkdf2_sha256$1200000$iwMbPvT2NUnqvzWA0Y5cLK$mYaSeqU/vodZaVWP7IlvFQ36LhPHf5ez01OVyvawp3g=',NULL,0,'theonestus08@gmail.com','','','theonestus08@gmail.com',0,1,'2026-09-16 19:47:50.757565','client',1,0,NULL,'',NULL,NULL),
(172,'pbkdf2_sha256$1200000$YhTi5AOQ3ic0kFRR5414xq$a3g8wHJpAhO31z8JK550pGUfgopBIJ6STrHYewW+qMM=',NULL,0,'unclejohn01991@gmail.com','','','unclejohn01991@gmail.com',0,1,'2026-09-17 16:11:58.468067','client',1,0,NULL,'',NULL,NULL),
(173,'pbkdf2_sha256$1200000$XsgKouFhND2uxMMqhw7FsD$XF/BIGm0lLrRGK2ucjgvalIZoLS3VyQZtI2CQEX2Jas=',NULL,0,'honorinetuyishime4@gmail.com','','','honorinetuyishime4@gmail.com',0,1,'2026-09-17 16:21:10.740445','client',1,0,NULL,'',NULL,NULL),
(174,'pbkdf2_sha256$1200000$TLOcd0bfEA1iOFqNfKEbBr$acAIZStE64e1jKqVGZS6c596eEH7l+sGsfj6W92rrhE=',NULL,0,'julietnassali03@gmail.com','','','julietnassali03@gmail.com',0,1,'2026-09-17 17:00:58.401297','client',1,0,NULL,'',NULL,NULL),
(175,'pbkdf2_sha256$1200000$snuu0U2JvGfwUiJdH2Fkbj$4bBEVnXpiBYowoqJrYCSiAGo0OJSk8JTUtIz7CjeS+M=',NULL,0,'amaijames164@gmail.com','','','amaijames164@gmail.com',0,1,'2026-09-17 17:09:09.653816','client',1,0,NULL,'',NULL,NULL),
(176,'pbkdf2_sha256$1200000$6uZoNXI7ynLAWh3ktrwM5z$LH54M9jW9dkHJXx/mmVRlZ+E+YnOFF+71AAZFVPoxC4=',NULL,0,'kabashajp@gmail.com','','','kabashajp@gmail.com',0,1,'2026-09-17 17:21:32.946928','client',1,0,NULL,'',NULL,NULL),
(177,'pbkdf2_sha256$1200000$T2ZEoUn6px4I1RpJ5YEvgP$ZvKbvQg8GK9IXZiTHxP68BxhIYS2ZET5k3C4V8efLro=',NULL,0,'sebaganjim@gmail.com','','','sebaganjim@gmail.com',0,1,'2026-09-17 17:34:10.045011','client',1,0,NULL,'',NULL,NULL),
(178,'pbkdf2_sha256$1200000$KNN7XNvaA8FO61fuiU0sbL$PmCWOJ86dr0tA+cNZNzKl53kGfjGCoHqXNaW6DW1b9E=',NULL,0,'thjack501@gmail.com','','','thjack501@gmail.com',0,1,'2026-09-17 17:46:31.382643','client',1,0,NULL,'',NULL,NULL),
(179,'pbkdf2_sha256$1200000$LMhrm9ls3yyFv4vOys8ev8$3/1T/q0+rfVHUVTdVUec9MM7CpuCs124K2pzNbiNj/k=',NULL,0,'innocentgatera742@gmail.com','','','innocentgatera742@gmail.com',0,1,'2026-09-17 17:51:44.154701','client',1,0,NULL,'',NULL,NULL),
(180,'pbkdf2_sha256$1200000$SyWoZCZrNWn1fn8oTqbnKV$eyxZYumDmgb2T5DolUNNQ3KTzEMWyil8VyZ5LGJEqWA=',NULL,0,'amiedeomarierose@gmail.com','','','amiedeomarierose@gmail.com',0,1,'2026-09-22 17:01:02.245470','client',1,0,NULL,'',NULL,NULL),
(181,'pbkdf2_sha256$1200000$omiJGUwORcen5YoGMusxMW$W3jA8qQJUio5HXbWWgZWk+cin8Hh3cOXimJlBAGsKz0=',NULL,0,'egideniyomugabo661@gmail.com','','','egideniyomugabo661@gmail.com',0,1,'2026-09-24 12:16:39.660945','client',0,0,NULL,'',NULL,NULL),
(182,'pbkdf2_sha256$1200000$at9zbkmwyityDsNvECr98n$/xJsPlAfs7AEYEWqp28eiHGzU21L5KO+tCLsBqF0YGc=',NULL,0,'gasasirajean18@gmail.com','','','gasasirajean18@gmail.com',0,1,'2026-09-24 20:06:48.583268','client',1,0,NULL,'',NULL,NULL),
(183,'pbkdf2_sha256$1200000$rpZGaN4D8H6AnYdL5MXAqD$OSE4E39QjATYPAh5dkt+2CZc4MLW60pb7AZc2Nkfq88=',NULL,0,'muyombayire.anaclet@gmail.com','','','muyombayire.anaclet@gmail.com',0,1,'2026-09-28 15:34:26.534432','client',1,0,NULL,'',NULL,NULL),
(184,'pbkdf2_sha256$1200000$chhHVbvpgrrzqKIB8JY8Fu$fvbtwFL3CEvgKxU2ootnLuXSzNm0UbvnovAjlTSDkDo=',NULL,0,'emilekaremera4@gmail.com','','','emilekaremera4@gmail.com',0,1,'2026-09-29 19:42:09.157796','client',1,0,NULL,'',NULL,NULL),
(185,'pbkdf2_sha256$1200000$puySrTbVAtq2DSeEw1PHHw$PtKxJXvxbuem3TwaKVRRin0QtK5i1nalswycW/9eBv0=',NULL,0,'niyosamu280@gmail.com','','','niyosamu280@gmail.com',0,1,'2026-09-30 21:24:14.647435','client',1,0,NULL,'',NULL,NULL);
/*!40000 ALTER TABLE `users_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_user_groups`
--

DROP TABLE IF EXISTS `users_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_user_groups_user_id_group_id_b88eab82_uniq` (`user_id`,`group_id`),
  KEY `users_user_groups_group_id_9afc8d0e_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_user_groups_group_id_9afc8d0e_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `users_user_groups_user_id_5f6f5a90_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_user_groups`
--

LOCK TABLES `users_user_groups` WRITE;
/*!40000 ALTER TABLE `users_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_user_user_permissions`
--

DROP TABLE IF EXISTS `users_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_user_user_permissions_user_id_permission_id_43338c45_uniq` (`user_id`,`permission_id`),
  KEY `users_user_user_perm_permission_id_0b93982e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `users_user_user_perm_permission_id_0b93982e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `users_user_user_permissions_user_id_20aca447_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_user_user_permissions`
--

LOCK TABLES `users_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `users_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'KigaliMicroloans'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-17 19:12:04
