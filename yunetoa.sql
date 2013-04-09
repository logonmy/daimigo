-- phpMyAdmin SQL Dump
-- version 3.4.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 04, 2013 at 02:18 PM
-- Server version: 5.1.60
-- PHP Version: 5.2.17p1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `yunetoa`
--

-- --------------------------------------------------------

--
-- Table structure for table `yunetoa_acl`
--

CREATE TABLE IF NOT EXISTS `yunetoa_acl` (
  `aclid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `controller` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `acl_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`aclid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=31 ;

--
-- Dumping data for table `yunetoa_acl`
--

INSERT INTO `yunetoa_acl` (`aclid`, `name`, `controller`, `action`, `acl_name`) VALUES
(6, '登录', 'yunet', 'login', 'Fei_Any'),
(7, '首页', 'yunet', 'index', 'Fei_Admin'),
(8, '退出', 'yunet', 'logout', 'Fei_Admin'),
(9, '设置', 'setting', 'index', 'Fei_Admin'),
(10, '权限设置', 'setting', 'permission', 'Fei_Admin'),
(11, '权限SET', 'setting', 'permission_set', 'Fei_Admin'),
(12, '后台菜单', 'setting', 'menu', 'Fei_Admin'),
(13, '产品项目', 'project', 'index', 'Fei_Admin'),
(14, '预览中心', 'project', 'main', 'Fei_Admin'),
(15, '栏目设置', 'setting', 'category', 'Fei_Admin'),
(16, '数据备份', 'setting', 'databack', 'Fei_Admin'),
(17, '个人中心', 'yunet', 'profile', 'Fei_Admin'),
(18, '修改密码', 'yunet', 'editpwd', 'Fei_Admin'),
(19, '我的消息', 'yunet', 'message', 'Fei_Admin'),
(20, '任务计划', 'project', 'task', 'Fei_Admin'),
(21, '团队协作', 'cooperation', 'index', 'Fei_Admin'),
(22, '团队成员', 'cooperation', 'person', 'Fei_Admin'),
(23, '部门设置', 'cooperation', 'branch', 'Fei_Admin'),
(24, 'AJAX数据备份', 'setting', 'ajax_databack', 'Fei_Admin'),
(25, 'BUG', 'project', 'bug', 'Fei_Admin'),
(26, '成本控制', 'project', 'cost', 'Fei_Admin'),
(27, '项目列表', 'project', 'lists', 'Fei_Admin'),
(28, '待办事项', 'FeiTm', 'todo', 'Fei_Admin'),
(29, '流程公文', 'flow', 'index', 'Fei_Admin'),
(30, '流程设置', 'flow', 'setting', 'Fei_Admin');

-- --------------------------------------------------------

--
-- Table structure for table `yunetoa_acl_role`
--

CREATE TABLE IF NOT EXISTS `yunetoa_acl_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filed` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='角色' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `yunetoa_category`
--

CREATE TABLE IF NOT EXISTS `yunetoa_category` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=35 ;

--
-- Dumping data for table `yunetoa_category`
--

INSERT INTO `yunetoa_category` (`catid`, `parentid`, `catname`, `url`, `setting`, `listorder`, `ismenu`, `letter`, `ico`, `addtime`) VALUES
(1, 0, '项目产品', '', '', 2, 'on', 'project', 'icon-flag', '0000-00-00 00:00:00'),
(6, 0, '系统首页', '', '', 1, 'on', 'yunet', 'homeicon', '0000-00-00 00:00:00'),
(2, 0, '团队协作', '', '', 3, '', 'cooperation', 'icon-th', '0000-00-00 00:00:00'),
(3, 0, '流程公文', '', '', 4, 'on', 'flow', 'icon-exclamation-sign', '0000-00-00 00:00:00'),
(4, 0, '文档', '', '', 5, '', 'doc', 'icon-inbox', '0000-00-00 00:00:00'),
(5, 0, '设置', '', '', 6, '', 'setting', 'icon-cogs', '0000-00-00 00:00:00'),
(7, 6, '系统首页', '', '', 1, '', '', 'homeico', '0000-00-00 00:00:00'),
(8, 7, '修改密码', '', '', 3, '', 'editpwd', '', '0000-00-00 00:00:00'),
(9, 7, '个人信息', '', '', 2, '', 'profile', '', '0000-00-00 00:00:00'),
(10, 7, '系统首页', '', '', 1, 'on', 'index', 'homeico', '0000-00-00 00:00:00'),
(11, 13, '摘要', '', '', 1, '', 'index', '', '0000-00-00 00:00:00'),
(12, 13, '任务计划', '', '', 1, 'on', 'task', '', '0000-00-00 00:00:00'),
(13, 1, '产品管理', '', '', 1, '', '', '', '0000-00-00 00:00:00'),
(14, 13, '成本', '', '', 3, 'on', 'cost', '', '0000-00-00 00:00:00'),
(15, 13, '团队', '', '', 4, '', '', '', '0000-00-00 00:00:00'),
(16, 13, '统计报表', '', '', 2, 'on', '', '', '0000-00-00 00:00:00'),
(17, 1, 'BUG', '', '', 1, '', '', '', '0000-00-00 00:00:00'),
(18, 2, '人员架构', '', '', 1, '', '', '', '0000-00-00 00:00:00'),
(19, 18, '通讯录', '', '', 1, 'on', 'index', '', '0000-00-00 00:00:00'),
(20, 5, '系统设置', '', '', 1, '', '', '', '0000-00-00 00:00:00'),
(21, 20, '后台菜单', '', '', 2, 'on', 'menu', '', '0000-00-00 00:00:00'),
(22, 20, '常规设置', '', '', 1, 'on', 'index', '', '0000-00-00 00:00:00'),
(23, 7, '我的消息', '', '', 5, 'on', 'message', '', '0000-00-00 00:00:00'),
(24, 18, '成员管理', '', '', 2, 'on', 'person', '', '0000-00-00 00:00:00'),
(25, 20, '功能权限', '', '', 3, 'on', 'permission', '', '0000-00-00 00:00:00'),
(26, 20, '数据备份', '', '', 4, 'on', 'databack', '', '0000-00-00 00:00:00'),
(27, 6, '快捷操作', '', '', 2, 'on', 'shortcut', '', '0000-00-00 00:00:00'),
(28, 27, '发现BUG', '', '', 1, 'on', 'findbug', '', '0000-00-00 00:00:00'),
(29, 27, '发布公告', '', '', 2, 'on', 'issue', '', '0000-00-00 00:00:00'),
(30, 18, '部门设置', '', '', 3, 'on', 'branch', '', '0000-00-00 00:00:00'),
(31, 17, 'BUG管理', '', '', 1, 'on', 'bug', '', '0000-00-00 00:00:00'),
(32, 1, '项目管理', '', '', 3, 'on', 'manage', '', '0000-00-00 00:00:00'),
(33, 32, '项目列表', '', '', 1, 'on', 'lists', '', '0000-00-00 00:00:00'),
(34, 7, '待办事项', '', '', 4, 'on', 'todo', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `yunetoa_contact`
--

CREATE TABLE IF NOT EXISTS `yunetoa_contact` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `company` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `linkman` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `phone` tinyint(4) NOT NULL,
  `tel` tinyint(4) NOT NULL,
  `fax` tinyint(4) NOT NULL,
  `address` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `yunetoa_contact`
--

INSERT INTO `yunetoa_contact` (`id`, `company`, `linkman`, `phone`, `tel`, `fax`, `address`, `email`) VALUES
(1, '广的网络科技有限公司', '吴飞飞', 127, 127, 127, '浙江省杭州市天目山路238号华鸿大厦A座803', 'syrdxb@126.com');

-- --------------------------------------------------------

--
-- Table structure for table `yunetoa_dept`
--

CREATE TABLE IF NOT EXISTS `yunetoa_dept` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `leader` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  `describe` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `yunetoa_message`
--

CREATE TABLE IF NOT EXISTS `yunetoa_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `send` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `to` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `yunetoa_message`
--

INSERT INTO `yunetoa_message` (`id`, `userid`, `send`, `to`, `title`, `content`, `time`, `status`) VALUES
(1, 1, '李时珍', '1', '考试中心站你那边做的怎么样了？', '好了，现在来一点技术性的。这段时间受到很多人的来信（大部分是菜鸟）。他们看了我很早以前写的推崇 Linux 的文章，想知道如何“抛弃 Windows，学习 Linux”。天知道他们在哪里找到那么老的文章，真是好事不出门。我觉得我有责任消除我以前的文章对人的误导，洗清我这个“Linux 狂热分子”的恶名。我觉得我已经写过一些澄清的文章了，可是怎么还是有人来信问 Linux 的问题。也许因为感觉到“舆论压力”，我把文章都删了 。', '2013-03-07 07:40:11', 0);

-- --------------------------------------------------------

--
-- Table structure for table `yunetoa_project`
--

CREATE TABLE IF NOT EXISTS `yunetoa_project` (
  `id` int(11) NOT NULL,
  `name` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `person` int(11) NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `yunetoa_site`
--

CREATE TABLE IF NOT EXISTS `yunetoa_site` (
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

--
-- Dumping data for table `yunetoa_site`
--

INSERT INTO `yunetoa_site` (`siteid`, `name`, `domain`, `title`, `keywords`, `description`, `author`, `setting`, `addtime`) VALUES
(1, '中国教育培训网', 'http://www.feicms.com', '中国教育培训网-教育培训行业门户', '教育培训网', '中国教育培训网是中国最大的教育培训行业门户网站', '吴飞飞', '', '2012-12-17 07:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `yunetoa_system`
--

CREATE TABLE IF NOT EXISTS `yunetoa_system` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `branch` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `yunetoa_system`
--

INSERT INTO `yunetoa_system` (`id`, `title`, `branch`) VALUES
(1, '广的网络科技有限公司', '技术部|产品部|编辑部|运营部|推广部|外联部|视频制作中心');

-- --------------------------------------------------------

--
-- Table structure for table `yunetoa_todo`
--

CREATE TABLE IF NOT EXISTS `yunetoa_todo` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `yunetoa_todo`
--

INSERT INTO `yunetoa_todo` (`id`, `userid`, `send`, `to`, `title`, `content`, `time`, `status`) VALUES
(1, 1, '总经理', 1, '将这月的工作报告发给我', '', '2013-03-07 08:06:46', 0);

-- --------------------------------------------------------

--
-- Table structure for table `yunetoa_type`
--

CREATE TABLE IF NOT EXISTS `yunetoa_type` (
  `typeid` tinyint(4) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `sort` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `isuse` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `addtime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `yunetoa_type`
--

INSERT INTO `yunetoa_type` (`typeid`, `name`, `sort`, `isuse`, `addtime`) VALUES
(1, '文章模型', 'news', '1', '2012-12-12 16:00:00'),
(2, '下载模型', 'down', '1', '2012-12-18 00:25:35');

-- --------------------------------------------------------

--
-- Table structure for table `yunetoa_user`
--

CREATE TABLE IF NOT EXISTS `yunetoa_user` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `realname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `branch` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='员工' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `yunetoa_user`
--

INSERT INTO `yunetoa_user` (`id`, `username`, `password`, `realname`, `branch`, `position`, `status`) VALUES
(1, 'syrdxb', '133285', '吴飞飞', '技术部', '负责人', 1),
(2, 'xiong', '1234567', '熊寿长', '技术部', 'PHP程序员', 1),
(3, 'yuanyane', '1234567', '袁艳娥', '技术部', '前端工程师', 1),
(4, 'admin', '123456', 'admin', 'admin', 'admin', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
