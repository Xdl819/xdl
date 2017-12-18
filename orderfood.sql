/*
Navicat MySQL Data Transfer

Source Server         : 数据库
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : orderfood

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2017-12-18 17:42:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `loginuser`
-- ----------------------------
DROP TABLE IF EXISTS `loginuser`;
CREATE TABLE `loginuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nameno` varchar(20) DEFAULT NULL COMMENT '用户编号',
  `name` varchar(30) DEFAULT NULL COMMENT '用户名',
  `pwd` varchar(32) DEFAULT NULL COMMENT '密码',
  `bimgpath` varchar(50) DEFAULT NULL COMMENT '头像',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `sex` bit(1) DEFAULT NULL COMMENT '性别',
  `telnum` varchar(30) DEFAULT NULL COMMENT '电话',
  `address` varchar(50) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of loginuser
-- ----------------------------
INSERT INTO `loginuser` VALUES ('4', 'DD-4897', 'xdl', '123456', 'upload/117111312943.', '20', '', '10086', '园湖北路12号0420');
INSERT INTO `loginuser` VALUES ('6', 'DD-6438', 'qq', '11', 'upload/117113221159.jpg', '18', '', '10000', '你猜');
INSERT INTO `loginuser` VALUES ('7', 'DD-6225', '覃国振', '11', 'upload/117117103330.jpg', '18', '', '10086', '88');

-- ----------------------------
-- Table structure for `xdl_carte`
-- ----------------------------
DROP TABLE IF EXISTS `xdl_carte`;
CREATE TABLE `xdl_carte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `carteno` varchar(20) DEFAULT NULL COMMENT '类别编号',
  `cartename` varchar(30) DEFAULT NULL COMMENT '类别名称',
  `remark` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xdl_carte
-- ----------------------------
INSERT INTO `xdl_carte` VALUES ('8', 'XDL-9303', '粤菜', '粤菜');
INSERT INTO `xdl_carte` VALUES ('7', 'XDL-1044', '鲁菜', '鲁菜');
INSERT INTO `xdl_carte` VALUES ('6', 'XDL-9972', '川菜', '川菜');
INSERT INTO `xdl_carte` VALUES ('9', 'XDL-9029', '湘菜', '湘菜');
INSERT INTO `xdl_carte` VALUES ('10', 'XDL-5120', '徽菜', '徽菜');
INSERT INTO `xdl_carte` VALUES ('11', 'XDL-2761', '苏菜', '苏菜');
INSERT INTO `xdl_carte` VALUES ('12', 'XDL-2365', '浙菜', '浙菜');
INSERT INTO `xdl_carte` VALUES ('13', 'XDL-3626', '闽菜', '闽菜');

-- ----------------------------
-- Table structure for `xdl_delivery`
-- ----------------------------
DROP TABLE IF EXISTS `xdl_delivery`;
CREATE TABLE `xdl_delivery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deliveryno` varchar(20) DEFAULT NULL COMMENT '配送编号',
  `deliveryname` varchar(30) DEFAULT NULL COMMENT '配送人名称',
  `dsex` bit(1) DEFAULT NULL COMMENT '性别',
  `dtele` varchar(30) DEFAULT NULL COMMENT '电话',
  `addtime` datetime DEFAULT NULL COMMENT '添加时间',
  `modtime` datetime DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xdl_delivery
-- ----------------------------
INSERT INTO `xdl_delivery` VALUES ('1', 'PS-7201', '晓得了', '', '10086', '2017-12-07 10:34:35', null, '88');
INSERT INTO `xdl_delivery` VALUES ('3', 'PS-5766', '嘻嘻哈哈', '', '10010', '2017-12-07 10:37:49', '2017-12-07 10:38:47', '66');

-- ----------------------------
-- Table structure for `xdl_detail`
-- ----------------------------
DROP TABLE IF EXISTS `xdl_detail`;
CREATE TABLE `xdl_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderno` varchar(20) DEFAULT NULL COMMENT '订单编号',
  `menuname` varchar(20) DEFAULT NULL COMMENT '菜品名称',
  `feature` int(11) DEFAULT NULL COMMENT '数量',
  `price` decimal(18,2) DEFAULT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xdl_detail
-- ----------------------------
INSERT INTO `xdl_detail` VALUES ('7', null, 'XX-6970', '8', '88.00');
INSERT INTO `xdl_detail` VALUES ('8', null, 'XX-4801', '8', '5.00');

-- ----------------------------
-- Table structure for `xdl_distribution`
-- ----------------------------
DROP TABLE IF EXISTS `xdl_distribution`;
CREATE TABLE `xdl_distribution` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL COMMENT '消费者',
  `telephone` varchar(50) DEFAULT NULL COMMENT '电话',
  `address` varchar(50) DEFAULT NULL COMMENT '地址',
  `addtime` datetime DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xdl_distribution
-- ----------------------------

-- ----------------------------
-- Table structure for `xdl_menuinfo`
-- ----------------------------
DROP TABLE IF EXISTS `xdl_menuinfo`;
CREATE TABLE `xdl_menuinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `carteno` varchar(20) DEFAULT NULL COMMENT '菜单编号',
  `menuno` varchar(20) DEFAULT NULL COMMENT '菜品编号',
  `imagepath` varchar(50) DEFAULT NULL COMMENT '菜单图片',
  `cartermb` decimal(18,2) DEFAULT NULL COMMENT '菜单价格',
  `cartespecial` bit(1) DEFAULT NULL COMMENT '是否特价',
  `mcontent` varchar(200) DEFAULT NULL COMMENT '菜品描述',
  `shopno` varchar(20) DEFAULT NULL COMMENT '店铺编号',
  `addtime` datetime DEFAULT NULL COMMENT '添加时间',
  `modtime` datetime DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xdl_menuinfo
-- ----------------------------
INSERT INTO `xdl_menuinfo` VALUES ('6', 'XX-9935', '888', 'upload/117115131722.jpg', '88.80', '', '666', null, '2017-12-05 13:17:22', null, '66');
INSERT INTO `xdl_menuinfo` VALUES ('11', 'XX-5839', 'XX-4801', 'upload/117111494245.jpg', '40.00', '', '101', null, '2017-12-14 09:42:45', null, '101');
INSERT INTO `xdl_menuinfo` VALUES ('12', 'XX-8055', 'XX-6970', 'upload/1171114195343.jpg', '89.00', '', 'sdfs', 'XDL-7562', '2017-12-14 19:53:43', null, 'sdfsdf');
INSERT INTO `xdl_menuinfo` VALUES ('13', 'XX-9671', 'XX-6407', 'upload/117111815454.jpg', '88.00', '', '鸽', 'XDL-6418', '2017-12-18 15:04:54', null, '不好吃');
INSERT INTO `xdl_menuinfo` VALUES ('14', 'XX-3289', 'XX-4801', 'upload/1171118161444.jpg', '89.00', '', '545', 'XDL-5430', '2017-12-18 16:14:44', null, '45');

-- ----------------------------
-- Table structure for `xdl_notice`
-- ----------------------------
DROP TABLE IF EXISTS `xdl_notice`;
CREATE TABLE `xdl_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL COMMENT '公告标题',
  `content` varchar(5000) DEFAULT NULL COMMENT '公告内容',
  `username` varchar(30) DEFAULT NULL COMMENT '发布者',
  `imagepath` varchar(50) DEFAULT NULL COMMENT '图片',
  `addtime` datetime DEFAULT NULL COMMENT '发布时间',
  `isasses` bit(1) DEFAULT NULL COMMENT '是否审核',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xdl_notice
-- ----------------------------
INSERT INTO `xdl_notice` VALUES ('7', '重庆乡水源火锅', '%2C%3Cspan%3E%D6%D8%C7%EC%CF%E7%CB%AE%D4%B4%BB%F0%B9%F8+%D2%BB%C2%C96.5%D5%DB%3C%2Fspan%3E%3Cspan+class%3D', 'xdl', 'upload/1171114235352.gif', '2017-12-14 23:53:52', '');
INSERT INTO `xdl_notice` VALUES ('6', '秘制螺丝粉套餐2选1', '%2C%2C%B8%C9%C0%CC%C2%DD%CB%BF%B7%DB%2B%C2%B1%B5%B0%2B%D2%FB%C6%B7%A1%A2%C8%FD%CF%CA%C2%DD%CB%BF%B7%DB%2B%D1%BC%BD%C5%2B%D2%FB%C6%B7%3Cspan+class%3D', 'xdl', 'upload/1171114235414.jpg', '2017-12-13 22:11:23', '');

-- ----------------------------
-- Table structure for `xdl_orderinfo`
-- ----------------------------
DROP TABLE IF EXISTS `xdl_orderinfo`;
CREATE TABLE `xdl_orderinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderno` varchar(20) DEFAULT NULL COMMENT '订单编号',
  `nameno` varchar(20) DEFAULT NULL COMMENT '用户编号',
  `menuno` varchar(20) DEFAULT NULL COMMENT '菜品编号',
  `status` bit(1) DEFAULT NULL COMMENT '付款状态',
  `feature` int(11) DEFAULT NULL COMMENT '数量',
  `price` decimal(18,2) DEFAULT NULL COMMENT '价格',
  `addtime` datetime DEFAULT NULL COMMENT '下单时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xdl_orderinfo
-- ----------------------------
INSERT INTO `xdl_orderinfo` VALUES ('10', '2017XXXX-3328', 'DD-6438', 'XX-1986,XX-7426', null, null, null, '2017-12-11 15:43:59');
INSERT INTO `xdl_orderinfo` VALUES ('9', '2017XXXX-9134', 'DD-6225', 'XX-6970,XX-7426', null, null, null, '2017-12-11 15:42:50');
INSERT INTO `xdl_orderinfo` VALUES ('18', '2017XXXX5664', 'DD-4897', 'XX-3177', '', '10', '40.00', '2017-12-13 00:59:39');
INSERT INTO `xdl_orderinfo` VALUES ('19', '2017XXXX1072', 'DD-6225', 'XX-2395', '', '77', '50.50', '2017-12-13 01:14:10');
INSERT INTO `xdl_orderinfo` VALUES ('21', '2017XXXX4642', 'DD-6438', 'XX-8837', null, '9', '9.00', '2017-12-14 10:49:46');

-- ----------------------------
-- Table structure for `xdl_shopinfo`
-- ----------------------------
DROP TABLE IF EXISTS `xdl_shopinfo`;
CREATE TABLE `xdl_shopinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shopno` varchar(20) DEFAULT NULL COMMENT '店铺编号',
  `shopname` varchar(30) DEFAULT NULL COMMENT '店铺名称',
  `imagepath` varchar(50) DEFAULT NULL COMMENT '图片',
  `feature` varchar(200) DEFAULT NULL COMMENT '特色',
  `shop` varchar(200) DEFAULT NULL COMMENT '备注',
  `tel` varchar(30) DEFAULT NULL COMMENT '店铺电话号码',
  `data` datetime DEFAULT NULL COMMENT '添加时间',
  `address` varchar(50) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xdl_shopinfo
-- ----------------------------
INSERT INTO `xdl_shopinfo` VALUES ('3', 'XDL-5430', '肥老鸭', 'upload/117119184631.gif', '鸭肉粉', '一般般', '10086', '2017-11-27 00:00:00', '园湖北路12路对面小吃街');
INSERT INTO `xdl_shopinfo` VALUES ('4', 'XDL-7562', '遵义羊肉粉', 'upload/117119181437.jpg', '羊肉粉', 'sb', '10010', '2017-12-01 00:00:00', '你猜');
INSERT INTO `xdl_shopinfo` VALUES ('6', 'XDL-6418', '桂林肥仔', 'upload/117119184355.jpg', '发发发', '嘻嘻嘻', '10000', '2017-12-09 00:00:00', '你猜');

-- ----------------------------
-- Table structure for `xdl_subclass`
-- ----------------------------
DROP TABLE IF EXISTS `xdl_subclass`;
CREATE TABLE `xdl_subclass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `carteno` varchar(20) DEFAULT NULL COMMENT '类别编号',
  `menuno` varchar(20) DEFAULT NULL COMMENT '菜品编号',
  `menuname` varchar(30) DEFAULT NULL COMMENT '菜品名称',
  `shopno` varchar(20) DEFAULT NULL COMMENT '店铺编号',
  `remark` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xdl_subclass
-- ----------------------------
INSERT INTO `xdl_subclass` VALUES ('12', 'XDL-1044', 'XX-4801', '一品豆腐', null, '一品豆腐');
INSERT INTO `xdl_subclass` VALUES ('11', 'XDL-9972', 'XX-6970', '鱼香肉丝', null, '鱼香肉丝');
INSERT INTO `xdl_subclass` VALUES ('13', 'XDL-9303', 'XX-1986', '明炉烤乳猪', null, '明炉烤乳猪');
INSERT INTO `xdl_subclass` VALUES ('14', 'XDL-2761', 'XX-7426', '鸭包鱼翅', null, '鸭包鱼翅');
INSERT INTO `xdl_subclass` VALUES ('15', 'XDL-2365', 'XX-1984', '东坡肉', null, '东坡肉');
INSERT INTO `xdl_subclass` VALUES ('16', 'XDL-3626', 'XX-2282', '佛跳墙', null, '佛跳墙');
INSERT INTO `xdl_subclass` VALUES ('17', 'XDL-9029', 'XX-1732', '剁椒鱼头', null, '剁椒鱼头');
INSERT INTO `xdl_subclass` VALUES ('18', 'XDL-5120', 'XX-4871', '红烧臭鳜鱼', null, '红烧臭鳜鱼');
INSERT INTO `xdl_subclass` VALUES ('19', 'XDL-9972', 'XX-7895', '麻婆豆腐', 'XDL-5430', '麻婆豆腐1');
INSERT INTO `xdl_subclass` VALUES ('21', 'XDL-1044', 'XX-6202', '糖醋鲤鱼', 'XDL-5430', '糖醋鲤鱼');
INSERT INTO `xdl_subclass` VALUES ('22', 'XDL-9303', 'XX-3177', '萝卜牛腩煲', 'XDL-5430', '萝卜牛腩煲');
INSERT INTO `xdl_subclass` VALUES ('23', 'XDL-2761', 'XX-7556', '鸭包鱼翅', 'XDL-6418', '鸭包鱼翅');
INSERT INTO `xdl_subclass` VALUES ('24', 'XDL-2365', 'XX-8837', '东坡肉', 'XDL-6418', '东坡肉');
INSERT INTO `xdl_subclass` VALUES ('25', 'XDL-3626', 'XX-2395', '佛跳墙', 'XDL-6418', '佛跳墙');
INSERT INTO `xdl_subclass` VALUES ('26', 'XDL-9029', 'XX-1503', '剁椒鱼头', 'XDL-6418', '剁椒鱼头');
INSERT INTO `xdl_subclass` VALUES ('27', 'XDL-5120', 'XX-6407', '黄山炖鸽', 'XDL-6418', '黄山炖鸽');

-- ----------------------------
-- Table structure for `xdl_sysloginfo`
-- ----------------------------
DROP TABLE IF EXISTS `xdl_sysloginfo`;
CREATE TABLE `xdl_sysloginfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `modulename` varchar(20) DEFAULT NULL COMMENT '操作模块名称',
  `actionname` varchar(12) DEFAULT NULL COMMENT '操作动作',
  `message` text COMMENT '操作信息',
  `username` varchar(30) DEFAULT NULL COMMENT '操作者',
  `ip` varchar(20) DEFAULT NULL COMMENT '操作IP',
  `addtime` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=556 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xdl_sysloginfo
-- ----------------------------
INSERT INTO `xdl_sysloginfo` VALUES ('527', '登录模块', '登录', '登录操作成功', 'qq', '192.168.86.68', '2017-12-14 10:52:59');
INSERT INTO `xdl_sysloginfo` VALUES ('526', '登录模块', '登录', '登录操作失败', 'admin', '192.168.86.68', '2017-12-14 10:51:49');
INSERT INTO `xdl_sysloginfo` VALUES ('525', '订单模块', '订单增加', '订单增加成功', 'admin', '192.168.86.68', '2017-12-14 10:49:46');
INSERT INTO `xdl_sysloginfo` VALUES ('524', '订单模块', '订单增加', '订单增加失败', 'admin', '192.168.86.68', '2017-12-14 10:49:15');
INSERT INTO `xdl_sysloginfo` VALUES ('523', '登录模块', '登录', '登录操作成功', 'admin', '192.168.86.68', '2017-12-14 10:48:29');
INSERT INTO `xdl_sysloginfo` VALUES ('522', '登录模块', '登录', '登录操作成功', 'xdl', '192.168.86.68', '2017-12-14 09:56:17');
INSERT INTO `xdl_sysloginfo` VALUES ('521', '登录模块', '登录', '注销操作成功', 'admin', '192.168.86.68', '2017-12-14 09:56:09');
INSERT INTO `xdl_sysloginfo` VALUES ('528', '登录模块', '登录', '登录操作成功', 'xdl', '192.168.1.102', '2017-12-14 18:26:08');
INSERT INTO `xdl_sysloginfo` VALUES ('529', '菜品模块', '菜品增加', '菜品增加成功', 'xdl', '192.168.1.102', '2017-12-14 19:53:44');
INSERT INTO `xdl_sysloginfo` VALUES ('530', '登录模块', '登录', '登录操作失败', '非法者', '192.168.1.102', '2017-12-14 23:51:56');
INSERT INTO `xdl_sysloginfo` VALUES ('531', '登录模块', '登录', '登录操作成功', 'xdl', '192.168.1.102', '2017-12-14 23:51:59');
INSERT INTO `xdl_sysloginfo` VALUES ('532', '公告模块', '公告删除', '公告删除成功', 'xdl', '192.168.1.102', '2017-12-14 23:52:33');
INSERT INTO `xdl_sysloginfo` VALUES ('533', '公告模块', '公告增加', '公告增加成功', 'xdl', '192.168.1.102', '2017-12-14 23:53:52');
INSERT INTO `xdl_sysloginfo` VALUES ('534', '公告模块', '公告修改', '公告修改成功', 'xdl', '192.168.1.102', '2017-12-14 23:54:14');
INSERT INTO `xdl_sysloginfo` VALUES ('535', '公告模块', '公告启用', '公告启用成功', 'xdl', '192.168.1.102', '2017-12-14 23:54:40');
INSERT INTO `xdl_sysloginfo` VALUES ('536', '公告模块', '公告启用', '公告启用成功', 'xdl', '192.168.1.102', '2017-12-14 23:54:42');
INSERT INTO `xdl_sysloginfo` VALUES ('537', '登录模块', '登录', '登录操作成功', 'xdl', '192.168.1.102', '2017-12-15 22:33:07');
INSERT INTO `xdl_sysloginfo` VALUES ('538', '登录模块', '登录', '登录操作成功', 'xdl', '192.168.1.102', '2017-12-15 22:33:41');
INSERT INTO `xdl_sysloginfo` VALUES ('539', '登录模块', '登录', '登录操作失败', '非法者', '192.168.1.102', '2017-12-15 23:20:13');
INSERT INTO `xdl_sysloginfo` VALUES ('540', '登录模块', '登录', '登录操作失败', '非法者', '192.168.1.102', '2017-12-15 23:20:13');
INSERT INTO `xdl_sysloginfo` VALUES ('541', '登录模块', '登录', '登录操作失败', '非法者', '192.168.1.102', '2017-12-15 23:20:13');
INSERT INTO `xdl_sysloginfo` VALUES ('542', '登录模块', '登录', '登录操作成功', 'xdl', '192.168.1.102', '2017-12-15 23:20:18');
INSERT INTO `xdl_sysloginfo` VALUES ('543', '登录模块', '登录', '登录操作成功', 'xdl', '192.168.1.102', '2017-12-15 23:48:12');
INSERT INTO `xdl_sysloginfo` VALUES ('544', '登录模块', '登录', '登录操作成功', 'xdl', '192.168.1.102', '2017-12-16 00:15:36');
INSERT INTO `xdl_sysloginfo` VALUES ('545', '登录模块', '登录', '登录操作成功', 'xdl', '192.168.1.102', '2017-12-16 20:14:17');
INSERT INTO `xdl_sysloginfo` VALUES ('546', '登录模块', '登录', '登录操作成功', 'xdl', '192.168.86.68', '2017-12-18 15:03:46');
INSERT INTO `xdl_sysloginfo` VALUES ('547', '菜品模块', '菜品增加', '菜品增加成功', 'xdl', '192.168.86.68', '2017-12-18 15:04:54');
INSERT INTO `xdl_sysloginfo` VALUES ('548', '登录模块', '登录', '登录操作成功', 'xdl', '192.168.86.68', '2017-12-18 15:20:47');
INSERT INTO `xdl_sysloginfo` VALUES ('549', '菜品模块', '菜品禁用', '菜品禁用成功', 'xdl', '192.168.86.68', '2017-12-18 15:50:51');
INSERT INTO `xdl_sysloginfo` VALUES ('550', '菜品模块', '菜品启用', '菜品启用成功', 'xdl', '192.168.86.68', '2017-12-18 15:50:54');
INSERT INTO `xdl_sysloginfo` VALUES ('551', '菜品模块', '菜品增加', '菜品增加成功', 'xdl', '192.168.86.68', '2017-12-18 16:14:44');
INSERT INTO `xdl_sysloginfo` VALUES ('552', '登录模块', '登录', '登录操作成功', 'xdl', '192.168.86.68', '2017-12-18 16:32:55');
INSERT INTO `xdl_sysloginfo` VALUES ('553', '登录模块', '登录', '登录操作成功', 'xdl', '192.168.86.68', '2017-12-18 16:53:20');
INSERT INTO `xdl_sysloginfo` VALUES ('554', '登录模块', '登录', '登录操作失败', '非法者', '192.168.86.68', '2017-12-18 17:13:11');
INSERT INTO `xdl_sysloginfo` VALUES ('555', '登录模块', '登录', '登录操作成功', 'xdl', '192.168.86.68', '2017-12-18 17:13:14');

-- ----------------------------
-- Table structure for `xdl_userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `xdl_userinfo`;
CREATE TABLE `xdl_userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL COMMENT '用户名',
  `password` varchar(32) DEFAULT NULL COMMENT '密码',
  `usex` bit(1) DEFAULT NULL COMMENT '性别',
  `unitauth` varchar(12) DEFAULT NULL COMMENT '权限',
  `isactive` bit(1) DEFAULT NULL COMMENT '是否激活',
  `addtime` datetime DEFAULT NULL COMMENT '添加时间',
  `modtime` datetime DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(30) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xdl_userinfo
-- ----------------------------
INSERT INTO `xdl_userinfo` VALUES ('4', '954619373', '666', '', '1', '', '2017-11-24 20:41:00', '2017-11-27 16:24:48', '帅气的小伙');
INSERT INTO `xdl_userinfo` VALUES ('7', '傻傻王', '123', '', '3', '', '2017-11-27 14:35:35', null, '傻傻的');
INSERT INTO `xdl_userinfo` VALUES ('8', '某', '1', '', '2', '', '2017-11-27 15:56:08', null, null);
INSERT INTO `xdl_userinfo` VALUES ('14', 'xdl', '123', '', '1', '', '2017-12-11 20:52:24', null, '帅气的小伙');

-- ----------------------------
-- Table structure for `xdl_xsend`
-- ----------------------------
DROP TABLE IF EXISTS `xdl_xsend`;
CREATE TABLE `xdl_xsend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sendno` varchar(20) DEFAULT NULL,
  `deliveryno` varchar(20) DEFAULT NULL COMMENT '配送编号',
  `nameno` varchar(20) DEFAULT NULL COMMENT '消费编号',
  `isactive` bit(1) DEFAULT NULL COMMENT '是否配送',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xdl_xsend
-- ----------------------------
INSERT INTO `xdl_xsend` VALUES ('3', 'XXXX3186', 'PS-7201', 'DD-4897', '');

-- ----------------------------
-- View structure for `view_category`
-- ----------------------------
DROP VIEW IF EXISTS `view_category`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_category` AS select `xdl_carte`.`cartename` AS `cartename`,`xdl_shopinfo`.`shopname` AS `shopname`,`xdl_subclass`.`id` AS `id`,`xdl_subclass`.`carteno` AS `carteno`,`xdl_subclass`.`menuno` AS `menuno`,`xdl_subclass`.`menuname` AS `menuname`,`xdl_subclass`.`shopno` AS `shopno`,`xdl_subclass`.`remark` AS `remark` from ((`xdl_carte` join `xdl_subclass` on((`xdl_subclass`.`carteno` = `xdl_carte`.`carteno`))) join `xdl_shopinfo` on((`xdl_subclass`.`shopno` = `xdl_shopinfo`.`shopno`))) ;

-- ----------------------------
-- View structure for `view_menu`
-- ----------------------------
DROP VIEW IF EXISTS `view_menu`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_menu` AS select `xdl_shopinfo`.`shopname` AS `shopname`,`xdl_subclass`.`menuname` AS `menuname`,`xdl_menuinfo`.`id` AS `id`,`xdl_menuinfo`.`carteno` AS `carteno`,`xdl_menuinfo`.`menuno` AS `menuno`,`xdl_menuinfo`.`imagepath` AS `imagepath`,`xdl_menuinfo`.`cartermb` AS `cartermb`,`xdl_menuinfo`.`cartespecial` AS `cartespecial`,`xdl_menuinfo`.`mcontent` AS `mcontent`,`xdl_menuinfo`.`shopno` AS `shopno`,`xdl_menuinfo`.`addtime` AS `addtime`,`xdl_menuinfo`.`modtime` AS `modtime`,`xdl_menuinfo`.`remark` AS `remark` from ((`xdl_shopinfo` join `xdl_menuinfo` on((`xdl_shopinfo`.`shopno` = `xdl_menuinfo`.`shopno`))) join `xdl_subclass` on((`xdl_subclass`.`menuno` = `xdl_menuinfo`.`menuno`))) ;

-- ----------------------------
-- View structure for `view_order`
-- ----------------------------
DROP VIEW IF EXISTS `view_order`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_order` AS select `xdl_subclass`.`menuname` AS `menuname`,`loginuser`.`name` AS `name`,`loginuser`.`telnum` AS `telnum`,`loginuser`.`address` AS `address`,`xdl_orderinfo`.`id` AS `id`,`xdl_orderinfo`.`orderno` AS `orderno`,`xdl_orderinfo`.`nameno` AS `nameno`,`xdl_orderinfo`.`menuno` AS `menuno`,`xdl_orderinfo`.`status` AS `status`,`xdl_orderinfo`.`feature` AS `feature`,`xdl_orderinfo`.`price` AS `price`,`xdl_orderinfo`.`addtime` AS `addtime` from ((`xdl_subclass` join `xdl_orderinfo` on((`xdl_orderinfo`.`menuno` = `xdl_subclass`.`menuno`))) join `loginuser` on((`loginuser`.`nameno` = `xdl_orderinfo`.`nameno`))) ;

-- ----------------------------
-- View structure for `view_send`
-- ----------------------------
DROP VIEW IF EXISTS `view_send`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_send` AS select `xdl_delivery`.`deliveryname` AS `deliveryname`,`xdl_xsend`.`id` AS `id`,`xdl_xsend`.`sendno` AS `sendno`,`xdl_xsend`.`deliveryno` AS `deliveryno`,`xdl_xsend`.`nameno` AS `nameno`,`xdl_xsend`.`isactive` AS `isactive`,`loginuser`.`name` AS `name`,`loginuser`.`telnum` AS `telnum`,`loginuser`.`address` AS `address`,`xdl_delivery`.`dtele` AS `dtele` from ((`xdl_xsend` join `loginuser` on((`xdl_xsend`.`nameno` = `loginuser`.`nameno`))) join `xdl_delivery` on((`xdl_xsend`.`deliveryno` = `xdl_delivery`.`deliveryno`))) ;
