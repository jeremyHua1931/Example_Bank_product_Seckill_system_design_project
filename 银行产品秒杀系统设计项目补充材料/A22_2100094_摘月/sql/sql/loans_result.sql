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

 Date: 15/04/2022 21:47:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for loans_result
-- ----------------------------
DROP TABLE IF EXISTS `loans_result`;
CREATE TABLE `loans_result` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '结果id',
  `user_id` int NOT NULL COMMENT '用户id',
  `good_id` int NOT NULL COMMENT '商品id',
  `result` tinyint NOT NULL COMMENT '初筛结果（1:通过 0:不通过）',
  `reason` varchar(255) DEFAULT NULL COMMENT '拒绝原因',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=278 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of loans_result
-- ----------------------------
BEGIN;
INSERT INTO `loans_result` VALUES (13, 1840644123, 18, 0, '[{\"id\":11,\"name\":\"成年\",\"description\":\"babababba\",\"type\":0,\"value\":[\"1\"],\"control\":true,\"variable\":\"elder18\"}]', '2022-03-29 20:07:53');
INSERT INTO `loans_result` VALUES (14, 1840644123, 2, 3, '[]', '2022-03-30 17:08:26');
INSERT INTO `loans_result` VALUES (15, 1840644123, 18, 0, '[{\"id\":11,\"name\":\"成年\",\"description\":\"babababba\",\"type\":0,\"value\":[\"1\"],\"control\":true,\"variable\":\"elder18\"}]', '2022-03-30 17:09:35');
INSERT INTO `loans_result` VALUES (16, 1840644123, 18, 0, '[{\"id\":11,\"name\":\"成年\",\"description\":\"babababba\",\"type\":0,\"value\":[\"1\"],\"control\":true,\"variable\":\"elder18\"}]', '2022-03-30 17:10:05');
INSERT INTO `loans_result` VALUES (17, 1840644411, 3, 1, '[]', '2022-04-06 21:48:34');
INSERT INTO `loans_result` VALUES (18, 1840644411, 3, 1, '[]', '2022-04-07 19:22:10');
INSERT INTO `loans_result` VALUES (19, 1840644411, 3, 1, '[]', '2022-04-07 19:22:04');
INSERT INTO `loans_result` VALUES (20, 1840644411, 3, 1, '[]', '2022-04-07 19:25:18');
INSERT INTO `loans_result` VALUES (21, 1840644411, 3, 1, '[]', '2022-04-07 19:24:11');
INSERT INTO `loans_result` VALUES (22, 1840644411, 3, 1, '[]', '2022-04-07 19:24:04');
INSERT INTO `loans_result` VALUES (23, 1840644411, 3, 1, '[]', '2022-04-07 19:22:22');
INSERT INTO `loans_result` VALUES (24, 1840644411, 3, 1, '[]', '2022-04-07 19:28:34');
INSERT INTO `loans_result` VALUES (25, 1840644411, 3, 1, '[]', '2022-04-07 19:27:58');
INSERT INTO `loans_result` VALUES (26, 1840644411, 3, 1, '[]', '2022-04-07 19:26:33');
INSERT INTO `loans_result` VALUES (27, 1840644411, 18, 1, '[]', '2022-04-07 19:26:31');
INSERT INTO `loans_result` VALUES (28, 1840644411, 3, 1, '[]', '2022-04-07 19:29:08');
INSERT INTO `loans_result` VALUES (29, 1840644411, 19, 3, '[]', '2022-04-07 19:43:12');
INSERT INTO `loans_result` VALUES (30, 1840644411, 3, 1, '[]', '2022-04-07 19:46:42');
INSERT INTO `loans_result` VALUES (31, 1840644411, 3, 1, '[]', '2022-04-07 19:46:19');
INSERT INTO `loans_result` VALUES (32, 1840644411, 3, 1, '[]', '2022-04-07 19:47:24');
INSERT INTO `loans_result` VALUES (33, 1840644411, 3, 1, '[]', '2022-04-07 19:46:58');
INSERT INTO `loans_result` VALUES (34, 1840644411, 18, 1, '[]', '2022-04-07 20:19:58');
INSERT INTO `loans_result` VALUES (35, 1840644411, 18, 1, '[]', '2022-04-07 20:18:34');
INSERT INTO `loans_result` VALUES (36, 1840644411, 3, 1, '[]', '2022-04-07 20:36:06');
INSERT INTO `loans_result` VALUES (37, 1840644411, 3, 1, '[]', '2022-04-07 20:35:19');
INSERT INTO `loans_result` VALUES (38, 1840644411, 3, 1, '[]', '2022-04-07 20:34:38');
INSERT INTO `loans_result` VALUES (39, 1840644411, 3, 1, '[]', '2022-04-07 20:34:29');
INSERT INTO `loans_result` VALUES (40, 1840644411, 3, 1, '[]', '2022-04-07 20:34:19');
INSERT INTO `loans_result` VALUES (41, 1840644411, 4, 3, '[]', '2022-04-07 20:41:49');
INSERT INTO `loans_result` VALUES (42, 1840644411, 3, 1, '[]', '2022-04-07 20:41:26');
INSERT INTO `loans_result` VALUES (43, 1840644411, 3, 1, '[]', '2022-04-07 20:48:38');
INSERT INTO `loans_result` VALUES (44, 1840644411, 3, 1, '[]', '2022-04-07 20:51:03');
INSERT INTO `loans_result` VALUES (45, 1840644411, 3, 1, '[]', '2022-04-07 20:51:03');
INSERT INTO `loans_result` VALUES (46, 1840644411, 3, 1, '[]', '2022-04-07 20:51:01');
INSERT INTO `loans_result` VALUES (47, 1840644411, 3, 1, '[]', '2022-04-07 20:51:00');
INSERT INTO `loans_result` VALUES (48, 1840644411, 3, 1, '[]', '2022-04-07 20:50:52');
INSERT INTO `loans_result` VALUES (49, 1840644411, 3, 1, '[]', '2022-04-07 20:50:49');
INSERT INTO `loans_result` VALUES (50, 1840644411, 3, 1, '[]', '2022-04-07 20:50:48');
INSERT INTO `loans_result` VALUES (51, 1840644411, 3, 1, '[]', '2022-04-07 20:50:47');
INSERT INTO `loans_result` VALUES (52, 1840644411, 3, 1, '[]', '2022-04-07 20:50:45');
INSERT INTO `loans_result` VALUES (53, 1840644411, 3, 1, '[]', '2022-04-07 20:50:43');
INSERT INTO `loans_result` VALUES (54, 1840644411, 3, 1, '[]', '2022-04-07 20:50:42');
INSERT INTO `loans_result` VALUES (55, 1840644411, 3, 1, '[]', '2022-04-07 20:50:41');
INSERT INTO `loans_result` VALUES (56, 1840644411, 3, 1, '[]', '2022-04-07 20:50:36');
INSERT INTO `loans_result` VALUES (57, 1840644411, 3, 1, '[]', '2022-04-07 20:50:35');
INSERT INTO `loans_result` VALUES (58, 1840644411, 3, 1, '[]', '2022-04-07 20:50:33');
INSERT INTO `loans_result` VALUES (59, 1840644411, 3, 1, '[]', '2022-04-07 20:49:54');
INSERT INTO `loans_result` VALUES (60, 1840644411, 3, 1, '[]', '2022-04-07 20:49:53');
INSERT INTO `loans_result` VALUES (61, 1840644411, 3, 1, '[]', '2022-04-07 20:49:52');
INSERT INTO `loans_result` VALUES (62, 1840644411, 3, 1, '[]', '2022-04-07 20:53:40');
INSERT INTO `loans_result` VALUES (63, 1840644411, 3, 1, '[]', '2022-04-07 20:53:40');
INSERT INTO `loans_result` VALUES (64, 1840644411, 3, 1, '[]', '2022-04-07 20:53:26');
INSERT INTO `loans_result` VALUES (65, 1840644411, 3, 1, '[]', '2022-04-07 20:53:22');
INSERT INTO `loans_result` VALUES (66, 1840644411, 3, 1, '[]', '2022-04-07 20:53:20');
INSERT INTO `loans_result` VALUES (67, 1840644411, 3, 1, '[]', '2022-04-07 20:53:20');
INSERT INTO `loans_result` VALUES (68, 1840644411, 3, 1, '[]', '2022-04-07 20:53:15');
INSERT INTO `loans_result` VALUES (69, 1840644411, 3, 1, '[]', '2022-04-07 20:56:24');
INSERT INTO `loans_result` VALUES (70, 1840644411, 3, 1, '[]', '2022-04-07 20:56:23');
INSERT INTO `loans_result` VALUES (71, 1840644411, 3, 1, '[]', '2022-04-07 20:56:22');
INSERT INTO `loans_result` VALUES (72, 1840644411, 3, 1, '[]', '2022-04-07 20:56:22');
INSERT INTO `loans_result` VALUES (73, 1840644411, 3, 1, '[]', '2022-04-07 20:56:16');
INSERT INTO `loans_result` VALUES (74, 1840644411, 3, 1, '[]', '2022-04-07 20:56:16');
INSERT INTO `loans_result` VALUES (75, 1840644411, 3, 1, '[]', '2022-04-07 20:56:15');
INSERT INTO `loans_result` VALUES (76, 1840644411, 3, 1, '[]', '2022-04-07 20:56:03');
INSERT INTO `loans_result` VALUES (77, 1840644411, 3, 1, '[]', '2022-04-07 20:56:01');
INSERT INTO `loans_result` VALUES (78, 1840644411, 3, 1, '[]', '2022-04-07 20:54:59');
INSERT INTO `loans_result` VALUES (79, 1840644411, 3, 1, '[]', '2022-04-07 20:59:38');
INSERT INTO `loans_result` VALUES (80, 1840644411, 3, 1, '[]', '2022-04-07 20:59:36');
INSERT INTO `loans_result` VALUES (81, 1840644411, 3, 1, '[]', '2022-04-07 20:59:21');
INSERT INTO `loans_result` VALUES (82, 1840644411, 3, 1, '[]', '2022-04-07 20:59:12');
INSERT INTO `loans_result` VALUES (83, 1840644411, 3, 1, '[]', '2022-04-07 20:59:10');
INSERT INTO `loans_result` VALUES (84, 1840644411, 3, 1, '[]', '2022-04-07 20:58:47');
INSERT INTO `loans_result` VALUES (85, 1840644411, 3, 1, '[]', '2022-04-07 21:02:03');
INSERT INTO `loans_result` VALUES (86, 1840644411, 3, 1, '[]', '2022-04-07 21:02:03');
INSERT INTO `loans_result` VALUES (87, 1840644411, 3, 1, '[]', '2022-04-07 21:02:00');
INSERT INTO `loans_result` VALUES (88, 1840644411, 3, 1, '[]', '2022-04-07 21:01:47');
INSERT INTO `loans_result` VALUES (89, 1840644411, 3, 1, '[]', '2022-04-07 21:01:04');
INSERT INTO `loans_result` VALUES (90, 1840644411, 3, 1, '[]', '2022-04-07 21:01:03');
INSERT INTO `loans_result` VALUES (91, 1840644411, 3, 1, '[]', '2022-04-07 21:13:10');
INSERT INTO `loans_result` VALUES (92, 1840644411, 3, 1, '[]', '2022-04-07 21:13:08');
INSERT INTO `loans_result` VALUES (93, 1840644411, 4, 3, '[]', '2022-04-07 21:18:59');
INSERT INTO `loans_result` VALUES (94, 1840644411, 3, 1, '[]', '2022-04-07 21:20:05');
INSERT INTO `loans_result` VALUES (95, 1840644411, 3, 1, '[]', '2022-04-07 21:19:45');
INSERT INTO `loans_result` VALUES (96, 1840644411, 3, 1, '[]', '2022-04-07 21:23:19');
INSERT INTO `loans_result` VALUES (97, 1840644411, 3, 1, '[]', '2022-04-07 21:23:18');
INSERT INTO `loans_result` VALUES (98, 1840644411, 3, 1, '[]', '2022-04-07 21:23:15');
INSERT INTO `loans_result` VALUES (99, 1840644411, 3, 1, '[]', '2022-04-07 21:23:15');
INSERT INTO `loans_result` VALUES (100, 1840644411, 3, 1, '[]', '2022-04-07 21:22:55');
INSERT INTO `loans_result` VALUES (101, 1840644411, 3, 1, '[]', '2022-04-07 21:22:55');
INSERT INTO `loans_result` VALUES (102, 1840644411, 3, 1, '[]', '2022-04-07 21:22:38');
INSERT INTO `loans_result` VALUES (103, 1840644411, 4, 3, '[]', '2022-04-07 21:22:33');
INSERT INTO `loans_result` VALUES (104, 1840644411, 4, 3, '[]', '2022-04-07 21:22:24');
INSERT INTO `loans_result` VALUES (105, 1840644411, 3, 1, '[]', '2022-04-07 21:23:57');
INSERT INTO `loans_result` VALUES (106, 1840644411, 4, 3, '[]', '2022-04-07 21:23:42');
INSERT INTO `loans_result` VALUES (107, 1840644411, 3, 1, '[]', '2022-04-07 21:23:33');
INSERT INTO `loans_result` VALUES (108, 1840644411, 3, 1, '[]', '2022-04-07 21:23:20');
INSERT INTO `loans_result` VALUES (109, 1840644411, 3, 1, '[]', '2022-04-07 21:24:49');
INSERT INTO `loans_result` VALUES (110, 1840644411, 3, 1, '[]', '2022-04-07 21:29:11');
INSERT INTO `loans_result` VALUES (111, 1840644411, 3, 1, '[]', '2022-04-07 21:29:56');
INSERT INTO `loans_result` VALUES (112, 1840644411, 3, 1, '[]', '2022-04-07 21:29:25');
INSERT INTO `loans_result` VALUES (113, 1840644411, 3, 1, '[]', '2022-04-07 21:31:14');
INSERT INTO `loans_result` VALUES (114, 1840644411, 3, 1, '[]', '2022-04-07 21:31:11');
INSERT INTO `loans_result` VALUES (115, 1840644411, 3, 1, '[]', '2022-04-07 21:30:34');
INSERT INTO `loans_result` VALUES (116, 1840644411, 3, 1, '[]', '2022-04-07 21:30:33');
INSERT INTO `loans_result` VALUES (117, 1840644411, 3, 1, '[]', '2022-04-07 21:30:32');
INSERT INTO `loans_result` VALUES (118, 1840644411, 3, 1, '[]', '2022-04-07 21:30:31');
INSERT INTO `loans_result` VALUES (119, 1840644411, 3, 1, '[]', '2022-04-07 21:30:30');
INSERT INTO `loans_result` VALUES (120, 1840644411, 3, 1, '[]', '2022-04-07 21:30:30');
INSERT INTO `loans_result` VALUES (121, 1840644411, 3, 1, '[]', '2022-04-07 21:30:28');
INSERT INTO `loans_result` VALUES (122, 1840644411, 3, 1, '[]', '2022-04-07 21:30:25');
INSERT INTO `loans_result` VALUES (123, 1840644411, 3, 1, '[]', '2022-04-07 21:30:24');
INSERT INTO `loans_result` VALUES (124, 1840644411, 3, 1, '[]', '2022-04-07 21:30:23');
INSERT INTO `loans_result` VALUES (125, 1840644411, 3, 1, '[]', '2022-04-07 21:30:22');
INSERT INTO `loans_result` VALUES (126, 1840644411, 3, 1, '[]', '2022-04-07 21:30:21');
INSERT INTO `loans_result` VALUES (127, 1840644411, 3, 1, '[]', '2022-04-07 21:30:21');
INSERT INTO `loans_result` VALUES (128, 1840644411, 3, 1, '[]', '2022-04-07 21:31:39');
INSERT INTO `loans_result` VALUES (129, 1840644411, 3, 1, '[]', '2022-04-07 21:31:38');
INSERT INTO `loans_result` VALUES (130, 1840644411, 3, 1, '[]', '2022-04-07 21:31:36');
INSERT INTO `loans_result` VALUES (131, 1840644411, 3, 1, '[]', '2022-04-07 21:31:36');
INSERT INTO `loans_result` VALUES (132, 1840644411, 3, 1, '[]', '2022-04-07 21:31:34');
INSERT INTO `loans_result` VALUES (133, 1840644411, 3, 1, '[]', '2022-04-07 21:31:32');
INSERT INTO `loans_result` VALUES (134, 1840644411, 3, 1, '[]', '2022-04-07 21:31:31');
INSERT INTO `loans_result` VALUES (135, 1840644411, 3, 1, '[]', '2022-04-07 21:31:27');
INSERT INTO `loans_result` VALUES (136, 1840644411, 3, 1, '[]', '2022-04-07 21:31:26');
INSERT INTO `loans_result` VALUES (137, 1840644411, 3, 1, '[]', '2022-04-07 21:31:24');
INSERT INTO `loans_result` VALUES (138, 1840644411, 3, 1, '[]', '2022-04-07 21:31:24');
INSERT INTO `loans_result` VALUES (139, 1840644411, 3, 1, '[]', '2022-04-07 21:31:22');
INSERT INTO `loans_result` VALUES (140, 1840644411, 3, 1, '[]', '2022-04-07 21:31:21');
INSERT INTO `loans_result` VALUES (141, 1840644411, 3, 1, '[]', '2022-04-07 21:31:21');
INSERT INTO `loans_result` VALUES (142, 1840644411, 18, 1, '[]', '2022-04-07 21:34:07');
INSERT INTO `loans_result` VALUES (143, 1840644411, 18, 1, '[]', '2022-04-07 21:33:50');
INSERT INTO `loans_result` VALUES (144, 1840644411, 18, 1, '[]', '2022-04-07 21:34:43');
INSERT INTO `loans_result` VALUES (145, 1840644411, 3, 1, '[]', '2022-04-07 21:34:36');
INSERT INTO `loans_result` VALUES (146, 1840644411, 18, 1, '[]', '2022-04-07 21:35:58');
INSERT INTO `loans_result` VALUES (147, 1840644411, 3, 1, '[]', '2022-04-07 21:49:37');
INSERT INTO `loans_result` VALUES (148, 1840644411, 3, 1, '[]', '2022-04-08 17:16:15');
INSERT INTO `loans_result` VALUES (149, 1840644411, 3, 1, '[]', '2022-04-08 17:17:08');
INSERT INTO `loans_result` VALUES (150, 1840644411, 3, 1, '[]', '2022-04-09 16:14:57');
INSERT INTO `loans_result` VALUES (151, 1840644411, 3, 1, '[]', '2022-04-09 16:14:33');
INSERT INTO `loans_result` VALUES (152, 1840644411, 4, 3, '[]', '2022-04-09 16:14:22');
INSERT INTO `loans_result` VALUES (153, 1840644411, 4, 3, '[]', '2022-04-09 16:25:40');
INSERT INTO `loans_result` VALUES (154, 1840644411, 3, 1, '[]', '2022-04-09 16:25:28');
INSERT INTO `loans_result` VALUES (155, 1840644411, 4, 3, '[]', '2022-04-09 16:29:03');
INSERT INTO `loans_result` VALUES (156, 1840644411, 4, 3, '[]', '2022-04-09 16:29:02');
INSERT INTO `loans_result` VALUES (157, 1840644411, 4, 3, '[]', '2022-04-09 16:29:02');
INSERT INTO `loans_result` VALUES (158, 1840644411, 4, 3, '[]', '2022-04-09 16:29:02');
INSERT INTO `loans_result` VALUES (159, 1840644411, 4, 3, '[]', '2022-04-09 16:29:02');
INSERT INTO `loans_result` VALUES (160, 1840644411, 4, 3, '[]', '2022-04-09 16:29:02');
INSERT INTO `loans_result` VALUES (161, 1840644411, 4, 3, '[]', '2022-04-09 16:29:02');
INSERT INTO `loans_result` VALUES (162, 1840644411, 4, 3, '[]', '2022-04-09 16:28:53');
INSERT INTO `loans_result` VALUES (163, 1840644411, 4, 3, '[]', '2022-04-09 16:28:53');
INSERT INTO `loans_result` VALUES (164, 1840644411, 4, 3, '[]', '2022-04-09 16:28:21');
INSERT INTO `loans_result` VALUES (165, 1840644411, 4, 3, '[]', '2022-04-09 16:29:29');
INSERT INTO `loans_result` VALUES (166, 1840644411, 4, 3, '[]', '2022-04-09 16:29:29');
INSERT INTO `loans_result` VALUES (167, 1840644411, 4, 3, '[]', '2022-04-09 16:29:29');
INSERT INTO `loans_result` VALUES (168, 1840644411, 4, 3, '[]', '2022-04-09 16:29:16');
INSERT INTO `loans_result` VALUES (169, 1840644411, 4, 3, '[]', '2022-04-09 16:29:15');
INSERT INTO `loans_result` VALUES (170, 1840644411, 4, 3, '[]', '2022-04-09 16:30:45');
INSERT INTO `loans_result` VALUES (171, 1840644411, 4, 3, '[]', '2022-04-09 16:30:44');
INSERT INTO `loans_result` VALUES (172, 1840644411, 4, 3, '[]', '2022-04-09 16:32:49');
INSERT INTO `loans_result` VALUES (173, 1840644411, 4, 3, '[]', '2022-04-09 16:34:06');
INSERT INTO `loans_result` VALUES (174, 1840644411, 4, 3, '[]', '2022-04-09 16:33:40');
INSERT INTO `loans_result` VALUES (175, 1840644411, 4, 3, '[]', '2022-04-09 16:33:34');
INSERT INTO `loans_result` VALUES (176, 1840644411, 4, 3, '[]', '2022-04-09 16:33:30');
INSERT INTO `loans_result` VALUES (177, 1840644411, 4, 3, '[]', '2022-04-09 16:33:23');
INSERT INTO `loans_result` VALUES (178, 1840644411, 4, 3, '[]', '2022-04-09 16:35:01');
INSERT INTO `loans_result` VALUES (179, 1840644411, 4, 3, '[]', '2022-04-09 16:34:39');
INSERT INTO `loans_result` VALUES (180, 1840644411, 4, 3, '[]', '2022-04-09 16:34:32');
INSERT INTO `loans_result` VALUES (181, 1840644411, 4, 3, '[]', '2022-04-09 16:34:27');
INSERT INTO `loans_result` VALUES (182, 1840644411, 4, 3, '[]', '2022-04-09 16:34:25');
INSERT INTO `loans_result` VALUES (183, 1840644411, 4, 3, '[]', '2022-04-09 16:34:20');
INSERT INTO `loans_result` VALUES (184, 1840644411, 4, 3, '[]', '2022-04-09 16:35:54');
INSERT INTO `loans_result` VALUES (185, 1840644411, 4, 3, '[]', '2022-04-09 16:38:53');
INSERT INTO `loans_result` VALUES (186, 1840644411, 2, 3, '[]', '2022-04-09 16:38:49');
INSERT INTO `loans_result` VALUES (187, 1840644411, 4, 3, '[]', '2022-04-09 16:38:41');
INSERT INTO `loans_result` VALUES (188, 1840644411, 4, 3, '[]', '2022-04-09 16:38:32');
INSERT INTO `loans_result` VALUES (189, 1840644411, 4, 3, '[]', '2022-04-09 16:38:25');
INSERT INTO `loans_result` VALUES (190, 1840644411, 4, 3, '[]', '2022-04-09 16:38:18');
INSERT INTO `loans_result` VALUES (191, 1840644411, 4, 3, '[]', '2022-04-09 16:38:17');
INSERT INTO `loans_result` VALUES (192, 1840644411, 4, 3, '[]', '2022-04-09 16:39:53');
INSERT INTO `loans_result` VALUES (193, 1840644411, 4, 3, '[]', '2022-04-09 16:40:26');
INSERT INTO `loans_result` VALUES (194, 1840644411, 4, 3, '[]', '2022-04-09 16:40:21');
INSERT INTO `loans_result` VALUES (195, 1840644411, 4, 3, '[]', '2022-04-09 16:42:13');
INSERT INTO `loans_result` VALUES (196, 1840644411, 4, 3, '[]', '2022-04-09 16:41:49');
INSERT INTO `loans_result` VALUES (197, 1840644411, 4, 3, '[]', '2022-04-09 16:41:46');
INSERT INTO `loans_result` VALUES (198, 1840644411, 4, 3, '[]', '2022-04-09 16:41:37');
INSERT INTO `loans_result` VALUES (199, 1840644411, 4, 3, '[]', '2022-04-09 16:42:18');
INSERT INTO `loans_result` VALUES (200, 1840644411, 4, 3, '[]', '2022-04-09 16:42:16');
INSERT INTO `loans_result` VALUES (201, 1840644411, 4, 3, '[]', '2022-04-09 16:44:06');
INSERT INTO `loans_result` VALUES (202, 1840644411, 4, 3, '[]', '2022-04-09 16:44:03');
INSERT INTO `loans_result` VALUES (203, 1840644411, 4, 3, '[]', '2022-04-09 16:44:02');
INSERT INTO `loans_result` VALUES (204, 1840644411, 4, 3, '[]', '2022-04-09 16:44:02');
INSERT INTO `loans_result` VALUES (205, 1840644411, 4, 3, '[]', '2022-04-09 16:44:01');
INSERT INTO `loans_result` VALUES (206, 1840644411, 4, 3, '[]', '2022-04-09 16:44:00');
INSERT INTO `loans_result` VALUES (207, 1840644411, 4, 3, '[]', '2022-04-09 16:43:59');
INSERT INTO `loans_result` VALUES (208, 1840644411, 4, 3, '[]', '2022-04-09 16:43:58');
INSERT INTO `loans_result` VALUES (209, 1840644411, 4, 3, '[]', '2022-04-09 16:43:58');
INSERT INTO `loans_result` VALUES (210, 1840644411, 4, 3, '[]', '2022-04-09 16:43:57');
INSERT INTO `loans_result` VALUES (211, 1840644411, 4, 3, '[]', '2022-04-09 16:43:56');
INSERT INTO `loans_result` VALUES (212, 1840644411, 4, 3, '[]', '2022-04-09 16:48:33');
INSERT INTO `loans_result` VALUES (213, 1840644411, 4, 3, '[]', '2022-04-09 16:48:24');
INSERT INTO `loans_result` VALUES (214, 1840644411, 4, 3, '[]', '2022-04-09 16:53:08');
INSERT INTO `loans_result` VALUES (215, 1840644411, 18, 1, '[]', '2022-04-09 16:54:03');
INSERT INTO `loans_result` VALUES (216, 1840644411, 18, 1, '[]', '2022-04-09 16:53:27');
INSERT INTO `loans_result` VALUES (217, 1840644411, 4, 3, '[]', '2022-04-09 16:53:19');
INSERT INTO `loans_result` VALUES (218, 1840644411, 4, 3, '[]', '2022-04-09 16:54:56');
INSERT INTO `loans_result` VALUES (219, 1840644411, 4, 3, '[]', '2022-04-09 16:54:39');
INSERT INTO `loans_result` VALUES (220, 1840644411, 4, 3, '[]', '2022-04-09 16:54:34');
INSERT INTO `loans_result` VALUES (221, 1840644411, 4, 3, '[]', '2022-04-09 16:54:27');
INSERT INTO `loans_result` VALUES (222, 1840644411, 18, 1, '[]', '2022-04-09 16:54:24');
INSERT INTO `loans_result` VALUES (223, 1840644411, 4, 3, '[]', '2022-04-09 16:55:18');
INSERT INTO `loans_result` VALUES (224, 1840644411, 18, 1, '[]', '2022-04-09 16:55:13');
INSERT INTO `loans_result` VALUES (225, 1840644411, 4, 3, '[]', '2022-04-09 16:55:10');
INSERT INTO `loans_result` VALUES (226, 1840644411, 18, 1, '[]', '2022-04-09 17:10:49');
INSERT INTO `loans_result` VALUES (227, 1840644411, 4, 3, '[]', '2022-04-09 17:10:37');
INSERT INTO `loans_result` VALUES (228, 1840644411, 4, 3, '[]', '2022-04-09 17:10:09');
INSERT INTO `loans_result` VALUES (229, 1840644411, 3, 1, '[]', '2022-04-10 18:41:45');
INSERT INTO `loans_result` VALUES (230, 1840644411, 4, 3, '[]', '2022-04-10 18:42:52');
INSERT INTO `loans_result` VALUES (231, 1840644411, 4, 3, '[]', '2022-04-10 20:49:26');
INSERT INTO `loans_result` VALUES (232, 1840644411, 3, 1, '[]', '2022-04-11 14:53:46');
INSERT INTO `loans_result` VALUES (233, 1840644411, 3, 1, '[]', '2022-04-11 14:48:28');
INSERT INTO `loans_result` VALUES (234, 1840644411, 3, 1, '[]', '2022-04-11 14:48:04');
INSERT INTO `loans_result` VALUES (235, 1840644411, 3, 1, '[]', '2022-04-11 14:47:56');
INSERT INTO `loans_result` VALUES (236, 1840644411, 18, 1, '[]', '2022-04-11 14:46:01');
INSERT INTO `loans_result` VALUES (237, 1840644411, 3, 1, '[]', '2022-04-11 14:45:58');
INSERT INTO `loans_result` VALUES (238, 1840644411, 18, 1, '[]', '2022-04-11 14:54:26');
INSERT INTO `loans_result` VALUES (239, 1840644411, 3, 1, '[]', '2022-04-11 14:54:24');
INSERT INTO `loans_result` VALUES (240, 1840644411, 18, 1, '[]', '2022-04-11 20:32:46');
INSERT INTO `loans_result` VALUES (241, 1840644411, 3, 1, '[]', '2022-04-11 20:32:44');
INSERT INTO `loans_result` VALUES (242, 1840644411, 3, 1, '[]', '2022-04-12 14:21:28');
INSERT INTO `loans_result` VALUES (243, 1840644744, 18, 1, '[]', '2022-04-13 15:33:11');
INSERT INTO `loans_result` VALUES (244, 1840644744, 3, 1, '[]', '2022-04-13 15:33:08');
INSERT INTO `loans_result` VALUES (245, 1840645065, 18, 1, '[]', '2022-04-14 16:21:42');
INSERT INTO `loans_result` VALUES (246, 1840645065, 3, 1, '[]', '2022-04-14 16:21:40');
INSERT INTO `loans_result` VALUES (247, 1840645065, 21, 3, '[]', '2022-04-14 16:27:33');
INSERT INTO `loans_result` VALUES (248, 1840645065, 20, 3, '[]', '2022-04-14 16:26:46');
INSERT INTO `loans_result` VALUES (249, 1840645065, 20, 3, '[]', '2022-04-14 16:26:42');
INSERT INTO `loans_result` VALUES (250, 1840645065, 20, 3, '[]', '2022-04-14 16:26:42');
INSERT INTO `loans_result` VALUES (251, 1840645065, 20, 3, '[]', '2022-04-14 16:26:10');
INSERT INTO `loans_result` VALUES (252, 1840645065, 21, 3, '[]', '2022-04-14 16:31:35');
INSERT INTO `loans_result` VALUES (253, 1840645065, 21, 3, '[]', '2022-04-14 16:31:21');
INSERT INTO `loans_result` VALUES (254, 1840645065, 21, 3, '[]', '2022-04-14 16:31:15');
INSERT INTO `loans_result` VALUES (255, 1840645065, 21, 3, '[]', '2022-04-14 16:31:10');
INSERT INTO `loans_result` VALUES (256, 1840645065, 21, 3, '[]', '2022-04-14 16:27:53');
INSERT INTO `loans_result` VALUES (257, 1840645065, 21, 3, '[]', '2022-04-14 17:01:14');
INSERT INTO `loans_result` VALUES (258, 1840645065, 21, 3, '[]', '2022-04-14 17:00:55');
INSERT INTO `loans_result` VALUES (259, 1840645065, 22, 1, '[]', '2022-04-14 17:06:26');
INSERT INTO `loans_result` VALUES (260, 1840645065, 22, 1, '[]', '2022-04-14 17:06:19');
INSERT INTO `loans_result` VALUES (261, 1840645065, 21, 3, '[]', '2022-04-14 17:06:13');
INSERT INTO `loans_result` VALUES (262, 1840645065, 22, 1, '[]', '2022-04-14 17:08:59');
INSERT INTO `loans_result` VALUES (263, 1840645065, 22, 1, '[]', '2022-04-14 17:08:26');
INSERT INTO `loans_result` VALUES (264, 1840645065, 22, 1, '[]', '2022-04-14 17:08:07');
INSERT INTO `loans_result` VALUES (265, 1840645065, 22, 1, '[]', '2022-04-14 17:07:59');
INSERT INTO `loans_result` VALUES (266, 1840645065, 22, 1, '[]', '2022-04-14 17:25:15');
INSERT INTO `loans_result` VALUES (267, 1840645065, 22, 1, '[]', '2022-04-14 17:25:02');
INSERT INTO `loans_result` VALUES (268, 1840645065, 23, 1, '[]', '2022-04-14 17:45:36');
INSERT INTO `loans_result` VALUES (269, 1840645065, 23, 1, '[]', '2022-04-14 17:45:23');
INSERT INTO `loans_result` VALUES (270, 1840645065, 22, 1, '[]', '2022-04-14 17:45:13');
INSERT INTO `loans_result` VALUES (271, 1840645065, 23, 1, '[]', '2022-04-14 17:54:02');
INSERT INTO `loans_result` VALUES (272, 1840645065, 23, 1, '[]', '2022-04-14 17:56:25');
INSERT INTO `loans_result` VALUES (273, 1840645065, 23, 1, '[]', '2022-04-14 17:56:20');
INSERT INTO `loans_result` VALUES (274, 1840645065, 23, 1, '[]', '2022-04-14 17:54:57');
INSERT INTO `loans_result` VALUES (275, 1840645065, 23, 1, '[]', '2022-04-14 17:54:12');
INSERT INTO `loans_result` VALUES (276, 1840645065, 24, 1, '[]', '2022-04-14 18:00:32');
INSERT INTO `loans_result` VALUES (277, 1840645065, 24, 1, '[]', '2022-04-14 18:00:23');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
