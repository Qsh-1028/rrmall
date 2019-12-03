<?php
//淘宝店铺名：云硕科技 qq:960327091
if (!defined('IN_IA')) {
	exit('Access Denied');
}

class Indicate_EweiShopV2Page extends PluginWebPage
{
	/**
	private $table = 'ewei_open_farm_indicate';
	/**
	private $field = array('id', 'uniacid', 'image', 'describe', 'create_time');
	/**
	private $message = array('image' => '请上传指示图片', 'describe' => '请填写指导描述');

	/**
	public function __construct($_init = true)
	{
		parent::__construct($_init);
	}

	/**
	public function main()
	{
		require_once $this->template();
	}

	/**
	public function addInfo()
	{
		global $_W;
		global $_GPC;
		$data = $_GPC['__input'];
		$where = array('id' => $data['id']);
		$data['uniacid'] = $_W['uniacid'];
		$this->checkInfo($data);
		$data = $this->model->removeUselessField($data, $this->field);

		if ($data['id']) {
			$noticeAdd = pdo_update($this->table, $data, $where);
		}
		else {
			$noticeAdd = pdo_insert($this->table, $data);
		}

		$this->model->returnJson($noticeAdd);
	}

	/**
	public function getInfo()
	{
		global $_W;
		global $_GPC;
		$id = $_GPC['__input']['id'];
		$configInfo = pdo_get($this->table, array('id' => $id));
		$configInfo['show_image'] = tomedia($configInfo['image']);
		$this->model->returnJson($configInfo);
	}

	/**
	public function getList()
	{
		global $_W;
		global $_GPC;
		$condition = array('uniacid' => $_W['uniacid']);
		$currentPage = intval($_GPC['page']);
		$pageSize = 10;
		$context = array('before' => 5, 'after' => 4, 'ajaxcallback' => true, 'callbackfuncname' => 'function.get_list');

		try {
			$sql = 'SELECT * FROM ' . tablename($this->table) . 'WHERE `uniacid`=' . $_W['uniacid'];
			$sql .= ' ORDER BY id DESC ';
			$sql .= ' LIMIT ' . ($currentPage - 1) * $pageSize . ',' . $pageSize;
			$indicateList = pdo_fetchall($sql, $condition);
			$total = pdo_count($this->table, $condition);
			$indicateList = $this->model->forTomedia($indicateList, 'image', 'show_image');
			$pages = pagination($total, $currentPage, $pageSize, '', $context);
			$this->model->returnJson($indicateList, $pages);
		}
		catch (Exception $e) {
			$this->model->errorMessage($_W['isajax'], $e->getMessage());
		}
	}

	/**
	public function deleteInfo()
	{
		global $_W;
		global $_GPC;
		$id = $_GPC['__input']['id'];
		$query = pdo_delete($this->table, array('id' => $id));
		$this->model->returnJson($query);
	}

	/**
	private function checkInfo($data)
	{
		$this->model->checkDataRequired($data, $this->message);
	}
}

?>