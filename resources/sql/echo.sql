-- MySQL dump 10.13  Distrib 8.0.26, for macos11.3 (x86_64)
--
-- Host: 127.0.0.1    Database: echo
-- ------------------------------------------------------
-- Server version	5.7.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articles` (
  `deleted_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `category_id` bigint(20) unsigned NOT NULL DEFAULT '4',
  `user_id` bigint(20) unsigned NOT NULL,
  `body` longtext NOT NULL,
  `is_stared` tinyint(1) DEFAULT '0',
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `idx_articles_category_id` (`category_id`),
  KEY `idx_articles_created_at` (`created_at`),
  KEY `idx_articles_updated_at` (`updated_at`),
  KEY `idx_articles_user_id` (`user_id`),
  CONSTRAINT `fk_articles_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES ('2020-12-23 23:58:33.189','2020-04-20 00:26:07.000','2020-04-20 00:26:07.000',4,1,'本页面由 goblog 创建, 这只是个测试页面.',0,1),(NULL,'2020-04-20 10:56:47.000','2020-02-12 10:55:00.000',4,1,'想搞个双卡双待的iphone，看了半天，11的颜色都太嫩，经典色里最喜欢的金色只有pro才有，全边框之后正面也没有苹果白了。\n\n掐指一算这机子18年3月份买的，用到现在整整两年。mac是18年1月份买的，用到现在也是两年。\n\n再用一年，年底一起换掉，想想就心疼，又是20k的预算。\n\n---\n\n不过仔细算算，其实也挺划算，两台机器能卖个6k左右，预算减掉之后是14k，用三年，每天折12.8，其实还行；',0,2),(NULL,'2020-04-20 10:59:19.000','2020-02-12 10:57:00.000',4,1,'对我们这些观众来说，有免费电影看，谢谢老板然后看就完了呗。\n\n更进一步的，不必了。\n\n韭菜担心镰刀和收割机大战谁会赢，就很荒谬了，谁赢了不是给你一刀？\n\n趁着新挑战者蹦起来去砍老行业的既得利益者，赶紧冲进去捡掉下来的小钱钱，这不是很美味吗？\n\n所以作为观众而言，应该是内心不站队，但嘴上两边骂，谁占上风骂谁。\n\n哎，有时候现实，就是这么魔幻。',0,3),(NULL,'2020-04-20 11:00:09.000','2020-02-15 10:58:00.000',4,1,'权衡之后，决定用ttrss自建服务替换掉inoreader，基于以下原因\n\n1. 最重要的，刷新问题，rss最重要的就是及时性，第三方服务总是慢几十分钟才刷新，不稳定。\n2. 价格问题，自建后服务器一年12*24，不到300块，比买第三方服务便宜太多。\n3. inoreader的rt太慢，因为服务器在保加利亚的原因，可以理解，但是不能接受，换到feedbin之类的服务，rt快了，但是价格贵了，也不能接受。\n\n总之，自建之后服务稳定性各种都需要自己捯饬，后面也大概率要加配置，但是怎么说呢，自主可控肯定是最好的，与此相比，一些成本是可以接受的。',0,4),(NULL,'2020-04-20 11:00:23.000','2020-02-17 10:58:00.000',4,1,'从1号到3号，又到10号，再到17号，刚刚公司通知24号上班，这一放假就是一个多月[抱抱] ​​​​',0,5),(NULL,'2020-04-20 11:00:43.000','2020-02-17 10:58:00.000',4,1,'想成为大佐那么厉害的人，要继续努力了 ​​​​',0,6),(NULL,'2020-04-20 11:00:59.000','2020-02-17 11:00:00.000',4,1,'hy the design系列写的真好，虽然很多东西还是看不懂，但是还是学到不少东西 ​​​​',0,7),(NULL,'2020-04-20 11:01:15.000','2020-02-20 11:01:00.000',4,1,'周四了，再过四天就要上班了；\n这几天虽然是远程办公，但是也算慢慢回归正常上班的节奏；\n\n这几天主要是改改新版本的bug，压力还不小，各方面的吧；\n另外把自建的ttrss基本理顺了，reeder4.2.2无法添加多个ttrss账号，只能暂时使用unread了；\n\n后面这几天应该还是主要改bug，另外也要抽时间把自己的事情也理理顺；',0,8),('2021-08-21 01:34:03.089','2020-04-20 11:01:33.000','2020-02-23 11:01:00.000',4,1,'少之时，血气未定，戒之在色；及其壮也，血气方刚，戒之在斗；及其老也，血气既衰，戒之在得。 ​​​​',1,9),(NULL,'2020-04-20 11:01:54.000','2020-02-26 11:01:00.000',4,1,'高抛低吸是道理，追涨杀跌是人性啊 ​​​​',0,10),(NULL,'2020-04-20 11:02:20.000','2020-02-29 11:02:00.000',4,1,'这两天全世界股市天天跌停，捡便宜筹码捡到做梦都笑醒，只恨手上没足够子弹',0,11),(NULL,'2020-04-20 11:02:33.000','2020-03-02 11:02:00.000',4,1,'#外国人永久居留管理条例#其实挺烦对这些事发表什么意见的，但是就这个事吧，我觉得不行。',0,12),(NULL,'2020-04-20 11:02:52.000','2020-03-06 11:02:00.000',4,1,'大晚上看了会“沸腾吧火锅”，好饿啊，决定这周末去吃潮汕牛肉锅，不过我是真吃不了辣，看见辣椒就胃疼 ​​​​',0,13),(NULL,'2020-04-20 11:03:11.000','2020-03-11 11:03:00.000',4,1,'晚上回家的时候干了个傻逼事，买了杯星巴克，懒得用手拿，直接装到双肩包里（因为之前这么装过好几次），结果还没到家就感觉背后一股热流，回家之后就发现mac进水花屏了，不知道拿除湿机吹一晚上能不能救回来 ​​​​',0,14),(NULL,'2020-04-20 11:03:26.000','2020-03-11 11:03:00.000',4,1,'新买的电动升降桌用起来还行，勉强先搭起来用用，明天有时间再彻底搭好 ​​​​',0,15),(NULL,'2020-04-20 11:03:40.000','2020-03-12 11:03:00.000',4,1,'果然还是没救回来，犯了经验主义的错误啊，以后再也不把奶茶咖啡什么的放到包里了，另外也要把内胆包用起来，心疼自己，今天一天还排了满满一天的日程，估计不能请假去修mac，先在公司申请一台mac用几天吧，有空再去修 ​​​​',0,16),(NULL,'2020-04-20 11:03:55.000','2020-03-14 11:03:00.000',4,1,'买什么买，买的时候纠结的一逼，买完要不是出二手，要不是直接扔掉，出二手的时候也一堆破事，傻逼才天天买买买呢 ​​​​',0,17),(NULL,'2020-12-03 20:31:31.271','2020-03-15 11:04:00.000',4,1,'      这堆书陆续买来两年多，终于看完了，只能说《重构》这本书真的经典，确实是进阶路上的必读书籍。\n\n其他的书大概两类，拓宽眼界的比如rs和搜索引擎，查缺补漏的比如app开发，轻量级微服务和web api设计。 ​​​​\n\n\n![](https://jeffcott.oss-cn-beijing.aliyuncs.com/echo/1909653053.jpg)\n    ',0,18),(NULL,'2020-04-20 11:17:49.000','2020-03-18 11:17:00.000',4,1,'输出总是很爽的，但是输入却总是很痛苦的 ​​​​',0,20),(NULL,'2020-04-20 11:18:03.000','2020-03-21 11:17:00.000',4,1,'哈哈夏天就这么突如其来的来了，早上起床空调还一直开的制热 ​​​​',0,21),(NULL,'2020-04-20 11:18:19.000','2020-03-23 11:18:00.000',4,1,'如何正确地看待女性呢？ ​​​​',0,22),(NULL,'2020-04-20 11:18:49.000','2020-03-24 11:18:00.000',4,1,'在知乎看了几个关于国企子弟的帖子，勾起了自己儿时的一些回忆，单身楼，用来拉煤的火车，远处矿山每天炸山时的轰隆声，空气中永远飘着的白色粉尘。\n\n还挺有感触的。 ',0,23),(NULL,'2020-04-20 11:19:09.000','2020-03-28 11:18:00.000',4,1,'谁会不喜欢nara这样香香软软的妹子呢awsl ​​​​',0,24),(NULL,'2020-04-20 11:31:11.000','2020-03-29 11:19:00.000',4,1,'之前试着面了一下平安金服的golang岗，没想到发offer了，不过打算下半年再换工作，所以还是拒了；税前27k，比现在高了不少 ​​​​',0,25),(NULL,'2020-12-03 20:30:09.077','2020-03-31 11:19:00.000',4,1,'姐控真的没救了，如果我也有一个nara这样的姐姐，该有多好 ​​​​\n\n![](https://jeffcott.oss-cn-beijing.aliyuncs.com/echo/2719334521.jpg)\n\n\n\n    ',0,27),(NULL,'2020-04-20 11:27:32.000','2020-04-04 11:27:00.000',4,1,'现在还挺享受不戴耳机听asmr的感觉，关注的asmr的youtuber大部分都是轻声说话的那种，每天晚上这个点，边听asmr边写代码，很安静，很安心，就像全世界只有自己和这么温柔的声音在一起；就会感慨为什么人生这么美好； ​​​​',0,28),(NULL,'2020-04-20 11:27:43.000','2020-04-07 11:27:00.000',4,1,'unread如果像reeder那样有基于icloud的read later就太好了 ​​​​',0,29),(NULL,'2020-04-20 11:27:57.000','2020-04-07 11:27:00.000',4,1,'最近一周试着相了几次亲，想吐吐槽，现在的女生反正都觉得自己挺不错，行吧才吃了几天饱饭就眼高于顶，且不说我们家怎么算也是达到瑞信1%家庭标准的，就算我自己在同龄人里也算是还行的，被比自己低至少一两个级别的女生嫌弃，也是觉得挺搞笑的；\n\n反正挺不爽，吐吐槽吧； ​​​​',0,30),(NULL,'2020-04-20 11:28:24.000','2020-04-12 11:28:00.000',4,1,'这两天没事的时候，反思了一下这段时间相亲的经历，主要是这两个问题：\n\n1. 一直对相亲这个事的心态不对，总是想速战速决，家庭情况+个人情况做个比较，如果符合再谈后面的，这种心态好处是更坦诚，坏处是姿态比较高，给女方的心理压力比较大，当然不会有一个好结果；\n2. 自己的沟通能力确实还差很多，平时工作是纯技术岗，从来都是有一说一，又都是工作上的事情，所以还感觉不到；一旦涉及到女生，以及一些私人问题，这个缺点就暴露出来了；\n\n---\n\n针对这两个问题的解决方案：\n\n1. 可以同时接触多个相亲对象，这样对某一个女生的进度的预期就不会太高；\n2. 提高沟通能力，尤其是跟女生的沟通能力，这个不多说，从培养良好的沟通习惯开始；',0,31),(NULL,'2020-12-04 00:46:31.723','2020-04-17 11:28:00.000',4,1,'```少年听雨歌楼上， 红烛昏罗帐。 壮年听雨客舟中， 江阔云低断雁叫西风。 而今听雨僧庐下， 鬓已星星也。 悲欢离合总关情， 一任阶前点滴到天明。```\n    ',0,32),(NULL,'2020-04-27 10:09:01.000','2020-04-27 10:08:00.000',4,1,'把微博都迁到self-host的goblog了，只是想自己管理这些数据，与其他无关；',0,33),(NULL,'2020-05-03 22:27:12.000','2020-05-03 22:27:12.000',4,1,'今年夏天一股脑买了两条champion的短裤，一条carhartt的短裤，一条运动短裤，共四条；\n\n试着退掉carhartt的那条，结果吊牌给摘掉了，退不掉；\n\n夏天就是很尴尬，不穿短裤很热，穿短裤膝盖又很疼；\n\n这不，在家穿了两天短裤，就难受的一比，夏天穿短裤的想法也淡了，不过，具体的还是到夏天再看吧，如果真的太热，估计也是不得不穿；',0,34),(NULL,'2020-05-04 23:34:31.000','2020-05-04 23:34:31.000',4,1,'今天是五一假期的第四天，早上呢，因为3号的感冒，所以起的比较晚，大概9点10分才起床吧，起床之后看了会youtube，一直到11点多；\n\n中午点了份bk，12点惯例看了会夜吹直播，1点多吧睡了一会，大概两点起来，起来之后看了会“键政圈”的东西，最近又看了看老编辑和忽左忽右的东西，又重新对这些东西感兴趣起来了；其实还是挺有意思的；一直到5点吧，写了会代码，把中午剩下的汉堡转了一下，凑活着吃了，吃完大概7点吧，吃完玩就算是晚上了；\n\n吃完饭继续看了会夜吹直播，大概看到7点半，开始跑步，一跑步就感觉跟平时不一样（这两天因为感冒，为了唤醒味觉，专门吃了两天bk，一感冒吃其他的真的是如同嚼蜡），因为昨天没跑步，今天就感觉很难跑起来，所以3km/h跑了一个小时，中间蹲了个坑，6km/h又跑了半个小时多点，终于感觉舒服了，一共跑了6km；跑完大概10点吧；赶紧洗了个澡，洗完澡10点20，开始边泡脚边写会代码，把这段时间计划的echo再往前推一推，今天大概就这样吧，又是一天过去了，明天就是五一假期的最后一天了，真的很快啊；',0,35),(NULL,'2020-05-13 17:43:10.000','2020-05-13 17:43:10.000',4,1,'今天发现一个挺有意思的python框架，masonite；跟laravel的目录结构，乃至实现都基本一模一样；\n\nlaravel, django, masonite，GoFrame这些重型框架本质上其实是脚手架，除了MVC分层，数据库，请求和响应的处理这些基础需求，还提供了计划任务，邮件，中间件，event-listener之类的常用功能；\n\n有时间的话做个项目玩玩看；',0,36),(NULL,'2020-12-23 23:58:17.711','2020-05-18 15:00:24.000',4,1,'            \n```\n力微任重久神疲，再竭衰庸定不支。\n苟利国家生死以，岂因祸福避趋之。\n谪居正是君恩厚，养拙刚于戍卒宜。\n戏与山妻谈故事，试吟断送老头皮。\n```\n    \n    ',0,37),(NULL,'2020-05-19 14:37:08.000','2020-05-19 14:37:08.000',4,1,'可转债连跌6天了，今天不出意外还是跌，不知道什么时候才能走右侧行情。\n\n每天都漏个大几十的，也挺不爽，有几只债已经浮亏快2个点了。\n\n但是，想了想，还是决定硬扛，大概有两方面因素：\n\n1. 再亏也亏不了多少钱。目前可转债的持仓一共9000左右，浮亏10个点也才900，短期内不再配置可转债就可以了，没必要斩仓。\n2. 现在出去，手续费有点高，转出去不划算。\n\n\n说白了就是，短期内不买，静观其变，手续费太高，没必要转来转去。',0,38),(NULL,'2020-05-20 08:38:04.000','2020-05-20 08:38:04.000',4,1,'之前思考过“我在什么情况下会失控”，当时列举了诸如“很饿”，“很冷”，“很热”，“加班到很晚”，“想”',0,39),(NULL,'2020-05-23 23:43:08.000','2020-05-23 18:20:00.000',4,1,'载妓随波泛酒行',0,40),(NULL,'2020-06-11 09:13:15.000','2020-06-09 23:43:00.000',4,1,'记一笔，两个事；\n\n一个是[如何看待中北大学大二学生补考作弊被抓后坠亡一事？暴露了哪些问题？ - 知乎](https://www.zhihu.com/question/400018294)\n\n看完大佐的文章之后，还是觉得幸亏自己上学这一路上都不太顺，所以心态比较好，脸皮也比较厚；\n工作之后，相比上学时，也就更珍惜现在的生活，反而现在的生活还算不错；\n\n---\n\n另一个事，投资相关，拉了一下3月之后且慢的收益，从我斩仓之后，大概浮盈了快10个点（我是3月16号-5.66%出的，今天是3.44%），我是亏了3.79个点出来的；',0,41),(NULL,'2020-06-11 22:29:16.000','2020-06-11 22:29:16.000',4,1,'不为婊子动真心,\n不为口号去献身。\n见了领导要服小,\n遇事先把水搅混。',0,42),(NULL,'2020-12-03 20:35:00.195','2020-06-16 10:14:00.000',4,1,'[嘿，再也不怕没钱了...](https://mp.weixin.qq.com/s?__biz=MzAwNzM3NzU4OQ==&mid=2650708071&idx=1&sn=e23f29165802d2509bd3bfd953e822bf&chksm=83753fbdb402b6abe46cdea5c5eba5a5aab801df74c0e4485d0b773bdc55bdc8534df28350fe#rd)\n\n![](https://jeffcott.oss-cn-beijing.aliyuncs.com/echo/3267568606.jpg)',0,43),(NULL,'2020-06-19 09:12:52.000','2020-06-19 00:30:00.000',4,1,'今天忙活了一整天，趁着618，买了一台高配服务器，把自己之前的几台服务器上的东西都迁移到这台服务器上了；\n\n一来是自己的那些个服务用起来也舒服，另外最近打算搞的wordpress站群，之前的服务器，估计也撑不住；\n\n过程还挺曲折，有时间回头再写；\n\n也顺便理了理自己之前搭的那些个服务，又熟悉了一下阿里云的这些个常用服务；',0,44),(NULL,'2020-06-19 09:17:55.000','2020-06-19 09:17:55.000',4,1,'6月16号应该是搞java的deadline',0,46),(NULL,'2020-06-22 15:15:37.000','2020-06-22 15:15:37.000',4,1,'[复制粘贴编程？如果不追问为什么，互联网上大多数技术内容都是胡扯 -aleksandra.codes](https://www.jdon.com/54361)\n\n正是我想说的，尽信书，不如无书',0,47),(NULL,'2020-12-04 00:45:38.416','2020-06-27 22:34:00.000',4,1,'\n```\n忧患增人慧，\n艰难玉汝成。\n死灰犹可活，\n百折莫吞声。\n```\n\n死灰犹可活！！！\n\n\n\n\n    ',0,48),(NULL,'2020-12-03 20:33:07.505','2020-07-01 00:01:49.000',4,1,'\n最近一直为这个事发愁，但是看了这个帖子[攒下 1000 万 + 1 套房，可我还是不敢自由](https://mp.weixin.qq.com/s?__biz=MzUzNjE3NzQ3Nw==&amp;mid=2247486354&amp;idx=1&amp;sn=8761ce4560981d891d46e4edc2c5663a&amp;chksm=fafb75b8cd8cfcae68e468341688478a6ef0159496790590bb02aef17fd695445c6f649a0ff1#rd)，真的是哈哈哈哈哈哈哈哈哈不失为一种选择啊\n    ',0,50),(NULL,'2020-12-03 20:34:14.532','2020-07-03 23:59:34.000',4,1,'事不关己高高挂起 vs 理解包容其他个体，己所不欲勿施于人\n\n[说说对协程的看法 - 知乎](https://zhuanlan.zhihu.com/p/146844906)\n\n    ',0,52),(NULL,'2020-07-09 21:38:14.000','2020-07-09 17:58:00.000',4,1,'这两天a股行情不错，最近做了几笔操作，记录一下\n\n 1. 2020.7.6上证指数暴涨5.71%的当天，浮盈了12%我就出了，目前来看确实踏空。\n 2. 本来想硬抗纯债的浮亏，但是看了看趋势，还是出掉了，**十年期国债的目标收益率**应该在3.5-3.9，涨到这个区间之后，再分批建纯债的仓。\n\n基本就这两笔操作，至于后续的操作，目前的想法是\n\n 1. 今年的行情确实跟17年的比较类似，但是这回从2020.6.30开盘的2965到2020.7.9收盘的3450这种八连阳还是第一次出现，所以也不能完全借鉴。\n 2. 2018.1.31号收盘3480点，之后跌了一年，一直到2018.12.28的2493点这个最低点。现在这些钱拿到手上就完事了，今年疫情后开盘第一天2646点，基本上在2700左右就可以分批去抄指数基金的底了。\n\n---\n\n后面的资金规划：\n\n 1. 网商银行里留18k的3个月生活费；\n 2. 其他的钱都放到同花顺基金，\n 3. 支出项：（生活费3500+房租3000）（每个月工资定投的8000+20期定投的800*4=3200，合计11200；）\n\n\n\n\n\n',0,53),(NULL,'2020-07-09 18:05:47.000','2020-07-09 18:05:47.000',4,1,'风口不常有，赌赢当收手',0,54),(NULL,'2020-12-03 20:33:43.235','2020-07-09 18:28:02.000',4,1,'精力管理\n\nless is more\n',1,56),(NULL,'2020-07-21 17:24:48.000','2020-07-21 17:24:48.000',4,1,'\n仓位管理是最重要的，上涨行情里“胜利是持筹者的胜利”，下跌行情里则是“仓位越重，亏的越多”。\n我们需要[指数估值表](https://danjuanapp.com/valuation-table/jiucai)来辅助管理当前仓位，我们可以根据自己的判断+-10%的仓位。\n\n\n怎么获得当天的“指数估值表”？',0,59),(NULL,'2020-08-10 22:51:07.000','2020-08-03 00:36:00.000',4,1,'记录一下最近基金的操作，其实一共没多少钱，但是刚刚开始玩这个，还是想记录一下，过段时间可以回过头看看之前的一些决策。\n1. 在纠结“主动型基金和指数基金哪个好”之中，把手上的指数基金都换成了主动基金。\n2. 持仓上，富国天惠和交银双息各一半，其他的暂时就不投了。\n3. 保证7层仓左右；8000；4*1500=6000；2000；2000块存支付宝；其他6000用来定投；\n4. 18k生活费存到“定活宝”；t+1赎回；\n\n\n\n\n',0,60),(NULL,'2020-09-13 11:08:38.000','2020-09-13 11:08:38.000',4,1,'你要搞土改，我就杀富农；你要反右，我就扩大化；你搞大跃进，我就搞浮夸；你要自力更生，我就造不如买；你要整走资派，我就整基层；你要文斗，我就武斗；你要除旧思想，我就砸文物；你要斗私批修，我就整知识分子；你不让我官好过，我就挑拨民众斗民众！表面上比你还革命，把你的路线推向极端。\n\n\n说毛主席有错误，倒不如说有些人开历史的倒车，然后让毛主席背黑锅。\n历史并不遥远，真相也不难发现。\n相信看完毛选五卷，以及静火版六七两卷，自然不难发现答案。',0,63),(NULL,'2020-09-23 18:07:36.000','2020-09-19 22:02:00.000',4,1,'“夺命大乌苏”果然名不虚传，一瓶就给我撂倒了。',0,64),(NULL,'2020-10-16 17:32:08.000','2020-09-24 22:55:00.000',4,1,'“用脚投票”，“民智”，“中美竞争，是赛车而不是打拳击”',0,65),(NULL,'2020-10-16 23:43:49.000','2020-10-16 23:43:49.000',4,1,'最近两个事：\n\n1. 国庆节后复工一个星期，终于恢复状态了。这个国庆过的太颓了。\n2. 最近这段时间，护肤颇有成效，色斑血丝泛红都下去很多，甚至痘坑都好很多。',0,68),('2020-12-04 12:16:11.901','2020-12-04 12:16:07.746','2020-12-04 12:16:07.746',4,1,'\n    1. ddd\n    2. 666',0,76),(NULL,'2020-12-06 23:38:56.419','2020-12-06 23:38:56.419',4,1,'\n   公司被骗，破产了，??失业了',0,77),(NULL,'2020-12-06 23:43:03.566','2020-12-06 23:43:03.566',4,1,'一到晚上10点，脚就开始发热，想咕嘟咕嘟地泡脚，这种身体本身的瘾，戒不了啊。\n    ',0,78),(NULL,'2020-12-08 00:19:56.078','2020-12-08 00:19:56.078',4,1,'      \n 今天应该是正式失业的第一天（虽然上周四已经知道了，但是上一段工作经历一直到上周日才正式画上一个句号），整体不错，虽然也还是浪费了大量的时间，但是计划中的任务基本上都完成了，70分左右吧。\n	 \n1. 早上把这个echo服务上线了，把自考的大作业提前做完提交掉。\n2. 下午和晚上把之前打印出来的golang面试题过了一遍，还剩下两份比较有难度的。\n\n\n明天三个事情\n\n1. 把今天没弄完的两份文档弄完。（3h，早上弄完）\n2. 把“年轮”里现在的文档全部过掉。（30*10/60=5h，下午正好2点到7点）\n2. 把今天整理出来的东西写到“年轮”，全部过掉。（2h，晚上时间可能不够）\n\n',0,79),(NULL,'2020-12-17 16:32:50.862','2020-12-13 00:39:17.377',4,1,'\n人之贤不肖，譬如鼠矣，在所自处耳！\n    \n---\n		\n《史记·李斯列传》：“李斯临刑，顾其子曰：吾欲与汝复牵黄犬、臂苍鹰，出上蔡东门逐狡兔，其可得乎?遂父子相哭，而夷三族。斯盖悔今之富贵而死，不若昔之贫贱而生也。宁思兔逢鹰犬，不犹己亡罹斧钺乎?兔灭群，汝夷族，适相当耳。不知其罪而反羡之，至死不悟者，李斯之父子欤?!”\n    \n\n---\n\n处卑贱之位而计不为者，此禽鹿视肉，人面而能强行者耳。故诟莫大于卑贱，而悲莫甚于穷困。久处卑贱之位，困苦之地，非世而恶利，自托于无为，此非士之情也。(人处卑贱之位，而不想着去求取功名富贵，就如同禽兽一般，只等看到现成的肉才想去吃，白白长了一副人的面孔勉强直立行走。所以最大的耻辱莫过于卑贱，最大悲哀莫过于贫穷。长期处于卑贱的地位和贫困的环境之中，（却还要）非难社会、厌恶功名利禄，标谤自己与世无争，这人sb。)\n    \n    \n    ',1,80),(NULL,'2020-12-17 16:34:42.145','2020-12-17 15:33:49.877',4,1,'\n周二定了跟着磊哥去上品哆，今天记录一下之所以去上品哆的原因(重要程度从上到下)：\n\n1. 最主要的原因，学历问题。明天7月份学历才能下来，三月份拿不到学历。中间的时间间隔太长了。(这是自己的问题)\n2. 上品哆还是比较稳定的。\n    1. 公司角度。他们本身是银行投资的项目，不是完全的市场化竞争，相对稳定。\n    2. 团队角度。团队很熟悉，没有磨合时间，也不存在去新公司的试用期。\n3. 钱。这段时间只有出项，没有进项，一来一去大概要损失5万块钱，很没必要。\n4. 本身工资也有提升。\n\n\n现在可选的三个选择，\n\n1. 再看看golang，2021年三月出去找golang工作。\n2. 找份PHP的工作，这个不难，但是不一定稳定，团队也要重新适应。\n3. 去上品哆。\n\n综合来看，去上品哆是比较好的选择。\n    \n    ',0,81),('2021-01-17 23:30:24.949','2021-01-17 10:42:37.034','2020-12-18 00:00:00.582',4,1,'                  \n## 每月收支\n\n[消费](mweblib://15658797197905)\n\n    \n    \n    \n    \n    \n    \n    ',1,82),(NULL,'2020-12-22 10:18:30.067','2020-12-22 10:18:30.067',4,1,'      \n现实点，不迷茫...\n    ',1,83),('2021-01-16 23:24:26.369','2020-12-31 17:45:00.970','2020-12-22 10:19:14.013',4,1,'                                    \n每周工作（慢就是快，少就是多，每个月落实10个问题。）\n\n---\n\n每天要看很多技术文章，其中也有一些很有价值的(3-4篇)，每周下来大概10多篇，其中只能定一个问题去研究，那剩下的技术文章呢？\n    \n怎么确定哪个问题是“真正值得研究”的呢？\n\n确定问题之后，具体的学习流程(解决问题流程)是什么？\n\n是否实际上并不需要onetab？\n\n---\n\n几个介质：rss、onetab、mweb每周问题、年轮、mweb笔记\n    \n---\n\n具体流程是什么？\n\n\n1. 记录，记录的时候一定要克制，有用但是暂时用不到的加到chrome收藏夹，没用的不记录。\n2. 写到”年轮“之前，把没用的和暂时使用不到的删掉。\n3. 写到“年轮”，在年轮上背的时候，结合“mweb2”进行。\n4. 等“年轮”上整个流程走完之后，再把“mweb2”的内容移到“mweb1”上。\n\n\n1. 每周整理onetab，整理出知识点。x\n2. 每周整理rss，整理出好的文章。x\n3. 整理并背完之后，把record整理回文档。\n    \n---\n\n多去添加，多去精简mweb笔记。\n    \n    \n    \n    \n    \n    ',0,84),('2021-08-21 01:35:37.037','2020-12-27 00:08:21.674','2020-12-22 10:21:06.744',4,1,'            \n			\n反复确认\n\n不要有侥幸心理',1,85),(NULL,'2021-02-02 10:42:25.542','2020-12-24 00:03:44.175',4,1,'                              \n打算记录一下目前对”国内低生育率“的看法，先占个坑。\n\n结论是，无论是加强分配，还是像现在大部分国家一样单纯靠发福利，都无法解决这个问题。因为”低生育率“的本质是，随着经济水平的提高，私有制加强，随之带来的对于个人利益得失的计较。其实目前江浙沪地区搞的”双头婚“是很不错的一种尝试。\n\n---\n\n另外，最近想法也有一些转变。“养儿防老”这种传统文化还是有道理的，存好自己的养老钱，剩下的钱回报率最高的就是孩子教育。”存人失钱，还可挣钱；存钱失人，人钱两失。“嘛。\n    \n---\n\nupdate-on: 2021.2.2\n\n只养一个小孩，边际效应是递减的。举个例子，假设有1000w用来养娃，只养1个娃，可以给他远超平均水平的生活和教育条件，但是大多数都是溢出的，不会转化为回报。相反，如果养5个娃，可能的回报率就被放大了5倍。\n    ',1,86),('2021-01-17 23:30:55.759','2021-01-17 10:42:27.336','2020-12-24 00:04:59.620',4,1,'                  \n## 每日作息\n\n---\n\n吃饭，运动，睡觉\n\n1. 每顿饭只吃8分饱（早上和晚上严格遵守2-2守则）\n2. 晚上好好跑6公里（线上马拉松；10km/6km）\n3. 晚上11点半之前睡觉\n    \n    ',1,87),('2020-12-27 12:01:29.305','2020-12-27 00:38:03.438','2020-12-24 00:07:39.601',4,1,'      \n在家期间的十分钟hiit\n\n```\n原地小跑 5min\n\n开合跳\n左右手轮流直拳\n俄式扭腰\n拉腿\n\n\n波比跳\n平板抬膝\n四方旋转跳跃\n全力纵跳\n支撑开合跳\n转体高抬腿\n反式撑体\n\n\n```\n\n\n8个核心动作算一组，一共做6组。\n    ',0,88),(NULL,'2021-01-28 11:14:41.132','2020-12-29 14:10:32.875',4,1,'                              \n\n“人之忌，在好为人师”\n\n要有距离感\n\n[成年人最大的自律，就是克制自己纠正别人的欲望 - 知乎](https://zhuanlan.zhihu.com/p/136882414)\n\n[总是忍不住纠正室友们错误的观点，我该怎样纠正好为人师的毛病？ - 知乎](https://www.zhihu.com/question/22482255)\n\n[我们应不应该纠正别人的错误? - 知乎](https://www.zhihu.com/question/21754489)\n\n[“永远不要试图纠正别人的想法，因为几乎做不到”这句话合理吗？为什么？如果是你遇到的，你会怎么做？ - 知乎](https://www.zhihu.com/question/52475605)\n    \n---\n\n\n直球打回去“不好意思啊，我觉得以咱俩的关系，还没到聊这些事的程度”，适合哪种情况？\n\n就是我当下的情况，对方拎不清，“近之则不逊，远之则怨”\n\n距离感，与人相处最忌交浅言深。说实话，这个问题，我纠结了至少十一二年了，到现在也没很好地解决。现在想想，又是一个典型的“用别人的错误折磨自己”的例子，自己需要做的是，控制好距离感，如果别人还是拎不清，那么是对方的问题，直球打回去就可以了。\n\n\n---\n\n\n怎么跟他人保持距离感？\n    \n    ',1,89),(NULL,'2021-01-01 11:07:11.000','2021-01-01 10:50:04.554',4,1,'                                          \n\n想办法内网穿透到公司的mac，不带mac上下班。\n\n1. mac mini\n		1. 价格：最便宜的6000。M1/8G/512G。\n    2. 缺点：m1版本不能自己升级内存和硬盘。\n    3. [Mac mini 2020 的实际体验如何？值得购买吗？ - 知乎](https://www.zhihu.com/question/381738927)\n2. mbp13\n3. nuc\n		1. 价格：\n			1. 最便宜的3300。豆子峡谷i7/32G/三星的evo 1T。\n			2. 冥王峡谷8809裸机5000，要自己加硬盘内存，合计7000。\n    2. 缺点：\n			1. 做黑苹果，不知道是否稳定，不过这台机器总的来说，就是用来内网穿透连mac的。\n			2. 维修成本高。\n		3. 综合来说，性价比最高的，但是黑果不知道是否稳定，因为我还是习惯mac的生态。\n    \n    \n    \n    \n    \n    \n    ',0,90),(NULL,'2021-01-05 11:46:10.961','2021-01-04 20:33:11.031',4,1,'                  \n\n买了个nuc改的mac mini，第一次不用下班背着mbp回家，太爽了，身轻如燕啊，起飞起飞。\n    \n    ',0,91),(NULL,'2021-01-08 14:32:07.875','2021-01-08 14:32:07.875',4,1,'      \n\n把订阅的视频放在一个池子里，想看或者需要看的时候，从中取出“对应时间”的视频。',0,92),(NULL,'2021-01-13 00:00:56.710','2021-01-11 23:41:55.118',4,1,'                        \n\n2021年了，2020年年底不经意间回想过去一年，总是感觉没什么长进。\n\n这两天，整理笔记，很多记忆角落里的知识点被捡起来，突然发现“过去一年，也不是什么都没干嘛！”。\n\n这两天，通过写这个文档[interviewer](mweblib://16094008896196)，删改了很多笔记。**站在一个面试官的角度审视自己真正会哪些东西，发现很多知识点确实是“一知半解”。**\n\n    ',0,93),('2021-01-17 23:31:52.793','2021-01-17 23:31:48.838','2021-01-13 00:01:06.957',4,1,'            \n\n同一个问题，站在不同的角度看，重要性是不一样的。\n\n先问为什么要解决这个问题？有的问题太空了，需要知道为什么我们需要解决这个问题。\n\n再想想，文档或者答案是否正确，如果不对，为什么不对？\n\n    \n---\n\n已有的问题(已有文档)和新文档怎么处理？\n\n做好新文档的处理（chrome添加书签，或者添加到mweb文档），一个一个解决以前的问题。\n\n\n    \n    ',0,94),(NULL,'2021-01-13 00:02:30.441','2021-01-13 00:02:30.441',4,1,'      \n两个近期纠结事情的决定：\n\n\n不调仓了，算了一下9w的持仓，按照目前股债估值分位60%，应该有23w是合理的，现在只有13w。但是未来一年未必有什么加仓的机会，而这10w的差值，不到9个月能攒下来，其实还好，没必要折腾。\n\n---\n\n不买ipad了。\n\n1. 在mac上看pdf文件。\n2. 用纸笔比用ipad方便。\n\n\n',0,95),('2021-01-17 23:29:57.874','2021-01-17 10:40:13.675','2021-01-15 17:40:12.972',4,1,'      \n## 我的workflow？\n\n\n\n### update-on: 2021-01-15\n\n之前的workflow?现在的workflow?\n\n---\n\n之前的workflow\n\n1. 每周整理rss和onetab\n2. 找出其中10个知识点，写到“每周清单”\n3. 从“每周清单”里筛出5个问题，列到“年轮”\n4. 通过“年轮”落地知识点\n5. 在“年轮”上走完整个流程后，把这些问题沉淀回mweb\n\n---\n\n存在哪些问题？\n\n1. 流程太长，消耗精力大。通常只能执行前三点，很难真正落地知识点，更别说把问题沉淀回mweb。(整理rss、写到“每周清单”、筛选问题都会占用很多精力，无法长期维持)\n2. 落地知识点有困难。真正出问题就在“第四点”，因为其中很多问题都是很有意思的，不想清楚，很难说落地。\n\n---\n\n现在的workflow\n\n1. 每周整理rss。(不再使用onetab)\n2. 觉得不错的文档直接丢到chrome书签，或者整理到mweb。**到这里rss的流程就结束了**。(碎片时间可以看看rss)\n\n\n1. “每周问题”直接从我的“问题池”里筛选一个。(“问题池”里的问题按照重要程度排序)\n2. 当周只解决这么一个问题即可，这样的好处在于“维持机制的精力”大大降低，且非常灵活(如果当周工作很忙，抽一个相对简单的问题来看，如果比较闲，就抽一个比较难的问题看)。\n3. 搞定之后，重新整理该问题相关的mweb笔记。\n\n\n---\n\n怎么解决问题？解决问题的流程？\n\n1. 获取尽可能多的优质资料。查mweb上现有文档，chrome书签，以及google一下相关文档。\n2. 结合这些资料，画出相关知识图谱。\n3. 简化图谱。\n4. 总结整理到mweb上。\n\n\n\n---\n\n\n### update-on: 2020-12-22\n\n每周工作（慢就是快，少就是多，每个月落实10个问题。）\n\n---\n\n每天要看很多技术文章，其中也有一些很有价值的(3-4篇)，每周下来大概10多篇，其中只能定一个问题去研究，那剩下的技术文章呢？\n\n怎么确定哪个问题是“真正值得研究”的呢？\n\n确定问题之后，具体的学习流程(解决问题流程)是什么？\n\n是否实际上并不需要onetab？\n\n---\n\n几个介质：rss、onetab、mweb每周问题、年轮、mweb笔记\n\n---\n\n具体流程是什么？\n\n1. 记录，记录的时候一定要克制，有用但是暂时用不到的加到chrome收藏夹，没用的不记录。\n2. 写到”年轮“之前，把没用的和暂时使用不到的删掉。\n3. 写到“年轮”，在年轮上背的时候，结合“mweb2”进行。\n4. 等“年轮”上整个流程走完之后，再把“mweb2”的内容移到“mweb1”上。\n\n---\n\n1. 每周整理onetab，整理出知识点。x\n2. 每周整理rss，整理出好的文章。x\n3. 整理并背完之后，把record整理回文档。\n\n---\n\n多去添加，多去精简mweb笔记。\n\n\n\n\n\n\n    \n    \n    \n    \n    \n    \n    \n    \n    \n    ',1,96),('2021-01-17 23:29:55.707','2021-01-17 10:42:10.169','2021-01-17 10:42:10.169',4,1,'      \n## soho在家期间-15分钟hiit\n\n[程序员健康](mweblib://15515969341633)',1,97),(NULL,'2021-01-26 18:02:19.754','2021-01-26 18:02:19.754',4,1,'      \n\n\n周六周日两天搞个ppt，录视频。输出。\n\n本周第一次\n\n大概是1.30&1.31',0,98),(NULL,'2021-01-26 23:04:40.946','2021-01-26 23:04:40.946',4,1,'      \n\n不要去试图理解“那些不值得理解的人”的行为动机或者是想法，万一理解了呢？',0,99),(NULL,'2021-01-26 23:37:06.850','2021-01-26 23:36:17.272',4,1,'                  \n\n\n[寒冰射手曹草草 的想法: 人是一切社会关系的总和 - 知乎](https://www.zhihu.com/pin/1337128793577193473)\n\n\n![](https://jeffcott.oss-cn-beijing.aliyuncs.com/echo/Xnip2021-01-26_23-27-50.jpg)\n\n---\n\nupdate-on: 2021.1.26\n\n过两天写写自己的想法~\n    ',0,100),(NULL,'2021-01-27 14:39:44.436','2021-01-27 14:39:44.436',4,1,'\n\n所有人都应该明白国家就是个人让渡部分权利给集体实现的社会契约，你要求无限的权利就是对契约的破坏，你不要求权利就是默许了别人忽视你应有的权利。',0,101),(NULL,'2021-02-01 09:58:07.529','2021-02-01 09:58:07.529',4,1,'      \n\n一等人忠臣孝子，两件事读书耕田',0,102),(NULL,'2021-02-03 22:27:17.705','2021-02-03 00:28:57.188',4,1,'            \n\n吐槽一下\n\n如果把平时看色情小说、色情视频的时间用来看怎么谈恋爱、追女生，估计早都有女朋友，现在都快要结婚了...\n    ',0,103),(NULL,'2021-02-03 23:11:24.292','2021-02-03 23:11:24.292',4,1,'      \n人类交媾和动物的交配有什么区别？都太恶心了',0,104),(NULL,'2021-02-05 00:15:04.388','2021-02-05 00:12:04.204',4,1,'                              \n\n突然要过年，压力好大\n\n1. 换租押一付一6k，押一付三12k\n2. 补牙10k+\n3. 过年给父母红包666*2=13xx\n\n合计一下大概22k+1.3k=23k左右\n\n另外还有说好的备用金20k，就是43k。一笔巨款。\n\n---\n\n### 心理按摩\n\n不过想想还好，不管是房租、还是给父母的红包、还是备用金，都是该花的。本身不应该算在“投资金额”里。\n\n补牙算是意外要花的钱，但是也不知道最后要花多少钱，可能没有10k这么多。\n\n给自己做个心理按摩吧，这算是流动性缺失？都是日后要花的钱，但是一下子碰到一块，就真的没有、也不想花这么多钱。\n\n---\n\n### 解决方案\n\n手头投资账户还有12k+的现金，另外这月工资还有18k没发(大概这么多)，2月份还有7k的理财产品到期，还有加起来是足够的。\n\n1. 备用金先不提，投资账户不动。\n2. 如果补牙费用低于5k的话，上月工资就足够cover换租+补牙+红包的费用了。理财产品到期就直接转到备用金账号。\n3. 如果补牙费用比较高的话，7k做个补充，基本上就够了。\n\n\n...后续解决之后，做个update\n\n---\n\n### 后续更新\n\n\n\n    \n    \n    \n    ',0,105),(NULL,'2021-02-18 23:21:32.635','2021-02-16 15:56:38.630',4,1,'                  \n\n2023年起，买插电混动不送绿牌了，且需要在小区里有充电设施。也就是说，两年之内要买车。\n\n1. 没必要看要买什么车，我肯定买混动或者纯电，这两年还有新车要上，到时候再说。\n2. 车价大概与一年的税前工资持平，大概35w左右？基本就是这个价钱\n\n---\n\n1. 要在小区里买个停车位。\n2. 学车。2021年或者2022年。\n3. 买车。\n    \n    ',0,106),(NULL,'2021-02-20 11:45:03.876','2021-02-18 23:17:43.864',4,1,'                        \n补一下2021年春节假期的记录\n\n本来想分早中晚，详细记录一下每天做了什么，想了想，大概写写吧\n\n\n假期从2.7-2.17，一共12天\n\n大概前3-4天，把laravel_starter搞完了，开源掉了，挺多人star，还是挺爽的\n\n之后1-2天搞了搞之前看的3-4个gf的项目，比如gadmin、gf-admin-api、novelserver，之后没搞gf_starter\n\n再之后的4-5天，就玩着过去了，也看了点团队管理和恋爱方面的知识，整理了一下，还行吧，在家瞎玩也挺累的\n\n基本就这样\n    \n    \n    ',0,107),(NULL,'2021-02-20 23:44:56.158','2021-02-20 23:34:05.095',4,1,'            \n\n今年截止目前，只存了一笔4500(春节开销太大了，还了老爸8k+买了个新mac10k+杂项开销大概3k)\n\n3月只能存(税后工资)17000-(生活费)3000-(房租)12000+(现有的)3300=5000+\n\n4月能存17000-3000=14000\n    ',0,108),(NULL,'2021-02-27 17:37:45.175','2021-02-27 17:37:45.175',4,1,'      \n\n搬完家了，这回搬家还挺费事的，东西很多，总花费(80+50+15)+50=200左右。\n\n1. 经常搬家，反脆弱\n2. 想想有什么东西是可以扔掉的？',0,109),(NULL,'2021-03-18 08:35:39.009','2021-03-04 11:21:29.689',4,1,'                        \n\n富国天惠和泓德浮盈超过30%，马上清掉。等下一波机会。\n交银双息留1w，感受一下。\n\n\n---\n\n问自己几个问题\n\n“现在撤了，会不会因为债基收益太低，再买回主动型基金？”\n\n因为已经有，买了指基，因为一直亏本金，所以转买债基，又因为收益太低，又转到主动基的经历。\n\n\n---\n\n恢复每周定投\n\n3月-大概5k`17000-10000-3000+3500=7500`\n\n4月-14k，周定投各2000，`2000*4*2=16k`\n\n\n    \n    ',0,110),(NULL,'2021-03-05 23:50:32.236','2021-03-05 00:12:09.042',4,1,'                  \n\n最近清了一批闲置物品，两点原因\n\n1. 主要原因，最近搬家，东西太多了，以后一定要少买多收纳东西。\n2. 另外，东西太多，有点占地方。\n\n---\n\n\n清掉的东西主要这几样，记录一下，看看以后会不会后悔\n\n1. 漫步者的R1700BT太轰头了，听得累，前几天晚上听了一晚上范宗沛，第二天有点耳鸣，耳边总是轰轰地响。\n2. 小爱音箱HD\n3. 漫步者MB200\n4. ecco biom的一双休闲鞋，不怎么穿，卖掉。\n5. 上上个月买的NUC，用不到。3200买的，3500卖掉，小赚。\n\n\n加起来大概回血820+3500=4300左右\n\n---\n\n买/替换了什么？\n\n1. 用homepod mini替换了之前的音箱。\n    ',0,111),(NULL,'2021-03-13 00:43:32.868','2021-03-09 11:22:02.013',4,1,'                              \n\n*“投资一定要有节奏，如果跟不上现在的节奏，跟不上就跟不上，等火车过去了再走，市场上永远不缺机会。”*\n\n---\n\n是否要加杠杆？\n\n绝对不要，说穿了还是一句话“降低预期”，赚自己能力范围和认知范围内的钱，钱是赚不完的。\n\n[千千万万不要加杠杆炒股！加杠杆必须同时配合风险管理！- 雪球](https://xueqiu.com/6784593966/150146187)\n\n---\n\n过年假期之后的这两周，手上持有的主动型基金大概跌了10来个点。\n\n有点想融资加一倍杠杆抄底，但是想了想，意义不大。风险不算低，收益不算高。(如果成本价往下再跌30%，加杠杆的情况下，相当于本金损失60%，就超过我的承受范围了。反之，即使涨30%，折大概16*30%=5w，两个月工资而已)\n\n\n    \n    \n    \n    ',0,112),(NULL,'2021-03-16 08:23:47.676','2021-03-16 08:23:47.676',4,1,'      \n如果一个人是这样的“用苹果全家桶，习惯于购买鸟家的衣服，一定要搬到离公司走路10分钟距离的地方住”，你会觉得他是一个怎样的人？\n\n除了生活品质之外，更多的是实用主义、怕麻烦、有自己的一套购物框架，从而避免因为这些东西而浪费时间。',1,113),(NULL,'2021-03-16 11:15:56.543','2021-03-16 08:24:59.624',4,1,'            \n一定要把golang搞好，这是我的底气。\n\n只有这样，我才能自由，我现在不自由，很不自由，被这份工作夹住了。\n    ',0,114),('2021-04-02 14:31:43.696','2021-04-01 11:00:42.536','2021-04-01 11:00:13.943',4,1,'            \n色是刮骨刀\n\n打卡，到周日，不看任何色情内容\n    ',0,115),(NULL,'2021-04-11 11:47:42.656','2021-04-11 11:47:42.656',4,1,'  \n预期管理\n\n“勿忘初心，方得始终”\n\n---\n\n如果每天进步一点点，在人生的爬坡期，成长是线性的。“不要让昨天的你，替今天更好的你做决定”。\n\n那么，是否要修改目标？\n以及，在达成目标之后，付出的成本时候划算？\n\n更多的是，看待问题的角度不同，很难客观评价\n\n\n~~“所有命运赠送的礼物，早已在暗中标好了价格”~~\n\n\n\n\n---\n\n这可能也是人生的无奈处\n\n怎么看待这两种观点？\n\n\n',0,116),(NULL,'2021-05-05 23:41:05.555','2021-04-24 22:40:48.859',4,1,'                  \n1. 现实点，不迷茫\n2. 降低预期\n3. 精力管理，专注、聚焦问题、做减法\n    \n    ',1,117),(NULL,'2021-06-07 08:56:54.208','2021-04-26 14:20:29.824',4,1,'                                                            \n笔记，less is more\n\n尽信书，则不如无书\n\n问题比答案更重要\n\n[复制粘贴编程？如果不追问为什么，互联网上大多数技术内容都是胡扯 -aleksandra.codes](https://www.jdon.com/54361)\n\n实践出真知\n\n---\n\n如何停止成为技术消费者？\n\n```\n意识到自己的知识结构实际上漏洞百出，需要不断地删改；\n意识到大部分解决方案都并非完美无缺，只是一种trade off；\n意识到网上的文章更是瞎胡扯，绝大部分是已经过时或者未经实践的；\n\n```\n\n\n    \n    \n    \n    \n    \n    \n    ',1,118),(NULL,'2021-04-29 09:37:24.832','2021-04-29 09:37:24.832',4,1,'      \n1. 把笔记整理顺了，暂时不要再往里面加新东西了\n2. 没有视频看的时候，可以看看收藏夹\n3. 怎么估工时？做完事情，就去玩',0,119),(NULL,'2021-04-29 19:21:15.625','2021-04-29 19:21:15.625',4,1,'      \n整理笔记就是还债嘛，早晚要还的，快点还上就行了',0,120),(NULL,'2021-05-02 10:34:24.097','2021-05-02 10:34:24.097',4,1,'      \n德不配位，必有灾殃\n\n财富再分配',0,121),('2021-08-21 01:34:20.126','2021-05-03 21:31:37.877','2021-05-03 21:31:37.877',4,1,'      \n生存本来就是一种幸运，过去的地球上是如此，现在这个冷酷的宇宙中也到处如此。但不知从什么时候起，人类有了一种幻觉，认为生存成了唾手可得的东西。',0,122),(NULL,'2021-05-03 23:36:43.724','2021-05-03 23:36:43.724',4,1,'      \n很大程度上，asmr已经成为一种生活方式，生活的一部分，生活中不可或缺的一部分，至少是对我而言',0,123),(NULL,'2021-06-03 15:46:27.464','2021-05-13 15:40:18.158',4,1,'                  \n1. 该是你的，天天看都可以。不是你的，看也没用。\n2. 公狗干母狗，有必要羡慕公狗吗？费拉不堪\n    \n    ',1,124),('2021-05-16 17:22:27.195','2021-05-15 22:56:08.022','2021-05-15 22:56:08.022',4,1,'      \n为什么要“要警惕右，但主要是防止‘左’”？\n\n因为很多人名右实左，名左实逆',0,125),(NULL,'2021-05-17 21:12:49.317','2021-05-16 17:39:19.456',4,1,'                                                                  \n1. 目前的情况\n	1. 大量之前在书签、mweb、rss、onetab，以及各种边边角角里堆积的文档，需要整理\n	2. 具体文档数，书签里有2300+，mweb里也有(现有的2100+已处理的1500)+个文档，其他合起来有几百个文档\n2. 预期\n	1. 每天产生的问题、看到的文档，当天都可以处理消化掉，这样就很爽\n	2. 把awesome之类内容密度比较高的文档，和可以及时处理掉(但是暂时没时间处理)的，分开。内容密度比较高的存到书签，可以及时掉的放到onetab就可以了。\n5. 遇到了哪些问题？\n6. 正确的心态\n	1. 目的是什么？是学会这些东西，而不只是处理完这些文档\n	2. 不能只以减少mweb里的url数为目的，很多文档是需要这些url的，以后用起来更方便\n	3. 80+个文档，就算url再少，也得有至少500多个对文档本身是有意义的\n    \n    \n    \n    \n    \n    \n    \n    \n    \n    ',0,126),(NULL,'2021-05-20 11:45:23.161','2021-05-19 17:27:39.181',4,1,'                  \n今年估计要搬三次家，2月底从近铁搬到打浦桥，今天又搬到嘉定新城，过两三个月估计要再搬一次\n\n这次搬家还挺快的，早上没过来看房子，早起收拾一下东西，师傅10点多到，10点40出发，12点前就到新住所了，之后吃了口饭歇了歇，略微收拾了一下东西，到4点多把东西基本弄好，洗个澡，睡一觉，很舒服。\n\n下次搬家前，把能卖掉的东西都卖掉好了，现在的东西还是有点多\n    \n---\n\n下次搬家前，要卖掉哪些东西？\n\n\n1. 鞋盒\n2. 几双ecco的鞋\n3. 显示器支架?\n4. 打印机\n\n---\n\n1. 晒衣架用固定到墙壁的晾衣架代替，比较便携\n2. 打印纸，尽量用掉',1,127),('2021-08-21 01:34:43.147','2021-05-20 23:10:39.844','2021-05-20 23:10:39.844',4,1,'      \n俄罗斯方块告诉我们犯下的错误会积累，获得的成功会消失',0,128),(NULL,'2021-05-24 07:27:56.968','2021-05-24 07:27:56.968',4,1,'      \n一个月时间\n\n1. 拥有刷周赛&双周赛的能力，并且刷2+1次周赛\n2. 刷600题，全部简单题+部分mid题',0,129),(NULL,'2021-05-24 10:24:34.570','2021-05-24 10:24:34.570',4,1,'      \n所谓民主国家的稳定，主要依靠经济的支撑，不管钱是挣来的还是抢来的，所以它的稳定性是非常脆弱的，这就是马克思所说的，资本主义最高形式，一定是帝国主义，为了避免国家的解体，只能通过战争手段，而战争的目的，就是挣钱和抢钱，如果手段用的好，还是可以保持，相当长时间的稳定性，而他们现在的主要问题，是民主的反吞噬，白左横行，社会极度碎片化，使其战争能力极度衰退，即使有所谓的高科技军事手段，也是难以弥补的，而新保守主义，其实是被美国民主消灭的，西方国家一直寄希望于中国的自我崩溃，这是极其无知和幼稚的，只要真正了解中国的人就知道，中国目前的政治和行政体系，其设计非常巧妙和稳固，可以说坚如磐石',0,130),(NULL,'2021-05-24 18:16:16.635','2021-05-24 18:16:16.635',4,1,'      \n# workflow\n\n## 我的workflow\n\n\n现在的workflow\n\n1. 每周整理rss。(不再使用onetab)\n2. 觉得不错的文档直接丢到chrome书签，或者整理到mweb。*到这里rss的流程就结束了*。(碎片时间可以看看rss)\n\n\n---\n\n1. “每周问题”直接从我的“问题池”里筛选一个。(“问题池”里的问题按照重要程度排序)\n2. 当周只解决这么一个问题即可，这样的好处在于“维持机制的精力”大大降低，且非常灵活(如果当周工作很忙，抽一个相对简单的问题来看，如果比较闲，就抽一个比较难的问题看)。\n3. 搞定之后，重新整理该问题相关的mweb笔记。\n\n\n---\n\n怎么解决问题？解决问题的流程？\n\n1. 获取尽可能多的优质资料。查mweb上现有文档，chrome书签，以及google一下相关文档。\n2. 结合这些资料，画出相关知识图谱。\n3. 简化图谱。\n4. 总结整理到mweb上。\n\n\n## update-on: 2021-05-13\n\n\n1. 新workflow是什么？\n    1. 新的workflow下，rss和onetab的东西，随时可以清理，且很快(20min内)\n    2. 内容都压到chrome书签\n        1. 有`benchmark-clean-up`插件，可以有效处理各种文档\n    3. 至于`每周问题`，维持不变。但是要*做好每周学到的东西的总结整理*\n2. 跟之前的workflow有什么区别？\n    1. 主要是`workflow哲学`的变化，之前以记录和记忆为主，*现在以实践为主，所有的文档，我都要亲手实现一下，代码化、拓展包化、项目化、工具化，这样才算真正的学会*，很多文档经过这样的学习之后，再遇到类似的问题，一看便知。靠记录和记忆的话，是永远处理不完这么多东西的\n    2. *截止今日，基本已完成文档整理，并删除了mweb2、年轮*，所以就不需要每周把rss和onetab的东西整理到mweb2和年轮了，直接塞到chrome书签，比之前效率高很多\n\n\n\n\n\n## update-on: 2021-01-18\n\n之前的workflow，只有“输入”和“内化”，没有“输出”\n\n\n## update-on: 2021-01-15\n\n\n\n1. 之前的workflow?\n    1. 每周整理rss和onetab\n    2. 找出其中10个知识点，写到“每周清单”\n    3. 从“每周清单”里筛出5个问题，列到“年轮”\n    4. 通过“年轮”落地知识点\n    5. 在“年轮”上走完整个流程后，把这些问题沉淀回mweb\n2. 存在哪些问题？\n    1. 流程太长，消耗精力大。通常只能执行前三点，很难真正落地知识点，更别说把问题沉淀回mweb。(整理rss、写到“每周清单”、筛选问题都会占用很多精力，无法长期维持)\n    2. 落地知识点有困难。真正出问题就在“第四点”，因为其中很多问题都是很有意思的，不想清楚，很难说落地。\n3. 现在的workflow?(`整理文档`+`每周问题`，两部分解耦了)\n    1. 每周整理rss。(不再使用onetab)\n    2. 觉得不错的文档直接丢到chrome书签，或者整理到mweb。*到这里rss的流程就结束了*。(碎片时间可以看看rss)\n4. `每周问题`是什么？\n    1. “每周问题”直接从我的“问题池”里筛选一个。(“问题池”里的问题按照重要程度排序)\n    2. 当周只解决这么一个问题即可，这样的好处在于“维持机制的精力”大大降低，且非常灵活(如果当周工作很忙，抽一个相对简单的问题来看，如果比较闲，就抽一个比较难的问题看)\n    3. 搞定之后，重新整理该问题相关的mweb笔记。\n5. 怎么解决问题？解决问题的流程？\n    1. 获取尽可能多的优质资料。查mweb上现有文档，chrome书签，以及google一下相关文档。\n    2. 结合这些资料，画出相关知识图谱。\n    3. 简化图谱。\n    4. 总结整理到mweb上。\n\n\n\n\n\n\n## update-on: 2020-12-22\n\n每周工作（慢就是快，少就是多，每个月落实10个问题）\n\n\n1. 每天要看很多技术文章，其中也有一些很有价值的(3-4篇)，每周下来大概10多篇，其中只能定一个问题去研究，那剩下的技术文章呢？\n2. 怎么确定哪个问题是“真正值得研究”的呢？\n3. 确定问题之后，具体的学习流程(解决问题流程)是什么？\n4. 是否实际上并不需要onetab？\n\n\n几个介质：rss、onetab、mweb每周问题、年轮、mweb笔记\n\n\n\n',1,131),(NULL,'2021-06-09 23:06:29.272','2021-05-30 10:49:31.126',4,1,'                                                                  \n干掉了mweb上的3000+的网页，下面继续把chrome里的2500+的网页也全部干掉，之后开始背面试题\n\n预计10天，每天250个左右，ddl是6.9号\n\n---\n\n中间挪了两天时间去做其他的，比如做爬虫+sdk，还有整理chrome书签，所以ddl往后挪两天，到6.11号，均下来每天180个\n    \n    \n---\n\nupdate-on:6.8\n\n最后四天，今天把打开的页面看完，后面三天搞定剩下的564个页面\n    \n---\n\nupdate-on:6.9\n\n```\n目标：要减少到380个左右\n```\n    \n---\n\nupdate-on:6.10\n\n```\n目标：要减少到200个左右\n```\n\n    \n    ',1,132),('2021-06-05 16:26:17.160','2021-06-03 13:11:02.298','2021-06-03 13:11:02.298',4,1,'      \n资本市场就像吹气球，只有一直吹才能变大，但是一直吹，气球会爆。然而，一旦不吹，气球就会快速瘪掉。',0,133),(NULL,'2021-06-05 16:25:58.007','2021-06-05 16:25:58.007',4,1,'      \n用了一天半，把大概前年到今年的一些垃圾项目，垃圾代码都该删的删，该整理归类的整理',0,134),(NULL,'2021-06-07 10:32:17.781','2021-06-05 16:33:24.125',4,1,'            \n\n后续安排：\n\n1. 把chrome书签清掉之后，先把年轮上的问题都扫掉\n1. golang面试题(语雀的golang面试题 & golang书签 & 知识点)\n2. 架构组件使用\n1. gozero\n1. golang项目实战(services & awesome-golang)\n1. 算法\n\n---\n\n如果还有时间，可以看看汇编、编译器、shell脚本\n    \n    \n    ',1,135),(NULL,'2021-06-12 23:09:17.512','2021-06-12 23:09:17.512',4,1,'      \n6.13号开始背golang面试题',0,136),(NULL,'2021-06-17 15:09:06.995','2021-06-17 11:05:16.304',4,1,'                  \n把手上的面试题全部清掉之后，整理成7份，打印出来，后面每天早上起床，先把一份面试题背一遍\n\n---\n\n今天把所有打开的url以及本地技术图片全部扫掉，明天开始搞面试题\n    ',0,137),('2021-08-21 01:36:21.942','2021-08-19 11:28:33.132','2021-08-19 11:28:33.132',4,1,'      \n没事就重装一下系统，就和没事就出去旅行一次一样，符合微服务的\n\n清理掉生活中不需要的东西，知道什么东西是更重要的\n\n\n反脆弱性\n\n是那些不仅能从混乱和波动中受益，而且需要这种混乱和波动才能维持生存和实现繁荣的事物的特性。',0,138);
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `idx_categories_created_at` (`created_at`),
  KEY `idx_categories_updated_at` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stars`
--

DROP TABLE IF EXISTS `stars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stars` (
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL COMMENT '文章id',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COMMENT='文章收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stars`
--

LOCK TABLES `stars` WRITE;
/*!40000 ALTER TABLE `stars` DISABLE KEYS */;
INSERT INTO `stars` VALUES ('2020-12-23 17:15:48','2020-12-23 15:51:47','2020-12-23 15:51:47',85,1,1),('2020-12-23 17:16:54','2020-12-23 17:16:13','2020-12-23 17:16:13',85,1,2),('2020-12-23 17:28:01','2020-12-23 17:27:45','2020-12-23 17:27:45',85,1,3),('2020-12-23 17:28:59','2020-12-23 17:28:26','2020-12-23 17:28:26',85,1,4),('2020-12-23 17:31:20','2020-12-23 17:29:10','2020-12-23 17:29:10',85,1,5),('2020-12-23 17:31:52','2020-12-23 17:31:25','2020-12-23 17:31:25',85,1,6),('2020-12-23 17:32:59','2020-12-23 17:31:55','2020-12-23 17:31:55',85,1,7),('2020-12-23 17:33:17','2020-12-23 17:33:03','2020-12-23 17:33:03',85,1,8),('2020-12-23 17:34:31','2020-12-23 17:33:21','2020-12-23 17:33:21',85,1,9),('2020-12-23 17:34:53','2020-12-23 17:34:36','2020-12-23 17:34:36',85,1,10),('2020-12-23 17:40:51','2020-12-23 17:34:58','2020-12-23 17:34:58',85,1,11),('2020-12-23 17:42:26','2020-12-23 17:40:55','2020-12-23 17:40:55',85,1,12),('2020-12-23 17:42:32','2020-12-23 17:42:29','2020-12-23 17:42:29',85,1,13),('2020-12-23 17:44:28','2020-12-23 17:44:26','2020-12-23 17:44:26',85,1,14),('2020-12-23 17:45:47','2020-12-23 17:45:46','2020-12-23 17:45:46',85,1,15),('2020-12-23 17:46:17','2020-12-23 17:46:04','2020-12-23 17:46:04',85,1,16),('2020-12-23 17:47:07','2020-12-23 17:46:51','2020-12-23 17:46:51',85,1,17),('2020-12-23 17:47:08','2020-12-23 17:47:07','2020-12-23 17:47:07',85,1,18),('2020-12-23 17:47:10','2020-12-23 17:47:09','2020-12-23 17:47:09',85,1,19),('2020-12-23 17:48:14','2020-12-23 17:47:10','2020-12-23 17:47:10',85,1,20),('2020-12-23 17:48:14','2020-12-23 17:48:11','2020-12-23 17:48:11',85,1,21),('2020-12-23 18:45:22','2020-12-23 17:58:01','2020-12-23 17:58:01',85,1,23),('2020-12-23 18:58:06','2020-12-23 17:58:03','2020-12-23 17:58:03',84,1,24),('2020-12-23 18:58:21','2020-12-23 18:41:40','2020-12-23 18:41:40',83,1,25),('2020-12-23 18:46:16','2020-12-23 18:46:14','2020-12-23 18:46:14',85,1,26),('2020-12-23 18:46:19','2020-12-23 18:46:17','2020-12-23 18:46:17',85,1,27),('2021-01-16 23:24:19','2020-12-23 18:58:53','2020-12-23 18:58:53',84,1,28),(NULL,'2020-12-23 18:58:56','2020-12-23 18:58:56',82,1,29),('2020-12-23 19:03:45','2020-12-23 18:59:44','2020-12-23 18:59:44',85,1,30),(NULL,'2020-12-23 18:59:46','2020-12-23 18:59:46',83,1,31),('2020-12-23 23:55:05','2020-12-23 18:59:48','2020-12-23 18:59:48',81,1,32),(NULL,'2020-12-23 18:59:51','2020-12-23 18:59:51',80,1,33),(NULL,'2020-12-23 23:57:19','2020-12-23 23:57:19',56,1,34),(NULL,'2020-12-23 23:59:31','2020-12-23 23:59:31',9,1,35),('2020-12-24 00:03:54','2020-12-24 00:03:51','2020-12-24 00:03:51',86,1,36),('2020-12-27 12:01:23','2020-12-24 00:07:46','2020-12-24 00:07:46',88,1,37),(NULL,'2020-12-24 00:07:48','2020-12-24 00:07:48',87,1,38),(NULL,'2020-12-27 00:06:26','2020-12-27 00:06:26',85,1,39),(NULL,'2020-12-30 23:54:56','2020-12-30 23:54:56',89,1,40),('2021-01-17 23:31:51','2021-01-13 00:01:10','2021-01-13 00:01:10',94,1,41),(NULL,'2021-01-15 23:07:41','2021-01-15 23:07:41',96,1,42),(NULL,'2021-01-17 10:42:17','2021-01-17 10:42:17',97,1,43),('2021-06-08 08:39:57','2021-01-26 22:07:53','2021-01-26 22:07:53',98,1,44),(NULL,'2021-02-02 10:38:02','2021-02-02 10:38:02',86,1,45),(NULL,'2021-05-13 15:30:22','2021-05-13 15:30:22',118,1,46),(NULL,'2021-05-13 15:30:25','2021-05-13 15:30:25',117,1,47),(NULL,'2021-05-13 15:30:33','2021-05-13 15:30:33',113,1,48),(NULL,'2021-05-13 15:40:20','2021-05-13 15:40:20',124,1,49),(NULL,'2021-05-24 18:16:53','2021-05-24 18:16:53',131,1,50),(NULL,'2021-05-24 19:53:23','2021-05-24 19:53:23',127,1,51),(NULL,'2021-06-05 16:33:26','2021-06-05 16:33:26',135,1,52),(NULL,'2021-06-08 08:40:38','2021-06-08 08:40:38',132,1,53);
/*!40000 ALTER TABLE `stars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `deleted_at` datetime(3) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `email` (`email`),
  KEY `idx_users_created_at` (`created_at`),
  KEY `idx_users_updated_at` (`updated_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (NULL,'$2a$14$yAyBKY/eMCCpPzxqO47ZKOhiYoqgoejgzv9busXgAOo4m9EWObTye','yyzw@live.com','jff','2020-12-07 11:16:55.413','2020-12-07 11:16:55.413',1),(NULL,'$2a$14$EX2cWV8LlTx0tgiuDo0ECufzoIjRpVq4LqHK5gQ9iyH.GIoEiihiS','1526772937@qq.com','lsp','2020-12-04 00:15:21.261','2020-12-04 00:15:21.261',2);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-21 16:15:09
