/*
Navicat MySQL Data Transfer

Source Server         : sail-qipa1
Source Server Version : 50616
Source Host           : rm-bp1ydc1865d2f62z4.mysql.rds.aliyuncs.com:3306
Source Database       : app_sail_qipa1

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2018-06-11 19:23:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cfg_level
-- ----------------------------
DROP TABLE IF EXISTS `cfg_level`;
CREATE TABLE `cfg_level` (
  `level` int(11) NOT NULL COMMENT '级别',
  `exp` bigint(20) NOT NULL DEFAULT '0' COMMENT '经验底线',
  `title` varchar(16) NOT NULL DEFAULT '' COMMENT '名称',
  `award` varchar(200) NOT NULL DEFAULT '' COMMENT '奖励',
  `param` int(11) DEFAULT '0',
  `bank` bigint(20) NOT NULL,
  `max_exp` int(11) DEFAULT '0',
  `energy` int(11) DEFAULT '0',
  `carriage` int(11) DEFAULT '0',
  PRIMARY KEY (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of cfg_level
-- ----------------------------
INSERT INTO `cfg_level` VALUES ('1', '0', '', '', '0', '50000', '12000', '105', '1');
INSERT INTO `cfg_level` VALUES ('2', '4', '', '', '0', '50000', '14000', '110', '2');
INSERT INTO `cfg_level` VALUES ('3', '20', '', '', '0', '50000', '16000', '115', '3');
INSERT INTO `cfg_level` VALUES ('4', '56', '', '', '0', '50000', '18000', '120', '4');
INSERT INTO `cfg_level` VALUES ('5', '120', '', '', '0', '100000', '20000', '125', '5');
INSERT INTO `cfg_level` VALUES ('6', '220', '', '', '0', '100000', '22000', '130', '6');
INSERT INTO `cfg_level` VALUES ('7', '364', '', '', '0', '100000', '24000', '135', '7');
INSERT INTO `cfg_level` VALUES ('8', '560', '', '', '0', '100000', '26000', '140', '8');
INSERT INTO `cfg_level` VALUES ('9', '816', '', '', '0', '200000', '28000', '145', '9');
INSERT INTO `cfg_level` VALUES ('10', '1140', '', '', '0', '200000', '30000', '150', '10');
INSERT INTO `cfg_level` VALUES ('11', '1440', '', '', '0', '200000', '32000', '155', '11');
INSERT INTO `cfg_level` VALUES ('12', '1803', '', '', '0', '200000', '34000', '160', '12');
INSERT INTO `cfg_level` VALUES ('13', '2235', '', '', '0', '500000', '36000', '165', '13');
INSERT INTO `cfg_level` VALUES ('14', '2742', '', '', '0', '500000', '38000', '170', '14');
INSERT INTO `cfg_level` VALUES ('15', '3330', '', '', '0', '500000', '40000', '175', '15');
INSERT INTO `cfg_level` VALUES ('16', '4005', '', '', '0', '500000', '42000', '180', '16');
INSERT INTO `cfg_level` VALUES ('17', '4773', '', '', '0', '500000', '44000', '185', '17');
INSERT INTO `cfg_level` VALUES ('18', '5640', '', '', '0', '1000000', '46000', '190', '18');
INSERT INTO `cfg_level` VALUES ('19', '6612', '', '', '0', '1000000', '48000', '195', '19');
INSERT INTO `cfg_level` VALUES ('20', '7695', '', '', '0', '1000000', '50000', '200', '20');
INSERT INTO `cfg_level` VALUES ('21', '8695', '', '', '0', '1000000', '52000', '205', '21');
INSERT INTO `cfg_level` VALUES ('22', '9798', '', '', '0', '1000000', '54000', '210', '22');
INSERT INTO `cfg_level` VALUES ('23', '11008', '', '', '0', '1000000', '56000', '215', '23');
INSERT INTO `cfg_level` VALUES ('24', '12330', '', '', '0', '1000000', '58000', '220', '24');
INSERT INTO `cfg_level` VALUES ('25', '13770', '', '', '0', '2000000', '60000', '225', '25');
INSERT INTO `cfg_level` VALUES ('26', '15333', '', '', '0', '2000000', '62000', '230', '26');
INSERT INTO `cfg_level` VALUES ('27', '17023', '', '', '0', '2000000', '64000', '235', '27');
INSERT INTO `cfg_level` VALUES ('28', '18845', '', '', '0', '2000000', '66000', '240', '28');
INSERT INTO `cfg_level` VALUES ('29', '20805', '', '', '0', '2000000', '68000', '245', '29');
INSERT INTO `cfg_level` VALUES ('30', '22908', '', '', '0', '2000000', '70000', '250', '30');
INSERT INTO `cfg_level` VALUES ('31', '25158', '', '', '0', '2000000', '72000', '255', '31');
INSERT INTO `cfg_level` VALUES ('32', '28521', '', '', '0', '2000000', '74000', '260', '32');
INSERT INTO `cfg_level` VALUES ('33', '32105', '', '', '0', '2000000', '76000', '265', '33');
INSERT INTO `cfg_level` VALUES ('34', '35917', '', '', '0', '2000000', '78000', '270', '34');
INSERT INTO `cfg_level` VALUES ('35', '39963', '', '', '0', '3000000', '80000', '275', '35');
INSERT INTO `cfg_level` VALUES ('36', '44250', '', '', '0', '3000000', '82000', '280', '36');
INSERT INTO `cfg_level` VALUES ('37', '48786', '', '', '0', '3000000', '84000', '285', '37');
INSERT INTO `cfg_level` VALUES ('38', '53578', '', '', '0', '3000000', '86000', '290', '38');
INSERT INTO `cfg_level` VALUES ('39', '58632', '', '', '0', '3000000', '88000', '295', '39');
INSERT INTO `cfg_level` VALUES ('40', '63955', '', '', '0', '3000000', '90000', '300', '40');
INSERT INTO `cfg_level` VALUES ('41', '70355', '', '', '0', '3000000', '92000', '305', '41');
INSERT INTO `cfg_level` VALUES ('42', '77079', '', '', '0', '3000000', '94000', '310', '42');
INSERT INTO `cfg_level` VALUES ('43', '84135', '', '', '0', '3000000', '96000', '315', '43');
INSERT INTO `cfg_level` VALUES ('44', '91531', '', '', '0', '3000000', '98000', '320', '44');
INSERT INTO `cfg_level` VALUES ('45', '99275', '', '', '0', '3000000', '100000', '325', '45');
INSERT INTO `cfg_level` VALUES ('46', '107375', '', '', '0', '3000000', '102000', '330', '46');
INSERT INTO `cfg_level` VALUES ('47', '115839', '', '', '0', '3000000', '104000', '335', '47');
INSERT INTO `cfg_level` VALUES ('48', '124675', '', '', '0', '3000000', '106000', '340', '48');
INSERT INTO `cfg_level` VALUES ('49', '133891', '', '', '0', '3000000', '108000', '345', '49');
INSERT INTO `cfg_level` VALUES ('50', '143495', '', '', '0', '5000000', '110000', '350', '50');
INSERT INTO `cfg_level` VALUES ('51', '158495', '', '', '0', '5000000', '112000', '355', '50');
INSERT INTO `cfg_level` VALUES ('52', '176702', '', '', '0', '5000000', '114000', '360', '50');
INSERT INTO `cfg_level` VALUES ('53', '198334', '', '', '0', '5000000', '116000', '365', '50');
INSERT INTO `cfg_level` VALUES ('54', '223615', '', '', '0', '5000000', '118000', '370', '50');
INSERT INTO `cfg_level` VALUES ('55', '252775', '', '', '0', '5000000', '120000', '375', '50');
INSERT INTO `cfg_level` VALUES ('56', '286050', '', '', '0', '5000000', '122000', '380', '50');
INSERT INTO `cfg_level` VALUES ('57', '323682', '', '', '0', '5000000', '124000', '385', '50');
INSERT INTO `cfg_level` VALUES ('58', '365919', '', '', '0', '5000000', '126000', '390', '50');
INSERT INTO `cfg_level` VALUES ('59', '413015', '', '', '0', '5000000', '128000', '395', '50');
INSERT INTO `cfg_level` VALUES ('60', '465230', '', '', '0', '5000000', '130000', '400', '50');
INSERT INTO `cfg_level` VALUES ('61', '522830', '', '', '0', '5000000', '132000', '405', '50');
INSERT INTO `cfg_level` VALUES ('62', '586087', '', '', '0', '5000000', '134000', '410', '50');
INSERT INTO `cfg_level` VALUES ('63', '655279', '', '', '0', '5000000', '136000', '415', '50');
INSERT INTO `cfg_level` VALUES ('64', '730690', '', '', '0', '5000000', '138000', '420', '50');
INSERT INTO `cfg_level` VALUES ('65', '812610', '', '', '0', '5000000', '140000', '425', '50');
INSERT INTO `cfg_level` VALUES ('66', '901335', '', '', '0', '5000000', '142000', '430', '50');
INSERT INTO `cfg_level` VALUES ('67', '997167', '', '', '0', '5000000', '144000', '435', '50');
INSERT INTO `cfg_level` VALUES ('68', '1100414', '', '', '0', '5000000', '146000', '440', '50');
INSERT INTO `cfg_level` VALUES ('69', '1211390', '', '', '0', '5000000', '148000', '445', '50');
INSERT INTO `cfg_level` VALUES ('70', '1330415', '', '', '0', '10000000', '150000', '450', '50');
INSERT INTO `cfg_level` VALUES ('71', '1477415', '', '', '0', '10000000', '150000', '450', '50');
INSERT INTO `cfg_level` VALUES ('72', '1633686', '', '', '0', '10000000', '150000', '450', '50');
INSERT INTO `cfg_level` VALUES ('73', '1799574', '', '', '0', '10000000', '150000', '450', '50');
INSERT INTO `cfg_level` VALUES ('74', '1975431', '', '', '0', '10000000', '150000', '450', '50');
INSERT INTO `cfg_level` VALUES ('75', '2161615', '', '', '0', '10000000', '150000', '450', '50');
INSERT INTO `cfg_level` VALUES ('76', '2358490', '', '', '0', '10000000', '150000', '450', '50');
INSERT INTO `cfg_level` VALUES ('77', '2566426', '', '', '0', '10000000', '150000', '450', '50');
INSERT INTO `cfg_level` VALUES ('78', '2785799', '', '', '0', '10000000', '150000', '450', '50');
INSERT INTO `cfg_level` VALUES ('79', '3016991', '', '', '0', '10000000', '150000', '450', '50');
INSERT INTO `cfg_level` VALUES ('80', '3260390', '', '', '0', '10000000', '150000', '450', '50');
INSERT INTO `cfg_level` VALUES ('81', '3516390', '', '', '0', '10000000', '150000', '450', '50');
INSERT INTO `cfg_level` VALUES ('82', '3785391', '', '', '0', '10000000', '150000', '450', '50');
INSERT INTO `cfg_level` VALUES ('83', '4067799', '', '', '0', '10000000', '150000', '450', '50');
INSERT INTO `cfg_level` VALUES ('84', '4364026', '', '', '0', '10000000', '150000', '450', '50');
INSERT INTO `cfg_level` VALUES ('85', '4674490', '', '', '0', '10000000', '150000', '450', '50');
INSERT INTO `cfg_level` VALUES ('86', '4999615', '', '', '0', '10000000', '150000', '450', '50');
INSERT INTO `cfg_level` VALUES ('87', '5339831', '', '', '0', '10000000', '150000', '450', '50');
INSERT INTO `cfg_level` VALUES ('88', '5695574', '', '', '0', '10000000', '150000', '450', '50');
INSERT INTO `cfg_level` VALUES ('89', '6067286', '', '', '0', '10000000', '150000', '450', '50');
INSERT INTO `cfg_level` VALUES ('90', '6455415', '', '', '0', '10000000', '150000', '450', '50');
INSERT INTO `cfg_level` VALUES ('91', '6860415', '', '', '0', '10000000', '150000', '450', '50');
INSERT INTO `cfg_level` VALUES ('92', '7282746', '', '', '0', '10000000', '150000', '450', '50');
INSERT INTO `cfg_level` VALUES ('93', '7722874', '', '', '0', '10000000', '150000', '450', '50');
INSERT INTO `cfg_level` VALUES ('94', '8181271', '', '', '0', '10000000', '150000', '450', '50');
INSERT INTO `cfg_level` VALUES ('95', '8658415', '', '', '0', '10000000', '150000', '450', '50');
INSERT INTO `cfg_level` VALUES ('96', '9154790', '', '', '0', '10000000', '150000', '450', '50');
INSERT INTO `cfg_level` VALUES ('97', '9670886', '', '', '0', '10000000', '150000', '450', '50');
INSERT INTO `cfg_level` VALUES ('98', '10207199', '', '', '0', '10000000', '150000', '450', '50');
INSERT INTO `cfg_level` VALUES ('99', '10764231', '', '', '0', '10000000', '150000', '450', '50');
