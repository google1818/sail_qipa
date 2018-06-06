/*
Navicat MySQL Data Transfer

Source Server         : sail-qipa1
Source Server Version : 50616
Source Host           : rm-bp1ydc1865d2f62z4.mysql.rds.aliyuncs.com:3306
Source Database       : app_sail_qipa1

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2018-06-06 11:36:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cfg_goal_award
-- ----------------------------
DROP TABLE IF EXISTS `cfg_goal_award`;
CREATE TABLE `cfg_goal_award` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) DEFAULT '0',
  `name` varchar(45) DEFAULT NULL,
  `config` text COMMENT '奖励配置(1-金币，2-友情点，3-宝石,4-圣衣，5-碎片，6-英雄)',
  `status` int(11) DEFAULT '1' COMMENT '状态:1=正常,0=下线',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of cfg_goal_award
-- ----------------------------
INSERT INTO `cfg_goal_award` VALUES ('1', '200', '等级达到', '5=[{\"t\":27,\"c\":2,\"i\":5,\"n\":0,\"l\":0},{\"t\":10,\"c\":2,\"i\":1,\"n\":0,\"l\":0}];7=[{\"t\":2,\"c\":50,\"i\":0,\"n\":0,\"l\":0},{\"t\":10,\"c\":1,\"i\":302,\"n\":0,\"l\":0}];10=[{\"t\":54,\"c\":200,\"i\":0,\"n\":0,\"l\":0},{\"t\":10,\"c\":1,\"i\":408,\"n\":0,\"l\":0},{\"t\":10,\"c\":5,\"i\":1,\"n\":0,\"l\":0}];12=[{\"t\":52,\"c\":200,\"i\":0,\"n\":0,\"l\":0},{\"t\":10,\"c\":1,\"i\":302,\"n\":0,\"l\":0},{\"t\":27,\"c\":1,\"i\":7,\"n\":0,\"l\":0}];15=[{\"t\":2,\"c\":140,\"i\":0,\"n\":0,\"l\":0},{\"t\":10,\"c\":1,\"i\":302,\"n\":0,\"l\":0},{\"t\":27,\"c\":1,\"i\":7,\"n\":0,\"l\":0}];20=[{\"t\":2,\"c\":180,\"i\":0,\"n\":0,\"l\":0},{\"t\":10,\"c\":1,\"i\":302,\"n\":0,\"l\":0},{\"t\":27,\"c\":2,\"i\":7,\"n\":0,\"l\":0}];25=[{\"t\":2,\"c\":200,\"i\":0,\"n\":0,\"l\":0},{\"t\":10,\"c\":1,\"i\":302,\"n\":0,\"l\":0},{\"t\":27,\"c\":1,\"i\":8,\"n\":0,\"l\":0}];30=[{\"t\":2,\"c\":240,\"i\":0,\"n\":0,\"l\":0},{\"t\":10,\"c\":1,\"i\":302,\"n\":0,\"l\":0},{\"t\":27,\"c\":1,\"i\":8,\"n\":0,\"l\":0}];35=[{\"t\":2,\"c\":300,\"i\":0,\"n\":1,\"l\":0},{\"t\":10,\"c\":1,\"i\":302,\"n\":1,\"l\":0},{\"t\":27,\"c\":1,\"i\":8,\"n\":1,\"l\":0}];40=[{\"t\":2,\"c\":400,\"i\":0,\"n\":1,\"l\":0},{\"t\":10,\"c\":1,\"i\":302,\"n\":1,\"l\":0},{\"t\":27,\"c\":1,\"i\":8,\"n\":1,\"l\":0}];', '0');
INSERT INTO `cfg_goal_award` VALUES ('2', '201', '连续登陆', '1=[{\"t\":10,\"c\":1,\"i\":301,\"n\":0,\"l\":1}];2=[{\"t\":54,\"c\":30,\"i\":0},{\"t\":52,\"c\":30,\"i\":0}];3=[{\"t\":54,\"c\":30,\"i\":0},{\"t\":51,\"c\":30,\"i\":0}];4=[{\"t\":54,\"c\":30,\"i\":0},{\"t\":53,\"c\":30,\"i\":0}];5=[{\"t\":54,\"c\":30,\"i\":0},{\"t\":51,\"c\":30,\"i\":0},{\"t\":52,\"c\":30,\"i\":0}];6=[{\"t\":54,\"c\":30,\"i\":0},{\"t\":53,\"c\":30,\"i\":0},{\"t\":51,\"c\":30,\"i\":0},{\"t\":52,\"c\":30,\"i\":0}];7=[{\"t\":2,\"c\":300,\"i\":0},{\"t\":54,\"c\":50,\"i\":0},{\"t\":53,\"c\":50,\"i\":0},{\"t\":51,\"c\":50,\"i\":0},{\"t\":52,\"c\":50,\"i\":0}]', '1');
INSERT INTO `cfg_goal_award` VALUES ('3', '202', '每日首次充值', '[{\"t\":27,\"c\":1,\"i\":7,\"st\":4,\"n\":100,\"l\":0},{\"t\":10,\"c\":1,\"i\":303,\"n\":100,\"l\":1}]', '1');
INSERT INTO `cfg_goal_award` VALUES ('4', '203', '探险进度', '9=[{\"t\":2,\"c\":30,\"i\":0},{\"t\":54,\"c\":30,\"i\":0},{\"t\":53,\"c\":30,\"i\":0},{\"t\":51,\"c\":30,\"i\":0},{\"t\":52,\"c\":30,\"i\":0}];19=[{\"t\":2,\"c\":30,\"i\":0},{\"t\":54,\"c\":30,\"i\":0},{\"t\":53,\"c\":30,\"i\":0},{\"t\":51,\"c\":30,\"i\":0},{\"t\":52,\"c\":30,\"i\":0}];29=[{\"t\":2,\"c\":30,\"i\":0},{\"t\":54,\"c\":30,\"i\":0},{\"t\":53,\"c\":30,\"i\":0},{\"t\":51,\"c\":30,\"i\":0},{\"t\":52,\"c\":30,\"i\":0}];39=[{\"t\":2,\"c\":30,\"i\":0},{\"t\":54,\"c\":30,\"i\":0},{\"t\":53,\"c\":30,\"i\":0},{\"t\":51,\"c\":30,\"i\":0},{\"t\":52,\"c\":30,\"i\":0}];49=[{\"t\":2,\"c\":30,\"i\":0},{\"t\":54,\"c\":30,\"i\":0},{\"t\":53,\"c\":30,\"i\":0},{\"t\":51,\"c\":30,\"i\":0},{\"t\":52,\"c\":30,\"i\":0}];59=[{\"t\":2,\"c\":30,\"i\":0},{\"t\":54,\"c\":30,\"i\":0},{\"t\":54,\"c\":30,\"i\":0},{\"t\":53,\"c\":30,\"i\":0},{\"t\":51,\"c\":30,\"i\":0},{\"t\":52,\"c\":30,\"i\":0}];69=[{\"t\":2,\"c\":30,\"i\":0},{\"t\":54,\"c\":30,\"i\":0},{\"t\":54,\"c\":30,\"i\":0},{\"t\":53,\"c\":30,\"i\":0},{\"t\":51,\"c\":30,\"i\":0},{\"t\":52,\"c\":30,\"i\":0}]', '0');
INSERT INTO `cfg_goal_award` VALUES ('5', '204', '城市势力值', '10=[{\"t\":27,\"c\":1,\"i\":6}];50=[{\"t\":27,\"c\":1,\"i\":7}];100=[{\"t\":27,\"c\":1,\"i\":8}]', '1');
INSERT INTO `cfg_goal_award` VALUES ('6', '205', '战斗探险', '[{\"t\":2,\"c\":50,\"i\":0}]', '1');
INSERT INTO `cfg_goal_award` VALUES ('7', '206', '30天奖励', '1={\"lv\":1,\"award\":[{\"t\":27,\"c\":2,\"i\":5},{\"t\":10,\"c\":1,\"i\":302,\"n\":0,\"l\":1}]};2={\"lv\":100,\"award\":[{\"t\":27,\"c\":1,\"i\":58},{\"t\":51,\"c\":100,\"i\":0}]};3={\"lv\":3,\"award\":[{\"t\":2,\"c\":2000,\"i\":0},{\"t\":10,\"c\":2,\"i\":302,\"n\":0,\"l\":1}]};4={\"lv\":3,\"award\":[{\"t\":54,\"c\":200,\"i\":0},{\"t\":9,\"c\":2,\"i\":1}]};5={\"lv\":4,\"award\":[{\"t\":27,\"c\":1,\"i\":1},{\"t\":10,\"c\":5,\"i\":301,\"n\":0,\"l\":1}]};6={\"lv\":4,\"award\":[{\"t\":52,\"c\":200,\"i\":0},{\"t\":27,\"c\":2,\"i\":6}]};7={\"lv\":100,\"award\":[{\"t\":27,\"c\":1,\"i\":15},{\"t\":27,\"c\":1,\"i\":1}]};10={\"lv\":5,\"award\":[{\"t\":51,\"c\":200,\"i\":0},{\"t\":9,\"c\":3,\"i\":1}]};13={\"lv\":6,\"award\":[{\"t\":2,\"c\":3000,\"i\":0},{\"t\":10,\"c\":5,\"i\":301,\"n\":0,\"l\":1}]};16={\"lv\":6,\"award\":[{\"t\":54,\"c\":200,\"i\":0},{\"t\":9,\"c\":1,\"i\":3}]};20={\"lv\":100,\"award\":[{\"t\":11,\"c\":1,\"i\":37},{\"t\":10,\"c\":2,\"i\":302,\"n\":0,\"l\":1}]};25={\"lv\":7,\"award\":[{\"t\":52,\"c\":200,\"i\":0},{\"t\":9,\"c\":1,\"i\":3}]};30={\"lv\":100,\"award\":[{\"t\":27,\"c\":1,\"i\":22},{\"t\":10,\"c\":1,\"i\":303,\"n\":0,\"l\":1}]};', '1');
INSERT INTO `cfg_goal_award` VALUES ('8', '208', '月卡奖励', '[{\"t\":2,\"c\":5000,\"i\":0}]', '1');
INSERT INTO `cfg_goal_award` VALUES ('9', '209', '成长基金', '15=[{\"t\":2,\"c\":10000,\"i\":0}];20=[{\"t\":2,\"c\":20000,\"i\":0}];25=[{\"t\":2,\"c\":30000,\"i\":0}];30=[{\"t\":2,\"c\":40000,\"i\":0}];35=[{\"t\":2,\"c\":50000,\"i\":0}];40=[{\"t\":2,\"c\":60000,\"i\":0}];45=[{\"t\":2,\"c\":70000,\"i\":0}];50=[{\"t\":2,\"c\":80000,\"i\":0}];55=[{\"t\":2,\"c\":90000,\"i\":0}];60=[{\"t\":2,\"c\":100000,\"i\":0}];', '1');
INSERT INTO `cfg_goal_award` VALUES ('10', '210', '消费奖励', '300=[{\"t\":10003,\"c\":1,\"i\":31,\"st\":4,\"n\":100,\"l\":1}];1000=[{\"t\":10,\"c\":2,\"i\":419,\"n\":100,\"l\":1}];2500=[{\"t\":10002,\"c\":1,\"i\":23,\"st\":5,\"n\":100,\"l\":1},{\"t\":27,\"c\":1,\"i\":7,\"st\":4,\"n\":100,\"l\":1}];5000=[{\"t\":10,\"c\":2,\"i\":226,\"n\":100,\"l\":1},{\"t\":27,\"c\":2,\"i\":1,\"st\":5,\"n\":100,\"l\":1}];12000=[{\"t\":10,\"c\":1,\"i\":409,\"n\":100,\"l\":1},{\"t\":10,\"c\":2,\"i\":427,\"n\":100,\"l\":1}];25000=[{\"t\":10001,\"c\":1,\"i\":9,\"st\":5,\"n\":100,\"l\":1}];', '1');
INSERT INTO `cfg_goal_award` VALUES ('11', '211', '每月签到', '20150414=[{\"t\":53,\"c\":200,\"i\":0,\"n\":100,\"l\":1}];20150415=[{\"t\":9,\"c\":1,\"i\":2,\"st\":5,\"n\":100,\"l\":1}];20150416=[{\"t\":10,\"c\":1,\"i\":302,\"n\":100,\"l\":1}];20150417=[{\"t\":52,\"c\":200,\"i\":0,\"n\":100,\"l\":1}];20150418=[{\"t\":10,\"c\":1,\"i\":403,\"n\":100,\"l\":1}];20150419=[{\"t\":27,\"c\":1,\"i\":1,\"st\":5,\"n\":100,\"l\":1}];20150420=[{\"t\":54,\"c\":200,\"i\":0,\"n\":100,\"l\":1}];20150421=[{\"t\":2,\"c\":80,\"i\":0,\"n\":100,\"l\":1}];20150422=[{\"t\":9,\"c\":1,\"i\":3,\"st\":5,\"n\":100,\"l\":1}];20150423=[{\"t\":52,\"c\":300,\"i\":0,\"n\":100,\"l\":1}];20150424=[{\"t\":10,\"c\":1,\"i\":403,\"n\":100,\"l\":1}];20150425=[{\"t\":2,\"c\":150,\"i\":0,\"n\":100,\"l\":1}];20150426=[{\"t\":51,\"c\":300,\"i\":0,\"n\":100,\"l\":1}];20150427=[{\"t\":9,\"c\":1,\"i\":3,\"st\":5,\"n\":100,\"l\":1}];20150428=[{\"t\":10,\"c\":1,\"i\":303,\"n\":100,\"l\":1}];20150429=[{\"t\":10,\"c\":1,\"i\":408,\"n\":100,\"l\":1}];20150430=[{\"t\":53,\"c\":300,\"i\":0,\"n\":100,\"l\":1}]', '1');
INSERT INTO `cfg_goal_award` VALUES ('12', '212', '累计充值奖励', '[{\"pay\":500,\"award\":[{\"t\":27,\"c\":1,\"i\":69,\"st\":4,\"n\":100,\"l\":0,\"s1\":\"11=30\",\"s2\":\"8=15\",\"s3\":\"2=40\"},{\"t\":10,\"c\":2,\"i\":406,\"n\":100,\"l\":1},{\"t\":10,\"c\":2,\"i\":403,\"n\":100,\"l\":1}]},{\"pay\":1000,\"award\":[{\"t\":27,\"c\":2,\"i\":67,\"st\":4,\"n\":100,\"l\":0,\"s1\":\"96=13\",\"s2\":\"81=15\",\"s3\":\"108=12\"},{\"t\":10,\"c\":5,\"i\":406,\"n\":100,\"l\":1},{\"t\":10,\"c\":5,\"i\":403,\"n\":100,\"l\":1}]},{\"pay\":5000,\"award\":[{\"t\":27,\"c\":2,\"i\":70,\"st\":4,\"n\":100,\"l\":0,\"s1\":\"35=15\",\"s2\":\"32=13\",\"s3\":\"40=15\"},{\"t\":27,\"c\":2,\"i\":68,\"st\":4,\"n\":100,\"l\":0,\"s1\":\"165=10\",\"s2\":\"135=10\",\"s3\":\"144=10\"},{\"t\":10,\"c\":4,\"i\":407,\"n\":100,\"l\":1},{\"t\":10,\"c\":4,\"i\":404,\"n\":100,\"l\":1}]},{\"pay\":10000,\"award\":[{\"t\":27,\"c\":1,\"i\":60,\"st\":5,\"n\":100,\"l\":0,\"s1\":\"188=30\",\"s2\":\"25=25\",\"s3\":\"189=20\"},{\"t\":10,\"c\":1,\"i\":409,\"n\":100,\"l\":1},{\"t\":10,\"c\":1,\"i\":410,\"n\":100,\"l\":1},{\"t\":27,\"c\":5,\"i\":8,\"st\":4,\"n\":100,\"l\":1}]}]', '1');
INSERT INTO `cfg_goal_award` VALUES ('13', '213', '小额充值奖励', '[{\"t\":27,\"c\":1,\"i\":19,\"st\":5,\"n\":100,\"l\":0,\"s1\":\"\",\"s2\":\"135=10\",\"s3\":\"143=18\"}]', '1');
INSERT INTO `cfg_goal_award` VALUES ('14', '214', '许愿池', '1={\"n\":10,\"award\":[{\"t\":2,\"c\":50,\"i\":0}]};2={\"n\":50,\"award\":[{\"t\":2,\"c\":100,\"i\":0}]};3={\"n\":260,\"award\":[{\"t\":2,\"c\":512,\"i\":0}]};4={\"n\":1080,\"award\":[{\"t\":2,\"c\":2100,\"i\":0}]};5={\"n\":3600,\"award\":[{\"t\":2,\"c\":5000,\"i\":0}]};6={\"n\":7000,\"award\":[{\"t\":2,\"c\":10000,\"i\":0}]};', '1');
