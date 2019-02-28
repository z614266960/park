/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : localhost:3306
 Source Schema         : zrj

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 02/02/2019 21:32:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for amusement
-- ----------------------------
DROP TABLE IF EXISTS `amusement`;
CREATE TABLE `amusement`  (
  `amusement_Id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `introduction` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `business_hours` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `area_covered` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `amusement_img` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`amusement_Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of amusement
-- ----------------------------
INSERT INTO `amusement` VALUES (1, '上海欢乐谷——中国首个连锁主题公园品牌、国家4A级旅游景区，是华侨城集团投资40亿元打造的精品力作。全园占地面积65万平方米，拥有100多项老少皆宜、丰富多彩的体验项目，是国内占地面积最大、科技含量最高、游乐设施最先进、文化活动最丰富的主题公园之一。', '上海松江佘山国家旅游度假区', '09：00~22：00', '65万平方米', 'images/118682126556357801703224.jpg');

-- ----------------------------
-- Table structure for amusement_facility
-- ----------------------------
DROP TABLE IF EXISTS `amusement_facility`;
CREATE TABLE `amusement_facility`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `open_time` time(0) NULL DEFAULT NULL COMMENT '开始营业时间',
  `close_time` time(0) NULL DEFAULT NULL COMMENT '关门时间',
  `people` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '适宜人群',
  `information` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详细信息',
  `facility_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `notice` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '注意事项',
  `open_day` int(255) NULL DEFAULT NULL COMMENT '周几开放',
  `close_day` int(255) NULL DEFAULT NULL COMMENT '周几结束',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of amusement_facility
-- ----------------------------
INSERT INTO `amusement_facility` VALUES (7, '旋转摇摆伞', '09:10:00', '21:00:00', '9~18周岁', '摇摆伞，摇摆伞摇摆伞', '\n				                                                	\n				                                                		images/1186121445335-17.png\n				                                                	', '未成年人须有家长陪同', 1, 0);
INSERT INTO `amusement_facility` VALUES (8, '旋转木马', '09:10:00', '21:00:00', '9~18周岁', '啊啊啊啊啊啊啊啊', 'images/118682174equip3_20.jpg', '未成年人须有监护人陪同', 1, 0);
INSERT INTO `amusement_facility` VALUES (9, '异度空间', '09:30:00', '22:00:00', '0~8周岁', '异度空间', 'images/1186821837equip3_32.jpg', '需满十八岁才能参加', 1, 0);
INSERT INTO `amusement_facility` VALUES (11, '神奇草帽', '09:00:00', '18:00:00', '9~18周岁', '神奇草帽神奇草帽神奇草帽神', 'images/118682196equip3_31.jpg', '注意安全，未成年需要监护人陪同', 1, 0);
INSERT INTO `amusement_facility` VALUES (12, '古木游龙', '12:00:00', '18:00:00', '0~8周岁', '过山车过山车过山车过山车', 'images/11868211323equip2_1.jpg', '本项目需满十八岁且身体健康者游玩', 1, 0);
INSERT INTO `amusement_facility` VALUES (13, '矿山历险', '15:00:00', '20:00:00', '9~18周岁', '水上滑道水上滑道水上滑道水上滑', 'images/1186821951equip2_13.jpg', '未成年需有监护人陪同', 1, 0);
INSERT INTO `amusement_facility` VALUES (14, '大摆锤', '09:00:00', '22:00:00', '18周岁及以上健康人群', '大大摆锤大摆锤摆锤', 'images/11868211128equip3_18.jpg', '适宜身体健康人群', 1, 0);

-- ----------------------------
-- Table structure for catering_industry
-- ----------------------------
DROP TABLE IF EXISTS `catering_industry`;
CREATE TABLE `catering_industry`  (
  `business_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `business_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `owner` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `range` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `open_time` time(0) NULL DEFAULT NULL,
  `close_time` time(0) NULL DEFAULT NULL,
  `license_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`business_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of catering_industry
-- ----------------------------
INSERT INTO `catering_industry` VALUES (1, '冰淇淋店', '刘家猫', '甜品', '各种冰激淋', '09:00:00', '16:00:00', 'images/1186821141u=473847706,2670893216&fm=27&gp=0.jpg', NULL);
INSERT INTO `catering_industry` VALUES (4, '刘家猫的大披萨', '刘家彤', '西餐', '水果披萨，牛肉披萨', '09:00:00', '22:00:00', 'images/1186821056u=588865366,3274527419&fm=27&gp=0.jpg', NULL);
INSERT INTO `catering_industry` VALUES (5, '开封菜', '肯老头', '西餐', '汉堡可乐柠檬茶', '09:00:00', '22:00:00', 'images/1186821114u=1486292192,2978262100&fm=179&app=42&f=JPEG.jpg', NULL);
INSERT INTO `catering_industry` VALUES (6, '咖啡店', '刘家猫', '饮料', '咖啡下午茶', '09:00:00', '22:00:00', 'images/1186821148u=1182233070,195946052&fm=27&gp=0.jpg', NULL);
INSERT INTO `catering_industry` VALUES (7, '拉面', '刘家猫', '中餐', '拉面拉面拉面拉面', '09:00:00', '22:00:00', 'images/118682129lamian.jpg', NULL);
INSERT INTO `catering_industry` VALUES (8, '便利店', '刘家猫', '便利店', '超市，超市，超市', '09:00:00', '22:00:00', 'images/1186821232u=2148069261,1260350048&fm=27&gp=0.jpg', NULL);

-- ----------------------------
-- Table structure for map_point
-- ----------------------------
DROP TABLE IF EXISTS `map_point`;
CREATE TABLE `map_point`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `longitude` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `latitude` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `slogen` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `start` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `end` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of map_point
-- ----------------------------
INSERT INTO `map_point` VALUES (2, '121.22598', '31.100194', '上海', '我们在这里~', '欢乐谷-售票处', '大摆锤');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '1001', '1001', 'admin');
INSERT INTO `user` VALUES (2, 'youke1', '1', 'visitor');
INSERT INTO `user` VALUES (3, 'youke2', '123', 'visitor');
INSERT INTO `user` VALUES (4, 'youke3', '1', 'visitor');
INSERT INTO `user` VALUES (5, 'tourist1', '123456', 'visitor');
INSERT INTO `user` VALUES (8, 'youkea', '2', 'visitor');
INSERT INTO `user` VALUES (9, 'user01', '1', 'visitor');
INSERT INTO `user` VALUES (10, '15031316', '12', 'visitor');

SET FOREIGN_KEY_CHECKS = 1;
