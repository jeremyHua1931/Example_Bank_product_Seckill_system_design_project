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

 Date: 15/04/2022 21:47:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for rule
-- ----------------------------
DROP TABLE IF EXISTS `rule`;
CREATE TABLE `rule` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '规则id',
  `name` varchar(255) NOT NULL COMMENT '规则名称',
  `description` varchar(255) NOT NULL COMMENT '规则名称',
  `type` int NOT NULL COMMENT '规则描述',
  `value` json DEFAULT NULL COMMENT '数值数组',
  `control` tinyint NOT NULL COMMENT '风险控制（1:通过，0:拒绝）',
  `variable` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of rule
-- ----------------------------
BEGIN;
INSERT INTO `rule` VALUES (8, '金额锁', '限制金额区间', 3, '[\"40000\", \"60000\"]', 1, 'fund');
INSERT INTO `rule` VALUES (16, '金额锁2', '小于100000不通过', 2, '[\"100000\"]', 0, 'income');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
