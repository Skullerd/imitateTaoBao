/*
MySQL Data Transfer
Source Host: localhost
Source Database: taobao_db
Target Host: localhost
Target Database: taobao_db
Date: 2019/12/3 11:49:52
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for taobao_admin
-- ----------------------------
CREATE TABLE `taobao_admin` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `aname` varchar(50) NOT NULL,
  `apwd` varchar(50) NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for taobao_cart
-- ----------------------------
CREATE TABLE `taobao_cart` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cpid` int(11) NOT NULL,
  `cnum` int(11) NOT NULL,
  `cuid` int(11) NOT NULL,
  `cdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for taobao_category
-- ----------------------------
CREATE TABLE `taobao_category` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for taobao_items
-- ----------------------------
CREATE TABLE `taobao_items` (
  `iid` int(11) NOT NULL AUTO_INCREMENT,
  `ioid` int(11) NOT NULL,
  `ipid` int(11) NOT NULL,
  `inum` int(11) NOT NULL,
  `ipprice` decimal(10,0) NOT NULL,
  PRIMARY KEY (`iid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for taobao_order
-- ----------------------------
CREATE TABLE `taobao_order` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `oname` varchar(200) NOT NULL,
  `oaddress` varchar(255) NOT NULL,
  `otel` varchar(20) NOT NULL,
  `odate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `ouid` int(11) NOT NULL,
  `ototal` decimal(10,0) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for taobao_product
-- ----------------------------
CREATE TABLE `taobao_product` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(255) NOT NULL,
  `pprice` decimal(10,0) NOT NULL,
  `pcid` int(11) NOT NULL,
  `pcontent` text NOT NULL,
  `ppic` varchar(255) NOT NULL,
  `pdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `pgd` int(11) DEFAULT NULL,
  `plove` int(11) DEFAULT NULL,
  `plike` int(11) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for taobao_user
-- ----------------------------
CREATE TABLE `taobao_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) NOT NULL,
  `upwd` varchar(255) NOT NULL,
  `uemail` varchar(255) NOT NULL,
  `udate` datetime NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `taobao_admin` VALUES ('1', 'lws', '123456');
INSERT INTO `taobao_cart` VALUES ('5', '25', '1', '2', '2019-12-01 21:53:42');
INSERT INTO `taobao_category` VALUES ('1', 'nike');
INSERT INTO `taobao_category` VALUES ('2', 'newbalance');
INSERT INTO `taobao_category` VALUES ('3', 'adidas');
INSERT INTO `taobao_category` VALUES ('4', 'wassup');
INSERT INTO `taobao_category` VALUES ('5', 'jordan');
INSERT INTO `taobao_category` VALUES ('6', '秋水伊人');
INSERT INTO `taobao_category` VALUES ('7', '优衣库');
INSERT INTO `taobao_category` VALUES ('8', 'underarmour');
INSERT INTO `taobao_category` VALUES ('9', 'whosetrap');
INSERT INTO `taobao_category` VALUES ('10', '其他');
INSERT INTO `taobao_items` VALUES ('1', '1', '20', '1', '25000');
INSERT INTO `taobao_items` VALUES ('2', '1', '27', '2', '380');
INSERT INTO `taobao_items` VALUES ('4', '2', '20', '1', '25000');
INSERT INTO `taobao_items` VALUES ('5', '2', '27', '2', '380');
INSERT INTO `taobao_items` VALUES ('7', '3', '20', '1', '25000');
INSERT INTO `taobao_items` VALUES ('8', '3', '27', '2', '380');
INSERT INTO `taobao_items` VALUES ('10', '4', '19', '1', '214');
INSERT INTO `taobao_items` VALUES ('11', '5', '19', '1', '214');
INSERT INTO `taobao_items` VALUES ('12', '6', '19', '1', '214');
INSERT INTO `taobao_items` VALUES ('13', '7', '19', '1', '214');
INSERT INTO `taobao_items` VALUES ('14', '8', '24', '1', '210');
INSERT INTO `taobao_items` VALUES ('15', '9', '8', '1', '2683');
INSERT INTO `taobao_order` VALUES ('1', 'lws', 'dsadas', '123', '2019-12-02 22:55:56', '1', '25760');
INSERT INTO `taobao_order` VALUES ('2', 'lws', 'dasdfasdgdg', '12345678910', '2019-12-02 23:27:29', '1', '25760');
INSERT INTO `taobao_order` VALUES ('3', 'lws', '萨科技等复活卡积分活动空间撒', '12345678910', '2019-12-02 23:29:27', '1', '25760');
INSERT INTO `taobao_order` VALUES ('4', 'lws', 'dhjsahfkjasdhfkjads', '12345678915', '2019-12-02 23:56:48', '1', '214');
INSERT INTO `taobao_order` VALUES ('5', 'lws', '所得税法第三方大幅', '12345678912', '2019-12-02 23:57:18', '1', '214');
INSERT INTO `taobao_order` VALUES ('6', 'lws', '所得税法第三方大幅', '12345678918', '2019-12-02 23:59:30', '1', '214');
INSERT INTO `taobao_order` VALUES ('7', 'lws', '付加工费快乐的感觉到付款落实国家领导看风景', '12345678912', '2019-12-03 11:41:46', '1', '214');
INSERT INTO `taobao_order` VALUES ('8', 'lws', '所得税法第三方大幅', '12345678910', '2019-12-03 11:43:28', '1', '210');
INSERT INTO `taobao_order` VALUES ('9', 'lws', '萨科技等复活卡积分活动空间撒', '12345678912', '2019-12-03 11:44:39', '1', '2683');
INSERT INTO `taobao_product` VALUES ('1', 'adidas 阿迪达斯 篮球 男子 篮球茄克 深麻灰 CG0875', '599', '3', 'dsadasd', 'bf9f1bc7-7f57-4298-8df3-5add423357bc.jpg', '2019-09-15 00:00:05', '0', '0', '1');
INSERT INTO `taobao_product` VALUES ('2', '秋水伊人连衣裙2019秋装新款女装法式蕾', '369', '6', '没啥好介绍的', '02323c0c-a4af-4f67-b1ee-f5afb46ac6c9.jpg', '2019-09-15 10:40:05', '0', '0', '1');
INSERT INTO `taobao_product` VALUES ('3', '秋水伊人牛仔衣秋装2019年新款女装刺绣', '397', '6', '没啥好介绍的', '35a1170e-8a9d-40af-b3e6-95ed492b326f.jpg', '2019-09-15 10:40:07', '0', '0', '1');
INSERT INTO `taobao_product` VALUES ('5', '420-800mm长焦微单反相机远拍远摄望远镜头摄月拍鸟变焦镜头', '530', '7', '还行吧', '646a6077-149f-4534-95ee-6efc8f03a266.jpg', '2019-09-15 10:57:39', '0', '0', '1');
INSERT INTO `taobao_product` VALUES ('6', '【韩国正品】女装新款休闲连体裤背带裤休闲裤G22615', '228', '7', '韩国新潮款式', 'ae74a4e2-cd12-4bbd-b88b-ba062703558c.jpg', '2019-09-15 23:50:24', '0', '0', '1');
INSERT INTO `taobao_product` VALUES ('7', '2017外贸原单夏季雪纺拼接蝙蝠侠宽松豹纹女士T恤 时尚复古上衣潮', '15', '7', '的撒打算的撒发生发大水', '09b9edf5-f3a9-4f11-b34c-5f7e114fcb69.jpg', '2019-09-15 23:51:13', '0', '0', '1');
INSERT INTO `taobao_product` VALUES ('8', '红木角柜中式非洲花梨木边角柜墙角展示柜实木三角柜餐边柜酒柜', '2683', '9', '撒大声发达砂锅饭都是个回复回复', '398a5d70-551b-4988-b6ad-2a103d29a091.jpg', '2019-09-15 23:51:49', '0', '0', '1');
INSERT INTO `taobao_product` VALUES ('9', 'BIOSTAR/映泰 TZ77XE3主板1155超频Z77倍频Z68 P67 P8Z77 Z75', '308', '2', '结婚噶狂欢节公开很关键', '35038dd7-3edb-4ff7-9227-631bec93be3a.jpg', '2019-09-15 23:52:38', '0', '0', '1');
INSERT INTO `taobao_product` VALUES ('10', '现货|日本KINTO UNITEA耐热玻璃茶壶花果茶壶茶具不锈钢滤网盖', '185', '3', 'dssfhnjskdhgkcmnvkjiwenvklcdx', '656acb69-d742-4eba-9200-38668b154c6d.jpg', '2019-09-15 23:54:50', '0', '0', '1');
INSERT INTO `taobao_product` VALUES ('11', '手机包女2018新款夏天拉链小包韩版卡通可爱零钱包单肩斜跨手机袋', '49', '6', '没啥好介绍的', '9f145534-30b4-4a3c-acf1-c61d18cc7d85.jpg', '2019-09-15 23:55:36', '0', '0', '1');
INSERT INTO `taobao_product` VALUES ('12', '2019大屏手机包卡通猫咪夏天小包百搭斜跨包可爱单肩迷你包plus包', '29', '6', '无', 'fec85f59-6f6b-4565-9209-077842c3840d.jpg', '2019-09-15 23:56:20', '0', '0', '1');
INSERT INTO `taobao_product` VALUES ('13', '悦宝森全实木双层儿童床高低上下铺地中海海盗床成人子母床', '4388', '9', 'hahahahh ', '1b7619dd-2221-4657-ae8f-cd799a092710.jpg', '2019-09-16 15:55:20', '0', '0', '1');
INSERT INTO `taobao_product` VALUES ('14', '轻婚纱新娘长拖尾2019新款赫本法式婚纱显瘦超仙简约梦幻森系旅拍', '398', '6', 'dfdsfadsafasdfs', '8fd761ab-b9cd-4aa7-b3ae-e9d143609fc2.jpg', '2019-09-16 15:55:59', '0', '0', '1');
INSERT INTO `taobao_product` VALUES ('15', '2019秋装新款女童运动两件套韩版时尚儿童洋气套装中小童长袖外套', '60', '7', '没啥好介绍的', '2920e286-bd87-4d8b-8858-ab6c577b0469.jpg', '2019-09-16 15:56:52', '0', '0', '1');
INSERT INTO `taobao_product` VALUES ('16', '韩版儿童貉子毛球保暖毛线帽宝宝冬天针织帽亲子款百搭毛球帽子潮', '24', '7', '是大大撒打发算法', 'b17ea557-c23f-4dd6-aaad-b5fa4d98d8c2.jpg', '2019-09-16 15:57:26', '0', '0', '1');
INSERT INTO `taobao_product` VALUES ('17', 'max破产都要买的口红', '128', '10', '《破产姐妹》max最爱Tarte哑光口红笔', 'cef25312-9227-4db3-8085-7665d8d1601c.jpg', '2019-09-16 16:05:32', '1', '0', '0');
INSERT INTO `taobao_product` VALUES ('18', 'Gogan 冰种玉镯', '50000', '10', '极品冰种质地，视觉效果通透莹润。', '4a77e138-61a1-475f-953f-787e85f031dd.jpg', '2019-09-16 16:07:04', '1', '0', '0');
INSERT INTO `taobao_product` VALUES ('19', '碎脂机，超快瘦身', '214', '10', '这个精美的碎脂机，不仅采用独特的外形的设计，结合上小巧的尺寸，让其方便你外出时随身携带哦。功能非常的强劲，短时间内就可以感受到脂肪在燃烧哦。', 'd24645a0-f86c-4473-9308-2b3fe71cadbe.jpg', '2019-09-16 16:07:45', '1', '0', '0');
INSERT INTO `taobao_product` VALUES ('20', '5克拉钻石戒指女豪华皇冠群镶副钻', '25000', '10', '宝贝很漂亮的超级闪，质量很好，做工非常精细，包装特别精致，超级豪华，圈口大小合适，戴着很合适，非常精美，时尚百搭，很满意。', 'fbbd8c27-daba-4b2c-ab29-e87b849c142d.jpg', '2019-09-16 16:08:24', '1', '0', '0');
INSERT INTO `taobao_product` VALUES ('21', '为小户型省空间，北欧铁艺多功能高铺床', '3400', '10', '北欧简约设计，为小户型省空间', '2f37e2b1-5761-4a93-85e3-bf8123d64332.jpg', '2019-09-16 16:09:10', '1', '0', '0');
INSERT INTO `taobao_product` VALUES ('22', 'OTOTO两用二合一起泡酒塞', '58', '10', '美丽可爱的造型，看上去生动有趣', 'ee5d7ec0-1845-49b6-8c6c-663f51890a0c.jpg', '2019-09-16 16:09:45', '1', '0', '0');
INSERT INTO `taobao_product` VALUES ('23', '浓浓的复古法式风情优雅大气 								', '230', '6', '没啥好介绍的', 'f5995757-d210-4cb3-8658-a0102eb60157.jpg', '2019-09-16 16:10:56', '0', '1', '0');
INSERT INTO `taobao_product` VALUES ('24', '这碗能换回一支口红', '210', '10', '没啥好介绍的', 'ccad1d63-e652-4692-aeeb-e4d6aa2d5abd.jpg', '2019-09-16 16:11:53', '0', '1', '0');
INSERT INTO `taobao_product` VALUES ('25', '白色陶瓷花瓶 看着就很美', '98', '10', '没啥好介绍的', '051c9aed-3d03-4e3c-acd0-2ac7f66bb7e8.jpg', '2019-09-16 16:12:50', '0', '1', '0');
INSERT INTO `taobao_product` VALUES ('26', '百搭小书架  小户型家装更美好', '560', '10', '无', '2432592f-76cb-4448-a6cf-13955b4ddaf7.jpg', '2019-09-16 16:13:31', '0', '1', '0');
INSERT INTO `taobao_product` VALUES ('27', '实木曲木胡桃色复古现代简约餐椅', '380', '10', '无', '4f0f6417-e818-4946-8fdc-7d1f8bf42afd.jpg', '2019-09-16 16:14:08', '0', '1', '0');
INSERT INTO `taobao_product` VALUES ('28', '简约实木床让卧室空间充满自然气息', '1200', '10', '无', '47c2e465-e7d1-4c02-af1e-85611b1104ae.jpg', '2019-09-16 16:14:51', '0', '1', '0');
INSERT INTO `taobao_user` VALUES ('1', 'lws', '123', 'sdfs@qq.com', '2019-09-13 17:48:12');
INSERT INTO `taobao_user` VALUES ('2', 'lds', '456', 'sdasa@126.com', '2019-09-14 00:16:15');
INSERT INTO `taobao_user` VALUES ('3', 'lnz', '123', 'sada@qq.com', '2019-09-14 00:19:11');
INSERT INTO `taobao_user` VALUES ('4', 'zyz', '789', 'asa@126.com', '2019-09-14 21:04:45');
