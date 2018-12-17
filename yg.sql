-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-11-01 03:26:27
-- 服务器版本： 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dangdang`
--
CREATE DATABASE IF NOT EXISTS `yg` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `yg`;

-- --------------------------------------------------------

--
-- 表的结构 `book`
--

CREATE TABLE `book` (
  `bid` int(11) DEFAULT NULL,
  `title` varchar(24) DEFAULT NULL,
  `author` varchar(32) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `pubDate` varchar(14) DEFAULT NULL,
  `isAddbuy` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `book`
--

INSERT INTO `book` (`bid`, `title`, `author`, `price`, `pubDate`, `isAddbuy`) VALUES
(1, 'java', '无', 23, '2014-1-8', '是'),
(2, 'js', '无', 56, '2014-8-8', '否'),
(4, 'HTML', '无', 27, '2014-6-8', '是');
--
-- Database: `digao`
--
CREATE DATABASE IF NOT EXISTS `digao` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `digao`;

-- --------------------------------------------------------

--
-- 表的结构 `dg_user`
--

CREATE TABLE `dg_user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(16) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL,
  `re_upwd` varchar(32) DEFAULT NULL,
  `code` char(16) DEFAULT NULL,
  `company_name` varchar(32) DEFAULT NULL,
  `company_email` varchar(64) DEFAULT NULL,
  `company_addr` varchar(64) DEFAULT NULL,
  `company_post` int(11) DEFAULT NULL,
  `company_url` varchar(32) DEFAULT NULL,
  `user_name` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dg_user`
--

INSERT INTO `dg_user` (`uid`, `uname`, `upwd`, `re_upwd`, `code`, `company_name`, `company_email`, `company_addr`, `company_post`, `company_url`, `user_name`) VALUES
(1, 'dingding', '123456', '123456', 'MKJ5', '宝干有限公司', 'ding@qq.com', '\n北京市朝阳区酒仙桥北路甲10号d区1号', 65200, 'www.abb.com', '丁丁'),
(2, 'dangdang', '123456', '123456', 'H65S', '中国电力报社有限公司', 'dang@qq.com', '北京市朝阳区金榆路', 65201, 'www.shenhua.com', '当当'),
(3, 'neinei', '123456', '123456', 'AIKR', '农社有限公司', 'nei@163.com', '\n北京市朝阳区惠新西街15号', 65202, 'www.nongrishe.com', '内内'),
(4, 'huahua', '123456', '123456', 'AG4R', '电气传动系统有限公司', 'hua@qq.com', '\n北京市西城区白广路二条一号', 65203, 'www.dianli.com', '花花'),
(5, 'meimei', '123456', '123456', 'QE2E', '新闻出版有限公司', 'mei@163.com', '\n朝阳门内大街55号新闻出版大厦', 65204, 'www.xinwen.com', '梅梅');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dg_user`
--
ALTER TABLE `dg_user`
  ADD PRIMARY KEY (`uid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `dg_user`
--
ALTER TABLE `dg_user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- 表的结构 `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- 表的结构 `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- 表的结构 `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- 表的结构 `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- 表的结构 `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- 表的结构 `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- 表的结构 `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- 表的结构 `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- 表的结构 `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- 表的结构 `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- 转存表中的数据 `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"yg\",\"table\":\"yg_news\"},{\"db\":\"yg\",\"table\":\"yg_user\"},{\"db\":\"yg\",\"table\":\"yg_shoppingcart_item\"},{\"db\":\"yg\",\"table\":\"yg_goods_pic\"},{\"db\":\"yg\",\"table\":\"yg_goods\"},{\"db\":\"yg\",\"table\":\"yg_index_product\"}]');

-- --------------------------------------------------------

--
-- 表的结构 `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- 表的结构 `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- 表的结构 `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- 表的结构 `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- 表的结构 `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- 转存表中的数据 `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'yg', 'yg_news', '{\"CREATE_TIME\":\"2018-10-30 16:17:41\",\"col_visib\":[1,1,1,1,1],\"sorted_col\":\"`yg_news`.`id`  ASC\"}', '2018-10-31 06:16:32'),
('root', 'yg', 'yg_shoppingcart_item', '{\"sorted_col\":\"`yg_shoppingcart_item`.`iid`  ASC\"}', '2018-10-19 08:38:47');

-- --------------------------------------------------------

--
-- 表的结构 `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- 表的结构 `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- 转存表中的数据 `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2018-05-08 05:33:29', '{\"lang\":\"zh_CN\",\"collation_connection\":\"utf8mb4_unicode_ci\"}');

-- --------------------------------------------------------

--
-- 表的结构 `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- 表的结构 `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `tedu`
--
CREATE DATABASE IF NOT EXISTS `tedu` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `tedu`;

-- --------------------------------------------------------

--
-- 表的结构 `dept`
--

CREATE TABLE `dept` (
  `did` tinyint(4) NOT NULL,
  `dname` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dept`
--

INSERT INTO `dept` (`did`, `dname`) VALUES
(10, '研发部'),
(20, '市场部'),
(30, '运营部'),
(40, '测试部'),
(50, '财务部'),
(55, '天啊'),
(60, '后勤部'),
(70, '保安部'),
(80, '运营部'),
(127, '55641216546513');

-- --------------------------------------------------------

--
-- 表的结构 `emp`
--

CREATE TABLE `emp` (
  `eid` int(11) NOT NULL,
  `ename` varchar(8) DEFAULT NULL,
  `sex` tinyint(1) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `salary` decimal(7,2) DEFAULT NULL,
  `deptId` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `emp`
--

INSERT INTO `emp` (`eid`, `ename`, `sex`, `birthday`, `salary`, `deptId`) VALUES
(1, 'Tom', 1, '1990-05-05', '6000.00', 20),
(2, 'Jerry', 0, '1991-08-20', '7000.00', 10),
(3, 'David', 1, '1995-10-20', '3000.00', 30),
(4, 'Maria', 0, '1992-03-20', '5000.00', 10),
(5, 'Leo', 1, '1993-12-03', '3000.00', 20),
(6, 'Black', 1, '1991-01-03', '4000.00', 10),
(7, 'Peter', 1, '1990-12-03', '10000.00', 10),
(8, 'Franc', 1, '1994-12-03', '6000.00', 30),
(9, 'Tacy', 1, '1991-12-03', '9000.00', 10),
(11, 'Jone', 1, '1993-12-03', '8000.00', 30),
(12, 'Lily', 0, '1992-12-03', '12000.00', 10),
(13, 'Lisa', 0, '1989-12-03', '8000.00', 10),
(14, 'King', 1, '1988-12-03', '10000.00', 10),
(15, 'Brown', 1, '1993-12-03', '22000.00', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dept`
--
ALTER TABLE `dept`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `emp`
--
ALTER TABLE `emp`
  ADD PRIMARY KEY (`eid`),
  ADD KEY `deptId` (`deptId`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `dept`
--
ALTER TABLE `dept`
  MODIFY `did` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- 使用表AUTO_INCREMENT `emp`
--
ALTER TABLE `emp`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- 限制导出的表
--

--
-- 限制表 `emp`
--
ALTER TABLE `emp`
  ADD CONSTRAINT `emp_ibfk_1` FOREIGN KEY (`deptId`) REFERENCES `dept` (`did`);
--
-- Database: `tedu_oa`
--
CREATE DATABASE IF NOT EXISTS `tedu_oa` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tedu_oa`;

-- --------------------------------------------------------

--
-- 表的结构 `emp`
--

CREATE TABLE `emp` (
  `eid` int(11) DEFAULT NULL,
  `name` varchar(44) DEFAULT NULL,
  `gendar` varchar(1) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `addr` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `emp`
--

INSERT INTO `emp` (`eid`, `name`, `gendar`, `phone`, `addr`) VALUES
(1, 'xiao', 'M', '123', 'wu'),
(2, 'xi', 'M', '123', 'wu'),
(3, 'xio', 'F', '123', 'wu'),
(4, 'xo', 'M', '123', 'wu'),
(5, 'iao', 'F', '123', 'wu');
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `xuezi`
--
CREATE DATABASE IF NOT EXISTS `xuezi` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `xuezi`;

-- --------------------------------------------------------

--
-- 表的结构 `yg_goods`
--

CREATE TABLE `yg_goods` (
  `lid` int(11) NOT NULL,
  `title` varchar(84) DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `spec` varchar(85) DEFAULT NULL,
  `shelfTime` varchar(128) DEFAULT NULL,
  `isOnsale` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `yg_goods`
--

INSERT INTO `yg_goods` (`lid`, `title`, `price`, `spec`, `shelfTime`, `isOnsale`) VALUES
(1, '联想(ThinkPad)轻薄系列E480c14英寸笔记本黑色', '3499.00', '标准', '专业高效', 1),
(2, 'Apple MacBook Air 13.3英寸笔记本 银色(Core i5 处理器', '6988.00', '定制款', '专业高效', 1),
(3, '联想(Lenovo)小新700电竞版 15.6英寸游戏笔记本电脑', '6299.00', '小新', '专业高效', 0),
(4, '联想(ThinkPad)轻薄系列E480c14英寸笔记本黑色', '3499.00', '双核', '专业高效', 1),
(5, '小米(MI)Air 13.3英寸全金属超轻薄笔记本', '4999.00', '标准', '专业高效', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `yg_goods`
--
ALTER TABLE `yg_goods`
  ADD PRIMARY KEY (`lid`);
--
-- Database: `yg`
--
CREATE DATABASE IF NOT EXISTS `yg` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `yg`;

-- --------------------------------------------------------

--
-- 表的结构 `yg_index_carousel`
--

CREATE TABLE `yg_index_carousel` (
  `cid` int(11) NOT NULL,
  `img` varchar(128) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `yg_index_carousel`
--

INSERT INTO `yg_index_carousel` (`cid`, `img`, `title`, `href`) VALUES
(9, 'img/9288734014645614_1920x500.jpg', '轮播广告商品1', 'activity/sale/火锅季 华北'),
(10, 'img/9288734059799918.jpg', '轮播广告商品2', 'activity/sale/xjgg'),
(11, 'img/9288733314098526.jpg', '轮播广告商品3', 'activity/sale/tmrs'),
(12, 'img/9288733249938781.jpg', '轮播广告商品4', 'activity/sale/1111111111'),
(13, 'img/9288733059851609.jpg', '轮播广告商品5', 'activity/sale/yushousg'),
(14, 'img/9288733105399130.jpg', '轮播广告商品6', 'activity/sale/会员制度说明'),
(15, 'img/9288733897368940.jpg', '轮播广告商品7', 'activity/sale/1111psgg')

-- --------------------------------------------------------

--
-- 表的结构 `yg_index_product`
--

CREATE TABLE `yg_index_product` (
  `lid` int(11) NOT NULL,
  `pic` varchar(128) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL,
  `width` int(10) DEFAULT NULL,
  `height` int(10) DEFAULT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `yg_index_product`
--

INSERT INTO `yg_index_product` (`lid`,`pic`,`href`,`width`,`height`) VALUES
(1, 'img/9288724418962636.jpg','products.html?keyword=榴莲',230,230),
(2, "img/9288732490573132.jpg",'product_details.html?lid=2',230,230),
(3, "img/9288720239993965.jpg",'product_null.html',461,230),
(4, "img/9288720240419949.jpg",'product_null.html',461,230),
(5, "img/9288732490605900.jpg",'product_details.html?lid=5',230,230),
(6, "img/9288732490638668.jpg",'products.html?keyword=无籽',230,230),
/*F2*/
(7, "img/9288732490671436.jpg",'products.html?keyword=椰青',230,230),
(8, "img/9288724422993100.jpg",'product_details.html?lid=8',230,230),
(9, "img/9288720242648173.jpg",'product_null.html',461,230),
(10, "img/9288723292628149.jpg",'product_null.html',461,230),
(11, "img/9288724512613582.jpg",'product_details.html?lid=11',230,230),
(12, "img/9288724423124172.jpg",'products.html?keyword=蓝莓',230,230),
/*F3*/
(13, "img/9288711676732176.jpg",'products.html?keyword=红虾',230,230),
(14, "img/9288711679550224.jpg",'product_details.html?lid=14',230,230),
(15, "img/9288720877364348.jpg",'product_null.html',461,230),
(16, "img/9288720950076541.jpg",'product_null.html',461,230),
(17, "img/9288705169728109.jpg",'product_details.html?lid=17',230,230),
(18, "img/9288701136544337.jpg",'products.html?keyword=鳕鱼',230,230),
/*F4*/
(19, "img/9288707378324132.jpg",'products.html?keyword=谷饲200天',234,383),
(20, "img/9288720950699133.jpg",'products.html?keyword=家佳康',220,191),
(21, "img/9288720877757564.jpg",'products.html?keyword=牛腩',220,191),
(22, "img/9288720877855868.jpg",'products.html?keyword=丹麦皇冠',220,191),
(23, "img/9288701169967699.jpg",'products.html?keyword=牛尾',220,191),
(24, "img/9288723164767410.jpg",'products.html?keyword=牛腱',246,461),
(25, "img/9288685776248637.jpg",'products.html?keyword=丹麦皇冠',80,52),
(26, "img/9288685776379709.jpg",'products.html?keyword=塔斯马尼亚',80,52),
(27, "img/9288689791082352.jpg",'products.html?keyword=大红门',80,52),
(28, "img/9570195901686909.jpg",'products.html?keyword=家佳康',80,52),
(29, "img/9288720925009021.jpg",'products.html?keyword=金锣',80,52),
/*F5*/
(30, "img/9288720955679869.jpg",'product_details.html?lid=30',234,383),
(31, "img/9288720951747709.jpg",'products.html?keyword=姐妹厨房',220,191),
(32, "img/9288720879330428.jpg",'products.html?keyword=鸽子',220,191),
(33, "img/9288698119954783.jpg",'products.html?keyword=老母鸡',220,191),
(34, "img/9288720951714941.jpg",'products.html?keyword=鸡蛋',220,191),
(35, "img/9288700993741386.jpg",'product_details.html?lid=35',246,461),
(36, "img/9288685535567675.jpg",'products.html?keyword=泰森',80,52),
(37, "img/9288689776729968.jpg",'products.html?keyword=姐妹厨房',80,52),
(38, "img/9288692824678506.jpg",'products.html?keyword=草原',80,52),
/*F6*/
(39, "img/9288715437843317.jpg",'products.html?keyword=酷玛熊',234,383),
(40, "img/9288720893682812.jpg",'product_details.html?lid=40',441,191),
(41, "img/9288708076184243.jpg",'products.html?keyword=拉杜蓝乔',441,191),
(42, "img/9288720952075389.jpg",'products.html?keyword=大米',246,461),
(43, "img/9288685535633211.jpg",'products.html?keyword=信洲',80,52),
(44, "img/9288721011811454.jpg",'products.html?keyword=酷玛熊',80,52),
/*F7*/
(45, "img/9288720894141564.jpg",'products.html?keyword=百吉福',234,383),
(46, "img/9288720902923388.jpg",'products.html?keyword=养乐多',220,191),
(47, "img/9288720903054460.jpg",'products.html?keyword=米格农场',220,191),
(48, "img/9288713812452172.jpg",'product_details.html?lid=48',220,191),
(49, "img/9288720924451965.jpg",'products.html?keyword=双层夹心蛋糕',220,191),
(50, "img/9288715439186805.jpg",'products.html?keyword=面包',246,461),
(51, "img/9288695628833007.jpg",'products.html?keyword=百吉福',80,52),
(52, "img/9288685536747323.jpg",'products.html?keyword=米格农场',80,52),
/*F8*/
(53, "img/9288720952403069.jpg",'products.html?keyword=酷椰屿',234,383),
(54, "img/9288720903349372.jpg",'products.html?keyword=多洛米亚',441,191),
(55, "img/9288720952566909.jpg",'products.html?keyword=每日c',441,191),
(56, "img/9288695270351073.jpg",'products.html?keyword=咖啡',246,461),
(57, "img/9288685536812859.jpg",'products.html?keyword=多洛米亚',80,52),
(58, "img/9288685536943931.jpg",'products.html?keyword=味全果汁',80,52),
/*F9*/
(59, "img/9288720905806972.jpg",'product_details.html?lid=59',234,383),
(60, "img/9288720952697981.jpg",'products.html?keyword=俏侬',220,191),
(61, "img/9288715438498677.jpg",'products.html?keyword=稻香万好',220,191),
(62, "img/9288720952796285.jpg",'products.html?keyword=Crepelatier',220,191),
(63, "img/9288720924058749.jpg",'products.html?keyword=龙凤',220,191),
(64, "img/9288715720336251.jpg",'products.html?keyword=披萨',246,461),
(65, "img/9288686653513544.jpg",'products.html?keyword=湾仔码头',80,52),
(66, "img/9288691261677462.jpg",'products.html?keyword=龙凤',80,52),
(67, "img/9288691261808534.jpg",'products.html?keyword=桂冠',80,52),
(68, "img/9288685537206075.jpg",'products.html?keyword=避风塘',80,52)

-- --------------------------------------------------------

--
-- 表的结构 `yg_goods`
--

CREATE TABLE `yg_goods` (
  `lid` int(11) NOT NULL,
  `family_id` int(11) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `subtitle` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `spec` varchar(64) DEFAULT NULL,
  `origin` varchar(64) DEFAULT NULL,
  `number` int(64) DEFAULT NULL,
  `band` varchar(64) DEFAULT NULL,
  `comments` int(10) DEFAULT NULL
  

) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `yg_goods`
--

INSERT INTO `yg_goods` (`lid`, `family_id`, `title`, `subtitle`, `price`, `spec`,`origin`,`number`,`band`,`comments`) VALUES
(1, 1, '榴莲蜜语榴莲班戟150g(6个)', '浓郁南洋风味，给下午茶加分', '55.90',  '150g/盒','马来西亚','1349917','榴莲蜜语','31'),
(2, 1, '波得泰国冷冻金枕榴莲400g', '解冻就能吃，软糯绵甜', '65.00',  '400g/盒','泰国','1356627','波得','0'),
(3, 1, '和南榴莲麻薯120g(4粒)', '软糯糯，冰爽绵密，富有层次感的美妙滋味', '36.90',  '120g/盒','马来西亚','1349921','和南','17'),
(4, 1, '榴莲蜜语榴莲大福120g(4粒)', '入口冰爽顺滑如冰淇淋，好吃不腻口', '36.90',  '120g/盒','马来西亚','1349917','榴莲蜜语','117'),
(5, 1, 'SunMoon泰国金枕头冷冻榴莲果肉300g*3', '就像现剥的榴莲肉一样绵糯香甜', '49.90',  '300g/盒','泰国','1349918','SunMoon','423'),
(6, 1, 'SunMoon泰国金枕头冷冻榴莲果肉300g', '就像现剥的榴莲肉一样绵糯香甜', '49.90',  '300g/盒','泰国','1349917','SunMoon','741'),
(7, 1, '稻香万好飘香榴莲包160g', '面皮松软好有料，新老包装交替出货', '13.80',  '160g/盒','广东','1349917','万和','31'),
(8, 1, '榴莲蜜语榴莲班戟150g(6个)', '浓郁南洋风味，给下午茶加分', '55.90',  '150g/盒','马来西亚','1349917','榴莲蜜语','31'),
(9, 1, '波得泰国冷冻金枕榴莲400g', '解冻就能吃，软糯绵甜', '65.00',  '400g/盒','泰国','1356627','波得','0'),
(10, 1, '和南榴莲麻薯120g(4粒)', '软糯糯，冰爽绵密，富有层次感的美妙滋味', '36.90',  '120g/盒','马来西亚','1349921','和南','17'),
(11, 1, '榴莲蜜语榴莲大福120g(4粒)', '入口冰爽顺滑如冰淇淋，好吃不腻口', '36.90',  '120g/盒','马来西亚','1349917','榴莲蜜语','117'),
(12, 1, 'SunMoon泰国金枕头冷冻榴莲果肉300g*3', '就像现剥的榴莲肉一样绵糯香甜', '49.90',  '300g/盒','泰国','1349918','SunMoon','423'),
(13, 1, 'SunMoon泰国金枕头冷冻榴莲果肉300g', '就像现剥的榴莲肉一样绵糯香甜', '49.90',  '300g/盒','泰国','1349917','SunMoon','741'),
(14, 1, '稻香万好飘香榴莲包160g', '面皮松软好有料，新老包装交替出货', '13.80',  '160g/盒','广东','1349917','万和','31')
-- --------------------------------------------------------

--
-- 表的结构 `yg_goods_family`
--

CREATE TABLE `yg_goods_family` (
  `fid` int(11) NOT NULL,
  `fname` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `yg_goods_family`
--

INSERT INTO `yg_goods_family` (`fid`, `fname`) VALUES
(1, '进口水果'),
(2, '国产水果'),
(3, '海鲜水产'),
(4, '精选肉类'),
(5, '禽类蛋品'),
(6, '粮油杂货'),
(7, '乳品糕点'),
(8, '饮料酒水'),
(9, '方便速食');

-- --------------------------------------------------------

--
-- 表的结构 `yg_goods_pic`
--

CREATE TABLE `yg_goods_pic` (
  `pid` int(11) NOT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `sm` varchar(128) DEFAULT NULL,
  `md` varchar(128) DEFAULT NULL,
  `lg` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `yg_goods_pic`
--

INSERT INTO `yg_goods_pic` (`pid`, `goods_id`, `sm`, `md`, `lg`) VALUES
(1, 1, 'img/9288718651565114_500.jpg', 'img/9288718651466810_300.jpg', 'img/9288718651565114_500.jpg'),
(2, 1, 'img/9288718651499578_500.jpg', 'img/9288718651466810_300.jpg', 'img/9288718651499578_500.jpg'),
(3, 1, 'img/9288718651532346_500.jpg', 'img/9288718651466810_300.jpg', 'img/9288718651532346_500.jpg'),
(4, 2, 'img/9288719527552086_500.jpg', 'img/9288719527486550_300.jpg', 'img/9288719527552086_500.jpg'),
(5, 2, 'img/9288719527519318_500.jpg', 'img/9288719527486550_300.jpg', 'img/9288719527519318_500.jpg'),
(6, 2, 'img/9288719527453782_500.jpg', 'img/9288719527486550_300.jpg', 'img/9288719527453782_500.jpg'),
(7, 3, 'img/9288718651925562_500.jpg', 'img/9288718651860026_300.jpg', 'img/9288718651925562_500.jpg'),
(8, 3, 'img/9288718651794490_500.jpg', 'img/9288718651860026_300.jpg', 'img/9288718651794490_500.jpg'),
(9, 3, 'img/9288718651827258_500.jpg', 'img/9288718651860026_300.jpg', 'img/9288718651827258_500.jpg'),
(10, 4, 'img/9288718651696186_500.jpg', 'img/9288718651597882_300.jpg', 'img/9288718651696186_500.jpg'),
(11, 4, 'img/9288718651630650_500.jpg', 'img/9288718651597882_300.jpg', 'img/9288718651630650_500.jpg'),
(12, 4, 'img/9288718651663418_500.jpg', 'img/9288718651597882_300.jpg', 'img/9288718651663418_500.jpg'),
(13, 5, 'img/9288727914292487_500.jpg', 'img/9288727914259719_300.jpg', 'img/9288727914292487_500.jpg'),
(14, 5, 'img/9288727914194183_500.jpg', 'img/9288727914259719_300.jpg', 'img/9288727914194183_500.jpg'),
(15, 5, 'img/9288727914226951_500.jpg', 'img/9288727914259719_300.jpg', 'img/9288727914226951_500.jpg'),
(16, 6, 'img/9288727914423559_500.jpg', 'img/9288727914489095_300.jpg', 'img/9288727914423559_500.jpg'),
(17, 6, 'img/9288727914456327_500.jpg', 'img/9288727914489095_300.jpg', 'img/9288727914456327_500.jpg'),
(18, 6, 'img/9288727914390791_500.jpg', 'img/9288727914489095_300.jpg', 'img/9288727914390791_500.jpg'),
(19, 7, 'img/9288718178952242_500.jpg', 'img/9288718178853938_300.jpg', 'img/9288718178952242_500.jpg'),
(20, 7, 'img/9288718178886706_500.jpg', 'img/9288718178853938_300.jpg', 'img/9288718178886706_500.jpg'),
(21, 7, 'img/9288718178919474_500.jpg', 'img/9288718178853938_300.jpg', 'img/9288718178919474_500.jpg'),
(22, 8, 'img/9288718651565114_500.jpg', 'img/9288718651466810_300.jpg', 'img/9288718651565114_500.jpg'),
(23, 8, 'img/9288718651499578_500.jpg', 'img/9288718651466810_300.jpg', 'img/9288718651499578_500.jpg'),
(24, 8, 'img/9288718651532346_500.jpg', 'img/9288718651466810_300.jpg', 'img/9288718651532346_500.jpg'),
(25, 9, 'img/9288719527552086_500.jpg', 'img/9288719527486550_300.jpg', 'img/9288719527552086_500.jpg'),
(26, 9, 'img/9288719527519318_500.jpg', 'img/9288719527486550_300.jpg', 'img/9288719527519318_500.jpg'),
(27, 9, 'img/9288719527453782_500.jpg', 'img/9288719527486550_300.jpg', 'img/9288719527453782_500.jpg'),
(28, 10, 'img/9288718651925562_500.jpg', 'img/9288718651860026_300.jpg', 'img/9288718651925562_500.jpg'),
(29, 10, 'img/9288718651794490_500.jpg', 'img/9288718651860026_300.jpg', 'img/9288718651794490_500.jpg'),
(30, 10, 'img/9288718651827258_500.jpg', 'img/9288718651860026_300.jpg', 'img/9288718651827258_500.jpg'),
(31, 11, 'img/9288718651696186_500.jpg', 'img/9288718651597882_300.jpg', 'img/9288718651696186_500.jpg'),
(32, 11, 'img/9288718651630650_500.jpg', 'img/9288718651597882_300.jpg', 'img/9288718651630650_500.jpg'),
(33, 11, 'img/9288718651663418_500.jpg', 'img/9288718651597882_300.jpg', 'img/9288718651663418_500.jpg'),
(34, 12, 'img/9288727914292487_500.jpg', 'img/9288727914259719_300.jpg', 'img/9288727914292487_500.jpg'),
(35, 12, 'img/9288727914194183_500.jpg', 'img/9288727914259719_300.jpg', 'img/9288727914194183_500.jpg'),
(36, 12, 'img/9288727914226951_500.jpg', 'img/9288727914259719_300.jpg', 'img/9288727914226951_500.jpg'),
(37, 13, 'img/9288727914423559_500.jpg', 'img/9288727914489095_300.jpg', 'img/9288727914423559_500.jpg'),
(38, 13, 'img/9288727914456327_500.jpg', 'img/9288727914489095_300.jpg', 'img/9288727914456327_500.jpg'),
(39, 13, 'img/9288727914390791_500.jpg', 'img/9288727914489095_300.jpg', 'img/9288727914390791_500.jpg'),
(40, 14, 'img/9288718178952242_500.jpg', 'img/9288718178853938_300.jpg', 'img/9288718178952242_500.jpg'),
(41, 14, 'img/9288718178886706_500.jpg', 'img/9288718178853938_300.jpg', 'img/9288718178886706_500.jpg'),
(42, 14, 'img/9288718178919474_500.jpg', 'img/9288718178853938_300.jpg', 'img/9288718178919474_500.jpg')

-- --------------------------------------------------------

--
-- 表的结构 `yg_news`
--

CREATE TABLE `yg_news` (
  `id` int(11) NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `ctime` datetime DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `point` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `yg_news`
--

INSERT INTO `yg_news` (`id`, `title`, `ctime`, `img_url`, `point`) VALUES
(1, '..1', '2018-10-31 14:16:24', 'http://127.0.0.1:3000/img/muwu.jpg', 0),
(2, '..2', '2018-10-31 14:16:24', 'http://127.0.0.1:3000/img/muwu.jpg', 0),
(3, '..3', '2018-10-31 14:16:24', 'http://127.0.0.1:3000/img/muwu.jpg', 0),
(4, '..4', '2018-10-31 14:16:24', 'http://127.0.0.1:3000/img/muwu.jpg', 0),
(5, '..5', '2018-10-31 14:16:24', 'http://127.0.0.1:3000/img/muwu.jpg', 0),
(6, '..6', '2018-10-31 14:16:24', 'http://127.0.0.1:3000/img/muwu.jpg', 0),
(7, '..7', '2018-10-31 14:16:24', 'http://127.0.0.1:3000/img/muwu.jpg', 0),
(8, '..8', '2018-10-31 14:16:24', 'http://127.0.0.1:3000/img/muwu.jpg', 0),
(9, '..9', '2018-10-31 14:16:24', 'http://127.0.0.1:3000/img/muwu.jpg', 0),
(10, '..10', '2018-10-31 14:16:24', 'http://127.0.0.1:3000/img/muwu.jpg', 0),
(11, '..11', '2018-10-31 14:16:24', 'http://127.0.0.1:3000/img/muwu.jpg', 0),
(12, '..12', '2018-10-31 14:16:25', 'http://127.0.0.1:3000/img/muwu.jpg', 0),
(13, '..13', '2018-10-31 14:16:25', 'http://127.0.0.1:3000/img/muwu.jpg', 0),
(14, '..14', '2018-10-31 14:16:25', 'http://127.0.0.1:3000/img/muwu.jpg', 0),
(15, '..15', '2018-10-31 14:16:25', 'http://127.0.0.1:3000/img/muwu.jpg', 0),
(16, '..16', '2018-10-31 14:16:25', 'http://127.0.0.1:3000/img/muwu.jpg', 0),
(17, '..17', '2018-10-31 14:16:25', 'http://127.0.0.1:3000/img/muwu.jpg', 0),
(18, '..18', '2018-10-31 14:16:25', 'http://127.0.0.1:3000/img/muwu.jpg', 0);

-- --------------------------------------------------------

--
-- 表的结构 `yg_order`
--

CREATE TABLE `yg_order` (
  `aid` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `order_time` bigint(20) DEFAULT NULL,
  `pay_time` bigint(20) DEFAULT NULL,
  `deliver_time` bigint(20) DEFAULT NULL,
  `received_time` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `yg_order_detail`
--

CREATE TABLE `yg_order_detail` (
  `did` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `yg_receiver_address`
--

CREATE TABLE `yg_receiver_address` (
  `aid` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `receiver` varchar(16) DEFAULT NULL,
  `province` varchar(16) DEFAULT NULL,
  `city` varchar(16) DEFAULT NULL,
  `county` varchar(16) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  `cellphone` varchar(16) DEFAULT NULL,
  `fixedphone` varchar(16) DEFAULT NULL,
  `postcode` char(6) DEFAULT NULL,
  `tag` varchar(16) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `yg_shoppingcart_item`
--

CREATE TABLE `yg_shoppingcart_item` (
  `iid` int(11) PRIMARY key  AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `is_checked` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `yg_shoppingcart_item`
--

INSERT INTO `yg_shoppingcart_item` (`iid`, `user_id`, `product_id`, `count`, `is_checked`) VALUES
(1, 10, 2, 1, 0),
(2, 11, 3, 1, 0),
(3, 12, 1, 1, 1),
(4, 13, 3, 9, 0),
(5, 14, 1, 1, 0);



-- --------------------------------------------------------

--
-- 表的结构 `yg_user`
--

CREATE TABLE `yg_user` (
  `uid` int(11) PRIMARY KEY AUTO_INCREMENT,
  `canvas` varchar(16) DEFAULT NULL,
  `uname` varchar(16) DEFAULT NULL,
  `code` varchar(16) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL,
  `reupwd` varchar(32) DEFAULT NULL

) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `yg_user`
--

  
  INSERT INTO `yg_user`  ( `uid`, `canvas`, `uname`, `code`,`upwd`,`reupwd`) VALUES
  (1, 'm5tf','dingding','d435','123456','123456'),
  (null, 'm5tf','dangdang','d435','123456', '123456'),
  (null, 'm5tf','doudou123','d435','123456', '123456'),
  (null, 'm5tf','yaya','d435','123456', '123456'),
  (null, 'm5tf','join','d435','123456', '123456'),
  (null, 'm5tf','tom','d435' ,'123456', '123456' ),
  (null, 'm5tf', '121123','d435' ,'123456', '123456'),
  (null, 'm5tf','555555','d435', '123456', '123456'),
  (null, 'm5tf','xuyong','d435' ,'123456', '123456'),
  (null, 'm5tf','admin','d435' ,'123456', '123456'),
  (null, 'm5tf','siyongbo','d435', '123456', '123456'),
  (null, 'm5tf','qwerty','d435', '123456', '123456'),
  (null, 'm5tf','dingziqiang','d435', '456456', '456456'),
  (null, 'm5tf','hdb2264068','d435' ,'huang123', 'huang123')



--
-- Indexes for dumped tables
--

--
-- Indexes for table `yg_index_carousel`
--
ALTER TABLE `yg_index_carousel`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `yg_index_product`
--
ALTER TABLE `yg_index_product`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `yg_goods`
--
ALTER TABLE `yg_goods`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `yg_goods_family`
--
ALTER TABLE `yg_goods_family`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `yg_goods_pic`
--
ALTER TABLE `yg_goods_pic`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `yg_news`
--
ALTER TABLE `yg_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yg_order`
--
ALTER TABLE `yg_order`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `yg_order_detail`
--
ALTER TABLE `yg_order_detail`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `yg_receiver_address`
--
ALTER TABLE `yg_receiver_address`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `yg_shoppingcart_item`
--
ALTER TABLE `yg_shoppingcart_item`
  ADD PRIMARY KEY (`iid`);

--
-- Indexes for table `yg_user`
--
ALTER TABLE `yg_user`
  ADD PRIMARY KEY (`uid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `yg_index_carousel`
--
ALTER TABLE `yg_index_carousel`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用表AUTO_INCREMENT `yg_index_product`
--
ALTER TABLE `yg_index_product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- 使用表AUTO_INCREMENT `yg_goods`
--
ALTER TABLE `yg_goods`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- 使用表AUTO_INCREMENT `yg_goods_family`
--
ALTER TABLE `yg_goods_family`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用表AUTO_INCREMENT `yg_goods_pic`
--
ALTER TABLE `yg_goods_pic`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;

--
-- 使用表AUTO_INCREMENT `yg_news`
--
ALTER TABLE `yg_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- 使用表AUTO_INCREMENT `yg_order`
--
ALTER TABLE `yg_order`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `yg_order_detail`
--
ALTER TABLE `yg_order_detail`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `yg_receiver_address`
--
ALTER TABLE `yg_receiver_address`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `yg_shoppingcart_item`
--
ALTER TABLE `yg_shoppingcart_item`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- 使用表AUTO_INCREMENT `yg_user`
--
ALTER TABLE `yg_user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
