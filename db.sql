/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm5ai04
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm5ai04` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm5ai04`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm5ai04/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssm5ai04/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssm5ai04/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `jianxiujieguo` */

DROP TABLE IF EXISTS `jianxiujieguo`;

CREATE TABLE `jianxiujieguo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shebeibianhao` varchar(200) DEFAULT NULL COMMENT '设备编号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `jianxiuqingkuang` longtext COMMENT '检修情况',
  `jianxiugongjieguo` varchar(200) DEFAULT NULL COMMENT '检修工结果',
  `jianxiuriqi` date DEFAULT NULL COMMENT '检修日期',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620440953600 DEFAULT CHARSET=utf8 COMMENT='检修结果';

/*Data for the table `jianxiujieguo` */

insert  into `jianxiujieguo`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`jianxiuqingkuang`,`jianxiugongjieguo`,`jianxiuriqi`,`zhanghao`,`xingming`) values (51,'2021-05-08 10:23:21','设备编号1','设备名称1','检修情况1','已修好','2021-05-08','账号1','姓名1');
insert  into `jianxiujieguo`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`jianxiuqingkuang`,`jianxiugongjieguo`,`jianxiuriqi`,`zhanghao`,`xingming`) values (52,'2021-05-08 10:23:21','设备编号2','设备名称2','检修情况2','已修好','2021-05-08','账号2','姓名2');
insert  into `jianxiujieguo`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`jianxiuqingkuang`,`jianxiugongjieguo`,`jianxiuriqi`,`zhanghao`,`xingming`) values (53,'2021-05-08 10:23:21','设备编号3','设备名称3','检修情况3','已修好','2021-05-08','账号3','姓名3');
insert  into `jianxiujieguo`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`jianxiuqingkuang`,`jianxiugongjieguo`,`jianxiuriqi`,`zhanghao`,`xingming`) values (54,'2021-05-08 10:23:21','设备编号4','设备名称4','检修情况4','已修好','2021-05-08','账号4','姓名4');
insert  into `jianxiujieguo`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`jianxiuqingkuang`,`jianxiugongjieguo`,`jianxiuriqi`,`zhanghao`,`xingming`) values (55,'2021-05-08 10:23:21','设备编号5','设备名称5','检修情况5','已修好','2021-05-08','账号5','姓名5');
insert  into `jianxiujieguo`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`jianxiuqingkuang`,`jianxiugongjieguo`,`jianxiuriqi`,`zhanghao`,`xingming`) values (56,'2021-05-08 10:23:21','设备编号6','设备名称6','检修情况6','已修好','2021-05-08','账号6','姓名6');
insert  into `jianxiujieguo`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`jianxiuqingkuang`,`jianxiugongjieguo`,`jianxiuriqi`,`zhanghao`,`xingming`) values (1620440953599,'2021-05-08 10:29:13','10001','XX设备','测试。。。这里所有的内容都是用于测试功能的，都是可以自行添加修改删替换的。','已修好','2021-05-08','1','刘曦');

/*Table structure for table `jianxiutixing` */

DROP TABLE IF EXISTS `jianxiutixing`;

CREATE TABLE `jianxiutixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shebeibianhao` varchar(200) DEFAULT NULL COMMENT '设备编号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `jianxiutixing` longtext COMMENT '检修提醒',
  `tixingshijian` datetime DEFAULT NULL COMMENT '提醒时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620440893790 DEFAULT CHARSET=utf8 COMMENT='检修提醒';

/*Data for the table `jianxiutixing` */

insert  into `jianxiutixing`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`jianxiutixing`,`tixingshijian`,`zhanghao`,`xingming`) values (41,'2021-05-08 10:23:21','设备编号1','设备名称1','检修提醒1','2021-05-08 10:23:21','账号1','姓名1');
insert  into `jianxiutixing`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`jianxiutixing`,`tixingshijian`,`zhanghao`,`xingming`) values (42,'2021-05-08 10:23:21','设备编号2','设备名称2','检修提醒2','2021-05-08 10:23:21','账号2','姓名2');
insert  into `jianxiutixing`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`jianxiutixing`,`tixingshijian`,`zhanghao`,`xingming`) values (43,'2021-05-08 10:23:21','设备编号3','设备名称3','检修提醒3','2021-05-08 10:23:21','账号3','姓名3');
insert  into `jianxiutixing`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`jianxiutixing`,`tixingshijian`,`zhanghao`,`xingming`) values (44,'2021-05-08 10:23:21','设备编号4','设备名称4','检修提醒4','2021-05-08 10:23:21','账号4','姓名4');
insert  into `jianxiutixing`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`jianxiutixing`,`tixingshijian`,`zhanghao`,`xingming`) values (45,'2021-05-08 10:23:21','设备编号5','设备名称5','检修提醒5','2021-05-08 10:23:21','账号5','姓名5');
insert  into `jianxiutixing`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`jianxiutixing`,`tixingshijian`,`zhanghao`,`xingming`) values (46,'2021-05-08 10:23:21','设备编号6','设备名称6','检修提醒6','2021-05-08 10:23:21','账号6','姓名6');
insert  into `jianxiutixing`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`jianxiutixing`,`tixingshijian`,`zhanghao`,`xingming`) values (1620440893789,'2021-05-08 10:28:13','10001','XX设备','这设备需要检修了。。。','2021-05-08 10:27:48','1','刘曦');

/*Table structure for table `shebeixinxi` */

DROP TABLE IF EXISTS `shebeixinxi`;

CREATE TABLE `shebeixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shebeibianhao` varchar(200) NOT NULL COMMENT '设备编号',
  `shebeimingcheng` varchar(200) NOT NULL COMMENT '设备名称',
  `danwei` varchar(200) NOT NULL COMMENT '单位',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `guigexinghao` varchar(200) NOT NULL COMMENT '规格型号',
  `anquankucun` int(11) NOT NULL COMMENT '安全库存',
  `jianxiucishu` int(11) DEFAULT NULL COMMENT '检修次数',
  `shoumingshengyu` varchar(200) DEFAULT NULL COMMENT '寿命剩余',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shebeibianhao` (`shebeibianhao`),
  UNIQUE KEY `shebeimingcheng` (`shebeimingcheng`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='设备信息';

/*Data for the table `shebeixinxi` */

insert  into `shebeixinxi`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`danwei`,`tupian`,`guigexinghao`,`anquankucun`,`jianxiucishu`,`shoumingshengyu`) values (21,'2021-05-08 10:23:21','10001','XX设备','件','http://localhost:8080/ssm5ai04/upload/shebeixinxi_tupian1.jpg','小',15,2,'2年');
insert  into `shebeixinxi`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`danwei`,`tupian`,`guigexinghao`,`anquankucun`,`jianxiucishu`,`shoumingshengyu`) values (22,'2021-05-08 10:23:21','设备编号2','设备名称2','单位2','http://localhost:8080/ssm5ai04/upload/shebeixinxi_tupian2.jpg','规格型号2',2,2,'寿命剩余2');
insert  into `shebeixinxi`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`danwei`,`tupian`,`guigexinghao`,`anquankucun`,`jianxiucishu`,`shoumingshengyu`) values (23,'2021-05-08 10:23:21','设备编号3','设备名称3','单位3','http://localhost:8080/ssm5ai04/upload/shebeixinxi_tupian3.jpg','规格型号3',3,3,'寿命剩余3');
insert  into `shebeixinxi`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`danwei`,`tupian`,`guigexinghao`,`anquankucun`,`jianxiucishu`,`shoumingshengyu`) values (24,'2021-05-08 10:23:21','设备编号4','设备名称4','单位4','http://localhost:8080/ssm5ai04/upload/shebeixinxi_tupian4.jpg','规格型号4',4,4,'寿命剩余4');
insert  into `shebeixinxi`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`danwei`,`tupian`,`guigexinghao`,`anquankucun`,`jianxiucishu`,`shoumingshengyu`) values (25,'2021-05-08 10:23:21','设备编号5','设备名称5','单位5','http://localhost:8080/ssm5ai04/upload/shebeixinxi_tupian5.jpg','规格型号5',5,5,'寿命剩余5');
insert  into `shebeixinxi`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`danwei`,`tupian`,`guigexinghao`,`anquankucun`,`jianxiucishu`,`shoumingshengyu`) values (26,'2021-05-08 10:23:21','设备编号6','设备名称6','单位6','http://localhost:8080/ssm5ai04/upload/shebeixinxi_tupian6.jpg','规格型号6',6,6,'寿命剩余6');

/*Table structure for table `shiyongjihua` */

DROP TABLE IF EXISTS `shiyongjihua`;

CREATE TABLE `shiyongjihua` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shebeibianhao` varchar(200) DEFAULT NULL COMMENT '设备编号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `kaishishiyongshijian` date DEFAULT NULL COMMENT '开始使用时间',
  `jihuashiyongshijian` date DEFAULT NULL COMMENT '计划使用时间',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620440869993 DEFAULT CHARSET=utf8 COMMENT='使用计划';

/*Data for the table `shiyongjihua` */

insert  into `shiyongjihua`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`kaishishiyongshijian`,`jihuashiyongshijian`,`beizhu`) values (31,'2021-05-08 10:23:21','设备编号1','设备名称1','2021-05-08','2021-05-08','备注1');
insert  into `shiyongjihua`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`kaishishiyongshijian`,`jihuashiyongshijian`,`beizhu`) values (32,'2021-05-08 10:23:21','设备编号2','设备名称2','2021-05-08','2021-05-08','备注2');
insert  into `shiyongjihua`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`kaishishiyongshijian`,`jihuashiyongshijian`,`beizhu`) values (33,'2021-05-08 10:23:21','设备编号3','设备名称3','2021-05-08','2021-05-08','备注3');
insert  into `shiyongjihua`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`kaishishiyongshijian`,`jihuashiyongshijian`,`beizhu`) values (34,'2021-05-08 10:23:21','设备编号4','设备名称4','2021-05-08','2021-05-08','备注4');
insert  into `shiyongjihua`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`kaishishiyongshijian`,`jihuashiyongshijian`,`beizhu`) values (35,'2021-05-08 10:23:21','设备编号5','设备名称5','2021-05-08','2021-05-08','备注5');
insert  into `shiyongjihua`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`kaishishiyongshijian`,`jihuashiyongshijian`,`beizhu`) values (36,'2021-05-08 10:23:21','设备编号6','设备名称6','2021-05-08','2021-05-08','备注6');
insert  into `shiyongjihua`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`kaishishiyongshijian`,`jihuashiyongshijian`,`beizhu`) values (1620440869992,'2021-05-08 10:27:49','10001','XX设备','2021-05-06','2022-05-06','计划使用到明年6月份。。。');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','jc7avqgf0707adlf018g1izq38x4722f','2021-05-08 10:24:52','2021-05-08 11:29:23');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,11,'1','weixiuyuan','维修员','8q6zhynatih07cttyieyhzjamubnu9gu','2021-05-08 10:25:20','2021-05-08 11:28:23');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-08 10:23:22');

/*Table structure for table `weixiuyuan` */

DROP TABLE IF EXISTS `weixiuyuan`;

CREATE TABLE `weixiuyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='维修员';

/*Data for the table `weixiuyuan` */

insert  into `weixiuyuan`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`touxiang`,`shouji`) values (11,'2021-05-08 10:23:21','1','1','刘曦','女','http://localhost:8080/ssm5ai04/upload/weixiuyuan_touxiang1.jpg','13823888881');
insert  into `weixiuyuan`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`touxiang`,`shouji`) values (12,'2021-05-08 10:23:21','维修员2','123456','姓名2','男','http://localhost:8080/ssm5ai04/upload/weixiuyuan_touxiang2.jpg','13823888882');
insert  into `weixiuyuan`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`touxiang`,`shouji`) values (13,'2021-05-08 10:23:21','维修员3','123456','姓名3','男','http://localhost:8080/ssm5ai04/upload/weixiuyuan_touxiang3.jpg','13823888883');
insert  into `weixiuyuan`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`touxiang`,`shouji`) values (14,'2021-05-08 10:23:21','维修员4','123456','姓名4','男','http://localhost:8080/ssm5ai04/upload/weixiuyuan_touxiang4.jpg','13823888884');
insert  into `weixiuyuan`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`touxiang`,`shouji`) values (15,'2021-05-08 10:23:21','维修员5','123456','姓名5','男','http://localhost:8080/ssm5ai04/upload/weixiuyuan_touxiang5.jpg','13823888885');
insert  into `weixiuyuan`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`touxiang`,`shouji`) values (16,'2021-05-08 10:23:21','维修员6','123456','姓名6','男','http://localhost:8080/ssm5ai04/upload/weixiuyuan_touxiang6.jpg','13823888886');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
