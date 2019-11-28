/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : localhost:3306
 Source Schema         : cloud_gateway

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 28/11/2019 10:56:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gateway_api_route
-- ----------------------------
DROP TABLE IF EXISTS `gateway_api_route`;
CREATE TABLE `gateway_api_route`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `service_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `retryable` tinyint(1) NULL DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `strip_prefix` int(11) NULL DEFAULT NULL,
  `api_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gateway_api_route
-- ----------------------------
INSERT INTO `gateway_api_route` VALUES ('9c131b60-1187-11ea-b538-3417ebbab0ed', '/api-o/**', 'oauth-center', 0, 1, NULL, 'oauth');
INSERT INTO `gateway_api_route` VALUES ('a7cf1337-1187-11ea-b538-3417ebbab0ed', '/api-u/**', 'user-center', 0, 1, NULL, 'user');
INSERT INTO `gateway_api_route` VALUES ('a7d02217-1187-11ea-b538-3417ebbab0ed', '/api-b/**', 'manage-backend', 0, 1, NULL, 'backend');
INSERT INTO `gateway_api_route` VALUES ('a7d14bdd-1187-11ea-b538-3417ebbab0ed', '/api-l/**', 'log-center', 0, 1, NULL, 'log');
INSERT INTO `gateway_api_route` VALUES ('a7d2f76e-1187-11ea-b538-3417ebbab0ed', '/api-f/**', 'file-center', 0, 1, NULL, 'file');
INSERT INTO `gateway_api_route` VALUES ('a7d3afb2-1187-11ea-b538-3417ebbab0ed', '/api-n/**', 'notification-center', 0, 1, NULL, 'notification');

SET FOREIGN_KEY_CHECKS = 1;
