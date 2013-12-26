/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50613
 Source Host           : localhost
 Source Database       : client

 Target Server Type    : MySQL
 Target Server Version : 50613
 File Encoding         : utf-8

 Date: 12/27/2013 00:20:39 AM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `logistics`
-- ----------------------------
DROP TABLE IF EXISTS `logistics`;
CREATE TABLE `logistics` (
  `CODE` varchar(36) NOT NULL COMMENT '主键',
  `NAME` varchar(100) DEFAULT NULL COMMENT '物流公司名称',
  PRIMARY KEY (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `logistics`
-- ----------------------------
BEGIN;
INSERT INTO `logistics` VALUES ('L-CJ', '长久物流'), ('L-HY', '华阳物流'), ('L-ZT', '中通物流'), ('L-ZY', '中远物流');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
