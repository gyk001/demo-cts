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

 Date: 12/29/2013 20:08:40 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for dealer
-- ----------------------------
DROP TABLE IF EXISTS dealer;
CREATE TABLE dealer (
  JXSDM varchar(36) NOT NULL COMMENT '经销商代码',
  JXSMC varchar(80) DEFAULT NULL COMMENT '经销商名称',
  SYB varchar(10) DEFAULT NULL COMMENT '事业部',
  SHENG varchar(10) DEFAULT NULL COMMENT '省',
  SHI varchar(10) DEFAULT NULL COMMENT '市',
  QY varchar(40) DEFAULT NULL COMMENT '区域',
  SFTY varchar(10) DEFAULT NULL COMMENT '是否停业',
  PRIMARY KEY (JXSDM)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of dealer
-- ----------------------------
BEGIN;
INSERT INTO dealer VALUES ('D0103', '北京信发通达', '北区', '北京', '北京', '华北', '营业中'), ('D0105', '北京胜鸿都', '北区', '北京', '北京', '华北', '营业中'), ('D0106', '北京博伟恒业', '北区', '北京', '北京', '华北', '营业中'), ('D0110', '北京通铭伟业', '北区', '北京', '北京', '华北', '营业中'), ('D0112', '北京京现荣华', '北区', '北京', '北京', '华北', '营业中'), ('D0114', '京欧之杰', '北区', '北京', '北京', '华北', '营业中'), ('D0115', '北京东方金硕', '北区', '北京', '北京', '华北', '营业中'), ('D0116', '北京安瑞迪', '北区', '北京', '北京', '华北', '营业中'), ('D0117', '北京连振高超', '北区', '北京', '北京', '华北', '营业中'), ('D0118', '北京天乐国裕', '北区', '北京', '北京', '华北', '营业中'), ('D0119', '北京大通佳信', '北区', '北京', '北京', '华北', '营业中'), ('D0120', '北京北方程远', '北区', '北京', '北京', '华北', '营业中'), ('D0121', '北京庞大伟业', '北区', '北京', '北京', '华北', '营业中'), ('D0123', '北京成禄翔', '北区', '北京', '北京', '华北', '营业中'), ('D0124', '北京华阳顺通', '北区', '北京', '北京', '华北', '营业中'), ('D0125', '北京鸿都智通', '北区', '北京', '北京', '华北', '营业中'), ('D0127', '北京京信永达', '北区', '北京', '北京', '华北', '营业中'), ('D0201', '上海东昌', '东区', '上海', '上海', '苏沪', '营业中'), ('D0202', '上海北现', '东区', '上海', '上海', '苏沪', '营业中'), ('D0203', '上海中创', '东区', '上海', '上海', '苏沪', '营业中'), ('D0205', '上海现峰', '东区', '上海', '上海', '苏沪', '营业中'), ('D0206', '上海通现', '东区', '上海', '上海', '苏沪', '营业中'), ('D0210', '上海百联逸仙', '东区', '上海', '上海', '苏沪', '营业中'), ('D0211', '上海万达', '东区', '上海', '上海', '苏沪', '已停业'), ('D0212', '上海惠盈', '东区', '上海', '上海', '苏沪', '营业中'), ('D0213', '上海金现', '东区', '上海', '上海', '苏沪', '营业中'), ('D0215', '上海宝银', '东区', '上海', '上海', '苏沪', '营业中'), ('D0216', '上海联诚', '东区', '上海', '上海', '苏沪', '营业中'), ('D0217', '上海轿辰', '东区', '上海', '上海', '苏沪', '营业中'), ('D0218', '上海恒锐', '东区', '上海', '上海', '苏沪', '营业中'), ('D0219', '上海强生银鑫', '东区', '上海', '上海', '苏沪', '营业中'), ('D0220', '上海弘怡', '东区', '上海', '上海', '苏沪', '营业中'), ('D0221', '上海联兴', '东区', '上海', '上海', '苏沪', '营业中'), ('D0301', '重庆美源', '南区', '重庆', '重庆', '川渝', '营业中'), ('D0302', '重庆互邦', '南区', '重庆', '重庆', '川渝', '营业中'), ('D0303', '重庆当代', '南区', '重庆', '重庆', '川渝', '营业中'), ('D0304', '重庆御驰', '南区', '重庆', '重庆', '川渝', '营业中'), ('D0305', '重庆奥瑞', '南区', '重庆', '重庆', '川渝', '营业中'), ('D0306', '重庆沛鑫', '南区', '重庆', '重庆', '川渝', '营业中'), ('D0307', '永川美源永现', '南区', '重庆', '重庆', '川渝', '营业中'), ('D0308', '万州美源万现', '南区', '重庆', '重庆', '川渝', '营业中'), ('D0401', '天津捷安', '北区', '天津', '天津', '华北', '营业中'), ('D0402', '天津中乒　　', '北区', '天津', '天津', '华北', '营业中'), ('D0403', '天津鸿通', '北区', '天津', '天津', '华北', '营业中'), ('D0404', '天津信盛', '北区', '天津', '天津', '华北', '营业中'), ('D0405', '天津瑞芝', '北区', '天津', '天津', '华北', '营业中'), ('D0406', '天津森龙润通', '北区', '天津', '天津', '华北', '营业中'), ('D0407', '天津庞大伟通', '北区', '天津', '天津', '华北', '营业中'), ('D0408', '天津森龙润达', '北区', '天津', '天津', '华北', '营业中'), ('D0409', '天津捷世德', '北区', '天津', '天津', '华北', '营业中'), ('D0410', '博兴奇智', '北区', '天津', '天津', '华北', '营业中'), ('D0412', '蓟县汇青源通', '北区', '天津', '蓟县', '华北', '营业中'), ('D1002', '济南华泰', '东区', '山东', '济南', '山东', '营业中'), ('D1003', '青岛裕泰　　　　', '东区', '山东', '青岛', '山东', '营业中'), ('D1004', '青岛福日', '东区', '山东', '青岛', '山东', '营业中'), ('D1005', '淄博泰通达', '东区', '山东', '淄博', '山东', '营业中'), ('D1006', '临沂鲁泰', '东区', '山东', '临沂', '山东', '营业中'), ('D1007', '济宁永泰', '东区', '山东', '济宁', '山东', '营业中'), ('D1008', '烟台博泰', '东区', '山东', '烟台', '山东', '营业中'), ('D1009', '临沂阳光', '东区', '山东', '临沂', '山东', '营业中'), ('D1010', '烟台金德　　　　', '东区', '山东', '烟台', '山东', '营业中'), ('D1011', '潍坊金龙', '东区', '山东', '潍坊', '山东', '营业中'), ('D1012', '潍坊晟星', '东区', '山东', '潍坊', '山东', '营业中'), ('D1014', '东营通泰', '东区', '山东', '东营', '山东', '营业中'), ('D1015', '聊城恒泰', '东区', '山东', '聊城', '山东', '营业中'), ('D1016', '日照美多', '东区', '山东', '日照', '山东', '营业中'), ('D1017', '泰安北方', '东区', '山东', '泰安', '山东', '营业中'), ('D1018', '东营明达', '东区', '山东', '东营', '山东', '营业中'), ('D1019', '济南润寰', '东区', '山东', '济南', '山东', '营业中'), ('D1020', '莱芜泰达', '东区', '山东', '莱芜', '山东', '营业中'), ('D1021', '德州正豪', '东区', '山东', '德州', '山东', '营业中'), ('D1022', '淄博金恒吉', '东区', '山东', '淄博', '山东', '营业中'), ('D1023', '日照顺新', '东区', '山东', '日照', '山东', '营业中'), ('D1024', '枣庄凯顺', '东区', '山东', '枣庄', '山东', '营业中'), ('D1025', '菏泽昌信', '东区', '山东', '菏泽', '山东', '营业中'), ('D1026', '滨州远方', '东区', '山东', '滨州', '山东', '营业中'), ('D1027', '临沂悦来', '东区', '山东', '临沂', '山东', '营业中'), ('D1028', '威海振洋', '东区', '山东', '威海', '山东', '营业中'), ('D1029', '青岛润洋', '东区', '山东', '青岛', '山东', '营业中'), ('D1030', '济南东岳', '东区', '山东', '济南', '山东', '已停业'), ('D1031', '淄博众智源', '东区', '山东', '淄博', '山东', '营业中'), ('D1033', '济宁鸿源', '东区', '山东', '济南', '山东', '营业中'), ('D1034', '寿光元润', '东区', '山东', '寿光', '山东', '营业中'), ('D1035', '诸城佳恒', '东区', '山东', '诸城', '山东', '营业中'), ('D1036', '济南华建', '东区', '山东', '济南', '山东', '营业中'), ('D1037', '招远玲珑', '东区', '山东', '招远', '山东', '营业中'), ('D1038', '青岛宇海', '东区', '山东', '青岛', '山东', '营业中'), ('D1039', '聊城金友', '东区', '山东', '聊城', '山东', '营业中'), ('D1040', '青岛宝威中盛', '东区', '山东', '青岛', '山东', '营业中'), ('D1041', '龙口金岭龙达', '东区', '山东', '龙口', '山东', '营业中'), ('D1042', '德州正达', '东区', '山东', '德州', '山东', '营业中'), ('D1043', '泰安好运', '东区', '山东', '泰安', '山东', '营业中'), ('D1044', '威海悦洋', '东区', '山东', '威海', '山东', '营业中'), ('D1045', '滨州远方通悦', '东区', '山东', '滨州', '山东', '营业中'), ('D1046', '菏泽通源', '东区', '山东', '菏泽', '山东', '营业中'), ('D1047', '滕州永大', '东区', '山东', '滕州', '山东', '营业中'), ('D1048', '高密佳恒', '东区', '山东', '高密', '山东', '营业中'), ('D1049', '即墨宏峰合达', '东区', '山东', '即墨', '山东', '营业中'), ('D1050', '济宁永昌', '东区', '山东', '济宁', '山东', '营业中'), ('D1051', '青州宝隆', '东区', '山东', '青州', '山东', '营业中'), ('D1052', '章丘瑞和众达', '东区', '山东', '章丘', '山东', '营业中'), ('D1053', '东营巨丰', '东区', '山东', '东营', '山东', '营业中'), ('D1054', '临沂汇通', '东区', '山东', '临沂', '山东', '营业中'), ('D1055', '青岛金阳光', '东区', '山东', '青岛', '山东', '营业中'), ('D1056', '郓城中汇', '东区', '山东', '郓城', '山东', '营业中'), ('D1057', '胶州双龙源', '东区', '山东', '青岛', '山东', '营业中'), ('D1058', '青岛庚辰润通', '东区', '山东', '青岛', '山东', '营业中'), ('D1059', '莱州弘昌达', '东区', '山东', '莱州', '山东', '营业中'), ('D1060', '曲阜新东源', '东区', '山东', '曲阜', '山东', '营业中'), ('D1061', '临沂悦晟', '东区', '山东', '临沂', '山东', '营业中'), ('D1062', '邹城君之舆', '东区', '山东', '邹城', '山东', '营业中'), ('D1063', '莒县和瑞', '东区', '山东', '莒县', '山东', '营业中'), ('D1065', '广饶石大乐安', '东区', '山东', '东营', '山东', '营业中'), ('D1066', '邹平顺捷', '东区', '山东', '邹平', '山东', '营业中'), ('D1067', '莱山金泰莱', '东区', '山东', '烟台', '山东', '营业中'), ('D1068', '莱阳一弘', '东区', '山东', '莱阳', '山东', '营业中'), ('D1069', '莱西宝威恒盛', '东区', '山东', '莱西', '山东', '营业中'), ('D1070', '单县华汇', '东区', '山东', '单县', '山东', '营业中'), ('D1071', '昌乐烨丰（潍坊）', '东区', '山东', '潍坊', '山东', '营业中'), ('D1074', '沂水乔丰', '东区', '山东', '临沂', '山东', '营业中'), ('D1075', '海阳海嘉', '东区', '山东', '烟台', '山东', '营业中'), ('D1076', '梁山聚源', '东区', '山东', '济宁', '山东', '营业中'), ('D1077', '济南海源', '东区', '山东', '济南', '山东', '营业中'), ('D1078', '临朐基泰（潍坊）', '东区', '山东', '潍坊', '山东', '营业中'), ('D1101', '南京万帮', '东区', '江苏', '南京', '苏沪', '营业中'), ('D1102', '南京朗驰　　　　　', '东区', '江苏', '南京', '苏沪', '营业中'), ('D1103', '苏州新泰　　　　　', '东区', '江苏', '苏州', '苏沪', '营业中'), ('D1104', '无锡东方', '东区', '江苏', '无锡', '苏沪', '营业中'), ('D1106', '常州金田', '东区', '江苏', '常州', '苏沪', '营业中'), ('D1107', '扬州玉峰', '东区', '江苏', '扬州', '苏沪', '营业中'), ('D1108', '南通文峰', '东区', '江苏', '南通', '苏沪', '营业中'), ('D1109', '苏州华现', '东区', '江苏', '常熟', '苏沪', '营业中'), ('D1110', '苏州正旺', '东区', '江苏', '苏州', '苏沪', '营业中'), ('D1111', '徐州润东', '东区', '江苏', '徐州', '苏沪', '营业中'), ('D1112', '江阴海鹏', '东区', '江苏', '江阴', '苏沪', '营业中'), ('D1113', '昆山华腾', '东区', '江苏', '昆山', '苏沪', '营业中'), ('D1114', '连云港华驰', '东区', '江苏', '连云港', '苏沪', '营业中'), ('D1115', '常州明盛　', '东区', '江苏', '常州', '苏沪', '营业中'), ('D1116', '盐城森风振东', '东区', '江苏', '盐城', '苏沪', '营业中'), ('D1117', '镇江京鹏　　', '东区', '江苏', '镇江', '苏沪', '营业中'), ('D1118', '淮安润东', '东区', '江苏', '淮安', '苏沪', '营业中'), ('D1119', '南通富嘉', '东区', '江苏', '南通', '苏沪', '营业中'), ('D1120', '张家港宏伟', '东区', '江苏', '张家港', '苏沪', '营业中'), ('D1121', '宿迁苏驰', '东区', '江苏', '宿迁', '苏沪', '营业中'), ('D1122', '泰州宝天', '东区', '江苏', '泰州', '苏沪', '营业中'), ('D1123', '宜兴恒信', '东区', '江苏', '宜兴', '苏沪', '营业中'), ('D1124', '苏州东昌相诚', '东区', '江苏', '苏州', '苏沪', '营业中'), ('D1125', '溧阳顺达', '东区', '江苏', '溧阳', '苏沪', '营业中'), ('D1126', '南京国丰', '东区', '江苏', '南京', '苏沪', '已停业'), ('D1127', '丹阳京利', '东区', '江苏', '丹阳', '苏沪', '营业中'), ('D1128', '太仓华鳌', '东区', '江苏', '太仓', '苏沪', '营业中'), ('D1129', '吴江韩帮', '东区', '江苏', '吴江', '苏沪', '营业中'), ('D1130', '吴江嘉诚', '东区', '江苏', '吴江', '苏沪', '营业中'), ('D1131', '扬州宏远', '东区', '江苏', '扬州', '苏沪', '营业中'), ('D1132', '海门宝诚', '东区', '江苏', '海门', '苏沪', '营业中'), ('D1133', '南京金现', '东区', '江苏', '南京', '苏沪', '营业中'), ('D1134', '徐州润东苏企', '东区', '江苏', '徐州', '苏沪', '营业中'), ('D1135', '无锡东方鑫现', '东区', '江苏', '无锡', '苏沪', '营业中'), ('D1136', '苏州惠盈', '东区', '江苏', '苏州', '苏沪', '营业中'), ('D1137', '无锡嘉现', '东区', '江苏', '无锡', '苏沪', '营业中'), ('D1138', '兴化金鼎', '东区', '江苏', '兴化', '苏沪', '营业中'), ('D1139', '盐城宁泰', '东区', '江苏', '盐城', '苏沪', '营业中'), ('D1140', '常州飞悦', '东区', '江苏', '常州', '苏沪', '营业中'), ('D1141', '沭阳弘翔', '东区', '江苏', '沭阳', '苏沪', '营业中'), ('D1142', '溧水万帮金现', '东区', '江苏', '溧水', '苏沪', '营业中'), ('D1143', '淮安雨田鸿运', '东区', '江苏', '淮安', '苏沪', '营业中'), ('D1144', '张家港金港', '东区', '江苏', '张家', '苏沪', '营业中'), ('D1145', '邳州润东开隆', '东区', '江苏', '邳州', '苏沪', '营业中'), ('D1146', '南京克洛博', '东区', '江苏', '南京', '苏沪', '营业中'), ('D1147', '启东启粮文邦', '东区', '江苏', '启东', '苏沪', '营业中'), ('D1148', '新沂达骏洲运', '东区', '江苏', '新沂', '苏沪', '营业中'), ('D1149', '高淳万帮金现', '东区', '江苏', '高淳', '苏沪', '营业中'), ('D1150', '连云港现宇', '东区', '江苏', '连云', '苏沪', '营业中'), ('D1151', '南通新城世纪', '东区', '江苏', '南通', '苏沪', '营业中'), ('D1152', '无锡朗润', '东区', '江苏', '无锡', '苏沪', '营业中'), ('D1153', '常州惠盈', '东区', '江苏', '常州', '苏沪', '营业中'), ('D1154', '昆山森美', '东区', '江苏', '昆山', '苏沪', '营业中'), ('D1155', '如皋弘瑞', '东区', '江苏', '南通', '苏沪', '营业中'), ('D1158', '盱眙和盛', '东区', '江苏', '淮安', '苏沪', '营业中'), ('D1159', '扬州瑞丰时代', '东区', '江苏', '扬州', '苏沪', '营业中'), ('D1160', '南通文峰伟业', '东区', '江苏', '南通', '苏沪', '营业中'), ('D1161', '海安征程', '东区', '江苏', '南通', '苏沪', '营业中'), ('D1163', '句容鼎现', '东区', '江苏', '句容', '苏沪', '营业中'), ('D1164', '姜堰宝泰', '东区', '江苏', '泰州', '苏沪', '营业中'), ('D1165', '南通文峰嘉恒', '东区', '江苏', '南通', '苏沪', '营业中'), ('D1167', '金坛金驰', '东区', '江苏', '金坛', '苏沪', '营业中'), ('D1169', '江阴星现', '东区', '江苏', '江阴', '苏沪', '营业中'), ('D1201', '杭州韩通', '东区', '浙江', '杭州', '闽浙', '营业中'), ('D1203', '宁波海达', '东区', '浙江', '宁波', '闽浙', '营业中'), ('D1204', '温州奥奔', '东区', '浙江', '温州', '闽浙', '营业中'), ('D1205', '金华金京', '东区', '浙江', '金华', '闽浙', '营业中'), ('D1206', '嘉兴金腾', '东区', '浙江', '嘉兴', '闽浙', '营业中'), ('D1207', '义乌和邦', '东区', '浙江', '义乌', '闽浙', '营业中'), ('D1208', '杭州通达', '东区', '浙江', '杭州', '闽浙', '营业中'), ('D1209', '宁波天源　　　　', '东区', '浙江', '宁波', '闽浙', '营业中'), ('D1211', '湖州中北', '东区', '浙江', '湖州', '闽浙', '营业中'), ('D1212', '台州万和', '东区', '浙江', '台州', '闽浙', '营业中'), ('D1213', '绍兴海潮', '东区', '浙江', '绍兴', '闽浙', '营业中'), ('D1214', '慈溪京通', '东区', '浙江', '慈溪', '闽浙', '营业中'), ('D1215', '上虞瑞源', '东区', '浙江', '上虞', '闽浙', '营业中'), ('D1216', '台州泽宇', '东区', '浙江', '台州', '闽浙', '营业中'), ('D1217', '瑞安红日', '东区', '浙江', '瑞安', '闽浙', '营业中'), ('D1218', 'bh兴袍江韩通', '东区', '浙江', '绍兴', '闽浙', '营业中'), ('D1219', '衢州君悦', '东区', '浙江', '衢州', '闽浙', '营业中'), ('D1221', '丽水伊翔', '东区', '浙江', '丽水', '闽浙', '营业中'), ('D1222', '乐清大江', '东区', '浙江', '乐清', '闽浙', '营业中'), ('D1223', '海宁浩通', '东区', '浙江', '海宁', '闽浙', '营业中'), ('D1226', '宁波联众', '东区', '浙江', '宁波', '闽浙', '营业中'), ('D1227', '诸暨正大', '东区', '浙江', '诸暨', '闽浙', '营业中'), ('D1228', '东阳京达', '东区', '浙江', '东阳', '闽浙', '营业中'), ('D1230', '杭州金凯', '东区', '浙江', '杭州', '闽浙', '营业中'), ('D1232', '临海台运', '东区', '浙江', '临海', '闽浙', '营业中'), ('D1233', '桐乡兴田', '东区', '浙江', '桐乡', '闽浙', '营业中'), ('D1234', '永康韩龙', '东区', '浙江', '永康', '闽浙', '营业中'), ('D1235', '杭州和诚', '东区', '浙江', '杭州', '闽浙', '营业中'), ('D1236', '温州红盈', '东区', '浙江', '温州', '闽浙', '营业中'), ('D1237', '余姚舜驰', '东区', '浙江', '余姚', '闽浙', '营业中'), ('D1238', '杭州和诚西现', '东区', '浙江', '杭州', '闽浙', '营业中'), ('D1239', '温岭泽行', '东区', '浙江', '温岭', '闽浙', '营业中'), ('D1240', '嵊州广成八达', '东区', '浙江', '嵊州', '闽浙', '营业中'), ('D1241', '舟山霁锃', '东区', '浙江', '舟山', '闽浙', '营业中'), ('D1242', '苍南冠隆', '东区', '浙江', '苍南', '闽浙', '营业中'), ('D1243', '温州现盛', '东区', '浙江', '温州', '闽浙', '营业中'), ('D1244', '宁海翔源', '东区', '浙江', '宁海', '闽浙', '营业中'), ('D1246', '台州元现', '东区', '浙江', '台州', '闽浙', '营业中'), ('D1247', '长兴中现', '东区', '浙江', '长兴', '闽浙', '营业中'), ('D1248', '安吉中建', '东区', '浙江', '安吉', '闽浙', '营业中'), ('D1249', '温州金昌', '东区', '浙江', '温州', '闽浙', '营业中'), ('D1250', '平阳骏达', '东区', '浙江', '平阳', '闽浙', '营业中'), ('D1251', '义乌京皓', '东区', '浙江', '义乌', '闽浙', '营业中'), ('D1252', '杭州宝盈', '东区', '浙江', '杭州', '闽浙', '营业中'), ('D1253', '浦江金瑞', '东区', '浙江', '金华', '闽浙', '营业中'), ('D1254', '临安元信', '东区', '浙江', '杭州', '闽浙', '营业中'), ('D1255', '余杭中轿禾现', '东区', '浙江', '杭州', '闽浙', '营业中'), ('D1256', '丽水红旭', '东区', '浙江', '丽水', '闽浙', '营业中'), ('D1257', '嘉兴和诚嘉现', '东区', '浙江', '嘉兴', '闽浙', '营业中'), ('D1258', '江山恒大', '东区', '浙江', '衢州', '闽浙', '营业中'), ('D1259', '象山海达顺通', '东区', '浙江', '宁波', '闽浙', '营业中'), ('D1260', '桐庐海昌', '东区', '浙江', '桐庐', '闽浙', '营业中'), ('D1261', '金华金唯', '东区', '浙江', '金华', '闽浙', '营业中'), ('D1262', '富阳和诚富现', '东区', '浙江', '富阳', '闽浙', '营业中'), ('D1263', '慈溪嘉顺', '东区', '浙江', '慈溪', '闽浙', '营业中'), ('D1264', '德清嘉和', '东区', '浙江', '德清', '闽浙', '营业中'), ('D1265', '杭州昌鸿', '东区', '浙江', '杭州', '闽浙', '营业中'), ('D1301', '合肥伟光　　　　　', '南区', '安徽', '合肥', '中南', '营业中'), ('D1302', '芜湖亚夏　　　　　', '南区', '安徽', '芜湖', '中南', '营业中'), ('D1303', '安徽稳达', '南区', '安徽', '合肥', '中南', '营业中'), ('D1304', '蚌埠润通　　　　　', '南区', '安徽', '蚌埠', '中南', '营业中'), ('D1305', '安庆宜通', '南区', '安徽', '安庆', '中南', '营业中'), ('D1307', '阜阳飞达', '南区', '安徽', '阜阳', '中南', '营业中'), ('D1308', '巢湖南峰', '南区', '安徽', '巢湖', '中南', '营业中'), ('D1309', '宣城亚绅', '南区', '安徽', '宣城', '中南', '营业中'), ('D1310', '六安万通', '南区', '安徽', '六安', '中南', '营业中'), ('D1311', '蒙城瑞和', '南区', '安徽', '毫州', '中南', '营业中'), ('D1312', '马鞍山伟厚', '南区', '安徽', '马鞍山', '中南', '营业中'), ('D1313', '淮北北润', '南区', '安徽', '淮北', '中南', '营业中'), ('D1314', '黄山亚翔', '南区', '安徽', '黄山', '中南', '营业中'), ('D1315', '合肥伟合', '南区', '安徽', '合肥', '中南', '营业中'), ('D1316', '宿州万上', '南区', '安徽', '宿州', '中南', '营业中'), ('D1317', '淮南恒美', '南区', '安徽', '淮南', '中南', '营业中'), ('D1318', '铜陵金丰鑫海', '南区', '安徽', '铜陵', '中南', '营业中'), ('D1319', '滁州宁宝', '南区', '安徽', '滁州', '中南', '营业中'), ('D1320', '池州盛奇', '南区', '安徽', '池州', '中南', '营业中'), ('D1321', '合肥亚越', '南区', '安徽', '合肥', '中南', '营业中'), ('D1322', '亳州英豪', '南区', '安徽', '毫州', '中南', '营业中'), ('D1323', '阜阳伟田', '南区', '安徽', '阜阳', '中南', '营业中'), ('D1325', '安庆永通', '南区', '安徽', '安庆', '中南', '营业中'), ('D1326', '六安汇添', '南区', '安徽', '六安', '中南', '营业中'), ('D1401', '郑州裕华金阳光', '东区', '河南', '郑州', '河南', '营业中'), ('D1402', '郑州万佳捷泰', '东区', '河南', '郑州', '河南', '营业中'), ('D1403', '郑州长江', '东区', '河南', '郑州', '河南', '营业中'), ('D1404', '洛阳德众', '东区', '河南', '洛阳', '河南', '营业中'), ('D1406', '漯河润中', '东区', '河南', '漯河', '河南', '营业中'), ('D1407', '许昌亿阳', '东区', '河南', '洛阳', '河南', '营业中'), ('D1408', '安阳福尔福', '东区', '河南', '安阳', '河南', '营业中'), ('D1409', '焦作博大伟业', '东区', '河南', '焦作', '河南', '营业中'), ('D1410', '平顶山得普', '东区', '河南', '平顶山', '河南', '营业中'), ('D1411', '濮阳华瑞璞光', '东区', '河南', '濮阳', '河南', '营业中'), ('D1412', '新乡兆阳', '东区', '河南', '新乡', '河南', '营业中'), ('D1414', '信阳全程', '东区', '河南', '信阳', '河南', '营业中'), ('D1415', '鹤壁鹤海', '东区', '河南', '鹤壁', '河南', '营业中'), ('D1416', '商丘宝志', '东区', '河南', '商丘', '河南', '营业中'), ('D1417', '济源浩轩', '东区', '河南', '济源', '河南', '营业中'), ('D1418', '郑州北环', '东区', '河南', '郑州', '河南', '营业中'), ('D1419', '三门峡时尚博长', '东区', '河南', '三门峡', '河南', '营业中'), ('D1420', '开封天翔', '东区', '河南', '开封', '河南', '营业中'), ('D1421', '郑州天行健', '东区', '河南', '郑州', '河南', '营业中'), ('D1422', '驻马店腾麟', '东区', '河南', '驻马店', '河南', '营业中'), ('D1423', '南阳中澳', '东区', '河南', '南阳', '河南', '营业中'), ('D1424', '南阳威佳', '东区', '河南', '南阳', '河南', '营业中'), ('D1425', '洛阳德众胜达', '东区', '河南', '洛阳', '河南', '营业中'), ('D1426', '许昌双亿', '东区', '河南', '许昌', '河南', '营业中'), ('D1427', '周口长达', '东区', '河南', '周口', '河南', '营业中'), ('D1428', '新乡锦程', '东区', '河南', '新乡', '河南', '营业中'), ('D1429', '商丘天泽', '东区', '河南', '商丘', '河南', '营业中'), ('D1430', '安阳福尔福万源', '东区', '河南', '安阳', '河南', '营业中'), ('D1431', '灵宝长来', '东区', '河南', '三门峡', '河南', '营业中'), ('D1432', '永城金祥', '东区', '河南', '永城', '河南', '营业中'), ('D1433', '长垣大广', '东区', '河南', '新乡', '河南', '营业中'), ('D1434', '郑州恒业', '东区', '河南', '郑州', '河南', '营业中'), ('D1435', '平顶山瑞格', '东区', '河南', '平顶山', '河南', '营业中'), ('D1436', '驻马店腾威', '东区', '河南', '驻马店', '河南', '营业中'), ('D1437', '焦作博大兴业', '东区', '河南', '焦作', '河南', '营业中'), ('D1438', '信阳和润', '东区', '河南', '信阳', '河南', '营业中'), ('D1439', '濮阳璞润机电', '东区', '河南', '濮阳', '河南', '营业中'), ('D1440', '洛阳威佳', '东区', '河南', '洛阳', '河南', '营业中'), ('D1441', '洛阳众腾', '东区', '河南', '洛阳', '河南', '营业中'), ('D1442', '东安远达（新乡）', '东区', '河南', '新乡', '河南', '营业中'), ('D1444', '新郑天河', '东区', '河南', '新郑', '河南', '营业中'), ('D1501', '武汉华星　　　　　', '南区', '湖北', '武汉', '中南', '营业中'), ('D1502', '武汉欣瑞　　　　　', '南区', '湖北', '武汉', '中南', '营业中'), ('D1503', '襄阳神星', '南区', '湖北', '襄樊', '中南', '营业中'), ('D1504', '宜昌腾龙', '南区', '湖北', '宜昌', '中南', '营业中'), ('D1505', '武汉港田', '南区', '湖北', '武汉', '中南', '营业中'), ('D1506', '荆州恒信德龙', '南区', '湖北', '荆州', '中南', '营业中'), ('D1507', '十堰泽泰', '南区', '湖北', '十堰', '中南', '营业中'), ('D1508', '黄石新兴', '南区', '湖北', '黄石', '中南', '营业中'), ('D1509', '恩施恒星', '南区', '湖北', '恩施', '中南', '营业中'), ('D1510', '荆门恒信', '南区', '湖北', '荆门', '中南', '营业中'), ('D1511', '随州华强', '南区', '湖北', '随州', '中南', '营业中'), ('D1512', '咸宁恒信路通', '南区', '湖北', '咸宁', '中南', '营业中'), ('D1513', '孝感贤良', '南区', '湖北', '孝感', '中南', '营业中'), ('D1514', '武汉华星天佑', '南区', '湖北', '武汉', '中南', '营业中'), ('D1515', '黄冈新兴广源', '南区', '湖北', '黄冈', '中南', '营业中'), ('D1516', '武汉广恒', '南区', '湖北', '武汉', '中南', '营业中'), ('D1517', '武汉三环泽通', '南区', '湖北', '武汉', '中南', '营业中'), ('D1518', '宜昌恒信华通', '南区', '湖北', '宜昌', '中南', '营业中'), ('D1519', '襄阳永奥', '南区', '湖北', '襄阳', '中南', '营业中'), ('D1520', '十堰瑞实', '南区', '湖北', '十堰', '中南', '营业中'), ('D1521', '武汉泽泰融通', '南区', '湖北', '武汉', '中南', '营业中'), ('D1522', '仙桃仙旺', '南区', '湖北', '仙桃', '中南', '营业中'), ('D1523', '武汉恒信华通', '南区', '湖北', '武汉', '中南', '营业中'), ('D1524', '黄石新兴振宇', '南区', '湖北', '黄石', '中南', '营业中'), ('D1601', '贵阳乾通', '南区', '贵州', '贵州', '西南', '营业中'), ('D1603', '遵义千乘', '南区', '贵州', '遵义', '西南', '营业中'), ('D1604', '贵阳宏建东', '南区', '贵州', '贵阳', '西南', '营业中'), ('D1605', '贵阳安泰和', '南区', '贵州', '贵阳', '西南', '营业中'), ('D1606', '铜仁恒信华通', '南区', '贵州', '铜仁', '西南', '营业中'), ('D1607', '六盘水远现', '南区', '贵州', '六盘水', '西南', '营业中'), ('D1608', '安顺恒信德龙', '南区', '贵州', '安顺', '西南', '营业中'), ('D1609', '兴义林兴', '南区', '贵州', '兴义', '西南', '营业中'), ('D1610', '凯里恒信德龙', '南区', '贵州', '凯里', '西南', '营业中'), ('D1613', '毕节佰润京汉', '南区', '贵州', '毕节', '西南', '营业中'), ('D1701', '成都华星卓越', '南区', '四川', '成都', '川渝', '营业中'), ('D1702', '成都明嘉', '南区', '四川', '成都', '川渝', '营业中'), ('D1703', '成都港宏西物', '南区', '四川', '成都', '川渝', '营业中'), ('D1704', '绵阳新川萨', '南区', '四川', '绵阳', '川渝', '营业中'), ('D1706', '德阳名帝马', '南区', '四川', '德阳', '川渝', '营业中'), ('D1708', '眉山天威', '南区', '四川', '眉山', '川渝', '营业中'), ('D1709', '成都万吉', '南区', '四川', '成都', '川渝', '营业中'), ('D1710', '自贡新成', '南区', '四川', '自贡', '川渝', '营业中'), ('D1711', '成都鑫蓝', '南区', '四川', '成都', '川渝', '营业中'), ('D1713', '西昌鸿源', '南区', '四川', '西昌', '川渝', '营业中'), ('D1714', '南充天成', '南区', '四川', '南充', '川渝', '营业中'), ('D1715', '泸州都慧', '南区', '四川', '泸州', '川渝', '营业中'), ('D1716', '乐山天威', '南区', '四川', '乐山', '川渝', '营业中'), ('D1717', '成都先锋爱华', '南区', '四川', '成都', '川渝', '营业中'), ('D1718', '成都申蓉裕丰', '南区', '四川', '成都', '川渝', '营业中'), ('D1719', '达州禾林', '南区', '四川', '达州', '川渝', '营业中'), ('D1720', '宜宾尚远', '南区', '四川', '宜宾', '川渝', '营业中'), ('D1721', '广安天骄', '南区', '四川', '广安', '川渝', '营业中'), ('D1722', '成都金驿', '南区', '四川', '成都', '川渝', '营业中'), ('D1723', '广汉恩丽', '南区', '四川', '西昌', '川渝', '营业中'), ('D1724', '南充弘博天成', '南区', '四川', '南充', '川渝', '营业中'), ('D1725', '资阳港宏泰瑞', '南区', '四川', '资阳', '川渝', '营业中'), ('D1726', '遂宁瑞现', '南区', '四川', '遂宁', '川渝', '营业中'), ('D1727', '都江堰明嘉', '南区', '四川', '都江堰', '川渝', '营业中'), ('D1728', '攀枝花明嘉皓升', '南区', '四川', '攀枝花', '川渝', '营业中'), ('D1729', '绵阳汇平', '南区', '四川', '绵阳', '川渝', '营业中'), ('D1730', '雅安乾康', '南区', '四川', '雅安', '川渝', '营业中'), ('D1731', '内江利恒孚', '南区', '四川', '内江', '川渝', '营业中'), ('D1732', '崇州中鑫海新鑫', '南区', '四川', '崇州', '川渝', '营业中'), ('D1801', '昆明鑫源', '南区', '云南', '昆明', '西南', '营业中'), ('D1802', '昆明宝龙', '南区', '云南', '昆明', '西南', '营业中'), ('D1803', '玉溪诚远', '南区', '云南', '玉溪', '西南', '营业中'), ('D1804', '大理博源', '南区', '云南', '大理', '西南', '营业中'), ('D1805', '曲靖兴林', '南区', '云南', '曲靖', '西南', '营业中'), ('D1806', '瑞丽景泰', '南区', '云南', '瑞丽', '西南', '营业中'), ('D1807', '昭通和熠', '南区', '云南', '昭通', '西南', '营业中'), ('D1808', '开远裕隆', '南区', '云南', '西宁', '西南', '营业中'), ('D1809', '昆明庞大兴业', '南区', '云南', '昆明', '西南', '营业中'), ('D1810', '楚雄艺龙', '南区', '云南', '楚雄', '西南', '营业中'), ('D1811', '保山天马源', '南区', '云南', '保山', '西南', '营业中'), ('D1812', '昆明星瑞达毅', '南区', '云南', '昆明', '西南', '营业中'), ('D1814', '普洱普龙', '南区', '云南', '普洱', '西南', '营业中'), ('D1902', '西宁金岛', '北区', '青海', '西宁', '西北', '营业中'), ('D1903', '西宁金鳞宝', '北区', '青海', '西宁', '西北', '营业中'), ('D2001', '泉州中达', '东区', '福建', '泉州', '闽浙', '营业中'), ('D2002', '福州中诺　　　　　', '东区', '福建', '福州', '闽浙', '营业中'), ('D2003', '厦门国戎', '东区', '福建', '厦门', '闽浙', '营业中'), ('D2004', '泉州晋江远通', '东区', '福建', '晋江', '闽浙', '营业中'), ('D2005', '漳州捷诚', '东区', '福建', '漳州', '闽浙', '营业中'), ('D2006', '福建中源', '东区', '福建', '福州', '闽浙', '营业中'), ('D2007', '莆田奇奇', '东区', '福建', '莆田', '闽浙', '营业中'), ('D2008', '龙岩通顺', '东区', '福建', '龙岩', '闽浙', '营业中'), ('D2009', '三明兴闽', '东区', '福建', '三明', '闽浙', '营业中'), ('D2010', '南平龙鑫武夷', '东区', '福建', '南平', '闽浙', '营业中'), ('D2012', '宁德联丰中诺', '东区', '福建', '宁德', '闽浙', '营业中'), ('D2013', '福清吉诺', '东区', '福建', '福清', '闽浙', '营业中'), ('D2014', '厦门国贸启润', '东区', '福建', '厦门', '闽浙', '营业中'), ('D2015', '泉州华友', '东区', '福建', '泉州', '闽浙', '营业中'), ('D2018', '福州新锐', '东区', '福建', '福州', '闽浙', '营业中'), ('D2019', '龙岩中天', '东区', '福建', '龙岩', '闽浙', '营业中'), ('D2020', '厦门国贸宝润', '东区', '福建', '厦门', '闽浙', '营业中'), ('D2022', '漳浦安泰', '东区', '福建', '漳州', '闽浙', '营业中'), ('D2101', '广州南现', '南区', '广东', '清远', '广东', '营业中'), ('D2102', '深圳大胜　　　　　', '南区', '广东', '深圳', '广东', '营业中'), ('D2103', '广州羊城', '南区', '广东', '清远', '广东', '营业中'), ('D2104', '佛山泰鑫', '南区', '广东', '佛山', '广东', '营业中'), ('D2105', '顺德合现', '南区', '广东', '顺德', '广东', '营业中'), ('D2106', '广州宏现', '南区', '广东', '广州', '广东', '营业中'), ('D2107', '东莞永怡　　　', '南区', '广东', '东莞', '广东', '营业中'), ('D2108', '深圳顺和盈', '南区', '广东', '深圳', '广东', '营业中'), ('D2110', '东莞冠丰', '南区', '广东', '东莞', '广东', '营业中'), ('D2111', '深圳鹏峰', '南区', '广东', '深圳', '广东', '营业中'), ('D2112', '中山创现', '南区', '广东', '中山', '广东', '营业中'), ('D2114', '汕头合民', '南区', '广东', '汕头', '广东', '营业中'), ('D2115', '广州中现', '南区', '广东', '广州', '广东', '营业中'), ('D2116', '惠州展现', '南区', '广东', '惠州', '广东', '营业中'), ('D2117', '珠海华德', '南区', '广东', '珠海', '广东', '营业中'), ('D2118', '南海禅昌', '南区', '广东', '佛山', '广东', '营业中'), ('D2119', '广州龙腾', '南区', '广东', '广州', '广东', '营业中'), ('D2120', '揭阳群记', '南区', '广东', '揭阳', '广东', '营业中'), ('D2126', '佛山乐现', '南区', '广东', '佛山', '广东', '营业中'), ('D2127', '肇庆美现', '南区', '广东', '肇庆', '广东', '营业中'), ('D2128', '茂名卓粤', '南区', '广东', '茂名', '广东', '营业中'), ('D2129', '湛江中富', '南区', '广东', '湛江', '广东', '营业中'), ('D2131', '东莞大朗世达', '南区', '广东', '东莞', '广东', '营业中'), ('D2133', '深圳新力达', '南区', '广东', '深圳', '广东', '营业中'), ('D2134', '东莞广泰', '南区', '广东', '东莞', '广东', '营业中'), ('D2135', '增城伟加', '南区', '广东', '广州', '广东', '营业中'), ('D2136', '江门瑞华宏现', '南区', '广东', '江门', '广东', '营业中'), ('D2137', '惠州三惠', '南区', '广东', '惠州', '广东', '营业中'), ('D2138', '韶关联现', '南区', '广东', '韶关', '广东', '营业中'), ('D2139', '广州东奇', '南区', '广东', '广州', '广东', '营业中'), ('D2140', '河源冠丰行', '南区', '广东', '河源', '广东', '营业中'), ('D2141', '中山创世纪城南', '南区', '广东', '中山', '广东', '营业中'), ('D2142', '梅州宏达', '南区', '广东', '梅州', '广东', '营业中'), ('D2143', '清远泰翔', '南区', '广东', '清远', '广东', '营业中'), ('D2144', '潮州南熙', '南区', '广东', '潮州', '广东', '营业中'), ('D2145', '东莞东胜', '南区', '广东', '东莞', '广东', '营业中'), ('D2146', '阳江京泰', '南区', '广东', '阳江', '广东', '营业中'), ('D2147', '中山中启', '南区', '广东', '中山', '广东', '营业中'), ('D2148', '云浮美轮运现', '南区', '广东', '云浮', '广东', '营业中'), ('D2149', '东莞金世达', '南区', '广东', '东莞', '广东', '营业中'), ('D2150', '江门精文', '南区', '广东', '江门', '广东', '营业中'), ('D2151', '深圳昊天林', '南区', '广东', '深圳', '广东', '营业中'), ('D2152', '深圳威博', '南区', '广东', '深圳', '广东', '营业中'), ('D2201', '南昌国力', '南区', '江西', '南昌', '中南', '营业中'), ('D2205', '萍乡国力燎原', '南区', '江西', '萍乡', '中南', '营业中'), ('D2206', '九江金穗', '南区', '江西', '九江', '中南', '营业中'), ('D2207', '上饶宏旭', '南区', '江西', '上饶', '中南', '营业中'), ('D2208', '宜春和丰', '南区', '江西', '宜春', '中南', '营业中'), ('D2209', '南昌华美', '南区', '江西', '南昌', '中南', '营业中'), ('D2210', '赣州国力赣源', '南区', '江西', '赣州', '中南', '营业中'), ('D2211', '吉安上峰', '南区', '江西', '吉安', '中南', '营业中'), ('D2212', '抚州华宏金鑫', '南区', '江西', '长沙', '中南', '营业中'), ('D2213', '新余和元', '南区', '江西', '新余', '中南', '营业中'), ('D2214', '景德镇璟瞳', '南区', '江西', '景德镇', '中南', '营业中'), ('D2215', '赣州华宏', '南区', '江西', '赣州', '中南', '营业中'), ('D2216', '南昌金汇', '南区', '江西', '南昌', '中南', '营业中'), ('D2218', '九江浔瑞', '南区', '江西', '九江', '中南', '营业中'), ('D2219', '鄱阳加西亚现泰', '南区', '江西', '上饶', '中南', '营业中'), ('D2220', '南昌汇银', '南区', '江西', '南昌', '中南', '营业中'), ('D2221', '鹰潭弘鹰', '南区', '江西', '鹰潭', '中南', '营业中'), ('D2222', '上饶华宏名现', '北区', '辽宁', '上饶', '东北', '营业中'), ('D2301', '长沙华运达', '南区', '湖南', '长沙', '西南', '营业中'), ('D2302', '长沙瑞特　　　　', '南区', '湖南', '长沙', '西南', '营业中'), ('D2304', '衡阳华利', '南区', '湖南', '衡阳', '西南', '营业中'), ('D2305', '常德星都', '南区', '湖南', '常德', '西南', '营业中'), ('D2306', '湘潭九城', '南区', '湖南', '湘潭', '西南', '营业中'), ('D2307', '郴州京湘', '南区', '湖南', '郴州', '西南', '营业中'), ('D2308', '株洲蓝代', '南区', '湖南', '株洲', '西南', '营业中'), ('D2309', '岳阳梦达', '南区', '湖南', '岳阳', '西南', '营业中'), ('D2310', '娄底和轩', '南区', '湖南', '娄底', '西南', '营业中'), ('D2311', '邵阳宝京', '南区', '湖南', '邵阳', '西南', '营业中'), ('D2312', '益阳蓝马', '南区', '湖南', '益阳', '西南', '营业中'), ('D2313', '长沙世代', '南区', '湖南', '长沙', '西南', '营业中'), ('D2314', '永州永通华悦', '南区', '湖南', '永州', '西南', '营业中'), ('D2315', '湘潭九现', '南区', '湖南', '湘潭', '西南', '营业中'), ('D2316', '株洲蓝现', '南区', '湖南', '株洲', '西南', '营业中'), ('D2317', '长沙中拓瑞达', '南区', '湖南', '长沙', '西南', '营业中'), ('D2318', '长沙韩顺', '南区', '湖南', '长沙', '西南', '营业中'), ('D2319', '长沙永通华盛', '南区', '湖南', '长沙', '西南', '营业中'), ('D2320', '衡阳铭星', '南区', '湖南', '衡阳', '西南', '营业中'), ('D2321', '浏阳中拓瑞晟', '南区', '湖南', '浏阳', '西南', '营业中'), ('D2322', '怀化永通华峰', '南区', '湖南', '怀化', '西南', '营业中'), ('D2323', '常德双星星润', '南区', '湖南', '常德', '西南', '营业中'), ('D2401', '海南京城', '南区', '海南', '海口', '广东', '营业中'), ('D2402', '三亚骏诚', '南区', '海南', '三亚', '广东', '营业中'), ('D2403', '海口华诚', '南区', '海南', '海口', '广东', '营业中'), ('D2501', '哈尔滨百丰', '北区', '黑龙江', '哈尔滨', '东北', '营业中'), ('D2502', '哈尔滨亿发鸿运', '北区', '黑龙江', '哈尔滨', '东北', '营业中'), ('D2503', '大庆润达新亚', '北区', '黑龙江', '大庆', '东北', '营业中'), ('D2505', '佳木斯中天驭风', '北区', '黑龙江', '佳木斯', '东北', '营业中'), ('D2506', '齐齐哈尔瑞宝宏通', '北区', '黑龙江', '齐齐哈尔', '东北', '营业中'), ('D2507', '牡丹江百强丰源', '北区', '黑龙江', '牡丹江', '东北', '营业中'), ('D2508', '七台河隆达', '北区', '黑龙江', '七台河', '东北', '营业中'), ('D2509', '北安成功万邦', '北区', '黑龙江', '北安', '东北', '营业中'), ('D2510', '大庆业勤鸿润', '北区', '黑龙江', '大庆', '东北', '营业中'), ('D2511', '齐齐哈尔骏发', '北区', '黑龙江', '齐齐', '东北', '营业中'), ('D2512', '绥化圣亚', '北区', '黑龙江', '绥化', '东北', '营业中'), ('D2514', '哈尔滨利泰', '北区', '黑龙江', '哈尔滨', '东北', '营业中'), ('D2515', '哈尔滨汇华', '北区', '黑龙江', '哈尔滨', '东北', '营业中'), ('D2516', '鸡西隆达鑫煜', '北区', '黑龙江', '鸡西', '东北', '营业中'), ('D2601', '长春华众　　　　　', '北区', '吉林', '长春', '东北', '营业中'), ('D2602', '吉林宏利源', '北区', '吉林', '松原', '东北', '营业中'), ('D2603', '延吉中诚', '北区', '吉林', '鞍山', '东北', '营业中'), ('D2604', '四平鑫韩亚', '北区', '吉林', '四平', '东北', '营业中'), ('D2605', '通化华阳', '北区', '吉林', '通化', '东北', '营业中'), ('D2606', '松原子余', '北区', '吉林', '延吉', '东北', '营业中'), ('D2607', '长春韩亚', '北区', '吉林', '吉林', '东北', '营业中'), ('D2608', '吉林荣阳', '北区', '吉林', '吉林', '东北', '营业中'), ('D2609', '梅河口广通', '北区', '吉林', '梅河', '东北', '营业中'), ('D2610', '长春瑞威', '北区', '吉林', '长春', '东北', '营业中'), ('D2611', '辽源洪鑫', '北区', '吉林', '辽源', '东北', '营业中'), ('D2612', '长春成铭', '北区', '吉林', '长春', '东北', '营业中'), ('D2613', '延吉天鸿', '北区', '吉林', '延吉', '东北', '营业中'), ('D2615', '白山益信', '北区', '吉林', '白山', '东北', '营业中'), ('D2701', '大连鸿富佳', '北区', '辽宁', '丹东', '东北', '营业中'), ('D2702', '沈阳汇众', '北区', '辽宁', '营口', '东北', '营业中'), ('D2703', '沈阳路鑫　　　　　', '北区', '辽宁', '沈阳', '东北', '营业中'), ('D2705', '营口金富佳', '北区', '辽宁', '营口', '东北', '营业中'), ('D2706', '盘锦永盛', '北区', '辽宁', '沈阳', '东北', '营业中'), ('D2707', '锦州鑫汇众', '北区', '辽宁', '辽阳', '东北', '营业中'), ('D2708', '葫芦岛路赛得', '北区', '辽宁', '锦州', '东北', '营业中'), ('D2709', '辽阳天合', '北区', '辽宁', '盘锦', '东北', '营业中'), ('D2710', '抚顺金博众', '北区', '辽宁', '葫芦岛', '东北', '营业中'), ('D2711', '鞍山鑫路鑫', '北区', '辽宁', '朝阳', '东北', '营业中'), ('D2712', '朝阳吉安', '北区', '辽宁', '大连', '东北', '营业中'), ('D2713', '沈阳通孚兴邦', '北区', '辽宁', '沈阳', '东北', '营业中'), ('D2714', '铁岭北方晟源', '北区', '辽宁', '鞍山', '东北', '营业中'), ('D2715', '丹东东盛', '北区', '辽宁', '抚顺', '东北', '营业中'), ('D2716', '大连鑫昱佳', '北区', '辽宁', '大连', '东北', '营业中'), ('D2717', '沈阳汇鑫', '北区', '辽宁', '沈阳', '东北', '营业中'), ('D2718', '沈阳京源鸿业', '北区', '辽宁', '沈阳', '东北', '营业中'), ('D2719', '大连汇航', '北区', '辽宁', '大连', '东北', '营业中'), ('D2720', '沈阳庞大华明', '北区', '辽宁', '沈阳', '东北', '营业中'), ('D2721', '本溪汇丰', '北区', '辽宁', '本溪', '东北', '营业中'), ('D2722', '阜新汇龙', '北区', '辽宁', '阜新', '东北', '营业中'), ('D2723', '鞍山汇阳', '北区', '辽宁', '鞍山', '东北', '营业中'), ('D2724', '大连汇明', '北区', '辽宁', '大连', '东北', '营业中'), ('D2725', '瓦房店恒岳伟业', '北区', '辽宁', '瓦房店', '东北', '营业中'), ('D2726', '大连金汇航', '北区', '辽宁', '大连', '东北', '营业中'), ('D2801', '石家庄骏通', '北区', '河北', '石家庄', '华北', '营业中'), ('D2802', '秦皇岛瑞通　　', '北区', '河北', '秦皇岛', '华北', '营业中'), ('D2803', '保定轩宇', '北区', '河北', '保定', '华北', '营业中'), ('D2804', '石家庄盛文', '北区', '河北', '石家庄', '华北', '营业中'), ('D2805', '邯郸嘉华', '北区', '河北', '邯郸', '华北', '营业中'), ('D2806', '唐山海洋', '北区', '河北', '唐山', '华北', '营业中'), ('D2807', '邢台京鹏', '北区', '河北', '邢台', '华北', '营业中'), ('D2808', '唐山冀东广大', '北区', '河北', '唐山', '华北', '营业中'), ('D2810', '衡水德昌', '北区', '河北', '衡水', '华北', '营业中'), ('D2811', '张家口美华', '北区', '河北', '张家口', '华北', '营业中'), ('D2812', '廊坊瑞龙', '北区', '河北', '廊坊', '华北', '营业中'), ('D2813', '石家庄广德行', '北区', '河北', '石家庄', '华北', '营业中'), ('D2814', '承德冀东乐业', '北区', '河北', '承德', '华北', '营业中'), ('D2815', '保定天华', '北区', '河北', '保定', '华北', '营业中'), ('D2817', '涿州朝阳世纪', '北区', '河北', '涿州', '华北', '营业中'), ('D2819', '沧州恒源', '北区', '河北', '沧州', '华北', '营业中'), ('D2820', '霸州亿龙 ', '北区', '河北', '霸州', '华北', '营业中'), ('D2821', '邯郸森嘉', '北区', '河北', '邯郸', '华北', '营业中'), ('D2822', '沧州安捷', '北区', '河北', '沧州', '华北', '营业中'), ('D2823', '唐山庞大广盛', '北区', '河北', '唐山', '华北', '营业中'), ('D2824', '张家口泰成达', '北区', '河北', '张家', '华北', '营业中'), ('D2825', '石家庄天徽志远', '北区', '河北', '石家', '华北', '营业中'), ('D2826', '邯郸华宝', '北区', '河北', '邯郸', '华北', '营业中'), ('D2827', '衡水衡冲', '北区', '河北', '衡水', '华北', '营业中'), ('D2828', '沧州蓝池泰龙', '北区', '河北', '沧州', '华北', '营业中'), ('D2829', '邢台德翔', '北区', '河北', '邢台', '华北', '营业中'), ('D2830', '秦皇岛庞大广盈', '北区', '河北', '秦皇', '华北', '营业中'), ('D2831', '迁安庞大广发', '北区', '河北', '迁安', '华北', '营业中'), ('D2832', '保定骊致', '北区', '河北', '保定', '华北', '营业中'), ('D2833', '邯郸远洋', '北区', '河北', '邯郸', '华北', '营业中'), ('D2834', '任丘宏丰', '北区', '河北', '任丘', '华北', '营业中'), ('D2835', '邢台德瑞达', '北区', '河北', '邢台', '华北', '营业中'), ('D2836', '石家庄国和众现达', '北区', '河北', '石家庄', '华北', '营业中'), ('D2837', '保定嘉通', '北区', '河北', '保定', '华北', '营业中'), ('D2838', '遵化庞大广鸿', '北区', '河北', '遵化', '华北', '营业中'), ('D2839', '廊坊万运', '北区', '河北', '廊坊', '华北', '营业中'), ('D2840', '武安悦华', '北区', '河北', '武安', '华北', '营业中'), ('D2841', '邯郸恒信华通', '北区', '河北', '邯郸', '华北', '营业中'), ('D2842', '正定正博', '北区', '河北', '石家庄', '华北', '营业中'), ('D2843', '高碑店盛世金鼎', '北区', '河北', '高碑店', '华北', '营业中'), ('D2844', '定州轩宇瑞浩', '北区', '河北', '定州', '华北', '营业中'), ('D2847', '承德万森', '北区', '河北', '承德', '华北', '营业中'), ('D2901', '太原茂元　　　　　', '北区', '山西', '太原', '蒙晋', '营业中'), ('D2902', '太原黄河', '北区', '山西', '太原', '蒙晋', '营业中'), ('D2903', '临汾嘉信　　　　　', '北区', '山西', '临汾', '蒙晋', '营业中'), ('D2904', '运城泽龙', '北区', '山西', '运城', '蒙晋', '营业中'), ('D2906', '太原恒润', '北区', '山西', '太原', '蒙晋', '营业中'), ('D2907', '大同国贸', '北区', '山西', '大同', '蒙晋', '营业中'), ('D2908', '晋城澜港', '北区', '山西', '晋城', '蒙晋', '营业中'), ('D2909', '长治宵云', '北区', '山西', '长治', '蒙晋', '营业中'), ('D2910', '介休通鑫荣兴', '北区', '山西', '介休', '蒙晋', '营业中'), ('D2911', '吕梁金谷泓龙', '北区', '山西', '吕梁', '蒙晋', '营业中'), ('D2915', '阳泉鼎晟', '北区', '山西', '阳泉', '蒙晋', '营业中'), ('D2916', '河津晋诚', '北区', '山西', '河津', '蒙晋', '营业中'), ('D2917', '临汾天健英华', '北区', '山西', '临汾', '蒙晋', '营业中'), ('D2918', '朔州鹏远', '北区', '山西', '朔州', '蒙晋', '营业中'), ('D2919', '忻州唯众', '北区', '山西', '忻州', '蒙晋', '营业中'), ('D2920', '长治云烨', '北区', '山西', '长治', '蒙晋', '营业中'), ('D2921', '晋中香山', '北区', '山西', '晋中', '蒙晋', '营业中'), ('D2922', '晋城瀚港', '北区', '山西', '晋城', '蒙晋', '营业中'), ('D2923', '大同庞大明悦', '北区', '山西', '大同', '蒙晋', '营业中'), ('D2924', '阳泉海东', '北区', '山西', '阳泉', '蒙晋', '营业中'), ('D2925', '高平丹枫', '北区', '山西', '高平', '蒙晋', '营业中'), ('D2926', '运城彩虹世缘', '北区', '山西', '运城', '蒙晋', '营业中'), ('D2927', '运城鑫田', '北区', '山西', '运城', '蒙晋', '营业中'), ('D2929', '太原传奇', '北区', '山西', '太原', '蒙晋', '营业中'), ('D3001', '西安福达　　　　', '北区', '陕西', '西安', '西北', '营业中'), ('D3002', '西安华中　　　　', '北区', '陕西', '西安', '西北', '营业中'), ('D3003', '西安彤立江', '北区', '陕西', '西安', '西北', '营业中'), ('D3004', '榆林莱特　　　　', '北区', '陕西', '榆林', '西北', '营业中'), ('D3005', '榆林志成', '北区', '陕西', '榆林', '西北', '营业中'), ('D3006', '延安宏业', '北区', '陕西', '延安', '西北', '营业中'), ('D3007', '渭南华兴', '北区', '陕西', '渭南', '西北', '营业中'), ('D3008', '宝鸡蓝天', '北区', '陕西', '宝鸡', '西北', '营业中'), ('D3009', '汉中庞大冀祥', '北区', '陕西', '汉中', '西北', '营业中'), ('D3010', '西安安利达', '北区', '陕西', '西安', '西北', '营业中'), ('D3011', '榆林庞大华明', '北区', '陕西', '榆林', '西北', '营业中'), ('D3012', '西安庞大明祥', '北区', '陕西', '西安', '西北', '营业中'), ('D3013', '安康众诚', '北区', '陕西', '安康', '西北', '营业中'), ('D3014', '神木天河', '北区', '陕西', '榆林', '西北', '营业中'), ('D3015', '商洛泽泰瑞源', '北区', '陕西', '商洛', '西北', '营业中'), ('D3016', '咸阳荣华', '北区', '陕西', '咸阳', '西北', '营业中'), ('D3017', '咸阳鸿秦', '北区', '陕西', '咸阳', '西北', '营业中'), ('D3019', '铜川泽泰盛世', '北区', '陕西', '铜川', '西北', '营业中'), ('D3020', '渭南新盛', '北区', '陕西', '渭南', '西北', '营业中'), ('D3101', '兰州新力', '北区', '陕西', '兰州', '西北', '营业中'), ('D3102', '兰州永丰', '北区', '甘肃', '兰州', '西北', '营业中'), ('D3103', '兰州通汇', '北区', '甘肃', '兰州', '西北', '营业中'), ('D3104', '嘉峪关飞瑞', '北区', '甘肃', '嘉峪关', '西北', '营业中'), ('D3105', '兰州金岛兴合', '北区', '甘肃', '兰州', '西北', '营业中'), ('D3106', '天水永林', '北区', '甘肃', '天水', '西北', '营业中'), ('D3107', '庆阳东盛', '北区', '甘肃', '庆阳', '西北', '营业中'), ('D3108', '平凉恒信华通', '北区', '甘肃', '平凉', '西北', '营业中'), ('D3109', '白银恒信华通', '北区', '甘肃', '白银', '西北', '营业中'), ('D3110', '张掖银通', '北区', '甘肃', '张掖', '西北', '营业中'), ('D3111', '定西恒信华通', '北区', '甘肃', '定西', '西北', '营业中'), ('D3112', '庆阳天驰嘉晟', '北区', '甘肃', '庆阳', '西北', '营业中'), ('D4001', '乌鲁木齐捷康', '北区', '新疆', '乌鲁木齐', '西北', '营业中'), ('D4002', '乌鲁木齐博望', '北区', '新疆', '乌鲁木齐', '西北', '营业中'), ('D4003', '库尔勒永达', '北区', '新疆', '库尔勒', '西北', '营业中'), ('D4004', '克拉玛依天捷', '北区', '新疆', '克拉', '西北', '营业中'), ('D4005', '昌吉庞大全汇', '北区', '新疆', '昌吉', '西北', '营业中'), ('D4006', '阿克苏银丰', '北区', '新疆', '阿克', '西北', '营业中'), ('D4007', '乌鲁木齐天汇华嘉', '北区', '新疆', '乌鲁', '西北', '营业中'), ('D4008', '天汇华鹏', '北区', '新疆', '哈密', '西北', '营业中'), ('D4009', '伊犁宏威', '北区', '新疆', '伊犁', '西北', '营业中'), ('D4010', '喀什华力', '北区', '新疆', '喀什', '西北', '营业中'), ('D4011', '乌鲁木齐鸿盛丰', '北区', '新疆', '乌鲁木齐', '西北', '营业中'), ('D4012', '奎屯嘉丰', '北区', '新疆', '奎屯', '西北', '营业中'), ('D4102', '拉萨康达', '南区', '西藏', '拉萨', '川渝', '营业中'), ('D4201', '桂林顺景', '南区', '广西', '桂林', '广东', '营业中'), ('D4202', '南宁通源', '南区', '广西', '南宁', '广东', '营业中'), ('D4203', '南宁鑫广达', '南区', '广西', '南宁', '广东', '营业中'), ('D4204', '柳州中冠', '南区', '广西', '柳州', '广东', '营业中'), ('D4207', '玉林得利', '南区', '广西', '玉林', '广东', '营业中'), ('D4208', '柳州恒翔', '南区', '广西', '柳州', '广东', '营业中'), ('D4209', '贵港中博', '南区', '广西', '贵港', '广东', '营业中'), ('D4210', '钦州恒骋', '南区', '广西', '钦州', '广东', '营业中'), ('D4211', '梧州金欣', '南区', '广东', '梧州', '广东', '营业中'), ('D4212', '南宁全越', '南区', '广西', '南宁', '广东', '营业中'), ('D4213', '河池明远', '南区', '广东', '河池', '广东', '营业中'), ('D4302', '包头蒙驰', '北区', '内蒙', '包头', '蒙晋', '营业中'), ('D4303', '呼市鹏顺', '北区', '内蒙', '呼和浩特', '蒙晋', '营业中'), ('D4304', '鄂尔多斯蒙天', '北区', '内蒙', '鄂尔多斯', '蒙晋', '营业中'), ('D4305', '赤峰蒙恒', '北区', '内蒙', '赤峰', '蒙晋', '营业中'), ('D4306', '呼伦贝尔友邦', '北区', '内蒙', '呼伦贝尔', '蒙晋', '营业中'), ('D4307', '锡林郭勒威利斯', '北区', '内蒙', '锡林郭勒', '蒙晋', '营业中'), ('D4308', '乌海蒙达通', '北区', '内蒙', '乌海', '蒙晋', '营业中'), ('D4309', '呼和浩特庞大明祥', '北区', '内蒙', '呼和浩特', '蒙晋', '营业中'), ('D4310', '通辽万鑫', '北区', '内蒙', '通辽', '蒙晋', '营业中'), ('D4311', '鄂尔多斯庞大华明', '北区', '内蒙', '鄂尔多斯', '蒙晋', '营业中'), ('D4312', '巴彦淖尔丰圣', '北区', '内蒙', '巴彦', '蒙晋', '营业中'), ('D4313', '包头庞大庆祥', '北区', '内蒙', '包头', '蒙晋', '营业中'), ('D4314', '兴安盟泰信', '北区', '内蒙', '兴安', '蒙晋', '营业中'), ('D4315', '庞大广鹤', '北区', '内蒙', '乌兰察布', '蒙晋', '营业中'), ('D4316', '包头金冠', '北区', '内蒙', '包头', '蒙晋', '营业中'), ('D4318', '内蒙古丰胜', '北区', '内蒙', '呼和浩特', '蒙晋', '营业中'), ('D4319', '包头蒙兴', '北区', '内蒙', '包头', '蒙晋', '营业中'), ('D4322', '鄂尔多斯利丰天孚', '北区', '内蒙', '鄂尔多斯', '蒙晋', '营业中'), ('D4402', '银川德联', '北区', '宁夏', '银川', '西北', '营业中'), ('D4403', '银川好世界', '北区', '宁夏', '银川', '西北', '营业中'), ('D4404', '银川天创', '北区', '宁夏', '银川', '西北', '营业中'), ('D4405', '吴忠恒信华通', '北区', '宁夏', '吴忠', '西北', '营业中'), ('D4406', '固原磊腾', '北区', '宁夏', '固原', '西北', '营业中'), ('D4407', '石嘴山京石', '北区', '宁夏', '石嘴山', '西北', '营业中'), ('dddddd', 'asdfadsfsdfdf', null, null, null, 'xxxx', 'asdf'), ('DRS01', '管理员', '北区', '北京', '北京', '华北', '已停业'), ('nnnn', 'xxxx', null, null, null, null, null), ('ntgdasf', 'adsf', null, null, null, null, null), ('poiuyt', 'oiuytr', null, null, null, null, null), ('qwerty', 'sdvb', null, null, null, null, null), ('wwww', 'wwww', '东区', '北京', null, '河南', '已停业'), ('xx', 'aa', null, null, null, null, null), ('xxxx', 'sadfds', 'asdf', 'xx', null, null, '已停业'), ('xxxxqqqqq', 'sadfds', 'asdf', 'xx', null, null, '已停业'), ('xxxxx', 'xxxxxx', null, null, null, null, null), ('爱的色放多少分的', 'daf', null, null, null, null, null);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
