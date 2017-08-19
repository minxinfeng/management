--banner列表信息
CREATE TABLE `banner_info` (
  `banner_id` int(11) NOT NULL,
  `banner_name` varchar(100) DEFAULT NULL COMMENT 'banner名称',
  `banner_image_url` varchar(100) DEFAULT NULL COMMENT 'banner图片地址',
  `banner_gourl` varchar(100) DEFAULT NULL COMMENT 'banner跳转地址',
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
--热门列表信息
CREATE TABLE `hot_list` (
  `hot_id` int(11) NOT NULL,
  `hot_type` varchar(45) DEFAULT NULL COMMENT '热门类别',
  `hot_logo_url` varchar(100) DEFAULT NULL,
  `hot_name` varchar(45) DEFAULT NULL COMMENT '热门贷款名称',
  `hot_gourl` varchar(100) DEFAULT NULL COMMENT '跳转地址',
  PRIMARY KEY (`hot_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='热门贷款内容';
--列表配置信息
CREATE TABLE `list_config` (
  `config_id` int(11) NOT NULL,
  `list_name` varchar(45) DEFAULT NULL COMMENT '列表名称，与tag中一致',
  `channel_name` varchar(45) DEFAULT NULL COMMENT '渠道名称',
  `channel_logo_url` varchar(100) DEFAULT NULL COMMENT '渠道logo',
  `channel_gourl` varchar(100) DEFAULT NULL COMMENT '渠道链接',
  `money_range_from` varchar(45) DEFAULT NULL COMMENT '金额范围',
  `moeny_range_to` varchar(45) DEFAULT NULL,
  `tags` varchar(100) DEFAULT NULL COMMENT '标签列表：不用真心,身份证等',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
--标签信息
CREATE TABLE `tag_list` (
  `tag_id` int(11) NOT NULL,
  `tag_name` varchar(45) DEFAULT NULL COMMENT '列表名称',
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
--分类列表
CREATE TABLE `type_info` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(100) DEFAULT NULL COMMENT '类别名称',
  `type_title` varchar(100) DEFAULT NULL COMMENT '类别标题',
  `type_logo_url` varchar(100) DEFAULT NULL,
  `type_money_from` varchar(45) DEFAULT NULL COMMENT '金额描述',
  `type_money_to` varchar(45) DEFAULT NULL,
  `type_goto` varchar(100) DEFAULT NULL COMMENT '分类跳转，如大额贷款、小额贷款等',
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='类别信息';








