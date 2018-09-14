/*
Navicat MySQL Data Transfer

Source Server         : 测试1
Source Server Version : 50723
Source Host           : localhost:3306
Source Database       : fresh

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2018-09-14 15:16:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('11', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can add user', '7', 'add_user');
INSERT INTO `auth_permission` VALUES ('20', 'Can change user', '7', 'change_user');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete user', '7', 'delete_user');
INSERT INTO `auth_permission` VALUES ('22', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('23', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('24', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('25', 'Can view user', '4', 'view_user');
INSERT INTO `auth_permission` VALUES ('26', 'Can view content type', '5', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('27', 'Can view session', '6', 'view_session');
INSERT INTO `auth_permission` VALUES ('28', 'Can view user', '7', 'view_user');
INSERT INTO `auth_permission` VALUES ('29', 'Can add goods info', '8', 'add_goodsinfo');
INSERT INTO `auth_permission` VALUES ('30', 'Can change goods info', '8', 'change_goodsinfo');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete goods info', '8', 'delete_goodsinfo');
INSERT INTO `auth_permission` VALUES ('32', 'Can view goods info', '8', 'view_goodsinfo');
INSERT INTO `auth_permission` VALUES ('33', 'Can add type info', '9', 'add_typeinfo');
INSERT INTO `auth_permission` VALUES ('34', 'Can change type info', '9', 'change_typeinfo');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete type info', '9', 'delete_typeinfo');
INSERT INTO `auth_permission` VALUES ('36', 'Can view type info', '9', 'view_typeinfo');
INSERT INTO `auth_permission` VALUES ('37', 'Can add cart info', '10', 'add_cartinfo');
INSERT INTO `auth_permission` VALUES ('38', 'Can change cart info', '10', 'change_cartinfo');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete cart info', '10', 'delete_cartinfo');
INSERT INTO `auth_permission` VALUES ('40', 'Can view cart info', '10', 'view_cartinfo');
INSERT INTO `auth_permission` VALUES ('41', 'Can add order detail info', '11', 'add_orderdetailinfo');
INSERT INTO `auth_permission` VALUES ('42', 'Can change order detail info', '11', 'change_orderdetailinfo');
INSERT INTO `auth_permission` VALUES ('43', 'Can delete order detail info', '11', 'delete_orderdetailinfo');
INSERT INTO `auth_permission` VALUES ('44', 'Can view order detail info', '11', 'view_orderdetailinfo');
INSERT INTO `auth_permission` VALUES ('45', 'Can add order info', '12', 'add_orderinfo');
INSERT INTO `auth_permission` VALUES ('46', 'Can change order info', '12', 'change_orderinfo');
INSERT INTO `auth_permission` VALUES ('47', 'Can delete order info', '12', 'delete_orderinfo');
INSERT INTO `auth_permission` VALUES ('48', 'Can view order info', '12', 'view_orderinfo');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$100000$oTpTC8jGI874$xE06MkRKA9AEWIJK4oW/tly3QnQHOZX2WIqxlBLLn+o=', '2018-08-04 14:07:35', '1', 'admin', '', '', 'tonyplayboy@126.com', '1', '1', '2018-08-04 14:07:08');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for cart_cartinfo
-- ----------------------------
DROP TABLE IF EXISTS `cart_cartinfo`;
CREATE TABLE `cart_cartinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `count` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `df_cart_cartinfo_goods_id_4357294f_fk_goods_goodsinfo_id` (`goods_id`),
  KEY `df_cart_cartinfo_user_id_db76e708_fk_fresh_user_user_id` (`user_id`),
  CONSTRAINT `df_cart_cartinfo_goods_id_4357294f_fk_goods_goodsinfo_id` FOREIGN KEY (`goods_id`) REFERENCES `indexs_goodsinfo` (`id`),
  CONSTRAINT `df_cart_cartinfo_user_id_db76e708_fk_fresh_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart_cartinfo
-- ----------------------------
INSERT INTO `cart_cartinfo` VALUES ('1', '1', '1', '1');
INSERT INTO `cart_cartinfo` VALUES ('2', '4', '2', '1');
INSERT INTO `cart_cartinfo` VALUES ('4', '1', '17', '16');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2018-08-04 14:13:21', '9', '水果', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('2', '2018-08-04 14:13:30', '9', '水果', '2', '[]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('3', '2018-08-04 14:13:35', '10', '海鲜', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('4', '2018-08-04 14:13:46', '11', '酒类', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('5', '2018-08-04 14:24:00', '1', '香蕉', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('6', '2018-08-04 14:24:55', '2', '苹果', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('7', '2018-08-05 06:34:55', '12', '鱼', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('8', '2018-08-05 06:35:05', '13', '肉', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('9', '2018-08-05 06:35:15', '14', '蛋', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('10', '2018-08-05 06:35:19', '15', '蔬菜', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('11', '2018-08-05 06:35:29', '16', '冷冻食品', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('12', '2018-08-05 06:37:15', '3', '黄鱼', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('13', '2018-08-05 06:37:46', '4', '三文鱼', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('14', '2018-08-05 06:38:45', '5', '牛肉', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('15', '2018-08-05 06:39:10', '6', '羊肉', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('16', '2018-08-05 06:40:46', '7', '鸡蛋', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('17', '2018-08-05 06:41:12', '8', '鹅蛋', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('18', '2018-08-05 06:41:45', '9', '西红柿', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('19', '2018-08-05 06:42:20', '10', '青菜', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('20', '2018-08-05 06:42:54', '11', '冻鸡肉', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('21', '2018-08-05 06:43:25', '12', '冻牛肉', '1', '[{\"added\": {}}]', '8', '1');

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('10', 'df_cart', 'cartinfo');
INSERT INTO `django_content_type` VALUES ('11', 'df_order', 'orderdetailinfo');
INSERT INTO `django_content_type` VALUES ('12', 'df_order', 'orderinfo');
INSERT INTO `django_content_type` VALUES ('7', 'fresh_user', 'user');
INSERT INTO `django_content_type` VALUES ('8', 'goods', 'goodsinfo');
INSERT INTO `django_content_type` VALUES ('9', 'goods', 'typeinfo');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2018-08-03 01:38:46');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2018-08-03 01:38:49');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2018-08-03 01:38:50');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2018-08-03 01:38:50');
INSERT INTO `django_migrations` VALUES ('5', 'contenttypes', '0002_remove_content_type_name', '2018-08-03 01:38:51');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0002_alter_permission_name_max_length', '2018-08-03 01:38:51');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0003_alter_user_email_max_length', '2018-08-03 01:38:51');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0004_alter_user_username_opts', '2018-08-03 01:38:51');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0005_alter_user_last_login_null', '2018-08-03 01:38:51');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0006_require_contenttypes_0002', '2018-08-03 01:38:52');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0007_alter_validators_add_error_messages', '2018-08-03 01:38:52');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0008_alter_user_username_max_length', '2018-08-03 01:38:52');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0009_alter_user_last_name_max_length', '2018-08-03 01:38:52');
INSERT INTO `django_migrations` VALUES ('14', 'fresh_user', '0001_initial', '2018-08-03 01:38:53');
INSERT INTO `django_migrations` VALUES ('15', 'sessions', '0001_initial', '2018-08-03 01:38:53');
INSERT INTO `django_migrations` VALUES ('16', 'admin', '0003_logentry_add_action_flag_choices', '2018-08-04 13:55:57');
INSERT INTO `django_migrations` VALUES ('17', 'fresh_user', '0002_auto_20180804_2154', '2018-08-04 13:55:57');
INSERT INTO `django_migrations` VALUES ('18', 'goods', '0001_initial', '2018-08-04 13:55:58');
INSERT INTO `django_migrations` VALUES ('19', 'df_cart', '0001_initial', '2018-08-08 04:03:05');
INSERT INTO `django_migrations` VALUES ('21', 'df_order', '0001_initial', '2018-08-09 01:50:19');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('0b25d1l9va9tbosqpm4mskfhfw9bfkmx', 'Yjk5YzUyNDM0ZmNjNDdiNGNjZWU0NWU5MTcwNzAzODE2NDA5YzQ1MjqABJVeAQAAAAAAAH2UKIwPX3Nlc3Npb25fZXhwaXJ5lEqA9AMAjAR1c2VylIwVZGphbmdvLmRiLm1vZGVscy5iYXNllIwObW9kZWxfdW5waWNrbGWUk5SMBHVzZXKUjARVc2VylIaUhZRSlH2UKIwGX3N0YXRllGgDjApNb2RlbFN0YXRllJOUKYGUfZQojAZhZGRpbmeUiYwCZGKUjAdkZWZhdWx0lHVijAJpZJRLEIwIdXNlcm5hbWWUjAV4eHgxMZSMCHBhc3N3b3JklIwoN2MyMjJmYjI5MjdkODI4YWYyMmY1OTIxMzRlODkzMjQ4MDYzN2MwZJSMBWVtYWlslIwTdG9ueXBsYXlib3lAMTI2LmNvbZSMBXVzaG91lIwAlIwHYWRkcmVzc5RoHIwEcG9zdJRoHIwFcGhvbmWUaByMD19kamFuZ29fdmVyc2lvbpSMBTIuMC43lHVijAVjb3VudJRLAXUu', '2018-09-17 03:06:13');
INSERT INTO `django_session` VALUES ('29xykccdq396ozw82i5yv883anfjfywr', 'M2MwNmM2YzQwOTk1OGNlZjJmM2ZkNjcyODhlN2NlMmMxOTY2YzEwNDqABJV/AQAAAAAAAH2UKIwPX3Nlc3Npb25fZXhwaXJ5lEqA9AMAjAR1c2VylIwVZGphbmdvLmRiLm1vZGVscy5iYXNllIwObW9kZWxfdW5waWNrbGWUk5SMCmZyZXNoX3VzZXKUjARVc2VylIaUhZRSlH2UKIwGX3N0YXRllGgDjApNb2RlbFN0YXRllJOUKYGUfZQojAZhZGRpbmeUiYwCZGKUjAdkZWZhdWx0lHVijAJpZJRLAYwIdXNlcm5hbWWUjAZhc2QxMjOUjAhwYXNzd29yZJSMKDdjMjIyZmIyOTI3ZDgyOGFmMjJmNTkyMTM0ZTg5MzI0ODA2MzdjMGSUjAVlbWFpbJSME3RvbnlwbGF5Ym95QDEyNi5jb22UjAV1c2hvdZSMBGHlkJuUjAdhZGRyZXNzlIwM5bm/5Lic5rex5ZyzlIwEcG9zdJSMBjUyNjA0MJSMBXBob25llIwLMTM0NTY3ODg5OTCUjA9fZGphbmdvX3ZlcnNpb26UjAUyLjAuN5R1YnUu', '2018-08-12 03:16:38');
INSERT INTO `django_session` VALUES ('5t8ee3398ah5hia7zs8oennzi95gh4hu', 'M2MwNmM2YzQwOTk1OGNlZjJmM2ZkNjcyODhlN2NlMmMxOTY2YzEwNDqABJV/AQAAAAAAAH2UKIwPX3Nlc3Npb25fZXhwaXJ5lEqA9AMAjAR1c2VylIwVZGphbmdvLmRiLm1vZGVscy5iYXNllIwObW9kZWxfdW5waWNrbGWUk5SMCmZyZXNoX3VzZXKUjARVc2VylIaUhZRSlH2UKIwGX3N0YXRllGgDjApNb2RlbFN0YXRllJOUKYGUfZQojAZhZGRpbmeUiYwCZGKUjAdkZWZhdWx0lHVijAJpZJRLAYwIdXNlcm5hbWWUjAZhc2QxMjOUjAhwYXNzd29yZJSMKDdjMjIyZmIyOTI3ZDgyOGFmMjJmNTkyMTM0ZTg5MzI0ODA2MzdjMGSUjAVlbWFpbJSME3RvbnlwbGF5Ym95QDEyNi5jb22UjAV1c2hvdZSMBGHlkJuUjAdhZGRyZXNzlIwM5bm/5Lic5rex5ZyzlIwEcG9zdJSMBjUyNjA0MJSMBXBob25llIwLMTM0NTY3ODg5OTCUjA9fZGphbmdvX3ZlcnNpb26UjAUyLjAuN5R1YnUu', '2018-08-12 03:08:11');
INSERT INTO `django_session` VALUES ('69nuuzy6tr1jmki1dodibjzzys8of2qd', 'ZTEwNDI1ZDRhZjg1MGE2MGUxNjk4MzAwNTIzNTg4Y2ViYmMxNjlkYjqABJVbAQAAAAAAAH2UKIwPX3Nlc3Npb25fZXhwaXJ5lEqA9AMAjAR1c2VylIwVZGphbmdvLmRiLm1vZGVscy5iYXNllIwObW9kZWxfdW5waWNrbGWUk5SMCmZyZXNoX3VzZXKUjARVc2VylIaUhZRSlH2UKIwGX3N0YXRllGgDjApNb2RlbFN0YXRllJOUKYGUfZQojAZhZGRpbmeUiYwCZGKUjAdkZWZhdWx0lHVijAJpZJRLAYwIdXNlcm5hbWWUjAZhc2QxMjOUjAhwYXNzd29yZJSMKDdjMjIyZmIyOTI3ZDgyOGFmMjJmNTkyMTM0ZTg5MzI0ODA2MzdjMGSUjAVlbWFpbJSME3RvbnlwbGF5Ym95QDEyNi5jb22UjAV1c2hvdZSMAJSMB2FkZHJlc3OUaByMBHBvc3SUaByMBXBob25llGgcjA9fZGphbmdvX3ZlcnNpb26UjAUyLjAuN5R1YnUu', '2018-08-07 07:26:26');
INSERT INTO `django_session` VALUES ('9v37j5ywg0ih7kui0w886phm4bhlux3n', 'M2MwNmM2YzQwOTk1OGNlZjJmM2ZkNjcyODhlN2NlMmMxOTY2YzEwNDqABJV/AQAAAAAAAH2UKIwPX3Nlc3Npb25fZXhwaXJ5lEqA9AMAjAR1c2VylIwVZGphbmdvLmRiLm1vZGVscy5iYXNllIwObW9kZWxfdW5waWNrbGWUk5SMCmZyZXNoX3VzZXKUjARVc2VylIaUhZRSlH2UKIwGX3N0YXRllGgDjApNb2RlbFN0YXRllJOUKYGUfZQojAZhZGRpbmeUiYwCZGKUjAdkZWZhdWx0lHVijAJpZJRLAYwIdXNlcm5hbWWUjAZhc2QxMjOUjAhwYXNzd29yZJSMKDdjMjIyZmIyOTI3ZDgyOGFmMjJmNTkyMTM0ZTg5MzI0ODA2MzdjMGSUjAVlbWFpbJSME3RvbnlwbGF5Ym95QDEyNi5jb22UjAV1c2hvdZSMBGHlkJuUjAdhZGRyZXNzlIwM5bm/5Lic5rex5ZyzlIwEcG9zdJSMBjUyNjA0MJSMBXBob25llIwLMTM0NTY3ODg5OTCUjA9fZGphbmdvX3ZlcnNpb26UjAUyLjAuN5R1YnUu', '2018-08-12 02:01:20');
INSERT INTO `django_session` VALUES ('dlvwvyj279l3vasy4xh9i9a52u4y9pw2', 'M2MwNmM2YzQwOTk1OGNlZjJmM2ZkNjcyODhlN2NlMmMxOTY2YzEwNDqABJV/AQAAAAAAAH2UKIwPX3Nlc3Npb25fZXhwaXJ5lEqA9AMAjAR1c2VylIwVZGphbmdvLmRiLm1vZGVscy5iYXNllIwObW9kZWxfdW5waWNrbGWUk5SMCmZyZXNoX3VzZXKUjARVc2VylIaUhZRSlH2UKIwGX3N0YXRllGgDjApNb2RlbFN0YXRllJOUKYGUfZQojAZhZGRpbmeUiYwCZGKUjAdkZWZhdWx0lHVijAJpZJRLAYwIdXNlcm5hbWWUjAZhc2QxMjOUjAhwYXNzd29yZJSMKDdjMjIyZmIyOTI3ZDgyOGFmMjJmNTkyMTM0ZTg5MzI0ODA2MzdjMGSUjAVlbWFpbJSME3RvbnlwbGF5Ym95QDEyNi5jb22UjAV1c2hvdZSMBGHlkJuUjAdhZGRyZXNzlIwM5bm/5Lic5rex5ZyzlIwEcG9zdJSMBjUyNjA0MJSMBXBob25llIwLMTM0NTY3ODg5OTCUjA9fZGphbmdvX3ZlcnNpb26UjAUyLjAuN5R1YnUu', '2018-08-12 03:06:26');
INSERT INTO `django_session` VALUES ('ib6utv4sqa97wb6t7f0buvxkg3qq1lpt', 'Y2ZjMDQ3YWNhYzUyZWQ2NjkxMDE0NDZlOWM1MjU3NWFjMDQ5MWQzOTqABJVDAQAAAAAAAH2UjAR1c2VylIwVZGphbmdvLmRiLm1vZGVscy5iYXNllIwObW9kZWxfdW5waWNrbGWUk5SMCmZyZXNoX3VzZXKUjARVc2VylIaUhZRSlH2UKIwGX3N0YXRllGgCjApNb2RlbFN0YXRllJOUKYGUfZQojAZhZGRpbmeUiYwCZGKUjAdkZWZhdWx0lHVijAJpZJRLAYwIdXNlcm5hbWWUjAZhc2QxMjOUjAhwYXNzd29yZJSMKDdjMjIyZmIyOTI3ZDgyOGFmMjJmNTkyMTM0ZTg5MzI0ODA2MzdjMGSUjAVlbWFpbJSME3RvbnlwbGF5Ym95QDEyNi5jb22UjAV1c2hvdZSMAJSMB2FkZHJlc3OUaBuMBHBvc3SUaBuMBXBob25llGgbjA9fZGphbmdvX3ZlcnNpb26UjAUyLjAuN5R1YnMu', '2018-08-18 06:19:41');
INSERT INTO `django_session` VALUES ('pvx2ythzvymfny5l3keqfwxx4c7spqjg', 'M2MwNmM2YzQwOTk1OGNlZjJmM2ZkNjcyODhlN2NlMmMxOTY2YzEwNDqABJV/AQAAAAAAAH2UKIwPX3Nlc3Npb25fZXhwaXJ5lEqA9AMAjAR1c2VylIwVZGphbmdvLmRiLm1vZGVscy5iYXNllIwObW9kZWxfdW5waWNrbGWUk5SMCmZyZXNoX3VzZXKUjARVc2VylIaUhZRSlH2UKIwGX3N0YXRllGgDjApNb2RlbFN0YXRllJOUKYGUfZQojAZhZGRpbmeUiYwCZGKUjAdkZWZhdWx0lHVijAJpZJRLAYwIdXNlcm5hbWWUjAZhc2QxMjOUjAhwYXNzd29yZJSMKDdjMjIyZmIyOTI3ZDgyOGFmMjJmNTkyMTM0ZTg5MzI0ODA2MzdjMGSUjAVlbWFpbJSME3RvbnlwbGF5Ym95QDEyNi5jb22UjAV1c2hvdZSMBGHlkJuUjAdhZGRyZXNzlIwM5bm/5Lic5rex5ZyzlIwEcG9zdJSMBjUyNjA0MJSMBXBob25llIwLMTM0NTY3ODg5OTCUjA9fZGphbmdvX3ZlcnNpb26UjAUyLjAuN5R1YnUu', '2018-08-12 03:04:59');
INSERT INTO `django_session` VALUES ('r2q203lf8u4uyl43thjue6h3jn1nic2r', 'MWUyODYzODI4YjlhZDc4MzVkYzdjMWFjNTg4NGU4MGQwOGFmYWYyNDqABJWJAQAAAAAAAH2UKIwPX3Nlc3Npb25fZXhwaXJ5lEqA9AMAjAR1c2VylIwVZGphbmdvLmRiLm1vZGVscy5iYXNllIwObW9kZWxfdW5waWNrbGWUk5SMCmZyZXNoX3VzZXKUjARVc2VylIaUhZRSlH2UKIwGX3N0YXRllGgDjApNb2RlbFN0YXRllJOUKYGUfZQojAZhZGRpbmeUiYwCZGKUjAdkZWZhdWx0lHVijAJpZJRLAYwIdXNlcm5hbWWUjAZhc2QxMjOUjAhwYXNzd29yZJSMKDdjMjIyZmIyOTI3ZDgyOGFmMjJmNTkyMTM0ZTg5MzI0ODA2MzdjMGSUjAVlbWFpbJSME3RvbnlwbGF5Ym95QDEyNi5jb22UjAV1c2hvdZSMBGHlkJuUjAdhZGRyZXNzlIwM5bm/5Lic5rex5ZyzlIwEcG9zdJSMBjUyNjA0MJSMBXBob25llIwLMTM0NTY3ODg5OTCUjA9fZGphbmdvX3ZlcnNpb26UjAUyLjAuN5R1YowFY291bnSUSwJ1Lg==', '2018-08-11 04:33:08');

-- ----------------------------
-- Table structure for indexs_goodsinfo
-- ----------------------------
DROP TABLE IF EXISTS `indexs_goodsinfo`;
CREATE TABLE `indexs_goodsinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gtitle` varchar(20) NOT NULL,
  `gpic` varchar(100) NOT NULL,
  `gprice` int(5) NOT NULL,
  `isDelete` tinyint(1) NOT NULL,
  `gunit` varchar(20) NOT NULL,
  `gclick` int(11) NOT NULL,
  `gjianjie` varchar(200) NOT NULL,
  `gkucun` int(11) NOT NULL,
  `gcontent` longtext NOT NULL,
  `gtype_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_goodsinfo_gtype_id_b02b0e32_fk_goods_typeinfo_id` (`gtype_id`),
  CONSTRAINT `goods_goodsinfo_gtype_id_b02b0e32_fk_goods_typeinfo_id` FOREIGN KEY (`gtype_id`) REFERENCES `indexs_typeinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of indexs_goodsinfo
-- ----------------------------
INSERT INTO `indexs_goodsinfo` VALUES ('1', '天谕', 'indexs/goods001.jpg', '323', '0', '最近更新', '41', '很好', '100', '<p><em><strong>香蕉香蕉</strong></em></p>', '9');
INSERT INTO `indexs_goodsinfo` VALUES ('2', '西行记', 'indexs/goods002.jpg', '34234', '0', '最近更新', '34', '很好', '300', '<p><em><strong>苹果苹果</strong></em></p>', '9');
INSERT INTO `indexs_goodsinfo` VALUES ('3', '快把我哥带走', 'indexs/goods003.jpg', '35345', '0', '最近更新', '36', '很好', '14', '<p><span style=\"font-size: 10px;\">黄鱼</span></p>', '12');
INSERT INTO `indexs_goodsinfo` VALUES ('4', '盛世妆娘', 'indexs/goods004.jpg', '35', '0', '最近更新', '4', '很好', '3', '<p><span style=\"font-size: 10px;\">三文鱼</span></p>', '12');
INSERT INTO `indexs_goodsinfo` VALUES ('5', '幻界王', 'indexs/goods005.jpg', '68', '0', '最近更新', '5', '很好', '5', '<p><span style=\"font-size: 10px;\">牛肉</span></p>', '13');
INSERT INTO `indexs_goodsinfo` VALUES ('6', '白夜玲珑', 'indexs/goods006.jpg', '123', '0', '最近更新', '5', '很好', '3', '<p><span style=\"font-size: 10px;\">羊肉</span></p>', '13');
INSERT INTO `indexs_goodsinfo` VALUES ('7', '天才玩偶', 'indexs/goods007.jpg', '789', '0', '最近更新', '5', '很好', '4', '<p><span style=\"font-size: 10px;\">鸡蛋</span></p>', '14');
INSERT INTO `indexs_goodsinfo` VALUES ('8', '魔道祖师', 'indexs/goods008.jpg', '123', '0', '最近更新', '8', '很好', '4', '<p><span style=\"font-size: 10px;\">鹅蛋</span></p>', '14');
INSERT INTO `indexs_goodsinfo` VALUES ('9', '记忆U盘', 'indexs/goods009.jpg', '13', '0', '最近更新', '3', '很好', '3', '<p><span style=\"font-size: 10px;\">西红柿</span></p>', '15');
INSERT INTO `indexs_goodsinfo` VALUES ('10', '请吃红小豆吧', 'indexs/goods010.jpg', '679', '0', '最近更新', '4', '很好', '2', '<p><span style=\"font-size: 10px;\">青菜</span></p>', '15');
INSERT INTO `indexs_goodsinfo` VALUES ('11', '画江湖之侠岚', 'indexs/goods011.jpg', '345', '0', '最近更新', '4', '很好', '2', '<p><span style=\"font-size: 10px;\">冻鸡肉</span></p>', '16');
INSERT INTO `indexs_goodsinfo` VALUES ('12', '刺客伍六七', 'indexs/goods013.jpg', '365677', '0', '最近更新', '17', '很好', '4', '<p><span style=\"font-size: 10px;\">冻牛肉</span></p>', '16');
INSERT INTO `indexs_goodsinfo` VALUES ('13', '天狼', 'indexs/goods022.jpg', '32424', '0', '最近更新', '235', '很好', '235', '很好', '9');
INSERT INTO `indexs_goodsinfo` VALUES ('14', '罗布奥特曼', 'indexs/goods023.jpg', '32424', '0', '最近更新', '236', '很好', '235', '很好', '12');
INSERT INTO `indexs_goodsinfo` VALUES ('15', '观海策', 'indexs/goods024.jpg', '32424', '0', '最近更新', '235', '很好', '235', '很好', '13');
INSERT INTO `indexs_goodsinfo` VALUES ('16', '游戏王VRAINS', 'indexs/goods025.jpg', '32424', '0', '最近更新', '235', '很好', '235', '很好', '14');
INSERT INTO `indexs_goodsinfo` VALUES ('17', '重神机潘多拉', 'indexs/goods026.jpg', '32424', '0', '最近更新', '261', '很好', '235', '很好', '9');
INSERT INTO `indexs_goodsinfo` VALUES ('18', 'BanG Dream! 少女乐团派对！', 'indexs/goods027.jpg', '32424', '0', '最近更新', '235', '很好', '235', '很好', '12');
INSERT INTO `indexs_goodsinfo` VALUES ('19', 'Free男子游泳部第三季', 'indexs/goods028.jpg', '32424', '0', '最近更新', '235', '很好', '235', '很好', '13');
INSERT INTO `indexs_goodsinfo` VALUES ('20', 'Phantom in the Twili', 'indexs/goods029.jpg', '32424', '0', '最近更新', '235', '很好', '235', '很好', '14');
INSERT INTO `indexs_goodsinfo` VALUES ('21', '战斗陀螺 爆裂第三季', 'indexs/goods030.jpg', '32424', '0', '最近更新', '235', '很好', '235', '很好', '15');
INSERT INTO `indexs_goodsinfo` VALUES ('22', 'mameneko', 'indexs/goods031.jpg', '32424', '0', '最近更新', '235', '很好', '235', '很好', '15');
INSERT INTO `indexs_goodsinfo` VALUES ('23', '恋爱白熊', 'indexs/goods032.jpg', '32424', '0', '最近更新', '235', '很好', '235', '很好', '16');
INSERT INTO `indexs_goodsinfo` VALUES ('24', '重来吧,魔王大人', 'indexs/goods033.jpg', '32424', '0', '最近更新', '235', '很好', '235', '很好', '16');

-- ----------------------------
-- Table structure for indexs_typeinfo
-- ----------------------------
DROP TABLE IF EXISTS `indexs_typeinfo`;
CREATE TABLE `indexs_typeinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ttitle` varchar(20) NOT NULL,
  `isDelete` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_typeinfo_ttitle_4aabc2b2` (`ttitle`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of indexs_typeinfo
-- ----------------------------
INSERT INTO `indexs_typeinfo` VALUES ('9', '国产动漫', '0');
INSERT INTO `indexs_typeinfo` VALUES ('10', '日本动漫', '0');
INSERT INTO `indexs_typeinfo` VALUES ('11', '美国动漫', '0');
INSERT INTO `indexs_typeinfo` VALUES ('12', '欧洲动漫', '0');
INSERT INTO `indexs_typeinfo` VALUES ('13', '韩国动漫', '0');
INSERT INTO `indexs_typeinfo` VALUES ('14', '其他动漫', '0');
INSERT INTO `indexs_typeinfo` VALUES ('15', '东南亚动漫', '0');
INSERT INTO `indexs_typeinfo` VALUES ('16', '电影', '0');

-- ----------------------------
-- Table structure for order_orderdetailinfo
-- ----------------------------
DROP TABLE IF EXISTS `order_orderdetailinfo`;
CREATE TABLE `order_orderdetailinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(5,2) NOT NULL,
  `count` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `order_id` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `df_order_orderdetailinfo_goods_id_d0acef4d_fk_goods_goodsinfo_id` (`goods_id`),
  KEY `df_order_orderdetail_order_id_b91dcf67_fk_df_order_` (`order_id`),
  CONSTRAINT `df_order_orderdetail_order_id_b91dcf67_fk_df_order_` FOREIGN KEY (`order_id`) REFERENCES `order_orderinfo` (`oid`),
  CONSTRAINT `df_order_orderdetailinfo_goods_id_d0acef4d_fk_goods_goodsinfo_id` FOREIGN KEY (`goods_id`) REFERENCES `indexs_goodsinfo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_orderdetailinfo
-- ----------------------------

-- ----------------------------
-- Table structure for order_orderinfo
-- ----------------------------
DROP TABLE IF EXISTS `order_orderinfo`;
CREATE TABLE `order_orderinfo` (
  `oid` varchar(20) NOT NULL,
  `odate` datetime(6) NOT NULL,
  `oIsPay` tinyint(1) NOT NULL,
  `ototal` decimal(6,2) NOT NULL,
  `oaddress` varchar(150) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`oid`),
  KEY `df_order_orderinfo_user_id_2d705949_fk_fresh_user_user_id` (`user_id`),
  CONSTRAINT `df_order_orderinfo_user_id_2d705949_fk_fresh_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_orderinfo
-- ----------------------------

-- ----------------------------
-- Table structure for user_user
-- ----------------------------
DROP TABLE IF EXISTS `user_user`;
CREATE TABLE `user_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(30) NOT NULL,
  `ushou` varchar(20) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `post` varchar(6) NOT NULL,
  `phone` varchar(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fresh_user_user_username_b70551af` (`username`),
  KEY `fresh_user_user_password_2cf427c0` (`password`),
  KEY `fresh_user_user_email_08ca2264` (`email`),
  KEY `fresh_user_user_ushou_46bd3f7f` (`ushou`),
  KEY `fresh_user_user_address_4f57f568` (`address`),
  KEY `fresh_user_user_post_f20a84f2` (`post`),
  KEY `fresh_user_user_phone_536c5af1` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_user
-- ----------------------------
INSERT INTO `user_user` VALUES ('1', 'asd123', '7c222fb2927d828af22f592134e8932480637c0d', 'tonyplayboy@126.com', 'a君', '广东深圳', '526040', '13456788990');
INSERT INTO `user_user` VALUES ('2', 'qwe123', '7c222fb2927d828af22f592134e8932480637c0d', 'tonyplayboy@126.com', '', '', '', '');
INSERT INTO `user_user` VALUES ('3', 'rty', '123', 'ggghg', 'kk', '', '788', '999');
INSERT INTO `user_user` VALUES ('4', 'xxx', 'xxx123', 'tonyplayboy@126.com', 'kk', '广东深圳', '999', '999');
INSERT INTO `user_user` VALUES ('5', 'xxx', 'xxx123', 'tonyplayboy@126.com', 'kk', '广东深圳', '999', '999');
INSERT INTO `user_user` VALUES ('6', 'xxx1', '123', 'tonyplayboy@126.com', 'kk', '广东深圳', '999', '999');
INSERT INTO `user_user` VALUES ('7', 'xxx2', '123', 'tonyplayboy@126.com', 'kk', '广东深圳', '999', '999');
INSERT INTO `user_user` VALUES ('8', 'xxx3', '123', 'tonyplayboy@126.com', 'kk', '广东深圳', '999', '999');
INSERT INTO `user_user` VALUES ('9', 'xxx4', '123', 'tonyplayboy@126.com', 'kk', '广东深圳', '999', '999');
INSERT INTO `user_user` VALUES ('10', 'xxx5', '123', 'tonyplayboy@126.com', 'kk', '广东深圳', '999', '999');
INSERT INTO `user_user` VALUES ('11', 'xxx6', '123', 'tonyplayboy@126.com', 'kk', '广东深圳', '999', '999');
INSERT INTO `user_user` VALUES ('12', 'xxx7', '123', 'tonyplayboy@126.com', 'kk', '广东深圳', '999', '999');
INSERT INTO `user_user` VALUES ('13', 'xxx8', '123', 'tonyplayboy@126.com', 'kk', '广东深圳', '999', '999');
INSERT INTO `user_user` VALUES ('14', 'xxx9', '123', 'tonyplayboy@126.com', 'kk', '广东深圳', '999', '999');
INSERT INTO `user_user` VALUES ('15', 'xxx10', '123', 'tonyplayboy@126.com', 'kk', '广东深圳', '999', '999');
INSERT INTO `user_user` VALUES ('16', 'xxx11', '7c222fb2927d828af22f592134e8932480637c0d', 'tonyplayboy@126.com', '', '', '', '');

-- ----------------------------
-- View structure for v1
-- ----------------------------
DROP VIEW IF EXISTS `v1`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v1` AS select `fresh_user_user`.`id` AS `id`,`fresh_user_user`.`username` AS `username`,`fresh_user_user`.`password` AS `password`,`fresh_user_user`.`email` AS `email`,`fresh_user_user`.`ushou` AS `ushou`,`fresh_user_user`.`address` AS `address`,`fresh_user_user`.`post` AS `post`,`fresh_user_user`.`phone` AS `phone` from `fresh_user_user` ;

-- ----------------------------
-- Procedure structure for p1
-- ----------------------------
DROP PROCEDURE IF EXISTS `p1`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p1`(in name varchar(20))
BEGIN
	INSERT into fresh_user_user 
		VALUES(null,'xxx','xxx123','tonyplayboy@126.com','kk','广东深圳','999','999');

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for w1
-- ----------------------------
DROP PROCEDURE IF EXISTS `w1`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `w1`(in count int)
BEGIN
	DECLARE i int DEFAULT 1;
	while i<= count DO
		INSERT into fresh_user_user 
			VALUES(null,CONCAT('xxx',i),'123','tonyplayboy@126.com','kk','广东深圳','999','999');
	set i=i+1;
	end WHILE;
	
end
;;
DELIMITER ;
