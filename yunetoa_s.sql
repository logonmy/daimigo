/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : yunet

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2013-04-07 14:39:52
*/

SET FOREIGN_KEY_CHECKS=0;
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
