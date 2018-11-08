/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : mytest

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-11-05 22:39:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `creditcard`
-- ----------------------------
DROP TABLE IF EXISTS `creditcard`;
CREATE TABLE `creditcard` (
  `Caccountid` varchar(16) NOT NULL,
  `password` varchar(6) DEFAULT NULL,
  `creditLevel` varchar(20) DEFAULT NULL,
  `capital` decimal(10,0) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `creatTime` timestamp NULL DEFAULT NULL,
  `cardType` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `province` varchar(20) DEFAULT NULL,
  `moneyType` varchar(20) DEFAULT NULL,
  `IDnumber` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Caccountid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of creditcard
-- ----------------------------

-- ----------------------------
-- Table structure for `currencyinfo`
-- ----------------------------
DROP TABLE IF EXISTS `currencyinfo`;
CREATE TABLE `currencyinfo` (
  `currencyGroup` varchar(20) DEFAULT NULL,
  `buyIn` double DEFAULT NULL,
  `sellOut` double DEFAULT NULL,
  `maxRate` double DEFAULT NULL,
  `middleRate` double DEFAULT NULL,
  `minRate` double DEFAULT NULL,
  `creatTime` timestamp NULL DEFAULT NULL,
  `CIid` varchar(20) NOT NULL,
  PRIMARY KEY (`CIid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of currencyinfo
-- ----------------------------

-- ----------------------------
-- Table structure for `fexpensecalendar`
-- ----------------------------
DROP TABLE IF EXISTS `fexpensecalendar`;
CREATE TABLE `fexpensecalendar` (
  `Faccountid` varchar(20) DEFAULT NULL,
  `capital` decimal(10,0) DEFAULT NULL,
  `creatTime` timestamp NULL DEFAULT NULL,
  `FecId` int(11) NOT NULL,
  PRIMARY KEY (`FecId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fexpensecalendar
-- ----------------------------

-- ----------------------------
-- Table structure for `foreigncurrency`
-- ----------------------------
DROP TABLE IF EXISTS `foreigncurrency`;
CREATE TABLE `foreigncurrency` (
  `IDnumber` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `capital` decimal(10,0) DEFAULT NULL,
  `cardType` varchar(20) DEFAULT NULL,
  `interest` decimal(10,0) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `creatTime` timestamp NULL DEFAULT NULL,
  `editTime` timestamp NULL DEFAULT NULL,
  `Faccountid` varchar(20) NOT NULL,
  PRIMARY KEY (`Faccountid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of foreigncurrency
-- ----------------------------

-- ----------------------------
-- Table structure for `interesttable`
-- ----------------------------
DROP TABLE IF EXISTS `interesttable`;
CREATE TABLE `interesttable` (
  `interestID` int(11) NOT NULL,
  `depositType` varchar(20) DEFAULT NULL,
  `cycle` char(1) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `interestValue` double DEFAULT NULL,
  PRIMARY KEY (`interestID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of interesttable
-- ----------------------------

-- ----------------------------
-- Table structure for `loan`
-- ----------------------------
DROP TABLE IF EXISTS `loan`;
CREATE TABLE `loan` (
  `loanId` int(11) NOT NULL,
  `IDnumber` varchar(20) DEFAULT NULL,
  `loanType` varchar(20) DEFAULT NULL,
  `proveFile` varchar(20) DEFAULT NULL,
  `capital` decimal(10,0) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `creatTime` timestamp NULL DEFAULT NULL,
  `cardID` varchar(20) DEFAULT NULL,
  `editTime` timestamp NULL DEFAULT NULL,
  `comment` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`loanId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of loan
-- ----------------------------

-- ----------------------------
-- Table structure for `loanapprovalinfo`
-- ----------------------------
DROP TABLE IF EXISTS `loanapprovalinfo`;
CREATE TABLE `loanapprovalinfo` (
  `name` varchar(20) DEFAULT NULL,
  `IDNumber` varchar(20) NOT NULL,
  `loanType` varchar(20) DEFAULT NULL,
  `captial` decimal(10,0) DEFAULT NULL,
  `cardID` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `proveFile` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`IDNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of loanapprovalinfo
-- ----------------------------

-- ----------------------------
-- Table structure for `loanschedule`
-- ----------------------------
DROP TABLE IF EXISTS `loanschedule`;
CREATE TABLE `loanschedule` (
  `loginName` varchar(20) NOT NULL,
  `loanType` varchar(20) DEFAULT NULL,
  `creatTime` date DEFAULT NULL,
  `column` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`loginName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of loanschedule
-- ----------------------------

-- ----------------------------
-- Table structure for `loginuser`
-- ----------------------------
DROP TABLE IF EXISTS `loginuser`;
CREATE TABLE `loginuser` (
  `loginName` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `creatTime` timestamp NULL DEFAULT NULL,
  `editTime` timestamp NULL DEFAULT NULL,
  `userType` varchar(20) DEFAULT NULL,
  `userid` varchar(20) NOT NULL,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of loginuser
-- ----------------------------
INSERT INTO `loginuser` VALUES ('123', '123456', '1', '2018-11-01 10:21:14', '2018-11-01 10:21:17', 'U', '123');
INSERT INTO `loginuser` VALUES ('1234', '123456', '1', '2018-11-01 16:29:53', '2018-11-01 16:29:58', 'D', '1234');
INSERT INTO `loginuser` VALUES ('12345', '123456', '1', '2018-11-01 16:30:03', '2018-11-01 16:30:00', 'A', '12345');

-- ----------------------------
-- Table structure for `loginuserinfo`
-- ----------------------------
DROP TABLE IF EXISTS `loginuserinfo`;
CREATE TABLE `loginuserinfo` (
  `name` varchar(20) DEFAULT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `photo` varchar(20) DEFAULT NULL,
  `userid` varchar(20) NOT NULL,
  `loginname` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `usertype` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of loginuserinfo
-- ----------------------------

-- ----------------------------
-- Table structure for `monthcalendar`
-- ----------------------------
DROP TABLE IF EXISTS `monthcalendar`;
CREATE TABLE `monthcalendar` (
  `Caccountid` varchar(20) DEFAULT NULL,
  `expenseType` varchar(20) DEFAULT NULL,
  `GNO` varchar(20) DEFAULT NULL,
  `capital` decimal(10,0) DEFAULT NULL,
  `creatTime` timestamp NULL DEFAULT NULL,
  `Mid` int(11) NOT NULL,
  PRIMARY KEY (`Mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of monthcalendar
-- ----------------------------

-- ----------------------------
-- Table structure for `rexpensecalendal`
-- ----------------------------
DROP TABLE IF EXISTS `rexpensecalendal`;
CREATE TABLE `rexpensecalendal` (
  `Raccountid` varchar(20) DEFAULT NULL,
  `capital` decimal(10,0) DEFAULT NULL,
  `creatTime` timestamp NULL DEFAULT NULL,
  `RecId` int(11) NOT NULL,
  PRIMARY KEY (`RecId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rexpensecalendal
-- ----------------------------

-- ----------------------------
-- Table structure for `rmbbusiness`
-- ----------------------------
DROP TABLE IF EXISTS `rmbbusiness`;
CREATE TABLE `rmbbusiness` (
  `IDnumber` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `cardType` varchar(20) DEFAULT NULL,
  `capital` decimal(10,0) DEFAULT NULL,
  `interest` decimal(10,0) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `creatTime` timestamp NULL DEFAULT NULL,
  `editTime` timestamp NULL DEFAULT NULL,
  `Raccountid` varchar(20) NOT NULL,
  PRIMARY KEY (`Raccountid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rmbbusiness
-- ----------------------------

-- ----------------------------
-- Table structure for `userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `name` varchar(20) DEFAULT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `photo` varchar(20) DEFAULT NULL,
  `creatTime` timestamp NULL DEFAULT NULL,
  `editTime` timestamp NULL DEFAULT NULL,
  `userid` varchar(20) DEFAULT NULL,
  `IDnumber` varchar(20) NOT NULL,
  PRIMARY KEY (`IDnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('张三', '男', '宁波市浙江大学', '17321510824', '402561078@qq.com', null, null, null, '123', '111');
