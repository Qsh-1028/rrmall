<?php
//淘宝店铺名：云硕科技 qq:960327091
if (!defined('IN_IA')) {
	exit('Access Denied');
}

class Reply_EweiShopV2Page extends PluginMobilePage
{
	/**
	private $table = 'ewei_open_farm_reply';
	/**
	private $field = array('id', 'uniacid', 'brief_introduce', 'create_time');

	/**
	public function getList()
	{
		global $_W;
		global $_GPC;
		$filed = ' `id`,`brief_introduce` ';
		$sql = 'SELECT ' . $filed . ' FROM ' . tablename($this->table);
		$sql .= ' WHERE `uniacid` = \'' . $_W['uniacid'] . '\' ';
		$list = pdo_fetchall($sql);
		$this->model->returnJson($list);
	}
}

?>