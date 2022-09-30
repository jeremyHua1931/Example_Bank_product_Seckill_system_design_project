/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : second_kill

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 15/04/2022 21:46:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for loans_good
-- ----------------------------
DROP TABLE IF EXISTS `loans_good`;
CREATE TABLE `loans_good` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `price` double(10,2) NOT NULL COMMENT '单价',
  `total_number` int NOT NULL COMMENT '总价',
  `remain_number` int NOT NULL COMMENT '剩余份数',
  `start_time` timestamp NOT NULL COMMENT '开始时间',
  `end_time` timestamp NOT NULL COMMENT '结束时间',
  `restrict_number` int NOT NULL COMMENT '每人限购份数',
  `total_price` double NOT NULL COMMENT '总份数',
  `image` varchar(255) NOT NULL COMMENT '主图',
  `is_filter` tinytext NOT NULL COMMENT '是否启用初筛',
  `description` longtext NOT NULL COMMENT '详情',
  `rule_list` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '规则数组',
  `status` tinyint NOT NULL COMMENT '状态',
  `repeat_times` int DEFAULT NULL,
  `repeat_delay` int DEFAULT NULL,
  `total_repeat_times` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of loans_good
-- ----------------------------
BEGIN;
INSERT INTO `loans_good` VALUES (2, '贷款100000元', 100000.00, 10, 88, '2022-04-14 21:30:00', '2022-04-15 00:00:00', 1, 1000000, 'https://zjy-1307765026.cos.ap-nanjing.myqcloud.com/ms/2022/4/4/1649001600567.jpg', '1', '<p>est Duis in cillum</p>', '[12,13]', 2, 0, 2, 5);
INSERT INTO `loans_good` VALUES (3, '国债期货', 10000.00, 10000, 10000, '2022-03-21 21:30:00', '2022-04-26 00:00:00', 10, 1000000, '', '1', '<p>ajdjfshjkd</p>', '[11,12,13]', 1, 5, 2, 5);
INSERT INTO `loans_good` VALUES (4, '银行理财产品1号', 12000.00, 576, 576, '2022-03-31 21:30:00', '2022-04-10 00:00:00', 75, 70848, '', '0', '', '[]', 2, 0, 2, 5);
INSERT INTO `loans_good` VALUES (18, '银行理财产品2号', 12000.00, 45634, 44971, '2022-03-21 21:52:00', '2022-05-01 00:00:00', 3333, 6546521, '', '1', 'sint dolore qui laboris', '[11,12,13]', 1, 5, 2, 5);
INSERT INTO `loans_good` VALUES (19, '银行贷款3号', 20000.00, 22, 22, '2022-04-23 21:15:00', '2022-05-26 00:00:00', 3, 2200, '', '0', '<p>sdsdw</p>', '[]', 0, 5, 2, 5);
INSERT INTO `loans_good` VALUES (20, '汇利贷款2022年第0001期', 10000.00, 1000, 1000, '2022-04-14 00:00:00', '2022-04-16 00:00:00', 10, 10000000, 'https://zjy-1307765026.cos.ap-nanjing.myqcloud.com/ms/2022/4/14/1649865600424.jpg', '1', '<p>汇利贷款2022年第0001期</p>', '[8]', 1, 0, 0, 0);
INSERT INTO `loans_good` VALUES (21, '汇利贷款2022年第0002期', 1000.00, 1000, 1000, '2022-04-14 00:00:00', '2022-04-16 00:00:00', 10, 1000000, 'https://zjy-1307765026.cos.ap-nanjing.myqcloud.com/ms/2022/4/14/1649865600348.jpg', '0', '<p>010</p>', '[]', 1, 0, 0, 0);
INSERT INTO `loans_good` VALUES (22, '红红火火恍恍惚惚', 10000.00, 1010, 1010, '2022-04-14 00:00:00', '2022-04-16 00:00:00', 10, 10100000, '', '1', '<p>哈哈哈哈</p>', '[8]', 1, 0, 0, 0);
INSERT INTO `loans_good` VALUES (23, '123456789', 100000.00, 1000, 1000, '2022-04-14 00:00:00', '2022-04-16 00:00:00', 10, 100000000, '', '1', '<p>vvv</p>', '[16]', 1, 0, 0, 0);
INSERT INTO `loans_good` VALUES (24, '5', 15.00, 15, 15, '2022-04-14 00:00:00', '2022-04-16 00:00:00', 15, 225, '', '1', '<p>d</p>', '[16]', 1, 0, 0, 0);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
