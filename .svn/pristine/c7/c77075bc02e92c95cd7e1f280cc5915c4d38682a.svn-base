DROP TABLE IF EXISTS acl;
CREATE TABLE `acl` (
  `aclid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `controller` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `acl_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`aclid`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `acl` VALUES('6','登录','FeiTm','login','Fei_Any');


INSERT INTO `acl` VALUES('7','首页','FeiTm','index','Fei_Admin');


INSERT INTO `acl` VALUES('8','退出','FeiTm','logout','Fei_Admin');


INSERT INTO `acl` VALUES('9','设置','setting','index','Fei_Admin');


INSERT INTO `acl` VALUES('10','权限设置','setting','permission','Fei_Admin');


INSERT INTO `acl` VALUES('11','权限SET','setting','permission_set','Fei_Admin');


INSERT INTO `acl` VALUES('12','后台菜单','setting','menu','Fei_Admin');


INSERT INTO `acl` VALUES('13','产品项目','project','index','Fei_Admin');


INSERT INTO `acl` VALUES('14','预览中心','project','main','Fei_Admin');


INSERT INTO `acl` VALUES('15','栏目设置','setting','category','Fei_Admin');


INSERT INTO `acl` VALUES('16','数据备份','setting','databack','Fei_Admin');


INSERT INTO `acl` VALUES('17','AJAX数据库备份','setting','ajax_databack','Fei_Admin');


DROP TABLE IF EXISTS category;
CREATE TABLE `category` (
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
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `category` VALUES('1','0','项目产品','','','2','on','project','icon-flag','0000-00-00 00:00:00');


INSERT INTO `category` VALUES('6','0','个人面板','','','1','on','FeiTm','icon-user','0000-00-00 00:00:00');


INSERT INTO `category` VALUES('2','0','团队协作','','','3','','cooperation','icon-th','0000-00-00 00:00:00');


INSERT INTO `category` VALUES('3','0','电子公文','','','4','','bug','icon-exclamation-sign','0000-00-00 00:00:00');


INSERT INTO `category` VALUES('4','0','文档','','','5','','doc','icon-inbox','0000-00-00 00:00:00');


INSERT INTO `category` VALUES('5','0','设置','','','6','','setting','icon-cogs','0000-00-00 00:00:00');


INSERT INTO `category` VALUES('7','6','个人中心','','','1','','','','0000-00-00 00:00:00');


INSERT INTO `category` VALUES('8','7','修改密码','','','3','','editpwd','','0000-00-00 00:00:00');


INSERT INTO `category` VALUES('9','7','个人信息','','','2','','profile','','0000-00-00 00:00:00');


INSERT INTO `category` VALUES('10','7','预览中心','','','1','on','index','','0000-00-00 00:00:00');


INSERT INTO `category` VALUES('11','13','摘要','','','1','','index','','0000-00-00 00:00:00');


INSERT INTO `category` VALUES('12','13','任务计划','','','1','on','task','','0000-00-00 00:00:00');


INSERT INTO `category` VALUES('13','1','产品管理','','','1','','','','0000-00-00 00:00:00');


INSERT INTO `category` VALUES('14','13','成本','','','3','','','','0000-00-00 00:00:00');


INSERT INTO `category` VALUES('15','13','团队','','','4','','','','0000-00-00 00:00:00');


INSERT INTO `category` VALUES('16','13','统计报表','','','2','on','','','0000-00-00 00:00:00');


INSERT INTO `category` VALUES('17','1','BUG','','','1','','','','0000-00-00 00:00:00');


INSERT INTO `category` VALUES('18','2','人员架构','','','1','','','','0000-00-00 00:00:00');


INSERT INTO `category` VALUES('19','18','通讯录','','','1','on','index','','0000-00-00 00:00:00');


INSERT INTO `category` VALUES('20','5','系统设置','','','1','','','','0000-00-00 00:00:00');


INSERT INTO `category` VALUES('21','20','后台菜单','','','2','on','menu','','0000-00-00 00:00:00');


INSERT INTO `category` VALUES('22','20','常规设置','','','1','on','index','','0000-00-00 00:00:00');


INSERT INTO `category` VALUES('23','7','我的消息','','','5','on','message','','0000-00-00 00:00:00');


INSERT INTO `category` VALUES('24','18','成员管理','','','2','on','person','','0000-00-00 00:00:00');


INSERT INTO `category` VALUES('25','20','功能权限','','','3','on','permission','','0000-00-00 00:00:00');


INSERT INTO `category` VALUES('26','20','数据备份','','','4','on','databack','','0000-00-00 00:00:00');


DROP TABLE IF EXISTS contact;
CREATE TABLE `contact` (
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

INSERT INTO `contact` VALUES('1','广的网络科技有限公司','吴飞飞','127','127','127','浙江省杭州市天目山路238号华鸿大厦A座803','syrdxb@126.com');


DROP TABLE IF EXISTS site;
CREATE TABLE `site` (
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

INSERT INTO `site` VALUES('1','中国教育培训网','http://www.feicms.com','中国教育培训网-教育培训行业门户','教育培训网','中国教育培训网是中国最大的教育培训行业门户网站','吴飞飞','','2012-12-17 07:15:00');


DROP TABLE IF EXISTS system;
CREATE TABLE `system` (
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS type;
CREATE TABLE `type` (
  `typeid` tinyint(4) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `sort` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `isuse` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `addtime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `type` VALUES('1','文章模型','news','1','2012-12-12 16:00:00');


INSERT INTO `type` VALUES('2','下载模型','down','1','2012-12-18 00:25:35');


DROP TABLE IF EXISTS user;
CREATE TABLE `user` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `realname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `branch` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `user` VALUES('1','syrdxb','133285','吴飞飞','技术部','负责人','1');


