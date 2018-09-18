/*
 Navicat Premium Data Transfer

 Source Server         : MySQL_DB
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : localhost:3306
 Source Schema         : xmall

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : 65001

 Date: 18/09/2018 17:49:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_category
-- ----------------------------
DROP TABLE IF EXISTS `sys_category`;
CREATE TABLE `sys_category`  (
  `category_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '????',
  `parent_id` int(10) NULL DEFAULT NULL COMMENT '???',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '????',
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '???Y-???N-??',
  `order_sort` int(100) NULL DEFAULT NULL COMMENT '??',
  `create_user` int(10) NULL DEFAULT NULL COMMENT '???',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '????',
  `update_user` int(10) NULL DEFAULT NULL COMMENT '???',
  `update_time` timestamp(0) NOT NULL COMMENT '????',
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) NULL DEFAULT NULL,
  `text` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, 0, '系统管理', 'fa fa-server', NULL, 'Y');
INSERT INTO `sys_menu` VALUES (2, 0, '商品管理', 'fa  fa-cubes', NULL, 'Y');
INSERT INTO `sys_menu` VALUES (3, 0, '交易管理', 'fa fa-balance-scale', NULL, 'Y');
INSERT INTO `sys_menu` VALUES (4, 0, '消费者管理', 'fa fa-users', NULL, 'Y');
INSERT INTO `sys_menu` VALUES (5, 1, '角色管理', 'fa fa-group', NULL, 'Y');
INSERT INTO `sys_menu` VALUES (6, 1, '用户管理', 'fa fa-user', NULL, 'Y');
INSERT INTO `sys_menu` VALUES (7, 1, '个人资料', 'fa fa-gear ', NULL, 'Y');
INSERT INTO `sys_menu` VALUES (8, 2, '类目管理', 'fa fa-bars', NULL, 'Y');
INSERT INTO `sys_menu` VALUES (9, 2, '属性管理', 'fa fa-key', NULL, 'Y');
INSERT INTO `sys_menu` VALUES (10, 2, '属性值管理', 'fa fa-key', NULL, 'Y');
INSERT INTO `sys_menu` VALUES (11, 2, '商品管理', 'fa fa-futbol-o', NULL, 'Y');
INSERT INTO `sys_menu` VALUES (12, 3, '订单管理', 'fa fa-leaf', NULL, 'Y');
INSERT INTO `sys_menu` VALUES (13, 4, '注册用户', 'fa fa-leaf', NULL, 'Y');

-- ----------------------------
-- Table structure for sys_product
-- ----------------------------
DROP TABLE IF EXISTS `sys_product`;
CREATE TABLE `sys_product`  (
  `product_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '????',
  `category_id` int(10) NULL DEFAULT NULL COMMENT '????',
  `product_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '????',
  `detail` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '????',
  `product_img` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '????',
  `status` int(10) NULL DEFAULT NULL COMMENT '??',
  `create_user` int(10) NULL DEFAULT NULL COMMENT '???',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '????',
  `update_user` int(10) NULL DEFAULT NULL COMMENT '???',
  `update_time` timestamp(0) NOT NULL COMMENT '????',
  PRIMARY KEY (`product_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_product_detail
-- ----------------------------
DROP TABLE IF EXISTS `sys_product_detail`;
CREATE TABLE `sys_product_detail`  (
  `product_detail_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '??????',
  `produtc_id` int(10) NULL DEFAULT NULL COMMENT '????',
  `stock` int(11) NULL DEFAULT NULL COMMENT '??',
  `price` double NULL DEFAULT NULL COMMENT '??',
  `create_user` int(10) NULL DEFAULT NULL COMMENT '???',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '????',
  `update_user` int(10) NULL DEFAULT NULL COMMENT '???',
  `update_time` timestamp(0) NOT NULL COMMENT '????',
  PRIMARY KEY (`product_detail_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_product_spec
-- ----------------------------
DROP TABLE IF EXISTS `sys_product_spec`;
CREATE TABLE `sys_product_spec`  (
  `product_detail_id` int(10) NULL DEFAULT NULL COMMENT '??????',
  `spec_value` int(10) NULL DEFAULT NULL COMMENT '???'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_product_status
-- ----------------------------
DROP TABLE IF EXISTS `sys_product_status`;
CREATE TABLE `sys_product_status`  (
  `status_id` int(10) NOT NULL COMMENT '??????',
  `status_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`status_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '????',
  `role_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '????',
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '???Y-???N-??',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'Y');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` int(10) NULL DEFAULT NULL COMMENT '????',
  `menu_id` int(10) NULL DEFAULT NULL COMMENT '????'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (1, 1);
INSERT INTO `sys_role_menu` VALUES (1, 2);
INSERT INTO `sys_role_menu` VALUES (1, 11);
INSERT INTO `sys_role_menu` VALUES (1, 10);
INSERT INTO `sys_role_menu` VALUES (1, 9);
INSERT INTO `sys_role_menu` VALUES (1, 8);
INSERT INTO `sys_role_menu` VALUES (1, 7);
INSERT INTO `sys_role_menu` VALUES (1, 6);
INSERT INTO `sys_role_menu` VALUES (1, 5);
INSERT INTO `sys_role_menu` VALUES (1, 4);
INSERT INTO `sys_role_menu` VALUES (1, 3);
INSERT INTO `sys_role_menu` VALUES (1, 12);
INSERT INTO `sys_role_menu` VALUES (1, 13);

-- ----------------------------
-- Table structure for sys_spec
-- ----------------------------
DROP TABLE IF EXISTS `sys_spec`;
CREATE TABLE `sys_spec`  (
  `spec_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '????',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '????',
  `category_id` int(10) NULL DEFAULT NULL COMMENT '????',
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '???Y-???N-??',
  PRIMARY KEY (`spec_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_spec_value
-- ----------------------------
DROP TABLE IF EXISTS `sys_spec_value`;
CREATE TABLE `sys_spec_value`  (
  `spec_value_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '?????',
  `spec_id` int(10) NULL DEFAULT NULL COMMENT '??',
  `spec_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '???',
  PRIMARY KEY (`spec_value_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '????',
  `user_no` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '????',
  `username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '????',
  `login_name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '???',
  `password` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '?????MD5??',
  `role_id` int(10) NULL DEFAULT NULL COMMENT '????',
  `gender` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '???M-??F-?',
  `id_card` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '?????',
  `cellphone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '????',
  `email` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '????',
  `birthday` date NULL DEFAULT NULL COMMENT '????',
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '???Y-???N-??',
  `create_user` int(10) NULL DEFAULT NULL COMMENT '???',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '????',
  `update_user` int(10) NULL DEFAULT NULL COMMENT '???',
  `update_time` timestamp(0) NULL COMMENT '????',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'AUG_00001', '张昊', 'zhanghao', 'e10adc3949ba59abbe56e057f20f883e', 1, 'M', NULL, NULL, NULL, NULL, 'Y', NULL, '2018-09-18 17:48:35', NULL, '2018-09-05 16:43:25');

SET FOREIGN_KEY_CHECKS = 1;
