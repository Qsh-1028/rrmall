<?php
//qq960327091 淘宝店铺：https://yscms.taobao.com
if (!pdo_fieldexists('ewei_shop_goods', 'minbuy')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_goods') . ' add `minbuy` int(11) default 0;');
}

if (!pdo_fieldexists('ewei_shop_goods', 'allcates')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_goods') . ' add `allcates` text;');
}

if (!pdo_fieldexists('ewei_shop_goods', 'invoice')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_goods') . ' add `invoice` tinyint(3) default 0;');
}

if (!pdo_fieldexists('ewei_shop_goods', 'repair')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_goods') . ' add `repair` tinyint(3)  default 0;');
}

if (!pdo_fieldexists('ewei_shop_goods', 'quality')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_goods') . ' add `quality` tinyint(3)  default 0;');
}

if (!pdo_fieldexists('ewei_shop_goods', 'seven')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_goods') . ' add `seven` tinyint(3)  default 0;');
	pdo_query('update ' . tablename('ewei_shop_goods') . ' set cash=0 where (cash=0 or cash=1);');
	pdo_query('update ' . tablename('ewei_shop_goods') . ' set cash=1 where cash=2;');
}

if (!pdo_fieldexists('ewei_shop_goods', 'buyshow')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_goods') . ' add `buyshow` tinyint(1)  default 0;');
}

if (!pdo_fieldexists('ewei_shop_goods', 'buycontent')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_goods') . ' add `buycontent` text;');
}

if (!pdo_fieldexists('ewei_shop_goods', 'verifytype')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_goods') . ' add `verifytype` tinyint(1)  default 0;');
}

if (!pdo_fieldexists('ewei_shop_goods', 'virtualsend')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_goods') . ' add `virtualsend` tinyint(1)  default 0;');
}

if (!pdo_fieldexists('ewei_shop_goods', 'virtualsendcontent')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_goods') . ' add `virtualsendcontent` text;');
}

if (!pdo_fieldexists('ewei_shop_member_history', 'times')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_member_history') . ' add `times` int(11)  default 0;');
	pdo_update('ewei_shop_member_history', array('times' => 1), array('deleted' => 0));
}

if (!pdo_fieldexists('ewei_shop_goods', 'money')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_goods') . ' add `money` varchar(255)  default \'\';');
}

if (!pdo_fieldexists('ewei_shop_goods', 'minprice')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_goods') . ' add `minprice` decimal(10,2);');
}

if (!pdo_fieldexists('ewei_shop_goods', 'maxprice')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_goods') . ' add `maxprice` decimal(10,2);');
}

if (!pdo_fieldexists('ewei_shop_goods', 'subtitle')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_goods') . ' add `subtitle` varchar(255) default \'\';');
}

if (!pdo_fieldexists('ewei_shop_goods', 'isdiscount_title')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_goods') . ' add `isdiscount_title`   varchar(255) default \'\';');
}

if (!pdo_fieldexists('ewei_shop_goods', 'isdiscount_time')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_goods') . ' add `isdiscount_time`   int(11) default 0;');
}

if (!pdo_fieldexists('ewei_shop_goods', 'isdiscount_discounts')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_goods') . ' add `isdiscount_discounts` text;');
}

if (!pdo_fieldexists('ewei_shop_goods', 'province')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_goods') . ' add `province` varchar(255) default \'\';');
}

if (!pdo_fieldexists('ewei_shop_goods', 'city')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_goods') . ' add `city` varchar(255) default \'\';');
}

if (pdo_fieldexists('ewei_shop_goods', 'commission_type')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_goods') . ' DROP COLUMN `commission_type`;');
}

if (!pdo_fieldexists('ewei_shop_goods', 'commission')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_goods') . ' add `commission` text;');
}

if (!pdo_fieldexists('ewei_shop_goods', 'diyfields')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_goods') . ' add `diyfields` text;');
}

if (!pdo_fieldexists('ewei_shop_goods', 'diysaveid')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_goods') . ' add `diysaveid` int(11) default 0;');
}

if (!pdo_fieldexists('ewei_shop_goods', 'diysave')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_goods') . ' add `diysave` tinyint(1) default 0;');
}

if (!pdo_fieldexists('ewei_shop_goods', 'showtotal')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_goods') . ' add `showtotal` tinyint(1) default 0;');
	pdo_query('update ' . tablename('ewei_shop_goods') . ' set showtotal=1');
}

if (pdo_tableexists('ewei_shop_express')) {
	if (pdo_fieldexists('ewei_shop_express', 'express_name')) {
		pdo_run('DROP TABLE ' . tablename('ewei_shop_express'));
	}
}

if (!pdo_tableexists('ewei_shop_express')) {
	pdo_run('
CREATE TABLE IF NOT EXISTS ' . tablename('ewei_shop_express') . ' (
`id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT \'\',
  `express` varchar(50) DEFAULT \'\',
  `status` tinyint(1) DEFAULT \'1\',
  `displayorder` tinyint(3) unsigned DEFAULT \'0\',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO ' . tablename('ewei_shop_express') . ' (`id`,`name`,`express`,`status`,`displayorder`) VALUES (1,\'顺丰\',\'shunfeng\',1,0),(2,\'申通\',\'shentong\',1,0),(3,\'韵达快运\',\'yunda\',1,0),(4,\'天天快递\',\'tiantian\',1,0),(5,\'圆通速递\',\'yuantong\',1,0),(6,\'中通速递\',\'zhongtong\',1,0),(7,\'ems快递\',\'ems\',1,0),(8,\'汇通快运\',\'huitongkuaidi\',1,0),(9,\'全峰快递\',\'quanfengkuaidi\',1,0),(10,\'宅急送\',\'zhaijisong\',1,0),(11,\'aae全球专递\',\'aae\',1,0),(12,\'安捷快递\',\'anjie\',1,0),(13,\'安信达快递\',\'anxindakuaixi\',1,0),(14,\'彪记快递\',\'biaojikuaidi\',1,0),(15,\'bht\',\'bht\',1,0),(16,\'百福东方国际物流\',\'baifudongfang\',1,0),(17,\'中国东方（COE）\',\'coe\',1,0),(18,\'长宇物流\',\'changyuwuliu\',1,0),(19,\'大田物流\',\'datianwuliu\',1,0),(20,\'德邦物流\',\'debangwuliu\',1,0),(21,\'dhl\',\'dhl\',1,0),(22,\'dpex\',\'dpex\',1,0),(23,\'d速快递\',\'dsukuaidi\',1,0),(24,\'递四方\',\'disifang\',1,0),(25,\'fedex（国外）\',\'fedex\',1,0),(26,\'飞康达物流\',\'feikangda\',1,0),(27,\'凤凰快递\',\'fenghuangkuaidi\',1,0),(28,\'飞快达\',\'feikuaida\',1,0),(29,\'国通快递\',\'guotongkuaidi\',1,0),(30,\'港中能达物流\',\'ganzhongnengda\',1,0),(31,\'广东邮政物流\',\'guangdongyouzhengwuliu\',1,0),(32,\'共速达\',\'gongsuda\',1,0),(33,\'恒路物流\',\'hengluwuliu\',1,0),(34,\'华夏龙物流\',\'huaxialongwuliu\',1,0),(35,\'海红\',\'haihongwangsong\',1,0),(36,\'海外环球\',\'haiwaihuanqiu\',1,0),(37,\'佳怡物流\',\'jiayiwuliu\',1,0),(38,\'京广速递\',\'jinguangsudikuaijian\',1,0),(39,\'急先达\',\'jixianda\',1,0),(40,\'佳吉物流\',\'jjwl\',1,0),(41,\'加运美物流\',\'jymwl\',1,0),(42,\'金大物流\',\'jindawuliu\',1,0),(43,\'嘉里大通\',\'jialidatong\',1,0),(44,\'晋越快递\',\'jykd\',1,0),(45,\'快捷速递\',\'kuaijiesudi\',1,0),(46,\'联邦快递（国内）\',\'lianb\',1,0),(47,\'联昊通物流\',\'lianhaowuliu\',1,0),(48,\'龙邦物流\',\'longbanwuliu\',1,0),(49,\'立即送\',\'lijisong\',1,0),(50,\'乐捷递\',\'lejiedi\',1,0),(51,\'民航快递\',\'minghangkuaidi\',1,0),(52,\'美国快递\',\'meiguokuaidi\',1,0),(53,\'门对门\',\'menduimen\',1,0),(54,\'OCS\',\'ocs\',1,0),(55,\'配思货运\',\'peisihuoyunkuaidi\',1,0),(56,\'全晨快递\',\'quanchenkuaidi\',1,0),(57,\'全际通物流\',\'quanjitong\',1,0),(58,\'全日通快递\',\'quanritongkuaidi\',1,0),(59,\'全一快递\',\'quanyikuaidi\',1,0),(60,\'如风达\',\'rufengda\',1,0),(61,\'三态速递\',\'santaisudi\',1,0),(62,\'盛辉物流\',\'shenghuiwuliu\',1,0),(63,\'速尔物流\',\'sue\',1,0),(64,\'盛丰物流\',\'shengfeng\',1,0),(65,\'赛澳递\',\'saiaodi\',1,0),(66,\'天地华宇\',\'tiandihuayu\',1,0),(67,\'tnt\',\'tnt\',1,0),(68,\'ups\',\'ups\',1,0),(69,\'万家物流\',\'wanjiawuliu\',1,0),(70,\'文捷航空速递\',\'wenjiesudi\',1,0),(71,\'伍圆\',\'wuyuan\',1,0),(72,\'万象物流\',\'wxwl\',1,0),(73,\'新邦物流\',\'xinbangwuliu\',1,0),(74,\'信丰物流\',\'xinfengwuliu\',1,0),(75,\'亚风速递\',\'yafengsudi\',1,0),(76,\'一邦速递\',\'yibangwuliu\',1,0),(77,\'优速物流\',\'youshuwuliu\',1,0),(78,\'邮政包裹挂号信\',\'youzhengguonei\',1,0),(79,\'邮政国际包裹挂号信\',\'youzhengguoji\',1,0),(80,\'远成物流\',\'yuanchengwuliu\',1,0),(81,\'源伟丰快递\',\'yuanweifeng\',1,0),(82,\'元智捷诚快递\',\'yuanzhijiecheng\',1,0),(83,\'运通快递\',\'yuntongkuaidi\',1,0),(84,\'越丰物流\',\'yuefengwuliu\',1,0),(85,\'源安达\',\'yad\',1,0),(86,\'银捷速递\',\'yinjiesudi\',1,0),(87,\'中铁快运\',\'zhongtiekuaiyun\',1,0),(88,\'中邮物流\',\'zhongyouwuliu\',1,0),(89,\'忠信达\',\'zhongxinda\',1,0),(90,\'芝麻开门\',\'zhimakaimen\',1,0);
');
}

if (!pdo_fieldexists('ewei_shop_order', 'remarksaler')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_order') . ' add `remarksaler` text;');
}

if (!pdo_fieldexists('ewei_shop_order', 'remarkclose')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_order') . ' add `remarkclose` text;');
}

if (!pdo_fieldexists('ewei_shop_order', 'isdiscountprice')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_order') . ' add `isdiscountprice` decimal(10,2) default 0;');
}

if (!pdo_fieldexists('ewei_shop_order', 'isvirtualsend')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_order') . ' add `isvirtualsend` tinyint(1) default 0;');
}

if (!pdo_fieldexists('ewei_shop_order', 'virtualsend_info')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_order') . ' add `virtualsend_info` text;');
}

if (!pdo_fieldexists('ewei_shop_order', 'verifyinfo')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_order') . ' add `verifyinfo` text;');
}

if (!pdo_fieldexists('ewei_shop_order', 'verifytype')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_order') . ' add `verifytype` tinyint(1) default 0;');
}

if (!pdo_fieldexists('ewei_shop_order', 'verifycodes')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_order') . ' add `verifycodes` text;');
}

if (!pdo_fieldexists('ewei_shop_order', 'invoicename')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_order') . ' add `invoicename` varchar(255) default \'\';');
}

if (!pdo_fieldexists('ewei_shop_order', 'closereason')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_order') . ' add `closereason` text;');
}

if (!pdo_fieldexists('ewei_shop_member', 'commission_total')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_member') . ' add `commission_total` decimal(10,2);');
}

if (!pdo_fieldexists('ewei_shop_member_cart', 'selected')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_member_cart') . ' add `selected` tinyint(1) default 1;');
	pdo_query('update  ' . tablename('ewei_shop_member_cart') . ' set selected=1');
}

if (!pdo_fieldexists('ewei_shop_member_level', 'enabled')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_member_level') . ' add `enabled` tinyint(1) default 0;');
	pdo_update('ewei_shop_member_level', array('enabled' => 1));
}

if (!pdo_fieldexists('ewei_shop_store', 'saletime')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_store') . ' add `saletime` varchar(255) default \'\';');
}

if (!pdo_fieldexists('ewei_shop_store', 'logo')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_store') . ' add `logo` varchar(255) default \'\';');
}

if (!pdo_fieldexists('ewei_shop_store', 'displayorder')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_store') . ' add `displayorder` int(11) default 0;');
}

if (!pdo_fieldexists('ewei_shop_store', 'desc')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_store') . ' add `desc` text;');
}

if (!pdo_fieldexists('ewei_shop_creditshop_goods', 'goodsid')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_creditshop_goods') . ' add `goodsid` int(11) default 0;');
}

if (!pdo_fieldexists('ewei_shop_perm_plugin', 'coms')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_perm_plugin') . ' add `coms` text;');
}

pdo_query('CREATE TABLE IF NOT EXISTS ' . tablename('ewei_shop_nav') . ' (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT \'0\',
  `navname` varchar(255) DEFAULT \'\',
  `icon` varchar(255) DEFAULT \'\',
  `url` varchar(255) DEFAULT \'\',
  `displayorder` int(11) DEFAULT \'0\',
  `status` tinyint(3) DEFAULT \'0\',
  PRIMARY KEY (`id`),
  KEY `idx_status` (`status`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;');
pdo_run('
CREATE TABLE IF NOT EXISTS ' . tablename('ewei_shop_system_company_article') . ' (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT \'\',
  `author` varchar(255) DEFAULT \'\',
  `thumb` varchar(255) DEFAULT \'\',
  `content` text,
  `createtime` int(11) DEFAULT \'0\',
  `displayorder` int(11) DEFAULT \'0\',
  `cate` int(11) DEFAULT \'0\',
  `status` tinyint(3) DEFAULT \'0\',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS ' . tablename('ewei_shop_system_company_category') . ' (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT \'\',
  `displayorder` int(11) DEFAULT \'0\',
  `status` int(11) DEFAULT \'0\',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS  ' . tablename('ewei_shop_system_guestbook') . ' (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT \'\',
  `content` varchar(255) NOT NULL DEFAULT \'\',
  `nickname` varchar(255) NOT NULL DEFAULT \'\',
  `createtime` int(11) DEFAULT NULL,
  `email` varchar(255) NOT NULL DEFAULT \'\',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS  ' . tablename('ewei_shop_system_link') . ' (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT \'\',
  `url` varchar(255) NOT NULL DEFAULT \'\',
  `thumb` varchar(255) NOT NULL DEFAULT \'\',
  `displayorder` int(11) DEFAULT NULL,
  `status` tinyint(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS  ' . tablename('ewei_shop_system_site') . ' (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL DEFAULT \'\',
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS  ' . tablename('ewei_shop_system_article') . ' (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT \'\',
  `author` varchar(255) DEFAULT \'\',
  `thumb` varchar(255) DEFAULT \'\',
  `content` text,
  `createtime` int(11) DEFAULT \'0\',
  `displayorder` int(11) DEFAULT \'0\',
  `cate` int(11) DEFAULT \'0\',
  `status` tinyint(3) DEFAULT \'0\',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS ' . tablename('ewei_shop_system_banner') . ' (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT \'\',
  `thumb` varchar(255) DEFAULT \'\',
  `url` varchar(255) DEFAULT \'\',
  `createtime` int(11) DEFAULT \'0\',
  `displayorder` int(11) DEFAULT \'0\',
  `status` tinyint(3) DEFAULT \'0\',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
CREATE TABLE  IF NOT EXISTS ' . tablename('ewei_shop_system_copyright_notice') . ' (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT \'\',
  `author` varchar(255) DEFAULT \'\',
  `content` text,
  `createtime` int(11) DEFAULT \'0\',
  `displayorder` int(11) DEFAULT \'0\',
  `status` tinyint(3) DEFAULT \'0\',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS ' . tablename('ewei_shop_system_case') . ' (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT \'\',
  `thumb` varchar(255) DEFAULT \'\',
  `qr` varchar(255) DEFAULT \'\',
  `displayorder` int(11) DEFAULT  \'0\',
  `status` tinyint(3) DEFAULT \'0\',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS  ' . tablename('ewei_shop_system_category') . ' (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT \'\',
  `displayorder` int(11) DEFAULT \'0\',
  `status` int(11) DEFAULT \'0\',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
');

if (!pdo_fieldexists('ewei_shop_system_copyright', 'ismanage')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_system_copyright') . ' add `ismanage` tinyint(3) default \'0\';');
}

if (!pdo_fieldexists('ewei_shop_system_copyright', 'title')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_system_copyright') . ' add `title` varchar(255) default \'\';');
}

if (!pdo_fieldexists('ewei_shop_system_copyright', 'logo')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_system_copyright') . ' add `logo` varchar(255) default \'\';');
}

if (!pdo_fieldexists('ewei_shop_plugin', 'thumb')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_plugin') . ' add `thumb` varchar(255) default \'\';');
	pdo_query('update ' . tablename('ewei_shop_plugin') . ' set thumb=concat(\'../addons/ewei_shopv2/static/images/\', `identity`, \'.jpg\')');
}

if (!pdo_fieldexists('ewei_shop_plugin', 'desc')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_plugin') . ' add `desc` varchar(500) default \'\';');
}

if (!pdo_fieldexists('ewei_shop_plugin', 'iscom')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_plugin') . ' add `iscom` tinyint(3) default \'0\';');
}

if (!pdo_fieldexists('ewei_shop_plugin', 'deprecated')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_plugin') . ' add `deprecated` tinyint(3) default \'0\';');
}

pdo_query('update ' . tablename('ewei_shop_plugin') . ' set iscom=1 where `identity` in (\'perm\',\'virtual\',\'coupon\',\'sale\',\'verify\',\'qiniu\',\'printer\',\'wxcard\',\'h5app\',\'wap\',\'sms\',\'tmessage\')');
pdo_query('update ' . tablename('ewei_shop_plugin') . ' set deprecated=1 where `identity` in (\'system\',\'tmessage\',\'perm\',\'designer\')');

if (!pdo_fieldexists('ewei_shop_poster', 'keyword2')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_poster') . ' add `keyword2` varchar(255) default \'\';');
}

if (!pdo_fieldexists('ewei_shop_postera', 'keyword2')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_postera') . ' add `keyword2` varchar(255) default \'\';');
}

if (!pdo_fieldexists('ewei_shop_coupon', 'pwdkey2')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_coupon') . ' add `pwdkey2` varchar(255) default \'\';');
}

if (!pdo_fieldexists('ewei_shop_article', 'article_keyword2')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_article') . ' add `article_keyword2` varchar(255) default \'\';');
}

if (!pdo_fieldexists('ewei_shop_article', 'displayorder')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_article') . ' add `displayorder` int(11) default 0;');
}

if (!pdo_fieldexists('ewei_shop_article_category', 'displayorder')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_article_category') . ' add `displayorder` int(11) default 0;');
}

if (!pdo_fieldexists('ewei_shop_article_category', 'isshow')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_article_category') . ' add `isshow` tinyint(1) default 0;');
}

if (!pdo_fieldexists('ewei_shop_article_sys', 'article_source')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_article_sys') . ' add `article_source` varchar(255) default \'\';');
}

if (!pdo_fieldexists('ewei_shop_article', 'article_advance')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_article') . ' add `article_advance` tinyint(3) default 0;');
}

if (!pdo_fieldexists('ewei_shop_article', 'article_virtualadd')) {
	pdo_query('ALTER TABLE  ' . tablename('ewei_shop_article') . ' add `article_virtualadd` tinyint(3) default 0;');
}

$sql = 'CREATE TABLE IF NOT EXISTS ' . tablename('ewei_shop_banner') . ' (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT \'0\',
  `bannername` varchar(50) DEFAULT \'\',
  `link` varchar(255) DEFAULT \'\',
  `thumb` varchar(255) DEFAULT \'\',
  `displayorder` int(11) DEFAULT \'0\',
  `enabled` int(11) DEFAULT \'0\',
  `shopid` int(11) DEFAULT \'0\',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_enabled` (`enabled`),
  KEY `idx_displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;';
pdo_run($sql);
$entry = pdo_fetchcolumn('select count(*) from ' . tablename('modules_bindings') . ' where `module`=\'ewei_shopv2\' and `title`=\'商城入口\' and `entry`=\'cover\' and `do`=\'mobile\' limit 1');

if ($entry <= 0) {
	pdo_query('insert into ' . tablename('modules_bindings') . ' (`module`,`title`,`entry`,`do`) values(\'ewei_shopv2\',\'商城入口\',\'cover\',\'mobile\');');
}

m('plugin')->refreshCache(1);

?>
