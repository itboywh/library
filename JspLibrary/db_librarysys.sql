/*
Navicat MySQL Data Transfer

Source Server         : 111
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : db_librarysys

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2021-04-09 22:42:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_bookcase`
-- ----------------------------
DROP TABLE IF EXISTS `tb_bookcase`;
CREATE TABLE `tb_bookcase` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `Column_3` char(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_bookcase
-- ----------------------------
INSERT INTO `tb_bookcase` VALUES ('3', 'A架', null);
INSERT INTO `tb_bookcase` VALUES ('4', 'B架', null);

-- ----------------------------
-- Table structure for `tb_bookinfo`
-- ----------------------------
DROP TABLE IF EXISTS `tb_bookinfo`;
CREATE TABLE `tb_bookinfo` (
  `barcode` varchar(30) DEFAULT NULL,
  `bookname` varchar(70) DEFAULT NULL,
  `typeid` int(10) unsigned DEFAULT NULL,
  `author` varchar(30) DEFAULT NULL,
  `translator` varchar(30) DEFAULT NULL,
  `ISBN` varchar(20) DEFAULT NULL,
  `price` float(8,2) DEFAULT NULL,
  `page` int(10) unsigned DEFAULT NULL,
  `bookcase` int(10) unsigned DEFAULT NULL,
  `inTime` date DEFAULT NULL,
  `operator` varchar(30) DEFAULT NULL,
  `del` tinyint(1) DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_bookinfo
-- ----------------------------
INSERT INTO `tb_bookinfo` VALUES ('9787302047230', 'Java学习指南', '1', '***', '11', '7-302', '39.00', '440', '3', '2007-11-22', 'tsoft', '0', '1');
INSERT INTO `tb_bookinfo` VALUES ('jk', 'kjkj', '1', '***', '', '7-302', '12.00', '0', '1', '2007-11-22', 'tsoft', '1', '2');
INSERT INTO `tb_bookinfo` VALUES ('9787115157690', 'JSP啊', '1', '***', '', '978-7', '89.00', '816', '3', '2007-11-23', 'tsoft', '0', '3');
INSERT INTO `tb_bookinfo` VALUES ('123', '额', '1', '11', '11', '7-302', '11.00', '11', '1', '2007-12-18', 'tsoft', '1', '5');
INSERT INTO `tb_bookinfo` VALUES ('001', '建筑测试', '4', '做做', '的', '7-302', '11.00', '11', '4', '2013-05-03', 'java1234', '0', '6');

-- ----------------------------
-- Table structure for `tb_booktype`
-- ----------------------------
DROP TABLE IF EXISTS `tb_booktype`;
CREATE TABLE `tb_booktype` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `typename` varchar(30) DEFAULT NULL,
  `days` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_booktype
-- ----------------------------
INSERT INTO `tb_booktype` VALUES ('1', '计算机类', '30');
INSERT INTO `tb_booktype` VALUES ('3', '文学类', '35');
INSERT INTO `tb_booktype` VALUES ('4', '建筑类', '20');

-- ----------------------------
-- Table structure for `tb_borrow`
-- ----------------------------
DROP TABLE IF EXISTS `tb_borrow`;
CREATE TABLE `tb_borrow` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `readerid` int(10) unsigned DEFAULT NULL,
  `bookid` int(10) DEFAULT NULL,
  `borrowTime` date DEFAULT NULL,
  `backTime` date DEFAULT NULL,
  `operator` varchar(30) DEFAULT NULL,
  `ifback` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_borrow
-- ----------------------------
INSERT INTO `tb_borrow` VALUES ('1', '1', '1', '2007-11-22', '2007-12-22', 'tsoft', '1');
INSERT INTO `tb_borrow` VALUES ('2', '1', '3', '2007-11-26', '2007-12-26', 'tsoft', '0');
INSERT INTO `tb_borrow` VALUES ('3', '1', '1', '2007-11-26', '2007-12-26', 'tsoft', '0');
INSERT INTO `tb_borrow` VALUES ('4', '3', '6', '2007-12-29', '2007-01-08', 'Tsoft', '0');
INSERT INTO `tb_borrow` VALUES ('5', '3', '1', '2007-12-29', '2008-01-28', 'Tsoft', '0');
INSERT INTO `tb_borrow` VALUES ('6', '3', '3', '2007-12-29', '2008-01-28', 'Tsoft', '1');
INSERT INTO `tb_borrow` VALUES ('7', '1', '6', '2013-05-03', '2013-05-23', 'java1234', '1');
INSERT INTO `tb_borrow` VALUES ('8', '1', '6', '2013-05-03', '2013-05-23', 'java1234', '1');
INSERT INTO `tb_borrow` VALUES ('9', '1', '6', '2013-05-03', '2013-05-23', 'java1234', '1');
INSERT INTO `tb_borrow` VALUES ('10', '1', '1', '2013-05-03', '2013-06-02', 'java1234', '0');

-- ----------------------------
-- Table structure for `tb_giveback`
-- ----------------------------
DROP TABLE IF EXISTS `tb_giveback`;
CREATE TABLE `tb_giveback` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `readerid` int(11) DEFAULT NULL,
  `bookid` int(11) DEFAULT NULL,
  `backTime` date DEFAULT NULL,
  `operator` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_giveback
-- ----------------------------
INSERT INTO `tb_giveback` VALUES ('1', '1', '1', '2007-11-22', 'tsoft');
INSERT INTO `tb_giveback` VALUES ('2', '3', '3', '2007-01-03', 'Tsoft');
INSERT INTO `tb_giveback` VALUES ('3', '1', '6', '2013-05-03', 'java1234');
INSERT INTO `tb_giveback` VALUES ('4', '1', '6', '2013-05-03', 'java1234');
INSERT INTO `tb_giveback` VALUES ('5', '1', '6', '2013-05-03', 'java1234');

-- ----------------------------
-- Table structure for `tb_library`
-- ----------------------------
DROP TABLE IF EXISTS `tb_library`;
CREATE TABLE `tb_library` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `libraryname` varchar(50) DEFAULT NULL,
  `curator` varchar(10) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `createDate` date DEFAULT NULL,
  `introduce` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_library
-- ----------------------------
INSERT INTO `tb_library` VALUES ('1', '是', 'wgh', '1363********', 'ccs', 'wgh717@****.com', 'http://', '1999-05-06', '是');

-- ----------------------------
-- Table structure for `tb_manager`
-- ----------------------------
DROP TABLE IF EXISTS `tb_manager`;
CREATE TABLE `tb_manager` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `PWD` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_manager
-- ----------------------------
INSERT INTO `tb_manager` VALUES ('3', 'java1234', '1234');
INSERT INTO `tb_manager` VALUES ('4', 'admin', 'admin');

-- ----------------------------
-- Table structure for `tb_parameter`
-- ----------------------------
DROP TABLE IF EXISTS `tb_parameter`;
CREATE TABLE `tb_parameter` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cost` int(10) unsigned DEFAULT NULL,
  `validity` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_parameter
-- ----------------------------
INSERT INTO `tb_parameter` VALUES ('1', '45', '3');

-- ----------------------------
-- Table structure for `tb_publishing`
-- ----------------------------
DROP TABLE IF EXISTS `tb_publishing`;
CREATE TABLE `tb_publishing` (
  `ISBN` varchar(20) DEFAULT NULL,
  `pubname` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_publishing
-- ----------------------------
INSERT INTO `tb_publishing` VALUES ('7-302', '电子工业出版社');
INSERT INTO `tb_publishing` VALUES ('978-7', '清华大学出版社');

-- ----------------------------
-- Table structure for `tb_purview`
-- ----------------------------
DROP TABLE IF EXISTS `tb_purview`;
CREATE TABLE `tb_purview` (
  `id` int(11) NOT NULL,
  `sysset` tinyint(1) DEFAULT '0',
  `readerset` tinyint(1) DEFAULT '0',
  `bookset` tinyint(1) DEFAULT '0',
  `borrowback` tinyint(1) DEFAULT '0',
  `sysquery` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_purview
-- ----------------------------
INSERT INTO `tb_purview` VALUES ('3', '1', '1', '1', '1', '1');
INSERT INTO `tb_purview` VALUES ('4', '1', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for `tb_reader`
-- ----------------------------
DROP TABLE IF EXISTS `tb_reader`;
CREATE TABLE `tb_reader` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `sex` varchar(4) DEFAULT NULL,
  `barcode` varchar(30) DEFAULT NULL,
  `vocation` varchar(50) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `paperType` varchar(10) DEFAULT NULL,
  `paperNO` varchar(20) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `createDate` date DEFAULT NULL,
  `operator` varchar(30) DEFAULT NULL,
  `remark` text,
  `typeid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_reader
-- ----------------------------
INSERT INTO `tb_reader` VALUES ('1', 'wgh', '男', '2008010100001', '的', '1980-07-17', '身份证', '2201041980********', '13634*******', 'wgh717@****.com', '2007-11-22', 'tsoft', '的', '1');
INSERT INTO `tb_reader` VALUES ('2', '的', '女', '123123123', '的', '1983-02-22', '身份证', '220', '', '', '2007-12-29', 'tsoft', '', '2');

-- ----------------------------
-- Table structure for `tb_readertype`
-- ----------------------------
DROP TABLE IF EXISTS `tb_readertype`;
CREATE TABLE `tb_readertype` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `number` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_readertype
-- ----------------------------
INSERT INTO `tb_readertype` VALUES ('1', '学生', '20');
INSERT INTO `tb_readertype` VALUES ('2', '教师', '20');
INSERT INTO `tb_readertype` VALUES ('3', '其他', '5');
