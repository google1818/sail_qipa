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

 Date: 29/06/2018 07:37:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cfg_goods
-- ----------------------------
DROP TABLE IF EXISTS `cfg_goods`;
CREATE TABLE `cfg_goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `content` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fee_type` int(11) NOT NULL DEFAULT 0,
  `fee_price` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `city` int(11) NOT NULL DEFAULT 0,
  `product` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 183 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cfg_goods
-- ----------------------------
INSERT INTO `cfg_goods` VALUES (1, '黄铜', 8, '铜和锌的合金.多被用来作装饰品.', 0, 3380, 1, 110049, '[{\"id\":12,\"name\":\"重型霰弹炮\",\"type\":2},{\"id\":23,\"name\":\"喷火炮\",\"type\":2},{\"id\":30,\"name\":\"定向轰炸装置\",\"type\":2},{\"id\":53,\"name\":\"火焰喷射炮\",\"type\":2},{\"id\":44,\"name\":\"重炮战列舰\",\"type\":1},{\"id\":57,\"name\":\"幽灵船\",\"type\":1},{\"id\":40,\"name\":\"桃木装甲\",\"type\":4},{\"id\":52,\"name\":\"铁板装甲\",\"type\":4},{\"id\":81,\"name\":\"锐牙海兽撞角\",\"type\":5}]');
INSERT INTO `cfg_goods` VALUES (2, '铜矿石', 1, '黄铜矿等含铜的矿石.铜矿中经常出产别的矿物.', 0, 6910, 1, 110051, '[{\"id\":6,\"name\":\"重火炮\",\"type\":2},{\"id\":11,\"name\":\"霰弹炮\",\"type\":2},{\"id\":12,\"name\":\"重型霰弹炮\",\"type\":2},{\"id\":25,\"name\":\"迫击炮\",\"type\":2},{\"id\":42,\"name\":\"流星\",\"type\":2},{\"id\":7,\"name\":\"海龟像\",\"type\":3},{\"id\":28,\"name\":\"战争美人鱼像\",\"type\":3},{\"id\":44,\"name\":\"红松木装甲\",\"type\":4},{\"id\":64,\"name\":\"超合金装甲\",\"type\":4},{\"id\":87,\"name\":\"锯状粉碎撞角\",\"type\":5},{\"id\":90,\"name\":\"毁灭者\",\"type\":5}]');
INSERT INTO `cfg_goods` VALUES (3, '煤', 8, '纯黑色的,能够燃烧的石头.能够透过燃烧获得高温,但烟雾很大.', 0, 14150, 1, 140051, '[{\"id\":25,\"name\":\"迫击炮\",\"type\":2},{\"id\":39,\"name\":\"高效滑膛炮\",\"type\":2},{\"id\":45,\"name\":\"无畏炮\",\"type\":2},{\"id\":35,\"name\":\"重型北洋战列舰\",\"type\":1},{\"id\":87,\"name\":\"锯状粉碎撞角\",\"type\":5}]');
INSERT INTO `cfg_goods` VALUES (4, '小麦', 3, '公元前人类就开始种植的谷物.在贫瘠的土地上收成很差.', 0, 400, 1, 180051, '[{\"id\":7,\"name\":\"热汤面条\",\"type\":7},{\"id\":25,\"name\":\"蜂蜜松饼\",\"type\":7},{\"id\":34,\"name\":\"杂肉烩面\",\"type\":7},{\"id\":37,\"name\":\"奶酪鸡肉可丽饼\",\"type\":7}]');
INSERT INTO `cfg_goods` VALUES (5, '丝绸布', 11, '蚕丝织就的布料.独特的光泽和柔滑的手感是其主要特征.', 0, 1540, 1, 190051, '[{\"id\":10,\"name\":\"小型阿拉伯帆船\",\"type\":1},{\"id\":30,\"name\":\"阿拉伯中型排桨帆船\",\"type\":1},{\"id\":103,\"name\":\"厚三角帆\",\"type\":6},{\"id\":108,\"name\":\"全自动全桅船帆组\",\"type\":6},{\"id\":116,\"name\":\"七色丝绸四角帆\",\"type\":6}]');
INSERT INTO `cfg_goods` VALUES (6, '水稻', 3, '水稻 主要在印度到东亚地区的水田种植.', 0, 430, 1, 220051, '');
INSERT INTO `cfg_goods` VALUES (7, '番红花', 18, '番红花干燥后的雌蕊.是一种非常昂贵的香辛料.', 0, 4790, 1, 220049, '');
INSERT INTO `cfg_goods` VALUES (8, '月桂', 18, '干燥后的月桂树叶.除可作药用之作,广泛应用于烹调.', 0, 1030, 1, 220048, '[{\"id\":11,\"name\":\"秘制酒酿\",\"type\":7},{\"id\":24,\"name\":\"朗姆酒小牛肉\",\"type\":7}]');
INSERT INTO `cfg_goods` VALUES (9, '铁', 8, '从铁矿石中提炼出来的一种金属.广泛应用于生活的各个领域.', 0, 3000, 1, 180047, '[{\"id\":20,\"name\":\"重型法兰克炮\",\"type\":2},{\"id\":31,\"name\":\"甲板炮\",\"type\":2},{\"id\":13,\"name\":\"老虎像\",\"type\":3},{\"id\":24,\"name\":\"神圣骑士团像\",\"type\":3},{\"id\":40,\"name\":\"桃木装甲\",\"type\":4},{\"id\":56,\"name\":\"厚铁装甲\",\"type\":4},{\"id\":76,\"name\":\"捕食者\",\"type\":5}]');
INSERT INTO `cfg_goods` VALUES (10, '桃木', 5, '桃木木质细腻,木体清香.在亚洲有着广泛种植.', 0, 1440, 1, 220053, '[{\"id\":6,\"name\":\"轻木帆船\",\"type\":1},{\"id\":14,\"name\":\"卡瑞克帆船\",\"type\":1},{\"id\":22,\"name\":\"福克帆船\",\"type\":1},{\"id\":35,\"name\":\"重型北洋战列舰\",\"type\":1},{\"id\":52,\"name\":\"重甲巡洋舰\",\"type\":1},{\"id\":1,\"name\":\"海豚像\",\"type\":3},{\"id\":36,\"name\":\"木板甲\",\"type\":4},{\"id\":40,\"name\":\"桃木装甲\",\"type\":4},{\"id\":57,\"name\":\"捍卫者装甲\",\"type\":4},{\"id\":69,\"name\":\"硬木撞角\",\"type\":5},{\"id\":73,\"name\":\"蛇形撞角\",\"type\":5}]');
INSERT INTO `cfg_goods` VALUES (11, '珊瑚', 19, '桃红色或红色的珊瑚.大多取自深海.', 0, 13430, 1, 220056, '');
INSERT INTO `cfg_goods` VALUES (12, '清酒', 7, '米制的日本酒.清淡爽滑的风味为其特徽.', 0, 2000, 1, 180056, '');
INSERT INTO `cfg_goods` VALUES (13, '芥末', 18, '在世界各地都有种植的,一种辣味很强的香辛料.', 0, 1560, 1, 180057, '[{\"id\":15,\"name\":\"风味寿司\",\"type\":7}]');
INSERT INTO `cfg_goods` VALUES (14, '陶瓷器皿', 14, '带有豪华彩色装饰的陶瓷器皿.', 0, 12520, 1, 180058, '');
INSERT INTO `cfg_goods` VALUES (15, '铃兰', 17, '从铃兰花中提取的一种香料.香气清新优雅.', 0, 7420, 1, 120058, '');
INSERT INTO `cfg_goods` VALUES (16, '苹果醋', 4, '以苹果为原料制成的醋.具有一种独得的香味和甜味.', 0, 3110, 1, 120056, '');
INSERT INTO `cfg_goods` VALUES (17, '姜黄', 10, '颜色鲜艳的黄色染料.也可做香辛料或药材使用.', 0, 1940, 1, 160056, '');
INSERT INTO `cfg_goods` VALUES (18, '石榴', 10, '一种黄红色果皮的树木果实.其果皮可用作茶色染料.', 0, 3580, 1, 160055, '[{\"id\":12,\"name\":\"利齿鲨鱼像\",\"type\":3},{\"id\":109,\"name\":\"简易背风帆\",\"type\":6},{\"id\":125,\"name\":\"蓝色海洋全桅帆\",\"type\":6}]');
INSERT INTO `cfg_goods` VALUES (19, '旱稻', 3, '旱稻、陆稻.在旱地种植的稻类植物.适合于无法种植水稻的地区.', 0, 360, 1, 140055, '');
INSERT INTO `cfg_goods` VALUES (20, '大麦', 3, '在较为贫瘠的土地上也能生长的麦类植物.可用作酿酒的原料.', 0, 320, 1, 130055, '[{\"id\":11,\"name\":\"秘制酒酿\",\"type\":7},{\"id\":15,\"name\":\"风味寿司\",\"type\":7},{\"id\":32,\"name\":\"里脊肉辣炒饭\",\"type\":7}]');
INSERT INTO `cfg_goods` VALUES (21, '广藿香', 17, '印度和东南亚产的植物.不仅可以用作香料,还可以当作解毒药.', 0, 14600, 1, 250053, '');
INSERT INTO `cfg_goods` VALUES (22, '硬木板', 8, '用于各种设施建筑的泛用型木材板,坚固耐用.', 0, 16000, 1, 300053, '[{\"id\":39,\"name\":\"高效滑膛炮\",\"type\":2},{\"id\":22,\"name\":\"福克帆船\",\"type\":1},{\"id\":34,\"name\":\"北洋水师战列舰\",\"type\":1},{\"id\":11,\"name\":\"鲨鱼像\",\"type\":3},{\"id\":52,\"name\":\"铁板装甲\",\"type\":4},{\"id\":83,\"name\":\"混金撞角\",\"type\":5},{\"id\":47,\"name\":\"东方龙号\",\"type\":1}]');
INSERT INTO `cfg_goods` VALUES (23, '香蕉', 9, '原产于热带亚洲的多年生植物.果实香甜、营养价值高.', 0, 13820, 1, 300054, '');
INSERT INTO `cfg_goods` VALUES (24, '双手剑', 12, '双手使用的,宽大沉重的剑.使用者需要有很大的腕力.', 0, 12470, 0, 320054, '');
INSERT INTO `cfg_goods` VALUES (25, '炮弹', 13, '大炮发射的炮弹.主要由铅和铁制成.', 0, 12860, 0, 340054, '[{\"id\":59,\"name\":\"破坏者火炮\",\"type\":2},{\"id\":62,\"name\":\"开膛手\",\"type\":2}]');
INSERT INTO `cfg_goods` VALUES (26, '猫眼石', 19, '一种珍贵的宝石.宝石表现出的光线细长,状如猫眼.', 0, 25550, 0, 360054, '');
INSERT INTO `cfg_goods` VALUES (27, '蚕丝', 2, '从蚕茧中取出的纤维.具有一种特殊的美艳,非常珍贵.', 0, 4000, 0, 400055, '[{\"id\":121,\"name\":\"豪华的全桅船帆组\",\"type\":6},{\"id\":124,\"name\":\"夺日者全桅帆\",\"type\":6}]');
INSERT INTO `cfg_goods` VALUES (28, '粉钻', 19, '粉红色的钻石.产量稀少,价格高昂.', 0, 31400, 0, 430055, '[{\"id\":58,\"name\":\"神圣十字军之力\",\"type\":2},{\"id\":61,\"name\":\"安妮女王复仇号\",\"type\":1},{\"id\":25,\"name\":\"少女像\",\"type\":3},{\"id\":64,\"name\":\"超合金装甲\",\"type\":4},{\"id\":94,\"name\":\"海神之怒\",\"type\":5}]');
INSERT INTO `cfg_goods` VALUES (29, '柠檬香桃木', 9, '叶片带有柠檬香味的植物.可作为茶叶使用.', 0, 16050, 0, 400059, '');
INSERT INTO `cfg_goods` VALUES (30, '袋鼠肉', 3, '袋鼠的肉.为少脂肪的瘦肉,味道清淡.', 0, 3230, 0, 430059, '');
INSERT INTO `cfg_goods` VALUES (31, '椰子', 9, '椰子果树的果实.除了其胚乳可供食用外,其纤维也被广泛应用.', 0, 2550, 0, 400062, '');
INSERT INTO `cfg_goods` VALUES (32, '石油', 8, '能够燃烧的液体.有强烈的气味.人们收集渗出地面的石油使用.', 0, 5100, 1, 300051, '');
INSERT INTO `cfg_goods` VALUES (33, '金星石', 19, '别名印度翡翠.一种美丽的绿色宝石.自古为人们所追崇.', 0, 35750, 1, 300049, '');
INSERT INTO `cfg_goods` VALUES (34, '越南鱼露', 4, '越南人以鱼为原料制成的一种调味料.', 0, 2480, 1, 270049, '');
INSERT INTO `cfg_goods` VALUES (35, '青金石', 19, '深蓝色的不透明宝石.古代曾被作为一种蓝色染料使用.', 0, 19530, 1, 340049, '[{\"id\":41,\"name\":\"双弹炮\",\"type\":2},{\"id\":59,\"name\":\"破坏者火炮\",\"type\":2},{\"id\":34,\"name\":\"北洋水师战列舰\",\"type\":1},{\"id\":60,\"name\":\"镀银装甲\",\"type\":4},{\"id\":91,\"name\":\"野蛮冲锋撞角\",\"type\":5},{\"id\":120,\"name\":\"嗜血者巨帆\",\"type\":6}]');
INSERT INTO `cfg_goods` VALUES (36, '爪哇印花布', 11, '以蜡染为特色的印花布.在各种印花布中花色最为丰富多彩.', 0, 5750, 1, 360049, '');
INSERT INTO `cfg_goods` VALUES (37, '水仙', 17, '从水仙花中提取的一种香料.香气给人一种清澈纯洁的感觉.', 0, 2730, 1, 340052, '');
INSERT INTO `cfg_goods` VALUES (38, '木棉', 2, '木棉果实中的纤维.有弹性,轻软,适合制作枕头或靠垫.', 0, 2870, 1, 270047, '');
INSERT INTO `cfg_goods` VALUES (39, '甘蔗', 3, '可从其茎部榨汁制作砂糖.甘蔗的种植需要高温的气候条件.', 0, 1920, 1, 280047, '');
INSERT INTO `cfg_goods` VALUES (40, '银质工艺品', 14, '银制的工艺品.主要用于餐具类或装饰品.', 0, 19650, 1, 300047, '');
INSERT INTO `cfg_goods` VALUES (41, '菠萝', 9, '一种菠萝科植物的实用果实.这种植物需要3年时间才能结果.', 0, 7710, 1, 310047, '');
INSERT INTO `cfg_goods` VALUES (42, '象牙', 19, '大象的牙齿.自古以来被用来制作各种精致的工艺品.', 0, 23000, 1, 360047, '');
INSERT INTO `cfg_goods` VALUES (43, '翠玉', 19, '翠玉又称变石,它具有在阳光下呈绿色的特质.', 0, 25790, 1, 300046, '[{\"id\":58,\"name\":\"神圣十字军之力\",\"type\":2},{\"id\":57,\"name\":\"幽灵船\",\"type\":1},{\"id\":21,\"name\":\"伟人像\",\"type\":3},{\"id\":52,\"name\":\"铁板装甲\",\"type\":4},{\"id\":77,\"name\":\"铁质撞角\",\"type\":5},{\"id\":95,\"name\":\"超合金撞角\",\"type\":5}]');
INSERT INTO `cfg_goods` VALUES (44, '椰子油', 4, '用油椰子果实榨出的油.呈深橙色.', 0, 5070, 1, 300044, '[{\"id\":29,\"name\":\"意大利混肉沙拉\",\"type\":7},{\"id\":36,\"name\":\"干酪香肠拼盘\",\"type\":7}]');
INSERT INTO `cfg_goods` VALUES (45, '钢', 8, '杂质较少的铁.炼钢需要非常精深的技术水准.', 0, 5470, 1, 300042, '[{\"id\":42,\"name\":\"流星\",\"type\":2},{\"id\":48,\"name\":\"精密加农散弹炮\",\"type\":2},{\"id\":44,\"name\":\"重炮战列舰\",\"type\":1},{\"id\":52,\"name\":\"重甲巡洋舰\",\"type\":1},{\"id\":21,\"name\":\"伟人像\",\"type\":3},{\"id\":29,\"name\":\"天使像\",\"type\":3},{\"id\":61,\"name\":\"倒影装甲\",\"type\":4},{\"id\":64,\"name\":\"超合金装甲\",\"type\":4},{\"id\":87,\"name\":\"锯状粉碎撞角\",\"type\":5}]');
INSERT INTO `cfg_goods` VALUES (46, '孔雀石', 19, '带有条状花纹的,深绿色的宝石.多产于铜矿山中.', 0, 16450, 1, 290042, '[{\"id\":45,\"name\":\"无畏炮\",\"type\":2},{\"id\":53,\"name\":\"火焰喷射炮\",\"type\":2},{\"id\":13,\"name\":\"老虎像\",\"type\":3},{\"id\":56,\"name\":\"厚铁装甲\",\"type\":4},{\"id\":81,\"name\":\"锐牙海兽撞角\",\"type\":5},{\"id\":95,\"name\":\"超合金撞角\",\"type\":5}]');
INSERT INTO `cfg_goods` VALUES (47, '大理石', 8, '白色、茶色或灰色,有光泽的石材.应用于雕刻或建材方面.', 0, 2000, 1, 280042, '[{\"id\":28,\"name\":\"高速追击炮\",\"type\":2},{\"id\":53,\"name\":\"火焰喷射炮\",\"type\":2},{\"id\":16,\"name\":\"纯洁海豚像\",\"type\":3},{\"id\":19,\"name\":\"白鲨像\",\"type\":3},{\"id\":43,\"name\":\"雪松木装甲II型\",\"type\":4},{\"id\":57,\"name\":\"捍卫者装甲\",\"type\":4},{\"id\":60,\"name\":\"镀银装甲\",\"type\":4},{\"id\":90,\"name\":\"毁灭者\",\"type\":5},{\"id\":91,\"name\":\"野蛮冲锋撞角\",\"type\":5}]');
INSERT INTO `cfg_goods` VALUES (48, '葡萄酒', 7, '以葡萄为原料酿制而成的酒.葡萄酒有着非常悠久的历史.', 0, 3760, 1, 270042, '[{\"id\":23,\"name\":\"蓝色鸡尾酒\",\"type\":7},{\"id\":33,\"name\":\"七彩鸡尾酒\",\"type\":7},{\"id\":37,\"name\":\"奶酪鸡肉可丽饼\",\"type\":7},{\"id\":39,\"name\":\"天堂鸡尾酒\",\"type\":7}]');
INSERT INTO `cfg_goods` VALUES (49, '椰子酒', 7, '椰子酿的酒,清凉解渴,味道浓郁', 0, 4290, 1, 270044, '[{\"id\":28,\"name\":\"炭火辣烤鱼\",\"type\":7},{\"id\":31,\"name\":\"清炖小羊肉\",\"type\":7},{\"id\":34,\"name\":\"杂肉烩面\",\"type\":7},{\"id\":38,\"name\":\"五香烤全羊\",\"type\":7},{\"id\":39,\"name\":\"天堂鸡尾酒\",\"type\":7}]');
INSERT INTO `cfg_goods` VALUES (50, '祖母绿', 19, '一种绿色宝石.相传克利奥派特拉七世特别喜欢它', 0, 30430, 1, 300040, '[{\"id\":48,\"name\":\"精密加农散弹炮\",\"type\":2},{\"id\":38,\"name\":\"西班牙皇家战列舰\",\"type\":1},{\"id\":58,\"name\":\"超高速轻帆船\",\"type\":1},{\"id\":24,\"name\":\"神圣骑士团像\",\"type\":3},{\"id\":48,\"name\":\"圆木装甲\",\"type\":4}]');
INSERT INTO `cfg_goods` VALUES (51, '印度印花布', 11, '印度人纺织的色泽艳丽的棉纺织品.', 0, 17730, 1, 300039, '[{\"id\":24,\"name\":\"英式双船桅帆船\",\"type\":1},{\"id\":48,\"name\":\"法国皇家巨型排桨帆船\",\"type\":1},{\"id\":58,\"name\":\"超高速轻帆船\",\"type\":1},{\"id\":117,\"name\":\"锁链三角帆\",\"type\":6}]');
INSERT INTO `cfg_goods` VALUES (52, '红木', 5, '热带地区所产木材,暴露于空气中时过久会变为紫红色,是常见的硬木.', 0, 6230, 1, 260039, '[{\"id\":27,\"name\":\"巨型武装快艇\",\"type\":1},{\"id\":29,\"name\":\"轻型斯库纳帆船\",\"type\":1},{\"id\":41,\"name\":\"逐风者号\",\"type\":1},{\"id\":45,\"name\":\"重炮毁灭手\",\"type\":1},{\"id\":57,\"name\":\"幽灵船\",\"type\":1},{\"id\":61,\"name\":\"安妮女王复仇号\",\"type\":1},{\"id\":48,\"name\":\"圆木装甲\",\"type\":4},{\"id\":95,\"name\":\"超合金撞角\",\"type\":5}]');
INSERT INTO `cfg_goods` VALUES (53, '砂金', 16, '从河流等处收集到的细碎的金粒.由于易于处理而备受重视.', 0, 15600, 1, 240039, '[{\"id\":30,\"name\":\"定向轰炸装置\",\"type\":2},{\"id\":48,\"name\":\"精密加农散弹炮\",\"type\":2},{\"id\":59,\"name\":\"破坏者火炮\",\"type\":2},{\"id\":62,\"name\":\"开膛手\",\"type\":2},{\"id\":58,\"name\":\"超高速轻帆船\",\"type\":1},{\"id\":17,\"name\":\"海兽像\",\"type\":3},{\"id\":29,\"name\":\"天使像\",\"type\":3},{\"id\":64,\"name\":\"超合金装甲\",\"type\":4},{\"id\":83,\"name\":\"混金撞角\",\"type\":5},{\"id\":125,\"name\":\"蓝色海洋全桅帆\",\"type\":6}]');
INSERT INTO `cfg_goods` VALUES (54, '茉莉', 17, '非常贵重而又昂贵的一种香料.被人们称之为‘花中之王’.', 0, 14330, 1, 240037, '');
INSERT INTO `cfg_goods` VALUES (55, '金', 16, '一种贵金属.自古以来被用于装饰和铸币等,非常珍贵.', 0, 25030, 1, 230037, '[{\"id\":36,\"name\":\"火龙咆哮\",\"type\":2},{\"id\":49,\"name\":\"美特拉炮\",\"type\":2},{\"id\":53,\"name\":\"火焰喷射炮\",\"type\":2},{\"id\":59,\"name\":\"破坏者火炮\",\"type\":2},{\"id\":30,\"name\":\"阿拉伯中型排桨帆船\",\"type\":1},{\"id\":38,\"name\":\"西班牙皇家战列舰\",\"type\":1},{\"id\":48,\"name\":\"法国皇家巨型排桨帆船\",\"type\":1},{\"id\":16,\"name\":\"纯洁海豚像\",\"type\":3},{\"id\":29,\"name\":\"天使像\",\"type\":3},{\"id\":60,\"name\":\"镀银装甲\",\"type\":4},{\"id\":120,\"name\":\"嗜血者巨帆\",\"type\":6}]');
INSERT INTO `cfg_goods` VALUES (56, '波斯浆果', 10, '一种鼠李的果实.常用来做黄色染料.', 0, 9820, 1, 230036, '');
INSERT INTO `cfg_goods` VALUES (57, '波斯绒毯', 11, '波斯地区出产的高级地毯.价格非常昂贵,为人们所喜爱.', 0, 6550, 1, 280037, '');
INSERT INTO `cfg_goods` VALUES (58, '鸭', 6, '为取其肉和卵,将野生野鸭作为家禽饲养得到的改良品种.', 0, 550, 1, 290037, '[{\"id\":14,\"name\":\"酱香鸭腿\",\"type\":7},{\"id\":21,\"name\":\"蒜烤全鸭\",\"type\":7}]');
INSERT INTO `cfg_goods` VALUES (59, '铁矿石', 1, '赤铁矿等含铁的矿石.古代曾被用于做护身符.', 0, 2320, 1, 190035, '[{\"id\":6,\"name\":\"重火炮\",\"type\":2},{\"id\":11,\"name\":\"霰弹炮\",\"type\":2},{\"id\":17,\"name\":\"佛朗机炮\",\"type\":2},{\"id\":25,\"name\":\"迫击炮\",\"type\":2},{\"id\":35,\"name\":\"龙火炮\",\"type\":2},{\"id\":1,\"name\":\"海豚像\",\"type\":3},{\"id\":28,\"name\":\"战争美人鱼像\",\"type\":3},{\"id\":73,\"name\":\"蛇形撞角\",\"type\":5}]');
INSERT INTO `cfg_goods` VALUES (60, '无花果干', 9, '晒干了的无花果.据说是世界上最早开始人工种植的果实.', 0, 2550, 1, 200035, '');
INSERT INTO `cfg_goods` VALUES (61, '皮革', 2, '将牛等动物的皮揉制而成的皮革.广泛应用于生活中的各个层面.', 0, 3720, 1, 280035, '');
INSERT INTO `cfg_goods` VALUES (62, '依兰花', 17, '适合各种土壤被普遍种植的一种香料.被称为“花中女王”.', 0, 7940, 0, 420036, '');
INSERT INTO `cfg_goods` VALUES (63, '绵羊', 6, '有着柔软的白色毛皮的一种家畜.除肉可食用外,毛皮也是其重要产物.', 0, 8500, 1, 190034, '[{\"id\":10,\"name\":\"风味羊羔片\",\"type\":7},{\"id\":31,\"name\":\"清炖小羊肉\",\"type\":7},{\"id\":34,\"name\":\"杂肉烩面\",\"type\":7},{\"id\":38,\"name\":\"五香烤全羊\",\"type\":7}]');
INSERT INTO `cfg_goods` VALUES (64, '芒果干', 9, '晒干了的芒果.在古代印度就被种植.', 0, 13120, 1, 200034, '');
INSERT INTO `cfg_goods` VALUES (65, '金质工艺品', 14, '由最顶尖的艺术家使用纯金加工而成的艺术品，美丽而又珍贵。', 0, 32500, 1, 210034, '');
INSERT INTO `cfg_goods` VALUES (66, '橄榄石', 19, '一种嫩草色的宝石.古代曾被称之为太阳宝石.', 0, 23640, 1, 220034, '');
INSERT INTO `cfg_goods` VALUES (67, '黄麻', 2, '热带地区出产的一种麻.结实而粗糙,适于制作绳索.', 0, 11230, 1, 250034, '');
INSERT INTO `cfg_goods` VALUES (68, '长弓', 12, '威力强劲的长弓.使用者需要有较高的技术.', 0, 6940, 1, 270034, '');
INSERT INTO `cfg_goods` VALUES (69, '鸡肉', 3, '将鸡肉加工保存制成.属于奢侈食品.', 0, 2880, 1, 280034, '');
INSERT INTO `cfg_goods` VALUES (70, '羊肉', 3, '将羊肉加工制成的保存食品.其中羊羔肉属于奢侈食品.', 0, 4670, 0, 300034, '');
INSERT INTO `cfg_goods` VALUES (71, '红茶', 9, '将茶叶发酵后制成.特点是颜色深红气味芬芳.', 0, 5470, 0, 340034, '');
INSERT INTO `cfg_goods` VALUES (72, '珍珠', 19, '从珍珠贝中取出的球状的宝石.非常稀有.', 0, 38630, 0, 350034, '[{\"id\":45,\"name\":\"重炮毁灭手\",\"type\":1},{\"id\":16,\"name\":\"纯洁海豚像\",\"type\":3},{\"id\":29,\"name\":\"天使像\",\"type\":3},{\"id\":124,\"name\":\"夺日者全桅帆\",\"type\":6}]');
INSERT INTO `cfg_goods` VALUES (73, '钻石', 19, '透明且非常坚硬的宝石.体积较大的钻石多带有某种颜色.', 0, 38750, 0, 370034, '[{\"id\":42,\"name\":\"流星\",\"type\":2},{\"id\":46,\"name\":\"冲锋者\",\"type\":2},{\"id\":52,\"name\":\"重甲巡洋舰\",\"type\":1},{\"id\":61,\"name\":\"倒影装甲\",\"type\":4},{\"id\":81,\"name\":\"锐牙海兽撞角\",\"type\":5}]');
INSERT INTO `cfg_goods` VALUES (74, '罗望子', 4, '成熟了的罗望子果实.是一种酸甜的调味料.', 0, 6740, 0, 390034, '');
INSERT INTO `cfg_goods` VALUES (75, '白金', 16, '一种贵金属.历史久远,据说从公元前开始被使用至今.', 0, 40000, 0, 420034, '[{\"id\":49,\"name\":\"美特拉炮\",\"type\":2},{\"id\":62,\"name\":\"开膛手\",\"type\":2},{\"id\":41,\"name\":\"逐风者号\",\"type\":1},{\"id\":61,\"name\":\"安妮女王复仇号\",\"type\":1},{\"id\":19,\"name\":\"白鲨像\",\"type\":3},{\"id\":28,\"name\":\"战争美人鱼像\",\"type\":3},{\"id\":61,\"name\":\"倒影装甲\",\"type\":4},{\"id\":91,\"name\":\"野蛮冲锋撞角\",\"type\":5},{\"id\":124,\"name\":\"夺日者全桅帆\",\"type\":6}]');
INSERT INTO `cfg_goods` VALUES (76, '玫瑰', 17, '一种从玫瑰花中提取的香料.是最为珍贵的花草香料.', 0, 20980, 0, 420032, '');
INSERT INTO `cfg_goods` VALUES (77, '小豆蔻', 17, '主要产于印度外围地区.由于较难种植,价格昂贵.', 0, 8310, 0, 450032, '');
INSERT INTO `cfg_goods` VALUES (78, '蚕豆', 3, '人类从很久以前就开始种植的大型豆类作物.可日常食用.', 0, 7420, 1, 200031, '');
INSERT INTO `cfg_goods` VALUES (79, '白兰地', 7, '用葡萄制成的蒸馏酒.法兰西产的白兰地最为有名.', 0, 6560, 1, 200030, '');
INSERT INTO `cfg_goods` VALUES (80, '辰砂', 1, '含有水银的矿石.除了用来提炼水银外还可以用来做染料.', 0, 7320, 1, 200029, '');
INSERT INTO `cfg_goods` VALUES (81, '椰子纤维', 2, '椰子果实中的纤维.较硬但结实耐用,适合用来制作绳索等.', 0, 3370, 0, 290029, '');
INSERT INTO `cfg_goods` VALUES (82, '木材', 8, '适于做建筑材料的,不易弯曲的硬质木材.', 0, 19500, 0, 310029, '');
INSERT INTO `cfg_goods` VALUES (83, '可可豆', 9, '非常苦的一种植物果实.有抗疲劳功效.原产于南美大陆.', 0, 4980, 0, 330029, '');
INSERT INTO `cfg_goods` VALUES (84, '肉豆蔻', 18, '热带著名的香料和药用植物，由于仅在少量岛屿种植,故非常稀有.', 0, 8480, 0, 360029, '[{\"id\":21,\"name\":\"蒜烤全鸭\",\"type\":7},{\"id\":38,\"name\":\"五香烤全羊\",\"type\":7}]');
INSERT INTO `cfg_goods` VALUES (85, '牛', 6, '在世界各处广泛饲养的一种家畜.其肉和奶被用于制作各种食品.', 0, 2780, 0, 380029, '[{\"id\":24,\"name\":\"朗姆酒小牛肉\",\"type\":7},{\"id\":35,\"name\":\"香焗牛腩\",\"type\":7}]');
INSERT INTO `cfg_goods` VALUES (86, '翡翠', 19, '一种绿色的宝石.因色如翠鸟羽毛鲜艳而得名.', 0, 24400, 0, 410029, '');
INSERT INTO `cfg_goods` VALUES (87, '天竺葵', 17, '从天竺葵花中提取的一种香料.香气类似于玫瑰,华贵雍容.', 0, 9940, 0, 450029, '');
INSERT INTO `cfg_goods` VALUES (88, '朗姆酒', 7, '用甘蔗汁发酵制成的蒸馏酒,海盗们的最爱.', 0, 4150, 0, 290028, '[{\"id\":21,\"name\":\"蒜烤全鸭\",\"type\":7},{\"id\":23,\"name\":\"蓝色鸡尾酒\",\"type\":7},{\"id\":24,\"name\":\"朗姆酒小牛肉\",\"type\":7}]');
INSERT INTO `cfg_goods` VALUES (89, '玳瑁', 19, '小型海龟的甲壳.容易加工,被用来做成工艺品.', 0, 18320, 0, 330027, '');
INSERT INTO `cfg_goods` VALUES (90, '火枪', 13, '商品,大型枪支.射击时要顶在肩上.威力很大,但不易使用.', 0, 10550, 1, 200026, '[{\"id\":39,\"name\":\"高效滑膛炮\",\"type\":2},{\"id\":41,\"name\":\"双弹炮\",\"type\":2},{\"id\":48,\"name\":\"精密加农散弹炮\",\"type\":2}]');
INSERT INTO `cfg_goods` VALUES (91, '针织布料', 11, '用毛或丝绸编织成的布料.伸缩性和保温性都很好.', 0, 10550, 1, 200025, '[{\"id\":27,\"name\":\"巨型武装快艇\",\"type\":1},{\"id\":34,\"name\":\"北洋水师战列舰\",\"type\":1}]');
INSERT INTO `cfg_goods` VALUES (92, '圆木', 5, '从坚固的大树上砍下来的圆木.切割后用于建材等.', 0, 5690, 1, 230025, '');
INSERT INTO `cfg_goods` VALUES (93, '剑麻', 2, '新大陆特有植物.被用来制成绳子、袋子等工艺品.', 0, 2320, 1, 250025, '[{\"id\":112,\"name\":\"超高速大型四角帆\",\"type\":6},{\"id\":125,\"name\":\"蓝色海洋全桅帆\",\"type\":6}]');
INSERT INTO `cfg_goods` VALUES (94, '橄榄油', 4, '用橄榄果榨的油.有一种特有的香味.', 0, 2750, 1, 270025, '[{\"id\":26,\"name\":\"果酱洋葱鸡\",\"type\":7},{\"id\":27,\"name\":\"铁板羊肉串\",\"type\":7},{\"id\":32,\"name\":\"里脊肉辣炒饭\",\"type\":7}]');
INSERT INTO `cfg_goods` VALUES (95, '木雕', 15, '木制的雕像.与石制的不同,给人质朴温软的感觉.', 0, 8720, 0, 290025, '');
INSERT INTO `cfg_goods` VALUES (96, '利口酒', 7, '用水果或药草进行调味的各种酒类的总称.', 0, 4740, 1, 200022, '');
INSERT INTO `cfg_goods` VALUES (97, '土耳其地毯', 11, '土耳其周边地区传统的高级地毯.主要原料为毛和丝绸.', 0, 7680, 1, 130036, '[{\"id\":14,\"name\":\"卡瑞克帆船\",\"type\":1},{\"id\":113,\"name\":\"富豪的巨三角帆\",\"type\":6},{\"id\":26,\"name\":\"武装快艇\",\"type\":1}]');
INSERT INTO `cfg_goods` VALUES (98, '多香果', 18, '别名香辣椒.具有丁香、肉桂、肉豆蔻的味道.', 0, 3170, 1, 160036, '[{\"id\":27,\"name\":\"铁板羊肉串\",\"type\":7},{\"id\":31,\"name\":\"清炖小羊肉\",\"type\":7},{\"id\":35,\"name\":\"香焗牛腩\",\"type\":7}]');
INSERT INTO `cfg_goods` VALUES (99, '蓝宝石', 19, '一种蓝色的非常坚硬的宝石.透明度越高,蓝色越浓的质量越好.', 0, 32290, 1, 130035, '[{\"id\":36,\"name\":\"火龙咆哮\",\"type\":2},{\"id\":49,\"name\":\"美特拉炮\",\"type\":2},{\"id\":40,\"name\":\"皇家护卫舰\",\"type\":1},{\"id\":7,\"name\":\"海龟像\",\"type\":3},{\"id\":47,\"name\":\"东方龙号\",\"type\":1}]');
INSERT INTO `cfg_goods` VALUES (100, '毛皮', 2, '动物的毛皮.防寒性、防水性非常好,所以价格昂贵.', 0, 3550, 1, 130034, '[{\"id\":107,\"name\":\"全桅船帆组\",\"type\":6},{\"id\":117,\"name\":\"锁链三角帆\",\"type\":6},{\"id\":125,\"name\":\"蓝色海洋全桅帆\",\"type\":6}]');
INSERT INTO `cfg_goods` VALUES (101, '洋葱', 3, '种植历史悠久的蔬菜.有抗疲劳的功效,并易于保存.', 0, 710, 1, 160034, '[{\"id\":6,\"name\":\"洋葱圈\",\"type\":7},{\"id\":26,\"name\":\"果酱洋葱鸡\",\"type\":7},{\"id\":30,\"name\":\"时蔬烤猪排\",\"type\":7}]');
INSERT INTO `cfg_goods` VALUES (102, '小茴香', 18, '烹饪时常用的一种香辛料.可以消除肉类的腥味.', 0, 8150, 1, 160033, '[{\"id\":10,\"name\":\"风味羊羔片\",\"type\":7},{\"id\":32,\"name\":\"里脊肉辣炒饭\",\"type\":7},{\"id\":36,\"name\":\"干酪香肠拼盘\",\"type\":7}]');
INSERT INTO `cfg_goods` VALUES (103, '橡木', 5, '韧性极佳的木材,在造船业得到广泛应用,质地细密,防水性强.', 0, 1360, 1, 180033, '[{\"id\":6,\"name\":\"轻木帆船\",\"type\":1},{\"id\":10,\"name\":\"小型阿拉伯帆船\",\"type\":1},{\"id\":19,\"name\":\"非洲雄狮号\",\"type\":1},{\"id\":30,\"name\":\"阿拉伯中型排桨帆船\",\"type\":1},{\"id\":38,\"name\":\"西班牙皇家战列舰\",\"type\":1},{\"id\":48,\"name\":\"法国皇家巨型排桨帆船\",\"type\":1},{\"id\":36,\"name\":\"木板甲\",\"type\":4},{\"id\":69,\"name\":\"硬木撞角\",\"type\":5}]');
INSERT INTO `cfg_goods` VALUES (104, '玻璃工艺品', 14, '用玻璃制成的精巧的工艺品.可用来做香水瓶或装饰品等.', 0, 2440, 1, 110031, '');
INSERT INTO `cfg_goods` VALUES (105, '桂皮', 18, '一种略带甜味香辛料.非常适于与苹果等甜食一起食用.', 0, 7130, 1, 120031, '[{\"id\":14,\"name\":\"酱香鸭腿\",\"type\":7},{\"id\":33,\"name\":\"七彩鸡尾酒\",\"type\":7},{\"id\":35,\"name\":\"香焗牛腩\",\"type\":7}]');
INSERT INTO `cfg_goods` VALUES (106, '大青', 10, '欧洲地区栽培的一种靛蓝.又名为大青.', 0, 3000, 1, 150031, '[{\"id\":116,\"name\":\"七色丝绸四角帆\",\"type\":6},{\"id\":117,\"name\":\"锁链三角帆\",\"type\":6},{\"id\":121,\"name\":\"豪华的全桅船帆组\",\"type\":6}]');
INSERT INTO `cfg_goods` VALUES (107, '大马士革锦缎', 11, '发源于大马士革地区的一种带有浮雕状花纹的纺织品.', 0, 1650, 1, 170031, '');
INSERT INTO `cfg_goods` VALUES (108, '银', 16, '一种贵金属.某些地方被认为是超越金子的存在,非常珍贵.', 0, 18770, 1, 180031, '[{\"id\":28,\"name\":\"高速追击炮\",\"type\":2},{\"id\":41,\"name\":\"双弹炮\",\"type\":2},{\"id\":45,\"name\":\"无畏炮\",\"type\":2},{\"id\":59,\"name\":\"破坏者火炮\",\"type\":2},{\"id\":29,\"name\":\"轻型斯库纳帆船\",\"type\":1},{\"id\":44,\"name\":\"重炮战列舰\",\"type\":1},{\"id\":57,\"name\":\"幽灵船\",\"type\":1},{\"id\":25,\"name\":\"少女像\",\"type\":3},{\"id\":43,\"name\":\"雪松木装甲II型\",\"type\":4},{\"id\":57,\"name\":\"捍卫者装甲\",\"type\":4},{\"id\":76,\"name\":\"捕食者\",\"type\":5},{\"id\":116,\"name\":\"七色丝绸四角帆\",\"type\":6},{\"id\":121,\"name\":\"豪华的全桅船帆组\",\"type\":6}]');
INSERT INTO `cfg_goods` VALUES (109, '大马士革刀', 12, '以特殊工艺制作而成的单手剑.是大马士革地区的特产.', 0, 5880, 1, 110030, '');
INSERT INTO `cfg_goods` VALUES (110, '山羊', 6, '被人们广泛饲养的一种家畜.除了肉可食用外,毛皮也为人们所重视.', 0, 7550, 1, 120030, '[{\"id\":27,\"name\":\"铁板羊肉串\",\"type\":7},{\"id\":29,\"name\":\"意大利混肉沙拉\",\"type\":7},{\"id\":38,\"name\":\"五香烤全羊\",\"type\":7}]');
INSERT INTO `cfg_goods` VALUES (111, '水晶', 19, '形成独特结晶体的一种宝石.水晶的颜色多种多样.', 0, 12680, 1, 170030, '[{\"id\":31,\"name\":\"甲板炮\",\"type\":2},{\"id\":62,\"name\":\"开膛手\",\"type\":2},{\"id\":11,\"name\":\"鲨鱼像\",\"type\":3},{\"id\":57,\"name\":\"捍卫者装甲\",\"type\":4},{\"id\":90,\"name\":\"毁灭者\",\"type\":5}]');
INSERT INTO `cfg_goods` VALUES (112, '亚麻', 2, '自古以来被广泛用于服装制作的一种纤维.结实耐用且较柔软.', 0, 4210, 1, 40029, '[{\"id\":103,\"name\":\"厚三角帆\",\"type\":6},{\"id\":113,\"name\":\"富豪的巨三角帆\",\"type\":6},{\"id\":124,\"name\":\"夺日者全桅帆\",\"type\":6}]');
INSERT INTO `cfg_goods` VALUES (113, '阿瓜维特酒', 7, '北欧酿制的各类蒸馏酒的总称.', 0, 5020, 1, 50029, '');
INSERT INTO `cfg_goods` VALUES (114, '火药', 13, '枪枝或大炮用的黑色火药.制造的原料主要为硝石、硫磺和木炭.', 0, 20000, 1, 70029, '[{\"id\":23,\"name\":\"喷火炮\",\"type\":2},{\"id\":28,\"name\":\"高速追击炮\",\"type\":2},{\"id\":35,\"name\":\"龙火炮\",\"type\":2}]');
INSERT INTO `cfg_goods` VALUES (115, '水果白兰地', 7, '以苹果等除葡萄之外的水果为原料酿制而成的白兰地.', 0, 5100, 1, 140029, '');
INSERT INTO `cfg_goods` VALUES (116, '玻璃球', 14, '加工精致,相当美丽的小玻璃球.', 0, 1850, 1, 160029, '');
INSERT INTO `cfg_goods` VALUES (117, '高级家具', 14, '用紫檀木或红木等制成的家具.家具上的装饰等也非常豪华.', 0, 18000, 1, 170029, '');
INSERT INTO `cfg_goods` VALUES (118, '棉花', 2, '棉花果实中的纤维.吸水性强,较结实,适合制作服装.', 0, 2670, 1, 140028, '[{\"id\":109,\"name\":\"简易背风帆\",\"type\":6},{\"id\":108,\"name\":\"全自动全桅船帆组\",\"type\":6},{\"id\":116,\"name\":\"七色丝绸四角帆\",\"type\":6}]');
INSERT INTO `cfg_goods` VALUES (119, '紫苏', 10, '于综合交叉类商品,既可药用,也可以作为紫色染料使用,被普遍种植.', 0, 8540, 1, 30027, '[{\"id\":95,\"name\":\"超合金撞角\",\"type\":5},{\"id\":112,\"name\":\"超高速大型四角帆\",\"type\":6}]');
INSERT INTO `cfg_goods` VALUES (120, '威士忌', 7, '以麦类为原料制成的蒸馏酒.主要产于不列颠岛附近.', 0, 5500, 1, 60027, '[{\"id\":19,\"name\":\"红色鸡尾酒\",\"type\":7},{\"id\":33,\"name\":\"七彩鸡尾酒\",\"type\":7},{\"id\":36,\"name\":\"干酪香肠拼盘\",\"type\":7},{\"id\":39,\"name\":\"天堂鸡尾酒\",\"type\":7}]');
INSERT INTO `cfg_goods` VALUES (121, '羽毛', 2, '鸭或鹅的羽毛.主要用于制作被子或靠垫等.', 0, 4150, 1, 70027, '');
INSERT INTO `cfg_goods` VALUES (122, '石墨', 8, '可以用来写字的柔软的黑色石头.产地有限,所以非常稀少.', 0, 4580, 1, 140027, '');
INSERT INTO `cfg_goods` VALUES (123, '法兰绒', 11, '发源于不列颠岛的,一种卷绒毛纺织品.保温性非常好.', 0, 1290, 1, 150027, '');
INSERT INTO `cfg_goods` VALUES (124, '油画', 15, '用油彩制成的绘画作品.能够以写实的手法表现景物.', 0, 10000, 1, 160027, '');
INSERT INTO `cfg_goods` VALUES (125, '果酱', 4, '以各种水果煮制而成,可以用于烹调或糕点.', 0, 3750, 1, 170027, '[{\"id\":17,\"name\":\"果酱南瓜派\",\"type\":7},{\"id\":26,\"name\":\"果酱洋葱鸡\",\"type\":7}]');
INSERT INTO `cfg_goods` VALUES (126, '贝紫', 10, '也叫帝王紫.是从一种小海螺中提炼出的紫色染料.自古以来就极为珍贵.', 0, 7930, 1, 180027, '[{\"id\":29,\"name\":\"天使像\",\"type\":3},{\"id\":108,\"name\":\"全自动全桅船帆组\",\"type\":6},{\"id\":113,\"name\":\"富豪的巨三角帆\",\"type\":6},{\"id\":120,\"name\":\"嗜血者巨帆\",\"type\":6}]');
INSERT INTO `cfg_goods` VALUES (127, '石材', 8, '用来作建材或雕刻素材的石料.不受雨水腐蚀的石材较好.', 0, 1790, 1, 30026, '[{\"id\":17,\"name\":\"佛朗机炮\",\"type\":2},{\"id\":41,\"name\":\"双弹炮\",\"type\":2},{\"id\":27,\"name\":\"速射迫击炮\",\"type\":2},{\"id\":62,\"name\":\"开膛手\",\"type\":2},{\"id\":6,\"name\":\"闪电猎鹰像\",\"type\":3},{\"id\":17,\"name\":\"海兽像\",\"type\":3},{\"id\":28,\"name\":\"战争美人鱼像\",\"type\":3},{\"id\":44,\"name\":\"红松木装甲\",\"type\":4},{\"id\":76,\"name\":\"捕食者\",\"type\":5}]');
INSERT INTO `cfg_goods` VALUES (128, '啤酒', 7, '用大麦或啤酒花酿造的酒.有着非常悠久的历史.', 0, 2470, 1, 70026, '');
INSERT INTO `cfg_goods` VALUES (129, '水银', 8, '从辰砂中提炼出来的金属.在常温状态下呈液态.', 0, 9800, 1, 180026, '');
INSERT INTO `cfg_goods` VALUES (130, '锡矿石', 1, '含有锡的矿石.将锡和铜混合后就成了青铜器的原料.', 0, 4240, 1, 70025, '[{\"id\":6,\"name\":\"重火炮\",\"type\":2},{\"id\":11,\"name\":\"霰弹炮\",\"type\":2},{\"id\":15,\"name\":\"轻曲射炮\",\"type\":2},{\"id\":42,\"name\":\"流星\",\"type\":2},{\"id\":48,\"name\":\"精密加农散弹炮\",\"type\":2},{\"id\":49,\"name\":\"美特拉炮\",\"type\":2},{\"id\":11,\"name\":\"鲨鱼像\",\"type\":3},{\"id\":25,\"name\":\"少女像\",\"type\":3},{\"id\":77,\"name\":\"铁质撞角\",\"type\":5}]');
INSERT INTO `cfg_goods` VALUES (131, '琴酒', 7, '用杜松子果对各种谷物蒸馏酒进行调味后就成了这种杜松子酒.', 0, 5150, 1, 80025, '');
INSERT INTO `cfg_goods` VALUES (132, '猪', 6, '将野猪家畜化后得到的品种.猪肉适于食用,故被广泛饲养.', 0, 580, 1, 90025, '[{\"id\":8,\"name\":\"辣味烤串\",\"type\":7},{\"id\":30,\"name\":\"时蔬烤猪排\",\"type\":7},{\"id\":32,\"name\":\"里脊肉辣炒饭\",\"type\":7},{\"id\":34,\"name\":\"杂肉烩面\",\"type\":7}]');
INSERT INTO `cfg_goods` VALUES (133, '葡萄干', 9, '晒干了的葡萄.除了可用于制作糕点外,也可用于烹调.', 0, 2090, 1, 180025, '');
INSERT INTO `cfg_goods` VALUES (134, '棉布料', 11, '绵花织成的服装用布料.吸水性、保温性都很好', 0, 3610, 1, 70024, '[{\"id\":22,\"name\":\"福克帆船\",\"type\":1},{\"id\":38,\"name\":\"西班牙皇家战列舰\",\"type\":1},{\"id\":109,\"name\":\"简易背风帆\",\"type\":6},{\"id\":125,\"name\":\"蓝色海洋全桅帆\",\"type\":6}]');
INSERT INTO `cfg_goods` VALUES (135, '胡椒', 18, '原产于印度的一种香辛料.最适于用来去除肉类的腥味.', 0, 2570, 1, 90024, '[{\"id\":8,\"name\":\"辣味烤串\",\"type\":7},{\"id\":38,\"name\":\"五香烤全羊\",\"type\":7}]');
INSERT INTO `cfg_goods` VALUES (136, '奶酪', 3, '将牛或山羊的奶发酵后制成的保存食品.', 0, 1700, 1, 180024, '[{\"id\":12,\"name\":\"奶酪香肠粒\",\"type\":7},{\"id\":20,\"name\":\"奶油土豆卷\",\"type\":7},{\"id\":22,\"name\":\"柠檬烤玉米\",\"type\":7},{\"id\":35,\"name\":\"香焗牛腩\",\"type\":7},{\"id\":37,\"name\":\"奶酪鸡肉可丽饼\",\"type\":7}]');
INSERT INTO `cfg_goods` VALUES (137, '英格兰花呢', 11, '用粗羊毛织成的布.最早出现在不列颠岛地区.', 0, 3350, 1, 30023, '[{\"id\":16,\"name\":\"轻型排桨帆船\",\"type\":1},{\"id\":112,\"name\":\"超高速大型四角帆\",\"type\":6}]');
INSERT INTO `cfg_goods` VALUES (138, '羊毛', 2, '剪下来的羊毛.保温性好,多被用来制作服装等.', 0, 3420, 1, 70023, '[{\"id\":99,\"name\":\"简易三角帆\",\"type\":6},{\"id\":113,\"name\":\"富豪的巨三角帆\",\"type\":6}]');
INSERT INTO `cfg_goods` VALUES (139, '鸡蛋', 3, '鸡生出来的新鲜的蛋.是制作很多菜肴时不可或缺的材料.', 0, 250, 1, 80023, '[{\"id\":16,\"name\":\"辣子鸡\",\"type\":7},{\"id\":25,\"name\":\"蜂蜜松饼\",\"type\":7}]');
INSERT INTO `cfg_goods` VALUES (140, '苹果干', 9, '晒干了的苹果.比较适合在寒冷地区种植.', 0, 2760, 1, 90023, '');
INSERT INTO `cfg_goods` VALUES (141, '蕾丝花边', 11, '用麻或丝绸织成的美丽衣料.多用于高级服饰的装饰.', 0, 3220, 1, 110023, '');
INSERT INTO `cfg_goods` VALUES (142, '西洋李', 9, '李子的一种.甜味和酸味都很明显,多晒干后食用.', 0, 2860, 1, 120023, '');
INSERT INTO `cfg_goods` VALUES (143, '雪利酒', 7, '伊比利亚特产、酒精度高的葡萄酒.', 0, 4560, 1, 130023, '[{\"id\":17,\"name\":\"果酱南瓜派\",\"type\":7},{\"id\":19,\"name\":\"红色鸡尾酒\",\"type\":7},{\"id\":33,\"name\":\"七彩鸡尾酒\",\"type\":7}]');
INSERT INTO `cfg_goods` VALUES (144, '锰矿石', 1, '含有锰的矿石.经常用来制作合金-锰钢.', 0, 4450, 1, 180023, '[{\"id\":15,\"name\":\"轻曲射炮\",\"type\":2},{\"id\":20,\"name\":\"重型法兰克炮\",\"type\":2},{\"id\":46,\"name\":\"冲锋者\",\"type\":2},{\"id\":49,\"name\":\"美特拉炮\",\"type\":2},{\"id\":58,\"name\":\"神圣十字军之力\",\"type\":2},{\"id\":41,\"name\":\"逐风者号\",\"type\":1},{\"id\":12,\"name\":\"利齿鲨鱼像\",\"type\":3},{\"id\":24,\"name\":\"神圣骑士团像\",\"type\":3},{\"id\":95,\"name\":\"超合金撞角\",\"type\":5}]');
INSERT INTO `cfg_goods` VALUES (145, '香肠', 3, '将加工过的肉类塞入猪或羊的肠衣中制成的保存食品.', 0, 3240, 1, 40022, '[{\"id\":4,\"name\":\"烤香肠\",\"type\":7},{\"id\":12,\"name\":\"奶酪香肠粒\",\"type\":7},{\"id\":36,\"name\":\"干酪香肠拼盘\",\"type\":7}]');
INSERT INTO `cfg_goods` VALUES (146, '雪松木', 5, '又称香柏木,质地坚硬,在欧洲广泛用于木制品制造.', 0, 1970, 1, 80022, '[{\"id\":6,\"name\":\"轻木帆船\",\"type\":1},{\"id\":26,\"name\":\"武装快艇\",\"type\":1},{\"id\":11,\"name\":\"大型阿拉伯战船\",\"type\":1},{\"id\":24,\"name\":\"英式双船桅帆船\",\"type\":1},{\"id\":34,\"name\":\"北洋水师战列舰\",\"type\":1},{\"id\":58,\"name\":\"超高速轻帆船\",\"type\":1},{\"id\":7,\"name\":\"海龟像\",\"type\":3},{\"id\":36,\"name\":\"木板甲\",\"type\":4},{\"id\":43,\"name\":\"雪松木装甲II型\",\"type\":4},{\"id\":69,\"name\":\"硬木撞角\",\"type\":5},{\"id\":91,\"name\":\"野蛮冲锋撞角\",\"type\":5}]');
INSERT INTO `cfg_goods` VALUES (147, '铜版画', 15, '也叫蚀刻版画.多用于书中的插图.', 0, 4010, 1, 180019, '');
INSERT INTO `cfg_goods` VALUES (148, '玉米', 3, '原产南美大陆的谷物.属于中南美地区的主食.', 0, 470, 1, 270020, '[{\"id\":13,\"name\":\"玉米蜜汤\",\"type\":7},{\"id\":22,\"name\":\"柠檬烤玉米\",\"type\":7},{\"id\":30,\"name\":\"时蔬烤猪排\",\"type\":7}]');
INSERT INTO `cfg_goods` VALUES (149, '核桃', 9, '外面覆有硬壳的一种植物种子.味道甘香,非常好吃.', 0, 4310, 1, 300020, '');
INSERT INTO `cfg_goods` VALUES (150, '黄玉', 19, '黄色的透明宝石.受到撞击时容易碎裂.', 0, 16880, 1, 340020, '');
INSERT INTO `cfg_goods` VALUES (151, '玛瑙', 19, '有一定透明度,有着美丽的条状花纹的一种宝石.', 0, 27400, 1, 380020, '[{\"id\":35,\"name\":\"龙火炮\",\"type\":2},{\"id\":48,\"name\":\"法国皇家巨型排桨帆船\",\"type\":1},{\"id\":57,\"name\":\"幽灵船\",\"type\":1},{\"id\":12,\"name\":\"利齿鲨鱼像\",\"type\":3},{\"id\":94,\"name\":\"海神之怒\",\"type\":5}]');
INSERT INTO `cfg_goods` VALUES (152, '蜂蜜', 4, '从蜂窝中采集的蜜.养蜂的历史相当悠久.', 0, 7670, 1, 400020, '[{\"id\":13,\"name\":\"玉米蜜汤\",\"type\":7},{\"id\":25,\"name\":\"蜂蜜松饼\",\"type\":7},{\"id\":36,\"name\":\"干酪香肠拼盘\",\"type\":7},{\"id\":37,\"name\":\"奶酪鸡肉可丽饼\",\"type\":7}]');
INSERT INTO `cfg_goods` VALUES (153, '丁香', 18, '一种很少见的香辛料.散发出一种甜香,非常稀有.', 0, 7690, 1, 450020, '[{\"id\":30,\"name\":\"时蔬烤猪排\",\"type\":7},{\"id\":31,\"name\":\"清炖小羊肉\",\"type\":7}]');
INSERT INTO `cfg_goods` VALUES (154, '鱼肉', 3, '将鱼腌制或晒干后制成.属于加工保存类食物.', 0, 1260, 1, 230015, '[{\"id\":18,\"name\":\"椒盐烤鱼\",\"type\":7},{\"id\":28,\"name\":\"炭火辣烤鱼\",\"type\":7},{\"id\":29,\"name\":\"意大利混肉沙拉\",\"type\":7}]');
INSERT INTO `cfg_goods` VALUES (155, '辣椒', 18, '原产于南美地区的一种植物果实.有强烈的刺激性辣味.', 0, 2500, 1, 270015, '[{\"id\":9,\"name\":\"甜辣薯片\",\"type\":7},{\"id\":16,\"name\":\"辣子鸡\",\"type\":7},{\"id\":24,\"name\":\"朗姆酒小牛肉\",\"type\":7},{\"id\":28,\"name\":\"炭火辣烤鱼\",\"type\":7},{\"id\":32,\"name\":\"里脊肉辣炒饭\",\"type\":7}]');
INSERT INTO `cfg_goods` VALUES (156, '花生', 3, '原产于南美大陆的一种坚果.开花后,果实在地下逐渐成熟.', 0, 1270, 1, 230014, '');
INSERT INTO `cfg_goods` VALUES (157, '南瓜', 3, '偏热带地区所种植的蔬菜.营养非常丰富.', 0, 3250, 1, 200012, '[{\"id\":17,\"name\":\"果酱南瓜派\",\"type\":7}]');
INSERT INTO `cfg_goods` VALUES (158, '红松木', 5, '也叫果松,在少部分地区生长,不容易变形且耐腐能力极强.', 0, 1020, 1, 220012, '[{\"id\":6,\"name\":\"轻木帆船\",\"type\":1},{\"id\":16,\"name\":\"轻型排桨帆船\",\"type\":1},{\"id\":24,\"name\":\"英式双船桅帆船\",\"type\":1},{\"id\":40,\"name\":\"皇家护卫舰\",\"type\":1},{\"id\":44,\"name\":\"重炮战列舰\",\"type\":1},{\"id\":6,\"name\":\"闪电猎鹰像\",\"type\":3},{\"id\":36,\"name\":\"木板甲\",\"type\":4},{\"id\":44,\"name\":\"红松木装甲\",\"type\":4},{\"id\":69,\"name\":\"硬木撞角\",\"type\":5},{\"id\":47,\"name\":\"东方龙号\",\"type\":1}]');
INSERT INTO `cfg_goods` VALUES (159, '网眼布', 11, '网眼形小孔的织物,透气性极佳.', 0, 1750, 1, 230012, '[{\"id\":11,\"name\":\"大型阿拉伯战船\",\"type\":1},{\"id\":99,\"name\":\"简易三角帆\",\"type\":6},{\"id\":124,\"name\":\"夺日者全桅帆\",\"type\":6}]');
INSERT INTO `cfg_goods` VALUES (160, '鸡', 6, '鸡 蛋、肉等具有广泛用途的一种鸟类.在世界各地被广泛饲养.', 0, 1780, 1, 250012, '[{\"id\":5,\"name\":\"炸鸡米花\",\"type\":7},{\"id\":16,\"name\":\"辣子鸡\",\"type\":7},{\"id\":26,\"name\":\"果酱洋葱鸡\",\"type\":7},{\"id\":29,\"name\":\"意大利混肉沙拉\",\"type\":7},{\"id\":34,\"name\":\"杂肉烩面\",\"type\":7},{\"id\":37,\"name\":\"奶酪鸡肉可丽饼\",\"type\":7}]');
INSERT INTO `cfg_goods` VALUES (161, '锌矿石', 1, '含有锌的矿石.将铅与铜混合后就成了黄铜合金.', 0, 2500, 1, 270012, '[{\"id\":6,\"name\":\"重火炮\",\"type\":2},{\"id\":11,\"name\":\"霰弹炮\",\"type\":2},{\"id\":27,\"name\":\"速射迫击炮\",\"type\":2},{\"id\":23,\"name\":\"喷火炮\",\"type\":2},{\"id\":36,\"name\":\"火龙咆哮\",\"type\":2},{\"id\":45,\"name\":\"无畏炮\",\"type\":2},{\"id\":35,\"name\":\"重型北洋战列舰\",\"type\":1},{\"id\":17,\"name\":\"海兽像\",\"type\":3},{\"id\":21,\"name\":\"伟人像\",\"type\":3},{\"id\":48,\"name\":\"圆木装甲\",\"type\":4},{\"id\":94,\"name\":\"海神之怒\",\"type\":5}]');
INSERT INTO `cfg_goods` VALUES (162, '雪茄', 3, '古巴的特产,雪茄的味道让男人着迷', 0, 10250, 1, 220010, '');
INSERT INTO `cfg_goods` VALUES (163, '玛雅蓝', 10, '中南美地区使用的一种蓝色染料.是在靛蓝中掺入矿物质制成的.', 0, 7680, 1, 230010, '');
INSERT INTO `cfg_goods` VALUES (164, '盐巴', 4, '通过蒸煮海水或切割岩盐制成的盐.', 0, 2080, 1, 270010, '[{\"id\":18,\"name\":\"椒盐烤鱼\",\"type\":7},{\"id\":20,\"name\":\"奶油土豆卷\",\"type\":7},{\"id\":28,\"name\":\"炭火辣烤鱼\",\"type\":7}]');
INSERT INTO `cfg_goods` VALUES (165, '龙舌兰酒', 7, '以龙舌兰为原料酿造的蒸馏酒.', 0, 1330, 1, 230008, '');
INSERT INTO `cfg_goods` VALUES (166, '香柠檬', 18, '干燥后的香柠檬果皮.甘甜的香味较柠檬更为浓郁.', 0, 5910, 1, 250008, '[{\"id\":19,\"name\":\"红色鸡尾酒\",\"type\":7},{\"id\":22,\"name\":\"柠檬烤玉米\",\"type\":7},{\"id\":23,\"name\":\"蓝色鸡尾酒\",\"type\":7}]');
INSERT INTO `cfg_goods` VALUES (167, '橡胶', 8, '从中南美的一种植物树汁中提取的物质.具有独特的弹性.', 0, 5820, 0, 250006, '');
INSERT INTO `cfg_goods` VALUES (168, '莳萝', 18, '世界范围广泛使用的一种有着强烈香味的药草.', 0, 9730, 1, 230005, '');
INSERT INTO `cfg_goods` VALUES (169, '腰果', 9, '腰果树的果实.其特点是味道浓厚清香.', 0, 3240, 1, 250004, '');
INSERT INTO `cfg_goods` VALUES (170, '马铃薯', 3, '原产于南美洲大陆高山地区.易于种植,营养丰富.', 0, 1150, 1, 230003, '[{\"id\":9,\"name\":\"甜辣薯片\",\"type\":7},{\"id\":20,\"name\":\"奶油土豆卷\",\"type\":7},{\"id\":35,\"name\":\"香焗牛腩\",\"type\":7}]');
INSERT INTO `cfg_goods` VALUES (171, '蛋白石', 19, '一种多彩的宝石.经不起高温和干燥.', 0, 23870, 1, 250002, '');
INSERT INTO `cfg_goods` VALUES (172, '天鹅绒', 11, '一种用毛或丝绸织成的,表面栽绒的纺织品.别名天鹅绒.', 0, 6000, 1, 40031, '[{\"id\":19,\"name\":\"非洲雄狮号\",\"type\":1},{\"id\":35,\"name\":\"重型北洋战列舰\",\"type\":1},{\"id\":107,\"name\":\"全桅船帆组\",\"type\":6},{\"id\":120,\"name\":\"嗜血者巨帆\",\"type\":6}]');
INSERT INTO `cfg_goods` VALUES (173, '琥珀', 19, '黄色而质地柔软的宝石.其中包裹有昆虫化石的最为珍贵.', 0, 20200, 0, 340055, '');
INSERT INTO `cfg_goods` VALUES (174, '罗勒', 18, '原产于热带地区的一种药草.主要用于烹调,芳香浓郁.', 0, 6770, 1, 200033, '');
INSERT INTO `cfg_goods` VALUES (175, '皮革制品', 14, '皮革或毛皮的加工制品.结实耐用但耐水性比较差.', 0, 9800, 1, 190033, '');
INSERT INTO `cfg_goods` VALUES (176, '龟壳工艺品', 14, '用海龟壳所加工而成的工艺品,极具收藏价值', 0, 8600, 1, 330010, '');
INSERT INTO `cfg_goods` VALUES (177, '鱼油', 3, '海鱼提炼出来的鱼油,鲜美却不腻味.', 0, 1300, 1, 330013, '');
INSERT INTO `cfg_goods` VALUES (178, '鱼粉', 3, '南美港口的特产,用厚脂肪的鱼类加工而得.', 0, 2400, 1, 330017, '');
INSERT INTO `cfg_goods` VALUES (179, '野百合', 9, '智利共和国的国花,象征着独立自由', 0, 2800, 1, 390017, '');
INSERT INTO `cfg_goods` VALUES (180, '仙人掌', 9, '南美遍地可见的巨型仙人掌,有着各种特殊的用处', 0, 2000, 1, 450017, '');
INSERT INTO `cfg_goods` VALUES (181, '破碎的星沙', 19, '风化后剥离出来的星石沙尘，是塑造高品质装备的必需品。', 0, 10, 0, 0, '[{\"id\":36,\"name\":\"火龙咆哮\",\"type\":2},{\"id\":48,\"name\":\"精密加农散弹炮\",\"type\":2},{\"id\":35,\"name\":\"重型北洋战列舰\",\"type\":1},{\"id\":47,\"name\":\"东方龙号\",\"type\":1},{\"id\":16,\"name\":\"纯洁海豚像\",\"type\":3},{\"id\":57,\"name\":\"捍卫者装甲\",\"type\":4},{\"id\":90,\"name\":\"毁灭者\",\"type\":5}]');
INSERT INTO `cfg_goods` VALUES (182, '完整的星石', 19, '陨落后保存完整的星石，能用来制造最高等级的装备。', 0, 10, 0, 0, '[{\"id\":62,\"name\":\"开膛手\",\"type\":2},{\"id\":61,\"name\":\"安妮女王复仇号\",\"type\":1},{\"id\":28,\"name\":\"战争美人鱼像\",\"type\":3},{\"id\":61,\"name\":\"倒影装甲\",\"type\":4},{\"id\":94,\"name\":\"海神之怒\",\"type\":5},{\"id\":124,\"name\":\"夺日者全桅帆\",\"type\":6}]');

SET FOREIGN_KEY_CHECKS = 1;
