/*
 Navicat Premium Data Transfer

 Source Server         : test1
 Source Server Type    : MySQL
 Source Server Version : 50714
 Source Host           : localhost:3306
 Source Schema         : kmr

 Target Server Type    : MySQL
 Target Server Version : 50714
 File Encoding         : 65001

 Date: 09/05/2020 22:44:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('12', '12', 39);
INSERT INTO `account` VALUES ('123', '123', 40);
INSERT INTO `account` VALUES ('11', '11', 41);
INSERT INTO `account` VALUES ('1111', '1111', 42);
INSERT INTO `account` VALUES ('1234', '1234', 43);
INSERT INTO `account` VALUES ('潘宜静', '123', 44);
INSERT INTO `account` VALUES ('33', '123', 45);
INSERT INTO `account` VALUES ('小潘潘', '123', 46);
INSERT INTO `account` VALUES ('qwe', 'qwe', 47);
INSERT INTO `account` VALUES ('pyj', '123', 48);
INSERT INTO `account` VALUES ('321', '321', 49);
INSERT INTO `account` VALUES ('jyq', 'qwe', 50);
INSERT INTO `account` VALUES ('qwer', 'qwe', 51);
INSERT INTO `account` VALUES ('test', '12', 52);
INSERT INTO `account` VALUES ('qq', '11', 53);
INSERT INTO `account` VALUES ('hu', '11', 54);
INSERT INTO `account` VALUES ('qqqq', '11', 55);
INSERT INTO `account` VALUES ('zxcv', '11', 56);

-- ----------------------------
-- Table structure for food_information
-- ----------------------------
DROP TABLE IF EXISTS `food_information`;
CREATE TABLE `food_information`  (
  `fname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `introduction` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`fname`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of food_information
-- ----------------------------
INSERT INTO `food_information` VALUES ('五花肉', '五花肉，即是在猪肋排上的肉。五花肉的结构是一层瘦肉一层肥肉的间隔著，而它的肥肉遇热容易化，瘦肉久煮也不柴，做红烧肉或扣肉都非它莫属，传说中的极品五花肉是10层。选择优质五花肉，可用手摸，略微有沾手感觉，肉上无血，肥肉、瘦肉红白分明、色鲜艳。最好的五花肉在接近猪后臀尖部位，这里的五花肉，五花三层分明，肥瘦肉厚度相当，一整块五花肉厚度为一寸左右。肉类含蛋白质丰富，一般在10-20%之间。瘦肉比肥肉含蛋白质多。肉类食品含蛋白质是优质蛋白质，不仅含有的必需氮基酸全面、数量多，而且比例恰当，接近于人体的蛋白质，容易消化吸收。', 'wuhuarou');
INSERT INTO `food_information` VALUES ('全脂牛乳粉', '即全脂奶粉。全脂奶粉用纯乳生产的，基本保持了乳中的原有营养成分，蛋白质不低于24%，脂肪不低于26%，乳糖不低于37%。生产1 千克全脂奶粉约需8－9千克牛奶，食用时每份奶粉需8倍的温开水冲调。全脂的脂肪比低脂和脱脂高。全脂奶粉含有牛奶中的优质蛋白质、脂肪、多种维生素以及钙、磷、铁等矿物质，是适合天天饮用的营养佳品，可防止皮肤干燥及暗沉，使皮肤白皙，有光泽；也可补充丰富的钙质，适合缺钙的人、少儿、易怒、失眠者以及工作压力大的人。全脂奶粉是由鲜牛奶消毒后经浓缩、喷雾、干燥而成的。鲜牛奶加工成奶粉后，水分由原来的88%降低到2%~5%(瓶装)，蛋白质、无机盐、脂肪等营养素的含量浓缩了。例如，每100克牛奶含蛋白质3.3克，而100克全脂奶粉含26.2克；每100克牛奶含脂肪4克，而100克全脂奶粉含30.6克；钙、磷、铁、维生素A、B1、B2、PP等含量均增高。', 'quanzhiniurufen');
INSERT INTO `food_information` VALUES ('双皮奶', '牛奶所含的碳水化合物中最丰富的是乳糖，乳糖使钙易于被吸收；含有丰富的蛋白质，包括酪蛋白和少量的乳清蛋白；包括大量人体生长发育所需的氨基酸；钙含量很容易被吸收，另外，磷、钾、镁等多种物质的搭配也十分合理；所含有的脂肪溶点低，颗粒小，很容易被人体消化吸收，并其消化率达97%。', 'shuangpinai');
INSERT INTO `food_information` VALUES ('山楂', '山楂，（Crataegus pinnatifida Bunge），又名山里果、山里红，蔷薇科山楂属，落叶乔木，高可达6米。在山东、陕西、山西、河南、江苏、浙江、辽宁、吉林、黑龙江、内蒙古、河北等地均有分布。核果类水果，核质硬，果肉薄，味微酸涩。\r\n\r\n果可生吃或作果脯果糕，干制后可入药，是中国特有的药果兼用树种，具有降血脂、血压、强心、抗心律不齐等作用，同时也是健脾开胃、消食化滞、活血化痰的良药，对胸膈脾满、疝气、血淤、闭经等症有很好的疗效。山楂内的黄酮类化合物牡荆素，是一种抗癌作用较强的药物，其提取物对抑制体内癌细胞生长、增殖和浸润转移均有一定的作用。', 'shanzha');
INSERT INTO `food_information` VALUES ('平菇', '平菇（Pleurotus ostreatus）也称侧耳、糙皮侧耳、蚝菇、黑牡丹菇，台湾又称秀珍菇）是担子菌门下伞菌目侧耳科一种类，是种相当常见的灰色食用菇。平菇含丰富的营养物质，每百克于品含蛋白质20—23 克，而且氨基酸成分种类齐全，矿物质含量十分丰富。\r\n中医认为平菇性温、味甘。具有驱风散寒、舒筋活络的功效。用于治腰腿疼痛、手足麻木、筋络不通等病症。 平菇中的蛋白多糖体对癌细胞有很强的抑制作用，能增强机体免疫功能。', 'pinggu');
INSERT INTO `food_information` VALUES ('开心果', '开心果(pistacia vera L.)又名阿月浑子，为漆树科(Anacardiaceae)黄连木属(Pistacia)的多年生落叶果树。野生种起源于中亚和西亚山区，西亚栽培最早，有3500年栽培历史，中亚栽培历史有2000年，欧州栽培最早的是意大利，有1500年历史。1854年开心果被引种到美国的加利福尼亚，1970年开始在美国大量栽培。现在世界主产国有美国、土耳其、伊朗、希腊、叙利亚、阿富汗等国。我国在唐代由波斯(伊朗)引入，栽培历史有1300年左右。 [1]  其果实富含维生素、矿物质和抗氧化元素，具有低脂肪、低卡路里、高纤维的显著特点，对心脑血管疾病、老年性视网膜病变、防衰老等具有医疗保健功效，是世界坚果市场十分畅销的保健休闲食品，近年来已成为世界第五大坚果作物。', 'kaixinguo');
INSERT INTO `food_information` VALUES ('枇杷', '成熟的枇杷味道甜美，营养颇丰，有各种果糖、葡萄糖、钾、磷、铁、钙以及维生素A、B、C等。当中胡萝卜素含量在各水果中为第三位。中医认为枇杷果实有润肺、止咳、止渴的功效。吃枇杷时要剥皮。除了鲜吃外，亦有以枇杷肉制成糖水罐头，或以枇杷酿酒。枇杷不论是叶、果和核都含有扁桃苷。枇杷叶亦是中药的一种，以大块枇杷叶晒干入药，有清肺胃热，降气化痰的功用，常有与其他药材制成“川贝枇杷膏”。但枇杷与其他相关的植物一样，种子及新叶轻微带有毒性，生吃会释放出微量氰化物，但因其味苦，一般不会吃足以致害的分量。', 'pipa');
INSERT INTO `food_information` VALUES ('核桃', '核桃，又称胡桃、羌桃，是胡桃科植物。与扁桃、腰果、榛子并称为世界著名的“四大干果”。核桃仁含有丰富的营养素，每百克含蛋白质15~20克，脂肪较多，碳水化合物10克，并含有人体必需的钙、磷、铁等多种微量元素和矿物质，以及胡萝卜素、核黄素等多种维生素。对人体有益。是深受老百姓喜爱的坚果类食品之一。核桃营养价值丰富，有“万岁子”“长寿果”“养生之宝”的美誉。核桃中86%的脂肪是不饱和脂肪酸，胡桃仁含粗蛋白22.18%，其中可溶性蛋白的组成以谷氨酸为主，其次为精氨酸和天冬氨酸。', 'hetao');
INSERT INTO `food_information` VALUES ('桂鱼', '桂鱼又名鳜鱼、鳌花鱼、季花鱼等，为肉食性凶猛鱼类，也是淡水中的珍贵鱼类。其肉质细嫩鲜美, 刺少肉厚，营养价值很高，分布于除青藏高原的全国各水系中。唐朝诗人张志和在其《渔歌子》写下的著名诗句“西塞山前白鹭飞，桃花流水鳜鱼肥”，赞美的就是这种鱼。鳌花鱼含有丰富的营养物质。鳌花鱼蛋白质的含量比鲫鱼、武昌鱼、鲢鱼、鲤鱼、草鱼、乌鳢等淡水鱼的含量高，人类必须氨基酸，尤其是限制性氨基酸和呈味氨基酸都比上述淡水鱼高；脂肪的含量丰富，在淡水鱼中仅次于河鳗和武昌鱼；还含有较多维生素A和尼克酸，还有维生素E、硫胺素、核黄素等；无机盐中含有钙、磷、铁、锌、铜、锰等，比鲫鱼、鲤鱼、鲢鱼的营养价值高、味鲜美而少腥味。鳌花鱼肉质细嫩，极易消化，对儿童、老人及体弱、脾胃消化功能不佳的人来说，吃鳌花鱼既能补虚，又不必担心消化困难；鳌花鱼每到春、秋最为肥美，被称为“时令珍鲜”。', 'guiyu');
INSERT INTO `food_information` VALUES ('榴莲', '榴莲，又名韶子、麝香猫果，台湾地区俗称“金枕头”。属木棉科热带落叶乔木，树高15-20米，一般认为东印度和马来西亚是榴莲的原产地，以后传入菲律宾、斯里兰卡、泰国、越南和缅甸等国，中国海南也有少量栽种。榴莲果肉含有多种维生素，营养丰富，香味独特，具有“水果之王”的美称。莲全身都是宝，果核可煮和烤着吃，味道象煮得半熟的甜薯，煮榴莲的水能治疗皮肤敏感性的疮痒。榴莲壳与其他化学物可合成肥皂，还能用作皮肤病药材。', 'liulian');
INSERT INTO `food_information` VALUES ('樱桃', '樱桃是蔷薇科植物樱桃的果实，是上市较早的一种乔木果实，号称“百果第一枝”。据说黄莺特别喜好啄食这种果子，因而名为“莺桃”。其果实虽小如珍珠，但色泽红艳光洁，玲珑如玛瑙宝石一样，味道甘甜而微酸，既可鲜食，又可腌制或作为其他菜肴食品的点缀，备受青睐。樱桃铁的含量较高，每百克樱桃中含铁量多达59毫克，居于水果首位。维生素A含量比葡萄、苹果、橘子多4-5倍。胡萝卜素含量比葡萄、苹果、橘子多4-5倍。另外，樱桃虽好，但也注意不要多吃。因为其中除了含铁多以外，还含有一定量的氰甙，若食用过多会引起铁中毒或氰化物中毒。', 'yingtao');
INSERT INTO `food_information` VALUES ('洋葱', '洋葱（学名：Allium cepa L.）是百合科、葱属多年生草本植物。洋葱含有前列腺素A，能降低外周血管阻力，降低血黏度，可用于降低血压、提神醒脑、缓解压力、预防感冒。此外，洋葱还能清除体内氧自由基，增强新陈代谢能力，抗衰老，预防骨质疏松，是适合中老年人的保健食物。一般人均可食用。特别适宜高血压、高血脂、动脉硬化等心血管疾病、糖尿病、癌症、急慢性肠炎、痢疾患者以及消化不良者。洋葱是目前所知唯一含前列腺素A的。前列腺素A能扩张血管、降低血液黏度，因而会产生降血压、能减少外周血管和增加冠状动脉的血流量，预防血栓形成作用。对抗人体内儿茶酚胺等升压物质的作用，又能促进钠盐的排泄，从而使血压下降，经常食用对高血压，高血脂和心脑血管病人都有保健作用；', 'yangcong');
INSERT INTO `food_information` VALUES ('海冻菜', '海冻菜又名石花菜、红丝、凤尾等，是红藻的一种。它通体透明，犹如胶冻，口感爽利脆嫩，既可拌凉菜，又能制成凉粉。石花菜还是提炼琼脂的主要原料。琼脂又叫洋菜、洋粉、石花胶，是一种重要的植物胶，属于纤维类的食物，可溶于热水中。琼脂可用来制作冷食、果冻或微生物的培养基。海冻菜含有丰富的矿物质和多种维生素，尤其是它所含的褐藻酸盐类物质具有降压作用，所含的淀粉类的硫酸脂为多糖类物质，具有降脂功能，对高血压、高血脂有一定的防治作用。', 'haidongcai');
INSERT INTO `food_information` VALUES ('海带', '海带中含有多种维生素，尤以能转变为维生素的胡萝卜素含量丰富。维生素有助于形成糖蛋白，维持皮肤的正常功能，防止感染和患皮肤病，使皮肤保持光滑细腻，韧性增强。海带中含有膳食纤维褐藻酸钾，能调节钠钾平衡，降低人体对钠的吸收，从而起到降血压的作用。在我国民间，就有食用蒸海带降血压的做法。海带能降血脂是因为胶体纤维对降低血浆胆固醇有作用。 [4] \r\n海带除含多种维生素及微量元素外，还有大量的膳食纤维，尤其是可溶性纤维具有很高的比例。', 'haidai');
INSERT INTO `food_information` VALUES ('海虾', '海虾也称红虾、赤虾、大青虾等，是水产、海产虾的肉或全体的总称。海虾营养成分丰富，味道鲜美，可做食膳也可做为药材使用。海虾主要分布于黄海、渤海及长江口以北各海区，为中国特产。\r\n在螃蟹和虾等水生甲壳生物的真皮层中分布着大量的、多数呈青黑色的色素， 因此新鲜虾蟹一般呈青色。虾青素是萜烯类共轭长链抗氧化剂 [1]  ， 具有强抗氧化功能。', 'haixia');
INSERT INTO `food_information` VALUES ('牛肉', '牛肉（拼音：niú ròu），指从牛身上获得的肉，为常见的肉品之一。牛肉含有丰富的蛋白质，氨基酸。其\r\n牛肉\r\n牛肉(5张)\r\n 能提高机体抗病能力，对生长发育及手术后、病后调养 的人在补充失血和修复组织等方面特别适宜。\r\n中医食疗认为：寒冬食牛肉，有暖胃作用，为寒冬补益佳品。中医认为：牛肉有补中益气、滋养脾胃、强健筋骨、化痰息风、止渴止涎的功能。适用于中气下陷、气短体虚，筋骨酸软和贫血久病及面黄目眩之人食用。', 'niurou');
INSERT INTO `food_information` VALUES ('牛肚', '牛肚即牛胃。牛为反刍动物，共有四个胃，前三个胃为食道变异，即瘤胃（草肚）、网胃（蜂巢胃、麻肚）、瓣胃（重瓣胃、百叶），最后一个才是真胃（皱胃）。\r\n瘤胃内壁肉柱俗称“肚领、肚梁、肚仁”。贲门扩约肌，肉厚而韧俗称“肚尖”、“肚头”（用碱水浸泡使之脆嫩，可单独成菜）。瘤胃可把牛浆膜撕掉，保留粘膜，生切片涮吃，菜品如“毛肚火锅”、“夫妻肺片”。网胃应用与瘤胃相同。瓣胃与皱胃大都切丝用。牛肚中运用最广的为肚领和百叶。牛肚含蛋白质、脂肪、钙、磷、铁、硫胺素、核黄素、尼克酸等，具有补益脾胃，补气养血，补虚益精、消渴、风眩之功效，适宜于病后虚羸、气血不足、营养不良、脾胃薄弱之人。', 'niudu');
INSERT INTO `food_information` VALUES ('猪肝', '猪肝是指猪的肝脏。肝脏是动物体内储存养料和解毒的重要器官，含有丰富的营养物质，是最理想的补血佳品之一，具有补肝明目、养血、营养保健等作用，可用于治疗血虚萎黄、夜盲、目赤、浮肿、脚气等症。\r\n猪肝是猪体内最大的毒物中转站解毒器官，各种有毒的代谢产物和混入食料中的某些有毒物质如农药等，都会聚集在肝脏中，所以猪肝食前要去毒。', 'zhugan');
INSERT INTO `food_information` VALUES ('番茄', '红色西红柿，果色火红，一般呈微扁圆球形，脐小，肉厚，味甜，汁多爽口，风味佳，生食、熟食均可，还可加工成番茄酱、番茄汁；粉红西红柿，果粉红色，近圆球形，脐小，果面光滑，味酸甜适度，品质较佳，黄色西红柿，果桔黄色果大，圆球形，果肉厚，肉质又面又沙、生食味淡，宜熟食。西红柿品种、颜色、成熟度、甜度，甚至生产季节的不同，都是决定其中番茄红素含量的重要原因。黄色品种的西红柿中番茄红素含量很少，每100克仅含0.3毫克；红色品种的西红柿则含量较高，一般每100克含2—3毫克，最高能达到20毫克。', 'fanqie');
INSERT INTO `food_information` VALUES ('石榴', '石榴（拉丁名：Punica granatum L.）落叶乔木或灌木；单叶，通常对生或簇生，无托叶。花顶生或近顶生，单生或几朵簇生或组成聚伞花序，近钟形，裂片5-9，花瓣5-9，多皱褶，覆瓦状排列；胚珠多数。浆果球形，顶端有宿存花萼裂片，果皮厚；种子多数，浆果近球形，果熟期9-10月。外种皮肉质半透明，多汁；内种皮革质。\r\n性味甘、酸涩、温，具有杀虫、收敛、涩肠、止痢等功效。石榴果实营养丰富，维生素C含量比苹果、梨要高出一二倍。\r\n中国栽培石榴的历史，可上溯至汉代，据陆巩记载是张骞从西域引入。中国南北都有栽培，以安徽、江苏、河南等地种植面积较大，并培育出一些较优质的品种。其中安徽怀远县是中国石榴之乡，“怀远石榴”为国家地理标志保护产品。\r\n中国传统文化视石榴为吉祥物，视它为多子多福的象征。', 'shiliu');
INSERT INTO `food_information` VALUES ('竹笋', '笋（英语：bamboo shoot），是竹的幼芽，也称为笋。竹为多年生常绿禾本目植物，食用部分为初生、嫩肥、短壮的芽或鞭。竹原产中国，类型众多，适应性强，分布极广。\r\n在中国自古被当作“菜中珍品”。竹笋是中国传统佳肴，味香质脆，食用和栽培历史极为悠久。《诗经》中就有“加豆之实，笋菹鱼醢”、“其籁伊何，惟笋及蒲”等诗句，表明了人民食用竹笋有2500年以至3000年的历史。', 'zhusun');
INSERT INTO `food_information` VALUES ('红薯/地瓜', '红薯（学名：Ipomoea batatas），又名番薯、甘薯、山芋、地瓜、红苕、线苕、白薯、金薯、甜薯、朱薯、枕薯等。常见的多年生双子叶植物，草本，其蔓细长，茎匍匐地面。块根，无氧呼吸产生乳酸，皮色发白或发红，肉大多为黄白色，但也有紫色，除供食用外，还可以制糖和酿酒、制酒精。红薯含有膳食纤维、胡萝卜素、维生素A、维生素B、维生素C、维生素E以及钾、铁、铜、硒、钙、等10余种微量元素。营养价值很高，被营养学家们称为营养最均衡的“保健”食品。', 'hongshu');
INSERT INTO `food_information` VALUES ('老母鸡', '老母鸡是指达到一定月龄的雌性鸡，但是并没有确切定义来规定达到某个月龄的母鸡为“老”母鸡，一般来说，一只母鸡在饲养了300天以上，生过蛋的，尤其是孵过小鸡的，就可以被称为老母鸡。老母鸡之所以受到很多人的推崇，主要是从中医上来说，母鸡的鸡肉属阴，比较适合产妇、年老体弱及久病体虚者食用。而老母鸡由于生长期长，鸡肉中所含的鲜味物质要比仔鸡多，这是使鸡汤味道更鲜美的主要原因。另外，老母鸡中脂肪含量比较高，炖出的汤也更香一些。', 'laomuji');
INSERT INTO `food_information` VALUES ('茄子', '茄子的营养丰富，含有蛋白质、脂肪、碳水化合物、维生素以及钙、磷、铁等多种营养成分。茄子味甘性寒，入脾胃大肠经，具有清热活血化瘀、利尿消肿、宽肠之功效。治肠风下血、热毒疮痛、皮肤溃疡。明代李时珍在《本草纲目》一书中记载，茄子治寒热，五脏劳，治温疾。据《中药大辞典》介绍，茄子的主要化学成分是含有多种生物碱，如葫芦巴碱、水苏碱、胆碱、龙葵碱等，茄皮中含色素茄色甙、紫苏甙等。', 'qiezi');
INSERT INTO `food_information` VALUES ('葵花籽/香瓜子', '葵花籽，即向日葵的果实，可供食用和油用 [1]  。葵花籽富含不饱和脂肪酸、 [2]  多种维生素和微量元素，其味道可口，是一种十分受欢迎的休闲零食和食用油源。据分析，葵花籽种仁的蛋白质含量为30%，可与大豆、瘦肉、鸡蛋、牛奶相比；各类糖的含量为12%；脂肪的含量优于动物脂肪和植物类油脂，因为它含有的不饱和脂肪酸，其中亚油酸占55%；钾、钙、磷、铁、镁也十分丰富，尤其是钾的含量较高，每100克含钾量达920毫克；还含有维生素A、B1、B2；每15克就含维生素E 31毫克；最贵重的是葵花籽中的油，种仁含油率为50~55%，已成为仅次于大豆位居第二的油料作物。', 'kuihuazi');
INSERT INTO `food_information` VALUES ('薏米', '薏米(Coix lacryma-jobi L. var. ma-yuen [1]  )，又叫做薏苡仁、苡米、苡仁等，在中、日本和越南广泛种植，是传统的药食兼用谷物资源，被誉为“世界禾本科植物之王”。薏米种子含有丰富的氨基酸、薏苡素、薏苡酯、三萜化合物，薏米种仁含蛋白质、脂肪、碳水化合物、维生素等  。', 'yimi');
INSERT INTO `food_information` VALUES ('虾皮', '虾皮其实主要是由一种叫做毛虾的小虾加工制成的。虾皮的营养价值是非常高的，我们就那用来衡量营养价值高低的蛋白质含量来说，每100 克虾皮含 39.3 克蛋白质，这个分量要远远的高于大黄鱼、黄缮、对虾、带鱼、鲳鱼等水产品以及牛肉、猪肉、鸡肉等肉制品。虾皮的另一大特点是矿物质数量、种类丰富，除了含有陆生、淡水生物缺少的碘元素，铁、钙、磷的含量也很丰富，每100 克虾皮钙和磷的含量为 991 毫克和 582 毫克。所以，虾皮素有“钙库”之称。虾皮其实还有一种重要的营养物质——虾青素，虾青素是迄今为止发现的最强的一种抗氧化剂，又叫超级维生素 E，虾皮越红虾青素含量越高。', 'xiapi');
INSERT INTO `food_information` VALUES ('豆腐', '豆腐营养极高，含铁、镁、钾、烟酸、铜、钙、锌、磷、叶酸、维生素\r\n豆腐\r\n豆腐(6张)\r\n B1、蛋黄素和维生素B6。豆腐为补益清热养生食品，常食可补中益气、清热润燥、生津止渴、清洁肠胃。更适于热性体质、口臭口渴、肠胃不清、热病后调养者食用。现代医学证实，豆腐除有增加营养、帮助消化、增进食欲的功能外，对齿、骨骼的生长发育也颇为有益。豆腐不含胆固醇，是高血压、高血脂、高胆固醇症及动脉硬化、冠心病患者的药膳佳肴。也是儿童、病弱者及老年人补充营养的食疗佳品。豆腐含有丰富的植物雌激素，对防治骨质疏松症有良好的作用。还有抑制乳腺癌、前列腺癌及血癌的功能，豆腐中的甾固醇、豆甾醇，均是抑癌的有效成分。', 'doufu');
INSERT INTO `food_information` VALUES ('金枪鱼', '金枪鱼肉质柔嫩，富含蛋白质、脂肪、维生素A、D和微量元素，尤其是DHA（二十\r\n二碳六烯酸）和EPA（二十碳五烯酸）等多不饱和脂肪酸，蛋氨酸、牛磺酸、矿物质和维生素等含量丰富，有助于肝脏功能，对饮酒者由很好的保护作用。EPA和DHA主要具有抑制血小板凝聚，减少血栓形成，降低胆固醇，防止心脑血管疾病；抗炎、抗癌、增强自身免疫力；增强神经系统功能，益智健脑，预防老年性痴呆症和保护视力等作用 [8]  。\r\n金枪鱼鱼肉高蛋白、低脂肪、低热量，常食用金枪鱼，能起到平衡营养和减肥的作用，金枪鱼属于红肉鱼类，含有丰富的功能性成分如牛磺酸可以抑制交感神经的兴奋，降低血压及血液的胆固醇，防止动脉硬化，促进胰岛素分泌，提高肝脏的排毒作用，预防和改善视力障碍。', 'jinqiangyu');
INSERT INTO `food_information` VALUES ('金针菇', '金针菇是秋冬与早春栽培的食用菌，以其菌盖滑嫩、柄脆、营养丰富、味美适口而著称于世，特别是凉拌菜和火锅的上好食材，其营养丰富、清香扑鼻而且味道鲜美，深受大众的喜爱。 [2] \r\n据测定，金针菇氨基酸的含量非常丰富，高于一般菇类，尤其是赖氨酸的含量特别高。 [1]  经常食用金针菇可防治溃疡病。作为药食两用的保健蔬菜，金针菇大部分用于鲜食。将金针菇鲜品水分挤开，放入沸水锅内烫漂数分钟后捞起，凉拌、炒、炝、熘、烧、炖、煮、蒸、做汤均可，亦可作为荤素菜的配料使用。金针菇入菜可做成鸡脯拌金针、金针炒鸡丝、金针菇豆苗竹笋汤等菜肴。', 'jinzhengu');
INSERT INTO `food_information` VALUES ('青椒', '青椒果肉厚而脆嫩，维生素C含量丰富。青果含水分93. 9%左右、碳水化合物约3. 8%，红熟果含维生素C最高可达460毫克。可凉拌、炒食、煮食、作馅、腌渍和加工制罐，制蜜饯。青椒能增强人的体力，缓解因工作、生活压力造成的疲劳。其特有的味道和所含的辣椒素有刺激唾液和胃液分泌的作用，能增进食欲，帮助消化，促进肠蠕动，防止便秘。它还可以防治坏血病，对牙龈出血、贫血、血管脆弱有辅助治疗作用。一般人都会感觉到，吃了带有辛味的青椒之后，会心跳动加速、皮肤血管扩张，令人觉得热乎乎的，所以中医对它的看法和辣椒一样，有温中下气、散寒除湿的说法。', 'qingjiao');
INSERT INTO `food_information` VALUES ('韭菜', '韭菜，（学名：A. tuberosum Rottl. ex Spreng.）别名：丰本、草钟乳、起阳草、懒人菜、长生韭、壮阳草、扁菜等；属百合科多年生草本植物，具特殊强烈气味，根茎横卧，鳞茎狭圆锥形，簇生；鳞式外皮黄褐色，网状纤维质；叶基生，条形，扁平；伞形花序，顶生。韭菜的辛辣气味有散瘀活血，行气导滞作用，适用于跌打损伤、反胃、肠炎、吐血、胸痛等症。韭菜含有大量维生素和粗纤维，能增进胃肠蠕动，治疗便秘，预防肠癌，故韭菜叶被称为“洗肠草”。韭菜的含水量高达85%，热量较低，是铁、钾和维生素A的上等来源，也是维生素C的一般来源。一直有“菜中之荤”的美称。', 'jiucai');
INSERT INTO `food_information` VALUES ('鲜桂圆', '桂圆的果实营养丰富，是名贵的高级滋补品，龙眼药用始载于《神农本草经》性温，味甘，具有补益心脾、养血安神的功能。主治气血不足、心悸不宁、健忘失眠、血虚萎黄等症，以及中老年虚弱、高血压、高血脂和冠心病等。经济用途以作果品为主，种子含淀粉，经适当处理后，可酿酒；木材坚实，甚重，暗红褐色，耐水湿，是造船、家具、细工等的优良材。', 'xianguiyuan');
INSERT INTO `food_information` VALUES ('鲫鱼', '鲫鱼是我国最常见的淡水鱼类之一，生活在青藏高原地域以外的各大水系。鲫鱼是杂食性鱼类，食性广、适应性强、繁殖力强、抗病力强、生长快、对水温要求不高，便于养殖，是我国重要的养殖性鱼类。 [1] \r\n鲫鱼主要是以植物为食的杂食性鱼，喜群集而行，择食而居。肉质细嫩，营养价值很高，每百克肉含蛋白质13克、脂肪11克，并含有大量的钙、磷、铁等矿物质。鲫鱼药用价值极高，其性平味甘，入胃、肾，具有和中补虚、除赢、温胃进食、补中生气之功效。', 'jiyu');
INSERT INTO `food_information` VALUES ('鸡胸肉', '鸡胸肉，是鸡身上最大的两块肉。常见鸡肉，鸡胸肉是在胸部里侧的肉，形状像斗笠，胸脯肉。肉质细嫩，滋味鲜美，营养丰富，能滋补养身。\r\n鸡胸肉蛋白质含量较高，且易被人体吸收入利用，有增强体力，强壮身体的作用，鸡胸肉有温中益气、补虚填精、健脾胃、活血脉、强筋骨的功效。脂肪含量3%，蛋白质含量20%，适合减肥增肌食用。', 'jixiongrou');
INSERT INTO `food_information` VALUES ('鹅肝', '鹅肝为鸭科动物鹅的肝脏。因其丰富的营养和特殊功效，使得鹅肝成为补血养生的理想食品。鹅肝中有人体所必需补充的碳水化合物、维生素E、钙、锰、铜、镁、钾、钠、锌、等矿物质，还含有丰富的硫胺素、胆固醇、核黄素等营养物质，其中有些营养物质远远超过了普通食物，可以给我们的身体补充到足够的营养价值。欧洲人将鹅肝与鱼子酱、松露并列为“世界三大珍馐”。', 'egan');
INSERT INTO `food_information` VALUES ('鹌鹑蛋', '鹌鹑蛋又名鹑鸟蛋、鹌鹑卵。鹌鹑蛋被认为是“动物中的人参”。宜常食为滋补食疗品。鹌鹑蛋在营养上有独特之处，故有\"卵中佳品\"之称。\r\n近圆形，个体小，一般有10g左右，表面有棕褐色斑点。鹌鹑蛋的营养价值不亚于鸡蛋，有较好护肤、美肤作用。鹌鹑蛋是一种美食，通常煮至全熟或半熟后去壳，可用于沙拉中，也可以腌渍、水煮或做胶冻食物。鹌鹑蛋丰富的蛋白质、脑磷脂、卵磷脂、赖氨酸、胱氨酸、维A、维B2、维B1.铁、磷、钙等营养物质，可补气益血，强筋壮骨。功效：补气益血，治风湿，强筋壮骨。 鹌鹑蛋中氨基酸种类齐全，含量丰富，还有高质量的多种磷脂，激素等人体必需成分，铁、核黄素、维生素A的含量均比同量鸡蛋高出两倍左右，而胆固醇则较鸡蛋低约三分之一，所以是各种虚弱病者及老人、儿童及孕妇的理想滋补食品。鹌鹑蛋含有较高的蛋白质，脑磷脂、卵磷脂、铁和维生素等。但是鹌鹑蛋胆固醇太高，不宜多食。', 'anchundan');
INSERT INTO `food_information` VALUES ('黑加仑', '黑加仑学名黑穗醋栗（Ribes nigrum L.）又名黑醋栗，黑豆果，紫梅，虎耳草目茶藨子科茶藨子属，小型灌木，其成熟果实为黑色小浆果，内富含维生素C、花青素，可以食用。也可以加工成果汁，果酱等食品。黑加仑含有非常丰富的维生素C、磷、镁、钾、钙、花青素、酚类物质。目前已经知道的黑加仑的保健功效包括预防痛风、贫血、水肿、关节炎、风湿病、口腔和咽喉疾病、咳嗽等。黑加仑有清热解毒、活血通络、补益养气之功效，用于治疗心脑血管疾患、关节炎，抗过敏，抗癌和增强人体免疫功能', 'heijialun');
INSERT INTO `food_information` VALUES ('黑芝麻', '黑芝麻含有大量的脂肪和蛋白质，还含有糖类、维生素A、维生素E、卵磷脂、钙、铁、铬等营养成分。有健胃、保肝、促进红细胞生长的作用及乌发、美容等功效', 'heizhima');
INSERT INTO `food_information` VALUES ('黑豆', '黑豆为豆科植物大豆（学名：Glycine max（L.）merr.）的黑色种子。黑豆蛋白质含量36%，易于消化，对满足人体对蛋白质的需要具有重要意义; 脂肪含量16%，主要含不饱和脂肪酸，吸收率高达95%，除满足人体对脂肪的需要外，还有降低血液中胆固醇的作用; 黑豆含有丰富的维生素、蛋黄素、黑色素及卵磷脂等物质，其中B 族维生素和维生素E 含量很高，具有营养保健作用，黑豆中还含有丰富的微量元素，对保持机体功能完整、延缓机体衰老、降低血液粘度、满足大脑对微量物质需求都是必不可少的', 'heidou');

-- ----------------------------
-- Table structure for user_comment
-- ----------------------------
DROP TABLE IF EXISTS `user_comment`;
CREATE TABLE `user_comment`  (
  `uid` int(11) NOT NULL,
  `comment` int(255) NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`uid`, `img`) USING BTREE,
  INDEX `comment_uid`(`comment`) USING BTREE,
  CONSTRAINT `comment_uid` FOREIGN KEY (`uid`) REFERENCES `account` (`uid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_comment
-- ----------------------------
INSERT INTO `user_comment` VALUES (40, 0, 'guiyu');
INSERT INTO `user_comment` VALUES (40, 0, 'jinqiangyu');
INSERT INTO `user_comment` VALUES (40, 0, 'niudu');
INSERT INTO `user_comment` VALUES (40, 0, 'qiezi');
INSERT INTO `user_comment` VALUES (40, 0, 'shuangpinai');
INSERT INTO `user_comment` VALUES (40, 0, 'yangcong');
INSERT INTO `user_comment` VALUES (51, 0, 'shuangpinai');
INSERT INTO `user_comment` VALUES (56, 0, 'hetao');
INSERT INTO `user_comment` VALUES (40, 1, 'haixia');
INSERT INTO `user_comment` VALUES (40, 1, 'wuhuarou');
INSERT INTO `user_comment` VALUES (51, 1, 'heizhima');
INSERT INTO `user_comment` VALUES (51, 1, 'yingtao');
INSERT INTO `user_comment` VALUES (52, 1, 'anchundan');
INSERT INTO `user_comment` VALUES (52, 1, 'shuangpinai');
INSERT INTO `user_comment` VALUES (40, 2, 'heizhima');
INSERT INTO `user_comment` VALUES (40, 2, 'hetao');
INSERT INTO `user_comment` VALUES (51, 2, 'doufu');
INSERT INTO `user_comment` VALUES (51, 2, 'xianguiyuan');
INSERT INTO `user_comment` VALUES (52, 2, 'guiyu');

-- ----------------------------
-- Table structure for user_lack
-- ----------------------------
DROP TABLE IF EXISTS `user_lack`;
CREATE TABLE `user_lack`  (
  `uid` int(255) NOT NULL,
  `lack` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`uid`, `lack`) USING BTREE,
  CONSTRAINT `uid_lack` FOREIGN KEY (`uid`) REFERENCES `account` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_lack
-- ----------------------------
INSERT INTO `user_lack` VALUES (40, '维生素A');
INSERT INTO `user_lack` VALUES (40, '维生素B1');
INSERT INTO `user_lack` VALUES (40, '维生素B2');
INSERT INTO `user_lack` VALUES (40, '维生素C');
INSERT INTO `user_lack` VALUES (40, '膳食纤维');
INSERT INTO `user_lack` VALUES (40, '蛋白质');
INSERT INTO `user_lack` VALUES (41, '维生素B1');
INSERT INTO `user_lack` VALUES (41, '维生素B2');
INSERT INTO `user_lack` VALUES (41, '维生素C');
INSERT INTO `user_lack` VALUES (42, '维生素A');
INSERT INTO `user_lack` VALUES (42, '膳食纤维');
INSERT INTO `user_lack` VALUES (43, '膳食纤维');
INSERT INTO `user_lack` VALUES (45, '蛋白质');
INSERT INTO `user_lack` VALUES (46, '维生素A');
INSERT INTO `user_lack` VALUES (47, '蛋白质');
INSERT INTO `user_lack` VALUES (48, '维生素A');
INSERT INTO `user_lack` VALUES (48, '维生素B1');
INSERT INTO `user_lack` VALUES (48, '膳食纤维');
INSERT INTO `user_lack` VALUES (50, '钙');
INSERT INTO `user_lack` VALUES (51, '维生素A');
INSERT INTO `user_lack` VALUES (51, '钙');
INSERT INTO `user_lack` VALUES (51, '铁');
INSERT INTO `user_lack` VALUES (52, '维生素A');
INSERT INTO `user_lack` VALUES (52, '铁');
INSERT INTO `user_lack` VALUES (55, '脂肪');
INSERT INTO `user_lack` VALUES (55, '蛋白质');
INSERT INTO `user_lack` VALUES (56, '维生素C');

-- ----------------------------
-- Table structure for user_preference
-- ----------------------------
DROP TABLE IF EXISTS `user_preference`;
CREATE TABLE `user_preference`  (
  `uid` int(11) NOT NULL,
  `preference` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`uid`, `preference`) USING BTREE,
  CONSTRAINT `uid_preference` FOREIGN KEY (`uid`) REFERENCES `account` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_preference
-- ----------------------------
INSERT INTO `user_preference` VALUES (40, '咸');
INSERT INTO `user_preference` VALUES (40, '硬');
INSERT INTO `user_preference` VALUES (40, '脆');
INSERT INTO `user_preference` VALUES (40, '软');
INSERT INTO `user_preference` VALUES (40, '辛辣');
INSERT INTO `user_preference` VALUES (41, '硬');
INSERT INTO `user_preference` VALUES (41, '软');
INSERT INTO `user_preference` VALUES (42, '甜');
INSERT INTO `user_preference` VALUES (43, '酸');
INSERT INTO `user_preference` VALUES (45, '酸');
INSERT INTO `user_preference` VALUES (46, '软');
INSERT INTO `user_preference` VALUES (47, '酸');
INSERT INTO `user_preference` VALUES (48, '咸');
INSERT INTO `user_preference` VALUES (48, '软');
INSERT INTO `user_preference` VALUES (48, '辛辣');
INSERT INTO `user_preference` VALUES (50, '甜');
INSERT INTO `user_preference` VALUES (50, '软');
INSERT INTO `user_preference` VALUES (51, '甜');
INSERT INTO `user_preference` VALUES (51, '软');
INSERT INTO `user_preference` VALUES (52, '甜');
INSERT INTO `user_preference` VALUES (52, '软');
INSERT INTO `user_preference` VALUES (52, '酸');
INSERT INTO `user_preference` VALUES (56, '甜');
INSERT INTO `user_preference` VALUES (56, '软');
INSERT INTO `user_preference` VALUES (56, '酸');

-- ----------------------------
-- Table structure for user_symptom
-- ----------------------------
DROP TABLE IF EXISTS `user_symptom`;
CREATE TABLE `user_symptom`  (
  `uid` int(11) NOT NULL,
  `symptom` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`uid`, `symptom`) USING BTREE,
  CONSTRAINT `uid_symptom` FOREIGN KEY (`uid`) REFERENCES `account` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_symptom
-- ----------------------------
INSERT INTO `user_symptom` VALUES (40, '消化不良');
INSERT INTO `user_symptom` VALUES (40, '糖尿病');
INSERT INTO `user_symptom` VALUES (40, '肥胖');
INSERT INTO `user_symptom` VALUES (40, '营养不良');
INSERT INTO `user_symptom` VALUES (40, '贫血');
INSERT INTO `user_symptom` VALUES (40, '高血压');
INSERT INTO `user_symptom` VALUES (40, '高血脂');
INSERT INTO `user_symptom` VALUES (41, '贫血');
INSERT INTO `user_symptom` VALUES (42, '糖尿病');
INSERT INTO `user_symptom` VALUES (42, '骨质疏松');
INSERT INTO `user_symptom` VALUES (43, '贫血');
INSERT INTO `user_symptom` VALUES (45, '高血压');
INSERT INTO `user_symptom` VALUES (46, '糖尿病');
INSERT INTO `user_symptom` VALUES (47, '高血压');
INSERT INTO `user_symptom` VALUES (48, '消化不良');
INSERT INTO `user_symptom` VALUES (48, '糖尿病');
INSERT INTO `user_symptom` VALUES (48, '肥胖');
INSERT INTO `user_symptom` VALUES (50, '贫血');
INSERT INTO `user_symptom` VALUES (51, '贫血');
INSERT INTO `user_symptom` VALUES (52, '营养不良');
INSERT INTO `user_symptom` VALUES (52, '贫血');
INSERT INTO `user_symptom` VALUES (55, '贫血');
INSERT INTO `user_symptom` VALUES (56, '高血压');

-- ----------------------------
-- Table structure for user_type
-- ----------------------------
DROP TABLE IF EXISTS `user_type`;
CREATE TABLE `user_type`  (
  `uid` int(11) NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(11) UNSIGNED NULL DEFAULT 0,
  PRIMARY KEY (`uid`) USING BTREE,
  CONSTRAINT `uid_type` FOREIGN KEY (`uid`) REFERENCES `account` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_type
-- ----------------------------
INSERT INTO `user_type` VALUES (39, '未定', 12);
INSERT INTO `user_type` VALUES (40, '青少年', 15);
INSERT INTO `user_type` VALUES (41, '儿童', 4);
INSERT INTO `user_type` VALUES (42, '孕妇', 34);
INSERT INTO `user_type` VALUES (43, '孕妇', 23);
INSERT INTO `user_type` VALUES (45, '青少年', 12);
INSERT INTO `user_type` VALUES (46, '儿童', 8);
INSERT INTO `user_type` VALUES (47, '中年人', 12);
INSERT INTO `user_type` VALUES (48, '中年人', 33);
INSERT INTO `user_type` VALUES (49, '青少年', 15);
INSERT INTO `user_type` VALUES (50, '孕妇', 34);
INSERT INTO `user_type` VALUES (51, '孕妇', 34);
INSERT INTO `user_type` VALUES (52, '孕妇', 30);
INSERT INTO `user_type` VALUES (55, '老年人', 90);
INSERT INTO `user_type` VALUES (56, '老年人', 15);

SET FOREIGN_KEY_CHECKS = 1;
