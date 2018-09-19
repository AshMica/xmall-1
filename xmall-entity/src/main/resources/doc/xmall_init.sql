/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : localhost:3306
 Source Schema         : xmall

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : 65001

 Date: 19/09/2018 22:14:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_city
-- ----------------------------
DROP TABLE IF EXISTS `sys_city`;
CREATE TABLE `sys_city`  (
  `city_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '城市主键',
  `province_id` int(10) DEFAULT NULL COMMENT '所在身份',
  `city_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '城市名称',
  `city_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '城市编码',
  PRIMARY KEY (`city_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_county
-- ----------------------------
DROP TABLE IF EXISTS `sys_county`;
CREATE TABLE `sys_county`  (
  `county_id` int(10) NOT NULL COMMENT '区县主键',
  `province_id` int(10) DEFAULT NULL COMMENT '所在省份',
  `city_id` int(10) DEFAULT NULL COMMENT '所在城市',
  `county_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '区县名称',
  `county_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '区县编码',
  PRIMARY KEY (`county_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单主键',
  `parent_id` int(11) DEFAULT NULL COMMENT '上级菜单',
  `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '菜单文本',
  `url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '链接地址',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '图标样式',
  `sort_order` int(10) DEFAULT NULL COMMENT '排序字段',
  `status_id` int(10) DEFAULT NULL COMMENT '菜单状态',
  `create_user` int(10) DEFAULT NULL COMMENT '创建人',
  `create_time` timestamp(0) DEFAULT NULL COMMENT '创建时间',
  `update_user` int(10) DEFAULT NULL COMMENT '更新人',
  `update_time` timestamp(0) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, 0, '系统管理', NULL, 'fa fa-home', 1, 1, 1, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (2, 0, '基础管理', NULL, 'fa fa-leaf', 2, 1, 1, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (3, 0, '商品管理', NULL, 'fa fa-gift', 3, 1, 1, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (4, 0, '交易管理', NULL, 'fa fa-cart-plus', 4, 1, 1, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (5, 0, '用户管理', '/user/list/0/0', 'fa fa-users', 5, 1, 1, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (6, 0, '物流管理', NULL, 'fa fa-truck', 6, 1, 1, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (7, 1, '后台用户', NULL, 'fa fa-user', 11, 1, 1, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (8, 1, '后台角色', NULL, 'fa fa-street-view', 12, 1, 1, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (9, 1, '个人信息', NULL, 'fa fa-cog', 13, 1, 1, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (10, 2, '地址管理', NULL, 'fa fa-road', 21, 1, 1, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (11, 3, '商品类别', NULL, 'fa fa-navicon', 31, 1, 1, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (12, 3, '商品属性', NULL, 'fa fa-pencil', 32, 1, 1, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (13, 3, '商品属性值', NULL, 'fa fa-server', 33, 1, 1, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (14, 3, '商品信息', NULL, 'fa fa-gift', 34, 1, 1, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (15, 4, '注册用户', NULL, 'fa fa-child', 41, 1, 1, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (16, 4, '订单管理', NULL, 'fa fa-bookmark', 42, 1, 1, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_province
-- ----------------------------
DROP TABLE IF EXISTS `sys_province`;
CREATE TABLE `sys_province`  (
  `province_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '省份主键',
  `province_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '省份名称',
  `province_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '省份编码',
  PRIMARY KEY (`province_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_province
-- ----------------------------
INSERT INTO `sys_province` VALUES (1, '北京市', '110000');
INSERT INTO `sys_province` VALUES (2, '天津市', '120000');
INSERT INTO `sys_province` VALUES (3, '河北省', '130000');
INSERT INTO `sys_province` VALUES (4, '山西省', '140000');
INSERT INTO `sys_province` VALUES (5, '内蒙古自治区', '150000');
INSERT INTO `sys_province` VALUES (6, '辽宁省', '210000');
INSERT INTO `sys_province` VALUES (7, '吉林省', '220000');
INSERT INTO `sys_province` VALUES (8, '黑龙江省', '230000');
INSERT INTO `sys_province` VALUES (9, '上海市', '310000');
INSERT INTO `sys_province` VALUES (10, '江苏省', '320000');
INSERT INTO `sys_province` VALUES (11, '浙江省', '330000');
INSERT INTO `sys_province` VALUES (12, '安徽省', '340000');
INSERT INTO `sys_province` VALUES (13, '福建省', '350000');
INSERT INTO `sys_province` VALUES (14, '江西省', '360000');
INSERT INTO `sys_province` VALUES (15, '山东省', '370000');
INSERT INTO `sys_province` VALUES (16, '河南省', '410000');
INSERT INTO `sys_province` VALUES (17, '湖北省', '420000');
INSERT INTO `sys_province` VALUES (18, '湖南省', '430000');
INSERT INTO `sys_province` VALUES (19, '广东省', '440000');
INSERT INTO `sys_province` VALUES (20, '广西壮族自治区', '450000');
INSERT INTO `sys_province` VALUES (21, '海南省', '460000');
INSERT INTO `sys_province` VALUES (22, '重庆市', '500000');
INSERT INTO `sys_province` VALUES (23, '四川省', '510000');
INSERT INTO `sys_province` VALUES (24, '贵州省', '520000');
INSERT INTO `sys_province` VALUES (25, '云南省', '530000');
INSERT INTO `sys_province` VALUES (26, '西藏自治区', '540000');
INSERT INTO `sys_province` VALUES (27, '陕西省', '610000');
INSERT INTO `sys_province` VALUES (28, '甘肃省', '620000');
INSERT INTO `sys_province` VALUES (29, '青海省', '630000');
INSERT INTO `sys_province` VALUES (30, '宁夏回族自治区', '640000');
INSERT INTO `sys_province` VALUES (31, '新疆维吾尔自治区', '650000');
INSERT INTO `sys_province` VALUES (32, '台湾省', '710000');
INSERT INTO `sys_province` VALUES (33, '香港特别行政区', '810000');
INSERT INTO `sys_province` VALUES (34, '澳门特别行政区', '820000');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '角色主键',
  `role_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` int(10) DEFAULT NULL COMMENT '角色主键',
  `menu_id` int(10) DEFAULT NULL COMMENT '菜单主键'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (1, 1);
INSERT INTO `sys_role_menu` VALUES (1, 2);
INSERT INTO `sys_role_menu` VALUES (1, 3);
INSERT INTO `sys_role_menu` VALUES (1, 4);
INSERT INTO `sys_role_menu` VALUES (1, 5);
INSERT INTO `sys_role_menu` VALUES (1, 6);
INSERT INTO `sys_role_menu` VALUES (1, 7);
INSERT INTO `sys_role_menu` VALUES (1, 8);
INSERT INTO `sys_role_menu` VALUES (1, 9);
INSERT INTO `sys_role_menu` VALUES (1, 10);
INSERT INTO `sys_role_menu` VALUES (1, 11);
INSERT INTO `sys_role_menu` VALUES (1, 12);
INSERT INTO `sys_role_menu` VALUES (1, 13);
INSERT INTO `sys_role_menu` VALUES (1, 14);
INSERT INTO `sys_role_menu` VALUES (1, 15);
INSERT INTO `sys_role_menu` VALUES (1, 16);

-- ----------------------------
-- Table structure for sys_status
-- ----------------------------
DROP TABLE IF EXISTS `sys_status`;
CREATE TABLE `sys_status`  (
  `status_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '状态主键',
  `status_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '状态名称',
  `status_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '状态编码',
  PRIMARY KEY (`status_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_status
-- ----------------------------
INSERT INTO `sys_status` VALUES (1, '启用', 'ENABLE');
INSERT INTO `sys_status` VALUES (2, '禁用', 'DISABLE');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '用户主键',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '真实姓名',
  `login_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '登录名',
  `password` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '登录密码：MD5加密',
  `gender` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '性别：M-男性，F-女性',
  `role_id` int(10) DEFAULT NULL COMMENT '用户角色',
  `id_card` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '身份证号码',
  `cellphone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '联系电话',
  `email` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '电子邮件',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `status_id` int(10) DEFAULT NULL COMMENT '用户状态',
  `create_user` int(10) DEFAULT NULL COMMENT '创建人',
  `create_time` timestamp(0) DEFAULT NULL COMMENT '创建时间',
  `update_user` int(10) DEFAULT NULL COMMENT '修改人',
  `update_time` timestamp(0) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, '王富贵', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'M', 1, '610110199001010111', '18602900001', 'admin@gmail.com', '1990-01-01', 1, NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
