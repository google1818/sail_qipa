/*
 Navicat MySQL Data Transfer

 Source Server         : sail_qipa_1
 Source Server Type    : MySQL
 Source Server Version : 50616
 Source Host           : rm-bp1ydc1865d2f62z4.mysql.rds.aliyuncs.com:3306
 Source Schema         : app_sail_qipa1

 Target Server Type    : MySQL
 Target Server Version : 50616
 File Encoding         : 65001

 Date: 29/06/2018 07:36:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cfg_equip_accessory
-- ----------------------------
DROP TABLE IF EXISTS `cfg_equip_accessory`;
CREATE TABLE `cfg_equip_accessory`  (
  `id` int(11) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `exp` int(11) NOT NULL,
  `legendary` int(11) NOT NULL,
  `detail` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` tinyint(1) NOT NULL,
  `fee_type` tinyint(1) NOT NULL,
  `fee_price` int(11) NOT NULL,
  `sell_price` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `arm` int(11) NOT NULL,
  `min_attack_min` int(11) NOT NULL,
  `min_attack_max` int(11) NOT NULL,
  `max_attack_min` int(11) NOT NULL,
  `max_attack_max` int(11) NOT NULL,
  `defence_min` int(11) NOT NULL,
  `defence_max` int(11) NOT NULL,
  `hp_min` int(11) NOT NULL DEFAULT 0,
  `hp_max` int(11) NOT NULL DEFAULT 0,
  `speed_min` int(11) NOT NULL,
  `speed_max` int(11) NOT NULL,
  `a_min_grow` int(11) NOT NULL DEFAULT 0,
  `a_max_grow` int(11) NOT NULL DEFAULT 0,
  `d_grow` int(11) NOT NULL DEFAULT 0,
  `h_grow` int(11) NOT NULL DEFAULT 0,
  `s_grow` int(11) NOT NULL,
  `city` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `region` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `base_star` tinyint(1) NOT NULL,
  `skill1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `rate1` int(11) NOT NULL DEFAULT 0,
  `skill2` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `rate2` int(11) NOT NULL DEFAULT 0,
  `skill3` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `rate3` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL,
  `duty` tinyint(11) NOT NULL,
  `reputation` bigint(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cfg_equip_accessory
-- ----------------------------
INSERT INTO `cfg_equip_accessory` VALUES (1, '海豚像', 0, 0, '像是亲近人类的海豚船首雕像', 3, 0, 0, 300, 10, 0, 0, 0, 0, 0, 0, 0, 215, 225, 0, 0, 0, 0, 0, 25, 0, '', '', 0, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (2, '狂暴海豚像', 0, 0, '像是发狂的海豚一般，象征着不幸', 3, 2, 90, 5000, 11, 0, 0, 0, 0, 0, 0, 0, 320, 330, 0, 0, 0, 0, 0, 46, 0, '', '', 4, '', 0, '', 0, '', 0, 1, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (3, '独角鲸像', 0, 0, '象征着自由的独角鲸船首雕像', 3, 1, 30000, 500, 13, 0, 0, 0, 0, 0, 0, 0, 230, 240, 0, 0, 0, 0, 0, 28, 0, '', '', 0, '', 0, '', 0, '', 0, 1, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (4, '尖牙独角鲸像', 0, 0, '最稀有的物种之一，相传为独角鲸中的王者', 3, 0, 0, 10000, 14, 0, 0, 0, 0, 0, 0, 0, 335, 345, 0, 0, 0, 0, 0, 49, 0, '', '', 4, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (5, '猎鹰像', 0, 0, '像是在空中翱翔的猎鹰船首雕像', 3, 1, 50000, 1500, 15, 0, 0, 0, 0, 0, 0, 0, 240, 250, 0, 0, 0, 0, 0, 30, 0, '', '', 0, '', 0, '', 0, '', 0, 1, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (6, '闪电猎鹰像', 0, 0, '闪电还是猎鹰，速度的王者', 3, 0, 0, 10000, 16, 0, 0, 0, 0, 0, 0, 0, 345, 355, 0, 0, 0, 0, 0, 51, 0, '', '', 4, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (7, '海龟像', 0, 0, '象征着沉稳和冷静的龟船首雕像', 3, 0, 0, 1500, 18, 0, 0, 0, 0, 0, 0, 0, 255, 265, 0, 0, 0, 0, 0, 33, 0, '', '', 0, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (8, '玄武像', 0, 0, '象征着大地的玄武雕像，拥有厚重的沧桑感', 3, 2, 190, 12000, 19, 0, 0, 0, 0, 0, 0, 0, 360, 370, 0, 0, 0, 0, 0, 54, 0, '', '', 4, '', 0, '', 0, '', 0, 1, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (9, '鹫之像', 0, 0, '仿佛栖息在悬崖的鹫的船首雕像', 3, 1, 80000, 2000, 20, 0, 0, 0, 0, 0, 0, 0, 265, 275, 0, 0, 0, 0, 0, 35, 0, '', '', 0, '', 0, '', 0, '', 0, 1, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (10, '天空之王像', 0, 0, '天空之王的雄伟姿态，让人神驰', 3, 0, 0, 20000, 22, 0, 0, 0, 0, 0, 0, 0, 375, 385, 0, 0, 0, 0, 0, 57, 0, '', '', 5, '', 0, '', 0, '', 0, 0, 2, 100);
INSERT INTO `cfg_equip_accessory` VALUES (11, '鲨鱼像', 0, 0, '海洋中的凶猛猎人鲨鱼船首雕像', 3, 0, 0, 3000, 25, 0, 0, 0, 0, 0, 0, 0, 290, 300, 0, 0, 0, 0, 0, 40, 0, '', '', 0, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (12, '利齿鲨鱼像', 0, 0, '残暴的鲨鱼雕像，张开的牙齿仿佛要将你撕碎', 3, 0, 0, 20000, 28, 0, 0, 0, 0, 0, 0, 0, 405, 415, 0, 0, 0, 0, 0, 63, 0, '', '', 4, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (13, '老虎像', 0, 0, '大地上的绝对王者老虎的船首雕像', 3, 0, 0, 4000, 30, 0, 0, 0, 0, 0, 0, 0, 315, 325, 0, 0, 0, 0, 0, 45, 0, '', '', 0, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (14, '百兽之王像', 0, 0, '真正的野兽之王雕像，百兽为之臣服', 3, 2, 290, 30000, 33, 0, 0, 0, 0, 0, 0, 0, 430, 440, 0, 0, 0, 0, 0, 68, 0, '', '', 5, '', 0, '', 0, '', 0, 1, 3, 500);
INSERT INTO `cfg_equip_accessory` VALUES (15, '白海豚像', 0, 0, '像是在欢快跳跃的白海豚船首雕像', 3, 1, 150000, 6000, 35, 0, 0, 0, 0, 0, 0, 0, 340, 350, 0, 0, 0, 0, 0, 50, 0, '', '', 0, '', 0, '', 0, '', 0, 1, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (16, '纯洁海豚像', 0, 0, '白海豚破水而出的姿态，纯洁无比', 3, 0, 0, 40000, 40, 0, 0, 0, 0, 0, 0, 0, 465, 475, 0, 0, 0, 0, 0, 75, 0, '', '', 5, '', 0, '', 0, '', 0, 1, 4, 1000);
INSERT INTO `cfg_equip_accessory` VALUES (17, '海兽像', 0, 0, '传说之中存在的生物海兽船首雕像', 3, 0, 0, 10000, 42, 0, 0, 0, 0, 0, 0, 0, 375, 385, 0, 0, 0, 0, 0, 57, 0, '', '', 0, '', 0, '', 0, '', 0, 1, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (18, '凶暴海兽像', 0, 0, '以凶暴的海王类为原型制作的雕像', 3, 2, 390, 50000, 45, 0, 0, 0, 0, 0, 0, 0, 490, 500, 0, 0, 0, 0, 0, 80, 0, '', '', 4, '', 0, '', 0, '', 0, 1, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (19, '白鲨像', 0, 0, '深海中恐怖大白鲨船首雕像', 3, 0, 0, 12000, 48, 0, 0, 0, 0, 0, 0, 0, 405, 415, 0, 0, 0, 0, 0, 63, 0, '', '', 0, '', 0, '', 0, '', 0, 1, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (20, '嗜血白鲨像', 0, 0, '嗜血的白鲨诱发着船员饥渴的战斗欲望', 3, 2, 490, 70000, 52, 0, 0, 0, 0, 0, 0, 0, 525, 535, 0, 0, 0, 0, 0, 87, 0, '', '', 5, '', 0, '', 0, '', 0, 0, 5, 2000);
INSERT INTO `cfg_equip_accessory` VALUES (21, '伟人像', 0, 0, '象征着无尽的知识的伟人船首雕像', 3, 0, 0, 15000, 55, 0, 0, 0, 0, 0, 0, 0, 440, 450, 0, 0, 0, 0, 0, 70, 0, '', '', 0, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (22, '发明家雕像', 0, 0, '充满智慧的发明家雕像，让人觉得心情平静', 3, 0, 0, 70000, 58, 0, 0, 0, 0, 0, 0, 0, 555, 565, 0, 0, 0, 0, 0, 93, 0, '', '', 4, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (23, '勇者像', 0, 0, '曾经斩杀过龙的勇者船首雕像', 3, 1, 1500000, 17500, 60, 0, 0, 0, 0, 0, 0, 0, 465, 475, 0, 0, 0, 0, 0, 75, 0, '', '', 0, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (24, '神圣骑士团像', 0, 0, '祛除一切邪恶的神圣骑士团雕像', 3, 0, 0, 85000, 63, 0, 0, 0, 0, 0, 0, 0, 580, 590, 0, 0, 0, 0, 0, 98, 0, '', '', 5, '', 0, '', 0, '', 0, 0, 6, 3000);
INSERT INTO `cfg_equip_accessory` VALUES (25, '少女像', 0, 0, '像在轻声歌唱的少女船首雕像', 3, 0, 0, 18000, 65, 0, 0, 0, 0, 0, 0, 0, 490, 500, 0, 0, 0, 0, 0, 80, 0, '', '', 0, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (26, '泉之少女像', 0, 0, '泉水中洗涤的少女，纯净高贵', 3, 2, 590, 85000, 68, 0, 0, 0, 0, 0, 0, 0, 605, 615, 0, 0, 0, 0, 0, 103, 0, '', '', 5, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (27, '美人鱼像', 0, 0, '象征着大海纯净美丽的美人鱼船首雕像', 3, 1, 3000000, 20000, 69, 0, 0, 0, 0, 0, 0, 0, 515, 525, 0, 0, 0, 0, 0, 85, 0, '', '', 0, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (28, '战争美人鱼像', 0, 0, '左手持盾右手持剑的美人鱼，象征着战争的胜利', 3, 0, 0, 100000, 70, 0, 0, 0, 0, 0, 0, 0, 640, 650, 0, 0, 0, 0, 0, 110, 0, '', '', 5, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (29, '天使像', 0, 0, '展翅飞向天国的天使船首雕像', 3, 0, 0, 100000, 70, 0, 0, 0, 0, 0, 0, 0, 540, 550, 0, 0, 0, 0, 0, 90, 0, '', '', 0, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (30, '神圣天使像', 0, 0, '飞天的天使雕像，圣洁得让人无法直视', 3, 2, 690, 100000, 70, 0, 0, 0, 0, 0, 0, 0, 690, 700, 0, 0, 0, 0, 0, 120, 0, '', '', 5, '', 0, '', 0, '', 0, 0, 7, 5000);
INSERT INTO `cfg_equip_accessory` VALUES (31, '海妖像', 0, 0, '用歌声魅惑过往船只的海妖船首雕像', 3, 1, 5000000, 100000, 70, 0, 0, 0, 0, 0, 0, 0, 590, 600, 0, 0, 0, 0, 0, 100, 0, '', '', 0, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (32, '魅影海妖像', 0, 0, '据说只要凝视便会被催眠的神秘雕像', 3, 0, 0, 100000, 70, 0, 0, 0, 0, 0, 0, 0, 740, 750, 0, 0, 0, 0, 0, 130, 0, '', '', 5, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (33, '木板甲', 0, 0, '木质的装甲板，不过看起来不是很结实', 4, 0, 0, 200, 5, 0, 0, 0, 0, 0, 75, 80, 0, 0, 0, 0, 0, 0, 10, 0, 0, '', '地中海', 0, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (34, '木板甲', 0, 0, '木质的装甲板，不过看起来不是很结实', 4, 0, 0, 200, 5, 0, 0, 0, 0, 0, 75, 80, 0, 0, 0, 0, 0, 0, 10, 0, 0, '', '加勒比海', 0, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (35, '木板甲', 0, 0, '木质的装甲板，不过看起来不是很结实', 4, 0, 0, 200, 5, 0, 0, 0, 0, 0, 75, 80, 0, 0, 0, 0, 0, 0, 10, 0, 0, '', '西欧', 0, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (36, '木板甲', 0, 0, '木质的装甲板，不过看起来不是很结实', 4, 0, 0, 200, 5, 0, 0, 0, 0, 0, 75, 80, 0, 0, 0, 0, 0, 0, 10, 0, 0, '', '华夏', 0, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (37, '木装甲II型', 0, 0, '加强型的木板装甲，坚硬度更胜从前', 4, 2, 90, 4000, 10, 0, 0, 0, 0, 0, 115, 120, 0, 0, 0, 0, 0, 0, 18, 0, 0, '', '', 4, '', 0, '', 0, '', 0, 1, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (38, '硬木板装甲', 0, 0, '硬木板制做的装甲板，坚固耐用', 4, 1, 30000, 500, 13, 0, 0, 0, 0, 0, 81, 86, 0, 0, 0, 0, 0, 0, 11, 0, 0, '', '', 0, '', 0, '', 0, '', 0, 1, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (39, '硬木装甲II型', 0, 0, '加强型的硬木板装甲，坚硬度更胜从前', 4, 0, 0, 10000, 15, 0, 0, 0, 0, 0, 125, 130, 0, 0, 0, 0, 0, 0, 20, 0, 0, '', '', 4, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (40, '桃木装甲', 0, 0, '桃木的装甲板感觉可以驱邪的样子', 4, 0, 0, 1500, 18, 0, 0, 0, 0, 0, 91, 96, 0, 0, 0, 0, 0, 0, 13, 0, 0, '', '', 0, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (41, '桃木装甲II型', 0, 0, '加强型的桃木木质装甲，坚硬度更胜从前', 4, 2, 190, 20000, 21, 0, 0, 0, 0, 0, 137, 142, 0, 0, 0, 0, 0, 0, 22, 0, 0, '', '', 5, '', 0, '', 0, '', 0, 1, 2, 100);
INSERT INTO `cfg_equip_accessory` VALUES (42, '雪松木装甲', 0, 0, '雪松木的装甲板有让心心静的淡香', 4, 1, 50000, 3000, 25, 0, 0, 0, 0, 0, 105, 110, 0, 0, 0, 0, 0, 0, 16, 0, 0, '', '', 0, '', 0, '', 0, '', 0, 1, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (43, '雪松木装甲II型', 0, 0, '加强型的雪松木质装甲，坚硬度更胜从前', 4, 0, 0, 20000, 28, 0, 0, 0, 0, 0, 151, 156, 0, 0, 0, 0, 0, 0, 25, 0, 0, '', '', 4, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (44, '红松木装甲', 0, 0, '欧洲人觉得红松木用来做装甲板有点奢侈', 4, 0, 0, 4000, 30, 0, 0, 0, 0, 0, 115, 120, 0, 0, 0, 0, 0, 0, 18, 0, 0, '', '', 0, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (45, '红松木装甲II型', 0, 0, '加强型的红松木质装甲，坚硬度更胜从前', 4, 0, 0, 30000, 32, 0, 0, 0, 0, 0, 159, 164, 0, 0, 0, 0, 0, 0, 26, 0, 0, '', '', 5, '', 0, '', 0, '', 0, 0, 3, 500);
INSERT INTO `cfg_equip_accessory` VALUES (46, '红木装甲', 0, 0, '红木作为素材制作的装甲板，比较泛用', 4, 0, 0, 6000, 35, 0, 0, 0, 0, 0, 125, 130, 0, 0, 0, 0, 0, 0, 20, 0, 0, '', '', 0, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (47, '红木装甲II型', 0, 0, '加强型的红木质装甲，坚硬度更胜从前', 4, 2, 290, 30000, 37, 0, 0, 0, 0, 0, 169, 174, 0, 0, 0, 0, 0, 0, 28, 0, 0, '', '', 4, '', 0, '', 0, '', 0, 1, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (48, '圆木装甲', 0, 0, '加工后的圆木做成的装甲板沉重无比', 4, 0, 0, 8000, 40, 0, 0, 0, 0, 0, 135, 140, 0, 0, 0, 0, 0, 0, 22, 0, 0, '', '', 0, '', 0, '', 0, '', 0, 1, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (49, '圆木装甲II型', 0, 0, '加强型的圆木质装甲，坚硬度更胜从前', 4, 0, 0, 50000, 43, 0, 0, 0, 0, 0, 181, 186, 0, 0, 0, 0, 0, 0, 31, 0, 0, '', '', 5, '', 0, '', 0, '', 0, 1, 4, 1000);
INSERT INTO `cfg_equip_accessory` VALUES (50, '橡木装甲', 0, 0, '说道海盗最喜欢的装甲板还得是橡木', 4, 1, 800000, 11000, 47, 0, 0, 0, 0, 0, 149, 154, 0, 0, 0, 0, 0, 0, 24, 0, 0, '', '', 0, '', 0, '', 0, '', 0, 1, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (51, '橡木装甲II型', 0, 0, '加强型的橡木质装甲，坚硬度更胜从前', 4, 2, 390, 70000, 50, 0, 0, 0, 0, 0, 195, 200, 0, 0, 0, 0, 0, 0, 34, 0, 0, '', '', 5, '', 0, '', 0, '', 0, 1, 5, 2000);
INSERT INTO `cfg_equip_accessory` VALUES (52, '铁板装甲', 0, 0, '铁皮包着硬木板的装甲板，抗磨损能力超强', 4, 0, 0, 13000, 53, 0, 0, 0, 0, 0, 161, 166, 0, 0, 0, 0, 0, 0, 27, 0, 0, '', '', 0, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (53, '幻钢装甲', 0, 0, '用超硬度的钢材制成的装甲板，防御力远远高于木质装甲', 4, 0, 0, 70000, 56, 0, 0, 0, 0, 0, 207, 212, 0, 0, 0, 0, 0, 0, 36, 0, 0, '', '', 4, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (54, '木刺装甲', 0, 0, '有着很多锋利倒刺的装甲板，如果敌舰撞过来的话…', 4, 1, 1000000, 17500, 59, 0, 0, 0, 0, 0, 173, 178, 0, 0, 0, 0, 0, 0, 29, 0, 0, '', '', 0, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (55, '尖刺倒钩装甲', 0, 0, '拥有着无数倒钩的锐利尖刺，使敌人心惊胆寒', 4, 2, 490, 85000, 60, 0, 0, 0, 0, 0, 215, 220, 0, 0, 0, 0, 0, 0, 38, 0, 0, '', '', 5, '', 0, '', 0, '', 0, 0, 6, 3000);
INSERT INTO `cfg_equip_accessory` VALUES (56, '厚铁装甲', 0, 0, '加强了铁板的厚度，使得装甲板更加不畏惧撞击', 4, 0, 0, 18000, 63, 0, 0, 0, 0, 0, 181, 186, 0, 0, 0, 0, 0, 0, 31, 0, 0, '', '', 0, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (57, '捍卫者装甲', 0, 0, '仿佛捍卫着自己尊严一般的巨大装甲，气势恢宏', 4, 0, 0, 85000, 65, 0, 0, 0, 0, 0, 225, 230, 0, 0, 0, 0, 0, 0, 40, 0, 0, '', '', 5, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (58, '巨型锁链装甲', 0, 0, '缠绕了巨型精铁锁链的装甲板，可以挡住一切伤害', 4, 1, 1500000, 20000, 67, 0, 0, 0, 0, 0, 189, 194, 0, 0, 0, 0, 0, 0, 32, 0, 0, '', '', 0, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (59, '束缚者装甲', 0, 0, '像是用巨大的锁链束缚着自己，连炮弹都可以轻易抵挡', 4, 0, 0, 85000, 69, 0, 0, 0, 0, 0, 235, 240, 0, 0, 0, 0, 0, 0, 42, 0, 0, '', '', 4, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (60, '镀银装甲', 0, 0, '镀上了华丽的银质素材的装甲板，尊荣奢华', 4, 0, 0, 22000, 69, 0, 0, 0, 0, 0, 195, 200, 0, 0, 0, 0, 0, 0, 34, 0, 0, '', '', 0, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (61, '倒影装甲', 0, 0, '光亮到可以看见自己倒影的装甲板，可以反射阳光迷惑敌方视线', 4, 0, 0, 100000, 70, 0, 0, 0, 0, 0, 245, 250, 0, 0, 0, 0, 0, 0, 44, 0, 0, '', '', 5, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (62, '硬钢装甲', 0, 0, '比铁更硬！硬钢板让你知道什么叫坚硬度', 4, 1, 3000000, 25000, 70, 0, 0, 0, 0, 0, 205, 210, 0, 0, 0, 0, 0, 0, 36, 0, 0, '', '', 0, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (63, '守护者装甲', 0, 0, '拥有守护者之名的装甲板，任何攻击也无法突破它的防御', 4, 2, 590, 100000, 70, 0, 0, 0, 0, 0, 265, 270, 0, 0, 0, 0, 0, 0, 48, 0, 0, '', '', 5, '', 0, '', 0, '', 0, 0, 7, 5000);
INSERT INTO `cfg_equip_accessory` VALUES (64, '超合金装甲', 0, 0, '超合金材质！没有比这个更坚固的装甲板了！', 4, 0, 0, 25000, 70, 0, 0, 0, 0, 0, 225, 230, 0, 0, 0, 0, 0, 0, 40, 0, 0, '', '', 0, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (65, '奥哈利刚装甲', 0, 0, '传说中的金属所制成的装甲板，可以抵挡住一切防御', 4, 0, 0, 100000, 70, 0, 0, 0, 0, 0, 285, 290, 0, 0, 0, 0, 0, 0, 52, 0, 0, '', '', 5, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (66, '硬木撞角', 0, 0, '硬木材质的撞角，容易磨损', 5, 0, 0, 200, 5, 0, 47, 50, 57, 60, 0, 0, 0, 0, 0, 0, 4, 6, 0, 0, 0, '', '地中海', 0, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (67, '硬木撞角', 0, 0, '硬木材质的撞角，容易磨损', 5, 0, 0, 200, 5, 0, 47, 50, 57, 60, 0, 0, 0, 0, 0, 0, 4, 6, 0, 0, 0, '', '加勒比海', 0, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (68, '硬木撞角', 0, 0, '硬木材质的撞角，容易磨损', 5, 0, 0, 200, 5, 0, 47, 50, 57, 60, 0, 0, 0, 0, 0, 0, 4, 6, 0, 0, 0, '', '西欧', 0, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (69, '硬木撞角', 0, 0, '硬木材质的撞角，容易磨损', 5, 0, 0, 200, 5, 0, 47, 50, 57, 60, 0, 0, 0, 0, 0, 0, 4, 6, 0, 0, 0, '', '华夏', 0, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (70, '锋利的硬木撞角', 0, 0, '硬木撞角的强化版，更加坚固耐用', 5, 2, 90, 3000, 10, 0, 67, 70, 77, 80, 0, 0, 0, 0, 0, 0, 8, 10, 0, 0, 0, '', '', 4, '', 0, '', 0, '', 0, 1, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (71, '叉形撞角', 0, 0, '叉状撞角，可以刺出三个口！', 5, 1, 30000, 500, 13, 0, 50, 53, 60, 63, 0, 0, 0, 0, 0, 0, 4, 6, 0, 0, 0, '', '', 0, '', 0, '', 0, '', 0, 1, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (72, '叉形锐牙撞角', 0, 0, '加强了叉形撞角的接触点，使其锋利度变得更高', 5, 0, 0, 3000, 15, 0, 72, 75, 82, 85, 0, 0, 0, 0, 0, 0, 9, 11, 0, 0, 0, '', '', 4, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (73, '蛇形撞角', 0, 0, '蛇形撞角，更容易破坏敌方船只', 5, 0, 0, 800, 18, 0, 55, 58, 65, 68, 0, 0, 0, 0, 0, 0, 5, 7, 0, 0, 0, '', '', 0, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (74, '眼镜蛇撞角', 0, 0, '像眼镜蛇捕食一般，攻击的时候能高速插入敌人的船体', 5, 2, 190, 10000, 21, 0, 78, 81, 88, 91, 0, 0, 0, 0, 0, 0, 10, 12, 0, 0, 0, '', '', 5, '', 0, '', 0, '', 0, 1, 2, 100);
INSERT INTO `cfg_equip_accessory` VALUES (75, '剑鱼撞角', 0, 0, '模仿剑鱼所制作的撞角，有些锋利的倒钩', 5, 1, 100000, 1500, 25, 0, 62, 65, 72, 75, 0, 0, 0, 0, 0, 0, 7, 9, 0, 0, 0, '', '', 0, '', 0, '', 0, '', 0, 1, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (76, '捕食者', 0, 0, '号称大海的捕食者，能穿透海王类的厚甲', 5, 0, 0, 15000, 28, 0, 85, 88, 95, 98, 0, 0, 0, 0, 0, 0, 11, 13, 0, 0, 0, '', '', 4, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (77, '铁质撞角', 0, 0, '用铁做成的撞角，抗磨损能力大大增强', 5, 0, 0, 2000, 30, 0, 67, 70, 77, 80, 0, 0, 0, 0, 0, 0, 8, 10, 0, 0, 0, '', '', 0, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (78, '合金撞角', 0, 0, '合金材料制作的撞角，硬度比铁高10倍', 5, 0, 0, 30000, 32, 0, 89, 92, 99, 102, 0, 0, 0, 0, 0, 0, 12, 14, 0, 0, 0, '', '', 5, '', 0, '', 0, '', 0, 0, 3, 500);
INSERT INTO `cfg_equip_accessory` VALUES (79, '切割型撞角', 0, 0, '可以很轻松切开敌方船只的切割型撞角', 5, 0, 0, 6000, 35, 0, 72, 75, 82, 85, 0, 0, 0, 0, 0, 0, 9, 11, 0, 0, 0, '', '', 0, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (80, '高速斩断型撞角', 0, 0, '以诡异的角度切割对手船体的撞角，能瞬间斩断接触面', 5, 2, 290, 30000, 37, 0, 94, 97, 104, 107, 0, 0, 0, 0, 0, 0, 13, 15, 0, 0, 0, '', '', 4, '', 0, '', 0, '', 0, 1, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (81, '锐牙海兽撞角', 0, 0, '根据海兽锐利的牙齿所制作的撞角', 5, 0, 0, 8000, 40, 0, 77, 80, 87, 90, 0, 0, 0, 0, 0, 0, 10, 12, 0, 0, 0, '', '', 0, '', 0, '', 0, '', 0, 1, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (82, '残暴海王', 0, 0, '以海王类为原型所制作的撞角，破坏力超群', 5, 0, 0, 50000, 43, 0, 100, 103, 110, 113, 0, 0, 0, 0, 0, 0, 14, 16, 0, 0, 0, '', '', 5, '', 0, '', 0, '', 0, 1, 4, 1000);
INSERT INTO `cfg_equip_accessory` VALUES (83, '混金撞角', 0, 0, '混合了少许贵金属的铁质撞角，硬度和破坏能力都大大增加', 5, 1, 800000, 11000, 47, 0, 84, 87, 94, 97, 0, 0, 0, 0, 0, 0, 11, 13, 0, 0, 0, '', '', 0, '', 0, '', 0, '', 0, 1, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (84, '金属之力', 0, 0, '金属混合后的超强硬度，号称几乎不会折断', 5, 2, 390, 70000, 50, 0, 107, 110, 117, 120, 0, 0, 0, 0, 0, 0, 16, 18, 0, 0, 0, '', '', 5, '', 0, '', 0, '', 0, 1, 5, 2000);
INSERT INTO `cfg_equip_accessory` VALUES (85, '尖刺撞角', 0, 0, '做成了锋利的尖刺的撞角', 5, 0, 0, 13000, 53, 0, 90, 93, 100, 103, 0, 0, 0, 0, 0, 0, 12, 14, 0, 0, 0, '', '', 0, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (86, '尖刺摧毁者', 0, 0, '用无数的尖刺把你船体撞出无数的窟窿，超强的破坏力', 5, 0, 0, 70000, 56, 0, 113, 116, 123, 126, 0, 0, 0, 0, 0, 0, 17, 19, 0, 0, 0, '', '', 4, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (87, '锯状粉碎撞角', 0, 0, '圆锯形状的撞角，可以一瞬间撕开敌人的防线', 5, 1, 1000000, 17500, 59, 0, 96, 99, 106, 109, 0, 0, 0, 0, 0, 0, 13, 15, 0, 0, 0, '', '', 0, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (88, '齿轮切割者', 0, 0, '高度旋转的齿轮切割，能瞬间击溃对手的防御', 5, 2, 490, 85000, 60, 0, 117, 120, 127, 130, 0, 0, 0, 0, 0, 0, 18, 20, 0, 0, 0, '', '', 5, '', 0, '', 0, '', 0, 0, 6, 3000);
INSERT INTO `cfg_equip_accessory` VALUES (89, '倒钩撞角', 0, 0, '撞角尖附加了巨大的倒钩，可以将敌人撕碎', 5, 0, 0, 18000, 63, 0, 100, 103, 110, 113, 0, 0, 0, 0, 0, 0, 14, 16, 0, 0, 0, '', '', 0, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (90, '毁灭者', 0, 0, '击中之后的倒钩拉扯，能让你知道你船体有多薄弱', 5, 0, 0, 85000, 65, 0, 122, 125, 132, 135, 0, 0, 0, 0, 0, 0, 19, 21, 0, 0, 0, '', '', 4, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (91, '野蛮冲锋撞角', 0, 0, '适合冲锋型的船只，无可阻挡', 5, 1, 1500000, 20000, 67, 0, 104, 107, 114, 117, 0, 0, 0, 0, 0, 0, 15, 17, 0, 0, 0, '', '', 0, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (92, '残忍角斗士', 0, 0, '像是帝国角斗士一般，不是你死就是我亡，残暴之极的撞角', 5, 0, 0, 85000, 69, 0, 127, 130, 137, 140, 0, 0, 0, 0, 0, 0, 200, 220, 0, 0, 0, '', '', 5, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (93, '海神三叉戟', 0, 0, '做成了海神的武器形状，象征着对大海的敬畏', 5, 0, 0, 22000, 69, 0, 107, 110, 117, 120, 0, 0, 0, 0, 0, 0, 16, 18, 0, 0, 0, '', '', 0, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (94, '海神之怒', 0, 0, '寄宿者海神愤怒的撞角，传说有着驾驭海浪的能力', 5, 0, 0, 100000, 70, 0, 132, 135, 142, 145, 0, 0, 0, 0, 0, 0, 21, 23, 0, 0, 0, '', '', 5, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (95, '超合金撞角', 0, 0, '超合金材质！没有比这个更坚固的撞角了！', 5, 1, 3000000, 25000, 70, 0, 112, 115, 122, 125, 0, 0, 0, 0, 0, 0, 17, 19, 0, 0, 0, '', '', 0, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (96, '奥哈利刚撞角', 0, 0, '传说中的金属所制成的撞角，可以刺穿一切防御', 5, 2, 590, 100000, 70, 0, 142, 145, 152, 155, 0, 0, 0, 0, 0, 0, 23, 25, 0, 0, 0, '', '', 5, '', 0, '', 0, '', 0, 0, 7, 5000);
INSERT INTO `cfg_equip_accessory` VALUES (97, '血腥贯通者', 0, 0, '沾满血迹的古老的撞角，寄宿者狂暴的破坏力', 5, 0, 0, 25000, 70, 0, 122, 125, 132, 135, 0, 0, 0, 0, 0, 0, 19, 21, 0, 0, 0, '', '', 0, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (98, '死神的召唤', 0, 0, '当它击中你的时候，就放弃祈祷吧，死神来了！', 5, 0, 0, 100000, 70, 0, 152, 155, 162, 165, 0, 0, 0, 0, 0, 0, 25, 27, 0, 0, 0, '', '', 5, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (99, '简易三角帆', 0, 0, '建议的三角帆，小型船只的泛用型装备', 6, 0, 0, 300, 10, 0, 0, 0, 0, 0, 57, 62, 0, 0, 79, 84, 0, 0, 8, 0, 10, '', '', 0, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (100, '高速小型三角帆', 0, 0, '小三角帆的强化型，速度有了极大的提升', 6, 2, 90, 5000, 11, 0, 0, 0, 0, 0, 76, 81, 0, 0, 117, 122, 0, 0, 13, 0, 18, '', '', 4, '', 0, '', 0, '', 0, 1, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (101, '半自动三角帆', 0, 0, '半自动的三角帆，为水手们大大减轻了负担', 6, 1, 30000, 800, 13, 0, 0, 0, 0, 0, 59, 64, 0, 0, 83, 88, 0, 0, 8, 0, 11, '', '', 0, '', 0, '', 0, '', 0, 1, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (102, '全自动三角帆', 0, 0, '全自动的三角帆，虽然速度一般，但是省时省力', 6, 0, 0, 10000, 14, 0, 0, 0, 0, 0, 78, 83, 0, 0, 121, 126, 0, 0, 14, 0, 19, '', '', 4, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (103, '厚三角帆', 0, 0, '厚重的三角帆，能经得起暴风的考验', 6, 0, 0, 1500, 16, 0, 0, 0, 0, 0, 61, 66, 0, 0, 87, 92, 0, 0, 9, 0, 13, '', '', 0, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (104, '坚固的厚三角帆', 0, 0, '进一步加强了三角帆的厚度，无惧任何风暴', 6, 2, 190, 10000, 18, 0, 0, 0, 0, 0, 83, 88, 0, 0, 131, 136, 0, 0, 15, 0, 21, '', '', 4, '', 0, '', 0, '', 0, 1, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (105, '简易四角帆', 0, 0, '简单的四角帆，大中型船只才可以装备', 6, 1, 50000, 2500, 19, 0, 0, 0, 0, 0, 64, 69, 0, 0, 93, 98, 0, 0, 10, 0, 13, '', '', 0, '', 0, '', 0, '', 0, 1, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (106, '高速四角帆', 0, 0, '对普通四角帆进行了改良，使其更加便于高速航行', 6, 0, 0, 20000, 20, 0, 0, 0, 0, 0, 85, 90, 0, 0, 135, 140, 0, 0, 16, 0, 22, '', '', 5, '', 0, '', 0, '', 0, 0, 2, 100);
INSERT INTO `cfg_equip_accessory` VALUES (107, '全桅船帆组', 0, 0, '包含了船首帆和船身帆的套装，实用性MAX', 6, 0, 0, 2500, 22, 0, 0, 0, 0, 0, 67, 72, 0, 0, 99, 104, 0, 0, 11, 0, 14, '', '', 0, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (108, '全自动全桅船帆组', 0, 0, '傻瓜式的全自动船帆组，如何运作的依旧是个谜', 6, 0, 0, 20000, 25, 0, 0, 0, 0, 0, 90, 95, 0, 0, 145, 150, 0, 0, 18, 0, 24, '', '', 4, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (109, '简易背风帆', 0, 0, '简单的背风帆，设计出来是为了更好的逆风前进', 6, 0, 0, 4000, 28, 0, 0, 0, 0, 0, 73, 78, 0, 0, 111, 116, 0, 0, 12, 0, 17, '', '', 0, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (110, '豪华逆风帆', 0, 0, '配备豪华的逆风帆，让你不知道风向为何物', 6, 2, 290, 30000, 30, 0, 0, 0, 0, 0, 95, 100, 0, 0, 155, 160, 0, 0, 19, 0, 26, '', '', 5, '', 0, '', 0, '', 0, 1, 3, 500);
INSERT INTO `cfg_equip_accessory` VALUES (111, '大型四角帆', 0, 0, '大型的四角帆，需要有一定经验才能驾驭', 6, 1, 300000, 5000, 33, 0, 0, 0, 0, 0, 79, 84, 0, 0, 123, 128, 0, 0, 14, 0, 19, '', '', 0, '', 0, '', 0, '', 0, 1, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (112, '超高速大型四角帆', 0, 0, '能高速移动的大型四角帆，运用了最新的技术', 6, 0, 0, 30000, 35, 0, 0, 0, 0, 0, 100, 105, 0, 0, 165, 170, 0, 0, 21, 0, 28, '', '', 4, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (113, '富豪的巨三角帆', 0, 0, '雍容华贵的巨型三角帆，看上去都是珍贵的布料', 6, 0, 0, 8000, 40, 0, 0, 0, 0, 0, 85, 90, 0, 0, 135, 140, 0, 0, 16, 0, 22, '', '', 0, '', 0, '', 0, '', 0, 1, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (114, '富豪的黄金三角帆', 0, 0, '大富豪级别的商人才用得起的船帆，造价大概相当于一支舰队', 6, 2, 390, 50000, 42, 0, 0, 0, 0, 0, 107, 112, 0, 0, 179, 184, 0, 0, 23, 0, 30, '', '', 5, '', 0, '', 0, '', 0, 1, 4, 1000);
INSERT INTO `cfg_equip_accessory` VALUES (115, '银色丝绸四角帆', 0, 0, '边缘用银色的丝绸缝合的四角帆，为了张扬个性', 6, 1, 500000, 11000, 45, 0, 0, 0, 0, 0, 90, 95, 0, 0, 145, 150, 0, 0, 18, 0, 24, '', '', 0, '', 0, '', 0, '', 0, 1, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (116, '七色丝绸四角帆', 0, 0, '神秘的七色丝绸所制成的船帆，是所有舰队所梦想拥有的', 6, 0, 0, 60000, 48, 0, 0, 0, 0, 0, 113, 118, 0, 0, 191, 196, 0, 0, 24, 0, 33, '', '', 5, '', 0, '', 0, '', 0, 1, 5, 2000);
INSERT INTO `cfg_equip_accessory` VALUES (117, '锁链三角帆', 0, 0, '锁链捆绑的三角帆，很难被暴风扯断，但对水手的要求很高', 6, 0, 0, 13000, 52, 0, 0, 0, 0, 0, 97, 102, 0, 0, 159, 164, 0, 0, 20, 0, 26, '', '', 0, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (118, '束缚者三角帆', 0, 0, '用巨大的铁锁束缚着的船帆，但不知为何，航行时很轻便', 6, 0, 0, 70000, 55, 0, 0, 0, 0, 0, 120, 125, 0, 0, 205, 210, 0, 0, 27, 0, 36, '', '', 4, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (119, '沾满血迹的旧型巨帆', 0, 0, '沾满血迹的巨型帆，让人感觉到一股暴戾的气息', 6, 1, 800000, 15000, 58, 0, 0, 0, 0, 0, 103, 108, 0, 0, 171, 176, 0, 0, 21, 0, 29, '', '', 0, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (120, '嗜血者巨帆', 0, 0, '据说这个船帆可以赐予船员一股嗜血的渴望', 6, 0, 0, 75000, 60, 0, 0, 0, 0, 0, 125, 130, 0, 0, 215, 220, 0, 0, 28, 0, 38, '', '', 5, '', 0, '', 0, '', 0, 0, 6, 3000);
INSERT INTO `cfg_equip_accessory` VALUES (121, '豪华的全桅船帆组', 0, 0, '极度奢华的全桅帆组合，但求最贵！', 6, 0, 0, 18000, 63, 0, 0, 0, 0, 0, 108, 113, 0, 0, 181, 186, 0, 0, 23, 0, 31, '', '', 0, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (122, '拜金者全桅船帆', 0, 0, '极度奢华的船帆，但又无比的实用，几乎可以应付一切状况', 6, 2, 490, 85000, 65, 0, 0, 0, 0, 0, 130, 135, 0, 0, 225, 230, 0, 0, 30, 0, 40, '', '', 4, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (123, '金色太阳全桅帆', 0, 0, '金黄色的全桅帆，给人太阳的炽热感觉', 6, 1, 1000000, 20000, 68, 0, 0, 0, 0, 0, 113, 118, 0, 0, 191, 196, 0, 0, 24, 0, 33, '', '', 0, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (124, '夺日者全桅帆', 0, 0, '对太阳充满敬畏的人使用的船帆，传说可以让人心灵变得更纯净', 6, 0, 0, 100000, 70, 0, 0, 0, 0, 0, 140, 145, 0, 0, 245, 250, 0, 0, 33, 0, 44, '', '', 5, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (125, '蓝色海洋全桅帆', 0, 0, '纯蓝色的全桅帆，给人海洋的宁静感觉', 6, 0, 0, 25000, 70, 0, 0, 0, 0, 0, 120, 125, 0, 0, 205, 210, 0, 0, 27, 0, 36, '', '', 0, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (126, '唤海者全桅帆', 0, 0, '企图支配海洋的人使用的船帆，给人以无穷的勇气', 6, 0, 0, 100000, 70, 0, 0, 0, 0, 0, 145, 150, 0, 0, 255, 260, 0, 0, 34, 0, 46, '', '', 5, '', 0, '', 0, '', 0, 0, 7, 5000);
INSERT INTO `cfg_equip_accessory` VALUES (127, '神秘的网状背风帆', 0, 0, '神秘的网状背风帆，完全违背了自然原理，但是…速度好快！', 6, 1, 3000000, 25000, 70, 0, 0, 0, 0, 0, 130, 135, 0, 0, 225, 230, 0, 0, 30, 0, 40, '', '', 0, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (128, '风之吻', 0, 0, '风对你的亲吻，风，会指引你前进的方向', 6, 0, 0, 100000, 70, 0, 0, 0, 0, 0, 150, 155, 0, 0, 265, 270, 0, 0, 36, 0, 48, '', '', 5, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (129, '破木碎片', 300, 0, '用作装备强化时可提供300点装备经验', 4, 1, 10000, 1000, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, '', '', 1, '', 0, '', 0, '', 0, 100, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (130, '锈铁碎片', 1000, 0, '用作装备强化时可提供1000点装备经验', 4, 1, 10000, 1000, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, '', '', 2, '', 0, '', 0, '', 0, 100, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (131, '精钢碎片', 3000, 0, '用作装备强化时可提供3000点装备经验', 4, 1, 10000, 1000, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, '', '', 3, '', 0, '', 0, '', 0, 100, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (132, '白银碎片', 10000, 0, '用作装备强化时可提供10000点装备经验', 4, 1, 10000, 1000, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, '', '', 4, '', 0, '', 0, '', 0, 100, 0, 0);
INSERT INTO `cfg_equip_accessory` VALUES (133, '黄金碎片', 25000, 0, '用作装备强化时可提供25000点装备经验', 4, 1, 10000, 1000, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, '', '', 5, '', 0, '', 0, '', 0, 100, 0, 0);

SET FOREIGN_KEY_CHECKS = 1;
