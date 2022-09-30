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

 Date: 15/04/2022 21:44:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for deposit_good
-- ----------------------------
DROP TABLE IF EXISTS `deposit_good`;
CREATE TABLE `deposit_good` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `price` double NOT NULL COMMENT '单价',
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
  `status` tinyint NOT NULL COMMENT '当前状态',
  `repeat_times` int DEFAULT NULL,
  `repeat_delay` int DEFAULT NULL,
  `total_repeat_times` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of deposit_good
-- ----------------------------
BEGIN;
INSERT INTO `deposit_good` VALUES (2, '汇利存款2022年第0067期', 10000, 100000, 765, '2022-04-11 00:00:00', '2022-04-14 00:00:00', 3, 1000000000, 'https://zjy-1307765026.cos.ap-nanjing.myqcloud.com/ms/2022/4/4/1649001600555.jpg', '0', '<h1 id=\"1dxm3\">摘月1w存款</h1><p><img src=\"https://xzj-pic-1306183757.cos.ap-nanjing.myqcloud.com/picgo/deposit.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><br/><br/></p><p><br/></p>', '[]', 2, 0, 0, 0);
INSERT INTO `deposit_good` VALUES (3, '汇利存款2022年第0068期', 13232, 4, 4, '2022-04-14 00:00:00', '2022-04-16 00:00:00', 1, 52928, '', '0', '<p>323232</p>', '[]', 2, 0, 2, 0);
INSERT INTO `deposit_good` VALUES (4, '汇利存款2022年第0069期', 2000, 400, 400, '2022-04-10 00:00:00', '2022-04-16 00:00:00', 2, 800000, '', '0', '<p>233252</p><p><br/></p><p><br/></p><p>253</p><table border=\"0\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\"><tbody><tr><th></th><th></th><th></th><th></th><th></th></tr><tr><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td>245</td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td></tr></tbody></table>', '[]', 1, 1, 2, 1);
INSERT INTO `deposit_good` VALUES (5, '汇利存款2022年第0070期', 2000, 87, 87, '2022-04-13 00:00:00', '2022-04-16 00:00:00', 87, 174000, '', '1', '<p>143</p>', '[]', 0, 0, 2, 1);
INSERT INTO `deposit_good` VALUES (6, '汇利存款2022年第0071期', 123, 34, 34, '2022-04-09 00:00:00', '2022-04-15 00:00:00', 2, 4182, 'https://zjy-1307765026.cos.ap-nanjing.myqcloud.com/ms/2022/4/4/1649001600575.jpg', '0', '<ul><li><br/></li></ul>', '[]', 1, 5, 2, 5);
INSERT INTO `deposit_good` VALUES (7, '汇利存款2022年第0072期', 20000, 40000, 40000, '2022-03-10 00:00:00', '2022-06-15 00:00:00', 1000, 800000000, 'https://zjy-1307765026.cos.ap-nanjing.myqcloud.com/ms/2022/3/30/1648569600701.jpg', '1', '<p>10w存款&nbsp;</p><p><img src=\"https://img1.baidu.com/it/u=2767178125,629159385&amp;fm=253&amp;fmt=auto&amp;app=138&amp;f=JPEG?w=500&amp;h=500\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', '[]', 1, 5, 2, 5);
INSERT INTO `deposit_good` VALUES (8, '汇利存款2022年第0073期', 10000, 100000, 12500, '2022-03-23 00:00:00', '2023-04-14 00:00:00', 100, 1000000000, 'https://zjy-1307765026.cos.ap-nanjing.myqcloud.com/ms/2022/3/31/1648656000253.jpg', '0', '<h1 id=\"p4jks\">1W存款</h1><p><img src=\"https://zjy-1307765026.cos.ap-nanjing.myqcloud.com/ms/2022/3/30/1648569600701.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', '[]', 1, 0, 0, 0);
INSERT INTO `deposit_good` VALUES (9, '汇利存款2022年第0074期', 1000, 103, 0, '2022-04-02 00:00:00', '2022-05-11 00:00:00', 1, 103000, 'https://zjy-1307765026.cos.ap-nanjing.myqcloud.com/ms/2022/4/11/1649606400440.jpg', '0', '<p><img src=\"https://xzj-pic-1306183757.cos.ap-nanjing.myqcloud.com/picgo/摘月白底.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', '[]', 1, 5, 2, 5);
INSERT INTO `deposit_good` VALUES (10, '汇利存款2022年第0075期', 2000, 1000000, 1000000, '2022-04-03 00:00:00', '2022-05-19 00:00:00', 5, 2000000000, 'https://zjy-1307765026.cos.ap-nanjing.myqcloud.com/ms/2022/4/4/1649001600773.jpg', '0', '', '[]', 1, 5, 2, 5);
INSERT INTO `deposit_good` VALUES (11, '汇利存款2022年第0076期', 10000, 100000, 100000, '2022-03-08 00:00:00', '2022-04-19 00:00:00', 1, 1000000000, 'https://zjy-1307765026.cos.ap-nanjing.myqcloud.com/ms/2022/4/7/1649260800524.jpg', '0', '<p><span style=\"background-color: rgb(255, 255, 255);\"><br/></span></p><h1><font face=\"华文楷体\" id=\"o1s89\" style=\"background-color: rgb(255, 255, 255);\" color=\"#c24f4a\">1W存款限购活动</font></h1><div><font face=\"华文楷体\" style=\"background-color: rgb(255, 255, 255);\"><br/></font></div><div><table border=\"0\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\"><tbody><tr><td><span style=\"background-color: rgb(255, 255, 255);\">额度</span></td><td><span style=\"background-color: rgb(255, 255, 255);\">10000元</span></td></tr><tr><td><span style=\"background-color: rgb(255, 255, 255);\">限购</span></td><td><span style=\"background-color: rgb(255, 255, 255);\">每用户限购1份</span></td></tr><tr><td><span style=\"background-color: rgb(255, 255, 255);\">年利率</span></td><td><span style=\"background-color: rgb(255, 255, 255);\">0.05%</span></td></tr><tr><td><span style=\"background-color: rgb(255, 255, 255);\">起存时间</span></td><td><span style=\"background-color: rgb(255, 255, 255);\">1年</span></td></tr></tbody></table><p><span style=\"background-color: rgb(255, 255, 255);\"></span></p></div><p><img src=\"https://xzj-pic-1306183757.cos.ap-nanjing.myqcloud.com/picgo/deposit.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><br/><br/></p><h2 id=\"hlznv\"><font color=\"#c24f4a\">产品简介</font></h2><p>&nbsp;&nbsp;&nbsp;&nbsp;个人结构性存款是指吸收嵌入金融衍生产品的人民币存款，通过与利率、汇率、指数等波动挂钩或者与某实体的信用情况挂钩，使存款人在承担一定风险的基础上获得相应收益的产品。<br/></p><h2 id=\"dh2td\"><font color=\"#c24f4a\">功能特色</font></h2><ol><li><p>资管时代，存款新选择</p></li><li><p><span style=\"color: var(--el-text-color-primary);\">攻守兼备，本金有保障</span></p></li><li><p><span style=\"color: var(--el-text-color-primary);\">收益可期，博弈至高点</span></p></li><li><p><span style=\"color: var(--el-text-color-primary);\">专业团队，品质可信赖</span></p></li></ol><h2 id=\"9wcpa\"><font color=\"#c24f4a\">温馨提示</font></h2><p>&nbsp;&nbsp;&nbsp;&nbsp;客户在购买个人结构性存款前请仔细阅读产品说明书，并确保充分了解条款内容。结构性存款非普通存款、产品有风险、投资须谨慎。<br/></p>', '[]', 1, 0, 0, 0);
INSERT INTO `deposit_good` VALUES (12, '汇利存款2022年第0077期', 1000, 5000, 0, '2022-03-30 00:00:00', '2022-06-04 00:00:00', 10, 5000000, '', '0', '<h2 id=\"nllt9\">1k存款</h2><p><img src=\"https://xzj-pic-1306183757.cos.ap-nanjing.myqcloud.com/picgo/coint.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', '[]', 1, 0, 0, 0);
INSERT INTO `deposit_good` VALUES (13, '汇利存款2022年第0078期', 100, 100000, 16000, '2022-04-08 00:00:00', '2022-05-20 00:00:00', 100, 10000000, '', '0', '', '[]', 1, 0, 100, 0);
INSERT INTO `deposit_good` VALUES (29, '汇利存款2022年第0081期', 10000, 1000, 1000, '2022-04-12 00:00:00', '2022-04-16 00:00:00', 10, 10000000, 'https://zjy-1307765026.cos.ap-nanjing.myqcloud.com/ms/2022/4/12/1649692800739.jpg', '0', '<p>汇利存款2022年第0081期<br/></p>', '[]', 2, 0, 0, 0);
INSERT INTO `deposit_good` VALUES (38, '汇利存款2022年第0082期', 10000, 1000, 1000, '2022-04-14 00:00:00', '2022-04-16 00:00:00', 10, 10000000, 'https://zjy-1307765026.cos.ap-nanjing.myqcloud.com/ms/2022/4/14/1649865600339.jpg', '0', '<p>汇利存款2022年第0082期<br/></p>', '[]', 0, 0, 0, 0);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
