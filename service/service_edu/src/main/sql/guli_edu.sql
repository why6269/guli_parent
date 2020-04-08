# Host: localhost  (Version 5.7.19)
# Date: 2019-11-18 15:49:32
# Generator: MySQL-Front 6.1  (Build 1.26)

# 说明：此数据库表结构等设计参照阿里巴巴Java开发手册的MySQL规约

#
# Structure for table "edu_chapter"
#

CREATE TABLE `edu_chapter` (
                               `id` char(19) NOT NULL COMMENT '章节ID',
                               `course_id` char(19) NOT NULL COMMENT '课程ID',
                               `title` varchar(50) NOT NULL COMMENT '章节名称',
                               `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '显示排序',
                               `gmt_create` datetime NOT NULL COMMENT '创建时间',
                               `gmt_modified` datetime NOT NULL COMMENT '更新时间',
                               PRIMARY KEY (`id`),
                               KEY `idx_course_id` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='课程';

#
# Data for table "edu_chapter"
#

INSERT INTO `edu_chapter` VALUES ('1','14','第一章：HTML',0,'2019-01-01 12:27:40','2019-01-01 12:55:30'),('1181729226915577857','18','第七章：I/O流',70,'2019-10-09 08:32:58','2019-10-09 08:33:20'),('1192252428399751169','1192252213659774977','第一章节',0,'2019-11-07 09:28:25','2019-11-07 09:28:25'),('15','18','第一章：Java入门',0,'2019-01-01 12:27:40','2019-10-09 09:13:19'),('3','14','第二章：CSS',0,'2019-01-01 12:55:35','2019-01-01 12:27:40'),('32','18','第二章：控制台输入和输出',0,'2019-01-01 12:27:40','2019-01-01 12:27:40'),('44','18','第三章：控制流',0,'2019-01-01 12:27:40','2019-01-01 12:27:40'),('48','18','第四章：类的定义',0,'2019-01-01 12:27:40','2019-01-01 12:27:40'),('63','18','第五章：数组',0,'2019-01-01 12:27:40','2019-01-01 12:27:40'),('64','18','第六章：继承',61,'2019-01-01 12:27:40','2019-10-09 08:32:47');

#
# Structure for table "edu_comment"
#

CREATE TABLE `edu_comment` (
                               `id` char(19) NOT NULL COMMENT '讲师ID',
                               `course_id` varchar(19) NOT NULL DEFAULT '' COMMENT '课程id',
                               `teacher_id` char(19) NOT NULL DEFAULT '' COMMENT '讲师id',
                               `member_id` varchar(19) NOT NULL DEFAULT '' COMMENT '会员id',
                               `nickname` varchar(50) DEFAULT NULL COMMENT '会员昵称',
                               `avatar` varchar(255) DEFAULT NULL COMMENT '会员头像',
                               `content` varchar(500) DEFAULT NULL COMMENT '评论内容',
                               `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除 1（true）已删除， 0（false）未删除',
                               `gmt_create` datetime NOT NULL COMMENT '创建时间',
                               `gmt_modified` datetime NOT NULL COMMENT '更新时间',
                               PRIMARY KEY (`id`),
                               KEY `idx_course_id` (`course_id`),
                               KEY `idx_teacher_id` (`teacher_id`),
                               KEY `idx_member_id` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='评论';

#
# Data for table "edu_comment"
#

INSERT INTO `edu_comment` VALUES ('1194499162790211585','1192252213659774977','1189389726308478977','1','小三123','http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoj0hHXhgJNOTSOFsS4uZs8x1ConecaVOB8eIl115xmJZcT4oCicvia7wMEufibKtTLqiaJeanU2Lpg3w/132','课程很好',0,'2019-11-13 14:16:08','2019-11-13 14:16:08'),('1194898406466420738','1192252213659774977','1189389726308478977','1','小三123','http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoj0hHXhgJNOTSOFsS4uZs8x1ConecaVOB8eIl115xmJZcT4oCicvia7wMEufibKtTLqiaJeanU2Lpg3w/132','11',0,'2019-11-14 16:42:35','2019-11-14 16:42:35'),('1194898484388200450','1192252213659774977','1189389726308478977','1','小三123','http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoj0hHXhgJNOTSOFsS4uZs8x1ConecaVOB8eIl115xmJZcT4oCicvia7wMEufibKtTLqiaJeanU2Lpg3w/132','111',0,'2019-11-14 16:42:53','2019-11-14 16:42:53'),('1195251020861317122','1192252213659774977','1189389726308478977','1',NULL,NULL,'2233',0,'2019-11-15 16:03:45','2019-11-15 16:03:45'),('1195251382720700418','1192252213659774977','1189389726308478977','1',NULL,NULL,'4455',0,'2019-11-15 16:05:11','2019-11-15 16:05:11'),('1195252819177570306','1192252213659774977','1189389726308478977','1','小三1231','http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoj0hHXhgJNOTSOFsS4uZs8x1ConecaVOB8eIl115xmJZcT4oCicvia7wMEufibKtTLqiaJeanU2Lpg3w/132','55',0,'2019-11-15 16:10:53','2019-11-15 16:10:53'),('1195252899448160258','1192252213659774977','1189389726308478977','1','小三1231','http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoj0hHXhgJNOTSOFsS4uZs8x1ConecaVOB8eIl115xmJZcT4oCicvia7wMEufibKtTLqiaJeanU2Lpg3w/132','55',0,'2019-11-15 16:11:13','2019-11-15 16:11:13'),('1195252920587452417','1192252213659774977','1189389726308478977','1','小三1231','http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoj0hHXhgJNOTSOFsS4uZs8x1ConecaVOB8eIl115xmJZcT4oCicvia7wMEufibKtTLqiaJeanU2Lpg3w/132','223344',0,'2019-11-15 16:11:18','2019-11-15 16:11:18'),('1195262128095559681','14','1189389726308478977','1','小三1231','http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoj0hHXhgJNOTSOFsS4uZs8x1ConecaVOB8eIl115xmJZcT4oCicvia7wMEufibKtTLqiaJeanU2Lpg3w/132','11',0,'2019-11-15 16:47:53','2019-11-15 16:47:53'),('1196264505170767874','1192252213659774977','1189389726308478977','1','小三1231','http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoj0hHXhgJNOTSOFsS4uZs8x1ConecaVOB8eIl115xmJZcT4oCicvia7wMEufibKtTLqiaJeanU2Lpg3w/132','666666',0,'2019-11-18 11:10:58','2019-11-18 11:10:58');

#
# Structure for table "edu_course"
#

CREATE TABLE `edu_course` (
                              `id` char(19) NOT NULL COMMENT '课程ID',
                              `teacher_id` char(19) NOT NULL COMMENT '课程讲师ID',
                              `subject_id` char(19) NOT NULL COMMENT '课程专业ID',
                              `subject_parent_id` char(19) NOT NULL COMMENT '课程专业父级ID',
                              `title` varchar(50) NOT NULL COMMENT '课程标题',
                              `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '课程销售价格，设置为0则可免费观看',
                              `lesson_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '总课时',
                              `cover` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '课程封面图片路径',
                              `buy_count` bigint(10) unsigned NOT NULL DEFAULT '0' COMMENT '销售数量',
                              `view_count` bigint(10) unsigned NOT NULL DEFAULT '0' COMMENT '浏览数量',
                              `version` bigint(20) unsigned NOT NULL DEFAULT '1' COMMENT '乐观锁',
                              `status` varchar(10) NOT NULL DEFAULT 'Draft' COMMENT '课程状态 Draft未发布  Normal已发布',
                              `is_deleted` tinyint(3) DEFAULT NULL COMMENT '逻辑删除 1（true）已删除， 0（false）未删除',
                              `gmt_create` datetime NOT NULL COMMENT '创建时间',
                              `gmt_modified` datetime NOT NULL COMMENT '更新时间',
                              PRIMARY KEY (`id`),
                              KEY `idx_title` (`title`),
                              KEY `idx_subject_id` (`subject_id`),
                              KEY `idx_teacher_id` (`teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='课程';

#
# Data for table "edu_course"
#

INSERT INTO `edu_course` VALUES ('1192252213659774977','1189389726308478977','1178214681139539969','1178214681118568449','java基础课程：test',0.01,2,'https://guli-file-190513.oss-cn-beijing.aliyuncs.com/cover/default.gif',4,387,1,'Normal',0,'2019-11-07 09:27:33','2019-11-18 13:35:03'),('14','1189389726308478977','1101348944971091969','1101348944920760321','XHTML CSS2 JS整站制作教程课程学习',0.00,3,'http://guli-file.oss-cn-beijing.aliyuncs.com/cover/2019/03/13/d0086eb0-f2dc-45f7-bba1-744d95e5be0f.jpg',3,44,15,'Normal',0,'2018-04-02 18:33:34','2019-11-16 21:21:45'),('15','1189389726308478977','1101348944971091969','1101348944920760321','HTML5入门课程学习',0.00,23,'http://guli-file.oss-cn-beijing.aliyuncs.com/cover/2019/03/13/22997b8e-3606-4d2e-9b4f-09f48418b6e4.jpg',0,51,17,'Normal',0,'2018-04-02 18:34:32','2019-11-12 10:19:20'),('18','1189389726308478977','1178214681139539969','1178214681118568449','Java精品课程',0.01,20,'http://guli-file.oss-cn-beijing.aliyuncs.com/cover/2019/03/06/866e9aca-b530-4f71-a690-72d4a4bfd1e7.jpg',151,737,6,'Normal',0,'2018-04-02 21:28:46','2019-11-18 11:14:52');

#
# Structure for table "edu_course_collect"
#

CREATE TABLE `edu_course_collect` (
                                      `id` char(19) NOT NULL COMMENT '收藏ID',
                                      `course_id` char(19) NOT NULL COMMENT '课程讲师ID',
                                      `member_id` char(19) NOT NULL DEFAULT '' COMMENT '课程专业ID',
                                      `is_deleted` tinyint(3) NOT NULL DEFAULT '0' COMMENT '逻辑删除 1（true）已删除， 0（false）未删除',
                                      `gmt_create` datetime NOT NULL COMMENT '创建时间',
                                      `gmt_modified` datetime NOT NULL COMMENT '更新时间',
                                      PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='课程收藏';

#
# Data for table "edu_course_collect"
#

INSERT INTO `edu_course_collect` VALUES ('1196269345666019330','1192252213659774977','1',1,'2019-11-18 11:30:12','2019-11-18 11:30:12');

#
# Structure for table "edu_course_description"
#

CREATE TABLE `edu_course_description` (
                                          `id` char(19) NOT NULL COMMENT '课程ID',
                                          `description` text COMMENT '课程简介',
                                          `gmt_create` datetime NOT NULL COMMENT '创建时间',
                                          `gmt_modified` datetime NOT NULL COMMENT '更新时间',
                                          PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='课程简介';

#
# Data for table "edu_course_description"
#

INSERT INTO `edu_course_description` VALUES ('1104870479077879809','<p>11</p>','2019-03-11 06:23:44','2019-03-11 06:23:44'),('1192252213659774977','<p>测试</p>','2019-11-07 09:27:33','2019-11-13 16:21:28'),('14','','2019-03-13 06:04:43','2019-03-13 06:05:33'),('15','','2019-03-13 06:03:33','2019-03-13 06:04:22'),('18','<p>本套Java视频完全针对零基础学员，课堂实录，自发布以来，好评如潮！Java视频中注重与学生互动，讲授幽默诙谐、细致入微，覆盖Java基础所有核心知识点，同类Java视频中也是代码量大、案例多、实战性强的。同时，本Java视频教程注重技术原理剖析，深入JDK源码，辅以代码实战贯穿始终，用实践驱动理论，并辅以必要的代码练习。</p>\n<p>------------------------------------</p>\n<p>视频特点：</p>\n<p>通过学习本Java视频教程，大家能够真正将Java基础知识学以致用、活学活用，构架Java编程思想，牢牢掌握\"源码级\"的Javase核心技术，并为后续JavaWeb等技术的学习奠定扎实基础。<br /><br />1.通俗易懂，细致入微：每个知识点高屋建瓴，深入浅出，简洁明了的说明问题<br />2.具实战性：全程真正代码实战，涵盖上百个企业应用案例及练习<br />3.深入：源码分析，更有 Java 反射、动态代理的实际应用等<br />4.登录尚硅谷官网，技术讲师免费在线答疑</p>','2019-03-06 18:06:36','2019-10-30 19:58:36');

#
# Structure for table "edu_subject"
#

CREATE TABLE `edu_subject` (
                               `id` char(19) NOT NULL COMMENT '课程科目ID',
                               `title` varchar(10) NOT NULL COMMENT '科目名称',
                               `parent_id` char(19) NOT NULL DEFAULT '0' COMMENT '父ID，0表示科目为一级分类',
                               `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序字段',
                               `gmt_create` datetime NOT NULL COMMENT '创建时间',
                               `gmt_modified` datetime NOT NULL COMMENT '更新时间',
                               PRIMARY KEY (`id`),
                               KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='课程科目表';

#
# Data for table "edu_subject"
#

INSERT INTO guli.edu_subject (id, title, parent_id, sort, gmt_create, gmt_modified) VALUES ('1247728560211247106', '数学', '0', 0, '2020-04-08 11:30:45', '2020-04-08 11:30:45');
INSERT INTO guli.edu_subject (id, title, parent_id, sort, gmt_create, gmt_modified) VALUES ('1247728560471293954', '高等数学', '1247728560211247106', 0, '2020-04-08 11:30:45', '2020-04-08 11:30:45');
INSERT INTO guli.edu_subject (id, title, parent_id, sort, gmt_create, gmt_modified) VALUES ('1247728560748118018', '数学分析', '1247728560211247106', 0, '2020-04-08 11:30:45', '2020-04-08 11:30:45');
INSERT INTO guli.edu_subject (id, title, parent_id, sort, gmt_create, gmt_modified) VALUES ('1247728561041719298', '线性代数', '1247728560211247106', 0, '2020-04-08 11:30:45', '2020-04-08 11:30:45');
INSERT INTO guli.edu_subject (id, title, parent_id, sort, gmt_create, gmt_modified) VALUES ('1247728561234657281', '概率论与数理统计', '1247728560211247106', 0, '2020-04-08 11:30:45', '2020-04-08 11:30:45');
INSERT INTO guli.edu_subject (id, title, parent_id, sort, gmt_create, gmt_modified) VALUES ('1247728561410818050', '物理', '0', 0, '2020-04-08 11:30:45', '2020-04-08 11:30:45');
INSERT INTO guli.edu_subject (id, title, parent_id, sort, gmt_create, gmt_modified) VALUES ('1247728561595367425', '经典物理', '1247728561410818050', 0, '2020-04-08 11:30:45', '2020-04-08 11:30:45');
INSERT INTO guli.edu_subject (id, title, parent_id, sort, gmt_create, gmt_modified) VALUES ('1247728562018992129', '量子物理', '1247728561410818050', 0, '2020-04-08 11:30:45', '2020-04-08 11:30:45');
INSERT INTO guli.edu_subject (id, title, parent_id, sort, gmt_create, gmt_modified) VALUES ('1247728562484559873', '化学', '0', 0, '2020-04-08 11:30:45', '2020-04-08 11:30:45');
INSERT INTO guli.edu_subject (id, title, parent_id, sort, gmt_create, gmt_modified) VALUES ('1247728562660720642', '有机化学', '1247728562484559873', 0, '2020-04-08 11:30:45', '2020-04-08 11:30:45');
INSERT INTO guli.edu_subject (id, title, parent_id, sort, gmt_create, gmt_modified) VALUES ('1247728562870435842', '无机化学', '1247728562484559873', 0, '2020-04-08 11:30:45', '2020-04-08 11:30:45');

#
# Structure for table "edu_teacher"
#

CREATE TABLE `edu_teacher` (
                               `id` char(19) NOT NULL COMMENT '讲师ID',
                               `name` varchar(20) NOT NULL COMMENT '讲师姓名',
                               `intro` varchar(500) NOT NULL DEFAULT '' COMMENT '讲师简介',
                               `career` varchar(500) DEFAULT NULL COMMENT '讲师资历，一句话说明讲师',
                               `level` int(10) unsigned NOT NULL COMMENT '头衔：1高级讲师，2首席讲师',
                               `avatar` varchar(255) DEFAULT NULL COMMENT '讲师头像',
                               `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
                               `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0（false）未删除，1（true）已删除',
                               `gmt_create` datetime NOT NULL COMMENT '创建时间',
                               `gmt_modified` datetime NOT NULL COMMENT '更新时间',
                               PRIMARY KEY (`id`),
                               UNIQUE KEY `uk_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='讲师表';

#
# Data for table "edu_teacher"
#

INSERT INTO guli.edu_teacher (id, name, intro, career, level, avatar, sort, is_deleted, gmt_create, gmt_modified) VALUES ('1247566222313246722', '艾萨克·牛顿', '我不是巨人，我只是站在巨人的肩膀上。', '英格兰物理学家、数学家、天文学家、自然哲学家和炼金术士', 1, 'https://hsk-virtuoso-edu-guli.oss-cn-hangzhou.aliyuncs.com/305452.jpg', 1, 0, '2020-04-08 00:45:40', '2020-04-08 00:46:40');
INSERT INTO guli.edu_teacher (id, name, intro, career, level, avatar, sort, is_deleted, gmt_create, gmt_modified) VALUES ('1247567253004734466', '阿基米德', '给我一个支点，我可以举起整个地球。', '希腊化时代的数学家、物理学家、发明家、工程师、天文学家', 1, 'https://hsk-virtuoso-edu-guli.oss-cn-hangzhou.aliyuncs.com/305452.jpg', 1, 0, '2020-04-08 00:49:46', '2020-04-08 00:49:46');
INSERT INTO guli.edu_teacher (id, name, intro, career, level, avatar, sort, is_deleted, gmt_create, gmt_modified) VALUES ('1247567768535027713', '阿尔伯特·爱因斯坦', 'Try not to become a man of success,but rather try to become a man of value.', '犹太裔理论物理学家，他创立了现代物理学的两大支柱之一的相对论，也是质能等价公式的发现者', 1, 'https://hsk-virtuoso-edu-guli.oss-cn-hangzhou.aliyuncs.com/305452.jpg', 1, 0, '2020-04-08 00:51:49', '2020-04-08 00:51:49');
INSERT INTO guli.edu_teacher (id, name, intro, career, level, avatar, sort, is_deleted, gmt_create, gmt_modified) VALUES ('1247568595177820161', '卡尔·弗里德里希·高斯', '数学是科学的女王。', '德国数学家、物理学家、天文学家、大地测量学家，生于布伦瑞克，卒于哥廷根', 1, 'https://hsk-virtuoso-edu-guli.oss-cn-hangzhou.aliyuncs.com/305452.jpg', 1, 0, '2020-04-08 00:55:06', '2020-04-08 00:55:06');
INSERT INTO guli.edu_teacher (id, name, intro, career, level, avatar, sort, is_deleted, gmt_create, gmt_modified) VALUES ('1247569542729814017', '苏格拉底', '凡人都会死（大前提）。苏格拉底是人（小前提）。所以：苏格拉底是会死的（结论）。
Java是人发明的，人可以学的通Java（大前提）。你也是人（小前提）。所以：你一定可以学通Java（结论）。', '古希腊哲学家，和其追随者柏拉图及柏拉图的学生亚里士多德被并称为希腊三贤', 1, 'https://hsk-virtuoso-edu-guli.oss-cn-hangzhou.aliyuncs.com/305452.jpg', 1, 0, '2020-04-08 00:58:52', '2020-04-08 00:58:52');
INSERT INTO guli.edu_teacher (id, name, intro, career, level, avatar, sort, is_deleted, gmt_create, gmt_modified) VALUES ('1247570172139655169', '莱昂哈德·欧拉', '因为宇宙的结构是最完善的而且是最明智的上帝的创造，因此，如果在宇宙里没有某种极大的或极小的法则，那就根本不会发生任何事情。', '一位瑞士数学家和物理学家，近代数学先驱之一，他一生大部分时间在俄国和普鲁士度过', 1, 'https://hsk-virtuoso-edu-guli.oss-cn-hangzhou.aliyuncs.com/305452.jpg', 1, 0, '2020-04-08 01:01:22', '2020-04-08 01:01:40');

#
# Structure for table "edu_video"
#

CREATE TABLE `edu_video` (
                             `id` char(19) NOT NULL COMMENT '视频ID',
                             `course_id` char(19) NOT NULL COMMENT '课程ID',
                             `chapter_id` char(19) NOT NULL COMMENT '章节ID',
                             `title` varchar(50) NOT NULL COMMENT '节点名称',
                             `video_source_id` varchar(100) DEFAULT NULL COMMENT '云端视频资源',
                             `video_original_name` varchar(100) DEFAULT NULL COMMENT '原始文件名称',
                             `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序字段',
                             `play_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '播放次数',
                             `is_free` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否可以试听：0收费 1免费',
                             `duration` float NOT NULL DEFAULT '0' COMMENT '视频时长（秒）',
                             `status` varchar(20) NOT NULL DEFAULT 'Empty' COMMENT 'Empty未上传 Transcoding转码中  Normal正常',
                             `size` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '视频源文件大小（字节）',
                             `version` bigint(20) unsigned NOT NULL DEFAULT '1' COMMENT '乐观锁',
                             `gmt_create` datetime NOT NULL COMMENT '创建时间',
                             `gmt_modified` datetime NOT NULL COMMENT '更新时间',
                             PRIMARY KEY (`id`),
                             KEY `idx_course_id` (`course_id`),
                             KEY `idx_chapter_id` (`chapter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='课程视频';

#
# Data for table "edu_video"
#

INSERT INTO `edu_video` VALUES ('1182499307429339137','18','32','第一节','','',0,0,0,0,'',0,1,'2019-10-11 11:32:59','2019-10-11 11:57:38'),('1185312444399071234','14','1','12','','',0,0,0,0,'Empty',0,1,'2019-10-19 05:51:23','2019-10-19 05:51:33'),('1189434737808990210','18','44','测试','','',1,0,0,0,'Empty',0,1,'2019-10-30 14:51:55','2019-10-30 14:51:55'),('1189471423678939138','18','1181729226915577857','test','2b887dc9584d4dc68908780ec57cd3b9','视频',1,0,0,0,'Empty',0,1,'2019-10-30 17:17:41','2019-10-30 17:17:41'),('1189476403626409986','18','1181729226915577857','22','5155c73dc112475cbbddccf4723f7cef','视频.mp4',0,0,0,0,'Empty',0,1,'2019-10-30 17:37:29','2019-10-30 17:37:29'),('1192252824606289921','1192252213659774977','1192252428399751169','第一课时','756cf06db9cb4f30be85a9758b19c645','eae2b847ef8503b81f5d5593d769dde2.mp4',0,0,0,0,'Empty',0,1,'2019-11-07 09:29:59','2019-11-07 09:29:59'),('1192628092797730818','1192252213659774977','1192252428399751169','第二课时','2a02d726622f4c7089d44cb993c531e1','eae2b847ef8503b81f5d5593d769dde2.mp4',0,0,1,0,'Empty',0,1,'2019-11-08 10:21:10','2019-11-08 10:21:22'),('1192632495013380097','1192252213659774977','1192252428399751169','第三课时','4e560c892fdf4fa2b42e0671aa42fa9d','eae2b847ef8503b81f5d5593d769dde2.mp4',0,0,1,0,'Empty',0,1,'2019-11-08 10:38:40','2019-11-08 10:38:40'),('1194117638832111617','1192252213659774977','1192252428399751169','第四课时','4e560c892fdf4fa2b42e0671aa42fa9d','eae2b847ef8503b81f5d5593d769dde2.mp4',0,0,0,0,'Empty',0,1,'2019-11-12 13:00:05','2019-11-12 13:00:05'),('1196263770832023554','1192252213659774977','1192252428399751169','第五课时','27d21158b0834cb5a8d50710937de330','eae2b847ef8503b81f5d5593d769dde2.mp4',5,0,0,0,'Empty',0,1,'2019-11-18 11:08:03','2019-11-18 11:08:03'),('17','18','15','第一节：Java简介','196116a6fee742e1ba9f6c18f65bd8c1','1',1,1000,1,100,'Draft',0,1,'2019-01-01 13:08:57','2019-10-11 11:26:39'),('18','18','15','第二节：表达式和赋值语句','2d99b08ca0214909899910c9ba042d47','7 - How Do I Find Time for My ',2,999,1,100,'Draft',0,1,'2019-01-01 13:09:02','2019-03-08 03:30:27'),('19','18','15','第三节：String类','51120d59ddfd424cb5ab08b44fc8b23a','eae2b847ef8503b81f5d5593d769dde2.mp4',3,888,0,100,'Draft',0,1,'2019-01-01 13:09:05','2019-11-12 12:50:45'),('20','18','15','第四节：程序风格','2a38988892d84df598752226c50f3fa3','00-day10总结.avi',4,666,0,100,'Draft',0,1,'2019-01-01 13:09:05','2019-10-11 09:20:09');
