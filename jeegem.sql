/*
Navicat MySQL Data Transfer

Source Server         : 192.168.0.103
Source Server Version : 50540
Source Host           : 192.168.0.103:3306
Source Database       : jeegem

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2018-03-07 09:52:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for jeegem_article
-- ----------------------------
DROP TABLE IF EXISTS `jeegem_article`;
CREATE TABLE `jeegem_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `addTime` datetime DEFAULT NULL,
  `content` text,
  `summary` varchar(500) DEFAULT NULL,
  `titleColor` varchar(255) DEFAULT NULL,
  `click` int(11) DEFAULT NULL,
  `recommend` int(1) DEFAULT NULL,
  `slide` int(1) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `slideImage` varchar(100) DEFAULT NULL,
  `keyWords` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `typeId` (`typeId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeegem_article
-- ----------------------------
INSERT INTO `jeegem_article` VALUES ('2', '最高法：去年法院纠正重大冤假错案11件17人-搜狐新闻', '2018-02-12 14:02:33', '<p>佛挡杀佛第三方范德萨打</p><p><img src=\"/upload/JeeGem/image/20180212/1518415334786099624.png\" title=\"1518415334786099624.png\"/></p><p><img src=\"/upload/JeeGem/image/20180212/1518415334741063197.png\" title=\"1518415334741063197.png\"/></p><p><img src=\"/upload/JeeGem/image/20180212/1518415334889023713.png\" title=\"1518415334889023713.png\"/></p><p><img src=\"/upload/JeeGem/image/20180212/1518415337058016078.png\" title=\"1518415337058016078.png\"/></p><p><br/></p>', '最高法：去年法院纠正重大冤假错案11件17人-搜狐新闻', 'black', null, null, '3', '10', '6d0ac609-8d73-4378-a52c-52db7a714705.jpg', '最高法 冤假 错案');
INSERT INTO `jeegem_article` VALUES ('3', '河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻', '2018-02-12 14:03:56', '<h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><p><br/></p>', '河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻', 'black', null, null, '3', '10', '2d1eece2-ab34-41a1-a0f6-caee2e61910b.jpg', 'java 捕鱼达人 项目源码');
INSERT INTO `jeegem_article` VALUES ('4', '河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻', '2018-02-12 15:41:08', '<h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><p><img src=\"/upload/JeeGem/image/20180212/1518421259011042205.png\" title=\"1518421259011042205.png\"/></p><p><img src=\"/upload/JeeGem/image/20180212/1518421258995063409.png\" title=\"1518421258995063409.png\"/></p><p><br/></p>', '河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻', 'black', null, null, '3', '10', null, 'java 捕鱼达人 项目源码');
INSERT INTO `jeegem_article` VALUES ('5', '河南一法院副', '2018-02-12 15:42:00', '<h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><p><img src=\"/upload/JeeGem/image/20180212/1518421259011042205.png\" title=\"1518421259011042205.png\"/></p><p><img src=\"/upload/JeeGem/image/20180212/1518421258995063409.png\" title=\"1518421258995063409.png\"/></p><p><br/></p>', '河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻', 'black', null, null, '3', '10', null, 'java 捕鱼达人 项目源码');
INSERT INTO `jeegem_article` VALUES ('6', '河南一法院副321321321', '2018-02-12 15:42:20', '<h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><p><img src=\"/upload/JeeGem/image/20180212/1518421259011042205.png\" title=\"1518421259011042205.png\"/></p><p><img src=\"/upload/JeeGem/image/20180212/1518421258995063409.png\" title=\"1518421258995063409.png\"/></p><p><br/></p>', '河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻', 'black', null, null, '3', '10', null, 'java 捕鱼达人 项目源码');
INSERT INTO `jeegem_article` VALUES ('7', '河南一法院副xxxxxxxxxxxxxx', '2018-02-12 15:44:04', '<h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><h2>河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻</h2><p><img src=\"/upload/JeeGem/image/20180212/1518421259011042205.png\" title=\"1518421259011042205.png\"/></p><p><img src=\"/upload/JeeGem/image/20180212/1518421258995063409.png\" title=\"1518421258995063409.png\"/></p><p><br/></p>', '河南一法院副院长敲诈两名市(县)委书记 私吞罚金-搜狐新闻', 'black', null, null, '3', '10', null, 'java 捕鱼达人 项目源码');
INSERT INTO `jeegem_article` VALUES ('8', '旅游攻略 | 大兴竟然这么好玩, 你知道吗', '2018-02-14 13:08:37', '<h1 class=\"news-title\" style=\"font-size: 30px; width: 100%; overflow: hidden;\">旅游攻略 | 大兴竟然这么好玩, 你知道吗</h1><p>北京野生动物园春节期间为您准备了儿童冰雪、狗年生肖和春节庙会等特色活动。让您在享受冰雪乐趣的同时还能与小动物们一起互动。萌宝乐园里，呆萌的小棕熊、机敏的斑鬣狗、傲骄的羊驼，这些小动物都竞相争宠，要与您一起欢渡春节假期。2018年是中国农历生肖狗年，北京野生动特园还设计了一系列以“狗”为主题的科普与游客体验活动。</p><p>北京野生动物园还将举办传统春节庙会活动，在这里您可以买到特色农产品和旅游纪念品，浓浓的年味，欢乐的气氛，相信您一定不会错过。</p><p><img src=\"/upload/JeeGem/image/20180214/1518584896604075266.jpg\" title=\"1518584896604075266.jpg\" alt=\"1474368185408.jpg\"/></p>', '旅游攻略 | 大兴竟然这么好玩, 你知道吗', 'black', null, null, '1', '12', '3976bf96-7d37-4c4b-8c5b-8aeedbe8906d.jpg', '旅游攻略 大兴  玩');
INSERT INTO `jeegem_article` VALUES ('9', '上海迪士尼度假区门票', '2018-02-14 13:47:54', '<ul class=\" list-paddingleft-2\"><li><p><em>景点地址</em>\r\n &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;上海市浦东新区川沙新镇上海迪士尼度假区 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a class=\"map-icon goToAnchor\" style=\";\">查看地图</a></p></li><li><p><em>开放时间</em>\r\n &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span class=\"j-limit\">2018年1月1日-18日开放时间：09:00-20:00，19日-31日开放时间：08:00-20:30。\r\n 超高峰日：暑期周末（7月、8月），国定节假日；高峰日：周末（周六、周日），暑期非周末（7月、8月）；平日：非高峰日。 \r\n所有上海迪士尼乐园时间仅供参考，并有可能在您游览乐园当天或之前发生变更，以景区当天披露为准。请于游览当天至游客服务处索取乐园时间表，以获取当天最新的活动时间详情及变更通知。</span></p></li><li><p><em>服务承诺</em></p><p><span class=\"media-label\">入园保证</span>\r\n &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p>预订此景区门票，入园无票且携程10分钟内未解决，可买原价票入园，携程双倍赔差价。</p></li></ul><p><img src=\"/upload/JeeGem/image/20180214/1518587256604088630.jpg\" title=\"1518587256604088630.jpg\" alt=\"1474355653998.jpg\"/></p>', '上海迪士尼度假区门票', 'black', null, null, '1', '12', '2da05d4f-fe33-4961-9ba0-6f39e7c236db.jpg', '上海 迪士尼 度假 门票');
INSERT INTO `jeegem_article` VALUES ('10', '黄浦江游览_门票/线路特价_驴妈妈旅游', '2018-02-14 13:49:46', '<p><img src=\"/upload/JeeGem/image/20180214/1518587382676041581.jpg\" title=\"1518587382676041581.jpg\" alt=\"1474368185408.jpg\"/></p>', '】黄浦江游览_门票/线路特价_驴妈妈旅游', 'black', null, null, '1', '12', 'ebb657d8-5d16-484f-a69e-7f7c8d5588eb.jpg', '黄浦江 游览 门票/ 线路');
INSERT INTO `jeegem_article` VALUES ('11', '国际电影节-黄晓明-佟大为等人参加', '2018-02-14 14:16:48', '<h1>国际电影节-黄晓明-佟大为等人参加</h1><h1>国际电影节-黄晓明-佟大为等人参加国际电影节-黄晓明-佟大为等人参加国际电影节-黄晓明-佟大为等人参加国际电影节-黄晓明-佟大为等人参加<img src=\"/upload/JeeGem/image/20180214/1518589005430025811.jpg\" title=\"1518589005430025811.jpg\" alt=\"1473224858120.jpg\"/></h1>', '国际电影节-黄晓明-佟大为等人参加', 'black', null, null, '2', '13', '0765539d-3810-4276-a111-b68622ecf870.jpg', '电影节');
INSERT INTO `jeegem_article` VALUES ('12', '范冰冰参加颁奖仪式', '2018-02-14 14:17:33', '<p>范冰冰参加颁奖仪式</p><p><img src=\"/upload/JeeGem/image/20180214/1518589050170086007.jpg\" title=\"1518589050170086007.jpg\" alt=\"1473224881633.jpg\"/></p>', '范冰冰参加颁奖仪式', 'black', null, null, '2', '13', '35d5b056-411a-44c6-8ab9-cf6fe7f0ec58.jpg', '范冰冰 颁奖 仪式');
INSERT INTO `jeegem_article` VALUES ('13', '电影发布会', '2018-02-14 14:18:11', '<p>电影发布会</p><p><img src=\"/upload/JeeGem/image/20180214/1518589088445068843.jpg\" title=\"1518589088445068843.jpg\" alt=\"1473244866720.jpg\"/></p>', '电影发布会', 'black', null, null, '2', '13', '4ed73102-45c2-4309-9d24-ff8f3df0f6db.jpg', '电影 发布会');
INSERT INTO `jeegem_article` VALUES ('14', '女明星过生日', '2018-02-14 14:18:49', '<p>电影发布会<img src=\"/upload/JeeGem/image/20180214/1518589126120092215.jpg\" title=\"1518589126120092215.jpg\" alt=\"1473244923839.jpg\"/></p>', '女明星过生日', 'black', null, null, '2', '13', '30a14d2e-8da1-41aa-8b56-74a1a576d476.jpg', '女明星');
INSERT INTO `jeegem_article` VALUES ('15', '微软为何衰落：落后绩效制度 视Windows为上帝', '2018-02-14 14:33:52', '<p style=\"TEXT-INDENT: 2em\">以下为文章全文：</p><p style=\"TEXT-INDENT: 2em\">微软“迷失”的十年，已成为美国企业发展史上最大的谜团之一。为了解其中缘由，曾两次获得乔治·波尔卡新闻奖(George\r\n Polk Award)的美国知名记者、最近刚刚担任《名利场》特约编辑的库尔特·艾肯沃尔德(Kurt \r\nEichenwald)，对微软“愚蠢可怕的管理决策”进行了追踪调查和研究，并认为这些错误决策，完全可成为美国各商学院课堂教学中的典型案例：成功之后大难来临。</p><p style=\"TEXT-INDENT: 2em\">为了解真实情况，艾肯沃尔德曾查阅了大量微软内部文档，其中包括微软高管之间的电子邮件内容，同时还对多名微软高管进行了采访。通过这些材料，艾肯沃尔德将在《名利场》今年8月号发表深度文章，以向外界展示在现任CEO史蒂夫·鲍尔默(Steve\r\n Ballmer)领导下的微软员工真实生存状态。如今，<a class=\"a-tips-Article-QQ\" href=\"http://stockhtm.finance.qq.com/astock/ggcx/AAPL.OQ.htm\" target=\"_blank\">苹果</a>单独一项iPhone智能手机的营收，就超过了微软所有硬件业务的相应收入。</p><p style=\"TEXT-INDENT: 2em\">艾肯沃尔德在调查中发现，微软高管层曾制定了名为“员工大排名”(stack\r\n \r\nranking)的绩效管理制度。该规定的大致操作模式是：每个业务部门都必须按照一定比率将员工工作表现划分不同等级：优、良、中、差。艾肯沃尔德认为，正是这种“残酷”的绩效管理制度，使微软的技术创新能力大为降低。</p><p style=\"TEXT-INDENT: 2em\">艾肯沃尔德在文章中写道：“在我接触到的微软在任和前员工中，他们都表示，员工大排名已成为导致人心涣散的最主要因素。大量员工因此选择了从微软离职。”一位微软前软件开发人员也表示：“如果你是10人团队中的一员，你上班第一天就知道，即使该团队的每个成员都表现良好，总会有2人得优评，7人得中评，1人得差评。这就导致员工之间明争暗斗，而不是微软与其他公司争抢市场。”</p><p style=\"TEXT-INDENT: 2em\">艾肯沃尔德在采访微软前软件工程师布赖恩·科迪(Brian\r\n \r\nCody)过程中曾提问道，微软对科迪的工作评价，是否基于其工作业绩表现？科迪回答道：“一直以来的情况是，我如何成为一名更好工程师并不那么重要。重要的是，我必须考虑如何在一群项目经理中间变得更为引人注目。”</p><p style=\"TEXT-INDENT: 2em\">在微软任职16年的营销经理埃德·麦卡希尔(Ed\r\n McCahill)说：“你眼睁睁地看着Windows \r\nPhone项目表现不佳却帮不上什么忙，而心里怎么也想不通：微软为何就轻易失去了曾以Windows \r\nCE设备领先的优势？该设备曾大幅领先竞争对手，且领先对手多年。然而他们却把事情搞砸了，原因就是管理能力不行。”</p><p style=\"TEXT-INDENT: 2em\"><strong>电子书阅读器</strong></p><p style=\"TEXT-INDENT: 2em\">艾肯沃尔德表示，早在1998年期间，微软就开发出一款电子书阅读器原型产品。但开发人员将该产品交给微软联合创始人<a class=\"a-tips-Article-QQ\" href=\"http://datalib.tech.qq.com/people/173/index.shtml\" target=\"_blank\">比尔·盖茨</a>(Bill Gates)审查时，却没有被通过。盖茨当时表示，这款产品并不适合微软。一位曾参与该开发项目的程序员回忆道：“该产品之所以没有得到盖茨首肯，主要原因就是他不喜欢那个用户界面，觉得该界面不像是Windows。”</p><p style=\"TEXT-INDENT: 2em\">艾肯沃尔德在文章中写道：“当初开发电子书阅读器的团队，便被取消了向盖茨直接汇报产品的资格，并被编入主要为Office开发软件的技术开发团队当中。如此一来，这个本来富有创意的技术开发团队，被迫抛弃各种创意，并转为主要向高管汇报软件的盈利和亏损情况。”</p><p style=\"TEXT-INDENT: 2em\">该技术开发团队的创始人之一史蒂夫·斯通(Steve\r\n \r\nStone)说：“我们当时的整体计划已向前规划了三到四年，我们必须在1999年期间推出产品。然而后来我们却无法专注于开发对于消费者很有影响力的技术，而是突然被改变了工作内容，并被要求去重点思考产品盈利问题。”</p><p style=\"TEXT-INDENT: 2em\">一位微软Office部门前主管则透露，微软电子书阅读器项目之所以被否，并不仅仅是微软担心其盈利前景问题，关键还在于触摸屏。这位主管说：“Office最初是为键盘而设计，而非针对触控笔和手指。在微软技术开发过程中，存在着各种各样的个人偏见。”</p><p style=\"TEXT-INDENT: 2em\">多名微软高管认为，微软对于Windows操作系统和Office办公套件这两大产品的过于偏爱，导致该公司一而再、再而三地错过了使用新技术的大好机会。斯通表示：“Windows就是上帝，一切都得围着Windows转。有关简化型用户界面的移动计算创意，却被该部门的大头头们视为并不重要，他们还极力扼杀此类项目。”</p><p style=\"TEXT-INDENT: 2em\"><strong>社交网络</strong></p><p style=\"TEXT-INDENT: 2em\">一位从事微软MSN Messenger即时通信软件开发的年轻开发者曾注意到，一些大学生已在AOL的AIM即时通信服务上面发布状态更新信息，而微软MSN Messenger却缺乏相应功能。这位开发者说：“这其实就是向着<a class=\"a-tips-Article-QQ\" href=\"http://stockhtm.finance.qq.com/astock/ggcx/FB.OQ.htm\" target=\"_blank\">Facebook</a>发展的趋势所在。网民需要一个发布自己想法的场所，并能连续发布相关信息。AIM的主要目的并不是聊天，而是让用户随时登录该服务，以查看自己好友的最新活动动向。”</p><p style=\"TEXT-INDENT: 2em\">当这位年轻开发者向其上司提出MSN\r\n \r\nMessenger缺乏短信功能的意见后，其上司并没有当回事，并表示自己不理解为何年轻人没事时老喜欢在即时通信服务中打上几个字。这位开发者说：“我的上司根本就不明白其中的道理。正是因为他不理解或说不相信年轻人使用即时通信的具体方式，因此我们在这项业务上毫无作为。”</p><p style=\"TEXT-INDENT: 2em\">微软前营销经理库尔特·马塞(Kurt\r\n \r\nMassey)表示：“我觉得目前的微软，就好比科技产业的西尔斯(Sears，美国零售商)。上个世纪40年代到60年代，西尔斯业务非常稳固，如日中天，而目前该零售商却门前冷落鞍马稀。微软其实也是这种情况，该公司表现已经不再那么优秀。”</p><p><br/></p>', '微软为何衰落：落后绩效制度 视Windows为上帝', 'black', null, null, '3', '14', '0612efdb-ad39-411e-b7c1-efca392d1fdb.jpg', '微软 衰弱');
INSERT INTO `jeegem_article` VALUES ('16', '幻灯----合照', '2018-02-26 03:41:29', '<p>幻灯<br/></p>', '幻灯合照', 'black', null, null, '5', '12', '753d8e34-8384-42d2-9713-17253ba9ad29.jpg', null);
INSERT INTO `jeegem_article` VALUES ('17', '幻灯----火车轨合照', '2018-02-26 03:42:22', '<p>幻灯<br/></p>', '范德萨', 'black', null, null, '5', '12', 'c510d8e9-92a9-491b-af98-2e72876fa392.jpg', null);

-- ----------------------------
-- Table structure for jeegem_articletype
-- ----------------------------
DROP TABLE IF EXISTS `jeegem_articletype`;
CREATE TABLE `jeegem_articletype` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(100) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `keywords` varchar(400) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeegem_articletype
-- ----------------------------
INSERT INTO `jeegem_articletype` VALUES ('10', '技术分享', '1', '技术分享', '技术分享');
INSERT INTO `jeegem_articletype` VALUES ('11', 'Java架构分享', '2', 'Java架构分享', 'Java架构分享');
INSERT INTO `jeegem_articletype` VALUES ('12', '旅游攻略', '3', '旅游攻略', '旅游攻略');
INSERT INTO `jeegem_articletype` VALUES ('13', '娱乐新闻', '4', '娱乐新闻', '娱乐新闻');
INSERT INTO `jeegem_articletype` VALUES ('14', 'IT资讯', '5', 'IT资讯', 'IT资讯');
INSERT INTO `jeegem_articletype` VALUES ('15', 'Java编程', '6', 'Java编程', 'Java编程');
INSERT INTO `jeegem_articletype` VALUES ('16', 'PHP学习', '7', 'PHP学习', 'PHP学习');
INSERT INTO `jeegem_articletype` VALUES ('17', 'C#培训', '8', 'C#培训', 'C#培训');

-- ----------------------------
-- Table structure for jeegem_codegen_column
-- ----------------------------
DROP TABLE IF EXISTS `jeegem_codegen_column`;
CREATE TABLE `jeegem_codegen_column` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `columnName` varchar(255) DEFAULT NULL COMMENT '属性名',
  `columType` varchar(255) DEFAULT NULL COMMENT '属性类型',
  `comment` varchar(255) DEFAULT NULL COMMENT '属性注释',
  `tableId` int(11) DEFAULT NULL COMMENT '所属表ID',
  `relational` int(255) DEFAULT NULL COMMENT '关联关系：1、一对一，2、一对多，3、多对多',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='记录代码生成器列名称';

-- ----------------------------
-- Records of jeegem_codegen_column
-- ----------------------------

-- ----------------------------
-- Table structure for jeegem_codegen_scheme
-- ----------------------------
DROP TABLE IF EXISTS `jeegem_codegen_scheme`;
CREATE TABLE `jeegem_codegen_scheme` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID主键',
  `tableName` varchar(255) DEFAULT NULL COMMENT '表名',
  `entityName` varchar(255) DEFAULT NULL COMMENT '表对应的实体类名',
  `comment` varchar(255) DEFAULT NULL COMMENT '注释，用在实体类的说明上',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='记录代码生成器功能里面需要生成的表信息';

-- ----------------------------
-- Records of jeegem_codegen_scheme
-- ----------------------------

-- ----------------------------
-- Table structure for jeegem_permission
-- ----------------------------
DROP TABLE IF EXISTS `jeegem_permission`;
CREATE TABLE `jeegem_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `url` varchar(256) DEFAULT NULL COMMENT 'url地址',
  `name` varchar(64) DEFAULT NULL COMMENT 'url描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeegem_permission
-- ----------------------------
INSERT INTO `jeegem_permission` VALUES ('4', '/permission/index.shtml', '权限列表');
INSERT INTO `jeegem_permission` VALUES ('6', '/permission/addPermission.shtml', '权限添加');
INSERT INTO `jeegem_permission` VALUES ('7', '/permission/deletePermissionById.shtml', '权限删除');
INSERT INTO `jeegem_permission` VALUES ('8', '/member/list.shtml', '用户列表');
INSERT INTO `jeegem_permission` VALUES ('9', '/member/online.shtml', '在线用户');
INSERT INTO `jeegem_permission` VALUES ('10', '/member/changeSessionStatus.shtml', '用户Session踢出');
INSERT INTO `jeegem_permission` VALUES ('11', '/member/forbidUserById.shtml', '用户激活&禁止');
INSERT INTO `jeegem_permission` VALUES ('12', '/member/deleteUserById.shtml', '用户删除');
INSERT INTO `jeegem_permission` VALUES ('13', '/permission/addPermission2Role.shtml', '权限分配');
INSERT INTO `jeegem_permission` VALUES ('14', '/role/clearRoleByUserIds.shtml', '用户角色分配清空');
INSERT INTO `jeegem_permission` VALUES ('15', '/role/addRole2User.shtml', '角色分配保存');
INSERT INTO `jeegem_permission` VALUES ('16', '/role/deleteRoleById.shtml', '角色列表删除');
INSERT INTO `jeegem_permission` VALUES ('17', '/role/addRole.shtml', '角色列表添加');
INSERT INTO `jeegem_permission` VALUES ('18', '/role/index.shtml', '角色列表');
INSERT INTO `jeegem_permission` VALUES ('19', '/permission/allocation.shtml', '权限分配');
INSERT INTO `jeegem_permission` VALUES ('20', '/role/allocation.shtml', '角色分配');
INSERT INTO `jeegem_permission` VALUES ('21', 'role/chooseRole.shtml', '选择角色');
INSERT INTO `jeegem_permission` VALUES ('22', '/permission/allocation.shtml', '权限分配');
INSERT INTO `jeegem_permission` VALUES ('23', '/user/indexfd.shtml', '321321');
INSERT INTO `jeegem_permission` VALUES ('24', '/permission/selectPermissionById.shtml', '选择角色');

-- ----------------------------
-- Table structure for jeegem_role
-- ----------------------------
DROP TABLE IF EXISTS `jeegem_role`;
CREATE TABLE `jeegem_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL COMMENT '角色名称',
  `type` varchar(10) DEFAULT NULL COMMENT '角色类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeegem_role
-- ----------------------------
INSERT INTO `jeegem_role` VALUES ('1', '系统管理员', '888888');
INSERT INTO `jeegem_role` VALUES ('3', '权限角色', '100003');

-- ----------------------------
-- Table structure for jeegem_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `jeegem_role_permission`;
CREATE TABLE `jeegem_role_permission` (
  `rid` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `pid` bigint(20) DEFAULT NULL COMMENT '权限ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeegem_role_permission
-- ----------------------------
INSERT INTO `jeegem_role_permission` VALUES ('3', '4');
INSERT INTO `jeegem_role_permission` VALUES ('3', '6');
INSERT INTO `jeegem_role_permission` VALUES ('3', '7');
INSERT INTO `jeegem_role_permission` VALUES ('3', '13');
INSERT INTO `jeegem_role_permission` VALUES ('3', '14');
INSERT INTO `jeegem_role_permission` VALUES ('3', '15');
INSERT INTO `jeegem_role_permission` VALUES ('3', '16');
INSERT INTO `jeegem_role_permission` VALUES ('3', '17');
INSERT INTO `jeegem_role_permission` VALUES ('3', '18');
INSERT INTO `jeegem_role_permission` VALUES ('3', '19');
INSERT INTO `jeegem_role_permission` VALUES ('3', '20');
INSERT INTO `jeegem_role_permission` VALUES ('1', '4');
INSERT INTO `jeegem_role_permission` VALUES ('1', '6');
INSERT INTO `jeegem_role_permission` VALUES ('1', '7');
INSERT INTO `jeegem_role_permission` VALUES ('1', '8');
INSERT INTO `jeegem_role_permission` VALUES ('1', '9');
INSERT INTO `jeegem_role_permission` VALUES ('1', '10');
INSERT INTO `jeegem_role_permission` VALUES ('1', '11');
INSERT INTO `jeegem_role_permission` VALUES ('1', '12');
INSERT INTO `jeegem_role_permission` VALUES ('1', '13');
INSERT INTO `jeegem_role_permission` VALUES ('1', '14');
INSERT INTO `jeegem_role_permission` VALUES ('1', '15');
INSERT INTO `jeegem_role_permission` VALUES ('1', '16');
INSERT INTO `jeegem_role_permission` VALUES ('1', '17');
INSERT INTO `jeegem_role_permission` VALUES ('1', '18');
INSERT INTO `jeegem_role_permission` VALUES ('1', '19');
INSERT INTO `jeegem_role_permission` VALUES ('1', '20');
INSERT INTO `jeegem_role_permission` VALUES ('1', '21');
INSERT INTO `jeegem_role_permission` VALUES ('3', '21');
INSERT INTO `jeegem_role_permission` VALUES ('1', '22');
INSERT INTO `jeegem_role_permission` VALUES ('1', '23');
INSERT INTO `jeegem_role_permission` VALUES ('1', '24');
INSERT INTO `jeegem_role_permission` VALUES ('4', '8');
INSERT INTO `jeegem_role_permission` VALUES ('4', '9');
INSERT INTO `jeegem_role_permission` VALUES ('4', '10');
INSERT INTO `jeegem_role_permission` VALUES ('4', '11');
INSERT INTO `jeegem_role_permission` VALUES ('4', '12');
INSERT INTO `jeegem_role_permission` VALUES ('4', '21');
INSERT INTO `jeegem_role_permission` VALUES ('4', '4');
INSERT INTO `jeegem_role_permission` VALUES ('4', '6');

-- ----------------------------
-- Table structure for jeegem_sysconfig
-- ----------------------------
DROP TABLE IF EXISTS `jeegem_sysconfig`;
CREATE TABLE `jeegem_sysconfig` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `addTime` datetime DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL COMMENT '配置key',
  `value` varchar(255) DEFAULT NULL COMMENT '配置值',
  `comment` varchar(255) DEFAULT NULL COMMENT '配置说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='主要记录整个系统的常量等，比如上传文件路径、分页大小等';

-- ----------------------------
-- Records of jeegem_sysconfig
-- ----------------------------

-- ----------------------------
-- Table structure for jeegem_user
-- ----------------------------
DROP TABLE IF EXISTS `jeegem_user`;
CREATE TABLE `jeegem_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(20) DEFAULT NULL COMMENT '用户昵称',
  `email` varchar(128) DEFAULT NULL COMMENT '邮箱|登录帐号',
  `pswd` varchar(32) DEFAULT NULL COMMENT '密码',
  `photo` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_login_time` datetime DEFAULT NULL COMMENT '最后登录时间',
  `status` bigint(1) DEFAULT '1' COMMENT '1:有效，0:禁止登录',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeegem_user
-- ----------------------------
INSERT INTO `jeegem_user` VALUES ('1', '管理员', 'admin', '0f24a88a1b0624ddc6d923ccba9679ba', null, '2016-06-16 11:15:33', '2018-02-26 23:05:12', '1');
INSERT INTO `jeegem_user` VALUES ('2', '321', '3213', '321', null, '2018-02-08 12:58:54', '2018-02-09 12:58:57', '1');
INSERT INTO `jeegem_user` VALUES ('3', '321fdsafds', '321', '321', null, '2018-02-09 12:59:06', '2018-02-09 12:59:10', '1');
INSERT INTO `jeegem_user` VALUES ('4', '321', '321', '321', null, '2018-02-09 12:59:18', '2018-02-09 12:59:21', '1');
INSERT INTO `jeegem_user` VALUES ('5', '321', '321', '321', null, '2018-02-09 12:59:30', '2018-02-09 12:59:33', '1');
INSERT INTO `jeegem_user` VALUES ('6', '321', '321', '321', null, '2018-02-09 12:59:40', '2018-02-09 12:59:43', '1');
INSERT INTO `jeegem_user` VALUES ('7', '32', '321', '321', null, '2018-02-09 12:59:51', '2018-02-09 12:59:54', '1');
INSERT INTO `jeegem_user` VALUES ('8', '321', '321', '321', null, '2018-02-09 13:00:01', '2018-02-09 13:00:04', '1');
INSERT INTO `jeegem_user` VALUES ('9', '34321', '432', '432', null, '2018-02-09 13:00:12', '2018-02-09 13:00:15', '1');
INSERT INTO `jeegem_user` VALUES ('10', '3432', '4321', '4321', null, '2018-02-09 13:00:23', '2018-02-09 13:00:25', '1');
INSERT INTO `jeegem_user` VALUES ('11', 'soso', '8446666@qq.com', '0f24a88a1b0624ddc6d923ccba9679ba', null, '2016-05-26 20:50:54', '2016-06-16 11:24:35', '1');
INSERT INTO `jeegem_user` VALUES ('12', '543', '543', '54324', null, '2018-02-09 13:00:33', '2018-02-09 13:00:36', '1');

-- ----------------------------
-- Table structure for jeegem_user_role
-- ----------------------------
DROP TABLE IF EXISTS `jeegem_user_role`;
CREATE TABLE `jeegem_user_role` (
  `uid` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `rid` bigint(20) DEFAULT NULL COMMENT '角色ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeegem_user_role
-- ----------------------------
INSERT INTO `jeegem_user_role` VALUES ('1', '1');
INSERT INTO `jeegem_user_role` VALUES ('1', '3');
INSERT INTO `jeegem_user_role` VALUES ('1', '4');
INSERT INTO `jeegem_user_role` VALUES ('11', '1');
INSERT INTO `jeegem_user_role` VALUES ('11', '3');
INSERT INTO `jeegem_user_role` VALUES ('11', '4');
