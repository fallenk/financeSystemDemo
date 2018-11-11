/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 80012
Source Host           : localhost:3306
Source Database       : mytest

Target Server Type    : MYSQL
Target Server Version : 80012
File Encoding         : 65001

Date: 2018-11-11 12:42:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for creditcard
-- ----------------------------
DROP TABLE IF EXISTS `creditcard`;
CREATE TABLE `creditcard` (
  `Caccountid` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `creditLevel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `capital` decimal(10,0) DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `creatTime` timestamp NULL DEFAULT NULL,
  `cardType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `city` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `province` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `moneyType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `IDnumber` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`Caccountid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of creditcard
-- ----------------------------

-- ----------------------------
-- Table structure for currencyinfo
-- ----------------------------
DROP TABLE IF EXISTS `currencyinfo`;
CREATE TABLE `currencyinfo` (
  `currencyGroup` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `buyIn` double DEFAULT NULL,
  `sellOut` double DEFAULT NULL,
  `maxRate` double DEFAULT NULL,
  `middleRate` double DEFAULT NULL,
  `minRate` double DEFAULT NULL,
  `creatTime` timestamp NULL DEFAULT NULL,
  `CIid` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`CIid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of currencyinfo
-- ----------------------------

-- ----------------------------
-- Table structure for draft
-- ----------------------------
DROP TABLE IF EXISTS `draft`;
CREATE TABLE `draft` (
  `draftID` int(11) NOT NULL AUTO_INCREMENT,
  `IDnumber` varchar(32) DEFAULT NULL,
  `capital` decimal(10,0) DEFAULT NULL,
  `checkID` int(11) DEFAULT NULL,
  `endDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(10) DEFAULT NULL,
  `cardID` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`draftID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of draft
-- ----------------------------
INSERT INTO `draft` VALUES ('1', '123456789123456789', '100', '1', '2018-11-10 09:37:53', '0', null);

-- ----------------------------
-- Table structure for draft_copy
-- ----------------------------
DROP TABLE IF EXISTS `draft_copy`;
CREATE TABLE `draft_copy` (
  `draftID` int(11) NOT NULL AUTO_INCREMENT,
  `IDnumber` varchar(32) DEFAULT NULL,
  `capital` decimal(10,0) DEFAULT NULL,
  `checkID` int(11) DEFAULT NULL,
  `endDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(10) DEFAULT NULL,
  `cardID` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`draftID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of draft_copy
-- ----------------------------
INSERT INTO `draft_copy` VALUES ('1', '123456789123456789', '100', '1', '2018-11-10 09:37:53', '0', null);

-- ----------------------------
-- Table structure for fexpensecalendar
-- ----------------------------
DROP TABLE IF EXISTS `fexpensecalendar`;
CREATE TABLE `fexpensecalendar` (
  `Faccountid` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `capital` decimal(10,0) DEFAULT NULL,
  `creatTime` timestamp NULL DEFAULT NULL,
  `FecId` int(11) NOT NULL,
  PRIMARY KEY (`FecId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of fexpensecalendar
-- ----------------------------

-- ----------------------------
-- Table structure for foreigncurrency
-- ----------------------------
DROP TABLE IF EXISTS `foreigncurrency`;
CREATE TABLE `foreigncurrency` (
  `IDnumber` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `capital` decimal(10,0) DEFAULT NULL,
  `cardType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `interest` decimal(10,0) DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `creatTime` timestamp NULL DEFAULT NULL,
  `editTime` timestamp NULL DEFAULT NULL,
  `Faccountid` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`Faccountid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of foreigncurrency
-- ----------------------------

-- ----------------------------
-- Table structure for interesttable
-- ----------------------------
DROP TABLE IF EXISTS `interesttable`;
CREATE TABLE `interesttable` (
  `interestID` int(11) NOT NULL,
  `depositType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `cycle` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `interestValue` double DEFAULT NULL,
  PRIMARY KEY (`interestID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of interesttable
-- ----------------------------
INSERT INTO `interesttable` VALUES ('1', 'DA', 'D1', '2015-2016', '1.05');
INSERT INTO `interesttable` VALUES ('2', 'DC', 'nu', '2015-2016', '3.05');
INSERT INTO `interesttable` VALUES ('3', 'DA', 'D2', '2015-2016', '1.05');
INSERT INTO `interesttable` VALUES ('4', 'DA', 'D3', '2015-2016', '1.05');
INSERT INTO `interesttable` VALUES ('5', 'DA', 'D4', '2015-2016', '1.05');
INSERT INTO `interesttable` VALUES ('6', 'DA', 'D5', '2015-2016', '1.05');
INSERT INTO `interesttable` VALUES ('7', 'DA', 'D6', '2015-2016', '1.05');
INSERT INTO `interesttable` VALUES ('8', 'DB', 'D1', '2015-2016', '2.05');
INSERT INTO `interesttable` VALUES ('9', 'DB', 'D2', '2015-2016', '2.05');
INSERT INTO `interesttable` VALUES ('10', 'DB', 'D3', '2015-2016', '3.06');
INSERT INTO `interesttable` VALUES ('11', 'LA', 'L1', '2015-2016', '4.56');
INSERT INTO `interesttable` VALUES ('12', 'LB', 'L2', '2015-2016', '3.45');
INSERT INTO `interesttable` VALUES ('13', 'LB', 'L3', '2015-2016', '5.32');

-- ----------------------------
-- Table structure for loan
-- ----------------------------
DROP TABLE IF EXISTS `loan`;
CREATE TABLE `loan` (
  `loanId` int(11) NOT NULL AUTO_INCREMENT,
  `IDnumber` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `loanType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `proveFile` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `capital` decimal(10,0) DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '',
  `creatTime` timestamp NULL DEFAULT NULL,
  `cardID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `editTime` timestamp NULL DEFAULT NULL,
  `comment` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`loanId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of loan
-- ----------------------------
INSERT INTO `loan` VALUES ('2', '123456789123456789', 'A', '/upload_files/proveFile/e1535315de6141dea8238fd5570a1bf9.docx', '100', '0', '2018-11-09 10:22:15', '18771446817763060403', '2018-11-09 10:22:15', null);
INSERT INTO `loan` VALUES ('3', '123456789123456789', 'A', '/upload_files/proveFile/0109201961ad4520950b7c7d67f43eda.docx', '100', '0', '2018-11-09 10:55:13', '18771446817763060403', '2018-11-09 10:55:13', null);
INSERT INTO `loan` VALUES ('4', '123456789123456789', 'A', '/upload_files/proveFile/70b7d2d7537f4ff6b4026d6daffe6937.docx', '100', '0', '2018-11-09 11:01:10', '18771446817763060403', '2018-11-09 11:01:10', null);
INSERT INTO `loan` VALUES ('5', '123456789123456789', 'A', '/upload_files/proveFile/6ac7433e270f4bdb87c796ad30c932d3.docx', '100', '0', '2018-11-09 11:02:38', '18771446817763060403', '2018-11-09 11:02:38', null);
INSERT INTO `loan` VALUES ('6', '123456789123456789', 'A', '/upload_files/proveFile/73375d3be1354004b0b91a4e183502d6.docx', '100', '1', '2018-11-09 11:06:02', '18771446817763060403', '2018-11-09 11:06:02', null);
INSERT INTO `loan` VALUES ('7', '123456789123456789', 'A', '/upload_files/proveFile/73375d3be1354004b0b91a4e183502d6.docx', '100', '1', '2018-11-09 11:06:43', '18771446817763060403', '2018-11-09 11:06:43', null);
INSERT INTO `loan` VALUES ('8', '123456789123456789', 'A', '/upload_files/proveFile/86739eabf2f44b44a284e8b14365849b.docx', '100', '1', '2018-11-09 11:11:56', '52646370386030542125', '2018-11-09 11:11:56', null);
INSERT INTO `loan` VALUES ('9', '123456789123456789', 'A', '/upload_files/proveFile/28baa901699f40908746cbb349f2a1d4.docx', '100', '1', '2018-11-09 11:19:32', '52646370386030542125', '2018-11-09 11:19:32', null);

-- ----------------------------
-- Table structure for loanapprovalinfo
-- ----------------------------
DROP TABLE IF EXISTS `loanapprovalinfo`;
CREATE TABLE `loanapprovalinfo` (
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `IDNumber` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `loanType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `captial` decimal(10,0) DEFAULT NULL,
  `cardID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `proveFile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`IDNumber`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of loanapprovalinfo
-- ----------------------------

-- ----------------------------
-- Table structure for loanschedule
-- ----------------------------
DROP TABLE IF EXISTS `loanschedule`;
CREATE TABLE `loanschedule` (
  `loginName` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `loanType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `creatTime` date DEFAULT NULL,
  `column` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`loginName`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of loanschedule
-- ----------------------------

-- ----------------------------
-- Table structure for loginuser
-- ----------------------------
DROP TABLE IF EXISTS `loginuser`;
CREATE TABLE `loginuser` (
  `loginName` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `creatTime` timestamp NULL DEFAULT NULL,
  `editTime` timestamp NULL DEFAULT NULL,
  `userType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `userid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`userid`) USING BTREE,
  UNIQUE KEY `loginName` (`loginName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of loginuser
-- ----------------------------
INSERT INTO `loginuser` VALUES ('123', '123456', '1', '2018-11-01 00:00:00', '2018-11-01 00:00:00', 'U', '123');
INSERT INTO `loginuser` VALUES ('1234', '123456', null, null, null, null, '1234');
INSERT INTO `loginuser` VALUES ('124', '123456', '1', '2018-11-06 00:00:00', '2018-11-06 00:00:00', 'A', '124');
INSERT INTO `loginuser` VALUES ('125', '123456', '1', '2018-11-06 00:00:00', '2018-11-06 00:00:00', 'D', '125');
INSERT INTO `loginuser` VALUES ('test', '123456', '1', '2018-11-09 00:00:00', '2018-11-09 00:00:00', 'U', '1e2d86bec1b548e3a4e9ffdca88dbdca');
INSERT INTO `loginuser` VALUES ('admin', '123123', '1', '2018-11-10 21:32:08', '2018-11-10 21:32:14', 'A', 'admin');

-- ----------------------------
-- Table structure for loginuserinfo
-- ----------------------------
DROP TABLE IF EXISTS `loginuserinfo`;
CREATE TABLE `loginuserinfo` (
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `sex` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `address` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `photo` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `userid` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `loginname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `usertype` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of loginuserinfo
-- ----------------------------

-- ----------------------------
-- Table structure for monthcalendar
-- ----------------------------
DROP TABLE IF EXISTS `monthcalendar`;
CREATE TABLE `monthcalendar` (
  `Caccountid` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `expenseType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `GNO` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `capital` decimal(10,0) DEFAULT NULL,
  `creatTime` timestamp NULL DEFAULT NULL,
  `Mid` int(11) NOT NULL,
  PRIMARY KEY (`Mid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of monthcalendar
-- ----------------------------

-- ----------------------------
-- Table structure for rexpensecalendal
-- ----------------------------
DROP TABLE IF EXISTS `rexpensecalendal`;
CREATE TABLE `rexpensecalendal` (
  `Raccountid` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `capital` decimal(10,0) DEFAULT NULL,
  `creatTime` timestamp NULL DEFAULT NULL,
  `RecId` int(11) NOT NULL,
  PRIMARY KEY (`RecId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of rexpensecalendal
-- ----------------------------

-- ----------------------------
-- Table structure for rmbbusiness
-- ----------------------------
DROP TABLE IF EXISTS `rmbbusiness`;
CREATE TABLE `rmbbusiness` (
  `IDnumber` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `cardType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `capital` decimal(10,0) DEFAULT NULL,
  `interest` decimal(10,0) DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `creatTime` timestamp NULL DEFAULT NULL,
  `editTime` timestamp NULL DEFAULT NULL,
  `Raccountid` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`Raccountid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of rmbbusiness
-- ----------------------------
INSERT INTO `rmbbusiness` VALUES ('123456789123456789', '123456', 'R', '20', null, '0', '2018-11-09 04:12:10', '2018-11-09 04:13:24', '18771446817763060403');
INSERT INTO `rmbbusiness` VALUES ('123456789123456789', '123456', 'R', '30', null, '0', '2018-11-09 04:04:43', '2018-11-09 04:13:24', '52646370386030542125');
INSERT INTO `rmbbusiness` VALUES ('123456789123456789', '123456', 'R', '0', null, '0', '2018-11-10 13:51:45', '2018-11-10 13:51:45', '84805714261887355871');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `sex` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `address` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `phone` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `photo` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `creatTime` timestamp NULL DEFAULT NULL,
  `editTime` timestamp NULL DEFAULT NULL,
  `userid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `IDnumber` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`IDnumber`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('张三', '男', '宁波市浙江大学', '17321510824', '402561078@qq.com', null, null, null, '123', '111');
INSERT INTO `userinfo` VALUES ('admin1', '男', '测试', '12345678912', '1212@163.com', null, null, null, '124', '112');
INSERT INTO `userinfo` VALUES ('员工1', '女', '测试', '12345678912', '1231@163.com', null, null, null, '125', '113');
INSERT INTO `userinfo` VALUES ('sjc', '1', '浙江大学', '17321510824', '402561078@qq.com', '/upload_files/memberphotos/99e67ea6f4a14e8783cb13eb4585c11c.jpg', '2018-11-09 03:46:47', '2018-11-09 03:46:47', '1e2d86bec1b548e3a4e9ffdca88dbdca', '123456789123456789');
INSERT INTO `userinfo` VALUES ('test', '1', '富达新村5幢', '17321510824', '402561078@qq.com', null, '2018-11-10 12:25:37', '2018-11-10 12:25:37', 'ad297651ad4d450d9470e26c768ab2d5', '123456789123456798');
