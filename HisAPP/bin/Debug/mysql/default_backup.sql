-- MySqlBackup.NET 2.3.6
-- Dump Time: 2023-07-06 21:21:44
-- --------------------------------------
-- Server version 8.0.30 MySQL Community Server - GPL


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- 
-- Definition of test
-- 

DROP TABLE IF EXISTS `test`;
CREATE TABLE IF NOT EXISTS `test` (
  `id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 
-- Dumping data for table test
-- 

/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test`(`id`) VALUES(6);
/*!40000 ALTER TABLE `test` ENABLE KEYS */;

-- 
-- Definition of 医生信息
-- 

DROP TABLE IF EXISTS `医生信息`;
CREATE TABLE IF NOT EXISTS `医生信息` (
  `医生编号` varchar(15) NOT NULL,
  `科室` varchar(45) DEFAULT NULL,
  `挂号费` decimal(12,2) DEFAULT NULL,
  `姓名` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`医生编号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 
-- Dumping data for table 医生信息
-- 

/*!40000 ALTER TABLE `医生信息` DISABLE KEYS */;
INSERT INTO `医生信息`(`医生编号`,`科室`,`挂号费`,`姓名`) VALUES('D00001','电诊科    ',20.00,'傅朝辉'),('D00002','检验科    ',20.00,'纪经和'),('D00003','内科      ',20.00,'刘灿鹏'),('D00004','内科      ',15.00,'陈光荣'),('D00005','内科      ',100.00,'刘涵涵'),('D00006','外科      ',5.00,'纪复国'),('D00007','外科      ',20.00,'纪辉煌'),('D00008','中医科',10.00,'陈长法'),('D00009','中医科    ',20.00,'陈东方'),('D00010','中医科    ',13.00,'陈高峰'),('D00011','电诊科    ',25.00,'龚雄英'),('D00012','电诊科    ',15.00,'钟海冬'),('D00013','电诊科    ',35.00,'曾向莉'),('D00014','检验科    ',89.00,'郭罗绮'),('D00015','检验科    ',24.00,'谢寄真'),('D00016','检验科    ',33.00,'姜龙梅'),('D00017','内科      ',64.00,'冯书竹'),('D00018','外科      ',94.00,'范春晖'),('D00019','外科      ',12.00,'赖孤兰'),('D00020','妇科',54.00,'夏云心'),('D00021','神经外科',78.00,'江思萌'),('D00022','中医科    ',36.00,'邱彦红'),('D00023','五官科',53.00,'杜颐然'),('D00024','儿科',83.00,'许家美'),('D00025','健康科',29.00,'赖珍丽'),('D00026','神经内科',55.00,'罗东玲'),('D00027','口腔科',74.00,'蔡丝娜'),('D00028','空腔科',23.00,'邵晨旭');
/*!40000 ALTER TABLE `医生信息` ENABLE KEYS */;

-- 
-- Definition of 医生密码表
-- 

DROP TABLE IF EXISTS `医生密码表`;
CREATE TABLE IF NOT EXISTS `医生密码表` (
  `医生编号` varchar(30) NOT NULL,
  `密码` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`医生编号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 
-- Dumping data for table 医生密码表
-- 

/*!40000 ALTER TABLE `医生密码表` DISABLE KEYS */;
INSERT INTO `医生密码表`(`医生编号`,`密码`) VALUES('D00001','114514'),('D00003','123456'),('D00007','123456'),('D00010','123456'),('D00011','123456'),('D00018','123456'),('D00020','123456');
/*!40000 ALTER TABLE `医生密码表` ENABLE KEYS */;

-- 
-- Definition of 挂号信息
-- 

DROP TABLE IF EXISTS `挂号信息`;
CREATE TABLE IF NOT EXISTS `挂号信息` (
  `病人编号` varchar(15) NOT NULL,
  `姓名` varchar(30) DEFAULT NULL,
  `性别` varchar(2) NOT NULL,
  `挂号科室` varchar(30) DEFAULT NULL,
  `挂号费用` decimal(12,2) DEFAULT NULL,
  `医生编号` varchar(30) DEFAULT NULL,
  `医生` varchar(30) DEFAULT NULL,
  `时间` datetime DEFAULT NULL,
  `是否就诊` varchar(2) DEFAULT '0',
  PRIMARY KEY (`病人编号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 
-- Dumping data for table 挂号信息
-- 

/*!40000 ALTER TABLE `挂号信息` DISABLE KEYS */;
INSERT INTO `挂号信息`(`病人编号`,`姓名`,`性别`,`挂号科室`,`挂号费用`,`医生编号`,`医生`,`时间`,`是否就诊`) VALUES('P00042','马聪','男','妇科',54.00,'D00020','夏云心','2023-07-04 19:18:29','1'),('P00043','龙华','女','外科',94.00,'D00018','范春晖','2023-07-04 19:21:30','1'),('P00044','李华','男','电诊科',25.00,'D00011','龚雄英','2023-07-04 19:42:31','1'),('P00045','马聪儿','女','妇科',54.00,'D00020','夏云心','2023-07-05 14:30:38','1');
/*!40000 ALTER TABLE `挂号信息` ENABLE KEYS */;

-- 
-- Definition of 病人信息库
-- 

DROP TABLE IF EXISTS `病人信息库`;
CREATE TABLE IF NOT EXISTS `病人信息库` (
  `编号` varchar(15) NOT NULL,
  `姓名` varchar(30) DEFAULT NULL,
  `性别` varchar(2) DEFAULT NULL,
  `年龄` varchar(15) DEFAULT NULL,
  `电话` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`编号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 
-- Dumping data for table 病人信息库
-- 

/*!40000 ALTER TABLE `病人信息库` DISABLE KEYS */;
INSERT INTO `病人信息库`(`编号`,`姓名`,`性别`,`年龄`,`电话`) VALUES('P00001','孔广 ','男','20','13316552431'),('P00007','郭刚','男','20','13316552431'),('P00008','孔瑞昌','男','20','13316552431'),('P00009','秦会云 ','女','20','13316552431'),('P00010','于绍璐','女','20','13316552431'),('P00011','尚锋','男','20','13316552431'),('P00013','刘晓飞','女','20','13316552431'),('P00021','韩文龙','男','20','13316552431'),('P00023','谭苗苗','女','20','13316552431'),('P00027','徐洪磊','男','20','13316552431'),('P00030','翟得旭','男','20','13316552431'),('P00031','翟德旭','男','20','13316552431'),('P00032','刘红','女','20','13316552431'),('P00033','韩明华','男','20','13316552431'),('P00038','王艳东','女','20','13316552431'),('P00039','马聪','男','20','18737284732'),('P00042','马聪','男','20','123456789'),('P00043','龙华','女','20','123456789'),('P00045','马聪儿','女','21','1238838288');
/*!40000 ALTER TABLE `病人信息库` ENABLE KEYS */;

-- 
-- Definition of 科室信息
-- 

DROP TABLE IF EXISTS `科室信息`;
CREATE TABLE IF NOT EXISTS `科室信息` (
  `编号` varchar(100) NOT NULL,
  `名称` varchar(100) DEFAULT NULL,
  `备注` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`编号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 
-- Dumping data for table 科室信息
-- 

/*!40000 ALTER TABLE `科室信息` DISABLE KEYS */;
INSERT INTO `科室信息`(`编号`,`名称`,`备注`) VALUES('R00001','中医科',''),('R00002','外科',''),('R00003','内科',''),('R00004','口腔科',''),('R00005','儿科',''),('R00006','妇科',''),('R00007','五官科',''),('R00008','健康科','附属医院'),('R00009','神经外科','附属医院'),('R00010','传染病科','无'),('R00011','护理部','无'),('R00012','新外科',' '),('R00013','电诊科','');
/*!40000 ALTER TABLE `科室信息` ENABLE KEYS */;

-- 
-- Definition of 结算信息
-- 

DROP TABLE IF EXISTS `结算信息`;
CREATE TABLE IF NOT EXISTS `结算信息` (
  `病人编号` varchar(15) NOT NULL,
  `姓名` varchar(30) DEFAULT NULL,
  `挂号费` varchar(30) DEFAULT NULL,
  `药品费` varchar(30) DEFAULT NULL,
  `药品名称及数量` varchar(100) DEFAULT NULL,
  `总费用` varchar(30) DEFAULT NULL,
  `是否结算` varchar(2) DEFAULT '0',
  PRIMARY KEY (`病人编号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 
-- Dumping data for table 结算信息
-- 

/*!40000 ALTER TABLE `结算信息` DISABLE KEYS */;
INSERT INTO `结算信息`(`病人编号`,`姓名`,`挂号费`,`药品费`,`药品名称及数量`,`总费用`,`是否结算`) VALUES('P00042','马聪','54.00','11','先锋霉素*3,乙肝疫苗*1','65.00','0'),('P00043','龙华','94.00','22','右旋糖*2,先锋霉素*1,林可霉素*3','116.00','0'),('P00044','李华','25.00','14.4','林可霉素*3','39.40','0'),('P00045','马聪儿','54.00','48.5','达力新*2,庆大霉素片*3','102.50','0');
/*!40000 ALTER TABLE `结算信息` ENABLE KEYS */;

-- 
-- Definition of 药品信息
-- 

DROP TABLE IF EXISTS `药品信息`;
CREATE TABLE IF NOT EXISTS `药品信息` (
  `编号` varchar(20) NOT NULL,
  `名称` varchar(150) DEFAULT NULL,
  `单价` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`编号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 
-- Dumping data for table 药品信息
-- 

/*!40000 ALTER TABLE `药品信息` DISABLE KEYS */;
INSERT INTO `药品信息`(`编号`,`名称`,`单价`) VALUES('M00001','青霉素','20.00'),('M00002','丁胺卡那','3.10'),('M00003','林可霉素','4.80'),('M00004','先锋霉素','3.00'),('M00005','右旋糖','4.60'),('M00006','乙肝疫苗','5.00'),('M00007','毛冬青','7.30'),('M00008','三九参麦','17.00'),('M00009','柴胡','0.60'),('M00010','红霉素片','1.30'),('M00011','乙酰罗旋枚素片','12.00'),('M00012','罗红霉素片','6.60'),('M00013','阿其霉素','37.00'),('M00014','交沙霉素','13.50'),('M00015','环丙沙星片','15.00'),('M00016','达力新','24.00'),('M00017','氟哌酸','0.10'),('M00018','庆大霉素片','0.50'),('M00019','黄连素片','0.10'),('M00020','百炎净','0.60'),('M00021','幼儿泰诺林','12.00'),('M00022','消炎痛','0.30'),('M00023','安定片','0.10'),('M00024','朴尔敏片','0.10'),('M00025','息思敏','14.50'),('M00026','赛庚定','0.20'),('M00027','潘生丁','0.20'),('M00028','酮替芬','0.70'),('M00029','强的松片','0.20'),('M00030','必嗽平','0.10'),('M00031','丽珠肠乐','14.30'),('M00032','思密达','2.00'),('M00033','牛黄酸','11.20'),('M00034','胃友','8.00'),('M00035','腹可胺','10.80'),('M00036','雷尼地丁','1.90'),('M00037','甲青脒胍','0.40'),('M00038','阿司匹林片','18.00'),('M00039','七叶神安片','4.15'),('M00040','生化丸','3.38'),('M00041','安胎丸','3.10'),('M00042','白凤丸','16.60'),('M00043','人参卫生丸','14.50'),('M00044','巴戟补肾丸','11.80'),('M00045','陈夏健胃丸 ','2.65'),('M00046','归脾丸','6.00'),('M00047','补中丸','5.00'),('M00048','六味丸','2.50'),('M00049','壮腰丸','5.10'),('M00050','正气水','10.80'),('M00051','小柴胡冲剂','6.50'),('M00052','金嗓子','4.10'),('M00053','西瓜霜','2.05'),('M00054','育胎丸','18.00'),('M00055','孕康口服液','23.00'),('M00056','喉风散','3.90'),('M00057','樟脑酊','27.80'),('M00058','颠茄酊','10.20'),('M00059','复方感冒灵','0.10'),('M00060','速效伤风胶囊','1.50'),('M00061','湿毒清','6.80'),('M00062','百多邦','12.80'),('M00063','阿昔洛韦软膏','12.80'),('M00064','皮宝霜','9.00'),('M00065','克霉唑软膏','3.40'),('M00066','红霉素软膏','3.10'),('M00067','新霉素滴耳油','4.30'),('M00068','皮炎平','7.20'),('M00069','皮康霜','8.20'),('M00070','达克宁霜','13.00'),('M00071','治糜灵栓','24.00'),('M00072','克霉素唑栓','4.20'),('M00073','妇炎栓','17.00'),('M00074','聚维酮碘栓','17.00'),('M00075','奥平栓','26.71'),('M00076','米可定栓','16.60'),('M00077','妇安肤灵','9.80'),('M00078','肤阴洁','7.20'),('M00079','达克宁栓','16.80');
/*!40000 ALTER TABLE `药品信息` ENABLE KEYS */;

-- 
-- Definition of 诊断信息
-- 

DROP TABLE IF EXISTS `诊断信息`;
CREATE TABLE IF NOT EXISTS `诊断信息` (
  `编号` varchar(10) NOT NULL,
  `病人编号` varchar(15) DEFAULT NULL,
  `药品编号` varchar(20) DEFAULT NULL,
  `药品名称` varchar(30) DEFAULT NULL,
  `药品数量` varchar(10) DEFAULT NULL,
  `药品价格` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`编号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 
-- Dumping data for table 诊断信息
-- 

/*!40000 ALTER TABLE `诊断信息` DISABLE KEYS */;
INSERT INTO `诊断信息`(`编号`,`病人编号`,`药品编号`,`药品名称`,`药品数量`,`药品价格`) VALUES('Z00001','P00043','M00005','右旋糖','2','4.60'),('Z00002','P00043','M00004','先锋霉素','1','3.00'),('Z00003','P00043','M00003','林可霉素','3','14.40'),('Z00004','P00044','M00003','林可霉素','3','14.40'),('Z00005','P00045','M00016','达力新','2','48.00'),('Z00006','P00045','M00018','庆大霉素片','3','0.50');
/*!40000 ALTER TABLE `诊断信息` ENABLE KEYS */;

-- 
-- Definition of 费用表
-- 

DROP TABLE IF EXISTS `费用表`;
CREATE TABLE IF NOT EXISTS `费用表` (
  `病人编号` varchar(15) NOT NULL,
  `姓名` varchar(30) NOT NULL,
  `挂号费` decimal(12,2) DEFAULT NULL,
  `药品费` decimal(12,2) DEFAULT NULL,
  `总费用` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`病人编号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 
-- Dumping data for table 费用表
-- 

/*!40000 ALTER TABLE `费用表` DISABLE KEYS */;

/*!40000 ALTER TABLE `费用表` ENABLE KEYS */;


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


-- Dump completed on 2023-07-06 21:21:44
-- Total time: 0:0:0:0:117 (d:h:m:s:ms)
