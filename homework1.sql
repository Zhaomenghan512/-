/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 80018
Source Host           : localhost:3306
Source Database       : homework1

Target Server Type    : MYSQL
Target Server Version : 80018
File Encoding         : 65001

Date: 2019-12-17 11:38:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `simply` text,
  `content` text,
  `type` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '沈梓捷1.7秒绝杀！单外援深圳逆转新疆获2连胜', '北京时间11月24日晚，CBA常规赛继续进行，新疆队客场挑战深圳队。因为穆罕默德缺阵，深圳队今晚以单外援迎战。凭借着沈梓捷最后的神奇空接绝杀，深圳最终......', '北京时间11月24日晚，CBA常规赛继续进行，新疆队客场挑战深圳队。因为穆罕默德缺阵，深圳队今晚以单外援迎战。凭借着沈梓捷最后的神奇空接绝杀，深圳最终以104-102爆冷击败新疆队。四节比分分别为24-22、29-22、23-31、26-29（新疆队在前）', '体育', '2019-11-25 14:33:37');
INSERT INTO `news` VALUES ('2', '慕尼黑绝杀重现！1.7秒后场发球 他完成空接绝杀！', '北京时间11月24日晚，常规赛第9轮深圳队104-102击败新疆队。比赛结束前最后时刻，深圳队前锋顾全炮弹式长传贯穿全场...', '北京时间11月24日晚，常规赛第9轮深圳队104-102击败新疆队。比赛结束前最后时刻，深圳队前锋顾全炮弹式长传贯穿全场，前场埋伏在篮下的沈梓捷空接完成了绝杀。这一幕几乎复制了1972年奥运会男篮决赛，前苏联队绝杀美国队的经典一幕。', '体育', '2019-11-24 14:33:40');
INSERT INTO `news` VALUES ('3', '广东11分胜单外援山西5连胜 阿联12+6任骏威33分', '北京时间11月24日晚，常规赛第9轮山西队主场迎战广东队。面对只有单外援出战的山西队...', '北京时间11月24日晚，常规赛第9轮山西队主场迎战广东队。面对只有单外援出战的山西队，广东队牢牢掌控比赛节奏，最终他们115-104战胜山西，夺得5连胜。四节比分分别为：27-32、22-32、26-26、29-25（山西队比分在前）。', '体育', '2019-11-23 14:33:45');
INSERT INTO `news` VALUES ('4', '再吃败仗！真要打哭了 书豪22+6+5又进空砍群', '北京首钢的东北客场之旅以两连败收官，继上一场18分惨败辽宁之后，今晚他们又以86-104不敌吉林，又一次遭到18分的败仗...', '北京首钢的东北客场之旅以两连败收官，继上一场18分惨败辽宁之后，今晚他们又以86-104不敌吉林，又一次遭到18分的败仗。北京外援林书豪在今晚贡献22分6助攻5抢断的全面数据，但他还是难以阻止吉林队用三分雨带走胜利。林书豪今晚的表现还算不错，但两连败显然不是他想要的结果。', '体育', '2019-11-22 14:33:47');
INSERT INTO `news` VALUES ('5', '《少年说》第四季今晚回归 陈铭梁田化身加油团', '万众期待中，湖南卫视《少年说》第四季今晚19:30正式回归，与亿万观众分享少年们的欢笑与感动...', '万众期待中，湖南卫视《少年说》第四季今晚19:30正式回归，与亿万观众分享少年们的欢笑与感动。《少年说》是湖南卫视节目制作中心孔晓一工作室打造的原创品牌，定位新一代青少年健康成长心理释放表述节目。在已播出的三季节目中，节目收视及社会影响力持续走高，正在成为学校、家庭、社会对青少年心理教育的情感纽带，开创青少年心理教育新范本。《少年说》第四季第一站来到了大连枫叶国际学校，陈铭、梁田将化身加油团，倾听这个国际化十足的学校里同学们的高台喊话。在本周的节目中，《少年说》与少年们会擦出什么样的火花？新一季的《少年说》又有哪些创新和看点？一切悬念尽在今晚揭晓。\r\n\r\n国际化学校初体验，混血萌娃“控诉”女同学掐脸惹爆笑\r\n\r\n第一周播出的节目精彩纷呈，国际化学校少年们的故事更是别开生面。这里有被女同学掐脸的超可爱混血萌娃；有像“机器猫”一样永远带着神秘“百宝袋”的班主任；有誓要“把大碴子味儿带回家乡”的东北话十级日本留学生；也有明明只想安静，却在班主任的坚持下“被迫营业”连续两年参加实心球比赛还打破校记录的女孩；还有在妈妈“霸道的爱”下，每天上着“妈妈喜欢”的兴趣班的六年级女生；更有从小调皮捣蛋却因为父亲作为一名边防战士，远离家乡坚守岗位而开始变得乖巧懂事的初一男孩……兴趣与爱好、责任与成长就在这些鲜活面孔的喊话之下一一展开。\r\n\r\n家长该不该给孩子规划报班、让孩子参加各类比赛？家长工作与陪伴如何均衡？少年和家长、同学、老师之间会有哪些新的矛盾？这些问题将以什么样的方式获得和解？……诸多热点话题纷至沓来，精彩不容错过。\r\n\r\n从“少年说”到“少年们说”，第四季升级深挖热点话题\r\n\r\n节目前三季涌现了很多讨论度高、经久不衰的热门话题，比如“亲子矛盾”“少年友谊”等。《少年说》第四季在这些话题中，继续挖掘更多的表达方式，期待引发更多的社会关注和讨论。这一季选题，将会涉及很多当下最新的热点内容，如“二孩问题”、“职业教育”、“奖励式教育”、“兴趣班选择”等等。\r\n\r\n而《少年说》在新一季中，也实现了从“少年说”到“少年们说”的蜕变。由个体表达变为群像表达，回应者可以是一个人，也可以是一个方阵，是有类似问题或者烦恼的同学，以此更好倾听少年们的心声，进而实现真正有效的正向沟通。\r\n\r\n此外，陈铭和梁田两位加油团成员以陪伴者、观察者、聆听者的身份出现也将不断为少年们打气：陈铭老师从专业的视角出发，正向引导青少年价值观；梁田作为少年们的知心大姐姐，引导情绪亲切感十足。加油团为节目增添了许多看点的同时，也将让观众产生更多的共鸣和思考。\r\n\r\n观众点赞勇气台，“少年说应该是社会的一面镜子”', '娱乐', '2019-12-05 14:44:50');
INSERT INTO `news` VALUES ('6', '《巅峰对决》章若楠助演《归来》 花棉袄气质清纯', '章若楠身穿花棉袄助演《归来》 携手佟大为薛佳凝上演催泪大戏...', '章若楠身穿花棉袄助演《归来》 携手佟大为薛佳凝上演催泪大戏\r\n\r\n11月30日晚，《我就是演员之巅峰对决》迎来上半季收官战。95后新生代演员章若楠作为佟大为导师的学徒助演电影《归来》经典片段，节目中章若楠身穿花棉袄梳着双麻花辫，一改往日青春靓丽的风格，气质清纯又有年代感，泪光闪烁的“倔强脸”楚楚动人。\r\n\r\n第一次演年代戏的章若楠饰演怀揣芭蕾舞梦想却因被骗告发父亲的女儿丹丹，与佟大为、薛佳凝共同上演了一场催泪大戏。首次在舞台担当重任的章若楠，将对母亲的愧疚、心疼以及父亲的陌生到理解的情感变化诠释得克制细腻。节目播出后，章若楠花棉袄造型引发热议，更有不少网友评论：“被丹丹的两声‘爸爸’感动到了！”“丹丹那几声爸叫的人揪心！”富有层次的表演真挚动人。\r\n\r\n据悉，导师佟大为与学徒章若楠已成功晋级《我就是演员之巅峰对决》半决赛，期待二人带来更精彩的表演！', '娱乐', '2019-12-05 14:46:48');
INSERT INTO `news` VALUES ('7', '《我要上春晚》刘璇担任推荐官潸然泪下', '11月30日晚，最新一期《我要上春晚》在CCTV-3播出，奥运体操冠军刘璇...', '11月30日晚，最新一期《我要上春晚》在CCTV-3播出，奥运体操冠军刘璇与丈夫王弢一起担任推荐官，向大众推荐了两组不仅具有高难度而且具有高审美价值的精彩节目。刘璇表示，她以一名专业体操选手的视觉来推荐节目，推荐的是为梦想不停追求、不断提高专业难度和审美价值的节目，同时希望这些节目能打动观众，鼓励观众。\r\n\r\n本期节目，刘璇与王弢推荐了《环舞传奇》《飞跃巅峰》等节目。\r\n\r\n在推荐的时候，刘璇与王弢都对选手们的专业表现点赞。尤其是说到选手们为了提高节目效果付出的艰辛努力，刘璇不禁潸然泪下。王弢说，刘璇是触景生情，她在专业体操道路上的执着努力付出和节目中的选手如出一辙。\r\n\r\n刘璇王弢在节目中除了推荐励志正能量，也展示了他们轻松活泼的一面，此次担任推荐官，他们的口号是夫妻同心，其利断金！\r\n\r\n不少观众表示，刘璇太适合这档节目了，她给大家的感觉依然是那么亲切温暖，同时经过岁月的沉淀，她更是完美女性的最佳代表，期待她在这档节目能够多多亮相！', '娱乐', '2019-12-05 14:47:24');
INSERT INTO `news` VALUES ('8', '陈晓亮相《一堂好课》 分享儿时军人梦传递正能量', '日前，CCTV大型文化类节目《一堂好课》，继“思政课”和“文博课”之后，终于迎来...', '日前，CCTV大型文化类节目《一堂好课》，继“思政课”和“文博课”之后，终于迎来第三期“时代影像课”，节目播出后好评不断。“课代表”陈晓一身军绿色西装英姿焕发，与“好课班主任”康辉以及战士们一起聆听优秀电影人、著名导演陈凯歌的讲解，共同探讨影像和时代以及时代和人的关系。不仅如此，陈晓还透露了自己儿时的军人梦。\r\n\r\n时代影像展现电影魅力 “课代表”陈晓分享儿时军人梦\r\n\r\n在节目中，陈晓就“用电影艺术记录时代，有何种独特性和魅力”这一问题，向陈凯歌导演请教，交流了对于记录时代影像、传递时代精神的思考。陈晓表示身为演员应该具备使命与责任感，演员每塑造一个形象，都是对时代的演绎与记录，需要慎重选择，精诚演绎，努力用优秀的角色作品留下时代影像。\r\n\r\n今年在新中国成立70周年的庆典上，士兵方阵整齐划一，呈现出斗志昂扬的精神面貌，陈晓感慨隔着屏幕也深受震撼，为祖国的强大感到自豪。节目中陈晓还透露自己从小就有个军人梦，今年终于演了军旅题材的作品，完成了儿时的梦想，而在拍摄期间体验的军旅生活更让自己对军人充满了敬畏。这次来到《一堂好课》作“课代表”，陈晓组织了一次分享会，带领现场战士和观众一同翻看一本特别的“电子相册”，邀请战士们讲述照片背后的时代故事，向大家展示了他们为了国家形象付出的努力与汗水。\r\n\r\n挑战不同角色演绎时代作品 陈晓身体力行传递正能量\r\n\r\n这次陈晓来到部队录制节目，一身军绿色西装站在战士们中间，笔直挺拔，毫不违和，他更是透露自己从小就有军人情结，因此演绎了很多军旅题材作品。无论是电影《智取威虎山》中的年轻警卫员，还是今年播出的《一场遇见爱情的旅行》中复杂机智的卧底警察、献礼剧《陆战之王》中昂扬热血的坦克兵，陈晓成功塑造了角色形象。既圆了自己的军人梦，也展现出中国军人团结、坚韧、自强的风采，用作品向新时代军人致敬。\r\n\r\n除了演绎优秀影视作品，今年，作为中国文艺志愿者协会理事，陈晓参加三峡下基层慰问演出，身体力行为社会贡献力量。同时，在学雷锋主题宣传特别节目中陈晓为观众带来情景音诗画表演；2018年登上央视春晚献唱《万紫千红中国年》；还参与过《国家宝藏》、《信·中国》等优秀节目的录制，积极传递正能量。近年陈晓不断尝试现实主义题材作品，明年还有《了不起的儿科医生》、《好好说话》、《人民的财产》、《嗨美男子》等多部作品即将与大家见面，陈晓又将呈现怎样的精彩角色，十分令人期待。', '娱乐', '2019-12-05 14:48:15');
INSERT INTO `news` VALUES ('9', '赵薇《两只老虎》贡献精彩演技 戏中戏表演引共鸣', '由赵薇监制并主演，李非执导，葛优、乔杉领衔主演的荒诞喜剧电影《两只老虎》于...', '由赵薇监制并主演，李非执导，葛优、乔杉领衔主演的荒诞喜剧电影《两只老虎》于11月29日正式上映，领跑贺岁档。此次，赵薇以监制与演员身份参与影片制作，并为电影演唱片尾曲，多重身份展现全能之姿。\r\n赵薇《两只老虎》上演戏中戏 真挚演技引发观众共鸣\r\n\r\n电影《两只老虎》讲述了绑匪余凯旋（乔杉饰），绑架了社会精英张成功（葛优饰）所引发的有关于爱情、亲情与友情的一系列荒诞有趣的故事。整部影片以喜剧为基调，演绎着一个充满着遗憾的人生，与两个人自我救赎，有笑点，更有泪点。赵薇在影片中饰演的周原是一位并不得志的女演员，在年少时与葛优饰演的张成功有着一段无疾而终的感情纠葛。\r\n\r\n影片中，赵薇饰演的周原上演戏中戏，借表演来宣泄曾经历过的遗憾，真挚地表演引发了观众的共鸣。观看过《两只老虎》点映的观众评价到：“赵薇的那段台词，我笑着笑着就哭了，这绝对是靠演员的演技才能精准传递给观众如此的感受。“ 除在影片中再次贡献了精彩的演技外，赵薇此次更是为影片演唱片尾曲《可以》，富有感染力的歌声在影片结束时娓娓道来，诉尽演员心中故事。\r\n\r\n《演员请就位》赛制升级 赵薇合作指导新作《来电狂响》\r\n\r\n赵薇与李非导演的合作从《两只老虎》进而衍生到了电影之外。在国内首档导演选角真人秀《演员请就位》中，由赵薇执导的两部作品《面具》与《秘方》正是由李非担任编剧，两部作品均有铺设大量喜剧因素，并以动人情节搭配巧妙构思获得网友一众好评。在节目中，赵薇更多次提到自己对于喜剧的热爱，并在执导过程中展现了自己对喜剧节奏把控的正确方向与专业性。\r\n\r\n在新一期的《演员请就位》中，节目赛制将升级为导演间相互合作，以现场影视化的模式联盟对战。导演赵薇将搭档郭敬明导演联合执导作品《来电狂响》，多人物的情景设定让演员表演与导演执导难度再次升级。', '娱乐', '2019-12-05 14:49:04');
INSERT INTO `news` VALUES ('10', '阿里今在港交所主板上市 募资金额约880亿港元', '一家国际资本最为期待的跨境上市公司今日正式诞生。阿里巴巴集团控股有限公司...', '一家国际资本最为期待的跨境上市公司今日正式诞生。阿里巴巴集团控股有限公司（以下简称“阿里巴巴”）近日发布公告称，公司将于11月26日在港交所主板正式上市，股票代码为“9988”，募资金额预计约为880亿港元，这也是9年以来，中国香港股票市场规模最大的上市交易，同时也是全球第二大跨境上市案例，多家国际知名金融机构担当承销角色，投资者参与数量近20万户。\r\n\r\n多位私募人士告诉《证券日报》记者，阿里巴巴赴港上市后最大的受益者除了自身以外，另一个就是港交所，引入阿里巴巴将有效提升港交所抗风险能力，提升对科技公司赴港上市的吸引力。对于普通投资者来说，此时布局阿里巴巴可能不会是最佳时机，同时，阿里巴巴与腾讯不会产生替代效应，但可能对资本的流向产生影响。\r\n\r\n多家跨国投行承担募资角色\r\n\r\n《证券日报》记者了解到，阿里巴巴在港交所的上市堪称“巨无霸”，这是因为阿里巴巴此次的募资金额相对较高，对于中国港股上市定价为每股176港元，至少募集资金为880亿港元，这是9年以来，中国港股市场规模最大的上市交易案例，同时，也是全球第二大跨境上市募资案例。\r\n\r\n按照阿里巴巴的上市战略规划，计划将全球发售募资资金用于战略需要，业务发展包括用户增长与参与度的提升，助力公司实现数字化升级，提升运营效率及持续创新。记者发现，阿里巴巴此次发行募集资金的承销商，包括了星展亚洲融资（DBS）、UBS、JP摩根、摩根士丹利、工银国际证券、中金公司、德意志银行、中信里昂证券、招银国际融资公司、上投摩根基金等多家国际知名金融机构，投资者参与数量近20万户，为19.57万户。\r\n\r\n在采访中，《证券日报》记者了解到，多家内地百亿元级私募也参与阿里巴巴新股发行。上海某百亿元级私募相关人士表示，“由于公司参与了阿里巴巴打新行为，鉴于目前的持仓情况，暂不便接受采访。”\r\n\r\n基岩资本副总裁岑赛铟告诉记者，尽管阿里巴巴上市得到了资本的青睐，但在中国香港成功上市的根本原因是能够帮助拓展多元化的融资渠道，尤其是在全球经济环境不确定性加剧的背景下，着手跨境市场募资也能在一定程度上降低资本风险。此前，大量国际资本都试图做空中概股，阿里大股东Altaba（Altaba是雅虎核心业务出售给Verizon后，更改的新名字）就曾宣布，于2019年5月20日开始出售所持的阿里巴巴美国存托股票，目前其持有阿里的股份已经下降到9.4%。可以预期，回归港股后，阿里巴巴的市场承受力会大大增强，对股价也会有所提振。\r\n\r\n“其实另一个主要受益者是港交所。”岑赛铟告诉记者，目前恒生指数每天成交额不足千亿港元，活跃度不如沪深两地市场，引入阿里巴巴可以有效提升港交所抗风险能力。同时，对于港股而言，阿里巴巴此时入场，能够提升港股对科技公司的吸引力，驱动更多同类公司进入，活跃资本市场。\r\n\r\n不过，对于阿里回归的示范效应，分析人士认为：“应保持观望态度，美股市场的中概股，青睐港股市场的并不多见。但如果阿里巴巴在港股市场中确实表现出色，纳入港股通后又吸引了大量南向资金，或许会让一些等不及CDR的中概股波动。”\r\n\r\n美港投资创始合伙人张李冲向《证券日报》记者表示，阿里巴巴新股定价相当于美股市场的180美元/股左右，没有明显的折扣，所以公司没有参与打新。“目前阿里巴巴的估值基本处于相对合理范围内，具备一定的长期投资价值，上市短期可能会因为资金追捧而上涨，但长期还是和美股走势趋同，与基本面的变化趋于一致。”\r\n\r\n另有分析人士指出，相对于美股和港股市场来说，投资者比较偏于理性，炒作股价的概率小一些，因此，此时买入阿里巴巴的新股能否赚钱，不能以A股的思维去考虑。“阿里巴巴在美国纽交所上市与其在中国香港上市的ADR是‘镜像’关系，也就是说，在中国香港买还是在美国买，享受的收益基本上相差不大。”\r\n\r\n与腾讯有可能产生资本分流\r\n\r\n截至目前，阿里巴巴大部分股份依然在纽交所交易，以美股作为参考价计算，新股发行折价率不足3%，比如短期内通过打新套利，上涨空间是有限的。此外，虽然低估值的港股具备投资价值，但是目前港股依旧存在很大的不确定性，多位分析人士建议谨慎为主。\r\n\r\n岑赛铟认为，从长期来看，阿里巴巴依然是国内最优秀的互联网公司之一。从公布的财报数据来看，阿里巴巴在零售业务方面仍然保持强力增长趋势，今年三季度阿里巴巴营收同比保持了40%的增速，主营业务核心电商收入占比86.6%，其中，广告、佣金、新零售是核心电商收入的大头，广告与佣金收入分别增长了27%、23%，新零售业务增长134%，在云计算等新业态方面，也还有不错的上涨空间。\r\n\r\n岑赛铟说，阿里巴巴在港股市场直接控股的有阿里健康、阿里影业、亚博科技控股三家公司，还有高鑫零售等8家阿里持股或间接持股的相关公司，此次阿里巴巴赴港二次上市，或许会带动相关公司股价有所变化。\r\n\r\n有业内人士表示，阿里巴巴赴中国香港上市后，港股市场也将随之迈入互联网“阿里+腾讯”双巨头时代，阿里巴巴能否取代腾讯成为新一代股王成为了期待。\r\n\r\n深圳某股权私募公司认为，阿里巴巴与腾讯两家业务不太一样，不存在“替代”可能，前者着重电商和云业务，后者更多发展游戏和广告业务，很多投资者会同时考虑参与两只个股的投资。', '股票', '2019-12-05 15:01:36');
INSERT INTO `news` VALUES ('11', '阿里今在港交所主板上市 募资金额约880亿港元', '一家国际资本最为期待的跨境上市公司今日正式诞生。阿里巴巴集团控股有限公司...', '一家国际资本最为期待的跨境上市公司今日正式诞生。阿里巴巴集团控股有限公司（以下简称“阿里巴巴”）近日发布公告称，公司将于11月26日在港交所主板正式上市，股票代码为“9988”，募资金额预计约为880亿港元，这也是9年以来，中国香港股票市场规模最大的上市交易，同时也是全球第二大跨境上市案例，多家国际知名金融机构担当承销角色，投资者参与数量近20万户。\r\n\r\n多位私募人士告诉《证券日报》记者，阿里巴巴赴港上市后最大的受益者除了自身以外，另一个就是港交所，引入阿里巴巴将有效提升港交所抗风险能力，提升对科技公司赴港上市的吸引力。对于普通投资者来说，此时布局阿里巴巴可能不会是最佳时机，同时，阿里巴巴与腾讯不会产生替代效应，但可能对资本的流向产生影响。\r\n\r\n多家跨国投行承担募资角色\r\n\r\n《证券日报》记者了解到，阿里巴巴在港交所的上市堪称“巨无霸”，这是因为阿里巴巴此次的募资金额相对较高，对于中国港股上市定价为每股176港元，至少募集资金为880亿港元，这是9年以来，中国港股市场规模最大的上市交易案例，同时，也是全球第二大跨境上市募资案例。\r\n\r\n按照阿里巴巴的上市战略规划，计划将全球发售募资资金用于战略需要，业务发展包括用户增长与参与度的提升，助力公司实现数字化升级，提升运营效率及持续创新。记者发现，阿里巴巴此次发行募集资金的承销商，包括了星展亚洲融资（DBS）、UBS、JP摩根、摩根士丹利、工银国际证券、中金公司、德意志银行、中信里昂证券、招银国际融资公司、上投摩根基金等多家国际知名金融机构，投资者参与数量近20万户，为19.57万户。\r\n\r\n在采访中，《证券日报》记者了解到，多家内地百亿元级私募也参与阿里巴巴新股发行。上海某百亿元级私募相关人士表示，“由于公司参与了阿里巴巴打新行为，鉴于目前的持仓情况，暂不便接受采访。”\r\n\r\n基岩资本副总裁岑赛铟告诉记者，尽管阿里巴巴上市得到了资本的青睐，但在中国香港成功上市的根本原因是能够帮助拓展多元化的融资渠道，尤其是在全球经济环境不确定性加剧的背景下，着手跨境市场募资也能在一定程度上降低资本风险。此前，大量国际资本都试图做空中概股，阿里大股东Altaba（Altaba是雅虎核心业务出售给Verizon后，更改的新名字）就曾宣布，于2019年5月20日开始出售所持的阿里巴巴美国存托股票，目前其持有阿里的股份已经下降到9.4%。可以预期，回归港股后，阿里巴巴的市场承受力会大大增强，对股价也会有所提振。\r\n\r\n“其实另一个主要受益者是港交所。”岑赛铟告诉记者，目前恒生指数每天成交额不足千亿港元，活跃度不如沪深两地市场，引入阿里巴巴可以有效提升港交所抗风险能力。同时，对于港股而言，阿里巴巴此时入场，能够提升港股对科技公司的吸引力，驱动更多同类公司进入，活跃资本市场。\r\n\r\n不过，对于阿里回归的示范效应，分析人士认为：“应保持观望态度，美股市场的中概股，青睐港股市场的并不多见。但如果阿里巴巴在港股市场中确实表现出色，纳入港股通后又吸引了大量南向资金，或许会让一些等不及CDR的中概股波动。”\r\n\r\n美港投资创始合伙人张李冲向《证券日报》记者表示，阿里巴巴新股定价相当于美股市场的180美元/股左右，没有明显的折扣，所以公司没有参与打新。“目前阿里巴巴的估值基本处于相对合理范围内，具备一定的长期投资价值，上市短期可能会因为资金追捧而上涨，但长期还是和美股走势趋同，与基本面的变化趋于一致。”\r\n\r\n另有分析人士指出，相对于美股和港股市场来说，投资者比较偏于理性，炒作股价的概率小一些，因此，此时买入阿里巴巴的新股能否赚钱，不能以A股的思维去考虑。“阿里巴巴在美国纽交所上市与其在中国香港上市的ADR是‘镜像’关系，也就是说，在中国香港买还是在美国买，享受的收益基本上相差不大。”\r\n\r\n与腾讯有可能产生资本分流\r\n\r\n截至目前，阿里巴巴大部分股份依然在纽交所交易，以美股作为参考价计算，新股发行折价率不足3%，比如短期内通过打新套利，上涨空间是有限的。此外，虽然低估值的港股具备投资价值，但是目前港股依旧存在很大的不确定性，多位分析人士建议谨慎为主。\r\n\r\n岑赛铟认为，从长期来看，阿里巴巴依然是国内最优秀的互联网公司之一。从公布的财报数据来看，阿里巴巴在零售业务方面仍然保持强力增长趋势，今年三季度阿里巴巴营收同比保持了40%的增速，主营业务核心电商收入占比86.6%，其中，广告、佣金、新零售是核心电商收入的大头，广告与佣金收入分别增长了27%、23%，新零售业务增长134%，在云计算等新业态方面，也还有不错的上涨空间。\r\n\r\n岑赛铟说，阿里巴巴在港股市场直接控股的有阿里健康、阿里影业、亚博科技控股三家公司，还有高鑫零售等8家阿里持股或间接持股的相关公司，此次阿里巴巴赴港二次上市，或许会带动相关公司股价有所变化。\r\n\r\n有业内人士表示，阿里巴巴赴中国香港上市后，港股市场也将随之迈入互联网“阿里+腾讯”双巨头时代，阿里巴巴能否取代腾讯成为新一代股王成为了期待。\r\n\r\n深圳某股权私募公司认为，阿里巴巴与腾讯两家业务不太一样，不存在“替代”可能，前者着重电商和云业务，后者更多发展游戏和广告业务，很多投资者会同时考虑参与两只个股的投资。', '股票', '2019-12-05 15:02:06');
INSERT INTO `news` VALUES ('12', 'MSCI：暂停将雅高控股纳入MSCI中国指数', 'MSCI表示，暂停将雅高...', 'MSCI表示，暂停将雅高控股纳入MSCI中国指数，将会继续关注雅高控股。港股雅高控股现跌近98%。', '股票', '2019-12-05 15:02:37');
INSERT INTO `news` VALUES ('13', 'MSCI：暂停将雅高控股纳入MSCI中国指数', 'MSCI表示，暂停将雅高控股纳入MSCI中国指数，将会继续关注雅高控股。港股雅高控股现跌近98%。', 'MSCI表示，暂停将雅高控股纳入MSCI中国指数，将会继续关注雅高控股。港股雅高控股现跌近98%。', '股票', '2019-12-05 15:02:55');
INSERT INTO `news` VALUES ('14', '号外|斯凯奇在华被起诉专利侵权', '近几年因低价策略在中国市场取得较好业绩的运动鞋品牌斯凯奇...', '近几年因低价策略在中国市场取得较好业绩的运动鞋品牌斯凯奇（NYSE：SKX）近日因专利侵权在中国被告上了法庭。\r\n\r\n网易财经从法院方面获悉，台湾制造类企业“冠德红科技股份有限公司”今年向山东省济南市中级人民法院提起诉讼，起诉斯凯奇品牌在中国的运营方斯凯奇贸易（上海）有限公司、广州市斯凯奇商业有限公司等四家公司侵害了其发明专利权。\r\n\r\n据悉，此次涉及的被侵权专利为“具有层次感发光效果的提花结构及其制作方法”（专利号：ZL200610086745.X）。国家知识产权局官网显示，上述专利的申请日期是2006年6月20日，公开（公告）日为2007年12月26日。\r\n\r\n值得注意的是，在遭到“冠德红科技股份有限公司”起诉后，斯凯奇中国方面向国家知识产权局提出了上述无效宣告请求，而正是由于上述请求，山东省济南市中级人民法院暂时中止了上述诉讼。“本院经审查认为，涉案发明专利权的效力处于不稳定状态，本案的审理必须以国家知识产权局的无效宣告请求审查结果为依据，在审查决定书作出之前，本案中止诉讼”。\r\n\r\n有法律人士向网易财经指出，毫无疑问斯凯奇中国方面采取了拖延诉讼的法律策略。“就和管辖权异议一样，对一个十多年就已经公开的发明专利进行质疑，国家知识产权局做出无效裁决的结论微乎其微，但从法院的角度来说，如果国家知识产权局没有给出结论，法院也无法判决。但这种打法只能取一时之巧，国家知识产权局给出结论以后，原告仍然可以继续起诉斯凯奇”。\r\n\r\n而对于公司被起诉侵权，斯凯奇中国相关负责人则向网易财经表示，侵权与否的判断，应该依法院判定。目前这个案件只是对方认为我们侵权，因此向法院提起了诉讼，但我们是否在法律层面构成侵权，还待法院的公正审判。“目前因对方的专利权本身不稳定，因此法院中止了审理。换言之，如果法院认同我方侵权，法院不会中止审理，会直接做出判决”。\r\n\r\n据网易财经了解，除在中国遭到专利侵权起诉外，斯凯奇在其美国本土市场也是多次遭遇类似专利起诉。如在2014年，知名运动鞋品牌匡威就状告斯凯奇存在批量生产、经销或销售山寨版匡威Chuck Taylor经典款运动鞋的行为，以涉嫌中底设计专利侵权。2015年9月，阿迪达斯指控斯凯奇的Onix鞋款抄袭其经典鞋款Stan Smith。2016年7月，阿迪达斯再次起诉斯凯奇非法剽窃运动鞋设计概念，认为其Mega Blade鞋款故意侵犯自己的刀锋系列（Springblade）的设计专利。而在今年10月，耐克也将斯凯奇告上法庭，前者指控斯凯奇侵犯其Air气垫技术及相关鞋类缓震科技的专利权，主要体现在斯凯奇的Skech-Air Jumpin’Dots和Mega等产品线上。\r\n\r\n资料显示，凭借着“安踏李宁以上，耐克阿迪以下”的市场价格定位，斯凯奇中国从2014年开始进入飞速增长的状态，目前中国地区的营收已经接近斯凯奇全球营收的一半。数据显示，2018年斯凯奇全球销售总额46.4亿美元（约327.4亿元人民币），其中中国内地销售额高达141亿元。（陈俊宏）', '财经', '2019-12-05 15:04:10');
INSERT INTO `news` VALUES ('15', '快讯：创业板指涨逾2%站上1700关口 深成指涨逾1%', '12月5日讯 午后，三大指数继续走高，创业板指数重返1700点关口...', '12月5日讯 午后，三大指数继续走高，创业板指数重返1700点关口，截至目前：沪指涨0.53%，报2894.14点；深证成指涨1.07%，报9791.86点；创业板指数涨2.01%，报1707.46点。\r\n\r\n板块方面：电子制造、富士康等板块涨幅居前，有色黄金、白酒、农业等板块跌幅居前。\r\n\r\n外围情况：美三大股指全线收涨，芯片股反弹走高。截至收盘：道指涨0.53%，报27649.78点；标普500指数涨0.63%，报3112.76点；纳指涨0.54%，报8566.67点。个股方面，苹果涨约0.9%，芯片股高盛、美光科技、AMD均涨超2%。油价上涨助推能源股集体走强，切萨皮克能源涨超16%，马拉松石油涨超3%，康菲石油涨近3%。\r\n\r\n消息面上：1、国常会：要更大力度实施就业优先政策。深入推进\"双创\"，降低小微企业创业担保贷款申请条件。2、特朗普称“不介意到明年大选后签署贸易协议”，外交部回应称：我们不会为达成或不达成协议设定时间期限。3、富时中国A50剔除两只A股，分别是：中国交建、宝钢股份。4、浙江海宁龙洲印染坍塌事故致9人死亡，全市印染企业排查工作已启动。5、继湖南、山东、重庆之后，四川成为第四个取缔辖内全部P2P业务的省份。6、近期部分权重股股东认购比例超过ETF成分股的自然权重，监管已经叫停了ETF的超额换购。\r\n\r\n神光财经表示，做好战略布局。12月份给投资者提供了相当好的遴选个股的机会，因为包括之前的强势股在内，诸多公司多多少少都有一些调整，资金在年底也经过了较为充分的换手，后面一段时间，优秀公司的筹码会逐渐沉淀下来，这是核心资产牛市基本特点。因此，中短期内可以抓住市场慢节奏的特点，深入研究个股机会，以金融、消费、科技作为主赛道种子选手，另外可以继续在其他细分行业寻找龙头个股潜在机会。\r\n\r\n华龙证券指出，昨日欧美股市大跌并未给A股市场形成较大利空，沪指继续维持缩量震荡，收盘仍未收复5日均线和年线。但技术上看，近几个交易日多次呈现探底回升，并且一直维持缩量状态，表明下跌动能不足。另外，沪指出现两组孕线，表明短期引发小幅反弹的趋势有所显现。整体运行区间参考2850点-2930点。\r\n\r\n当前走势调整空间有限，但时间上还未充分，因此激进型投资者可以3成-5成仓位布局短期市场，围绕5G、芯片、半导体、元器件等把握低吸机会，同时严格设置止损；而稳健型投资者2900点下方继续关注指数型基金，待市场激发出具备连续性热点主线后再修改操作策略。\r\n\r\n银河证券指出，通过对外资的研究可以发现：外资“托底”特征较为明显，典型案例是2018年四季度和2019年初大举买入暴跌后的优质公司，指望外资制造牛市、高位买入，甚至当“接盘侠”是危险的，可能会愚弄自己。\r\n\r\n未来一个月配置思路：1、债券思维（防守反击）。买入估值低、股息率较高、有较好成长性的优质龙头公司。2、相关成长股龙头。调整较多时（按照历史经验，跌20%-30%就该动手了，指望跌太多往往会错过），买入景气度较高或行业盈利能力强的优质资产。医药疫苗生物制品、创新药和CRO/CDMO医药研发等子行业；5G实质受益子行业，比如电路板；新能源汽车锂电池龙头公司；3、建议继续“排雷”，排除“伪白马股”。', '财经', '2019-12-05 15:04:43');
INSERT INTO `news` VALUES ('16', '财经测试1', '财经侧测试', '财经测试1内容', '财经', '2019-12-05 15:38:55');
INSERT INTO `news` VALUES ('17', '财经测试2', '财经测试2', '财经测试2内容', '财经', '2019-12-05 15:39:19');
INSERT INTO `news` VALUES ('18', '汽车测试1', '汽车测试1', '汽车测试1内容', '汽车', '2019-12-05 15:39:45');
INSERT INTO `news` VALUES ('19', '汽车测试2', '汽车测试2', '汽车测试2内容', '汽车', '2019-12-05 15:40:00');
INSERT INTO `news` VALUES ('20', '汽车测试3', '汽车测试3', '汽车测试3内容', '汽车', '2019-12-05 15:40:13');
INSERT INTO `news` VALUES ('21', '汽车测试4', '汽车测试4', '汽车测试4内容', '汽车', '2019-12-05 15:40:27');
INSERT INTO `news` VALUES ('22', '科技测试1', '科技测试1', '科技测试1内容', '科技', '2019-12-05 12:40:47');
INSERT INTO `news` VALUES ('29', '科技测试2', '科技测试2', '科技测试2内容', '科技', '2019-12-09 08:33:12');
INSERT INTO `news` VALUES ('30', '科技测试3', '测试', '科技测试3内容', '科技', '2019-12-09 08:59:21');
INSERT INTO `news` VALUES ('31', '科技测试4', '科技4', '科技测试4内容', '科技', '2019-12-09 09:01:50');

-- ----------------------------
-- Table structure for password
-- ----------------------------
DROP TABLE IF EXISTS `password`;
CREATE TABLE `password` (
  `username` varchar(16) DEFAULT NULL,
  `password` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of password
-- ----------------------------
INSERT INTO `password` VALUES ('zhao', '123456');
