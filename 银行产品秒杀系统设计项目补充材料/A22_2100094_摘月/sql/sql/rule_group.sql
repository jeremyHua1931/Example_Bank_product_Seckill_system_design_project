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

 Date: 15/04/2022 21:47:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for rule_group
-- ----------------------------
DROP TABLE IF EXISTS `rule_group`;
CREATE TABLE `rule_group` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '规则id',
  `name` varchar(255) NOT NULL COMMENT '规则名称',
  `description` varchar(255) NOT NULL COMMENT '描述',
  `rule_list` json NOT NULL COMMENT '数组',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of rule_group
-- ----------------------------
BEGIN;
INSERT INTO `rule_group` VALUES (2, 'group', 'test', '[8, 9, 10]');
INSERT INTO `rule_group` VALUES (3, 'ddd', 'ddd', '[8, 9]');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
