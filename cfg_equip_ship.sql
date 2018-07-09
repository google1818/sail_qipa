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

 Date: 29/06/2018 07:37:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cfg_equip_ship
-- ----------------------------
DROP TABLE IF EXISTS `cfg_equip_ship`;
CREATE TABLE `cfg_equip_ship`  (
  `id` int(11) NOT NULL,
  `legendary` int(11) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` tinyint(1) NOT NULL,
  `detail` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fee_type` tinyint(4) NOT NULL,
  `fee_price` bigint(11) NOT NULL,
  `sell_price` bigint(11) NOT NULL,
  `level` bigint(11) NOT NULL,
  `arm` bigint(11) NOT NULL,
  `hp_min` bigint(11) NOT NULL,
  `hp_max` bigint(11) NOT NULL,
  `h_grow` int(11) NOT NULL DEFAULT 0,
  `speed_min` int(11) NOT NULL,
  `speed_max` int(11) NOT NULL,
  `s_grow` int(11) NOT NULL,
  `city` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `region` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `base_star` tinyint(1) NOT NULL,
  `skill1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `rate1` int(1) NOT NULL DEFAULT 0,
  `skill2` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `rate2` int(1) NOT NULL DEFAULT 0,
  `skill3` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `rate3` int(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL,
  `duty` tinyint(11) NOT NULL,
  `reputation` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cfg_equip_ship
-- ----------------------------
INSERT INTO `cfg_equip_ship` VALUES (1, 0, '单船桅小型船', 1, '世界上随处可见到单船桅的小型船。', 1, 5000, 50, 1, 0, 340, 350, 40, 60, 70, 8, '', '地中海,加勒比海,西欧,华夏', 0, '17,19,34,37,75,1', 20, '89,92,95,80,98,101,1', 40, '140,143,146,149,152', 35, 1, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (2, 0, '轻型海鸥号', 1, '普通的单船桅小型船的精装版，称为“海鸥”', 0, 0, 1000, 4, 0, 467, 477, 68, 127, 137, 19, '', '', 4, '17,19,34,37,75,1', 20, '89,92,95,80,98,101,1', 40, '140,143,146,149,152', 20, 0, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (3, 0, '轻木帆船', 1, '只有一支船桅的小型帆船。由于构造简单，所以性能较低。', 0, 0, 200, 5, 0, 390, 400, 50, 70, 80, 10, '', '地中海', 0, '1,4,13,16,59,62,63,6', 25, '80,98,101,104,107,11', 30, '140,143,146,149,152', 35, 0, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (4, 0, '轻木帆船', 1, '只有一支船桅的小型帆船。由于构造简单，所以性能较低。', 0, 0, 200, 5, 0, 390, 400, 50, 70, 80, 10, '', '加勒比海', 0, '17,19,34,37,75,1', 10, '80,98,101,104,107,11', 35, '116,119,122,125,128,', 35, 0, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (5, 0, '轻木帆船', 1, '只有一支船桅的小型帆船。由于构造简单，所以性能较低。', 0, 0, 200, 5, 0, 390, 400, 50, 70, 80, 10, '', '西欧', 0, '17,19,34,37,75,1', 10, '80,98,101,104,107,11', 35, '116,119,122,125,128,', 20, 0, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (6, 0, '轻木帆船', 1, '只有一支船桅的小型帆船。由于构造简单，所以性能较低。', 0, 0, 200, 5, 0, 390, 400, 50, 70, 80, 10, '', '华夏', 0, '1,4,13,16,59,62,63,6', 30, '80,98,101,104,107,11', 20, '140,143,146,149,152,', 35, 0, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (7, 0, '轻木高速帆船', 1, '比普通的轻木帆船拥有更高的移动能力', 0, 0, 2000, 8, 0, 541, 551, 81, 129, 139, 20, '', '', 4, '17,19,34,37,75', 25, '80,98,101,104,107,11', 40, '140,143,146,149,152,', 20, 0, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (8, 0, '英式小型帆船', 1, '英格兰常见的小型帆船', 1, 15000, 500, 10, 0, 389, 399, 51, 90, 100, 12, '', '', 0, '1,13,59,62,63,65,68,', 40, '80,101,107,110,113', 25, '140,143,146,149,152,', 35, 1, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (9, 0, '英格兰冲锋号', 1, '一般作为旗舰的英格兰战斗用帆船', 2, 90, 5000, 11, 0, 610, 620, 94, 89, 99, 15, '', '', 4, '17,19,34,37,75,1', 20, '89,92,95,80,98,101,1', 40, '140,143,146,149,152,', 30, 1, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (10, 0, '小型阿拉伯帆船', 1, '在印度洋大受欢迎的帆船。航行性能高，而且速度很快。', 0, 0, 500, 13, 0, 420, 430, 56, 76, 86, 11, '', '', 0, '17,19,34,37,75,1', 20, '89,92,95,80,98,101,1', 40, '140,143,146,149,152,', 30, 0, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (11, 0, '大型阿拉伯战船', 1, '阿拉伯帆船的改造版，可以进行适当的战斗', 0, 0, 10000, 14, 0, 694, 704, 107, 54, 64, 9, '', '', 4, '1,4,13,16,59,62,63,6', 25, '80,98,101,104,107,11', 30, '140,143,146,149,152,', 30, 0, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (12, 0, '小型中国帆船', 1, '小型的中国独创的帆船', 1, 50000, 1500, 15, 0, 395, 405, 54, 107, 117, 15, '', '', 0, '17,19,34,37,75,1', 10, '80,98,101,104,107,11', 35, '116,119,122,125,128,', 40, 1, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (13, 0, '大型中国战船', 1, '东方人民一般用作旗舰的战船，其综合能力很平均', 2, 190, 10000, 16, 0, 650, 660, 102, 135, 145, 22, '', '', 4, '17,19,34,37,75,1', 10, '80,98,101,104,107,11', 35, '116,119,122,125,128,', 40, 1, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (14, 0, '卡瑞克帆船', 1, '制造时特地航海性能提高。', 0, 0, 1500, 17, 0, 460, 470, 64, 84, 94, 12, '', '', 0, '1,4,13,16,59,62,63,6', 30, '80,98,101,104,107,11', 20, '140,143,146,149,152,', 35, 0, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (15, 0, '狂暴剑鱼帆船', 1, '像发狂的剑鱼一般捕食，喜欢用撞击来摧毁对方', 0, 0, 10000, 18, 0, 670, 680, 106, 153, 163, 25, '', '', 4, '17,19,34,37,75', 20, '80,101,107,110,113', 25, '135,138,140,143,146,', 35, 0, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (16, 0, '轻型排桨帆船', 1, '小型排桨帆船。虽然是小型，可是战斗能力很高', 0, 0, 2000, 20, 0, 440, 450, 63, 120, 130, 18, '', '', 0, '17,19,34,37,75', 25, '80,98,101,104,107,11', 40, '140,143,146,149,152,', 20, 0, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (17, 0, '高速排桨帆船', 1, '以轻便高速而著名的排桨帆船，适合用来进行贸易', 2, 290, 20000, 21, 0, 629, 639, 100, 188, 198, 31, '', '', 5, '17,19,34,37,75', 20, '80,101,107,110,113', 25, '135,138,140,143,146,', 35, 1, 2, 100);
INSERT INTO `cfg_equip_ship` VALUES (18, 0, '强袭型排桨帆船', 1, '主要以手划航行，为战斗专用而设计的船。', 1, 120000, 2500, 23, 0, 520, 530, 76, 96, 106, 15, '', '', 0, '17,19,34,37,75', 25, '80,98,101,104,107,11', 40, '140,143,146,149,152,', 20, 1, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (19, 0, '非洲雄狮号', 1, '像非洲草原的狮子一般，拥有强大的破坏力和追踪力', 0, 0, 20000, 24, 0, 767, 777, 123, 93, 103, 16, '', '', 4, '17,19,34,37,75', 20, '80,101,107,110,113', 25, '135,138,140,143,146,', 35, 0, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (20, 0, '史路普帆船', 1, '探险航海用的高性能小型船。仅装备纵帆', 1, 200000, 3000, 25, 0, 457, 467, 68, 155, 165, 24, '', '', 0, '17,19,34,37,75', 20, '80,101,107,110,113', 25, '135,138,140,143,146,', 35, 1, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (21, 0, '轻便型史路普帆船', 1, '优化了史路普帆船的机动性，使其在战斗的时候更加自如', 0, 0, 20000, 28, 0, 770, 780, 126, 161, 171, 27, '', '', 4, '1,13,17,19,28,31,34,', 40, '80,101,107,110,113', 25, '140,143,146,149,152,', 20, 0, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (22, 0, '福克帆船', 1, '荷兰开发的三桅帆船。', 0, 0, 4000, 30, 0, 590, 600, 90, 110, 120, 18, '', '', 0, '1,13,59,62,63,65,68,', 40, '80,101,107,110,113', 25, '140,143,146,149,152,', 20, 0, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (23, 0, '蓝色海豚号', 1, '蓝色的船体像是在海上戏弄对手的海豚一般', 2, 390, 30000, 32, 0, 728, 738, 120, 236, 246, 40, '', '', 5, '1,13,17,19,28,31,34,', 40, '80,101,107,110,113', 25, '140,143,146,149,152', 20, 1, 3, 500);
INSERT INTO `cfg_equip_ship` VALUES (24, 0, '英式双船桅帆船', 1, '在英格兰常见双船桅的柯克帆船', 1, 300000, 5000, 33, 0, 588, 598, 91, 141, 151, 23, '', '', 0, '17,19,34,37,75', 25, '80,98,101,104,107,11', 40, '140,143,146,149,152', 20, 1, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (25, 0, '巨鲨号', 1, '船头像是鲨鱼一般的武装帆船，给人强大的威慑力', 0, 0, 30000, 34, 0, 830, 840, 138, 158, 168, 27, '', '', 4, '1,13,59,62,63,65,68', 40, '80,101,107,110,113', 25, '140,143,146,149,152', 20, 0, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (26, 0, '武装快艇', 1, '重视速度的轻武装船，也稍擅长外洋航行', 0, 0, 6000, 35, 0, 575, 585, 90, 159, 169, 26, '', '', 0, '17,19,34,37,75', 20, '80,101,107,110,113', 25, '135,138,140,143,146', 35, 0, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (27, 0, '巨型武装快艇', 1, '经过改造的扩大版武装快艇，虽然降低了速度，但是防御力得到了大大的提升', 0, 0, 30000, 36, 0, 850, 860, 142, 127, 137, 22, '', '', 4, '19,34,37,75', 20, '80,101,107,110,113', 25, '146,149,158,161,164,', 10, 0, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (28, 0, '斯库纳帆船', 1, '仅装备纵帆的长距离航海用高速中型帆船', 1, 500000, 6000, 35, 0, 640, 650, 100, 120, 130, 20, '', '', 0, '19,34,37,75', 15, '80,113', 15, '140,143,146,149,152,', 20, 1, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (29, 0, '轻型斯库纳帆船', 1, '对桅杆进行了大量改装的新种斯库纳帆船，速度大大提升', 0, 0, 30000, 37, 0, 773, 783, 129, 198, 208, 34, '', '', 4, '19,34,37,75', 20, '80,101,107,110,113', 25, '146,149,158,161,164,', 10, 0, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (30, 0, '阿拉伯中型排桨帆船', 1, '阿拉伯地区周遭。大型一般用中型排桨帆船', 0, 0, 7500, 38, 0, 670, 680, 106, 126, 136, 21, '', '', 0, '19,34,37,75', 15, '80,113', 15, '140,143,146,149,152,', 20, 0, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (31, 0, '阿拉伯巨型战舰', 1, '完全舍弃了原本用作经商的能力，改造成的纯战斗用船只，在印度洋上所向披靡', 0, 0, 30000, 39, 0, 880, 890, 148, 79, 89, 14, '', '', 4, '19,34,37,75', 20, '80,101,107,110,113', 25, '146,149,158,161,164,', 10, 0, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (32, 0, '战列舰', 1, '专为战斗而制造的大型船舰。拥有压倒性的攻击力和破坏力。', 1, 800000, 8000, 40, 0, 690, 700, 110, 144, 154, 24, '', '', 0, '17,19,28,31,34,40,44', 25, '80,113', 20, '146,149,158,161,164,', 10, 1, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (33, 0, '重甲战列舰', 1, '以高防御力而闻名的战列舰，被应用于各国的防御型船只', 2, 490, 50000, 41, 0, 991, 1001, 167, 62, 72, 12, '', '', 5, '59,62,63,65,68,69,71', 25, '80,113', 20, '146,149,158,161,164,', 10, 1, 4, 1000);
INSERT INTO `cfg_equip_ship` VALUES (34, 0, '北洋水师战列舰', 1, '中国古代史上最强水军北洋水师专用的最强舰船', 0, 0, 10000, 42, 0, 638, 648, 102, 191, 201, 31, '', '', 0, '19,34,37,75', 15, '80,113', 15, '140,143,146,149,152,', 20, 1, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (35, 0, '重型北洋战列舰', 1, '极大的加强了防御能力的北洋海军的秘密武器，只在关键时刻会被使用', 0, 0, 50000, 43, 0, 920, 930, 156, 138, 148, 24, '', '', 4, '19,34,37,75', 20, '80,101,107,110,113', 25, '146,149,158,161,164,', 10, 1, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (36, 0, '巨型排桨帆船', 1, '超大型的排桨帆船', 1, 1000000, 11000, 45, 0, 740, 750, 120, 140, 150, 24, '', '', 0, '17,19,28,31,34,40,44', 25, '80,113', 20, '146,149,158,161,164,', 10, 1, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (37, 0, '大陆巨人号', 1, '据说高度是普通船只的两倍，无愧于其“巨人”的称号，但是速度有些慢', 0, 0, 50000, 47, 0, 960, 970, 164, 184, 194, 32, '', '', 4, '59,62,63,65,68,69,71', 25, '80,113', 20, '146,149,158,161,164,', 10, 1, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (38, 0, '西班牙皇家战列舰', 1, '西班牙皇家所使用的战列舰', 0, 0, 12000, 50, 0, 750, 760, 123, 182, 192, 31, '', '', 0, '19,34,37,75', 15, '80,113', 15, '140,143,146,149,152,', 20, 0, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (39, 0, '皇家圣剑号', 1, '西班牙皇室的专用船，用圣剑象征着这艘船所代表的权利的能力', 2, 590, 70000, 51, 0, 1000, 1010, 172, 232, 242, 41, '', '', 5, '19,34,37,75', 20, '80,101,107,110,113', 25, '146,149,158,161,164,', 10, 0, 5, 2000);
INSERT INTO `cfg_equip_ship` VALUES (40, 0, '皇家护卫舰', 1, '具双层炮列甲板以重装备自豪的主力舰。', 0, 0, 15000, 53, 0, 820, 830, 136, 156, 166, 27, '', '', 0, '17,19,28,31,34,40,44', 25, '80,113', 20, '146,149,158,161,164,', 10, 0, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (41, 0, '逐风者号', 1, '拥有超高移动速度的贵族专用护卫舰，追逐风的脚步', 0, 0, 70000, 52, 0, 806, 816, 139, 316, 326, 55, '', '', 4, '59,62,63,65,68,69,71', 25, '80,113', 20, '146,149,158,161,164,', 10, 0, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (42, 0, '野蛮部落排桨帆船', 1, '南地中海海盗爱用的高性能战斗排桨帆船', 1, 1500000, 15000, 55, 0, 840, 850, 140, 160, 170, 28, '', '', 0, '19,34,37,75', 15, '80,113', 15, '140,143,146,149,152,', 20, 0, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (43, 0, '强袭破坏者', 1, '无论什么船在它的面前都会被碾压，毫不留情的野兽之船', 0, 0, 70000, 54, 0, 1030, 1040, 178, 198, 208, 35, '', '', 4, '19,34,37,75', 20, '80,101,107,110,113', 25, '146,149,158,161,164,', 10, 0, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (44, 0, '重炮战列舰', 1, '具三层炮列甲板，以压倒性破坏力自豪的战列舰。', 0, 0, 15000, 57, 0, 860, 870, 144, 164, 174, 28, '', '', 0, '17,19,28,31,34,40,44', 25, '80,113', 20, '146,149,158,161,164,', 10, 0, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (45, 0, '重炮毁灭手', 1, '拥有搭载近百门重型甲板炮的船体，短时间内可以毁灭一个港口', 0, 0, 70000, 58, 0, 1070, 1080, 186, 184, 194, 33, '', '', 4, '59,62,63,65,68,69,71', 25, '80,113', 20, '146,149,158,161,164,', 10, 0, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (46, 0, '远洋大型福船', 1, '中国“四大古船”之一，坚固庞大的船身保证了远航', 1, 3000000, 17500, 60, 0, 890, 900, 150, 188, 198, 33, '', '', 0, '19,34,37,75', 15, '80,113', 15, '140,143,146,149,152,', 20, 0, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (47, 0, '东方龙号', 1, '东方之龙，蕴含着东方神秘的工匠技术和对船体平衡的特殊理解', 0, 0, 85000, 61, 0, 1100, 1110, 192, 212, 222, 38, '', '', 5, '19,34,37,75', 20, '80,101,107,110,113', 25, '146,149,158,161,164,', 10, 0, 6, 3000);
INSERT INTO `cfg_equip_ship` VALUES (48, 0, '法国皇家巨型排桨帆船', 1, '太阳王路易十四时代所开发，为投入西班牙王位继承战争所设计的终极排桨帆船，也是大航海时代最后、最强的排桨帆船', 0, 0, 18000, 63, 0, 920, 930, 156, 176, 186, 31, '', '', 0, '17,19,28,31,34,40,44', 25, '80,113', 20, '146,149,158,161,164,', 10, 0, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (49, 0, '皇家守望者号', 1, '守护西方皇室专用的巨型排浆船，只有真正的骑士才被允许登船', 0, 0, 85000, 64, 0, 1130, 1140, 198, 263, 273, 47, '', '', 4, '59,62,63,65,68,69,71', 25, '80,113', 20, '146,149,158,161,164,', 10, 0, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (50, 0, '威尼斯巨型排桨帆船', 1, '威尼斯海军所使用的巨型排浆帆船', 1, 4000000, 20000, 65, 0, 940, 950, 160, 180, 190, 32, '', '', 0, '19,34,37,75', 15, '80,113', 15, '140,143,146,149,152,', 20, 0, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (51, 0, '海盗追踪者号', 1, '据说没有海盗在这艘船面前逃跑过，它的配置平衡的让人觉得完美', 2, 690, 85000, 66, 0, 1034, 1044, 181, 314, 324, 56, '', '', 5, '19,34,37,75', 20, '80,101,107,110,113', 25, '146,149,158,161,164,', 10, 0, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (52, 0, '重甲巡洋舰', 1, '装备有较强武器的舰艇，重甲更增加了防御力', 0, 0, 20000, 67, 0, 863, 873, 147, 261, 271, 45, '', '', 0, '17,19,28,31,34,40,44', 25, '80,113', 20, '146,149,158,161,164,', 10, 0, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (53, 0, '破浪者', 1, '没有风暴和巨浪可以阻止这艘船，它的存在便是在藐视海洋', 0, 0, 85000, 68, 0, 1250, 1260, 220, 158, 168, 29, '', '', 5, '19,34,37,75', 20, '80,101,107,110,113', 25, '146,149,158,161,164,', 10, 0, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (54, 0, '重型武装驱逐舰', 1, '搭载了超重型武器的武装驱逐舰，可以摧毁任何挡在面前的敌人', 1, 5000000, 25000, 70, 0, 1040, 1050, 180, 200, 210, 36, '', '', 0, '19,34,37,75', 15, '80,113', 15, '140,143,146,149,152,', 20, 0, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (55, 0, '黑珍珠号', 1, '杰克船长的传奇之船，象征的杰克船长传奇的一生和那数不尽的荣耀', 0, 0, 100000, 70, 0, 1240, 1250, 220, 265, 275, 48, '', '', 5, '19,34,37,75', 20, '80,101,107,110,113', 25, '146,149,158,161,164,', 10, 0, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (56, 0, '大型破浪武装舰', 1, '船体配置可以无视大部分的海浪，在海洋上穿梭自如', 0, 0, 25000, 70, 0, 1070, 1080, 186, 206, 216, 37, '', '', 0, '19,34,37,75', 15, '80,113', 15, '135,138,140,143,146,', 20, 0, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (57, 0, '幽灵船', 1, '无人知晓其来自何方，也没有活人知道船上有什么，你能驾驭么！', 0, 0, 100000, 70, 0, 1420, 1430, 253, 198, 208, 36, '', '', 5, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (58, 0, '超高速轻帆船', 1, '张开帆后像海鸥一般飞驰于海面的的新型船只。速度无人可及。', 0, 0, 25000, 70, 0, 933, 943, 163, 345, 355, 61, '', '', 0, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (59, 0, '海洋之风', 1, '据说能吸收大海能量的神秘船体，淡蓝色犹如海洋的一部分', 2, 790, 100000, 70, 0, 1205, 1215, 216, 395, 405, 72, '', '', 5, '', 0, '', 0, '', 0, 0, 7, 5000);
INSERT INTO `cfg_equip_ship` VALUES (60, 0, '无敌重甲巡洋舰', 1, '超强的装甲、武器和远洋能力造就了无敌的舰船', 1, 7500000, 25000, 70, 0, 1140, 1150, 200, 220, 230, 40, '', '', 0, '', 0, '', 0, '', 0, 0, 0, 0);
INSERT INTO `cfg_equip_ship` VALUES (61, 0, '安妮女王复仇号', 1, '黑胡子船长的爱船，最让世界政府闻风丧胆的存在，它的存在，象征着“无限的掠夺”', 0, 0, 100000, 70, 0, 1320, 1330, 237, 354, 364, 65, '', '', 5, '', 0, '', 0, '', 0, 0, 0, 0);

SET FOREIGN_KEY_CHECKS = 1;