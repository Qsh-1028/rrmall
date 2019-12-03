/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : rrmall

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 03/12/2019 15:06:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ims_account
-- ----------------------------
DROP TABLE IF EXISTS `ims_account`;
CREATE TABLE `ims_account`  (
  `acid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `hash` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL,
  `isconnect` tinyint(4) NOT NULL,
  `isdeleted` tinyint(3) UNSIGNED NOT NULL,
  `endtime` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`acid`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_account
-- ----------------------------
INSERT INTO `ims_account` VALUES (1, 1, 'uRr8qvQV', 1, 0, 0, 0);

-- ----------------------------
-- Table structure for ims_account_aliapp
-- ----------------------------
DROP TABLE IF EXISTS `ims_account_aliapp`;
CREATE TABLE `ims_account_aliapp`  (
  `acid` int(10) NOT NULL,
  `uniacid` int(10) NOT NULL,
  `level` tinyint(4) UNSIGNED NOT NULL,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `key` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`acid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_account_phoneapp
-- ----------------------------
DROP TABLE IF EXISTS `ims_account_phoneapp`;
CREATE TABLE `ims_account_phoneapp`  (
  `acid` int(11) NOT NULL,
  `uniacid` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`acid`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_account_webapp
-- ----------------------------
DROP TABLE IF EXISTS `ims_account_webapp`;
CREATE TABLE `ims_account_webapp`  (
  `acid` int(11) NOT NULL,
  `uniacid` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`acid`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_account_wechats
-- ----------------------------
DROP TABLE IF EXISTS `ims_account_wechats`;
CREATE TABLE `ims_account_wechats`  (
  `acid` int(10) UNSIGNED NOT NULL,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `encodingaeskey` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `level` tinyint(4) UNSIGNED NOT NULL,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `account` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `original` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `signature` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `country` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `province` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `city` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lastupdate` int(10) UNSIGNED NOT NULL,
  `key` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `secret` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `styleid` int(10) UNSIGNED NOT NULL,
  `subscribeurl` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `auth_refresh_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`acid`) USING BTREE,
  INDEX `idx_key`(`key`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_account_wechats
-- ----------------------------
INSERT INTO `ims_account_wechats` VALUES (1, 1, 'omJNpZEhZeHj1ZxFECKkP48B5VFbk1HP', '', 1, 'we7team', '', '', '', '', '', '', '', '', 0, '', '', 1, '', '');

-- ----------------------------
-- Table structure for ims_account_wxapp
-- ----------------------------
DROP TABLE IF EXISTS `ims_account_wxapp`;
CREATE TABLE `ims_account_wxapp`  (
  `acid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `encodingaeskey` varchar(43) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `level` tinyint(4) NOT NULL,
  `account` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `original` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `key` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `secret` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `appdomain` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`acid`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_account_xzapp
-- ----------------------------
DROP TABLE IF EXISTS `ims_account_xzapp`;
CREATE TABLE `ims_account_xzapp`  (
  `acid` int(11) NOT NULL,
  `uniacid` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `original` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lastupdate` int(10) NOT NULL,
  `styleid` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `encodingaeskey` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `xzapp_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `level` tinyint(4) UNSIGNED NOT NULL,
  `key` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `secret` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`acid`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_article_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_article_category`;
CREATE TABLE `ims_article_category`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `displayorder` tinyint(3) UNSIGNED NOT NULL,
  `type` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `type`(`type`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_article_comment
-- ----------------------------
DROP TABLE IF EXISTS `ims_article_comment`;
CREATE TABLE `ims_article_comment`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `articleid` int(10) NOT NULL,
  `parentid` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_like` tinyint(1) NOT NULL,
  `is_reply` tinyint(1) NOT NULL,
  `like_num` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `articleid`(`articleid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_article_news
-- ----------------------------
DROP TABLE IF EXISTS `ims_article_news`;
CREATE TABLE `ims_article_news`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cateid` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `source` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `displayorder` tinyint(3) UNSIGNED NOT NULL,
  `is_display` tinyint(3) UNSIGNED NOT NULL,
  `is_show_home` tinyint(3) UNSIGNED NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  `click` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `title`(`title`) USING BTREE,
  INDEX `cateid`(`cateid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_article_notice
-- ----------------------------
DROP TABLE IF EXISTS `ims_article_notice`;
CREATE TABLE `ims_article_notice`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cateid` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `displayorder` tinyint(3) UNSIGNED NOT NULL,
  `is_display` tinyint(3) UNSIGNED NOT NULL,
  `is_show_home` tinyint(3) UNSIGNED NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  `click` int(10) UNSIGNED NOT NULL,
  `style` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `group` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `title`(`title`) USING BTREE,
  INDEX `cateid`(`cateid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_article_unread_notice
-- ----------------------------
DROP TABLE IF EXISTS `ims_article_unread_notice`;
CREATE TABLE `ims_article_unread_notice`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `notice_id` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL,
  `is_new` tinyint(3) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `notice_id`(`notice_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_attachment_group
-- ----------------------------
DROP TABLE IF EXISTS `ims_attachment_group`;
CREATE TABLE `ims_attachment_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uniacid` int(11) NULL DEFAULT NULL,
  `uid` int(11) NULL DEFAULT NULL,
  `type` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_basic_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_basic_reply`;
CREATE TABLE `ims_basic_reply`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `rid` int(10) UNSIGNED NOT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `rid`(`rid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_business
-- ----------------------------
DROP TABLE IF EXISTS `ims_business`;
CREATE TABLE `ims_business`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `weid` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `qq` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `province` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `city` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dist` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lng` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lat` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `industry1` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `industry2` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_lat_lng`(`lng`, `lat`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_core_attachment
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_attachment`;
CREATE TABLE `ims_core_attachment`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL,
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `attachment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  `module_upload_dir` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `group_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_core_cache
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_cache`;
CREATE TABLE `ims_core_cache`  (
  `key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_core_cache
-- ----------------------------
INSERT INTO `ims_core_cache` VALUES ('setting', 'a:6:{s:9:\"copyright\";a:1:{s:6:\"slides\";a:3:{i:0;s:58:\"https://img.alicdn.com/tps/TB1pfG4IFXXXXc6XXXXXXXXXXXX.jpg\";i:1;s:58:\"https://img.alicdn.com/tps/TB1sXGYIFXXXXc5XpXXXXXXXXXX.jpg\";i:2;s:58:\"https://img.alicdn.com/tps/TB1h9xxIFXXXXbKXXXXXXXXXXXX.jpg\";}}s:8:\"authmode\";i:1;s:5:\"close\";a:2:{s:6:\"status\";s:1:\"0\";s:6:\"reason\";s:0:\"\";}s:8:\"register\";a:4:{s:4:\"open\";i:1;s:6:\"verify\";i:0;s:4:\"code\";i:1;s:7:\"groupid\";i:1;}s:8:\"platform\";a:5:{s:5:\"token\";s:32:\"D9KE4tp1piKakT6a1O1i1Z4heDEYyYy2\";s:14:\"encodingaeskey\";s:43:\"YYO9K9E6YyLhZD2Yj1KOY9L11E16m6ip2LyYje1dTeL\";s:9:\"appsecret\";s:0:\"\";s:5:\"appid\";s:0:\"\";s:9:\"authstate\";i:1;}s:18:\"module_receive_ban\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:system_frame:0', 'a:12:{s:8:\"platform\";a:7:{s:5:\"title\";s:6:\"平台\";s:4:\"icon\";s:14:\"wi wi-platform\";s:3:\"url\";s:44:\"./index.php?c=account&a=display&do=platform&\";s:7:\"section\";a:0:{}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:2;}s:7:\"account\";a:7:{s:5:\"title\";s:9:\"公众号\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:41:\"./index.php?c=home&a=welcome&do=platform&\";s:7:\"section\";a:5:{s:13:\"platform_plus\";a:3:{s:5:\"title\";s:12:\"增强功能\";s:4:\"menu\";a:5:{s:14:\"platform_reply\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"自动回复\";s:3:\"url\";s:31:\"./index.php?c=platform&a=reply&\";s:15:\"permission_name\";s:14:\"platform_reply\";s:4:\"icon\";s:11:\"wi wi-reply\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:13:\"platform_menu\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:15:\"自定义菜单\";s:3:\"url\";s:38:\"./index.php?c=platform&a=menu&do=post&\";s:15:\"permission_name\";s:13:\"platform_menu\";s:4:\"icon\";s:16:\"wi wi-custommenu\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"platform_qr\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:22:\"二维码/转化链接\";s:3:\"url\";s:28:\"./index.php?c=platform&a=qr&\";s:15:\"permission_name\";s:11:\"platform_qr\";s:4:\"icon\";s:12:\"wi wi-qrcode\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:17:\"platform_material\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:16:\"素材/编辑器\";s:3:\"url\";s:34:\"./index.php?c=platform&a=material&\";s:15:\"permission_name\";s:17:\"platform_material\";s:4:\"icon\";s:12:\"wi wi-redact\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{i:0;a:3:{s:5:\"title\";s:13:\"添加/编辑\";s:3:\"url\";s:39:\"./index.php?c=platform&a=material-post&\";s:15:\"permission_name\";s:13:\"material_post\";}i:1;a:2:{s:5:\"title\";s:6:\"删除\";s:15:\"permission_name\";s:24:\"platform_material_delete\";}}}s:13:\"platform_site\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:16:\"微官网-文章\";s:3:\"url\";s:38:\"./index.php?c=site&a=multi&do=display&\";s:15:\"permission_name\";s:13:\"platform_site\";s:4:\"icon\";s:10:\"wi wi-home\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}}s:10:\"is_display\";i:0;}s:15:\"platform_module\";a:3:{s:5:\"title\";s:12:\"应用模块\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:2:\"mc\";a:3:{s:5:\"title\";s:6:\"粉丝\";s:4:\"menu\";a:2:{s:7:\"mc_fans\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"粉丝管理\";s:3:\"url\";s:24:\"./index.php?c=mc&a=fans&\";s:15:\"permission_name\";s:7:\"mc_fans\";s:4:\"icon\";s:16:\"wi wi-fansmanage\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:9:\"mc_member\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"会员管理\";s:3:\"url\";s:26:\"./index.php?c=mc&a=member&\";s:15:\"permission_name\";s:9:\"mc_member\";s:4:\"icon\";s:10:\"wi wi-fans\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:0;}s:7:\"profile\";a:3:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:4:{s:7:\"profile\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"参数配置\";s:3:\"url\";s:31:\"./index.php?c=profile&a=remote&\";s:15:\"permission_name\";s:15:\"profile_setting\";s:4:\"icon\";s:23:\"wi wi-parameter-setting\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:7:\"payment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"支付参数\";s:3:\"url\";s:32:\"./index.php?c=profile&a=payment&\";s:15:\"permission_name\";s:19:\"profile_pay_setting\";s:4:\"icon\";s:17:\"wi wi-pay-setting\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"app_module_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:44:\"./index.php?c=profile&a=module-link-uniacid&\";s:15:\"permission_name\";s:31:\"profile_app_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"bind_domain\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"域名绑定\";s:3:\"url\";s:36:\"./index.php?c=profile&a=bind-domain&\";s:15:\"permission_name\";s:19:\"profile_bind_domain\";s:4:\"icon\";s:17:\"wi wi-bind-domain\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:0;}s:10:\"statistics\";a:3:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:2:{s:14:\"statistics_app\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:31:\"./index.php?c=statistics&a=app&\";s:15:\"permission_name\";s:14:\"statistics_app\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"statistics_fans\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"用户统计\";s:3:\"url\";s:32:\"./index.php?c=statistics&a=fans&\";s:15:\"permission_name\";s:15:\"statistics_fans\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:0;}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:3;}s:5:\"wxapp\";a:7:{s:5:\"title\";s:15:\"微信小程序\";s:4:\"icon\";s:19:\"wi wi-small-routine\";s:3:\"url\";s:38:\"./index.php?c=wxapp&a=display&do=home&\";s:7:\"section\";a:5:{s:14:\"wxapp_entrance\";a:3:{s:5:\"title\";s:15:\"小程序入口\";s:4:\"menu\";a:1:{s:20:\"module_entrance_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"入口页面\";s:3:\"url\";s:36:\"./index.php?c=wxapp&a=entrance-link&\";s:15:\"permission_name\";s:19:\"wxapp_entrance_link\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:0;}s:15:\"platform_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:2:\"mc\";a:3:{s:5:\"title\";s:6:\"粉丝\";s:4:\"menu\";a:1:{s:12:\"wxapp_member\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:6:\"会员\";s:3:\"url\";s:26:\"./index.php?c=mc&a=member&\";s:15:\"permission_name\";s:12:\"wxapp_member\";s:4:\"icon\";s:10:\"wi wi-fans\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:0;}s:13:\"wxapp_profile\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:5:{s:17:\"wxapp_module_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:42:\"./index.php?c=wxapp&a=module-link-uniacid&\";s:15:\"permission_name\";s:25:\"wxapp_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:13:\"wxapp_payment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"支付参数\";s:3:\"url\";s:30:\"./index.php?c=wxapp&a=payment&\";s:15:\"permission_name\";s:13:\"wxapp_payment\";s:4:\"icon\";s:16:\"wi wi-appsetting\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:14:\"front_download\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"上传微信审核\";s:3:\"url\";s:37:\"./index.php?c=wxapp&a=front-download&\";s:15:\"permission_name\";s:20:\"wxapp_front_download\";s:4:\"icon\";s:13:\"wi wi-examine\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:17:\"parameter_setting\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"参数配置\";s:3:\"url\";s:31:\"./index.php?c=profile&a=remote&\";s:15:\"permission_name\";s:13:\"wxapp_setting\";s:4:\"icon\";s:23:\"wi wi-parameter-setting\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"wxapp_platform_material\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"素材管理\";s:3:\"url\";N;s:15:\"permission_name\";s:23:\"wxapp_platform_material\";s:4:\"icon\";N;s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:1:{i:0;a:2:{s:5:\"title\";s:6:\"删除\";s:15:\"permission_name\";s:30:\"wxapp_platform_material_delete\";}}}}}s:10:\"statistics\";a:3:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:1:{s:15:\"statistics_fans\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:33:\"./index.php?c=wxapp&a=statistics&\";s:15:\"permission_name\";s:15:\"statistics_fans\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:0;}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:4;}s:6:\"webapp\";a:7:{s:5:\"title\";s:2:\"PC\";s:4:\"icon\";s:8:\"wi wi-pc\";s:3:\"url\";s:39:\"./index.php?c=webapp&a=home&do=display&\";s:7:\"section\";a:4:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:12:\"应用模块\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:2:\"mc\";a:2:{s:5:\"title\";s:6:\"粉丝\";s:4:\"menu\";a:1:{s:9:\"mc_member\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"会员管理\";s:3:\"url\";s:26:\"./index.php?c=mc&a=member&\";s:15:\"permission_name\";s:9:\"mc_member\";s:4:\"icon\";s:10:\"wi wi-fans\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:6:\"webapp\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:3:{s:18:\"webapp_module_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:43:\"./index.php?c=webapp&a=module-link-uniacid&\";s:15:\"permission_name\";s:26:\"webapp_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:14:\"webapp_rewrite\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"伪静态\";s:3:\"url\";s:31:\"./index.php?c=webapp&a=rewrite&\";s:15:\"permission_name\";s:14:\"webapp_rewrite\";s:4:\"icon\";s:13:\"wi wi-rewrite\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:18:\"webapp_bind_domain\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"域名访问设置\";s:3:\"url\";s:35:\"./index.php?c=webapp&a=bind-domain&\";s:15:\"permission_name\";s:18:\"webapp_bind_domain\";s:4:\"icon\";s:17:\"wi wi-bind-domain\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:10:\"statistics\";a:3:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:1:{s:14:\"statistics_app\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:31:\"./index.php?c=statistics&a=app&\";s:15:\"permission_name\";s:14:\"statistics_app\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:0;}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:5;}s:8:\"phoneapp\";a:7:{s:5:\"title\";s:3:\"APP\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:41:\"./index.php?c=phoneapp&a=display&do=home&\";s:7:\"section\";a:2:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:16:\"phoneapp_profile\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:1:{s:14:\"front_download\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"下载APP\";s:3:\"url\";s:40:\"./index.php?c=phoneapp&a=front-download&\";s:15:\"permission_name\";s:23:\"phoneapp_front_download\";s:4:\"icon\";s:13:\"wi wi-examine\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:6;}s:5:\"xzapp\";a:7:{s:5:\"title\";s:9:\"熊掌号\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:38:\"./index.php?c=xzapp&a=home&do=display&\";s:7:\"section\";a:1:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:12:\"应用模块\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:7;}s:6:\"aliapp\";a:7:{s:5:\"title\";s:18:\"支付宝小程序\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:40:\"./index.php?c=miniapp&a=display&do=home&\";s:7:\"section\";a:1:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:8;}s:6:\"module\";a:7:{s:5:\"title\";s:6:\"应用\";s:4:\"icon\";s:11:\"wi wi-apply\";s:3:\"url\";s:31:\"./index.php?c=module&a=display&\";s:7:\"section\";a:0:{}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:9;}s:6:\"system\";a:7:{s:5:\"title\";s:6:\"系统\";s:4:\"icon\";s:13:\"wi wi-setting\";s:3:\"url\";s:39:\"./index.php?c=home&a=welcome&do=system&\";s:7:\"section\";a:13:{s:10:\"wxplatform\";a:2:{s:5:\"title\";s:9:\"公众号\";s:4:\"menu\";a:4:{s:14:\"system_account\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:16:\" 微信公众号\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=1\";s:15:\"permission_name\";s:14:\"system_account\";s:4:\"icon\";s:12:\"wi wi-wechat\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:21:\"公众号管理设置\";s:15:\"permission_name\";s:21:\"system_account_manage\";}i:1;a:2:{s:5:\"title\";s:15:\"添加公众号\";s:15:\"permission_name\";s:19:\"system_account_post\";}i:2;a:2:{s:5:\"title\";s:15:\"公众号停用\";s:15:\"permission_name\";s:19:\"system_account_stop\";}i:3;a:2:{s:5:\"title\";s:18:\"公众号回收站\";s:15:\"permission_name\";s:22:\"system_account_recycle\";}i:4;a:2:{s:5:\"title\";s:15:\"公众号删除\";s:15:\"permission_name\";s:21:\"system_account_delete\";}i:5;a:2:{s:5:\"title\";s:15:\"公众号恢复\";s:15:\"permission_name\";s:22:\"system_account_recover\";}}}s:13:\"system_module\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"公众号应用\";s:3:\"url\";s:60:\"./index.php?c=module&a=manage-system&support=account_support\";s:15:\"permission_name\";s:13:\"system_module\";s:4:\"icon\";s:14:\"wi wi-wx-apply\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"system_template\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"微官网模板\";s:3:\"url\";s:32:\"./index.php?c=system&a=template&\";s:15:\"permission_name\";s:15:\"system_template\";s:4:\"icon\";s:17:\"wi wi-wx-template\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"system_platform\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:19:\" 微信开放平台\";s:3:\"url\";s:32:\"./index.php?c=system&a=platform&\";s:15:\"permission_name\";s:15:\"system_platform\";s:4:\"icon\";s:20:\"wi wi-exploitsetting\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:6:\"module\";a:2:{s:5:\"title\";s:9:\"小程序\";s:4:\"menu\";a:2:{s:12:\"system_wxapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"微信小程序\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=4\";s:15:\"permission_name\";s:12:\"system_wxapp\";s:4:\"icon\";s:11:\"wi wi-wxapp\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:21:\"小程序管理设置\";s:15:\"permission_name\";s:19:\"system_wxapp_manage\";}i:1;a:2:{s:5:\"title\";s:15:\"添加小程序\";s:15:\"permission_name\";s:17:\"system_wxapp_post\";}i:2;a:2:{s:5:\"title\";s:15:\"小程序停用\";s:15:\"permission_name\";s:17:\"system_wxapp_stop\";}i:3;a:2:{s:5:\"title\";s:18:\"小程序回收站\";s:15:\"permission_name\";s:20:\"system_wxapp_recycle\";}i:4;a:2:{s:5:\"title\";s:15:\"小程序删除\";s:15:\"permission_name\";s:19:\"system_wxapp_delete\";}i:5;a:2:{s:5:\"title\";s:15:\"小程序恢复\";s:15:\"permission_name\";s:20:\"system_wxapp_recover\";}}}s:19:\"system_module_wxapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"小程序应用\";s:3:\"url\";s:58:\"./index.php?c=module&a=manage-system&support=wxapp_support\";s:15:\"permission_name\";s:19:\"system_module_wxapp\";s:4:\"icon\";s:17:\"wi wi-wxapp-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"welcome\";a:3:{s:5:\"title\";s:12:\"系统首页\";s:4:\"menu\";a:1:{s:14:\"system_welcome\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"系统首页应用\";s:3:\"url\";s:60:\"./index.php?c=module&a=manage-system&support=welcome_support\";s:15:\"permission_name\";s:14:\"system_welcome\";s:4:\"icon\";s:11:\"wi wi-wxapp\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:7:\"founder\";b:1;}s:6:\"webapp\";a:2:{s:5:\"title\";s:2:\"PC\";s:4:\"menu\";a:2:{s:13:\"system_webapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:2:\"PC\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=5\";s:15:\"permission_name\";s:13:\"system_webapp\";s:4:\"icon\";s:8:\"wi wi-pc\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:20:\"system_module_webapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:8:\"PC应用\";s:3:\"url\";s:59:\"./index.php?c=module&a=manage-system&support=webapp_support\";s:15:\"permission_name\";s:20:\"system_module_webapp\";s:4:\"icon\";s:14:\"wi wi-pc-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:8:\"phoneapp\";a:2:{s:5:\"title\";s:3:\"APP\";s:4:\"menu\";a:2:{s:15:\"system_phoneapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:3:\"APP\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=6\";s:15:\"permission_name\";s:15:\"system_phoneapp\";s:4:\"icon\";s:9:\"wi wi-app\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:22:\"system_module_phoneapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"APP应用\";s:3:\"url\";s:61:\"./index.php?c=module&a=manage-system&support=phoneapp_support\";s:15:\"permission_name\";s:22:\"system_module_phoneapp\";s:4:\"icon\";s:15:\"wi wi-app-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:5:\"xzapp\";a:2:{s:5:\"title\";s:9:\"熊掌号\";s:4:\"menu\";a:2:{s:12:\"system_xzapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"熊掌号\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=9\";s:15:\"permission_name\";s:12:\"system_xzapp\";s:4:\"icon\";s:11:\"wi wi-xzapp\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:19:\"system_module_xzapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"熊掌号应用\";s:3:\"url\";s:58:\"./index.php?c=module&a=manage-system&support=xzapp_support\";s:15:\"permission_name\";s:19:\"system_module_xzapp\";s:4:\"icon\";s:17:\"wi wi-xzapp-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:6:\"aliapp\";a:2:{s:5:\"title\";s:18:\"支付宝小程序\";s:4:\"menu\";a:2:{s:13:\"system_aliapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"支付宝小程序\";s:3:\"url\";s:46:\"./index.php?c=account&a=manage&account_type=11\";s:15:\"permission_name\";s:13:\"system_aliapp\";s:4:\"icon\";s:12:\"wi wi-aliapp\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:20:\"system_module_aliapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:24:\"支付宝小程序应用\";s:3:\"url\";s:59:\"./index.php?c=module&a=manage-system&support=aliapp_support\";s:15:\"permission_name\";s:20:\"system_module_aliapp\";s:4:\"icon\";s:18:\"wi wi-aliapp-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:4:\"user\";a:2:{s:5:\"title\";s:13:\"帐户/用户\";s:4:\"menu\";a:3:{s:9:\"system_my\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"我的帐户\";s:3:\"url\";s:29:\"./index.php?c=user&a=profile&\";s:15:\"permission_name\";s:9:\"system_my\";s:4:\"icon\";s:10:\"wi wi-user\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"system_user\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"用户管理\";s:3:\"url\";s:29:\"./index.php?c=user&a=display&\";s:15:\"permission_name\";s:11:\"system_user\";s:4:\"icon\";s:16:\"wi wi-user-group\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:7:{i:0;a:2:{s:5:\"title\";s:12:\"编辑用户\";s:15:\"permission_name\";s:16:\"system_user_post\";}i:1;a:2:{s:5:\"title\";s:12:\"审核用户\";s:15:\"permission_name\";s:17:\"system_user_check\";}i:2;a:2:{s:5:\"title\";s:12:\"店员管理\";s:15:\"permission_name\";s:17:\"system_user_clerk\";}i:3;a:2:{s:5:\"title\";s:15:\"用户回收站\";s:15:\"permission_name\";s:19:\"system_user_recycle\";}i:4;a:2:{s:5:\"title\";s:18:\"用户属性设置\";s:15:\"permission_name\";s:18:\"system_user_fields\";}i:5;a:2:{s:5:\"title\";s:31:\"用户属性设置-编辑字段\";s:15:\"permission_name\";s:23:\"system_user_fields_post\";}i:6;a:2:{s:5:\"title\";s:18:\"用户注册设置\";s:15:\"permission_name\";s:23:\"system_user_registerset\";}}}s:25:\"system_user_founder_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"副创始人组\";s:3:\"url\";s:32:\"./index.php?c=founder&a=display&\";s:15:\"permission_name\";s:21:\"system_founder_manage\";s:4:\"icon\";s:16:\"wi wi-co-founder\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:18:\"添加创始人组\";s:15:\"permission_name\";s:24:\"system_founder_group_add\";}i:1;a:2:{s:5:\"title\";s:18:\"编辑创始人组\";s:15:\"permission_name\";s:25:\"system_founder_group_post\";}i:2;a:2:{s:5:\"title\";s:18:\"删除创始人组\";s:15:\"permission_name\";s:24:\"system_founder_group_del\";}i:3;a:2:{s:5:\"title\";s:15:\"添加创始人\";s:15:\"permission_name\";s:23:\"system_founder_user_add\";}i:4;a:2:{s:5:\"title\";s:15:\"编辑创始人\";s:15:\"permission_name\";s:24:\"system_founder_user_post\";}i:5;a:2:{s:5:\"title\";s:15:\"删除创始人\";s:15:\"permission_name\";s:23:\"system_founder_user_del\";}}}}}s:10:\"permission\";a:2:{s:5:\"title\";s:12:\"权限管理\";s:4:\"menu\";a:2:{s:19:\"system_module_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"应用权限组\";s:3:\"url\";s:29:\"./index.php?c=module&a=group&\";s:15:\"permission_name\";s:19:\"system_module_group\";s:4:\"icon\";s:21:\"wi wi-appjurisdiction\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:3:{i:0;a:2:{s:5:\"title\";s:21:\"添加应用权限组\";s:15:\"permission_name\";s:23:\"system_module_group_add\";}i:1;a:2:{s:5:\"title\";s:21:\"编辑应用权限组\";s:15:\"permission_name\";s:24:\"system_module_group_post\";}i:2;a:2:{s:5:\"title\";s:21:\"删除应用权限组\";s:15:\"permission_name\";s:23:\"system_module_group_del\";}}}s:17:\"system_user_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"用户权限组\";s:3:\"url\";s:27:\"./index.php?c=user&a=group&\";s:15:\"permission_name\";s:17:\"system_user_group\";s:4:\"icon\";s:22:\"wi wi-userjurisdiction\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:3:{i:0;a:2:{s:5:\"title\";s:15:\"添加用户组\";s:15:\"permission_name\";s:21:\"system_user_group_add\";}i:1;a:2:{s:5:\"title\";s:15:\"编辑用户组\";s:15:\"permission_name\";s:22:\"system_user_group_post\";}i:2;a:2:{s:5:\"title\";s:15:\"删除用户组\";s:15:\"permission_name\";s:21:\"system_user_group_del\";}}}}}s:7:\"article\";a:2:{s:5:\"title\";s:13:\"文章/公告\";s:4:\"menu\";a:2:{s:14:\"system_article\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"文章管理\";s:3:\"url\";s:29:\"./index.php?c=article&a=news&\";s:15:\"permission_name\";s:19:\"system_article_news\";s:4:\"icon\";s:13:\"wi wi-article\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:21:\"system_article_notice\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"公告管理\";s:3:\"url\";s:31:\"./index.php?c=article&a=notice&\";s:15:\"permission_name\";s:21:\"system_article_notice\";s:4:\"icon\";s:12:\"wi wi-notice\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"message\";a:2:{s:5:\"title\";s:12:\"消息提醒\";s:4:\"menu\";a:1:{s:21:\"system_message_notice\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"消息提醒\";s:3:\"url\";s:31:\"./index.php?c=message&a=notice&\";s:15:\"permission_name\";s:21:\"system_message_notice\";s:4:\"icon\";s:10:\"wi wi-bell\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:17:\"system_statistics\";a:2:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:1:{s:23:\"system_account_analysis\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:35:\"./index.php?c=statistics&a=account&\";s:15:\"permission_name\";s:23:\"system_account_analysis\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:5:\"cache\";a:2:{s:5:\"title\";s:6:\"缓存\";s:4:\"menu\";a:1:{s:26:\"system_setting_updatecache\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"更新缓存\";s:3:\"url\";s:35:\"./index.php?c=system&a=updatecache&\";s:15:\"permission_name\";s:26:\"system_setting_updatecache\";s:4:\"icon\";s:12:\"wi wi-update\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:10;}s:4:\"site\";a:8:{s:5:\"title\";s:6:\"站点\";s:4:\"icon\";s:17:\"wi wi-system-site\";s:3:\"url\";s:28:\"./index.php?c=system&a=site&\";s:7:\"section\";a:3:{s:7:\"setting\";a:2:{s:5:\"title\";s:6:\"设置\";s:4:\"menu\";a:9:{s:19:\"system_setting_site\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"站点设置\";s:3:\"url\";s:28:\"./index.php?c=system&a=site&\";s:15:\"permission_name\";s:19:\"system_setting_site\";s:4:\"icon\";s:18:\"wi wi-site-setting\";s:12:\"displayorder\";i:9;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_setting_menu\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"菜单设置\";s:3:\"url\";s:28:\"./index.php?c=system&a=menu&\";s:15:\"permission_name\";s:19:\"system_setting_menu\";s:4:\"icon\";s:18:\"wi wi-menu-setting\";s:12:\"displayorder\";i:8;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_attachment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"附件设置\";s:3:\"url\";s:34:\"./index.php?c=system&a=attachment&\";s:15:\"permission_name\";s:25:\"system_setting_attachment\";s:4:\"icon\";s:16:\"wi wi-attachment\";s:12:\"displayorder\";i:7;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_systeminfo\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"系统信息\";s:3:\"url\";s:34:\"./index.php?c=system&a=systeminfo&\";s:15:\"permission_name\";s:25:\"system_setting_systeminfo\";s:4:\"icon\";s:17:\"wi wi-system-info\";s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_setting_logs\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"查看日志\";s:3:\"url\";s:28:\"./index.php?c=system&a=logs&\";s:15:\"permission_name\";s:19:\"system_setting_logs\";s:4:\"icon\";s:9:\"wi wi-log\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:26:\"system_setting_ipwhitelist\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:11:\"IP白名单\";s:3:\"url\";s:35:\"./index.php?c=system&a=ipwhitelist&\";s:15:\"permission_name\";s:26:\"system_setting_ipwhitelist\";s:4:\"icon\";s:8:\"wi wi-ip\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:28:\"system_setting_sensitiveword\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"过滤敏感词\";s:3:\"url\";s:37:\"./index.php?c=system&a=sensitiveword&\";s:15:\"permission_name\";s:28:\"system_setting_sensitiveword\";s:4:\"icon\";s:15:\"wi wi-sensitive\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_thirdlogin\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:25:\"用户登录/注册设置\";s:3:\"url\";s:33:\"./index.php?c=user&a=registerset&\";s:15:\"permission_name\";s:25:\"system_setting_thirdlogin\";s:4:\"icon\";s:10:\"wi wi-user\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:20:\"system_setting_oauth\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:17:\"oauth全局设置\";s:3:\"url\";s:29:\"./index.php?c=system&a=oauth&\";s:15:\"permission_name\";s:20:\"system_setting_oauth\";s:4:\"icon\";s:11:\"wi wi-oauth\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"utility\";a:2:{s:5:\"title\";s:12:\"常用工具\";s:4:\"menu\";a:5:{s:24:\"system_utility_filecheck\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"系统文件校验\";s:3:\"url\";s:33:\"./index.php?c=system&a=filecheck&\";s:15:\"permission_name\";s:24:\"system_utility_filecheck\";s:4:\"icon\";s:10:\"wi wi-file\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"system_utility_optimize\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"性能优化\";s:3:\"url\";s:32:\"./index.php?c=system&a=optimize&\";s:15:\"permission_name\";s:23:\"system_utility_optimize\";s:4:\"icon\";s:14:\"wi wi-optimize\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"system_utility_database\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"数据库\";s:3:\"url\";s:32:\"./index.php?c=system&a=database&\";s:15:\"permission_name\";s:23:\"system_utility_database\";s:4:\"icon\";s:9:\"wi wi-sql\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_utility_scan\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"木马查杀\";s:3:\"url\";s:28:\"./index.php?c=system&a=scan&\";s:15:\"permission_name\";s:19:\"system_utility_scan\";s:4:\"icon\";s:12:\"wi wi-safety\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:18:\"system_utility_bom\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"检测文件BOM\";s:3:\"url\";s:27:\"./index.php?c=system&a=bom&\";s:15:\"permission_name\";s:18:\"system_utility_bom\";s:4:\"icon\";s:9:\"wi wi-bom\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"backjob\";a:2:{s:5:\"title\";s:12:\"后台任务\";s:4:\"menu\";a:1:{s:10:\"system_job\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"后台任务\";s:3:\"url\";s:38:\"./index.php?c=system&a=job&do=display&\";s:15:\"permission_name\";s:10:\"system_job\";s:4:\"icon\";s:9:\"wi wi-job\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:7:\"founder\";b:1;s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:11;}s:4:\"help\";a:8:{s:5:\"title\";s:12:\"系统帮助\";s:4:\"icon\";s:12:\"wi wi-market\";s:3:\"url\";s:29:\"./index.php?c=help&a=display&\";s:7:\"section\";a:0:{}s:5:\"blank\";b:0;s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:12;}s:5:\"store\";a:7:{s:5:\"title\";s:6:\"商城\";s:4:\"icon\";s:11:\"wi wi-store\";s:3:\"url\";s:43:\"./index.php?c=home&a=welcome&do=ext&m=store\";s:7:\"section\";a:0:{}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:13;}}');
INSERT INTO `ims_core_cache` VALUES ('we7:setting', 'a:4:{s:9:\"copyright\";a:1:{s:6:\"slides\";a:3:{i:0;s:58:\"https://img.alicdn.com/tps/TB1pfG4IFXXXXc6XXXXXXXXXXXX.jpg\";i:1;s:58:\"https://img.alicdn.com/tps/TB1sXGYIFXXXXc5XpXXXXXXXXXX.jpg\";i:2;s:58:\"https://img.alicdn.com/tps/TB1h9xxIFXXXXbKXXXXXXXXXXXX.jpg\";}}s:8:\"authmode\";i:1;s:5:\"close\";a:2:{s:6:\"status\";s:1:\"0\";s:6:\"reason\";s:0:\"\";}s:8:\"register\";a:4:{s:4:\"open\";i:1;s:6:\"verify\";i:0;s:4:\"code\";i:1;s:7:\"groupid\";i:1;}}');
INSERT INTO `ims_core_cache` VALUES ('we7:userbasefields', 'a:46:{s:7:\"uniacid\";s:17:\"同一公众号id\";s:7:\"groupid\";s:8:\"分组id\";s:7:\"credit1\";s:6:\"积分\";s:7:\"credit2\";s:6:\"余额\";s:7:\"credit3\";s:19:\"预留积分类型3\";s:7:\"credit4\";s:19:\"预留积分类型4\";s:7:\"credit5\";s:19:\"预留积分类型5\";s:7:\"credit6\";s:19:\"预留积分类型6\";s:10:\"createtime\";s:12:\"加入时间\";s:6:\"mobile\";s:12:\"手机号码\";s:5:\"email\";s:12:\"电子邮箱\";s:8:\"realname\";s:12:\"真实姓名\";s:8:\"nickname\";s:6:\"昵称\";s:6:\"avatar\";s:6:\"头像\";s:2:\"qq\";s:5:\"QQ号\";s:6:\"gender\";s:6:\"性别\";s:5:\"birth\";s:6:\"生日\";s:13:\"constellation\";s:6:\"星座\";s:6:\"zodiac\";s:6:\"生肖\";s:9:\"telephone\";s:12:\"固定电话\";s:6:\"idcard\";s:12:\"证件号码\";s:9:\"studentid\";s:6:\"学号\";s:5:\"grade\";s:6:\"班级\";s:7:\"address\";s:6:\"地址\";s:7:\"zipcode\";s:6:\"邮编\";s:11:\"nationality\";s:6:\"国籍\";s:6:\"reside\";s:9:\"居住地\";s:14:\"graduateschool\";s:12:\"毕业学校\";s:7:\"company\";s:6:\"公司\";s:9:\"education\";s:6:\"学历\";s:10:\"occupation\";s:6:\"职业\";s:8:\"position\";s:6:\"职位\";s:7:\"revenue\";s:9:\"年收入\";s:15:\"affectivestatus\";s:12:\"情感状态\";s:10:\"lookingfor\";s:13:\" 交友目的\";s:9:\"bloodtype\";s:6:\"血型\";s:6:\"height\";s:6:\"身高\";s:6:\"weight\";s:6:\"体重\";s:6:\"alipay\";s:15:\"支付宝帐号\";s:3:\"msn\";s:3:\"MSN\";s:6:\"taobao\";s:12:\"阿里旺旺\";s:4:\"site\";s:6:\"主页\";s:3:\"bio\";s:12:\"自我介绍\";s:8:\"interest\";s:12:\"兴趣爱好\";s:8:\"password\";s:6:\"密码\";s:12:\"pay_password\";s:12:\"支付密码\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:usersfields', 'a:47:{s:8:\"realname\";s:12:\"真实姓名\";s:8:\"nickname\";s:6:\"昵称\";s:6:\"avatar\";s:6:\"头像\";s:2:\"qq\";s:5:\"QQ号\";s:6:\"mobile\";s:12:\"手机号码\";s:3:\"vip\";s:9:\"VIP级别\";s:6:\"gender\";s:6:\"性别\";s:9:\"birthyear\";s:12:\"出生生日\";s:13:\"constellation\";s:6:\"星座\";s:6:\"zodiac\";s:6:\"生肖\";s:9:\"telephone\";s:12:\"固定电话\";s:6:\"idcard\";s:12:\"证件号码\";s:9:\"studentid\";s:6:\"学号\";s:5:\"grade\";s:6:\"班级\";s:7:\"address\";s:12:\"邮寄地址\";s:7:\"zipcode\";s:6:\"邮编\";s:11:\"nationality\";s:6:\"国籍\";s:14:\"resideprovince\";s:12:\"居住地址\";s:14:\"graduateschool\";s:12:\"毕业学校\";s:7:\"company\";s:6:\"公司\";s:9:\"education\";s:6:\"学历\";s:10:\"occupation\";s:6:\"职业\";s:8:\"position\";s:6:\"职位\";s:7:\"revenue\";s:9:\"年收入\";s:15:\"affectivestatus\";s:12:\"情感状态\";s:10:\"lookingfor\";s:13:\" 交友目的\";s:9:\"bloodtype\";s:6:\"血型\";s:6:\"height\";s:6:\"身高\";s:6:\"weight\";s:6:\"体重\";s:6:\"alipay\";s:15:\"支付宝帐号\";s:3:\"msn\";s:3:\"MSN\";s:5:\"email\";s:12:\"电子邮箱\";s:6:\"taobao\";s:12:\"阿里旺旺\";s:4:\"site\";s:6:\"主页\";s:3:\"bio\";s:12:\"自我介绍\";s:8:\"interest\";s:12:\"兴趣爱好\";s:7:\"uniacid\";s:17:\"同一公众号id\";s:7:\"groupid\";s:8:\"分组id\";s:7:\"credit1\";s:6:\"积分\";s:7:\"credit2\";s:6:\"余额\";s:7:\"credit3\";s:19:\"预留积分类型3\";s:7:\"credit4\";s:19:\"预留积分类型4\";s:7:\"credit5\";s:19:\"预留积分类型5\";s:7:\"credit6\";s:19:\"预留积分类型6\";s:10:\"createtime\";s:12:\"加入时间\";s:8:\"password\";s:12:\"用户密码\";s:12:\"pay_password\";s:12:\"支付密码\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_receive_enable', 'a:13:{s:5:\"image\";a:1:{i:0;s:11:\"ewei_shopv2\";}s:5:\"voice\";a:1:{i:0;s:11:\"ewei_shopv2\";}s:5:\"video\";a:1:{i:0;s:11:\"ewei_shopv2\";}s:10:\"shortvideo\";a:1:{i:0;s:11:\"ewei_shopv2\";}s:8:\"location\";a:1:{i:0;s:11:\"ewei_shopv2\";}s:4:\"link\";a:1:{i:0;s:11:\"ewei_shopv2\";}s:9:\"subscribe\";a:1:{i:0;s:11:\"ewei_shopv2\";}s:11:\"unsubscribe\";a:1:{i:0;s:11:\"ewei_shopv2\";}s:2:\"qr\";a:1:{i:0;s:11:\"ewei_shopv2\";}s:5:\"trace\";a:1:{i:0;s:11:\"ewei_shopv2\";}s:5:\"click\";a:1:{i:0;s:11:\"ewei_shopv2\";}s:4:\"view\";a:1:{i:0;s:11:\"ewei_shopv2\";}s:14:\"merchant_order\";a:1:{i:0;s:11:\"ewei_shopv2\";}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:store', 'a:32:{s:3:\"mid\";s:2:\"12\";s:4:\"name\";s:5:\"store\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:12:\"站内商城\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:12:\"站内商城\";s:11:\"description\";s:12:\"站内商城\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:56:\"http://www.rrmall.com/addons/store/icon.jpg?v=1572922527\";s:7:\"preview\";s:46:\"http://www.rrmall.com/addons/store/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:wxcard', 'a:32:{s:3:\"mid\";s:2:\"11\";s:4:\"name\";s:6:\"wxcard\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"微信卡券回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"微信卡券回复\";s:11:\"description\";s:18:\"微信卡券回复\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:57:\"http://www.rrmall.com/addons/wxcard/icon.jpg?v=1572922527\";s:7:\"preview\";s:47:\"http://www.rrmall.com/addons/wxcard/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:chats', 'a:32:{s:3:\"mid\";s:2:\"10\";s:4:\"name\";s:5:\"chats\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"发送客服消息\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:77:\"公众号可以在粉丝最后发送消息的48小时内无限制发送消息\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:56:\"http://www.rrmall.com/addons/chats/icon.jpg?v=1572922527\";s:7:\"preview\";s:46:\"http://www.rrmall.com/addons/chats/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:voice', 'a:32:{s:3:\"mid\";s:1:\"9\";s:4:\"name\";s:5:\"voice\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本语音回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供语音回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有语音的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝语音。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:56:\"http://www.rrmall.com/addons/voice/icon.jpg?v=1572922527\";s:7:\"preview\";s:46:\"http://www.rrmall.com/addons/voice/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:video', 'a:32:{s:3:\"mid\";s:1:\"8\";s:4:\"name\";s:5:\"video\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本视频回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供图片回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有视频的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝视频。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:56:\"http://www.rrmall.com/addons/video/icon.jpg?v=1572922527\";s:7:\"preview\";s:46:\"http://www.rrmall.com/addons/video/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:images', 'a:32:{s:3:\"mid\";s:1:\"7\";s:4:\"name\";s:6:\"images\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本图片回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供图片回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有图片的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝图片。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:57:\"http://www.rrmall.com/addons/images/icon.jpg?v=1572922527\";s:7:\"preview\";s:47:\"http://www.rrmall.com/addons/images/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:custom', 'a:32:{s:3:\"mid\";s:1:\"6\";s:4:\"name\";s:6:\"custom\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:15:\"多客服转接\";s:7:\"version\";s:5:\"1.0.0\";s:7:\"ability\";s:36:\"用来接入腾讯的多客服系统\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:17:\"http://bbs.we7.cc\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:6:{i:0;s:5:\"image\";i:1;s:5:\"voice\";i:2;s:5:\"video\";i:3;s:8:\"location\";i:4;s:4:\"link\";i:5;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:57:\"http://www.rrmall.com/addons/custom/icon.jpg?v=1572922527\";s:7:\"preview\";s:47:\"http://www.rrmall.com/addons/custom/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:recharge', 'a:32:{s:3:\"mid\";s:1:\"5\";s:4:\"name\";s:8:\"recharge\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:24:\"会员中心充值模块\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:24:\"提供会员充值功能\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:59:\"http://www.rrmall.com/addons/recharge/icon.jpg?v=1572922527\";s:7:\"preview\";s:49:\"http://www.rrmall.com/addons/recharge/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:userapi', 'a:32:{s:3:\"mid\";s:1:\"4\";s:4:\"name\";s:7:\"userapi\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:21:\"自定义接口回复\";s:7:\"version\";s:3:\"1.1\";s:7:\"ability\";s:33:\"更方便的第三方接口设置\";s:11:\"description\";s:141:\"自定义接口又称第三方接口，可以让开发者更方便的接入微擎系统，高效的与微信公众平台进行对接整合。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:58:\"http://www.rrmall.com/addons/userapi/icon.jpg?v=1572922527\";s:7:\"preview\";s:48:\"http://www.rrmall.com/addons/userapi/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:music', 'a:32:{s:3:\"mid\";s:1:\"3\";s:4:\"name\";s:5:\"music\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本音乐回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:39:\"提供语音、音乐等音频类回复\";s:11:\"description\";s:183:\"在回复规则中可选择具有语音、音乐等音频类的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝，实现一问一答得简单对话。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:56:\"http://www.rrmall.com/addons/music/icon.jpg?v=1572922527\";s:7:\"preview\";s:46:\"http://www.rrmall.com/addons/music/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:news', 'a:32:{s:3:\"mid\";s:1:\"2\";s:4:\"name\";s:4:\"news\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:24:\"基本混合图文回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:33:\"为你提供生动的图文资讯\";s:11:\"description\";s:272:\"一问一答得简单对话, 但是回复内容包括图片文字等更生动的媒体内容. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的图文回复内容.\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:55:\"http://www.rrmall.com/addons/news/icon.jpg?v=1572922527\";s:7:\"preview\";s:45:\"http://www.rrmall.com/addons/news/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:basic', 'a:32:{s:3:\"mid\";s:1:\"1\";s:4:\"name\";s:5:\"basic\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本文字回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:24:\"和您进行简单对话\";s:11:\"description\";s:201:\"一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的回复内容.\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:56:\"http://www.rrmall.com/addons/basic/icon.jpg?v=1572922527\";s:7:\"preview\";s:46:\"http://www.rrmall.com/addons/basic/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:unisetting:1', 'a:29:{s:7:\"uniacid\";s:1:\"1\";s:8:\"passport\";a:3:{s:8:\"focusreg\";i:0;s:4:\"item\";s:5:\"email\";s:4:\"type\";s:8:\"password\";}s:5:\"oauth\";a:2:{s:6:\"status\";s:1:\"0\";s:7:\"account\";s:1:\"0\";}s:11:\"jsauth_acid\";s:1:\"0\";s:2:\"uc\";a:1:{s:6:\"status\";i:0;}s:6:\"notify\";a:1:{s:3:\"sms\";a:2:{s:7:\"balance\";i:0;s:9:\"signature\";s:0:\"\";}}s:11:\"creditnames\";a:5:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}s:7:\"credit3\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit4\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit5\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}}s:15:\"creditbehaviors\";a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}s:7:\"welcome\";s:0:\"\";s:7:\"default\";s:0:\"\";s:15:\"default_message\";s:0:\"\";s:7:\"payment\";a:4:{s:6:\"credit\";a:1:{s:6:\"switch\";b:0;}s:6:\"alipay\";a:4:{s:6:\"switch\";b:0;s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:6:\"wechat\";a:5:{s:6:\"switch\";b:0;s:7:\"account\";b:0;s:7:\"signkey\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:3:\"key\";s:0:\"\";}s:8:\"delivery\";a:1:{s:6:\"switch\";b:0;}}s:4:\"stat\";s:0:\"\";s:12:\"default_site\";s:1:\"1\";s:4:\"sync\";s:1:\"0\";s:8:\"recharge\";s:0:\"\";s:9:\"tplnotice\";s:0:\"\";s:10:\"grouplevel\";s:1:\"0\";s:8:\"mcplugin\";s:0:\"\";s:15:\"exchange_enable\";s:1:\"0\";s:11:\"coupon_type\";s:1:\"0\";s:7:\"menuset\";s:0:\"\";s:10:\"statistics\";s:0:\"\";s:11:\"bind_domain\";s:0:\"\";s:14:\"comment_status\";s:1:\"0\";s:13:\"reply_setting\";s:1:\"0\";s:14:\"default_module\";s:0:\"\";s:16:\"attachment_limit\";N;s:15:\"attachment_size\";N;}');
INSERT INTO `ims_core_cache` VALUES ('we7:uniaccount:1', 'a:37:{s:4:\"acid\";s:1:\"1\";s:7:\"uniacid\";s:1:\"1\";s:5:\"token\";s:32:\"omJNpZEhZeHj1ZxFECKkP48B5VFbk1HP\";s:14:\"encodingaeskey\";s:0:\"\";s:5:\"level\";s:1:\"1\";s:4:\"name\";s:7:\"we7team\";s:7:\"account\";s:0:\"\";s:8:\"original\";s:0:\"\";s:9:\"signature\";s:0:\"\";s:7:\"country\";s:0:\"\";s:8:\"province\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";s:10:\"lastupdate\";s:1:\"0\";s:3:\"key\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:7:\"styleid\";s:1:\"1\";s:12:\"subscribeurl\";s:0:\"\";s:18:\"auth_refresh_token\";s:0:\"\";s:11:\"encrypt_key\";s:0:\"\";s:4:\"type\";s:1:\"1\";s:9:\"isconnect\";s:1:\"0\";s:9:\"isdeleted\";s:1:\"0\";s:7:\"endtime\";s:1:\"0\";s:9:\"type_sign\";s:7:\"account\";s:3:\"uid\";s:1:\"1\";s:9:\"starttime\";s:1:\"0\";s:6:\"groups\";a:1:{i:1;a:5:{s:7:\"groupid\";s:1:\"1\";s:7:\"uniacid\";s:1:\"1\";s:5:\"title\";s:15:\"默认会员组\";s:6:\"credit\";s:1:\"0\";s:9:\"isdefault\";s:1:\"1\";}}s:7:\"setting\";a:29:{s:7:\"uniacid\";s:1:\"1\";s:8:\"passport\";a:3:{s:8:\"focusreg\";i:0;s:4:\"item\";s:5:\"email\";s:4:\"type\";s:8:\"password\";}s:5:\"oauth\";a:2:{s:6:\"status\";s:1:\"0\";s:7:\"account\";s:1:\"0\";}s:11:\"jsauth_acid\";s:1:\"0\";s:2:\"uc\";a:1:{s:6:\"status\";i:0;}s:6:\"notify\";a:1:{s:3:\"sms\";a:2:{s:7:\"balance\";i:0;s:9:\"signature\";s:0:\"\";}}s:11:\"creditnames\";a:5:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}s:7:\"credit3\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit4\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit5\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}}s:15:\"creditbehaviors\";a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}s:7:\"welcome\";s:0:\"\";s:7:\"default\";s:0:\"\";s:15:\"default_message\";s:0:\"\";s:7:\"payment\";a:4:{s:6:\"credit\";a:1:{s:6:\"switch\";b:0;}s:6:\"alipay\";a:4:{s:6:\"switch\";b:0;s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:6:\"wechat\";a:5:{s:6:\"switch\";b:0;s:7:\"account\";b:0;s:7:\"signkey\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:3:\"key\";s:0:\"\";}s:8:\"delivery\";a:1:{s:6:\"switch\";b:0;}}s:4:\"stat\";s:0:\"\";s:12:\"default_site\";s:1:\"1\";s:4:\"sync\";s:1:\"0\";s:8:\"recharge\";s:0:\"\";s:9:\"tplnotice\";s:0:\"\";s:10:\"grouplevel\";s:1:\"0\";s:8:\"mcplugin\";s:0:\"\";s:15:\"exchange_enable\";s:1:\"0\";s:11:\"coupon_type\";s:1:\"0\";s:7:\"menuset\";s:0:\"\";s:10:\"statistics\";s:0:\"\";s:11:\"bind_domain\";s:0:\"\";s:14:\"comment_status\";s:1:\"0\";s:13:\"reply_setting\";s:1:\"0\";s:14:\"default_module\";s:0:\"\";s:16:\"attachment_limit\";N;s:15:\"attachment_size\";N;}s:10:\"grouplevel\";s:1:\"0\";s:4:\"logo\";s:62:\"http://www.rrmall.com/attachment/headimg_1.jpg?time=1572922637\";s:6:\"qrcode\";s:61:\"http://www.rrmall.com/attachment/qrcode_1.jpg?time=1572922637\";s:9:\"type_name\";s:9:\"公众号\";s:9:\"switchurl\";s:51:\"./index.php?c=account&a=display&do=switch&uniacid=1\";s:3:\"sms\";i:0;s:7:\"setmeal\";a:5:{s:3:\"uid\";i:-1;s:8:\"username\";s:9:\"创始人\";s:9:\"timelimit\";s:9:\"未设置\";s:7:\"groupid\";s:2:\"-1\";s:9:\"groupname\";s:12:\"所有服务\";}}');
INSERT INTO `ims_core_cache` VALUES ('we7:user_modules:1', 'a:13:{s:11:\"ewei_shopv2\";s:3:\"all\";s:5:\"store\";s:3:\"all\";s:6:\"wxcard\";s:3:\"all\";s:5:\"chats\";s:3:\"all\";s:5:\"voice\";s:3:\"all\";s:5:\"video\";s:3:\"all\";s:6:\"images\";s:3:\"all\";s:6:\"custom\";s:3:\"all\";s:8:\"recharge\";s:3:\"all\";s:7:\"userapi\";s:3:\"all\";s:5:\"music\";s:3:\"all\";s:4:\"news\";s:3:\"all\";s:5:\"basic\";s:3:\"all\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:ewei_shopv2', 'a:32:{s:3:\"mid\";s:2:\"13\";s:4:\"name\";s:11:\"ewei_shopv2\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:14:\"人人商城V3\";s:7:\"version\";s:6:\"3.15.4\";s:7:\"ability\";s:87:\"人人商城(分销),多用户分权，淘宝商品一键转换，多种插件支持。\";s:11:\"description\";s:74:\"人人商城(分销)，多项信息模板，强大的自定义规格设置\";s:6:\"author\";s:12:\"源码家园\";s:3:\"url\";s:23:\"http://www.linxincn.com\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:14:{i:0;s:4:\"text\";i:1;s:5:\"image\";i:2;s:5:\"voice\";i:3;s:5:\"video\";i:4;s:10:\"shortvideo\";i:5;s:8:\"location\";i:6;s:4:\"link\";i:7;s:9:\"subscribe\";i:8;s:11:\"unsubscribe\";i:9;s:2:\"qr\";i:10;s:5:\"trace\";i:11;s:5:\"click\";i:12;s:4:\"view\";i:13;s:14:\"merchant_order\";}s:7:\"handles\";a:12:{i:0;s:4:\"text\";i:1;s:5:\"image\";i:2;s:5:\"voice\";i:3;s:5:\"video\";i:4;s:10:\"shortvideo\";i:5;s:8:\"location\";i:6;s:4:\"link\";i:7;s:9:\"subscribe\";i:8;s:2:\"qr\";i:9;s:5:\"trace\";i:10;s:5:\"click\";i:11;s:14:\"merchant_order\";}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:6:\"a:0:{}\";s:13:\"title_initial\";s:1:\"R\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"1\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"1\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:69:\"http://www.rrmall.com/addons/ewei_shopv2/icon-custom.jpg?v=1572922676\";s:7:\"preview\";s:59:\"http://www.rrmall.com/addons/ewei_shopv2/preview-custom.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:unimodules:1:1', 'a:13:{s:5:\"basic\";a:1:{s:4:\"name\";s:5:\"basic\";}s:4:\"news\";a:1:{s:4:\"name\";s:4:\"news\";}s:5:\"music\";a:1:{s:4:\"name\";s:5:\"music\";}s:7:\"userapi\";a:1:{s:4:\"name\";s:7:\"userapi\";}s:8:\"recharge\";a:1:{s:4:\"name\";s:8:\"recharge\";}s:6:\"custom\";a:1:{s:4:\"name\";s:6:\"custom\";}s:6:\"images\";a:1:{s:4:\"name\";s:6:\"images\";}s:5:\"video\";a:1:{s:4:\"name\";s:5:\"video\";}s:5:\"voice\";a:1:{s:4:\"name\";s:5:\"voice\";}s:5:\"chats\";a:1:{s:4:\"name\";s:5:\"chats\";}s:6:\"wxcard\";a:1:{s:4:\"name\";s:6:\"wxcard\";}s:5:\"store\";a:1:{s:4:\"name\";s:5:\"store\";}s:11:\"ewei_shopv2\";a:1:{s:4:\"name\";s:11:\"ewei_shopv2\";}}');
INSERT INTO `ims_core_cache` VALUES ('we7:unimodules:0:', 'a:13:{s:5:\"basic\";a:1:{s:4:\"name\";s:5:\"basic\";}s:4:\"news\";a:1:{s:4:\"name\";s:4:\"news\";}s:5:\"music\";a:1:{s:4:\"name\";s:5:\"music\";}s:7:\"userapi\";a:1:{s:4:\"name\";s:7:\"userapi\";}s:8:\"recharge\";a:1:{s:4:\"name\";s:8:\"recharge\";}s:6:\"custom\";a:1:{s:4:\"name\";s:6:\"custom\";}s:6:\"images\";a:1:{s:4:\"name\";s:6:\"images\";}s:5:\"video\";a:1:{s:4:\"name\";s:5:\"video\";}s:5:\"voice\";a:1:{s:4:\"name\";s:5:\"voice\";}s:5:\"chats\";a:1:{s:4:\"name\";s:5:\"chats\";}s:6:\"wxcard\";a:1:{s:4:\"name\";s:6:\"wxcard\";}s:5:\"store\";a:1:{s:4:\"name\";s:5:\"store\";}s:11:\"ewei_shopv2\";a:1:{s:4:\"name\";s:11:\"ewei_shopv2\";}}');
INSERT INTO `ims_core_cache` VALUES ('we7:last_account:CezZ9', 'i:1;');
INSERT INTO `ims_core_cache` VALUES ('we7:last_account_type', 's:7:\"account\";');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:ewei_shopv2:1', 'a:1:{s:6:\"module\";s:11:\"ewei_shopv2\";}');
INSERT INTO `ims_core_cache` VALUES ('ewei_shop_c63f0b1d52faebdb70e565393f9a13d6', 'a:5:{s:2:\"id\";s:2:\"11\";s:7:\"uniacid\";s:1:\"1\";s:4:\"sets\";s:1192:\"a:2:{s:4:\"auth\";a:4:{s:2:\"ip\";s:14:\"39.105.181.181\";s:7:\"modname\";s:11:\"ewei_shopv2\";s:4:\"code\";s:32:\"d3zv1q8sak4ufc0px7we6homji5bntr2\";s:6:\"domain\";s:18:\"wzshop.weidayi.com\";}s:3:\"app\";a:1:{s:6:\"tabbar\";s:977:\"a:5:{s:5:\"color\";s:7:\"#999999\";s:13:\"selectedColor\";s:7:\"#ff5555\";s:11:\"borderStyle\";s:0:\"\";s:15:\"backgroundColor\";s:7:\"#f7f7fa\";s:4:\"list\";a:4:{i:0;a:4:{s:8:\"pagePath\";s:17:\"pages/index/index\";s:8:\"iconPath\";s:31:\"static/images/tabbar/icon-1.png\";s:16:\"selectedIconPath\";s:38:\"static/images/tabbar/icon-1-active.png\";s:4:\"text\";s:6:\"首页\";}i:1;a:4:{s:8:\"pagePath\";s:25:\"pages/shop/caregory/index\";s:8:\"iconPath\";s:31:\"static/images/tabbar/icon-2.png\";s:16:\"selectedIconPath\";s:38:\"static/images/tabbar/icon-2-active.png\";s:4:\"text\";s:12:\"全部分类\";}i:2;a:4:{s:8:\"pagePath\";s:23:\"pages/member/cart/index\";s:8:\"iconPath\";s:31:\"static/images/tabbar/icon-4.png\";s:16:\"selectedIconPath\";s:38:\"static/images/tabbar/icon-4-active.png\";s:4:\"text\";s:9:\"购物车\";}i:3;a:4:{s:8:\"pagePath\";s:24:\"pages/member/index/index\";s:8:\"iconPath\";s:31:\"static/images/tabbar/icon-5.png\";s:16:\"selectedIconPath\";s:38:\"static/images/tabbar/icon-5-active.png\";s:4:\"text\";s:12:\"会员中心\";}}}\";}}\";s:7:\"plugins\";s:2403:\"a:1:{s:10:\"commission\";a:53:{s:5:\"level\";s:1:\"1\";s:7:\"selfbuy\";s:1:\"0\";s:6:\"cansee\";s:1:\"0\";s:8:\"seetitle\";s:0:\"\";s:12:\"become_child\";s:1:\"0\";s:9:\"hideicode\";s:1:\"0\";s:6:\"become\";s:1:\"0\";s:17:\"become_ordercount\";s:0:\"\";s:17:\"become_moneycount\";s:0:\"\";s:12:\"become_check\";s:1:\"0\";s:12:\"become_order\";s:1:\"0\";s:13:\"open_protocol\";s:1:\"0\";s:10:\"become_reg\";s:1:\"0\";s:17:\"no_commission_url\";s:0:\"\";s:8:\"withdraw\";s:1:\"1\";s:14:\"commissiontype\";s:1:\"0\";s:14:\"withdrawcharge\";s:0:\"\";s:13:\"withdrawbegin\";d:0;s:11:\"withdrawend\";d:0;s:10:\"settledays\";s:0:\"\";s:8:\"levelurl\";s:0:\"\";s:9:\"leveltype\";s:1:\"0\";s:11:\"qrcodeshare\";s:1:\"0\";s:9:\"codeShare\";s:1:\"1\";s:15:\"openorderdetail\";s:1:\"0\";s:14:\"openorderbuyer\";s:1:\"0\";s:13:\"closed_qrcode\";s:1:\"0\";s:6:\"qrcode\";s:1:\"0\";s:12:\"qrcode_title\";s:0:\"\";s:14:\"qrcode_content\";s:0:\"\";s:13:\"qrcode_remark\";s:0:\"\";s:15:\"register_bottom\";s:1:\"0\";s:22:\"register_bottom_title1\";s:0:\"\";s:24:\"register_bottom_content1\";s:0:\"\";s:22:\"register_bottom_title2\";s:0:\"\";s:24:\"register_bottom_content2\";s:0:\"\";s:22:\"register_bottom_title3\";s:0:\"\";s:24:\"register_bottom_content3\";s:0:\"\";s:22:\"register_bottom_remark\";s:0:\"\";s:23:\"register_bottom_content\";s:0:\"\";s:11:\"closemyshop\";s:1:\"0\";s:12:\"select_goods\";s:1:\"0\";s:5:\"style\";s:10:\"defaultold\";s:5:\"regbg\";s:0:\"\";s:10:\"applytitle\";s:0:\"\";s:12:\"applycontent\";s:0:\"\";s:10:\"cashcredit\";i:0;s:10:\"cashweixin\";i:0;s:9:\"cashother\";i:0;s:10:\"cashalipay\";i:0;s:8:\"cashcard\";i:0;s:14:\"become_goodsid\";i:0;s:5:\"texts\";a:26:{s:5:\"agent\";s:9:\"分销商\";s:4:\"shop\";s:6:\"小店\";s:6:\"myshop\";s:12:\"我的小店\";s:6:\"center\";s:12:\"分销中心\";s:6:\"become\";s:15:\"成为分销商\";s:8:\"withdraw\";s:6:\"提现\";s:10:\"commission\";s:6:\"佣金\";s:11:\"commission1\";s:12:\"分销佣金\";s:16:\"commission_total\";s:12:\"累计佣金\";s:13:\"commission_ok\";s:15:\"可提现佣金\";s:16:\"commission_apply\";s:15:\"已申请佣金\";s:16:\"commission_check\";s:15:\"待打款佣金\";s:15:\"commission_lock\";s:15:\"未结算佣金\";s:15:\"commission_wait\";s:15:\"待收货佣金\";s:15:\"commission_fail\";s:12:\"无效佣金\";s:14:\"commission_pay\";s:18:\"成功提现佣金\";s:17:\"commission_charge\";s:21:\"扣除提现手续费\";s:17:\"commission_detail\";s:12:\"佣金明细\";s:5:\"order\";s:12:\"分销订单\";s:4:\"down\";s:6:\"下线\";s:6:\"mydown\";s:12:\"我的下线\";s:2:\"c1\";s:6:\"一级\";s:2:\"c2\";s:6:\"二级\";s:2:\"c3\";s:6:\"三级\";s:4:\"yuan\";s:3:\"元\";s:5:\"icode\";s:9:\"邀请码\";}}}\";s:3:\"sec\";N;}');
INSERT INTO `ims_core_cache` VALUES ('ewei_shop_74d1cea9b4bb0b717d26c64287fa94e9', 'a:3:{s:4:\"auth\";a:4:{s:2:\"ip\";s:14:\"39.105.181.181\";s:7:\"modname\";s:11:\"ewei_shopv2\";s:4:\"code\";s:32:\"d3zv1q8sak4ufc0px7we6homji5bntr2\";s:6:\"domain\";s:18:\"wzshop.weidayi.com\";}s:3:\"app\";a:1:{s:6:\"tabbar\";s:977:\"a:5:{s:5:\"color\";s:7:\"#999999\";s:13:\"selectedColor\";s:7:\"#ff5555\";s:11:\"borderStyle\";s:0:\"\";s:15:\"backgroundColor\";s:7:\"#f7f7fa\";s:4:\"list\";a:4:{i:0;a:4:{s:8:\"pagePath\";s:17:\"pages/index/index\";s:8:\"iconPath\";s:31:\"static/images/tabbar/icon-1.png\";s:16:\"selectedIconPath\";s:38:\"static/images/tabbar/icon-1-active.png\";s:4:\"text\";s:6:\"首页\";}i:1;a:4:{s:8:\"pagePath\";s:25:\"pages/shop/caregory/index\";s:8:\"iconPath\";s:31:\"static/images/tabbar/icon-2.png\";s:16:\"selectedIconPath\";s:38:\"static/images/tabbar/icon-2-active.png\";s:4:\"text\";s:12:\"全部分类\";}i:2;a:4:{s:8:\"pagePath\";s:23:\"pages/member/cart/index\";s:8:\"iconPath\";s:31:\"static/images/tabbar/icon-4.png\";s:16:\"selectedIconPath\";s:38:\"static/images/tabbar/icon-4-active.png\";s:4:\"text\";s:9:\"购物车\";}i:3;a:4:{s:8:\"pagePath\";s:24:\"pages/member/index/index\";s:8:\"iconPath\";s:31:\"static/images/tabbar/icon-5.png\";s:16:\"selectedIconPath\";s:38:\"static/images/tabbar/icon-5-active.png\";s:4:\"text\";s:12:\"会员中心\";}}}\";}s:10:\"commission\";a:53:{s:5:\"level\";s:1:\"1\";s:7:\"selfbuy\";s:1:\"0\";s:6:\"cansee\";s:1:\"0\";s:8:\"seetitle\";s:0:\"\";s:12:\"become_child\";s:1:\"0\";s:9:\"hideicode\";s:1:\"0\";s:6:\"become\";s:1:\"0\";s:17:\"become_ordercount\";s:0:\"\";s:17:\"become_moneycount\";s:0:\"\";s:12:\"become_check\";s:1:\"0\";s:12:\"become_order\";s:1:\"0\";s:13:\"open_protocol\";s:1:\"0\";s:10:\"become_reg\";s:1:\"0\";s:17:\"no_commission_url\";s:0:\"\";s:8:\"withdraw\";s:1:\"1\";s:14:\"commissiontype\";s:1:\"0\";s:14:\"withdrawcharge\";s:0:\"\";s:13:\"withdrawbegin\";d:0;s:11:\"withdrawend\";d:0;s:10:\"settledays\";s:0:\"\";s:8:\"levelurl\";s:0:\"\";s:9:\"leveltype\";s:1:\"0\";s:11:\"qrcodeshare\";s:1:\"0\";s:9:\"codeShare\";s:1:\"1\";s:15:\"openorderdetail\";s:1:\"0\";s:14:\"openorderbuyer\";s:1:\"0\";s:13:\"closed_qrcode\";s:1:\"0\";s:6:\"qrcode\";s:1:\"0\";s:12:\"qrcode_title\";s:0:\"\";s:14:\"qrcode_content\";s:0:\"\";s:13:\"qrcode_remark\";s:0:\"\";s:15:\"register_bottom\";s:1:\"0\";s:22:\"register_bottom_title1\";s:0:\"\";s:24:\"register_bottom_content1\";s:0:\"\";s:22:\"register_bottom_title2\";s:0:\"\";s:24:\"register_bottom_content2\";s:0:\"\";s:22:\"register_bottom_title3\";s:0:\"\";s:24:\"register_bottom_content3\";s:0:\"\";s:22:\"register_bottom_remark\";s:0:\"\";s:23:\"register_bottom_content\";s:0:\"\";s:11:\"closemyshop\";s:1:\"0\";s:12:\"select_goods\";s:1:\"0\";s:5:\"style\";s:10:\"defaultold\";s:5:\"regbg\";s:0:\"\";s:10:\"applytitle\";s:0:\"\";s:12:\"applycontent\";s:0:\"\";s:10:\"cashcredit\";i:0;s:10:\"cashweixin\";i:0;s:9:\"cashother\";i:0;s:10:\"cashalipay\";i:0;s:8:\"cashcard\";i:0;s:14:\"become_goodsid\";i:0;s:5:\"texts\";a:26:{s:5:\"agent\";s:9:\"分销商\";s:4:\"shop\";s:6:\"小店\";s:6:\"myshop\";s:12:\"我的小店\";s:6:\"center\";s:12:\"分销中心\";s:6:\"become\";s:15:\"成为分销商\";s:8:\"withdraw\";s:6:\"提现\";s:10:\"commission\";s:6:\"佣金\";s:11:\"commission1\";s:12:\"分销佣金\";s:16:\"commission_total\";s:12:\"累计佣金\";s:13:\"commission_ok\";s:15:\"可提现佣金\";s:16:\"commission_apply\";s:15:\"已申请佣金\";s:16:\"commission_check\";s:15:\"待打款佣金\";s:15:\"commission_lock\";s:15:\"未结算佣金\";s:15:\"commission_wait\";s:15:\"待收货佣金\";s:15:\"commission_fail\";s:12:\"无效佣金\";s:14:\"commission_pay\";s:18:\"成功提现佣金\";s:17:\"commission_charge\";s:21:\"扣除提现手续费\";s:17:\"commission_detail\";s:12:\"佣金明细\";s:5:\"order\";s:12:\"分销订单\";s:4:\"down\";s:6:\"下线\";s:6:\"mydown\";s:12:\"我的下线\";s:2:\"c1\";s:6:\"一级\";s:2:\"c2\";s:6:\"二级\";s:2:\"c3\";s:6:\"三级\";s:4:\"yuan\";s:3:\"元\";s:5:\"icode\";s:9:\"邀请码\";}}}');
INSERT INTO `ims_core_cache` VALUES ('ewei_shop_09110ee6c3659ae7c87f306b6c6a8616', 'a:38:{i:0;a:13:{s:2:\"id\";s:1:\"2\";s:12:\"displayorder\";s:1:\"2\";s:8:\"identity\";s:6:\"taobao\";s:8:\"category\";s:4:\"tool\";s:4:\"name\";s:12:\"商品助手\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:5:\"thumb\";s:46:\"../addons/ewei_shopv2/static/images/taobao.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"0\";}i:1;a:13:{s:2:\"id\";s:1:\"3\";s:12:\"displayorder\";s:1:\"3\";s:8:\"identity\";s:10:\"commission\";s:8:\"category\";s:3:\"biz\";s:4:\"name\";s:12:\"人人分销\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:5:\"thumb\";s:50:\"../addons/ewei_shopv2/static/images/commission.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"0\";}i:2;a:13:{s:2:\"id\";s:1:\"4\";s:12:\"displayorder\";s:1:\"4\";s:8:\"identity\";s:6:\"poster\";s:8:\"category\";s:4:\"sale\";s:4:\"name\";s:12:\"超级海报\";s:7:\"version\";s:3:\"1.2\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:5:\"thumb\";s:46:\"../addons/ewei_shopv2/static/images/poster.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"0\";}i:3;a:13:{s:2:\"id\";s:2:\"10\";s:12:\"displayorder\";s:2:\"10\";s:8:\"identity\";s:10:\"creditshop\";s:8:\"category\";s:3:\"biz\";s:4:\"name\";s:12:\"积分商城\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:5:\"thumb\";s:50:\"../addons/ewei_shopv2/static/images/creditshop.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"0\";}i:4;a:13:{s:2:\"id\";s:2:\"12\";s:12:\"displayorder\";s:2:\"11\";s:8:\"identity\";s:7:\"article\";s:8:\"category\";s:4:\"help\";s:4:\"name\";s:12:\"文章营销\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:5:\"thumb\";s:47:\"../addons/ewei_shopv2/static/images/article.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"0\";}i:5;a:13:{s:2:\"id\";s:2:\"14\";s:12:\"displayorder\";s:2:\"14\";s:8:\"identity\";s:7:\"postera\";s:8:\"category\";s:4:\"sale\";s:4:\"name\";s:12:\"活动海报\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:5:\"thumb\";s:47:\"../addons/ewei_shopv2/static/images/postera.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"0\";}i:6;a:13:{s:2:\"id\";s:2:\"16\";s:12:\"displayorder\";s:2:\"15\";s:8:\"identity\";s:7:\"diyform\";s:8:\"category\";s:4:\"help\";s:4:\"name\";s:12:\"自定表单\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:5:\"thumb\";s:47:\"../addons/ewei_shopv2/static/images/diyform.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"0\";}i:7;a:13:{s:2:\"id\";s:2:\"17\";s:12:\"displayorder\";s:2:\"16\";s:8:\"identity\";s:8:\"exhelper\";s:8:\"category\";s:4:\"help\";s:4:\"name\";s:12:\"快递助手\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:5:\"thumb\";s:48:\"../addons/ewei_shopv2/static/images/exhelper.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"0\";}i:8;a:13:{s:2:\"id\";s:2:\"18\";s:12:\"displayorder\";s:2:\"19\";s:8:\"identity\";s:6:\"groups\";s:8:\"category\";s:3:\"biz\";s:4:\"name\";s:12:\"人人拼团\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:5:\"thumb\";s:46:\"../addons/ewei_shopv2/static/images/groups.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"0\";}i:9;a:13:{s:2:\"id\";s:2:\"19\";s:12:\"displayorder\";s:2:\"20\";s:8:\"identity\";s:7:\"diypage\";s:8:\"category\";s:4:\"help\";s:4:\"name\";s:12:\"店铺装修\";s:7:\"version\";s:3:\"2.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:5:\"thumb\";s:48:\"../addons/ewei_shopv2/static/images/designer.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"0\";}i:10;a:13:{s:2:\"id\";s:2:\"20\";s:12:\"displayorder\";s:2:\"22\";s:8:\"identity\";s:8:\"globonus\";s:8:\"category\";s:3:\"biz\";s:4:\"name\";s:12:\"全民股东\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:5:\"thumb\";s:48:\"../addons/ewei_shopv2/static/images/globonus.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"0\";}i:11;a:13:{s:2:\"id\";s:2:\"21\";s:12:\"displayorder\";s:2:\"23\";s:8:\"identity\";s:5:\"merch\";s:8:\"category\";s:3:\"biz\";s:4:\"name\";s:9:\"多商户\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:5:\"thumb\";s:45:\"../addons/ewei_shopv2/static/images/merch.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"1\";}i:12;a:13:{s:2:\"id\";s:2:\"22\";s:12:\"displayorder\";s:2:\"26\";s:8:\"identity\";s:2:\"qa\";s:8:\"category\";s:4:\"help\";s:4:\"name\";s:12:\"帮助中心\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:5:\"thumb\";s:42:\"../addons/ewei_shopv2/static/images/qa.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"1\";}i:13;a:13:{s:2:\"id\";s:2:\"29\";s:12:\"displayorder\";s:2:\"26\";s:8:\"identity\";s:6:\"abonus\";s:8:\"category\";s:3:\"biz\";s:4:\"name\";s:12:\"区域代理\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:5:\"thumb\";s:46:\"../addons/ewei_shopv2/static/images/abonus.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"1\";}i:14;a:13:{s:2:\"id\";s:2:\"25\";s:12:\"displayorder\";s:2:\"29\";s:8:\"identity\";s:4:\"sign\";s:8:\"category\";s:4:\"tool\";s:4:\"name\";s:12:\"积分签到\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:5:\"thumb\";s:44:\"../addons/ewei_shopv2/static/images/sign.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"1\";}i:15;a:13:{s:2:\"id\";s:2:\"26\";s:12:\"displayorder\";s:2:\"30\";s:8:\"identity\";s:3:\"sns\";s:8:\"category\";s:4:\"sale\";s:4:\"name\";s:12:\"全民社区\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:5:\"thumb\";s:43:\"../addons/ewei_shopv2/static/images/sns.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"1\";}i:16;a:13:{s:2:\"id\";s:2:\"31\";s:12:\"displayorder\";s:2:\"34\";s:8:\"identity\";s:7:\"bargain\";s:8:\"category\";s:4:\"tool\";s:4:\"name\";s:12:\"砍价活动\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:5:\"thumb\";s:47:\"../addons/ewei_shopv2/static/images/bargain.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"1\";}i:17;a:13:{s:2:\"id\";s:2:\"32\";s:12:\"displayorder\";s:2:\"35\";s:8:\"identity\";s:4:\"task\";s:8:\"category\";s:4:\"sale\";s:4:\"name\";s:12:\"任务中心\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:5:\"thumb\";s:44:\"../addons/ewei_shopv2/static/images/task.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"1\";}i:18;a:13:{s:2:\"id\";s:2:\"33\";s:12:\"displayorder\";s:2:\"36\";s:8:\"identity\";s:7:\"cashier\";s:8:\"category\";s:3:\"biz\";s:4:\"name\";s:9:\"收银台\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:5:\"thumb\";s:47:\"../addons/ewei_shopv2/static/images/cashier.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"1\";}i:19;a:13:{s:2:\"id\";s:2:\"34\";s:12:\"displayorder\";s:2:\"37\";s:8:\"identity\";s:8:\"messages\";s:8:\"category\";s:4:\"tool\";s:4:\"name\";s:12:\"消息群发\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:5:\"thumb\";s:48:\"../addons/ewei_shopv2/static/images/messages.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"1\";}i:20;a:13:{s:2:\"id\";s:2:\"35\";s:12:\"displayorder\";s:2:\"38\";s:8:\"identity\";s:7:\"seckill\";s:8:\"category\";s:4:\"sale\";s:4:\"name\";s:12:\"整点秒杀\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:5:\"thumb\";s:47:\"../addons/ewei_shopv2/static/images/seckill.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"1\";}i:21;a:13:{s:2:\"id\";s:2:\"36\";s:12:\"displayorder\";s:2:\"39\";s:8:\"identity\";s:8:\"exchange\";s:8:\"category\";s:3:\"biz\";s:4:\"name\";s:12:\"兑换中心\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:5:\"thumb\";s:48:\"../addons/ewei_shopv2/static/images/exchange.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"1\";}i:22;a:13:{s:2:\"id\";s:2:\"37\";s:12:\"displayorder\";s:2:\"40\";s:8:\"identity\";s:7:\"lottery\";s:8:\"category\";s:3:\"biz\";s:4:\"name\";s:12:\"游戏营销\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:5:\"thumb\";s:47:\"../addons/ewei_shopv2/static/images/lottery.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"1\";}i:23;a:13:{s:2:\"id\";s:2:\"39\";s:12:\"displayorder\";s:2:\"42\";s:8:\"identity\";s:5:\"quick\";s:8:\"category\";s:3:\"biz\";s:4:\"name\";s:12:\"快速购买\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:5:\"thumb\";s:45:\"../addons/ewei_shopv2/static/images/quick.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"1\";}i:24;a:13:{s:2:\"id\";s:2:\"40\";s:12:\"displayorder\";s:2:\"43\";s:8:\"identity\";s:7:\"mmanage\";s:8:\"category\";s:4:\"tool\";s:4:\"name\";s:27:\"手机端商家管理中心\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:5:\"thumb\";s:47:\"../addons/ewei_shopv2/static/images/mmanage.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"1\";}i:25;a:13:{s:2:\"id\";s:2:\"41\";s:12:\"displayorder\";s:2:\"44\";s:8:\"identity\";s:2:\"pc\";s:8:\"category\";s:4:\"tool\";s:4:\"name\";s:5:\"PC端\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"二开\";s:6:\"status\";s:1:\"1\";s:5:\"thumb\";s:42:\"../addons/ewei_shopv2/static/images/pc.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"0\";}i:26;a:13:{s:2:\"id\";s:2:\"42\";s:12:\"displayorder\";s:2:\"45\";s:8:\"identity\";s:4:\"live\";s:8:\"category\";s:4:\"sale\";s:4:\"name\";s:12:\"互动直播\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:5:\"thumb\";s:44:\"../addons/ewei_shopv2/static/images/live.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"1\";}i:27;a:13:{s:2:\"id\";s:2:\"43\";s:12:\"displayorder\";s:2:\"46\";s:8:\"identity\";s:10:\"invitation\";s:8:\"category\";s:4:\"sale\";s:4:\"name\";s:9:\"邀请卡\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:5:\"thumb\";s:50:\"../addons/ewei_shopv2/static/images/invitation.png\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"1\";}i:28;a:13:{s:2:\"id\";s:2:\"44\";s:12:\"displayorder\";s:2:\"47\";s:8:\"identity\";s:7:\"polyapi\";s:8:\"category\";s:4:\"tool\";s:4:\"name\";s:22:\"进销存-网店管家\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:5:\"thumb\";s:47:\"../addons/ewei_shopv2/static/images/polyapi.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"1\";}i:29;a:13:{s:2:\"id\";s:2:\"50\";s:12:\"displayorder\";s:2:\"50\";s:8:\"identity\";s:3:\"app\";s:8:\"category\";s:3:\"biz\";s:4:\"name\";s:9:\"小程序\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:5:\"thumb\";s:43:\"../addons/ewei_shopv2/static/images/app.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"1\";}i:30;a:13:{s:2:\"id\";s:2:\"61\";s:12:\"displayorder\";s:2:\"51\";s:8:\"identity\";s:12:\"friendcoupon\";s:8:\"category\";s:4:\"sale\";s:4:\"name\";s:15:\"好友瓜分券\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:5:\"thumb\";s:52:\"../addons/ewei_shopv2/static/images/friendcoupon.png\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"1\";}i:31;a:13:{s:2:\"id\";s:2:\"53\";s:12:\"displayorder\";s:2:\"53\";s:8:\"identity\";s:14:\"open_messikefu\";s:8:\"category\";s:4:\"tool\";s:4:\"name\";s:12:\"聚合客服\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:5:\"thumb\";s:54:\"../addons/ewei_shopv2/static/images/open_messikefu.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"1\";}i:32;a:13:{s:2:\"id\";s:2:\"49\";s:12:\"displayorder\";s:2:\"54\";s:8:\"identity\";s:9:\"open_farm\";s:8:\"category\";s:4:\"tool\";s:4:\"name\";s:12:\"人人农场\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:5:\"thumb\";s:49:\"../addons/ewei_shopv2/static/images/open_farm.png\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"1\";}i:33;a:13:{s:2:\"id\";s:2:\"52\";s:12:\"displayorder\";s:2:\"55\";s:8:\"identity\";s:11:\"goodscircle\";s:8:\"category\";s:4:\"tool\";s:4:\"name\";s:9:\"好物圈\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:5:\"thumb\";s:51:\"../addons/ewei_shopv2/static/images/goodscircle.png\";s:4:\"desc\";s:21:\"购物版的朋友圈\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"1\";}i:34;a:13:{s:2:\"id\";s:2:\"60\";s:12:\"displayorder\";s:2:\"60\";s:8:\"identity\";s:8:\"cycelbuy\";s:8:\"category\";s:3:\"biz\";s:4:\"name\";s:9:\"周期购\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:5:\"thumb\";s:48:\"../addons/ewei_shopv2/static/images/cycelbuy.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"1\";}i:35;a:13:{s:2:\"id\";s:2:\"70\";s:12:\"displayorder\";s:2:\"70\";s:8:\"identity\";s:8:\"dividend\";s:8:\"category\";s:3:\"biz\";s:4:\"name\";s:12:\"团队分红\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:5:\"thumb\";s:48:\"../addons/ewei_shopv2/static/images/dividend.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"1\";}i:36;a:13:{s:2:\"id\";s:2:\"80\";s:12:\"displayorder\";s:2:\"80\";s:8:\"identity\";s:11:\"merchmanage\";s:8:\"category\";s:4:\"tool\";s:4:\"name\";s:24:\"多商户手机管理端\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:5:\"thumb\";s:51:\"../addons/ewei_shopv2/static/images/merchmanage.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"1\";}i:37;a:13:{s:2:\"id\";s:2:\"90\";s:12:\"displayorder\";s:2:\"90\";s:8:\"identity\";s:10:\"membercard\";s:8:\"category\";s:4:\"sale\";s:4:\"name\";s:15:\"付费会员卡\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:5:\"thumb\";s:50:\"../addons/ewei_shopv2/static/images/membercard.png\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"0\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"1\";}}');
INSERT INTO `ims_core_cache` VALUES ('ewei_shop_dc346e9297f491d3fdc6d00528479742', 'a:0:{}');
INSERT INTO `ims_core_cache` VALUES ('ewei_shop_9a52bfbf32243c1f30edc58b89a2935a', 'a:0:{}');
INSERT INTO `ims_core_cache` VALUES ('ewei_shop_a4676ec36c0e61443f52f5bf9c711135', 'a:12:{i:0;a:13:{s:2:\"id\";s:1:\"1\";s:12:\"displayorder\";s:1:\"1\";s:8:\"identity\";s:5:\"qiniu\";s:8:\"category\";s:4:\"tool\";s:4:\"name\";s:12:\"七牛存储\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:5:\"thumb\";s:45:\"../addons/ewei_shopv2/static/images/qiniu.jpg\";s:4:\"desc\";N;s:5:\"iscom\";s:1:\"1\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"0\";}i:1;a:13:{s:2:\"id\";s:1:\"5\";s:12:\"displayorder\";s:1:\"5\";s:8:\"identity\";s:6:\"verify\";s:8:\"category\";s:3:\"biz\";s:4:\"name\";s:9:\"O2O核销\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:5:\"thumb\";s:46:\"../addons/ewei_shopv2/static/images/verify.jpg\";s:4:\"desc\";N;s:5:\"iscom\";s:1:\"1\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"0\";}i:2;a:13:{s:2:\"id\";s:1:\"6\";s:12:\"displayorder\";s:1:\"6\";s:8:\"identity\";s:8:\"tmessage\";s:8:\"category\";s:4:\"tool\";s:4:\"name\";s:12:\"会员群发\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:5:\"thumb\";s:48:\"../addons/ewei_shopv2/static/images/tmessage.jpg\";s:4:\"desc\";N;s:5:\"iscom\";s:1:\"1\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"0\";}i:3;a:13:{s:2:\"id\";s:1:\"7\";s:12:\"displayorder\";s:1:\"7\";s:8:\"identity\";s:4:\"perm\";s:8:\"category\";s:4:\"help\";s:4:\"name\";s:12:\"分权系统\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:5:\"thumb\";s:44:\"../addons/ewei_shopv2/static/images/perm.jpg\";s:4:\"desc\";N;s:5:\"iscom\";s:1:\"1\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"0\";}i:4;a:13:{s:2:\"id\";s:1:\"8\";s:12:\"displayorder\";s:1:\"8\";s:8:\"identity\";s:4:\"sale\";s:8:\"category\";s:4:\"sale\";s:4:\"name\";s:9:\"营销宝\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:5:\"thumb\";s:44:\"../addons/ewei_shopv2/static/images/sale.jpg\";s:4:\"desc\";N;s:5:\"iscom\";s:1:\"1\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"0\";}i:5;a:13:{s:2:\"id\";s:2:\"11\";s:12:\"displayorder\";s:2:\"11\";s:8:\"identity\";s:7:\"virtual\";s:8:\"category\";s:3:\"biz\";s:4:\"name\";s:12:\"虚拟物品\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:5:\"thumb\";s:47:\"../addons/ewei_shopv2/static/images/virtual.jpg\";s:4:\"desc\";N;s:5:\"iscom\";s:1:\"1\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"0\";}i:6;a:13:{s:2:\"id\";s:2:\"13\";s:12:\"displayorder\";s:2:\"13\";s:8:\"identity\";s:6:\"coupon\";s:8:\"category\";s:4:\"sale\";s:4:\"name\";s:9:\"超级券\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:5:\"thumb\";s:46:\"../addons/ewei_shopv2/static/images/coupon.jpg\";s:4:\"desc\";N;s:5:\"iscom\";s:1:\"1\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"0\";}i:7;a:13:{s:2:\"id\";s:2:\"24\";s:12:\"displayorder\";s:2:\"27\";s:8:\"identity\";s:3:\"sms\";s:8:\"category\";s:4:\"tool\";s:4:\"name\";s:12:\"短信提醒\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:5:\"thumb\";s:43:\"../addons/ewei_shopv2/static/images/sms.jpg\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"1\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"1\";}i:8;a:13:{s:2:\"id\";s:2:\"27\";s:12:\"displayorder\";s:2:\"33\";s:8:\"identity\";s:3:\"wap\";s:8:\"category\";s:4:\"tool\";s:4:\"name\";s:9:\"全网通\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:5:\"thumb\";s:0:\"\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"1\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"1\";}i:9;a:13:{s:2:\"id\";s:2:\"30\";s:12:\"displayorder\";s:2:\"33\";s:8:\"identity\";s:7:\"printer\";s:8:\"category\";s:4:\"tool\";s:4:\"name\";s:15:\"小票打印机\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:5:\"thumb\";s:0:\"\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"1\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"1\";}i:10;a:13:{s:2:\"id\";s:2:\"28\";s:12:\"displayorder\";s:2:\"34\";s:8:\"identity\";s:5:\"h5app\";s:8:\"category\";s:4:\"tool\";s:4:\"name\";s:5:\"H5APP\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:5:\"thumb\";s:0:\"\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"1\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"1\";}i:11;a:13:{s:2:\"id\";s:2:\"38\";s:12:\"displayorder\";s:2:\"41\";s:8:\"identity\";s:6:\"wxcard\";s:8:\"category\";s:4:\"sale\";s:4:\"name\";s:12:\"微信卡券\";s:7:\"version\";s:3:\"1.0\";s:6:\"author\";s:6:\"官方\";s:6:\"status\";s:1:\"1\";s:5:\"thumb\";s:0:\"\";s:4:\"desc\";s:0:\"\";s:5:\"iscom\";s:1:\"1\";s:10:\"deprecated\";s:1:\"0\";s:4:\"isv2\";s:1:\"1\";}}');
INSERT INTO `ims_core_cache` VALUES ('we7:unimodules:1:', 'a:13:{s:5:\"basic\";a:1:{s:4:\"name\";s:5:\"basic\";}s:4:\"news\";a:1:{s:4:\"name\";s:4:\"news\";}s:5:\"music\";a:1:{s:4:\"name\";s:5:\"music\";}s:7:\"userapi\";a:1:{s:4:\"name\";s:7:\"userapi\";}s:8:\"recharge\";a:1:{s:4:\"name\";s:8:\"recharge\";}s:6:\"custom\";a:1:{s:4:\"name\";s:6:\"custom\";}s:6:\"images\";a:1:{s:4:\"name\";s:6:\"images\";}s:5:\"video\";a:1:{s:4:\"name\";s:5:\"video\";}s:5:\"voice\";a:1:{s:4:\"name\";s:5:\"voice\";}s:5:\"chats\";a:1:{s:4:\"name\";s:5:\"chats\";}s:6:\"wxcard\";a:1:{s:4:\"name\";s:6:\"wxcard\";}s:5:\"store\";a:1:{s:4:\"name\";s:5:\"store\";}s:11:\"ewei_shopv2\";a:1:{s:4:\"name\";s:11:\"ewei_shopv2\";}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:basic:1', 'a:1:{s:6:\"module\";s:5:\"basic\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:news:1', 'a:1:{s:6:\"module\";s:4:\"news\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:music:1', 'a:1:{s:6:\"module\";s:5:\"music\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:userapi:1', 'a:1:{s:6:\"module\";s:7:\"userapi\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:recharge:1', 'a:1:{s:6:\"module\";s:8:\"recharge\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:custom:1', 'a:1:{s:6:\"module\";s:6:\"custom\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:images:1', 'a:1:{s:6:\"module\";s:6:\"images\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:video:1', 'a:1:{s:6:\"module\";s:5:\"video\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:voice:1', 'a:1:{s:6:\"module\";s:5:\"voice\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:chats:1', 'a:1:{s:6:\"module\";s:5:\"chats\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:wxcard:1', 'a:1:{s:6:\"module\";s:6:\"wxcard\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:store:1', 'a:1:{s:6:\"module\";s:5:\"store\";}');
INSERT INTO `ims_core_cache` VALUES ('ewei_shop_02b72fcc49fb8916836f109352f05d59', 's:19:\"2019-11-29 14:30:57\";');
INSERT INTO `ims_core_cache` VALUES ('ewei_shop_52285de7717f2d78ca6623c56da33f82', 's:19:\"2019-11-29 14:30:58\";');
INSERT INTO `ims_core_cache` VALUES ('ewei_shop_6d9dad24f880dc4b0b0b68a1528dafcb', 'i:1;');
INSERT INTO `ims_core_cache` VALUES ('ewei_shop_ce4138ad491844252898277680c5efd1', 's:19:\"2019-11-29 14:30:58\";');
INSERT INTO `ims_core_cache` VALUES ('ewei_shop_106d0296ca686e59fdfbf235c85a1569', 's:19:\"2019-11-29 14:30:58\";');
INSERT INTO `ims_core_cache` VALUES ('ewei_shop_0aa5bd2cf40eb92463ab314eb7439de5', 's:19:\"2019-11-29 14:30:58\";');
INSERT INTO `ims_core_cache` VALUES ('ewei_shop_3b67348a577d9548c80c1015085a5c72', 's:19:\"2019-11-29 14:30:58\";');
INSERT INTO `ims_core_cache` VALUES ('ewei_shop_2f815720a2f517136716dbb1096bea5d', 's:19:\"2019-11-29 14:30:58\";');
INSERT INTO `ims_core_cache` VALUES ('ewei_shop_d45488b13ce1f38aa2bba754b153037f', 's:19:\"2019-11-29 14:30:58\";');
INSERT INTO `ims_core_cache` VALUES ('ewei_shop_fca370bd9101f8245049b3092dc28728', 's:19:\"2019-11-29 14:30:58\";');
INSERT INTO `ims_core_cache` VALUES ('ewei_shop_bf1951eda8ca28abc3054f913e35e382', 'a:0:{}');
INSERT INTO `ims_core_cache` VALUES ('ewei_shop_f113383f74cd42e18cafc3ceaca1627e', 's:19:\"2019-11-29 14:30:58\";');
INSERT INTO `ims_core_cache` VALUES ('ewei_shop_cf9d9a7161f9a8c1170473891684854b', 's:19:\"2019-11-29 14:30:58\";');
INSERT INTO `ims_core_cache` VALUES ('ewei_shop_0911efc078ad5f1d1b9287ef20d15ac2', 's:19:\"2019-11-29 14:30:58\";');
INSERT INTO `ims_core_cache` VALUES ('ewei_shop_38220aea94c7235faf501f4f7b391b16', 's:19:\"2019-11-29 14:30:58\";');
INSERT INTO `ims_core_cache` VALUES ('ewei_shop_ea6faf4b5220ae84fad4509b6e8af8ed', 's:19:\"2019-11-29 14:30:58\";');
INSERT INTO `ims_core_cache` VALUES ('ewei_shop_058ad67639180399913a0d37a0ce95ed', 's:19:\"2019-11-29 14:30:58\";');
INSERT INTO `ims_core_cache` VALUES ('ewei_shop_94e51808f2cdf19018593b18a0994765', 's:19:\"2019-11-29 14:30:58\";');
INSERT INTO `ims_core_cache` VALUES ('we7:system_frame:1', 'a:12:{s:8:\"platform\";a:7:{s:5:\"title\";s:6:\"平台\";s:4:\"icon\";s:14:\"wi wi-platform\";s:3:\"url\";s:44:\"./index.php?c=account&a=display&do=platform&\";s:7:\"section\";a:0:{}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:2;}s:7:\"account\";a:7:{s:5:\"title\";s:9:\"公众号\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:41:\"./index.php?c=home&a=welcome&do=platform&\";s:7:\"section\";a:5:{s:13:\"platform_plus\";a:2:{s:5:\"title\";s:12:\"增强功能\";s:4:\"menu\";a:5:{s:14:\"platform_reply\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"自动回复\";s:3:\"url\";s:31:\"./index.php?c=platform&a=reply&\";s:15:\"permission_name\";s:14:\"platform_reply\";s:4:\"icon\";s:11:\"wi wi-reply\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:13:\"platform_menu\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"自定义菜单\";s:3:\"url\";s:38:\"./index.php?c=platform&a=menu&do=post&\";s:15:\"permission_name\";s:13:\"platform_menu\";s:4:\"icon\";s:16:\"wi wi-custommenu\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"platform_qr\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:22:\"二维码/转化链接\";s:3:\"url\";s:28:\"./index.php?c=platform&a=qr&\";s:15:\"permission_name\";s:11:\"platform_qr\";s:4:\"icon\";s:12:\"wi wi-qrcode\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:17:\"platform_material\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:16:\"素材/编辑器\";s:3:\"url\";s:34:\"./index.php?c=platform&a=material&\";s:15:\"permission_name\";s:17:\"platform_material\";s:4:\"icon\";s:12:\"wi wi-redact\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{i:0;a:3:{s:5:\"title\";s:13:\"添加/编辑\";s:3:\"url\";s:39:\"./index.php?c=platform&a=material-post&\";s:15:\"permission_name\";s:13:\"material_post\";}i:1;a:2:{s:5:\"title\";s:6:\"删除\";s:15:\"permission_name\";s:24:\"platform_material_delete\";}}}s:13:\"platform_site\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:16:\"微官网-文章\";s:3:\"url\";s:38:\"./index.php?c=site&a=multi&do=display&\";s:15:\"permission_name\";s:13:\"platform_site\";s:4:\"icon\";s:10:\"wi wi-home\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}}}s:15:\"platform_module\";a:3:{s:5:\"title\";s:12:\"应用模块\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:2:\"mc\";a:2:{s:5:\"title\";s:6:\"粉丝\";s:4:\"menu\";a:2:{s:7:\"mc_fans\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"粉丝管理\";s:3:\"url\";s:24:\"./index.php?c=mc&a=fans&\";s:15:\"permission_name\";s:7:\"mc_fans\";s:4:\"icon\";s:16:\"wi wi-fansmanage\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:9:\"mc_member\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"会员管理\";s:3:\"url\";s:26:\"./index.php?c=mc&a=member&\";s:15:\"permission_name\";s:9:\"mc_member\";s:4:\"icon\";s:10:\"wi wi-fans\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"profile\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:4:{s:7:\"profile\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"参数配置\";s:3:\"url\";s:31:\"./index.php?c=profile&a=remote&\";s:15:\"permission_name\";s:15:\"profile_setting\";s:4:\"icon\";s:23:\"wi wi-parameter-setting\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:7:\"payment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"支付参数\";s:3:\"url\";s:32:\"./index.php?c=profile&a=payment&\";s:15:\"permission_name\";s:19:\"profile_pay_setting\";s:4:\"icon\";s:17:\"wi wi-pay-setting\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"app_module_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:44:\"./index.php?c=profile&a=module-link-uniacid&\";s:15:\"permission_name\";s:31:\"profile_app_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"bind_domain\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"域名绑定\";s:3:\"url\";s:36:\"./index.php?c=profile&a=bind-domain&\";s:15:\"permission_name\";s:19:\"profile_bind_domain\";s:4:\"icon\";s:17:\"wi wi-bind-domain\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:10:\"statistics\";a:2:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:2:{s:14:\"statistics_app\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:31:\"./index.php?c=statistics&a=app&\";s:15:\"permission_name\";s:14:\"statistics_app\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"statistics_fans\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"用户统计\";s:3:\"url\";s:32:\"./index.php?c=statistics&a=fans&\";s:15:\"permission_name\";s:15:\"statistics_fans\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:3;}s:5:\"wxapp\";a:7:{s:5:\"title\";s:15:\"微信小程序\";s:4:\"icon\";s:19:\"wi wi-small-routine\";s:3:\"url\";s:38:\"./index.php?c=wxapp&a=display&do=home&\";s:7:\"section\";a:5:{s:14:\"wxapp_entrance\";a:3:{s:5:\"title\";s:15:\"小程序入口\";s:4:\"menu\";a:1:{s:20:\"module_entrance_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"入口页面\";s:3:\"url\";s:36:\"./index.php?c=wxapp&a=entrance-link&\";s:15:\"permission_name\";s:19:\"wxapp_entrance_link\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:0;}s:15:\"platform_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:2:\"mc\";a:3:{s:5:\"title\";s:6:\"粉丝\";s:4:\"menu\";a:1:{s:12:\"wxapp_member\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:6:\"会员\";s:3:\"url\";s:26:\"./index.php?c=mc&a=member&\";s:15:\"permission_name\";s:12:\"wxapp_member\";s:4:\"icon\";s:10:\"wi wi-fans\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:0;}s:13:\"wxapp_profile\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:5:{s:17:\"wxapp_module_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:42:\"./index.php?c=wxapp&a=module-link-uniacid&\";s:15:\"permission_name\";s:25:\"wxapp_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:13:\"wxapp_payment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"支付参数\";s:3:\"url\";s:30:\"./index.php?c=wxapp&a=payment&\";s:15:\"permission_name\";s:13:\"wxapp_payment\";s:4:\"icon\";s:16:\"wi wi-appsetting\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:14:\"front_download\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"上传微信审核\";s:3:\"url\";s:37:\"./index.php?c=wxapp&a=front-download&\";s:15:\"permission_name\";s:20:\"wxapp_front_download\";s:4:\"icon\";s:13:\"wi wi-examine\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:17:\"parameter_setting\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"参数配置\";s:3:\"url\";s:31:\"./index.php?c=profile&a=remote&\";s:15:\"permission_name\";s:13:\"wxapp_setting\";s:4:\"icon\";s:23:\"wi wi-parameter-setting\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"wxapp_platform_material\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"素材管理\";s:3:\"url\";N;s:15:\"permission_name\";s:23:\"wxapp_platform_material\";s:4:\"icon\";N;s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:1:{i:0;a:2:{s:5:\"title\";s:6:\"删除\";s:15:\"permission_name\";s:30:\"wxapp_platform_material_delete\";}}}}}s:10:\"statistics\";a:3:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:1:{s:15:\"statistics_fans\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:33:\"./index.php?c=wxapp&a=statistics&\";s:15:\"permission_name\";s:15:\"statistics_fans\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:0;}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:4;}s:6:\"webapp\";a:7:{s:5:\"title\";s:2:\"PC\";s:4:\"icon\";s:8:\"wi wi-pc\";s:3:\"url\";s:39:\"./index.php?c=webapp&a=home&do=display&\";s:7:\"section\";a:4:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:12:\"应用模块\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:2:\"mc\";a:2:{s:5:\"title\";s:6:\"粉丝\";s:4:\"menu\";a:1:{s:9:\"mc_member\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"会员管理\";s:3:\"url\";s:26:\"./index.php?c=mc&a=member&\";s:15:\"permission_name\";s:9:\"mc_member\";s:4:\"icon\";s:10:\"wi wi-fans\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:6:\"webapp\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:3:{s:18:\"webapp_module_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:43:\"./index.php?c=webapp&a=module-link-uniacid&\";s:15:\"permission_name\";s:26:\"webapp_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:14:\"webapp_rewrite\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"伪静态\";s:3:\"url\";s:31:\"./index.php?c=webapp&a=rewrite&\";s:15:\"permission_name\";s:14:\"webapp_rewrite\";s:4:\"icon\";s:13:\"wi wi-rewrite\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:18:\"webapp_bind_domain\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"域名访问设置\";s:3:\"url\";s:35:\"./index.php?c=webapp&a=bind-domain&\";s:15:\"permission_name\";s:18:\"webapp_bind_domain\";s:4:\"icon\";s:17:\"wi wi-bind-domain\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:10:\"statistics\";a:3:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:1:{s:14:\"statistics_app\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:31:\"./index.php?c=statistics&a=app&\";s:15:\"permission_name\";s:14:\"statistics_app\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:0;}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:5;}s:8:\"phoneapp\";a:7:{s:5:\"title\";s:3:\"APP\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:41:\"./index.php?c=phoneapp&a=display&do=home&\";s:7:\"section\";a:2:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:16:\"phoneapp_profile\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:1:{s:14:\"front_download\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"下载APP\";s:3:\"url\";s:40:\"./index.php?c=phoneapp&a=front-download&\";s:15:\"permission_name\";s:23:\"phoneapp_front_download\";s:4:\"icon\";s:13:\"wi wi-examine\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:6;}s:5:\"xzapp\";a:7:{s:5:\"title\";s:9:\"熊掌号\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:38:\"./index.php?c=xzapp&a=home&do=display&\";s:7:\"section\";a:1:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:12:\"应用模块\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:7;}s:6:\"aliapp\";a:7:{s:5:\"title\";s:18:\"支付宝小程序\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:40:\"./index.php?c=miniapp&a=display&do=home&\";s:7:\"section\";a:1:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:8;}s:6:\"module\";a:7:{s:5:\"title\";s:6:\"应用\";s:4:\"icon\";s:11:\"wi wi-apply\";s:3:\"url\";s:31:\"./index.php?c=module&a=display&\";s:7:\"section\";a:0:{}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:9;}s:6:\"system\";a:7:{s:5:\"title\";s:6:\"系统\";s:4:\"icon\";s:13:\"wi wi-setting\";s:3:\"url\";s:39:\"./index.php?c=home&a=welcome&do=system&\";s:7:\"section\";a:13:{s:10:\"wxplatform\";a:2:{s:5:\"title\";s:9:\"公众号\";s:4:\"menu\";a:4:{s:14:\"system_account\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:16:\" 微信公众号\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=1\";s:15:\"permission_name\";s:14:\"system_account\";s:4:\"icon\";s:12:\"wi wi-wechat\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:21:\"公众号管理设置\";s:15:\"permission_name\";s:21:\"system_account_manage\";}i:1;a:2:{s:5:\"title\";s:15:\"添加公众号\";s:15:\"permission_name\";s:19:\"system_account_post\";}i:2;a:2:{s:5:\"title\";s:15:\"公众号停用\";s:15:\"permission_name\";s:19:\"system_account_stop\";}i:3;a:2:{s:5:\"title\";s:18:\"公众号回收站\";s:15:\"permission_name\";s:22:\"system_account_recycle\";}i:4;a:2:{s:5:\"title\";s:15:\"公众号删除\";s:15:\"permission_name\";s:21:\"system_account_delete\";}i:5;a:2:{s:5:\"title\";s:15:\"公众号恢复\";s:15:\"permission_name\";s:22:\"system_account_recover\";}}}s:13:\"system_module\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"公众号应用\";s:3:\"url\";s:60:\"./index.php?c=module&a=manage-system&support=account_support\";s:15:\"permission_name\";s:13:\"system_module\";s:4:\"icon\";s:14:\"wi wi-wx-apply\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"system_template\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"微官网模板\";s:3:\"url\";s:32:\"./index.php?c=system&a=template&\";s:15:\"permission_name\";s:15:\"system_template\";s:4:\"icon\";s:17:\"wi wi-wx-template\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"system_platform\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:19:\" 微信开放平台\";s:3:\"url\";s:32:\"./index.php?c=system&a=platform&\";s:15:\"permission_name\";s:15:\"system_platform\";s:4:\"icon\";s:20:\"wi wi-exploitsetting\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:6:\"module\";a:2:{s:5:\"title\";s:9:\"小程序\";s:4:\"menu\";a:2:{s:12:\"system_wxapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"微信小程序\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=4\";s:15:\"permission_name\";s:12:\"system_wxapp\";s:4:\"icon\";s:11:\"wi wi-wxapp\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:21:\"小程序管理设置\";s:15:\"permission_name\";s:19:\"system_wxapp_manage\";}i:1;a:2:{s:5:\"title\";s:15:\"添加小程序\";s:15:\"permission_name\";s:17:\"system_wxapp_post\";}i:2;a:2:{s:5:\"title\";s:15:\"小程序停用\";s:15:\"permission_name\";s:17:\"system_wxapp_stop\";}i:3;a:2:{s:5:\"title\";s:18:\"小程序回收站\";s:15:\"permission_name\";s:20:\"system_wxapp_recycle\";}i:4;a:2:{s:5:\"title\";s:15:\"小程序删除\";s:15:\"permission_name\";s:19:\"system_wxapp_delete\";}i:5;a:2:{s:5:\"title\";s:15:\"小程序恢复\";s:15:\"permission_name\";s:20:\"system_wxapp_recover\";}}}s:19:\"system_module_wxapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"小程序应用\";s:3:\"url\";s:58:\"./index.php?c=module&a=manage-system&support=wxapp_support\";s:15:\"permission_name\";s:19:\"system_module_wxapp\";s:4:\"icon\";s:17:\"wi wi-wxapp-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"welcome\";a:3:{s:5:\"title\";s:12:\"系统首页\";s:4:\"menu\";a:1:{s:14:\"system_welcome\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"系统首页应用\";s:3:\"url\";s:60:\"./index.php?c=module&a=manage-system&support=welcome_support\";s:15:\"permission_name\";s:14:\"system_welcome\";s:4:\"icon\";s:11:\"wi wi-wxapp\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:7:\"founder\";b:1;}s:6:\"webapp\";a:2:{s:5:\"title\";s:2:\"PC\";s:4:\"menu\";a:2:{s:13:\"system_webapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:2:\"PC\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=5\";s:15:\"permission_name\";s:13:\"system_webapp\";s:4:\"icon\";s:8:\"wi wi-pc\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:20:\"system_module_webapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:8:\"PC应用\";s:3:\"url\";s:59:\"./index.php?c=module&a=manage-system&support=webapp_support\";s:15:\"permission_name\";s:20:\"system_module_webapp\";s:4:\"icon\";s:14:\"wi wi-pc-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:8:\"phoneapp\";a:2:{s:5:\"title\";s:3:\"APP\";s:4:\"menu\";a:2:{s:15:\"system_phoneapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:3:\"APP\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=6\";s:15:\"permission_name\";s:15:\"system_phoneapp\";s:4:\"icon\";s:9:\"wi wi-app\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:22:\"system_module_phoneapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"APP应用\";s:3:\"url\";s:61:\"./index.php?c=module&a=manage-system&support=phoneapp_support\";s:15:\"permission_name\";s:22:\"system_module_phoneapp\";s:4:\"icon\";s:15:\"wi wi-app-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:5:\"xzapp\";a:2:{s:5:\"title\";s:9:\"熊掌号\";s:4:\"menu\";a:2:{s:12:\"system_xzapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"熊掌号\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=9\";s:15:\"permission_name\";s:12:\"system_xzapp\";s:4:\"icon\";s:11:\"wi wi-xzapp\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:19:\"system_module_xzapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"熊掌号应用\";s:3:\"url\";s:58:\"./index.php?c=module&a=manage-system&support=xzapp_support\";s:15:\"permission_name\";s:19:\"system_module_xzapp\";s:4:\"icon\";s:17:\"wi wi-xzapp-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:6:\"aliapp\";a:2:{s:5:\"title\";s:18:\"支付宝小程序\";s:4:\"menu\";a:2:{s:13:\"system_aliapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"支付宝小程序\";s:3:\"url\";s:46:\"./index.php?c=account&a=manage&account_type=11\";s:15:\"permission_name\";s:13:\"system_aliapp\";s:4:\"icon\";s:12:\"wi wi-aliapp\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:20:\"system_module_aliapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:24:\"支付宝小程序应用\";s:3:\"url\";s:59:\"./index.php?c=module&a=manage-system&support=aliapp_support\";s:15:\"permission_name\";s:20:\"system_module_aliapp\";s:4:\"icon\";s:18:\"wi wi-aliapp-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:4:\"user\";a:2:{s:5:\"title\";s:13:\"帐户/用户\";s:4:\"menu\";a:3:{s:9:\"system_my\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"我的帐户\";s:3:\"url\";s:29:\"./index.php?c=user&a=profile&\";s:15:\"permission_name\";s:9:\"system_my\";s:4:\"icon\";s:10:\"wi wi-user\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"system_user\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"用户管理\";s:3:\"url\";s:29:\"./index.php?c=user&a=display&\";s:15:\"permission_name\";s:11:\"system_user\";s:4:\"icon\";s:16:\"wi wi-user-group\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:7:{i:0;a:2:{s:5:\"title\";s:12:\"编辑用户\";s:15:\"permission_name\";s:16:\"system_user_post\";}i:1;a:2:{s:5:\"title\";s:12:\"审核用户\";s:15:\"permission_name\";s:17:\"system_user_check\";}i:2;a:2:{s:5:\"title\";s:12:\"店员管理\";s:15:\"permission_name\";s:17:\"system_user_clerk\";}i:3;a:2:{s:5:\"title\";s:15:\"用户回收站\";s:15:\"permission_name\";s:19:\"system_user_recycle\";}i:4;a:2:{s:5:\"title\";s:18:\"用户属性设置\";s:15:\"permission_name\";s:18:\"system_user_fields\";}i:5;a:2:{s:5:\"title\";s:31:\"用户属性设置-编辑字段\";s:15:\"permission_name\";s:23:\"system_user_fields_post\";}i:6;a:2:{s:5:\"title\";s:18:\"用户注册设置\";s:15:\"permission_name\";s:23:\"system_user_registerset\";}}}s:25:\"system_user_founder_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"副创始人组\";s:3:\"url\";s:32:\"./index.php?c=founder&a=display&\";s:15:\"permission_name\";s:21:\"system_founder_manage\";s:4:\"icon\";s:16:\"wi wi-co-founder\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:18:\"添加创始人组\";s:15:\"permission_name\";s:24:\"system_founder_group_add\";}i:1;a:2:{s:5:\"title\";s:18:\"编辑创始人组\";s:15:\"permission_name\";s:25:\"system_founder_group_post\";}i:2;a:2:{s:5:\"title\";s:18:\"删除创始人组\";s:15:\"permission_name\";s:24:\"system_founder_group_del\";}i:3;a:2:{s:5:\"title\";s:15:\"添加创始人\";s:15:\"permission_name\";s:23:\"system_founder_user_add\";}i:4;a:2:{s:5:\"title\";s:15:\"编辑创始人\";s:15:\"permission_name\";s:24:\"system_founder_user_post\";}i:5;a:2:{s:5:\"title\";s:15:\"删除创始人\";s:15:\"permission_name\";s:23:\"system_founder_user_del\";}}}}}s:10:\"permission\";a:2:{s:5:\"title\";s:12:\"权限管理\";s:4:\"menu\";a:2:{s:19:\"system_module_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"应用权限组\";s:3:\"url\";s:29:\"./index.php?c=module&a=group&\";s:15:\"permission_name\";s:19:\"system_module_group\";s:4:\"icon\";s:21:\"wi wi-appjurisdiction\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:3:{i:0;a:2:{s:5:\"title\";s:21:\"添加应用权限组\";s:15:\"permission_name\";s:23:\"system_module_group_add\";}i:1;a:2:{s:5:\"title\";s:21:\"编辑应用权限组\";s:15:\"permission_name\";s:24:\"system_module_group_post\";}i:2;a:2:{s:5:\"title\";s:21:\"删除应用权限组\";s:15:\"permission_name\";s:23:\"system_module_group_del\";}}}s:17:\"system_user_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"用户权限组\";s:3:\"url\";s:27:\"./index.php?c=user&a=group&\";s:15:\"permission_name\";s:17:\"system_user_group\";s:4:\"icon\";s:22:\"wi wi-userjurisdiction\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:3:{i:0;a:2:{s:5:\"title\";s:15:\"添加用户组\";s:15:\"permission_name\";s:21:\"system_user_group_add\";}i:1;a:2:{s:5:\"title\";s:15:\"编辑用户组\";s:15:\"permission_name\";s:22:\"system_user_group_post\";}i:2;a:2:{s:5:\"title\";s:15:\"删除用户组\";s:15:\"permission_name\";s:21:\"system_user_group_del\";}}}}}s:7:\"article\";a:2:{s:5:\"title\";s:13:\"文章/公告\";s:4:\"menu\";a:2:{s:14:\"system_article\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"文章管理\";s:3:\"url\";s:29:\"./index.php?c=article&a=news&\";s:15:\"permission_name\";s:19:\"system_article_news\";s:4:\"icon\";s:13:\"wi wi-article\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:21:\"system_article_notice\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"公告管理\";s:3:\"url\";s:31:\"./index.php?c=article&a=notice&\";s:15:\"permission_name\";s:21:\"system_article_notice\";s:4:\"icon\";s:12:\"wi wi-notice\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"message\";a:2:{s:5:\"title\";s:12:\"消息提醒\";s:4:\"menu\";a:1:{s:21:\"system_message_notice\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"消息提醒\";s:3:\"url\";s:31:\"./index.php?c=message&a=notice&\";s:15:\"permission_name\";s:21:\"system_message_notice\";s:4:\"icon\";s:10:\"wi wi-bell\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:17:\"system_statistics\";a:2:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:1:{s:23:\"system_account_analysis\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:35:\"./index.php?c=statistics&a=account&\";s:15:\"permission_name\";s:23:\"system_account_analysis\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:5:\"cache\";a:2:{s:5:\"title\";s:6:\"缓存\";s:4:\"menu\";a:1:{s:26:\"system_setting_updatecache\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"更新缓存\";s:3:\"url\";s:35:\"./index.php?c=system&a=updatecache&\";s:15:\"permission_name\";s:26:\"system_setting_updatecache\";s:4:\"icon\";s:12:\"wi wi-update\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:10;}s:4:\"site\";a:8:{s:5:\"title\";s:6:\"站点\";s:4:\"icon\";s:17:\"wi wi-system-site\";s:3:\"url\";s:28:\"./index.php?c=system&a=site&\";s:7:\"section\";a:3:{s:7:\"setting\";a:2:{s:5:\"title\";s:6:\"设置\";s:4:\"menu\";a:9:{s:19:\"system_setting_site\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"站点设置\";s:3:\"url\";s:28:\"./index.php?c=system&a=site&\";s:15:\"permission_name\";s:19:\"system_setting_site\";s:4:\"icon\";s:18:\"wi wi-site-setting\";s:12:\"displayorder\";i:9;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_setting_menu\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"菜单设置\";s:3:\"url\";s:28:\"./index.php?c=system&a=menu&\";s:15:\"permission_name\";s:19:\"system_setting_menu\";s:4:\"icon\";s:18:\"wi wi-menu-setting\";s:12:\"displayorder\";i:8;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_attachment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"附件设置\";s:3:\"url\";s:34:\"./index.php?c=system&a=attachment&\";s:15:\"permission_name\";s:25:\"system_setting_attachment\";s:4:\"icon\";s:16:\"wi wi-attachment\";s:12:\"displayorder\";i:7;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_systeminfo\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"系统信息\";s:3:\"url\";s:34:\"./index.php?c=system&a=systeminfo&\";s:15:\"permission_name\";s:25:\"system_setting_systeminfo\";s:4:\"icon\";s:17:\"wi wi-system-info\";s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_setting_logs\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"查看日志\";s:3:\"url\";s:28:\"./index.php?c=system&a=logs&\";s:15:\"permission_name\";s:19:\"system_setting_logs\";s:4:\"icon\";s:9:\"wi wi-log\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:26:\"system_setting_ipwhitelist\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:11:\"IP白名单\";s:3:\"url\";s:35:\"./index.php?c=system&a=ipwhitelist&\";s:15:\"permission_name\";s:26:\"system_setting_ipwhitelist\";s:4:\"icon\";s:8:\"wi wi-ip\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:28:\"system_setting_sensitiveword\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"过滤敏感词\";s:3:\"url\";s:37:\"./index.php?c=system&a=sensitiveword&\";s:15:\"permission_name\";s:28:\"system_setting_sensitiveword\";s:4:\"icon\";s:15:\"wi wi-sensitive\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_thirdlogin\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:25:\"用户登录/注册设置\";s:3:\"url\";s:33:\"./index.php?c=user&a=registerset&\";s:15:\"permission_name\";s:25:\"system_setting_thirdlogin\";s:4:\"icon\";s:10:\"wi wi-user\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:20:\"system_setting_oauth\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:17:\"oauth全局设置\";s:3:\"url\";s:29:\"./index.php?c=system&a=oauth&\";s:15:\"permission_name\";s:20:\"system_setting_oauth\";s:4:\"icon\";s:11:\"wi wi-oauth\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"utility\";a:2:{s:5:\"title\";s:12:\"常用工具\";s:4:\"menu\";a:5:{s:24:\"system_utility_filecheck\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"系统文件校验\";s:3:\"url\";s:33:\"./index.php?c=system&a=filecheck&\";s:15:\"permission_name\";s:24:\"system_utility_filecheck\";s:4:\"icon\";s:10:\"wi wi-file\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"system_utility_optimize\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"性能优化\";s:3:\"url\";s:32:\"./index.php?c=system&a=optimize&\";s:15:\"permission_name\";s:23:\"system_utility_optimize\";s:4:\"icon\";s:14:\"wi wi-optimize\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"system_utility_database\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"数据库\";s:3:\"url\";s:32:\"./index.php?c=system&a=database&\";s:15:\"permission_name\";s:23:\"system_utility_database\";s:4:\"icon\";s:9:\"wi wi-sql\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_utility_scan\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"木马查杀\";s:3:\"url\";s:28:\"./index.php?c=system&a=scan&\";s:15:\"permission_name\";s:19:\"system_utility_scan\";s:4:\"icon\";s:12:\"wi wi-safety\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:18:\"system_utility_bom\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"检测文件BOM\";s:3:\"url\";s:27:\"./index.php?c=system&a=bom&\";s:15:\"permission_name\";s:18:\"system_utility_bom\";s:4:\"icon\";s:9:\"wi wi-bom\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"backjob\";a:2:{s:5:\"title\";s:12:\"后台任务\";s:4:\"menu\";a:1:{s:10:\"system_job\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"后台任务\";s:3:\"url\";s:38:\"./index.php?c=system&a=job&do=display&\";s:15:\"permission_name\";s:10:\"system_job\";s:4:\"icon\";s:9:\"wi wi-job\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:7:\"founder\";b:1;s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:11;}s:4:\"help\";a:8:{s:5:\"title\";s:12:\"系统帮助\";s:4:\"icon\";s:12:\"wi wi-market\";s:3:\"url\";s:29:\"./index.php?c=help&a=display&\";s:7:\"section\";a:0:{}s:5:\"blank\";b:0;s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:12;}s:5:\"store\";a:7:{s:5:\"title\";s:6:\"商城\";s:4:\"icon\";s:11:\"wi wi-store\";s:3:\"url\";s:43:\"./index.php?c=home&a=welcome&do=ext&m=store\";s:7:\"section\";a:0:{}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:13;}}');
INSERT INTO `ims_core_cache` VALUES ('we7:stat_todaylock:1', 'a:1:{s:6:\"expire\";i:1573533888;}');
INSERT INTO `ims_core_cache` VALUES ('we7:unicount:1', 's:1:\"1\";');
INSERT INTO `ims_core_cache` VALUES ('we7:unisetting:0', 'a:0:{}');
INSERT INTO `ims_core_cache` VALUES ('we7:last_account:NwVNM', 'i:1;');

-- ----------------------------
-- Table structure for ims_core_cron
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_cron`;
CREATE TABLE `ims_core_cron`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cloudid` int(10) UNSIGNED NOT NULL,
  `module` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `filename` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lastruntime` int(10) UNSIGNED NOT NULL,
  `nextruntime` int(10) UNSIGNED NOT NULL,
  `weekday` tinyint(3) NOT NULL,
  `day` tinyint(3) NOT NULL,
  `hour` tinyint(3) NOT NULL,
  `minute` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `extra` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `createtime`(`createtime`) USING BTREE,
  INDEX `nextruntime`(`nextruntime`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `cloudid`(`cloudid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_core_cron_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_cron_record`;
CREATE TABLE `ims_core_cron_record`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `module` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tid` int(10) UNSIGNED NOT NULL,
  `note` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tag` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `tid`(`tid`) USING BTREE,
  INDEX `module`(`module`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_core_job
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_job`;
CREATE TABLE `ims_core_job`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `payload` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) NOT NULL,
  `title` varchar(22) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `handled` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `createtime` int(11) NOT NULL,
  `updatetime` int(11) NOT NULL,
  `endtime` int(11) NOT NULL,
  `isdeleted` tinyint(1) NULL DEFAULT NULL,
  `uid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_core_menu
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_menu`;
CREATE TABLE `ims_core_menu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(10) UNSIGNED NOT NULL,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `append_title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `append_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `displayorder` tinyint(3) UNSIGNED NOT NULL,
  `type` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_display` tinyint(3) UNSIGNED NOT NULL,
  `is_system` tinyint(3) UNSIGNED NOT NULL,
  `permission_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `group_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `icon` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_core_paylog
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_paylog`;
CREATE TABLE `ims_core_paylog`  (
  `plid` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uniacid` int(11) NOT NULL,
  `acid` int(10) NOT NULL,
  `openid` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uniontid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tid` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fee` decimal(10, 2) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `module` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tag` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_usecard` tinyint(3) UNSIGNED NOT NULL,
  `card_type` tinyint(3) UNSIGNED NOT NULL,
  `card_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `card_fee` decimal(10, 2) UNSIGNED NOT NULL,
  `encrypt_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`plid`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE,
  INDEX `idx_tid`(`tid`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `uniontid`(`uniontid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_core_performance
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_performance`;
CREATE TABLE `ims_core_performance`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL,
  `runtime` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `runurl` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `runsql` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_core_queue
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_queue`;
CREATE TABLE `ims_core_queue`  (
  `qid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `acid` int(10) UNSIGNED NOT NULL,
  `message` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `params` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `keyword` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `response` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `module` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL,
  `dateline` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`qid`) USING BTREE,
  INDEX `uniacid`(`uniacid`, `acid`) USING BTREE,
  INDEX `module`(`module`) USING BTREE,
  INDEX `dateline`(`dateline`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_core_refundlog
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_refundlog`;
CREATE TABLE `ims_core_refundlog`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `refund_uniontid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `reason` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uniontid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fee` decimal(10, 2) NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `refund_uniontid`(`refund_uniontid`) USING BTREE,
  INDEX `uniontid`(`uniontid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_core_resource
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_resource`;
CREATE TABLE `ims_core_resource`  (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `media_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trunk` int(10) UNSIGNED NOT NULL,
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dateline` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`mid`) USING BTREE,
  INDEX `acid`(`uniacid`) USING BTREE,
  INDEX `type`(`type`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_core_sendsms_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_sendsms_log`;
CREATE TABLE `ims_core_sendsms_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `result` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_core_sessions
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_sessions`;
CREATE TABLE `ims_core_sessions`  (
  `sid` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `data` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expiretime` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`sid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_core_sessions
-- ----------------------------
INSERT INTO `ims_core_sessions` VALUES ('2313a85828b886fae235f95181518a01', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ijRH\";i:1572925125;}', 1572928725);

-- ----------------------------
-- Table structure for ims_core_settings
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_settings`;
CREATE TABLE `ims_core_settings`  (
  `key` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_core_settings
-- ----------------------------
INSERT INTO `ims_core_settings` VALUES ('copyright', 'a:1:{s:6:\"slides\";a:3:{i:0;s:58:\"https://img.alicdn.com/tps/TB1pfG4IFXXXXc6XXXXXXXXXXXX.jpg\";i:1;s:58:\"https://img.alicdn.com/tps/TB1sXGYIFXXXXc5XpXXXXXXXXXX.jpg\";i:2;s:58:\"https://img.alicdn.com/tps/TB1h9xxIFXXXXbKXXXXXXXXXXXX.jpg\";}}');
INSERT INTO `ims_core_settings` VALUES ('authmode', 'i:1;');
INSERT INTO `ims_core_settings` VALUES ('close', 'a:2:{s:6:\"status\";s:1:\"0\";s:6:\"reason\";s:0:\"\";}');
INSERT INTO `ims_core_settings` VALUES ('register', 'a:4:{s:4:\"open\";i:1;s:6:\"verify\";i:0;s:4:\"code\";i:1;s:7:\"groupid\";i:1;}');
INSERT INTO `ims_core_settings` VALUES ('platform', 'a:5:{s:5:\"token\";s:32:\"D9KE4tp1piKakT6a1O1i1Z4heDEYyYy2\";s:14:\"encodingaeskey\";s:43:\"YYO9K9E6YyLhZD2Yj1KOY9L11E16m6ip2LyYje1dTeL\";s:9:\"appsecret\";s:0:\"\";s:5:\"appid\";s:0:\"\";s:9:\"authstate\";i:1;}');
INSERT INTO `ims_core_settings` VALUES ('module_receive_ban', 'a:0:{}');

-- ----------------------------
-- Table structure for ims_coupon_location
-- ----------------------------
DROP TABLE IF EXISTS `ims_coupon_location`;
CREATE TABLE `ims_coupon_location`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `acid` int(10) UNSIGNED NOT NULL,
  `sid` int(10) UNSIGNED NOT NULL,
  `location_id` int(10) UNSIGNED NOT NULL,
  `business_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `branch_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `province` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `city` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `district` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `longitude` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `latitude` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `telephone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `photo_list` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `avg_price` int(10) UNSIGNED NOT NULL,
  `open_time` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `recommend` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `special` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `introduction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `offset_type` tinyint(3) UNSIGNED NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`, `acid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_cover_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_cover_reply`;
CREATE TABLE `ims_cover_reply`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `multiid` int(10) UNSIGNED NOT NULL,
  `rid` int(10) UNSIGNED NOT NULL,
  `module` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `do` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `rid`(`rid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_cover_reply
-- ----------------------------
INSERT INTO `ims_cover_reply` VALUES (1, 1, 0, 7, 'mc', '', '进入个人中心', '', '', './index.php?c=mc&a=home&i=1');
INSERT INTO `ims_cover_reply` VALUES (2, 1, 1, 8, 'site', '', '进入首页', '', '', './index.php?c=home&i=1&t=1');

-- ----------------------------
-- Table structure for ims_custom_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_custom_reply`;
CREATE TABLE `ims_custom_reply`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `rid` int(10) UNSIGNED NOT NULL,
  `start1` int(10) NOT NULL,
  `end1` int(10) NOT NULL,
  `start2` int(10) NOT NULL,
  `end2` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `rid`(`rid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_ewei_message_mass_sign
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_message_mass_sign`;
CREATE TABLE `ims_ewei_message_mass_sign`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `taskid` int(11) NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `log` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE,
  INDEX `idx_taskid`(`taskid`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_message_mass_task
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_message_mass_task`;
CREATE TABLE `ims_ewei_message_mass_task`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `status` tinyint(1) NULL DEFAULT 0,
  `processnum` int(11) NULL DEFAULT 1,
  `sendnum` int(11) NULL DEFAULT 0,
  `messagetype` tinyint(1) NULL DEFAULT 0,
  `templateid` int(11) NULL DEFAULT 0,
  `resptitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `respthumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `respdesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `respurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sendlimittype` tinyint(1) NULL DEFAULT 0,
  `send_openid` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `send_level` int(11) NULL DEFAULT NULL,
  `send_group` int(11) NULL DEFAULT NULL,
  `send_agentlevel` int(11) NULL DEFAULT NULL,
  `customertype` tinyint(1) NULL DEFAULT 0,
  `resdesc2` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `pagecount` int(11) NULL DEFAULT 0,
  `successnum` int(11) NULL DEFAULT 0,
  `failnum` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_message_mass_template
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_message_mass_template`;
CREATE TABLE `ims_ewei_message_mass_template`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `template_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `first` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `firstcolor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remarkcolor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(11) NULL DEFAULT 0,
  `sendtimes` int(11) NULL DEFAULT 0,
  `sendcount` int(11) NULL DEFAULT 0,
  `miniprogram` tinyint(1) NULL DEFAULT 0,
  `appid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `pagepath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_open_farm_advertisement
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_open_farm_advertisement`;
CREATE TABLE `ims_ewei_open_farm_advertisement`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `logo` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `url` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_open_farm_chicken
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_open_farm_chicken`;
CREATE TABLE `ims_ewei_open_farm_chicken`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `openid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `portrait` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `level` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `experience` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `accelerate` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `egg_stock` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `last_egg_stock` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `feed_stock` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `bowl_stock` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `integral` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `feeding_time` datetime(0) NULL DEFAULT NULL,
  `feeding_sum` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `lay_eggs_eat` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `lay_eggs_sum` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `eat_sum` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `surprised_guard` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `create_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_open_farm_configure
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_open_farm_configure`;
CREATE TABLE `ims_ewei_open_farm_configure`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `qrcode` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `keyword` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `logo` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `describe` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `public_qrcode` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `force_follow` enum('1','0') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `create_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_open_farm_egg
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_open_farm_egg`;
CREATE TABLE `ims_ewei_open_farm_egg`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `openid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sum` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `use_sum` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` enum('是','否') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '否',
  `receive` enum('是','否') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '否',
  `use_time` datetime(0) NOT NULL,
  `create_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_open_farm_grade
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_open_farm_grade`;
CREATE TABLE `ims_ewei_open_farm_grade`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `level` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `experience` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `accelerate` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `surprised_guard` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `create_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_ewei_open_farm_indicate
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_open_farm_indicate`;
CREATE TABLE `ims_ewei_open_farm_indicate`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `image` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `describe` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_open_farm_integral
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_open_farm_integral`;
CREATE TABLE `ims_ewei_open_farm_integral`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `openid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickname` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `integral` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `egg` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `receive` enum('是','否') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '否',
  `create_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_open_farm_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_open_farm_log`;
CREATE TABLE `ims_ewei_open_farm_log`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `category` enum('获取优惠券','获取积分','获取鸡蛋','获取饲料','获取道具卡','兑换商品') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '获取优惠券',
  `describe` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_open_farm_market
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_open_farm_market`;
CREATE TABLE `ims_ewei_open_farm_market`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` enum('商品','积分') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '积分',
  `value` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `egg` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `logo` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `number` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `create_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_open_farm_mood
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_open_farm_mood`;
CREATE TABLE `ims_ewei_open_farm_mood`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `background` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `logo` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_open_farm_mood_image
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_open_farm_mood_image`;
CREATE TABLE `ims_ewei_open_farm_mood_image`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `picture` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_open_farm_notice
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_open_farm_notice`;
CREATE TABLE `ims_ewei_open_farm_notice`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_open_farm_order
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_open_farm_order`;
CREATE TABLE `ims_ewei_open_farm_order`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `openid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `market_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `market_title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receive` enum('1','0') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `create_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_open_farm_presentation
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_open_farm_presentation`;
CREATE TABLE `ims_ewei_open_farm_presentation`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `openid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_open_farm_prop
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_open_farm_prop`;
CREATE TABLE `ims_ewei_open_farm_prop`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `logo` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `deposit_max` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `day_use_max` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `effect` enum('进食加速','新单卡','其它') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '其它',
  `value` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `get_category` enum('完成任务','积分兑换','购买商品') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '完成任务',
  `get_value` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_open_farm_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_open_farm_reply`;
CREATE TABLE `ims_ewei_open_farm_reply`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `brief_introduce` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_open_farm_seting
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_open_farm_seting`;
CREATE TABLE `ims_ewei_open_farm_seting`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `eat_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `time_steal` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `steal_eat_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `eat_tips` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `warehouse` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `bowl` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `lay_eggs_eat` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `lay_eggs_tips` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `lay_eggs_number_min` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `lay_eggs_number_max` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `obtain_feed_max` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exchange_integral_max` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `feed_invalid_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `egg_invalid_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `surprised_invalid_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `eat_experience` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `rate` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00,
  `advertisement_max` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `surprised_probability` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `shop` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_open_farm_surprised
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_open_farm_surprised`;
CREATE TABLE `ims_ewei_open_farm_surprised`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `category` enum('优惠券','积分') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '优惠券',
  `value` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `probability` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `create_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_open_farm_task
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_open_farm_task`;
CREATE TABLE `ims_ewei_open_farm_task`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `logo` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `feed` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `order_feed` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `money_feed` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00,
  `goods_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `goods_feed` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `get_max` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `core` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `core_feed` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `member_level` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `member_level_feed` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `start_time` datetime(0) NOT NULL,
  `end_time` datetime(0) NOT NULL,
  `category` enum('签到','任务中心','购买商品','商城下单','会员领取') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '签到',
  `create_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_open_farm_threshold
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_open_farm_threshold`;
CREATE TABLE `ims_ewei_open_farm_threshold`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `free` enum('1','0') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goods` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `level` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `consumption` enum('1','0') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_ewei_open_farm_user
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_open_farm_user`;
CREATE TABLE `ims_ewei_open_farm_user`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `openid` varchar(56) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tofakeid` varchar(56) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `follow` enum('0','1') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1',
  `consume` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00,
  `parent_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `portrait` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `autograph` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `sex` enum('男','女') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '男',
  `birthday` date NULL DEFAULT NULL,
  `distribution` enum('0','1') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1',
  `create_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_open_farm_user_friend
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_open_farm_user_friend`;
CREATE TABLE `ims_ewei_open_farm_user_friend`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `active_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `active_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `active_openid` varchar(56) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `active_tofakeid` varchar(56) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `passive_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `passive_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `passive_openid` varchar(56) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `passive_tofakeid` varchar(56) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `agree` enum('是','等待中','否') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '等待中',
  `create_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_open_farm_user_prop
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_open_farm_user_prop`;
CREATE TABLE `ims_ewei_open_farm_user_prop`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `prop_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `total` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `create_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_ewei_open_farm_user_surprised
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_open_farm_user_surprised`;
CREATE TABLE `ims_ewei_open_farm_user_surprised`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `openid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `surprised_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` enum('是','否') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '否',
  `use` enum('是','否') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '否',
  `receive` enum('是','否') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '否',
  `use_time` datetime(0) NOT NULL,
  `create_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_open_farm_user_task
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_open_farm_user_task`;
CREATE TABLE `ims_ewei_open_farm_user_task`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `openid` varchar(56) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `task_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `rid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `order_sum` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `order_money` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00,
  `goods_sum` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` enum('进行中','已完成','已领取') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '进行中',
  `create_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_abonus_bill
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_abonus_bill`;
CREATE TABLE `ims_ewei_shop_abonus_bill`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `billno` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `paytype` int(11) NULL DEFAULT 0,
  `year` int(11) NULL DEFAULT 0,
  `month` int(11) NULL DEFAULT 0,
  `week` int(11) NULL DEFAULT 0,
  `ordercount` int(11) NULL DEFAULT 0,
  `ordermoney` decimal(10, 2) NULL DEFAULT 0.00,
  `paytime` int(11) NULL DEFAULT 0,
  `aagentcount1` int(11) NULL DEFAULT 0,
  `aagentcount2` int(11) NULL DEFAULT 0,
  `aagentcount3` int(11) NULL DEFAULT 0,
  `bonusmoney1` decimal(10, 2) NULL DEFAULT 0.00,
  `bonusmoney_send1` decimal(10, 2) NULL DEFAULT 0.00,
  `bonusmoney_pay1` decimal(10, 2) NULL DEFAULT 0.00,
  `bonusmoney2` decimal(10, 2) NULL DEFAULT 0.00,
  `bonusmoney_send2` decimal(10, 2) NULL DEFAULT 0.00,
  `bonusmoney_pay2` decimal(10, 2) NULL DEFAULT 0.00,
  `bonusmoney3` decimal(10, 2) NULL DEFAULT 0.00,
  `bonusmoney_send3` decimal(10, 2) NULL DEFAULT 0.00,
  `bonusmoney_pay3` decimal(10, 2) NULL DEFAULT 0.00,
  `createtime` int(11) NULL DEFAULT 0,
  `status` tinyint(3) NULL DEFAULT 0,
  `starttime` int(11) NULL DEFAULT 0,
  `endtime` int(11) NULL DEFAULT 0,
  `confirmtime` int(11) NULL DEFAULT 0,
  `ceshi` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_paytype`(`paytype`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE,
  INDEX `idx_paytime`(`paytime`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_month`(`month`) USING BTREE,
  INDEX `idx_week`(`week`) USING BTREE,
  INDEX `idx_year`(`year`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_abonus_billo
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_abonus_billo`;
CREATE TABLE `ims_ewei_shop_abonus_billo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `billid` int(11) NULL DEFAULT 0,
  `orderid` int(11) NULL DEFAULT 0,
  `ordermoney` decimal(10, 2) NULL DEFAULT 0.00,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_billid`(`billid`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_ewei_shop_abonus_billp
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_abonus_billp`;
CREATE TABLE `ims_ewei_shop_abonus_billp`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `billid` int(11) NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `payno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `paytype` tinyint(3) NULL DEFAULT 0,
  `bonus1` decimal(10, 4) NULL DEFAULT 0.0000,
  `bonus2` decimal(10, 4) NULL DEFAULT 0.0000,
  `bonus3` decimal(10, 4) NULL DEFAULT 0.0000,
  `money1` decimal(10, 2) NULL DEFAULT 0.00,
  `realmoney1` decimal(10, 2) NULL DEFAULT 0.00,
  `paymoney1` decimal(10, 2) NULL DEFAULT 0.00,
  `money2` decimal(10, 2) NULL DEFAULT 0.00,
  `realmoney2` decimal(10, 2) NULL DEFAULT 0.00,
  `paymoney2` decimal(10, 2) NULL DEFAULT 0.00,
  `money3` decimal(10, 2) NULL DEFAULT 0.00,
  `realmoney3` decimal(10, 2) NULL DEFAULT 0.00,
  `paymoney3` decimal(10, 2) NULL DEFAULT 0.00,
  `chargemoney1` decimal(10, 2) NULL DEFAULT 0.00,
  `chargemoney2` decimal(10, 2) NULL DEFAULT 0.00,
  `chargemoney3` decimal(10, 2) NULL DEFAULT 0.00,
  `charge` decimal(10, 2) NULL DEFAULT 0.00,
  `status` tinyint(3) NULL DEFAULT 0,
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `paytime` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_billid`(`billid`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_abonus_level
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_abonus_level`;
CREATE TABLE `ims_ewei_shop_abonus_level`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `levelname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `bonus1` decimal(10, 4) NULL DEFAULT 0.0000,
  `bonus2` decimal(10, 4) NULL DEFAULT 0.0000,
  `bonus3` decimal(10, 4) NULL DEFAULT 0.0000,
  `ordermoney` decimal(10, 2) NULL DEFAULT 0.00,
  `ordercount` int(11) NULL DEFAULT 0,
  `bonusmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `downcount` int(11) NULL DEFAULT 0,
  `commissionmoney` decimal(10, 2) NULL DEFAULT 0.00,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_address_applyfor
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_address_applyfor`;
CREATE TABLE `ims_ewei_shop_address_applyfor`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT NULL,
  `openid` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `orderid` int(11) NULL DEFAULT NULL,
  `ordersn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isdispose` tinyint(1) NULL DEFAULT 0,
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` int(11) NULL DEFAULT NULL,
  `ispass` tinyint(1) NULL DEFAULT 0,
  `isdelete` tinyint(4) NULL DEFAULT 0,
  `isall` tinyint(4) NULL DEFAULT 0,
  `old_address` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `cycleid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_adv
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_adv`;
CREATE TABLE `ims_ewei_shop_adv`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `advname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `displayorder` int(11) NULL DEFAULT 0,
  `enabled` int(11) NULL DEFAULT 0,
  `shopid` int(11) NULL DEFAULT 0,
  `iswxapp` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_enabled`(`enabled`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_area_config
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_area_config`;
CREATE TABLE `ims_ewei_shop_area_config`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `new_area` tinyint(3) NOT NULL DEFAULT 0,
  `address_street` tinyint(3) NOT NULL DEFAULT 0,
  `createtime` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_ewei_shop_article
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_article`;
CREATE TABLE `ims_ewei_shop_article`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `resp_desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `resp_img` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `article_content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `article_category` int(11) NOT NULL DEFAULT 0,
  `article_date_v` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `article_date` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `article_mp` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `article_author` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `article_readnum_v` int(11) NOT NULL DEFAULT 0,
  `article_readnum` int(11) NOT NULL DEFAULT 0,
  `article_likenum_v` int(11) NOT NULL DEFAULT 0,
  `article_likenum` int(11) NOT NULL DEFAULT 0,
  `article_linkurl` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `article_rule_daynum` int(11) NOT NULL DEFAULT 0,
  `article_rule_allnum` int(11) NOT NULL DEFAULT 0,
  `article_rule_credit` int(11) NOT NULL DEFAULT 0,
  `article_rule_money` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `page_set_option_nocopy` int(1) NOT NULL DEFAULT 0,
  `page_set_option_noshare_tl` int(1) NOT NULL DEFAULT 0,
  `page_set_option_noshare_msg` int(1) NOT NULL DEFAULT 0,
  `article_keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `article_report` int(1) NOT NULL DEFAULT 0,
  `product_advs_type` int(1) NOT NULL DEFAULT 0,
  `product_advs_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `product_advs_more` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `product_advs_link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `product_advs` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `article_state` int(1) NOT NULL DEFAULT 0,
  `network_attachment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `article_rule_credittotal` int(11) NULL DEFAULT 0,
  `article_rule_moneytotal` decimal(10, 2) NULL DEFAULT 0.00,
  `article_rule_credit2` int(11) NOT NULL DEFAULT 0,
  `article_rule_money2` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `article_rule_creditm` int(11) NOT NULL DEFAULT 0,
  `article_rule_moneym` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `article_rule_creditm2` int(11) NOT NULL DEFAULT 0,
  `article_rule_moneym2` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `article_readtime` int(11) NULL DEFAULT 0,
  `article_areas` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `article_endtime` int(11) NULL DEFAULT 0,
  `article_hasendtime` tinyint(3) NULL DEFAULT 0,
  `displayorder` int(11) NULL DEFAULT 0,
  `article_keyword2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `article_advance` int(11) NULL DEFAULT 0,
  `article_virtualadd` tinyint(3) NULL DEFAULT 0,
  `article_visit` tinyint(3) NULL DEFAULT 0,
  `article_visit_level` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `article_visit_tip` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_article_title`(`article_title`) USING BTREE,
  INDEX `idx_article_content`(`article_content`(10)) USING BTREE,
  INDEX `idx_article_keyword`(`article_keyword`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '营销文章' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_article_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_article_category`;
CREATE TABLE `ims_ewei_shop_article_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `displayorder` int(11) NOT NULL DEFAULT 0,
  `isshow` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_category_name`(`category_name`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '营销表单分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_article_comment
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_article_comment`;
CREATE TABLE `ims_ewei_shop_article_comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `articleid` int(11) NULL DEFAULT 0,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `headimgurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `reply_createtime` int(11) NULL DEFAULT NULL,
  `createtime` int(11) NULL DEFAULT 0,
  `deleted` tinyint(3) NULL DEFAULT 0,
  `status` tinyint(1) NULL DEFAULT 0,
  `reply_content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_article_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_article_log`;
CREATE TABLE `ims_ewei_shop_article_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) NOT NULL DEFAULT 0,
  `read` int(11) NOT NULL DEFAULT 0,
  `like` int(11) NOT NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `uniacid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_aid`(`aid`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 621 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '点赞/阅读记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_article_report
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_article_report`;
CREATE TABLE `ims_ewei_shop_article_report`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) NOT NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `aid` int(11) NULL DEFAULT 0,
  `cate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `cons` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `uniacid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户举报记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_article_share
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_article_share`;
CREATE TABLE `ims_ewei_shop_article_share`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) NOT NULL DEFAULT 0,
  `share_user` int(11) NOT NULL DEFAULT 0,
  `click_user` int(11) NOT NULL DEFAULT 0,
  `click_date` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `add_credit` int(11) NOT NULL DEFAULT 0,
  `add_money` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_aid`(`aid`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 63 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户分享数据' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_article_sys
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_article_sys`;
CREATE TABLE `ims_ewei_shop_article_sys`  (
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `article_message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `article_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `article_image` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `article_shownum` int(11) NOT NULL DEFAULT 0,
  `article_keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `article_temp` int(11) NOT NULL DEFAULT 0,
  `article_close_advanced` tinyint(1) NOT NULL DEFAULT 1,
  `article_source` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uniacid`) USING BTREE,
  INDEX `idx_article_message`(`article_message`) USING BTREE,
  INDEX `idx_article_keyword`(`article_keyword`) USING BTREE,
  INDEX `idx_article_title`(`article_title`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文章设置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_author_bill
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_author_bill`;
CREATE TABLE `ims_ewei_shop_author_bill`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `billno` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `paytype` int(11) NULL DEFAULT 0,
  `year` int(11) NULL DEFAULT 0,
  `month` int(11) NULL DEFAULT 0,
  `week` int(11) NULL DEFAULT 0,
  `ordercount` int(11) NULL DEFAULT 0,
  `ordermoney` decimal(10, 2) NULL DEFAULT 0.00,
  `bonusordermoney` decimal(10, 2) NULL DEFAULT 0.00,
  `bonusrate` decimal(10, 2) NULL DEFAULT 0.00,
  `bonusmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `bonusmoney_send` decimal(10, 2) NULL DEFAULT 0.00,
  `bonusmoney_pay` decimal(10, 2) NULL DEFAULT 0.00,
  `paytime` int(11) NULL DEFAULT 0,
  `partnercount` int(11) NULL DEFAULT 0,
  `createtime` int(11) NULL DEFAULT 0,
  `status` tinyint(3) NULL DEFAULT 0,
  `starttime` int(11) NULL DEFAULT 0,
  `endtime` int(11) NULL DEFAULT 0,
  `confirmtime` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_paytype`(`paytype`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE,
  INDEX `idx_paytime`(`paytime`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_month`(`month`) USING BTREE,
  INDEX `idx_week`(`week`) USING BTREE,
  INDEX `idx_year`(`year`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_author_billo
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_author_billo`;
CREATE TABLE `ims_ewei_shop_author_billo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `billid` int(11) NULL DEFAULT 0,
  `authorid` int(11) NULL DEFAULT NULL,
  `orderid` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ordermoney` decimal(10, 2) NULL DEFAULT 0.00,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_billid`(`billid`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_author_billp
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_author_billp`;
CREATE TABLE `ims_ewei_shop_author_billp`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `billid` int(11) NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `payno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `paytype` tinyint(3) NULL DEFAULT 0,
  `bonus` decimal(10, 2) NULL DEFAULT 0.00,
  `money` decimal(10, 2) NULL DEFAULT 0.00,
  `realmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `paymoney` decimal(10, 2) NULL DEFAULT 0.00,
  `charge` decimal(10, 2) NULL DEFAULT 0.00,
  `chargemoney` decimal(10, 2) NULL DEFAULT 0.00,
  `status` tinyint(3) NULL DEFAULT 0,
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `paytime` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_billid`(`billid`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_author_level
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_author_level`;
CREATE TABLE `ims_ewei_shop_author_level`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `levelname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `bonus` decimal(10, 4) NULL DEFAULT 0.0000,
  `ordermoney` decimal(10, 2) NULL DEFAULT 0.00,
  `ordercount` int(11) NULL DEFAULT 0,
  `commissionmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `bonusmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `downcount` int(11) NULL DEFAULT 0,
  `bonus_fg` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_author_team
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_author_team`;
CREATE TABLE `ims_ewei_shop_author_team`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `teamno` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `year` int(11) NULL DEFAULT 0,
  `month` int(11) NULL DEFAULT 0,
  `team_count` int(11) NULL DEFAULT 0,
  `team_ids` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `status` tinyint(1) NULL DEFAULT 0,
  `createtime` int(11) NULL DEFAULT 0,
  `paytime` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `teamno`(`teamno`) USING BTREE,
  INDEX `year`(`year`) USING BTREE,
  INDEX `month`(`month`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `createtime`(`createtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_author_team_pay
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_author_team_pay`;
CREATE TABLE `ims_ewei_shop_author_team_pay`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `teamid` int(11) NULL DEFAULT 0,
  `mid` int(11) NULL DEFAULT 0,
  `payno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `money` decimal(10, 2) NULL DEFAULT 0.00,
  `paymoney` decimal(10, 2) NULL DEFAULT 0.00,
  `paytime` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_teamid`(`teamid`) USING BTREE,
  INDEX `idx_mid`(`mid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_banner
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_banner`;
CREATE TABLE `ims_ewei_shop_banner`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `bannername` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `displayorder` int(11) NULL DEFAULT 0,
  `enabled` int(11) NULL DEFAULT 0,
  `shopid` int(11) NULL DEFAULT 0,
  `iswxapp` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_enabled`(`enabled`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_bargain_account
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_bargain_account`;
CREATE TABLE `ims_ewei_shop_bargain_account`  (
  `id` int(11) NOT NULL,
  `mall_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `banner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mall_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mall_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mall_logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `message` int(11) NULL DEFAULT 0,
  `partin` int(11) NULL DEFAULT 0,
  `rule` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `end_message` int(11) NULL DEFAULT 0,
  `follow_swi` tinyint(1) NOT NULL DEFAULT 0,
  `sharestyle` tinyint(1) NOT NULL DEFAULT 0
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_bargain_actor
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_bargain_actor`;
CREATE TABLE `ims_ewei_shop_bargain_actor`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL,
  `now_price` decimal(9, 2) NOT NULL,
  `created_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `bargain_times` int(10) NOT NULL,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `head_image` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bargain_price` decimal(9, 2) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `account_id` int(11) NOT NULL,
  `initiate` tinyint(4) NOT NULL DEFAULT 0,
  `order` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE,
  INDEX `idx_account_id`(`account_id`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_bargain_goods
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_bargain_goods`;
CREATE TABLE `ims_ewei_shop_bargain_goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `goods_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `end_price` decimal(10, 2) NOT NULL,
  `start_time` datetime(0) NOT NULL,
  `end_time` datetime(0) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `type` tinyint(2) NOT NULL,
  `user_set` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `rule` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `act_times` int(11) NOT NULL,
  `mode` tinyint(4) NOT NULL,
  `total_time` int(11) NOT NULL,
  `each_time` int(11) NOT NULL,
  `time_limit` int(11) NOT NULL,
  `probability` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `custom` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `maximum` int(11) NULL DEFAULT NULL,
  `initiate` tinyint(4) NOT NULL DEFAULT 0,
  `myself` tinyint(3) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `goods_id`(`goods_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_bargain_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_bargain_record`;
CREATE TABLE `ims_ewei_shop_bargain_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `actor_id` int(11) NOT NULL,
  `bargain_price` decimal(9, 2) NOT NULL,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `head_image` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bargain_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE,
  INDEX `idx_actor_id`(`actor_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_carrier
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_carrier`;
CREATE TABLE `ims_ewei_shop_carrier`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `realname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `mobile` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `deleted` tinyint(1) NULL DEFAULT 0,
  `createtime` int(11) NULL DEFAULT 0,
  `displayorder` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_deleted`(`deleted`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_cashier_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_cashier_category`;
CREATE TABLE `ims_ewei_shop_cashier_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `catename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `createtime` int(11) NULL DEFAULT 0,
  `status` tinyint(1) NULL DEFAULT 0,
  `displayorder` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_cashier_clearing
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_cashier_clearing`;
CREATE TABLE `ims_ewei_shop_cashier_clearing`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `cashierid` int(11) NULL DEFAULT 0,
  `clearno` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `status` tinyint(3) NULL DEFAULT 0,
  `money` decimal(10, 2) NULL DEFAULT 0.00,
  `realmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `orderids` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `createtime` int(11) NULL DEFAULT 0,
  `paytime` int(11) NULL DEFAULT 0,
  `deleted` tinyint(3) NULL DEFAULT 0,
  `paytype` tinyint(1) NULL DEFAULT 0,
  `payinfo` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `charge` decimal(10, 2) NULL DEFAULT 0.00,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `storeid`(`cashierid`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `createtime`(`createtime`) USING BTREE,
  INDEX `deleted`(`deleted`) USING BTREE,
  INDEX `clearno`(`clearno`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_cashier_goods
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_cashier_goods`;
CREATE TABLE `ims_ewei_shop_cashier_goods`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `cashierid` int(11) NULL DEFAULT 0,
  `createtime` int(10) UNSIGNED NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `categoryid` tinyint(1) NULL DEFAULT 0,
  `price` decimal(10, 2) NULL DEFAULT 0.00,
  `total` int(11) NULL DEFAULT 0,
  `status` tinyint(1) NULL DEFAULT 0,
  `goodssn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `cashierid`(`cashierid`) USING BTREE,
  INDEX `goodssn`(`goodssn`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_cashier_goods_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_cashier_goods_category`;
CREATE TABLE `ims_ewei_shop_cashier_goods_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `cashierid` int(11) NULL DEFAULT 0,
  `catename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `createtime` int(11) NULL DEFAULT 0,
  `status` tinyint(1) NULL DEFAULT 0,
  `displayorder` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_cashierid`(`cashierid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_cashier_operator
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_cashier_operator`;
CREATE TABLE `ims_ewei_shop_cashier_operator`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `cashierid` int(11) NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `manageopenid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `salt` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `perm` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `createtime` int(10) UNSIGNED NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `cashierid`(`cashierid`) USING BTREE,
  INDEX `manageopenid`(`manageopenid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_cashier_order
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_cashier_order`;
CREATE TABLE `ims_ewei_shop_cashier_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `ordersn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `price` decimal(10, 2) NULL DEFAULT 0.00,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `payopenid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `createtime` int(10) UNSIGNED NULL DEFAULT 0,
  `status` tinyint(4) NULL DEFAULT 0,
  `paytime` int(10) UNSIGNED NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_cashier_pay_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_cashier_pay_log`;
CREATE TABLE `ims_ewei_shop_cashier_pay_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `cashierid` int(11) NULL DEFAULT 0,
  `operatorid` int(11) NULL DEFAULT 0,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `paytype` tinyint(3) NULL DEFAULT NULL,
  `logno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `createtime` int(11) NULL DEFAULT 0,
  `status` int(11) NULL DEFAULT 0,
  `money` decimal(10, 2) NULL DEFAULT 0.00,
  `paytime` int(11) NULL DEFAULT 0,
  `is_applypay` tinyint(1) NULL DEFAULT 0,
  `randommoney` decimal(10, 2) NULL DEFAULT 0.00,
  `enough` decimal(10, 2) NULL DEFAULT 0.00,
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `deduction` decimal(10, 2) NULL DEFAULT 0.00,
  `discountmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `discount` decimal(5, 2) NULL DEFAULT 0.00,
  `isgoods` tinyint(1) NULL DEFAULT 0,
  `orderid` int(11) NULL DEFAULT 0,
  `orderprice` decimal(10, 2) NULL DEFAULT 0.00,
  `goodsprice` decimal(10, 2) NULL DEFAULT 0.00,
  `couponpay` decimal(10, 2) NULL DEFAULT 0.00,
  `payopenid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `nosalemoney` decimal(10, 2) NULL DEFAULT 0.00,
  `coupon` int(11) NULL DEFAULT 0,
  `usecoupon` int(11) NULL DEFAULT 0,
  `usecouponprice` decimal(10, 2) NULL DEFAULT 0.00,
  `present_credit1` int(11) NULL DEFAULT 0,
  `refundsn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `refunduser` int(11) NULL DEFAULT 0,
  `client_ip` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_type`(`paytype`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_storeid`(`cashierid`) USING BTREE,
  INDEX `idx_logno`(`logno`) USING BTREE,
  INDEX `is_applypay`(`is_applypay`) USING BTREE,
  INDEX `orderid`(`orderid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_cashier_pay_log_goods
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_cashier_pay_log_goods`;
CREATE TABLE `ims_ewei_shop_cashier_pay_log_goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cashierid` int(11) NULL DEFAULT 0,
  `logid` int(11) NULL DEFAULT 0,
  `goodsid` int(11) NULL DEFAULT 0,
  `price` decimal(10, 2) NULL DEFAULT 0.00,
  `total` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `logid`(`logid`) USING BTREE,
  INDEX `goodsid`(`goodsid`) USING BTREE,
  INDEX `cashierid`(`cashierid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_ewei_shop_cashier_qrcode
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_cashier_qrcode`;
CREATE TABLE `ims_ewei_shop_cashier_qrcode`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `cashierid` int(11) NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `goodstitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `money` decimal(10, 2) NULL DEFAULT 0.00,
  `createtime` int(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `cashierid`(`cashierid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_cashier_randommoney_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_cashier_randommoney_log`;
CREATE TABLE `ims_ewei_shop_cashier_randommoney_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `cashierid` int(11) NULL DEFAULT 0,
  `clientip` int(11) UNSIGNED NULL DEFAULT 0,
  `ordermoney` decimal(10, 2) NULL DEFAULT 0.00,
  `randommoney` decimal(10, 2) NULL DEFAULT 0.00,
  `expires_time` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_storeid`(`cashierid`) USING BTREE,
  INDEX `idx_clientip`(`clientip`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_ewei_shop_cashier_user
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_cashier_user`;
CREATE TABLE `ims_ewei_shop_cashier_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `storeid` int(11) NULL DEFAULT 0,
  `merchid` int(11) NULL DEFAULT 0,
  `setmeal` tinyint(3) NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `manageopenid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `isopen_commission` tinyint(1) NULL DEFAULT 0,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `mobile` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `categoryid` int(11) NULL DEFAULT 0,
  `wechat_status` tinyint(1) NULL DEFAULT 0,
  `wechatpay` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `alipay_status` tinyint(1) NULL DEFAULT 0,
  `alipay` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `withdraw` decimal(10, 2) NULL DEFAULT 0.00,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `diyformfields` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `diyformdata` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `createtime` int(11) NULL DEFAULT 0,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `salt` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `lifetimestart` int(10) UNSIGNED NULL DEFAULT 0,
  `lifetimeend` int(10) UNSIGNED NULL DEFAULT 0,
  `status` tinyint(1) NULL DEFAULT 0,
  `set` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `deleted` tinyint(1) NULL DEFAULT 0,
  `can_withdraw` tinyint(1) NULL DEFAULT 0,
  `show_paytype` tinyint(1) NULL DEFAULT 0,
  `couponid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `management` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `notice_openids` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `openid`(`manageopenid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE,
  INDEX `status`(`status`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_category`;
CREATE TABLE `ims_ewei_shop_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parentid` int(11) NULL DEFAULT 0,
  `isrecommand` int(10) NULL DEFAULT 0,
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `displayorder` tinyint(3) UNSIGNED NULL DEFAULT 0,
  `enabled` tinyint(1) NULL DEFAULT 1,
  `ishome` tinyint(3) NULL DEFAULT 0,
  `advimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `advurl` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `level` tinyint(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE,
  INDEX `idx_enabled`(`enabled`) USING BTREE,
  INDEX `idx_parentid`(`parentid`) USING BTREE,
  INDEX `idx_isrecommand`(`isrecommand`) USING BTREE,
  INDEX `idx_ishome`(`ishome`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1174 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_city_express
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_city_express`;
CREATE TABLE `ims_ewei_shop_city_express`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `merchid` int(11) NULL DEFAULT 0,
  `start_fee` decimal(10, 2) NULL DEFAULT 0.00,
  `start_km` int(11) NULL DEFAULT 0,
  `pre_km` int(11) NULL DEFAULT 0,
  `pre_km_fee` decimal(10, 2) NULL DEFAULT 0.00,
  `fixed_km` int(11) NULL DEFAULT 0,
  `fixed_fee` decimal(10, 2) NULL DEFAULT 0.00,
  `receive_goods` int(11) NULL DEFAULT NULL,
  `lng` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `lat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `range` int(11) NULL DEFAULT 0,
  `zoom` int(11) NOT NULL DEFAULT 13,
  `express_type` int(11) NOT NULL DEFAULT 0,
  `config` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `tel1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `tel2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `is_sum` tinyint(1) NULL DEFAULT 0,
  `is_dispatch` tinyint(1) NULL DEFAULT 1,
  `enabled` tinyint(1) NULL DEFAULT 0,
  `geo_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_commission_apply
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_commission_apply`;
CREATE TABLE `ims_ewei_shop_commission_apply`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `applyno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `mid` int(11) NULL DEFAULT 0,
  `type` tinyint(3) NULL DEFAULT 0,
  `orderids` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `commission` decimal(10, 2) NULL DEFAULT 0.00,
  `commission_pay` decimal(10, 2) NULL DEFAULT 0.00,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `status` tinyint(3) NULL DEFAULT 0,
  `applytime` int(11) NULL DEFAULT 0,
  `checktime` int(11) NULL DEFAULT 0,
  `paytime` int(11) NULL DEFAULT 0,
  `invalidtime` int(11) NULL DEFAULT 0,
  `refusetime` int(11) NULL DEFAULT 0,
  `realmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `charge` decimal(10, 2) NULL DEFAULT 0.00,
  `deductionmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `beginmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `endmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `alipay` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `bankname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `bankcard` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `realname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `repurchase` decimal(10, 2) NULL DEFAULT 0.00,
  `alipay1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `bankname1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `bankcard1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `sendmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `senddata` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_mid`(`mid`) USING BTREE,
  INDEX `idx_checktime`(`checktime`) USING BTREE,
  INDEX `idx_paytime`(`paytime`) USING BTREE,
  INDEX `idx_applytime`(`applytime`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_invalidtime`(`invalidtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_commission_bank
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_commission_bank`;
CREATE TABLE `ims_ewei_shop_commission_bank`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `bankname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `displayorder` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_commission_clickcount
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_commission_clickcount`;
CREATE TABLE `ims_ewei_shop_commission_clickcount`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `from_openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `clicktime` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE,
  INDEX `idx_from_openid`(`from_openid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 301 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_commission_level
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_commission_level`;
CREATE TABLE `ims_ewei_shop_commission_level`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `levelname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `commission1` decimal(10, 2) NULL DEFAULT 0.00,
  `commission2` decimal(10, 2) NULL DEFAULT 0.00,
  `commission3` decimal(10, 2) NULL DEFAULT 0.00,
  `commissionmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `ordermoney` decimal(10, 2) NULL DEFAULT 0.00,
  `downcount` int(11) NULL DEFAULT 0,
  `ordercount` int(11) NULL DEFAULT 0,
  `withdraw` decimal(10, 2) NULL DEFAULT 0.00,
  `repurchase` decimal(10, 2) NULL DEFAULT 0.00,
  `goodsids` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `goodsids_text` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `level` int(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_commission_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_commission_log`;
CREATE TABLE `ims_ewei_shop_commission_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `applyid` int(11) NULL DEFAULT 0,
  `mid` int(11) NULL DEFAULT 0,
  `commission` decimal(10, 2) NULL DEFAULT 0.00,
  `createtime` int(11) NULL DEFAULT 0,
  `commission_pay` decimal(10, 2) NULL DEFAULT 0.00,
  `realmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `charge` decimal(10, 2) NULL DEFAULT 0.00,
  `deductionmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `type` tinyint(3) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_applyid`(`applyid`) USING BTREE,
  INDEX `idx_mid`(`mid`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_ewei_shop_commission_rank
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_commission_rank`;
CREATE TABLE `ims_ewei_shop_commission_rank`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 0,
  `num` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_commission_relation
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_commission_relation`;
CREATE TABLE `ims_ewei_shop_commission_relation`  (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL,
  `level` tinyint(1) UNSIGNED NOT NULL,
  UNIQUE INDEX `id_pid`(`id`, `pid`) USING BTREE,
  INDEX `id`(`id`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE,
  INDEX `level`(`level`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_ewei_shop_commission_repurchase
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_commission_repurchase`;
CREATE TABLE `ims_ewei_shop_commission_repurchase`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `year` int(4) NULL DEFAULT 0,
  `month` tinyint(2) NULL DEFAULT 0,
  `repurchase` decimal(10, 2) NULL DEFAULT 0.00,
  `applyid` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `applyid`(`applyid`) USING BTREE,
  INDEX `openid`(`openid`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_commission_shop
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_commission_shop`;
CREATE TABLE `ims_ewei_shop_commission_shop`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `mid` int(11) NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `selectgoods` tinyint(3) NULL DEFAULT 0,
  `selectcategory` tinyint(3) NULL DEFAULT 0,
  `goodsids` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_mid`(`mid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 51 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_coupon
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_coupon`;
CREATE TABLE `ims_ewei_shop_coupon`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `catid` int(11) NULL DEFAULT 0,
  `couponname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `gettype` tinyint(3) NULL DEFAULT 0,
  `getmax` int(11) NULL DEFAULT 0,
  `usetype` tinyint(3) NULL DEFAULT 0,
  `returntype` tinyint(3) NULL DEFAULT 0,
  `bgcolor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `enough` decimal(10, 2) NULL DEFAULT 0.00,
  `timelimit` tinyint(3) NULL DEFAULT 0,
  `coupontype` tinyint(3) NULL DEFAULT 0,
  `timedays` int(11) NULL DEFAULT 0,
  `timestart` int(11) NULL DEFAULT 0,
  `timeend` int(11) NULL DEFAULT 0,
  `discount` decimal(10, 2) NULL DEFAULT 0.00,
  `deduct` decimal(10, 2) NULL DEFAULT 0.00,
  `backtype` tinyint(3) NULL DEFAULT 0,
  `backmoney` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `backcredit` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `backredpack` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `backwhen` tinyint(3) NULL DEFAULT 0,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `createtime` int(11) NULL DEFAULT 0,
  `total` int(11) NULL DEFAULT 0,
  `status` tinyint(3) NULL DEFAULT 0,
  `money` decimal(10, 2) NULL DEFAULT 0.00,
  `respdesc` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `respthumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `resptitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `respurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `credit` int(11) NULL DEFAULT 0,
  `usecredit2` tinyint(3) NULL DEFAULT 0,
  `remark` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `descnoset` tinyint(3) NULL DEFAULT 0,
  `pwdkey` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `pwdsuc` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `pwdfail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `pwdurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `pwdask` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `pwdstatus` tinyint(3) NULL DEFAULT 0,
  `pwdtimes` int(11) NULL DEFAULT 0,
  `pwdfull` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `pwdwords` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `pwdopen` tinyint(3) NULL DEFAULT 0,
  `pwdown` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `pwdexit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `pwdexitstr` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `displayorder` int(11) NULL DEFAULT 0,
  `pwdkey2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `merchid` int(11) NULL DEFAULT 0,
  `limitgoodtype` tinyint(1) NULL DEFAULT 0,
  `limitgoodcatetype` tinyint(1) NULL DEFAULT 0,
  `limitgoodcateids` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `limitgoodids` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `islimitlevel` tinyint(1) NULL DEFAULT 0,
  `limitmemberlevels` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `limitagentlevels` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `limitpartnerlevels` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `limitaagentlevels` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `tagtitle` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `settitlecolor` tinyint(1) NULL DEFAULT 0,
  `titlecolor` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `limitdiscounttype` tinyint(1) NULL DEFAULT 1,
  `quickget` tinyint(1) NULL DEFAULT 0,
  `templateid` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `isfriendcoupon` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_coupontype`(`coupontype`) USING BTREE,
  INDEX `idx_timestart`(`timestart`) USING BTREE,
  INDEX `idx_timeend`(`timeend`) USING BTREE,
  INDEX `idx_timelimit`(`timelimit`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_givetype`(`backtype`) USING BTREE,
  INDEX `idx_catid`(`catid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_coupon_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_coupon_category`;
CREATE TABLE `ims_ewei_shop_coupon_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `displayorder` int(11) NULL DEFAULT 0,
  `status` int(11) NULL DEFAULT 0,
  `merchid` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_coupon_data
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_coupon_data`;
CREATE TABLE `ims_ewei_shop_coupon_data`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `couponid` int(11) NULL DEFAULT 0,
  `gettype` tinyint(3) NULL DEFAULT 0,
  `used` int(11) NULL DEFAULT 0,
  `usetime` int(11) NULL DEFAULT 0,
  `gettime` int(11) NULL DEFAULT 0,
  `senduid` int(11) NULL DEFAULT 0,
  `ordersn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `back` tinyint(3) NULL DEFAULT 0,
  `backtime` int(11) NULL DEFAULT 0,
  `merchid` int(11) NULL DEFAULT 0,
  `isnew` tinyint(1) NULL DEFAULT 1,
  `nocount` tinyint(1) NULL DEFAULT 1,
  `shareident` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `textkey` int(11) NULL DEFAULT NULL,
  `friendcouponid` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_couponid`(`couponid`) USING BTREE,
  INDEX `idx_gettype`(`gettype`) USING BTREE,
  INDEX `idx_used`(`used`) USING BTREE,
  INDEX `idx_gettime`(`gettime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_coupon_goodsendtask
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_coupon_goodsendtask`;
CREATE TABLE `ims_ewei_shop_coupon_goodsendtask`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT NULL,
  `goodsid` int(11) NULL DEFAULT 0,
  `couponid` int(11) NULL DEFAULT 0,
  `starttime` int(11) NULL DEFAULT 0,
  `endtime` int(11) NULL DEFAULT 0,
  `sendnum` int(11) NULL DEFAULT 1,
  `num` int(11) NULL DEFAULT 0,
  `sendpoint` tinyint(1) NULL DEFAULT 0,
  `status` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_ewei_shop_coupon_guess
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_coupon_guess`;
CREATE TABLE `ims_ewei_shop_coupon_guess`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `couponid` int(11) NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `times` int(11) NULL DEFAULT 0,
  `pwdkey` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `ok` tinyint(3) NULL DEFAULT 0,
  `merchid` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_couponid`(`couponid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_coupon_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_coupon_log`;
CREATE TABLE `ims_ewei_shop_coupon_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `logno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `couponid` int(11) NULL DEFAULT 0,
  `status` int(11) NULL DEFAULT 0,
  `paystatus` tinyint(3) NULL DEFAULT 0,
  `creditstatus` tinyint(3) NULL DEFAULT 0,
  `createtime` int(11) NULL DEFAULT 0,
  `paytype` tinyint(3) NULL DEFAULT 0,
  `getfrom` tinyint(3) NULL DEFAULT 0,
  `merchid` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_couponid`(`couponid`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_paystatus`(`paystatus`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE,
  INDEX `idx_getfrom`(`getfrom`) USING BTREE,
  INDEX `idx_logno`(`logno`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_coupon_sendshow
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_coupon_sendshow`;
CREATE TABLE `ims_ewei_shop_coupon_sendshow`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `showkey` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uniacid` int(11) NOT NULL,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `coupondataid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_coupon_sendtasks
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_coupon_sendtasks`;
CREATE TABLE `ims_ewei_shop_coupon_sendtasks`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT NULL,
  `enough` decimal(10, 2) NULL DEFAULT 0.00,
  `couponid` int(11) NULL DEFAULT 0,
  `starttime` int(11) NULL DEFAULT 0,
  `endtime` int(11) NULL DEFAULT 0,
  `sendnum` int(11) NULL DEFAULT 1,
  `num` int(11) NULL DEFAULT 0,
  `sendpoint` tinyint(1) NULL DEFAULT 0,
  `status` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_ewei_shop_coupon_taskdata
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_coupon_taskdata`;
CREATE TABLE `ims_ewei_shop_coupon_taskdata`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT NULL,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `taskid` int(11) NULL DEFAULT 0,
  `couponid` int(11) NULL DEFAULT 0,
  `sendnum` int(11) NULL DEFAULT 0,
  `tasktype` tinyint(1) NULL DEFAULT 0,
  `orderid` int(11) NULL DEFAULT 0,
  `parentorderid` int(11) NULL DEFAULT 0,
  `createtime` int(11) NULL DEFAULT 0,
  `status` tinyint(1) NULL DEFAULT 0,
  `sendpoint` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_coupon_usesendtasks
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_coupon_usesendtasks`;
CREATE TABLE `ims_ewei_shop_coupon_usesendtasks`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT NULL,
  `usecouponid` int(11) NULL DEFAULT 0,
  `couponid` int(11) NULL DEFAULT 0,
  `starttime` int(11) NULL DEFAULT 0,
  `endtime` int(11) NULL DEFAULT 0,
  `sendnum` int(11) NULL DEFAULT 1,
  `num` int(11) NULL DEFAULT 0,
  `status` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_ewei_shop_creditshop_adv
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_creditshop_adv`;
CREATE TABLE `ims_ewei_shop_creditshop_adv`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `advname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `displayorder` int(11) NULL DEFAULT 0,
  `enabled` int(11) NULL DEFAULT 0,
  `merchid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_enabled`(`enabled`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_creditshop_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_creditshop_category`;
CREATE TABLE `ims_ewei_shop_creditshop_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `displayorder` tinyint(3) UNSIGNED NULL DEFAULT 0,
  `enabled` tinyint(1) NULL DEFAULT 1,
  `advimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `advurl` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `isrecommand` tinyint(3) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE,
  INDEX `idx_enabled`(`enabled`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_creditshop_comment
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_creditshop_comment`;
CREATE TABLE `ims_ewei_shop_creditshop_comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `logid` int(11) NOT NULL DEFAULT 0,
  `logno` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `goodsid` int(11) NOT NULL DEFAULT 0,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `headimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `level` tinyint(3) NOT NULL DEFAULT 0,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `images` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `time` int(11) NOT NULL DEFAULT 0,
  `reply_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reply_images` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `reply_time` int(11) NOT NULL DEFAULT 0,
  `append_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `append_images` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `append_time` int(11) NOT NULL DEFAULT 0,
  `append_reply_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `append_reply_images` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `append_reply_time` int(11) NOT NULL DEFAULT 0,
  `istop` tinyint(3) NOT NULL DEFAULT 0,
  `checked` tinyint(3) NOT NULL DEFAULT 0,
  `append_checked` tinyint(3) NOT NULL DEFAULT 0,
  `virtual` tinyint(3) NOT NULL DEFAULT 0,
  `deleted` tinyint(3) NOT NULL DEFAULT 0,
  `merchid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_creditshop_goods
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_creditshop_goods`;
CREATE TABLE `ims_ewei_shop_creditshop_goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `displayorder` int(11) NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `cate` int(11) NULL DEFAULT 0,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `price` decimal(10, 2) NULL DEFAULT 0.00,
  `type` tinyint(3) NULL DEFAULT 0,
  `credit` int(11) NULL DEFAULT 0,
  `money` decimal(10, 2) NULL DEFAULT 0.00,
  `total` int(11) NULL DEFAULT 0,
  `totalday` int(11) NULL DEFAULT 0,
  `chance` int(11) NULL DEFAULT 0,
  `chanceday` int(11) NULL DEFAULT 0,
  `detail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `rate1` int(11) NULL DEFAULT 0,
  `rate2` int(11) NULL DEFAULT 0,
  `endtime` int(11) NULL DEFAULT 0,
  `joins` int(11) NULL DEFAULT 0,
  `views` int(11) NULL DEFAULT 0,
  `createtime` int(11) NULL DEFAULT 0,
  `status` tinyint(3) NULL DEFAULT 0,
  `deleted` tinyint(3) NULL DEFAULT 0,
  `showlevels` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `buylevels` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `showgroups` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `buygroups` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `vip` tinyint(3) NULL DEFAULT 0,
  `istop` tinyint(3) NULL DEFAULT 0,
  `isrecommand` tinyint(3) NULL DEFAULT 0,
  `istime` tinyint(3) NULL DEFAULT 0,
  `timestart` int(11) NULL DEFAULT 0,
  `timeend` int(11) NULL DEFAULT 0,
  `share_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `share_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `share_desc` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `followneed` tinyint(3) NULL DEFAULT 0,
  `followtext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `subtitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `subdetail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `noticedetail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `usedetail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `goodsdetail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `isendtime` tinyint(3) NULL DEFAULT 0,
  `usecredit2` tinyint(3) NULL DEFAULT 0,
  `area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `dispatch` decimal(10, 2) NULL DEFAULT 0.00,
  `storeids` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `noticeopenid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `noticetype` tinyint(3) NULL DEFAULT 0,
  `isverify` tinyint(3) NULL DEFAULT 0,
  `goodstype` tinyint(3) NULL DEFAULT 0,
  `couponid` int(11) NULL DEFAULT 0,
  `goodsid` int(11) NULL DEFAULT 0,
  `merchid` int(11) NOT NULL DEFAULT 0,
  `productprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `mincredit` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `minmoney` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `maxcredit` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `maxmoney` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `dispatchtype` tinyint(3) NOT NULL DEFAULT 0,
  `dispatchid` int(11) NOT NULL DEFAULT 0,
  `verifytype` tinyint(3) NOT NULL DEFAULT 0,
  `verifynum` int(11) NOT NULL DEFAULT 0,
  `grant1` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `grant2` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `goodssn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `productsn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `weight` int(11) NOT NULL,
  `showtotal` tinyint(3) NOT NULL,
  `totalcnf` tinyint(3) NOT NULL DEFAULT 0,
  `usetime` int(11) NOT NULL DEFAULT 0,
  `hasoption` tinyint(3) NOT NULL DEFAULT 0,
  `noticedetailshow` tinyint(3) NOT NULL DEFAULT 0,
  `detailshow` tinyint(3) NOT NULL DEFAULT 0,
  `packetmoney` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `surplusmoney` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `packetlimit` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `packettype` tinyint(3) NOT NULL DEFAULT 0,
  `minpacketmoney` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `packettotal` int(11) NOT NULL DEFAULT 0,
  `packetsurplus` int(11) NOT NULL DEFAULT 0,
  `maxpacketmoney` decimal(10, 2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_type`(`type`) USING BTREE,
  INDEX `idx_endtime`(`endtime`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE,
  INDEX `idx_deleted`(`deleted`) USING BTREE,
  INDEX `idx_istop`(`istop`) USING BTREE,
  INDEX `idx_isrecommand`(`isrecommand`) USING BTREE,
  INDEX `idx_istime`(`istime`) USING BTREE,
  INDEX `idx_timestart`(`timestart`) USING BTREE,
  INDEX `idx_timeend`(`timeend`) USING BTREE,
  INDEX `idx_goodstype`(`goodstype`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_creditshop_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_creditshop_log`;
CREATE TABLE `ims_ewei_shop_creditshop_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `logno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `eno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `goodsid` int(11) NULL DEFAULT 0,
  `createtime` int(11) NULL DEFAULT 0,
  `status` tinyint(3) NULL DEFAULT 0,
  `paystatus` tinyint(3) NULL DEFAULT 0,
  `paytype` tinyint(3) NULL DEFAULT -1,
  `dispatchstatus` tinyint(3) NULL DEFAULT 0,
  `creditpay` tinyint(3) NULL DEFAULT 0,
  `addressid` int(11) NULL DEFAULT 0,
  `dispatchno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `usetime` int(11) NULL DEFAULT 0,
  `express` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `expresssn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `expresscom` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `verifyopenid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `storeid` int(11) NULL DEFAULT 0,
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `couponid` int(11) NULL DEFAULT 0,
  `dupdate1` tinyint(3) NULL DEFAULT 0,
  `transid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `dispatchtransid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `address` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `optionid` int(11) NOT NULL DEFAULT 0,
  `time_send` int(11) NOT NULL DEFAULT 0,
  `time_finish` int(11) NOT NULL DEFAULT 0,
  `iscomment` tinyint(3) NOT NULL DEFAULT 0,
  `dispatchtime` int(11) NOT NULL DEFAULT 0,
  `verifynum` int(11) NOT NULL DEFAULT 1,
  `verifytime` int(11) NOT NULL DEFAULT 0,
  `merchid` int(11) NOT NULL DEFAULT 0,
  `remarksaler` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `dispatch` decimal(10, 2) NULL DEFAULT 0.00,
  `money` decimal(10, 2) NULL DEFAULT 0.00,
  `credit` int(11) NULL DEFAULT 0,
  `goods_num` int(11) NULL DEFAULT 0,
  `merchapply` tinyint(4) NOT NULL DEFAULT 0,
  `pay_time` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 54 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_creditshop_option
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_creditshop_option`;
CREATE TABLE `ims_ewei_shop_creditshop_option`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `goodsid` int(10) NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumb` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `credit` int(10) NOT NULL DEFAULT 0,
  `money` decimal(10, 2) NULL DEFAULT 0.00,
  `total` int(11) NULL DEFAULT 0,
  `weight` decimal(10, 2) NULL DEFAULT 0.00,
  `displayorder` int(11) NULL DEFAULT 0,
  `specs` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `skuId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `goodssn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `productsn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `virtual` int(11) NULL DEFAULT 0,
  `exchange_stock` int(11) NOT NULL DEFAULT -1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_creditshop_spec
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_creditshop_spec`;
CREATE TABLE `ims_ewei_shop_creditshop_spec`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `goodsid` int(11) NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `displaytype` tinyint(3) NULL DEFAULT 0,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `displayorder` int(11) NULL DEFAULT 0,
  `propId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_creditshop_spec_item
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_creditshop_spec_item`;
CREATE TABLE `ims_ewei_shop_creditshop_spec_item`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `specid` int(11) NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `show` int(11) NULL DEFAULT 0,
  `displayorder` int(11) NULL DEFAULT 0,
  `valueId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `virtual` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_creditshop_verify
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_creditshop_verify`;
CREATE TABLE `ims_ewei_shop_creditshop_verify`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `openid` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `logid` int(11) NULL DEFAULT 0,
  `verifycode` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `storeid` int(11) NULL DEFAULT 0,
  `verifier` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `isverify` tinyint(3) NULL DEFAULT 0,
  `verifytime` int(11) NULL DEFAULT 0,
  `merchid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_customer
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_customer`;
CREATE TABLE `ims_ewei_shop_customer`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `kf_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kf_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `kf_nick` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `kf_pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `kf_headimgurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `createtime` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_customer_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_customer_category`;
CREATE TABLE `ims_ewei_shop_customer_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_customer_guestbook
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_customer_guestbook`;
CREATE TABLE `ims_ewei_shop_customer_guestbook`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `realname` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `weixin` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `images` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `status` tinyint(3) NULL DEFAULT 0,
  `createtime` int(11) NULL DEFAULT 0,
  `deleted` tinyint(3) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_customer_robot
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_customer_robot`;
CREATE TABLE `ims_ewei_shop_customer_robot`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `cate` int(11) NULL DEFAULT 0,
  `keywords` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `createtime` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_cate`(`cate`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_cycelbuy_periods
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_cycelbuy_periods`;
CREATE TABLE `ims_ewei_shop_cycelbuy_periods`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `cycelsn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sendtime` int(11) NULL DEFAULT NULL,
  `receipttime` int(11) NULL DEFAULT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addressid` int(11) NULL DEFAULT NULL,
  `dispatchprice` decimal(10, 2) NULL DEFAULT NULL,
  `dispatchid` int(11) NULL DEFAULT NULL,
  `createtime` int(11) NULL DEFAULT NULL,
  `dispatchtype` tinyint(3) NULL DEFAULT NULL,
  `finishtime` int(11) NULL DEFAULT NULL,
  `expresscom` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `expresssn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `express` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `updatelog` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ispostpone` tinyint(4) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_datatransfer
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_datatransfer`;
CREATE TABLE `ims_ewei_shop_datatransfer`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fromuniacid` int(11) NULL DEFAULT NULL,
  `touniacid` int(11) NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_ewei_shop_designer
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_designer`;
CREATE TABLE `ims_ewei_shop_designer`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `pagename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `pagetype` tinyint(3) NOT NULL DEFAULT 0,
  `pageinfo` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `savetime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `setdefault` tinyint(3) NOT NULL DEFAULT 0,
  `datas` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_pagetype`(`pagetype`) USING BTREE,
  INDEX `idx_keyword`(`keyword`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_designer_menu
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_designer_menu`;
CREATE TABLE `ims_ewei_shop_designer_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `menuname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `isdefault` tinyint(3) NULL DEFAULT 0,
  `createtime` int(11) NULL DEFAULT 0,
  `menus` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `params` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_isdefault`(`isdefault`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_dispatch
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_dispatch`;
CREATE TABLE `ims_ewei_shop_dispatch`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `dispatchname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `dispatchtype` int(11) NULL DEFAULT 0,
  `displayorder` int(11) NULL DEFAULT 0,
  `firstprice` decimal(10, 2) NULL DEFAULT 0.00,
  `secondprice` decimal(10, 2) NULL DEFAULT 0.00,
  `firstweight` int(11) NULL DEFAULT 0,
  `secondweight` int(11) NULL DEFAULT 0,
  `express` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `areas` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `carriers` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `enabled` int(11) NULL DEFAULT 0,
  `calculatetype` tinyint(1) NULL DEFAULT 0,
  `firstnum` int(11) NULL DEFAULT 0,
  `secondnum` int(11) NULL DEFAULT 0,
  `firstnumprice` decimal(10, 2) NULL DEFAULT 0.00,
  `secondnumprice` decimal(10, 2) NULL DEFAULT 0.00,
  `isdefault` tinyint(1) NULL DEFAULT 0,
  `shopid` int(11) NULL DEFAULT 0,
  `merchid` int(11) NULL DEFAULT 0,
  `nodispatchareas` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `nodispatchareas_code` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `isdispatcharea` tinyint(3) NOT NULL DEFAULT 0,
  `freeprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_dividend_apply
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_dividend_apply`;
CREATE TABLE `ims_ewei_shop_dividend_apply`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `applyno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `mid` int(11) NULL DEFAULT 0,
  `type` tinyint(3) NULL DEFAULT 0,
  `orderids` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `dividend` decimal(10, 2) NULL DEFAULT 0.00,
  `dividend_pay` decimal(10, 2) NULL DEFAULT 0.00,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `status` tinyint(3) NULL DEFAULT 0,
  `applytime` int(11) NULL DEFAULT 0,
  `checktime` int(11) NULL DEFAULT 0,
  `paytime` int(11) NULL DEFAULT 0,
  `invalidtime` int(11) NULL DEFAULT 0,
  `realmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `charge` decimal(10, 2) NULL DEFAULT 0.00,
  `deductionmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `beginmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `endmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `alipay` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `bankname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `bankcard` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `alipay1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `bankname1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `bankcard1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `realname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `sendmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `senddata` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_mid`(`mid`) USING BTREE,
  INDEX `idx_checktime`(`checktime`) USING BTREE,
  INDEX `idx_paytime`(`paytime`) USING BTREE,
  INDEX `idx_applytime`(`applytime`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_invalidtime`(`invalidtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_dividend_bank
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_dividend_bank`;
CREATE TABLE `ims_ewei_shop_dividend_bank`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `bankname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `displayorder` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_dividend_init
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_dividend_init`;
CREATE TABLE `ims_ewei_shop_dividend_init`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `headsid` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_ewei_shop_dividend_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_dividend_log`;
CREATE TABLE `ims_ewei_shop_dividend_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `applyid` int(11) NULL DEFAULT 0,
  `mid` int(11) NULL DEFAULT 0,
  `dividend` decimal(10, 2) NULL DEFAULT 0.00,
  `createtime` int(11) NULL DEFAULT 0,
  `dividend_pay` decimal(10, 2) NULL DEFAULT 0.00,
  `realmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `charge` decimal(10, 2) NULL DEFAULT 0.00,
  `deductionmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `type` tinyint(3) NULL DEFAULT 0,
  `type1` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_applyid`(`applyid`) USING BTREE,
  INDEX `idx_mid`(`mid`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_ewei_shop_diyform_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_diyform_category`;
CREATE TABLE `ims_ewei_shop_diyform_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_diyform_data
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_diyform_data`;
CREATE TABLE `ims_ewei_shop_diyform_data`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `typeid` int(11) NOT NULL DEFAULT 0,
  `cid` int(11) NULL DEFAULT 0,
  `diyformfields` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `fields` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `type` tinyint(2) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_typeid`(`typeid`) USING BTREE,
  INDEX `idx_cid`(`cid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_diyform_temp
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_diyform_temp`;
CREATE TABLE `ims_ewei_shop_diyform_temp`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `typeid` int(11) NULL DEFAULT 0,
  `cid` int(11) NOT NULL DEFAULT 0,
  `diyformfields` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `fields` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `type` tinyint(1) NULL DEFAULT 0,
  `diyformid` int(11) NULL DEFAULT 0,
  `diyformdata` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `carrier_realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `carrier_mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_cid`(`cid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_diyform_type
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_diyform_type`;
CREATE TABLE `ims_ewei_shop_diyform_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `cate` int(11) NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `fields` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `usedata` int(11) NOT NULL DEFAULT 0,
  `alldata` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NULL DEFAULT 1,
  `savedata` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_cate`(`cate`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_diypage
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_diypage`;
CREATE TABLE `ims_ewei_shop_diypage`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(11) NOT NULL DEFAULT 0,
  `lastedittime` int(11) NOT NULL DEFAULT 0,
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `diymenu` int(11) NOT NULL DEFAULT 0,
  `merch` int(11) NOT NULL DEFAULT 0,
  `diyadv` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_type`(`type`) USING BTREE,
  INDEX `idx_keyword`(`keyword`) USING BTREE,
  INDEX `idx_lastedittime`(`lastedittime`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_diypage_menu
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_diypage_menu`;
CREATE TABLE `ims_ewei_shop_diypage_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(11) NOT NULL DEFAULT 0,
  `lastedittime` int(11) NOT NULL DEFAULT 0,
  `merch` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE,
  INDEX `idx_lastedittime`(`lastedittime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_diypage_plu
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_diypage_plu`;
CREATE TABLE `ims_ewei_shop_diypage_plu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(11) NOT NULL DEFAULT 0,
  `lastedittime` int(11) NOT NULL DEFAULT 0,
  `merch` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE,
  INDEX `idx_lastedittime`(`lastedittime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_diypage_template
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_diypage_template`;
CREATE TABLE `ims_ewei_shop_diypage_template`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `type` tinyint(3) NOT NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `preview` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `tplid` int(11) NULL DEFAULT 0,
  `cate` int(11) NULL DEFAULT 0,
  `deleted` tinyint(3) NULL DEFAULT 0,
  `merch` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_type`(`type`) USING BTREE,
  INDEX `idx_cate`(`cate`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_ewei_shop_diypage_template
-- ----------------------------
INSERT INTO `ims_ewei_shop_diypage_template` VALUES (1, 0, 2, '系统模板01', 'eyJwYWdlIjp7InR5cGUiOiIyIiwidGl0bGUiOiJcdTMwMTBcdTZhMjFcdTY3N2ZcdTMwMTFcdTdjZmJcdTdlZGZcdTZhMjFcdTY3N2YwMSIsIm5hbWUiOiJcdTMwMTBcdTZhMjFcdTY3N2ZcdTMwMTFcdTdjZmJcdTdlZGZcdTZhMjFcdTY3N2YwMSIsImRlc2MiOiIiLCJpY29uIjoiIiwia2V5d29yZCI6IiIsImJhY2tncm91bmQiOiIjZmFmYWZhIiwiZGl5bWVudSI6Ii0xIn0sIml0ZW1zIjp7Ik0xNDY1ODAyOTg0ODg1Ijp7InN0eWxlIjp7ImRvdHN0eWxlIjoicm91bmQiLCJkb3RhbGlnbiI6ImNlbnRlciIsImJhY2tncm91bmQiOiIjZmZmZmZmIiwibGVmdHJpZ2h0IjoiNSIsImJvdHRvbSI6IjEwIiwib3BhY2l0eSI6IjAuOCJ9LCJkYXRhIjp7IkMxNDY1ODAyOTg0ODg1Ijp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQxXC9iYW5uZXJfMS5qcGciLCJsaW5rdXJsIjoiIn0sIkMxNDY1ODAyOTg0ODg2Ijp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQxXC9iYW5uZXJfMi5qcGciLCJsaW5rdXJsIjoiIn0sIk0xNDY1ODAzMDE0ODM3Ijp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQxXC9iYW5uZXJfMy5qcGciLCJsaW5rdXJsIjoiIn19LCJpZCI6ImJhbm5lciJ9LCJNMTQ2NTgwMzY5MjkzMiI6eyJzdHlsZSI6eyJoZWlnaHQiOiIxMCIsImJhY2tncm91bmQiOiIjZmZmZmZmIn0sImlkIjoiYmxhbmsifSwiTTE0NjU4MDMzMTk4NTMiOnsic3R5bGUiOnsibmF2c3R5bGUiOiIiLCJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsInJvd251bSI6IjUifSwiZGF0YSI6eyJDMTQ2NTgwMzMxOTg1MyI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0MVwvbWVudV8xLnBuZyIsImxpbmt1cmwiOiIiLCJ0ZXh0IjoiXHU2NWIwXHU1NGMxIiwiY29sb3IiOiIjNjY2NjY2In0sIkMxNDY1ODAzMzE5ODU0Ijp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQxXC9tZW51XzIucG5nIiwibGlua3VybCI6IiIsInRleHQiOiJcdTcwZWRcdTUzNTYiLCJjb2xvciI6IiM2NjY2NjYifSwiQzE0NjU4MDMzMTk4NTUiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDFcL21lbnVfMy5wbmciLCJsaW5rdXJsIjoiIiwidGV4dCI6Ilx1NGZjM1x1OTUwMCIsImNvbG9yIjoiIzY2NjY2NiJ9LCJDMTQ2NTgwMzMxOTg1NiI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0MVwvbWVudV80LnBuZyIsImxpbmt1cmwiOiIiLCJ0ZXh0IjoiXHU4YmEyXHU1MzU1IiwiY29sb3IiOiIjNjY2NjY2In0sIk0xNDY1ODAzMzQ3MDQ1Ijp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQxXC9tZW51XzUucG5nIiwibGlua3VybCI6IiIsInRleHQiOiJcdTdiN2VcdTUyMzAiLCJjb2xvciI6IiM2NjY2NjYifX0sImlkIjoibWVudSJ9LCJNMTQ2NTgwMzM1OTEwMCI6eyJzdHlsZSI6eyJuYXZzdHlsZSI6IiIsImJhY2tncm91bmQiOiIjZmZmZmZmIiwicm93bnVtIjoiNSJ9LCJkYXRhIjp7IkMxNDY1ODAzMzU5MTAwIjp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQxXC9tZW51XzYucG5nIiwibGlua3VybCI6IiIsInRleHQiOiJcdTRlMGFcdTg4NjMiLCJjb2xvciI6IiM2NjY2NjYifSwiQzE0NjU4MDMzNTkxMDEiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDFcL21lbnVfNy5wbmciLCJsaW5rdXJsIjoiIiwidGV4dCI6Ilx1NGUwYlx1ODg2MyIsImNvbG9yIjoiIzY2NjY2NiJ9LCJDMTQ2NTgwMzM1OTEwMiI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0MVwvbWVudV84LnBuZyIsImxpbmt1cmwiOiIiLCJ0ZXh0IjoiXHU5NzhiXHU1YjUwIiwiY29sb3IiOiIjNjY2NjY2In0sIkMxNDY1ODAzMzU5MTAzIjp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQxXC9tZW51XzkucG5nIiwibGlua3VybCI6IiIsInRleHQiOiJcdTUxODVcdTg4NjMiLCJjb2xvciI6IiM2NjY2NjYifSwiTTE0NjU4MDM0NTA4MjciOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDFcL21lbnVfMTAucG5nIiwibGlua3VybCI6IiIsInRleHQiOiJcdTUxNjhcdTkwZTgiLCJjb2xvciI6IiM2NjY2NjYifX0sImlkIjoibWVudSJ9LCJNMTQ2NTgwMzcwMDEzMiI6eyJzdHlsZSI6eyJoZWlnaHQiOiIxMCIsImJhY2tncm91bmQiOiIjZmZmZmZmIn0sImlkIjoiYmxhbmsifSwiTTE0NjU4MDM2MjE5ODAiOnsicGFyYW1zIjp7Imljb251cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2Mlwvc3RhdGljXC9pbWFnZXNcL2hvdGRvdC5qcGciLCJub3RpY2VkYXRhIjoiMSIsInNwZWVkIjoiNCIsIm5vdGljZW51bSI6IjUifSwic3R5bGUiOnsiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJpY29uY29sb3IiOiIjZmQ1NDU0IiwiY29sb3IiOiIjNjY2NjY2In0sImRhdGEiOnsiQzE0NjU4MDM2MjE5ODAiOnsidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTdiMmNcdTRlMDBcdTY3NjFcdTgxZWFcdTViOWFcdTRlNDlcdTUxNmNcdTU0NGFcdTc2ODRcdTY4MDdcdTk4OTgiLCJsaW5rdXJsIjoiaHR0cDpcL1wvd3d3LmJhaWR1LmNvbSJ9LCJDMTQ2NTgwMzYyMTk4MSI6eyJ0aXRsZSI6Ilx1OGZkOVx1OTFjY1x1NjYyZlx1N2IyY1x1NGU4Y1x1Njc2MVx1ODFlYVx1NWI5YVx1NGU0OVx1NTE2Y1x1NTQ0YVx1NzY4NFx1NjgwN1x1OTg5OCIsImxpbmt1cmwiOiJodHRwOlwvXC93d3cuYmFpZHUuY29tIn19LCJpZCI6Im5vdGljZSJ9LCJNMTQ2NTgwMzkzMjQ2MCI6eyJwYXJhbXMiOnsicm93IjoiMiJ9LCJkYXRhIjp7IkMxNDY1ODAzOTMyNDYwIjp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQxXC9waWN0dXJld18xLmpwZyIsImxpbmt1cmwiOiIifSwiQzE0NjU4MDM5MzI0NjMiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDFcL3BpY3R1cmV3XzIuanBnIiwibGlua3VybCI6IiJ9fSwiaWQiOiJwaWN0dXJldyIsInN0eWxlIjp7InBhZGRpbmd0b3AiOiIxNiIsInBhZGRpbmdsZWZ0IjoiNCJ9fSwiTTE0NjU4MDQwMjU1MDgiOnsicGFyYW1zIjp7InRpdGxlIjoiXHU2NWIwXHU1NGMxXHU0ZTBhXHU1ZTAyIiwiaWNvbiI6Imljb24tbmV3In0sInN0eWxlIjp7ImJhY2tncm91bmQiOiIjZmZmZmZmIiwiY29sb3IiOiIjZjA2MjkyIiwidGV4dGFsaWduIjoiY2VudGVyIiwiZm9udHNpemUiOiIxOCIsInBhZGRpbmd0b3AiOiI1IiwicGFkZGluZ2xlZnQiOiI1In0sImlkIjoidGl0bGUifSwiTTE0NjU4MTMzNjgwODUiOnsicGFyYW1zIjp7InNob3d0aXRsZSI6IjEiLCJzaG93cHJpY2UiOiIxIiwiZ29vZHNkYXRhIjoiMCIsImNhdGVpZCI6IiIsImNhdGVuYW1lIjoiIiwiZ3JvdXBpZCI6IiIsImdyb3VwbmFtZSI6IiIsImdvb2Rzc29ydCI6IjAiLCJnb29kc251bSI6IjYiLCJzaG93aWNvbiI6IjAiLCJpY29ucG9zaXRpb24iOiJsZWZ0IHRvcCJ9LCJzdHlsZSI6eyJsaXN0c3R5bGUiOiJibG9jayIsImJ1eXN0eWxlIjoiYnV5YnRuLTEiLCJnb29kc2ljb24iOiJyZWNvbW1hbmQiLCJwcmljZWNvbG9yIjoiI2VkMjgyMiIsImljb25wYWRkaW5ndG9wIjoiMCIsImljb25wYWRkaW5nbGVmdCI6IjAiLCJidXlidG5jb2xvciI6IiNmZTU0NTUiLCJpY29uem9vbSI6IjEwMCIsInRpdGxlY29sb3IiOiIjMjYyNjI2In0sImRhdGEiOnsiQzE0NjU4MTMzNjgwODUiOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtMS5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIifSwiQzE0NjU4MTMzNjgwODYiOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtMi5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIifSwiQzE0NjU4MTMzNjgwODciOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtMy5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIifSwiQzE0NjU4MTMzNjgwODgiOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtNC5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIifX0sImlkIjoiZ29vZHMifSwiTTE0NjU4MDU4MjEwNjciOnsicGFyYW1zIjp7InRpdGxlIjoiXHU3MGVkXHU1MzU2XHU1NTQ2XHU1NGMxIiwiaWNvbiI6Imljb24taG90In0sInN0eWxlIjp7ImJhY2tncm91bmQiOiIjZmZmZmZmIiwiY29sb3IiOiIjZmFjMDQyIiwidGV4dGFsaWduIjoiY2VudGVyIiwiZm9udHNpemUiOiIxOCIsInBhZGRpbmd0b3AiOiI1IiwicGFkZGluZ2xlZnQiOiI1In0sImlkIjoidGl0bGUifSwiTTE0NjU4MTMzNzY4OTIiOnsicGFyYW1zIjp7InNob3d0aXRsZSI6IjEiLCJzaG93cHJpY2UiOiIxIiwiZ29vZHNkYXRhIjoiMCIsImNhdGVpZCI6IiIsImNhdGVuYW1lIjoiIiwiZ3JvdXBpZCI6IiIsImdyb3VwbmFtZSI6IiIsImdvb2Rzc29ydCI6IjAiLCJnb29kc251bSI6IjYiLCJzaG93aWNvbiI6IjEiLCJpY29ucG9zaXRpb24iOiJsZWZ0IHRvcCJ9LCJzdHlsZSI6eyJsaXN0c3R5bGUiOiJibG9jayIsImJ1eXN0eWxlIjoiYnV5YnRuLTEiLCJnb29kc2ljb24iOiJyZWNvbW1hbmQiLCJwcmljZWNvbG9yIjoiI2VkMjgyMiIsImljb25wYWRkaW5ndG9wIjoiMCIsImljb25wYWRkaW5nbGVmdCI6IjAiLCJidXlidG5jb2xvciI6IiNmZTU0NTUiLCJpY29uem9vbSI6IjEwMCIsInRpdGxlY29sb3IiOiIjMjYyNjI2In0sImRhdGEiOnsiQzE0NjU4MTMzNzY4OTIiOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtMS5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIifSwiQzE0NjU4MTMzNzY4OTMiOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtMi5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIifSwiQzE0NjU4MTMzNzY4OTQiOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtMy5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIifSwiQzE0NjU4MTMzNzY4OTUiOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtNC5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIifX0sImlkIjoiZ29vZHMifX19', '../addons/ewei_shopv2/plugin/diypage/static/template/default1/preview.jpg', 1, 0, 0, 0);
INSERT INTO `ims_ewei_shop_diypage_template` VALUES (2, 0, 1, '系统模板02', 'eyJwYWdlIjp7InR5cGUiOiIxIiwidGl0bGUiOiJcdTMwMTBcdTZhMjFcdTY3N2ZcdTMwMTFcdTdjZmJcdTdlZGZcdTZhMjFcdTY3N2YwMiIsIm5hbWUiOiJcdTMwMTBcdTZhMjFcdTY3N2ZcdTMwMTFcdTdjZmJcdTdlZGZcdTZhMjFcdTY3N2YwMiIsImRlc2MiOiIiLCJpY29uIjoiIiwia2V5d29yZCI6IiIsImJhY2tncm91bmQiOiIjZmFmYWZhIiwiZGl5bWVudSI6Ii0xIn0sIml0ZW1zIjp7Ik0xNDY1ODA4NTU2MDAxIjp7InN0eWxlIjp7ImRvdHN0eWxlIjoicm91bmQiLCJkb3RhbGlnbiI6InJpZ2h0IiwiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJsZWZ0cmlnaHQiOiIxMCIsImJvdHRvbSI6IjEwIiwib3BhY2l0eSI6IjAuOCJ9LCJkYXRhIjp7IkMxNDY1ODA4NTU2MDAxIjp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQyXC9iYW5uZXJfMS5qcGciLCJsaW5rdXJsIjoiIn0sIkMxNDY1ODA4NTU2MDAyIjp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQyXC9iYW5uZXJfMi5qcGciLCJsaW5rdXJsIjoiIn0sIk0xNDY1ODA4NTc1MTIyIjp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQyXC9iYW5uZXJfMy5qcGciLCJsaW5rdXJsIjoiIn19LCJpZCI6ImJhbm5lciJ9LCJNMTQ2NTgwODcwNTA2NCI6eyJzdHlsZSI6eyJoZWlnaHQiOiIyMCIsImJhY2tncm91bmQiOiIjZmZmZmZmIn0sImlkIjoiYmxhbmsifSwiTTE0NjU4MDg2NzMwNDAiOnsicGFyYW1zIjp7InJvdyI6IjIifSwiZGF0YSI6eyJDMTQ2NTgwODY3MzA0MCI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0MlwvcGljdHVyZXdfMS5qcGciLCJsaW5rdXJsIjoiIn0sIkMxNDY1ODA4NjczMDQxIjp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQyXC9waWN0dXJld18yLmpwZyIsImxpbmt1cmwiOiIifX0sImlkIjoicGljdHVyZXciLCJzdHlsZSI6eyJwYWRkaW5ndG9wIjoiMCIsInBhZGRpbmdsZWZ0IjoiMCJ9fSwiTTE0NjU4MDg3MDkyODAiOnsic3R5bGUiOnsiaGVpZ2h0IjoiMjAiLCJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiJ9LCJpZCI6ImJsYW5rIn0sIk0xNDY1ODA4NzY2NTY3Ijp7InBhcmFtcyI6eyJyb3ciOiIyIn0sImRhdGEiOnsiQzE0NjU4MDg3NjY1NzAiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDJcL3BpY3R1cmV3XzMuanBnIiwibGlua3VybCI6IiJ9LCJDMTQ2NTgwODc2NjU3MSI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0MlwvcGljdHVyZXdfNC5qcGciLCJsaW5rdXJsIjoiIn19LCJpZCI6InBpY3R1cmV3Iiwic3R5bGUiOnsicGFkZGluZ3RvcCI6IjAiLCJwYWRkaW5nbGVmdCI6IjAifX0sIk0xNDY1ODA4NzkxMDcyIjp7InN0eWxlIjp7ImhlaWdodCI6IjIwIiwiYmFja2dyb3VuZCI6IiNmZmZmZmYifSwiaWQiOiJibGFuayJ9LCJNMTQ2NTgwODg3MDY4MCI6eyJkYXRhIjp7IkMxNDY1ODA4ODcwNjgwIjp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQyXC9iYW5uZXJfMy5qcGciLCJsaW5rdXJsIjoiIn19LCJpZCI6InBpY3R1cmUiLCJzdHlsZSI6eyJwYWRkaW5ndG9wIjoiMCIsInBhZGRpbmdsZWZ0IjoiMCJ9fSwiTTE0NjU4MDkwMTA0MTUiOnsic3R5bGUiOnsiaGVpZ2h0IjoiMjAiLCJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiJ9LCJpZCI6ImJsYW5rIn0sIk0xNDY1ODA4OTgxNTk5Ijp7InBhcmFtcyI6eyJyb3ciOiIyIn0sImRhdGEiOnsiQzE0NjU4MDg5ODE1OTkiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDJcL3BpY3R1cmV3XzUuanBnIiwibGlua3VybCI6IiJ9LCJDMTQ2NTgwODk4MTYwMCI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0MlwvcGljdHVyZXdfNi5qcGciLCJsaW5rdXJsIjoiIn19LCJpZCI6InBpY3R1cmV3Iiwic3R5bGUiOnsicGFkZGluZ3RvcCI6IjAiLCJwYWRkaW5nbGVmdCI6IjAifX0sIk0xNDY1ODg5MzczNTY3Ijp7InBhcmFtcyI6eyJzaG93dGl0bGUiOiIxIiwic2hvd3ByaWNlIjoiMSIsImdvb2RzZGF0YSI6IjAiLCJjYXRlaWQiOiIiLCJjYXRlbmFtZSI6IiIsImdyb3VwaWQiOiIiLCJncm91cG5hbWUiOiIiLCJnb29kc3NvcnQiOiIwIiwiZ29vZHNudW0iOiI2Iiwic2hvd2ljb24iOiIxIiwiaWNvbnBvc2l0aW9uIjoibGVmdCB0b3AifSwic3R5bGUiOnsibGlzdHN0eWxlIjoiYmxvY2siLCJidXlzdHlsZSI6ImJ1eWJ0bi0xIiwiZ29vZHNpY29uIjoicmVjb21tYW5kIiwicHJpY2Vjb2xvciI6IiNlZDI4MjIiLCJpY29ucGFkZGluZ3RvcCI6IjAiLCJpY29ucGFkZGluZ2xlZnQiOiIwIiwiYnV5YnRuY29sb3IiOiIjZmU1NDU1IiwiaWNvbnpvb20iOiIxMDAiLCJ0aXRsZWNvbG9yIjoiIzI2MjYyNiJ9LCJkYXRhIjp7IkMxNDY1ODg5MzczNTY3Ijp7InRodW1iIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC9pbWFnZXNcL2RlZmF1bHRcL2dvb2RzLTEuanBnIiwicHJpY2UiOiIyMC4wMCIsInRpdGxlIjoiXHU4ZmQ5XHU5MWNjXHU2NjJmXHU1NTQ2XHU1NGMxXHU2ODA3XHU5ODk4IiwiZ2lkIjoiIn0sIkMxNDY1ODg5MzczNTY4Ijp7InRodW1iIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC9pbWFnZXNcL2RlZmF1bHRcL2dvb2RzLTIuanBnIiwicHJpY2UiOiIyMC4wMCIsInRpdGxlIjoiXHU4ZmQ5XHU5MWNjXHU2NjJmXHU1NTQ2XHU1NGMxXHU2ODA3XHU5ODk4IiwiZ2lkIjoiIn0sIkMxNDY1ODg5MzczNTY5Ijp7InRodW1iIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC9pbWFnZXNcL2RlZmF1bHRcL2dvb2RzLTMuanBnIiwicHJpY2UiOiIyMC4wMCIsInRpdGxlIjoiXHU4ZmQ5XHU5MWNjXHU2NjJmXHU1NTQ2XHU1NGMxXHU2ODA3XHU5ODk4IiwiZ2lkIjoiIn0sIkMxNDY1ODg5MzczNTcwIjp7InRodW1iIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC9pbWFnZXNcL2RlZmF1bHRcL2dvb2RzLTQuanBnIiwicHJpY2UiOiIyMC4wMCIsInRpdGxlIjoiXHU4ZmQ5XHU5MWNjXHU2NjJmXHU1NTQ2XHU1NGMxXHU2ODA3XHU5ODk4IiwiZ2lkIjoiIn19LCJpZCI6Imdvb2RzIn0sIk0xNDY1ODg5Mzc3NDIzIjp7InBhcmFtcyI6eyJjb250ZW50IjoiUEhBZ2MzUjViR1U5SW5SbGVIUXRZV3hwWjI0NklHTmxiblJsY2pzaVB1V2J2dWVKaCthZHBlYTZrT1M2anVlOWtlZTduTys4ak9lSmlPYWRnK1c5a3VXT24rUzluT2lBaGVhSmdPYWNpVHd2Y0Q0PSJ9LCJzdHlsZSI6eyJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsInBhZGRpbmciOiIyMCJ9LCJpZCI6InJpY2h0ZXh0In19fQ==', '../addons/ewei_shopv2/plugin/diypage/static/template/default2/preview.jpg', 2, 0, 0, 0);
INSERT INTO `ims_ewei_shop_diypage_template` VALUES (3, 0, 2, '系统模板03', 'eyJwYWdlIjp7InR5cGUiOiIyIiwidGl0bGUiOiJcdTMwMTBcdTZhMjFcdTY3N2ZcdTMwMTFcdTdjZmJcdTdlZGZcdTZhMjFcdTY3N2YwMyIsIm5hbWUiOiJcdTMwMTBcdTZhMjFcdTY3N2ZcdTMwMTFcdTdjZmJcdTdlZGZcdTZhMjFcdTY3N2YwMyIsImRlc2MiOiIiLCJpY29uIjoiIiwia2V5d29yZCI6IiIsImJhY2tncm91bmQiOiIjZmFmYWZhIiwiZGl5bWVudSI6Ii0xIn0sIml0ZW1zIjp7Ik0xNDY1ODA5MjQyOTc2Ijp7InN0eWxlIjp7ImRvdHN0eWxlIjoicm91bmQiLCJkb3RhbGlnbiI6ImxlZnQiLCJiYWNrZ3JvdW5kIjoiIzM0YmVkYyIsImxlZnRyaWdodCI6IjEwIiwiYm90dG9tIjoiMTAiLCJvcGFjaXR5IjoiMC43In0sImRhdGEiOnsiQzE0NjU4MDkyNDI5NzYiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDNcL2Jhbm5lcl8xLmpwZyIsImxpbmt1cmwiOiIifSwiQzE0NjU4MDkyNDI5NzciOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDNcL2Jhbm5lcl8yLmpwZyIsImxpbmt1cmwiOiIifSwiTTE0NjU4MDkyNjU5OTIiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDNcL2Jhbm5lcl8zLmpwZyIsImxpbmt1cmwiOiIifX0sImlkIjoiYmFubmVyIn0sIk0xNDY1ODA5NTQxNTM1Ijp7InBhcmFtcyI6eyJyb3ciOiIxIn0sImRhdGEiOnsiQzE0NjU4MDk1NDE1MzUiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDNcL3BpY3R1cmV3XzEuanBnIiwibGlua3VybCI6IiJ9LCJDMTQ2NTgwOTU0MTUzNiI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0M1wvcGljdHVyZXdfMi5qcGciLCJsaW5rdXJsIjoiIn0sIkMxNDY1ODA5NTQxNTM3Ijp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQzXC9waWN0dXJld18zLmpwZyIsImxpbmt1cmwiOiIifX0sImlkIjoicGljdHVyZXciLCJzdHlsZSI6eyJwYWRkaW5ndG9wIjoiNSIsInBhZGRpbmdsZWZ0IjoiNSIsImJhY2tncm91bmQiOiIjZmFmYWZhIn19LCJNMTQ2NTgwOTc2MzQxNSI6eyJzdHlsZSI6eyJoZWlnaHQiOiI1IiwiYmFja2dyb3VuZCI6IiNmYWZhZmEifSwiaWQiOiJibGFuayJ9LCJNMTQ2NTgwOTcwOTA0MCI6eyJwYXJhbXMiOnsidGl0bGUiOiJcdTY1YjBcdTU0YzFcdTRlMGFcdTVlMDIiLCJpY29uIjoiaWNvbi1uZXcifSwic3R5bGUiOnsiYmFja2dyb3VuZCI6IiMyOGMxOTIiLCJjb2xvciI6IiNmZmZmZmYiLCJ0ZXh0YWxpZ24iOiJsZWZ0IiwiZm9udHNpemUiOiIxOCIsInBhZGRpbmd0b3AiOiI1IiwicGFkZGluZ2xlZnQiOiI1In0sImlkIjoidGl0bGUifSwiTTE0NjU4MDk3OTEyMzEiOnsicGFyYW1zIjp7InNob3d0aXRsZSI6IjEiLCJzaG93cHJpY2UiOiIxIiwiZ29vZHNkYXRhIjoiMCIsImNhdGVpZCI6IiIsImNhdGVuYW1lIjoiIiwiZ3JvdXBpZCI6IiIsImdyb3VwbmFtZSI6IiIsImdvb2Rzc29ydCI6IjAiLCJnb29kc251bSI6IjYiLCJzaG93aWNvbiI6IjAiLCJpY29ucG9zaXRpb24iOiJsZWZ0IHRvcCJ9LCJzdHlsZSI6eyJsaXN0c3R5bGUiOiJibG9jayIsImJ1eXN0eWxlIjoiYnV5YnRuLTMiLCJnb29kc2ljb24iOiJyZWNvbW1hbmQiLCJwcmljZWNvbG9yIjoiIzI4YzE5MiIsImljb25wYWRkaW5ndG9wIjoiMCIsImljb25wYWRkaW5nbGVmdCI6IjAiLCJidXlidG5jb2xvciI6IiMyOGMxOGYiLCJpY29uem9vbSI6IjEwMCIsInRpdGxlY29sb3IiOiIjMjhjMTkyIn0sImRhdGEiOnsiQzE0NjU4MDk3OTEyMzEiOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtMS5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIifSwiQzE0NjU4MDk3OTEyMzIiOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtMi5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIifSwiQzE0NjU4MDk3OTEyMzMiOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtMy5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIifSwiQzE0NjU4MDk3OTEyMzQiOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtNC5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIifX0sImlkIjoiZ29vZHMifSwiTTE0NjU4MDk5NTA4NDciOnsicGFyYW1zIjp7InRpdGxlIjoiXHU2MzhjXHU2N2RjXHU2M2E4XHU4MzUwIiwiaWNvbiI6Imljb24tYXBwcmVjaWF0ZSJ9LCJzdHlsZSI6eyJiYWNrZ3JvdW5kIjoiI2ZmYmQzMyIsImNvbG9yIjoiI2ZmZmZmZiIsInRleHRhbGlnbiI6InJpZ2h0IiwiZm9udHNpemUiOiIxOCIsInBhZGRpbmd0b3AiOiI1IiwicGFkZGluZ2xlZnQiOiI1In0sImlkIjoidGl0bGUifSwiTTE0NjU4MDk5NDMyMzEiOnsicGFyYW1zIjp7InNob3d0aXRsZSI6IjEiLCJzaG93cHJpY2UiOiIxIiwiZ29vZHNkYXRhIjoiMCIsImNhdGVpZCI6IiIsImNhdGVuYW1lIjoiIiwiZ3JvdXBpZCI6IiIsImdyb3VwbmFtZSI6IiIsImdvb2Rzc29ydCI6IjAiLCJnb29kc251bSI6IjYiLCJzaG93aWNvbiI6IjEiLCJpY29ucG9zaXRpb24iOiJsZWZ0IHRvcCJ9LCJzdHlsZSI6eyJsaXN0c3R5bGUiOiJibG9jayIsImJ1eXN0eWxlIjoiYnV5YnRuLTEiLCJnb29kc2ljb24iOiJyZWNvbW1hbmQiLCJwcmljZWNvbG9yIjoiI2VkMjgyMiIsImljb25wYWRkaW5ndG9wIjoiMCIsImljb25wYWRkaW5nbGVmdCI6IjAiLCJidXlidG5jb2xvciI6IiNmZTU0NTUiLCJpY29uem9vbSI6IjEwMCIsInRpdGxlY29sb3IiOiIjMjYyNjI2In0sImRhdGEiOnsiQzE0NjU4MDk5NDMyMzEiOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtMS5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIifSwiQzE0NjU4MDk5NDMyMzIiOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtMi5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIifSwiQzE0NjU4MDk5NDMyMzMiOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtMy5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIifSwiQzE0NjU4MDk5NDMyMzQiOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtNC5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIifX0sImlkIjoiZ29vZHMifSwiTTE0NjU4MTAwNTk2OTQiOnsicGFyYW1zIjp7ImNvbnRlbnQiOiJQSEFnYzNSNWJHVTlJblJsZUhRdFlXeHBaMjQ2SUdObGJuUmxjanNpUGp4aWNpOCtQQzl3UGp4d0lITjBlV3hsUFNKMFpYaDBMV0ZzYVdkdU9pQmpaVzUwWlhJN0lqN25pWWptbllQbWlZRG1uSWtvWXlsWVdPV1ZodVdmamp3dmNENDhjRDRtYm1KemNEczhZbkl2UGp3dmNEND0ifSwic3R5bGUiOnsiYmFja2dyb3VuZCI6IiNmZmZmZmYifSwiaWQiOiJyaWNodGV4dCJ9fX0=', '../addons/ewei_shopv2/plugin/diypage/static/template/default3/preview.jpg', 3, 0, 0, 0);
INSERT INTO `ims_ewei_shop_diypage_template` VALUES (4, 0, 1, '系统模板04', 'eyJwYWdlIjp7InR5cGUiOiIxIiwidGl0bGUiOiJcdTMwMTBcdTZhMjFcdTY3N2ZcdTMwMTFcdTdjZmJcdTdlZGZcdTZhMjFcdTY3N2YwNCIsIm5hbWUiOiJcdTMwMTBcdTZhMjFcdTY3N2ZcdTMwMTFcdTdjZmJcdTdlZGZcdTZhMjFcdTY3N2YwNCIsImRlc2MiOiIiLCJpY29uIjoiIiwia2V5d29yZCI6IiIsImJhY2tncm91bmQiOiIjZmFmYWZhIiwiZGl5bWVudSI6Ii0xIn0sIml0ZW1zIjp7Ik0xNDY1ODEwMzUyODk0Ijp7ImRhdGEiOnsiQzE0NjU4MTAzNTI4OTQiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDRcL3BpY3R1cmVfMS5wbmciLCJsaW5rdXJsIjoiIn0sIkMxNDY1ODEwMzUyODk1Ijp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQ0XC9waWN0dXJlXzIucG5nIiwibGlua3VybCI6IiJ9LCJNMTQ2NTgxMDM3MDM5OSI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0NFwvcGljdHVyZV8zLnBuZyIsImxpbmt1cmwiOiIifSwiTTE0NjU4MTAzNzE3MDEiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDRcL3BpY3R1cmVfNC5wbmciLCJsaW5rdXJsIjoiIn0sIk0xNDY1ODEwMzcyNzkxIjp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQ0XC9waWN0dXJlXzUucG5nIiwibGlua3VybCI6IiJ9fSwiaWQiOiJwaWN0dXJlIiwic3R5bGUiOnsicGFkZGluZ3RvcCI6IjAiLCJwYWRkaW5nbGVmdCI6IjAifX0sIk0xNDY1ODg5OTQ0NzY5Ijp7InBhcmFtcyI6eyJjb250ZW50IjoiUEhBZ2MzUjViR1U5SW5SbGVIUXRZV3hwWjI0NklHTmxiblJsY2pzaVB1V2J2dWVKaCthZHBlYTZrT1M2anVlOWtlZTduTys4ak9lSmlPYWRnK1c5a3VXT24rUzluT2lBaGVhSmdPYWNpVHd2Y0Q0PSJ9LCJzdHlsZSI6eyJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsInBhZGRpbmciOiIyMCJ9LCJpZCI6InJpY2h0ZXh0In19fQ==', '../addons/ewei_shopv2/plugin/diypage/static/template/default4/preview.jpg', 4, 0, 0, 0);
INSERT INTO `ims_ewei_shop_diypage_template` VALUES (5, 0, 2, '系统模板05', 'eyJwYWdlIjp7InR5cGUiOiIyIiwidGl0bGUiOiJcdTMwMTBcdTZhMjFcdTY3N2ZcdTMwMTFcdTdjZmJcdTdlZGZcdTZhMjFcdTY3N2YwNSIsIm5hbWUiOiJcdTMwMTBcdTZhMjFcdTY3N2ZcdTMwMTFcdTdjZmJcdTdlZGZcdTZhMjFcdTY3N2YwNSIsImRlc2MiOiIiLCJpY29uIjoiIiwia2V5d29yZCI6InQ1IiwiYmFja2dyb3VuZCI6IiNmYWZhZmEiLCJkaXltZW51IjoiLTEifSwiaXRlbXMiOnsiTTE0NjU4MTA3NTE4MDciOnsic3R5bGUiOnsiZG90c3R5bGUiOiJyb3VuZCIsImRvdGFsaWduIjoibGVmdCIsImJhY2tncm91bmQiOiIjZmZmZmZmIiwibGVmdHJpZ2h0IjoiMTAiLCJib3R0b20iOiIxMCIsIm9wYWNpdHkiOiIwLjcifSwiZGF0YSI6eyJDMTQ2NTgxMDc1MTgwNyI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0NVwvYmFubmVyXzEuanBnIiwibGlua3VybCI6IiJ9LCJDMTQ2NTgxMDc1MTgwOCI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0NVwvYmFubmVyXzIuanBnIiwibGlua3VybCI6IiJ9LCJNMTQ2NTgxMDc2NjQ4NiI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0NVwvYmFubmVyXzMuanBnIiwibGlua3VybCI6IiJ9fSwiaWQiOiJiYW5uZXIifSwiTTE0NjU4MTA5NzA0OTQiOnsic3R5bGUiOnsibmF2c3R5bGUiOiIiLCJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsInJvd251bSI6IjQifSwiZGF0YSI6eyJDMTQ2NTgxMDk3MDQ5NCI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0NVwvbWVudV8xLnBuZyIsImxpbmt1cmwiOiIiLCJ0ZXh0IjoiSE9NRSIsImNvbG9yIjoiIzY2NjY2NiJ9LCJDMTQ2NTgxMDk3MDQ5NSI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0NVwvbWVudV8yLnBuZyIsImxpbmt1cmwiOiIiLCJ0ZXh0IjoiTkVXIiwiY29sb3IiOiIjNjY2NjY2In0sIkMxNDY1ODEwOTcwNDk2Ijp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQ1XC9tZW51XzMucG5nIiwibGlua3VybCI6IiIsInRleHQiOiJIT1QiLCJjb2xvciI6IiM2NjY2NjYifSwiQzE0NjU4MTA5NzA0OTciOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDVcL21lbnVfNC5wbmciLCJsaW5rdXJsIjoiIiwidGV4dCI6IkxJU1QiLCJjb2xvciI6IiM2NjY2NjYifX0sImlkIjoibWVudSJ9LCJNMTQ2NTgxMTA5OTI0MCI6eyJwYXJhbXMiOnsicm93IjoiMyJ9LCJkYXRhIjp7IkMxNDY1ODExMDk5MjQwIjp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQ1XC9waWN0dXJld18xLmpwZyIsImxpbmt1cmwiOiIifSwiQzE0NjU4MTEwOTkyNDEiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDVcL3BpY3R1cmV3XzQuanBnIiwibGlua3VybCI6IiJ9LCJDMTQ2NTgxMTA5OTI0MyI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0NVwvcGljdHVyZXdfMS5qcGciLCJsaW5rdXJsIjoiIn19LCJpZCI6InBpY3R1cmV3Iiwic3R5bGUiOnsiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJwYWRkaW5ndG9wIjoiNSIsInBhZGRpbmdsZWZ0IjoiNSJ9fSwiTTE0NjU4MTIzOTAxNzQiOnsicGFyYW1zIjp7InJvdyI6IjIifSwiZGF0YSI6eyJDMTQ2NTgxMjM5MDE3NSI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0NVwvcGljdHVyZXdfMy5qcGciLCJsaW5rdXJsIjoiIn0sIkMxNDY1ODEyMzkwMTc2Ijp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQ1XC9waWN0dXJld18zLmpwZyIsImxpbmt1cmwiOiIifX0sImlkIjoicGljdHVyZXciLCJzdHlsZSI6eyJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsInBhZGRpbmd0b3AiOiIwIiwicGFkZGluZ2xlZnQiOiI1In19LCJNMTQ2NTg3MjQ4NTQ4NiI6eyJzdHlsZSI6eyJoZWlnaHQiOiIxMCIsImJhY2tncm91bmQiOiIjZmFmYWZhIn0sImlkIjoiYmxhbmsifSwiTTE0NjU4MTExNzQ5NTgiOnsiZGF0YSI6eyJDMTQ2NTgxMTE3NDk1OSI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0NVwvcGljdHVyZV8xLmpwZyIsImxpbmt1cmwiOiIifX0sImlkIjoicGljdHVyZSIsInN0eWxlIjp7InBhZGRpbmd0b3AiOiIwIiwicGFkZGluZ2xlZnQiOiIwIn19LCJNMTQ2NTgxMjQxMTM4MSI6eyJwYXJhbXMiOnsic2hvd3RpdGxlIjoiMSIsInNob3dwcmljZSI6IjEiLCJnb29kc2RhdGEiOiIwIiwiY2F0ZWlkIjoiIiwiY2F0ZW5hbWUiOiIiLCJncm91cGlkIjoiIiwiZ3JvdXBuYW1lIjoiIiwiZ29vZHNzb3J0IjoiMCIsImdvb2RzbnVtIjoiNiIsInNob3dpY29uIjoiMSIsImljb25wb3NpdGlvbiI6ImxlZnQgdG9wIn0sInN0eWxlIjp7Imxpc3RzdHlsZSI6ImJsb2NrIiwiYnV5c3R5bGUiOiJidXlidG4tMSIsImdvb2RzaWNvbiI6InJlY29tbWFuZCIsInByaWNlY29sb3IiOiIjZWQyODIyIiwiaWNvbnBhZGRpbmd0b3AiOiIwIiwiaWNvbnBhZGRpbmdsZWZ0IjoiMCIsImJ1eWJ0bmNvbG9yIjoiI2ZlNTQ1NSIsImljb256b29tIjoiMTAwIiwidGl0bGVjb2xvciI6IiMyNjI2MjYifSwiZGF0YSI6eyJDMTQ2NTgxMjQxMTM4MSI6eyJ0aHVtYiI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvaW1hZ2VzXC9kZWZhdWx0XC9nb29kcy0xLmpwZyIsInByaWNlIjoiMjAuMDAiLCJ0aXRsZSI6Ilx1OGZkOVx1OTFjY1x1NjYyZlx1NTU0Nlx1NTRjMVx1NjgwN1x1OTg5OCIsImdpZCI6IiJ9LCJDMTQ2NTgxMjQxMTM4MiI6eyJ0aHVtYiI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvaW1hZ2VzXC9kZWZhdWx0XC9nb29kcy0yLmpwZyIsInByaWNlIjoiMjAuMDAiLCJ0aXRsZSI6Ilx1OGZkOVx1OTFjY1x1NjYyZlx1NTU0Nlx1NTRjMVx1NjgwN1x1OTg5OCIsImdpZCI6IiJ9LCJDMTQ2NTgxMjQxMTM4MyI6eyJ0aHVtYiI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvaW1hZ2VzXC9kZWZhdWx0XC9nb29kcy0zLmpwZyIsInByaWNlIjoiMjAuMDAiLCJ0aXRsZSI6Ilx1OGZkOVx1OTFjY1x1NjYyZlx1NTU0Nlx1NTRjMVx1NjgwN1x1OTg5OCIsImdpZCI6IiJ9LCJDMTQ2NTgxMjQxMTM4NCI6eyJ0aHVtYiI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvaW1hZ2VzXC9kZWZhdWx0XC9nb29kcy00LmpwZyIsInByaWNlIjoiMjAuMDAiLCJ0aXRsZSI6Ilx1OGZkOVx1OTFjY1x1NjYyZlx1NTU0Nlx1NTRjMVx1NjgwN1x1OTg5OCIsImdpZCI6IiJ9fSwiaWQiOiJnb29kcyJ9LCJNMTQ2NTgxMjQ2Njg5MyI6eyJwYXJhbXMiOnsiY29udGVudCI6IlBIQWdjM1I1YkdVOUluUmxlSFF0WVd4cFoyNDZJR05sYm5SbGNqc2lQanhpY2k4K1BDOXdQanh3SUhOMGVXeGxQU0owWlhoMExXRnNhV2R1T2lCalpXNTBaWEk3SWo3a3U2WGt1SXJsbTc3bmlZZmxuWWZtbmFYbXVwRGt1bzdudlpIbnU1enZ2SXpuaVlqbW5ZUGx2WkxsanBcL2t2WnpvZ0lYbWlZRG1uSW5qZ0lJOEwzQStQSEErUEdKeUx6NDhMM0ErIn0sInN0eWxlIjp7ImJhY2tncm91bmQiOiIjZmZmZmZmIn0sImlkIjoicmljaHRleHQifX19', '../addons/ewei_shopv2/plugin/diypage/static/template/default5/preview.jpg', 5, 0, 0, 0);
INSERT INTO `ims_ewei_shop_diypage_template` VALUES (6, 0, 1, '系统模板06', 'eyJwYWdlIjp7InR5cGUiOiIxIiwidGl0bGUiOiJcdTMwMTBcdTZhMjFcdTY3N2ZcdTMwMTFcdTdjZmJcdTdlZGZcdTZhMjFcdTY3N2YwNiIsIm5hbWUiOiJcdTMwMTBcdTZhMjFcdTY3N2ZcdTMwMTFcdTdjZmJcdTdlZGZcdTZhMjFcdTY3N2YwNiIsImRlc2MiOiIiLCJpY29uIjoiIiwia2V5d29yZCI6IiIsImJhY2tncm91bmQiOiIjZmFmYWZhIiwiZGl5bWVudSI6Ii0xIn0sIml0ZW1zIjp7Ik0xNDY1ODEyNjAyOTMzIjp7ImRhdGEiOnsiQzE0NjU4MTI2MDI5MzMiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDZcL3BpY3R1cmVfMS5qcGciLCJsaW5rdXJsIjoiIn0sIkMxNDY1ODEyNjAyOTM0Ijp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQ2XC9waWN0dXJlXzIuanBnIiwibGlua3VybCI6IiJ9LCJNMTQ2NTgxMjYwNDQ5NCI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0NlwvcGljdHVyZV8zLmpwZyIsImxpbmt1cmwiOiIifSwiTTE0NjU4MTI2MDUyNDUiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDZcL3BpY3R1cmVfNC5qcGciLCJsaW5rdXJsIjoiIn0sIk0xNDY1ODEyNjA1OTgwIjp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQ2XC9waWN0dXJlXzUuanBnIiwibGlua3VybCI6IiJ9LCJNMTQ2NTgxMjYwNzA0NSI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0NlwvcGljdHVyZV82LmpwZyIsImxpbmt1cmwiOiIifX0sImlkIjoicGljdHVyZSIsInN0eWxlIjp7InBhZGRpbmd0b3AiOiIwIiwicGFkZGluZ2xlZnQiOiIwIn19LCJNMTQ2NTg5MDE4NDY1MCI6eyJwYXJhbXMiOnsiY29udGVudCI6IlBIQWdjM1I1YkdVOUluUmxlSFF0WVd4cFoyNDZJR05sYm5SbGNqc2lQdVdidnVlSmgrYWRwZWE2a09TNmp1ZTlrZWU3bk8rOGpPZUppT2FkZytXOWt1V09uK1M5bk9pQWhlYUpnT2FjaVR3dmNEND0ifSwic3R5bGUiOnsiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJwYWRkaW5nIjoiMjAifSwiaWQiOiJyaWNodGV4dCJ9fX0=', '../addons/ewei_shopv2/plugin/diypage/static/template/default6/preview.jpg', 6, 0, 0, 0);
INSERT INTO `ims_ewei_shop_diypage_template` VALUES (7, 0, 2, '系统模板07', 'eyJwYWdlIjp7InR5cGUiOiIyIiwidGl0bGUiOiJcdTMwMTBcdTZhMjFcdTY3N2ZcdTMwMTFcdTdjZmJcdTdlZGZcdTZhMjFcdTY3N2YwNyIsIm5hbWUiOiJcdTMwMTBcdTZhMjFcdTY3N2ZcdTMwMTFcdTdjZmJcdTdlZGZcdTZhMjFcdTY3N2YwNyIsImRlc2MiOiIiLCJpY29uIjoiIiwia2V5d29yZCI6IiIsImJhY2tncm91bmQiOiIjZmFmYWZhIiwiZGl5bWVudSI6Ii0xIn0sIml0ZW1zIjp7Ik0xNDY1ODEyNjkxMzg5Ijp7ImRhdGEiOnsiQzE0NjU4MTI2OTEzODkiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDdcL3BpY3R1cmVfMS5qcGciLCJsaW5rdXJsIjoiIn19LCJpZCI6InBpY3R1cmUiLCJzdHlsZSI6eyJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsInBhZGRpbmd0b3AiOiIwIiwicGFkZGluZ2xlZnQiOiIwIn19LCJNMTQ2NTgxMjcyODgyMSI6eyJwYXJhbXMiOnsicGxhY2Vob2xkZXIiOiJcdThiZjdcdThmOTNcdTUxNjVcdTUxNzNcdTk1MmVcdTViNTdcdThmZGJcdTg4NGNcdTY0MWNcdTdkMjIifSwic3R5bGUiOnsiaW5wdXRiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsImJhY2tncm91bmQiOiIjZjFmMWYyIiwiaWNvbmNvbG9yIjoiI2I0YjRiNCIsImNvbG9yIjoiIzk5OTk5OSIsInBhZGRpbmd0b3AiOiIxMCIsInBhZGRpbmdsZWZ0IjoiMTAiLCJ0ZXh0YWxpZ24iOiJsZWZ0Iiwic2VhcmNoc3R5bGUiOiIifSwiaWQiOiJzZWFyY2gifSwiTTE0NjU4MTI3MzkxOTciOnsicGFyYW1zIjp7InJvdyI6IjMifSwiZGF0YSI6eyJDMTQ2NTgxMjczOTE5NyI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0N1wvcGljdHVyZXdfMS5qcGciLCJsaW5rdXJsIjoiIn0sIkMxNDY1ODEyNzM5MTk4Ijp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQ3XC9waWN0dXJld18yLmpwZyIsImxpbmt1cmwiOiIifSwiQzE0NjU4MTI3MzkxOTkiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDdcL3BpY3R1cmV3XzMuanBnIiwibGlua3VybCI6IiJ9fSwiaWQiOiJwaWN0dXJldyIsInN0eWxlIjp7ImJhY2tncm91bmQiOiIjZmZmZmZmIiwicGFkZGluZ3RvcCI6IjAiLCJwYWRkaW5nbGVmdCI6IjUifX0sIk0xNDY1ODEyNzg0NTY1Ijp7ImRhdGEiOnsiQzE0NjU4MTI3ODQ1NjUiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDdcL3BpY3R1cmVfMy5qcGciLCJsaW5rdXJsIjoiIn0sIk0xNDY1ODEyODE5OTQ4Ijp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQ3XC9waWN0dXJlXzIuanBnIiwibGlua3VybCI6IiJ9fSwiaWQiOiJwaWN0dXJlIiwic3R5bGUiOnsiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJwYWRkaW5ndG9wIjoiNCIsInBhZGRpbmdsZWZ0IjoiMCJ9fSwiTTE0NjU4MTI4NzU5ODgiOnsicGFyYW1zIjp7InJvdyI6IjIifSwiZGF0YSI6eyJDMTQ2NTgxMjg3NTk4OCI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0N1wvcGljdHVyZXdfNC5qcGciLCJsaW5rdXJsIjoiIn0sIkMxNDY1ODEyODc1OTg5Ijp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQ3XC9waWN0dXJld181LmpwZyIsImxpbmt1cmwiOiIifSwiQzE0NjU4MTI4NzU5OTAiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDdcL3BpY3R1cmV3XzYuanBnIiwibGlua3VybCI6IiJ9LCJDMTQ2NTgxMjg3NTk5MSI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0N1wvcGljdHVyZXdfNy5qcGciLCJsaW5rdXJsIjoiIn19LCJpZCI6InBpY3R1cmV3Iiwic3R5bGUiOnsiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJwYWRkaW5ndG9wIjoiMCIsInBhZGRpbmdsZWZ0IjoiMCJ9fSwiTTE0NjU4NzI4OTQxMjAiOnsic3R5bGUiOnsiaGVpZ2h0IjoiMTAiLCJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiJ9LCJpZCI6ImJsYW5rIn0sIk0xNDY1ODcyODMyODk1Ijp7InBhcmFtcyI6eyJ0aXRsZSI6Ilx1NzBlZFx1OTUwMFx1NTU0Nlx1NTRjMSIsImljb24iOiIifSwic3R5bGUiOnsiYmFja2dyb3VuZCI6IiNmMjMyNGMiLCJjb2xvciI6IiNmZmZmZmYiLCJ0ZXh0YWxpZ24iOiJjZW50ZXIiLCJmb250c2l6ZSI6IjE4IiwicGFkZGluZ3RvcCI6IjUiLCJwYWRkaW5nbGVmdCI6IjUifSwiaWQiOiJ0aXRsZSJ9LCJNMTQ2NTgxMjkwNDA1MyI6eyJwYXJhbXMiOnsic2hvd3RpdGxlIjoiMSIsInNob3dwcmljZSI6IjEiLCJnb29kc2RhdGEiOiIwIiwiY2F0ZWlkIjoiIiwiY2F0ZW5hbWUiOiIiLCJncm91cGlkIjoiIiwiZ3JvdXBuYW1lIjoiIiwiZ29vZHNzb3J0IjoiMCIsImdvb2RzbnVtIjoiNiIsInNob3dpY29uIjoiMSIsImljb25wb3NpdGlvbiI6ImxlZnQgdG9wIn0sInN0eWxlIjp7Imxpc3RzdHlsZSI6ImJsb2NrIiwiYnV5c3R5bGUiOiJidXlidG4tMSIsImdvb2RzaWNvbiI6InJlY29tbWFuZCIsInByaWNlY29sb3IiOiIjZWQyODIyIiwiaWNvbnBhZGRpbmd0b3AiOiIwIiwiaWNvbnBhZGRpbmdsZWZ0IjoiMCIsImJ1eWJ0bmNvbG9yIjoiI2ZlNTQ1NSIsImljb256b29tIjoiMTAwIiwidGl0bGVjb2xvciI6IiMyNjI2MjYifSwiZGF0YSI6eyJDMTQ2NTgxMjkwNDA1MyI6eyJ0aHVtYiI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvaW1hZ2VzXC9kZWZhdWx0XC9nb29kcy0xLmpwZyIsInByaWNlIjoiMjAuMDAiLCJ0aXRsZSI6Ilx1OGZkOVx1OTFjY1x1NjYyZlx1NTU0Nlx1NTRjMVx1NjgwN1x1OTg5OCIsImdpZCI6IiJ9LCJDMTQ2NTgxMjkwNDA1NCI6eyJ0aHVtYiI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvaW1hZ2VzXC9kZWZhdWx0XC9nb29kcy0yLmpwZyIsInByaWNlIjoiMjAuMDAiLCJ0aXRsZSI6Ilx1OGZkOVx1OTFjY1x1NjYyZlx1NTU0Nlx1NTRjMVx1NjgwN1x1OTg5OCIsImdpZCI6IiJ9LCJDMTQ2NTgxMjkwNDA1NSI6eyJ0aHVtYiI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvaW1hZ2VzXC9kZWZhdWx0XC9nb29kcy0zLmpwZyIsInByaWNlIjoiMjAuMDAiLCJ0aXRsZSI6Ilx1OGZkOVx1OTFjY1x1NjYyZlx1NTU0Nlx1NTRjMVx1NjgwN1x1OTg5OCIsImdpZCI6IiJ9LCJDMTQ2NTgxMjkwNDA1NiI6eyJ0aHVtYiI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvaW1hZ2VzXC9kZWZhdWx0XC9nb29kcy00LmpwZyIsInByaWNlIjoiMjAuMDAiLCJ0aXRsZSI6Ilx1OGZkOVx1OTFjY1x1NjYyZlx1NTU0Nlx1NTRjMVx1NjgwN1x1OTg5OCIsImdpZCI6IiJ9fSwiaWQiOiJnb29kcyJ9LCJNMTQ2NTg4ODU1MjYwNiI6eyJwYXJhbXMiOnsiY29udGVudCI6IlBIQWdjM1I1YkdVOUluUmxlSFF0WVd4cFoyNDZJR05sYm5SbGNqc2lQdVdidnVlSmgrYWRwZWE2a09TNmp1ZTlrZWU3bk8rOGpPZUppT2FkZytXOWt1V09uK1M5bk9pQWhlYUpnT2FjaVR3dmNEND0ifSwic3R5bGUiOnsiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJwYWRkaW5nIjoiMjAifSwiaWQiOiJyaWNodGV4dCJ9fX0=', '../addons/ewei_shopv2/plugin/diypage/static/template/default7/preview.jpg', 7, 0, 0, 0);
INSERT INTO `ims_ewei_shop_diypage_template` VALUES (8, 0, 2, '系统模板08', 'eyJwYWdlIjp7InR5cGUiOiIyIiwidGl0bGUiOiJcdTMwMTBcdTZhMjFcdTY3N2ZcdTMwMTFcdTdjZmJcdTdlZGZcdTZhMjFcdTY3N2YwOCIsIm5hbWUiOiJcdTMwMTBcdTZhMjFcdTY3N2ZcdTMwMTFcdTdjZmJcdTdlZGZcdTZhMjFcdTY3N2YwOCIsImRlc2MiOiIiLCJpY29uIjoiIiwia2V5d29yZCI6IiIsImJhY2tncm91bmQiOiIjZmFmYWZhIiwiZGl5bWVudSI6Ii0xIn0sIml0ZW1zIjp7Ik0xNDY1ODEyOTk3MDQ1Ijp7ImRhdGEiOnsiQzE0NjU4MTI5OTcwNDUiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDhcL3BpY3R1cmVfMS5qcGciLCJsaW5rdXJsIjoiIn19LCJpZCI6InBpY3R1cmUiLCJzdHlsZSI6eyJwYWRkaW5ndG9wIjoiMCIsInBhZGRpbmdsZWZ0IjoiMCJ9fSwiTTE0NjU4MTMwMTc1NDkiOnsicGFyYW1zIjp7InJvdyI6IjMifSwiZGF0YSI6eyJDMTQ2NTgxMzAxNzU1MCI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0OFwvcGljdHVyZXdfMS5qcGciLCJsaW5rdXJsIjoiIn0sIkMxNDY1ODEzMDE3NTUxIjp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQ4XC9waWN0dXJld18yLmpwZyIsImxpbmt1cmwiOiIifSwiQzE0NjU4MTMwMTc1NTIiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDhcL3BpY3R1cmV3XzMuanBnIiwibGlua3VybCI6IiJ9fSwiaWQiOiJwaWN0dXJldyIsInN0eWxlIjp7ImJhY2tncm91bmQiOiIjZmZmZmZmIiwicGFkZGluZ3RvcCI6IjAiLCJwYWRkaW5nbGVmdCI6IjAifX0sIk0xNDY1ODEzMDQyODc2Ijp7ImRhdGEiOnsiQzE0NjU4MTMwNDI4NzYiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDhcL3BpY3R1cmVfMi5qcGciLCJsaW5rdXJsIjoiIn0sIkMxNDY1ODEzMDQyODc3Ijp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQ4XC9waWN0dXJlXzMuanBnIiwibGlua3VybCI6IiJ9fSwiaWQiOiJwaWN0dXJlIiwic3R5bGUiOnsicGFkZGluZ3RvcCI6IjAiLCJwYWRkaW5nbGVmdCI6IjAifX0sIk0xNDY1ODEzMDg4ODA0Ijp7InBhcmFtcyI6eyJyb3ciOiI0In0sImRhdGEiOnsiQzE0NjU4MTMwODg4MDQiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDhcL3BpY3R1cmV3XzQuanBnIiwibGlua3VybCI6IiJ9LCJDMTQ2NTgxMzA4ODgwNSI6eyJpbWd1cmwiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL3RlbXBsYXRlXC9kZWZhdWx0OFwvcGljdHVyZXdfNS5qcGciLCJsaW5rdXJsIjoiIn0sIkMxNDY1ODEzMDg4ODA2Ijp7ImltZ3VybCI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvdGVtcGxhdGVcL2RlZmF1bHQ4XC9waWN0dXJld182LmpwZyIsImxpbmt1cmwiOiIifSwiQzE0NjU4MTMwODg4MDciOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC90ZW1wbGF0ZVwvZGVmYXVsdDhcL3BpY3R1cmV3XzcuanBnIiwibGlua3VybCI6IiJ9fSwiaWQiOiJwaWN0dXJldyIsInN0eWxlIjp7ImJhY2tncm91bmQiOiIjZmZmZmZmIiwicGFkZGluZ3RvcCI6IjAiLCJwYWRkaW5nbGVmdCI6IjAifX0sIk0xNDY1ODEzMTMxMzgwIjp7InBhcmFtcyI6eyJzaG93dGl0bGUiOiIxIiwic2hvd3ByaWNlIjoiMSIsImdvb2RzZGF0YSI6IjAiLCJjYXRlaWQiOiIiLCJjYXRlbmFtZSI6IiIsImdyb3VwaWQiOiIiLCJncm91cG5hbWUiOiIiLCJnb29kc3NvcnQiOiIwIiwiZ29vZHNudW0iOiI2Iiwic2hvd2ljb24iOiIxIiwiaWNvbnBvc2l0aW9uIjoibGVmdCB0b3AifSwic3R5bGUiOnsibGlzdHN0eWxlIjoiYmxvY2siLCJidXlzdHlsZSI6ImJ1eWJ0bi0xIiwiZ29vZHNpY29uIjoicmVjb21tYW5kIiwicHJpY2Vjb2xvciI6IiNlZDI4MjIiLCJpY29ucGFkZGluZ3RvcCI6IjAiLCJpY29ucGFkZGluZ2xlZnQiOiIwIiwiYnV5YnRuY29sb3IiOiIjZmU1NDU1IiwiaWNvbnpvb20iOiIxMDAiLCJ0aXRsZWNvbG9yIjoiIzI2MjYyNiJ9LCJkYXRhIjp7IkMxNDY1ODEzMTMxMzgwIjp7InRodW1iIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC9pbWFnZXNcL2RlZmF1bHRcL2dvb2RzLTEuanBnIiwicHJpY2UiOiIyMC4wMCIsInRpdGxlIjoiXHU4ZmQ5XHU5MWNjXHU2NjJmXHU1NTQ2XHU1NGMxXHU2ODA3XHU5ODk4IiwiZ2lkIjoiIn0sIkMxNDY1ODEzMTMxMzgxIjp7InRodW1iIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC9pbWFnZXNcL2RlZmF1bHRcL2dvb2RzLTIuanBnIiwicHJpY2UiOiIyMC4wMCIsInRpdGxlIjoiXHU4ZmQ5XHU5MWNjXHU2NjJmXHU1NTQ2XHU1NGMxXHU2ODA3XHU5ODk4IiwiZ2lkIjoiIn0sIkMxNDY1ODEzMTMxMzgyIjp7InRodW1iIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC9pbWFnZXNcL2RlZmF1bHRcL2dvb2RzLTMuanBnIiwicHJpY2UiOiIyMC4wMCIsInRpdGxlIjoiXHU4ZmQ5XHU5MWNjXHU2NjJmXHU1NTQ2XHU1NGMxXHU2ODA3XHU5ODk4IiwiZ2lkIjoiIn0sIkMxNDY1ODEzMTMxMzgzIjp7InRodW1iIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC9pbWFnZXNcL2RlZmF1bHRcL2dvb2RzLTQuanBnIiwicHJpY2UiOiIyMC4wMCIsInRpdGxlIjoiXHU4ZmQ5XHU5MWNjXHU2NjJmXHU1NTQ2XHU1NGMxXHU2ODA3XHU5ODk4IiwiZ2lkIjoiIn19LCJpZCI6Imdvb2RzIn0sIk0xNDY1ODg4ODMxMjc4Ijp7InBhcmFtcyI6eyJjb250ZW50IjoiUEhBZ2MzUjViR1U5SW5SbGVIUXRZV3hwWjI0NklHTmxiblJsY2pzaVB1V2J2dWVKaCthZHBlYTZrT1M2anVlOWtlZTduTys4ak9lSmlPYWRnK1c5a3VXT24rUzluT2lBaGVhSmdPYWNpVHd2Y0Q0PSJ9LCJzdHlsZSI6eyJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsInBhZGRpbmciOiIyMCJ9LCJpZCI6InJpY2h0ZXh0In19fQ==', '../addons/ewei_shopv2/plugin/diypage/static/template/default8/preview.jpg', 8, 0, 0, 0);
INSERT INTO `ims_ewei_shop_diypage_template` VALUES (9, 0, 3, '会员中心01', 'eyJwYWdlIjp7InR5cGUiOiIzIiwidGl0bGUiOiJcdTRmMWFcdTU0NThcdTRlMmRcdTVmYzMiLCJuYW1lIjoiXHU0ZjFhXHU1NDU4XHU0ZTJkXHU1ZmMzIiwiZGVzYyI6IiIsImljb24iOiIiLCJrZXl3b3JkIjoiIiwiYmFja2dyb3VuZCI6IiNmYWZhZmEiLCJkaXltZW51IjoiMCIsImZvbGxvd2JhciI6IjAiLCJ2aXNpdCI6IjAiLCJ2aXNpdGxldmVsIjp7Im1lbWJlciI6IiIsImNvbW1pc3Npb24iOiIifSwibm92aXNpdCI6eyJ0aXRsZSI6IiIsImxpbmsiOiIifX0sIml0ZW1zIjp7Ik0xNDc0NTI2MTM0ODE0Ijp7InBhcmFtcyI6eyJzdHlsZSI6ImRlZmF1bHQxIiwibGV2ZWxsaW5rIjoiIiwic2V0aWNvbiI6Imljb24tc2V0dGluZ3MiLCJzZXRsaW5rIjoiIiwibGVmdG5hdiI6Ilx1NTE0NVx1NTAzYyIsImxlZnRuYXZsaW5rIjoiIiwicmlnaHRuYXYiOiJcdTUxNTFcdTYzNjIiLCJyaWdodG5hdmxpbmsiOiIifSwic3R5bGUiOnsiYmFja2dyb3VuZCI6IiNmZTU0NTUiLCJ0ZXh0Y29sb3IiOiIjZmZmZmZmIiwidGV4dGxpZ2h0IjoiI2ZlZjMxZiIsImhlYWRzdHlsZSI6IiJ9LCJpbmZvIjp7ImF2YXRhciI6IiIsIm5pY2tuYW1lIjoiIiwibGV2ZWxuYW1lIjoiIiwidGV4dG1vbmV5IjoiIiwidGV4dGNyZWRpdCI6IiIsIm1vbmV5IjoiIiwiY3JlZGl0IjoiIn0sImlkIjoibWVtYmVyIn0sIk0xNDc0NTI2MTM4OTEwIjp7InBhcmFtcyI6eyJsaW5rdXJsIjoiIiwidGl0bGUiOiJcdTdlZDFcdTViOWFcdTYyNGJcdTY3M2FcdTUzZjciLCJ0ZXh0IjoiXHU1OTgyXHU2NzljXHU2MGE4XHU3NTI4XHU2MjRiXHU2NzNhXHU1M2Y3XHU2Y2U4XHU1MThjXHU4ZmM3XHU0ZjFhXHU1NDU4XHU2MjE2XHU2MGE4XHU2MGYzXHU5MDFhXHU4ZmM3XHU1ZmFlXHU0ZmUxXHU1OTE2XHU4ZDJkXHU3MjY5XHU4YmY3XHU3ZWQxXHU1YjlhXHU2MGE4XHU3Njg0XHU2MjRiXHU2NzNhXHU1M2Y3XHU3ODAxIiwiaWNvbmNsYXNzIjoiaWNvbi1tb2JpbGUifSwic3R5bGUiOnsibWFyZ2ludG9wIjoiMTAiLCJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsInRpdGxlY29sb3IiOiIjZmYwMDExIiwidGV4dGNvbG9yIjoiIzk5OTk5OSIsImljb25jb2xvciI6IiM5OTk5OTkifSwiaWQiOiJiaW5kbW9iaWxlIn0sIk0xNDc0NTI2MTQzNDg3Ijp7InN0eWxlIjp7Im1hcmdpbnRvcCI6IjEwIiwiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJpY29uY29sb3IiOiIjOTk5OTk5IiwidGV4dGNvbG9yIjoiIzMzMzMzMyIsInJlbWFya2NvbG9yIjoiIzg4ODg4OCJ9LCJkYXRhIjp7IkMxNDc0NTI2MTQzNDg5Ijp7InRleHQiOiJcdTYyMTFcdTc2ODRcdThiYTJcdTUzNTUiLCJsaW5rdXJsIjoiIiwiaWNvbmNsYXNzIjoiaWNvbi1saXN0IiwicmVtYXJrIjoiXHU2N2U1XHU3NzBiXHU1MTY4XHU5MGU4IiwiZG90bnVtIjoiIn19LCJpZCI6Imxpc3RtZW51In0sIk0xNDc0NTI2MTgxNDMxIjp7InBhcmFtcyI6eyJyb3dudW0iOiI0IiwiYm9yZGVyIjoiMSIsImJvcmRlcnRvcCI6IjAiLCJib3JkZXJib3R0b20iOiIxIn0sInN0eWxlIjp7ImJhY2tncm91bmQiOiIjZmZmZmZmIiwiYm9yZGVyY29sb3IiOiIjZWJlYmViIiwidGV4dGNvbG9yIjoiIzdhN2E3YSIsImljb25jb2xvciI6IiNhYWFhYWEiLCJkb3Rjb2xvciI6IiNmZjAwMTEifSwiZGF0YSI6eyJDMTQ3NDUyNjE4MTQzMSI6eyJpY29uY2xhc3MiOiJpY29uLWNhcmQiLCJ0ZXh0IjoiXHU1Zjg1XHU0ZWQ4XHU2YjNlIiwibGlua3VybCI6IiIsImRvdG51bSI6IjAifSwiQzE0NzQ1MjYxODE0MzIiOnsiaWNvbmNsYXNzIjoiaWNvbi1ib3giLCJ0ZXh0IjoiXHU1Zjg1XHU1M2QxXHU4ZDI3IiwibGlua3VybCI6IiIsImRvdG51bSI6IjAifSwiQzE0NzQ1MjYxODE0MzMiOnsiaWNvbmNsYXNzIjoiaWNvbi1kZWxpdmVyIiwidGV4dCI6Ilx1NWY4NVx1NjUzNlx1OGQyNyIsImxpbmt1cmwiOiIiLCJkb3RudW0iOiIwIn0sIkMxNDc0NTI2MTgxNDM0Ijp7Imljb25jbGFzcyI6Imljb24tZWxlY3RyaWNhbCIsInRleHQiOiJcdTkwMDBcdTYzNjJcdThkMjciLCJsaW5rdXJsIjoiIiwiZG90bnVtIjoiMCJ9fSwiaWQiOiJpY29uZ3JvdXAifSwiTTE0NzQ1MjYxOTkxMDIiOnsic3R5bGUiOnsibWFyZ2ludG9wIjoiMTAiLCJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsImljb25jb2xvciI6IiM5OTk5OTkiLCJ0ZXh0Y29sb3IiOiIjMzMzMzMzIiwicmVtYXJrY29sb3IiOiIjODg4ODg4In0sImRhdGEiOnsiQzE0NzQ1MjYxOTkxMDIiOnsidGV4dCI6Ilx1NTIwNlx1OTUwMFx1NGUyZFx1NWZjMyIsImxpbmt1cmwiOiIiLCJpY29uY2xhc3MiOiJpY29uLWdyb3VwIiwicmVtYXJrIjoiXHU2N2U1XHU3NzBiIiwiZG90bnVtIjoiIn0sIkMxNDc0NTI2MTk5MTAzIjp7InRleHQiOiJcdTc5ZWZcdTUyMDZcdTdiN2VcdTUyMzAiLCJsaW5rdXJsIjoiIiwiaWNvbmNsYXNzIjoiaWNvbi1naWZ0cyIsInJlbWFyayI6Ilx1NjdlNVx1NzcwYiIsImRvdG51bSI6IiJ9LCJDMTQ3NDUyNjE5OTEwNCI6eyJ0ZXh0IjoiXHU3OWVmXHU1MjA2XHU1NTQ2XHU1N2NlIiwibGlua3VybCI6IiIsImljb25jbGFzcyI6Imljb24tY3JlZGl0bGV2ZWwiLCJyZW1hcmsiOiJcdTY3ZTVcdTc3MGIiLCJkb3RudW0iOiIifX0sImlkIjoibGlzdG1lbnUifSwiTTE0NzQ1MjYyMjIyMDYiOnsic3R5bGUiOnsibWFyZ2ludG9wIjoiMTAiLCJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsImljb25jb2xvciI6IiM5OTk5OTkiLCJ0ZXh0Y29sb3IiOiIjMzMzMzMzIiwicmVtYXJrY29sb3IiOiIjODg4ODg4In0sImRhdGEiOnsiQzE0NzQ1MjYyMjIyMDYiOnsidGV4dCI6Ilx1OTg4Nlx1NTNkNlx1NGYxOFx1NjBlMFx1NTIzOCIsImxpbmt1cmwiOiIiLCJpY29uY2xhc3MiOiJpY29uLXNhbWUiLCJyZW1hcmsiOiJcdTY3ZTVcdTc3MGIiLCJkb3RudW0iOiIifSwiQzE0NzQ1MjYyMjIyMDciOnsidGV4dCI6Ilx1NjIxMVx1NzY4NFx1NGYxOFx1NjBlMFx1NTIzOCIsImxpbmt1cmwiOiIiLCJpY29uY2xhc3MiOiJpY29uLWNhcmQiLCJyZW1hcmsiOiJcdTY3ZTVcdTc3MGIiLCJkb3RudW0iOiIifX0sImlkIjoibGlzdG1lbnUifSwiTTE0NzQ1MjYyNTM2MTQiOnsic3R5bGUiOnsibWFyZ2ludG9wIjoiMTAiLCJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsImljb25jb2xvciI6IiM5OTk5OTkiLCJ0ZXh0Y29sb3IiOiIjMzMzMzMzIiwicmVtYXJrY29sb3IiOiIjODg4ODg4In0sImRhdGEiOnsiQzE0NzQ1MjYyNTM2MTQiOnsidGV4dCI6Ilx1NzllZlx1NTIwNlx1NjM5Mlx1ODg0YyIsImxpbmt1cmwiOiIiLCJpY29uY2xhc3MiOiJpY29uLXJhbmsiLCJyZW1hcmsiOiJcdTY3ZTVcdTc3MGIiLCJkb3RudW0iOiIifSwiQzE0NzQ1MjYyNTM2MTUiOnsidGV4dCI6Ilx1NmQ4OFx1OGQzOVx1NjM5Mlx1ODg0YyIsImxpbmt1cmwiOiIiLCJpY29uY2xhc3MiOiJpY29uLW1vbmV5IiwicmVtYXJrIjoiXHU2N2U1XHU3NzBiIiwiZG90bnVtIjoiIn19LCJpZCI6Imxpc3RtZW51In0sIk0xNDc0NTI2MjgxNzYwIjp7InN0eWxlIjp7Im1hcmdpbnRvcCI6IjEwIiwiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJpY29uY29sb3IiOiIjOTk5OTk5IiwidGV4dGNvbG9yIjoiIzMzMzMzMyIsInJlbWFya2NvbG9yIjoiIzg4ODg4OCJ9LCJkYXRhIjp7IkMxNDc0NTI2MjgxNzYwIjp7InRleHQiOiJcdTYyMTFcdTc2ODRcdThkMmRcdTcyNjlcdThmNjYiLCJsaW5rdXJsIjoiIiwiaWNvbmNsYXNzIjoiaWNvbi1jYXJ0IiwicmVtYXJrIjoiXHU2N2U1XHU3NzBiIiwiZG90bnVtIjoiIn0sIkMxNDc0NTI2MjgxNzYxIjp7InRleHQiOiJcdTYyMTFcdTc2ODRcdTUxNzNcdTZjZTgiLCJsaW5rdXJsIjoiIiwiaWNvbmNsYXNzIjoiaWNvbi1saWtlIiwicmVtYXJrIjoiXHU2N2U1XHU3NzBiIiwiZG90bnVtIjoiIn0sIkMxNDc0NTI2MjgxNzYyIjp7InRleHQiOiJcdTYyMTFcdTc2ODRcdThkYjNcdThmZjkiLCJsaW5rdXJsIjoiIiwiaWNvbmNsYXNzIjoiaWNvbi1mb290cHJpbnQiLCJyZW1hcmsiOiJcdTY3ZTVcdTc3MGIiLCJkb3RudW0iOiIifSwiTTE0NzQ1MjYzMDA1NDMiOnsidGV4dCI6Ilx1NmQ4OFx1NjA2Zlx1NjNkMFx1OTE5Mlx1OGJiZVx1N2Y2ZSIsImxpbmt1cmwiOiIiLCJpY29uY2xhc3MiOiJpY29uLW5vdGljZSIsInJlbWFyayI6Ilx1NjdlNVx1NzcwYiIsImRvdG51bSI6IiJ9fSwiaWQiOiJsaXN0bWVudSJ9LCJNMTQ3NDUyNjMwNzI3MCI6eyJzdHlsZSI6eyJtYXJnaW50b3AiOiIxMCIsImJhY2tncm91bmQiOiIjZmZmZmZmIiwiaWNvbmNvbG9yIjoiIzk5OTk5OSIsInRleHRjb2xvciI6IiMzMzMzMzMiLCJyZW1hcmtjb2xvciI6IiM4ODg4ODgifSwiZGF0YSI6eyJDMTQ3NDUyNjMwNzI3MCI6eyJ0ZXh0IjoiXHU2NTM2XHU4ZDI3XHU1NzMwXHU1NzQwXHU3YmExXHU3NDA2IiwibGlua3VybCI6IiIsImljb25jbGFzcyI6Imljb24tYWRkcmVzcyIsInJlbWFyayI6Ilx1NjdlNVx1NzcwYiIsImRvdG51bSI6IiJ9LCJDMTQ3NDUyNjMwNzI3MSI6eyJ0ZXh0IjoiXHU1ZTJlXHU1MmE5XHU0ZTJkXHU1ZmMzIiwibGlua3VybCI6IiIsImljb25jbGFzcyI6Imljb24tcXVlc3Rpb25maWxsIiwicmVtYXJrIjoiXHU2N2U1XHU3NzBiIiwiZG90bnVtIjoiIn19LCJpZCI6Imxpc3RtZW51In0sIk0xNDc0NTk3NzI2NTU2Ijp7InBhcmFtcyI6eyJiaW5kdXJsIjoiIiwibG9nb3V0dXJsIjoiIn0sInN0eWxlIjp7InRleHRjb2xvciI6IiNmZjAwMTEiLCJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsIm1hcmdpbnRvcCI6IjEwIn0sImlkIjoibG9nb3V0In0sIk0xNDc0NTk3OTcxMjE4Ijp7InBhcmFtcyI6eyJjb250ZW50IjoiUEhBZ2MzUjViR1U5SW5SbGVIUXRZV3hwWjI0NklHTmxiblJsY2pzaVB1ZUppT2FkZythSmdPYWNpU0FvWXlrZ2VIaDQ1WldHNVorT1BDOXdQZz09In0sInN0eWxlIjp7ImJhY2tncm91bmQiOiIjZmZmZmZmIiwicGFkZGluZyI6IjIwIn0sImlkIjoicmljaHRleHQifX19', '../addons/ewei_shopv2/plugin/diypage/static/template/member1/preview.jpg', 9, 0, 0, 0);
INSERT INTO `ims_ewei_shop_diypage_template` VALUES (10, 0, 4, '分销中心01', 'eyJwYWdlIjp7InR5cGUiOiI0IiwidGl0bGUiOiJcdThiZjdcdThmOTNcdTUxNjVcdTk4NzVcdTk3NjJcdTY4MDdcdTk4OTgiLCJuYW1lIjoiXHU2NzJhXHU1NDdkXHU1NDBkXHU5ODc1XHU5NzYyIiwiZGVzYyI6IiIsImljb24iOiIiLCJrZXl3b3JkIjoiIiwiYmFja2dyb3VuZCI6IiNmYWZhZmEiLCJkaXltZW51IjoiLTEiLCJmb2xsb3diYXIiOiIwIiwidmlzaXQiOiIwIiwidmlzaXRsZXZlbCI6eyJtZW1iZXIiOiIiLCJjb21taXNzaW9uIjoiIn0sIm5vdmlzaXQiOnsidGl0bGUiOiIiLCJsaW5rIjoiIn19LCJpdGVtcyI6eyJNMTQ3NTk3NjIxMDU0NiI6eyJwYXJhbXMiOnsic3R5bGUiOiJkZWZhdWx0MSIsInNldGljb24iOiJpY29uLXNldHRpbmdzIiwic2V0bGluayI6IiIsImxlZnRuYXYiOiJcdTYzZDBcdTczYjAxIiwibGVmdG5hdmxpbmsiOiIiLCJyaWdodG5hdiI6Ilx1NjNkMFx1NzNiMDIiLCJyaWdodG5hdmxpbmsiOiIiLCJjZW50ZXJuYXYiOiJcdTYzZDBcdTczYjAiLCJjZW50ZXJuYXZsaW5rIjoiIn0sInN0eWxlIjp7ImJhY2tncm91bmQiOiIjZmU1NDU1IiwidGV4dGNvbG9yIjoiI2ZmZmZmZiIsInRleHRsaWdodCI6IiNmZWYzMWYifSwiaWQiOiJtZW1iZXJjIn0sIk0xNDc1OTc2MjEyMzA1Ijp7InBhcmFtcyI6eyJyb3dudW0iOiIzIn0sInN0eWxlIjp7ImJhY2tncm91bmQiOiIjZmZmZmZmIiwidGlwY29sb3IiOiIjZmViMzEyIn0sImRhdGEiOnsiQzE0NzU5NzYyMTIzMDUiOnsiaWNvbmNsYXNzIjoiaWNvbi1tb25leSIsImljb25jb2xvciI6IiNmZWIzMTIiLCJ0ZXh0IjoiXHU1MjA2XHU5NTAwXHU0ZjYzXHU5MWQxIiwidGV4dGNvbG9yIjoiIzY2NjY2NiIsImxpbmt1cmwiOiIiLCJ0aXBudW0iOiIwLjAwIiwidGlwdGV4dCI6Ilx1NTE0MyJ9LCJDMTQ3NTk3NjIxMjMwNiI6eyJpY29uY2xhc3MiOiJpY29uLWxpc3QiLCJpY29uY29sb3IiOiIjNTBiNmZlIiwidGV4dCI6Ilx1NGY2M1x1OTFkMVx1NjYwZVx1N2VjNiIsInRleHRjb2xvciI6IiM2NjY2NjYiLCJsaW5rdXJsIjoiIiwidGlwbnVtIjoiNTAiLCJ0aXB0ZXh0IjoiXHU3YjE0In0sIkMxNDc1OTc2MjEyMzA4Ijp7Imljb25jbGFzcyI6Imljb24tbWFuYWdlb3JkZXIiLCJpY29uY29sb3IiOiIjZmY3NDFkIiwidGV4dCI6Ilx1NjNkMFx1NzNiMFx1NjYwZVx1N2VjNiIsInRleHRjb2xvciI6IiM2NjY2NjYiLCJsaW5rdXJsIjoiIiwidGlwbnVtIjoiMTAiLCJ0aXB0ZXh0IjoiXHU3YjE0In0sIkMxNDc1OTc2MjEyMzA5Ijp7Imljb25jbGFzcyI6Imljb24tZ3JvdXAiLCJpY29uY29sb3IiOiIjZmY3NDFkIiwidGV4dCI6Ilx1NjIxMVx1NzY4NFx1NGUwYlx1N2ViZiIsInRleHRjb2xvciI6IiM2NjY2NjYiLCJsaW5rdXJsIjoiIiwidGlwbnVtIjoiMiIsInRpcHRleHQiOiJcdTRlYmEifSwiQzE0NzU5NzYyMTIzMTAiOnsiaWNvbmNsYXNzIjoiaWNvbi1xcmNvZGUiLCJpY29uY29sb3IiOiIjZmViMzEyIiwidGV4dCI6Ilx1NjNhOFx1NWU3Zlx1NGU4Y1x1N2VmNFx1NzgwMSIsInRleHRjb2xvciI6IiM2NjY2NjYiLCJsaW5rdXJsIjoiIiwidGlwbnVtIjoiIiwidGlwdGV4dCI6IiJ9LCJDMTQ3NTk3NjIxMjMxMSI6eyJpY29uY2xhc3MiOiJpY29uLXNob3BmaWxsIiwiaWNvbmNvbG9yIjoiIzUwYjZmZSIsInRleHQiOiJcdTVjMGZcdTVlOTdcdThiYmVcdTdmNmUiLCJ0ZXh0Y29sb3IiOiIjNjY2NjY2IiwibGlua3VybCI6IiIsInRpcG51bSI6IiIsInRpcHRleHQiOiIifSwiQzE0NzU5NzYyMTIzMTIiOnsiaWNvbmNsYXNzIjoiaWNvbi1yYW5rIiwiaWNvbmNvbG9yIjoiI2ZmNzQxZCIsInRleHQiOiJcdTRmNjNcdTkxZDFcdTYzOTJcdTU0MGQiLCJ0ZXh0Y29sb3IiOiIjNjY2NjY2IiwibGlua3VybCI6IiIsInRpcG51bSI6IiIsInRpcHRleHQiOiIifX0sImlkIjoiYmxvY2tncm91cCJ9fX0=', '../addons/ewei_shopv2/plugin/diypage/static/template/commission1/preview.jpg', 10, 0, 0, 0);
INSERT INTO `ims_ewei_shop_diypage_template` VALUES (11, 0, 5, '商品详情', 'eyJwYWdlIjp7InR5cGUiOiI1IiwidGl0bGUiOiJcdTU1NDZcdTU0YzFcdThiZTZcdTYwYzUiLCJuYW1lIjoiXHU1NTQ2XHU1NGMxXHU4YmU2XHU2MGM1XHU5ODc1IiwiZGVzYyI6IiIsImljb24iOiIiLCJrZXl3b3JkIjoiIiwiYmFja2dyb3VuZCI6IiNmYWZhZmEiLCJkaXltZW51IjoiLTEiLCJmb2xsb3diYXIiOiIwIiwidmlzaXQiOiIwIiwidmlzaXRsZXZlbCI6eyJtZW1iZXIiOiIiLCJjb21taXNzaW9uIjoiIn0sIm5vdmlzaXQiOnsidGl0bGUiOiIiLCJsaW5rIjoiIn19LCJpdGVtcyI6eyJNMTQ3NzUzOTc2NzU4MyI6eyJ0eXBlIjoiNSIsIm1heCI6IjEiLCJwYXJhbXMiOnsiZ29vZHN0ZXh0IjoiXHU1NTQ2XHU1NGMxIiwiZGV0YWlsdGV4dCI6Ilx1OGJlNlx1NjBjNSJ9LCJzdHlsZSI6eyJiYWNrZ3JvdW5kIjoiI2Y3ZjdmNyIsInRleHRjb2xvciI6IiM2NjY2NjYiLCJhY3RpdmVjb2xvciI6IiNlZjRmNGYifSwiaWQiOiJkZXRhaWxfdGFiIn0sIk0xNDc3NTM5NzY4MDkzIjp7InR5cGUiOiI1IiwibWF4IjoiMSIsInN0eWxlIjp7ImRvdHN0eWxlIjoicm91bmQiLCJkb3RhbGlnbiI6ImxlZnQiLCJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsImxlZnRyaWdodCI6IjEwIiwiYm90dG9tIjoiMTAiLCJvcGFjaXR5IjoiMC44In0sImlkIjoiZGV0YWlsX3N3aXBlIn0sIk0xNDgwNTg2MTg5Njc1Ijp7InR5cGUiOiI1IiwibWF4IjoiMSIsInBhcmFtcyI6eyJidXlidG50ZXh0IjoiXHU1MzlmXHU0ZWY3XHU4ZDJkXHU0ZTcwIn0sInN0eWxlIjp7ImJnbGVmdCI6IiNlZjRmNGYiLCJiZ3JpZ2h0IjoiI2ZmZWYzMiIsInByaWNlY29sb3IiOiIjZmZmZmZmIiwibWFya2V0cHJpY2Vjb2xvciI6IiNmZmZmZmYiLCJ0YWdjb2xvciI6IiNmZmZmZmYiLCJzdGF0dXNjb2xvciI6IiNlZjRmNGYiLCJwcm9jZXNzdGV4dGNvbG9yIjoiI2ZmZmZmZmYiLCJwcm9jZXNzY29sb3IiOiIjZmZlZjMyIiwiYmdsZWZ0d2FpdCI6IiMwMGI5NTAiLCJiZ3JpZ2h0d2FpdCI6IiMwMGI5NTAiLCJ0aW1lY29sb3IiOiIjZmZmZmZmIiwidGltZWJnY29sb3IiOiIjNTgyZTE5IiwicHJpY2Vjb2xvcndhaXQiOiIjZmZmZmZmIiwibWFya2V0cHJpY2Vjb2xvcndhaXQiOiIjZmZmZmZmIiwidGFnY29sb3J3YWl0IjoiI2ZmZmZmZiIsInN0YXR1c2NvbG9yd2FpdCI6IiNmZmZmZmYiLCJ0aW1lY29sb3J3YWl0IjoiI2ZmZmZmZiIsInRpbWViZ2NvbG9yd2FpdCI6IiMwMDM3MTgiLCJidXlidG50ZXh0d2FpdCI6IiNmZmZmZmYiLCJidXlidG5iZ3dhaXQiOiIjMDBiOTUwIn0sImlkIjoiZGV0YWlsX3NlY2tpbGwifSwiTTE0Nzc1Mzk3Njg2OTQiOnsidHlwZSI6IjUiLCJtYXgiOiIxIiwicGFyYW1zIjp7InNoYXJlIjoiXHU1MjA2XHU0ZWFiIiwic2hhcmVfbGluayI6IiJ9LCJzdHlsZSI6eyJtYXJnaW50b3AiOiIwIiwibWFyZ2luYm90dG9tIjoiMCIsImJhY2tncm91bmQiOiIjZmZmZmZmIiwidGl0bGVjb2xvciI6IiMzMzMzMzMiLCJzdWJ0aXRsZWNvbG9yIjoiI2VmNGY0ZiIsInByaWNlY29sb3IiOiIjZWY0ZjRmIiwidGV4dGNvbG9yIjoiI2MwYzBjMCIsInRpbWVjb2xvciI6IiNlZjRmNGYiLCJ0aW1ldGV4dGNvbG9yIjoiI2VmNGY0ZiJ9LCJpZCI6ImRldGFpbF9pbmZvIn0sIk0xNDc3NTM5NzY5MzY2Ijp7InR5cGUiOiI1IiwibWF4IjoiMSIsInN0eWxlIjp7Im1hcmdpbnRvcCI6IjAiLCJtYXJnaW5ib3R0b20iOiIwIiwiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJ0ZXh0Y29sb3IiOiIjNjY2NjY2IiwidGV4dGNvbG9yaGlnaCI6IiNlZjRmNGYifSwiZGF0YSI6eyJDMTQ3NzUzOTc2OTM2NiI6eyJuYW1lIjoiXHU0ZThjXHU2YjIxXHU4ZDJkXHU0ZTcwIiwidHlwZSI6ImVyY2kifSwiQzE0Nzc1Mzk3NjkzNjciOnsibmFtZSI6Ilx1NGYxYVx1NTQ1OFx1NGVmNyIsInR5cGUiOiJodWl5dWFuIn0sIkMxNDc3NTM5NzY5MzY4Ijp7Im5hbWUiOiJcdTRmMThcdTYwZTAiLCJ0eXBlIjoieW91aHVpIn0sIkMxNDc3NTM5NzY5MzY5Ijp7Im5hbWUiOiJcdTc5ZWZcdTUyMDYiLCJ0eXBlIjoiamlmZW4ifSwiQzE0Nzc1Mzk3NjkzNzAiOnsibmFtZSI6Ilx1NGUwZFx1OTE0ZFx1OTAwMVx1NTMzYVx1NTdkZiIsInR5cGUiOiJidXBlaXNvbmcifSwiQzE0Nzc1Mzk3NjkzNzEiOnsibmFtZSI6Ilx1NTU0Nlx1NTRjMVx1NjgwN1x1N2I3ZSIsInR5cGUiOiJiaWFvcWlhbiJ9fSwiaWQiOiJkZXRhaWxfc2FsZSJ9LCJNMTQ3NzUzOTc3MDA3OSI6eyJ0eXBlIjoiNSIsIm1heCI6IjEiLCJzdHlsZSI6eyJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsInRleHRjb2xvciI6IiMzMzMzMzMiLCJtYXJnaW50b3AiOiIxMCIsIm1hcmdpbmJvdHRvbSI6IjAifSwiaWQiOiJkZXRhaWxfc3BlYyJ9LCJNMTQ3NzUzOTc3MDc5MCI6eyJ0eXBlIjoiNSIsIm1heCI6IjEiLCJzdHlsZSI6eyJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsIm1hcmdpbnRvcCI6IjEwIiwibWFyZ2luYm90dG9tIjoiMCIsInRleHRjb2xvciI6IiM3YzdjN2MifSwiaWQiOiJkZXRhaWxfcGFja2FnZSJ9LCJNMTQ3NzUzOTc3MTczNSI6eyJ0eXBlIjoiNSIsIm1heCI6IjEiLCJwYXJhbXMiOnsic2hvcGxvZ28iOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2Mlwvc3RhdGljXC9pbWFnZXNcL2Rlc2lnbmVyLmpwZyIsInNob3BuYW1lIjoiIiwic2hvcGRlc2MiOiIiLCJoaWRlbnVtIjoiMCIsImxlZnRuYXZ0ZXh0IjoiXHU1MTY4XHU5MGU4XHU1NTQ2XHU1NGMxIiwibGVmdG5hdmxpbmsiOiIiLCJyaWdodG5hdnRleHQiOiJcdThmZGJcdTVlOTdcdTkwMWJcdTkwMWIiLCJyaWdodG5hdmxpbmsiOiIifSwic3R5bGUiOnsibWFyZ2ludG9wIjoiMTAiLCJtYXJnaW5ib3R0b20iOiIwIiwiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJnb29kc251bWNvbG9yIjoiIzMzMzMzMyIsImdvb2RzdGV4dGNvbG9yIjoiIzdjN2M3YyIsInJpZ2h0bmF2Y29sb3IiOiIjN2M3YzdjIiwic2hvcG5hbWVjb2xvciI6IiMzMzMzMzMiLCJzaG9wZGVzY2NvbG9yIjoiIzQ0NDQ0NCJ9LCJpZCI6ImRldGFpbF9zaG9wIn0sIk0xNDc3NTM5NzcyOTU5Ijp7InR5cGUiOiI1IiwibWF4IjoiMSIsInN0eWxlIjp7ImJhY2tncm91bmQiOiIjZmZmZmZmIiwibWFyZ2ludG9wIjoiMTAiLCJtYXJnaW5ib3R0b20iOiIwIiwidGl0bGVjb2xvciI6IiMzMzMzMzMiLCJzaG9wbmFtZWNvbG9yIjoiIzMzMzMzMyIsInNob3BpbmZvY29sb3IiOiIjNjY2NjY2IiwibmF2dGVsY29sb3IiOiIjMDA4MDAwIiwibmF2bG9jYXRpb25jb2xvciI6IiNmZjk5MDAifSwiaWQiOiJkZXRhaWxfc3RvcmUifSwiTTE0Nzc1Mzk3NzM3OTkiOnsidHlwZSI6IjUiLCJtYXgiOiIxIiwic3R5bGUiOnsiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJtYXJnaW50b3AiOiIxMCIsIm1hcmdpbmJvdHRvbSI6IjAifSwiaWQiOiJkZXRhaWxfYnV5c2hvdyJ9LCJNMTQ3NzUzOTc3NDY3OSI6eyJ0eXBlIjoiNSIsIm1heCI6IjEiLCJzdHlsZSI6eyJtYXJnaW50b3AiOiIxMCIsIm1hcmdpbmJvdHRvbSI6IjEwIiwiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJtYWluY29sb3IiOiIjZmQ1NDU0Iiwic3ViY29sb3IiOiIjN2M3YzdjIiwidGV4dGNvbG9yIjoiIzMzMzMzMyJ9LCJpZCI6ImRldGFpbF9jb21tZW50In0sIk0xNDc3NTM5Nzc2NjE1Ijp7InR5cGUiOiI1IiwibWF4IjoiMSIsInN0eWxlIjp7Im1hcmdpbnRvcCI6IjEwIiwiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJ0ZXh0Y29sb3IiOiIjMzMzMzMzIn0sImlkIjoiZGV0YWlsX3B1bGx1cCJ9LCJNMTQ3NzUzOTc3NzM5OSI6eyJ0eXBlIjoiNSIsIm1heCI6IjEiLCJwYXJhbXMiOnsiaGlkZWxpa2UiOiIwIiwiaGlkZXNob3AiOiIwIiwiaGlkZWNhcnQiOiIwIiwiaGlkZWNhcnRidG4iOiIwIiwidGV4dGJ1eSI6Ilx1N2FjYlx1NTIzYlx1OGQyZFx1NGU3MCJ9LCJzdHlsZSI6eyJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsInRleHRjb2xvciI6IiM5OTk5OTkiLCJpY29uY29sb3IiOiIjOTk5OTk5IiwiY2FydGNvbG9yIjoiI2ZlOTQwMiIsImJ1eWNvbG9yIjoiI2ZkNTU1NSIsImRvdGNvbG9yIjoiI2ZmMDAxMSJ9LCJpZCI6ImRldGFpbF9uYXZiYXIifX19', '../addons/ewei_shopv2/plugin/diypage/static/template/detail1/preview.jpg', 11, 0, 0, 0);
INSERT INTO `ims_ewei_shop_diypage_template` VALUES (12, 0, 7, '整点秒杀', 'eyJwYWdlIjp7InR5cGUiOiI3IiwidGl0bGUiOiJcdTY1NzRcdTcwYjlcdTc5ZDJcdTY3NDAiLCJuYW1lIjoiXHU2NTc0XHU3MGI5XHU3OWQyXHU2NzQwIiwiZGVzYyI6IiIsImljb24iOiIiLCJrZXl3b3JkIjoiIiwiYmFja2dyb3VuZCI6IiNmYWZhZmEiLCJkaXltZW51IjoiLTEiLCJmb2xsb3diYXIiOiIwIiwidmlzaXQiOiIwIiwidmlzaXRsZXZlbCI6eyJtZW1iZXIiOiIiLCJjb21taXNzaW9uIjoiIn0sIm5vdmlzaXQiOnsidGl0bGUiOiIiLCJsaW5rIjoiIn19LCJpdGVtcyI6eyJNMTQ4MDQ5ODExNTc4MCI6eyJ0eXBlIjoiNyIsIm1heCI6IjEiLCJzdHlsZSI6eyJtYXJnaW50b3AiOiIwIiwiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJjb2xvciI6IiMzMzMzMzMiLCJiZ2NvbG9yIjoiI2ZmZmZmZiIsInNlbGVjdGVkY29sb3IiOiIjZmYzMzAwIiwic2VsZWN0ZWRiZ2NvbG9yIjoiI2ZmZmZmZiJ9LCJpZCI6InNlY2tpbGxfdGltZXMifSwiTTE0ODA0OTgxMTgwMTkiOnsidHlwZSI6IjciLCJtYXgiOiIxIiwic3R5bGUiOnsibWFyZ2ludG9wIjoiMTAiLCJtYXJnaW5ib3R0b20iOiIwIiwiYmFja2dyb3VuZCI6IiNmZmZmZmYifSwiaWQiOiJzZWNraWxsX2FkdnMifSwiTTE0ODA0OTgxMTcwNDMiOnsidHlwZSI6IjciLCJtYXgiOiIxIiwic3R5bGUiOnsibWFyZ2ludG9wIjoiMTAiLCJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsImNvbG9yIjoiIzMzMzMzMyIsImJnY29sb3IiOiIjZmZmZmZmIiwic2VsZWN0ZWRjb2xvciI6IiNlZjRmNGYiLCJzZWxlY3RlZGJnY29sb3IiOiIjZmZmZmZmIn0sImlkIjoic2Vja2lsbF9yb29tcyJ9LCJNMTQ4MDQ5ODExODQ1MyI6eyJ0eXBlIjoiNyIsIm1heCI6IjEiLCJwYXJhbXMiOnsidGl0bGV0ZXh0IjoiXHU1MTQ4XHU0ZTBiXHU1MzU1XHU1MTQ4XHU1Zjk3XHU1NGU2fiIsInRpdGxlb3ZlcnRleHQiOiJcdThmZDhcdTUzZWZcdTRlZTVcdTdlZTdcdTdlZWRcdTYyYTJcdThkMmRcdTU0ZTZ+IiwidGl0bGV3YWl0dGV4dCI6Ilx1NTM3M1x1NWMwNlx1NWYwMFx1NTljYiBcdTUxNDhcdTRlMGJcdTUzNTVcdTUxNDhcdTVmOTdcdTU0ZTYiLCJidG50ZXh0IjoiXHU2MmEyXHU4ZDJkXHU0ZTJkIiwiYnRub3ZlcnRleHQiOiJcdTVkZjJcdTYyYTJcdTViOGMiLCJidG53YWl0dGV4dCI6Ilx1N2I0OVx1NWY4NVx1NjJhMlx1OGQyZCJ9LCJzdHlsZSI6eyJtYXJnaW50b3AiOiIxMCIsIm1hcmdpbmJvdHRvbSI6IjAiLCJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsInRvcGJnY29sb3IiOiIjZjBmMmY1IiwidG9wY29sb3IiOiIjMzMzMzMzIiwidGltZWJnY29sb3IiOiIjNDY0NTUzIiwidGltZWNvbG9yIjoiI2ZmZmZmZiIsInRpdGxlY29sb3IiOiIjMzMzMzMzIiwicHJpY2Vjb2xvciI6IiNlZjRmNGYiLCJtYXJrZXRwcmljZWNvbG9yIjoiIzk0OTU5OCIsImJ0bmJnY29sb3IiOiIjZWY0ZjRmIiwiYnRub3ZlcmJnY29sb3IiOiIjZjdmN2Y3IiwiYnRud2FpdGJnY29sb3IiOiIjMDRiZTAyIiwiYnRuY29sb3IiOiIjZmZmZmZmIiwiYnRub3ZlcmNvbG9yIjoiIzMzMzMzMyIsImJ0bndhaXRjb2xvciI6IiNmZmZmZmYiLCJwcm9jZXNzdGV4dGNvbG9yIjoiI2QwZDFkMiIsInByb2Nlc3NiZ2NvbG9yIjoiI2ZmOGY4ZiJ9LCJpZCI6InNlY2tpbGxfbGlzdCJ9fX0=', '../addons/ewei_shopv2/plugin/diypage/static/template/seckill/preview.png', 12, 0, 0, 0);
INSERT INTO `ims_ewei_shop_diypage_template` VALUES (13, 0, 6, '积分商城', 'eyJwYWdlIjp7InR5cGUiOiI2IiwidGl0bGUiOiJcdTc5ZWZcdTUyMDZcdTU1NDZcdTU3Y2UiLCJuYW1lIjoiXHU2ZDRiXHU4YmQ1XHU3OWVmXHU1MjA2XHU1NTQ2XHU1N2NlXHU5ODc1XHU5NzYyIiwiZGVzYyI6IiIsImljb24iOiIiLCJrZXl3b3JkIjoiIiwiYmFja2dyb3VuZCI6IiNmYWZhZmEiLCJkaXltZW51IjoiLTEiLCJmb2xsb3diYXIiOiIwIiwidmlzaXQiOiIwIiwidmlzaXRsZXZlbCI6eyJtZW1iZXIiOiIiLCJjb21taXNzaW9uIjoiIn0sIm5vdmlzaXQiOnsidGl0bGUiOiIiLCJsaW5rIjoiIn19LCJpdGVtcyI6eyJNMTQ3OTI2MTA2MTY0NSI6eyJzdHlsZSI6eyJkb3RzdHlsZSI6InJvdW5kIiwiZG90YWxpZ24iOiJjZW50ZXIiLCJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsImxlZnRyaWdodCI6IjUiLCJib3R0b20iOiI1Iiwib3BhY2l0eSI6IjAuOCJ9LCJkYXRhIjp7IkMxNDc5MjYxMDYxNjQ1Ijp7ImltZ3VybCI6Imh0dHA6XC9cL29mNm9kaGRxMS5ia3QuY2xvdWRkbi5jb21cLzA2M2E2ZWM4NGY0NWE3MGQ2Y2NhOGQ4ZjI2NWQxYjcyLmpwZyIsImxpbmt1cmwiOiIuXC9pbmRleC5waHA/aT0xMiZjPWVudHJ5Jm09ZXdlaV9zaG9wdjImZG89bW9iaWxlJnI9Y3JlZGl0c2hvcC5kZXRhaWwmaWQ9MTE3In0sIkMxNDc5MjYxMDYxNjQ2Ijp7ImltZ3VybCI6Imh0dHA6XC9cL29mNm9kaGRxMS5ia3QuY2xvdWRkbi5jb21cLzQwMTgzYzEyY2M0MWIxYWYwMjY3NDIwYzUwNjQyODliLmpwZyIsImxpbmt1cmwiOiIuXC9pbmRleC5waHA/aT0xMiZjPWVudHJ5Jm09ZXdlaV9zaG9wdjImZG89bW9iaWxlJnI9Y3JlZGl0c2hvcC5saXN0cyJ9fSwiaWQiOiJiYW5uZXIifSwiTTE0NzkyNjgxMTQxNjEiOnsic3R5bGUiOnsibWFyZ2ludG9wIjoiMTAiLCJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiJ9LCJkYXRhIjp7IkMxNDc5MjY4MTE0MTYxIjp7InRleHQiOiJcdTYyMTFcdTc2ODRcdTc5ZWZcdTUyMDYiLCJpY29uY2xhc3MiOiJpY29uLWppZmVuIiwidGV4dGNvbG9yIjoiIzY2NjY2NiIsImljb25jb2xvciI6IiM2NjY2NjYiLCJsaW5rdXJsIjoiLlwvaW5kZXgucGhwP2k9MTImYz1lbnRyeSZtPWV3ZWlfc2hvcHYyJmRvPW1vYmlsZSZyPWNyZWRpdHNob3AuY3JlZGl0bG9nIn0sIkMxNDc5MjY4MTE0MTYyIjp7InRleHQiOiJcdTUxNTFcdTYzNjJcdThiYjBcdTVmNTUiLCJpY29uY2xhc3MiOiJpY29uLWxpc3QiLCJ0ZXh0Y29sb3IiOiIjNjY2NjY2IiwiaWNvbmNvbG9yIjoiIzY2NjY2NiIsImxpbmt1cmwiOiIuXC9pbmRleC5waHA/aT0xMiZjPWVudHJ5Jm09ZXdlaV9zaG9wdjImZG89bW9iaWxlJnI9Y3JlZGl0c2hvcC5sb2cifX0sImlkIjoibWVudTIifSwiTTE0NzkyOTA3OTU0MjciOnsicGFyYW1zIjp7InBsYWNlaG9sZGVyIjoiXHU4YmY3XHU4ZjkzXHU1MTY1XHU1MTczXHU5NTJlXHU1YjU3XHU4ZmRiXHU4ODRjXHU2NDFjXHU3ZDIyIiwiZ29vZHN0eXBlIjoiMSJ9LCJzdHlsZSI6eyJpbnB1dGJhY2tncm91bmQiOiIjZmZmZmZmIiwiYmFja2dyb3VuZCI6IiNmMWYxZjIiLCJpY29uY29sb3IiOiIjYjRiNGI0IiwiY29sb3IiOiIjOTk5OTk5IiwicGFkZGluZ3RvcCI6IjYiLCJwYWRkaW5nbGVmdCI6IjEwIiwidGV4dGFsaWduIjoibGVmdCIsInNlYXJjaHN0eWxlIjoiIn0sImlkIjoic2VhcmNoIn0sIk0xNDc5NTQ0NjE5NDQwIjp7InN0eWxlIjp7ImhlaWdodCI6IjEwIiwiYmFja2dyb3VuZCI6IiNmYWZhZmEifSwiaWQiOiJibGFuayJ9LCJNMTQ3OTI2MTA3NjMzMyI6eyJzdHlsZSI6eyJuYXZzdHlsZSI6IiIsImJhY2tncm91bmQiOiIjZmZmZmZmIiwicm93bnVtIjoiNCIsInNob3d0eXBlIjoiMCIsInNob3dkb3QiOiIxIiwicGFnZW51bSI6IjgifSwiZGF0YSI6eyJDMTQ3OTI2MTA3NjMzMyI6eyJpbWd1cmwiOiJodHRwOlwvXC9vZjZvZGhkcTEuYmt0LmNsb3VkZG4uY29tXC9mNGM0ZWZlNjEwMzJiNGE5N2VjYTAzNWM3ZTcyNTA2OC5wbmciLCJsaW5rdXJsIjoiIiwidGV4dCI6Ilx1NzNiMFx1OTFkMVx1N2VhMlx1NTMwNSIsImNvbG9yIjoiIzY2NjY2NiJ9LCJDMTQ3OTI2MTA3NjMzNCI6eyJpbWd1cmwiOiJodHRwOlwvXC9vZjZvZGhkcTEuYmt0LmNsb3VkZG4uY29tXC83MTg2ZWI1NDE2OWExMzU1YTcwMjQxNjA1OGY1ODg2My5wbmciLCJsaW5rdXJsIjoiIiwidGV4dCI6Ilx1N2NiZVx1N2Y4ZVx1NWI5ZVx1NzI2OSIsImNvbG9yIjoiIzY2NjY2NiJ9LCJDMTQ3OTI2MTA3NjMzNSI6eyJpbWd1cmwiOiJodHRwOlwvXC9vZjZvZGhkcTEuYmt0LmNsb3VkZG4uY29tXC85NzFhODQxYzI1NzdlZDlhYjQyNDJlOTkxZjU5YWE1My5wbmciLCJsaW5rdXJsIjoiIiwidGV4dCI6Ilx1NGYxOFx1NjBlMFx1NTIzOCIsImNvbG9yIjoiIzY2NjY2NiJ9LCJDMTQ3OTI2MTA3NjMzNiI6eyJpbWd1cmwiOiJodHRwOlwvXC9vZjZvZGhkcTEuYmt0LmNsb3VkZG4uY29tXC80NWE3NDYwOTRlOWM5NmY2ZTY5Njg0OWFlNmYxMDFhZS5wbmciLCJsaW5rdXJsIjoiIiwidGV4dCI6Ilx1NGY1OVx1OTg5ZFx1NTk1Nlx1NTJiMSIsImNvbG9yIjoiIzY2NjY2NiJ9fSwiaWQiOiJtZW51In0sIk0xNDc5MjYxNDUwNzM0Ijp7InN0eWxlIjp7Im1hcmdpbnRvcCI6IjEwIiwiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJpY29uY29sb3IiOiIjOTk5OTk5IiwidGV4dGNvbG9yIjoiIzMzMzMzMyIsInJlbWFya2NvbG9yIjoiIzg4ODg4OCJ9LCJkYXRhIjp7IkMxNDc5MjYxNDUwNzM0Ijp7InRleHQiOiJcdTdjYmVcdTdmOGVcdTViOWVcdTcyNjlcdTYyYmRcdTU5NTYiLCJsaW5rdXJsIjoiIiwiaWNvbmNsYXNzIjoiaWNvbi1naWZ0cyIsInJlbWFyayI6Ilx1NjZmNFx1NTkxYSIsImRvdG51bSI6IiJ9fSwiaWQiOiJsaXN0bWVudSJ9LCJNMTQ3OTU0Mzc4MTg2NyI6eyJwYXJhbXMiOnsiZ29vZHN0eXBlIjoiMSIsInNob3d0aXRsZSI6IjEiLCJzaG93cHJpY2UiOiIxIiwic2hvd3RhZyI6IjIiLCJnb29kc2RhdGEiOiI1IiwiY2F0ZWlkIjoiIiwiY2F0ZW5hbWUiOiIiLCJncm91cGlkIjoiIiwiZ3JvdXBuYW1lIjoiIiwiZ29vZHNzb3J0IjoiMCIsImdvb2RzbnVtIjoiNiIsInNob3dpY29uIjoiMSIsImljb25wb3NpdGlvbiI6ImxlZnQgdG9wIiwicHJvZHVjdHByaWNlIjoiMSIsImdvb2Rzc2Nyb2xsIjoiMSJ9LCJzdHlsZSI6eyJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsImxpc3RzdHlsZSI6ImJsb2NrIiwiYnV5c3R5bGUiOiJidXlidG4tMSIsImdvb2RzaWNvbiI6InJlY29tbWFuZCIsInByaWNlY29sb3IiOiIjZWQyODIyIiwiaWNvbnBhZGRpbmd0b3AiOiIwIiwiaWNvbnBhZGRpbmdsZWZ0IjoiMCIsImJ1eWJ0bmNvbG9yIjoiI2ZlNTQ1NSIsImljb256b29tIjoiMTAwIiwidGl0bGVjb2xvciI6IiMyNjI2MjYiLCJ0YWdiYWNrZ3JvdW5kIjoiI2ZlNTQ1NSJ9LCJkYXRhIjp7IkMxNDc5NTQzNzgxODY3Ijp7InRodW1iIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC9pbWFnZXNcL2RlZmF1bHRcL2dvb2RzLTEuanBnIiwicHJpY2UiOiIyMC4wMCIsInRpdGxlIjoiXHU4ZmQ5XHU5MWNjXHU2NjJmXHU1NTQ2XHU1NGMxXHU2ODA3XHU5ODk4IiwiZ2lkIjoiIiwiYmFyZ2FpbiI6IjAiLCJjcmVkaXQiOiIwIiwiY3R5cGUiOiIxIn0sIkMxNDc5NTQzNzgxODY4Ijp7InRodW1iIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC9pbWFnZXNcL2RlZmF1bHRcL2dvb2RzLTIuanBnIiwicHJpY2UiOiIyMC4wMCIsInRpdGxlIjoiXHU4ZmQ5XHU5MWNjXHU2NjJmXHU1NTQ2XHU1NGMxXHU2ODA3XHU5ODk4IiwiZ2lkIjoiIiwiYmFyZ2FpbiI6IjAiLCJjcmVkaXQiOiIwIiwiY3R5cGUiOiIxIn0sIkMxNDc5NTQzNzgxODY5Ijp7InRodW1iIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC9pbWFnZXNcL2RlZmF1bHRcL2dvb2RzLTMuanBnIiwicHJpY2UiOiIyMC4wMCIsInRpdGxlIjoiXHU4ZmQ5XHU5MWNjXHU2NjJmXHU1NTQ2XHU1NGMxXHU2ODA3XHU5ODk4IiwiZ2lkIjoiIiwiYmFyZ2FpbiI6IjAiLCJjcmVkaXQiOiIwIiwiY3R5cGUiOiIwIn0sIkMxNDc5NTQzNzgxODcwIjp7InRodW1iIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC9pbWFnZXNcL2RlZmF1bHRcL2dvb2RzLTQuanBnIiwicHJpY2UiOiIyMC4wMCIsInRpdGxlIjoiXHU4ZmQ5XHU5MWNjXHU2NjJmXHU1NTQ2XHU1NGMxXHU2ODA3XHU5ODk4IiwiZ2lkIjoiIiwiYmFyZ2FpbiI6IjAiLCJjcmVkaXQiOiIwIiwiY3R5cGUiOiIwIn19LCJpZCI6Imdvb2RzIn0sIk0xNDc5MjYxNTk0MDc3Ijp7InN0eWxlIjp7Im1hcmdpbnRvcCI6IjEwIiwiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJpY29uY29sb3IiOiIjOTk5OTk5IiwidGV4dGNvbG9yIjoiIzMzMzMzMyIsInJlbWFya2NvbG9yIjoiIzg4ODg4OCJ9LCJkYXRhIjp7IkMxNDc5MjYxNTk0MDc3Ijp7InRleHQiOiJcdTU1NDZcdTU3Y2VcdTRmMThcdTYwZTBcdTUyMzgiLCJsaW5rdXJsIjoiIiwiaWNvbmNsYXNzIjoiaWNvbi1naWZ0cyIsInJlbWFyayI6Ilx1NjZmNFx1NTkxYSIsImRvdG51bSI6IiJ9fSwiaWQiOiJsaXN0bWVudSJ9LCJNMTQ3OTI2MTY1NTkxOSI6eyJwYXJhbXMiOnsic2hvd3RpdGxlIjoiMSIsInNob3dwcmljZSI6IjEiLCJnb29kc2RhdGEiOiIxIiwiY2F0ZWlkIjoiOTAiLCJjYXRlbmFtZSI6Ilx1NmQ0Ylx1OGJkNVx1NTIwNlx1N2M3YjAxMCIsImdyb3VwaWQiOiIiLCJncm91cG5hbWUiOiIiLCJnb29kc3NvcnQiOiIwIiwiZ29vZHNudW0iOiI2Iiwic2hvd2ljb24iOiIxIiwiaWNvbnBvc2l0aW9uIjoibGVmdCB0b3AiLCJnb29kc3R5cGUiOiIxIiwiZ29vZHNzY3JvbGwiOiIwIn0sInN0eWxlIjp7Imxpc3RzdHlsZSI6IiIsImJ1eXN0eWxlIjoiYnV5YnRuLTEiLCJnb29kc2ljb24iOiJyZWNvbW1hbmQiLCJwcmljZWNvbG9yIjoiI2VkMjgyMiIsImljb25wYWRkaW5ndG9wIjoiMCIsImljb25wYWRkaW5nbGVmdCI6IjAiLCJidXlidG5jb2xvciI6IiNmZTU0NTUiLCJpY29uem9vbSI6IjEwMCIsInRpdGxlY29sb3IiOiIjMjYyNjI2In0sImRhdGEiOnsiQzE0NzkyNjE2NTU5MTkiOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtMS5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIiLCJiYXJnYWluIjoiMCJ9LCJDMTQ3OTI2MTY1NTkyMCI6eyJ0aHVtYiI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvaW1hZ2VzXC9kZWZhdWx0XC9nb29kcy0yLmpwZyIsInByaWNlIjoiMjAuMDAiLCJ0aXRsZSI6Ilx1OGZkOVx1OTFjY1x1NjYyZlx1NTU0Nlx1NTRjMVx1NjgwN1x1OTg5OCIsImdpZCI6IiIsImJhcmdhaW4iOiIwIn0sIkMxNDc5MjYxNjU1OTIxIjp7InRodW1iIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC9pbWFnZXNcL2RlZmF1bHRcL2dvb2RzLTMuanBnIiwicHJpY2UiOiIyMC4wMCIsInRpdGxlIjoiXHU4ZmQ5XHU5MWNjXHU2NjJmXHU1NTQ2XHU1NGMxXHU2ODA3XHU5ODk4IiwiZ2lkIjoiIiwiYmFyZ2FpbiI6IjAifSwiQzE0NzkyNjE2NTU5MjIiOnsidGh1bWIiOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvZ29vZHMtNC5qcGciLCJwcmljZSI6IjIwLjAwIiwidGl0bGUiOiJcdThmZDlcdTkxY2NcdTY2MmZcdTU1NDZcdTU0YzFcdTY4MDdcdTk4OTgiLCJnaWQiOiIiLCJiYXJnYWluIjoiMCJ9fSwiaWQiOiJnb29kcyJ9fX0=', '../addons/ewei_shopv2/plugin/diypage/static/template/creditshop/preview.png', 13, 0, 0, 0);
INSERT INTO `ims_ewei_shop_diypage_template` VALUES (14, 0, 8, '兑换中心', 'eyJwYWdlIjp7InR5cGUiOiI4IiwidGl0bGUiOiJcdTUxNTFcdTYzNjJcdTRlMmRcdTVmYzMiLCJuYW1lIjoiXHU1MTUxXHU2MzYyXHU0ZTJkXHU1ZmMzXHU2YTIxXHU2NzdmIiwiZGVzYyI6IiIsImljb24iOiIiLCJrZXl3b3JkIjoiIiwiYmFja2dyb3VuZCI6IiNmYWZhZmEiLCJkaXltZW51IjoiLTEiLCJkaXlsYXllciI6IjAiLCJkaXlnb3RvcCI6IjAiLCJmb2xsb3diYXIiOiIwIiwidmlzaXQiOiIwIiwidmlzaXRsZXZlbCI6eyJtZW1iZXIiOiIiLCJjb21taXNzaW9uIjoiIn0sIm5vdmlzaXQiOnsidGl0bGUiOiIiLCJsaW5rIjoiIn19LCJpdGVtcyI6eyJNMTQ4MjM3Mjk0MjA3NSI6eyJtYXgiOiIxIiwidHlwZSI6IjgiLCJwYXJhbXMiOnsiZGF0YXR5cGUiOiIwIn0sInN0eWxlIjp7ImRvdHN0eWxlIjoicm91bmQiLCJkb3RhbGlnbiI6ImNlbnRlciIsImJhY2tncm91bmQiOiIjZmZmZmZmIiwibGVmdHJpZ2h0IjoiNSIsImJvdHRvbSI6IjUiLCJvcGFjaXR5IjoiMC44In0sImRhdGEiOnsiQzE0ODIzNzI5NDIwNzUiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC9pbWFnZXNcL2RlZmF1bHRcL2Jhbm5lci0xLmpwZyIsImxpbmt1cmwiOiIifSwiQzE0ODIzNzI5NDIwNzYiOnsiaW1ndXJsIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC9pbWFnZXNcL2RlZmF1bHRcL2Jhbm5lci0yLmpwZyIsImxpbmt1cmwiOiIifX0sImlkIjoiZXhjaGFuZ2VfYmFubmVyIn0sIk0xNDgyMzcyOTQyNTE1Ijp7Im1heCI6IjEiLCJ0eXBlIjoiOCIsInBhcmFtcyI6eyJwcmV2aWV3IjoiMCIsInRpdGxlIjoiXHU1MTUxXHU2MzYyXHU3ODAxXHU1MTUxXHU2MzYyIiwicGxhY2Vob2xkZXIiOiJcdThiZjdcdThmOTNcdTUxNjVcdTUxNTFcdTYzNjJcdTc4MDEiLCJidG50ZXh0IjoiXHU3YWNiXHU1MzczXHU1MTUxXHU2MzYyIiwiYmFja2J0biI6Ilx1OGZkNFx1NTZkZVx1OTFjZFx1NjViMFx1OGY5M1x1NTE2NVx1NTE1MVx1NjM2Mlx1NzgwMSIsImV4YnRudGV4dCI6Ilx1NTE1MVx1NjM2MiIsImV4YnRuMnRleHQiOiJcdTVkZjJcdTUxNTFcdTYzNjIiLCJjcmVkaXRpY29uIjoiLi5cL2FkZG9uc1wvZXdlaV9zaG9wdjJcL3BsdWdpblwvZGl5cGFnZVwvc3RhdGljXC9pbWFnZXNcL2RlZmF1bHRcL2ljb25fY3JlZGl0LnBuZyIsIm1vbmV5aWNvbiI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvaW1hZ2VzXC9kZWZhdWx0XC9pY29uX21vbmV5LnBuZyIsImNvdXBvbmljb24iOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvaWNvbl9jb3Vwb24ucG5nIiwicmVkYmFnaWNvbiI6Ii4uXC9hZGRvbnNcL2V3ZWlfc2hvcHYyXC9wbHVnaW5cL2RpeXBhZ2VcL3N0YXRpY1wvaW1hZ2VzXC9kZWZhdWx0XC9pY29uX3JlZGJhZy5wbmciLCJnb29kc2ljb24iOiIuLlwvYWRkb25zXC9ld2VpX3Nob3B2MlwvcGx1Z2luXC9kaXlwYWdlXC9zdGF0aWNcL2ltYWdlc1wvZGVmYXVsdFwvaWNvbl9nb29kcy5wbmcifSwic3R5bGUiOnsidGl0bGVjb2xvciI6IiM0NDQ0NDQiLCJidG5jb2xvciI6IiNmZmZmZmYiLCJidG5iYWNrZ3JvdW5kIjoiI2VkNTU2NSIsImlucHV0Y29sb3IiOiIjNjY2NjY2IiwiaW5wdXRiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsImlucHV0Ym9yZGVyIjoiI2VmZWZlZiIsImNvZGVjb2xvciI6IiM0NDQ0NDQiLCJudW1jb2xvciI6IiM5OTk5OTkiLCJleGJ0bmNvbG9yIjoiI2ZmZmZmZiIsImV4YnRuYmFja2dyb3VuZCI6IiNlZDU1NjUiLCJleGJ0bjJjb2xvciI6IiNmZmZmZmYiLCJleGJ0bjJiYWNrZ3JvdW5kIjoiI2NjY2NjYyIsImJhY2tidG5jb2xvciI6IiM0NDQ0NDQiLCJiYWNrYnRuYm9yZGVyIjoiI2U3ZWFlYyIsImJhY2tidG5iYWNrZ3JvdW5kIjoiI2Y3ZjdmNyIsImdvb2RzdGl0bGUiOiIjNDQ0NDQ0IiwiZ29vZHNwcmljZSI6IiNhYWFhYWEifSwiaWQiOiJleGNoYW5nZV9pbnB1dCJ9LCJNMTQ4MjM3Mjk0MzE3MyI6eyJtYXgiOiIxIiwidHlwZSI6IjgiLCJwYXJhbXMiOnsicnVsZXRpdGxlIjoiXHU1MTUxXHU2MzYyXHU4OWM0XHU1MjE5In0sInN0eWxlIjp7InJ1bGV0aXRsZWNvbG9yIjoiIzU1NTU1NSJ9LCJpZCI6ImV4Y2hhbmdlX3J1bGUifX19', '../addons/ewei_shopv2/plugin/diypage/static/template/exchange/preview.png', 14, 0, 0, 0);
INSERT INTO `ims_ewei_shop_diypage_template` VALUES (15, 0, 4, '分销中心02', 'eyJwYWdlIjp7InR5cGUiOiI0IiwidGl0bGUiOiJcdTUyMDZcdTk1MDBcdTRlMmRcdTVmYzMiLCJuYW1lIjoiXHU1MjA2XHU5NTAwXHU0ZTJkXHU1ZmMzIiwiZGVzYyI6IiIsImljb24iOiIiLCJrZXl3b3JkIjoiIiwiYmFja2dyb3VuZCI6IiNmM2YzZjMiLCJkaXltZW51IjoiLTEiLCJmb2xsb3diYXIiOiIwIiwidmlzaXQiOiIwIiwidmlzaXRsZXZlbCI6eyJtZW1iZXIiOiIiLCJjb21taXNzaW9uIjoiIn0sIm5vdmlzaXQiOnsidGl0bGUiOiIiLCJsaW5rIjoiIn19LCJpdGVtcyI6eyJNMTQ3NTk3NjIxMDU0NiI6eyJwYXJhbXMiOnsic3R5bGUiOiJkZWZhdWx0MyIsInNldGljb24iOiJpY29uLXNldHRpbmdzIiwic2V0bGluayI6Ii5cL2luZGV4LnBocD9pPTEyJmM9ZW50cnkmbT1ld2VpX3Nob3B2MiZkbz1tb2JpbGUmcj1nb29kcyZpc3RpbWU9MSIsImxlZnRuYXYiOiJcdTYzZDBcdTczYjAxIiwibGVmdG5hdmxpbmsiOiIiLCJyaWdodG5hdiI6Ilx1NjNkMFx1NzNiMDIiLCJyaWdodG5hdmxpbmsiOiIiLCJjZW50ZXJuYXYiOiJcdTYzZDBcdTczYjAiLCJjZW50ZXJuYXZsaW5rIjoiIiwiaGlkZXVwIjoiMCJ9LCJzdHlsZSI6eyJiYWNrZ3JvdW5kIjoiI2ZlYTIzZCIsInRleHRjb2xvciI6IiNmZmZmZmYiLCJ0ZXh0bGlnaHQiOiIjZmZmZmZmIn0sImlkIjoibWVtYmVyYyJ9LCJNMTUyNjYyMTY5MzUxNyI6eyJzdHlsZSI6eyJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsInRleHRjb2xvciI6IiMwMDAwMDAiLCJpY29uY29sb3IiOiIjZmY4MDAwIn0sInBhcmFtcyI6eyJpY29uY2xhc3MiOiJpY29uLWxpbmsifSwidHlwZSI6IjQiLCJpZCI6ImNvbW1pc3Npb25fc2hhcmVjb2RlIn0sIk0xNTI2ODcwNDk3MjQwIjp7InN0eWxlIjp7ImJhY2tncm91bmQiOiIjZmZmZmZmIiwicHJpY2Vjb2xvciI6IiNmZjgwMDAiLCJ0ZXh0Y29sb3IiOiIjMDAwMDAwIiwiYnRuY29sb3IiOiIjZmY4MDAwIn0sInR5cGUiOiI0IiwibWF4IjoiMSIsImlkIjoiY29tbWlzc2lvbl9ibG9jayJ9LCJNMTUyNjYxNTc2ODY3MiI6eyJzdHlsZSI6eyJoZWlnaHQiOiIxMCIsImJhY2tncm91bmQiOiIjZjNmM2YzIn0sImlkIjoiYmxhbmsifSwiTTE0NzU5NzYyMTIzMDUiOnsicGFyYW1zIjp7InJvd251bSI6IjIiLCJuZXdzdHlsZSI6IjEifSwic3R5bGUiOnsiYmFja2dyb3VuZCI6IiNmZmZmZmYiLCJ0aXBjb2xvciI6IiNmZWIzMTIifSwiZGF0YSI6eyJDMTQ3NTk3NjIxMjMwNSI6eyJpY29uY2xhc3MiOiJpY29uLXFpYW4iLCJpY29uY29sb3IiOiIjZmViMzEyIiwidGV4dCI6Ilx1NTIwNlx1OTUwMFx1NGY2M1x1OTFkMSIsInRleHRjb2xvciI6IiM2NjY2NjYiLCJsaW5rdXJsIjoiLlwvaW5kZXgucGhwP2k9MTImYz1lbnRyeSZtPWV3ZWlfc2hvcHYyJmRvPW1vYmlsZSZyPWNvbW1pc3Npb24ud2l0aGRyYXciLCJ0aXBudW0iOiIwLjAwIiwidGlwdGV4dCI6Ilx1NTE0MyJ9LCJDMTQ3NTk3NjIxMjMwNiI6eyJpY29uY2xhc3MiOiJpY29uLWRpbmdkYW4yIiwiaWNvbmNvbG9yIjoiIzUwYjZmZSIsInRleHQiOiJcdTRmNjNcdTkxZDFcdTY2MGVcdTdlYzYiLCJ0ZXh0Y29sb3IiOiIjNjY2NjY2IiwibGlua3VybCI6IiIsInRpcG51bSI6IjUwIiwidGlwdGV4dCI6Ilx1N2IxNCJ9LCJDMTQ3NTk3NjIxMjMwOCI6eyJpY29uY2xhc3MiOiJpY29uLXRpeGlhbjEiLCJpY29uY29sb3IiOiIjZmY3NDFkIiwidGV4dCI6Ilx1NjNkMFx1NzNiMFx1NjYwZVx1N2VjNiIsInRleHRjb2xvciI6IiM2NjY2NjYiLCJsaW5rdXJsIjoiIiwidGlwbnVtIjoiMTAiLCJ0aXB0ZXh0IjoiXHU3YjE0In0sIkMxNDc1OTc2MjEyMzA5Ijp7Imljb25jbGFzcyI6Imljb24taGVpbG9uZ2ppYW5ndHViaWFvMTEiLCJpY29uY29sb3IiOiIjZmY3NDFkIiwidGV4dCI6Ilx1NjIxMVx1NzY4NFx1NGUwYlx1N2ViZiIsInRleHRjb2xvciI6IiM2NjY2NjYiLCJsaW5rdXJsIjoiIiwidGlwbnVtIjoiMiIsInRpcHRleHQiOiJcdTRlYmEifX0sImlkIjoiYmxvY2tncm91cCJ9LCJNMTUyNjYxNDU1MzE1MSI6eyJzdHlsZSI6eyJtYXJnaW50b3AiOiIxMCIsImJhY2tncm91bmQiOiIjZmZmZmZmIiwiaWNvbmNvbG9yIjoiI2ZmODAwMCIsInRleHRjb2xvciI6IiMwMDAwMDAiLCJyZW1hcmtjb2xvciI6IiM4ODg4ODgifSwiZGF0YSI6eyJDMTUyNjYxNDU1MzE1MiI6eyJ0ZXh0IjoiXHU2M2E4XHU1ZTdmXHU0ZThjXHU3ZWY0XHU3ODAxIiwibGlua3VybCI6IiIsImljb25jbGFzcyI6Imljb24tZXJ3ZWltYTEiLCJyZW1hcmsiOiIiLCJkb3RudW0iOiIifX0sImlkIjoibGlzdG1lbnUifSwiTTE1MjY2MTQ1NzUyMTIiOnsic3R5bGUiOnsibWFyZ2ludG9wIjoiMTAiLCJiYWNrZ3JvdW5kIjoiI2ZmZmZmZiIsImljb25jb2xvciI6IiNmZjgwMDAiLCJ0ZXh0Y29sb3IiOiIjMDAwMDAwIiwicmVtYXJrY29sb3IiOiIjODg4ODg4In0sImRhdGEiOnsiQzE1MjY2MTQ1NzUyMTIiOnsidGV4dCI6Ilx1NWMwZlx1NWU5N1x1OGJiZVx1N2Y2ZSIsImxpbmt1cmwiOiIiLCJpY29uY2xhc3MiOiJpY29uLXNob3AiLCJyZW1hcmsiOiIiLCJkb3RudW0iOiIifX0sImlkIjoibGlzdG1lbnUifX19', '../addons/ewei_shopv2/plugin/diypage/static/template/commission2/preview.jpg', 15, 0, 0, 0);

-- ----------------------------
-- Table structure for ims_ewei_shop_diypage_template_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_diypage_template_category`;
CREATE TABLE `ims_ewei_shop_diypage_template_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `merch` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_exchange_cart
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_exchange_cart`;
CREATE TABLE `ims_ewei_shop_exchange_cart`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT NULL,
  `openid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goodsid` int(11) NULL DEFAULT NULL,
  `total` int(10) NULL DEFAULT 1,
  `marketprice` decimal(10, 2) NULL DEFAULT NULL,
  `optionid` int(11) NULL DEFAULT NULL,
  `selected` tinyint(1) NULL DEFAULT 1,
  `deleted` tinyint(1) NULL DEFAULT 0,
  `merchid` int(11) NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `groupid` int(11) NULL DEFAULT NULL,
  `serial` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_exchange_code
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_exchange_code`;
CREATE TABLE `ims_ewei_shop_exchange_code`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupid` int(11) NOT NULL DEFAULT 0,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `endtime` datetime(0) NOT NULL DEFAULT '2016-10-01 00:00:00',
  `status` int(2) NOT NULL DEFAULT 1,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT 0,
  `key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `type` int(11) NOT NULL DEFAULT 0,
  `scene` int(11) NOT NULL DEFAULT 0,
  `qrcode_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `serial` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `balancestatus` int(11) NULL DEFAULT 1,
  `redstatus` int(11) NULL DEFAULT 1,
  `scorestatus` int(11) NULL DEFAULT 1,
  `couponstatus` int(11) NULL DEFAULT 1,
  `goodsstatus` int(11) NULL DEFAULT NULL,
  `repeatcount` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`, `key`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_exchange_group
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_exchange_group`;
CREATE TABLE `ims_ewei_shop_exchange_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `type` int(2) NOT NULL DEFAULT 0,
  `endtime` datetime(0) NOT NULL DEFAULT '2016-10-01 00:00:00',
  `mode` int(2) NOT NULL DEFAULT 0,
  `status` int(2) NOT NULL DEFAULT 0,
  `max` int(2) NOT NULL DEFAULT 0,
  `value` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `starttime` datetime(0) NOT NULL DEFAULT '2016-10-01 00:00:00',
  `goods` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `score` int(11) NOT NULL DEFAULT 0,
  `coupon` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `use` int(11) NOT NULL DEFAULT 0,
  `total` int(11) NOT NULL DEFAULT 0,
  `red` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `balance` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `balance_left` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `balance_right` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `red_left` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `red_right` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `score_left` int(11) NOT NULL DEFAULT 0,
  `score_right` int(11) NOT NULL DEFAULT 0,
  `balance_type` int(11) NOT NULL,
  `red_type` int(11) NOT NULL,
  `score_type` int(11) NOT NULL,
  `title_reply` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `rule` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `coupon_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `basic_content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `reply_type` int(11) NOT NULL DEFAULT 0,
  `code_type` int(11) NOT NULL DEFAULT 0,
  `binding` int(11) NOT NULL DEFAULT 0,
  `showcount` int(11) NULL DEFAULT 0,
  `postage` decimal(10, 2) NULL DEFAULT 0.00,
  `postage_type` int(11) NULL DEFAULT 0,
  `banner` varchar(800) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `keyword_reply` int(11) NULL DEFAULT 0,
  `reply_status` int(11) NULL DEFAULT 1,
  `reply_keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `input_banner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `diypage` int(11) NOT NULL DEFAULT 0,
  `sendname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `wishing` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `actname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `repeat` int(11) NOT NULL DEFAULT 0,
  `koulingstart` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `koulingend` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `kouling` tinyint(1) NOT NULL DEFAULT 0,
  `chufa` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `chufaend` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `goods_native` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_exchange_query
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_exchange_query`;
CREATE TABLE `ims_ewei_shop_exchange_query`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `querykey` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `querytime` int(11) NOT NULL DEFAULT 0,
  `unfreeze` int(11) NOT NULL DEFAULT 0,
  `errorcount` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`, `openid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_exchange_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_exchange_record`;
CREATE TABLE `ims_ewei_shop_exchange_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `uniacid` int(11) NULL DEFAULT NULL,
  `goods` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `orderid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `time` int(11) NOT NULL,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mode` int(11) NOT NULL DEFAULT 0,
  `balance` decimal(10, 2) NULL DEFAULT 0.00,
  `red` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `coupon` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `score` int(11) NOT NULL DEFAULT 0,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `groupid` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `serial` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ordersn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `goods_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `key`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_exchange_setting
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_exchange_setting`;
CREATE TABLE `ims_ewei_shop_exchange_setting`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `freeze` int(11) NOT NULL DEFAULT 0,
  `mistake` int(11) NOT NULL DEFAULT 0,
  `grouplimit` int(11) NOT NULL DEFAULT 0,
  `alllimit` int(11) NOT NULL DEFAULT 0,
  `no_qrimg` tinyint(3) NOT NULL DEFAULT 1,
  `rule` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `coupon_templateid` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`, `uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_exhelper_esheet
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_exhelper_esheet`;
CREATE TABLE `ims_ewei_shop_exhelper_esheet`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `express` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `datas` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_ewei_shop_exhelper_esheet
-- ----------------------------
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES (1, '顺丰', 'shunfeng', 'SF', 'a:2:{i:0;a:4:{s:5:\"style\";s:9:\"二联150\";s:4:\"spec\";s:33:\"（宽100mm高150mm切点90/60）\";s:4:\"size\";s:3:\"150\";s:9:\"isdefault\";i:1;}i:1;a:4:{s:5:\"style\";s:9:\"三联210\";s:4:\"spec\";s:38:\"（宽100mm 高210mm 切点90/60/60）\";s:4:\"size\";s:3:\"210\";s:9:\"isdefault\";i:0;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES (2, '百世快递', 'huitongkuaidi', 'HTKY', 'a:2:{i:0;a:4:{s:5:\"style\";s:9:\"二联180\";s:4:\"spec\";s:34:\"（宽100mm高180mm切点110/70）\";s:4:\"size\";s:3:\"180\";s:9:\"isdefault\";i:0;}i:1;a:4:{s:5:\"style\";s:9:\"二联183\";s:4:\"spec\";s:37:\"（宽100mm 高183mm 切点87/5/91）\";s:4:\"size\";s:3:\"183\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES (3, '韵达', 'yunda', 'YD', 'a:2:{i:0;a:4:{s:5:\"style\";s:9:\"二联180\";s:4:\"spec\";s:34:\"（宽100mm高180mm切点110/70）\";s:4:\"size\";s:3:\"180\";s:9:\"isdefault\";i:0;}i:1;a:4:{s:5:\"style\";s:9:\"二联203\";s:4:\"spec\";s:36:\"（宽100mm 高203mm 切点152/51）\";s:4:\"size\";s:3:\"203\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES (4, '申通', 'shentong', 'STO', 'a:2:{i:0;a:4:{s:5:\"style\";s:9:\"二联180\";s:4:\"spec\";s:34:\"（宽100mm高180mm切点110/70）\";s:4:\"size\";s:3:\"180\";s:9:\"isdefault\";i:1;}i:1;a:4:{s:5:\"style\";s:9:\"二联150\";s:4:\"spec\";s:35:\"（宽100mm 高150mm 切点90/60）\";s:4:\"size\";s:3:\"150\";s:9:\"isdefault\";i:0;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES (5, '圆通', 'yuantong', 'YTO', 'a:1:{i:0;a:4:{s:5:\"style\";s:9:\"二联180\";s:4:\"spec\";s:34:\"（宽100mm高180mm切点110/70）\";s:4:\"size\";s:3:\"180\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES (6, 'EMS', 'ems', 'EMS', 'a:1:{i:0;a:4:{s:5:\"style\";s:9:\"二联150\";s:4:\"spec\";s:33:\"（宽100mm高150mm切点90/60）\";s:4:\"size\";s:3:\"150\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES (7, '中通', 'zhongtong', 'ZTO', 'a:1:{i:0;a:4:{s:5:\"style\";s:9:\"二联180\";s:4:\"spec\";s:34:\"（宽100mm高180mm切点110/70）\";s:4:\"size\";s:3:\"180\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES (8, '德邦', 'debangwuliu', 'DBL', 'a:1:{i:0;a:4:{s:5:\"style\";s:9:\"二联177\";s:4:\"spec\";s:34:\"（宽100mm高177mm切点107/70）\";s:4:\"size\";s:3:\"177\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES (9, '优速', 'youshuwuliu', 'UC', 'a:1:{i:0;a:4:{s:5:\"style\";s:9:\"二联180\";s:4:\"spec\";s:34:\"（宽100mm高180mm切点110/70）\";s:4:\"size\";s:3:\"180\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES (10, '宅急送', 'zhaijisong', 'ZJS', 'a:1:{i:0;a:4:{s:5:\"style\";s:9:\"二联120\";s:4:\"spec\";s:33:\"（宽100mm高116mm切点98/10）\";s:4:\"size\";s:3:\"120\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES (11, '京东', 'jd', 'JD', 'a:1:{i:0;a:4:{s:5:\"style\";s:9:\"二联110\";s:4:\"spec\";s:33:\"（宽100mm高110mm切点60/50）\";s:4:\"size\";s:3:\"110\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES (12, '信丰', 'xinfengwuliu', 'XFEX', 'a:1:{i:0;a:4:{s:5:\"style\";s:9:\"二联150\";s:4:\"spec\";s:33:\"（宽100mm高150mm切点90/60）\";s:4:\"size\";s:3:\"150\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES (13, '全峰', 'quanfengkuaidi', 'QFKD', 'a:1:{i:0;a:4:{s:5:\"style\";s:9:\"二联180\";s:4:\"spec\";s:34:\"（宽100mm高180mm切点110/70）\";s:4:\"size\";s:3:\"180\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES (14, '跨越速运', 'kuayue', 'KYSY', 'a:1:{i:0;a:4:{s:5:\"style\";s:9:\"二联137\";s:4:\"spec\";s:34:\"（宽100mm高137mm切点101/36）\";s:4:\"size\";s:3:\"137\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES (15, '安能', 'annengwuliu', 'ANE', 'a:1:{i:0;a:4:{s:5:\"style\";s:9:\"三联180\";s:4:\"spec\";s:37:\"（宽100mm高180mm切点110/30/40）\";s:4:\"size\";s:3:\"180\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES (16, '快捷', 'kuaijiesudi', 'FAST', 'a:1:{i:0;a:4:{s:5:\"style\";s:9:\"二联180\";s:4:\"spec\";s:34:\"（宽100mm高180mm切点110/70）\";s:4:\"size\";s:3:\"180\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES (17, '国通', 'guotongkuaidi', 'GTO', 'a:1:{i:0;a:4:{s:5:\"style\";s:9:\"二联180\";s:4:\"spec\";s:34:\"（宽100mm高180mm切点110/70）\";s:4:\"size\";s:3:\"180\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES (18, '天天', 'tiantian', 'HHTT', 'a:1:{i:0;a:4:{s:5:\"style\";s:9:\"二联180\";s:4:\"spec\";s:34:\"（宽100mm高180mm切点110/70）\";s:4:\"size\";s:3:\"180\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES (19, '中铁快运', 'zhongtiekuaiyun', 'ZTKY', 'a:1:{i:0;a:4:{s:5:\"style\";s:9:\"二联150\";s:4:\"spec\";s:33:\"（宽100mm高150mm切点90/60）\";s:4:\"size\";s:3:\"150\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES (20, '邮政快递包裹', 'youzhengguonei', 'YZPY', 'a:1:{i:0;a:4:{s:5:\"style\";s:9:\"二联180\";s:4:\"spec\";s:34:\"（宽100mm高180mm切点110/70）\";s:4:\"size\";s:3:\"180\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES (21, '邮政国内标快', 'youzhengguonei', 'YZBK', 'a:1:{i:0;a:4:{s:5:\"style\";s:9:\"二联150\";s:4:\"spec\";s:33:\"（宽100mm高150mm切点90/60）\";s:4:\"size\";s:3:\"150\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES (22, '全一快递', 'quanyikuaidi', 'UAPEX', 'a:1:{i:0;a:4:{s:5:\"style\";s:9:\"二联150\";s:4:\"spec\";s:32:\"（宽90mm高150mm切点90/60）\";s:4:\"size\";s:3:\"150\";s:9:\"isdefault\";i:1;}}');
INSERT INTO `ims_ewei_shop_exhelper_esheet` VALUES (23, '速尔快递', 'sue', 'SURE', 'a:1:{i:0;a:4:{s:5:\"style\";s:9:\"二联150\";s:4:\"spec\";s:33:\"（宽100mm高150mm切点90/60）\";s:4:\"size\";s:3:\"150\";s:9:\"isdefault\";i:1;}}');

-- ----------------------------
-- Table structure for ims_ewei_shop_exhelper_esheet_temp
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_exhelper_esheet_temp`;
CREATE TABLE `ims_ewei_shop_exhelper_esheet_temp`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `esheetid` int(11) NOT NULL DEFAULT 0,
  `esheetname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `customername` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `customerpwd` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `monthcode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `sendsite` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `paytype` tinyint(3) NOT NULL DEFAULT 1,
  `templatesize` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `isnotice` tinyint(3) NOT NULL DEFAULT 0,
  `merchid` int(11) NOT NULL DEFAULT 0,
  `issend` tinyint(3) NOT NULL DEFAULT 1,
  `isdefault` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_isdefault`(`isdefault`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_exhelper_express
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_exhelper_express`;
CREATE TABLE `ims_ewei_shop_exhelper_express`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `type` int(1) NOT NULL DEFAULT 1,
  `expressname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `expresscom` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `express` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `width` decimal(10, 2) NULL DEFAULT 0.00,
  `datas` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `height` decimal(10, 2) NULL DEFAULT 0.00,
  `bg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `isdefault` tinyint(3) NULL DEFAULT 0,
  `merchid` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_isdefault`(`isdefault`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_exhelper_senduser
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_exhelper_senduser`;
CREATE TABLE `ims_ewei_shop_exhelper_senduser`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `sendername` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `sendertel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `sendersign` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `sendercode` int(11) NULL DEFAULT NULL,
  `senderaddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `sendercity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isdefault` tinyint(3) NULL DEFAULT 0,
  `merchid` int(11) NULL DEFAULT 0,
  `province` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `city` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `area` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_isdefault`(`isdefault`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_exhelper_sys
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_exhelper_sys`;
CREATE TABLE `ims_ewei_shop_exhelper_sys`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'localhost',
  `port` int(11) NOT NULL DEFAULT 8000,
  `ip_cloud` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `port_cloud` int(11) NOT NULL DEFAULT 8000,
  `is_cloud` int(1) NOT NULL DEFAULT 0,
  `merchid` int(11) NULL DEFAULT 0,
  `ebusiness` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `apikey` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_express
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_express`;
CREATE TABLE `ims_ewei_shop_express`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `express` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `status` tinyint(1) NULL DEFAULT 1,
  `displayorder` tinyint(3) UNSIGNED NULL DEFAULT 0,
  `code` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `coding` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 96 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_ewei_shop_express
-- ----------------------------
INSERT INTO `ims_ewei_shop_express` VALUES (1, '顺丰', 'shunfeng', 1, 0, '', 'SF');
INSERT INTO `ims_ewei_shop_express` VALUES (2, '申通', 'shentong', 1, 0, '', 'STO');
INSERT INTO `ims_ewei_shop_express` VALUES (3, '韵达快运', 'yunda', 1, 0, '', 'YD');
INSERT INTO `ims_ewei_shop_express` VALUES (4, '天天快递', 'tiantian', 1, 0, '', 'HHTT');
INSERT INTO `ims_ewei_shop_express` VALUES (5, '圆通速递', 'yuantong', 1, 0, '', 'YTO');
INSERT INTO `ims_ewei_shop_express` VALUES (6, '中通速递', 'zhongtong', 1, 0, '', 'ZTO');
INSERT INTO `ims_ewei_shop_express` VALUES (7, 'ems快递', 'ems', 1, 0, '', 'EMS');
INSERT INTO `ims_ewei_shop_express` VALUES (8, '百世快递', 'huitongkuaidi', 1, 0, '', 'HTKY');
INSERT INTO `ims_ewei_shop_express` VALUES (9, '全峰快递', 'quanfengkuaidi', 1, 0, '', '');
INSERT INTO `ims_ewei_shop_express` VALUES (10, '宅急送', 'zhaijisong', 1, 0, '', 'ZJS');
INSERT INTO `ims_ewei_shop_express` VALUES (11, 'aae全球专递', 'aae', 1, 0, '', 'AAE');
INSERT INTO `ims_ewei_shop_express` VALUES (12, '安捷快递', 'anjie', 1, 0, '', 'AJ');
INSERT INTO `ims_ewei_shop_express` VALUES (13, '安信达快递', 'anxindakuaixi', 1, 0, '', '');
INSERT INTO `ims_ewei_shop_express` VALUES (14, '彪记快递', 'biaojikuaidi', 1, 0, '', '');
INSERT INTO `ims_ewei_shop_express` VALUES (15, 'bht', 'bht', 1, 0, '', 'BHT');
INSERT INTO `ims_ewei_shop_express` VALUES (16, '百福东方国际物流', 'baifudongfang', 1, 0, '', '');
INSERT INTO `ims_ewei_shop_express` VALUES (17, '中国东方（COE）', 'coe', 1, 0, '', '');
INSERT INTO `ims_ewei_shop_express` VALUES (18, '长宇物流', 'changyuwuliu', 1, 0, '', '');
INSERT INTO `ims_ewei_shop_express` VALUES (19, '大田物流', 'datianwuliu', 1, 0, '', 'DTWL');
INSERT INTO `ims_ewei_shop_express` VALUES (20, '德邦物流', 'debangwuliu', 1, 0, '', 'DBL');
INSERT INTO `ims_ewei_shop_express` VALUES (21, 'dhl', 'dhl', 1, 0, '', 'DHL');
INSERT INTO `ims_ewei_shop_express` VALUES (22, 'dpex', 'dpex', 1, 0, '', 'DPEX');
INSERT INTO `ims_ewei_shop_express` VALUES (23, 'd速快递', 'dsukuaidi', 1, 0, '', 'DSWL');
INSERT INTO `ims_ewei_shop_express` VALUES (24, '递四方', 'disifang', 1, 0, '', 'D4PX');
INSERT INTO `ims_ewei_shop_express` VALUES (25, 'fedex（国外）', 'fedex', 1, 0, '', 'FEDEX_GJ');
INSERT INTO `ims_ewei_shop_express` VALUES (26, '飞康达物流', 'feikangda', 1, 0, '', 'FKD');
INSERT INTO `ims_ewei_shop_express` VALUES (27, '凤凰快递', 'fenghuangkuaidi', 1, 0, '', '');
INSERT INTO `ims_ewei_shop_express` VALUES (28, '飞快达', 'feikuaida', 1, 0, '', '');
INSERT INTO `ims_ewei_shop_express` VALUES (29, '国通快递', 'guotongkuaidi', 1, 0, '', 'GTO');
INSERT INTO `ims_ewei_shop_express` VALUES (30, '港中能达物流', 'ganzhongnengda', 1, 0, '', '');
INSERT INTO `ims_ewei_shop_express` VALUES (31, '广东邮政物流', 'guangdongyouzhengwuliu', 1, 0, '', 'GDEMS');
INSERT INTO `ims_ewei_shop_express` VALUES (32, '共速达', 'gongsuda', 1, 0, '', 'GSD');
INSERT INTO `ims_ewei_shop_express` VALUES (33, '恒路物流', 'hengluwuliu', 1, 0, '', 'HLWL');
INSERT INTO `ims_ewei_shop_express` VALUES (34, '华夏龙物流', 'huaxialongwuliu', 1, 0, '', 'HXLWL');
INSERT INTO `ims_ewei_shop_express` VALUES (35, '海红', 'haihongwangsong', 1, 0, '', '');
INSERT INTO `ims_ewei_shop_express` VALUES (36, '海外环球', 'haiwaihuanqiu', 1, 0, '', '');
INSERT INTO `ims_ewei_shop_express` VALUES (37, '佳怡物流', 'jiayiwuliu', 1, 0, '', 'JYWL');
INSERT INTO `ims_ewei_shop_express` VALUES (38, '京广速递', 'jinguangsudikuaijian', 1, 0, '', 'JGSD');
INSERT INTO `ims_ewei_shop_express` VALUES (39, '急先达', 'jixianda', 1, 0, '', 'JXD');
INSERT INTO `ims_ewei_shop_express` VALUES (40, '佳吉物流', 'jiajiwuliu', 1, 0, '', 'CNEX');
INSERT INTO `ims_ewei_shop_express` VALUES (41, '加运美物流', 'jymwl', 1, 0, '', 'JYM');
INSERT INTO `ims_ewei_shop_express` VALUES (42, '金大物流', 'jindawuliu', 1, 0, '', '');
INSERT INTO `ims_ewei_shop_express` VALUES (43, '嘉里大通', 'jialidatong', 1, 0, '', '');
INSERT INTO `ims_ewei_shop_express` VALUES (44, '晋越快递', 'jykd', 1, 0, '', 'JYKD');
INSERT INTO `ims_ewei_shop_express` VALUES (45, '快捷速递', 'kuaijiesudi', 1, 0, '', '');
INSERT INTO `ims_ewei_shop_express` VALUES (46, '联邦快递（国内）', 'lianb', 1, 0, '', '');
INSERT INTO `ims_ewei_shop_express` VALUES (47, '联昊通物流', 'lianhaowuliu', 1, 0, '', 'LHT');
INSERT INTO `ims_ewei_shop_express` VALUES (48, '龙邦物流', 'longbanwuliu', 1, 0, '', 'LB');
INSERT INTO `ims_ewei_shop_express` VALUES (49, '立即送', 'lijisong', 1, 0, '', 'LJSKD');
INSERT INTO `ims_ewei_shop_express` VALUES (50, '乐捷递', 'lejiedi', 1, 0, '', '');
INSERT INTO `ims_ewei_shop_express` VALUES (51, '民航快递', 'minghangkuaidi', 1, 0, '', 'MHKD');
INSERT INTO `ims_ewei_shop_express` VALUES (52, '美国快递', 'meiguokuaidi', 1, 0, '', '');
INSERT INTO `ims_ewei_shop_express` VALUES (53, '门对门', 'menduimen', 1, 0, '', 'MDM');
INSERT INTO `ims_ewei_shop_express` VALUES (54, 'OCS', 'ocs', 1, 0, '', 'OCS');
INSERT INTO `ims_ewei_shop_express` VALUES (55, '配思货运', 'peisihuoyunkuaidi', 1, 0, '', '');
INSERT INTO `ims_ewei_shop_express` VALUES (56, '全晨快递', 'quanchenkuaidi', 1, 0, '', 'QCKD');
INSERT INTO `ims_ewei_shop_express` VALUES (57, '全际通物流', 'quanjitong', 1, 0, '', '');
INSERT INTO `ims_ewei_shop_express` VALUES (58, '全日通快递', 'quanritongkuaidi', 1, 0, '', 'QRT');
INSERT INTO `ims_ewei_shop_express` VALUES (59, '全一快递', 'quanyikuaidi', 1, 0, '', 'UAPEX');
INSERT INTO `ims_ewei_shop_express` VALUES (60, '如风达', 'rufengda', 1, 0, '', 'RFD');
INSERT INTO `ims_ewei_shop_express` VALUES (61, '三态速递', 'santaisudi', 1, 0, '', '');
INSERT INTO `ims_ewei_shop_express` VALUES (62, '盛辉物流', 'shenghuiwuliu', 1, 0, '', '');
INSERT INTO `ims_ewei_shop_express` VALUES (63, '速尔物流', 'suer', 1, 0, '', 'SURE');
INSERT INTO `ims_ewei_shop_express` VALUES (64, '盛丰物流', 'shengfeng', 1, 0, '', 'SFWL');
INSERT INTO `ims_ewei_shop_express` VALUES (65, '赛澳递', 'saiaodi', 1, 0, '', 'SAD');
INSERT INTO `ims_ewei_shop_express` VALUES (66, '天地华宇', 'tiandihuayu', 1, 0, '', 'HOAU');
INSERT INTO `ims_ewei_shop_express` VALUES (67, 'tnt', 'tnt', 1, 0, '', 'TNT');
INSERT INTO `ims_ewei_shop_express` VALUES (68, 'ups', 'ups', 1, 0, '', 'UPS');
INSERT INTO `ims_ewei_shop_express` VALUES (69, '万家物流', 'wanjiawuliu', 1, 0, '', 'WJWL');
INSERT INTO `ims_ewei_shop_express` VALUES (70, '文捷航空速递', 'wenjiesudi', 1, 0, '', '');
INSERT INTO `ims_ewei_shop_express` VALUES (71, '伍圆', 'wuyuan', 1, 0, '', '');
INSERT INTO `ims_ewei_shop_express` VALUES (72, '万象物流', 'wxwl', 1, 0, '', 'WXWL');
INSERT INTO `ims_ewei_shop_express` VALUES (73, '新邦物流', 'xinbangwuliu', 1, 0, '', '');
INSERT INTO `ims_ewei_shop_express` VALUES (74, '信丰物流', 'xinfengwuliu', 1, 0, '', 'XFEX');
INSERT INTO `ims_ewei_shop_express` VALUES (75, '亚风速递', 'yafengsudi', 1, 0, '', 'YFSD');
INSERT INTO `ims_ewei_shop_express` VALUES (76, '一邦速递', 'yibangwuliu', 1, 0, '', '');
INSERT INTO `ims_ewei_shop_express` VALUES (77, '优速物流', 'youshuwuliu', 1, 0, '', 'UC');
INSERT INTO `ims_ewei_shop_express` VALUES (78, '邮政快递包裹', 'youzhengguonei', 1, 0, '', 'YZPY');
INSERT INTO `ims_ewei_shop_express` VALUES (79, '邮政国际包裹挂号信', 'youzhengguoji', 1, 0, '', '');
INSERT INTO `ims_ewei_shop_express` VALUES (80, '远成物流', 'yuanchengwuliu', 1, 0, '', 'YCWL');
INSERT INTO `ims_ewei_shop_express` VALUES (81, '源伟丰快递', 'yuanweifeng', 1, 0, '', '');
INSERT INTO `ims_ewei_shop_express` VALUES (82, '元智捷诚快递', 'yuanzhijiecheng', 1, 0, '', '');
INSERT INTO `ims_ewei_shop_express` VALUES (83, '运通快递', 'yuntongkuaidi', 1, 0, '', 'YTKD');
INSERT INTO `ims_ewei_shop_express` VALUES (84, '越丰物流', 'yuefengwuliu', 1, 0, '', '');
INSERT INTO `ims_ewei_shop_express` VALUES (85, '源安达', 'yad', 1, 0, '', 'YADEX');
INSERT INTO `ims_ewei_shop_express` VALUES (86, '银捷速递', 'yinjiesudi', 1, 0, '', '');
INSERT INTO `ims_ewei_shop_express` VALUES (87, '中铁快运', 'zhongtiekuaiyun', 1, 0, '', 'ZTKY');
INSERT INTO `ims_ewei_shop_express` VALUES (88, '中邮物流', 'zhongyouwuliu', 1, 0, '', 'ZYKD');
INSERT INTO `ims_ewei_shop_express` VALUES (89, '忠信达', 'zhongxinda', 1, 0, '', '');
INSERT INTO `ims_ewei_shop_express` VALUES (90, '芝麻开门', 'zhimakaimen', 1, 0, '', '');
INSERT INTO `ims_ewei_shop_express` VALUES (91, '安能物流', 'annengwuliu', 1, 0, '', 'ANE');
INSERT INTO `ims_ewei_shop_express` VALUES (92, '京东快递', 'jd', 1, 0, '', 'JD');
INSERT INTO `ims_ewei_shop_express` VALUES (93, '微特派', 'weitepai', 1, 0, '', 'WTP');
INSERT INTO `ims_ewei_shop_express` VALUES (94, '九曳供应链', 'jiuyescm', 1, 0, '', 'JIUYE');
INSERT INTO `ims_ewei_shop_express` VALUES (95, '跨越速运', 'kuayue', 1, 0, '', 'KYSY');

-- ----------------------------
-- Table structure for ims_ewei_shop_express_cache
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_express_cache`;
CREATE TABLE `ims_ewei_shop_express_cache`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `expresssn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `express` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lasttime` int(11) NOT NULL,
  `datas` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_expresssn`(`expresssn`) USING BTREE,
  INDEX `idx_express`(`express`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_feedback
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_feedback`;
CREATE TABLE `ims_ewei_shop_feedback`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `type` tinyint(1) NULL DEFAULT 1,
  `status` tinyint(1) NULL DEFAULT 0,
  `feedbackid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `transid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `reason` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `solution` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `remark` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `createtime` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_feedbackid`(`feedbackid`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE,
  INDEX `idx_transid`(`transid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_form
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_form`;
CREATE TABLE `ims_ewei_shop_form`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `displayorder` int(11) NULL DEFAULT 0,
  `isrequire` tinyint(3) NULL DEFAULT 0,
  `key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `values` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `cate` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_form_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_form_category`;
CREATE TABLE `ims_ewei_shop_form_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_friendcoupon
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_friendcoupon`;
CREATE TABLE `ims_ewei_shop_friendcoupon`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `people_count` int(10) NULL DEFAULT 0,
  `coupon_money` decimal(10, 2) NULL DEFAULT 0.00,
  `use_condition` decimal(10, 2) NULL DEFAULT NULL,
  `duration` int(11) NULL DEFAULT 0,
  `allocate` tinyint(2) UNSIGNED NULL DEFAULT 0,
  `upper_limit` decimal(10, 2) NULL DEFAULT 0.00,
  `launches_limit` int(11) NULL DEFAULT 0,
  `launches_count` int(11) NULL DEFAULT 0,
  `activity_start_time` int(11) NULL DEFAULT 0,
  `activity_end_time` int(11) NULL DEFAULT 0,
  `desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `use_time_limit` int(11) NULL DEFAULT 0,
  `use_start_time` int(11) NULL DEFAULT 0,
  `use_end_time` int(11) NULL DEFAULT 0,
  `limitdiscounttype` tinyint(1) NULL DEFAULT 0,
  `limitgoodcatetype` tinyint(1) NULL DEFAULT 0,
  `limitgoodcateids` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `limitgoodtype` tinyint(1) UNSIGNED NULL DEFAULT 0,
  `limitgoodids` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `use_valid_days` int(11) NULL DEFAULT 0,
  `status` tinyint(1) NULL DEFAULT NULL,
  `displayorder` int(11) NULL DEFAULT 0,
  `deleted` tinyint(1) UNSIGNED NULL DEFAULT 0,
  `stop_time` int(11) UNSIGNED NULL DEFAULT 0,
  `create_time` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_title`(`title`) USING BTREE,
  INDEX `idx_deleted`(`deleted`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_friendcoupon_data
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_friendcoupon_data`;
CREATE TABLE `ims_ewei_shop_friendcoupon_data`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `headerid` int(11) NOT NULL DEFAULT 0,
  `activity_id` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `enough` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `deduct` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `timestart` int(11) NOT NULL DEFAULT 0,
  `timeend` int(11) NOT NULL DEFAULT 0,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `receive_time` int(11) NOT NULL DEFAULT 0,
  `deadline` int(11) NOT NULL DEFAULT 0,
  `is_send` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `send_failed_message` tinyint(1) NOT NULL DEFAULT 0,
  `form_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE,
  INDEX `idx_headerid`(`headerid`) USING BTREE,
  INDEX `idx_activity_id`(`activity_id`) USING BTREE,
  INDEX `idx_send_failed_message`(`send_failed_message`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_fullback_goods
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_fullback_goods`;
CREATE TABLE `ims_ewei_shop_fullback_goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `type` tinyint(3) NOT NULL DEFAULT 0,
  `goodsid` int(11) NOT NULL DEFAULT 0,
  `titles` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `marketprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `minallfullbackallprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `maxallfullbackallprice` decimal(10, 2) NOT NULL,
  `minallfullbackallratio` decimal(10, 2) NULL DEFAULT NULL,
  `maxallfullbackallratio` decimal(10, 2) NULL DEFAULT NULL,
  `day` int(11) NOT NULL DEFAULT 0,
  `fullbackprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `fullbackratio` decimal(10, 2) NULL DEFAULT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `displayorder` int(11) NOT NULL DEFAULT 0,
  `hasoption` tinyint(3) NOT NULL DEFAULT 0,
  `optionid` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `startday` int(11) NOT NULL DEFAULT 0,
  `refund` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_fullback_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_fullback_log`;
CREATE TABLE `ims_ewei_shop_fullback_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `orderid` int(11) NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `priceevery` decimal(10, 2) NOT NULL,
  `day` int(10) NOT NULL,
  `fullbackday` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  `fullbacktime` int(10) NOT NULL,
  `isfullback` tinyint(3) NOT NULL DEFAULT 0,
  `goodsid` int(11) NOT NULL DEFAULT 0,
  `optionid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_fullback_log_map
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_fullback_log_map`;
CREATE TABLE `ims_ewei_shop_fullback_log_map`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `fullback_time` int(11) NOT NULL DEFAULT 0,
  `logid` int(11) NOT NULL DEFAULT 0,
  `price` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `goodsid` int(11) NOT NULL DEFAULT 0,
  `optionid` int(11) NOT NULL DEFAULT 0,
  `day` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_ewei_shop_funbar
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_funbar`;
CREATE TABLE `ims_ewei_shop_funbar`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT 0,
  `datas` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_gift
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_gift`;
CREATE TABLE `ims_ewei_shop_gift`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `activity` tinyint(3) NOT NULL DEFAULT 1,
  `orderprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `goodsid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `giftgoodsid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `starttime` int(11) NOT NULL DEFAULT 0,
  `endtime` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `displayorder` int(11) NOT NULL DEFAULT 0,
  `share_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `share_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `share_desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_globonus_bill
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_globonus_bill`;
CREATE TABLE `ims_ewei_shop_globonus_bill`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `billno` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `paytype` int(11) NULL DEFAULT 0,
  `year` int(11) NULL DEFAULT 0,
  `month` int(11) NULL DEFAULT 0,
  `week` int(11) NULL DEFAULT 0,
  `ordercount` int(11) NULL DEFAULT 0,
  `ordermoney` decimal(10, 2) NULL DEFAULT 0.00,
  `bonusmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `bonusmoney_send` decimal(10, 2) NULL DEFAULT 0.00,
  `bonusmoney_pay` decimal(10, 2) NULL DEFAULT 0.00,
  `paytime` int(11) NULL DEFAULT 0,
  `partnercount` int(11) NULL DEFAULT 0,
  `createtime` int(11) NULL DEFAULT 0,
  `status` tinyint(3) NULL DEFAULT 0,
  `starttime` int(11) NULL DEFAULT 0,
  `endtime` int(11) NULL DEFAULT 0,
  `confirmtime` int(11) NULL DEFAULT 0,
  `bonusordermoney` decimal(10, 2) NULL DEFAULT 0.00,
  `bonusrate` decimal(10, 2) NULL DEFAULT 0.00,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_paytype`(`paytype`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE,
  INDEX `idx_paytime`(`paytime`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_month`(`month`) USING BTREE,
  INDEX `idx_week`(`week`) USING BTREE,
  INDEX `idx_year`(`year`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_globonus_billo
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_globonus_billo`;
CREATE TABLE `ims_ewei_shop_globonus_billo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `billid` int(11) NULL DEFAULT 0,
  `orderid` int(11) NULL DEFAULT 0,
  `ordermoney` decimal(10, 2) NULL DEFAULT 0.00,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_billid`(`billid`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_ewei_shop_globonus_billp
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_globonus_billp`;
CREATE TABLE `ims_ewei_shop_globonus_billp`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `billid` int(11) NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `payno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `paytype` tinyint(3) NULL DEFAULT 0,
  `bonus` decimal(10, 2) NULL DEFAULT 0.00,
  `money` decimal(10, 2) NULL DEFAULT 0.00,
  `realmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `paymoney` decimal(10, 2) NULL DEFAULT 0.00,
  `charge` decimal(10, 2) NULL DEFAULT 0.00,
  `chargemoney` decimal(10, 2) NULL DEFAULT 0.00,
  `status` tinyint(3) NULL DEFAULT 0,
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `paytime` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_billid`(`billid`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_globonus_level
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_globonus_level`;
CREATE TABLE `ims_ewei_shop_globonus_level`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `levelname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `bonus` decimal(10, 4) NULL DEFAULT 0.0000,
  `ordermoney` decimal(10, 2) NULL DEFAULT 0.00,
  `ordercount` int(11) NULL DEFAULT 0,
  `commissionmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `bonusmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `downcount` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_goods
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_goods`;
CREATE TABLE `ims_ewei_shop_goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `pcate` int(11) NULL DEFAULT 0,
  `ccate` int(11) NULL DEFAULT 0,
  `type` tinyint(1) NULL DEFAULT 1,
  `status` tinyint(1) NULL DEFAULT 1,
  `displayorder` int(11) NULL DEFAULT 0,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `unit` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `goodssn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `productsn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `productprice` decimal(10, 2) NULL DEFAULT 0.00,
  `marketprice` decimal(10, 2) NULL DEFAULT 0.00,
  `costprice` decimal(10, 2) NULL DEFAULT 0.00,
  `originalprice` decimal(10, 2) NULL DEFAULT 0.00,
  `total` int(10) NULL DEFAULT 0,
  `totalcnf` int(11) NULL DEFAULT 0,
  `sales` int(11) NULL DEFAULT 0,
  `salesreal` int(11) NULL DEFAULT 0,
  `spec` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `createtime` int(11) NULL DEFAULT 0,
  `weight` decimal(10, 2) NULL DEFAULT 0.00,
  `credit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `maxbuy` int(11) NULL DEFAULT 0,
  `usermaxbuy` int(11) NULL DEFAULT 0,
  `hasoption` int(11) NULL DEFAULT 0,
  `dispatch` int(11) NULL DEFAULT 0,
  `thumb_url` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `isnew` tinyint(1) NULL DEFAULT 0,
  `ishot` tinyint(1) NULL DEFAULT 0,
  `isdiscount` tinyint(1) NULL DEFAULT 0,
  `isrecommand` tinyint(1) NULL DEFAULT 0,
  `issendfree` tinyint(1) NULL DEFAULT 0,
  `istime` tinyint(1) NULL DEFAULT 0,
  `iscomment` tinyint(1) NULL DEFAULT 0,
  `timestart` int(11) NULL DEFAULT 0,
  `timeend` int(11) NULL DEFAULT 0,
  `viewcount` int(11) NULL DEFAULT 0,
  `deleted` tinyint(3) NULL DEFAULT 0,
  `hascommission` tinyint(3) NULL DEFAULT 0,
  `commission1_rate` decimal(10, 2) NULL DEFAULT 0.00,
  `commission1_pay` decimal(10, 2) NULL DEFAULT 0.00,
  `commission2_rate` decimal(10, 2) NULL DEFAULT 0.00,
  `commission2_pay` decimal(10, 2) NULL DEFAULT 0.00,
  `commission3_rate` decimal(10, 2) NULL DEFAULT 0.00,
  `commission3_pay` decimal(10, 2) NULL DEFAULT 0.00,
  `score` decimal(10, 2) NULL DEFAULT 0.00,
  `taobaoid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `taotaoid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `taobaourl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `updatetime` int(11) NULL DEFAULT 0,
  `share_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `share_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `cash` tinyint(3) NULL DEFAULT 0,
  `commission_thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `isnodiscount` tinyint(3) NULL DEFAULT 0,
  `showlevels` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `buylevels` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `showgroups` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `buygroups` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `isverify` tinyint(3) NULL DEFAULT 0,
  `storeids` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `noticeopenid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `tcate` int(11) NULL DEFAULT 0,
  `noticetype` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `needfollow` tinyint(3) NULL DEFAULT 0,
  `followtip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `followurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `deduct` decimal(10, 2) NULL DEFAULT 0.00,
  `virtual` int(11) NULL DEFAULT 0,
  `ccates` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `discounts` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `nocommission` tinyint(3) NULL DEFAULT 0,
  `hidecommission` tinyint(3) NULL DEFAULT 0,
  `pcates` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `tcates` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `cates` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `artid` int(11) NULL DEFAULT 0,
  `detail_logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `detail_shopname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `detail_btntext1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `detail_btnurl1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `detail_btntext2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `detail_btnurl2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `detail_totaltitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `saleupdate42392` tinyint(3) NULL DEFAULT 0,
  `deduct2` decimal(10, 2) NULL DEFAULT 0.00,
  `ednum` int(11) NULL DEFAULT 0,
  `saleupdate` tinyint(3) NULL DEFAULT 0,
  `edmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `edareas` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `diyformtype` tinyint(1) NULL DEFAULT 0,
  `diyformid` int(11) NULL DEFAULT 0,
  `diymode` tinyint(1) NULL DEFAULT 0,
  `dispatchtype` tinyint(1) NULL DEFAULT 0,
  `dispatchid` int(11) NULL DEFAULT 0,
  `dispatchprice` decimal(10, 2) NULL DEFAULT 0.00,
  `manydeduct` tinyint(1) NULL DEFAULT 0,
  `shorttitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `isdiscount_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `isdiscount_time` int(11) NULL DEFAULT 0,
  `isdiscount_discounts` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `commission` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `saleupdate37975` tinyint(3) NULL DEFAULT 0,
  `shopid` int(11) NULL DEFAULT 0,
  `allcates` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `minbuy` int(11) NULL DEFAULT 0,
  `invoice` tinyint(3) NULL DEFAULT 0,
  `repair` tinyint(3) NULL DEFAULT 0,
  `seven` tinyint(3) NULL DEFAULT 0,
  `money` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `minprice` decimal(10, 2) NULL DEFAULT 0.00,
  `maxprice` decimal(10, 2) NULL DEFAULT 0.00,
  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `buyshow` tinyint(1) NULL DEFAULT 0,
  `buycontent` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `saleupdate51117` tinyint(3) NULL DEFAULT 0,
  `virtualsend` tinyint(1) NULL DEFAULT 0,
  `virtualsendcontent` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `verifytype` tinyint(1) NULL DEFAULT 0,
  `diyfields` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `diysaveid` int(11) NULL DEFAULT 0,
  `diysave` tinyint(1) NULL DEFAULT 0,
  `quality` tinyint(3) NULL DEFAULT 0,
  `groupstype` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `showtotal` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `subtitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `minpriceupdated` tinyint(1) NULL DEFAULT 0,
  `newgoods` tinyint(3) NOT NULL DEFAULT 0,
  `video` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `officthumb` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `verifygoodstype` tinyint(1) NOT NULL DEFAULT 0,
  `isforceverifystore` tinyint(1) NOT NULL DEFAULT 0,
  `sharebtn` tinyint(1) NOT NULL DEFAULT 0,
  `catesinit3` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `showtotaladd` tinyint(1) NULL DEFAULT 0,
  `merchid` int(11) NULL DEFAULT 0,
  `checked` tinyint(3) NULL DEFAULT 0,
  `thumb_first` tinyint(3) NULL DEFAULT 0,
  `merchsale` tinyint(1) NULL DEFAULT 0,
  `keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `catch_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `catch_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `catch_source` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `saleupdate40170` tinyint(3) NULL DEFAULT 0,
  `saleupdate35843` tinyint(3) NULL DEFAULT 0,
  `labelname` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `autoreceive` int(11) NULL DEFAULT 0,
  `cannotrefund` tinyint(3) NULL DEFAULT 0,
  `saleupdate33219` tinyint(3) NULL DEFAULT 0,
  `bargain` int(11) NULL DEFAULT 0,
  `buyagain` decimal(10, 2) NULL DEFAULT 0.00,
  `buyagain_islong` tinyint(1) NULL DEFAULT 0,
  `buyagain_condition` tinyint(1) NULL DEFAULT 0,
  `buyagain_sale` tinyint(1) NULL DEFAULT 0,
  `buyagain_commission` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `saleupdate32484` tinyint(3) NULL DEFAULT 0,
  `saleupdate36586` tinyint(3) NULL DEFAULT 0,
  `diypage` int(11) NULL DEFAULT NULL,
  `cashier` tinyint(1) NULL DEFAULT 0,
  `saleupdate53481` tinyint(3) NULL DEFAULT 0,
  `saleupdate30424` tinyint(3) NULL DEFAULT 0,
  `isendtime` tinyint(3) NOT NULL DEFAULT 0,
  `usetime` int(11) NOT NULL DEFAULT 0,
  `endtime` int(11) NOT NULL DEFAULT 0,
  `merchdisplayorder` int(11) NOT NULL DEFAULT 0,
  `exchange_stock` int(11) NULL DEFAULT 0,
  `exchange_postage` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `ispresell` tinyint(3) NOT NULL DEFAULT 0,
  `presellprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `presellover` tinyint(3) NOT NULL DEFAULT 0,
  `presellovertime` int(11) NOT NULL,
  `presellstart` tinyint(3) NOT NULL DEFAULT 0,
  `preselltimestart` int(11) NOT NULL DEFAULT 0,
  `presellend` tinyint(3) NOT NULL DEFAULT 0,
  `preselltimeend` int(11) NOT NULL DEFAULT 0,
  `presellsendtype` tinyint(3) NOT NULL DEFAULT 0,
  `presellsendstatrttime` int(11) NOT NULL DEFAULT 0,
  `presellsendtime` int(11) NOT NULL DEFAULT 0,
  `edareas_code` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `unite_total` tinyint(3) NOT NULL DEFAULT 0,
  `buyagain_price` decimal(10, 2) NULL DEFAULT 0.00,
  `threen` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `intervalfloor` tinyint(1) NULL DEFAULT 0,
  `intervalprice` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `isfullback` tinyint(3) NOT NULL DEFAULT 0,
  `isstatustime` tinyint(3) NOT NULL DEFAULT 0,
  `statustimestart` int(10) NOT NULL DEFAULT 0,
  `statustimeend` int(10) NOT NULL DEFAULT 0,
  `nosearch` tinyint(1) NOT NULL DEFAULT 0,
  `showsales` tinyint(3) NOT NULL DEFAULT 1,
  `islive` int(11) NOT NULL DEFAULT 0,
  `liveprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `opencard` tinyint(1) NULL DEFAULT 0,
  `cardid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `verifygoodsnum` int(11) NULL DEFAULT 1,
  `verifygoodsdays` int(11) NULL DEFAULT 1,
  `verifygoodslimittype` tinyint(1) NULL DEFAULT 0,
  `verifygoodslimitdate` int(11) NULL DEFAULT 0,
  `minliveprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `maxliveprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `dowpayment` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `tempid` int(11) NOT NULL DEFAULT 0,
  `isstoreprice` tinyint(11) NOT NULL DEFAULT 0,
  `beforehours` int(11) NOT NULL DEFAULT 0,
  `manydeduct2` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_pcate`(`pcate`) USING BTREE,
  INDEX `idx_ccate`(`ccate`) USING BTREE,
  INDEX `idx_isnew`(`isnew`) USING BTREE,
  INDEX `idx_ishot`(`ishot`) USING BTREE,
  INDEX `idx_isdiscount`(`isdiscount`) USING BTREE,
  INDEX `idx_isrecommand`(`isrecommand`) USING BTREE,
  INDEX `idx_iscomment`(`iscomment`) USING BTREE,
  INDEX `idx_issendfree`(`issendfree`) USING BTREE,
  INDEX `idx_istime`(`istime`) USING BTREE,
  INDEX `idx_deleted`(`deleted`) USING BTREE,
  INDEX `idx_tcate`(`tcate`) USING BTREE,
  INDEX `idx_scate`(`tcate`) USING BTREE,
  INDEX `idx_merchid`(`merchid`) USING BTREE,
  INDEX `idx_checked`(`checked`) USING BTREE,
  INDEX `idx_productsn`(`productsn`) USING BTREE,
  FULLTEXT INDEX `idx_buylevels`(`buylevels`),
  FULLTEXT INDEX `idx_showgroups`(`showgroups`),
  FULLTEXT INDEX `idx_buygroups`(`buygroups`)
) ENGINE = MyISAM AUTO_INCREMENT = 199 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_goods_cards
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_goods_cards`;
CREATE TABLE `ims_ewei_shop_goods_cards`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT NULL,
  `card_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `card_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `card_brand_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `card_totalquantity` int(11) NULL DEFAULT NULL,
  `card_quantity` int(11) NULL DEFAULT NULL,
  `card_logoimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `card_logowxurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `card_backgroundtype` tinyint(1) NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `card_backgroundimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `card_backgroundwxurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `prerogative` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `card_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `freewifi` tinyint(1) NULL DEFAULT NULL,
  `withpet` tinyint(1) NULL DEFAULT NULL,
  `freepark` tinyint(1) NULL DEFAULT NULL,
  `deliver` tinyint(1) NULL DEFAULT NULL,
  `custom_cell1` tinyint(1) NULL DEFAULT NULL,
  `custom_cell1_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `custom_cell1_tips` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `custom_cell1_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `color2` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_goods_comment
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_goods_comment`;
CREATE TABLE `ims_ewei_shop_goods_comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `goodsid` int(10) NULL DEFAULT 0,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `headimgurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `createtime` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_goodsid`(`goodsid`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_goods_group
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_goods_group`;
CREATE TABLE `ims_ewei_shop_goods_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `goodsids` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 0,
  `merchid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_enabled`(`enabled`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_goods_label
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_goods_label`;
CREATE TABLE `ims_ewei_shop_goods_label`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `labelname` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `displayorder` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_goods_labelstyle
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_goods_labelstyle`;
CREATE TABLE `ims_ewei_shop_goods_labelstyle`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `style` int(3) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_ewei_shop_goods_option
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_goods_option`;
CREATE TABLE `ims_ewei_shop_goods_option`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `goodsid` int(10) NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `productprice` decimal(10, 2) NULL DEFAULT 0.00,
  `marketprice` decimal(10, 2) NULL DEFAULT 0.00,
  `costprice` decimal(10, 2) NULL DEFAULT 0.00,
  `stock` int(11) NULL DEFAULT 0,
  `weight` decimal(10, 2) NULL DEFAULT 0.00,
  `displayorder` int(11) NULL DEFAULT 0,
  `specs` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `skuId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `goodssn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `productsn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `virtual` int(11) NULL DEFAULT 0,
  `exchange_stock` int(11) NULL DEFAULT 0,
  `exchange_postage` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `presellprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `day` int(3) NOT NULL,
  `allfullbackprice` decimal(10, 2) NOT NULL,
  `fullbackprice` decimal(10, 2) NOT NULL,
  `allfullbackratio` decimal(10, 2) NULL DEFAULT NULL,
  `fullbackratio` decimal(10, 2) NULL DEFAULT NULL,
  `isfullback` tinyint(3) NOT NULL,
  `islive` int(11) NOT NULL,
  `liveprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `cycelbuy_periodic` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_goodsid`(`goodsid`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE,
  INDEX `idx_productsn`(`productsn`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 405 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_goods_param
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_goods_param`;
CREATE TABLE `ims_ewei_shop_goods_param`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `goodsid` int(10) NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `value` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `displayorder` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_goodsid`(`goodsid`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1110 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_goods_spec
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_goods_spec`;
CREATE TABLE `ims_ewei_shop_goods_spec`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `goodsid` int(11) NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `displaytype` tinyint(3) NULL DEFAULT 0,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `displayorder` int(11) NULL DEFAULT 0,
  `propId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `iscycelbuy` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_goodsid`(`goodsid`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 93 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_goods_spec_item
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_goods_spec_item`;
CREATE TABLE `ims_ewei_shop_goods_spec_item`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `specid` int(11) NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `show` int(11) NULL DEFAULT 0,
  `displayorder` int(11) NULL DEFAULT 0,
  `valueId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `virtual` int(11) NULL DEFAULT 0,
  `cycelbuy_periodic` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_specid`(`specid`) USING BTREE,
  INDEX `idx_show`(`show`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 291 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_goodscircle_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_goodscircle_log`;
CREATE TABLE `ims_ewei_shop_goodscircle_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `openid` varchar(65) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `op_type` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `op_id` int(11) NOT NULL DEFAULT 0,
  `is_success` tinyint(1) NOT NULL DEFAULT 1,
  `response_msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `createtime` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_unid`(`uniacid`) USING BTREE,
  INDEX `idx_optype`(`op_type`) USING BTREE,
  INDEX `idx_opid`(`op_id`) USING BTREE,
  INDEX `idx_succ`(`is_success`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_goodscode_good
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_goodscode_good`;
CREATE TABLE `ims_ewei_shop_goodscode_good`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `goodsid` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `qrcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) NOT NULL,
  `displayorder` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_groups_adv
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_groups_adv`;
CREATE TABLE `ims_ewei_shop_groups_adv`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `advname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `displayorder` int(11) NULL DEFAULT 0,
  `enabled` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_enabled`(`enabled`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_groups_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_groups_category`;
CREATE TABLE `ims_ewei_shop_groups_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `displayorder` tinyint(3) UNSIGNED NULL DEFAULT 0,
  `enabled` tinyint(1) NULL DEFAULT 1,
  `advimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `advurl` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `isrecommand` tinyint(3) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE,
  INDEX `idx_enabled`(`enabled`) USING BTREE,
  INDEX `idx_name`(`name`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_groups_goods
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_groups_goods`;
CREATE TABLE `ims_ewei_shop_groups_goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `displayorder` int(11) UNSIGNED NULL DEFAULT 0,
  `uniacid` int(11) NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `category` int(11) NULL DEFAULT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `price` decimal(10, 2) NULL DEFAULT 0.00,
  `groupsprice` decimal(10, 2) NULL DEFAULT 0.00,
  `singleprice` decimal(10, 2) NULL DEFAULT 0.00,
  `goodsnum` int(11) NOT NULL DEFAULT 1,
  `units` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '件',
  `freight` decimal(10, 2) NULL DEFAULT 0.00,
  `endtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `groupnum` int(10) NOT NULL DEFAULT 0,
  `sales` int(10) NOT NULL DEFAULT 0,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `createtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `ishot` tinyint(3) NOT NULL DEFAULT 0,
  `deleted` tinyint(3) NOT NULL DEFAULT 0,
  `goodsid` int(11) NOT NULL DEFAULT 0,
  `followneed` tinyint(2) NOT NULL DEFAULT 0,
  `followtext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `share_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `share_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `share_desc` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goodssn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `productsn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `showstock` tinyint(2) NOT NULL,
  `purchaselimit` int(11) NOT NULL DEFAULT 0,
  `single` tinyint(2) NOT NULL DEFAULT 0,
  `dispatchtype` tinyint(2) NOT NULL,
  `dispatchid` int(11) NOT NULL,
  `isindex` tinyint(3) NOT NULL DEFAULT 0,
  `followurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `deduct` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `rights` tinyint(2) NOT NULL DEFAULT 1,
  `thumb_url` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `gid` int(11) NULL DEFAULT 0,
  `discount` tinyint(3) NULL DEFAULT 0,
  `headstype` tinyint(3) NULL DEFAULT NULL,
  `headsmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `headsdiscount` int(11) NULL DEFAULT 0,
  `isdiscount` tinyint(3) NULL DEFAULT 0,
  `isverify` tinyint(3) NULL DEFAULT 0,
  `verifytype` tinyint(3) NULL DEFAULT 0,
  `verifynum` int(11) NULL DEFAULT 0,
  `storeids` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `merchid` int(11) NULL DEFAULT 0,
  `shorttitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `teamnum` int(11) NULL DEFAULT 0,
  `more_spec` tinyint(1) NULL DEFAULT 0,
  `is_ladder` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_type`(`category`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_category`(`category`) USING BTREE,
  INDEX `idx_dispatchid`(`dispatchid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_groups_goods_atlas
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_groups_goods_atlas`;
CREATE TABLE `ims_ewei_shop_groups_goods_atlas`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `g_id` int(11) NOT NULL,
  `thumb` varchar(145) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_groups_goods_option
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_groups_goods_option`;
CREATE TABLE `ims_ewei_shop_groups_goods_option`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT NULL,
  `goodsid` int(11) NULL DEFAULT 0,
  `groups_goods_id` int(255) NULL DEFAULT 0,
  `goods_option_id` int(11) NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `marketprice` decimal(10, 2) NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `single_price` decimal(10, 2) NULL DEFAULT NULL,
  `specs` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stock` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_groups_ladder
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_groups_ladder`;
CREATE TABLE `ims_ewei_shop_groups_ladder`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT NULL,
  `goods_id` int(11) NULL DEFAULT 0,
  `ladder_num` int(11) NULL DEFAULT NULL,
  `ladder_price` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_ewei_shop_groups_order
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_groups_order`;
CREATE TABLE `ims_ewei_shop_groups_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `openid` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `orderno` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `groupnum` int(11) NOT NULL,
  `paytime` int(11) NOT NULL,
  `price` decimal(11, 2) NULL DEFAULT 0.00,
  `freight` decimal(11, 2) NULL DEFAULT 0.00,
  `status` int(9) NOT NULL,
  `pay_type` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goodid` int(11) NOT NULL,
  `teamid` int(11) NOT NULL,
  `is_team` int(2) NOT NULL,
  `heads` int(11) NULL DEFAULT 0,
  `starttime` int(11) NOT NULL,
  `endtime` int(45) NOT NULL,
  `createtime` int(11) NOT NULL,
  `success` int(2) NOT NULL DEFAULT 0,
  `delete` int(2) NOT NULL DEFAULT 0,
  `credit` int(11) NULL DEFAULT 0,
  `creditmoney` decimal(11, 2) NULL DEFAULT 0.00,
  `dispatchid` int(11) NULL DEFAULT NULL,
  `addressid` int(11) NOT NULL DEFAULT 0,
  `address` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `discount` decimal(10, 2) NULL DEFAULT 0.00,
  `canceltime` int(11) NOT NULL DEFAULT 0,
  `finishtime` int(11) NOT NULL DEFAULT 0,
  `refundid` int(11) NOT NULL DEFAULT 0,
  `refundstate` tinyint(2) NOT NULL DEFAULT 0,
  `refundtime` int(11) NOT NULL DEFAULT 0,
  `express` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `expresscom` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `expresssn` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sendtime` int(45) NULL DEFAULT 0,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remarkclose` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `remarksend` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `deleted` int(2) NOT NULL DEFAULT 0,
  `realname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isverify` tinyint(3) NULL DEFAULT 0,
  `verifytype` tinyint(3) NULL DEFAULT 0,
  `verifycode` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `verifynum` int(11) NULL DEFAULT 0,
  `printstate` int(11) NOT NULL DEFAULT 0,
  `printstate2` int(11) NOT NULL DEFAULT 0,
  `apppay` tinyint(3) NOT NULL DEFAULT 0,
  `isborrow` tinyint(1) NULL DEFAULT 0,
  `borrowopenid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `source` tinyint(1) NULL DEFAULT 0,
  `ladder_id` int(11) NULL DEFAULT 0,
  `is_ladder` tinyint(1) NULL DEFAULT 0,
  `more_spec` tinyint(1) NULL DEFAULT 0,
  `wxapp_prepay_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `cancel_reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `goods_price` decimal(10, 2) NULL DEFAULT 0.00,
  `goods_option_id` int(11) NULL DEFAULT 0,
  `specs` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `diyformid` int(11) NULL DEFAULT 0,
  `diyformdata` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `diyformfields` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE,
  INDEX `idx_orderno`(`orderno`) USING BTREE,
  INDEX `idx_paytime`(`paytime`) USING BTREE,
  INDEX `idx_pay_type`(`pay_type`) USING BTREE,
  INDEX `idx_teamid`(`teamid`) USING BTREE,
  INDEX `idx_verifycode`(`verifycode`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_groups_order_goods
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_groups_order_goods`;
CREATE TABLE `ims_ewei_shop_groups_order_goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT NULL,
  `goods_id` int(11) NULL DEFAULT 0,
  `groups_goods_id` int(11) NULL DEFAULT 0,
  `groups_goods_option_id` int(11) NULL DEFAULT 0,
  `groups_order_id` int(11) NULL DEFAULT 0,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `option_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_groups_order_refund
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_groups_order_refund`;
CREATE TABLE `ims_ewei_shop_groups_order_refund`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `openid` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `orderid` int(11) NOT NULL DEFAULT 0,
  `refundno` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `refundstatus` tinyint(3) NOT NULL DEFAULT 0,
  `refundaddressid` int(11) NOT NULL DEFAULT 0,
  `refundaddress` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `images` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `applytime` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `applycredit` int(11) NOT NULL DEFAULT 0,
  `applyprice` decimal(11, 2) NOT NULL DEFAULT 0.00,
  `reply` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `refundtype` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `rtype` int(3) NOT NULL DEFAULT 0,
  `refundtime` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `endtime` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `operatetime` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `realcredit` int(11) NOT NULL DEFAULT 0,
  `realmoney` decimal(11, 2) NOT NULL DEFAULT 0.00,
  `express` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `expresscom` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `expresssn` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `sendtime` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `returntime` int(11) NOT NULL DEFAULT 0,
  `rexpress` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `rexpresscom` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `rexpresssn` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `openid`(`openid`) USING BTREE,
  INDEX `orderid`(`orderid`) USING BTREE,
  INDEX `refundno`(`refundno`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_groups_paylog
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_groups_paylog`;
CREATE TABLE `ims_ewei_shop_groups_paylog`  (
  `plid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uniacid` int(11) NOT NULL,
  `acid` int(10) UNSIGNED NOT NULL,
  `openid` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `credit` int(10) NOT NULL DEFAULT 0,
  `creditmoney` decimal(10, 2) NOT NULL,
  `fee` decimal(10, 2) NULL DEFAULT 0.00,
  `status` tinyint(4) NOT NULL,
  `module` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tag` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_usecard` tinyint(3) UNSIGNED NOT NULL,
  `card_type` tinyint(3) UNSIGNED NOT NULL,
  `card_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `card_fee` decimal(10, 2) NULL DEFAULT 0.00,
  `encrypt_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `uniontid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`plid`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE,
  INDEX `idx_tid`(`tid`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `uniontid`(`uniontid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_groups_set
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_groups_set`;
CREATE TABLE `ims_ewei_shop_groups_set`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `groups` int(2) NOT NULL DEFAULT 0,
  `followurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `groupsurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `share_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `share_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `share_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `groups_description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `description` int(2) NOT NULL DEFAULT 0,
  `followqrcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `share_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `creditdeduct` tinyint(2) NOT NULL DEFAULT 0,
  `groupsdeduct` tinyint(2) NOT NULL DEFAULT 0,
  `credit` int(11) NOT NULL DEFAULT 1,
  `groupsmoney` decimal(11, 2) NOT NULL DEFAULT 0.00,
  `refund` int(11) NOT NULL DEFAULT 0,
  `refundday` int(11) NOT NULL DEFAULT 0,
  `goodsid` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rules` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `receive` int(11) NULL DEFAULT 0,
  `discount` tinyint(3) NULL DEFAULT 0,
  `headstype` tinyint(3) NULL DEFAULT 0,
  `headsmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `headsdiscount` int(11) NULL DEFAULT 0,
  `followbar` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_groups_verify
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_groups_verify`;
CREATE TABLE `ims_ewei_shop_groups_verify`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `openid` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `orderid` int(11) NULL DEFAULT 0,
  `verifycode` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `storeid` int(11) NULL DEFAULT 0,
  `verifier` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `isverify` tinyint(3) NULL DEFAULT 0,
  `verifytime` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_invitation
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_invitation`;
CREATE TABLE `ims_ewei_shop_invitation`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `type` tinyint(3) NOT NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `scan` int(11) NOT NULL DEFAULT 0,
  `follow` int(11) NOT NULL DEFAULT 0,
  `qrcode` tinyint(3) NOT NULL DEFAULT 0,
  `status` tinyint(3) NOT NULL,
  `createtime` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_type`(`type`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_invitation_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_invitation_log`;
CREATE TABLE `ims_ewei_shop_invitation_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `invitation_id` int(11) NOT NULL DEFAULT 0,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `invitation_openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `scan_time` int(10) NOT NULL DEFAULT 0,
  `follow` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_posterid`(`invitation_id`) USING BTREE,
  INDEX `idx_scantime`(`scan_time`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_invitation_qr
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_invitation_qr`;
CREATE TABLE `ims_ewei_shop_invitation_qr`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acid` int(11) NOT NULL DEFAULT 0,
  `openid` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `invitationid` int(11) NOT NULL,
  `roomid` int(11) NOT NULL DEFAULT 0,
  `sceneid` int(11) NOT NULL,
  `ticket` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(11) NOT NULL,
  `expire` int(11) NOT NULL DEFAULT 0,
  `qrimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_live
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_live`;
CREATE TABLE `ims_ewei_shop_live`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `merchid` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `livetype` tinyint(3) NOT NULL DEFAULT 0,
  `liveidentity` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `screen` tinyint(3) NOT NULL DEFAULT 0,
  `goodsid` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category` int(11) NOT NULL DEFAULT 0,
  `url` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumb` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hot` tinyint(3) NOT NULL DEFAULT 0,
  `recommend` tinyint(3) NOT NULL DEFAULT 0,
  `living` tinyint(3) NOT NULL DEFAULT 0,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `displayorder` int(11) NOT NULL DEFAULT 0,
  `livetime` int(10) NOT NULL DEFAULT 0,
  `lastlivetime` int(11) NOT NULL DEFAULT 0,
  `createtime` int(10) NOT NULL DEFAULT 0,
  `introduce` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `packetmoney` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `packettotal` int(11) NOT NULL DEFAULT 0,
  `packetprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `packetdes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `couponid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `share_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `share_icon` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `share_desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `share_url` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `subscribe` int(11) NOT NULL DEFAULT 0,
  `subscribenotice` tinyint(3) NOT NULL DEFAULT 0,
  `visit` int(11) NOT NULL DEFAULT 0,
  `video` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `covertype` tinyint(3) NOT NULL DEFAULT 0,
  `cover` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `iscoupon` tinyint(3) NOT NULL DEFAULT 0,
  `nestable` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tabs` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `invitation_id` int(11) NOT NULL DEFAULT 0,
  `showlevels` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `showgroups` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `showcommission` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jurisdiction_url` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jurisdictionurl_show` tinyint(3) NOT NULL DEFAULT 0,
  `notice` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `notice_url` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `followqrcode` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `coupon_num` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_merchid`(`merchid`) USING BTREE,
  INDEX `idx_category`(`category`) USING BTREE,
  INDEX `idx_hot`(`hot`) USING BTREE,
  INDEX `idx_recommend`(`recommend`) USING BTREE,
  INDEX `idx_living`(`living`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_livetime`(`livetime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_live_adv
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_live_adv`;
CREATE TABLE `ims_ewei_shop_live_adv`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `merchid` int(11) NOT NULL DEFAULT 0,
  `advname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `displayorder` int(11) NULL DEFAULT 0,
  `enabled` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_enabled`(`enabled`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_live_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_live_category`;
CREATE TABLE `ims_ewei_shop_live_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `displayorder` tinyint(3) UNSIGNED NULL DEFAULT 0,
  `enabled` tinyint(1) NULL DEFAULT 1,
  `advimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `advurl` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `isrecommand` tinyint(3) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE,
  INDEX `idx_enabled`(`enabled`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_live_coupon
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_live_coupon`;
CREATE TABLE `ims_ewei_shop_live_coupon`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `roomid` int(11) NOT NULL DEFAULT 0,
  `couponid` int(11) NOT NULL DEFAULT 0,
  `coupontotal` int(11) NOT NULL DEFAULT 0,
  `couponlimit` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_roomid`(`roomid`) USING BTREE,
  INDEX `idx_couponid`(`couponid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_ewei_shop_live_favorite
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_live_favorite`;
CREATE TABLE `ims_ewei_shop_live_favorite`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `roomid` int(11) NOT NULL DEFAULT 0,
  `openid` tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `deleted` tinyint(3) NOT NULL DEFAULT 0,
  `createtime` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_roomid`(`roomid`) USING BTREE,
  INDEX `idx_deleted`(`deleted`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_live_goods
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_live_goods`;
CREATE TABLE `ims_ewei_shop_live_goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `goodsid` int(11) NOT NULL DEFAULT 0,
  `liveid` int(11) NOT NULL DEFAULT 0,
  `liveprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `minliveprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `maxliveprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_live_goods_option
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_live_goods_option`;
CREATE TABLE `ims_ewei_shop_live_goods_option`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `goodsid` int(11) NOT NULL,
  `optionid` int(11) NOT NULL DEFAULT 0,
  `liveid` int(11) NOT NULL DEFAULT 0,
  `liveprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_live_setting
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_live_setting`;
CREATE TABLE `ims_ewei_shop_live_setting`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `ismember` tinyint(3) NOT NULL DEFAULT 0,
  `share_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `share_icon` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `share_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `share_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `livenoticetime` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_ismember`(`ismember`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_live_status
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_live_status`;
CREATE TABLE `ims_ewei_shop_live_status`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `roomid` int(11) NOT NULL DEFAULT 0,
  `starttime` int(11) NOT NULL DEFAULT 0,
  `endtime` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_live_view
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_live_view`;
CREATE TABLE `ims_ewei_shop_live_view`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `roomid` int(11) NOT NULL DEFAULT 0,
  `viewing` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_roomid`(`roomid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_lottery
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_lottery`;
CREATE TABLE `ims_ewei_shop_lottery`  (
  `lottery_id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `lottery_title` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lottery_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lottery_banner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lottery_cannot` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lottery_type` tinyint(1) NULL DEFAULT NULL,
  `is_delete` tinyint(1) NULL DEFAULT 0,
  `addtime` int(11) NULL DEFAULT NULL,
  `lottery_data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `is_goods` tinyint(1) NULL DEFAULT 0,
  `lottery_days` int(11) NULL DEFAULT 0,
  `task_type` tinyint(1) NULL DEFAULT 0,
  `task_data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `start_time` int(11) NULL DEFAULT NULL,
  `end_time` int(11) NULL DEFAULT NULL,
  `award_start` int(11) NULL DEFAULT 0,
  `award_end` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`lottery_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_lottery_default
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_lottery_default`;
CREATE TABLE `ims_ewei_shop_lottery_default`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `addtime` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_lottery_join
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_lottery_join`;
CREATE TABLE `ims_ewei_shop_lottery_join`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `join_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lottery_id` int(11) NULL DEFAULT NULL,
  `lottery_num` int(10) NULL DEFAULT 0,
  `lottery_tag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addtime` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_lottery_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_lottery_log`;
CREATE TABLE `ims_ewei_shop_lottery_log`  (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT NULL,
  `lottery_id` int(11) NULL DEFAULT 0,
  `join_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lottery_data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `is_reward` tinyint(1) NULL DEFAULT 0,
  `addtime` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_mc_merchant
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_mc_merchant`;
CREATE TABLE `ims_ewei_shop_mc_merchant`  (
  `id` int(11) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `merchant_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `salt` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `contact_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `contact_mobile` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `contact_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `type` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `createtime` int(11) NOT NULL,
  `validitytime` int(11) NOT NULL,
  `industry` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `remark` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_member
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member`;
CREATE TABLE `ims_ewei_shop_member`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `uid` int(11) NULL DEFAULT 0,
  `groupid` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `level` int(11) NULL DEFAULT 0,
  `agentid` int(11) NULL DEFAULT 0,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `realname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `pwd` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `weixin` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `commission` decimal(10, 2) NULL DEFAULT 0.00,
  `commission_pay` decimal(10, 2) NULL DEFAULT 0.00,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `createtime` int(10) NULL DEFAULT 0,
  `agenttime` int(10) NULL DEFAULT 0,
  `status` tinyint(1) NULL DEFAULT 0,
  `isagent` tinyint(1) NULL DEFAULT 0,
  `clickcount` int(11) NULL DEFAULT 0,
  `agentlevel` int(11) NULL DEFAULT 0,
  `noticeset` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `credit1` decimal(10, 2) NULL DEFAULT 0.00,
  `credit2` decimal(10, 2) NULL DEFAULT 0.00,
  `birthyear` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `birthmonth` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `birthday` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `gender` tinyint(3) NULL DEFAULT 0,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `childtime` int(11) NULL DEFAULT 0,
  `inviter` int(11) NULL DEFAULT 0,
  `agentnotupgrade` int(11) NULL DEFAULT 0,
  `agentselectgoods` tinyint(3) NULL DEFAULT 0,
  `agentblack` int(11) NULL DEFAULT 0,
  `fixagentid` tinyint(3) NULL DEFAULT 0,
  `diymemberid` int(11) NULL DEFAULT 0,
  `diymemberfields` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `diymemberdata` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `diymemberdataid` int(11) NULL DEFAULT 0,
  `diycommissionid` int(11) NULL DEFAULT 0,
  `diycommissionfields` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `diycommissiondata` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `diycommissiondataid` int(11) NULL DEFAULT 0,
  `isblack` int(11) NULL DEFAULT 0,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `commission_total` decimal(10, 2) NULL DEFAULT 0.00,
  `endtime2` int(11) NULL DEFAULT 0,
  `ispartner` tinyint(3) NULL DEFAULT 0,
  `partnertime` int(11) NULL DEFAULT 0,
  `partnerstatus` tinyint(3) NULL DEFAULT 0,
  `partnerblack` tinyint(3) NULL DEFAULT 0,
  `partnerlevel` int(11) NULL DEFAULT 0,
  `partnernotupgrade` tinyint(3) NULL DEFAULT 0,
  `diyglobonusid` int(11) NULL DEFAULT 0,
  `diyglobonusdata` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `diyglobonusfields` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `isaagent` tinyint(3) NULL DEFAULT 0,
  `aagentlevel` int(11) NULL DEFAULT 0,
  `aagenttime` int(11) NULL DEFAULT 0,
  `aagentstatus` tinyint(3) NULL DEFAULT 0,
  `aagentblack` tinyint(3) NULL DEFAULT 0,
  `aagentnotupgrade` tinyint(3) NULL DEFAULT 0,
  `aagenttype` tinyint(3) NULL DEFAULT 0,
  `aagentprovinces` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `aagentcitys` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `aagentareas` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `diyaagentid` int(11) NULL DEFAULT 0,
  `diyaagentdata` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `diyaagentfields` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `salt` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobileverify` tinyint(3) NULL DEFAULT 0,
  `mobileuser` tinyint(3) NULL DEFAULT 0,
  `carrier_mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `isauthor` tinyint(1) NULL DEFAULT 0,
  `authortime` int(11) NULL DEFAULT 0,
  `authorstatus` tinyint(1) NULL DEFAULT 0,
  `authorblack` tinyint(1) NULL DEFAULT 0,
  `authorlevel` int(11) NULL DEFAULT 0,
  `authornotupgrade` tinyint(1) NULL DEFAULT 0,
  `diyauthorid` int(11) NULL DEFAULT 0,
  `diyauthordata` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `diyauthorfields` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `authorid` int(11) NULL DEFAULT 0,
  `comefrom` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `openid_qq` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `openid_wx` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `diymaxcredit` tinyint(3) NULL DEFAULT 0,
  `maxcredit` int(11) NULL DEFAULT 0,
  `datavalue` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `openid_wa` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickname_wechat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `avatar_wechat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `updateaddress` tinyint(1) NOT NULL DEFAULT 0,
  `membercardid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `membercardcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `membershipnumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `membercardactive` tinyint(1) NULL DEFAULT 0,
  `idnumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wxcardupdatetime` int(11) NULL DEFAULT 0,
  `hasnewcoupon` tinyint(1) NULL DEFAULT 0,
  `isheads` tinyint(1) NOT NULL DEFAULT 0,
  `headsstatus` tinyint(1) NOT NULL DEFAULT 0,
  `headstime` int(11) NOT NULL DEFAULT 0,
  `headsid` int(11) NOT NULL DEFAULT 0,
  `diyheadsid` int(11) NOT NULL DEFAULT 0,
  `diyheadsdata` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `diyheadsfields` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `applyagenttime` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_shareid`(`agentid`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_agenttime`(`agenttime`) USING BTREE,
  INDEX `idx_isagent`(`isagent`) USING BTREE,
  INDEX `idx_uid`(`uid`) USING BTREE,
  INDEX `idx_groupid`(`groupid`(333)) USING BTREE,
  INDEX `idx_level`(`level`) USING BTREE,
  INDEX `idx_mobile`(`mobile`) USING BTREE,
  INDEX `idx_openid_wx`(`openid_wx`) USING BTREE,
  INDEX `idx_openid_wa`(`openid_wa`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2188 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_member_address
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_address`;
CREATE TABLE `ims_ewei_shop_member_address`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `realname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `province` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `city` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `area` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `address` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `isdefault` tinyint(1) NULL DEFAULT 0,
  `zipcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `deleted` tinyint(1) NULL DEFAULT 0,
  `street` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `datavalue` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `streetdatavalue` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `lng` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `lat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE,
  INDEX `idx_isdefault`(`isdefault`) USING BTREE,
  INDEX `idx_deleted`(`deleted`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 83 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_member_card
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_card`;
CREATE TABLE `ims_ewei_shop_member_card`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `card_style` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort_order` int(10) NULL DEFAULT 0,
  `shipping` tinyint(11) NULL DEFAULT NULL,
  `member_discount` tinyint(1) NULL DEFAULT NULL,
  `discount_rate` decimal(10, 1) NULL DEFAULT NULL,
  `discount` tinyint(1) NOT NULL DEFAULT 1,
  `is_card_points` tinyint(1) NULL DEFAULT NULL,
  `card_points` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_card_coupon` tinyint(1) NULL DEFAULT NULL,
  `card_coupon` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_month_points` tinyint(1) NULL DEFAULT NULL,
  `month_points` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_month_coupon` tinyint(1) NULL DEFAULT NULL,
  `month_coupon` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `validate` int(11) NOT NULL DEFAULT 1,
  `price` decimal(11, 2) NOT NULL DEFAULT 0.00,
  `stock` int(10) NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `kefu_tel` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` int(11) NOT NULL DEFAULT 0,
  `sale_count` int(11) NOT NULL DEFAULT 0,
  `del_time` int(11) NOT NULL DEFAULT 0,
  `isdelete` tinyint(11) NOT NULL DEFAULT 0,
  `update_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_member_card_buysend
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_card_buysend`;
CREATE TABLE `ims_ewei_shop_member_card_buysend`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `member_card_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `receive_time` int(11) NOT NULL DEFAULT 0,
  `create_time` int(11) NOT NULL DEFAULT 0,
  `price` decimal(11, 2) NOT NULL DEFAULT 0.00,
  `sendtype` tinyint(1) NOT NULL DEFAULT 1,
  `card_points` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `card_couponid` int(11) NOT NULL DEFAULT 0,
  `card_couponcount` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_member_card_history
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_card_history`;
CREATE TABLE `ims_ewei_shop_member_card_history`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `order_id` int(11) NOT NULL,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `member_card_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_time` int(11) NOT NULL DEFAULT 0,
  `receive_time` int(11) NOT NULL DEFAULT 0,
  `price` decimal(11, 2) NOT NULL DEFAULT 0.00,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `telephone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isdelete` int(11) NOT NULL DEFAULT 0,
  `del_time` int(11) NOT NULL DEFAULT 0,
  `pay_type` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_member_card_monthsend
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_card_monthsend`;
CREATE TABLE `ims_ewei_shop_member_card_monthsend`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `member_card_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `receive_time` int(11) NOT NULL DEFAULT 0,
  `create_time` int(11) NOT NULL DEFAULT 0,
  `price` decimal(11, 2) NOT NULL DEFAULT 0.00,
  `validate` int(11) NOT NULL DEFAULT 1,
  `sendtype` tinyint(1) NOT NULL DEFAULT 1,
  `card_points` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `card_couponid` int(11) NOT NULL DEFAULT 0,
  `card_couponcount` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_member_card_order
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_card_order`;
CREATE TABLE `ims_ewei_shop_member_card_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `member_id` int(11) NULL DEFAULT 0,
  `payment_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `telephone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `orderno` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `total` decimal(15, 2) NOT NULL DEFAULT 0.00,
  `status` int(11) NOT NULL DEFAULT 0,
  `createtime` int(11) NULL DEFAULT 0,
  `finishtime` int(11) NULL DEFAULT 0,
  `paytime` int(11) NULL DEFAULT 0,
  `member_card_id` int(11) NULL DEFAULT 0,
  `wxapp_prepay_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `transid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `paytype` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `apppay` tinyint(3) NOT NULL DEFAULT 0,
  `borrowopenid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isborrow` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_member_card_uselog
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_card_uselog`;
CREATE TABLE `ims_ewei_shop_member_card_uselog`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `order_id` int(11) NOT NULL,
  `member_card_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `shipping` tinyint(1) NULL DEFAULT 0,
  `discount_rate` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_price` decimal(11, 2) NOT NULL DEFAULT 0.00,
  `dec_price` decimal(11, 2) NOT NULL DEFAULT 0.00,
  `create_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_member_cart
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_cart`;
CREATE TABLE `ims_ewei_shop_member_cart`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `openid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `goodsid` int(11) NULL DEFAULT 0,
  `total` int(11) NULL DEFAULT 0,
  `marketprice` decimal(10, 2) NULL DEFAULT 0.00,
  `deleted` tinyint(1) NULL DEFAULT 0,
  `optionid` int(11) NULL DEFAULT 0,
  `createtime` int(11) NULL DEFAULT 0,
  `diyformdataid` int(11) NULL DEFAULT 0,
  `diyformdata` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `diyformfields` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `diyformid` int(11) NULL DEFAULT 0,
  `selected` tinyint(1) NULL DEFAULT 1,
  `selectedadd` tinyint(1) NULL DEFAULT 1,
  `merchid` int(11) NULL DEFAULT 0,
  `isnewstore` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_goodsid`(`goodsid`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE,
  INDEX `idx_deleted`(`deleted`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 63 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_member_credit_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_credit_record`;
CREATE TABLE `ims_ewei_shop_member_credit_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) UNSIGNED NOT NULL,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `uniacid` int(11) NOT NULL,
  `credittype` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `num` decimal(10, 2) NOT NULL,
  `operator` int(10) UNSIGNED NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `module` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `openid`(`openid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_member_favorite
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_favorite`;
CREATE TABLE `ims_ewei_shop_member_favorite`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `goodsid` int(10) NULL DEFAULT 0,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `deleted` tinyint(1) NULL DEFAULT 0,
  `createtime` int(11) NULL DEFAULT 0,
  `merchid` int(11) NULL DEFAULT 0,
  `type` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_goodsid`(`goodsid`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE,
  INDEX `idx_deleted`(`deleted`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_member_group
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_group`;
CREATE TABLE `ims_ewei_shop_member_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `groupname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_member_group_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_group_log`;
CREATE TABLE `ims_ewei_shop_member_group_log`  (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) NOT NULL DEFAULT 0,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT 0,
  `add_time` timestamp(0) NOT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`log_id`) USING BTREE,
  INDEX `group_id`(`group_id`) USING BTREE,
  INDEX `openid`(`openid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_member_history
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_history`;
CREATE TABLE `ims_ewei_shop_member_history`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `goodsid` int(10) NULL DEFAULT 0,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `deleted` tinyint(1) NULL DEFAULT 0,
  `createtime` int(11) NULL DEFAULT 0,
  `times` int(11) NULL DEFAULT 0,
  `merchid` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_goodsid`(`goodsid`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE,
  INDEX `idx_deleted`(`deleted`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2243 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_ewei_shop_member_history
-- ----------------------------
INSERT INTO `ims_ewei_shop_member_history` VALUES (2234, 1, 199, '', 0, 1572925118, 1, 0);
INSERT INTO `ims_ewei_shop_member_history` VALUES (2235, 1, 199, '', 0, 1572925133, 1, 0);
INSERT INTO `ims_ewei_shop_member_history` VALUES (2236, 1, 199, '', 0, 1572925136, 1, 0);
INSERT INTO `ims_ewei_shop_member_history` VALUES (2237, 1, 199, '', 0, 1572925139, 1, 0);
INSERT INTO `ims_ewei_shop_member_history` VALUES (2238, 1, 199, '', 0, 1572925143, 1, 0);
INSERT INTO `ims_ewei_shop_member_history` VALUES (2239, 1, 199, '', 0, 1572925146, 1, 0);
INSERT INTO `ims_ewei_shop_member_history` VALUES (2240, 1, 199, '', 0, 1572925161, 1, 0);
INSERT INTO `ims_ewei_shop_member_history` VALUES (2241, 1, 199, '', 0, 1572925787, 1, 0);
INSERT INTO `ims_ewei_shop_member_history` VALUES (2242, 1, 199, '', 0, 1573107658, 1, 0);

-- ----------------------------
-- Table structure for ims_ewei_shop_member_level
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_level`;
CREATE TABLE `ims_ewei_shop_member_level`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `level` int(11) NULL DEFAULT 0,
  `levelname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `ordermoney` decimal(10, 2) NULL DEFAULT 0.00,
  `ordercount` int(10) NULL DEFAULT 0,
  `discount` decimal(10, 2) NULL DEFAULT 0.00,
  `enabled` tinyint(3) NULL DEFAULT 0,
  `enabledadd` tinyint(1) NULL DEFAULT 0,
  `buygoods` tinyint(1) NOT NULL DEFAULT 0,
  `goodsids` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_member_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_log`;
CREATE TABLE `ims_ewei_shop_member_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `type` tinyint(3) NULL DEFAULT NULL,
  `logno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `createtime` int(11) NULL DEFAULT 0,
  `status` int(11) NULL DEFAULT 0,
  `money` decimal(10, 2) NULL DEFAULT 0.00,
  `rechargetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `gives` decimal(10, 2) NULL DEFAULT NULL,
  `couponid` int(11) NULL DEFAULT 0,
  `transid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `realmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `charge` decimal(10, 2) NULL DEFAULT 0.00,
  `deductionmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `isborrow` tinyint(3) NULL DEFAULT 0,
  `borrowopenid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `apppay` tinyint(3) NOT NULL DEFAULT 0,
  `alipay` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `bankname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `bankcard` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `realname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `applytype` tinyint(3) NOT NULL DEFAULT 0,
  `sendmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `senddata` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE,
  INDEX `idx_type`(`type`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 106 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_member_mergelog
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_mergelog`;
CREATE TABLE `ims_ewei_shop_member_mergelog`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `mergetime` int(11) NOT NULL DEFAULT 0,
  `openid_a` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `openid_b` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mid_a` int(11) NOT NULL,
  `mid_b` int(11) NOT NULL,
  `detail_a` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `detail_b` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `detail_c` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `fromuniacid` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_mid_a`(`mid_a`) USING BTREE,
  INDEX `idx_mid_b`(`mid_b`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_member_message_template
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_message_template`;
CREATE TABLE `ims_ewei_shop_member_message_template`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `template_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `first` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `firstcolor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remarkcolor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(11) NULL DEFAULT 0,
  `sendtimes` int(11) NULL DEFAULT 0,
  `sendcount` int(11) NULL DEFAULT 0,
  `typecode` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `messagetype` tinyint(1) NULL DEFAULT 0,
  `send_desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_member_message_template_default
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_message_template_default`;
CREATE TABLE `ims_ewei_shop_member_message_template_default`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typecode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uniacid` int(11) NULL DEFAULT NULL,
  `templateid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_member_message_template_type
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_message_template_type`;
CREATE TABLE `ims_ewei_shop_member_message_template_type`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `typecode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `templatecode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `templateid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `templatename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `showtotaladd` tinyint(1) NULL DEFAULT 0,
  `typegroup` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `groupname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_ewei_shop_member_message_template_type
-- ----------------------------
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (1, '订单付款通知', 'saler_pay', 'OPENTM405584202', 'A0Rjjz_IR1KxI6Xv8PkEqJwwwwzyjB6lE5NbuQZ9yrg', '订单付款通知', '{{first.DATA}}订单编号：{{keyword1.DATA}}商品名称：{{keyword2.DATA}}商品数量：{{keyword3.DATA}}支付金额：{{keyword4.DATA}}{{remark.DATA}}', 0, 'sys', '系统消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (2, '自提订单提交成功通知', 'carrier', 'OPENTM201594720', '5gWVryCFoWKnx0bnsWumsoI8WwbRFJt8w3BbnhLLlDA', '订单付款通知', '{{first.DATA}}自提码：{{keyword1.DATA}}商品详情：{{keyword2.DATA}}提货地址：{{keyword3.DATA}}提货时间：{{keyword4.DATA}}{{remark.DATA}}', 0, 'sys', '系统消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (3, '订单取消通知', 'cancel', 'OPENTM201764653', '', '订单关闭提醒', '{{first.DATA}}订单商品：{{keyword1.DATA}}订单编号：{{keyword2.DATA}}下单时间：{{keyword3.DATA}}订单金额：{{keyword4.DATA}}关闭时间：{{keyword5.DATA}}{{remark.DATA}}', 0, 'sys', '系统消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (4, '订单即将取消通知', 'willcancel', 'OPENTM201764653', '', '订单关闭提醒', '{{first.DATA}}订单商品：{{keyword1.DATA}}订单编号：{{keyword2.DATA}}下单时间：{{keyword3.DATA}}订单金额：{{keyword4.DATA}}关闭时间：{{keyword5.DATA}}{{remark.DATA}}', 0, 'sys', '系统消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (5, '订单支付成功通知', 'pay', 'OPENTM405584202', 'A0Rjjz_IR1KxI6Xv8PkEqJwwwwzyjB6lE5NbuQZ9yrg', '订单支付通知', '{{first.DATA}}订单编号：{{keyword1.DATA}}商品名称：{{keyword2.DATA}}商品数量：{{keyword3.DATA}}支付金额：{{keyword4.DATA}}{{remark.DATA}}', 0, 'sys', '系统消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (6, '订单发货通知', 'send', 'OPENTM401874827', 'r4dbzNDnIEqDUtgR_i618lsMmOAOhaOy-RFIxC1qvto', '订单发货通知', '{{first.DATA}}订单编号：{{keyword1.DATA}}快递公司：{{keyword2.DATA}}快递单号：{{keyword3.DATA}}{{remark.DATA}}', 0, 'sys', '系统消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (7, '自动发货通知(虚拟物品及卡密)', 'virtualsend', 'OPENTM207793687', '', '自动发货通知', '{{first.DATA}}商品名称：{{keyword1.DATA}}订单号：{{keyword2.DATA}}订单金额：{{keyword3.DATA}}卡密信息：{{keyword4.DATA}}{{remark.DATA}}', 0, 'sys', '系统消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (8, '订单状态更新(修改收货地址)(修改价格)', 'orderstatus', 'TM00017', 'qPILeRURs1MFlQobIqGxB_HpninfebyhItFbWARFbB4', '订单付款通知', '{{first.DATA}}订单编号:{{OrderSn.DATA}}订单状态:{{OrderStatus.DATA}}{{remark.DATA}}', 0, 'sys', '系统消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (9, '退款成功通知', 'refund1', 'TM00430', 'skDWhojoJ4_rt4urVUEtrCGHoJORW5Xabjg3Y0zpmQY', '退款成功通知', '{{first.DATA}}退款金额：{{orderProductPrice.DATA}}商品详情：{{orderProductName.DATA}}订单编号：{{orderName.DATA}}{{remark.DATA}}', 0, 'sys', '系统消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (10, '换货成功通知', 'refund3', 'OPENTM207574677', '', '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}业务状态：{{keyword2.DATA}}业务内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'sys', '系统消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (11, '退款申请驳回通知', 'refund2', 'OPENTM207574677', 'C6PJZDE8CeGpv3AmH80IQseCbuTlihYBKqAqk4EAgG4', '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}业务状态：{{keyword2.DATA}}业务内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'sys', '系统消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (12, '充值成功通知', 'recharge_ok', 'OPENTM207727673', 'xeXbYwsjxxXTQ5DjfoFc6uRzq36g1YIW20ByAO9ix_g', '充值成功提醒', '{{first.DATA}}充值金额：{{keyword1.DATA}}充值时间：{{keyword2.DATA}}账户余额：{{keyword3.DATA}}{{remark.DATA}}', 0, 'sys', '系统消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (13, '提现成功通知', 'withdraw_ok', 'OPENTM207422808', 'kN6uLXnCy_edHrRPEq8524h_1KVofLyycYbJ1e4DfCU', '提现通知', '{{first.DATA}}申请提现金额：{{keyword1.DATA}}取提现手续费：{{keyword2.DATA}}实际到账金额：{{keyword3.DATA}}提现渠道：{{keyword4.DATA}}{{remark.DATA}}', 0, 'sys', '系统消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (14, '会员升级通知(任务处理通知)', 'upgrade', 'OPENTM207574677', 'C6PJZDE8CeGpv3AmH80IQseCbuTlihYBKqAqk4EAgG4', '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}业务状态：{{keyword2.DATA}}业务内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'sys', '系统消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (15, '充值成功通知（后台管理员手动）', 'backrecharge_ok', 'OPENTM207727673', 'xeXbYwsjxxXTQ5DjfoFc6uRzq36g1YIW20ByAO9ix_g', '充值成功提醒', '{{first.DATA}}充值金额：{{keyword1.DATA}}充值时间：{{keyword2.DATA}}账户余额：{{keyword3.DATA}}{{remark.DATA}}', 0, 'sys', '系统消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (16, '积分变动提醒', 'backpoint_ok', 'OPENTM207509450', 'f9cg3CeRARjOXH53Bd5uSDaRlDVhVYRPT1tX2gYcHx4', '积分变动提醒', '{{first.DATA}}获得时间：{{keyword1.DATA}}获得积分：{{keyword2.DATA}}获得原因：{{keyword3.DATA}}当前积分：{{keyword4.DATA}}{{remark.DATA}}', 0, 'sys', '系统消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (17, '换货发货通知', 'refund4', 'OPENTM401874827', '', '订单发货通知', '{{first.DATA}}订单编号：{{keyword1.DATA}}快递公司：{{keyword2.DATA}}快递单号：{{keyword3.DATA}}{{remark.DATA}}', 0, 'sys', '系统消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (18, '砍价活动通知', 'bargain_message', 'OPENTM207574677', NULL, '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}业务状态：{{keyword2.DATA}}业务内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'bargain', '砍价消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (19, '拼团活动通知', 'groups', NULL, NULL, NULL, NULL, 0, 'groups', '拼团消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (20, '人人分销通知', 'commission', NULL, NULL, NULL, NULL, 0, 'commission', '分销消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (21, '商品付款通知', 'saler_goodpay', 'OPENTM207574677', '-TR9Wi6RCWu9uAVlN-jxDwSWdRLZGXdTcKjzyTCX7lI', '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}业务状态：{{keyword2.DATA}}业务内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'sys', '系统消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (22, '砍到底价通知', 'bargain_fprice', 'OPENTM207574677', '', '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}业务状态：{{keyword2.DATA}}业务内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'bargain', '砍价消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (23, '订单收货通知(卖家)', 'saler_finish', 'OPENTM207574677', '-TR9Wi6RCWu9uAVlN-jxDwSWdRLZGXdTcKjzyTCX7lI', '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}业务状态：{{keyword2.DATA}}业务内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'sys', '系统消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (24, '余额兑换成功通知', 'exchange_balance', 'OPENTM207727673', '', '充值成功提醒', '{{first.DATA}}充值金额：{{keyword1.DATA}}充值时间：{{keyword2.DATA}}账户余额：{{keyword3.DATA}}{{remark.DATA}}', 0, 'exchange', '兑换中心消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (25, '积分兑换成功通知', 'exchange_score', 'OPENTM207509450', '', '积分变动提醒', '{{first.DATA}}获得时间：{{keyword1.DATA}}获得积分：{{keyword2.DATA}}获得原因：{{keyword3.DATA}}当前积分：{{keyword4.DATA}}{{remark.DATA}}', 0, 'exchange', '兑换中心消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (26, '兑换中心余额充值通知', 'exchange_recharge', 'OPENTM207727673', '', '充值成功提醒', '{{first.DATA}}充值金额：{{keyword1.DATA}}充值时间：{{keyword2.DATA}}账户余额：{{keyword3.DATA}}{{remark.DATA}}', 0, 'exchange', '兑换中心消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (27, '游戏中心通知', 'lottery_get', 'OPENTM207574677', '', '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}业务状态：{{keyword2.DATA}}业务内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'lottery', '抽奖消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (35, '库存预警通知', 'saler_stockwarn', 'OPENTM207574677', '', '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}业务状态：{{keyword2.DATA}}业务内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'sys', '系统消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (36, '卖家核销商品核销通知', 'o2o_sverify', 'OPENTM409521536', '', '核销成功提醒', '{{first.DATA}}核销项目：{{keyword1.DATA}}核销时间：{{keyword2.DATA}}核销门店：{{keyword3.DATA}}{{remark.DATA}}', 0, 'o2o', 'O2O消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (37, '核销商品核销通知', 'o2o_bverify', 'OPENTM409521536', '', '核销成功提醒', '{{first.DATA}}核销项目：{{keyword1.DATA}}核销时间：{{keyword2.DATA}}核销门店：{{keyword3.DATA}}{{remark.DATA}}', 0, 'o2o', 'O2O消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (38, '卖家商品预约通知', 'o2o_snorder', 'OPENTM202447657', '', '预约成功提醒', '{{first.DATA}}预约项目：{{keyword1.DATA}}预约时间：{{keyword2.DATA}}{{remark.DATA}}', 0, 'o2o', 'O2O消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (39, '商品预约成功通知', 'o2o_bnorder', 'OPENTM202447657', '', '预约成功提醒', '{{first.DATA}}预约项目：{{keyword1.DATA}}预约时间：{{keyword2.DATA}}{{remark.DATA}}', 0, 'o2o', 'O2O消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (42, '商品下单通知', 'saler_goodsubmit', 'OPENTM207574677', '', '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}业务状态：{{keyword2.DATA}}业务内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'sys', '系统消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (50, '维权订单通知', 'saler_refund', 'OPENTM207574677', '', '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}业务状态：{{keyword2.DATA}}业务内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'sys', '系统消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (43, '任务接取通知', 'task_pick', 'OPENTM207574677', NULL, '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}业务状态：{{keyword2.DATA}}业务内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'task', '任务中心消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (44, '任务进度通知', 'task_progress', 'OPENTM207574677', NULL, '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}业务状态：{{keyword2.DATA}}业务内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'task', '任务中心消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (45, '任务完成通知', 'task_finish', 'OPENTM207574677', NULL, '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}业务状态：{{keyword2.DATA}}业务内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'task', '任务中心消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (46, '任务海报接取通知', 'task_poster_pick', 'OPENTM207574677', NULL, '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}业务状态：{{keyword2.DATA}}业务内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'task', '任务中心消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (47, '任务海报进度通知', 'task_poster_progress', 'OPENTM207574677', NULL, '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}业务状态：{{keyword2.DATA}}业务内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'task', '任务中心消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (48, '任务海报完成通知', 'task_poster_finish', 'OPENTM207574677', NULL, '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}业务状态：{{keyword2.DATA}}业务内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'task', '任务中心消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (49, '任务海报扫描通知', 'task_poster_scan', 'OPENTM207574677', NULL, '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}业务状态：{{keyword2.DATA}}业务内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'task', '任务中心消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (52, '成为分销商通知', 'commission_become', 'OPENTM207574677', '', '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}业务状态：{{keyword2.DATA}}业务内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'commission', '分销消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (53, '新增下线通知', 'commission_agent_new', 'OPENTM207574677', '', '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}业务状态：{{keyword2.DATA}}业务内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'commission', '分销消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (54, '下级付款通知', 'commission_order_pay', 'OPENTM207574677', '', '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}业务状态：{{keyword2.DATA}}业务内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'commission', '分销消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (55, '下级确认收货通知', 'commission_order_finish', 'OPENTM207574677', '', '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}业务状态：{{keyword2.DATA}}业务内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'commission', '分销消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (56, '提现申请提交通知', 'commission_apply', 'OPENTM207574677', '', '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}业务状态：{{keyword2.DATA}}业务内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'commission', '分销消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (57, '提现申请完成审核通知', 'commission_check', 'OPENTM207574677', '', '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}业务状态：{{keyword2.DATA}}业务内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'commission', '分销消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (58, '佣金打款通知', 'commission_pay', 'OPENTM207574677', '', '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}业务状态：{{keyword2.DATA}}业务内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'commission', '分销消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (59, '分销商等级升级通知', 'commission_upgrade', 'OPENTM207574677', '', '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}业务状态：{{keyword2.DATA}}业务内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'commission', '分销消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (60, '成为股东通知', 'globonus_become', 'OPENTM207574677', '', '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}业务状态：{{keyword2.DATA}}业务内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'globonus', '股东消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (61, '股东等级升级通知', 'globonus_upgrade', 'OPENTM207574677', '', '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}业务状态：{{keyword2.DATA}}业务内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'globonus', '股东消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (62, '分红发放通知', 'globonus_pay', 'OPENTM207574677', '', '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}业务状态：{{keyword2.DATA}}业务内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'globonus', '股东消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (63, '奖励发放通知', 'article', 'OPENTM207574677', '', '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}业务状态：{{keyword2.DATA}}业务内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'article', '文章营销消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (64, '成为区域代理通知', 'abonus_become', 'OPENTM207574677', '', '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}业务状态：{{keyword2.DATA}}业务内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'abonus', '区域代理消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (65, '省级代理等级升级通知', 'abonus_upgrade1', 'OPENTM207574677', '', '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}业务状态：{{keyword2.DATA}}业务内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'abonus', '区域代理消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (66, '市级代理等级升级通知', 'abonus_upgrade2', 'OPENTM207574677', '', '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}业务状态：{{keyword2.DATA}}业务内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'abonus', '区域代理消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (67, '区级代理等级升级通知', 'abonus_upgrade3', 'OPENTM207574677', '', '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}业务状态：{{keyword2.DATA}}业务内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'abonus', '区域代理消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (68, '区域代理分红发放通知', 'abonus_pay', 'OPENTM207574677', '', '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}业务状态：{{keyword2.DATA}}业务内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'abonus', '区域代理消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (69, '入驻申请通知', 'merch_apply', 'OPENTM207574677', '', '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}业务状态：{{keyword2.DATA}}业务内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'merch', '商家通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (70, '提现申请提交通知', 'merch_applymoney', 'OPENTM207574677', '', '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}业务状态：{{keyword2.DATA}}业务内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'merch', '商家通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (71, '社区会员评论通知', 'reply', 'OPENTM207574677', '', '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}业务状态：{{keyword2.DATA}}业务内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'sns', '人人社区消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (51, '社区会员升级通知', 'sns', 'OPENTM207574677', '', '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}业务状态：{{keyword2.DATA}}业务内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'sns', '人人社区消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (74, '周期购定时发货通知', 'cycelbuy_timing', 'OPENTM207574677', '', '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}业务状态：{{keyword2.DATA}}业务内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'cycelbuy', '周期购消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (75, '修改收货时间买家通知', 'cycelbuy_buyer_date', 'OPENTM207574677', '', '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}业务状态：{{keyword2.DATA}}业务内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'cycelbuy', '周期购消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (76, '修改地址买家通知', 'cycelbuy_buyer_address', 'OPENTM207574677', '', '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}业务状态：{{keyword2.DATA}}业务内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'cycelbuy', '周期购消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (73, '修改收货时间卖家通知', 'cycelbuy_seller_date', 'OPENTM207574677', '', '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}业务状态：{{keyword2.DATA}}业务内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'cycelbuy', '周期购消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (72, '修改地址卖家通知', 'cycelbuy_seller_address', 'OPENTM207574677', '', '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}业务状态：{{keyword2.DATA}}业务内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'cycelbuy', '周期购消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (77, '分销提现申请提醒', 'commission_applymoney', 'OPENTM207574677', NULL, '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}业务状态：{{keyword2.DATA}}业务内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'commission', '分销消息通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (80, '成为团长通知', 'dividend_become', 'OPENTM207574677', '', '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}业务状态：{{keyword2.DATA}}业务内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'dividend', '团队分红通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (81, '成为团长通知(卖家)', 'dividend_become_saler', 'OPENTM207574677', '', '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}业务状态：{{keyword2.DATA}}业务内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'dividend', '团队分红通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (82, '团员成为团长通知', 'dividend_downline_become', 'OPENTM207574677', '', '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}业务状态：{{keyword2.DATA}}业务内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'dividend', '团队分红通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (83, '团长提现通知', 'dividend_apply', 'OPENTM207574677', '', '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}业务状态：{{keyword2.DATA}}业务内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'dividend', '团队分红通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (84, '提现审核完成通知', 'dividend_check', 'OPENTM207574677', '', '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}业务状态：{{keyword2.DATA}}业务内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'dividend', '团队分红通知');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (85, '好友瓜分券活动发起通知', 'friendcoupon_launch', 'OPENTM415477060', '', '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}处理状态：{{keyword2.DATA}}处理内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'friendcoupon', '好友瓜分券');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (86, '好友瓜分券活动完成通知', 'friendcoupon_complete', 'OPENTM415477060', ' ', '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}处理状态：{{keyword2.DATA}}处理内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'friendcoupon', '好友瓜分券');
INSERT INTO `ims_ewei_shop_member_message_template_type` VALUES (87, '好友瓜分券活动失败通知', 'friendcoupon_failed', 'OPENTM415477060', ' ', '业务处理通知', '{{first.DATA}}业务类型：{{keyword1.DATA}}处理状态：{{keyword2.DATA}}处理内容：{{keyword3.DATA}}{{remark.DATA}}', 0, 'friendcoupon', '好友瓜分券');

-- ----------------------------
-- Table structure for ims_ewei_shop_member_printer
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_printer`;
CREATE TABLE `ims_ewei_shop_member_printer`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `type` tinyint(3) NULL DEFAULT 0,
  `print_data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `createtime` int(11) NULL DEFAULT 0,
  `merchid` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE,
  INDEX `idx_merchid`(`merchid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_member_printer_template
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_printer_template`;
CREATE TABLE `ims_ewei_shop_member_printer_template`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `type` tinyint(3) NULL DEFAULT 0,
  `print_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `print_style` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `print_data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `code` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `qrcode` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `createtime` int(11) NULL DEFAULT 0,
  `merchid` int(11) NULL DEFAULT 0,
  `goodssn` tinyint(1) NOT NULL DEFAULT 0,
  `productsn` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE,
  INDEX `idx_merchid`(`merchid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_member_rank
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_rank`;
CREATE TABLE `ims_ewei_shop_member_rank`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `num` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_ewei_shop_member_tmp
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_tmp`;
CREATE TABLE `ims_ewei_shop_member_tmp`  (
  `uniacid` int(11) NULL DEFAULT 0,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ''
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ims_ewei_shop_member_wxapp_message_template_default
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_wxapp_message_template_default`;
CREATE TABLE `ims_ewei_shop_member_wxapp_message_template_default`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `typecode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `templateid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `datas` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_member_wxapp_message_template_type
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_member_wxapp_message_template_type`;
CREATE TABLE `ims_ewei_shop_member_wxapp_message_template_type`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `typecode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `templatecode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `templatename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `keyword_id_list` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `typegroup` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `groupname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_id`(`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_ewei_shop_member_wxapp_message_template_type
-- ----------------------------
INSERT INTO `ims_ewei_shop_member_wxapp_message_template_type` VALUES (1, '好友瓜分券活动完成通知', 'friendcoupon_complete', 'AT0280', '任务完成通知', '8,15,11', 'friendcoupon', '好友瓜分券');

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_account
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_account`;
CREATE TABLE `ims_ewei_shop_merch_account`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `merchid` int(11) NULL DEFAULT 0,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `status` tinyint(3) NULL DEFAULT 0,
  `perms` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `isfounder` tinyint(3) NULL DEFAULT 0,
  `lastip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `lastvisit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `roleid` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_merchid`(`merchid`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 95 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_adv
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_adv`;
CREATE TABLE `ims_ewei_shop_merch_adv`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `advname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `displayorder` int(11) NULL DEFAULT NULL,
  `enabled` int(11) NULL DEFAULT NULL,
  `merchid` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_merchid`(`merchid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_banner
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_banner`;
CREATE TABLE `ims_ewei_shop_merch_banner`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `bannername` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `displayorder` int(11) NULL DEFAULT 0,
  `enabled` int(11) NULL DEFAULT 0,
  `merchid` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_enabled`(`enabled`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE,
  INDEX `idx_merchid`(`merchid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_bill
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_bill`;
CREATE TABLE `ims_ewei_shop_merch_bill`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `applyno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `merchid` int(11) NOT NULL DEFAULT 0,
  `orderids` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `realprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `realpricerate` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `finalprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `payrateprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `payrate` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `money` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `applytime` int(11) NOT NULL DEFAULT 0,
  `checktime` int(11) NOT NULL DEFAULT 0,
  `paytime` int(11) NOT NULL DEFAULT 0,
  `invalidtime` int(11) NOT NULL DEFAULT 0,
  `refusetime` int(11) NOT NULL DEFAULT 0,
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `ordernum` int(11) NOT NULL DEFAULT 0,
  `orderprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `price` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `passrealprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `passrealpricerate` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `passorderids` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `passordernum` int(11) NOT NULL DEFAULT 0,
  `passorderprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `alipay` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `bankname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `bankcard` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `applyrealname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `applytype` tinyint(3) NOT NULL DEFAULT 0,
  `handpay` tinyint(3) NOT NULL DEFAULT 0,
  `creditstatus` tinyint(3) NOT NULL DEFAULT 0,
  `creditrate` int(10) NOT NULL DEFAULT 1,
  `creditnum` int(10) NOT NULL DEFAULT 0,
  `creditmoney` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `passcreditnum` int(10) NOT NULL DEFAULT 0,
  `passcreditmoney` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `isbillcredit` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_merchid`(`merchid`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_bill_select
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_bill_select`;
CREATE TABLE `ims_ewei_shop_merch_bill_select`  (
  `bill_id` int(11) NOT NULL DEFAULT 0,
  `order_id` int(11) NOT NULL DEFAULT 0,
  UNIQUE INDEX `bid_oid`(`bill_id`, `order_id`) USING BTREE,
  INDEX `bid`(`bill_id`) USING BTREE,
  INDEX `oid`(`order_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_billo
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_billo`;
CREATE TABLE `ims_ewei_shop_merch_billo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `billid` int(11) NOT NULL DEFAULT 0,
  `orderid` int(11) NOT NULL DEFAULT 0,
  `ordermoney` decimal(10, 2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 54 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_category`;
CREATE TABLE `ims_ewei_shop_merch_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `catename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `createtime` int(11) NULL DEFAULT 0,
  `status` tinyint(1) NULL DEFAULT 0,
  `displayorder` int(11) NULL DEFAULT 0,
  `thumb` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `isrecommand` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_category_swipe
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_category_swipe`;
CREATE TABLE `ims_ewei_shop_merch_category_swipe`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `createtime` int(11) NULL DEFAULT 0,
  `status` tinyint(1) NULL DEFAULT 0,
  `displayorder` int(11) NULL DEFAULT 0,
  `thumb` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_clearing
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_clearing`;
CREATE TABLE `ims_ewei_shop_merch_clearing`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `merchid` int(11) NOT NULL DEFAULT 0,
  `clearno` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `goodsprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `dispatchprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `deductprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `deductcredit2` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `discountprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `deductenough` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `merchdeductenough` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `isdiscountprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `price` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `starttime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `realprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `realpricerate` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `finalprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `remark` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `paytime` int(11) NOT NULL DEFAULT 0,
  `payrate` decimal(10, 2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `merchid`(`merchid`) USING BTREE,
  INDEX `starttime`(`starttime`) USING BTREE,
  INDEX `endtime`(`endtime`) USING BTREE,
  INDEX `status`(`status`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_commission_orderprice
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_commission_orderprice`;
CREATE TABLE `ims_ewei_shop_merch_commission_orderprice`  (
  `order_id` int(11) UNSIGNED NOT NULL,
  `commission_price` decimal(10, 2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_group
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_group`;
CREATE TABLE `ims_ewei_shop_merch_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `groupname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `createtime` int(11) NULL DEFAULT 0,
  `status` tinyint(3) NULL DEFAULT 0,
  `isdefault` tinyint(1) NULL DEFAULT 0,
  `goodschecked` tinyint(1) NULL DEFAULT 0,
  `commissionchecked` tinyint(1) NULL DEFAULT 0,
  `changepricechecked` tinyint(1) NULL DEFAULT 0,
  `finishchecked` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_nav
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_nav`;
CREATE TABLE `ims_ewei_shop_merch_nav`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `navname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `displayorder` int(11) NULL DEFAULT 0,
  `status` tinyint(3) NULL DEFAULT 0,
  `merchid` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_merchid`(`merchid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_notice
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_notice`;
CREATE TABLE `ims_ewei_shop_merch_notice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `displayorder` int(11) NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `detail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `status` tinyint(3) NULL DEFAULT 0,
  `createtime` int(11) NULL DEFAULT NULL,
  `merchid` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_merchid`(`merchid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_perm_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_perm_log`;
CREATE TABLE `ims_ewei_shop_merch_perm_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NULL DEFAULT 0,
  `uniacid` int(11) NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `op` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `createtime` int(11) NULL DEFAULT 0,
  `merchid` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_merchid`(`merchid`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 489 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_perm_role
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_perm_role`;
CREATE TABLE `ims_ewei_shop_merch_perm_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `merchid` int(11) NULL DEFAULT 0,
  `rolename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `status` tinyint(3) NULL DEFAULT 0,
  `perms` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `deleted` tinyint(3) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_deleted`(`deleted`) USING BTREE,
  INDEX `merchid`(`merchid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_reg
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_reg`;
CREATE TABLE `ims_ewei_shop_merch_reg`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `merchname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `salecate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `desc` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `status` tinyint(3) NULL DEFAULT 0,
  `diyformdata` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `diyformfields` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `applytime` int(11) NULL DEFAULT 0,
  `reason` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `uname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `upass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 112 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_saler
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_saler`;
CREATE TABLE `ims_ewei_shop_merch_saler`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storeid` int(11) NULL DEFAULT 0,
  `uniacid` int(11) NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `status` tinyint(3) NULL DEFAULT 0,
  `salername` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `merchid` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_storeid`(`storeid`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_merchid`(`merchid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_store
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_store`;
CREATE TABLE `ims_ewei_shop_merch_store`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `storename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `lat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `lng` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `status` tinyint(3) NULL DEFAULT 0,
  `type` tinyint(1) NULL DEFAULT 0,
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `fetchtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `saletime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `displayorder` int(11) NULL DEFAULT 0,
  `commission_total` decimal(10, 2) NULL DEFAULT NULL,
  `merchid` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_merchid`(`merchid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_merch_user
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_merch_user`;
CREATE TABLE `ims_ewei_shop_merch_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `regid` int(11) NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `groupid` int(11) NULL DEFAULT 0,
  `merchno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `merchname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `salecate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `desc` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `status` tinyint(3) NULL DEFAULT 0,
  `accounttime` int(11) NULL DEFAULT 0,
  `diyformdata` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `diyformfields` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `applytime` int(11) NULL DEFAULT 0,
  `accounttotal` int(11) NULL DEFAULT 0,
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `jointime` int(11) NULL DEFAULT 0,
  `accountid` int(11) NULL DEFAULT 0,
  `sets` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `payopenid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `payrate` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `isrecommand` tinyint(1) NULL DEFAULT 0,
  `cateid` int(11) NULL DEFAULT 0,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `lat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `lng` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `pluginset` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `upass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `maxgoods` int(11) NOT NULL DEFAULT 0,
  `iscredit` tinyint(3) NOT NULL DEFAULT 1,
  `creditrate` int(10) NOT NULL DEFAULT 1,
  `iscreditmoney` int(3) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_groupid`(`groupid`) USING BTREE,
  INDEX `idx_regid`(`regid`) USING BTREE,
  INDEX `idx_cateid`(`cateid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 97 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_multi_shop
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_multi_shop`;
CREATE TABLE `ims_ewei_shop_multi_shop`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `uid` int(11) NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `company` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `sales` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `starttime` int(11) NULL DEFAULT 0,
  `endtime` int(11) NULL DEFAULT 0,
  `applytime` int(11) NULL DEFAULT 0,
  `jointime` int(11) NULL DEFAULT 0,
  `status` tinyint(3) NULL DEFAULT 0,
  `refusecontent` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_nav
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_nav`;
CREATE TABLE `ims_ewei_shop_nav`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `navname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `displayorder` int(11) NULL DEFAULT 0,
  `status` tinyint(3) NULL DEFAULT 0,
  `iswxapp` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_newstore_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_newstore_category`;
CREATE TABLE `ims_ewei_shop_newstore_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uniacid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_notice
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_notice`;
CREATE TABLE `ims_ewei_shop_notice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `displayorder` int(11) NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `detail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `status` tinyint(3) NULL DEFAULT 0,
  `createtime` int(11) NULL DEFAULT NULL,
  `shopid` int(11) NULL DEFAULT 0,
  `iswxapp` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_open_plugin
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_open_plugin`;
CREATE TABLE `ims_ewei_shop_open_plugin`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `plugin` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `expirtime` int(11) NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `domain` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_order
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_order`;
CREATE TABLE `ims_ewei_shop_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `agentid` int(11) NULL DEFAULT 0,
  `ordersn` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `price` decimal(10, 2) NULL DEFAULT 0.00,
  `goodsprice` decimal(10, 2) NULL DEFAULT 0.00,
  `discountprice` decimal(10, 2) NULL DEFAULT 0.00,
  `status` tinyint(3) NULL DEFAULT 0,
  `paytype` tinyint(1) NULL DEFAULT 0,
  `transid` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `remark` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `addressid` int(11) NULL DEFAULT 0,
  `dispatchprice` decimal(10, 2) NULL DEFAULT 0.00,
  `dispatchid` int(10) NULL DEFAULT 0,
  `createtime` int(10) NULL DEFAULT NULL,
  `dispatchtype` tinyint(3) NULL DEFAULT 0,
  `carrier` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `refundid` int(11) NULL DEFAULT 0,
  `iscomment` tinyint(3) NULL DEFAULT 0,
  `creditadd` tinyint(3) NULL DEFAULT 0,
  `deleted` tinyint(3) NULL DEFAULT 0,
  `userdeleted` tinyint(3) NULL DEFAULT 0,
  `finishtime` int(11) NULL DEFAULT 0,
  `paytime` int(11) NULL DEFAULT 0,
  `expresscom` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `expresssn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `express` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `sendtime` int(11) NULL DEFAULT 0,
  `fetchtime` int(11) NULL DEFAULT 0,
  `cash` tinyint(3) NULL DEFAULT 0,
  `canceltime` int(11) NULL DEFAULT NULL,
  `cancelpaytime` int(11) NULL DEFAULT 0,
  `refundtime` int(11) NULL DEFAULT 0,
  `isverify` tinyint(3) NULL DEFAULT 0,
  `verified` tinyint(3) NULL DEFAULT 0,
  `verifyopenid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `verifycode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `verifytime` int(11) NULL DEFAULT 0,
  `verifystoreid` int(11) NULL DEFAULT 0,
  `deductprice` decimal(10, 2) NULL DEFAULT 0.00,
  `deductcredit` int(10) NULL DEFAULT 0,
  `deductcredit2` decimal(10, 2) NULL DEFAULT 0.00,
  `deductenough` decimal(10, 2) NULL DEFAULT 0.00,
  `virtual` int(11) NULL DEFAULT 0,
  `virtual_info` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `virtual_str` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `sysdeleted` tinyint(3) NULL DEFAULT 0,
  `ordersn2` int(11) NULL DEFAULT 0,
  `changeprice` decimal(10, 2) NULL DEFAULT 0.00,
  `changedispatchprice` decimal(10, 2) NULL DEFAULT 0.00,
  `oldprice` decimal(10, 2) NULL DEFAULT 0.00,
  `olddispatchprice` decimal(10, 2) NULL DEFAULT 0.00,
  `isvirtual` tinyint(3) NULL DEFAULT 0,
  `couponid` int(11) NULL DEFAULT 0,
  `couponprice` decimal(10, 2) NULL DEFAULT 0.00,
  `diyformdata` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `diyformfields` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `diyformid` int(11) NULL DEFAULT 0,
  `storeid` int(11) NULL DEFAULT 0,
  `printstate` tinyint(1) NULL DEFAULT 0,
  `printstate2` tinyint(1) NULL DEFAULT 0,
  `address_send` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `refundstate` tinyint(3) NULL DEFAULT 0,
  `closereason` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `remarksaler` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `remarkclose` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `remarksend` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ismr` int(1) NOT NULL DEFAULT 0,
  `isdiscountprice` decimal(10, 2) NULL DEFAULT 0.00,
  `isvirtualsend` tinyint(1) NULL DEFAULT 0,
  `virtualsend_info` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `verifyinfo` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `verifytype` tinyint(1) NULL DEFAULT 0,
  `verifycodes` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `invoicename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `merchid` int(11) NULL DEFAULT 0,
  `ismerch` tinyint(1) NULL DEFAULT 0,
  `parentid` int(11) NULL DEFAULT 0,
  `isparent` tinyint(1) NULL DEFAULT 0,
  `grprice` decimal(10, 2) NULL DEFAULT 0.00,
  `merchshow` tinyint(1) NULL DEFAULT 0,
  `merchdeductenough` decimal(10, 2) NULL DEFAULT 0.00,
  `couponmerchid` int(11) NULL DEFAULT 0,
  `isglobonus` tinyint(3) NULL DEFAULT 0,
  `merchapply` tinyint(1) NULL DEFAULT 0,
  `isabonus` tinyint(3) NULL DEFAULT 0,
  `isborrow` tinyint(3) NULL DEFAULT 0,
  `borrowopenid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `merchisdiscountprice` decimal(10, 2) NULL DEFAULT 0.00,
  `apppay` tinyint(3) NOT NULL DEFAULT 0,
  `coupongoodprice` decimal(10, 2) NULL DEFAULT 1.00,
  `buyagainprice` decimal(10, 2) NULL DEFAULT 0.00,
  `authorid` int(11) NULL DEFAULT 0,
  `isauthor` tinyint(1) NULL DEFAULT 0,
  `ispackage` tinyint(3) NULL DEFAULT 0,
  `packageid` int(11) NULL DEFAULT 0,
  `taskdiscountprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `seckilldiscountprice` decimal(10, 2) NULL DEFAULT 0.00,
  `verifyendtime` int(11) NOT NULL DEFAULT 0,
  `willcancelmessage` tinyint(1) NULL DEFAULT 0,
  `sendtype` tinyint(3) NOT NULL DEFAULT 0,
  `lotterydiscountprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `contype` tinyint(1) NULL DEFAULT 0,
  `wxid` int(11) NULL DEFAULT 0,
  `wxcardid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `wxcode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `dispatchkey` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `quickid` int(11) NOT NULL DEFAULT 0,
  `istrade` tinyint(3) NOT NULL DEFAULT 0,
  `isnewstore` tinyint(3) NOT NULL DEFAULT 0,
  `liveid` int(11) NOT NULL,
  `ordersn_trade` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tradestatus` tinyint(1) NULL DEFAULT 0,
  `tradepaytype` tinyint(1) NOT NULL,
  `tradepaytime` int(11) NULL DEFAULT 0,
  `dowpayment` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `betweenprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `isshare` int(11) NOT NULL DEFAULT 0,
  `officcode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `wxapp_prepay_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cashtime` int(11) NULL DEFAULT 0,
  `random_code` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `print_template` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `city_express_state` tinyint(1) NOT NULL DEFAULT 0,
  `ces` int(1) NULL DEFAULT NULL,
  `is_cashier` tinyint(3) NOT NULL DEFAULT 0,
  `commissionmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `iscycelbuy` tinyint(3) NULL DEFAULT 0,
  `cycelbuy_predict_time` int(11) NULL DEFAULT NULL,
  `cycelbuy_periodic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `invoice_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `headsid` int(11) NOT NULL DEFAULT 0,
  `dividend` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `dividend_applytime` int(11) NOT NULL DEFAULT 0,
  `dividend_checktime` int(11) NOT NULL DEFAULT 0,
  `dividend_paytime` int(11) NOT NULL DEFAULT 0,
  `dividend_invalidtime` int(11) NOT NULL DEFAULT 0,
  `dividend_deletetime` int(11) NOT NULL DEFAULT 0,
  `dividend_status` tinyint(3) NOT NULL DEFAULT 0,
  `dividend_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `iswxappcreate` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE,
  INDEX `idx_shareid`(`agentid`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE,
  INDEX `idx_refundid`(`refundid`) USING BTREE,
  INDEX `idx_paytime`(`paytime`) USING BTREE,
  INDEX `idx_finishtime`(`finishtime`) USING BTREE,
  INDEX `idx_merchid`(`merchid`) USING BTREE,
  INDEX `idx_ordersn`(`ordersn`) USING BTREE,
  INDEX `parentid`(`parentid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 157 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_order_buysend
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_order_buysend`;
CREATE TABLE `ims_ewei_shop_order_buysend`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `orderid` int(11) NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `credit` float(10, 2) NULL DEFAULT 0.00,
  `money` decimal(10, 2) NULL DEFAULT 0.00,
  `createtime` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_orderid`(`orderid`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_order_comment
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_order_comment`;
CREATE TABLE `ims_ewei_shop_order_comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `orderid` int(11) NULL DEFAULT 0,
  `goodsid` int(11) NULL DEFAULT 0,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `headimgurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `level` tinyint(3) NULL DEFAULT 0,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `images` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `createtime` int(11) NULL DEFAULT 0,
  `deleted` tinyint(3) NULL DEFAULT 0,
  `append_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `append_images` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `reply_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `reply_images` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `append_reply_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `append_reply_images` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `istop` tinyint(3) NULL DEFAULT 0,
  `checked` tinyint(3) NOT NULL DEFAULT 0,
  `replychecked` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_goodsid`(`goodsid`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE,
  INDEX `idx_orderid`(`orderid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_order_goods
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_order_goods`;
CREATE TABLE `ims_ewei_shop_order_goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `orderid` int(11) NULL DEFAULT 0,
  `goodsid` int(11) NULL DEFAULT 0,
  `price` decimal(10, 2) NULL DEFAULT 0.00,
  `total` int(11) NULL DEFAULT 1,
  `optionid` int(10) NULL DEFAULT 0,
  `createtime` int(11) NULL DEFAULT 0,
  `optionname` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `commission1` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `applytime1` int(11) NULL DEFAULT 0,
  `checktime1` int(10) NULL DEFAULT 0,
  `paytime1` int(11) NULL DEFAULT 0,
  `invalidtime1` int(11) NULL DEFAULT 0,
  `deletetime1` int(11) NULL DEFAULT 0,
  `status1` tinyint(3) NULL DEFAULT 0,
  `content1` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `commission2` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `applytime2` int(11) NULL DEFAULT 0,
  `checktime2` int(10) NULL DEFAULT 0,
  `paytime2` int(11) NULL DEFAULT 0,
  `invalidtime2` int(11) NULL DEFAULT 0,
  `deletetime2` int(11) NULL DEFAULT 0,
  `status2` tinyint(3) NULL DEFAULT 0,
  `content2` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `commission3` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `applytime3` int(11) NULL DEFAULT 0,
  `checktime3` int(10) NULL DEFAULT 0,
  `paytime3` int(11) NULL DEFAULT 0,
  `invalidtime3` int(11) NULL DEFAULT 0,
  `deletetime3` int(11) NULL DEFAULT 0,
  `status3` tinyint(3) NULL DEFAULT 0,
  `content3` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `realprice` decimal(10, 2) NULL DEFAULT 0.00,
  `goodssn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `productsn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `nocommission` tinyint(3) NULL DEFAULT 0,
  `changeprice` decimal(10, 2) NULL DEFAULT 0.00,
  `oldprice` decimal(10, 2) NULL DEFAULT 0.00,
  `commissions` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `diyformid` int(11) NULL DEFAULT 0,
  `diyformdataid` int(11) NULL DEFAULT 0,
  `diyformdata` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `diyformfields` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `printstate` int(11) NOT NULL DEFAULT 0,
  `printstate2` int(11) NOT NULL DEFAULT 0,
  `rstate` tinyint(3) NULL DEFAULT 0,
  `refundtime` int(11) NULL DEFAULT 0,
  `merchid` int(11) NULL DEFAULT 0,
  `parentorderid` int(11) NULL DEFAULT 0,
  `merchsale` tinyint(3) NOT NULL DEFAULT 0,
  `isdiscountprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `canbuyagain` tinyint(1) NULL DEFAULT 0,
  `seckill` tinyint(3) NULL DEFAULT 0,
  `seckill_taskid` int(11) NULL DEFAULT 0,
  `seckill_roomid` int(11) NULL DEFAULT 0,
  `seckill_timeid` int(11) NULL DEFAULT 0,
  `is_make` tinyint(1) NULL DEFAULT 0,
  `sendtype` tinyint(3) NOT NULL DEFAULT 0,
  `expresscom` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expresssn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `express` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sendtime` int(11) NOT NULL,
  `finishtime` int(11) NOT NULL,
  `remarksend` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `prohibitrefund` tinyint(3) NOT NULL DEFAULT 0,
  `storeid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trade_time` int(11) NOT NULL DEFAULT 0,
  `optime` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tdate_time` int(11) NOT NULL DEFAULT 0,
  `dowpayment` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `peopleid` int(11) NOT NULL DEFAULT 0,
  `esheetprintnum` int(11) NOT NULL DEFAULT 0,
  `ordercode` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `consume` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `single_refundid` int(11) NOT NULL DEFAULT 0,
  `single_refundstate` tinyint(3) NOT NULL DEFAULT 0,
  `single_refundtime` int(11) NOT NULL DEFAULT 0,
  `fullbackid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_orderid`(`orderid`) USING BTREE,
  INDEX `idx_goodsid`(`goodsid`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE,
  INDEX `idx_applytime1`(`applytime1`) USING BTREE,
  INDEX `idx_checktime1`(`checktime1`) USING BTREE,
  INDEX `idx_status1`(`status1`) USING BTREE,
  INDEX `idx_applytime2`(`applytime2`) USING BTREE,
  INDEX `idx_checktime2`(`checktime2`) USING BTREE,
  INDEX `idx_status2`(`status2`) USING BTREE,
  INDEX `idx_applytime3`(`applytime3`) USING BTREE,
  INDEX `idx_invalidtime1`(`invalidtime1`) USING BTREE,
  INDEX `idx_checktime3`(`checktime3`) USING BTREE,
  INDEX `idx_invalidtime2`(`invalidtime2`) USING BTREE,
  INDEX `idx_invalidtime3`(`invalidtime3`) USING BTREE,
  INDEX `idx_status3`(`status3`) USING BTREE,
  INDEX `idx_paytime1`(`paytime1`) USING BTREE,
  INDEX `idx_paytime2`(`paytime2`) USING BTREE,
  INDEX `idx_paytime3`(`paytime3`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 162 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_order_peerpay
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_order_peerpay`;
CREATE TABLE `ims_ewei_shop_order_peerpay`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `orderid` int(11) NOT NULL DEFAULT 0,
  `peerpay_type` tinyint(1) NOT NULL DEFAULT 0,
  `peerpay_price` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `peerpay_maxprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `peerpay_realprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `peerpay_selfpay` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `peerpay_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `orderid`(`orderid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_order_peerpay_payinfo
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_order_peerpay_payinfo`;
CREATE TABLE `ims_ewei_shop_order_peerpay_payinfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `uid` int(11) NOT NULL DEFAULT 0,
  `uname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `usay` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `price` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `createtime` int(11) NOT NULL DEFAULT 0,
  `headimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `refundstatus` tinyint(1) NOT NULL DEFAULT 0,
  `refundprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `tid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_order_print
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_order_print`;
CREATE TABLE `ims_ewei_shop_order_print`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) NULL DEFAULT 0,
  `sid` tinyint(3) NULL DEFAULT 0,
  `foid` tinyint(3) NULL DEFAULT 0,
  `oid` int(11) NULL DEFAULT 0,
  `pid` int(11) NULL DEFAULT 0,
  `uniacid` int(11) NULL DEFAULT 0,
  `addtime` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_ewei_shop_order_refund
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_order_refund`;
CREATE TABLE `ims_ewei_shop_order_refund`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `orderid` int(11) NULL DEFAULT 0,
  `refundno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `images` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `createtime` int(11) NULL DEFAULT 0,
  `status` tinyint(3) NULL DEFAULT 0,
  `reply` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `refundtype` tinyint(3) NULL DEFAULT 0,
  `orderprice` decimal(10, 2) NULL DEFAULT 0.00,
  `applyprice` decimal(10, 2) NULL DEFAULT 0.00,
  `imgs` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `rtype` tinyint(3) NULL DEFAULT 0,
  `refundaddress` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `message` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `express` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `expresscom` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `expresssn` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `operatetime` int(11) NULL DEFAULT 0,
  `sendtime` int(11) NULL DEFAULT 0,
  `returntime` int(11) NULL DEFAULT 0,
  `refundtime` int(11) NULL DEFAULT 0,
  `rexpress` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `rexpresscom` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `rexpresssn` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `refundaddressid` int(11) NULL DEFAULT 0,
  `endtime` int(11) NULL DEFAULT 0,
  `realprice` decimal(10, 2) NULL DEFAULT 0.00,
  `merchid` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_order_single_refund
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_order_single_refund`;
CREATE TABLE `ims_ewei_shop_order_single_refund`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `orderid` int(11) NULL DEFAULT 0,
  `ordergoodsid` int(11) NULL DEFAULT 0,
  `refundno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `images` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `createtime` int(11) NULL DEFAULT 0,
  `status` tinyint(3) NULL DEFAULT 0,
  `reply` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `refundtype` tinyint(3) NULL DEFAULT 0,
  `realprice` decimal(10, 2) NULL DEFAULT 0.00,
  `refundtime` int(11) NULL DEFAULT 0,
  `ordergoodsrealprice` decimal(10, 2) NULL DEFAULT 0.00,
  `applyprice` decimal(10, 2) NULL DEFAULT 0.00,
  `imgs` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `rtype` tinyint(3) NULL DEFAULT 0,
  `refundaddress` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `message` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `express` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `expresscom` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `expresssn` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `operatetime` int(11) NULL DEFAULT 0,
  `sendtime` int(11) NULL DEFAULT 0,
  `returntime` int(11) NULL DEFAULT 0,
  `rexpress` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `rexpresscom` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `rexpresssn` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `refundaddressid` int(11) NULL DEFAULT 0,
  `endtime` int(11) NULL DEFAULT 0,
  `merchid` int(11) NULL DEFAULT 0,
  `tradetype` tinyint(3) NOT NULL DEFAULT 0,
  `issuporder` tinyint(3) NULL DEFAULT 0,
  `suptype` tinyint(3) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_package
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_package`;
CREATE TABLE `ims_ewei_shop_package`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `freight` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `starttime` int(11) NOT NULL DEFAULT 0,
  `endtime` int(11) NOT NULL DEFAULT 0,
  `goodsid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cash` tinyint(3) NOT NULL DEFAULT 0,
  `share_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `share_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `share_desc` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `deleted` tinyint(3) NOT NULL DEFAULT 0,
  `displayorder` int(11) NOT NULL DEFAULT 0,
  `dispatchtype` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_package_goods
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_package_goods`;
CREATE TABLE `ims_ewei_shop_package_goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `goodsid` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `option` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goodssn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `productsn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hasoption` tinyint(3) NOT NULL DEFAULT 0,
  `marketprice` decimal(10, 2) NULL DEFAULT 0.00,
  `packageprice` decimal(10, 2) NULL DEFAULT 0.00,
  `commission1` decimal(10, 2) NULL DEFAULT 0.00,
  `commission2` decimal(10, 2) NULL DEFAULT 0.00,
  `commission3` decimal(10, 2) NULL DEFAULT 0.00,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_package_goods_option
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_package_goods_option`;
CREATE TABLE `ims_ewei_shop_package_goods_option`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `goodsid` int(11) NOT NULL DEFAULT 0,
  `optionid` int(11) NOT NULL DEFAULT 0,
  `pid` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `packageprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `marketprice` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `commission1` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `commission2` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `commission3` decimal(10, 2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_payment
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_payment`;
CREATE TABLE `ims_ewei_shop_payment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `type` tinyint(2) NOT NULL DEFAULT 0,
  `appid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `mch_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `apikey` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `sub_appid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `sub_appsecret` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `sub_mch_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `cert_file` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `key_file` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `root_file` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `is_raw` tinyint(1) NULL DEFAULT 0,
  `createtime` int(10) UNSIGNED NULL DEFAULT 0,
  `paytype` tinyint(3) NOT NULL DEFAULT 0,
  `alitype` tinyint(3) NOT NULL DEFAULT 0,
  `alipay_sec` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `qpay_signtype` tinyint(1) NOT NULL DEFAULT 0,
  `app_qpay_public_key` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `app_qpay_private_key` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_type`(`type`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_pc_adv
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_pc_adv`;
CREATE TABLE `ims_ewei_shop_pc_adv`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) UNSIGNED NOT NULL,
  `settings` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_pc_browse_history
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_pc_browse_history`;
CREATE TABLE `ims_ewei_shop_pc_browse_history`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `uid` int(11) NULL DEFAULT 0,
  `history` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_pc_goods
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_pc_goods`;
CREATE TABLE `ims_ewei_shop_pc_goods`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `temp_id` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `uniacid` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `import_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `import_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goods_type` tinyint(1) NOT NULL,
  `goods_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `top_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `top_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bottom_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bottom_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sort` int(20) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `create_time` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goodsid_text` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_pc_menu
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_pc_menu`;
CREATE TABLE `ims_ewei_shop_pc_menu`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) UNSIGNED NOT NULL,
  `type` int(11) UNSIGNED NULL DEFAULT 0,
  `displayorder` int(11) UNSIGNED NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `status` tinyint(3) UNSIGNED NULL DEFAULT 1,
  `create_time` int(11) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_pc_template
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_pc_template`;
CREATE TABLE `ims_ewei_shop_pc_template`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `status` tinyint(1) NULL DEFAULT NULL,
  `setting` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT 0,
  `update_time` int(11) NOT NULL DEFAULT 0,
  `uniacid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_title`(`title`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_ewei_shop_pc_template
-- ----------------------------
INSERT INTO `ims_ewei_shop_pc_template` VALUES (2, '官方默认', 1, '', 0, 0, 1);

-- ----------------------------
-- Table structure for ims_ewei_shop_perm_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_perm_log`;
CREATE TABLE `ims_ewei_shop_perm_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NULL DEFAULT 0,
  `uniacid` int(11) NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `op` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `createtime` int(11) NULL DEFAULT 0,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uid`(`uid`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  FULLTEXT INDEX `idx_type`(`type`),
  FULLTEXT INDEX `idx_op`(`op`)
) ENGINE = MyISAM AUTO_INCREMENT = 6727 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_ewei_shop_perm_log
-- ----------------------------
INSERT INTO `ims_ewei_shop_perm_log` VALUES (6725, 1, 1, '小程序-底部导航-保存', 'app.tabbar.main', '保存底部导航', 1558239217, '182.148.91.15');
INSERT INTO `ims_ewei_shop_perm_log` VALUES (6726, 1, 1, '人人分销-基本设置-修改', 'commission.set.edit', '修改基本设置<br>分销内购 -- 关闭<br>成为下线条件 -- 首次点击分享连接<br>成为分销商条件 -- 无条件', 1562560840, '125.69.7.149');

-- ----------------------------
-- Table structure for ims_ewei_shop_perm_plugin
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_perm_plugin`;
CREATE TABLE `ims_ewei_shop_perm_plugin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acid` int(11) NULL DEFAULT 0,
  `uid` int(11) NULL DEFAULT 0,
  `type` tinyint(3) NULL DEFAULT 0,
  `plugins` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `coms` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `datas` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uid`(`uid`) USING BTREE,
  INDEX `idx_acid`(`acid`) USING BTREE,
  INDEX `idx_type`(`type`) USING BTREE,
  INDEX `idx_uniacid`(`acid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_perm_role
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_perm_role`;
CREATE TABLE `ims_ewei_shop_perm_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `rolename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `status` tinyint(3) NULL DEFAULT 0,
  `perms` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `deleted` tinyint(3) NULL DEFAULT 0,
  `perms2` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_deleted`(`deleted`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_perm_user
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_perm_user`;
CREATE TABLE `ims_ewei_shop_perm_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `uid` int(11) NULL DEFAULT 0,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `roleid` int(11) NULL DEFAULT 0,
  `status` int(11) NULL DEFAULT 0,
  `perms` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `deleted` tinyint(3) NULL DEFAULT 0,
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `perms2` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `openid_wa` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `member_nick` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_uid`(`uid`) USING BTREE,
  INDEX `idx_roleid`(`roleid`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_deleted`(`deleted`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_plugin
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_plugin`;
CREATE TABLE `ims_ewei_shop_plugin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `displayorder` int(11) NULL DEFAULT 0,
  `identity` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `version` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `author` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `status` int(11) NULL DEFAULT 0,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `iscom` tinyint(3) NULL DEFAULT 0,
  `deprecated` tinyint(3) NULL DEFAULT 0,
  `isv2` tinyint(3) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE,
  INDEX `idx_identity`(`identity`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 91 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_ewei_shop_plugin
-- ----------------------------
INSERT INTO `ims_ewei_shop_plugin` VALUES (1, 1, 'qiniu', 'tool', '七牛存储', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/qiniu.jpg', NULL, 1, 0, 0);
INSERT INTO `ims_ewei_shop_plugin` VALUES (2, 2, 'taobao', 'tool', '商品助手', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/taobao.jpg', '', 0, 0, 0);
INSERT INTO `ims_ewei_shop_plugin` VALUES (3, 3, 'commission', 'biz', '人人分销', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/commission.jpg', '', 0, 0, 0);
INSERT INTO `ims_ewei_shop_plugin` VALUES (4, 4, 'poster', 'sale', '超级海报', '1.2', '官方', 1, '../addons/ewei_shopv2/static/images/poster.jpg', '', 0, 0, 0);
INSERT INTO `ims_ewei_shop_plugin` VALUES (5, 5, 'verify', 'biz', 'O2O核销', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/verify.jpg', NULL, 1, 0, 0);
INSERT INTO `ims_ewei_shop_plugin` VALUES (6, 6, 'tmessage', 'tool', '会员群发', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/tmessage.jpg', NULL, 1, 0, 0);
INSERT INTO `ims_ewei_shop_plugin` VALUES (7, 7, 'perm', 'help', '分权系统', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/perm.jpg', NULL, 1, 0, 0);
INSERT INTO `ims_ewei_shop_plugin` VALUES (8, 8, 'sale', 'sale', '营销宝', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/sale.jpg', NULL, 1, 0, 0);
INSERT INTO `ims_ewei_shop_plugin` VALUES (9, 9, 'designer', 'help', '店铺装修V1', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/designer.jpg', NULL, 0, 1, 0);
INSERT INTO `ims_ewei_shop_plugin` VALUES (10, 10, 'creditshop', 'biz', '积分商城', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/creditshop.jpg', '', 0, 0, 0);
INSERT INTO `ims_ewei_shop_plugin` VALUES (11, 11, 'virtual', 'biz', '虚拟物品', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/virtual.jpg', NULL, 1, 0, 0);
INSERT INTO `ims_ewei_shop_plugin` VALUES (12, 11, 'article', 'help', '文章营销', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/article.jpg', '', 0, 0, 0);
INSERT INTO `ims_ewei_shop_plugin` VALUES (13, 13, 'coupon', 'sale', '超级券', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/coupon.jpg', NULL, 1, 0, 0);
INSERT INTO `ims_ewei_shop_plugin` VALUES (14, 14, 'postera', 'sale', '活动海报', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/postera.jpg', '', 0, 0, 0);
INSERT INTO `ims_ewei_shop_plugin` VALUES (15, 16, 'system', 'help', '系统工具', '1.0', '官方', 0, '../addons/ewei_shopv2/static/images/system.jpg', NULL, 0, 1, 0);
INSERT INTO `ims_ewei_shop_plugin` VALUES (16, 15, 'diyform', 'help', '自定表单', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/diyform.jpg', '', 0, 0, 0);
INSERT INTO `ims_ewei_shop_plugin` VALUES (17, 16, 'exhelper', 'help', '快递助手', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/exhelper.jpg', '', 0, 0, 0);
INSERT INTO `ims_ewei_shop_plugin` VALUES (18, 19, 'groups', 'biz', '人人拼团', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/groups.jpg', '', 0, 0, 0);
INSERT INTO `ims_ewei_shop_plugin` VALUES (19, 20, 'diypage', 'help', '店铺装修', '2.0', '官方', 1, '../addons/ewei_shopv2/static/images/designer.jpg', '', 0, 0, 0);
INSERT INTO `ims_ewei_shop_plugin` VALUES (20, 22, 'globonus', 'biz', '全民股东', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/globonus.jpg', '', 0, 0, 0);
INSERT INTO `ims_ewei_shop_plugin` VALUES (21, 23, 'merch', 'biz', '多商户', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/merch.jpg', '', 0, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (22, 26, 'qa', 'help', '帮助中心', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/qa.jpg', '', 0, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (24, 27, 'sms', 'tool', '短信提醒', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/sms.jpg', '', 1, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (25, 29, 'sign', 'tool', '积分签到', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/sign.jpg', '', 0, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (26, 30, 'sns', 'sale', '全民社区', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/sns.jpg', '', 0, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (27, 33, 'wap', 'tool', '全网通', '1.0', '官方', 1, '', '', 1, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (28, 34, 'h5app', 'tool', 'H5APP', '1.0', '官方', 1, '', '', 1, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (29, 26, 'abonus', 'biz', '区域代理', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/abonus.jpg', '', 0, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (30, 33, 'printer', 'tool', '小票打印机', '1.0', '官方', 1, '', '', 1, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (31, 34, 'bargain', 'tool', '砍价活动', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/bargain.jpg', '', 0, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (32, 35, 'task', 'sale', '任务中心', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/task.jpg', '', 0, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (33, 36, 'cashier', 'biz', '收银台', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/cashier.jpg', '', 0, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (34, 37, 'messages', 'tool', '消息群发', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/messages.jpg', '', 0, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (35, 38, 'seckill', 'sale', '整点秒杀', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/seckill.jpg', '', 0, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (36, 39, 'exchange', 'biz', '兑换中心', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/exchange.jpg', '', 0, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (37, 40, 'lottery', 'biz', '游戏营销', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/lottery.jpg', '', 0, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (38, 41, 'wxcard', 'sale', '微信卡券', '1.0', '官方', 1, '', '', 1, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (39, 42, 'quick', 'biz', '快速购买', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/quick.jpg', '', 0, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (40, 43, 'mmanage', 'tool', '手机端商家管理中心', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/mmanage.jpg', '', 0, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (41, 44, 'pc', 'tool', 'PC端', '1.0', '二开', 1, '../addons/ewei_shopv2/static/images/pc.jpg', '', 0, 0, 0);
INSERT INTO `ims_ewei_shop_plugin` VALUES (42, 45, 'live', 'sale', '互动直播', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/live.jpg', '', 0, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (43, 46, 'invitation', 'sale', '邀请卡', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/invitation.png', '', 0, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (44, 47, 'polyapi', 'tool', '进销存-网店管家', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/polyapi.jpg', '', 0, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (60, 60, 'cycelbuy', 'biz', '周期购', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/cycelbuy.jpg', '', 0, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (70, 70, 'dividend', 'biz', '团队分红', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/dividend.jpg', '', 0, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (80, 80, 'merchmanage', 'tool', '多商户手机管理端', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/merchmanage.jpg', '', 0, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (90, 90, 'membercard', 'sale', '付费会员卡', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/membercard.png', '', 0, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (61, 51, 'friendcoupon', 'sale', '好友瓜分券', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/friendcoupon.png', '', 0, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (50, 50, 'app', 'biz', '小程序', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/app.jpg', '', 0, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (49, 54, 'open_farm', 'tool', '人人农场', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/open_farm.png', '', 0, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (52, 55, 'goodscircle', 'tool', '好物圈', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/goodscircle.png', '购物版的朋友圈', 0, 0, 1);
INSERT INTO `ims_ewei_shop_plugin` VALUES (53, 53, 'open_messikefu', 'tool', '聚合客服', '1.0', '官方', 1, '../addons/ewei_shopv2/static/images/open_messikefu.jpg', '', 0, 0, 1);

-- ----------------------------
-- Table structure for ims_ewei_shop_polyapi_key
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_polyapi_key`;
CREATE TABLE `ims_ewei_shop_polyapi_key`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `merchid` int(11) NOT NULL DEFAULT 0,
  `appkey` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `appsecret` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `createtime` int(11) NOT NULL DEFAULT 0,
  `updatetime` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_appkey`(`appkey`) USING BTREE,
  INDEX `idx_token`(`token`) USING BTREE,
  INDEX `idx_appsecret`(`appsecret`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_poster
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_poster`;
CREATE TABLE `ims_ewei_shop_poster`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `type` tinyint(3) NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `bg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `times` int(11) NULL DEFAULT 0,
  `follows` int(11) NULL DEFAULT 0,
  `isdefault` tinyint(3) NULL DEFAULT 0,
  `resptitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `respthumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `createtime` int(11) NULL DEFAULT 0,
  `respdesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `respurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `waittext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `oktext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `subcredit` int(11) NULL DEFAULT 0,
  `submoney` decimal(10, 2) NULL DEFAULT 0.00,
  `reccredit` int(11) NULL DEFAULT 0,
  `recmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `paytype` tinyint(1) NOT NULL DEFAULT 0,
  `scantext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `subtext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `beagent` tinyint(3) NULL DEFAULT 0,
  `bedown` tinyint(3) NULL DEFAULT 0,
  `isopen` tinyint(3) NULL DEFAULT 0,
  `opentext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `openurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `templateid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `subpaycontent` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `recpaycontent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `entrytext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `reccouponid` int(11) NULL DEFAULT 0,
  `reccouponnum` int(11) NULL DEFAULT 0,
  `subcouponid` int(11) NULL DEFAULT 0,
  `subcouponnum` int(11) NULL DEFAULT 0,
  `resptype` tinyint(3) NULL DEFAULT 0,
  `resptext` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `keyword2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `resptext11` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `reward_totle` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `ismembergroup` tinyint(3) NULL DEFAULT 0,
  `membergroupid` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_type`(`type`) USING BTREE,
  INDEX `idx_times`(`times`) USING BTREE,
  INDEX `idx_isdefault`(`isdefault`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_poster_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_poster_log`;
CREATE TABLE `ims_ewei_shop_poster_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `posterid` int(11) NULL DEFAULT 0,
  `from_openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `subcredit` int(11) NULL DEFAULT 0,
  `submoney` decimal(10, 2) NULL DEFAULT 0.00,
  `reccredit` int(11) NULL DEFAULT 0,
  `recmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `createtime` int(11) NULL DEFAULT 0,
  `reccouponid` int(11) NULL DEFAULT 0,
  `reccouponnum` int(11) NULL DEFAULT 0,
  `subcouponid` int(11) NULL DEFAULT 0,
  `subcouponnum` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE,
  INDEX `idx_posterid`(`posterid`) USING BTREE,
  INDEX `idx_from_openid`(`from_openid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_poster_qr
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_poster_qr`;
CREATE TABLE `ims_ewei_shop_poster_qr`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acid` int(10) UNSIGNED NOT NULL,
  `openid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `type` tinyint(3) NULL DEFAULT 0,
  `sceneid` int(11) NULL DEFAULT 0,
  `mediaid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `ticket` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  `goodsid` int(11) NULL DEFAULT 0,
  `qrimg` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `scenestr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `posterid` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_acid`(`acid`) USING BTREE,
  INDEX `idx_sceneid`(`sceneid`) USING BTREE,
  INDEX `idx_type`(`type`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_poster_scan
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_poster_scan`;
CREATE TABLE `ims_ewei_shop_poster_scan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `posterid` int(11) NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `from_openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `scantime` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_posterid`(`posterid`) USING BTREE,
  INDEX `idx_scantime`(`scantime`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_postera
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_postera`;
CREATE TABLE `ims_ewei_shop_postera`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `type` tinyint(3) NULL DEFAULT 0,
  `days` int(11) NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `bg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `isdefault` tinyint(3) NULL DEFAULT 0,
  `resptitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `respthumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `createtime` int(11) NULL DEFAULT 0,
  `respdesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `respurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `waittext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `oktext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `subcredit` int(11) NULL DEFAULT 0,
  `submoney` decimal(10, 2) NULL DEFAULT 0.00,
  `reccredit` int(11) NULL DEFAULT 0,
  `recmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `scantext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `subtext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `beagent` tinyint(3) NULL DEFAULT 0,
  `bedown` tinyint(3) NULL DEFAULT 0,
  `isopen` tinyint(3) NULL DEFAULT 0,
  `opentext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `openurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `paytype` tinyint(1) NOT NULL DEFAULT 0,
  `subpaycontent` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `recpaycontent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `templateid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `entrytext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `reccouponid` int(11) NULL DEFAULT 0,
  `reccouponnum` int(11) NULL DEFAULT 0,
  `subcouponid` int(11) NULL DEFAULT 0,
  `subcouponnum` int(11) NULL DEFAULT 0,
  `timestart` int(11) NULL DEFAULT 0,
  `timeend` int(11) NULL DEFAULT 0,
  `status` tinyint(3) NULL DEFAULT 0,
  `goodsid` int(11) NULL DEFAULT 0,
  `starttext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `endtext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `resptype` tinyint(3) NULL DEFAULT 0,
  `resptext` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `testflag` tinyint(1) NULL DEFAULT 0,
  `keyword2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `reward_totle` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_type`(`type`) USING BTREE,
  INDEX `idx_isdefault`(`isdefault`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_postera_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_postera_log`;
CREATE TABLE `ims_ewei_shop_postera_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `posterid` int(11) NULL DEFAULT 0,
  `from_openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `subcredit` int(11) NULL DEFAULT 0,
  `submoney` decimal(10, 2) NULL DEFAULT 0.00,
  `reccredit` int(11) NULL DEFAULT 0,
  `recmoney` decimal(10, 2) NULL DEFAULT 0.00,
  `createtime` int(11) NULL DEFAULT 0,
  `reccouponid` int(11) NULL DEFAULT 0,
  `reccouponnum` int(11) NULL DEFAULT 0,
  `subcouponid` int(11) NULL DEFAULT 0,
  `subcouponnum` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE,
  INDEX `idx_posteraid`(`posterid`) USING BTREE,
  INDEX `idx_from_openid`(`from_openid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_postera_qr
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_postera_qr`;
CREATE TABLE `ims_ewei_shop_postera_qr`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acid` int(10) UNSIGNED NOT NULL,
  `openid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `posterid` int(11) NULL DEFAULT 0,
  `type` tinyint(3) NULL DEFAULT 0,
  `sceneid` int(11) NULL DEFAULT 0,
  `mediaid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `ticket` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  `goodsid` int(11) NULL DEFAULT 0,
  `qrimg` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `expire` int(11) NULL DEFAULT 0,
  `endtime` int(11) NULL DEFAULT 0,
  `qrtime` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_acid`(`acid`) USING BTREE,
  INDEX `idx_sceneid`(`sceneid`) USING BTREE,
  INDEX `idx_type`(`type`) USING BTREE,
  INDEX `idx_posterid`(`posterid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_print
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_print`;
CREATE TABLE `ims_ewei_shop_print`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) NULL DEFAULT 0,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `print_no` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `key` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `print_nums` tinyint(3) NULL DEFAULT 0,
  `uniacid` int(11) NULL DEFAULT 0,
  `sid` tinyint(3) NULL DEFAULT 0,
  `print_type` tinyint(3) NULL DEFAULT 0,
  `qrcode_link` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_qa_adv
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_qa_adv`;
CREATE TABLE `ims_ewei_shop_qa_adv`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `advname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `displayorder` int(11) NULL DEFAULT 0,
  `enabled` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_enabled`(`enabled`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_qa_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_qa_category`;
CREATE TABLE `ims_ewei_shop_qa_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `displayorder` tinyint(3) UNSIGNED NULL DEFAULT 0,
  `enabled` tinyint(1) NULL DEFAULT 1,
  `isrecommand` tinyint(3) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE,
  INDEX `idx_enabled`(`enabled`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_qa_question
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_qa_question`;
CREATE TABLE `ims_ewei_shop_qa_question`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `cate` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `isrecommand` tinyint(3) NOT NULL DEFAULT 0,
  `displayorder` int(11) NOT NULL DEFAULT 0,
  `createtime` int(11) NOT NULL DEFAULT 0,
  `lastedittime` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_qa_set
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_qa_set`;
CREATE TABLE `ims_ewei_shop_qa_set`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `showmember` tinyint(3) NOT NULL DEFAULT 0,
  `showtype` tinyint(3) NOT NULL DEFAULT 0,
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `enter_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `enter_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `enter_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `share` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_unaicid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_quick
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_quick`;
CREATE TABLE `ims_ewei_shop_quick`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `datas` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `cart` tinyint(3) NOT NULL DEFAULT 0,
  `createtime` int(11) NULL DEFAULT NULL,
  `lasttime` int(11) NULL DEFAULT NULL,
  `share_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `share_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `share_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enter_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enter_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enter_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `merchid` int(11) NOT NULL DEFAULT 0,
  `type` tinyint(3) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_quick_adv
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_quick_adv`;
CREATE TABLE `ims_ewei_shop_quick_adv`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `merchid` int(11) NOT NULL DEFAULT 0,
  `advname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `displayorder` int(11) NULL DEFAULT 0,
  `enabled` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_enabled`(`enabled`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_quick_cart
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_quick_cart`;
CREATE TABLE `ims_ewei_shop_quick_cart`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `quickid` int(11) NOT NULL DEFAULT 0,
  `openid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `goodsid` int(11) NULL DEFAULT 0,
  `total` int(11) NULL DEFAULT 0,
  `marketprice` decimal(10, 2) NULL DEFAULT 0.00,
  `deleted` tinyint(1) NULL DEFAULT 0,
  `optionid` int(11) NULL DEFAULT 0,
  `createtime` int(11) NULL DEFAULT 0,
  `diyformdataid` int(11) NULL DEFAULT NULL,
  `diyformdata` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `diyformfields` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `diyformid` int(11) NULL DEFAULT 0,
  `selected` tinyint(1) NULL DEFAULT 1,
  `merchid` int(11) NULL DEFAULT 0,
  `selectedadd` tinyint(1) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_goodsid`(`goodsid`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE,
  INDEX `idx_deleted`(`deleted`) USING BTREE,
  INDEX `idx_merchid`(`merchid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_refund_address
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_refund_address`;
CREATE TABLE `ims_ewei_shop_refund_address`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `province` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `city` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `area` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `address` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `isdefault` tinyint(1) NULL DEFAULT 0,
  `zipcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `deleted` tinyint(1) NULL DEFAULT 0,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `merchid` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE,
  INDEX `idx_isdefault`(`isdefault`) USING BTREE,
  INDEX `idx_deleted`(`deleted`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_sale_coupon
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sale_coupon`;
CREATE TABLE `ims_ewei_shop_sale_coupon`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `type` tinyint(3) NULL DEFAULT 0,
  `ckey` decimal(10, 2) NULL DEFAULT 0.00,
  `cvalue` decimal(10, 2) NULL DEFAULT 0.00,
  `nums` int(11) NULL DEFAULT 0,
  `createtime` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_sale_coupon_data
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sale_coupon_data`;
CREATE TABLE `ims_ewei_shop_sale_coupon_data`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `couponid` int(11) NULL DEFAULT 0,
  `gettime` int(11) NULL DEFAULT 0,
  `gettype` tinyint(3) NULL DEFAULT 0,
  `usedtime` int(11) NULL DEFAULT 0,
  `orderid` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_couponid`(`couponid`) USING BTREE,
  INDEX `idx_gettime`(`gettime`) USING BTREE,
  INDEX `idx_gettype`(`gettype`) USING BTREE,
  INDEX `idx_usedtime`(`usedtime`) USING BTREE,
  INDEX `idx_orderid`(`orderid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_saler
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_saler`;
CREATE TABLE `ims_ewei_shop_saler`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storeid` int(11) NULL DEFAULT 0,
  `uniacid` int(11) NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `status` tinyint(3) NULL DEFAULT 0,
  `salername` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `lastvisit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `lastip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `isfounder` tinyint(3) NULL DEFAULT 0,
  `mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `getmessage` tinyint(1) NULL DEFAULT 0,
  `getnotice` tinyint(1) NULL DEFAULT 0,
  `roleid` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_storeid`(`storeid`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_seckill_adv
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_seckill_adv`;
CREATE TABLE `ims_ewei_shop_seckill_adv`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `advname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `displayorder` int(11) NULL DEFAULT 0,
  `enabled` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE,
  INDEX `idx_enabled`(`enabled`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_seckill_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_seckill_category`;
CREATE TABLE `ims_ewei_shop_seckill_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_seckill_task
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_seckill_task`;
CREATE TABLE `ims_ewei_shop_seckill_task`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `cateid` int(11) NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `enabled` tinyint(3) NULL DEFAULT 0,
  `page_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `share_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `share_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `share_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `tag` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `closesec` int(11) NULL DEFAULT 0,
  `oldshow` tinyint(3) NULL DEFAULT 0,
  `times` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `createtime` int(11) NULL DEFAULT 0,
  `overtimes` tinyint(2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_status`(`enabled`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_seckill_task_goods
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_seckill_task_goods`;
CREATE TABLE `ims_ewei_shop_seckill_task_goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `displayorder` int(11) NULL DEFAULT 0,
  `taskid` int(11) NULL DEFAULT 0,
  `roomid` int(11) NULL DEFAULT 0,
  `timeid` int(11) NULL DEFAULT 0,
  `goodsid` int(11) NULL DEFAULT 0,
  `optionid` int(11) NULL DEFAULT 0,
  `price` decimal(10, 2) NULL DEFAULT 0.00,
  `total` int(11) NULL DEFAULT 0,
  `maxbuy` int(11) NULL DEFAULT 0,
  `totalmaxbuy` int(11) NULL DEFAULT 0,
  `commission1` decimal(10, 2) NULL DEFAULT 0.00,
  `commission2` decimal(10, 2) NULL DEFAULT 0.00,
  `commission3` decimal(10, 2) NULL DEFAULT 0.00,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_goodsid`(`goodsid`) USING BTREE,
  INDEX `idx_optionid`(`optionid`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE,
  INDEX `idx_taskid`(`taskid`) USING BTREE,
  INDEX `idx_roomid`(`roomid`) USING BTREE,
  INDEX `idx_time`(`timeid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_ewei_shop_seckill_task_room
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_seckill_task_room`;
CREATE TABLE `ims_ewei_shop_seckill_task_room`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `displayorder` int(11) NULL DEFAULT 0,
  `taskid` int(11) NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `enabled` tinyint(3) NULL DEFAULT 0,
  `page_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `share_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `share_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `share_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `oldshow` tinyint(3) NULL DEFAULT 0,
  `tag` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `createtime` int(11) NULL DEFAULT 0,
  `diypage` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_taskid`(`taskid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_seckill_task_time
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_seckill_task_time`;
CREATE TABLE `ims_ewei_shop_seckill_task_time`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `taskid` int(11) NULL DEFAULT 0,
  `time` tinyint(3) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_ewei_shop_sendticket
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sendticket`;
CREATE TABLE `ims_ewei_shop_sendticket`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `cpid` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expiration` int(11) NOT NULL DEFAULT 0,
  `starttime` int(11) NULL DEFAULT NULL,
  `endtime` int(11) NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `createtime` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '新人礼包',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_sendticket_draw
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sendticket_draw`;
CREATE TABLE `ims_ewei_shop_sendticket_draw`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `cpid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `openid` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `openid`(`openid`) USING BTREE,
  INDEX `cpid`(`cpid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_sendticket_share
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sendticket_share`;
CREATE TABLE `ims_ewei_shop_sendticket_share`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `sharetitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `shareicon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sharedesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `expiration` int(11) NOT NULL DEFAULT 0,
  `starttime` int(11) NULL DEFAULT NULL,
  `endtime` int(11) NULL DEFAULT NULL,
  `paycpid1` int(11) NULL DEFAULT NULL,
  `paycpid2` int(11) NULL DEFAULT NULL,
  `paycpid3` int(11) NULL DEFAULT NULL,
  `paycpnum1` int(11) NULL DEFAULT NULL,
  `paycpnum2` int(11) NULL DEFAULT NULL,
  `paycpnum3` int(11) NULL DEFAULT NULL,
  `sharecpid1` int(11) NULL DEFAULT NULL,
  `sharecpid2` int(11) NULL DEFAULT NULL,
  `sharecpid3` int(11) NULL DEFAULT NULL,
  `sharecpnum1` int(11) NULL DEFAULT NULL,
  `sharecpnum2` int(11) NULL DEFAULT NULL,
  `sharecpnum3` int(11) NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `createtime` int(11) NOT NULL,
  `order` int(11) NULL DEFAULT NULL,
  `enough` decimal(10, 2) NULL DEFAULT NULL,
  `issync` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_sign_records
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sign_records`;
CREATE TABLE `ims_ewei_shop_sign_records`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `time` int(11) NOT NULL DEFAULT 0,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `credit` int(11) NOT NULL DEFAULT 0,
  `log` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `type` tinyint(3) NOT NULL DEFAULT 0,
  `day` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_time`(`time`) USING BTREE,
  INDEX `idx_type`(`type`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 602 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_sign_set
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sign_set`;
CREATE TABLE `ims_ewei_shop_sign_set`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `iscenter` tinyint(3) NOT NULL DEFAULT 0,
  `iscreditshop` tinyint(3) NOT NULL DEFAULT 0,
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `isopen` tinyint(3) NOT NULL DEFAULT 0,
  `signold` tinyint(3) NOT NULL DEFAULT 0,
  `signold_price` int(11) NOT NULL DEFAULT 0,
  `signold_type` tinyint(3) NOT NULL DEFAULT 0,
  `textsign` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `textsignold` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `textsigned` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `textsignforget` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `maincolor` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `cycle` tinyint(3) NOT NULL DEFAULT 0,
  `reward_default_first` int(11) NOT NULL DEFAULT 0,
  `reward_default_day` int(11) NOT NULL DEFAULT 0,
  `reword_order` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `reword_sum` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `reword_special` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sign_rule` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `share` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_sign_user
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sign_user`;
CREATE TABLE `ims_ewei_shop_sign_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `order` int(11) NOT NULL DEFAULT 0,
  `orderday` int(11) NOT NULL DEFAULT 0,
  `sum` int(11) NOT NULL DEFAULT 0,
  `signdate` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `isminiprogram` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 146 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_sms
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sms`;
CREATE TABLE `ims_ewei_shop_sms`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `template` tinyint(3) NOT NULL DEFAULT 0,
  `smstplid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `smssign` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `content` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_sms_set
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sms_set`;
CREATE TABLE `ims_ewei_shop_sms_set`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `juhe` tinyint(3) NOT NULL DEFAULT 0,
  `juhe_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `dayu` tinyint(3) NOT NULL DEFAULT 0,
  `dayu_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `dayu_secret` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `emay` tinyint(3) NOT NULL DEFAULT 0,
  `emay_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `emay_sn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `emay_pw` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `emay_sk` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `emay_phost` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `emay_pport` int(11) NOT NULL DEFAULT 0,
  `emay_puser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `emay_ppw` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `emay_out` int(11) NOT NULL DEFAULT 0,
  `emay_outresp` int(11) NOT NULL DEFAULT 30,
  `emay_warn` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `emay_mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `emay_warn_time` int(11) NOT NULL DEFAULT 0,
  `aliyun` tinyint(3) NOT NULL DEFAULT 0,
  `aliyun_appcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `aliyun_new` tinyint(3) NOT NULL DEFAULT 0,
  `aliyun_new_keyid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `aliyun_new_keysecret` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_sns_adv
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sns_adv`;
CREATE TABLE `ims_ewei_shop_sns_adv`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `advname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `displayorder` int(11) NULL DEFAULT 0,
  `enabled` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_enabled`(`enabled`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_sns_board
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sns_board`;
CREATE TABLE `ims_ewei_shop_sns_board`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `cid` int(11) NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `displayorder` int(11) NULL DEFAULT 0,
  `enabled` int(11) NULL DEFAULT 0,
  `showgroups` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `showlevels` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `postgroups` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `postlevels` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `showagentlevels` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `postagentlevels` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `postcredit` int(11) NULL DEFAULT 0,
  `replycredit` int(11) NULL DEFAULT 0,
  `bestcredit` int(11) NULL DEFAULT 0,
  `bestboardcredit` int(11) NULL DEFAULT 0,
  `notagent` tinyint(3) NULL DEFAULT 0,
  `notagentpost` tinyint(3) NULL DEFAULT 0,
  `topcredit` int(11) NULL DEFAULT 0,
  `topboardcredit` int(11) NULL DEFAULT 0,
  `status` tinyint(3) NULL DEFAULT 0,
  `noimage` tinyint(3) NULL DEFAULT 0,
  `novoice` tinyint(3) NULL DEFAULT 0,
  `needfollow` tinyint(3) NULL DEFAULT 0,
  `needpostfollow` tinyint(3) NULL DEFAULT 0,
  `share_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `share_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `share_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `isrecommand` tinyint(3) NULL DEFAULT 0,
  `banner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `needcheck` tinyint(3) NULL DEFAULT 0,
  `needcheckmanager` tinyint(3) NULL DEFAULT 0,
  `needcheckreply` int(11) NULL DEFAULT 0,
  `needcheckreplymanager` int(11) NULL DEFAULT 0,
  `showsnslevels` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `postsnslevels` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `showpartnerlevels` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `postpartnerlevels` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `notpartner` tinyint(3) NULL DEFAULT 0,
  `notpartnerpost` tinyint(3) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_enabled`(`enabled`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE,
  INDEX `idx_cid`(`cid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_sns_board_follow
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sns_board_follow`;
CREATE TABLE `ims_ewei_shop_sns_board_follow`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `bid` int(11) NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_bid`(`bid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_sns_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sns_category`;
CREATE TABLE `ims_ewei_shop_sns_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `displayorder` tinyint(3) UNSIGNED NULL DEFAULT 0,
  `enabled` tinyint(1) NULL DEFAULT 1,
  `advimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `advurl` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `isrecommand` tinyint(3) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_enabled`(`enabled`) USING BTREE,
  INDEX `idx_isrecommand`(`isrecommand`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_sns_complain
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sns_complain`;
CREATE TABLE `ims_ewei_shop_sns_complain`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `type` tinyint(3) NOT NULL,
  `postsid` int(11) NOT NULL DEFAULT 0,
  `defendant` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `complainant` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `complaint_type` int(10) NOT NULL DEFAULT 0,
  `complaint_text` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `images` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(11) NOT NULL DEFAULT 0,
  `checkedtime` int(11) NOT NULL DEFAULT 0,
  `checked` tinyint(3) NOT NULL DEFAULT 0,
  `checked_note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `deleted` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_sns_complaincate
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sns_complaincate`;
CREATE TABLE `ims_ewei_shop_sns_complaincate`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `displayorder` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_sns_level
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sns_level`;
CREATE TABLE `ims_ewei_shop_sns_level`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `levelname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `credit` int(11) NULL DEFAULT 0,
  `enabled` tinyint(3) NULL DEFAULT 0,
  `post` int(11) NULL DEFAULT 0,
  `color` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `bg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_enabled`(`enabled`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_sns_like
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sns_like`;
CREATE TABLE `ims_ewei_shop_sns_like`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `pid` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_pid`(`pid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_sns_manage
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sns_manage`;
CREATE TABLE `ims_ewei_shop_sns_manage`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `bid` int(11) NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `enabled` tinyint(3) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_bid`(`bid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_sns_member
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sns_member`;
CREATE TABLE `ims_ewei_shop_sns_member`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `level` int(11) NULL DEFAULT 0,
  `createtime` int(11) NULL DEFAULT 0,
  `credit` int(11) NULL DEFAULT 0,
  `sign` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `isblack` tinyint(3) NULL DEFAULT 0,
  `notupgrade` tinyint(3) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_sns_post
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sns_post`;
CREATE TABLE `ims_ewei_shop_sns_post`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `bid` int(11) NULL DEFAULT 0,
  `pid` int(11) NULL DEFAULT 0,
  `rpid` int(11) NULL DEFAULT 0,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `images` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `voice` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` int(11) NULL DEFAULT 0,
  `replytime` int(11) NULL DEFAULT 0,
  `credit` int(11) NULL DEFAULT 0,
  `views` int(11) NULL DEFAULT 0,
  `islock` tinyint(1) NULL DEFAULT 0,
  `istop` tinyint(1) NULL DEFAULT 0,
  `isboardtop` tinyint(1) NULL DEFAULT 0,
  `isbest` tinyint(1) NULL DEFAULT 0,
  `isboardbest` tinyint(3) NULL DEFAULT 0,
  `deleted` tinyint(3) NULL DEFAULT 0,
  `deletedtime` int(11) NULL DEFAULT 0,
  `checked` tinyint(3) NULL DEFAULT NULL,
  `checktime` int(11) NULL DEFAULT 0,
  `isadmin` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_bid`(`bid`) USING BTREE,
  INDEX `idx_pid`(`pid`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE,
  INDEX `idx_islock`(`islock`) USING BTREE,
  INDEX `idx_istop`(`istop`) USING BTREE,
  INDEX `idx_isboardtop`(`isboardtop`) USING BTREE,
  INDEX `idx_isbest`(`isbest`) USING BTREE,
  INDEX `idx_deleted`(`deleted`) USING BTREE,
  INDEX `idx_deletetime`(`deletedtime`) USING BTREE,
  INDEX `idx_checked`(`checked`) USING BTREE,
  INDEX `idx_rpid`(`rpid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_store
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_store`;
CREATE TABLE `ims_ewei_shop_store`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `storename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `lat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `lng` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `status` tinyint(3) NULL DEFAULT 0,
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `fetchtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `type` tinyint(1) NULL DEFAULT 0,
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `saletime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `displayorder` int(11) NULL DEFAULT 0,
  `order_printer` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `order_template` int(11) NULL DEFAULT 0,
  `ordertype` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `banner` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classify` tinyint(1) NULL DEFAULT NULL,
  `perms` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `citycode` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `opensend` tinyint(3) NOT NULL DEFAULT 0,
  `province` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `city` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `area` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `provincecode` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `areacode` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `diypage` int(11) NOT NULL DEFAULT 0,
  `diypage_ispage` tinyint(3) NOT NULL DEFAULT 0,
  `diypage_list` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `storegroupid` int(11) NULL DEFAULT NULL,
  `cates` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_sysset
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_sysset`;
CREATE TABLE `ims_ewei_shop_sysset`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `sets` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `plugins` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `sec` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_ewei_shop_sysset
-- ----------------------------
INSERT INTO `ims_ewei_shop_sysset` VALUES (11, 1, 'a:2:{s:4:\"auth\";a:4:{s:2:\"ip\";s:14:\"39.105.181.181\";s:7:\"modname\";s:11:\"ewei_shopv2\";s:4:\"code\";s:32:\"d3zv1q8sak4ufc0px7we6homji5bntr2\";s:6:\"domain\";s:18:\"wzshop.weidayi.com\";}s:3:\"app\";a:1:{s:6:\"tabbar\";s:977:\"a:5:{s:5:\"color\";s:7:\"#999999\";s:13:\"selectedColor\";s:7:\"#ff5555\";s:11:\"borderStyle\";s:0:\"\";s:15:\"backgroundColor\";s:7:\"#f7f7fa\";s:4:\"list\";a:4:{i:0;a:4:{s:8:\"pagePath\";s:17:\"pages/index/index\";s:8:\"iconPath\";s:31:\"static/images/tabbar/icon-1.png\";s:16:\"selectedIconPath\";s:38:\"static/images/tabbar/icon-1-active.png\";s:4:\"text\";s:6:\"首页\";}i:1;a:4:{s:8:\"pagePath\";s:25:\"pages/shop/caregory/index\";s:8:\"iconPath\";s:31:\"static/images/tabbar/icon-2.png\";s:16:\"selectedIconPath\";s:38:\"static/images/tabbar/icon-2-active.png\";s:4:\"text\";s:12:\"全部分类\";}i:2;a:4:{s:8:\"pagePath\";s:23:\"pages/member/cart/index\";s:8:\"iconPath\";s:31:\"static/images/tabbar/icon-4.png\";s:16:\"selectedIconPath\";s:38:\"static/images/tabbar/icon-4-active.png\";s:4:\"text\";s:9:\"购物车\";}i:3;a:4:{s:8:\"pagePath\";s:24:\"pages/member/index/index\";s:8:\"iconPath\";s:31:\"static/images/tabbar/icon-5.png\";s:16:\"selectedIconPath\";s:38:\"static/images/tabbar/icon-5-active.png\";s:4:\"text\";s:12:\"会员中心\";}}}\";}}', 'a:1:{s:10:\"commission\";a:53:{s:5:\"level\";s:1:\"1\";s:7:\"selfbuy\";s:1:\"0\";s:6:\"cansee\";s:1:\"0\";s:8:\"seetitle\";s:0:\"\";s:12:\"become_child\";s:1:\"0\";s:9:\"hideicode\";s:1:\"0\";s:6:\"become\";s:1:\"0\";s:17:\"become_ordercount\";s:0:\"\";s:17:\"become_moneycount\";s:0:\"\";s:12:\"become_check\";s:1:\"0\";s:12:\"become_order\";s:1:\"0\";s:13:\"open_protocol\";s:1:\"0\";s:10:\"become_reg\";s:1:\"0\";s:17:\"no_commission_url\";s:0:\"\";s:8:\"withdraw\";s:1:\"1\";s:14:\"commissiontype\";s:1:\"0\";s:14:\"withdrawcharge\";s:0:\"\";s:13:\"withdrawbegin\";d:0;s:11:\"withdrawend\";d:0;s:10:\"settledays\";s:0:\"\";s:8:\"levelurl\";s:0:\"\";s:9:\"leveltype\";s:1:\"0\";s:11:\"qrcodeshare\";s:1:\"0\";s:9:\"codeShare\";s:1:\"1\";s:15:\"openorderdetail\";s:1:\"0\";s:14:\"openorderbuyer\";s:1:\"0\";s:13:\"closed_qrcode\";s:1:\"0\";s:6:\"qrcode\";s:1:\"0\";s:12:\"qrcode_title\";s:0:\"\";s:14:\"qrcode_content\";s:0:\"\";s:13:\"qrcode_remark\";s:0:\"\";s:15:\"register_bottom\";s:1:\"0\";s:22:\"register_bottom_title1\";s:0:\"\";s:24:\"register_bottom_content1\";s:0:\"\";s:22:\"register_bottom_title2\";s:0:\"\";s:24:\"register_bottom_content2\";s:0:\"\";s:22:\"register_bottom_title3\";s:0:\"\";s:24:\"register_bottom_content3\";s:0:\"\";s:22:\"register_bottom_remark\";s:0:\"\";s:23:\"register_bottom_content\";s:0:\"\";s:11:\"closemyshop\";s:1:\"0\";s:12:\"select_goods\";s:1:\"0\";s:5:\"style\";s:10:\"defaultold\";s:5:\"regbg\";s:0:\"\";s:10:\"applytitle\";s:0:\"\";s:12:\"applycontent\";s:0:\"\";s:10:\"cashcredit\";i:0;s:10:\"cashweixin\";i:0;s:9:\"cashother\";i:0;s:10:\"cashalipay\";i:0;s:8:\"cashcard\";i:0;s:14:\"become_goodsid\";i:0;s:5:\"texts\";a:26:{s:5:\"agent\";s:9:\"分销商\";s:4:\"shop\";s:6:\"小店\";s:6:\"myshop\";s:12:\"我的小店\";s:6:\"center\";s:12:\"分销中心\";s:6:\"become\";s:15:\"成为分销商\";s:8:\"withdraw\";s:6:\"提现\";s:10:\"commission\";s:6:\"佣金\";s:11:\"commission1\";s:12:\"分销佣金\";s:16:\"commission_total\";s:12:\"累计佣金\";s:13:\"commission_ok\";s:15:\"可提现佣金\";s:16:\"commission_apply\";s:15:\"已申请佣金\";s:16:\"commission_check\";s:15:\"待打款佣金\";s:15:\"commission_lock\";s:15:\"未结算佣金\";s:15:\"commission_wait\";s:15:\"待收货佣金\";s:15:\"commission_fail\";s:12:\"无效佣金\";s:14:\"commission_pay\";s:18:\"成功提现佣金\";s:17:\"commission_charge\";s:21:\"扣除提现手续费\";s:17:\"commission_detail\";s:12:\"佣金明细\";s:5:\"order\";s:12:\"分销订单\";s:4:\"down\";s:6:\"下线\";s:6:\"mydown\";s:12:\"我的下线\";s:2:\"c1\";s:6:\"一级\";s:2:\"c2\";s:6:\"二级\";s:2:\"c3\";s:6:\"三级\";s:4:\"yuan\";s:3:\"元\";s:5:\"icode\";s:9:\"邀请码\";}}}', NULL);

-- ----------------------------
-- Table structure for ims_ewei_shop_system_adv
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_adv`;
CREATE TABLE `ims_ewei_shop_system_adv`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `createtime` int(11) NULL DEFAULT 0,
  `displayorder` int(11) NULL DEFAULT 0,
  `module` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `status` tinyint(3) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_system_article
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_article`;
CREATE TABLE `ims_ewei_shop_system_article`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `createtime` int(11) NULL DEFAULT 0,
  `displayorder` int(11) NULL DEFAULT 0,
  `cate` int(11) NULL DEFAULT 0,
  `status` tinyint(3) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_system_banner
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_banner`;
CREATE TABLE `ims_ewei_shop_system_banner`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `createtime` int(11) NULL DEFAULT 0,
  `displayorder` int(11) NULL DEFAULT 0,
  `status` tinyint(3) NULL DEFAULT 0,
  `background` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_system_case
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_case`;
CREATE TABLE `ims_ewei_shop_system_case`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `qr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `displayorder` int(11) NULL DEFAULT 0,
  `status` tinyint(3) NULL DEFAULT 0,
  `cate` int(11) NULL DEFAULT 0,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_system_casecategory
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_casecategory`;
CREATE TABLE `ims_ewei_shop_system_casecategory`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `displayorder` int(11) NULL DEFAULT 0,
  `status` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_system_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_category`;
CREATE TABLE `ims_ewei_shop_system_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `displayorder` int(11) NULL DEFAULT 0,
  `status` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_system_company_article
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_company_article`;
CREATE TABLE `ims_ewei_shop_system_company_article`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `createtime` int(11) NULL DEFAULT 0,
  `displayorder` int(11) NULL DEFAULT 0,
  `cate` int(11) NULL DEFAULT 0,
  `status` tinyint(3) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_system_company_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_company_category`;
CREATE TABLE `ims_ewei_shop_system_company_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `displayorder` int(11) NULL DEFAULT 0,
  `status` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_system_copyright
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_copyright`;
CREATE TABLE `ims_ewei_shop_system_copyright`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT NULL,
  `copyright` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `bgcolor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `ismanage` tinyint(3) NULL DEFAULT 0,
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_system_copyright_notice
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_copyright_notice`;
CREATE TABLE `ims_ewei_shop_system_copyright_notice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `createtime` int(11) NULL DEFAULT 0,
  `displayorder` int(11) NULL DEFAULT 0,
  `status` tinyint(3) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_system_guestbook
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_guestbook`;
CREATE TABLE `ims_ewei_shop_system_guestbook`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `createtime` int(11) NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `clientip` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_system_link
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_link`;
CREATE TABLE `ims_ewei_shop_system_link`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `displayorder` int(11) NULL DEFAULT NULL,
  `status` tinyint(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_system_plugingrant_adv
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_plugingrant_adv`;
CREATE TABLE `ims_ewei_shop_system_plugingrant_adv`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `advname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `displayorder` int(11) NULL DEFAULT 0,
  `enabled` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_enabled`(`enabled`) USING BTREE,
  INDEX `idx_displayorder`(`displayorder`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_system_plugingrant_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_plugingrant_log`;
CREATE TABLE `ims_ewei_shop_system_plugingrant_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logno` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `pluginid` int(11) NOT NULL DEFAULT 0,
  `identity` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `month` int(10) NOT NULL DEFAULT 0,
  `permendtime` int(10) NOT NULL DEFAULT 0,
  `permlasttime` int(10) NOT NULL DEFAULT 0,
  `isperm` tinyint(3) NOT NULL DEFAULT 0,
  `createtime` int(10) NOT NULL DEFAULT 0,
  `deleted` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_system_plugingrant_order
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_plugingrant_order`;
CREATE TABLE `ims_ewei_shop_system_plugingrant_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logno` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pluginid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `month` int(11) NOT NULL DEFAULT 0,
  `createtime` int(10) NOT NULL DEFAULT 0,
  `paystatus` tinyint(3) NOT NULL DEFAULT 0,
  `paytime` int(10) NOT NULL DEFAULT 0,
  `paytype` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_system_plugingrant_package
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_plugingrant_package`;
CREATE TABLE `ims_ewei_shop_system_plugingrant_package`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pluginid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thumb` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT 0,
  `rec` tinyint(3) NOT NULL DEFAULT 0,
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `displayorder` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_system_plugingrant_plugin
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_plugingrant_plugin`;
CREATE TABLE `ims_ewei_shop_system_plugingrant_plugin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pluginid` int(11) NOT NULL DEFAULT 0,
  `thumb` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `state` tinyint(3) NOT NULL DEFAULT 0,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sales` int(11) NOT NULL DEFAULT 0,
  `createtime` int(10) NOT NULL DEFAULT 0,
  `displayorder` int(11) NOT NULL DEFAULT 0,
  `plugintype` tinyint(3) NOT NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_system_plugingrant_setting
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_plugingrant_setting`;
CREATE TABLE `ims_ewei_shop_system_plugingrant_setting`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `com` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `adv` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `plugin` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `customer` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `contact` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `servertime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `weixin` tinyint(3) NOT NULL DEFAULT 0,
  `appid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mchid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `apikey` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `alipay` tinyint(3) NOT NULL,
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `partner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `secret` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_system_setting
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_setting`;
CREATE TABLE `ims_ewei_shop_system_setting`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NULL DEFAULT NULL,
  `background` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `casebanner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `contact` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_system_site
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_system_site`;
CREATE TABLE `ims_ewei_shop_system_site`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_task
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_task`;
CREATE TABLE `ims_ewei_shop_task`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `type` int(11) NOT NULL,
  `starttime` int(11) NOT NULL,
  `endtime` int(11) NOT NULL,
  `dotime` int(11) NOT NULL DEFAULT 0,
  `donetime` int(11) NOT NULL DEFAULT 0,
  `timelimit` float(11, 1) NOT NULL,
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `explain` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `require_data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `reward_data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `period` int(11) NOT NULL DEFAULT 0,
  `repeat` int(11) NOT NULL DEFAULT 0,
  `maxtimes` int(11) NOT NULL DEFAULT 0,
  `everyhours` float(11, 1) NOT NULL DEFAULT 0.0,
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_task_adv
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_task_adv`;
CREATE TABLE `ims_ewei_shop_task_adv`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `advname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `displayorder` int(11) NULL DEFAULT 0,
  `enabled` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_task_default
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_task_default`;
CREATE TABLE `ims_ewei_shop_task_default`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `addtime` int(11) NOT NULL DEFAULT 0,
  `bgimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `open` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_task_extension
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_task_extension`;
CREATE TABLE `ims_ewei_shop_task_extension`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taskname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `taskclass` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `classify` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `classify_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `verb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_ewei_shop_task_extension
-- ----------------------------
INSERT INTO `ims_ewei_shop_task_extension` VALUES (1, '推荐人数', 'commission_member', 1, 'number', 'number', '推荐', '人');
INSERT INTO `ims_ewei_shop_task_extension` VALUES (2, '分销佣金', 'commission_money', 1, 'number', 'number', '达到', '元');
INSERT INTO `ims_ewei_shop_task_extension` VALUES (3, '分销订单', 'commission_order', 1, 'number', 'number', '达到', '笔');
INSERT INTO `ims_ewei_shop_task_extension` VALUES (4, '订单满额', 'cost_enough', 1, 'number', 'number', '满', '元');
INSERT INTO `ims_ewei_shop_task_extension` VALUES (5, '累计金额', 'cost_total', 1, 'number', 'number', '累计', '元');
INSERT INTO `ims_ewei_shop_task_extension` VALUES (6, '订单数量', 'cost_count', 1, 'number', 'number', '达到', '单');
INSERT INTO `ims_ewei_shop_task_extension` VALUES (7, '指定商品', 'cost_goods', 1, 'select', 'select', '购买指定商品', '件');
INSERT INTO `ims_ewei_shop_task_extension` VALUES (8, '商品评价', 'cost_comment', 1, 'number', 'number', '评价订单', '次');
INSERT INTO `ims_ewei_shop_task_extension` VALUES (9, '累计充值', 'cost_rechargetotal', 1, 'number', 'number', '达到', '元');
INSERT INTO `ims_ewei_shop_task_extension` VALUES (10, '充值满额', 'cost_rechargeenough', 1, 'number', 'number', '满', '元');
INSERT INTO `ims_ewei_shop_task_extension` VALUES (11, '完善信息', 'member_info', 1, 'boole', 'boole', '填写手机号', '');

-- ----------------------------
-- Table structure for ims_ewei_shop_task_extension_join
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_task_extension_join`;
CREATE TABLE `ims_ewei_shop_task_extension_join`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `uid` int(11) NOT NULL,
  `taskid` int(11) NOT NULL,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `require_data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `progress_data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `reward_data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `completetime` int(11) NOT NULL DEFAULT 0,
  `pickuptime` int(11) NOT NULL,
  `endtime` int(11) NOT NULL,
  `dotime` int(11) NOT NULL DEFAULT 0,
  `rewarded` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_task_join
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_task_join`;
CREATE TABLE `ims_ewei_shop_task_join`  (
  `join_id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `join_user` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `task_id` int(11) NOT NULL DEFAULT 0,
  `task_type` tinyint(1) NOT NULL DEFAULT 0,
  `needcount` int(11) NOT NULL DEFAULT 0,
  `completecount` int(11) NOT NULL DEFAULT 0,
  `reward_data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `is_reward` tinyint(1) NOT NULL DEFAULT 0,
  `failtime` int(11) NOT NULL DEFAULT 0,
  `addtime` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`join_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_task_joiner
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_task_joiner`;
CREATE TABLE `ims_ewei_shop_task_joiner`  (
  `complete_id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `task_user` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `joiner_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `join_id` int(11) NOT NULL DEFAULT 0,
  `task_id` int(11) NOT NULL DEFAULT 0,
  `task_type` tinyint(1) NOT NULL DEFAULT 0,
  `join_status` tinyint(1) NOT NULL DEFAULT 1,
  `addtime` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`complete_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_task_list
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_task_list`;
CREATE TABLE `ims_ewei_shop_task_list`  (
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `displayorder` int(11) NOT NULL DEFAULT 0,
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `title` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `starttime` timestamp(0) NOT NULL,
  `endtime` timestamp(0) NOT NULL,
  `demand` int(11) NOT NULL DEFAULT 0,
  `requiregoods` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `picktype` tinyint(1) NOT NULL DEFAULT 0,
  `stop_type` tinyint(1) NOT NULL DEFAULT 0,
  `stop_limit` int(11) NOT NULL DEFAULT 0,
  `stop_time` timestamp(0) NOT NULL,
  `stop_cycle` tinyint(1) NOT NULL DEFAULT 0,
  `repeat_type` tinyint(1) NOT NULL DEFAULT 0,
  `repeat_interval` int(11) NOT NULL DEFAULT 0,
  `repeat_cycle` tinyint(1) NOT NULL DEFAULT 0,
  `reward` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `followreward` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goods_limit` int(11) NOT NULL DEFAULT 0,
  `notice` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `design_data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `design_bg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `native_data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `native_data2` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `native_data3` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `reward2` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `reward3` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `level2` int(11) NOT NULL DEFAULT 0,
  `level3` int(11) NOT NULL DEFAULT 0,
  `member_group` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `auto_pick` tinyint(1) NOT NULL DEFAULT 0,
  `keyword_pick` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `verb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `member_level` int(11) NOT NULL DEFAULT 0,
  `poster_version` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `we7_rule_keyword_id` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_passive`(`picktype`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_task_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_task_log`;
CREATE TABLE `ims_ewei_shop_task_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `openid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `from_openid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `join_id` int(11) NOT NULL DEFAULT 0,
  `taskid` int(11) NULL DEFAULT 0,
  `task_type` tinyint(1) NOT NULL DEFAULT 0,
  `subdata` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `recdata` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `createtime` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_task_poster
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_task_poster`;
CREATE TABLE `ims_ewei_shop_task_poster`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT NULL,
  `days` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `resptype` tinyint(1) NOT NULL DEFAULT 0,
  `resptext` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `resptitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `respthumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `respdesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `respurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` int(11) NULL DEFAULT NULL,
  `waittext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `oktext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `scantext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `beagent` tinyint(1) NOT NULL DEFAULT 0,
  `bedown` tinyint(1) NOT NULL DEFAULT 0,
  `timestart` int(11) NULL DEFAULT NULL,
  `timeend` int(11) NULL DEFAULT NULL,
  `is_repeat` tinyint(1) NULL DEFAULT 0,
  `getposter` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `starttext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `endtext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reward_data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `needcount` int(11) NOT NULL DEFAULT 0,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `poster_type` tinyint(1) NULL DEFAULT 1,
  `reward_days` int(11) NULL DEFAULT 0,
  `titleicon` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `poster_banner` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `is_goods` tinyint(1) NULL DEFAULT 0,
  `autoposter` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_task_poster_qr
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_task_poster_qr`;
CREATE TABLE `ims_ewei_shop_task_poster_qr`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acid` int(11) NOT NULL DEFAULT 0,
  `openid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `posterid` int(11) NOT NULL DEFAULT 0,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `sceneid` int(11) NOT NULL DEFAULT 0,
  `mediaid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ticket` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(11) NULL DEFAULT NULL,
  `qrimg` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `expire` int(11) NULL DEFAULT NULL,
  `endtime` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_task_qr
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_task_qr`;
CREATE TABLE `ims_ewei_shop_task_qr`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `openid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `recordid` int(11) NOT NULL DEFAULT 0,
  `sceneid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mediaid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ticket` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `poster_version` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `recordid`(`recordid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_task_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_task_record`;
CREATE TABLE `ims_ewei_shop_task_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `taskid` int(11) NOT NULL DEFAULT 0,
  `tasktitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `taskimage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `tasktype` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `task_progress` int(11) NOT NULL DEFAULT 0,
  `task_demand` int(11) NOT NULL DEFAULT 0,
  `openid` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `picktime` timestamp(0) NOT NULL,
  `stoptime` timestamp(0) NOT NULL,
  `finishtime` timestamp(0) NOT NULL,
  `reward_data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `followreward_data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `design_data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `design_bg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `require_goods` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `level1` int(11) NOT NULL DEFAULT 0,
  `reward_data1` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `level2` int(11) NOT NULL DEFAULT 0,
  `reward_data2` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `member_group` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `auto_pick` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `taskid`(`taskid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_task_reward
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_task_reward`;
CREATE TABLE `ims_ewei_shop_task_reward`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `taskid` int(11) NOT NULL DEFAULT 0,
  `tasktitle` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `tasktype` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `taskowner` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ownernickname` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `recordid` int(11) NOT NULL DEFAULT 0,
  `nickname` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `headimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `openid` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `reward_type` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `reward_title` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `reward_data` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `get` tinyint(1) NOT NULL DEFAULT 0,
  `sent` tinyint(1) NOT NULL DEFAULT 0,
  `gettime` timestamp(0) NOT NULL,
  `senttime` timestamp(0) NOT NULL,
  `isjoiner` tinyint(1) NOT NULL DEFAULT 0,
  `price` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `level` tinyint(1) NOT NULL DEFAULT 0,
  `read` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `recordid`(`recordid`) USING BTREE,
  INDEX `taskid`(`taskid`) USING BTREE,
  INDEX `get`(`get`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_task_set
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_task_set`;
CREATE TABLE `ims_ewei_shop_task_set`  (
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `entrance` tinyint(1) NOT NULL DEFAULT 0,
  `keyword` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `cover_title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `cover_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `cover_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `msg_pick` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `msg_progress` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `msg_finish` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `msg_follow` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `isnew` tinyint(1) NOT NULL DEFAULT 0,
  `bg_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '../addons/ewei_shopv2/plugin/task/static/images/sky.png',
  `top_notice` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uniacid`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_ewei_shop_task_set
-- ----------------------------
INSERT INTO `ims_ewei_shop_task_set` VALUES (1, 0, '', '', '', '', '', '', '', '', 0, '../addons/ewei_shopv2/plugin/task/static/images/sky.png', 0);

-- ----------------------------
-- Table structure for ims_ewei_shop_task_type
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_task_type`;
CREATE TABLE `ims_ewei_shop_task_type`  (
  `id` int(11) NOT NULL,
  `type_key` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `type_name` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `description` char(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `verb` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `numeric` tinyint(1) NOT NULL DEFAULT 0,
  `unit` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `goods` tinyint(1) NOT NULL DEFAULT 0,
  `theme` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `once` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of ims_ewei_shop_task_type
-- ----------------------------
INSERT INTO `ims_ewei_shop_task_type` VALUES (1, 'poster', '任务海报', '把生成的海报并分享给朋友，朋友扫描并关注公众号即可获得奖励。', '转发海报并吸引', 1, '人关注', 0, 'primary', 0);
INSERT INTO `ims_ewei_shop_task_type` VALUES (2, 'info_phone', '绑定手机', '在个人中心中，绑定手机号，即可完成任务获得奖励。', '绑定手机', 0, '', 0, 'warning', 0);
INSERT INTO `ims_ewei_shop_task_type` VALUES (3, 'order_first', '首次购物', '在商城中首次下单，即可获得奖励，必须确认收货。', '首次在商城中下单购物', 0, '', 0, 'warning', 0);
INSERT INTO `ims_ewei_shop_task_type` VALUES (4, 'recharge_full', '单笔充值满额', '在商城中充值余额，单笔充值满额，即可获得奖励。', '单笔充值满', 1, '元', 0, 'success', 1);
INSERT INTO `ims_ewei_shop_task_type` VALUES (5, 'order_full', '单笔满额', '在商城中下单，单笔满额即可获得奖励，必须确认收货。', '单笔订单满', 1, '元', 0, 'success', 1);
INSERT INTO `ims_ewei_shop_task_type` VALUES (6, 'order_all', '累计消费', '在商城中购物消费，累计满额即可获得奖励，无需确认收货。', '购物总消费额达到', 1, '元', 0, 'success', 0);
INSERT INTO `ims_ewei_shop_task_type` VALUES (7, 'pyramid_money', '分销佣金', '只有分销商可接此任务。累计分销佣金满额，即可完成任务。', '分销商获得佣金金额达', 1, '元', 0, 'primary', 0);
INSERT INTO `ims_ewei_shop_task_type` VALUES (8, 'pyramid_num', '下级人数', '只有分销商可接此任务。累计下级人数达标，即可完成任务。', '分销商推荐下级人数达', 1, '人', 0, 'primary', 0);
INSERT INTO `ims_ewei_shop_task_type` VALUES (9, 'comment', '商品好评', '任意给一个商品五星好评，即可完成任务获得奖励。', '给商品好评', 0, '', 0, 'warning', 0);
INSERT INTO `ims_ewei_shop_task_type` VALUES (10, 'post', '社区发帖', '在社区中发表指定篇帖子，即可完成任务获得奖励。', '在论坛中发表', 1, '篇帖子', 0, 'warning', 0);
INSERT INTO `ims_ewei_shop_task_type` VALUES (11, 'goods', '购买指定商品', '购买指定商品后即可完成任务，必须确认收货。', '购买指定商品', 0, '', 1, 'info', 0);
INSERT INTO `ims_ewei_shop_task_type` VALUES (12, 'recharge_count', '累计充值满额', '在商城中充值余额，累计充值满额，即可获得奖励。', '累计充值满', 1, '元', 0, 'success', 0);

-- ----------------------------
-- Table structure for ims_ewei_shop_upwxapp_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_upwxapp_log`;
CREATE TABLE `ims_ewei_shop_upwxapp_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT NULL,
  `type` tinyint(2) NULL DEFAULT 0,
  `version` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `describe` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `version_time` int(11) NULL DEFAULT NULL,
  `is_goods` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_verifygoods
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_verifygoods`;
CREATE TABLE `ims_ewei_shop_verifygoods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT NULL,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `orderid` int(11) NULL DEFAULT NULL,
  `ordergoodsid` int(11) NULL DEFAULT NULL,
  `storeid` int(11) NULL DEFAULT NULL,
  `starttime` int(11) NULL DEFAULT NULL,
  `limitdays` int(11) NULL DEFAULT NULL,
  `limitnum` int(11) NULL DEFAULT NULL,
  `used` tinyint(1) NULL DEFAULT 0,
  `verifycode` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `codeinvalidtime` int(11) NULL DEFAULT NULL,
  `invalid` tinyint(1) NULL DEFAULT 0,
  `getcard` tinyint(1) NULL DEFAULT 0,
  `activecard` tinyint(1) NULL DEFAULT 0,
  `cardcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `limittype` tinyint(1) NULL DEFAULT 0,
  `limitdate` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `verifycode`(`verifycode`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_verifygoods_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_verifygoods_log`;
CREATE TABLE `ims_ewei_shop_verifygoods_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT NULL,
  `verifygoodsid` int(11) NULL DEFAULT NULL,
  `salerid` int(11) NULL DEFAULT NULL,
  `storeid` int(11) NULL DEFAULT NULL,
  `verifynum` int(11) NULL DEFAULT NULL,
  `verifydate` int(11) NULL DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_version
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_version`;
CREATE TABLE `ims_ewei_shop_version`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `type` tinyint(3) NOT NULL DEFAULT 0,
  `uniacid` int(11) NOT NULL,
  `version` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uid`(`uid`) USING BTREE,
  INDEX `idx_version`(`version`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_ewei_shop_virtual_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_virtual_category`;
CREATE TABLE `ims_ewei_shop_virtual_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `merchid` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_virtual_data
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_virtual_data`;
CREATE TABLE `ims_ewei_shop_virtual_data`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `typeid` int(11) NOT NULL DEFAULT 0,
  `pvalue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `fields` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `usetime` int(11) NOT NULL DEFAULT 0,
  `orderid` int(11) NULL DEFAULT 0,
  `ordersn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `price` decimal(10, 2) NULL DEFAULT 0.00,
  `merchid` int(11) NULL DEFAULT 0,
  `createtime` int(11) NOT NULL,
  `is_top` tinyint(1) NULL DEFAULT 0,
  `sort_time` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_typeid`(`typeid`) USING BTREE,
  INDEX `idx_usetime`(`usetime`) USING BTREE,
  INDEX `idx_orderid`(`orderid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1001 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_virtual_send_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_virtual_send_log`;
CREATE TABLE `ims_ewei_shop_virtual_send_log`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT 0,
  `openid` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `orderid` tinyint(3) UNSIGNED NOT NULL,
  `tag` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `default` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `cusdefault` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `url` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `datas` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `appurl` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sendtime` int(11) NOT NULL DEFAULT 0,
  `createtime` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_virtual_type
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_virtual_type`;
CREATE TABLE `ims_ewei_shop_virtual_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `cate` int(11) NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `fields` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `usedata` int(11) NOT NULL DEFAULT 0,
  `alldata` int(11) NOT NULL DEFAULT 0,
  `merchid` int(11) NULL DEFAULT 0,
  `linktext` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `linkurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recycled` int(11) NOT NULL DEFAULT 0,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_cate`(`cate`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_wxapp_bind
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_wxapp_bind`;
CREATE TABLE `ims_ewei_shop_wxapp_bind`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `wxapp` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_wxapp`(`wxapp`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_wxapp_page
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_wxapp_page`;
CREATE TABLE `ims_ewei_shop_wxapp_page`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `type` tinyint(2) NOT NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `data` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `createtime` int(11) NOT NULL DEFAULT 0,
  `lasttime` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `isdefault` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_type`(`type`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_isdefault`(`isdefault`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_wxapp_poster
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_wxapp_poster`;
CREATE TABLE `ims_ewei_shop_wxapp_poster`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `type` tinyint(3) NOT NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bgimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `createtime` int(11) NOT NULL DEFAULT 0,
  `lastedittime` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `displayorder` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_type`(`type`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_wxapp_startadv
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_wxapp_startadv`;
CREATE TABLE `ims_ewei_shop_wxapp_startadv`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `createtime` int(11) NOT NULL DEFAULT 0,
  `lastedittime` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_wxapp_tmessage
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_wxapp_tmessage`;
CREATE TABLE `ims_ewei_shop_wxapp_tmessage`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `templateid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `datas` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `emphasis_keyword` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_ewei_shop_wxcard
-- ----------------------------
DROP TABLE IF EXISTS `ims_ewei_shop_wxcard`;
CREATE TABLE `ims_ewei_shop_wxcard`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NULL DEFAULT NULL,
  `card_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `displayorder` int(11) NULL DEFAULT NULL,
  `catid` int(11) NULL DEFAULT NULL,
  `card_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `logo_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wxlogourl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `brand_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `code_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `color` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `notice` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `service_phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `datetype` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `begin_timestamp` int(11) NULL DEFAULT NULL,
  `end_timestamp` int(11) NULL DEFAULT NULL,
  `fixed_term` int(11) NULL DEFAULT NULL,
  `fixed_begin_term` int(11) NULL DEFAULT NULL,
  `quantity` int(11) NULL DEFAULT NULL,
  `total_quantity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `use_limit` int(11) NULL DEFAULT NULL,
  `get_limit` int(11) NULL DEFAULT NULL,
  `use_custom_code` tinyint(1) NULL DEFAULT NULL,
  `bind_openid` tinyint(1) NULL DEFAULT NULL,
  `can_share` tinyint(1) NULL DEFAULT NULL,
  `can_give_friend` tinyint(1) NULL DEFAULT NULL,
  `center_title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `center_sub_title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `center_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `setcustom` tinyint(1) NULL DEFAULT NULL,
  `custom_url_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `custom_url_sub_title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `custom_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `setpromotion` tinyint(1) NULL DEFAULT NULL,
  `promotion_url_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `promotion_url_sub_title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `promotion_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `source` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `can_use_with_other_discount` tinyint(1) NULL DEFAULT NULL,
  `setabstract` tinyint(1) NULL DEFAULT NULL,
  `abstract` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `abstractimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon_url_list` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `accept_category` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reject_category` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `least_cost` decimal(10, 2) NULL DEFAULT NULL,
  `reduce_cost` decimal(10, 2) NULL DEFAULT NULL,
  `discount` decimal(10, 2) NULL DEFAULT NULL,
  `limitgoodtype` tinyint(1) NULL DEFAULT 0,
  `limitgoodcatetype` tinyint(1) UNSIGNED NULL DEFAULT 0,
  `limitgoodcateids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `limitgoodids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `limitdiscounttype` tinyint(1) UNSIGNED NULL DEFAULT 0,
  `merchid` int(11) NULL DEFAULT 0,
  `gettype` tinyint(3) NULL DEFAULT NULL,
  `islimitlevel` tinyint(1) NULL DEFAULT 0,
  `limitmemberlevels` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `limitagentlevels` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `limitpartnerlevels` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `limitaagentlevels` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `settitlecolor` tinyint(1) NULL DEFAULT 0,
  `titlecolor` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `tagtitle` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `use_condition` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_images_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_images_reply`;
CREATE TABLE `ims_images_reply`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `rid` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mediaid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `rid`(`rid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_job
-- ----------------------------
DROP TABLE IF EXISTS `ims_job`;
CREATE TABLE `ims_job`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `payload` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) NOT NULL,
  `title` varchar(22) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `handled` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `createtime` int(11) NOT NULL,
  `updatetime` int(11) NOT NULL,
  `endtime` int(11) NOT NULL,
  `uid` int(11) NULL DEFAULT NULL,
  `isdeleted` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_mc_cash_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_cash_record`;
CREATE TABLE `ims_mc_cash_record`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL,
  `clerk_id` int(10) UNSIGNED NOT NULL,
  `store_id` int(10) UNSIGNED NOT NULL,
  `clerk_type` tinyint(3) UNSIGNED NOT NULL,
  `fee` decimal(10, 2) UNSIGNED NOT NULL,
  `final_fee` decimal(10, 2) UNSIGNED NOT NULL,
  `credit1` int(10) UNSIGNED NOT NULL,
  `credit1_fee` decimal(10, 2) UNSIGNED NOT NULL,
  `credit2` decimal(10, 2) UNSIGNED NOT NULL,
  `cash` decimal(10, 2) UNSIGNED NOT NULL,
  `return_cash` decimal(10, 2) UNSIGNED NOT NULL,
  `final_cash` decimal(10, 2) UNSIGNED NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  `trade_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_mc_chats_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_chats_record`;
CREATE TABLE `ims_mc_chats_record`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `acid` int(10) UNSIGNED NOT NULL,
  `flag` tinyint(3) UNSIGNED NOT NULL,
  `openid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `msgtype` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`, `acid`) USING BTREE,
  INDEX `openid`(`openid`) USING BTREE,
  INDEX `createtime`(`createtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_mc_credits_recharge
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_credits_recharge`;
CREATE TABLE `ims_mc_credits_recharge`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `transid` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fee` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tag` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  `backtype` tinyint(3) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid_uid`(`uniacid`, `uid`) USING BTREE,
  INDEX `idx_tid`(`tid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_mc_credits_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_credits_record`;
CREATE TABLE `ims_mc_credits_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(10) UNSIGNED NOT NULL,
  `uniacid` int(11) NOT NULL,
  `credittype` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `num` decimal(10, 2) NOT NULL,
  `operator` int(10) UNSIGNED NOT NULL,
  `module` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `clerk_id` int(10) UNSIGNED NOT NULL,
  `store_id` int(10) UNSIGNED NOT NULL,
  `clerk_type` tinyint(3) UNSIGNED NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `real_uniacid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_mc_fans_groups
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_fans_groups`;
CREATE TABLE `ims_mc_fans_groups`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `acid` int(10) UNSIGNED NOT NULL,
  `groups` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_mc_fans_tag_mapping
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_fans_tag_mapping`;
CREATE TABLE `ims_mc_fans_tag_mapping`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fanid` int(11) UNSIGNED NOT NULL,
  `tagid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `mapping`(`fanid`, `tagid`) USING BTREE,
  INDEX `fanid_index`(`fanid`) USING BTREE,
  INDEX `tagid_index`(`tagid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_mc_groups
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_groups`;
CREATE TABLE `ims_mc_groups`  (
  `groupid` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `credit` int(10) UNSIGNED NOT NULL,
  `isdefault` tinyint(4) NOT NULL,
  PRIMARY KEY (`groupid`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_mc_groups
-- ----------------------------
INSERT INTO `ims_mc_groups` VALUES (1, 1, '默认会员组', 0, 1);

-- ----------------------------
-- Table structure for ims_mc_handsel
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_handsel`;
CREATE TABLE `ims_mc_handsel`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `touid` int(10) UNSIGNED NOT NULL,
  `fromuid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `module` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sign` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `credit_value` int(10) UNSIGNED NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uid`(`touid`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_mc_mapping_fans
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_mapping_fans`;
CREATE TABLE `ims_mc_mapping_fans`  (
  `fanid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `acid` int(10) UNSIGNED NOT NULL,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `groupid` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `salt` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `follow` tinyint(1) UNSIGNED NOT NULL,
  `followtime` int(10) UNSIGNED NOT NULL,
  `unfollowtime` int(10) UNSIGNED NOT NULL,
  `tag` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `updatetime` int(10) UNSIGNED NULL DEFAULT NULL,
  `unionid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`fanid`) USING BTREE,
  UNIQUE INDEX `openid_2`(`openid`) USING BTREE,
  INDEX `acid`(`acid`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `nickname`(`nickname`) USING BTREE,
  INDEX `updatetime`(`updatetime`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `openid`(`openid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_mc_mapping_ucenter
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_mapping_ucenter`;
CREATE TABLE `ims_mc_mapping_ucenter`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL,
  `centeruid` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_mc_mass_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_mass_record`;
CREATE TABLE `ims_mc_mass_record`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `acid` int(10) UNSIGNED NOT NULL,
  `groupname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fansnum` int(10) UNSIGNED NOT NULL,
  `msgtype` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `group` int(10) NOT NULL,
  `attach_id` int(10) UNSIGNED NOT NULL,
  `media_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `cron_id` int(10) UNSIGNED NOT NULL,
  `sendtime` int(10) UNSIGNED NOT NULL,
  `finalsendtime` int(10) UNSIGNED NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`, `acid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_mc_member_address
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_member_address`;
CREATE TABLE `ims_mc_member_address`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `uid` int(50) UNSIGNED NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `zipcode` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `province` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `city` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `district` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `isdefault` tinyint(1) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uinacid`(`uniacid`) USING BTREE,
  INDEX `idx_uid`(`uid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_mc_member_fields
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_member_fields`;
CREATE TABLE `ims_mc_member_fields`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `fieldid` int(10) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `available` tinyint(1) NOT NULL,
  `displayorder` smallint(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_fieldid`(`fieldid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_mc_member_property
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_member_property`;
CREATE TABLE `ims_mc_member_property`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `property` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_mc_members
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_members`;
CREATE TABLE `ims_mc_members`  (
  `uid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `mobile` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `salt` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `groupid` int(11) NOT NULL,
  `credit1` decimal(10, 2) UNSIGNED NOT NULL,
  `credit2` decimal(10, 2) UNSIGNED NOT NULL,
  `credit3` decimal(10, 2) UNSIGNED NOT NULL,
  `credit4` decimal(10, 2) UNSIGNED NOT NULL,
  `credit5` decimal(10, 2) UNSIGNED NOT NULL,
  `credit6` decimal(10, 2) NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  `realname` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `qq` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `vip` tinyint(3) UNSIGNED NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `birthyear` smallint(6) UNSIGNED NOT NULL,
  `birthmonth` tinyint(3) UNSIGNED NOT NULL,
  `birthday` tinyint(3) UNSIGNED NOT NULL,
  `constellation` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `zodiac` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `telephone` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `idcard` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `studentid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `grade` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `zipcode` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nationality` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `resideprovince` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `residecity` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `residedist` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `graduateschool` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `company` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `education` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `occupation` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `position` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `revenue` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `affectivestatus` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lookingfor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bloodtype` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `height` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `weight` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `alipay` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `msn` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `taobao` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `site` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bio` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `interest` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pay_password` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`uid`) USING BTREE,
  INDEX `groupid`(`groupid`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `email`(`email`) USING BTREE,
  INDEX `mobile`(`mobile`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_mc_oauth_fans
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_oauth_fans`;
CREATE TABLE `ims_mc_oauth_fans`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `oauth_openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `acid` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_oauthopenid_acid`(`oauth_openid`, `acid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_menu_event
-- ----------------------------
DROP TABLE IF EXISTS `ims_menu_event`;
CREATE TABLE `ims_menu_event`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `keyword` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `picmd5` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `openid` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `picmd5`(`picmd5`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_message_notice_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_message_notice_log`;
CREATE TABLE `ims_message_notice_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_read` tinyint(3) NOT NULL,
  `uid` int(11) NOT NULL,
  `sign` varchar(22) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` tinyint(3) NOT NULL,
  `status` tinyint(3) NULL DEFAULT NULL,
  `create_time` int(11) NOT NULL,
  `end_time` int(11) NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_mobilenumber
-- ----------------------------
DROP TABLE IF EXISTS `ims_mobilenumber`;
CREATE TABLE `ims_mobilenumber`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(10) NOT NULL,
  `enabled` tinyint(1) UNSIGNED NOT NULL,
  `dateline` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_modules
-- ----------------------------
DROP TABLE IF EXISTS `ims_modules`;
CREATE TABLE `ims_modules`  (
  `mid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `version` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ability` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `settings` tinyint(1) NOT NULL,
  `subscribes` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `handles` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `isrulefields` tinyint(1) NOT NULL,
  `issystem` tinyint(1) UNSIGNED NOT NULL,
  `target` int(10) UNSIGNED NOT NULL,
  `iscard` tinyint(3) UNSIGNED NOT NULL,
  `permissions` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title_initial` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `wxapp_support` tinyint(1) NOT NULL,
  `welcome_support` int(2) NOT NULL,
  `oauth_type` tinyint(1) NOT NULL,
  `webapp_support` tinyint(1) NOT NULL,
  `phoneapp_support` tinyint(1) NOT NULL,
  `account_support` tinyint(1) NOT NULL,
  `xzapp_support` tinyint(1) NOT NULL,
  `app_support` tinyint(1) NOT NULL,
  `aliapp_support` tinyint(1) NOT NULL,
  PRIMARY KEY (`mid`) USING BTREE,
  INDEX `idx_name`(`name`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_modules
-- ----------------------------
INSERT INTO `ims_modules` VALUES (1, 'basic', 'system', '基本文字回复', '1.0', '和您进行简单对话', '一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的回复内容.', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 1, 1, 0, 0, '', '', 1, 1, 1, 1, 0, 2, 0, 0, 0);
INSERT INTO `ims_modules` VALUES (2, 'news', 'system', '基本混合图文回复', '1.0', '为你提供生动的图文资讯', '一问一答得简单对话, 但是回复内容包括图片文字等更生动的媒体内容. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的图文回复内容.', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 1, 1, 0, 0, '', '', 1, 1, 1, 1, 0, 2, 0, 0, 0);
INSERT INTO `ims_modules` VALUES (3, 'music', 'system', '基本音乐回复', '1.0', '提供语音、音乐等音频类回复', '在回复规则中可选择具有语音、音乐等音频类的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝，实现一问一答得简单对话。', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 1, 1, 0, 0, '', '', 1, 1, 1, 1, 0, 2, 0, 0, 0);
INSERT INTO `ims_modules` VALUES (4, 'userapi', 'system', '自定义接口回复', '1.1', '更方便的第三方接口设置', '自定义接口又称第三方接口，可以让开发者更方便的接入微擎系统，高效的与微信公众平台进行对接整合。', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 1, 1, 0, 0, '', '', 1, 1, 1, 1, 0, 2, 0, 0, 0);
INSERT INTO `ims_modules` VALUES (5, 'recharge', 'system', '会员中心充值模块', '1.0', '提供会员充值功能', '', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 0, 1, 0, 0, '', '', 1, 1, 1, 1, 0, 2, 0, 0, 0);
INSERT INTO `ims_modules` VALUES (6, 'custom', 'system', '多客服转接', '1.0.0', '用来接入腾讯的多客服系统', '', 'WeEngine Team', 'http://bbs.we7.cc', 0, 'a:0:{}', 'a:6:{i:0;s:5:\"image\";i:1;s:5:\"voice\";i:2;s:5:\"video\";i:3;s:8:\"location\";i:4;s:4:\"link\";i:5;s:4:\"text\";}', 1, 1, 0, 0, '', '', 1, 1, 1, 1, 0, 2, 0, 0, 0);
INSERT INTO `ims_modules` VALUES (7, 'images', 'system', '基本图片回复', '1.0', '提供图片回复', '在回复规则中可选择具有图片的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝图片。', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 1, 1, 0, 0, '', '', 1, 1, 1, 1, 0, 2, 0, 0, 0);
INSERT INTO `ims_modules` VALUES (8, 'video', 'system', '基本视频回复', '1.0', '提供图片回复', '在回复规则中可选择具有视频的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝视频。', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 1, 1, 0, 0, '', '', 1, 1, 1, 1, 0, 2, 0, 0, 0);
INSERT INTO `ims_modules` VALUES (9, 'voice', 'system', '基本语音回复', '1.0', '提供语音回复', '在回复规则中可选择具有语音的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝语音。', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 1, 1, 0, 0, '', '', 1, 1, 1, 1, 0, 2, 0, 0, 0);
INSERT INTO `ims_modules` VALUES (10, 'chats', 'system', '发送客服消息', '1.0', '公众号可以在粉丝最后发送消息的48小时内无限制发送消息', '', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 0, 1, 0, 0, '', '', 1, 1, 1, 1, 0, 2, 0, 0, 0);
INSERT INTO `ims_modules` VALUES (11, 'wxcard', 'system', '微信卡券回复', '1.0', '微信卡券回复', '微信卡券回复', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 1, 1, 0, 0, '', '', 1, 1, 1, 1, 0, 2, 0, 0, 0);
INSERT INTO `ims_modules` VALUES (12, 'store', 'business', '站内商城', '1.0', '站内商城', '站内商城', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 0, 1, 0, 0, '', '', 1, 1, 1, 1, 0, 2, 0, 0, 0);
INSERT INTO `ims_modules` VALUES (13, 'ewei_shopv2', 'business', '人人商城V3', '3.15.4', '人人商城(分销),多用户分权，淘宝商品一键转换，多种插件支持。', '人人商城(分销)，多项信息模板，强大的自定义规格设置', '源码家园', 'http://www.linxincn.com', 0, 'a:14:{i:0;s:4:\"text\";i:1;s:5:\"image\";i:2;s:5:\"voice\";i:3;s:5:\"video\";i:4;s:10:\"shortvideo\";i:5;s:8:\"location\";i:6;s:4:\"link\";i:7;s:9:\"subscribe\";i:8;s:11:\"unsubscribe\";i:9;s:2:\"qr\";i:10;s:5:\"trace\";i:11;s:5:\"click\";i:12;s:4:\"view\";i:13;s:14:\"merchant_order\";}', 'a:12:{i:0;s:4:\"text\";i:1;s:5:\"image\";i:2;s:5:\"voice\";i:3;s:5:\"video\";i:4;s:10:\"shortvideo\";i:5;s:8:\"location\";i:6;s:4:\"link\";i:7;s:9:\"subscribe\";i:8;s:2:\"qr\";i:9;s:5:\"trace\";i:10;s:5:\"click\";i:11;s:14:\"merchant_order\";}', 0, 0, 0, 0, 'a:0:{}', 'R', 1, 1, 1, 1, 1, 2, 1, 0, 1);

-- ----------------------------
-- Table structure for ims_modules_bindings
-- ----------------------------
DROP TABLE IF EXISTS `ims_modules_bindings`;
CREATE TABLE `ims_modules_bindings`  (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `entry` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `call` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `do` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `state` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `direct` int(11) NOT NULL,
  `url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `displayorder` tinyint(255) UNSIGNED NOT NULL,
  PRIMARY KEY (`eid`) USING BTREE,
  INDEX `idx_module`(`module`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_modules_bindings
-- ----------------------------
INSERT INTO `ims_modules_bindings` VALUES (1, 'ewei_shopv2', 'menu', '', '后台管理', 'web', '', 0, '', 'fa fa-puzzle-piece', 0);

-- ----------------------------
-- Table structure for ims_modules_cloud
-- ----------------------------
DROP TABLE IF EXISTS `ims_modules_cloud`;
CREATE TABLE `ims_modules_cloud`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title_initial` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `logo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `version` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `install_status` tinyint(4) NOT NULL,
  `account_support` tinyint(4) NOT NULL,
  `wxapp_support` tinyint(4) NOT NULL,
  `webapp_support` tinyint(4) NOT NULL,
  `phoneapp_support` tinyint(4) NOT NULL,
  `welcome_support` tinyint(4) NOT NULL,
  `main_module_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `main_module_logo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `has_new_version` tinyint(1) NOT NULL,
  `has_new_branch` tinyint(1) NOT NULL,
  `is_ban` tinyint(4) NOT NULL,
  `lastupdatetime` int(11) NOT NULL,
  `xzapp_support` tinyint(1) NOT NULL,
  `cloud_id` int(11) NOT NULL,
  `aliapp_support` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name`(`name`) USING BTREE,
  INDEX `lastupdatetime`(`lastupdatetime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_modules_ignore
-- ----------------------------
DROP TABLE IF EXISTS `ims_modules_ignore`;
CREATE TABLE `ims_modules_ignore`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `version` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name`(`name`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_modules_plugin
-- ----------------------------
DROP TABLE IF EXISTS `ims_modules_plugin`;
CREATE TABLE `ims_modules_plugin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `main_module` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name`(`name`) USING BTREE,
  INDEX `main_module`(`main_module`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_modules_rank
-- ----------------------------
DROP TABLE IF EXISTS `ims_modules_rank`;
CREATE TABLE `ims_modules_rank`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `module_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uid` int(10) NOT NULL,
  `rank` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `module_name`(`module_name`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_modules_recycle
-- ----------------------------
DROP TABLE IF EXISTS `ims_modules_recycle`;
CREATE TABLE `ims_modules_recycle`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` tinyint(4) NOT NULL,
  `modulename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name`(`name`) USING BTREE,
  INDEX `modulename`(`modulename`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_music_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_music_reply`;
CREATE TABLE `ims_music_reply`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `rid` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hqurl` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `rid`(`rid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_news_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_news_reply`;
CREATE TABLE `ims_news_reply`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `rid` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `author` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumb` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `displayorder` int(10) NOT NULL,
  `incontent` tinyint(1) NOT NULL,
  `createtime` int(10) NOT NULL,
  `media_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `rid`(`rid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_phoneapp_versions
-- ----------------------------
DROP TABLE IF EXISTS `ims_phoneapp_versions`;
CREATE TABLE `ims_phoneapp_versions`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `version` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `modules` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `version`(`version`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_profile_fields
-- ----------------------------
DROP TABLE IF EXISTS `ims_profile_fields`;
CREATE TABLE `ims_profile_fields`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `field` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `available` tinyint(1) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `displayorder` smallint(6) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `unchangeable` tinyint(1) NOT NULL,
  `showinregister` tinyint(1) NOT NULL,
  `field_length` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_profile_fields
-- ----------------------------
INSERT INTO `ims_profile_fields` VALUES (1, 'realname', 1, '真实姓名', '', 0, 1, 1, 1, 0);
INSERT INTO `ims_profile_fields` VALUES (2, 'nickname', 1, '昵称', '', 1, 1, 0, 1, 0);
INSERT INTO `ims_profile_fields` VALUES (3, 'avatar', 1, '头像', '', 1, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (4, 'qq', 1, 'QQ号', '', 0, 0, 0, 1, 0);
INSERT INTO `ims_profile_fields` VALUES (5, 'mobile', 1, '手机号码', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (6, 'vip', 1, 'VIP级别', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (7, 'gender', 1, '性别', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (8, 'birthyear', 1, '出生生日', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (9, 'constellation', 1, '星座', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (10, 'zodiac', 1, '生肖', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (11, 'telephone', 1, '固定电话', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (12, 'idcard', 1, '证件号码', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (13, 'studentid', 1, '学号', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (14, 'grade', 1, '班级', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (15, 'address', 1, '邮寄地址', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (16, 'zipcode', 1, '邮编', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (17, 'nationality', 1, '国籍', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (18, 'resideprovince', 1, '居住地址', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (19, 'graduateschool', 1, '毕业学校', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (20, 'company', 1, '公司', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (21, 'education', 1, '学历', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (22, 'occupation', 1, '职业', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (23, 'position', 1, '职位', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (24, 'revenue', 1, '年收入', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (25, 'affectivestatus', 1, '情感状态', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (26, 'lookingfor', 1, ' 交友目的', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (27, 'bloodtype', 1, '血型', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (28, 'height', 1, '身高', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (29, 'weight', 1, '体重', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (30, 'alipay', 1, '支付宝帐号', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (31, 'msn', 1, 'MSN', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (32, 'email', 1, '电子邮箱', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (33, 'taobao', 1, '阿里旺旺', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (34, 'site', 1, '主页', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (35, 'bio', 1, '自我介绍', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (36, 'interest', 1, '兴趣爱好', '', 0, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for ims_qrcode
-- ----------------------------
DROP TABLE IF EXISTS `ims_qrcode`;
CREATE TABLE `ims_qrcode`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `acid` int(10) UNSIGNED NOT NULL,
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `extra` int(10) UNSIGNED NOT NULL,
  `qrcid` bigint(20) NOT NULL,
  `scene_str` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `keyword` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` tinyint(1) UNSIGNED NOT NULL,
  `ticket` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire` int(10) UNSIGNED NOT NULL,
  `subnum` int(10) UNSIGNED NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_qrcid`(`qrcid`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `ticket`(`ticket`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_qrcode_stat
-- ----------------------------
DROP TABLE IF EXISTS `ims_qrcode_stat`;
CREATE TABLE `ims_qrcode_stat`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `acid` int(10) UNSIGNED NOT NULL,
  `qid` int(10) UNSIGNED NOT NULL,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` tinyint(1) UNSIGNED NOT NULL,
  `qrcid` bigint(20) UNSIGNED NOT NULL,
  `scene_str` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_rule
-- ----------------------------
DROP TABLE IF EXISTS `ims_rule`;
CREATE TABLE `ims_rule`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `module` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `displayorder` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL,
  `containtype` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `reply_type` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_rule
-- ----------------------------
INSERT INTO `ims_rule` VALUES (1, 0, '城市天气', 'userapi', 255, 1, '', 0);
INSERT INTO `ims_rule` VALUES (2, 0, '百度百科', 'userapi', 255, 1, '', 0);
INSERT INTO `ims_rule` VALUES (3, 0, '即时翻译', 'userapi', 255, 1, '', 0);
INSERT INTO `ims_rule` VALUES (4, 0, '今日老黄历', 'userapi', 255, 1, '', 0);
INSERT INTO `ims_rule` VALUES (5, 0, '看新闻', 'userapi', 255, 1, '', 0);
INSERT INTO `ims_rule` VALUES (6, 0, '快递查询', 'userapi', 255, 1, '', 0);
INSERT INTO `ims_rule` VALUES (7, 1, '个人中心入口设置', 'cover', 0, 1, '', 0);
INSERT INTO `ims_rule` VALUES (8, 1, '微擎团队入口设置', 'cover', 0, 1, '', 0);

-- ----------------------------
-- Table structure for ims_rule_keyword
-- ----------------------------
DROP TABLE IF EXISTS `ims_rule_keyword`;
CREATE TABLE `ims_rule_keyword`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `rid` int(10) UNSIGNED NOT NULL,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `module` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` tinyint(1) UNSIGNED NOT NULL,
  `displayorder` tinyint(3) UNSIGNED NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_content`(`content`) USING BTREE,
  INDEX `rid`(`rid`) USING BTREE,
  INDEX `idx_rid`(`rid`) USING BTREE,
  INDEX `idx_uniacid_type_content`(`uniacid`, `type`, `content`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_rule_keyword
-- ----------------------------
INSERT INTO `ims_rule_keyword` VALUES (1, 1, 0, 'userapi', '^.+天气$', 3, 255, 1);
INSERT INTO `ims_rule_keyword` VALUES (2, 2, 0, 'userapi', '^百科.+$', 3, 255, 1);
INSERT INTO `ims_rule_keyword` VALUES (3, 2, 0, 'userapi', '^定义.+$', 3, 255, 1);
INSERT INTO `ims_rule_keyword` VALUES (4, 3, 0, 'userapi', '^@.+$', 3, 255, 1);
INSERT INTO `ims_rule_keyword` VALUES (5, 4, 0, 'userapi', '日历', 1, 255, 1);
INSERT INTO `ims_rule_keyword` VALUES (6, 4, 0, 'userapi', '万年历', 1, 255, 1);
INSERT INTO `ims_rule_keyword` VALUES (7, 4, 0, 'userapi', '黄历', 1, 255, 1);
INSERT INTO `ims_rule_keyword` VALUES (8, 4, 0, 'userapi', '几号', 1, 255, 1);
INSERT INTO `ims_rule_keyword` VALUES (9, 5, 0, 'userapi', '新闻', 1, 255, 1);
INSERT INTO `ims_rule_keyword` VALUES (10, 6, 0, 'userapi', '^(申通|圆通|中通|汇通|韵达|顺丰|EMS) *[a-z0-9]{1,}$', 3, 255, 1);
INSERT INTO `ims_rule_keyword` VALUES (11, 7, 1, 'cover', '个人中心', 1, 0, 1);
INSERT INTO `ims_rule_keyword` VALUES (12, 8, 1, 'cover', '首页', 1, 0, 1);

-- ----------------------------
-- Table structure for ims_site_article
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_article`;
CREATE TABLE `ims_site_article`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `rid` int(10) UNSIGNED NOT NULL,
  `kid` int(10) UNSIGNED NOT NULL,
  `iscommend` tinyint(1) NOT NULL,
  `ishot` tinyint(1) UNSIGNED NOT NULL,
  `pcate` int(10) UNSIGNED NOT NULL,
  `ccate` int(10) UNSIGNED NOT NULL,
  `template` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `incontent` tinyint(1) NOT NULL,
  `source` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `displayorder` int(10) UNSIGNED NOT NULL,
  `linkurl` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  `edittime` int(10) NOT NULL,
  `click` int(10) UNSIGNED NOT NULL,
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `credit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_iscommend`(`iscommend`) USING BTREE,
  INDEX `idx_ishot`(`ishot`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_site_article_comment
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_article_comment`;
CREATE TABLE `ims_site_article_comment`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `articleid` int(10) NOT NULL,
  `parentid` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `is_read` tinyint(1) NOT NULL,
  `iscomment` tinyint(1) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `articleid`(`articleid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_site_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_category`;
CREATE TABLE `ims_site_category`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `nid` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `parentid` int(10) UNSIGNED NOT NULL,
  `displayorder` tinyint(3) UNSIGNED NOT NULL,
  `enabled` tinyint(1) UNSIGNED NOT NULL,
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `styleid` int(10) UNSIGNED NOT NULL,
  `linkurl` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ishomepage` tinyint(1) NOT NULL,
  `icontype` tinyint(1) UNSIGNED NOT NULL,
  `css` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `multiid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_site_multi
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_multi`;
CREATE TABLE `ims_site_multi`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `styleid` int(10) UNSIGNED NOT NULL,
  `site_info` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `bindhost` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `bindhost`(`bindhost`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_site_multi
-- ----------------------------
INSERT INTO `ims_site_multi` VALUES (1, 1, '微擎团队', 1, '', 1, '');

-- ----------------------------
-- Table structure for ims_site_nav
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_nav`;
CREATE TABLE `ims_site_nav`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `multiid` int(10) UNSIGNED NOT NULL,
  `section` tinyint(4) NOT NULL,
  `module` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `displayorder` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `position` tinyint(4) NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `icon` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `css` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL,
  `categoryid` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `multiid`(`multiid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_site_page
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_page`;
CREATE TABLE `ims_site_page`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `multiid` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `params` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `html` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `multipage` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` tinyint(1) UNSIGNED NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  `goodnum` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `multiid`(`multiid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_site_slide
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_slide`;
CREATE TABLE `ims_site_slide`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `multiid` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `displayorder` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `multiid`(`multiid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_site_store_create_account
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_store_create_account`;
CREATE TABLE `ims_site_store_create_account`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `uniacid` int(10) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `endtime` int(12) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_site_store_goods
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_store_goods`;
CREATE TABLE `ims_site_store_goods`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `module` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `account_num` int(10) NOT NULL,
  `wxapp_num` int(10) NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `unit` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slide` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category_id` int(10) NOT NULL,
  `title_initial` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createtime` int(10) NOT NULL,
  `synopsis` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `module_group` int(10) NOT NULL,
  `api_num` int(10) NOT NULL,
  `user_group` int(10) NOT NULL,
  `user_group_price` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `module`(`module`) USING BTREE,
  INDEX `category_id`(`category_id`) USING BTREE,
  INDEX `price`(`price`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_site_store_order
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_store_order`;
CREATE TABLE `ims_site_store_order`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `orderid` varchar(28) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goodsid` int(10) NOT NULL,
  `duration` int(10) NOT NULL,
  `buyer` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `buyerid` int(10) NOT NULL,
  `amount` decimal(10, 2) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `changeprice` tinyint(1) NOT NULL,
  `createtime` int(10) NOT NULL,
  `uniacid` int(10) NOT NULL,
  `endtime` int(15) NOT NULL,
  `wxapp` int(15) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `goodid`(`goodsid`) USING BTREE,
  INDEX `buyerid`(`buyerid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_site_styles
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_styles`;
CREATE TABLE `ims_site_styles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `templateid` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_site_styles
-- ----------------------------
INSERT INTO `ims_site_styles` VALUES (1, 1, 1, '微站默认模板_gC5C');

-- ----------------------------
-- Table structure for ims_site_styles_vars
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_styles_vars`;
CREATE TABLE `ims_site_styles_vars`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `templateid` int(10) UNSIGNED NOT NULL,
  `styleid` int(10) UNSIGNED NOT NULL,
  `variable` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_site_templates
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_templates`;
CREATE TABLE `ims_site_templates`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `version` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sections` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_site_templates
-- ----------------------------
INSERT INTO `ims_site_templates` VALUES (1, 'default', '微站默认模板', '', '由微擎提供默认微站模板套系', '微擎团队', 'http://we7.cc', '1', 0);

-- ----------------------------
-- Table structure for ims_stat_fans
-- ----------------------------
DROP TABLE IF EXISTS `ims_stat_fans`;
CREATE TABLE `ims_stat_fans`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `new` int(10) UNSIGNED NOT NULL,
  `cancel` int(10) UNSIGNED NOT NULL,
  `cumulate` int(10) NOT NULL,
  `date` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`, `date`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_stat_fans
-- ----------------------------
INSERT INTO `ims_stat_fans` VALUES (1, 1, 0, 0, 0, '20191104');
INSERT INTO `ims_stat_fans` VALUES (2, 1, 0, 0, 0, '20191103');
INSERT INTO `ims_stat_fans` VALUES (3, 1, 0, 0, 0, '20191102');
INSERT INTO `ims_stat_fans` VALUES (4, 1, 0, 0, 0, '20191101');
INSERT INTO `ims_stat_fans` VALUES (5, 1, 0, 0, 0, '20191031');
INSERT INTO `ims_stat_fans` VALUES (6, 1, 0, 0, 0, '20191030');
INSERT INTO `ims_stat_fans` VALUES (7, 1, 0, 0, 0, '20191029');
INSERT INTO `ims_stat_fans` VALUES (8, 1, 0, 0, 0, '20191111');
INSERT INTO `ims_stat_fans` VALUES (9, 1, 0, 0, 0, '20191110');
INSERT INTO `ims_stat_fans` VALUES (10, 1, 0, 0, 0, '20191109');
INSERT INTO `ims_stat_fans` VALUES (11, 1, 0, 0, 0, '20191108');
INSERT INTO `ims_stat_fans` VALUES (12, 1, 0, 0, 0, '20191107');
INSERT INTO `ims_stat_fans` VALUES (13, 1, 0, 0, 0, '20191106');
INSERT INTO `ims_stat_fans` VALUES (14, 1, 0, 0, 0, '20191105');

-- ----------------------------
-- Table structure for ims_stat_keyword
-- ----------------------------
DROP TABLE IF EXISTS `ims_stat_keyword`;
CREATE TABLE `ims_stat_keyword`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `rid` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kid` int(10) UNSIGNED NOT NULL,
  `hit` int(10) UNSIGNED NOT NULL,
  `lastupdate` int(10) UNSIGNED NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_stat_msg_history
-- ----------------------------
DROP TABLE IF EXISTS `ims_stat_msg_history`;
CREATE TABLE `ims_stat_msg_history`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `rid` int(10) UNSIGNED NOT NULL,
  `kid` int(10) UNSIGNED NOT NULL,
  `from_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `module` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `message` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_stat_rule
-- ----------------------------
DROP TABLE IF EXISTS `ims_stat_rule`;
CREATE TABLE `ims_stat_rule`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `rid` int(10) UNSIGNED NOT NULL,
  `hit` int(10) UNSIGNED NOT NULL,
  `lastupdate` int(10) UNSIGNED NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE,
  INDEX `rid`(`rid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_stat_visit
-- ----------------------------
DROP TABLE IF EXISTS `ims_stat_visit`;
CREATE TABLE `ims_stat_visit`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `module` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `count` int(10) UNSIGNED NOT NULL,
  `date` int(10) UNSIGNED NOT NULL,
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `date`(`date`) USING BTREE,
  INDEX `module`(`module`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_stat_visit
-- ----------------------------
INSERT INTO `ims_stat_visit` VALUES (2, 0, '', 18, 20191105, 'web');
INSERT INTO `ims_stat_visit` VALUES (3, 1, 'we7_account', 10, 20191105, 'web');
INSERT INTO `ims_stat_visit` VALUES (4, 1, '', 9, 20191112, 'web');
INSERT INTO `ims_stat_visit` VALUES (5, 1, 'we7_account', 3, 20191112, 'web');
INSERT INTO `ims_stat_visit` VALUES (6, 0, '', 4, 20191129, 'web');

-- ----------------------------
-- Table structure for ims_system_stat_visit
-- ----------------------------
DROP TABLE IF EXISTS `ims_system_stat_visit`;
CREATE TABLE `ims_system_stat_visit`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `modulename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uid` int(10) NOT NULL,
  `displayorder` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  `updatetime` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_uni_account
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_account`;
CREATE TABLE `ims_uni_account`  (
  `uniacid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `groupid` int(10) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `default_acid` int(10) UNSIGNED NOT NULL,
  `rank` int(10) NULL DEFAULT NULL,
  `title_initial` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_uni_account
-- ----------------------------
INSERT INTO `ims_uni_account` VALUES (1, -1, '微擎团队', '一个朝气蓬勃的团队', 1, NULL, 'W');

-- ----------------------------
-- Table structure for ims_uni_account_group
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_account_group`;
CREATE TABLE `ims_uni_account_group`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `groupid` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ims_uni_account_menus
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_account_menus`;
CREATE TABLE `ims_uni_account_menus`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `menuid` int(10) UNSIGNED NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` tinyint(3) UNSIGNED NOT NULL,
  `group_id` int(10) NOT NULL,
  `client_platform_type` tinyint(3) UNSIGNED NOT NULL,
  `area` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  `isdeleted` tinyint(3) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `menuid`(`menuid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_uni_account_modules
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_account_modules`;
CREATE TABLE `ims_uni_account_modules`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `module` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `enabled` tinyint(1) UNSIGNED NOT NULL,
  `settings` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `shortcut` tinyint(1) UNSIGNED NOT NULL,
  `displayorder` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_module`(`module`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_uni_account_users
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_account_users`;
CREATE TABLE `ims_uni_account_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL,
  `role` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rank` tinyint(3) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_memberid`(`uid`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_uni_group
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_group`;
CREATE TABLE `ims_uni_group`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `owner_uid` int(10) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `modules` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `templates` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_uni_group
-- ----------------------------
INSERT INTO `ims_uni_group` VALUES (1, 0, '体验套餐服务', 'a:5:{s:7:\"modules\";a:1:{i:0;s:11:\"ewei_shopv2\";}s:5:\"wxapp\";a:1:{i:0;s:11:\"ewei_shopv2\";}s:6:\"webapp\";a:1:{i:0;s:11:\"ewei_shopv2\";}s:5:\"xzapp\";a:1:{i:0;s:11:\"ewei_shopv2\";}s:8:\"phoneapp\";a:1:{i:0;s:11:\"ewei_shopv2\";}}', 'N;', 0, 0);

-- ----------------------------
-- Table structure for ims_uni_settings
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_settings`;
CREATE TABLE `ims_uni_settings`  (
  `uniacid` int(10) UNSIGNED NOT NULL,
  `passport` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `oauth` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jsauth_acid` int(10) UNSIGNED NOT NULL,
  `uc` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `notify` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `creditnames` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `creditbehaviors` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `welcome` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `default` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `default_message` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `payment` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stat` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `default_site` int(10) UNSIGNED NULL DEFAULT NULL,
  `sync` tinyint(3) UNSIGNED NOT NULL,
  `recharge` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tplnotice` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `grouplevel` tinyint(3) UNSIGNED NOT NULL,
  `mcplugin` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `exchange_enable` tinyint(3) UNSIGNED NOT NULL,
  `coupon_type` tinyint(3) UNSIGNED NOT NULL,
  `menuset` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `statistics` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bind_domain` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `comment_status` tinyint(1) NOT NULL,
  `reply_setting` tinyint(4) NOT NULL,
  `default_module` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `attachment_limit` int(11) NULL DEFAULT NULL,
  `attachment_size` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uniacid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_uni_settings
-- ----------------------------
INSERT INTO `ims_uni_settings` VALUES (1, 'a:3:{s:8:\"focusreg\";i:0;s:4:\"item\";s:5:\"email\";s:4:\"type\";s:8:\"password\";}', 'a:2:{s:6:\"status\";s:1:\"0\";s:7:\"account\";s:1:\"0\";}', 0, 'a:1:{s:6:\"status\";i:0;}', 'a:1:{s:3:\"sms\";a:2:{s:7:\"balance\";i:0;s:9:\"signature\";s:0:\"\";}}', 'a:5:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}s:7:\"credit3\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit4\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit5\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}}', 'a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}', '', '', '', 'a:4:{s:6:\"credit\";a:1:{s:6:\"switch\";b:0;}s:6:\"alipay\";a:4:{s:6:\"switch\";b:0;s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:6:\"wechat\";a:5:{s:6:\"switch\";b:0;s:7:\"account\";b:0;s:7:\"signkey\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:3:\"key\";s:0:\"\";}s:8:\"delivery\";a:1:{s:6:\"switch\";b:0;}}', '', 1, 0, '', '', 0, '', 0, 0, '', '', '', 0, 0, '', NULL, NULL);

-- ----------------------------
-- Table structure for ims_uni_verifycode
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_verifycode`;
CREATE TABLE `ims_uni_verifycode`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `receiver` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `verifycode` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `total` tinyint(3) UNSIGNED NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_userapi_cache
-- ----------------------------
DROP TABLE IF EXISTS `ims_userapi_cache`;
CREATE TABLE `ims_userapi_cache`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lastupdate` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_userapi_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_userapi_reply`;
CREATE TABLE `ims_userapi_reply`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `rid` int(10) UNSIGNED NOT NULL,
  `description` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `apiurl` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `default_text` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cachetime` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `rid`(`rid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_userapi_reply
-- ----------------------------
INSERT INTO `ims_userapi_reply` VALUES (1, 1, '\"城市名+天气\", 如: \"北京天气\"', 'weather.php', '', '', 0);
INSERT INTO `ims_userapi_reply` VALUES (2, 2, '\"百科+查询内容\" 或 \"定义+查询内容\", 如: \"百科姚明\", \"定义自行车\"', 'baike.php', '', '', 0);
INSERT INTO `ims_userapi_reply` VALUES (3, 3, '\"@查询内容(中文或英文)\"', 'translate.php', '', '', 0);
INSERT INTO `ims_userapi_reply` VALUES (4, 4, '\"日历\", \"万年历\", \"黄历\"或\"几号\"', 'calendar.php', '', '', 0);
INSERT INTO `ims_userapi_reply` VALUES (5, 5, '\"新闻\"', 'news.php', '', '', 0);
INSERT INTO `ims_userapi_reply` VALUES (6, 6, '\"快递+单号\", 如: \"申通1200041125\"', 'express.php', '', '', 0);

-- ----------------------------
-- Table structure for ims_users
-- ----------------------------
DROP TABLE IF EXISTS `ims_users`;
CREATE TABLE `ims_users`  (
  `uid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `owner_uid` int(10) NOT NULL,
  `groupid` int(10) UNSIGNED NOT NULL,
  `founder_groupid` tinyint(4) NOT NULL,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `salt` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `joindate` int(10) UNSIGNED NOT NULL,
  `joinip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lastvisit` int(10) UNSIGNED NOT NULL,
  `lastip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `starttime` int(10) UNSIGNED NOT NULL,
  `endtime` int(10) UNSIGNED NOT NULL,
  `register_type` tinyint(3) NOT NULL,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `welcome_link` tinyint(4) NOT NULL,
  `is_bind` tinyint(1) NOT NULL,
  PRIMARY KEY (`uid`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_users
-- ----------------------------
INSERT INTO `ims_users` VALUES (1, 0, 1, 0, 'rrmall', 'd6af8cb734c68865501fd035025bad654c8c76a6', 'b811c854', 0, 0, 1572922522, '', 1575009046, '127.0.0.1', '', 0, 0, 0, '', 0, 0);

-- ----------------------------
-- Table structure for ims_users_bind
-- ----------------------------
DROP TABLE IF EXISTS `ims_users_bind`;
CREATE TABLE `ims_users_bind`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `bind_sign` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `third_type` tinyint(4) NOT NULL,
  `third_nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `bind_sign`(`bind_sign`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_users_failed_login
-- ----------------------------
DROP TABLE IF EXISTS `ims_users_failed_login`;
CREATE TABLE `ims_users_failed_login`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `count` tinyint(1) UNSIGNED NOT NULL,
  `lastupdate` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ip_username`(`ip`, `username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_users_founder_group
-- ----------------------------
DROP TABLE IF EXISTS `ims_users_founder_group`;
CREATE TABLE `ims_users_founder_group`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `package` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `maxaccount` int(10) UNSIGNED NOT NULL,
  `maxsubaccount` int(10) UNSIGNED NOT NULL,
  `timelimit` int(10) UNSIGNED NOT NULL,
  `maxwxapp` int(10) UNSIGNED NOT NULL,
  `maxwebapp` int(10) NOT NULL,
  `maxphoneapp` int(10) NOT NULL,
  `maxxzapp` int(10) NOT NULL,
  `maxaliapp` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_users_group
-- ----------------------------
DROP TABLE IF EXISTS `ims_users_group`;
CREATE TABLE `ims_users_group`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `owner_uid` int(10) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `package` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `maxaccount` int(10) UNSIGNED NOT NULL,
  `maxsubaccount` int(10) UNSIGNED NOT NULL,
  `timelimit` int(10) UNSIGNED NOT NULL,
  `maxwxapp` int(10) UNSIGNED NOT NULL,
  `maxwebapp` int(10) NOT NULL,
  `maxphoneapp` int(10) NOT NULL,
  `maxxzapp` int(10) NOT NULL,
  `maxaliapp` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_users_invitation
-- ----------------------------
DROP TABLE IF EXISTS `ims_users_invitation`;
CREATE TABLE `ims_users_invitation`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fromuid` int(10) UNSIGNED NOT NULL,
  `inviteuid` int(10) UNSIGNED NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_code`(`code`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_users_permission
-- ----------------------------
DROP TABLE IF EXISTS `ims_users_permission`;
CREATE TABLE `ims_users_permission`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL,
  `type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `permission` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_users_profile
-- ----------------------------
DROP TABLE IF EXISTS `ims_users_profile`;
CREATE TABLE `ims_users_profile`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int(10) UNSIGNED NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  `edittime` int(10) NOT NULL,
  `realname` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `qq` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fakeid` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `vip` tinyint(3) UNSIGNED NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `birthyear` smallint(6) UNSIGNED NOT NULL,
  `birthmonth` tinyint(3) UNSIGNED NOT NULL,
  `birthday` tinyint(3) UNSIGNED NOT NULL,
  `constellation` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `zodiac` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `telephone` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `idcard` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `studentid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `grade` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `zipcode` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nationality` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `resideprovince` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `residecity` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `residedist` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `graduateschool` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `company` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `education` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `occupation` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `position` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `revenue` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `affectivestatus` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lookingfor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bloodtype` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `height` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `weight` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `alipay` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `msn` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `taobao` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `site` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bio` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `interest` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `workerid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_send_mobile_status` tinyint(3) NOT NULL,
  `send_expire_status` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_video_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_video_reply`;
CREATE TABLE `ims_video_reply`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `rid` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mediaid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `rid`(`rid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_voice_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_voice_reply`;
CREATE TABLE `ims_voice_reply`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `rid` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mediaid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `rid`(`rid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_wechat_attachment
-- ----------------------------
DROP TABLE IF EXISTS `ims_wechat_attachment`;
CREATE TABLE `ims_wechat_attachment`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `acid` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL,
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `attachment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `media_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `width` int(10) UNSIGNED NOT NULL,
  `height` int(10) UNSIGNED NOT NULL,
  `type` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tag` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  `module_upload_dir` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `group_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `media_id`(`media_id`) USING BTREE,
  INDEX `acid`(`acid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_wechat_news
-- ----------------------------
DROP TABLE IF EXISTS `ims_wechat_news`;
CREATE TABLE `ims_wechat_news`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NULL DEFAULT NULL,
  `attach_id` int(10) UNSIGNED NOT NULL,
  `thumb_media_id` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumb_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `author` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `digest` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_source_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `show_cover_pic` tinyint(3) UNSIGNED NOT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `displayorder` int(2) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `attach_id`(`attach_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_wxapp_general_analysis
-- ----------------------------
DROP TABLE IF EXISTS `ims_wxapp_general_analysis`;
CREATE TABLE `ims_wxapp_general_analysis`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `session_cnt` int(10) NOT NULL,
  `visit_pv` int(10) NOT NULL,
  `visit_uv` int(10) NOT NULL,
  `visit_uv_new` int(10) NOT NULL,
  `type` tinyint(2) NOT NULL,
  `stay_time_uv` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stay_time_session` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `visit_depth` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ref_date` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `ref_date`(`ref_date`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_wxapp_versions
-- ----------------------------
DROP TABLE IF EXISTS `ims_wxapp_versions`;
CREATE TABLE `ims_wxapp_versions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `multiid` int(10) UNSIGNED NOT NULL,
  `version` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `modules` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `design_method` tinyint(1) NOT NULL,
  `template` int(10) NOT NULL,
  `quickmenu` varchar(2500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(10) NOT NULL,
  `type` int(2) NOT NULL,
  `entry_id` int(11) NOT NULL,
  `appjson` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `default_appjson` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `use_default` tinyint(1) NOT NULL,
  `redirect` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `connection` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_modules` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `version`(`version`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ims_wxcard_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_wxcard_reply`;
CREATE TABLE `ims_wxcard_reply`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `rid` int(10) UNSIGNED NOT NULL,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `card_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cid` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `logo_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `success` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `error` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `rid`(`rid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
