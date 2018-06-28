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

 Date: 29/06/2018 07:37:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cfg_food
-- ----------------------------
DROP TABLE IF EXISTS `cfg_food`;
CREATE TABLE `cfg_food`  (
  `id` int(11) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `detail` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `level` int(11) NOT NULL,
  `fee_type` tinyint(1) NOT NULL,
  `fee_price` int(11) NOT NULL,
  `city` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `region` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trade` int(11) NOT NULL,
  `effect_value` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cfg_food
-- ----------------------------
INSERT INTO `cfg_food` VALUES (1, '烤鸡翅', '加了很少调味料的烤鸡翅，香味宜人', 1, 2, 60, '', '', 0, 25, 1);
INSERT INTO `cfg_food` VALUES (2, '芝士杏仁蛋糕', '添加了杏仁的芝士蛋糕，滑而不腻', 1, 2, 190, '', '', 0, 50, 1);
INSERT INTO `cfg_food` VALUES (3, '苏格兰熏鲑鱼', '苏格兰传统美食熏鲑鱼，外酥里嫩', 1, 2, 390, '', '', 0, 100, 1);
INSERT INTO `cfg_food` VALUES (4, '烤香肠', '简单的炭火烤香肠，寒冷地区的主食', 5, 0, 0, '', '西欧', 200, 30, 0);
INSERT INTO `cfg_food` VALUES (5, '炸鸡米花', '外酥里嫩过的炸鸡米花，作为零食很受欢迎', 5, 0, 0, '', '加勒比海', 200, 30, 0);
INSERT INTO `cfg_food` VALUES (6, '洋葱圈', '用洋葱为原料做的零食，有很高的热量', 5, 0, 0, '', '地中海', 200, 30, 0);
INSERT INTO `cfg_food` VALUES (7, '热汤面条', '东方特色的面食，出锅时的热气腾腾让人难忘', 5, 0, 0, '', '华夏', 200, 30, 0);
INSERT INTO `cfg_food` VALUES (8, '辣味烤串', '撒上胡椒粉喷香烤肉串', 10, 0, 0, '', '北欧', 300, 50, 0);
INSERT INTO `cfg_food` VALUES (9, '甜辣薯片', '很受小孩欢迎的零食，香脆可口', 20, 0, 0, '', '中美', 300, 65, 0);
INSERT INTO `cfg_food` VALUES (10, '风味羊羔片', '少数民族特色的凉菜，独特的配料更容易衬托出羊羔肉的美味', 10, 0, 0, '', '西亚', 300, 50, 0);
INSERT INTO `cfg_food` VALUES (11, '秘制酒酿', '酒加谷物的结合，很甜，也容易让人醉', 10, 0, 0, '', '东亚', 300, 50, 0);
INSERT INTO `cfg_food` VALUES (12, '奶酪香肠粒', '香肠粒混入奶酪中定型，欧式风味的小吃', 20, 0, 0, '', '南欧', 500, 65, 0);
INSERT INTO `cfg_food` VALUES (13, '玉米蜜汤', '香甜的玉米浓汤，冬天的时候喝一碗最舒服了', 10, 0, 0, '', '南美', 500, 50, 0);
INSERT INTO `cfg_food` VALUES (14, '酱香鸭腿', '卤汁腌制的鸭腿，酱香味浓郁', 20, 0, 0, '', '东欧', 500, 65, 0);
INSERT INTO `cfg_food` VALUES (15, '风味寿司', '日式的特色美食，据说能做出上万种搭配', 20, 0, 0, '', '东南亚', 500, 65, 0);
INSERT INTO `cfg_food` VALUES (16, '辣子鸡', '辣味小炒鸡，适合喜欢吃辣的人', 30, 0, 0, '', '北非,西非,东非,澳洲', 700, 80, 0);
INSERT INTO `cfg_food` VALUES (17, '果酱南瓜派', '南瓜派蘸上果酱，适合喜欢甜食的人', 30, 0, 0, '', '', 0, 90, 0);
INSERT INTO `cfg_food` VALUES (18, '椒盐烤鱼', '用木炭烤熟后的竹签鱼肉鲜美异常', 30, 0, 0, '', '北非,西非,东非,澳洲', 0, 110, 0);
INSERT INTO `cfg_food` VALUES (19, '红色鸡尾酒', '鲜红色泽的鸡尾酒，让人无限回味', 30, 0, 0, '', '北非,西非,东非,澳洲', 800, 130, 0);
INSERT INTO `cfg_food` VALUES (20, '奶油土豆卷', '淋上奶油的土豆卷，看着就很有食欲', 40, 0, 0, '', '北非,西非,东非,澳洲', 0, 110, 0);
INSERT INTO `cfg_food` VALUES (21, '蒜烤全鸭', '东方美食，蒜的味道中和烤鸭的腻味，让人着迷', 40, 0, 0, '', '', 1100, 125, 0);
INSERT INTO `cfg_food` VALUES (22, '柠檬烤玉米', '烤玉米的时候添加几片柠檬，玉米的味道会变得很有趣', 40, 0, 0, '', '', 0, 150, 0);
INSERT INTO `cfg_food` VALUES (23, '蓝色鸡尾酒', '碧蓝色的鸡尾酒，感觉喝了会不由自主想跳舞', 40, 0, 0, '', '', 0, 185, 0);
INSERT INTO `cfg_food` VALUES (24, '朗姆酒小牛肉', '朗姆酒煮小牛肉，牛肉的味道全部散发在酒里', 40, 0, 0, '', '', 0, 165, 0);
INSERT INTO `cfg_food` VALUES (25, '蜂蜜松饼', '西方国家下午茶的常客，看着很精致', 50, 0, 0, '', '', 0, 140, 0);
INSERT INTO `cfg_food` VALUES (26, '果酱洋葱鸡', '塞入洋葱等调料烘烤的整鸡，看着就食欲大增', 50, 0, 0, '', '', 0, 160, 0);
INSERT INTO `cfg_food` VALUES (27, '铁板羊肉串', '铁板风味的羊肉串，香味四溢', 50, 0, 0, '', '', 0, 185, 0);
INSERT INTO `cfg_food` VALUES (28, '炭火辣烤鱼', '抹上辣酱的海鱼，烤熟后的油脂会流满鱼身', 50, 0, 0, '', '', 2500, 230, 0);
INSERT INTO `cfg_food` VALUES (29, '意大利混肉沙拉', '意大利人发明的沙拉，家畜和鱼肉的组合让人耳目一新', 50, 0, 0, '', '', 0, 205, 0);
INSERT INTO `cfg_food` VALUES (30, '时蔬烤猪排', '烤猪排和时蔬的组合，有田园气息的菜肴', 60, 0, 0, '', '', 0, 180, 0);
INSERT INTO `cfg_food` VALUES (31, '清炖小羊肉', '寒冷地区人民最喜欢的热食，那一口羊肉汤让人回味', 60, 0, 0, '', '', 0, 200, 0);
INSERT INTO `cfg_food` VALUES (32, '里脊肉辣炒饭', '用猪里脊肉片和生鲜辣酱炒的饭，辣过瘾', 60, 0, 0, '', '', 0, 240, 0);
INSERT INTO `cfg_food` VALUES (33, '七彩鸡尾酒', '呈现七彩色泽的鸡尾酒，让人迷醉于其中', 60, 0, 0, '', '', 0, 300, 0);
INSERT INTO `cfg_food` VALUES (34, '杂肉烩面', '东方少数民族的食物，很受面试爱好者欢饮', 60, 0, 0, '', '', 0, 280, 0);
INSERT INTO `cfg_food` VALUES (35, '香焗牛腩', '用违背传统的牛腩做法的方式做出的让人耳目一新的料理', 70, 0, 0, '', '', 0, 240, 0);
INSERT INTO `cfg_food` VALUES (36, '干酪香肠拼盘', '香肠与干酪，粗野与细致的结合', 70, 0, 0, '', '', 0, 300, 0);
INSERT INTO `cfg_food` VALUES (37, '奶酪鸡肉可丽饼', '最上级的奶酪可丽饼，加入了鸡肉粒，深受女士的喜爱', 70, 0, 0, '', '', 0, 350, 0);
INSERT INTO `cfg_food` VALUES (38, '五香烤全羊', '少数部落秘制的烤羊，让人无法忘记的味道', 70, 0, 0, '', '', 0, 450, 0);
INSERT INTO `cfg_food` VALUES (39, '天堂鸡尾酒', '让人感觉灵魂会得到升华的鸡尾酒，配方是绝对机密', 70, 0, 0, '', '', 0, 500, 0);

SET FOREIGN_KEY_CHECKS = 1;
