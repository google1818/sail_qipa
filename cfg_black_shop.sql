/*
Navicat MySQL Data Transfer

Source Server         : sail-qipa1
Source Server Version : 50616
Source Host           : rm-bp1ydc1865d2f62z4.mysql.rds.aliyuncs.com:3306
Source Database       : app_sail_qipa1

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2018-06-06 13:43:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cfg_black_shop
-- ----------------------------
DROP TABLE IF EXISTS `cfg_black_shop`;
CREATE TABLE `cfg_black_shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) DEFAULT '0',
  `name` varchar(45) DEFAULT '',
  `config` text COMMENT '配置',
  `status` int(11) DEFAULT '1' COMMENT '状态:1=正常,0=下线',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of cfg_black_shop
-- ----------------------------
INSERT INTO `cfg_black_shop` VALUES ('1', '0', '黑市', '{\r\n\"total\":90,\r\n\"list\":[\r\n     {\r\n          \"weight\":30,\r\n          \"total\":270,\r\n          \"list\" : [\r\n						 {\"type\":11,\"weight\":20,\"cid\":0,\"num\":[1],\"st\":1,\"sm\":30000,\"s\":0},\r\n						 {\"type\":12,\"weight\":20,\"cid\":0,\"num\":[1],\"st\":1,\"sm\":30000,\"s\":0},\r\n						 {\"type\":23,\"weight\":20,\"cid\":0,\"num\":[1],\"st\":1,\"sm\":30000,\"s\":0},\r\n						 {\"type\":11,\"weight\":10,\"cid\":0,\"num\":[1],\"st\":2,\"sm\":80,\"s\":4},\r\n						 {\"type\":12,\"weight\":10,\"cid\":0,\"num\":[1],\"st\":2,\"sm\":80,\"s\":4},\r\n						 {\"type\":23,\"weight\":10,\"cid\":0,\"num\":[1],\"st\":2,\"sm\":80,\"s\":4},\r\n						 {\"type\":10,\"weight\":30,\"cid\":425,\"num\":[1],\"st\":2,\"sm\":6000,\"lvn\":1,\"lvx\":24},\r\n						 {\"type\":10,\"weight\":30,\"cid\":426,\"num\":[1],\"st\":2,\"sm\":10000,\"lvn\":20,\"lvx\":34},\r\n						 {\"type\":10,\"weight\":30,\"cid\":427,\"num\":[1],\"st\":2,\"sm\":14000,\"lvn\":30,\"lvx\":44},\r\n						 {\"type\":10,\"weight\":30,\"cid\":428,\"num\":[1],\"st\":2,\"sm\":18000,\"lvn\":40,\"lvx\":54},\r\n						 {\"type\":10,\"weight\":30,\"cid\":429,\"num\":[1],\"st\":2,\"sm\":22000,\"lvn\":50,\"lvx\":64},\r\n						 {\"type\":10,\"weight\":30,\"cid\":430,\"num\":[1],\"st\":2,\"sm\":26000,\"lvn\":60,\"lvx\":70}		\r\n         ]\r\n             \r\n     },\r\n     {\r\n          \"weight\":30,\r\n          \"total\":150,\r\n          \"list\" : [\r\n						 {\"type\":9,\"weight\":20,\"cid\":0,\"num\":[1,3,5],\"st\":1,\"sm\":2000,\"s\":-100},\r\n						 {\"type\":9,\"weight\":20,\"cid\":0,\"num\":[1,3,5],\"st\":2,\"sm\":400,\"s\":100},\r\n						 {\"type\":10,\"weight\":20,\"cid\":303,\"num\":[1,3,5],\"st\":2,\"sm\":600},\r\n						 {\"type\":10,\"weight\":10,\"cid\":226,\"num\":[1],\"st\":2,\"sm\":2000,\"lvn\":10,\"lvx\":50},\r\n						 {\"type\":10,\"weight\":10,\"cid\":227,\"num\":[1],\"st\":2,\"sm\":5000,\"lvn\":40,\"lvx\":60},\r\n						 {\"type\":10,\"weight\":10,\"cid\":228,\"num\":[1],\"st\":2,\"sm\":10000,\"lvn\":60,\"lvx\":70},\r\n						 {\"type\":10,\"weight\":10,\"cid\":432,\"num\":[1],\"st\":2,\"sm\":4800,\"lvn\":1,\"lvx\":24},\r\n						 {\"type\":10,\"weight\":10,\"cid\":433,\"num\":[1],\"st\":2,\"sm\":8000,\"lvn\":20,\"lvx\":34},\r\n						 {\"type\":10,\"weight\":10,\"cid\":434,\"num\":[1],\"st\":2,\"sm\":11200,\"lvn\":30,\"lvx\":44},\r\n						 {\"type\":10,\"weight\":10,\"cid\":435,\"num\":[1],\"st\":2,\"sm\":14400,\"lvn\":40,\"lvx\":54},\r\n						 {\"type\":10,\"weight\":10,\"cid\":436,\"num\":[1],\"st\":2,\"sm\":17600,\"lvn\":50,\"lvx\":64},\r\n						 {\"type\":10,\"weight\":10,\"cid\":437,\"num\":[1],\"st\":2,\"sm\":20800,\"lvn\":60,\"lvx\":70}\r\n           ]\r\n     },\r\n     {\r\n          \"weight\":30,\r\n          \"total\":170,\r\n          \"list\" : [\r\n						 {\"type\":27,\"weight\":30,\"cid\":5,\"num\":[1,3,5],\"st\":1,\"sm\":100000},\r\n						 {\"type\":27,\"weight\":30,\"cid\":6,\"num\":[1,3,5],\"st\":2,\"sm\":400},\r\n						 {\"type\":27,\"weight\":30,\"cid\":7,\"num\":[1,3,5],\"st\":2,\"sm\":1200},\r\n						 {\"type\":27,\"weight\":30,\"cid\":8,\"num\":[1,3,5],\"st\":2,\"sm\":3000},\r\n						 {\"type\":27,\"weight\":50,\"cid\":1,\"num\":[1],\"st\":2,\"sm\":2000,\"g\":0}\r\n					]\r\n     }\r\n]}', '1');
