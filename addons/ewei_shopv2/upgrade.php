<?php
pdo_query("
SET FOREIGN_KEY_CHECKS=0;
ALTER TABLE `ims_ewei_shop_goods` ADD COLUMN `membercardpoint`  int(2) NULL DEFAULT 0 AFTER `showtotaladd`;
ALTER TABLE `ims_ewei_shop_member_card` ADD COLUMN `cardmodel`  int(2) NULL DEFAULT 1 AFTER `update_time`;
ALTER TABLE `ims_ewei_shop_member_card` ADD COLUMN `goodsids`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `cardmodel`;
SET FOREIGN_KEY_CHECKS=1;

");