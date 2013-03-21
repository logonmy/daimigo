
DROP TABLE IF EXISTS toa_ads;

CREATE TABLE toa_ads (
  id int(10) NOT NULL auto_increment,
  title varchar(255) default NULL,
  date datetime default NULL,
  adsurl text,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS toa_app;

CREATE TABLE toa_app (
  id int(10) NOT NULL auto_increment,
  title varchar(255) default NULL,
  content text,
  user text,
  number varchar(20) default NULL,
  untildate datetime default NULL,
  date datetime default NULL,
  uid varchar(20) default NULL,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS toa_app_flow;

CREATE TABLE toa_app_flow (
  fid int(8) NOT NULL auto_increment,
  flow_name varchar(120) default NULL,
  flow_type varchar(10) default NULL,
  flow_key varchar(10) default NULL,
  flow_user varchar(120) default NULL,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (fid)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS toa_app_flow_view;

CREATE TABLE toa_app_flow_view (
  fvid int(8) NOT NULL auto_increment,
  flow_view_name varchar(60) default NULL,
  flow_view_type varchar(60) default NULL,
  flow_view_user_key varchar(120) default NULL,
  flow_view_user varchar(120) default NULL,
  flow_id varchar(10) default NULL,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (fvid)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS toa_app_log;

CREATE TABLE toa_app_log (
  id int(10) NOT NULL auto_increment,
  app_id varchar(20) default NULL,
  app_option_id varchar(20) default NULL,
  user varchar(20) default NULL,
  date datetime default NULL,
  content varchar(255) default NULL,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS toa_app_option;

CREATE TABLE toa_app_option (
  id int(10) NOT NULL auto_increment,
  app_id varchar(20) default NULL,
  title varchar(255) default NULL,
  number varchar(20) default NULL,
  type varchar(10) default NULL,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS toa_bbs;

CREATE TABLE toa_bbs (
  id int(10) NOT NULL auto_increment,
  bbsclass varchar(255) default NULL,
  title varchar(255) default NULL,
  author varchar(60) default NULL,
  origin varchar(255) default NULL,
  content text,
  issuedate datetime default NULL,
  readnum varchar(60) default NULL,
  enddate datetime default NULL,
  type varchar(10) default NULL,
  uid varchar(20) default NULL,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS toa_bbs_log;

CREATE TABLE toa_bbs_log (
  id int(10) NOT NULL auto_increment,
  bbsid varchar(20) default NULL,
  title varchar(255) default NULL,
  author varchar(60) default NULL,
  content text,
  enddate datetime default NULL,
  uid varchar(20) default NULL,
  type varchar(2) default NULL,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS toa_bbsclass;

CREATE TABLE toa_bbsclass (
  id int(10) NOT NULL auto_increment,
  name varchar(255) default NULL,
  classadmin varchar(255) default NULL,
  type varchar(20) default NULL,
  uid varchar(10) default NULL,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS toa_blog;

CREATE TABLE toa_blog (
  id int(10) NOT NULL auto_increment,
  title varchar(80) default NULL,
  content text,
  number int(10) default NULL,
  categoryid varchar(10) default NULL,
  type varchar(10) default NULL,
  date date default NULL,
  uid varchar(10) default NULL,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS toa_communication;

CREATE TABLE toa_communication (
  id int(8) NOT NULL auto_increment,
  person varchar(20) default NULL,
  tel varchar(80) default NULL,
  phone varchar(40) default NULL,
  fax varchar(40) default NULL,
  mail varchar(80) default NULL,
  zipcode varchar(10) default NULL,
  address varchar(40) default NULL,
  position varchar(20) default NULL,
  sex varchar(10) default NULL,
  msn varchar(50) default NULL,
  type varchar(10) default NULL,
  date datetime default NULL,
  uid varchar(10) default NULL,
  company varchar(60) default NULL,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS toa_config;

CREATE TABLE toa_config (
  id int(10) NOT NULL auto_increment,
  value text,
  name varchar(50) default NULL,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS toa_department;

CREATE TABLE toa_department (
  id int(11) NOT NULL auto_increment,
  persno varchar(40) default NULL,
  name varchar(40) default NULL,
  date datetime default NULL,
  father varchar(10) default NULL,
  uid varchar(10) default NULL,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS toa_distribution;

CREATE TABLE toa_distribution (
  did int(11) NOT NULL auto_increment,
  name varchar(20) default NULL,
  uid varchar(10) default NULL,
  disdate datetime default NULL,
  viewdate datetime default NULL,
  evaluation varchar(200) default NULL,
  dkey varchar(10) default NULL,
  fileid varchar(10) default NULL,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (did)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS toa_file;

CREATE TABLE toa_file (
  id int(10) NOT NULL auto_increment,
  filetype varchar(10) default NULL,
  filenumber varchar(20) default NULL,
  filename varchar(200) default NULL,
  enddate varchar(10) default NULL,
  position varchar(200) default NULL,
  page varchar(10) default NULL,
  appendix varchar(500) default NULL,
  content text,
  type varchar(10) default NULL,
  date datetime default NULL,
  uid varchar(10) default NULL,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS toa_file_read;

CREATE TABLE toa_file_read (
  id int(10) NOT NULL auto_increment,
  fileid varchar(10) default NULL,
  filenumber varchar(20) default NULL,
  filename varchar(200) default NULL,
  appperson varchar(20) default NULL,
  examperson varchar(20) default NULL,
  appdate datetime default NULL,
  examdate datetime default NULL,
  type varchar(10) default NULL,
  date datetime default NULL,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS toa_file_type;

CREATE TABLE toa_file_type (
  id int(10) NOT NULL auto_increment,
  title varchar(200) default NULL,
  father varchar(10) default NULL,
  date datetime default NULL,
  uid varchar(10) default NULL,
  keyuser varchar(255) default NULL,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS toa_humancontract;

CREATE TABLE toa_humancontract (
  id int(10) NOT NULL auto_increment,
  userid varchar(20) default NULL,
  number varchar(60) default NULL,
  type varchar(10) default NULL,
  ckey varchar(10) default NULL,
  signdate varchar(60) default NULL,
  testdate varchar(60) default NULL,
  testday varchar(30) default NULL,
  testenddate varchar(60) default NULL,
  signnum varchar(30) default NULL,
  appendix varchar(255) default NULL,
  content text,
  uid varchar(20) default NULL,
  date datetime default NULL,
  signenddate varchar(60) default NULL,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS toa_keytable;

CREATE TABLE toa_keytable (
  id int(10) NOT NULL auto_increment,
  name varchar(255) default NULL,
  inputname varchar(255) default NULL,
  inputvalue varchar(255) default NULL,
  inputchecked varchar(5) default NULL,
  type varchar(5) default NULL,
  number int(10) default NULL,
  fatherid varchar(10) default NULL,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS toa_knowledge;

CREATE TABLE toa_knowledge (
  id int(10) NOT NULL auto_increment,
  title varchar(80) default NULL,
  content text,
  number int(10) default NULL,
  categoryid varchar(10) default NULL,
  type varchar(10) default NULL,
  date datetime default NULL,
  uid varchar(10) default NULL,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS toa_loginlog;

CREATE TABLE toa_loginlog (
  id int(10) NOT NULL auto_increment,
  uid int(10) default NULL,
  name varchar(20) default NULL,
  ip varchar(50) default NULL,
  logindate datetime default NULL,
  enddate datetime default NULL,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS toa_menu;

CREATE TABLE toa_menu (
  menuid int(10) NOT NULL auto_increment,
  menuname varchar(255) default NULL,
  menuurl varchar(255) default NULL,
  fatherid varchar(10) default NULL,
  menutype varchar(10) default NULL,
  menunum int(25) default '9999',
  menukey varchar(10) default NULL,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (menuid)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS toa_news;

CREATE TABLE toa_news (
  id int(10) NOT NULL auto_increment,
  category varchar(10) default NULL,
  receive text,
  phonereceive varchar(200) default NULL,
  subject varchar(120) default NULL,
  content text,
  appendix varchar(120) default NULL,
  type varchar(10) default NULL,
  date datetime default NULL,
  uid varchar(10) default NULL,
  pic varchar(120) default NULL,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS toa_news_read;

CREATE TABLE toa_news_read (
  rid int(10) NOT NULL auto_increment,
  uid varchar(30) default NULL,
  disdate datetime default NULL,
  viewdate datetime default NULL,
  evaluation varchar(200) default NULL,
  dkey varchar(10) default NULL,
  newsid varchar(10) default NULL,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (rid)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS toa_news_type;

CREATE TABLE toa_news_type (
  nid int(10) NOT NULL auto_increment,
  ntitle varchar(60) default NULL,
  uid varchar(10) default NULL,
  ntype varchar(10) default NULL,
  ndate datetime default NULL,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (nid)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS toa_oalog;

CREATE TABLE toa_oalog (
  id int(10) NOT NULL auto_increment,
  uid varchar(20) default NULL,
  content text,
  title varchar(255) default NULL,
  startdate datetime default NULL,
  contentid varchar(20) default NULL,
  type varchar(5) default NULL,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS toa_office_type;

CREATE TABLE toa_office_type (
  oid int(10) NOT NULL auto_increment,
  oname varchar(255) default NULL,
  otype varchar(10) default NULL,
  uid varchar(10) default NULL,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (oid)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS toa_online;

CREATE TABLE toa_online (
  id int(10) NOT NULL auto_increment,
  startdate datetime default NULL,
  uid varchar(20) default NULL,
  enddate datetime default NULL,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS toa_personnel;

CREATE TABLE toa_personnel (
  id int(8) NOT NULL auto_increment,
  type varchar(5) default NULL,
  name varchar(30) default NULL,
  uid varchar(10) default NULL,
  designationdate datetime default NULL,
  approvaldate datetime default NULL,
  lnstructions varchar(200) default NULL,
  node varchar(20) default NULL,
  pkey varchar(10) default NULL,
  fileid varchar(10) default NULL,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS toa_phone_channel;

CREATE TABLE toa_phone_channel (
  id int(10) NOT NULL auto_increment,
  company varchar(255) default NULL,
  price varchar(255) default NULL,
  content varchar(255) default NULL,
  `connection` text,
  remainsum varchar(30) default NULL,
  type varchar(5) default NULL,
  connectionid varchar(255) default NULL,
  pkey varchar(5) default NULL,
  username varchar(255) default NULL,
  password varchar(255) default NULL,
  toaid varchar(255) default NULL,
  date datetime default NULL,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS toa_phone_receive;

CREATE TABLE toa_phone_receive (
  id int(8) NOT NULL auto_increment,
  content varchar(500) default NULL,
  sendphone varchar(30) default NULL,
  date varchar(30) default NULL,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS toa_phone_send;

CREATE TABLE toa_phone_send (
  id int(10) NOT NULL auto_increment,
  content varchar(500) default NULL,
  receivephone varchar(30) default NULL,
  sendperson varchar(10) default NULL,
  receiveperson varchar(30) default NULL,
  date datetime default NULL,
  type varchar(5) default NULL,
  channelid varchar(10) default NULL,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS toa_plan;

CREATE TABLE toa_plan (
  id int(10) NOT NULL auto_increment,
  title varchar(80) default NULL,
  content text,
  startdate datetime default NULL,
  enddate datetime default NULL,
  otype varchar(10) default NULL,
  department varchar(255) default NULL,
  participation varchar(255) default NULL,
  person varchar(255) default NULL,
  note varchar(500) default NULL,
  type varchar(10) default NULL,
  date datetime default NULL,
  uid varchar(10) default NULL,
  completiondate datetime default NULL,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS toa_position;

CREATE TABLE toa_position (
  id int(10) NOT NULL auto_increment,
  name varchar(255) default NULL,
  content text,
  father varchar(20) default NULL,
  date datetime default NULL,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS toa_project;

CREATE TABLE toa_project (
  id int(10) NOT NULL auto_increment,
  number varchar(255) default NULL,
  title varchar(255) default NULL,
  startdate varchar(30) default NULL,
  enddate varchar(30) default NULL,
  class varchar(30) default NULL,
  examination varchar(30) default NULL,
  department text,
  browsing text,
  content text,
  appendix varchar(255) default NULL,
  date datetime default NULL,
  uid varchar(20) default NULL,
  type varchar(10) default NULL,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS toa_project_ask;

CREATE TABLE toa_project_ask (
  id int(10) NOT NULL auto_increment,
  name varchar(255) default NULL,
  content text,
  date datetime default NULL,
  uid varchar(20) default NULL,
  project varchar(20) default NULL,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS toa_project_duty;

CREATE TABLE toa_project_duty (
  id int(8) NOT NULL auto_increment,
  number varchar(255) default NULL,
  title varchar(255) default NULL,
  user varchar(255) default NULL,
  startdate varchar(30) default NULL,
  enddate varchar(30) default NULL,
  content text,
  appendix varchar(255) default NULL,
  note varchar(255) default NULL,
  dkey varchar(5) default NULL,
  type varchar(5) default NULL,
  date datetime default NULL,
  uid varchar(10) default NULL,
  project varchar(20) default NULL,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS toa_project_duty_log;

CREATE TABLE toa_project_duty_log (
  id int(8) NOT NULL auto_increment,
  dutyid varchar(255) default NULL,
  content text,
  progress varchar(30) default NULL,
  appendix varchar(255) default NULL,
  note varchar(255) default NULL,
  date datetime default NULL,
  uid varchar(20) default NULL,
  project varchar(20) default NULL,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS toa_project_file;

CREATE TABLE toa_project_file (
  id int(10) NOT NULL auto_increment,
  title varchar(255) default NULL,
  content text,
  appendix varchar(255) default NULL,
  date datetime default NULL,
  uid varchar(20) default NULL,
  project varchar(20) default NULL,
  project_file_class varchar(20) default NULL,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS toa_project_file_class;

CREATE TABLE toa_project_file_class (
  id int(8) NOT NULL auto_increment,
  title varchar(255) default NULL,
  user text,
  uid varchar(20) default NULL,
  project varchar(20) default NULL,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS toa_project_key;

CREATE TABLE toa_project_key (
  id int(10) NOT NULL auto_increment,
  pissue text,
  pedit text,
  pdelete text,
  pfile text,
  phelp text,
  pkey text,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS toa_project_member;

CREATE TABLE toa_project_member (
  id int(10) NOT NULL auto_increment,
  name varchar(255) default NULL,
  date datetime default NULL,
  uid varchar(20) default NULL,
  project varchar(20) default NULL,
  projectrole varchar(255) default NULL,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS toa_project_price;

CREATE TABLE toa_project_price (
  id int(10) NOT NULL auto_increment,
  typeid varchar(10) default NULL,
  content text,
  project varchar(20) default NULL,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS toa_project_type;

CREATE TABLE toa_project_type (
  id int(10) NOT NULL auto_increment,
  name varchar(255) default NULL,
  type varchar(10) default NULL,
  uid varchar(10) default NULL,
  date datetime default NULL,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS toa_registration;

CREATE TABLE toa_registration (
  id int(10) NOT NULL auto_increment,
  name varchar(20) default NULL,
  startdate datetime default NULL,
  enddate datetime default NULL,
  startnote varchar(400) default NULL,
  endnote varchar(400) default NULL,
  uid varchar(10) default NULL,
  startyype varchar(10) default NULL,
  endtype varchar(10) default NULL,
  date date default NULL,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS toa_session;

CREATE TABLE toa_session (
  uid mediumint(8) unsigned NOT NULL default '0',
  username varchar(20) NOT NULL,
  password varchar(32) NOT NULL default '',
  groupid smallint(5) unsigned NOT NULL default '3',
  ip int(11) NOT NULL default '0',
  unionid varchar(10) default NULL,
  PRIMARY KEY  (uid)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS toa_sms_receive;

CREATE TABLE toa_sms_receive (
  id int(10) NOT NULL auto_increment,
  sendperson varchar(20) default NULL,
  date datetime default NULL,
  content text,
  receiveperson varchar(10) default NULL,
  type varchar(10) default NULL,
  smskey varchar(10) default NULL,
  readdate datetime default NULL,
  sendid varchar(10) default NULL,
  online varchar(5) default '0',
  unionid varchar(10) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS toa_sms_send;

CREATE TABLE toa_sms_send (
  id int(10) NOT NULL auto_increment,
  receiveperson text,
  content text,
  uid varchar(20) default NULL,
  date datetime default NULL,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS toa_upload;

CREATE TABLE toa_upload (
  id int(10) unsigned NOT NULL auto_increment,
  aid int(10) unsigned NOT NULL default '0',
  uid mediumint(8) unsigned NOT NULL default '0',
  username varchar(20) NOT NULL default '',
  originalname varchar(100) NOT NULL default '',
  filepath varchar(255) NOT NULL default '',
  thumb varchar(255) NOT NULL default '',
  filesize int(10) unsigned NOT NULL default '0',
  filetype varchar(50) NOT NULL default '',
  fileext char(10) NOT NULL default '',
  dateline int(10) unsigned NOT NULL default '0',
  downloads mediumint(8) unsigned NOT NULL default '0',
  unionid varchar(10) default NULL,
  PRIMARY KEY  (id),
  KEY aid (aid)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS toa_user;

CREATE TABLE toa_user (
  id int(11) NOT NULL auto_increment,
  username varchar(40) default NULL,
  password varchar(40) default NULL,
  departmentid varchar(10) default NULL,
  flag varchar(2) default NULL,
  date datetime default NULL,
  ischeck varchar(2) default NULL,
  userkey varchar(20) default NULL,
  groupid varchar(2) default NULL,
  positionid varchar(20) default NULL,
  loginip text,
  online varchar(2) default '0',
  keytype varchar(2) default NULL,
  keytypeuser text,
  unionflag varchar(10) default NULL,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS toa_user_view;

CREATE TABLE toa_user_view (
  vid int(10) NOT NULL auto_increment,
  name varchar(255) default NULL,
  uid varchar(10) default NULL,
  number varchar(60) default NULL,
  sex varchar(20) default NULL,
  birthdate date default NULL,
  participationwork varchar(60) default NULL,
  tel varchar(60) default NULL,
  phone varchar(60) default NULL,
  fax varchar(60) default NULL,
  email varchar(255) default NULL,
  address varchar(255) default NULL,
  qq varchar(255) default NULL,
  contact varchar(255) default NULL,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (vid)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS toa_usergroup;

CREATE TABLE toa_usergroup (
  id smallint(5) unsigned NOT NULL auto_increment,
  groupname varchar(100) NOT NULL,
  purview text NOT NULL,
  type enum('system','user') NOT NULL default 'user',
  unionid varchar(10) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS toa_vacation;

CREATE TABLE toa_vacation (
  id int(10) NOT NULL auto_increment,
  uid varchar(10) default NULL,
  departmentid varchar(10) default NULL,
  note varchar(20) default NULL,
  content varchar(500) default NULL,
  startdate date default NULL,
  enddate date default NULL,
  starttime varchar(8) default NULL,
  endtime varchar(8) default NULL,
  uname varchar(20) default NULL,
  department varchar(40) default NULL,
  ceo varchar(40) default NULL,
  date datetime default NULL,
  type varchar(10) default NULL,
  deparid varchar(40) default NULL,
  ceoid varchar(40) default NULL,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS toa_web;

CREATE TABLE toa_web (
  id int(10) NOT NULL auto_increment,
  title varchar(60) default NULL,
  weburl varchar(120) default NULL,
  content varchar(120) default NULL,
  date datetime default NULL,
  uid varchar(10) default NULL,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS toa_workdate;

CREATE TABLE toa_workdate (
  id int(11) NOT NULL auto_increment,
  title varchar(50) default NULL,
  otype varchar(10) default NULL,
  startdate datetime default NULL,
  enddate datetime default NULL,
  content varchar(1000) default NULL,
  date datetime default NULL,
  type varchar(10) default NULL,
  uid varchar(10) default NULL,
  completiondate datetime default NULL,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS toa_help;
CREATE TABLE toa_help (
  id int(10) NOT NULL auto_increment,
  helpid varchar(30) default NULL,
  title varchar(255) default NULL,
  content text,
  helpdate datetime default NULL,
  unionid varchar(10) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS toa_union;
CREATE TABLE toa_union (
  id int(10) NOT NULL auto_increment,
  name varchar(255) default NULL,
  number varchar(10) default NULL,
  logo varchar(255) default NULL,
  ctype varchar(5) default NULL,
  username varchar(50) default NULL,
  password varchar(50) default NULL,
  unconfig varchar(5) default NULL,
  uncache varchar(5) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS toa_user_union;
CREATE TABLE toa_user_union (
  id int(10) NOT NULL auto_increment,
  usertype varchar(5) default NULL,
  unionid varchar(20) default NULL,
  uid varchar(20) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;