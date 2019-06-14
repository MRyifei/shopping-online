-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2018 年 01 月 05 日 09:29
-- 服务器版本: 5.6.12-log
-- PHP 版本: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `bt_diannao`
--
CREATE DATABASE IF NOT EXISTS `bt_diannao` DEFAULT CHARACTER SET gbk COLLATE gbk_chinese_ci;
USE `bt_diannao`;

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(4) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(13) DEFAULT NULL COMMENT '管理员帐号',
  `pwd` varchar(50) DEFAULT NULL COMMENT '管理员密码',
  `Levels` varchar(1) NOT NULL COMMENT '管理权限',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`id`, `name`, `pwd`, `Levels`) VALUES
(1, 'admin', 'admin', '');

-- --------------------------------------------------------

--
-- 表的结构 `goods`
--

CREATE TABLE IF NOT EXISTS `goods` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) DEFAULT NULL COMMENT '商品名称',
  `leibie` int(10) NOT NULL DEFAULT '1',
  `jianjie` mediumtext COMMENT '商品介绍',
  `xinghao` varchar(25) DEFAULT NULL COMMENT '商品型号',
  `tupian` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `shuliang` int(4) DEFAULT NULL COMMENT '商品数量',
  `cishu` int(4) DEFAULT NULL COMMENT '卖出次数',
  `tuijian` int(4) DEFAULT NULL COMMENT '是否推荐',
  `huiyuanjia` float DEFAULT NULL COMMENT '会员价',
  `shichangjia` float DEFAULT NULL COMMENT '市场价',
  `pinpai` varchar(25) DEFAULT NULL COMMENT '出版社id',
  `tejia` int(2) DEFAULT NULL COMMENT '是否特价',
  `addtime` datetime NOT NULL COMMENT '添加时间',
  `hits` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `goods`
--

INSERT INTO `goods` (`id`, `name`, `leibie`, `jianjie`, `xinghao`, `tupian`, `shuliang`, `cishu`, `tuijian`, `huiyuanjia`, `shichangjia`, `pinpai`, `tejia`, `addtime`, `hits`) VALUES
(1, '自然堂', 1, '<p>\r\n	自然堂雪域\r\n</p>', '自然堂单品', 'admin/upimages/1.jpg', 9, 3, 1, 499, 599, '5', 0, '0000-00-00 00:00:00', 12),
(2, '韩后', 1, '<p>\r\n	韩后\r\n</p>', '韩后套盒', 'admin/upimages/2.jpg', 78, 2, 1, 780, 800, '4', 0, '0000-00-00 00:00:00', 11),
(3, '珀莱雅', 1, '<h1>\r\n	珀莱雅品牌上市，活动多多\r\n</h1>', '珀莱雅套盒', 'admin/upimages/3.jpg', 26, 4, 0, 479, 688, '3', 0, '0000-00-00 00:00:00', 7),
(4, '韩后', 1, '<div class="comments-words">\r\n	<p>\r\n		&nbsp;\r\n	</p>\r\n</div>', '韩后', 'admin/upimages/4.jpg', 9, 3, 1, 500, 588, '4', 0, '0000-00-00 00:00:00', 11),
(5, '韩后', 1, '<p>\r\n	&nbsp;\r\n</p>', '韩后', 'admin/upimages/5.jpg', 7, 4, 1, 699, 760, '4', 0, '0000-00-00 00:00:00', 5),
(6, '自然堂', 1, '<span style="white-space:normal;word-spacing:0px;text-transform:none;float:none;color:#666666;font:14px/24px ''Microsoft YaHei'', arial;display:inline !important;letter-spacing:normal;background-color:#FFFFFF;text-indent:0px;-webkit-text-stroke-width:0px;">13.3英寸时尚轻薄镁铝合金本，酷睿四代i5双核，OS X Lion系统，固态硬盘，Retina屏</span>', '自然堂', 'admin/upimages/6.jpg', 800, 3, 1, 888, 800, '5', 1, '0000-00-00 00:00:00', 29),
(7, '欧诗漫', 1, '<span style="white-space:normal;word-spacing:0px;text-transform:none;float:none;color:#666666;font:14px/24px ''Microsoft YaHei'', arial;display:inline !important;letter-spacing:normal;background-color:#FFFFFF;text-indent:0px;-webkit-text-stroke-width:0px;">15.6英寸全能学生本，英特尔四代i5双核处理器，配备2GB性能独显及全尺寸键盘</span>', '欧诗漫', 'admin/upimages/7.jpg', 123, 0, 1, 399, 300, '6', 1, '0000-00-00 00:00:00', 19),
(8, '韩后', 1, '<p>\r\n	韩后品牌第一理念\r\n</p>', '韩后套盒', 'admin/upimages/11.jpg', 885, 3, 1, 399, 599, '4', 0, '0000-00-00 00:00:00', 25),
(10, '珀莱雅', 4, '<h1>\r\n	珀莱超越越远\r\n</h1>', '珀莱雅套盒', 'admin/upimages/10.jpg', 50, 0, 0, 274, 599, '3', 0, '0000-00-00 00:00:00', 35);

-- --------------------------------------------------------

--
-- 表的结构 `intro`
--

CREATE TABLE IF NOT EXISTS `intro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `type` varchar(20) NOT NULL,
  `addtime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `intro`
--

INSERT INTO `intro` (`id`, `content`, `type`, `addtime`) VALUES
(3, '<p>\r\n	2211\r\n</p>', '办店理念', '0000-00-00 00:00:00'),
(4, '<br />\r\n经营范围经营范围经营范围经营范围经营范围经营范围经营范围经营范围经营范围经营范围', '经营范围', '0000-00-00 00:00:00'),
(5, '<p>\r\n	我们在北京111111111111\r\n</p>', '关于我们', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- 表的结构 `leibie`
--

CREATE TABLE IF NOT EXISTS `leibie` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `leibie`
--

INSERT INTO `leibie` (`id`, `name`) VALUES
(1, '面膜'),
(2, '精华液'),
(3, '眼霜'),
(4, '护肤单品'),
(5, '护肤套盒');

-- --------------------------------------------------------

--
-- 表的结构 `liuyan`
--

CREATE TABLE IF NOT EXISTS `liuyan` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `userid` varchar(50) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `content` text,
  `addtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `replay` text NOT NULL,
  `rtime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `liuyan`
--

INSERT INTO `liuyan` (`id`, `userid`, `title`, `content`, `addtime`, `replay`, `rtime`) VALUES
(10, 'ztest', '1', '1111111111', '2015-04-05 13:20:22', '000', '2015-04-05 21:23:33'),
(11, 'ztest', '222222', '222222222', '2015-04-05 13:36:01', '的多大的的顶顶顶顶顶顶顶顶顶顶', '2015-04-05 21:36:08');

-- --------------------------------------------------------

--
-- 表的结构 `notice`
--

CREATE TABLE IF NOT EXISTS `notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `num` int(11) NOT NULL COMMENT '点击次数',
  `addtime` datetime NOT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=18 ;

--
-- 转存表中的数据 `notice`
--

INSERT INTO `notice` (`id`, `title`, `content`, `num`, `addtime`) VALUES
(17, '组装电脑,测试', '撒大阿斯顿', 0, '2015-04-05 21:35:44'),
(16, '如何组装电脑', '如何组装电脑如何组装电脑如何组装电脑如何组装电脑如何组装电脑如何组装电脑如何组装电脑如何组装电脑如何组装电脑', 0, '2015-01-09 23:02:47');

-- --------------------------------------------------------

--
-- 表的结构 `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(125) DEFAULT NULL COMMENT '订单号',
  `spc` varchar(125) DEFAULT NULL COMMENT '商品的编号',
  `slc` varchar(125) DEFAULT NULL COMMENT '商品的数量',
  `shouhuoren` varchar(25) DEFAULT NULL COMMENT '收货人',
  `sex` varchar(2) DEFAULT NULL COMMENT '性别',
  `dizhi` varchar(125) DEFAULT NULL COMMENT '收货地址',
  `youbian` varchar(10) DEFAULT NULL COMMENT '邮编',
  `tel` varchar(25) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(25) DEFAULT NULL COMMENT '邮箱',
  `shff` varchar(25) DEFAULT NULL COMMENT '邮寄方式',
  `zfff` varchar(25) DEFAULT NULL COMMENT '付款方式',
  `time` datetime DEFAULT NULL COMMENT '订单时间',
  `xiadanren` varchar(25) DEFAULT NULL COMMENT '下单人',
  `zt` varchar(50) DEFAULT NULL COMMENT '订单状态',
  `total` varchar(25) DEFAULT NULL COMMENT '总金额',
  `liuyan` text NOT NULL COMMENT '订单留言',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=19 ;

--
-- 转存表中的数据 `orders`
--

INSERT INTO `orders` (`id`, `orderid`, `spc`, `slc`, `shouhuoren`, `sex`, `dizhi`, `youbian`, `tel`, `email`, `shff`, `zfff`, `time`, `xiadanren`, `zt`, `total`, `liuyan`) VALUES
(13, '2015044135413', '5@2@', '1@1@', '张三', '', '北京', '111002', '18300756814', '54444@qq.com', '送货上门', '货到付款', '2015-04-04 13:54:13', 'z201504', '已发货', '9912', '对对对'),
(14, '2015045212012', '8@4@5@', '1@1@1@', '1232', '', '10000', '', '1888880010', '111@11.com', '送货上门', '货到付款', '2015-04-05 21:20:12', 'ztest', '已发货', '9333', '0000000000'),
(15, '2015045213356', '3@8@', '1@1@', '1232', '', '10000', '', '11122', '111@11.com', '送货上门', '货到付款', '2015-04-05 21:33:56', 'ztest', '已发货', '4723', '的顶顶顶顶顶顶顶顶顶顶'),
(16, '2018014115520', '@3@@', '1@1@1@', '郝然', '', '河北省唐山市富贵家园', '', '15128869033', '111@11.com', '送货上门', '网上支付', '2018-01-04 11:55:20', '郝然', '已发货', '479', '尽快发货'),
(18, '2018014123139', '@@@@@@@@@@@@8@@@', '1@@1@@1@1@1@1@1@1@1@1@1@1@1@', '1232', '', '10000', '', '11', '111@11.com', '送货上门', '货到付款', '2018-01-04 12:31:39', '郝然', '未作任何处理', '399', '');

-- --------------------------------------------------------

--
-- 表的结构 `pinpai`
--

CREATE TABLE IF NOT EXISTS `pinpai` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `pinpai`
--

INSERT INTO `pinpai` (`id`, `name`) VALUES
(3, '珀莱雅'),
(4, '韩后'),
(5, '自然堂'),
(6, '欧诗漫'),
(7, '其他');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) DEFAULT NULL COMMENT '帐号',
  `pwd` varchar(50) DEFAULT NULL COMMENT '密码',
  `dongjie` int(4) DEFAULT NULL COMMENT '是否冻结',
  `email` varchar(25) DEFAULT NULL COMMENT '邮箱',
  `sfzh` varchar(25) DEFAULT NULL COMMENT '身份证',
  `tel` varchar(25) DEFAULT NULL COMMENT '联系电话',
  `qq` varchar(25) DEFAULT NULL COMMENT '联系qq',
  `dizhi` varchar(100) DEFAULT NULL COMMENT '邮寄地址',
  `youbian` varchar(25) DEFAULT NULL COMMENT '邮编',
  `truename` varchar(25) DEFAULT NULL COMMENT '真实姓名',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `name`, `pwd`, `dongjie`, `email`, `sfzh`, `tel`, `qq`, `dizhi`, `youbian`, `truename`) VALUES
(3, '郝然', '123456', 0, '111@11.com', '1', '11', '1123', '10000', '1', '1232'),
(4, 'z0001', '123456', 0, '58850@qq.com', '412584545445521', '1899999', '58811', '江苏南京晓庄', '1233', '测试'),
(5, 'z003', '123456', 0, '58850198@qq.com', '41247854121210321574', '1830726818', '58850198', '河南南阳', '55555', '王武'),
(6, 'test201', '123456', 0, '555@qq.com', '5', '5', '5', '55', '55', '555'),
(8, 'z201504', '123456', 0, '54444@qq.com', '14154857484545648546', '18300756814', '45455445', '北京', '111002', '张三');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
