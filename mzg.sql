/*
Navicat MySQL Data Transfer

Source Server         : MAZG
Source Server Version : 50639
Source Host           : localhost:3306
Source Database       : mzg

Target Server Type    : MYSQL
Target Server Version : 50639
File Encoding         : 65001

Date: 2018-06-27 10:42:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for oa
-- ----------------------------
DROP TABLE IF EXISTS `oa`;
CREATE TABLE `oa` (
  `id` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `student` varchar(100) DEFAULT NULL,
  `snum` int(255) DEFAULT NULL,
  `sphone` char(255) DEFAULT NULL,
  `shebei` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa
-- ----------------------------
INSERT INTO `oa` VALUES ('2', 'hzg', '2', '139', '29');

-- ----------------------------
-- Table structure for shebei
-- ----------------------------
DROP TABLE IF EXISTS `shebei`;
CREATE TABLE `shebei` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `kind` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `room` int(255) DEFAULT NULL,
  `teacher` varchar(255) DEFAULT NULL,
  `tphone` int(100) DEFAULT NULL,
  `state` varchar(255) DEFAULT '可借',
  `student` varchar(255) DEFAULT '无',
  `snum` int(100) DEFAULT '0',
  `sphone` char(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shebei
-- ----------------------------
INSERT INTO `shebei` VALUES ('24', '计算机类', '计算机设备A', '101', '老计', '101', '借出', 'hzg', '2', '139');
INSERT INTO `shebei` VALUES ('25', '计算机类', '计算机设备B', '102', '老计', '102', '借出', 'zjl', '4', '130');
INSERT INTO `shebei` VALUES ('26', '计算机类', '计算机设备C', '103', '老计', '103', '借出', 'lhf', '3', '130');
INSERT INTO `shebei` VALUES ('27', '土木类', '土木类设备A', '201', '老土', '201', '借出', 'lhf', '3', '130');
INSERT INTO `shebei` VALUES ('28', '土木类', '土木类设备B', '202', '老土', '202', '借出', 'hz', '8', '130');
INSERT INTO `shebei` VALUES ('29', '土木类', '土木类设备C', '203', '老土', '203', '待确认', 'hzg', '2', '139');
INSERT INTO `shebei` VALUES ('30', '机械类', '机械类设备A', '301', '老机', '301', '借出', 'hzg', '2', '139');
INSERT INTO `shebei` VALUES ('31', '机械类', '机械类设备B', '302', '老机', '302', '借出', 'hzg', '2', '139');
INSERT INTO `shebei` VALUES ('32', '机械类', '机械类设备C', '303', '老机', '303', '可借', '无', '0', '0');
INSERT INTO `shebei` VALUES ('33', '电气类', '电气类设备A', '401', '老电', '401', '借出', 'zl', '7', '182');
INSERT INTO `shebei` VALUES ('34', '电气类', '电气类设备B', '402', '老电', '402', '可借', '无', '0', '0');
INSERT INTO `shebei` VALUES ('35', '电气类', '电气类设备C', '403', '老电', '403', '借出', 'lhf', '3', '130');
INSERT INTO `shebei` VALUES ('36', '其他类', '其他A', '501', '老其', '501', '可借', '无', '0', '0');
INSERT INTO `shebei` VALUES ('37', '其他类', '其他B', '502', '老其', '502', '可借', '无', '0', '0');
INSERT INTO `shebei` VALUES ('38', '其他类', '其他C', '503', '老其', '503', '借出', 'lhf', '3', '130');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `student` varchar(255) DEFAULT NULL,
  `snum` int(255) DEFAULT NULL,
  `sphone` char(255) DEFAULT NULL,
  `skey` varchar(255) DEFAULT NULL,
  `count` int(255) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('23', 'root', '1', '133', '11', '0');
INSERT INTO `student` VALUES ('24', 'hzg', '2', '139', '11', '4');
INSERT INTO `student` VALUES ('25', 'lhf', '3', '130', '11', '4');
INSERT INTO `student` VALUES ('28', 'zjl', '4', '130', '11', '1');
INSERT INTO `student` VALUES ('31', 'thw', '5', '132', '11', '0');
INSERT INTO `student` VALUES ('37', 'lhz', '6', '133', '11', '0');
INSERT INTO `student` VALUES ('38', 'zl', '7', '182', '11', '1');
INSERT INTO `student` VALUES ('40', 'hz', '8', '130', '11', '1');
INSERT INTO `student` VALUES ('41', 'lll', '12', '123', '12', '0');
