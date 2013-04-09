/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : yunet

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2013-04-07 10:46:57
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `yunetoa_acl`
-- ----------------------------
DROP TABLE IF EXISTS `yunetoa_acl`;
CREATE TABLE `yunetoa_acl` (
  `aclid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `controller` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `acl_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`aclid`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of yunetoa_acl
-- ----------------------------
INSERT INTO yunetoa_acl VALUES ('6', '登录', 'yunet', 'login', 'Fei_Any');
INSERT INTO yunetoa_acl VALUES ('7', '首页', 'yunet', 'index', 'Fei_Admin');
INSERT INTO yunetoa_acl VALUES ('8', '退出', 'yunet', 'logout', 'Fei_Admin');
INSERT INTO yunetoa_acl VALUES ('9', '设置', 'setting', 'index', 'Fei_Admin');
INSERT INTO yunetoa_acl VALUES ('10', '权限设置', 'setting', 'permission', 'Fei_Admin');
INSERT INTO yunetoa_acl VALUES ('11', '权限SET', 'setting', 'permission_set', 'Fei_Admin');
INSERT INTO yunetoa_acl VALUES ('12', '后台菜单', 'setting', 'menu', 'Fei_Admin');
INSERT INTO yunetoa_acl VALUES ('13', '产品项目', 'project', 'index', 'Fei_Admin');
INSERT INTO yunetoa_acl VALUES ('14', '预览中心', 'project', 'main', 'Fei_Admin');
INSERT INTO yunetoa_acl VALUES ('15', '栏目设置', 'setting', 'category', 'Fei_Admin');
INSERT INTO yunetoa_acl VALUES ('16', '数据备份', 'setting', 'databack', 'Fei_Admin');
INSERT INTO yunetoa_acl VALUES ('17', '个人中心', 'yunet', 'profile', 'Fei_Admin');
INSERT INTO yunetoa_acl VALUES ('18', '修改密码', 'yunet', 'editpwd', 'Fei_Admin');
INSERT INTO yunetoa_acl VALUES ('19', '我的消息', 'yunet', 'message', 'Fei_Admin');
INSERT INTO yunetoa_acl VALUES ('20', '任务计划', 'project', 'task', 'Fei_Admin');
INSERT INTO yunetoa_acl VALUES ('21', '团队协作', 'cooperation', 'index', 'Fei_Admin');
INSERT INTO yunetoa_acl VALUES ('22', '团队成员', 'cooperation', 'person', 'Fei_Admin');
INSERT INTO yunetoa_acl VALUES ('23', '部门设置', 'cooperation', 'branch', 'Fei_Admin');
INSERT INTO yunetoa_acl VALUES ('24', 'AJAX数据备份', 'setting', 'ajax_databack', 'Fei_Admin');
INSERT INTO yunetoa_acl VALUES ('25', 'BUG', 'project', 'bug', 'Fei_Admin');
INSERT INTO yunetoa_acl VALUES ('26', '成本控制', 'project', 'cost', 'Fei_Admin');
INSERT INTO yunetoa_acl VALUES ('27', '项目列表', 'project', 'lists', 'Fei_Admin');
INSERT INTO yunetoa_acl VALUES ('28', '待办事项', 'FeiTm', 'todo', 'Fei_Admin');
INSERT INTO yunetoa_acl VALUES ('29', '流程公文', 'flow', 'index', 'Fei_Admin');
INSERT INTO yunetoa_acl VALUES ('30', '流程设置', 'flow', 'setting', 'Fei_Admin');

-- ----------------------------
-- Table structure for `yunetoa_acl_role`
-- ----------------------------
DROP TABLE IF EXISTS `yunetoa_acl_role`;
CREATE TABLE `yunetoa_acl_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filed` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='角色';

-- ----------------------------
-- Records of yunetoa_acl_role
-- ----------------------------

-- ----------------------------
-- Table structure for `yunetoa_category`
-- ----------------------------
DROP TABLE IF EXISTS `yunetoa_category`;
CREATE TABLE `yunetoa_category` (
  `catid` tinyint(4) NOT NULL AUTO_INCREMENT,
  `parentid` tinyint(4) NOT NULL DEFAULT '0',
  `catname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `setting` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `listorder` tinyint(4) NOT NULL DEFAULT '1',
  `ismenu` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `letter` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ico` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `addtime` datetime NOT NULL,
  PRIMARY KEY (`catid`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of yunetoa_category
-- ----------------------------
INSERT INTO yunetoa_category VALUES ('1', '0', '项目产品', '', '', '2', 'on', 'project', 'icon-flag', '0000-00-00 00:00:00');
INSERT INTO yunetoa_category VALUES ('6', '0', '系统首页', '', '', '1', 'on', 'yunet', 'homeicon', '0000-00-00 00:00:00');
INSERT INTO yunetoa_category VALUES ('2', '0', '团队协作', '', '', '3', '', 'cooperation', 'icon-th', '0000-00-00 00:00:00');
INSERT INTO yunetoa_category VALUES ('3', '0', '流程公文', '', '', '4', 'on', 'flow', 'icon-exclamation-sign', '0000-00-00 00:00:00');
INSERT INTO yunetoa_category VALUES ('4', '0', '文档', '', '', '5', '', 'doc', 'icon-inbox', '0000-00-00 00:00:00');
INSERT INTO yunetoa_category VALUES ('5', '0', '设置', '', '', '6', '', 'setting', 'icon-cogs', '0000-00-00 00:00:00');
INSERT INTO yunetoa_category VALUES ('7', '6', '系统首页', '', '', '1', '', '', 'homeico', '0000-00-00 00:00:00');
INSERT INTO yunetoa_category VALUES ('8', '7', '修改密码', '', '', '3', '', 'editpwd', '', '0000-00-00 00:00:00');
INSERT INTO yunetoa_category VALUES ('9', '7', '个人信息', '', '', '2', '', 'profile', '', '0000-00-00 00:00:00');
INSERT INTO yunetoa_category VALUES ('10', '7', '系统首页', '', '', '1', 'on', 'index', 'homeico', '0000-00-00 00:00:00');
INSERT INTO yunetoa_category VALUES ('11', '13', '摘要', '', '', '1', '', 'index', '', '0000-00-00 00:00:00');
INSERT INTO yunetoa_category VALUES ('12', '13', '任务计划', '', '', '1', 'on', 'task', '', '0000-00-00 00:00:00');
INSERT INTO yunetoa_category VALUES ('13', '1', '产品管理', '', '', '1', '', '', '', '0000-00-00 00:00:00');
INSERT INTO yunetoa_category VALUES ('14', '13', '成本', '', '', '3', 'on', 'cost', '', '0000-00-00 00:00:00');
INSERT INTO yunetoa_category VALUES ('15', '13', '团队', '', '', '4', '', '', '', '0000-00-00 00:00:00');
INSERT INTO yunetoa_category VALUES ('16', '13', '统计报表', '', '', '2', 'on', '', '', '0000-00-00 00:00:00');
INSERT INTO yunetoa_category VALUES ('17', '1', 'BUG', '', '', '1', '', '', '', '0000-00-00 00:00:00');
INSERT INTO yunetoa_category VALUES ('18', '2', '人员架构', '', '', '1', '', '', '', '0000-00-00 00:00:00');
INSERT INTO yunetoa_category VALUES ('19', '18', '通讯录', '', '', '1', 'on', 'index', '', '0000-00-00 00:00:00');
INSERT INTO yunetoa_category VALUES ('20', '5', '系统设置', '', '', '1', '', '', '', '0000-00-00 00:00:00');
INSERT INTO yunetoa_category VALUES ('21', '20', '后台菜单', '', '', '2', 'on', 'menu', '', '0000-00-00 00:00:00');
INSERT INTO yunetoa_category VALUES ('22', '20', '常规设置', '', '', '1', 'on', 'index', '', '0000-00-00 00:00:00');
INSERT INTO yunetoa_category VALUES ('23', '7', '我的消息', '', '', '5', 'on', 'message', '', '0000-00-00 00:00:00');
INSERT INTO yunetoa_category VALUES ('24', '18', '成员管理', '', '', '2', 'on', 'person', '', '0000-00-00 00:00:00');
INSERT INTO yunetoa_category VALUES ('25', '20', '功能权限', '', '', '3', 'on', 'permission', '', '0000-00-00 00:00:00');
INSERT INTO yunetoa_category VALUES ('26', '20', '数据备份', '', '', '4', 'on', 'databack', '', '0000-00-00 00:00:00');
INSERT INTO yunetoa_category VALUES ('27', '6', '快捷操作', '', '', '2', 'on', 'shortcut', '', '0000-00-00 00:00:00');
INSERT INTO yunetoa_category VALUES ('28', '27', '发现BUG', '', '', '1', 'on', 'findbug', '', '0000-00-00 00:00:00');
INSERT INTO yunetoa_category VALUES ('29', '27', '发布公告', '', '', '2', 'on', 'issue', '', '0000-00-00 00:00:00');
INSERT INTO yunetoa_category VALUES ('30', '18', '部门设置', '', '', '3', 'on', 'branch', '', '0000-00-00 00:00:00');
INSERT INTO yunetoa_category VALUES ('31', '17', 'BUG管理', '', '', '1', 'on', 'bug', '', '0000-00-00 00:00:00');
INSERT INTO yunetoa_category VALUES ('32', '1', '项目管理', '', '', '3', 'on', 'manage', '', '0000-00-00 00:00:00');
INSERT INTO yunetoa_category VALUES ('33', '32', '项目列表', '', '', '1', 'on', 'lists', '', '0000-00-00 00:00:00');
INSERT INTO yunetoa_category VALUES ('34', '7', '待办事项', '', '', '4', 'on', 'todo', '', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `yunetoa_contact`
-- ----------------------------
DROP TABLE IF EXISTS `yunetoa_contact`;
CREATE TABLE `yunetoa_contact` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `company` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `linkman` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `phone` tinyint(4) NOT NULL,
  `tel` tinyint(4) NOT NULL,
  `fax` tinyint(4) NOT NULL,
  `address` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of yunetoa_contact
-- ----------------------------
INSERT INTO yunetoa_contact VALUES ('1', '广的网络科技有限公司', '吴飞飞', '127', '127', '127', '浙江省杭州市天目山路238号华鸿大厦A座803', 'syrdxb@126.com');

-- ----------------------------
-- Table structure for `yunetoa_dept`
-- ----------------------------
DROP TABLE IF EXISTS `yunetoa_dept`;
CREATE TABLE `yunetoa_dept` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `leader` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  `describe` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of yunetoa_dept
-- ----------------------------

-- ----------------------------
-- Table structure for `yunetoa_message`
-- ----------------------------
DROP TABLE IF EXISTS `yunetoa_message`;
CREATE TABLE `yunetoa_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `send` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `to` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of yunetoa_message
-- ----------------------------
INSERT INTO yunetoa_message VALUES ('1', '1', '李时珍', '1', '考试中心站你那边做的怎么样了？', '好了，现在来一点技术性的。这段时间受到很多人的来信（大部分是菜鸟）。他们看了我很早以前写的推崇 Linux 的文章，想知道如何“抛弃 Windows，学习 Linux”。天知道他们在哪里找到那么老的文章，真是好事不出门。我觉得我有责任消除我以前的文章对人的误导，洗清我这个“Linux 狂热分子”的恶名。我觉得我已经写过一些澄清的文章了，可是怎么还是有人来信问 Linux 的问题。也许因为感觉到“舆论压力”，我把文章都删了 。', '2013-03-07 15:40:11', '0');

-- ----------------------------
-- Table structure for `yunetoa_news`
-- ----------------------------
DROP TABLE IF EXISTS `yunetoa_news`;
CREATE TABLE `yunetoa_news` (
  `news_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT '',
  `content` text,
  `newscategory` varchar(120) DEFAULT '',
  `source` varchar(120) DEFAULT '',
  `appendix` tinyint(2) unsigned DEFAULT '0',
  `status` tinyint(2) unsigned DEFAULT '1',
  `isuredate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uid` int(11) unsigned NOT NULL,
  `up_id` varchar(120) DEFAULT '',
  `unionid` varchar(255) DEFAULT '' COMMENT '关联发送',
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunetoa_news
-- ----------------------------

-- ----------------------------
-- Table structure for `yunetoa_notice`
-- ----------------------------
DROP TABLE IF EXISTS `yunetoa_notice`;
CREATE TABLE `yunetoa_notice` (
  `not_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT '',
  `content` text,
  `importance` tinyint(2) unsigned DEFAULT NULL,
  `issuedate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `appendix` tinyint(2) unsigned DEFAULT '0',
  `userid` int(11) unsigned NOT NULL,
  `type` mediumint(6) unsigned NOT NULL COMMENT '信息重要程度 本屌以为这里使用枚举',
  `unionid` varchar(255) DEFAULT '' COMMENT '保存为array数据，news接受对象 可以使一组员工 也可以是一个部门',
  `up_id` varchar(60) DEFAULT '',
  PRIMARY KEY (`not_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunetoa_notice
-- ----------------------------

-- ----------------------------
-- Table structure for `yunetoa_project`
-- ----------------------------
DROP TABLE IF EXISTS `yunetoa_project`;
CREATE TABLE `yunetoa_project` (
  `id` int(11) NOT NULL,
  `name` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `person` int(11) NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of yunetoa_project
-- ----------------------------

-- ----------------------------
-- Table structure for `yunetoa_rules`
-- ----------------------------
DROP TABLE IF EXISTS `yunetoa_rules`;
CREATE TABLE `yunetoa_rules` (
  `rule_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '规章制度',
  `title` varchar(50) DEFAULT '',
  `content` text,
  `rule_category` varchar(20) DEFAULT '',
  `issuedate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uid` int(11) unsigned NOT NULL,
  `appendix` tinyint(2) unsigned DEFAULT '0' COMMENT '是否有附件',
  `up_id` varchar(255) DEFAULT '' COMMENT '附件群组',
  `status` tinyint(2) unsigned DEFAULT '1',
  PRIMARY KEY (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunetoa_rules
-- ----------------------------

-- ----------------------------
-- Table structure for `yunetoa_site`
-- ----------------------------
DROP TABLE IF EXISTS `yunetoa_site`;
CREATE TABLE `yunetoa_site` (
  `siteid` tinyint(4) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `domain` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `setting` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `addtime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of yunetoa_site
-- ----------------------------
INSERT INTO yunetoa_site VALUES ('1', '中国教育培训网', 'http://www.feicms.com', '中国教育培训网-教育培训行业门户', '教育培训网', '中国教育培训网是中国最大的教育培训行业门户网站', '吴飞飞', '', '2012-12-17 07:15:00');

-- ----------------------------
-- Table structure for `yunetoa_system`
-- ----------------------------
DROP TABLE IF EXISTS `yunetoa_system`;
CREATE TABLE `yunetoa_system` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `branch` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of yunetoa_system
-- ----------------------------
INSERT INTO yunetoa_system VALUES ('1', '广的网络科技有限公司', '技术部|产品部|编辑部|运营部|推广部|外联部|视频制作中心');

-- ----------------------------
-- Table structure for `yunetoa_todo`
-- ----------------------------
DROP TABLE IF EXISTS `yunetoa_todo`;
CREATE TABLE `yunetoa_todo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `send` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `to` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of yunetoa_todo
-- ----------------------------
INSERT INTO yunetoa_todo VALUES ('1', '1', '总经理', '1', '将这月的工作报告发给我', '', '2013-03-07 16:06:46', '0');

-- ----------------------------
-- Table structure for `yunetoa_type`
-- ----------------------------
DROP TABLE IF EXISTS `yunetoa_type`;
CREATE TABLE `yunetoa_type` (
  `typeid` tinyint(4) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `sort` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `isuse` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `addtime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of yunetoa_type
-- ----------------------------
INSERT INTO yunetoa_type VALUES ('1', '文章模型', 'news', '1', '2012-12-12 16:00:00');
INSERT INTO yunetoa_type VALUES ('2', '下载模型', 'down', '1', '2012-12-18 00:25:35');

-- ----------------------------
-- Table structure for `yunetoa_upload`
-- ----------------------------
DROP TABLE IF EXISTS `yunetoa_upload`;
CREATE TABLE `yunetoa_upload` (
  `up_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned NOT NULL,
  `filename` varchar(255) DEFAULT '',
  `filetype` varchar(255) DEFAULT '',
  `filesize` varchar(40) DEFAULT '',
  `path` varchar(255) DEFAULT '',
  `thumbpath` varchar(255) DEFAULT '',
  `thumbwidth` smallint(6) unsigned DEFAULT '0',
  `thumbheight` smallint(6) unsigned DEFAULT '0',
  `isimage` tinyint(2) unsigned DEFAULT '1',
  `status` tinyint(2) unsigned DEFAULT '1',
  `uptime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`up_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunetoa_upload
-- ----------------------------

-- ----------------------------
-- Table structure for `yunetoa_user`
-- ----------------------------
DROP TABLE IF EXISTS `yunetoa_user`;
CREATE TABLE `yunetoa_user` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `realname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `branch` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='员工';

-- ----------------------------
-- Records of yunetoa_user
-- ----------------------------
INSERT INTO yunetoa_user VALUES ('1', 'syrdxb', '133285', '吴飞飞', '技术部', '负责人', '1');
INSERT INTO yunetoa_user VALUES ('2', 'xiong', '1234567', '熊寿长', '技术部', 'PHP程序员', '1');
INSERT INTO yunetoa_user VALUES ('3', 'yuanyane', '1234567', '袁艳娥', '技术部', '前端工程师', '1');
INSERT INTO yunetoa_user VALUES ('4', 'admin', '123456', 'admin', 'admin', 'admin', '1');
