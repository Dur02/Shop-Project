/*
 Navicat Premium Data Transfer

 Source Server         : mysqldb
 Source Server Type    : MySQL
 Source Server Version : 50623
 Source Host           : localhost:3306
 Source Schema         : shop

 Target Server Type    : MySQL
 Target Server Version : 50623
 File Encoding         : 65001

 Date: 02/12/2020 21:59:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ec_article
-- ----------------------------
DROP TABLE IF EXISTS `ec_article`;
CREATE TABLE `ec_article`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TYPE_CODE` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TITLE` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `SUPPLIER` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PRICE` double NULL DEFAULT NULL,
  `DISCOUNT` double NULL DEFAULT NULL,
  `LOCALITY` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PUTAWAY_DATE` datetime(0) NULL DEFAULT NULL,
  `STORAGE` int(11) NULL DEFAULT 100,
  `IMAGE` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DESCRIPTION` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATE_DATE` datetime(0) NULL DEFAULT NULL,
  `DISABLED` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `FK_ARTICLE_TYPE`(`TYPE_CODE`) USING BTREE,
  CONSTRAINT `FK_ARTICLE_TYPE` FOREIGN KEY (`TYPE_CODE`) REFERENCES `ec_article_type` (`CODE`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ec_article
-- ----------------------------
INSERT INTO `ec_article` VALUES (1, '00010001', 'Cetaphil丝塔芙洗面奶(法国) 200ml 极其温和的配方 卓越的保湿功效 严谨的生产方式 ', ' Cetaphil丝塔芙洗面奶', 108, 0.7, ' 法国', '2013-03-31 00:00:00', 22, '20130331_1_1.jpg', 'Cetaphil丝塔芙洗面奶(法国) 200ml 极其温和的配方 卓越的保湿功效 严谨的生产方式 ', '2013-03-31 00:00:00', 0);
INSERT INTO `ec_article` VALUES (2, '00010001', 'Cetaphil丝塔芙洁面乳 118ml 全美皮肤科及儿科医师推荐品牌 极其温和的配方，卓越的保湿功效 严谨的生产方式，众多明星推荐 ', 'Cetaphil丝塔芙洁面乳 118ml', 58, 0.7, 'Cetaphil丝塔芙洁面乳', '2013-03-31 00:00:00', 1002, '20130331_1_2.jpg', 'Cetaphil丝塔芙洁面乳 118ml 全美皮肤科及儿科医师推荐品牌 极其温和的配方，卓越的保湿功效 严谨的生产方式，众多明星推荐 ', '2013-03-31 00:00:00', 0);
INSERT INTO `ec_article` VALUES (3, '00010001', 'Cetaphil丝塔芙洁面乳 237ml 名副其实的洁面冠军 无与伦比的温和洁面新体验 所有肤质全部适用 ', 'Cetaphil丝塔芙洁面乳 237ml', 118, 0.7, '丝塔芙洁面乳 ', '2013-03-31 00:00:00', 22, '20130331_1_3.jpg', 'Cetaphil丝塔芙洁面乳 237ml 名副其实的洁面冠军 无与伦比的温和洁面新体验 所有肤质全部适用 ', '2013-03-31 00:00:00', 0);
INSERT INTO `ec_article` VALUES (4, '00010001', '洗颜专科柔澈泡沫洁面乳 120g(资生堂授权特供)(多款包装,随机发货) 屈臣氏畅销硬货之一，在网络上也拥有无数的好评 洁面产品中首次推出的超细腻超丰富泡沫 适合各种肌肤的洁面产品 ', '洗颜专科 柔澈泡沫洁面乳 120g', 45, 0.7, '资生堂授权特供', '2013-03-31 00:00:00', 10022, '20130331_1_4.jpg', '洗颜专科柔澈泡沫洁面乳 120g(资生堂授权特供)(多款包装,随机发货) 屈臣氏畅销硬货之一，在网络上也拥有无数的好评 洁面产品中首次推出的超细腻超丰富泡沫 适合各种肌肤的洁面产品 ', '2013-03-31 00:00:00', 0);
INSERT INTO `ec_article` VALUES (5, '00010001', 'Cetaphil丝塔芙洁面乳 591ml 极其温和的配方 卓越的保湿功效 严谨的生产方式 ', 'Cetaphil丝塔芙洁面乳 591ml', 198, 0.7, 'Cetaphil丝塔芙洁面乳', '2013-03-31 00:00:00', 100, '20130331_1_5.jpg', 'Cetaphil丝塔芙洁面乳 591ml 极其温和的配方 卓越的保湿功效 严谨的生产方式 ', '2013-03-31 00:00:00', 0);
INSERT INTO `ec_article` VALUES (6, '00010001', '欧莱雅 (L\'Oreal)清润 泡沫洁面膏 125ml 深层清洁 滋养肌肤 保持清新 ', ' 欧莱雅清润 泡沫洁面膏', 88, 0.7, '泡沫洁面膏', '2013-03-31 00:00:00', 100, '20130331_1_6.jpg', '欧莱雅 (L\'Oreal)清润 泡沫洁面膏 125ml 深层清洁 滋养肌肤 保持清新 ', '2013-03-31 00:00:00', 0);
INSERT INTO `ec_article` VALUES (7, '00010001', '比度克 (BeDook)抗痘控油洁面膏 60g(两款包装随机发货) 祛痘第一步 痘肌必备清洁法宝 抑痘防感染洁面 解除油光危“肌” 洁面控油 杀菌抑痘 ', '比度克 抗痘控油洁面膏 ', 38.9, 0.7, '比度克 (BeDook)抗痘控油洁面膏 60g', '2013-03-31 00:00:00', 10022, '20130331_1_7.jpg', '比度克 (BeDook)抗痘控油洁面膏 60g(两款包装随机发货) 祛痘第一步 痘肌必备清洁法宝 抑痘防感染洁面 解除油光危“肌” 洁面控油 杀菌抑痘 ', '2013-03-31 00:00:00', 0);
INSERT INTO `ec_article` VALUES (8, '00010001', 'Mentholatum曼秀雷敦男士冰爽活炭洁面乳150ml 冰凉薄荷，深层洁净 保持皮肤滋润清爽，让脸部恢复光滑 早晚使用，倍感肌肤清爽柔润 ', '曼秀雷敦男士冰爽活炭洁面乳', 39.9, 0.7, '曼秀雷敦男士冰爽活炭洁面乳 150ml', '2013-03-31 00:00:00', 100, '20130331_1_8.jpg', 'Mentholatum曼秀雷敦男士冰爽活炭洁面乳150ml 冰凉薄荷，深层洁净 保持皮肤滋润清爽，让脸部恢复光滑 早晚使用，倍感肌肤清爽柔润 ', '2013-03-31 00:00:00', 0);
INSERT INTO `ec_article` VALUES (9, '00010001', '凡茜仙人掌无s洗面奶 126ml两款包装随机发货! 无S配方 蕴含温和谷氨酸清洁因子 有效清洁皮肤表面及毛孔内油脂污垢 不刺激肌肤 ', '凡茜仙人掌无s洗面奶', 90, 0.7, '凡茜仙人掌无s洗面奶 126ml', '2013-03-31 00:00:00', 100, '20130331_1_9.jpg', '凡茜仙人掌无s洗面奶 126ml两款包装随机发货! 无S配方 蕴含温和谷氨酸清洁因子 有效清洁皮肤表面及毛孔内油脂污垢 不刺激肌肤 ', '2013-03-31 00:00:00', 0);
INSERT INTO `ec_article` VALUES (10, '00010001', '倩碧 (Clinique) 温和液体洁面皂 200ml 深层清洁，软化角质，丰富泡沫，清洗容易 温和无刺激，敏感肌肤也适用 滋润肌肤，去除干燥紧绷感 ', '倩碧温和液体洁面皂', 200, 0.7, '倩碧 (Clinique) 温和液体洁面皂 200ml', '2013-03-31 00:00:00', 100, '20130331_1_10.jpg', '倩碧 (Clinique) 温和液体洁面皂 200ml 深层清洁，软化角质，丰富泡沫，清洗容易 温和无刺激，敏感肌肤也适用 滋润肌肤，去除干燥紧绷感 ', '2013-03-31 00:00:00', 0);
INSERT INTO `ec_article` VALUES (11, '00010001', '欧莱雅 (L\'Oreal)雪颜美白洁面膏 新包装 125ml 温和亲肤 深层清洁 通透无暇 宛若新生 ', ' 欧莱雅雪颜美白洁面膏', 112, 0.7, ' 欧莱雅 (L\'Oreal)雪颜美白洁面膏 新包装 125ml', '2013-03-31 00:00:00', 100, '20130331_1_11.jpg', '欧莱雅 (L\'Oreal)雪颜美白洁面膏 新包装 125ml 温和亲肤 深层清洁 通透无暇 宛若新生 ', '2013-03-31 00:00:00', 0);
INSERT INTO `ec_article` VALUES (12, '00010001', '巴黎欧莱雅L\'OREAL PARIS男士劲能深层净化洁面膏 100ml 即刻净化皮肤，平滑皮肤，展现神采 含维生素C衍生物 + 抗氧化复合成分 即刻净化并深层清洁皮肤 增强皮肤自身防护能力 ', '巴黎欧莱雅', 39, 0.7, '巴黎欧莱雅L\'OREAL PARIS男士劲能深层净化洁面膏 100ml', '2013-03-31 00:00:00', 100, '20130331_1_12.jpg', '巴黎欧莱雅L\'OREAL PARIS男士劲能深层净化洁面膏 100ml 即刻净化皮肤，平滑皮肤，展现神采 含维生素C衍生物 + 抗氧化复合成分 即刻净化并深层清洁皮肤 增强皮肤自身防护能力 ', '2013-03-31 00:00:00', 0);
INSERT INTO `ec_article` VALUES (13, '00010001', '欧莱雅 (L\'Oreal)复颜洁面乳125ml', '欧莱雅', 125, 0.7, '欧莱雅 (L\'Oreal)复颜洁面乳125ml ', '2013-03-31 00:00:00', 100, '20130331_1_13.jpg', '欧莱雅 (L\'Oreal)复颜洁面乳125ml', '2013-03-31 00:00:00', 0);
INSERT INTO `ec_article` VALUES (14, '00010001', '露得清深层净化洗面乳100g（两支）（多款包装随机发货）', '露得清深层净化洗面乳', 48, 0.7, '露得清深层净化洗面乳100g（两支）', '2013-03-31 00:00:00', 100, '20130331_1_14.jpg', '露得清深层净化洗面乳100g（两支）（多款包装随机发货）', '2013-03-31 00:00:00', 0);
INSERT INTO `ec_article` VALUES (15, '00010001', 'ZA姬芮洁面膏100g 蕴含维生素E按摩颗粒，洗脸同时达到按摩的效果 有效提升肌肤光彩、活力肌肤 深层清洁毛孔污垢，去除老化角质 ', 'Za姬芮洁面膏', 39, 0.7, 'Za姬芮洁面膏 100g', '2013-03-31 00:00:00', 100, '20130331_1_15.jpg', 'ZA姬芮洁面膏100g 蕴含维生素E按摩颗粒，洗脸同时达到按摩的效果 有效提升肌肤光彩、活力肌肤 深层清洁毛孔污垢，去除老化角质 ', '2013-03-31 00:00:00', 0);
INSERT INTO `ec_article` VALUES (16, '00010001', '肌御坊竹炭皂?新汉方七白皂 125gx2 出黑头克星洗脸手工皂套组 竹炭吸黑头+新七白紧致美白 纳米级竹炭清洁因子，深入毛孔，吸出黑头 中药古方的七白提取，收敛毛孔，紧致美白 ', ' 肌御坊竹炭皂', 169, 0.7, ' 肌御坊竹炭皂?新汉方七白皂 125gx2 ', '2013-03-31 00:00:00', 100, '20130331_1_16.jpg', '肌御坊竹炭皂?新汉方七白皂 125gx2 出黑头克星洗脸手工皂套组 竹炭吸黑头+新七白紧致美白 纳米级竹炭清洁因子，深入毛孔，吸出黑头 中药古方的七白提取，收敛毛孔，紧致美白 ', '2013-03-31 00:00:00', 0);
INSERT INTO `ec_article` VALUES (17, '00010001', '佰草集平衡洁面乳 100ml 萃取中草药精华，从根本上改善肌肤干燥、过敏不适等症状 令干燥部位变得滋润，油腻部位变得爽适 性质温和，泡沫细腻，清洁保湿且使用后水嫩不紧绷 ', '佰草集平衡洁面乳', 60, 0.7, '佰草集平衡洁面乳 100ml', '2013-03-31 00:00:00', 100, '20130331_1_17.jpg', '佰草集平衡洁面乳 100ml 萃取中草药精华，从根本上改善肌肤干燥、过敏不适等症状 令干燥部位变得滋润，油腻部位变得爽适 性质温和，泡沫细腻，清洁保湿且使用后水嫩不紧绷 ', '2013-03-31 00:00:00', 0);
INSERT INTO `ec_article` VALUES (18, '00010001', '欧珀莱AUPRES柔润洁面膏 125g 洁面膏泡沫细腻 清除肌肤污垢和老旧角质 并有助于调节肌肤的水油平衡 ', ' 欧珀莱', 90, 0.7, ' 欧珀莱AUPRES柔润洁面膏 125g', '2013-03-31 00:00:00', 100, '20130331_1_18.jpg', '欧珀莱AUPRES柔润洁面膏 125g 洁面膏泡沫细腻 清除肌肤污垢和老旧角质 并有助于调节肌肤的水油平衡 ', '2013-03-31 00:00:00', 0);
INSERT INTO `ec_article` VALUES (19, '00010001', '相宜本草金缕梅控油净白洗颜泥100g', '相宜本', 35, 0.7, '相宜本草金缕梅控油净白洗颜泥 100g', '2013-03-31 00:00:00', 100, '20130331_1_19.jpg', '相宜本草金缕梅控油净白洗颜泥100g', '2013-03-31 00:00:00', 0);
INSERT INTO `ec_article` VALUES (20, '00010001', '欧莱雅男士控油炭爽抗黑头洁面膏100ml 两款包装随机发货.', ' 欧莱雅', 39, 0.7, ' 欧莱雅男士控油炭爽抗黑头洁面膏100ml', '2013-03-31 00:00:00', 100, '20130331_1_20.jpg', '欧莱雅男士控油炭爽抗黑头洁面膏100ml 两款包装随机发货.', '2013-03-31 00:00:00', 0);
INSERT INTO `ec_article` VALUES (21, '00010002', '巨型一号丝瓜水320ML 被誉为“传说中的不老神仙水” 能改善各种肌肤问题 美容教主“伊能静”都用的丝瓜水 ', '巨型一号丝瓜水', 120, 0.7, '巨型一号丝瓜水320ML', '2013-03-31 00:00:00', 100, '20130331_2_1.jpg', '巨型一号丝瓜水320ML 被誉为“传说中的不老神仙水” 能改善各种肌肤问题 美容教主“伊能静”都用的丝瓜水 ', '2013-03-31 00:00:00', 0);
INSERT INTO `ec_article` VALUES (22, '00010002', '欧莱雅 (L\'Oreal)清润全日保湿柔肤水175ml 清爽化水?喱，独特的柔肤水 温泉矿物精华，提高肌肤储水力 独特锁水配方，沛润超呼想像 清凉镇定，迅速渗入，不含油脂 ', ' 欧莱雅 ', 120, 0.7, ' 欧莱雅 (L\'Oreal)清润全日保湿柔肤水175ml', '2013-03-31 00:00:00', 100, '20130331_2_2.jpg', '欧莱雅 (L\'Oreal)清润全日保湿柔肤水175ml 清爽化水?喱，独特的柔肤水 温泉矿物精华，提高肌肤储水力 独特锁水配方，沛润超呼想像 清凉镇定，迅速渗入，不含油脂 ', '2013-03-31 00:00:00', 0);
INSERT INTO `ec_article` VALUES (23, '00010002', '雪肌精化妆水200ml KOSE排行榜第一名明星产品 让你的肌肤如雪般晶莹剔透 充分润泽，修复粗糙无光泽的肌肤纹理 ', ' 雪肌精化妆水', 380, 0.7, ' 雪肌精化妆水200ml', '2013-03-31 00:00:00', 100, '20130331_2_3.jpg', '雪肌精化妆水200ml KOSE排行榜第一名明星产品 让你的肌肤如雪般晶莹剔透 充分润泽，修复粗糙无光泽的肌肤纹理 ', '2013-03-31 00:00:00', 0);
INSERT INTO `ec_article` VALUES (24, '00010002', '欧莱雅 (L\'Oreal)清润葡萄籽精华膜力水175ml 隔离外界污染抗氧化抗衰老 使肌肤更鲜活水润 健康亮泽透出好气色 ', '欧莱雅 ', 135, 0.7, '欧莱雅 (L\'Oreal)清润葡萄籽精华膜力水175ml ', '2013-03-31 00:00:00', 100, '20130331_2_4.jpg', '欧莱雅 (L\'Oreal)清润葡萄籽精华膜力水175ml 隔离外界污染抗氧化抗衰老 使肌肤更鲜活水润 健康亮泽透出好气色 ', '2013-03-31 00:00:00', 0);
INSERT INTO `ec_article` VALUES (25, '00010002', '膜法世家1908(Mask_Family_1908)绿豆小黄瓜蜜汁 150ml（新版） 两款包装随机发货 一步解决干燥、油腻、敏感、暗沉等多种肌肤问题 补水美白，控油清痘、舒缓排毒、镇静舒缓晒后肌肤 天然植物萃取让黑色素无处藏身 ', '膜法世家1908', 156, 0.7, '膜法世家1908(Mask_Family_1908)绿豆小黄瓜蜜汁 150ml（新版）', '2013-03-31 00:00:00', 100, '20130331_2_5.jpg', '膜法世家1908(Mask_Family_1908)绿豆小黄瓜蜜汁 150ml（新版） 两款包装随机发货 一步解决干燥、油腻、敏感、暗沉等多种肌肤问题 补水美白，控油清痘、舒缓排毒、镇静舒缓晒后肌肤 天然植物萃取让黑色素无处藏身 ', '2013-03-31 00:00:00', 0);
INSERT INTO `ec_article` VALUES (26, '00010002', '欧莱雅复颜清乳柔肤水175ml 有效抗皱 增强表皮防御能力 带给肌肤丝般光滑愉悦的感受 ', '欧莱雅', 160, 0.7, '欧莱雅复颜清乳柔肤水 175ml', '2013-03-31 00:00:00', 100, '20130331_2_6.jpg', '欧莱雅复颜清乳柔肤水175ml 有效抗皱 增强表皮防御能力 带给肌肤丝般光滑愉悦的感受 ', '2013-03-31 00:00:00', 0);
INSERT INTO `ec_article` VALUES (27, '00010002', '欧珀莱AUPRES均衡柔润水(滋润型) 150ml 丰润柔滑的均衡柔肤水，能迅速与肌肤融和 具有滋润和软化角质的功效 由内部产生滋润活力，缔造完美的肌肤 ', '欧珀莱 ', 100, 0.7, '欧珀莱 (AUPRES)均衡保湿系列柔润水(滋润型) 150ml ', '2013-03-31 00:00:00', 100, '20130331_2_7.jpg', '欧珀莱AUPRES均衡柔润水(滋润型) 150ml 丰润柔滑的均衡柔肤水，能迅速与肌肤融和 具有滋润和软化角质的功效 由内部产生滋润活力，缔造完美的肌肤 ', '2013-03-31 00:00:00', 0);
INSERT INTO `ec_article` VALUES (28, '00010002', '伊丽莎白雅顿 (Elizabeth Arden)保湿调理露 200ml(两款包装随机发货) 超赞的保湿力度 不含酒精，却含有丰富的保湿成分 补充胶原蛋白，皮肤紧致的保证 补充水份，提升肌肤自身的保湿能力 ', '伊丽莎白雅顿', 200, 0.7, '伊丽莎白雅顿 (Elizabeth Arden)保湿调理露 200ml', '2013-03-31 00:00:00', 100, '20130331_2_8.jpg', '伊丽莎白雅顿 (Elizabeth Arden)保湿调理露 200ml(两款包装随机发货) 超赞的保湿力度 不含酒精，却含有丰富的保湿成分 补充胶原蛋白，皮肤紧致的保证 补充水份，提升肌肤自身的保湿能力 ', '2013-03-31 00:00:00', 0);
INSERT INTO `ec_article` VALUES (29, '00010002', '欧莱雅(L\'Oreal)复颜清漾柔肤水175ml', '欧莱雅', 155, 0.7, '欧莱雅(L\'Oreal)复颜清漾柔肤水175ml', '2013-03-31 00:00:00', 100, '20130331_2_9.jpg', '欧莱雅(L\'Oreal)复颜清漾柔肤水175ml', '2013-03-31 00:00:00', 0);
INSERT INTO `ec_article` VALUES (30, '00010002', '雅漾活泉水喷雾300ml 保湿圣品，世界上最好的喷雾 肌肤享受活泉水SPA，轻松抗敏 适用范围广泛，各类人群均可使用 网上最受欢迎的喷雾，超多好评 ', '雅漾 (Avene)', 180, 0.7, '雅漾 (Avene)舒护活泉水 300ml', '2013-03-31 00:00:00', 100, '20130331_2_10.jpg', '雅漾活泉水喷雾300ml 保湿圣品，世界上最好的喷雾 肌肤享受活泉水SPA，轻松抗敏 适用范围广泛，各类人群均可使用 网上最受欢迎的喷雾，超多好评 ', '2013-03-31 00:00:00', 0);
INSERT INTO `ec_article` VALUES (31, '00010002', '倩碧 (Clinique)保湿洁肤水2号 200ml 全天然萃取精华，肌肤零负担。 温和清理皮层，促进肌肤自我更新。 长久保湿、二次清洁 ', '倩碧 (Clinique)', 190, 0.7, '倩碧 (Clinique)保湿洁肤水2号 200ml', '2013-03-31 00:00:00', 100, '20130331_2_11.jpg', '倩碧 (Clinique)保湿洁肤水2号 200ml 全天然萃取精华，肌肤零负担。 温和清理皮层，促进肌肤自我更新。 长久保湿、二次清洁 ', '2013-03-31 00:00:00', 0);
INSERT INTO `ec_article` VALUES (32, '00010002', '欧珀莱 (AUPRES)时光锁紧实弹润系列醒活柔润水（滋润型）136ml答谢品 调整角质层至丰盈状态 缔造充满润泽的健美肌肤 提升弹力效果和丰盈的滋润效果 预防弹力阻碍因子的活动 怡人馨香，让护理倍感舒适 ', ' 欧珀莱', 160, 0.7, ' 欧珀莱 (AUPRES)时光锁紧实弹润系列醒活柔润水（滋润型）136ml答谢品', '2013-03-31 00:00:00', 100, '20130331_2_12.jpg', '欧珀莱 (AUPRES)时光锁紧实弹润系列醒活柔润水（滋润型）136ml答谢品 调整角质层至丰盈状态 缔造充满润泽的健美肌肤 提升弹力效果和丰盈的滋润效果 预防弹力阻碍因子的活动 怡人馨香，让护理倍感舒适 ', '2013-03-31 00:00:00', 0);
INSERT INTO `ec_article` VALUES (33, '00020001', '谜尚(MISSHA)魅力嫩白 柔护霜SPF30+/PA+++ 21# 50ml 两款包装随机发货 同时代替防晒、隔离、遮瑕和粉底 完美遮瑕，带给肌肤清爽柔滑的使用感受 多种功效齐集一身，各种问题一瓶搞定 ', '谜尚魅力嫩白柔护霜', 168, 0.7, '谜尚魅力嫩白柔护霜SPF30+/PA+++ 50ml', '2013-04-01 00:00:00', 100, '20130331_111_1.jpg', '谜尚(MISSHA)魅力嫩白 柔护霜SPF30+/PA+++ 21# 50ml 两款包装随机发货 同时代替防晒、隔离、遮瑕和粉底 完美遮瑕，带给肌肤清爽柔滑的使用感受 多种功效齐集一身，各种问题一瓶搞定 ', '2013-04-01 00:00:00', 0);
INSERT INTO `ec_article` VALUES (34, '00030002', '伊丽莎白雅顿第五大道香水 30ml(多款包装随机发货) 婉约、柔和、温暖，是对第五大道永远都不会变得印象 独特瓶身设计, 显示现代都市生活精神 顶级香氛选材， 传达现代都会女性摩登时尚、自信活跃的风采 ', ' 伊丽莎白雅顿', 298, 0.7, ' 伊丽莎白雅顿 (Elizabeth Arden)第五大道香水 30ml', '2013-04-01 00:00:00', 100, '20130331_333_1.jpg', '伊丽莎白雅顿第五大道香水 30ml(多款包装随机发货) 婉约、柔和、温暖，是对第五大道永远都不会变得印象 独特瓶身设计, 显示现代都市生活精神 顶级香氛选材， 传达现代都会女性摩登时尚、自信活跃的风采 ', '2013-04-01 00:00:00', 0);
INSERT INTO `ec_article` VALUES (35, '00030002', '菲拉格慕 (Ferragamo)梦中彩虹香水 30ml，两款包装，随机发货。 仿佛阳光的照耀，唤起肌肤被温暖阳光包围所散发的香氛 外盒包装如此的引人入胜，犹如置身天堂般的光彩夺目 清新花果香调，优雅怡人 ', '菲拉格慕', 430, 0.7, '菲拉格慕 (Ferragamo)梦中彩虹香水 30ml', '2013-04-01 00:00:00', 100, '20130331_333_2.jpg', '菲拉格慕 (Ferragamo)梦中彩虹香水 30ml，两款包装，随机发货。 仿佛阳光的照耀，唤起肌肤被温暖阳光包围所散发的香氛 外盒包装如此的引人入胜，犹如置身天堂般的光彩夺目 清新花果香调，优雅怡人 ', '2013-04-01 00:00:00', 0);
INSERT INTO `ec_article` VALUES (36, '00030002', '兰蔻 (Lancome)奇迹香氛 30ml（两款包装随机发货) 味道甜美却不香腻 绝美灵感打造完美香氛 女人就是要展现个性 ', '兰蔻 (Lancome)', 500, 0.7, '兰蔻 (Lancome)奇迹香氛 30ml', '2013-04-01 00:00:00', 100, '20130331_333_3.jpg', '兰蔻 (Lancome)奇迹香氛 30ml（两款包装随机发货) 味道甜美却不香腻 绝美灵感打造完美香氛 女人就是要展现个性 ', '2013-04-01 00:00:00', 0);
INSERT INTO `ec_article` VALUES (37, '00030002', '范思哲 versace晶钻女用香水 30ml两款包装随机发货 瓶身设计恒久典雅，散发着清新优雅，如花芬芳的气息 精致典雅却又不失生动有趣的石榴香氛 澄澈透净的时尚水晶瓶衬托之下展现优雅妩媚的女性魅力 ', '范思哲', 430, 0.7, '范思哲 versace晶钻女用香水 30ml', '2013-04-01 00:00:00', 100, '20130331_333_4.jpg', '范思哲 versace晶钻女用香水 30ml两款包装随机发货 瓶身设计恒久典雅，散发着清新优雅，如花芬芳的气息 精致典雅却又不失生动有趣的石榴香氛 澄澈透净的时尚水晶瓶衬托之下展现优雅妩媚的女性魅力 ', '2013-04-01 00:00:00', 0);
INSERT INTO `ec_article` VALUES (38, '00030002', '伊丽莎白雅顿 (Elizabeth Arden)绿茶香水 30ml 香味清新雅淡而脱俗 撷取了了绿茶的治疗精华 提升了凉爽指数和清凉气味 ', '伊丽莎白雅顿', 210, 0.7, '伊丽莎白雅顿 (Elizabeth Arden)绿茶香水 30ml', '2013-04-01 00:00:00', 100, '20130331_333_5.jpg', '伊丽莎白雅顿 (Elizabeth Arden)绿茶香水 30ml 香味清新雅淡而脱俗 撷取了了绿茶的治疗精华 提升了凉爽指数和清凉气味 ', '2013-04-01 00:00:00', 0);
INSERT INTO `ec_article` VALUES (39, '00030002', '大卫杜夫冷水(女款)30ml，多款包装，随机发货。 即是Davidoff的得意之作，在欧美市场，它已成为香水线的主流产品 凝聚大自然中最重要的元素－水、清新空气及植物的芳香 冷水的造型十分简洁，柔婉的勾画了冷水美人的线条 ', ' 大卫杜夫', 320, 0.7, ' 大卫杜夫 (Davidoff)女士淡香水 30ml', '2013-04-01 00:00:00', 100, '20130331_333_6.jpg', '大卫杜夫冷水(女款)30ml，多款包装，随机发货。 即是Davidoff的得意之作，在欧美市场，它已成为香水线的主流产品 凝聚大自然中最重要的元素－水、清新空气及植物的芳香 冷水的造型十分简洁，柔婉的勾画了冷水美人的线条 ', '2013-04-01 00:00:00', 0);
INSERT INTO `ec_article` VALUES (40, '00030002', '玛亚科布(MarcJacobs)雏菊女士香水 100ml 极致奢华，赋予体验者无尽年轻、神秘感受 唯美的经典香调 设计灵感独一无二 ', ' 玛亚科布', 880, 0.7, ' 玛亚科布(MarcJacobs)雏菊女士香水 100ml', '2013-04-01 00:00:00', 100, '20130331_333_7.jpg', '玛亚科布(MarcJacobs)雏菊女士香水 100ml 极致奢华，赋予体验者无尽年轻、神秘感受 唯美的经典香调 设计灵感独一无二 ', '2013-04-01 00:00:00', 0);
INSERT INTO `ec_article` VALUES (41, '00030002', '克丽丝汀迪奥 (DIOR)真我香水 50ml 浓淡有致的花果香调 极其女性气质的表达 触及灵魂深处的馥郁 奢华金色瓶身 ', '克丽丝汀迪奥', 1040, 0.7, '克丽丝汀迪奥(DIOR)真我香水 50ml ', '2013-04-01 00:00:00', 100, '20130331_333_8.jpg', '克丽丝汀迪奥 (DIOR)真我香水 50ml 浓淡有致的花果香调 极其女性气质的表达 触及灵魂深处的馥郁 奢华金色瓶身 ', '2013-04-01 00:00:00', 0);
INSERT INTO `ec_article` VALUES (42, '00030002', '菲拉格慕蝶忆绽放女士香水 30ml，两款包装，随机发货。 清新的香调，掀起了新一波诱惑 震撼这个挑剔且要求品味与完美的时代 香味独特，香水瓶身的唯美设计 ', '菲拉格慕', 228, 0.7, '菲拉格慕 (Ferragamo)蝶忆绽放女士香水 30ml', '2013-04-01 00:00:00', 100, '20130331_333_9.jpg', '菲拉格慕蝶忆绽放女士香水 30ml，两款包装，随机发货。 清新的香调，掀起了新一波诱惑 震撼这个挑剔且要求品味与完美的时代 香味独特，香水瓶身的唯美设计 ', '2013-04-01 00:00:00', 0);
INSERT INTO `ec_article` VALUES (43, '00030002', '安娜苏 (Annasui)幻境绮缘淡香水 50ml 永远的紫色绮缘 让甜美的绮丽爱恋不断重现 迷蒙之间诠释着爱的呼唤 持续ANNA SUI香氛设计的浪漫理念 引领女孩们开启魔幻浪漫的绮丽童话 ', '安娜苏', 540, 0.7, '安娜苏 (Annasui)幻境绮缘淡香水 50ml', '2013-04-01 00:00:00', 100, '20130331_333_10.jpg', '安娜苏 (Annasui)幻境绮缘淡香水 50ml 永远的紫色绮缘 让甜美的绮丽爱恋不断重现 迷蒙之间诠释着爱的呼唤 持续ANNA SUI香氛设计的浪漫理念 引领女孩们开启魔幻浪漫的绮丽童话 ', '2013-04-01 00:00:00', 0);
INSERT INTO `ec_article` VALUES (44, '00030002', '克丽丝汀迪奥花漾甜心淡香水 50ml两款包装随机发货！ 气息温柔甜美 专为亚洲女性推出 低调奢华 ', '克丽丝汀', 830, 0.7, '克丽丝汀迪奥迪奥小姐花漾淡香水 50ml', '2013-04-01 00:00:00', 100, '20130331_333_11.jpg', '克丽丝汀迪奥花漾甜心淡香水 50ml两款包装随机发货！ 气息温柔甜美 专为亚洲女性推出 低调奢华 ', '2013-04-01 00:00:00', 0);
INSERT INTO `ec_article` VALUES (45, '00030002', '浪凡Lanvin Eclat D\'Arpege光韵女士香水 30ml（两款包装随机发货） 若隐若现芳香诱惑，散发十足女人味 一首悦耳的旋律，引领你进入光韵的世界 呈现新世代女性柔美、愉悦、优雅而性感的个性 ', '浪凡', 428, 0.7, '浪凡Lanvin Eclat D\'Arpege光韵女士香水 30ml', '2013-04-01 00:00:00', 100, '20130331_333_12.jpg', '浪凡Lanvin Eclat D\'Arpege光韵女士香水 30ml（两款包装随机发货） 若隐若现芳香诱惑，散发十足女人味 一首悦耳的旋律，引领你进入光韵的世界 呈现新世代女性柔美、愉悦、优雅而性感的个性 ', '2013-04-01 00:00:00', 0);

-- ----------------------------
-- Table structure for ec_article_type
-- ----------------------------
DROP TABLE IF EXISTS `ec_article_type`;
CREATE TABLE `ec_article_type`  (
  `CODE` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `REMARK` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`CODE`) USING BTREE,
  UNIQUE INDEX `NAME`(`NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ec_article_type
-- ----------------------------
INSERT INTO `ec_article_type` VALUES ('0001', '护肤', '护肤');
INSERT INTO `ec_article_type` VALUES ('00010001', '----洁面', '洁面');
INSERT INTO `ec_article_type` VALUES ('00010002', '----化妆水', '化妆水');
INSERT INTO `ec_article_type` VALUES ('00010003', '----喷雾', '喷雾');
INSERT INTO `ec_article_type` VALUES ('00010004', '----美容液', '美容液');
INSERT INTO `ec_article_type` VALUES ('00010005', '----眼霜', '眼霜');
INSERT INTO `ec_article_type` VALUES ('00010006', '----面膜', '面膜');
INSERT INTO `ec_article_type` VALUES ('00010007', '----精华', '精华');
INSERT INTO `ec_article_type` VALUES ('00010008', '----精油', '精油');
INSERT INTO `ec_article_type` VALUES ('0002', '彩妆', '彩妆');
INSERT INTO `ec_article_type` VALUES ('00020001', '----缷妆', '缷妆');
INSERT INTO `ec_article_type` VALUES ('00020002', '----隔离', '隔离');
INSERT INTO `ec_article_type` VALUES ('00020003', '----BB霜', 'BB霜');
INSERT INTO `ec_article_type` VALUES ('0003', '香氛', '香氛');
INSERT INTO `ec_article_type` VALUES ('00030001', '----男士香水', '男士香水');
INSERT INTO `ec_article_type` VALUES ('00030002', '----女士香水', '女士香水');
INSERT INTO `ec_article_type` VALUES ('00030003', '----中性香水', '中性香水');
INSERT INTO `ec_article_type` VALUES ('0004', '身体护理', '身体护理');
INSERT INTO `ec_article_type` VALUES ('00040001', '----洗发', '洗发');
INSERT INTO `ec_article_type` VALUES ('00040002', '----护发', '护发');
INSERT INTO `ec_article_type` VALUES ('00040003', '----沐浴', '沐浴');
INSERT INTO `ec_article_type` VALUES ('00040004', '----身体乳', '身体乳');
INSERT INTO `ec_article_type` VALUES ('00040005', '----护手霜', '护手霜');
INSERT INTO `ec_article_type` VALUES ('0005', '礼盒套装', '礼盒套装');
INSERT INTO `ec_article_type` VALUES ('00050001', '----护肤', '护肤');
INSERT INTO `ec_article_type` VALUES ('00050002', '----成功', '成功');
INSERT INTO `ec_article_type` VALUES ('00050003', '----彩妆', '彩妆');
INSERT INTO `ec_article_type` VALUES ('00050004', '----旅行装', '旅行装');
INSERT INTO `ec_article_type` VALUES ('0006', '母婴专区', '母婴专区');
INSERT INTO `ec_article_type` VALUES ('00060001', '----奶粉', '奶粉');
INSERT INTO `ec_article_type` VALUES ('00060002', '----纸尿裤', '纸尿裤');
INSERT INTO `ec_article_type` VALUES ('00060003', '----7-10', '7-10岁');
INSERT INTO `ec_article_type` VALUES ('00060004', '----11-14', '11-14岁');
INSERT INTO `ec_article_type` VALUES ('00060005', '----科学', '科学');
INSERT INTO `ec_article_type` VALUES ('00060006', '----图画书', '图画书');
INSERT INTO `ec_article_type` VALUES ('0007', '男士专区', '男士专区');
INSERT INTO `ec_article_type` VALUES ('00070001', '----两性', '两性');
INSERT INTO `ec_article_type` VALUES ('00070002', '----爽肤水', '爽肤水');
INSERT INTO `ec_article_type` VALUES ('00070003', '----面霜', '面霜');
INSERT INTO `ec_article_type` VALUES ('00070004', '----啫喱', '啫喱');
INSERT INTO `ec_article_type` VALUES ('00070005', '----男香', '男香');
INSERT INTO `ec_article_type` VALUES ('00070006', '----运动', '运动');
INSERT INTO `ec_article_type` VALUES ('00070007', '----凝胶', '凝胶');
INSERT INTO `ec_article_type` VALUES ('0008', '粉底', '粉底');
INSERT INTO `ec_article_type` VALUES ('00080001', '----经济', '经济');
INSERT INTO `ec_article_type` VALUES ('00080002', '----会计', '会计');
INSERT INTO `ec_article_type` VALUES ('00080003', '----人力资源', '人力资源');
INSERT INTO `ec_article_type` VALUES ('00080004', '----创业', '创业');
INSERT INTO `ec_article_type` VALUES ('0009', '粉饼', '粉饼');
INSERT INTO `ec_article_type` VALUES ('00090001', '----教材', '教材');
INSERT INTO `ec_article_type` VALUES ('00090002', '----外语', '外语');
INSERT INTO `ec_article_type` VALUES ('00090003', '----考试', '考试');
INSERT INTO `ec_article_type` VALUES ('00090004', '----中小学教辅', '中小学教辅');
INSERT INTO `ec_article_type` VALUES ('0010', '睫毛膏', '睫毛膏');
INSERT INTO `ec_article_type` VALUES ('00100001', '----五邑大学', '计算机学院');
INSERT INTO `ec_article_type` VALUES ('0011', '唇彩', '唇彩');
INSERT INTO `ec_article_type` VALUES ('0012', '腮红', '腮红');
INSERT INTO `ec_article_type` VALUES ('0013', '食品保健', '食品保健');
INSERT INTO `ec_article_type` VALUES ('0014', '瘦身类', '瘦身类');
INSERT INTO `ec_article_type` VALUES ('0015', '美容类', '美容类');
INSERT INTO `ec_article_type` VALUES ('0016', '吃货类', '吃货天堂');

-- ----------------------------
-- Table structure for ec_item
-- ----------------------------
DROP TABLE IF EXISTS `ec_item`;
CREATE TABLE `ec_item`  (
  `orderNum` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  PRIMARY KEY (`order_id`, `article_id`) USING BTREE,
  INDEX `FK_fauti5na5mvwwe6e5nv0xwbos`(`article_id`) USING BTREE,
  CONSTRAINT `FK_72ji7brtjwmjrwfw2yxk8oogi` FOREIGN KEY (`order_id`) REFERENCES `ec_order` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_fauti5na5mvwwe6e5nv0xwbos` FOREIGN KEY (`article_id`) REFERENCES `ec_article` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ec_order
-- ----------------------------
DROP TABLE IF EXISTS `ec_order`;
CREATE TABLE `ec_order`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ORDER_CODE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATE_DATE` datetime(0) NULL DEFAULT NULL,
  `SEND_DATE` datetime(0) NULL DEFAULT NULL,
  `STATUS` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `AMOUNT` double NULL DEFAULT NULL,
  `USER_ID` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE INDEX `ORDER_CODE`(`ORDER_CODE`) USING BTREE,
  INDEX `FK_USER_ORDER`(`USER_ID`) USING BTREE,
  CONSTRAINT `FK_USER_ORDER` FOREIGN KEY (`USER_ID`) REFERENCES `ec_user` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ec_order
-- ----------------------------
INSERT INTO `ec_order` VALUES (1, 'OP-201812141828491', '2018-12-14 18:28:49', NULL, NULL, 982.8, 1);
INSERT INTO `ec_order` VALUES (2, 'OP-2019031609042016', '2019-03-16 09:04:20', NULL, NULL, 40.599999999999994, 16);
INSERT INTO `ec_order` VALUES (3, 'OP-2019031609051516', '2019-03-16 09:05:15', NULL, NULL, 75.6, 16);

-- ----------------------------
-- Table structure for ec_order_item
-- ----------------------------
DROP TABLE IF EXISTS `ec_order_item`;
CREATE TABLE `ec_order_item`  (
  `ORDER_ID` int(11) NOT NULL DEFAULT 0,
  `ARTICLE_ID` int(11) NOT NULL DEFAULT 0,
  `ORDER_NUM` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ORDER_ID`, `ARTICLE_ID`) USING BTREE,
  INDEX `FK_ORDER_ITEM_ARTICLE_ID`(`ARTICLE_ID`) USING BTREE,
  CONSTRAINT `FK_ORDER_ITEM_ARTICLE_ID` FOREIGN KEY (`ARTICLE_ID`) REFERENCES `ec_article` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_ORDER_ITEM_ORDER_ID` FOREIGN KEY (`ORDER_ID`) REFERENCES `ec_order` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ec_order_item
-- ----------------------------
INSERT INTO `ec_order_item` VALUES (1, 1, 13);
INSERT INTO `ec_order_item` VALUES (2, 2, 1);
INSERT INTO `ec_order_item` VALUES (3, 1, 1);

-- ----------------------------
-- Table structure for ec_shopcar
-- ----------------------------
DROP TABLE IF EXISTS `ec_shopcar`;
CREATE TABLE `ec_shopcar`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `articleId` int(11) NULL DEFAULT NULL,
  `buyNum` int(11) NULL DEFAULT NULL,
  `userId` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ec_shopcar
-- ----------------------------
INSERT INTO `ec_shopcar` VALUES (30, 2, 8, 2);
INSERT INTO `ec_shopcar` VALUES (31, 1, 14, 2);
INSERT INTO `ec_shopcar` VALUES (32, 6, 2, 2);
INSERT INTO `ec_shopcar` VALUES (33, 5, 2, 2);
INSERT INTO `ec_shopcar` VALUES (35, 6, 14, 1);
INSERT INTO `ec_shopcar` VALUES (36, 7, 12, 1);
INSERT INTO `ec_shopcar` VALUES (37, 2, 3, 7);
INSERT INTO `ec_shopcar` VALUES (38, 8, 2, 7);
INSERT INTO `ec_shopcar` VALUES (39, 5, 3, 1);
INSERT INTO `ec_shopcar` VALUES (40, 3, 1, 1);
INSERT INTO `ec_shopcar` VALUES (41, 2, 2, 1);
INSERT INTO `ec_shopcar` VALUES (42, 1, 1, NULL);
INSERT INTO `ec_shopcar` VALUES (45, 6, 1, 16);

-- ----------------------------
-- Table structure for ec_user
-- ----------------------------
DROP TABLE IF EXISTS `ec_user`;
CREATE TABLE `ec_user`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LOGIN_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PASSWORD` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `SEX` int(11) NULL DEFAULT 1,
  `EMAIL` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PHONE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ADDRESS` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ROLE` int(11) NULL DEFAULT 1,
  `CREATE_DATE` datetime(0) NULL DEFAULT NULL,
  `DISABLED` tinyint(1) NULL DEFAULT 0,
  `ACTIVE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE INDEX `LOGIN_NAME`(`LOGIN_NAME`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ec_user
-- ----------------------------
INSERT INTO `ec_user` VALUES (1, 'admin', '123456', '管理员', 1, 'test@163.com', '18998665678', '珠江新城', 2, '2017-10-25 15:44:11', 1, NULL);
INSERT INTO `ec_user` VALUES (2, 'test1', '123456', '张小棠', 1, 'test1@163.com', '13487890989', '天河车陂', 1, '2017-10-25 15:44:11', 1, NULL);
INSERT INTO `ec_user` VALUES (3, '1095402829@qq.com', '123456', '张三', 1, '1095402829@qq.com', '13539909243', '湖南', 1, '2017-10-28 14:49:21', 1, '');
INSERT INTO `ec_user` VALUES (4, '1095402827@qq.com', 'aaaaaa', NULL, 1, '1095402827@qq.com', '13527780923', 'sda', 1, '2017-12-27 00:00:00', 0, NULL);
INSERT INTO `ec_user` VALUES (5, '1095402823@qq.com', 'aaaaaa', 'aaa', 1, '1095402823@qq.com', '13362322323', 'aa', 1, '2017-12-27 00:00:00', 0, NULL);
INSERT INTO `ec_user` VALUES (7, 'test5', '2222', 'test', 3, '10923@qq.com', '13629233728', '广州', 1, '2018-03-03 11:42:30', 0, NULL);
INSERT INTO `ec_user` VALUES (8, 'test6', '2222', 'test', 3, '10923@qq.com', '13629233728', '广州', 1, '2018-03-03 11:42:49', 0, NULL);
INSERT INTO `ec_user` VALUES (9, 'last', '2222', 'test', 3, '10923@qq.com', '13629233728', '广州', 1, '2018-03-03 13:25:52', 0, NULL);
INSERT INTO `ec_user` VALUES (10, '1111@qq.com', '123456', '小李', 1, '1111@qq.com', '15676567654', '南方学院', 0, NULL, 0, NULL);
INSERT INTO `ec_user` VALUES (11, '2222@qq.com', '123456', '小李', 1, '1111@qq.com', '15676567654', '南方学院2', 0, NULL, 0, NULL);
INSERT INTO `ec_user` VALUES (12, '33333@qq.com', '123456', '小王', 1, '333@qq.com', '15676567654', '南方学院2', 0, NULL, 0, NULL);
INSERT INTO `ec_user` VALUES (14, '444444@qq.com', '123456', '小王', 1, '333@qq.com', '15676567654', '南方学院2', 0, NULL, 0, NULL);
INSERT INTO `ec_user` VALUES (15, 'abc@qq.com', '123456', '张3', 0, 'abc@qq.com', '15919754435', '南方学院', 1, NULL, 0, NULL);
INSERT INTO `ec_user` VALUES (16, '804245541@qq.com', '123456', 'qqqq', 0, '804245541@qq.com', '15919754435', 'qqqq', 1, NULL, 0, NULL);
INSERT INTO `ec_user` VALUES (18, '111115541@qq.com', '123456', '张3', 0, '111115541@qq.com', '15919754435', '南方学院', 1, NULL, 0, NULL);
INSERT INTO `ec_user` VALUES (19, '111141@qq.com', '123456', '张3', 0, '111141@qq.com', '15919754435', 'zzzz', 1, NULL, 0, NULL);
INSERT INTO `ec_user` VALUES (20, '1115541@qq.com', '123456', '张3', 0, '1115541@qq.com', '15919754435', 'ssss', 1, NULL, 0, NULL);
INSERT INTO `ec_user` VALUES (21, 'qqq.com@qq.com', '111111', 'aaaaaa', 0, 'qqq.com@qq.com', '15656545545', 'aaaaaa', 1, NULL, 0, NULL);
INSERT INTO `ec_user` VALUES (22, 'qqq@qq.com', '111111', '', 0, 'qqq@qq.com', '15919754435', '', 1, NULL, 0, NULL);
INSERT INTO `ec_user` VALUES (23, '804245511141@qq.com', '111111', '111', 0, '804245511141@qq.com', '15919754435', '南方学院', 1, NULL, 0, NULL);
INSERT INTO `ec_user` VALUES (24, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, NULL, 0, NULL);
INSERT INTO `ec_user` VALUES (25, '804245541@qq.comxx', '111111', '张3', 0, '804245541@qq.comxx', '15919754435', '南方学院', 1, NULL, 0, NULL);
INSERT INTO `ec_user` VALUES (26, '80424554qq1@qq.com', '111111', 'å¼ 3', 0, '80424554qq1@qq.com', '15919754435', 'åæ¹å­¦é¢', 1, NULL, 0, NULL);
INSERT INTO `ec_user` VALUES (27, '804245541111@qq.com', '111111', '张3', 0, '804245541111@qq.com', '15919754435', '南方学院', 1, NULL, 0, NULL);

SET FOREIGN_KEY_CHECKS = 1;
