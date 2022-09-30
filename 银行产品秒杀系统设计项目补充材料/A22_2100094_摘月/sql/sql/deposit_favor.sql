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

 Date: 15/04/2022 21:44:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for deposit_favor
-- ----------------------------
DROP TABLE IF EXISTS `deposit_favor`;
CREATE TABLE `deposit_favor` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '收藏id',
  `user_id` int NOT NULL COMMENT '用户id',
  `good_id` int NOT NULL COMMENT '商品id',
  `create_time` timestamp NOT NULL COMMENT '收藏时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `deposit_favor_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of deposit_favor
-- ----------------------------
BEGIN;
INSERT INTO `deposit_favor` VALUES (1, 1840644203, 2, '2022-03-18 00:00:00');
INSERT INTO `deposit_favor` VALUES (2, 1840644203, 4, '2022-03-18 00:00:00');
INSERT INTO `deposit_favor` VALUES (3, 1840644203, 2, '2022-03-28 19:09:10');
INSERT INTO `deposit_favor` VALUES (26, 1840644411, 4, '2022-04-08 17:01:40');
INSERT INTO `deposit_favor` VALUES (27, 1840644411, 5, '2022-04-08 17:01:43');
INSERT INTO `deposit_favor` VALUES (29, 1840644411, 8, '2022-04-08 17:01:51');
INSERT INTO `deposit_favor` VALUES (30, 1840644411, 9, '2022-04-08 17:01:56');
INSERT INTO `deposit_favor` VALUES (31, 1840644411, 10, '2022-04-08 17:01:59');
INSERT INTO `deposit_favor` VALUES (32, 1840644411, 11, '2022-04-08 17:02:02');
INSERT INTO `deposit_favor` VALUES (34, 1840644411, 3, '2022-04-08 17:02:12');
INSERT INTO `deposit_favor` VALUES (35, 1840644411, 6, '2022-04-08 17:02:16');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
