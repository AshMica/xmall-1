-- ----------------------------
-- Table structure for sys_category
-- ----------------------------
DROP TABLE IF EXISTS sys_category;
CREATE TABLE sys_category  (
  category_id int(10) NOT NULL AUTO_INCREMENT,
  parent_id int(10),
  name varchar(200),
  status varchar(50),
  order_sort int(100),
  create_user int(10),
  create_time timestamp,
  update_user int(10),
  update_time timestamp,
  PRIMARY KEY (category_id)
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS sys_menu;
CREATE TABLE sys_menu  (
  menu_id int(10) NOT NULL AUTO_INCREMENT,
  parent_id int(10),
  text varchar(200),
  icon varchar(255),
  url varchar(500),
  status varchar(50),
  PRIMARY KEY (menu_id)
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO sys_menu VALUES (1, 0, '系统管理', 'fa fa-server', NULL, 'Y');
INSERT INTO sys_menu VALUES (2, 0, '商品管理', 'fa  fa-cubes', NULL, 'Y');
INSERT INTO sys_menu VALUES (3, 0, '交易管理', 'fa fa-balance-scale', NULL, 'Y');
INSERT INTO sys_menu VALUES (4, 0, '消费者管理', 'fa fa-users', NULL, 'Y');
INSERT INTO sys_menu VALUES (5, 1, '角色管理', 'fa fa-group', NULL, 'Y');
INSERT INTO sys_menu VALUES (6, 1, '用户管理', 'fa fa-user', NULL, 'Y');
INSERT INTO sys_menu VALUES (7, 1, '个人资料', 'fa fa-gear ', NULL, 'Y');
INSERT INTO sys_menu VALUES (8, 2, '类目管理', 'fa fa-bars', NULL, 'Y');
INSERT INTO sys_menu VALUES (9, 2, '属性管理', 'fa fa-key', NULL, 'Y');
INSERT INTO sys_menu VALUES (10, 2, '属性值管理', 'fa fa-key', NULL, 'Y');
INSERT INTO sys_menu VALUES (11, 2, '商品管理', 'fa fa-futbol-o', NULL, 'Y');
INSERT INTO sys_menu VALUES (12, 3, '订单管理', 'fa fa-leaf', NULL, 'Y');
INSERT INTO sys_menu VALUES (13, 4, '注册用户', 'fa fa-leaf', NULL, 'Y');

-- ----------------------------
-- Table structure for sys_product
-- ----------------------------
DROP TABLE IF EXISTS sys_product;
CREATE TABLE sys_product  (
  product_id int(10) NOT NULL AUTO_INCREMENT,
  category_id int(10),
  product_name varchar(200),
  detail varchar(500),
  product_img text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  status int(10),
  create_user int(10),
  create_time timestamp,
  update_user int(10),
  update_time timestamp,
  PRIMARY KEY (product_id)
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_product_detail
-- ----------------------------
DROP TABLE IF EXISTS sys_product_detail;
CREATE TABLE sys_product_detail  (
  product_detail_id int(10) NOT NULL AUTO_INCREMENT,
  produtc_id int(10),
  stock int(11),
  price double,
  create_user int(10),
  create_time timestamp,
  update_user int(10),
  update_time timestamp,
  PRIMARY KEY (product_detail_id)
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_product_spec
-- ----------------------------
DROP TABLE IF EXISTS sys_product_spec;
CREATE TABLE sys_product_spec  (
  product_detail_id int(10),
  spec_value int(10)
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_product_status
-- ----------------------------
DROP TABLE IF EXISTS sys_product_status;
CREATE TABLE sys_product_status  (
  status_id int(10) NOT NULL,
  status_name varchar(100),
  PRIMARY KEY (status_id)
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS sys_role;
CREATE TABLE sys_role  (
  role_id int(10) NOT NULL AUTO_INCREMENT,
  role_name varchar(200),
  status varchar(50),
  PRIMARY KEY (role_id)
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO sys_role VALUES (1, '超级管理员', 'Y');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS sys_role_menu;
CREATE TABLE sys_role_menu  (
  role_id int(10),
  menu_id int(10)
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO sys_role_menu VALUES (1, 1);
INSERT INTO sys_role_menu VALUES (1, 2);
INSERT INTO sys_role_menu VALUES (1, 11);
INSERT INTO sys_role_menu VALUES (1, 10);
INSERT INTO sys_role_menu VALUES (1, 9);
INSERT INTO sys_role_menu VALUES (1, 8);
INSERT INTO sys_role_menu VALUES (1, 7);
INSERT INTO sys_role_menu VALUES (1, 6);
INSERT INTO sys_role_menu VALUES (1, 5);
INSERT INTO sys_role_menu VALUES (1, 4);
INSERT INTO sys_role_menu VALUES (1, 3);
INSERT INTO sys_role_menu VALUES (1, 12);
INSERT INTO sys_role_menu VALUES (1, 13);

-- ----------------------------
-- Table structure for sys_spec
-- ----------------------------
DROP TABLE IF EXISTS sys_spec;
CREATE TABLE sys_spec  (
  spec_id int(10) NOT NULL AUTO_INCREMENT,
  name varchar(200),
  category_id int(10),
  status varchar(50),
  PRIMARY KEY (spec_id)
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_spec_value
-- ----------------------------
DROP TABLE IF EXISTS sys_spec_value;
CREATE TABLE sys_spec_value  (
  spec_value_id int(10) NOT NULL AUTO_INCREMENT,
  spec_id int(10),
  spec_value varchar(500),
  PRIMARY KEY (spec_value_id)
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS sys_user;
CREATE TABLE sys_user  (
  user_id int(10) NOT NULL AUTO_INCREMENT,
  user_no varchar(100),
  username varchar(200),
  login_name varchar(500),
  password varchar(500),
  role_id int(10),
  gender varchar(50),
  id_card varchar(100),
  cellphone varchar(100),
  email varchar(500),
  birthday date,
  status varchar(50),
  create_user int(10),
  create_time timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_timestamp,
  update_user int(10),
  update_time timestamp NULL,
  PRIMARY KEY (user_id)
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO sys_user VALUES (1, 'AUG_00001', '张昊', 'zhanghao', 'e10adc3949ba59abbe56e057f20f883e', 1, 'M', NULL, NULL, NULL, NULL, 'Y', NULL, '2018-09-18 17:48:35', NULL, '2018-09-05 16:43:25');

