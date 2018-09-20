-- ----------------------------
-- Table structure for sys_address
-- ----------------------------
DROP TABLE IF EXISTS sys_address;
CREATE TABLE sys_address    (
	address_id int(10) NOT NULL AUTO_INCREMENT COMMENT '地址主键',
    province_id int(10) COMMENT '省份',
    city_id int(10) COMMENT '城市',
    county_id int(10) COMMENT '区县',
    detail varchar(500) COMMENT '具体地址',
    linkman varchar(255) COMMENT '联系人',
    cellphone varchar(100) COMMENT '联系电话',
    zipcode varchar(100) COMMENT '邮政编码',
    associator_id int(10) COMMENT '会员',
    status_id int(10) COMMENT '状态',
    create_time timestamp COMMENT '创建时间',
    update_time timestamp COMMENT '修改时间',
    PRIMARY KEY(address_id)
)ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4;

-- ----------------------------
-- Table structure for sys_associator
-- ----------------------------
DROP TABLE IF EXISTS sys_associator;
CREATE TABLE sys_associator    (
    associator_id int(10) NOT NULL AUTO_INCREMENT COMMENT '会员主键',
    associator_no varchar(100) COMMENT '会员编号',
    associator_name varchar(255) COMMENT '会员名称',
    nickname varchar(500) COMMENT '昵称，登录名',
    password varchar(500) COMMENT '登录密码：MD5加密',
    gender varchar(10) COMMENT '性别：M-男，N-女',
    rank_id int(10) COMMENT '会员等级',
    point int(10) COMMENT '会员积分',
    id_card varchar(100) COMMENT '身份证号码',
    cellphone varchar(100) COMMENT '联系电话',
    email varchar(500) COMMENT '电子邮件',
    status_id int(10) COMMENT '状态',
    create_time timestamp COMMENT '创建时间',
    update_time timestamp COMMENT '修改时间',
    PRIMARY KEY(associator_id)
)ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4;

-- ----------------------------
-- Records of sys_associator
-- ----------------------------
INSERT INTO sys_associator(associator_name, nickname, password, status_id) VALUES('王富贵', 'admin', '21232f297a57a5a743894a0e4a801fc3', 2);

-- ----------------------------
-- Table structure for sys_attr_value
-- ----------------------------
DROP TABLE IF EXISTS sys_attr_value;
CREATE TABLE sys_attr_value    (
    attr_value_id int(10) NOT NULL AUTO_INCREMENT COMMENT '属性值主键',
    attribute_id int(10) COMMENT '属性',
    attr_value_text varchar(255) COMMENT '属性值内容',
    status_id int(10) COMMENT '状态',
    create_user int(10) COMMENT '创建人',
    create_time timestamp COMMENT '创建时间',
    update_user int(10) COMMENT '修改人',
    update_time timestamp COMMENT '修改时间',
    PRIMARY KEY(attr_value_id)
)ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4;

-- ----------------------------
-- Table structure for sys_attribute
-- ----------------------------
DROP TABLE IF EXISTS sys_attribute;
CREATE TABLE sys_attribute    (
    attribute_id int(10) NOT NULL AUTO_INCREMENT COMMENT '属性主键',
    attribute_name varchar(255) COMMENT '属性名称',
    category_id int(10) COMMENT '所在分类',
    status_id int(10) COMMENT '状态',
    create_user int(10) COMMENT '创建人',
    create_time timestamp COMMENT '创建时间',
    update_id int(10) COMMENT '修改人',
    update_time timestamp COMMENT '修改时间',
    PRIMARY KEY(attribute_id)
)ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4;

-- ----------------------------
-- Table structure for sys_cart
-- ----------------------------
DROP TABLE IF EXISTS sys_cart;
CREATE TABLE sys_cart    (
    cart_id int(10) NOT NULL AUTO_INCREMENT COMMENT '购物车主键',
    associator_id int(10) COMMENT '会员主键',
    sku_id int(10) COMMENT 'sku主键',
    quantity int(10) COMMENT '数量',
    create_time timestamp COMMENT '创建时间',
    update_time timestamp COMMENT '修改时间',
    PRIMARY KEY(cart_id)
)ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4;

-- ----------------------------
-- Table structure for sys_category
-- ----------------------------
DROP TABLE IF EXISTS sys_category;
CREATE TABLE sys_category    (
    category_id int(10) NOT NULL AUTO_INCREMENT COMMENT '类别主键',
    parent_id int(10) COMMENT '上级类别',
    category_name varchar(255) COMMENT '类别名称',
    category_code varchar(255) COMMENT '类别编号',
    sort_order int(10) COMMENT '排序',
    status_id int(10) COMMENT '类别状态',
    create_user int(10) COMMENT '创建人',
    create_time timestamp COMMENT '创建时间',
    update_user int(10) COMMENT '修改人',
    update_time timestamp COMMENT '修改时间',
    PRIMARY KEY(category_id)
)ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4;

-- ----------------------------
-- Table structure for sys_city
-- ----------------------------
DROP TABLE IF EXISTS sys_city;
CREATE TABLE sys_city    (
    city_id int(10) NOT NULL AUTO_INCREMENT COMMENT '城市主键',
    province_id int(10) COMMENT '所在身份',
    city_name varchar(255) COMMENT '城市名称',
    city_code varchar(255) COMMENT '城市编码',
    PRIMARY KEY(city_id)
)ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4;

-- ----------------------------
-- Table structure for sys_county
-- ----------------------------
DROP TABLE IF EXISTS sys_county;
CREATE TABLE sys_county    (
    county_id int(10) NOT NULL COMMENT '区县主键',
    province_id int(10) COMMENT '所在省份',
    city_id int(10) COMMENT '所在城市',
    county_name varchar(255) COMMENT '区县名称',
    county_code varchar(255) COMMENT '区县编码',
    PRIMARY KEY(county_id)
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_express
-- ----------------------------
DROP TABLE IF EXISTS sys_express;
CREATE TABLE sys_express    (
    express_id int(10) NOT NULL COMMENT '快递公司主键',
    express_name varchar(255) COMMENT '快递公司名称',
    linkman varchar(255) COMMENT '联系人',
    cellphone varchar(255) COMMENT '联系电话',
    sort_order int(10) COMMENT '排序',
    status_id int(10) COMMENT '状态',
    create_user int(10) COMMENT '创建人',
    create_time timestamp COMMENT '创建时间',
    update_user int(10) COMMENT '修改人',
    update_time timestamp COMMENT '修改时间',
    PRIMARY KEY(express_id)
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS sys_menu;
CREATE TABLE sys_menu    (
    menu_id int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单主键',
    parent_id int(11) COMMENT '上级菜单',
    text varchar(255) COMMENT '菜单文本',
    url varchar(500) COMMENT '链接地址',
    icon varchar(255) COMMENT '图标样式',
    sort_order int(10) COMMENT '排序字段',
    status_id int(10) COMMENT '菜单状态',
    create_user int(10) COMMENT '创建人',
    create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_timestamp COMMENT '创建时间',
    update_user int(10) COMMENT '更新人',
    update_time timestamp NOT NULL COMMENT '更新时间',
    PRIMARY KEY(menu_id)
)ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO sys_menu(parent_id, text, url, icon, sort_order, status_id) VALUES (0, '系统管理', NULL, 'fa fa-home', 1, 2);
INSERT INTO sys_menu(parent_id, text, url, icon, sort_order, status_id) VALUES (0, '基础管理', NULL, 'fa fa-leaf', 2, 2);
INSERT INTO sys_menu(parent_id, text, url, icon, sort_order, status_id) VALUES (0, '商品管理', NULL, 'fa fa-gift', 3, 2);
INSERT INTO sys_menu(parent_id, text, url, icon, sort_order, status_id) VALUES (0, '交易管理', NULL, 'fa fa-cart-plus', 4, 2);
INSERT INTO sys_menu(parent_id, text, url, icon, sort_order, status_id) VALUES (0, '会员管理', NULL, 'fa fa-users', 5, 2);
INSERT INTO sys_menu(parent_id, text, url, icon, sort_order, status_id) VALUES (0, '物流管理', NULL, 'fa fa-truck', 6, 2);
INSERT INTO sys_menu(parent_id, text, url, icon, sort_order, status_id) VALUES (1, '后台用户', '/user/list/0/0', 'fa fa-user', 11, 2);
INSERT INTO sys_menu(parent_id, text, url, icon, sort_order, status_id) VALUES (1, '后台角色', NULL, 'fa fa-street-view', 12, 2);
INSERT INTO sys_menu(parent_id, text, url, icon, sort_order, status_id) VALUES (1, '个人信息', NULL, 'fa fa-cog', 13, 2);
INSERT INTO sys_menu(parent_id, text, url, icon, sort_order, status_id) VALUES (2, '地址管理', NULL, 'fa fa-road', 21, 2);
INSERT INTO sys_menu(parent_id, text, url, icon, sort_order, status_id) VALUES (2, '支付方式', NULL, NULL, NULL, 22);
INSERT INTO sys_menu(parent_id, text, url, icon, sort_order, status_id) VALUES (2, '积分等级', NULL, NULL, NULL, 23);
INSERT INTO sys_menu(parent_id, text, url, icon, sort_order, status_id) VALUES (3, '商品类别', NULL, 'fa fa-navicon', 31, 2);
INSERT INTO sys_menu(parent_id, text, url, icon, sort_order, status_id) VALUES (3, '商品属性', NULL, 'fa fa-pencil', 32, 2);
INSERT INTO sys_menu(parent_id, text, url, icon, sort_order, status_id) VALUES (3, '商品属性值', NULL, 'fa fa-server', 33, 2);
INSERT INTO sys_menu(parent_id, text, url, icon, sort_order, status_id) VALUES (3, '商品信息', NULL, 'fa fa-gift', 34, 2);
INSERT INTO sys_menu(parent_id, text, url, icon, sort_order, status_id) VALUES (4, '注册用户', NULL, 'fa fa-child', 41, 2);
INSERT INTO sys_menu(parent_id, text, url, icon, sort_order, status_id) VALUES (4, '订单管理', NULL, 'fa fa-bookmark', 42, 2);
INSERT INTO sys_menu(parent_id, text, url, icon, sort_order, status_id) VALUES (5, '会员管理', NULL, NULL, NULL, 51);
INSERT INTO sys_menu(parent_id, text, url, icon, sort_order, status_id) VALUES (6, '物流公司', NULL, NULL, NULL, 61);
INSERT INTO sys_menu(parent_id, text, url, icon, sort_order, status_id) VALUES (6, '发货管理', NULL, NULL, NULL, 62);

-- ----------------------------
-- Table structure for sys_order
-- ----------------------------
DROP TABLE IF EXISTS sys_order;
CREATE TABLE sys_order    (
    order_id int(10) NOT NULL AUTO_INCREMENT COMMENT '订单主键',
    order_no varchar(255) COMMENT '订单编号',
    associator_id int(10) COMMENT '会员主键',
    total_price decimal(10, 2) COMMENT '总费用',
    pay_platform_id int(10) COMMENT '支付平台',
    freight decimal(10, 2) COMMENT '运费',
    freight_type varchar(255) COMMENT '运费支付方式',
    express_id int(10) COMMENT '快递公司',
    express_no varchar(100) COMMENT '快递编号',
    receive_address varchar(1000) COMMENT '收货地址',
    status_id int(10) COMMENT '状态',
    payment_time timestamp COMMENT '支付时间',
    send_time timestamp COMMENT '发货时间',
    receive_time timestamp COMMENT '收货时间',
    close_time timestamp COMMENT '关闭时间',
    PRIMARY KEY(order_id)
)ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4;

-- ----------------------------
-- Table structure for sys_order_detail
-- ----------------------------
DROP TABLE IF EXISTS sys_order_detail;
CREATE TABLE sys_order_detail    (
    order_detail_id int(10) NOT NULL COMMENT '订单详情主键',
    order_id int(10) COMMENT '订单主键',
    sku_id int(10) COMMENT 'sku主键',
    current_price decimal(10, 2) COMMENT '购买价格',
    quantity int(10) COMMENT '数量',
    total_price decimal(10, 2) COMMENT '总价格',
    PRIMARY KEY(order_detail_id)
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_pay_platform
-- ----------------------------
DROP TABLE IF EXISTS sys_pay_platform;
CREATE TABLE sys_pay_platform    (
    pay_platform_id int(11) NOT NULL AUTO_INCREMENT COMMENT '支付平台主键',
    pay_platform_name varchar(255) COMMENT '平台名称',
    icon varchar(500) COMMENT '图标',
    url varchar(500) COMMENT '链接地址',
    PRIMARY KEY(pay_platform_id)
)ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4;

-- ----------------------------
-- Table structure for sys_product
-- ----------------------------
DROP TABLE IF EXISTS sys_product;
CREATE TABLE sys_product    (
    product_id int(10) NOT NULL AUTO_INCREMENT COMMENT '商品主键',
    category_id int(10) COMMENT '所在分类',
    product_code varchar(255) COMMENT '商品编号',
    product_name varchar(255) COMMENT '商品名称',
    subtitle varchar(255) COMMENT '副标题',
    main_img varchar(500) COMMENT '主图片',
    sub_img varchar(500) COMMENT '副图片',
    synopsis text NULL COMMENT '简介',
    detail text NULL COMMENT '详情',
    sort_order int(10) COMMENT '排序字段',
    status_id int(10) COMMENT '状态',
    create_user int(10) COMMENT '创建人',
    create_time timestamp COMMENT '创建时间',
    update_id int(10) COMMENT '修改人',
    update_time timestamp COMMENT '修改时间',
    PRIMARY KEY(product_id)
)ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4;

-- ----------------------------
-- Table structure for sys_product_sku
-- ----------------------------
DROP TABLE IF EXISTS sys_product_sku;
CREATE TABLE sys_product_sku    (
    product_sku_id int(10) NOT NULL AUTO_INCREMENT COMMENT 'sku主键',
    product_id int(10) COMMENT '商品主键',
    product_sku_code varchar(255) COMMENT 'sku编码',
    price decimal(10, 2) COMMENT '价格',
    preferential decimal(10, 2) COMMENT '优惠金额',
    point int(10) COMMENT '积分',
    stock int(10) COMMENT '库存',
    PRIMARY KEY(product_sku_id)
)ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4;

-- ----------------------------
-- Table structure for sys_province
-- ----------------------------
DROP TABLE IF EXISTS sys_province;
CREATE TABLE sys_province    (
    province_id int(10) NOT NULL AUTO_INCREMENT COMMENT '省份主键',
    province_name varchar(255) COMMENT '省份名称',
    province_code varchar(255) COMMENT '省份编码',
    PRIMARY KEY(province_id)
)ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4;

-- ----------------------------
-- Records of sys_province
-- ----------------------------
INSERT INTO sys_province(province_name, province_code) VALUES ('北京市', '110000');
INSERT INTO sys_province(province_name, province_code) VALUES ('天津市', '120000');
INSERT INTO sys_province(province_name, province_code) VALUES ('河北省', '130000');
INSERT INTO sys_province(province_name, province_code) VALUES ('山西省', '140000');
INSERT INTO sys_province(province_name, province_code) VALUES ('内蒙古自治区', '150000');
INSERT INTO sys_province(province_name, province_code) VALUES ('辽宁省', '210000');
INSERT INTO sys_province(province_name, province_code) VALUES ('吉林省', '220000');
INSERT INTO sys_province(province_name, province_code) VALUES ('黑龙江省', '230000');
INSERT INTO sys_province(province_name, province_code) VALUES ('上海市', '310000');
INSERT INTO sys_province(province_name, province_code) VALUES ('江苏省', '320000');
INSERT INTO sys_province(province_name, province_code) VALUES ('浙江省', '330000');
INSERT INTO sys_province(province_name, province_code) VALUES ('安徽省', '340000');
INSERT INTO sys_province(province_name, province_code) VALUES ('福建省', '350000');
INSERT INTO sys_province(province_name, province_code) VALUES ('江西省', '360000');
INSERT INTO sys_province(province_name, province_code) VALUES ('山东省', '370000');
INSERT INTO sys_province(province_name, province_code) VALUES ('河南省', '410000');
INSERT INTO sys_province(province_name, province_code) VALUES ('湖北省', '420000');
INSERT INTO sys_province(province_name, province_code) VALUES ('湖南省', '430000');
INSERT INTO sys_province(province_name, province_code) VALUES ('广东省', '440000');
INSERT INTO sys_province(province_name, province_code) VALUES ('广西壮族自治区', '450000');
INSERT INTO sys_province(province_name, province_code) VALUES ('海南省', '460000');
INSERT INTO sys_province(province_name, province_code) VALUES ('重庆市', '500000');
INSERT INTO sys_province(province_name, province_code) VALUES ('四川省', '510000');
INSERT INTO sys_province(province_name, province_code) VALUES ('贵州省', '520000');
INSERT INTO sys_province(province_name, province_code) VALUES ('云南省', '530000');
INSERT INTO sys_province(province_name, province_code) VALUES ('西藏自治区', '540000');
INSERT INTO sys_province(province_name, province_code) VALUES ('陕西省', '610000');
INSERT INTO sys_province(province_name, province_code) VALUES ('甘肃省', '620000');
INSERT INTO sys_province(province_name, province_code) VALUES ('青海省', '630000');
INSERT INTO sys_province(province_name, province_code) VALUES ('宁夏回族自治区', '640000');
INSERT INTO sys_province(province_name, province_code) VALUES ('新疆维吾尔自治区', '650000');
INSERT INTO sys_province(province_name, province_code) VALUES ('台湾省', '710000');
INSERT INTO sys_province(province_name, province_code) VALUES ('香港特别行政区', '810000');
INSERT INTO sys_province(province_name, province_code) VALUES ('澳门特别行政区', '820000');

-- ----------------------------
-- Table structure for sys_rank
-- ----------------------------
DROP TABLE IF EXISTS sys_rank;
CREATE TABLE sys_rank    (
    rank_id int(10) NOT NULL AUTO_INCREMENT COMMENT '会员等级主键',
    rank_name varchar(255) COMMENT '等级名称',
    lowest_point int(10) COMMENT '最低积分',
    highest_point int(10) COMMENT '最高积分',
    sort_order int(10) COMMENT '排序',
    create_user int(10) COMMENT '创建人',
    create_time timestamp COMMENT '创建时间',
    update_user int(10) COMMENT '修改人',
    update_time timestamp COMMENT '修改时间',
    PRIMARY KEY(rank_id)
)ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS sys_role;
CREATE TABLE sys_role    (
    role_id int(10) NOT NULL AUTO_INCREMENT COMMENT '角色主键',
    role_name varchar(255) COMMENT '角色名称',
    PRIMARY KEY(role_id)
)ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO sys_role(role_name) VALUES ('超级管理员');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS sys_role_menu;
CREATE TABLE sys_role_menu    (
    role_id int(10) COMMENT '角色主键',
    menu_id int(10) COMMENT '菜单主键'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO sys_role_menu(role_id, menu_id) VALUES (1, 1);
INSERT INTO sys_role_menu(role_id, menu_id) VALUES (1, 2);
INSERT INTO sys_role_menu(role_id, menu_id) VALUES (1, 3);
INSERT INTO sys_role_menu(role_id, menu_id) VALUES (1, 4);
INSERT INTO sys_role_menu(role_id, menu_id) VALUES (1, 5);
INSERT INTO sys_role_menu(role_id, menu_id) VALUES (1, 6);
INSERT INTO sys_role_menu(role_id, menu_id) VALUES (1, 7);
INSERT INTO sys_role_menu(role_id, menu_id) VALUES (1, 8);
INSERT INTO sys_role_menu(role_id, menu_id) VALUES (1, 9);
INSERT INTO sys_role_menu(role_id, menu_id) VALUES (1, 10);
INSERT INTO sys_role_menu(role_id, menu_id) VALUES (1, 11);
INSERT INTO sys_role_menu(role_id, menu_id) VALUES (1, 12);
INSERT INTO sys_role_menu(role_id, menu_id) VALUES (1, 13);
INSERT INTO sys_role_menu(role_id, menu_id) VALUES (1, 14);
INSERT INTO sys_role_menu(role_id, menu_id) VALUES (1, 15);
INSERT INTO sys_role_menu(role_id, menu_id) VALUES (1, 16);
INSERT INTO sys_role_menu(role_id, menu_id) VALUES (1, 17);
INSERT INTO sys_role_menu(role_id, menu_id) VALUES (1, 18);
INSERT INTO sys_role_menu(role_id, menu_id) VALUES (1, 19);
INSERT INTO sys_role_menu(role_id, menu_id) VALUES (1, 20);

-- ----------------------------
-- Table structure for sys_sku_attr
-- ----------------------------
DROP TABLE IF EXISTS sys_sku_attr;
CREATE TABLE sys_sku_attr    (
    sku_id int(10) COMMENT 'sku主键',
    attr_value_id int(10) COMMENT '属性值主键'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_status
-- ----------------------------
DROP TABLE IF EXISTS sys_status;
CREATE TABLE sys_status    (
    status_id int(10) NOT NULL AUTO_INCREMENT COMMENT '状态主键',
    parent_id int(10) COMMENT '上级主键',
    status_name varchar(255) COMMENT '状态名称',
    status_code varchar(255) COMMENT '状态编码',
    sort_order int(10) COMMENT '排序字段',
    PRIMARY KEY(status_id)
)ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4;

-- ----------------------------
-- Records of sys_status
-- ----------------------------
INSERT INTO sys_status(parent_id, status_name, status_code, sort_order) VALUES (0, '是否启用', NULL, 1);
INSERT INTO sys_status(parent_id, status_name, status_code, sort_order) VALUES (1, '启用', 'ENABLE', 11);
INSERT INTO sys_status(parent_id, status_name, status_code, sort_order) VALUES (1, '禁用', 'DISABLE', 12);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS sys_user;
CREATE TABLE sys_user    (
    user_id int(10) NOT NULL AUTO_INCREMENT COMMENT '用户主键',
    username varchar(255) COMMENT '真实姓名',
    login_name varchar(255) COMMENT '登录名',
    password varchar(500) COMMENT '登录密码：MD5加密',
    gender varchar(10) COMMENT '性别：M-男性，F-女性',
    role_id int(10) COMMENT '用户角色',
    id_card varchar(100) COMMENT '身份证号码',
    cellphone varchar(100) COMMENT '联系电话',
    email varchar(500) COMMENT '电子邮件',
    birthday date COMMENT '出生日期',
    status_id int(10) COMMENT '用户状态',
    create_user int(10) COMMENT '创建人',
    create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_timestamp COMMENT '创建时间',
    update_user int(10) COMMENT '修改人',
    update_time timestamp NOT NULL COMMENT '修改时间',
    PRIMARY KEY(user_id)
)ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO sys_user(username, login_name, password, role_id, status_id) VALUES ('王富贵', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, 2);
