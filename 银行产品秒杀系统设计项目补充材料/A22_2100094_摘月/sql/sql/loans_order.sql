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

 Date: 15/04/2022 21:47:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for loans_order
-- ----------------------------
DROP TABLE IF EXISTS `loans_order`;
CREATE TABLE `loans_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `create_time` timestamp NOT NULL COMMENT '下单时间',
  `user_id` int NOT NULL,
  `number` int NOT NULL COMMENT '购买份数',
  `status` tinyint NOT NULL COMMENT '付款状态（1:已付款 0：未付款）',
  `good_id` int NOT NULL COMMENT '商品id',
  `total_price` double DEFAULT NULL,
  `good_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=686 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of loans_order
-- ----------------------------
BEGIN;
INSERT INTO `loans_order` VALUES (8, '2022-04-09 16:14:23', 1840644411, 1, 1, 4, 12000, '银行理财产品1号');
INSERT INTO `loans_order` VALUES (10, '2022-04-09 16:48:27', 1840644411, 1, 1, 4, 12000, '银行理财产品1号');
INSERT INTO `loans_order` VALUES (13, '2022-04-09 16:54:45', 1840644411, 72, 1, 4, 864000, '银行理财产品1号');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
