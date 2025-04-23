/*
SQLyog Ultimate v11.25 (64 bit)
MySQL - 5.7.21-log : Database - ry_shenxiu
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ry_shenxiu` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ry_shenxiu`;

/*Table structure for table `gen_table` */

CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `tpl_web_type` varchar(30) DEFAULT '' COMMENT '前端模板类型（element-ui模版 element-plus模版）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` text COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `user_tab` char(1) DEFAULT '0' COMMENT '用户表',
  `role_ids` varchar(200) DEFAULT NULL COMMENT '角色',
  `open_add` char(1) DEFAULT '1' COMMENT '开启新增',
  `open_update` char(1) DEFAULT '1' COMMENT '开启修改',
  `open_delete` char(1) DEFAULT '1' COMMENT '开启删除',
  `open_details` char(1) DEFAULT '0' COMMENT '开启详情',
  `open_import` char(1) DEFAULT '0' COMMENT '开启导入',
  `open_reception_card` char(1) DEFAULT '0' COMMENT '开启前台卡片',
  `open_reception_list` char(1) DEFAULT '0' COMMENT '开启前台列表',
  `open_reception_details` char(1) DEFAULT '0' COMMENT '开启前台详情',
  `other_module_add` varchar(255) DEFAULT NULL COMMENT '外部模块添加',
  `open_tombstone` char(1) DEFAULT '0' COMMENT '开启逻辑删除',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='代码生成业务表';

/*Data for the table `gen_table` */

/*Table structure for table `gen_table_column` */

CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint(20) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `verification_id` bigint(20) DEFAULT NULL COMMENT '校验id',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `is_register` char(1) DEFAULT '0' COMMENT '是否注册字段（1是）',
  `is_reception_list` char(1) DEFAULT '0' COMMENT '是否前台列表字段（1是）',
  `is_reception_query` char(1) DEFAULT '0' COMMENT '是否前台查询字段（1是）',
  `is_reception_image` char(1) DEFAULT '0' COMMENT '是否前台图片字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `physical_interface` varchar(200) DEFAULT '' COMMENT '实体接口',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='代码生成业务表字段';

/*Data for the table `gen_table_column` */

/*Table structure for table `sys_config` */

CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='参数配置表';

/*Data for the table `sys_config` */

insert  into `sys_config`(`config_id`,`config_name`,`config_key`,`config_value`,`config_type`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,'主框架页-默认皮肤样式名称','sys.index.skinName','skin-green','Y','admin','2024-06-16 15:22:25','admin','2024-10-06 18:02:33','蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
insert  into `sys_config`(`config_id`,`config_name`,`config_key`,`config_value`,`config_type`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2,'用户管理-账号初始密码','sys.user.initPassword','123456','Y','admin','2024-06-16 15:22:25','',NULL,'初始化密码 123456');
insert  into `sys_config`(`config_id`,`config_name`,`config_key`,`config_value`,`config_type`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (3,'主框架页-侧边栏主题','sys.index.sideTheme','theme-dark','Y','admin','2024-06-16 15:22:25','',NULL,'深色主题theme-dark，浅色主题theme-light');
insert  into `sys_config`(`config_id`,`config_name`,`config_key`,`config_value`,`config_type`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (4,'账号自助-验证码开关','sys.account.captchaEnabled','true','Y','admin','2024-06-16 15:22:25','',NULL,'是否开启验证码功能（true开启，false关闭）');
insert  into `sys_config`(`config_id`,`config_name`,`config_key`,`config_value`,`config_type`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (5,'账号自助-是否开启用户注册功能','sys.account.registerUser','true','Y','admin','2024-06-16 15:22:25','admin','2024-09-16 17:57:54','是否开启注册用户功能（true开启，false关闭）');
insert  into `sys_config`(`config_id`,`config_name`,`config_key`,`config_value`,`config_type`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (6,'用户登录-黑名单列表','sys.login.blackIPList','','Y','admin','2024-06-16 15:22:25','',NULL,'设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');
insert  into `sys_config`(`config_id`,`config_name`,`config_key`,`config_value`,`config_type`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (7,'代码路径','code_path','D:\\Desktop\\tunmawangluo','Y','admin','2024-10-17 20:02:09','admin','2024-11-10 22:15:59',NULL);

/*Table structure for table `sys_dept` */

CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8 COMMENT='部门表';

/*Data for the table `sys_dept` */

insert  into `sys_dept`(`dept_id`,`parent_id`,`ancestors`,`dept_name`,`order_num`,`leader`,`phone`,`email`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`) values (100,0,'0','若依科技',0,'若依','15888888888','ry@qq.com','0','0','admin','2024-09-13 11:29:00','',NULL);
insert  into `sys_dept`(`dept_id`,`parent_id`,`ancestors`,`dept_name`,`order_num`,`leader`,`phone`,`email`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`) values (101,100,'0,100','深圳总公司',1,'若依','15888888888','ry@qq.com','0','0','admin','2024-09-13 11:29:00','',NULL);
insert  into `sys_dept`(`dept_id`,`parent_id`,`ancestors`,`dept_name`,`order_num`,`leader`,`phone`,`email`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`) values (102,100,'0,100','长沙分公司',2,'若依','15888888888','ry@qq.com','0','0','admin','2024-09-13 11:29:00','',NULL);
insert  into `sys_dept`(`dept_id`,`parent_id`,`ancestors`,`dept_name`,`order_num`,`leader`,`phone`,`email`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`) values (103,101,'0,100,101','研发部门',1,'若依','15888888888','ry@qq.com','0','0','admin','2024-09-13 11:29:00','',NULL);
insert  into `sys_dept`(`dept_id`,`parent_id`,`ancestors`,`dept_name`,`order_num`,`leader`,`phone`,`email`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`) values (104,101,'0,100,101','市场部门',2,'若依','15888888888','ry@qq.com','0','0','admin','2024-09-13 11:29:00','',NULL);
insert  into `sys_dept`(`dept_id`,`parent_id`,`ancestors`,`dept_name`,`order_num`,`leader`,`phone`,`email`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`) values (105,101,'0,100,101','测试部门',3,'若依','15888888888','ry@qq.com','0','0','admin','2024-09-13 11:29:00','',NULL);
insert  into `sys_dept`(`dept_id`,`parent_id`,`ancestors`,`dept_name`,`order_num`,`leader`,`phone`,`email`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`) values (106,101,'0,100,101','财务部门',4,'若依','15888888888','ry@qq.com','0','0','admin','2024-09-13 11:29:00','',NULL);
insert  into `sys_dept`(`dept_id`,`parent_id`,`ancestors`,`dept_name`,`order_num`,`leader`,`phone`,`email`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`) values (107,101,'0,100,101','运维部门',5,'若依','15888888888','ry@qq.com','0','0','admin','2024-09-13 11:29:00','',NULL);
insert  into `sys_dept`(`dept_id`,`parent_id`,`ancestors`,`dept_name`,`order_num`,`leader`,`phone`,`email`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`) values (108,102,'0,100,102','市场部门',1,'若依','15888888888','ry@qq.com','0','0','admin','2024-09-13 11:29:00','',NULL);
insert  into `sys_dept`(`dept_id`,`parent_id`,`ancestors`,`dept_name`,`order_num`,`leader`,`phone`,`email`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`) values (109,102,'0,100,102','财务部门',2,'若依','15888888888','ry@qq.com','0','0','admin','2024-09-13 11:29:00','',NULL);

/*Table structure for table `sys_dict_data` */

CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='字典数据表';

/*Data for the table `sys_dict_data` */

insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,1,'男','0','sys_user_sex','','','Y','0','admin','2024-06-16 15:22:25','',NULL,'性别男');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2,2,'女','1','sys_user_sex','','','N','0','admin','2024-06-16 15:22:25','',NULL,'性别女');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (4,1,'显示','0','sys_show_hide','','primary','Y','0','admin','2024-06-16 15:22:25','',NULL,'显示菜单');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (5,2,'隐藏','1','sys_show_hide','','danger','N','0','admin','2024-06-16 15:22:25','',NULL,'隐藏菜单');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (6,1,'正常','0','sys_normal_disable','','primary','Y','0','admin','2024-06-16 15:22:25','',NULL,'正常状态');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (7,2,'停用','1','sys_normal_disable','','danger','N','0','admin','2024-06-16 15:22:25','',NULL,'停用状态');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (8,1,'正常','0','sys_job_status','','primary','Y','0','admin','2024-06-16 15:22:25','',NULL,'正常状态');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (9,2,'暂停','1','sys_job_status','','danger','N','0','admin','2024-06-16 15:22:25','',NULL,'停用状态');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (10,1,'默认','DEFAULT','sys_job_group','','','Y','0','admin','2024-06-16 15:22:25','',NULL,'默认分组');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (11,2,'系统','SYSTEM','sys_job_group','','','N','0','admin','2024-06-16 15:22:25','',NULL,'系统分组');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (12,1,'是','Y','sys_yes_no','','primary','Y','0','admin','2024-06-16 15:22:25','',NULL,'系统默认是');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (13,2,'否','N','sys_yes_no','','danger','N','0','admin','2024-06-16 15:22:25','',NULL,'系统默认否');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (14,1,'通知','1','sys_notice_type','','warning','Y','0','admin','2024-06-16 15:22:25','',NULL,'通知');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (15,2,'公告','2','sys_notice_type','','success','N','0','admin','2024-06-16 15:22:25','',NULL,'公告');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (16,1,'正常','0','sys_notice_status','','primary','Y','0','admin','2024-06-16 15:22:25','',NULL,'正常状态');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (17,2,'关闭','1','sys_notice_status','','danger','N','0','admin','2024-06-16 15:22:25','',NULL,'关闭状态');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (18,99,'其他','0','sys_oper_type','','info','N','0','admin','2024-06-16 15:22:25','',NULL,'其他操作');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (19,1,'新增','1','sys_oper_type','','info','N','0','admin','2024-06-16 15:22:25','',NULL,'新增操作');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (20,2,'修改','2','sys_oper_type','','info','N','0','admin','2024-06-16 15:22:25','',NULL,'修改操作');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (21,3,'删除','3','sys_oper_type','','danger','N','0','admin','2024-06-16 15:22:25','',NULL,'删除操作');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (22,4,'授权','4','sys_oper_type','','primary','N','0','admin','2024-06-16 15:22:25','',NULL,'授权操作');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (23,5,'导出','5','sys_oper_type','','warning','N','0','admin','2024-06-16 15:22:25','',NULL,'导出操作');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (24,6,'导入','6','sys_oper_type','','warning','N','0','admin','2024-06-16 15:22:25','',NULL,'导入操作');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (25,7,'强退','7','sys_oper_type','','danger','N','0','admin','2024-06-16 15:22:25','',NULL,'强退操作');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (26,8,'生成代码','8','sys_oper_type','','warning','N','0','admin','2024-06-16 15:22:25','',NULL,'生成操作');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (27,9,'清空数据','9','sys_oper_type','','danger','N','0','admin','2024-06-16 15:22:25','',NULL,'清空操作');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (28,1,'成功','0','sys_common_status','','primary','N','0','admin','2024-06-16 15:22:25','',NULL,'正常状态');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (29,2,'失败','1','sys_common_status','','danger','N','0','admin','2024-06-16 15:22:25','',NULL,'停用状态');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (31,1,'已处理','1','video_status',NULL,'default','N','0','admin','2024-10-02 12:11:54','admin','2024-10-05 13:51:56',NULL);
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (32,0,'mp4','mp4','medium_type',NULL,'default','N','0','admin','2024-10-02 13:19:35','',NULL,NULL);
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (33,0,'ts','ts','medium_type',NULL,'default','N','0','admin','2024-10-02 13:19:44','',NULL,NULL);
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (34,0,'mp3','mp3','medium_type',NULL,'default','N','0','admin','2024-10-02 13:19:54','',NULL,NULL);
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (35,3,'处理失败','2','video_status',NULL,'default','N','0','admin','2024-10-02 16:55:53','admin','2024-10-05 13:52:03',NULL);
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (36,0,'未处理','0','video_status',NULL,'default','N','0','admin','2024-10-02 16:57:22','admin','2024-10-05 13:51:46',NULL);
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (37,0,'后端','\\RuoYi-Tunma-Backend\\','system_type',NULL,'default','N','0','admin','2024-10-17 20:05:27','',NULL,NULL);
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (38,2,'前台','\\Tunma-Reception\\','system_type',NULL,'default','N','0','admin','2024-10-17 20:05:56','admin','2024-10-17 20:06:44',NULL);
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (39,1,'后台','\\RuoYi-Tunma-Frontend\\','system_type',NULL,'default','N','0','admin','2024-10-17 20:06:38','admin','2024-10-17 20:06:52',NULL);

/*Table structure for table `sys_dict_type` */

CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='字典类型表';

/*Data for the table `sys_dict_type` */

insert  into `sys_dict_type`(`dict_id`,`dict_name`,`dict_type`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,'用户性别','sys_user_sex','0','admin','2024-06-16 15:22:25','',NULL,'用户性别列表');
insert  into `sys_dict_type`(`dict_id`,`dict_name`,`dict_type`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2,'菜单状态','sys_show_hide','0','admin','2024-06-16 15:22:25','',NULL,'菜单状态列表');
insert  into `sys_dict_type`(`dict_id`,`dict_name`,`dict_type`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (3,'系统开关','sys_normal_disable','0','admin','2024-06-16 15:22:25','',NULL,'系统开关列表');
insert  into `sys_dict_type`(`dict_id`,`dict_name`,`dict_type`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (4,'任务状态','sys_job_status','0','admin','2024-06-16 15:22:25','',NULL,'任务状态列表');
insert  into `sys_dict_type`(`dict_id`,`dict_name`,`dict_type`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (5,'任务分组','sys_job_group','0','admin','2024-06-16 15:22:25','',NULL,'任务分组列表');
insert  into `sys_dict_type`(`dict_id`,`dict_name`,`dict_type`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (6,'系统是否','sys_yes_no','0','admin','2024-06-16 15:22:25','',NULL,'系统是否列表');
insert  into `sys_dict_type`(`dict_id`,`dict_name`,`dict_type`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (7,'通知类型','sys_notice_type','0','admin','2024-06-16 15:22:25','',NULL,'通知类型列表');
insert  into `sys_dict_type`(`dict_id`,`dict_name`,`dict_type`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (8,'通知状态','sys_notice_status','0','admin','2024-06-16 15:22:25','',NULL,'通知状态列表');
insert  into `sys_dict_type`(`dict_id`,`dict_name`,`dict_type`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (9,'操作类型','sys_oper_type','0','admin','2024-06-16 15:22:25','',NULL,'操作类型列表');
insert  into `sys_dict_type`(`dict_id`,`dict_name`,`dict_type`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (10,'系统状态','sys_common_status','0','admin','2024-06-16 15:22:25','',NULL,'登录状态列表');
insert  into `sys_dict_type`(`dict_id`,`dict_name`,`dict_type`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (11,'处理状态','video_status','0','admin','2024-10-02 12:10:32','admin','2024-10-05 13:51:35',NULL);
insert  into `sys_dict_type`(`dict_id`,`dict_name`,`dict_type`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (12,'媒体类型','medium_type','0','admin','2024-10-02 13:19:23','',NULL,NULL);
insert  into `sys_dict_type`(`dict_id`,`dict_name`,`dict_type`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (13,'系统类型','system_type','0','admin','2024-10-17 20:04:03','',NULL,NULL);

/*Table structure for table `sys_job` */

CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务调度表';

/*Data for the table `sys_job` */

/*Table structure for table `sys_job_log` */

CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务调度日志表';

/*Data for the table `sys_job_log` */

/*Table structure for table `sys_logininfor` */

CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`),
  KEY `idx_sys_logininfor_s` (`status`),
  KEY `idx_sys_logininfor_lt` (`login_time`)
) ENGINE=InnoDB AUTO_INCREMENT=382 DEFAULT CHARSET=utf8 COMMENT='系统访问记录';

/*Data for the table `sys_logininfor` */

insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (100,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-16 20:30:11');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (101,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-06-16 21:50:55');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (102,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-16 21:51:01');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (103,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-06-18 12:03:33');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (104,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-12 14:01:18');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (105,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-12 18:07:44');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (106,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-08-12 19:38:56');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (107,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-08-12 19:39:02');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (108,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-12 19:39:07');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (109,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-23 16:33:26');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (110,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-23 17:14:02');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (111,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-23 20:21:28');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (112,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-08-23 21:19:49');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (113,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-08-23 21:19:57');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (114,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-23 21:20:00');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (115,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-24 13:59:23');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (116,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-08-24 16:46:45');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (117,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-24 16:46:49');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (118,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-24 19:54:24');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (119,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-25 09:24:54');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (120,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-25 11:43:30');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (121,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-25 12:52:29');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (122,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-25 13:46:53');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (123,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-25 14:46:21');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (124,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-25 16:52:03');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (125,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-25 18:03:15');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (126,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-25 18:14:16');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (127,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-25 19:09:22');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (128,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-26 15:57:28');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (129,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-26 16:12:27');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (130,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-08-26 17:25:58');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (131,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-26 17:26:02');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (132,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-26 18:28:39');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (133,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-08-26 18:45:31');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (134,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-28 16:46:56');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (135,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-28 17:54:41');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (136,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-28 19:48:09');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (137,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-28 20:01:06');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (138,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-30 18:22:24');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (139,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-08-30 18:33:52');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (140,'0001','127.0.0.1','内网IP','Chrome 12','Windows 10','1','用户不存在/密码错误','2024-08-30 18:34:15');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (141,'0001','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码已失效','2024-08-30 18:37:05');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (142,'0001','127.0.0.1','内网IP','Chrome 12','Windows 10','1','用户不存在/密码错误','2024-08-30 18:37:13');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (143,'0001','127.0.0.1','内网IP','Chrome 12','Windows 10','1','用户不存在/密码错误','2024-08-30 20:10:51');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (144,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','用户不存在/密码错误','2024-08-31 15:23:04');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (145,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-08-31 15:23:05');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (146,'0001','127.0.0.1','内网IP','Chrome 12','Windows 10','1','用户不存在/密码错误','2024-08-31 15:23:21');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (147,'0001','127.0.0.1','内网IP','Chrome 12','Windows 10','1','用户不存在/密码错误','2024-08-31 15:23:51');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (148,'0001','127.0.0.1','内网IP','Chrome 12','Windows 10','1','用户不存在/密码错误','2024-08-31 15:25:41');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (149,'0001','127.0.0.1','内网IP','Chrome 12','Windows 10','1','用户不存在/密码错误','2024-08-31 15:27:26');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (150,'0001','127.0.0.1','内网IP','Chrome 12','Windows 10','1','用户不存在/密码错误','2024-08-31 15:28:20');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (151,'0001','127.0.0.1','内网IP','Chrome 12','Windows 10','1','密码输入错误5次，帐户锁定10分钟','2024-08-31 15:32:45');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (152,'0001','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-08-31 15:32:48');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (153,'0001','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-08-31 15:32:49');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (154,'0001','127.0.0.1','内网IP','Chrome 12','Windows 10','1','密码输入错误5次，帐户锁定10分钟','2024-08-31 15:38:33');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (155,'0001','127.0.0.1','内网IP','Chrome 12','Windows 10','1',NULL,'2024-08-31 15:39:52');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (156,'0001','127.0.0.1','内网IP','Chrome 12','Windows 10','1',NULL,'2024-08-31 15:42:04');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (157,'0001','127.0.0.1','内网IP','Chrome 12','Windows 10','1',NULL,'2024-08-31 15:43:30');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (158,'0001','127.0.0.1','内网IP','Chrome 12','Windows 10','1',NULL,'2024-08-31 15:44:29');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (159,'0001','127.0.0.1','内网IP','Chrome 12','Windows 10','1',NULL,'2024-08-31 15:45:57');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (160,'0001','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-08-31 15:46:22');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (161,'0001','127.0.0.1','内网IP','Chrome 12','Windows 10','1',NULL,'2024-08-31 15:47:03');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (162,'0001','127.0.0.1','内网IP','Chrome 12','Windows 10','1',NULL,'2024-08-31 15:49:02');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (163,'0001','127.0.0.1','内网IP','Chrome 12','Windows 10','1',NULL,'2024-08-31 15:53:31');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (164,'0001','127.0.0.1','内网IP','Chrome 12','Windows 10','1',NULL,'2024-08-31 15:55:39');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (165,'0001','127.0.0.1','内网IP','Chrome 12','Windows 10','1',NULL,'2024-08-31 15:58:24');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (166,'0001','127.0.0.1','内网IP','Chrome 12','Windows 10','1',NULL,'2024-08-31 16:01:58');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (167,'0001','127.0.0.1','内网IP','Chrome 12','Windows 10','1',NULL,'2024-08-31 16:03:21');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (168,'0001','127.0.0.1','内网IP','Chrome 12','Windows 10','1',NULL,'2024-08-31 16:05:58');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (169,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-31 16:10:35');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (170,'0001','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-31 16:12:40');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (171,'0001','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-31 16:13:46');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (172,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-31 16:45:20');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (173,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-08-31 16:58:13');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (174,'zs','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-31 16:58:22');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (175,'zs','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-08-31 17:07:44');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (176,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-08-31 17:07:49');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (177,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-31 17:07:52');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (178,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-08-31 17:12:34');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (179,'zs','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-08-31 17:12:43');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (180,'zs','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-08-31 17:12:46');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (181,'zs','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-31 17:12:51');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (182,'zs','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-08-31 17:16:17');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (183,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-31 17:16:21');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (184,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-31 18:29:25');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (185,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-31 20:03:26');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (186,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-08-31 20:51:39');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (187,'zs','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-31 20:51:45');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (188,'zs','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-08-31 20:51:59');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (189,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-08-31 20:53:15');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (190,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-01 17:30:09');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (191,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-01 18:57:49');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (192,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-09-01 19:45:23');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (193,'111111','127.0.0.1','内网IP','Chrome 12','Windows 10','1','用户不存在/密码错误','2024-09-01 19:45:30');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (194,'111111','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-09-01 19:45:31');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (195,'111111','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-09-01 19:45:32');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (196,'111111','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-09-01 19:45:32');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (197,'111111','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-09-01 19:45:33');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (198,'111111','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-09-01 19:45:33');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (199,'111111','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-09-01 19:45:33');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (200,'111111','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-09-01 19:45:34');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (201,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-01 19:48:10');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (202,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-01 20:52:30');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (203,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','用户不存在/密码错误','2024-09-02 02:21:30');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (204,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','用户不存在/密码错误','2024-09-02 02:21:56');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (205,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-09-02 02:22:07');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (206,'zs','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码已失效','2024-09-02 02:25:38');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (207,'zs','127.0.0.1','内网IP','Chrome 12','Windows 10','1','用户不存在/密码错误','2024-09-02 02:25:43');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (208,'zs','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码已失效','2024-09-02 02:33:44');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (209,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-02 02:34:00');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (210,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-09-02 02:51:43');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (211,'zs','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-02 02:52:05');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (212,'zs','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-02 02:52:39');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (213,'zs','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-09-02 02:53:04');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (214,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码已失效','2024-09-02 02:55:24');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (215,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-09-02 02:55:29');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (216,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-02 02:55:35');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (217,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-09-02 16:21:51');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (218,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-02 16:35:52');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (219,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-02 17:38:11');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (220,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-09-02 18:34:31');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (221,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','用户不存在/密码错误','2024-09-02 18:34:41');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (222,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','用户不存在/密码错误','2024-09-02 18:34:47');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (223,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码已失效','2024-09-02 18:38:38');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (224,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-02 18:38:45');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (225,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-05 14:25:28');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (226,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-09-05 17:23:17');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (227,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-05 17:23:20');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (228,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-09-13 11:27:59');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (229,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-09-13 11:28:00');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (230,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-09-13 11:29:05');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (231,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-09-13 11:29:11');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (232,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-13 11:29:14');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (233,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-09-15 16:22:45');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (234,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-15 16:22:54');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (235,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-09-16 13:54:34');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (236,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-16 13:54:40');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (237,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-16 14:53:50');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (238,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-09-16 14:56:25');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (239,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-16 15:05:44');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (240,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-09-16 15:21:23');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (241,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-16 15:24:27');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (242,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-16 16:36:47');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (243,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-16 17:27:06');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (244,'za','127.0.0.1','内网IP','Chrome 12','Windows 10','0','注册成功','2024-09-16 18:15:28');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (245,'zs','127.0.0.1','内网IP','Chrome 12','Windows 10','1','用户不存在/密码错误','2024-09-16 18:15:42');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (246,'zs','127.0.0.1','内网IP','Chrome 12','Windows 10','1','用户不存在/密码错误','2024-09-16 18:15:54');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (247,'zs','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-09-16 18:16:25');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (248,'zs','127.0.0.1','内网IP','Chrome 12','Windows 10','1','用户不存在/密码错误','2024-09-16 18:18:19');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (249,'zs','127.0.0.1','内网IP','Chrome 12','Windows 10','0','注册成功','2024-09-16 18:20:35');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (250,'zs','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-09-16 18:20:52');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (251,'zs','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-16 18:21:00');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (252,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-18 04:05:26');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (253,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-19 13:41:20');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (254,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-09-19 14:24:47');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (255,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-19 14:24:53');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (256,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-19 14:33:55');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (257,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-19 15:23:16');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (258,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-19 17:01:47');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (259,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-22 14:29:06');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (260,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码已失效','2024-09-22 15:52:48');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (261,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-22 15:52:52');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (262,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-22 16:48:47');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (263,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-22 16:48:58');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (264,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-22 17:30:13');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (265,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-22 19:24:59');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (266,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-23 11:00:51');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (267,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-27 11:37:20');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (268,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码已失效','2024-09-27 13:19:55');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (269,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-27 13:19:59');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (270,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-27 13:21:50');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (271,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-27 16:48:45');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (272,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-29 17:00:47');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (273,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-29 19:30:04');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (274,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-30 20:18:43');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (275,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-30 21:10:44');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (276,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-09-30 21:54:53');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (277,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-02 12:06:00');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (278,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-02 13:17:46');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (279,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码已失效','2024-10-02 15:59:25');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (280,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-02 15:59:29');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (281,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-10-02 17:42:13');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (282,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码已失效','2024-10-02 17:45:14');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (283,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-02 17:45:18');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (284,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-02 22:05:32');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (285,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-10-02 22:37:51');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (286,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-02 22:39:45');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (287,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-10-02 22:40:53');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (288,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-10-04 13:09:58');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (289,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-04 13:10:02');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (290,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-10-05 12:59:40');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (291,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-05 12:59:44');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (292,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-06 10:11:41');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (293,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-10-06 17:38:14');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (294,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-10-06 17:38:22');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (295,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-10-06 17:38:23');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (296,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-06 17:38:25');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (297,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-10-06 18:02:46');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (298,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-06 18:02:51');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (299,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-14 11:09:33');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (300,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-14 14:11:27');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (301,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-14 20:37:41');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (302,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-15 10:44:06');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (303,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-15 11:24:45');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (304,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-15 14:18:25');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (305,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码已失效','2024-10-15 16:47:22');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (306,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码已失效','2024-10-15 16:47:28');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (307,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码已失效','2024-10-15 17:10:41');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (308,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-15 18:30:07');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (309,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-15 22:01:48');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (310,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-15 23:10:59');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (311,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-16 22:04:27');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (312,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-16 22:31:15');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (313,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-10-16 22:31:20');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (314,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-16 22:31:30');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (315,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-16 22:31:35');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (316,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-16 23:14:24');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (317,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-16 23:26:20');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (318,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-10-16 23:26:23');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (319,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-16 23:27:39');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (320,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-16 23:28:53');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (321,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-16 23:29:40');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (322,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-16 23:30:15');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (323,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-16 23:30:56');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (324,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-17 14:39:00');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (325,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-17 16:00:46');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (326,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-10-17 16:09:01');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (327,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-17 16:17:44');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (328,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-10-17 16:21:49');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (329,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-10-17 16:24:48');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (330,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-10-17 16:26:26');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (331,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-10-17 16:26:53');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (332,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-10-17 16:27:02');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (333,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-10-17 16:32:00');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (334,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-17 16:35:30');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (335,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-10-17 16:38:11');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (336,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码已失效','2024-10-17 16:47:16');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (337,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-17 16:47:54');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (338,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-17 17:12:41');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (339,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-17 17:12:47');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (340,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-10-17 17:13:12');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (341,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-17 17:13:47');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (342,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-17 17:15:07');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (343,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','用户不存在/密码错误','2024-10-17 17:15:07');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (344,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-17 19:00:24');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (345,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-10-17 19:00:29');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (346,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-17 19:00:37');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (347,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','用户不存在/密码错误','2024-10-17 19:00:37');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (348,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-10-17 19:01:47');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (349,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','用户不存在/密码错误','2024-10-17 19:01:54');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (350,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-17 19:01:54');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (351,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-10-17 19:02:56');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (352,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-17 19:03:25');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (353,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','用户不存在/密码错误','2024-10-17 19:03:48');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (354,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-17 19:05:20');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (355,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','用户不存在/密码错误','2024-10-17 19:05:20');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (356,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-17 19:05:30');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (357,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','用户不存在/密码错误','2024-10-17 19:05:30');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (358,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-17 19:16:49');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (359,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-10-17 19:16:53');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (360,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-17 19:17:20');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (361,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-10-17 19:17:24');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (362,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-10-17 19:20:07');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (363,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-17 19:20:13');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (364,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-10-17 19:20:17');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (365,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码已失效','2024-10-17 20:00:37');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (366,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-17 20:00:41');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (367,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-18 20:03:36');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (368,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-10-19 01:08:45');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (369,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-19 01:08:54');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (370,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-10-19 01:09:19');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (371,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码已失效','2024-10-19 01:20:14');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (372,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-19 01:20:20');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (373,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-19 01:20:29');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (374,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-19 01:21:03');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (375,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-10-19 14:56:13');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (376,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-10-31 13:37:20');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (377,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','1','验证码已失效','2024-11-10 21:43:18');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (378,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-10 21:43:24');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (379,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-11 17:05:03');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (380,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','退出成功','2024-11-11 17:11:00');
insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (381,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2025-01-12 20:13:09');

/*Table structure for table `sys_menu` */

CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) DEFAULT NULL COMMENT '路由参数',
  `is_frame` int(1) DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2132 DEFAULT CHARSET=utf8 COMMENT='菜单权限表';

/*Data for the table `sys_menu` */

insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,'系统管理',0,1,'system',NULL,'',1,0,'M','0','0','','system','admin','2024-06-16 15:22:25','',NULL,'系统管理目录');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2,'系统监控',0,2,'monitor',NULL,'',1,0,'M','0','0','','monitor','admin','2024-10-02 16:34:11','',NULL,'系统监控目录');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (3,'系统工具',0,3,'tool',NULL,'',1,0,'M','0','0','','tool','admin','2024-06-16 15:22:25','',NULL,'系统工具目录');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (100,'用户管理',1,1,'user','system/user/index','',1,0,'C','0','0','system:user:list','user','admin','2024-06-16 15:22:25','',NULL,'用户管理菜单');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (101,'角色管理',1,2,'role','system/role/index','',1,0,'C','0','0','system:role:list','peoples','admin','2024-06-16 15:22:25','',NULL,'角色管理菜单');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (102,'菜单管理',1,3,'menu','system/menu/index','',1,0,'C','0','0','system:menu:list','tree-table','admin','2024-06-16 15:22:25','',NULL,'菜单管理菜单');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (105,'字典管理',1,6,'dict','system/dict/index','',1,0,'C','0','0','system:dict:list','dict','admin','2024-06-16 15:22:25','',NULL,'字典管理菜单');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (106,'参数设置',1,7,'config','system/config/index','',1,0,'C','0','0','system:config:list','edit','admin','2024-06-16 15:22:25','',NULL,'参数设置菜单');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (107,'通知公告',1,8,'notice','system/notice/index','',1,0,'C','0','0','system:notice:list','message','admin','2024-06-16 15:22:25','',NULL,'通知公告菜单');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (108,'日志管理',1,9,'log','','',1,0,'M','0','0','','log','admin','2024-06-16 15:22:25','',NULL,'日志管理菜单');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (110,'定时任务',2,2,'job','monitor/job/index','',1,0,'C','0','0','monitor:job:list','job','admin','2024-10-02 16:34:11','',NULL,'定时任务菜单');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (115,'表单构建',3,1,'build','tool/build/index','',1,0,'C','0','0','tool:build:list','build','admin','2024-06-16 15:22:25','',NULL,'表单构建菜单');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (116,'代码生成',3,2,'gen','tool/gen/index','',1,0,'C','0','0','tool:gen:list','code','admin','2024-06-16 15:22:25','',NULL,'代码生成菜单');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (117,'系统接口',3,3,'swagger','tool/swagger/index','',1,0,'C','0','0','tool:swagger:list','swagger','admin','2024-06-16 15:22:25','',NULL,'系统接口菜单');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (500,'操作日志',108,1,'operlog','monitor/operlog/index','',1,0,'C','0','0','monitor:operlog:list','form','admin','2024-06-16 15:22:25','',NULL,'操作日志菜单');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (501,'登录日志',108,2,'logininfor','monitor/logininfor/index','',1,0,'C','0','0','monitor:logininfor:list','logininfor','admin','2024-06-16 15:22:25','',NULL,'登录日志菜单');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1000,'用户查询',100,1,'','','',1,0,'F','0','0','system:user:query','#','admin','2024-06-16 15:22:25','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1001,'用户新增',100,2,'','','',1,0,'F','0','0','system:user:add','#','admin','2024-06-16 15:22:25','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1002,'用户修改',100,3,'','','',1,0,'F','0','0','system:user:edit','#','admin','2024-06-16 15:22:25','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1003,'用户删除',100,4,'','','',1,0,'F','0','0','system:user:remove','#','admin','2024-06-16 15:22:25','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1004,'用户导出',100,5,'','','',1,0,'F','0','0','system:user:export','#','admin','2024-06-16 15:22:25','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1005,'用户导入',100,6,'','','',1,0,'F','0','0','system:user:import','#','admin','2024-06-16 15:22:25','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1006,'重置密码',100,7,'','','',1,0,'F','0','0','system:user:resetPwd','#','admin','2024-06-16 15:22:25','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1007,'角色查询',101,1,'','','',1,0,'F','0','0','system:role:query','#','admin','2024-06-16 15:22:25','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1008,'角色新增',101,2,'','','',1,0,'F','0','0','system:role:add','#','admin','2024-06-16 15:22:25','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1009,'角色修改',101,3,'','','',1,0,'F','0','0','system:role:edit','#','admin','2024-06-16 15:22:25','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1010,'角色删除',101,4,'','','',1,0,'F','0','0','system:role:remove','#','admin','2024-06-16 15:22:25','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1011,'角色导出',101,5,'','','',1,0,'F','0','0','system:role:export','#','admin','2024-06-16 15:22:25','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1012,'菜单查询',102,1,'','','',1,0,'F','0','0','system:menu:query','#','admin','2024-06-16 15:22:25','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1013,'菜单新增',102,2,'','','',1,0,'F','0','0','system:menu:add','#','admin','2024-06-16 15:22:25','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1014,'菜单修改',102,3,'','','',1,0,'F','0','0','system:menu:edit','#','admin','2024-06-16 15:22:25','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1015,'菜单删除',102,4,'','','',1,0,'F','0','0','system:menu:remove','#','admin','2024-06-16 15:22:25','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1025,'字典查询',105,1,'#','','',1,0,'F','0','0','system:dict:query','#','admin','2024-06-16 15:22:25','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1026,'字典新增',105,2,'#','','',1,0,'F','0','0','system:dict:add','#','admin','2024-06-16 15:22:25','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1027,'字典修改',105,3,'#','','',1,0,'F','0','0','system:dict:edit','#','admin','2024-06-16 15:22:25','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1028,'字典删除',105,4,'#','','',1,0,'F','0','0','system:dict:remove','#','admin','2024-06-16 15:22:25','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1029,'字典导出',105,5,'#','','',1,0,'F','0','0','system:dict:export','#','admin','2024-06-16 15:22:25','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1030,'参数查询',106,1,'#','','',1,0,'F','0','0','system:config:query','#','admin','2024-06-16 15:22:25','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1031,'参数新增',106,2,'#','','',1,0,'F','0','0','system:config:add','#','admin','2024-06-16 15:22:25','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1032,'参数修改',106,3,'#','','',1,0,'F','0','0','system:config:edit','#','admin','2024-06-16 15:22:25','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1033,'参数删除',106,4,'#','','',1,0,'F','0','0','system:config:remove','#','admin','2024-06-16 15:22:25','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1034,'参数导出',106,5,'#','','',1,0,'F','0','0','system:config:export','#','admin','2024-06-16 15:22:25','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1035,'公告查询',107,1,'#','','',1,0,'F','0','0','system:notice:query','#','admin','2024-06-16 15:22:25','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1036,'公告新增',107,2,'#','','',1,0,'F','0','0','system:notice:add','#','admin','2024-06-16 15:22:25','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1037,'公告修改',107,3,'#','','',1,0,'F','0','0','system:notice:edit','#','admin','2024-06-16 15:22:25','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1038,'公告删除',107,4,'#','','',1,0,'F','0','0','system:notice:remove','#','admin','2024-06-16 15:22:25','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1039,'操作查询',500,1,'#','','',1,0,'F','0','0','monitor:operlog:query','#','admin','2024-06-16 15:22:25','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1040,'操作删除',500,2,'#','','',1,0,'F','0','0','monitor:operlog:remove','#','admin','2024-06-16 15:22:25','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1041,'日志导出',500,3,'#','','',1,0,'F','0','0','monitor:operlog:export','#','admin','2024-06-16 15:22:25','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1042,'登录查询',501,1,'#','','',1,0,'F','0','0','monitor:logininfor:query','#','admin','2024-06-16 15:22:25','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1043,'登录删除',501,2,'#','','',1,0,'F','0','0','monitor:logininfor:remove','#','admin','2024-06-16 15:22:25','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1044,'日志导出',501,3,'#','','',1,0,'F','0','0','monitor:logininfor:export','#','admin','2024-06-16 15:22:25','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1045,'账户解锁',501,4,'#','','',1,0,'F','0','0','monitor:logininfor:unlock','#','admin','2024-06-16 15:22:25','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1055,'生成查询',116,1,'#','','',1,0,'F','0','0','tool:gen:query','#','admin','2024-06-16 15:22:25','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1056,'生成修改',116,2,'#','','',1,0,'F','0','0','tool:gen:edit','#','admin','2024-06-16 15:22:25','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1057,'生成删除',116,3,'#','','',1,0,'F','0','0','tool:gen:remove','#','admin','2024-06-16 15:22:25','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1058,'导入代码',116,4,'#','','',1,0,'F','0','0','tool:gen:import','#','admin','2024-06-16 15:22:25','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1059,'预览代码',116,5,'#','','',1,0,'F','0','0','tool:gen:preview','#','admin','2024-06-16 15:22:25','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1060,'生成代码',116,6,'#','','',1,0,'F','0','0','tool:gen:code','#','admin','2024-06-16 15:22:25','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2090,'检验规则',3,0,'verification','tool/verification/index',NULL,1,0,'C','0','0','tool:verification:list','example','admin','2024-10-15 23:25:31','admin','2024-10-19 14:57:59','代码生成检验规则菜单');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2091,'代码生成检验规则查询',2090,1,'#','',NULL,1,0,'F','0','0','tool:verification:query','#','admin','2024-10-15 23:25:31','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2092,'代码生成检验规则新增',2090,2,'#','',NULL,1,0,'F','0','0','tool:verification:add','#','admin','2024-10-15 23:25:31','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2093,'代码生成检验规则修改',2090,3,'#','',NULL,1,0,'F','0','0','tool:verification:edit','#','admin','2024-10-15 23:25:31','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2094,'代码生成检验规则删除',2090,4,'#','',NULL,1,0,'F','0','0','tool:verification:remove','#','admin','2024-10-15 23:25:31','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2095,'代码生成检验规则导出',2090,5,'#','',NULL,1,0,'F','0','0','tool:verification:export','#','admin','2024-10-15 23:25:31','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2102,'模块管理',3,4,'customModule','tool/customModule/index',NULL,1,0,'C','0','0','tool:customModule:list','guide','admin','2024-10-18 21:18:46','admin','2024-10-20 20:05:03','模块菜单');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2103,'模块查询',2102,1,'#','',NULL,1,0,'F','0','0','tool:customModule:query','#','admin','2024-10-18 21:18:46','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2104,'模块新增',2102,2,'#','',NULL,1,0,'F','0','0','tool:customModule:add','#','admin','2024-10-18 21:18:46','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2105,'模块修改',2102,3,'#','',NULL,1,0,'F','0','0','tool:customModule:edit','#','admin','2024-10-18 21:18:46','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2106,'模块删除',2102,4,'#','',NULL,1,0,'F','0','0','tool:customModule:remove','#','admin','2024-10-18 21:18:46','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2107,'模块导出',2102,5,'#','',NULL,1,0,'F','0','0','tool:customModule:export','#','admin','2024-10-18 21:18:46','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2120,'模块详情',3,5,'customModuleInfo','tool/customModuleInfo/index','{\"moduleId\":6}',1,0,'C','1','0','tool:customModuleInfo:list','#','admin','2024-10-18 23:46:09','admin','2024-10-20 20:04:30','模块详情菜单');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2121,'模块详情查询',2120,1,'#','',NULL,1,0,'F','0','0','tool:customModuleInfo:query','#','admin','2024-10-18 23:46:09','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2122,'模块详情新增',2120,2,'#','',NULL,1,0,'F','0','0','tool:customModuleInfo:add','#','admin','2024-10-18 23:46:09','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2123,'模块详情修改',2120,3,'#','',NULL,1,0,'F','0','0','tool:customModuleInfo:edit','#','admin','2024-10-18 23:46:09','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2124,'模块详情删除',2120,4,'#','',NULL,1,0,'F','0','0','tool:customModuleInfo:remove','#','admin','2024-10-18 23:46:09','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2125,'模块详情导出',2120,5,'#','',NULL,1,0,'F','0','0','tool:customModuleInfo:export','#','admin','2024-10-18 23:46:09','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2126,'模块文件',3,6,'customModuleFile','tool/customModuleFile/index','{\"moduleInfoId\":1}',1,0,'C','1','0','tool:customModuleFile:list','#','admin','2024-10-18 23:46:23','admin','2024-10-20 20:04:27','模块文件菜单');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2127,'模块文件查询',2126,1,'#','',NULL,1,0,'F','0','0','tool:customModuleFile:query','#','admin','2024-10-18 23:46:23','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2128,'模块文件新增',2126,2,'#','',NULL,1,0,'F','0','0','tool:customModuleFile:add','#','admin','2024-10-18 23:46:23','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2129,'模块文件修改',2126,3,'#','',NULL,1,0,'F','0','0','tool:customModuleFile:edit','#','admin','2024-10-18 23:46:23','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2130,'模块文件删除',2126,4,'#','',NULL,1,0,'F','0','0','tool:customModuleFile:remove','#','admin','2024-10-18 23:46:23','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2131,'模块文件导出',2126,5,'#','',NULL,1,0,'F','0','0','tool:customModuleFile:export','#','admin','2024-10-18 23:46:23','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2132,'用户消息','1','10','message','system/message/index',NULL,'1','0','C','0','0','system:message:list','bell','admin','2025-03-23 19:41:05','admin','2025-03-23 20:11:57','用户消息菜单');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2133,'用户消息查询','2132','1','#','',NULL,'1','0','F','0','0','system:message:query','#','admin','2025-03-23 19:41:05','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2134,'用户消息新增','2132','2','#','',NULL,'1','0','F','0','0','system:message:add','#','admin','2025-03-23 19:41:05','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2135,'用户消息修改','2132','3','#','',NULL,'1','0','F','0','0','system:message:edit','#','admin','2025-03-23 19:41:05','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2136,'用户消息删除','2132','4','#','',NULL,'1','0','F','0','0','system:message:remove','#','admin','2025-03-23 19:41:05','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2137,'用户消息导出','2132','5','#','',NULL,'1','0','F','0','0','system:message:export','#','admin','2025-03-23 19:41:05','',NULL,'');

/*Table structure for table `sys_notice` */

CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='通知公告表';

/*Data for the table `sys_notice` */

insert  into `sys_notice`(`notice_id`,`notice_title`,`notice_type`,`notice_content`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,'温馨提醒：2018-07-01 若依新版本发布啦','2','新版本内容','0','admin','2024-06-16 15:22:25','',NULL,'管理员');
insert  into `sys_notice`(`notice_id`,`notice_title`,`notice_type`,`notice_content`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2,'维护通知：2018-07-01 若依系统凌晨维护','1','维护内容','0','admin','2024-06-16 15:22:25','',NULL,'管理员');
insert  into `sys_notice`(`notice_id`,`notice_title`,`notice_type`,`notice_content`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (3,'1111','1','<p>56165161</p>','0','admin','2024-09-02 18:34:23','',NULL,NULL);

/*Table structure for table `sys_oper_log` */

CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(200) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint(20) DEFAULT '0' COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`),
  KEY `idx_sys_oper_log_bt` (`business_type`),
  KEY `idx_sys_oper_log_s` (`status`),
  KEY `idx_sys_oper_log_ot` (`oper_time`)
) ENGINE=InnoDB AUTO_INCREMENT=975 DEFAULT CHARSET=utf8 COMMENT='操作日志记录';



/*Table structure for table `sys_role` */

CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色信息表';

/*Data for the table `sys_role` */

insert  into `sys_role`(`role_id`,`role_name`,`role_key`,`role_sort`,`data_scope`,`menu_check_strictly`,`dept_check_strictly`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,'超级管理员','admin',1,'1',1,1,'0','0','admin','2024-06-16 15:22:25','',NULL,'超级管理员');
insert  into `sys_role`(`role_id`,`role_name`,`role_key`,`role_sort`,`data_scope`,`menu_check_strictly`,`dept_check_strictly`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2,'管理员','guanliyuan',2,'1',1,1,'0','0','admin','2024-06-16 15:22:25','admin','2024-08-31 17:19:20','管理员');

/*Table structure for table `sys_role_menu` */

CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';

/*Data for the table `sys_role_menu` */

insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,100);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,101);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,102);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,105);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,106);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,107);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,108);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,500);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,501);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1000);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1001);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1002);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1003);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1004);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1005);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1006);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1007);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1008);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1009);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1010);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1011);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1012);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1013);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1014);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1015);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1025);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1026);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1027);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1028);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1029);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1030);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1031);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1032);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1033);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1034);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1035);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1036);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1037);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1038);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1039);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1040);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1041);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1042);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1043);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1044);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,1045);

/*Table structure for table `sys_user` */

CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

/*Data for the table `sys_user` */

insert  into `sys_user`(`user_id`,`dept_id`,`user_name`,`nick_name`,`user_type`,`email`,`phonenumber`,`sex`,`avatar`,`password`,`status`,`del_flag`,`login_ip`,`login_date`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,103,'admin','管理员','00','tm@163.com','15888888888','1','/profile/avatar/2024/08/23/logo_20240823163528A001.png','$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2','0','0','127.0.0.1','2025-01-12 20:13:09','admin','2024-06-16 15:22:25','','2025-01-12 20:13:09','管理员');
insert  into `sys_user`(`user_id`,`dept_id`,`user_name`,`nick_name`,`user_type`,`email`,`phonenumber`,`sex`,`avatar`,`password`,`status`,`del_flag`,`login_ip`,`login_date`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2,NULL,'root','管理员','00','','','0','','$2a$10$GbQ40Xb/2snCHlJbxFvmS.vMMTDoIs7aMaZQKxYrG.GJvonuPgXH.','0','0','',NULL,'admin','2025-03-1512:14:03','',NULL,NULL);

/*Table structure for table `sys_user_post` */

CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与岗位关联表';

/*Data for the table `sys_user_post` */

insert  into `sys_user_post`(`user_id`,`post_id`) values (1,1);

/*Table structure for table `sys_user_role` */

CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户和角色关联表';

/*Data for the table `sys_user_role` */

insert  into `sys_user_role`(`user_id`,`role_id`) values (1,1);
insert  into `sys_user_role`(`user_id`,`role_id`) values (2,2);


/*Table structure for table `sys_message` */

CREATE TABLE `sys_message`
(
    `id`              bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
    `user_id`         bigint(20) DEFAULT NULL COMMENT '用户',
    `message_type`    varchar(30)  DEFAULT NULL COMMENT '消息类型',
    `message_content` varchar(255) DEFAULT NULL COMMENT '消息内容',
    `routing_address` varchar(255) DEFAULT NULL COMMENT '路由地址',
    `read`            char(1)      DEFAULT 'N' COMMENT '已读',
    `create_time`     datetime     DEFAULT NULL COMMENT '创建时间',
    `read_time`       datetime     DEFAULT NULL COMMENT '读取时间',
    `del_flag`        char(1)      DEFAULT '0' COMMENT '删除标志',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户消息表';

/*Table structure for table `tm_custom_module` */

CREATE TABLE `tm_custom_module` (
  `module_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `model_name` varchar(50) DEFAULT NULL COMMENT '模块名称',
  `model_info_id` bigint(20) DEFAULT NULL COMMENT '当前版本',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='模块';

/*Data for the table `tm_custom_module` */

insert  into `tm_custom_module`(`module_id`,`model_name`,`model_info_id`,`create_by`,`create_time`) values (6,'角色-登录',12,NULL,'2024-10-18 21:23:25');
insert  into `tm_custom_module`(`module_id`,`model_name`,`model_info_id`,`create_by`,`create_time`) values (9,'文件上传',17,NULL,'2024-10-19 01:43:46');
insert  into `tm_custom_module`(`module_id`,`model_name`,`model_info_id`,`create_by`,`create_time`) values (10,'首页',NULL,NULL,'2024-10-24 18:35:46');
insert  into `tm_custom_module`(`module_id`,`model_name`,`model_info_id`,`create_by`,`create_time`) values (11,'打包',20,NULL,'2024-11-10 22:13:10');

/*Table structure for table `tm_custom_module_file` */

CREATE TABLE `tm_custom_module_file` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `module_info_id` bigint(20) DEFAULT NULL COMMENT '模块详情id',
  `file_type` varchar(50) DEFAULT NULL COMMENT '问价类型',
  `file_path` varchar(200) DEFAULT NULL COMMENT '文件路径',
  `file_text` text COMMENT '文本内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='模块文件';

/*Data for the table `tm_custom_module_file` */

insert  into `tm_custom_module_file`(`id`,`module_info_id`,`file_type`,`file_path`,`file_text`) values (1,12,'\\RuoYi-Tunma-Backend\\','src/main/java/com/ruoyi/project/system/controller/SysLoginController.java','/profile/upload/2024/10/18/SysLoginController_20241018224215A001.java');
insert  into `tm_custom_module_file`(`id`,`module_info_id`,`file_type`,`file_path`,`file_text`) values (2,12,'\\RuoYi-Tunma-Backend\\','src/main/java/com/ruoyi/framework/security/service/SysLoginService.java','/profile/upload/2024/10/18/SysLoginService_20241018224319A002.java');
insert  into `tm_custom_module_file`(`id`,`module_info_id`,`file_type`,`file_path`,`file_text`) values (3,12,'\\RuoYi-Tunma-Backend\\','src/main/java/com/ruoyi/framework/security/LoginBody.java','/profile/upload/2024/10/18/LoginBody_20241018224337A003.java');
insert  into `tm_custom_module_file`(`id`,`module_info_id`,`file_type`,`file_path`,`file_text`) values (4,12,'\\RuoYi-Tunma-Backend\\','src/main/java/com/ruoyi/framework/config/SecurityConfig.java','/profile/upload/2024/10/18/SecurityConfig_20241018224402A004.java');
insert  into `tm_custom_module_file`(`id`,`module_info_id`,`file_type`,`file_path`,`file_text`) values (5,12,'\\RuoYi-Tunma-Backend\\','src/main/java/com/ruoyi/project/common/CommonController.java','/profile/upload/2024/10/24/CommonController_20241024185009A001.java');
insert  into `tm_custom_module_file`(`id`,`module_info_id`,`file_type`,`file_path`,`file_text`) values (6,12,'\\RuoYi-Tunma-Frontend\\','src/api/login.js','/profile/upload/2024/10/18/login_20241018224733A006.js');
insert  into `tm_custom_module_file`(`id`,`module_info_id`,`file_type`,`file_path`,`file_text`) values (7,12,'\\RuoYi-Tunma-Frontend\\','src/views/login.vue','/profile/upload/2024/10/24/login_20241024184752A001.vue');
insert  into `tm_custom_module_file`(`id`,`module_info_id`,`file_type`,`file_path`,`file_text`) values (8,12,'\\RuoYi-Tunma-Frontend\\','src/store/modules/user.js','/profile/upload/2024/10/18/user_20241018224955A008.js');
insert  into `tm_custom_module_file`(`id`,`module_info_id`,`file_type`,`file_path`,`file_text`) values (17,14,'\\RuoYi-Tunma-Backend\\','src/main/java/com/ruoyi/project/system/controller/SysLoginController.java','/profile/upload/2024/10/19/SysLoginController_20241019010736A001.java');
insert  into `tm_custom_module_file`(`id`,`module_info_id`,`file_type`,`file_path`,`file_text`) values (18,14,'\\RuoYi-Tunma-Backend\\','src/main/java/com/ruoyi/framework/security/service/SysLoginService.java','/profile/upload/2024/10/19/SysLoginService_20241019010736A002.java');
insert  into `tm_custom_module_file`(`id`,`module_info_id`,`file_type`,`file_path`,`file_text`) values (19,14,'\\RuoYi-Tunma-Backend\\','src/main/java/com/ruoyi/framework/security/LoginBody.java','/profile/upload/2024/10/19/LoginBody_20241019010736A003.java');
insert  into `tm_custom_module_file`(`id`,`module_info_id`,`file_type`,`file_path`,`file_text`) values (20,14,'\\RuoYi-Tunma-Backend\\','src/main/java/com/ruoyi/framework/config/SecurityConfig.java','/profile/upload/2024/10/19/SecurityConfig_20241019010736A004.java');
insert  into `tm_custom_module_file`(`id`,`module_info_id`,`file_type`,`file_path`,`file_text`) values (21,14,'\\RuoYi-Tunma-Backend\\','src/main/java/com/ruoyi/project/common/CommonController.java','/profile/upload/2024/10/19/CommonController_20241019010736A005.java');
insert  into `tm_custom_module_file`(`id`,`module_info_id`,`file_type`,`file_path`,`file_text`) values (22,14,'\\RuoYi-Tunma-Frontend\\','src/api/login.js','/profile/upload/2024/10/19/login_20241019010736A006.js');
insert  into `tm_custom_module_file`(`id`,`module_info_id`,`file_type`,`file_path`,`file_text`) values (23,14,'\\RuoYi-Tunma-Frontend\\','src/views/login.vue','/profile/upload/2024/10/19/login_20241019010736A007.vue');
insert  into `tm_custom_module_file`(`id`,`module_info_id`,`file_type`,`file_path`,`file_text`) values (24,14,'\\RuoYi-Tunma-Frontend\\','src/store/modules/user.js','/profile/upload/2024/10/19/user_20241019010736A008.js');
insert  into `tm_custom_module_file`(`id`,`module_info_id`,`file_type`,`file_path`,`file_text`) values (26,16,'\\RuoYi-Tunma-Backend\\','src/main/java/com/ruoyi/common/utils/file/MimeTypeUtils.java','/profile/upload/2024/10/19/MimeTypeUtils_20241019014656A001.java');
insert  into `tm_custom_module_file`(`id`,`module_info_id`,`file_type`,`file_path`,`file_text`) values (27,16,'\\RuoYi-Tunma-Frontend\\','src/components/FileUpload/index.vue','/profile/upload/2024/10/19/index_20241019014728A003.vue');
insert  into `tm_custom_module_file`(`id`,`module_info_id`,`file_type`,`file_path`,`file_text`) values (28,17,'\\RuoYi-Tunma-Backend\\','src/main/java/com/ruoyi/common/utils/file/MimeTypeUtils.java','/profile/upload/2024/10/19/MimeTypeUtils_20241019014928A001.java');
insert  into `tm_custom_module_file`(`id`,`module_info_id`,`file_type`,`file_path`,`file_text`) values (29,17,'\\RuoYi-Tunma-Frontend\\','src/components/FileUpload/index.vue','/profile/upload/2024/10/19/index_20241019014928A002.vue');
insert  into `tm_custom_module_file`(`id`,`module_info_id`,`file_type`,`file_path`,`file_text`) values (30,18,'\\RuoYi-Tunma-Frontend\\','src/views/index.vue','/profile/upload/2024/10/24/index_20241024183638A001.vue');
insert  into `tm_custom_module_file`(`id`,`module_info_id`,`file_type`,`file_path`,`file_text`) values (31,19,'\\RuoYi-Tunma-Frontend\\','src/views/index.vue','/profile/upload/2024/10/24/index_20241024183815A002.vue');
insert  into `tm_custom_module_file`(`id`,`module_info_id`,`file_type`,`file_path`,`file_text`) values (32,20,'\\RuoYi-Tunma-Backend\\','src/main/java/com/ruoyi/framework/config/SecurityConfig.java','/profile/upload/2024/11/10/SecurityConfig_20241110221932A001.java');
insert  into `tm_custom_module_file`(`id`,`module_info_id`,`file_type`,`file_path`,`file_text`) values (33,20,'\\RuoYi-Tunma-Backend\\','pom.xml','/profile/upload/2024/11/10/pom_20241110221739A002.xml');
insert  into `tm_custom_module_file`(`id`,`module_info_id`,`file_type`,`file_path`,`file_text`) values (34,22,'\\RuoYi-Tunma-Backend\\','src/main/java/com/ruoyi/framework/config/SecurityConfig.java','/profile/upload/2024/11/10/SecurityConfig_20241110222114A003.java');
insert  into `tm_custom_module_file`(`id`,`module_info_id`,`file_type`,`file_path`,`file_text`) values (35,22,'\\RuoYi-Tunma-Backend\\','pom.xml','/profile/upload/2024/11/10/pom_20241110222052A002.xml');

/*Table structure for table `tm_custom_module_info` */

CREATE TABLE `tm_custom_module_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `module_id` bigint(20) DEFAULT NULL COMMENT '模块id',
  `version_name` varchar(30) DEFAULT NULL COMMENT '版本名称',
  PRIMARY KEY (`id`),
  KEY `module_id` (`module_id`),
  CONSTRAINT `tm_custom_module_info_ibfk_3` FOREIGN KEY (`module_id`) REFERENCES `tm_custom_module` (`module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='模块详情';

/*Data for the table `tm_custom_module_info` */

insert  into `tm_custom_module_info`(`id`,`module_id`,`version_name`) values (12,6,'有角色版本');
insert  into `tm_custom_module_info`(`id`,`module_id`,`version_name`) values (14,6,'无角色版本');
insert  into `tm_custom_module_info`(`id`,`module_id`,`version_name`) values (16,9,'支持vue,java,js,xml,yml,sql');
insert  into `tm_custom_module_info`(`id`,`module_id`,`version_name`) values (17,9,'初始版本');
insert  into `tm_custom_module_info`(`id`,`module_id`,`version_name`) values (18,10,'echats图');
insert  into `tm_custom_module_info`(`id`,`module_id`,`version_name`) values (19,10,'系统标题版');
insert  into `tm_custom_module_info`(`id`,`module_id`,`version_name`) values (20,11,'原版本');
insert  into `tm_custom_module_info`(`id`,`module_id`,`version_name`) values (22,11,'打包');

/*Table structure for table `tm_verification` */

CREATE TABLE `tm_verification` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `backend_verification` char(1) DEFAULT '0' COMMENT '后端校验',
  `name` varchar(36) DEFAULT NULL COMMENT '检验类型',
  `regular` varchar(255) DEFAULT NULL COMMENT '正则',
  `prompt` varchar(255) DEFAULT NULL COMMENT '提示语',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='代码生成检验规则';

/*Data for the table `tm_verification` */

insert  into `tm_verification`(`id`,`backend_verification`,`name`,`regular`,`prompt`,`create_by`,`create_time`,`update_by`,`update_time`) values (1,'0','手机号','/^1[3|4|5|6|7|8|9][0-9]\\d{8}$/','请输入正确的手机号码',NULL,'2024-09-18 04:39:19',NULL,NULL);
insert  into `tm_verification`(`id`,`backend_verification`,`name`,`regular`,`prompt`,`create_by`,`create_time`,`update_by`,`update_time`) values (2,'0','邮箱','/^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$/','请输入正确的邮箱地址',NULL,'2024-09-18 04:40:29',NULL,'2024-09-27 18:42:24');
insert  into `tm_verification`(`id`,`backend_verification`,`name`,`regular`,`prompt`,`create_by`,`create_time`,`update_by`,`update_time`) values (3,'0','密码','/^[^\"\'|\\\\]+$/','不能包含非法字符： \" \' \\ |',NULL,'2024-09-18 04:41:22',NULL,NULL);
insert  into `tm_verification`(`id`,`backend_verification`,`name`,`regular`,`prompt`,`create_by`,`create_time`,`update_by`,`update_time`) values (4,'0','身份证号码','/^(1[1-5]|2[1-3]|3[1-7]|4[1-6]|5[0-4]|6[1-5]|7[1-8]|8[1-9])\\d{4}((19|20)\\d{2})(0[1-9]|1[0-2])(0[1-9]|[12][0-9]|3[01])\\d{3}[\\dXx]$/','请输入正确的身份证号码',NULL,'2024-09-18 04:44:04',NULL,NULL);
insert  into `tm_verification`(`id`,`backend_verification`,`name`,`regular`,`prompt`,`create_by`,`create_time`,`update_by`,`update_time`) values (5,'0','邮箱','/^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$/','请输入正确的邮箱！',NULL,'2024-09-27 18:41:52',NULL,NULL);
insert  into `tm_verification`(`id`,`backend_verification`,`name`,`regular`,`prompt`,`create_by`,`create_time`,`update_by`,`update_time`) values (6,'0','Windows文件路径','/^(?:[A-Za-z]:\\\\\\\\(?:[^\\\\\\\\/:*?\\\"|\\\\r\\\\n]+\\\\\\\\)*[^\\\\\\\\/:*?\\\"|\\\\r\\\\n]*)$/','请输入正确的文件路径',NULL,'2024-10-02 12:16:13',NULL,NULL);
insert  into `tm_verification`(`id`,`backend_verification`,`name`,`regular`,`prompt`,`create_by`,`create_time`,`update_by`,`update_time`) values (7,'0','HH:mm:ss','/^(?:[01]\\\\d|2[0-3]):[0-5]\\\\d:[0-5]\\\\d$/','请输入正确的时间格式',NULL,'2024-10-02 12:18:01',NULL,NULL);
insert  into `tm_verification`(`id`,`backend_verification`,`name`,`regular`,`prompt`,`create_by`,`create_time`,`update_by`,`update_time`) values (8,'0','正整数','/^[1-9]\\d*$/','请输入正整数',NULL,'2024-11-10 13:24:30',NULL,'2024-11-10 13:28:15');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
