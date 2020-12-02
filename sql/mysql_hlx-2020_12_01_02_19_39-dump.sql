-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hlx
-- ------------------------------------------------------
-- Server version	5.6.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `hlx`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hlx` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `hlx`;

--
-- Table structure for table `essay`
--

DROP TABLE IF EXISTS `essay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `essay` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `preview_img` varchar(100) DEFAULT NULL COMMENT '预览图',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `content` longtext COMMENT '内容',
  `time` datetime DEFAULT CURRENT_TIMESTAMP() COMMENT '发布时间',
  `preview_num` int(11) DEFAULT '0' COMMENT '预览次数',
  `status` int(11) DEFAULT NULL COMMENT '状态（1、轮播图，2、头条，3、随便看看，4、热门阅读，5、专题专栏）',
  `tag_id` int(11) DEFAULT NULL COMMENT '标签表的外检',
  PRIMARY KEY (`id`),
  KEY `tag_id` (`tag_id`),
  CONSTRAINT `essay_ibfk_1` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='博客文章表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `essay`
--

LOCK TABLES `essay` WRITE;
/*!40000 ALTER TABLE `essay` DISABLE KEYS */;
INSERT INTO `essay` VALUES (60,'http://localhost:8080/ssm/upload/2020111210054897.png','被裁半年后成功进入阿里定级P7，他是咋做到的？','<p>二本学校、非科班出身、人过 30 岁、还是转行...... 转行后进了一家北京的创业公司，一做就 4 年，有点股份，那时老徐觉得自己混得还行。直到去年 6 月他们部门整个被裁了。</p><p>7 月，老徐决定重新找工作，开始看各种面经，复习基础知识，8 月开始投简历。据老徐说，那是他最痛苦的一个月：他以为吃透两套框架就够了，没想到实际面试中被虐的不行，三周时间，面了 13 家公司，连一个 offer 都没拿到。。</p><p>他觉得不能再这样下去了，下决心要在半年内把自己欠的债都补上。</p>','2020-11-30 09:22:24',13,1,1),(64,'http://localhost:8080/ssm/upload/2020111210054897.png','头条346tgfd','<p><img src=\"http://localhost:8080/ssm/upload/W020201124719403966942.jpg\" style=\"max-width:100%;\"></p>','2020-11-30 09:33:52',6,2,43),(65,'http://localhost:8080/ssm/upload/W020201125379887151103.jpg','头条5yergfd','<p><img src=\"http://localhost:8080/ssm/upload/W020201124719403966942.jpg\" style=\"max-width:100%;\"></p>','2020-11-30 09:33:58',4,2,43),(66,'http://localhost:8080/ssm/upload/W020201125570171365328.jpg','头条456','<p><img src=\"http://localhost:8080/ssm/upload/W020201124719403966942.jpg\" style=\"max-width:100%;\"></p>','2020-11-30 09:34:05',7,2,43),(68,'http://localhost:8080/ssm/upload/W020201125379887111131.jpg','头条1','<p>Bootstrap，来自 Twitter，是目前最受欢迎的前端框架。Bootstrap 是基于 HTML、CSS、JAVASCRIPT 的，它简洁灵活，使得 Web 开发更加快捷。</p><p>本教程将向您讲解 Bootstrap 框架的基础，通过学习这些内容，您将可以轻松地创建 Web 项目。教程被分为 Bootstrap 基本结构、Bootstrap CSS、Bootstrap 布局组件和 Bootstrap 插件几个部分。每个部分都包含了与该主题相关的简单有用的实例。</p><p><img src=\"http://localhost:8080/ssm/upload/W020201124719403966942.jpg\" style=\"max-width:100%;\"></p>','2020-11-30 09:34:26',11,2,43),(70,'http://localhost:8080/ssm/upload/2020111210054897.png','专栏2','<p>Bootstrap，来自 Twitter，是目前最受欢迎的前端框架。Bootstrap 是基于 HTML、CSS、JAVASCRIPT 的，它简洁灵活，使得 Web 开发更加快捷。</p><p>本教程将向您讲解 Bootstrap 框架的基础，通过学习这些内容，您将可以轻松地创建 Web 项目。教程被分为 Bootstrap 基本结构、Bootstrap CSS、Bootstrap 布局组件和 Bootstrap 插件几个部分。每个部分都包含了与该主题相关的简单有用的实例。</p><p><img src=\"http://localhost:8080/ssm/upload/W020201124719403966942.jpg\" style=\"max-width:100%;\"></p>','2020-11-30 09:41:31',5,5,43),(71,'http://localhost:8080/ssm/upload/W020201125379887172502.jpg','专栏234','<p>Bootstrap，来自 Twitter，是目前最受欢迎的前端框架。Bootstrap 是基于 HTML、CSS、JAVASCRIPT 的，它简洁灵活，使得 Web 开发更加快捷。</p><p>本教程将向您讲解 Bootstrap 框架的基础，通过学习这些内容，您将可以轻松地创建 Web 项目。教程被分为 Bootstrap 基本结构、Bootstrap CSS、Bootstrap 布局组件和 Bootstrap 插件几个部分。每个部分都包含了与该主题相关的简单有用的实例。</p><p><img src=\"http://localhost:8080/ssm/upload/W020201124719403966942.jpg\" style=\"max-width:100%;\"></p>','2020-11-30 09:41:41',6,5,43),(72,'http://localhost:8080/ssm/upload/2020111210054897.png','专栏234放的地方','<p>Bootstrap，来自 Twitter，是目前最受欢迎的前端框架。Bootstrap 是基于 HTML、CSS、JAVASCRIPT 的，它简洁灵活，使得 Web 开发更加快捷。</p><p>本教程将向您讲解 Bootstrap 框架的基础，通过学习这些内容，您将可以轻松地创建 Web 项目。教程被分为 Bootstrap 基本结构、Bootstrap CSS、Bootstrap 布局组件和 Bootstrap 插件几个部分。每个部分都包含了与该主题相关的简单有用的实例。</p>','2020-11-30 09:41:52',5,5,17),(73,'http://localhost:8080/ssm/upload/2020111210054897.png','专栏234放的地方','<p>Bootstrap，来自 Twitter，是目前最受欢迎的前端框架。Bootstrap 是基于 HTML、CSS、JAVASCRIPT 的，它简洁灵活，使得 Web 开发更加快捷。</p><p>本教程将向您讲解 Bootstrap 框架的基础，通过学习这些内容，您将可以轻松地创建 Web 项目。教程被分为 Bootstrap 基本结构、Bootstrap CSS、Bootstrap 布局组件和 Bootstrap 插件几个部分。每个部分都包含了与该主题相关的简单有用的实例。</p>','2020-11-30 10:11:48',3,4,17),(74,'http://localhost:8080/ssm/upload/2020111210054897.png','专栏234放的地方','<p>Bootstrap，来自 Twitter，是目前最受欢迎的前端框架。Bootstrap 是基于 HTML、CSS、JAVASCRIPT 的，它简洁灵活，使得 Web 开发更加快捷。</p><p>本教程将向您讲解 Bootstrap 框架的基础，通过学习这些内容，您将可以轻松地创建 Web 项目。教程被分为 Bootstrap 基本结构、Bootstrap CSS、Bootstrap 布局组件和 Bootstrap 插件几个部分。每个部分都包含了与该主题相关的简单有用的实例。</p>','2020-11-30 10:11:53',2,4,17),(75,'http://localhost:8080/ssm/upload/2020111210054897.png','专栏234放的地方','<p>Bootstrap，来自 Twitter，是目前最受欢迎的前端框架。Bootstrap 是基于 HTML、CSS、JAVASCRIPT 的，它简洁灵活，使得 Web 开发更加快捷。</p><p>本教程将向您讲解 Bootstrap 框架的基础，通过学习这些内容，您将可以轻松地创建 Web 项目。教程被分为 Bootstrap 基本结构、Bootstrap CSS、Bootstrap 布局组件和 Bootstrap 插件几个部分。每个部分都包含了与该主题相关的简单有用的实例。</p>','2020-11-30 10:11:55',5,4,17),(76,'http://localhost:8080/ssm/upload/2020111210054897.png','专栏234放的地方','<p>Bootstrap，来自 Twitter，是目前最受欢迎的前端框架。Bootstrap 是基于 HTML、CSS、JAVASCRIPT 的，它简洁灵活，使得 Web 开发更加快捷。</p><p>本教程将向您讲解 Bootstrap 框架的基础，通过学习这些内容，您将可以轻松地创建 Web 项目。教程被分为 Bootstrap 基本结构、Bootstrap CSS、Bootstrap 布局组件和 Bootstrap 插件几个部分。每个部分都包含了与该主题相关的简单有用的实例。</p>','2020-11-30 10:11:58',4,4,17),(77,'http://localhost:8080/ssm/upload/2020111210054897.png','专栏234放的地方','<p>Bootstrap，来自 Twitter，是目前最受欢迎的前端框架。Bootstrap 是基于 HTML、CSS、JAVASCRIPT 的，它简洁灵活，使得 Web 开发更加快捷。</p><p>本教程将向您讲解 Bootstrap 框架的基础，通过学习这些内容，您将可以轻松地创建 Web 项目。教程被分为 Bootstrap 基本结构、Bootstrap CSS、Bootstrap 布局组件和 Bootstrap 插件几个部分。每个部分都包含了与该主题相关的简单有用的实例。</p>','2020-11-30 10:12:00',4,4,44),(78,'http://localhost:8080/ssm/upload/2020111210054897.png','专栏234放的地方','<p>Bootstrap，来自 Twitter，是目前最受欢迎的前端框架。Bootstrap 是基于 HTML、CSS、JAVASCRIPT 的，它简洁灵活，使得 Web 开发更加快捷。</p><p>本教程将向您讲解 Bootstrap 框架的基础，通过学习这些内容，您将可以轻松地创建 Web 项目。教程被分为 Bootstrap 基本结构、Bootstrap CSS、Bootstrap 布局组件和 Bootstrap 插件几个部分。每个部分都包含了与该主题相关的简单有用的实例。</p>','2020-11-30 10:14:40',5,3,1),(79,'http://localhost:8080/ssm/upload/2020111210054897.png','专栏234放的地方','<p>Bootstrap，来自 Twitter，是目前最受欢迎的前端框架。Bootstrap 是基于 HTML、CSS、JAVASCRIPT 的，它简洁灵活，使得 Web 开发更加快捷。</p><p>本教程将向您讲解 Bootstrap 框架的基础，通过学习这些内容，您将可以轻松地创建 Web 项目。教程被分为 Bootstrap 基本结构、Bootstrap CSS、Bootstrap 布局组件和 Bootstrap 插件几个部分。每个部分都包含了与该主题相关的简单有用的实例。</p>','2020-11-30 10:14:43',5,1,30),(80,'http://localhost:8080/ssm/upload/2020111210054897.png','专栏234放的地方','<p>Bootstrap，来自 Twitter，是目前最受欢迎的前端框架。Bootstrap 是基于 HTML、CSS、JAVASCRIPT 的，它简洁灵活，使得 Web 开发更加快捷。</p><p>本教程将向您讲解 Bootstrap 框架的基础，通过学习这些内容，您将可以轻松地创建 Web 项目。教程被分为 Bootstrap 基本结构、Bootstrap CSS、Bootstrap 布局组件和 Bootstrap 插件几个部分。每个部分都包含了与该主题相关的简单有用的实例。</p>','2020-11-30 10:14:46',4,3,17),(81,'http://localhost:8080/ssm/upload/2020111210054897.png','专栏234放的地方','<p>Bootstrap，来自 Twitter，是目前最受欢迎的前端框架。Bootstrap 是基于 HTML、CSS、JAVASCRIPT 的，它简洁灵活，使得 Web 开发更加快捷。</p><p>本教程将向您讲解 Bootstrap 框架的基础，通过学习这些内容，您将可以轻松地创建 Web 项目。教程被分为 Bootstrap 基本结构、Bootstrap CSS、Bootstrap 布局组件和 Bootstrap 插件几个部分。每个部分都包含了与该主题相关的简单有用的实例。</p>','2020-11-30 10:14:48',6,4,43),(82,'http://localhost:8080/ssm/upload/2020111210054897.png','专栏234放的地方','<p>Bootstrap，来自 Twitter，是目前最受欢迎的前端框架。Bootstrap 是基于 HTML、CSS、JAVASCRIPT 的，它简洁灵活，使得 Web 开发更加快捷。</p><p>本教程将向您讲解 Bootstrap 框架的基础，通过学习这些内容，您将可以轻松地创建 Web 项目。教程被分为 Bootstrap 基本结构、Bootstrap CSS、Bootstrap 布局组件和 Bootstrap 插件几个部分。每个部分都包含了与该主题相关的简单有用的实例。</p>','2020-11-30 10:14:51',9,3,17),(83,'http://localhost:8080/ssm/upload/2020111210054897.png','专栏234放的地方','<p>Bootstrap，来自 Twitter，是目前最受欢迎的前端框架。Bootstrap 是基于 HTML、CSS、JAVASCRIPT 的，它简洁灵活，使得 Web 开发更加快捷。</p><p>本教程将向您讲解 Bootstrap 框架的基础，通过学习这些内容，您将可以轻松地创建 Web 项目。教程被分为 Bootstrap 基本结构、Bootstrap CSS、Bootstrap 布局组件和 Bootstrap 插件几个部分。每个部分都包含了与该主题相关的简单有用的实例。</p>','2020-11-30 10:14:55',11,4,8),(85,'http://localhost:8080/ssm/upload/2020111210054897.png','被裁半年后成功进入阿里定级P7，他是咋做到的？','<p>二本学校、非科班出身、人过 30 岁、还是转行...... 转行后进了一家北京的创业公司，一做就 4 年，有点股份，那时老徐觉得自己混得还行。直到去年 6 月他们部门整个被裁了。</p><p>7 月，老徐决定重新找工作，开始看各种面经，复习基础知识，8 月开始投简历。据老徐说，那是他最痛苦的一个月：他以为吃透两套框架就够了，没想到实际面试中被虐的不行，三周时间，面了 13 家公司，连一个 offer 都没拿到。。</p><p>他觉得不能再这样下去了，下决心要在半年内把自己欠的债都补上。</p>','2020-11-30 10:22:49',33,1,1),(86,'http://localhost:8080/ssm/upload/2020111210054897.png','被裁半年后成功进入阿里定级P7，他是咋做到的？','<p>二本学校、非科班出身、人过 30 岁、还是转行...... 转行后进了一家北京的创业公司，一做就 4 年，有点股份，那时老徐觉得自己混得还行。直到去年 6 月他们部门整个被裁了。</p><p>7 月，老徐决定重新找工作，开始看各种面经，复习基础知识，8 月开始投简历。据老徐说，那是他最痛苦的一个月：他以为吃透两套框架就够了，没想到实际面试中被虐的不行，三周时间，面了 13 家公司，连一个 offer 都没拿到。。</p><p>他觉得不能再这样下去了，下决心要在半年内把自己欠的债都补上。</p><p style=\"text-align: center; \"><img src=\"http://localhost:8080/ssm/upload/W020201125570171341151.jpg\" style=\"max-width:100%;\"></p>','2020-11-30 10:22:53',67,1,1),(88,'http://localhost:8080/ssm/upload/2020111210054897.png','被裁半年后成功进入阿里定级P7，他是咋做到的？','<p>二本学校、非科班出身、人过 30 岁、还是转行...... 转行后进了一家北京的创业公司，一做就 4 年，有点股份，那时老徐觉得自己混得还行。直到去年 6 月他们部门整个被裁了。</p><p>7 月，老徐决定重新找工作，开始看各种面经，复习基础知识，8 月开始投简历。据老徐说，那是他最痛苦的一个月：他以为吃透两套框架就够了，没想到实际面试中被虐的不行，三周时间，面了 13 家公司，连一个 offer 都没拿到。。</p><p>他觉得不能再这样下去了，下决心要在半年内把自己欠的债都补上。</p><p style=\"text-align: center; \"><img src=\"http://localhost:8080/ssm/upload/W020201125570171341151.jpg\" style=\"max-width:100%;\"></p>','2020-12-01 01:43:10',0,1,1),(89,'http://localhost:8080/ssm/upload/2020111210054897.png','被裁半年后成功进入阿里定级P7，他是咋做到的？','<p>二本学校、非科班出身、人过 30 岁、还是转行...... 转行后进了一家北京的创业公司，一做就 4 年，有点股份，那时老徐觉得自己混得还行。直到去年 6 月他们部门整个被裁了。</p><p>7 月，老徐决定重新找工作，开始看各种面经，复习基础知识，8 月开始投简历。据老徐说，那是他最痛苦的一个月：他以为吃透两套框架就够了，没想到实际面试中被虐的不行，三周时间，面了 13 家公司，连一个 offer 都没拿到。。</p><p>他觉得不能再这样下去了，下决心要在半年内把自己欠的债都补上。</p><p style=\"text-align: center; \"><img src=\"http://localhost:8080/ssm/upload/W020201125570171341151.jpg\" style=\"max-width:100%;\"></p>','2020-12-01 01:43:14',0,1,1),(90,'http://localhost:8080/ssm/upload/2020111210054897.png','被裁半年后成功进入阿里定级P7，他是咋做到的？','<p>二本学校、非科班出身、人过 30 岁、还是转行...... 转行后进了一家北京的创业公司，一做就 4 年，有点股份，那时老徐觉得自己混得还行。直到去年 6 月他们部门整个被裁了。</p><p>7 月，老徐决定重新找工作，开始看各种面经，复习基础知识，8 月开始投简历。据老徐说，那是他最痛苦的一个月：他以为吃透两套框架就够了，没想到实际面试中被虐的不行，三周时间，面了 13 家公司，连一个 offer 都没拿到。。</p><p>他觉得不能再这样下去了，下决心要在半年内把自己欠的债都补上。</p><p style=\"text-align: center; \"><img src=\"http://localhost:8080/ssm/upload/W020201125570171341151.jpg\" style=\"max-width:100%;\"></p>','2020-12-01 01:43:17',0,1,1),(91,'http://localhost:8080/ssm/upload/2020111210054897.png','被裁半年后成功进入阿里定级P7，他是咋做到的？','<p>二本学校、非科班出身、人过 30 岁、还是转行...... 转行后进了一家北京的创业公司，一做就 4 年，有点股份，那时老徐觉得自己混得还行。直到去年 6 月他们部门整个被裁了。</p><p>7 月，老徐决定重新找工作，开始看各种面经，复习基础知识，8 月开始投简历。据老徐说，那是他最痛苦的一个月：他以为吃透两套框架就够了，没想到实际面试中被虐的不行，三周时间，面了 13 家公司，连一个 offer 都没拿到。。</p><p>他觉得不能再这样下去了，下决心要在半年内把自己欠的债都补上。</p><p style=\"text-align: center; \"><img src=\"http://localhost:8080/ssm/upload/W020201125570171341151.jpg\" style=\"max-width:100%;\"></p>','2020-12-01 01:43:19',1,1,1),(92,'http://localhost:8080/ssm/upload/2020111210054897.png','被裁半年后成功进入阿里定级P7，他是咋做到的？','<p>二本学校、非科班出身、人过 30 岁、还是转行...... 转行后进了一家北京的创业公司，一做就 4 年，有点股份，那时老徐觉得自己混得还行。直到去年 6 月他们部门整个被裁了。</p><p>7 月，老徐决定重新找工作，开始看各种面经，复习基础知识，8 月开始投简历。据老徐说，那是他最痛苦的一个月：他以为吃透两套框架就够了，没想到实际面试中被虐的不行，三周时间，面了 13 家公司，连一个 offer 都没拿到。。</p><p>他觉得不能再这样下去了，下决心要在半年内把自己欠的债都补上。</p><p style=\"text-align: center; \"><img src=\"http://localhost:8080/ssm/upload/W020201125570171341151.jpg\" style=\"max-width:100%;\"></p>','2020-12-01 01:43:22',0,1,1),(93,'http://localhost:8080/ssm/upload/2020111210054897.png','被裁半年后成功进入阿里定级P7，他是咋做到的？','<p>二本学校、非科班出身、人过 30 岁、还是转行...... 转行后进了一家北京的创业公司，一做就 4 年，有点股份，那时老徐觉得自己混得还行。直到去年 6 月他们部门整个被裁了。</p><p>7 月，老徐决定重新找工作，开始看各种面经，复习基础知识，8 月开始投简历。据老徐说，那是他最痛苦的一个月：他以为吃透两套框架就够了，没想到实际面试中被虐的不行，三周时间，面了 13 家公司，连一个 offer 都没拿到。。</p><p>他觉得不能再这样下去了，下决心要在半年内把自己欠的债都补上。</p><p style=\"text-align: center; \"><img src=\"http://localhost:8080/ssm/upload/W020201125570171341151.jpg\" style=\"max-width:100%;\"></p>','2020-12-01 01:43:24',0,1,1),(94,'http://localhost:8080/ssm/upload/2020111210054897.png','被裁半年后成功进入阿里定级P7，他是咋做到的？','<p>二本学校、非科班出身、人过 30 岁、还是转行...... 转行后进了一家北京的创业公司，一做就 4 年，有点股份，那时老徐觉得自己混得还行。直到去年 6 月他们部门整个被裁了。</p><p>7 月，老徐决定重新找工作，开始看各种面经，复习基础知识，8 月开始投简历。据老徐说，那是他最痛苦的一个月：他以为吃透两套框架就够了，没想到实际面试中被虐的不行，三周时间，面了 13 家公司，连一个 offer 都没拿到。。</p><p>他觉得不能再这样下去了，下决心要在半年内把自己欠的债都补上。</p><p style=\"text-align: center; \"><img src=\"http://localhost:8080/ssm/upload/W020201125570171341151.jpg\" style=\"max-width:100%;\"></p>','2020-12-01 01:43:26',0,1,1),(95,'http://localhost:8080/ssm/upload/2020111210054897.png','被裁半年后成功进入阿里定级P7，他是咋做到的？','<p>二本学校、非科班出身、人过 30 岁、还是转行...... 转行后进了一家北京的创业公司，一做就 4 年，有点股份，那时老徐觉得自己混得还行。直到去年 6 月他们部门整个被裁了。</p><p>7 月，老徐决定重新找工作，开始看各种面经，复习基础知识，8 月开始投简历。据老徐说，那是他最痛苦的一个月：他以为吃透两套框架就够了，没想到实际面试中被虐的不行，三周时间，面了 13 家公司，连一个 offer 都没拿到。。</p><p>他觉得不能再这样下去了，下决心要在半年内把自己欠的债都补上。</p><p style=\"text-align: center; \"><img src=\"http://localhost:8080/ssm/upload/W020201125570171341151.jpg\" style=\"max-width:100%;\"></p>','2020-12-01 01:43:29',0,1,1),(96,'http://localhost:8080/ssm/upload/2020111210054897.png','被裁半年后成功进入阿里定级P7，他是咋做到的？','<p>二本学校、非科班出身、人过 30 岁、还是转行...... 转行后进了一家北京的创业公司，一做就 4 年，有点股份，那时老徐觉得自己混得还行。直到去年 6 月他们部门整个被裁了。</p><p>7 月，老徐决定重新找工作，开始看各种面经，复习基础知识，8 月开始投简历。据老徐说，那是他最痛苦的一个月：他以为吃透两套框架就够了，没想到实际面试中被虐的不行，三周时间，面了 13 家公司，连一个 offer 都没拿到。。</p><p>他觉得不能再这样下去了，下决心要在半年内把自己欠的债都补上。</p><p style=\"text-align: center; \"><img src=\"http://localhost:8080/ssm/upload/W020201125570171341151.jpg\" style=\"max-width:100%;\"></p>','2020-12-01 01:43:31',0,1,1),(97,'http://localhost:8080/ssm/upload/2020111210054897.png','被裁半年后成功进入阿里定级P7，他是咋做到的？','<p>二本学校、非科班出身、人过 30 岁、还是转行...... 转行后进了一家北京的创业公司，一做就 4 年，有点股份，那时老徐觉得自己混得还行。直到去年 6 月他们部门整个被裁了。</p><p>7 月，老徐决定重新找工作，开始看各种面经，复习基础知识，8 月开始投简历。据老徐说，那是他最痛苦的一个月：他以为吃透两套框架就够了，没想到实际面试中被虐的不行，三周时间，面了 13 家公司，连一个 offer 都没拿到。。</p><p>他觉得不能再这样下去了，下决心要在半年内把自己欠的债都补上。</p><p style=\"text-align: center; \"><img src=\"http://localhost:8080/ssm/upload/W020201125570171341151.jpg\" style=\"max-width:100%;\"></p>','2020-12-01 01:43:33',0,1,1),(98,'http://localhost:8080/ssm/upload/2020111210054897.png','被裁半年后成功进入阿里定级P7，他是咋做到的？','<p>二本学校、非科班出身、人过 30 岁、还是转行...... 转行后进了一家北京的创业公司，一做就 4 年，有点股份，那时老徐觉得自己混得还行。直到去年 6 月他们部门整个被裁了。</p><p>7 月，老徐决定重新找工作，开始看各种面经，复习基础知识，8 月开始投简历。据老徐说，那是他最痛苦的一个月：他以为吃透两套框架就够了，没想到实际面试中被虐的不行，三周时间，面了 13 家公司，连一个 offer 都没拿到。。</p><p>他觉得不能再这样下去了，下决心要在半年内把自己欠的债都补上。</p><p style=\"text-align: center; \"><img src=\"http://localhost:8080/ssm/upload/W020201125570171341151.jpg\" style=\"max-width:100%;\"></p>','2020-12-01 01:43:35',0,1,1),(99,'http://localhost:8080/ssm/upload/2020111210054897.png','被裁半年后成功进入阿里定级P7，他是咋做到的？','<p>二本学校、非科班出身、人过 30 岁、还是转行...... 转行后进了一家北京的创业公司，一做就 4 年，有点股份，那时老徐觉得自己混得还行。直到去年 6 月他们部门整个被裁了。</p><p>7 月，老徐决定重新找工作，开始看各种面经，复习基础知识，8 月开始投简历。据老徐说，那是他最痛苦的一个月：他以为吃透两套框架就够了，没想到实际面试中被虐的不行，三周时间，面了 13 家公司，连一个 offer 都没拿到。。</p><p>他觉得不能再这样下去了，下决心要在半年内把自己欠的债都补上。</p><p style=\"text-align: center; \"><img src=\"http://localhost:8080/ssm/upload/W020201125570171341151.jpg\" style=\"max-width:100%;\"></p>','2020-12-01 01:43:37',0,1,1);
/*!40000 ALTER TABLE `essay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(20) DEFAULT NULL COMMENT '标签名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COMMENT='博客标签表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (1,'新闻在线'),(5,'Spring'),(8,'Linux'),(17,'Html5'),(30,'Css3'),(43,'Rdis'),(44,'Jsp'),(45,'Jquery');
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-01  2:19:39
