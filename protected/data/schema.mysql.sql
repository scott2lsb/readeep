CREATE TABLE tbl_user (
    id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(128) NOT NULL,
    password VARCHAR(128) NOT NULL,
    email VARCHAR(128) NOT NULL
);

INSERT INTO tbl_user (username, password, email) VALUES ('test1', 'pass1', 'test1@example.com');
INSERT INTO tbl_user (username, password, email) VALUES ('test2', 'pass2', 'test2@example.com');
INSERT INTO tbl_user (username, password, email) VALUES ('test3', 'pass3', 'test3@example.com');
INSERT INTO tbl_user (username, password, email) VALUES ('test4', 'pass4', 'test4@example.com');
INSERT INTO tbl_user (username, password, email) VALUES ('test5', 'pass5', 'test5@example.com');
INSERT INTO tbl_user (username, password, email) VALUES ('test6', 'pass6', 'test6@example.com');
INSERT INTO tbl_user (username, password, email) VALUES ('test7', 'pass7', 'test7@example.com');
INSERT INTO tbl_user (username, password, email) VALUES ('test8', 'pass8', 'test8@example.com');
INSERT INTO tbl_user (username, password, email) VALUES ('test9', 'pass9', 'test9@example.com');
INSERT INTO tbl_user (username, password, email) VALUES ('test10', 'pass10', 'test10@example.com');
INSERT INTO tbl_user (username, password, email) VALUES ('test11', 'pass11', 'test11@example.com');
INSERT INTO tbl_user (username, password, email) VALUES ('test12', 'pass12', 'test12@example.com');
INSERT INTO tbl_user (username, password, email) VALUES ('test13', 'pass13', 'test13@example.com');
INSERT INTO tbl_user (username, password, email) VALUES ('test14', 'pass14', 'test14@example.com');
INSERT INTO tbl_user (username, password, email) VALUES ('test15', 'pass15', 'test15@example.com');
INSERT INTO tbl_user (username, password, email) VALUES ('test16', 'pass16', 'test16@example.com');
INSERT INTO tbl_user (username, password, email) VALUES ('test17', 'pass17', 'test17@example.com');
INSERT INTO tbl_user (username, password, email) VALUES ('test18', 'pass18', 'test18@example.com');
INSERT INTO tbl_user (username, password, email) VALUES ('test19', 'pass19', 'test19@example.com');
INSERT INTO tbl_user (username, password, email) VALUES ('test20', 'pass20', 'test20@example.com');
INSERT INTO tbl_user (username, password, email) VALUES ('test21', 'pass21', 'test21@example.com');

-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2014 年 03 月 26 日 09:04
-- 服务器版本: 5.5.24-log
-- PHP 版本: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `readeep`
--

-- --------------------------------------------------------

--
-- 表的结构 `mail_templates`
--

CREATE TABLE IF NOT EXISTS `mail_templates` (
  `template_id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `template_code` varchar(30) NOT NULL DEFAULT '',
  `is_html` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `template_subject` varchar(200) NOT NULL DEFAULT '',
  `template_content` text NOT NULL,
  `last_modify` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`template_id`),
  UNIQUE KEY `template_code` (`template_code`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- 转存表中的数据 `mail_templates`
--

INSERT INTO `mail_templates` (`template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`) VALUES
(1, 'send_password', 1, '密码找回', '<div style="width:662px;margin:auto; font-size:13px; color:#AEAEAE; line-height:30px; padding-left:16px; padding-top:50px;">为了您能正常收到来自好东西的信息和会员邮件，请将<span style="color:#000; font-family:Arial, Helvetica, sans-serif;"><a style="text-decoration: none;color:#000; cursor: default;">no-reply@enlife.com</a></span>填加进您的通讯录</div><div style="width:618px; border: solid 1px #80BB2B; padding:8px 30px 20px 30px; margin:auto;"><table width="100%" border="0" cellspacing="0" cellpadding="0">  <tbody><tr>    <td align="left" valign="middle"><a href="http://hdx.enlife.com"><img src="http://hdx.lanyes.com/mailimg/mail_logo.jpg" width="150" height="76" alt="" /></a></td>    <td align="right" valign="middle"><a href="http://weibo.com/u/3424175994"><img src="http://hdx.lanyes.com/mailimg/mail_concerns.jpg" width="235" height="76" alt="" /></a></td>  </tr>  <tr>    <td colspan="2" align="left" valign="middle"><a href="http://hdx.enlife.com"><img src="http://hdx.lanyes.com/mailimg/mail_ban.jpg" width="618" height="68" alt="" /></a></td>    </tr></tbody></table><div style=" font-size:15px; font-weight:bold; color:#666; line-height:30px; margin-top:40px; margin-bottom:16px;">亲爱的{$user_name}:您好！</div><div style="line-height:24px; font-size:13px; color:#949494;">您正在通过邮箱找回密码，密码为{$password},请及时登录修改密码。<br />注意：此操作可能会修改您的密码、登录邮箱或绑定手机。如非本人操作，请及时登录并修改密码以保证账户安全。（工作人员不会向您索取此密码，请勿泄漏！）<br /></div><div style="line-height:24px; font-size:13px; color:#707070; margin-top:20px;">本邮件由好东西系统自动发出，请勿直接回复！<br />如果您有任何疑问或建议，请联系我们。<br />“好东西”电子商城，集第三方监管体系与移动购物为一体，开启了全新的购物体验。您只需要免费下载，安全食品、餐饮酒店、放心商品马上一网打尽！<br />客服QQ：2900600475 /2902020658 /2900385974 /2898720036<br />客服热线：400 066 3325</div><div style="height:30px; text-align:center;"><a href="http://hdx.enlife.com"><img src="http://hdx.lanyes.com/mailimg/mail_logo_b.jpg" width="106" height="30" alt="" /></a></div><div style="font-size:13px; color:#000;text-align:center; font-family:Arial, Helvetica, sans-serif; line-height:22px;">Copyright @ 2013 enlife.com 版权所有</div></div>', 1194824789),
(2, 'order_confirm', 0, '订单确认通知', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml">\n<head>\n<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />\n<title>好东西电子商城</title>\n</head>\n\n<body>\n<div style="width:662px;margin:auto; font-size:13px; color:#AEAEAE; line-height:30px; padding-left:16px; padding-top:50px;">为了您能正常收到来自好东西的信息和会员邮件，请将<span style="color:#000; font-family:Arial, Helvetica, sans-serif;"><a style="text-decoration: none;color:#000; cursor: default;">no-reply@enlife.com</a></span>填加进您的通讯录</div>\n<div style="width:618px; border: solid 1px #80BB2B; padding:8px 30px 20px 30px; margin:auto;">\n<table width="100%" border="0" cellspacing="0" cellpadding="0">\n  <tr>\n    <td align="left" valign="middle"><a href="http://hdx.enlife.com"><img src="http://hdx.lanyes.com/mailimg/mail_logo.jpg" width="150" height="76" /></a></td>\n    <td align="right" valign="middle"><a href="http://weibo.com/u/3424175994"><img src="http://hdx.lanyes.com/mailimg/mail_concerns.jpg" width="235" height="76" /></a></td>\n  </tr>\n  <tr>\n    <td colspan="2" align="left" valign="middle"><a href="http://hdx.enlife.com"><img src="http://hdx.lanyes.com/mailimg/mail_ban.jpg" width="618" height="68" /></a></td>\n    </tr>\n</table>\n    <div style=" font-size:15px; font-weight:bold; color:#666; line-height:30px; margin-top:40px; margin-bottom:16px;">亲爱的 <?php echo $user->user_name  ?>:您好！ \n    </div><br /><div style="line-height:24px; font-size:13px; color:#949494;">我们已经收到您于 <?php echo  date(''Y-m-d'',$order->add_time) ?> 提交的订单，该订单编号为：<?php echo $order->order_sn  ?> 请记住这个编号以便日后的查询。 <br /><br /><?php echo  $shop_name ?><br /><br /><?php echo  $send_date ?></div><br />\n<div style="line-height:24px; font-size:13px; color:#707070; margin-top:20px;">本邮件由好东西系统自动发出，请勿直接回复！<br />\n如果您有任何疑问或建议，请联系我们。<br />\n“好东西”电子商城，集第三方监管体系与移动购物为一体，开启了全新的购物体验。您只需要免费下载，安全食品、餐饮酒店、放心商品马上一网打尽！<br />\n客服QQ：2900600475 /2902020658 /2900385974 /2898720036<br />\n客服热线：400 066 3325\n</div>\n<div style="height:30px; text-align:center;"><a href="http://hdx.enlife.com"><img src="http://hdx.lanyes.com/mailimg/mail_logo_b.jpg" width="106" height="30" /></a></div>\n<div style="font-size:13px; color:#000;text-align:center; font-family:Arial, Helvetica, sans-serif; line-height:22px;">Copyright @ 2013 enlife.com 版权所有</div>\n</div>\n</body>\n</html>\n</body>\n</html>', 1158226370),
(3, 'deliver_notice', 1, '发货通知', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml">\n<head>\n<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />\n<title>好东西电子商城</title>\n</head>\n\n<body>\n<!--\n\n-->\n<div style="width:662px;margin:auto; font-size:13px; color:#AEAEAE; line-height:30px; padding-left:16px; padding-top:50px;">为了您能正常收到来自好东西的信息和会员邮件，请将<span style="color:#000; font-family:Arial, Helvetica, sans-serif;"><a style="text-decoration: none;color:#000; cursor: default;">no-reply@enlife.com</a></span>填加进您的通讯录</div>\n<div style="width:618px; border: solid 1px #80BB2B; padding:8px 30px 20px 30px; margin:auto;">\n<table width="100%" border="0" cellspacing="0" cellpadding="0">\n  <tr>\n    <td align="left" valign="middle"><a href="http://hdx.enlife.com"><img src="http://hdx.lanyes.com/mailimg/mail_logo.jpg" width="150" height="76" /></a></td>\n    <td align="right" valign="middle"><a href="http://weibo.com/u/3424175994"><img src="http://hdx.lanyes.com/mailimg/mail_concerns.jpg" width="235" height="76" /></a></td>\n  </tr>\n  <tr>\n    <td colspan="2" align="left" valign="middle"><a href="http://hdx.enlife.com"><img src="http://hdx.lanyes.com/mailimg/mail_ban.jpg" width="618" height="68" /></a></td>\n    </tr>\n</table>\n    <div style=" font-size:15px; font-weight:bold; color:#666; line-height:30px; margin-top:40px; margin-bottom:16px;">亲爱的 <?php echo $user->user_name  ?>:您好！</div>\n<div style="line-height:24px; font-size:13px; color:#949494;">感谢您使用好东西电子商城。<br />\n    您的订单  <?php echo  $order->list_sn ?>已经确认收到，我们已安排发货，感谢您的订购。<br />\n<p>收货信息：</p>\n<p>姓    名：    <?php echo  $order_payment->consignee ?></p>\n<p>手机：   <?php if($order_payment->mobile){ echo $order_payment->mobile; }else{ echo ''未填写'' ;}?></p>\n<p>地    址：   <?php echo  ''[''.$region.'']''.$order_payment->address ; ?></p>\n<p>邮    编：   <?php echo  $order_payment->zipcode ?></p>\n\n<p>订单详情：</p>\n</div>\n<div style=" font-size:15px; color:#333; line-height:30px; margin-top:30px;">订单信息</div>\n<div style="border: solid 1px #80BB2B; margin-bottom:4px;">\n<table width="100%" border="0" cellspacing="0" cellpadding="0">\n  <tr style="background:url(http://hdx.lanyes.com/mailimg/mail_tit.jpg) repeat-x left top; color:#fff; font-size:13px;">\n    <th width="20%" height="32" align="center" valign="middle" style="background:url(http://hdx.lanyes.com/mailimg/mail_tit_line.jpg) no-repeat right center;"><font color="#FFFFFF">订单编号</font></th>\n    <th width="20%" align="center" valign="middle" style="background:url(http://hdx.lanyes.com/mailimg/mail_tit_line.jpg) no-repeat right center;"><font color="#FFFFFF">订单总金额</font></th>\n    <th width="20%" align="center" valign="middle" style="background:url(http://hdx.lanyes.com/mailimg/mail_tit_line.jpg) no-repeat right center;"><font color="#FFFFFF">下单时间</font></th>\n    <th width="20%" align="center" valign="middle" style="background:url(http://hdx.lanyes.com/mailimg/mail_tit_line.jpg) no-repeat right center;"><font color="#FFFFFF">支付方式</font></th>\n    <th width="20%" align="center" valign="middle"><font color="#FFFFFF">收货人姓名</font></th>\n  </tr>\n  <tr style=" font-size:12px; color:#333;">\n      <td height="32" align="center" valign="middle"><?php echo $order->list_sn ?></td>\n      <td align="center" valign="middle"><span style="color:#f00;"><?php echo Fun::price_format($order->goods_amount) ?></span></td>\n      <td align="center" valign="middle">  <?php echo date(''Y-m-d'',$order_payment->add_time) ?></td>\n      <td align="center" valign="middle"><?php echo $order_payment->pay_name  ?></td>\n    <td align="center" valign="middle"> <?php echo $order_payment->consignee ?></td>\n  </tr>\n</table>\n</div>\n<div style="width:584px;border: solid 1px #80BB2B; padding-left:16px; padding-right:16px; background-color:#FFECC4; padding-top:6px; padding-bottom:12px;">\n<table width="100%" border="0" cellspacing="0" cellpadding="0">\n  <tr style="font-size:13px;">\n    <td width="111" height="34" align="center" valign="middle">产品信息</td>\n    <td width="111" align="center" valign="middle">产品编号</td>\n    <td width="130" align="center" valign="middle">产品名称</td>\n    <td width="111" align="center" valign="middle">数量</td>\n	<td width="111" align="center" valign="middle">物流信息</td>\n  </tr>\n  \n   <?php foreach ($goods_list as $goods){ ?>\n  <tr style="background:url(http://hdx.lanyes.com/mailimg/mail_list.jpg) no-repeat left top; font-size:12px;">\n      <td height="108" align="center" valign="middle"><img src="<?php echo GOODS_THUMB.$goods[''goods_img''] ?>" width="90" height="90" /></td>\n    <td align="center" valign="middle"><?php echo $goods[''goods_sn''] ?></td>\n    <td style="background: url(http://hdx.lanyes.com/mailimg/mail_list.jpg) no-repeat left 27 top;" align="center" valign="middle"><?php echo $goods[''goods_name''] ?></td>\n    <td align="center" valign="middle"><?php echo $goods[''goods_number''] ?></td>\n    <td align="center" valign="middle"><?php echo $shipping_name ?><br/><?php echo $order->invoice_no ?></td>\n  </tr>\n  <tr style="background:url(http://hdx.lanyes.com/mailimg/mail_list_line.jpg) repeat-x left center;">\n    <td height="19" align="center" valign="middle">&nbsp;</td>\n    <td align="center" valign="middle">&nbsp;</td>\n    <td align="center" valign="middle">&nbsp;</td>\n    <td align="center" valign="middle">&nbsp;</td>\n   <td align="center" valign="middle">&nbsp;</td>\n  </tr>\n   <?php } ?>\n</table>\n</div>\n<div style="line-height:24px; font-size:13px; color:#707070; margin-top:20px;">本邮件由好东西系统自动发出，请勿直接回复！<br />如果您有任何疑问或建议，请联系我们。<br />\n“好东西”电子商城，集第三方监管体系与移动购物为一体，开启了全新的购物体验。您只需要免费下载，安全食品、餐饮酒店、放心商品马上一网打尽！<br />\n客服QQ：2900600475 /2902020658 /2900385974 /2898720036<br />\n客服热线：400 066 3325\n</div>\n<div style="height:30px; text-align:center;"><a href="http://hdx.enlife.com"><img src="http://hdx.lanyes.com/mailimg/mail_logo_b.jpg" width="106" height="30" /></a></div>\n<div style="font-size:13px; color:#000;text-align:center; font-family:Arial, Helvetica, sans-serif; line-height:22px;">Copyright @ 2013 enlife.com 版权所有</div>\n</div>\n</body>\n</html>\n\n</body>\n\n</html>', 1194823291),
(4, 'order_cancel', 0, '订单取消', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml">\n<head>\n<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />\n<title>好东西电子商城</title>\n</head>\n\n<body>\n<div style="width:662px;margin:auto; font-size:13px; color:#AEAEAE; line-height:30px; padding-left:16px; padding-top:50px;">为了您能正常收到来自好东西的优惠信息和会员邮件，请将<span style="color:#000; font-family:Arial, Helvetica, sans-serif;"><a style="text-decoration: none;color:#000; cursor: default;">no-reply@enlife.com</a></span>填加进您的通讯录</div>\n<div style="width:618px; border: solid 1px #80BB2B; padding:8px 30px 20px 30px; margin:auto;">\n<table width="100%" border="0" cellspacing="0" cellpadding="0">\n  <tr>\n    <td align="left" valign="middle"><a href="http://hdx.enlife.com"><img src="http://hdx.lanyes.com/mailimg/mail_logo.jpg" width="150" height="76" /></a></td>\n    <td align="right" valign="middle"><a href="http://weibo.com/u/3424175994"><img src="http://hdx.lanyes.com/mailimg/mail_concerns.jpg" width="235" height="76" /></a></td>\n  </tr>\n  <tr>\n    <td colspan="2" align="left" valign="middle"><a href="http://hdx.enlife.com"><img src="http://hdx.lanyes.com/mailimg/mail_ban.jpg" width="618" height="68" /></a></td>\n    </tr>\n</table>\n    <div style=" font-size:15px; font-weight:bold; color:#666; line-height:30px; margin-top:40px; margin-bottom:16px;">亲爱的 <?php echo $user->user_name ?>:您好！</div><br /><div style="line-height:24px; font-size:13px; color:#949494;">您的编号为：<?php echo $order->order_sn ?>的订单已取消。<br /><br /><?php echo $shop_name ?><br /><br /><?php echo $send_date ?></div><br />\n<div style="line-height:24px; font-size:13px; color:#707070; margin-top:20px;">本邮件由好东西系统自动发出，请勿直接回复！<br />如果您有任何疑问或建议，请联系我们。<br />\n“好东西”电子商城，集第三方监管体系与移动购物为一体，开启了全新的购物体验。您只需要免费下载，安全食品、餐饮酒店、放心商品马上一网打尽！<br />\n客服QQ：2900600475 /2902020658 /2900385974 /2898720036<br />\n客服热线：400 066 3325\n</div>\n<div style="height:30px; text-align:center;"><a href="http://hdx.enlife.com"><img src="http://hdx.lanyes.com/mailimg/mail_logo_b.jpg" width="106" height="30" /></a></div>\n<div style="font-size:13px; color:#000;text-align:center; font-family:Arial, Helvetica, sans-serif; line-height:22px;">Copyright @ 2013 enlife.com 版权所有</div>\n</div>\n</body>\n</html>\n\n</body>\n\n</html>', 1156491130),
(5, 'order_invalid', 0, '订单无效', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml">\n<head>\n<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />\n<title>好东西电子商城</title>\n</head>\n\n<body>\n<div style="width:662px;margin:auto; font-size:13px; color:#AEAEAE; line-height:30px; padding-left:16px; padding-top:50px;">为了您能正常收到来自好东西的信息和会员邮件，请将<span style="color:#000; font-family:Arial, Helvetica, sans-serif;"><a style="text-decoration: none;color:#000; cursor: default;">no-reply@enlife.com</a></span>填加进您的通讯录</div>\n<div style="width:618px; border: solid 1px #80BB2B; padding:8px 30px 20px 30px; margin:auto;">\n<table width="100%" border="0" cellspacing="0" cellpadding="0">\n  <tr>\n    <td align="left" valign="middle"><a href="http://hdx.enlife.com"><img src="http://hdx.lanyes.com/mailimg/mail_logo.jpg" width="150" height="76" /></a></td>\n    <td align="right" valign="middle"><a href="http://weibo.com/u/3424175994"><img src="http://hdx.lanyes.com/mailimg/mail_concerns.jpg" width="235" height="76" /></a></td>\n  </tr>\n  <tr>\n    <td colspan="2" align="left" valign="middle"><a href="http://hdx.enlife.com"><img src="http://hdx.lanyes.com/mailimg/mail_ban.jpg" width="618" height="68" /></a></td>\n    </tr>\n</table>\n    <div style=" font-size:15px; font-weight:bold; color:#666; line-height:30px; margin-top:40px; margin-bottom:16px;">亲爱的 <?php echo $user->user_name ?> ：您好！</div><br /><div style="line-height:24px; font-size:13px; color:#949494;">您的编号为：<?php echo $order->order_sn ?>的订单无效。 <br /><br /><?php echo $shop_name ?><br /><br /><?php echo $send_date ?></div><br />\n<div style="line-height:24px; font-size:13px; color:#707070; margin-top:20px;">本邮件由好东西系统自动发出，请勿直接回复！<br />如果您有任何疑问或建议，请联系我们。<br />\n“好东西”电子商城，集第三方监管体系与移动购物为一体，开启了全新的购物体验。您只需要免费下载，安全食品、餐饮酒店、放心商品马上一网打尽！<br />\n客服QQ：2900600475 /2902020658 /2900385974 /2898720036<br />\n客服热线：400 066 3325\n</div>\n<div style="height:30px; text-align:center;"><a href="http://hdx.enlife.com"><img src="http://hdx.lanyes.com/mailimg/mail_logo_b.jpg" width="106" height="30" /></a></div>\n<div style="font-size:13px; color:#000;text-align:center; font-family:Arial, Helvetica, sans-serif; line-height:22px;">Copyright @ 2013 enlife.com 版权所有</div>\n</div>\n</body>\n</html>\n\n</body>\n\n</html>', 1156491164),
(6, 'send_bonus', 1, '发红包', '<div style="width:662px;margin:auto; font-size:13px; color:#AEAEAE; line-height:30px; padding-left:16px; padding-top:50px;">为了您能正常收到来自好东西的优惠信息和会员邮件，请将<span style="color:#000; font-family:Arial, Helvetica, sans-serif;"><a style="text-decoration: none;color:#000; cursor: default;">no-reply@enlife.com</a></span>填加进您的通讯录</div><div style="width:618px; border: solid 1px #80BB2B; padding:8px 30px 20px 30px; margin:auto;"><table width="100%" border="0" cellspacing="0" cellpadding="0">  <tbody><tr>    <td align="left" valign="middle"><a href="http://hdx.enlife.com"><img src="http://hdx.lanyes.com/mailimg/mail_logo.jpg" width="150" height="76" alt="" /></a></td>    <td align="right" valign="middle"><a href="http://weibo.com/u/3424175994"><img src="http://hdx.lanyes.com/mailimg/mail_concerns.jpg" width="235" height="76" alt="" /></a></td>  </tr>  <tr>    <td colspan="2" align="left" valign="middle"><a href="http://hdx.enlife.com"><img src="http://hdx.lanyes.com/mailimg/mail_ban.jpg" width="618" height="68" alt="" /></a></td>    </tr></tbody></table><div style=" font-size:15px; font-weight:bold; color:#666; line-height:30px; margin-top:40px; margin-bottom:16px;">亲爱的{$user_name}:您好！ </div><div style="line-height:24px; font-size:13px; color:#949494;">恭喜您获得了{$count}个红包，金额为{$money}<br /><br>\n{$shop_name}<br /><br />\n{$send_date}</div>\n\n<div style="line-height:24px; font-size:13px; color:#707070; margin-top:20px;">本邮件由好东西系统自动发出，请勿直接回复！<br />如果您有任何疑问或建议，请联系我们。<br />“好东西”电子商城，集第三方监管体系与移动购物为一体，开启了全新的购物体验。您只需要免费下载，安全食品、餐饮酒店、放心商品马上一网打尽！<br />客服QQ：2900600475 /2902020658 /2900385974 /2898720036<br />客服热线：400 066 3325</div><div style="height:30px; text-align:center;"><a href="http://hdx.enlife.com"><img src="http://hdx.lanyes.com/mailimg/mail_logo_b.jpg" width="106" height="30" alt="" /></a></div><div style="font-size:13px; color:#000;text-align:center; font-family:Arial, Helvetica, sans-serif; line-height:22px;">Copyright @ 2013 enlife.com 版权所有</div></div>', 1156491184),
(7, 'group_buy', 1, '团购商品', '亲爱的{$consignee}，您好！<br>\n<br>\n您于{$order_time}在本店参加团购商品活动，所购买的商品名称为：{$goods_name}，数量：{$goods_number}，订单号为：{$order_sn}，订单金额为：{$order_amount}<br>\n<br>\n此团购商品现在已到结束日期，并达到最低价格，您现在可以对该订单付款。<br>\n<br>\n请点击下面的链接：<br>\n<a href="{$shop_url}" target="_blank">{$shop_url}</a><br>\n<br>\n请尽快登录到用户中心，查看您的订单详情信息。 <br>\n<br>\n{$shop_name} <br>\n<br>\n{$send_date}', 1194824668),
(8, 'register_validate', 1, '邮件验证', '{$user_name}您好！<br><br>\n\n这封邮件是 {$shop_name} 发送的。你收到这封邮件是为了验证你注册邮件地址是否有效。如果您已经通过验证了，请忽略这封邮件。<br>\n请点击以下链接(或者复制到您的浏览器)来验证你的邮件地址:<br>\n<a href="{$validate_email}" target="_blank">{$validate_email}</a><br><br>\n\n{$shop_name}<br>\n{$send_date}', 1162201031),
(9, 'virtual_card', 0, '虚拟卡片', '亲爱的{$order.consignee}\r\n你好！您的订单{$order.order_sn}中{$goods.goods_name} 商品的详细信息如下:\r\n{foreach from=$virtual_card item=card}\r\n{if $card.card_sn}卡号：{$card.card_sn}{/if}{if $card.card_password}卡片密码：{$card.card_password}{/if}{if $card.end_date}截至日期：{$card.end_date}{/if}\r\n{/foreach}\r\n再次感谢您对我们的支持。欢迎您的再次光临。\r\n\r\n{$shop_name} \r\n{$send_date}', 1162201031),
(10, 'attention_list', 0, '关注商品', '亲爱的{$user_name}您好~\n\n您关注的商品 : {$goods_name} 最近已经更新,请您查看最新的商品信息\n\n{$goods_url}\n\n{$shop_name} \n{$send_date}', 1183851073),
(11, 'remind_of_new_order', 0, '新订单通知', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml">\n<head>\n<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />\n<title>无标题文档</title>\n</head>\n\n<body>\n<div style="width:662px;margin:auto; font-size:13px; color:#AEAEAE; line-height:30px; padding-left:16px; padding-top:50px;">为了您能正常收到来自好东西的信息和会员邮件，请将<span style="color:#000; font-family:Arial, Helvetica, sans-serif;"><a style="text-decoration: none;color:#000; cursor: default;">no-reply@enlife.com</a></span>填加进您的通讯录</div>\n<div style="width:618px; border: solid 1px #80BB2B; padding:8px 30px 20px 30px; margin:auto;">\n<table width="100%" border="0" cellspacing="0" cellpadding="0">\n  <tr>\n    <td align="left" valign="middle"><a href="http://hdx.enlife.com"><img src="http://hdx.lanyes.com/mailimg/mail_logo.jpg" width="150" height="76" /></a></td>\n    <td align="right" valign="middle"><a href="http://weibo.com/u/3424175994"><img src="http://hdx.lanyes.com/mailimg/mail_concerns.jpg" width="235" height="76" /></a></td>\n  </tr>\n  <tr>\n    <td colspan="2" align="left" valign="middle"><a href="http://hdx.enlife.com"><img src="http://hdx.lanyes.com/mailimg/mail_ban.jpg" width="618" height="68" /></a></td>\n    </tr>\n</table>\n<div style=" font-size:15px; font-weight:bold; color:#666; line-height:30px; margin-top:40px; margin-bottom:16px;">亲爱的<?php echo $suppliers_info->suppliers_name ?>供货商，您好！</div>\n<div style="line-height:24px; font-size:13px; color:#949494;">快来看看吧，又有新订单了。<br /> 收货人:<?php echo $order_info->consignee ?>   <br />   收货人地址:<?php echo $region.$order_info->address ?><br />\n 收货人电话:<?php echo $order_info->mobile ?> <br />  \n</div>\n\n\n\n<div style=" font-size:15px; color:#333; line-height:30px; margin-top:30px;">订单信息</div>\n\n<div style="border: solid 1px #80BB2B; margin-bottom:4px;">\n<table width="100%" border="0" cellspacing="0" cellpadding="0">\n  <tr style="background:url(http://hdx.lanyes.com/mailimg/mail_tit.jpg) repeat-x left top; color:#fff; font-size:13px;">\n    <th width="20%" height="32" align="center" valign="middle" style="background:url(http://hdx.lanyes.com/mailimg/mail_tit_line.jpg) no-repeat right center;"><font color="#FFFFFF">订单编号</font></th>\n    <th width="40%" align="center" valign="middle" style="background:url(http://hdx.lanyes.com/mailimg/mail_tit_line.jpg) no-repeat right center;"><font color="#FFFFFF">下单时间</font></th>\n    <th width="40%" align="center" valign="middle"><font color="#FFFFFF">收货人姓名</font></th>\n  </tr>\n  <tr style=" font-size:12px; color:#333;">\n    <td height="32" align="center" valign="middle"><?php echo $list_sn ?></td>\n    <td align="center" valign="middle"> <?php echo time(); ?></td>\n    <td align="center" valign="middle"> <?php echo $order_info->consignee ?></td>\n  </tr>\n</table>\n</div>\n<div style="width:584px;border: solid 1px #80BB2B; padding-left:16px; padding-right:16px; background-color:#FFECC4; padding-top:6px; padding-bottom:12px;">\n<table width="100%" border="0" cellspacing="0" cellpadding="0">\n  <tr style="font-size:13px;">\n    <td width="111" height="34" align="center" valign="middle">产品信息</td>\n    <td width="125" align="center" valign="middle">产品编号</td>\n    <td width="251" align="center" valign="middle">产品名称</td>\n    <td width="97" align="center" valign="middle">数量</td>\n  </tr>\n  \n   <?php  foreach($goods_list as $key=>$goods){ ?>\n  <tr style="background:url(http://hdx.lanyes.com/mailimg/mail_list.jpg) no-repeat left top; font-size:12px;">\n    <td height="108" align="center" valign="middle"><img src="<?php echo GOODS_THUMB.$goods[''goods_img''] ?>" width="90" height="90" /></td>\n    <td align="center" valign="middle"><?php echo $goods[''goods_sn''] ?></td>\n    <td align="center" valign="middle"><?php echo $goods[''goods_name''] ?></td>\n    <td align="center" valign="middle"><?php echo $goods[''goods_number''] ?></td>\n  </tr>\n  <tr style="background:url(http://hdx.lanyes.com/mailimg/mail_list_line.jpg) repeat-x left center;">\n    <td height="19" align="center" valign="middle">&nbsp;</td>\n    <td align="center" valign="middle">&nbsp;</td>\n    <td align="center" valign="middle">&nbsp;</td>\n    <td align="center" valign="middle">&nbsp;</td>\n  </tr>\n  <?php } ?>\n  \n  \n \n</table>\n</div>\n\n\n<div style="line-height:24px; font-size:13px; color:#707070; margin-top:20px;">本邮件由好东西系统自动发出，请勿直接回复！<br /><br />\n如果您有任何疑问或建议，请联系我们。<br />\n“好东西”电子商城，集第三方监管体系与移动购物为一体，开启了全新的购物体验。您只需要免费下载，安全食品、餐饮酒店、放心商品马上一网打尽！<br />\n客服QQ：2900600475 /2902020658 /2900385974 /2898720036<br />\n客服热线：400 066 3325\n</div>\n<div style="height:30px; text-align:center;"><a href="http://hdx.enlife.com"><img src="http://hdx.lanyes.com/mailimg/mail_logo_b.jpg" width="106" height="30" /></a></div>\n<div style="font-size:13px; color:#000;text-align:center; font-family:Arial, Helvetica, sans-serif; line-height:22px;">Copyright @ 2013 enlife.com 版权所有</div>\n</div>\n</body>\n</html>', 1196239170),
(12, 'goods_booking', 1, '缺货回复', '亲爱的{$user_name}。你好！</br></br>{$dispose_note}</br></br>您提交的缺货商品链接为</br></br><a href="{$goods_link}" target="_blank">{$goods_name}</a></br><br>{$shop_name} </br>{$send_date}', 0),
(13, 'user_message', 1, '留言回复', '亲爱的{$user_name}。你好！</br></br>对您的留言：</br>{$message_content}</br></br>店主作了如下回复：</br>{$message_note}</br></br>您可以随时回到店中和店主继续沟通。</br>{$shop_name}</br>{$send_date}', 0),
(14, 'recomment', 1, '用户评论回复', '亲爱的{$user_name}。你好！</br></br>对您的评论：</br>“{$comment}”</br></br>店主作了如下回复：</br>“{$recomment}”</br></br>您可以随时回到店中和店主继续沟通。</br>{$shop_name}</br>{$send_date}', 0),
(15, 'remind_of_upgrade', 1, '用户等级升级', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml">\r\n<head>\r\n<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />\r\n<title>好东西电子商城</title>\r\n</head>\r\n\r\n<body>\r\n<div style="width:662px;margin:auto; font-size:13px; color:#AEAEAE; line-height:30px; padding-left:16px; padding-top:50px;">为了您能正常收到来自好东西的优惠信息和会员邮件，请将<span style="color:#000; font-family:Arial, Helvetica, sans-serif;"><a style="text-decoration: none;color:#000; cursor: default;">no-reply@enlife.com</a></span>填加进您的通讯录</div>\r\n<div style="width:618px; border: solid 1px #80BB2B; padding:8px 30px 20px 30px; margin:auto;">\r\n<table width="100%" border="0" cellspacing="0" cellpadding="0">\r\n  <tr>\r\n    <td align="left" valign="middle"><a href="http://hdx.enlife.com"><img src="http://hdx.lanyes.com/mailimg/mail_logo.jpg" width="150" height="76" /></a></td>\r\n    <td align="right" valign="middle"><a href="http://weibo.com/u/3424175994"><img src="http://hdx.lanyes.com/mailimg/mail_concerns.jpg" width="235" height="76" /></a></td>\r\n  </tr>\r\n  <tr>\r\n    <td colspan="2" align="left" valign="middle"><a href="http://hdx.enlife.com"><img src="http://hdx.lanyes.com/mailimg/mail_ban.jpg" width="618" height="68" /></a></td>\r\n    </tr>\r\n</table>\r\n<div style=" font-size:15px; font-weight:bold; color:#666; line-height:30px; margin-top:40px; margin-bottom:16px;">亲爱的{$user_name}，您好！</div>\r\n<div style="line-height:24px; font-size:13px; color:#949494;">很高兴通知您，您的会员等级已升级为{$rank_name}会员，可享受更多专享服务。详情请查看好东西会员制度说明,<br />\r\n由于邮件接收时间可能存在延迟，您的会员级别最终以好东西电子商城会员中心的显示为准。如有任何疑问，可查看好东西相关规则。<br /><br />{$shop_name}<br /><br />{$send_date}\r\n</div>\r\n<div style="line-height:24px; font-size:13px; color:#707070; margin-top:20px;">本邮件由好东西系统自动发出，请勿直接回复！<br />如果您有任何疑问或建议，请联系我们。<br />\r\n“好东西”电子商城，集第三方监管体系与移动购物为一体，开启了全新的购物体验。您只需要免费下载，安全食品、餐饮酒店、放心商品马上一网打尽！<br />\r\n客服QQ：2900600475 /2902020658 /2900385974 /2898720036<br />\r\n客服热线：400 066 3325\r\n</div>\r\n<div style="height:30px; text-align:center;"><a href="http://hdx.enlife.com"><img src="http://hdx.lanyes.com/mailimg/mail_logo_b.jpg" width="106" height="30" /></a></div>\r\n<div style="font-size:13px; color:#000;text-align:center; font-family:Arial, Helvetica, sans-serif; line-height:22px;">Copyright @ 2013 enlife.com 版权所有</div>\r\n</div>\r\n</body>\r\n</html>\r\n\r\n</body>\r\n\r\n</html>', 0),
(16, 'send_revise_email_value', 1, '修改用户密码', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml">\r\n<head>\r\n<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />\r\n<title>好东西电子商城</title>\r\n</head>\r\n\r\n<body>\r\n<div style="width:662px;margin:auto; font-size:13px; color:#AEAEAE; line-height:30px; padding-left:16px; padding-top:50px;">为了您能正常收到来自好东西的优惠信息和会员邮件，请将<span style="color:#000; font-family:Arial, Helvetica, sans-serif;"><a style="text-decoration: none;color:#000; cursor: default;">no-reply@enlife.com</a></span>填加进您的通讯录</div>\r\n<div style="width:618px; border: solid 1px #80BB2B; padding:8px 30px 20px 30px; margin:auto;">\r\n<table width="100%" border="0" cellspacing="0" cellpadding="0">\r\n  <tr>\r\n    <td align="left" valign="middle"><a href="http://hdx.enlife.com"><img src="http://hdx.lanyes.com/mailimg/mail_logo.jpg" width="150" height="76" /></a></td>\r\n    <td align="right" valign="middle"><a href="http://weibo.com/u/3424175994"><img src="http://hdx.lanyes.com/mailimg/mail_concerns.jpg" width="235" height="76" /></a></td>\r\n  </tr>\r\n  <tr>\r\n    <td colspan="2" align="left" valign="middle"><a href="http://hdx.enlife.com"><img src="http://hdx.lanyes.com/mailimg/mail_ban.jpg" width="618" height="68" /></a></td>\r\n    </tr>\r\n</table>\r\n<div style=" font-size:15px; font-weight:bold; color:#666; line-height:30px; margin-top:40px; margin-bottom:16px;">亲爱的{$user_name}:您好！</div><br /><div style="line-height:24px; font-size:13px; color:#949494;">您的账号刚被修改了密码，如非您本人修改请立刻联系客服处理。 </div><br />\r\n<div style="line-height:24px; font-size:13px; color:#707070; margin-top:20px;">本邮件由好东西系统自动发出，请勿直接回复！<br /><br />\r\n如果您有任何疑问或建议，请联系我们。<br />\r\n“好东西”电子商城，集第三方监管体系与移动购物为一体，开启了全新的购物体验。您只需要免费下载，安全食品、餐饮酒店、放心商品马上一网打尽！<br />\r\n客服QQ：2900600475 /2902020658 /2900385974 /2898720036<br />\r\n客服热线：400 066 3325\r\n</div>\r\n<div style="height:30px; text-align:center;"><a href="http://hdx.enlife.com"><img src="http://hdx.lanyes.com/mailimg/mail_logo_b.jpg" width="106" height="30" /></a></div>\r\n<div style="font-size:13px; color:#000;text-align:center; font-family:Arial, Helvetica, sans-serif; line-height:22px;">Copyright @ 2013 enlife.com 版权所有</div>\r\n</div>\r\n</body>\r\n</html>\r\n\r\n</body>\r\n\r\n</html>', 0),
(17, 'send_revise_person_email_value', 1, '修改用户个人资料', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml">\r\n<head>\r\n<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />\r\n<title>好东西电子商城</title>\r\n</head>\r\n\r\n<body>\r\n<div style="width:662px;margin:auto; font-size:13px; color:#AEAEAE; line-height:30px; padding-left:16px; padding-top:50px;">为了您能正常收到来自好东西的优惠信息和会员邮件，请将<span style="color:#000; font-family:Arial, Helvetica, sans-serif;"><a style="text-decoration: none;color:#000; cursor: default;">no-reply@enlife.com</a></span>填加进您的通讯录</div>\r\n<div style="width:618px; border: solid 1px #80BB2B; padding:8px 30px 20px 30px; margin:auto;">\r\n<table width="100%" border="0" cellspacing="0" cellpadding="0">\r\n  <tr>\r\n    <td align="left" valign="middle"><a href="http://hdx.enlife.com"><img src="http://hdx.lanyes.com/mailimg/mail_logo.jpg" width="150" height="76" /></a></td>\r\n    <td align="right" valign="middle"><a href="http://weibo.com/u/3424175994"><img src="http://hdx.lanyes.com/mailimg/mail_concerns.jpg" width="235" height="76" /></a></td>\r\n  </tr>\r\n  <tr>\r\n    <td colspan="2" align="left" valign="middle"><a href="http://hdx.enlife.com"><img src="http://hdx.lanyes.com/mailimg/mail_ban.jpg" width="618" height="68" /></a></td>\r\n    </tr>\r\n</table>\r\n<div style=" font-size:15px; font-weight:bold; color:#666; line-height:30px; margin-top:40px; margin-bottom:16px;">亲爱的{$user_name}：您好！</div><br /><div style="line-height:24px; font-size:13px; color:#949494;">您的账号刚被修改了个人资料，如非您本人修改请立刻联系客服处理。 </div><br />\r\n<div style="line-height:24px; font-size:13px; color:#707070; margin-top:20px;">本邮件由好东西系统自动发出，请勿直接回复！<br /><br />\r\n如果您有任何疑问或建议，请联系我们。<br />\r\n“好东西”电子商城，集第三方监管体系与移动购物为一体，开启了全新的购物体验。您只需要免费下载，安全食品、餐饮酒店、放心商品马上一网打尽！<br />\r\n客服QQ：2900600475 /2902020658 /2900385974 /2898720036<br />\r\n客服热线：400 066 3325\r\n</div>\r\n<div style="height:30px; text-align:center;"><a href="http://hdx.enlife.com"><img src="http://hdx.lanyes.com/mailimg/mail_logo_b.jpg" width="106" height="30" /></a></div>\r\n<div style="font-size:13px; color:#000;text-align:center; font-family:Arial, Helvetica, sans-serif; line-height:22px;">Copyright @ 2013 enlife.com 版权所有</div>\r\n</div>\r\n</body>\r\n</html>\r\n\r\n</body>\r\n\r\n</html>', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

