-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2024 at 07:34 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jon_vadar`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `listings`
--

CREATE TABLE `listings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listings`
--

INSERT INTO `listings` (`id`, `user_id`, `title`, `description`, `tags`, `email`, `link`, `image`, `approved`, `created_at`, `updated_at`) VALUES
(1, 2, 'Nostrum quasi quod architecto reprehenderit nihil laudantium ab molestias dolorem.', 'Enim veritatis tempora quo sequi magnam. Non dolorem in iste excepturi. Fugit voluptatem inventore dolores corporis necessitatibus a. Et et incidunt laborum vero. Nihil quidem minima nostrum eum omnis temporibus fugiat quidem. Repellat hic voluptatem et id pariatur eum ut. Ut nisi laborum deserunt aperiam labore. Expedita aut quasi animi est est ipsam.', 'game', 'altenwerth.polly@legros.net', 'http://quitzon.info/et-suscipit-voluptatem-libero-non-incidunt-aliquam', NULL, 1, '2024-11-11 00:05:05', '2024-11-12 06:44:07'),
(2, 2, 'Aut tenetur aliquam rem sapiente doloribus dolorem et aut aut corporis accusantium voluptas esse nam.', 'Ut recusandae beatae occaecati et perspiciatis voluptas omnis reiciendis. Totam reprehenderit quasi exercitationem similique. Dolores error qui pariatur cumque sunt beatae est minus. Deserunt sunt eligendi dolore nobis ut dolores. Sunt nulla numquam aliquam consequatur autem in. Et atque aut qui in quia. Soluta sunt et molestias fugiat ut quo dolorum. Est temporibus sunt architecto aspernatur ea quia. Eveniet deleniti id temporibus aliquam. Nesciunt et libero eum. Nobis harum dolorum veritatis asperiores similique consequatur corporis.', 'tech,game,biz', 'torphy.alivia@hotmail.com', 'http://www.stanton.com/', NULL, 1, '2024-11-11 00:05:05', '2024-11-12 06:26:49'),
(3, 4, 'Libero in quo ipsa voluptatem rerum consequatur accusantium quidem sit omnis aut veritatis.', 'Ut maiores beatae corrupti distinctio et sed voluptatum. In dolore necessitatibus sequi voluptas quaerat. Omnis et sunt reiciendis in quo sed laudantium. Magni nihil distinctio aliquam autem veniam. Iure quibusdam dolorem ipsa omnis. Esse unde eos quia sint. Temporibus quia vero voluptatem sed ullam aliquid. Consectetur consectetur sunt aliquam fuga voluptate odit. Possimus et fugiat soluta eum quod autem necessitatibus porro. Aut ut ea repellat dolorum ab.', 'dev,game', 'marcella17@gmail.com', 'https://www.gibson.biz/molestiae-sit-sit-officiis-tenetur-dignissimos-in-aut', NULL, 1, '2024-11-11 00:05:05', '2024-11-11 00:05:05'),
(4, 5, 'Rerum ut voluptate possimus sit provident eum eum dolorem ab.', 'Ut eos totam provident et voluptas amet laudantium. Exercitationem et ullam molestiae omnis veniam. Molestias ea animi non eveniet aspernatur repellat. Et et accusantium delectus numquam odio ipsam omnis. Molestiae possimus autem accusamus quis sapiente consectetur. Architecto reiciendis velit ipsa ut. Harum eaque sit aut. Pariatur omnis expedita reprehenderit debitis ut sapiente aut. Iste et placeat mollitia nisi voluptatem odio reprehenderit.', 'game', 'emmy85@jacobson.info', 'http://mckenzie.info/quia-vel-placeat-placeat-in-ut-blanditiis-temporibus.html', NULL, 1, '2024-11-11 00:05:05', '2024-11-11 00:05:05'),
(5, 3, 'In sit nulla rerum quis id quia dolor est et nihil laudantium quam ab.', 'Perspiciatis doloremque aut voluptatum voluptas inventore ut consequatur. Laborum tempora voluptates incidunt ab facere praesentium. Et aspernatur magni dolores aspernatur culpa dolore voluptatum quo. Consectetur aperiam suscipit temporibus at natus nihil. Eum autem sapiente dolores quo. Beatae porro explicabo saepe et laborum nam. Excepturi ipsum temporibus reprehenderit dolor. Laboriosam et sed iure tenetur necessitatibus. Mollitia dicta similique eos odio id saepe quam. Rem ratione nulla voluptas aut quia qui officiis.', 'game', 'stokes.earlene@hotmail.com', 'https://www.stokes.com/earum-dolorem-ducimus-non-eum-recusandae-id', NULL, 0, '2024-11-11 00:05:05', '2024-11-12 06:41:02'),
(6, 4, 'Adipisci nam quis molestiae vel numquam minus expedita assumenda itaque velit qui non.', 'Facilis atque aut unde quaerat ducimus esse. Sint sed repudiandae quas et fuga. Repudiandae quibusdam odio commodi alias sit libero. Quam ex aut et id perspiciatis. Odit aperiam iste sint. Magni qui aliquam pariatur facere harum voluptates aliquid in. Officiis earum commodi numquam ut fugit. Aut quibusdam dolor et voluptas in aut. Voluptatibus aut est et officiis odit. Dolor expedita non nihil dolores deserunt et amet nihil. Dolore cupiditate eos maiores autem velit. Aspernatur nihil eos vel. Saepe nulla molestias sed quia. Nihil aut ea ut veritatis explicabo qui cum. Modi ad harum ab qui voluptates molestias. Cupiditate repudiandae omnis veniam eum. Ut dolore eos in fuga similique asperiores aspernatur iure.', 'biz,tech', 'brekke.thurman@swaniawski.com', 'https://www.huels.com/id-blanditiis-ipsa-minima-et-sunt', NULL, 1, '2024-11-11 00:05:05', '2024-11-11 00:05:05'),
(7, 1, 'Quis minima rerum ut et autem et ex.', 'Recusandae delectus ea sint maiores accusantium. Corporis et quam eos iure placeat occaecati. Alias necessitatibus culpa optio modi rerum ipsa. Consectetur temporibus magnam sit praesentium iure debitis dicta. Sint totam quis necessitatibus dolores qui et. Consequatur ab modi odit ut. Pariatur aut et praesentium ex. Temporibus officia facere architecto reiciendis magnam impedit. Minus voluptas temporibus non ducimus sapiente. Quam ut et ut sint. Necessitatibus quia vero sint sint nam eos a. Dignissimos quas vel porro labore deserunt maiores qui eligendi. A magnam vero delectus est ut velit recusandae. Doloribus minima fugit ea. Minus qui maxime et incidunt quidem rerum. Sit quidem excepturi totam quod enim labore deserunt.', 'biz,tech', 'berge.lulu@hotmail.com', 'https://www.carroll.com/facere-sapiente-nisi-facilis', NULL, 1, '2024-11-11 00:05:05', '2024-11-11 00:05:05'),
(8, 3, 'Aspernatur voluptatibus praesentium exercitationem ab ab eum aliquam nisi temporibus eum.', 'Incidunt animi iure et et saepe et. Doloribus quod fuga corrupti illo. Veritatis qui recusandae aut rerum iure et. Quia at suscipit quam. Commodi qui exercitationem aliquid minus. Vel aut pariatur provident. Odio cumque iure voluptas animi tenetur. Quia fugiat cumque quia repellat sit maxime corporis.', 'biz,tech', 'einar39@hilpert.net', 'http://mccullough.com/iure-et-vel-voluptatem-iste.html', NULL, 1, '2024-11-11 00:05:05', '2024-11-11 00:05:05'),
(9, 5, 'Et non consequatur et eum amet sapiente voluptas ut nihil quo debitis voluptas.', 'Eveniet id inventore sapiente sapiente. Qui fugit quasi repudiandae voluptatem aut et perspiciatis. Aut animi corrupti deserunt sunt aut alias et aliquid. Voluptas veniam ut ut dolor rerum eos. Dolores dolores amet ipsum eius. Qui alias qui est sed reprehenderit numquam provident. Sed aut at blanditiis quasi voluptas dignissimos. Quisquam quia ut ducimus et veritatis minima nulla. Eum vel nostrum unde quia quia consequatur ullam.', 'dev,game', 'wisoky.janelle@yahoo.com', 'http://www.gerlach.com/error-ad-laboriosam-consequatur-qui-reprehenderit-delectus-distinctio', NULL, 1, '2024-11-11 00:05:05', '2024-11-11 00:05:05'),
(10, 2, 'Fugiat quisquam fugit fugit quam quaerat exercitationem nisi vel.', 'Cupiditate vel iure quo in. Laudantium quo voluptatem et ipsam nihil. Id at dolore dolorem et. Officiis maiores illo praesentium dolorem nemo. Accusamus ad qui et adipisci ad voluptatum assumenda. Non ab iusto voluptatem qui veniam fuga consequuntur consectetur. Aut a repudiandae in odit error aut. Rerum expedita beatae occaecati occaecati consequatur. Voluptatem debitis enim laborum excepturi facere nisi. Minus nisi dicta et explicabo tenetur provident laborum.', 'game', 'stiedemann.cristopher@mante.com', 'http://schaefer.com/est-aut-ipsa-alias-omnis-eius-quia-et', NULL, 0, '2024-11-11 00:05:05', '2024-11-12 06:49:15'),
(11, 3, 'Nesciunt nesciunt est voluptatem suscipit cumque sint temporibus et.', 'Qui perspiciatis exercitationem architecto et et voluptatem voluptates accusantium. Assumenda fugit blanditiis impedit est omnis non. Vero rerum mollitia et dolores. Qui assumenda magni modi. Quas pariatur cum vero aut. Blanditiis incidunt quidem sed qui ratione. Quaerat distinctio nam impedit ea nobis sunt rerum. Et vero quisquam esse cum voluptatem iste. Quam asperiores molestiae a reprehenderit non. Magnam quas facilis debitis cumque temporibus qui quibusdam. Dolorem eos alias quis aut sunt officiis aut. Esse non sit laudantium possimus. Soluta amet est dolores dolorem illum quo. Doloribus ipsum labore magni nisi. Voluptatem labore nobis qui libero omnis vero omnis.', 'biz,tech', 'nolan72@bode.com', 'http://www.hoppe.org/asperiores-pariatur-numquam-in-ratione-qui-voluptatem-beatae.html', NULL, 1, '2024-11-11 00:05:05', '2024-11-11 00:05:05'),
(12, 3, 'Vitae fugiat numquam sunt voluptatem amet ea quia est et tempore.', 'Exercitationem maxime earum sit expedita recusandae sed. Dolores eligendi et occaecati facilis aut facilis sit. Magnam sint consequatur ut at totam aut. Sit natus ut maiores sunt. Distinctio neque aut eligendi amet facilis consectetur. Quo doloribus aut repellat. Qui ipsum corrupti nesciunt saepe voluptas laudantium. Ad id quo repellendus ipsum possimus consectetur.', 'tech,game,biz', 'okeefe.adonis@monahan.com', 'https://ritchie.com/et-et-perferendis-sed-velit-error-veniam.html', NULL, 1, '2024-11-11 00:05:05', '2024-11-12 06:40:49'),
(13, 2, 'Eveniet ducimus esse dicta enim aut asperiores aut corrupti ad.', 'Ex est aut laborum ad omnis deleniti. Sint quam impedit numquam. Est itaque deserunt nisi consequatur alias delectus esse. Reprehenderit illo qui eaque maxime provident reiciendis voluptatem. Aspernatur dicta molestias repellendus optio. Explicabo dolor dolorem inventore veritatis id eos. Corrupti rerum quo amet cumque. Quod cum sit voluptates ut. Fugiat ratione similique atque molestiae tempora quas voluptatem dolores. Maiores magni perspiciatis in iste dolorem asperiores voluptatem. Corrupti perferendis suscipit veniam aut minus. Voluptas dolores et consequatur qui. Tenetur iusto aut ab quia atque dolor. Ratione nam id autem quis et deleniti. Beatae quasi ratione voluptas quibusdam ut.', 'game', 'kflatley@gmail.com', 'http://kuhlman.biz/voluptate-at-id-sequi-fugiat-blanditiis', NULL, 1, '2024-11-11 00:05:05', '2024-11-12 06:26:55'),
(14, 2, 'Repellat voluptatum ullam cumque omnis consectetur nam ut delectus culpa quam voluptas tenetur.', 'Illo dolorem ipsam cum recusandae iure earum ducimus. Corporis corporis quam ullam sed dolores. Eum aut occaecati architecto labore iure rerum. Omnis qui quo est velit dolores qui. Corporis inventore dolor aliquid quis id minus. Soluta ut sint quia id voluptas. Ut doloribus laborum iusto nemo ab molestias maxime ipsam. Error ratione dolorum quibusdam laborum eligendi. Error commodi esse necessitatibus explicabo rerum explicabo. Ipsa expedita sint debitis quas neque adipisci quos. Consectetur et quo consequatur et. Facere fugit illo vero et enim.', 'tech,game,biz', 'wdonnelly@yahoo.com', 'https://herzog.com/ullam-quo-quis-molestiae-soluta.html', NULL, 1, '2024-11-11 00:05:05', '2024-11-11 00:05:05'),
(15, 2, 'Quaerat sapiente distinctio consequatur eveniet cupiditate rerum quaerat et ipsa itaque sed unde alias.', 'Sed asperiores quia qui sunt. Rem saepe qui mollitia exercitationem exercitationem ducimus vel. Tempora aut necessitatibus dicta earum recusandae. Sunt et maiores voluptas est. Deleniti fuga ut vitae ea ullam. Exercitationem animi sed quo voluptatibus eveniet ut est reiciendis. Et aut quaerat soluta fugit assumenda. Sit voluptatem recusandae aut in officia. Rerum dolores harum sed exercitationem. Ipsam adipisci eligendi minima dolorem mollitia. Praesentium amet et officiis omnis quos a aspernatur.', 'biz,tech', 'alex.sanford@gmail.com', 'http://ankunding.com/delectus-officiis-eveniet-provident-assumenda-eos-facilis', NULL, 1, '2024-11-11 00:05:05', '2024-11-12 06:27:02'),
(16, 4, 'Quae similique molestiae dolores nesciunt et molestias error et non quia dolores repellat fuga.', 'Vel aut aut placeat qui illo quam vel. Quo assumenda aliquam unde voluptates atque. Incidunt quasi et dolore. Sit ut hic placeat fugiat nesciunt molestiae et. Odit ipsam quisquam soluta ea architecto. Id aut ad quos sint delectus commodi. Repellat aut maiores ipsa et repellendus et exercitationem. Pariatur vero rem vel sed et. Rerum molestiae alias eligendi a. In aut praesentium expedita neque dicta. Sint soluta exercitationem ab in quos soluta sed. Aliquam facilis debitis beatae architecto ut dolor et. Alias consequatur sed dolorem quod. Eveniet ut dolorum ut ad eveniet quia beatae. Sapiente laborum voluptatem perferendis necessitatibus.', 'dev,game', 'maud74@hotmail.com', 'http://kilback.biz/voluptas-culpa-non-ad-quisquam-dignissimos', NULL, 1, '2024-11-11 00:05:05', '2024-11-11 00:05:05'),
(17, 6, 'Voluptates maxime non dolore iste hic iste autem.', 'Porro omnis voluptatem et ut. Ipsam ducimus maxime hic provident vitae. Dignissimos optio illum fugiat porro labore soluta numquam pariatur. Saepe ut aspernatur minima debitis neque. Rerum et maiores eos ipsam. Omnis sint nulla voluptatem fugit assumenda. Molestias velit et assumenda sed earum explicabo cum. Voluptas ut ab dicta blanditiis quibusdam libero in. Soluta suscipit ut laborum dolores voluptatem nostrum. Tenetur eveniet ipsa dolor modi aut sed est sapiente.', 'biz,tech', 'verona06@yahoo.com', 'https://www.zieme.com/ut-molestias-perferendis-id-deleniti', NULL, 1, '2024-11-11 00:05:05', '2024-11-11 00:05:05'),
(18, 2, 'Mollitia nisi ea nihil maiores omnis rerum.', 'Eligendi eligendi aut error praesentium assumenda eaque. Necessitatibus ipsa esse ut aliquid corporis nihil aliquid. Hic error ea perferendis possimus laborum qui et illo. Quasi quia facilis ut autem dolorem. Voluptatibus corrupti deserunt iusto sint beatae. Aperiam et vero quo ipsum. Accusantium recusandae velit asperiores. Dolores non nostrum quia quia. Dolor odio est possimus enim. Voluptas saepe enim maiores. Eveniet dolor minus laudantium totam. Quia blanditiis itaque voluptatem eos dolores. Ducimus ipsum dicta molestiae asperiores dolor maiores ut. Assumenda a qui qui eveniet assumenda at vel. Omnis ipsa autem ratione qui similique dignissimos. Dolores corporis officiis quisquam ratione neque voluptatem. Illo est dolorum cum dolorem et nesciunt delectus.', 'tech,game,biz', 'delphine.crona@hotmail.com', 'https://www.ullrich.com/quos-labore-autem-est-non-et-architecto', NULL, 1, '2024-11-11 00:05:05', '2024-11-11 00:05:05'),
(19, 5, 'Quidem tempora et temporibus voluptate molestias fugit fugiat consectetur voluptatibus reprehenderit nemo architecto occaecati.', 'Tempore officiis error sed enim ex provident. Numquam et consequatur iusto praesentium dolorem sint dolorem. Sit quas corporis molestiae minima voluptatum qui. Repellat sint nulla dolor. Corrupti qui dicta maxime voluptatem. Sit quia vel cum ipsa dolore dicta dignissimos totam. Dolor molestias asperiores voluptatem et fugiat iure error. Commodi sequi sapiente dicta adipisci minima reprehenderit sit. Ut dolorem molestiae quisquam voluptatem non excepturi distinctio. Ut sint nihil ad cupiditate aut voluptas. Quo quidem cupiditate rerum ab. Corrupti occaecati minus modi ut et sed.', 'biz,tech', 'rjaskolski@denesik.com', 'http://fadel.com/', NULL, 1, '2024-11-11 00:05:05', '2024-11-11 00:05:05'),
(20, 1, 'Aliquam nihil eum vitae harum ut dolorum voluptatem vel quo.', 'Repudiandae eveniet maiores sint quibusdam qui est. Molestiae ut non reiciendis distinctio minus in officiis omnis. Sed aut dolorem occaecati sint neque atque accusantium. Et et quia voluptatibus repellat. Omnis debitis sint enim harum non ipsa laboriosam. Provident ad deserunt quas cupiditate quasi aut officiis praesentium. Perferendis accusantium consectetur id nobis est. Qui assumenda similique distinctio aut libero quis deserunt. Sit repellat dicta nihil. Id autem voluptates est voluptatem eos facere ex. Ut voluptas voluptas quia error voluptatem. Doloremque maxime quam est ut quisquam. Sit doloremque qui enim eaque.', 'game', 'sage10@gmail.com', 'http://bradtke.net/animi-cupiditate-voluptatum-dolores-veniam-corrupti-repudiandae-et-modi.html', NULL, 1, '2024-11-11 00:05:05', '2024-11-11 00:05:05'),
(21, 1, 'Est quia ipsa rem eveniet perferendis dolor dolore et.', 'Et ut tempore minus illo et. Alias debitis eum ea enim. Ipsum laborum totam suscipit quas error earum et sint. Sed recusandae maxime reiciendis dolorem unde adipisci. Tenetur ea ut et dolorem corrupti. Illo dolor enim cupiditate magnam et qui. Neque odit officia doloremque hic. Ut doloribus optio laudantium aspernatur. Sint id facere quibusdam molestiae. Est laboriosam necessitatibus qui. Sed libero quia optio nesciunt recusandae. Occaecati possimus accusantium sit harum. Aliquam recusandae dolore reprehenderit officia minus minus earum. Aut dolorum sed dolor iusto reiciendis. Quos illo consequatur dicta accusamus maiores sapiente tempore aut. Id quam expedita est laboriosam. Laborum magnam quis debitis voluptatem laudantium facere.', 'game', 'lewis.howell@gmail.com', 'https://marks.com/veniam-et-corrupti-nihil-quisquam-fugiat.html', NULL, 1, '2024-11-11 00:05:05', '2024-11-11 00:05:05'),
(22, 2, 'Nobis molestiae quis velit esse nostrum temporibus corrupti aut et.', 'Expedita et ex quia aut mollitia possimus. Alias ad ratione quae quis magnam ullam eos eum. Dolorem voluptas consectetur architecto sequi totam. Quos provident possimus hic rerum velit sint est. Voluptatem rerum ratione iure qui quas dolor. Provident facilis ad dolorem dignissimos. Maxime natus repudiandae itaque cum maxime aut provident. Accusantium illo et repudiandae numquam et enim hic et. Eius qui ab et minima numquam adipisci doloremque fuga. Vero est iste expedita odio id natus incidunt. Voluptatem molestiae omnis velit velit sapiente voluptatem. Ut fugit accusantium similique maiores temporibus sequi. Alias ab unde maiores qui. Quis quis doloremque nihil in non debitis tenetur ut. Non expedita facere delectus similique quae sint perspiciatis.', 'biz,tech', 'jaylen.wolff@gmail.com', 'http://lakin.net/esse-aut-corrupti-natus-sint-quia', NULL, 0, '2024-11-11 00:05:05', '2024-11-12 06:49:32'),
(23, 2, 'Sequi ad fugit cupiditate id omnis amet cupiditate.', 'Voluptates consequatur nulla vitae. Voluptates provident explicabo totam delectus cum quos. Odio ea facilis ipsum numquam dolore. Sint quibusdam facilis possimus quaerat itaque ipsam est. Explicabo commodi et reiciendis soluta. Voluptas aperiam qui nostrum odit harum. Veritatis autem alias mollitia nulla ea accusantium quibusdam. Nam est expedita quas consequatur dicta et alias. Sed et harum aliquid. Ratione atque et et officia. Possimus rerum eveniet sequi quidem non omnis magnam repellendus. Tenetur eos exercitationem ut. Dolore sed commodi accusamus non sed placeat dolor. Dolorem quo doloremque enim esse perferendis fugit qui sunt. Dolor in enim quisquam. Eveniet tenetur dolor deserunt minus beatae et voluptatem.', 'game', 'mmertz@treutel.com', 'http://www.lind.com/numquam-laborum-illo-ad-aut-deserunt-blanditiis-molestiae', NULL, 1, '2024-11-11 00:05:05', '2024-11-11 00:05:05'),
(24, 5, 'Blanditiis deleniti quidem aut quod libero tempore quia qui dolor illum.', 'Rerum eveniet mollitia sit enim. Qui veniam facere modi ducimus. Quas qui libero corrupti voluptate eos soluta. Et aut ut pariatur eum iure. Quo dolores et repellat laboriosam eum omnis velit. Corporis illo qui et et amet similique. Animi officia molestiae saepe dignissimos ipsa vero deserunt. Aut omnis ipsum voluptatem quia magnam. Ipsa corrupti voluptas voluptatem impedit qui qui ut. Fugiat a quidem minus sed dolore non. Quia vel sunt cumque inventore. Facere natus ea cumque rerum magni qui molestiae. Voluptas deleniti omnis amet nam consequatur eum voluptate.', 'biz,tech', 'pbartell@rowe.biz', 'http://kunde.com/iure-itaque-eos-eum-nihil-qui-iste-qui', NULL, 1, '2024-11-11 00:05:05', '2024-11-11 00:05:05'),
(25, 1, 'Enim ut non et accusamus earum porro unde.', 'Eum est expedita rerum est ab porro. Suscipit dolore delectus quis velit est. Est corrupti nemo ut non at velit dolor. Similique id optio saepe in perspiciatis pariatur. Minima non est optio nemo eos autem distinctio. Quisquam quos aut eum ut cumque. Maiores dolores sed quo. Placeat necessitatibus doloribus totam dolorum odit voluptates maxime. Voluptatem fuga dolore sapiente voluptate. Sit vitae et dolorum. Officiis consequatur et delectus corporis laboriosam assumenda. Culpa doloremque commodi aut corrupti dolorem voluptatem. Voluptatem quas et saepe qui dolorem nihil. Ut sit officia animi architecto ea consequatur modi. Adipisci ipsum qui error soluta expedita voluptatem dolores. Tenetur nesciunt ut et qui incidunt.', 'game', 'quentin.heidenreich@gmail.com', 'http://www.sanford.com/ipsa-placeat-omnis-laboriosam-voluptas-officiis.html', NULL, 1, '2024-11-11 00:05:05', '2024-11-11 00:05:05'),
(26, 6, 'Quidem corporis asperiores quam ducimus quam nulla molestiae non qui quasi temporibus id consequuntur.', 'Cumque corrupti officiis eum impedit sed saepe. Repellendus voluptatem corporis suscipit aut saepe dolores voluptate delectus. Nemo nihil quos nobis fugiat temporibus. Laudantium est occaecati fuga voluptates corrupti. Repellendus nesciunt veritatis quaerat officia et et reprehenderit. Et fugit porro cum molestiae qui. Tempore quia sunt ut sequi repudiandae iure inventore ut. Ducimus quo et nihil ea quasi. Voluptas repellat sapiente id aut expedita placeat rem aut. Voluptates aut reprehenderit quia.', 'dev,game', 'monserrat43@gmail.com', 'http://www.heaney.info/porro-incidunt-ipsa-dicta', NULL, 1, '2024-11-11 00:05:05', '2024-11-11 00:05:05'),
(27, 4, 'Voluptatem aliquam nulla velit sed nobis autem eveniet corrupti.', 'Nesciunt soluta est et non dicta. Praesentium ab dolorum vel veritatis. Velit consequatur eveniet voluptate atque nisi aspernatur est labore. Magni adipisci a iusto atque. Voluptate quasi sed in. Id amet minus dolor esse. Cupiditate numquam autem dolor et inventore quasi. Animi dolorem aut rerum. Rerum minima aut cumque modi cupiditate veniam ut.', 'dev,game', 'rdenesik@mcdermott.com', 'https://www.stoltenberg.com/debitis-totam-voluptas-voluptatum-qui', NULL, 1, '2024-11-11 00:05:05', '2024-11-11 00:05:05'),
(28, 4, 'Aut soluta sed molestiae corrupti minima ullam iusto molestiae magnam amet quasi nisi voluptatum.', 'Eveniet aperiam natus omnis recusandae quo aliquid. Fuga amet et dolorem numquam dolores et. Ut ad expedita a maiores nostrum sed dolorem. Voluptatem aperiam autem ullam et et quia. Pariatur expedita est sunt velit expedita molestiae. Nam dolor quis animi. Veritatis et animi aut qui. Voluptatem qui qui odio. Vero doloremque autem aut est. Nulla quae quas quae repellat veniam cumque. Beatae voluptatem voluptatem repudiandae optio ea. Et sunt eligendi consectetur harum impedit recusandae et. Pariatur facilis fuga voluptatem quibusdam consequatur facere.', 'game', 'arno.pfeffer@hotmail.com', 'http://www.ondricka.biz/eos-quia-illo-consectetur-ratione-quo-quos-quibusdam.html', NULL, 1, '2024-11-11 00:05:05', '2024-11-11 00:05:05'),
(29, 6, 'Rem quasi sapiente dolores corporis aut consequatur consequatur.', 'Voluptas accusantium consectetur porro nam. Atque explicabo quo voluptas. Quia velit eum quibusdam et deserunt consequatur facere. Non enim consequatur itaque quia. Hic fugiat iusto veritatis voluptas vel nostrum sint. Laboriosam omnis dicta velit reprehenderit. Quisquam et ut expedita at facere facere. Ab et aut nesciunt dolorem est modi ea non. Ab dolorem a dolorem ipsam.', 'game', 'estell91@yahoo.com', 'http://heidenreich.com/et-porro-qui-est-voluptatem-tempore', NULL, 1, '2024-11-11 00:05:05', '2024-11-11 00:05:05'),
(30, 3, 'Fugit ut ea ducimus dolor ea nam et aperiam voluptates.', 'Eum mollitia officia qui fugit enim ducimus. Eum aliquid totam quo cumque quaerat. Inventore quasi et est id error numquam. Quis itaque molestiae perferendis. Nesciunt iusto est in animi. Ut aspernatur illo in consequatur vel omnis amet eos. Doloribus et at voluptas tempore est rerum. Recusandae distinctio consequatur nam et ratione hic. Incidunt aut consequatur voluptas dolores exercitationem molestiae voluptatum earum. Est id architecto facilis nihil perspiciatis. Inventore corporis a error reprehenderit voluptate. Vel totam pariatur facere quo pariatur. Deleniti illum temporibus sed consectetur. Sed similique illum ducimus labore dolore doloremque aut. Quam laudantium aut quia repellendus voluptatem. Qui magnam provident quod quo est aut praesentium.', 'game', 'alyson26@nitzsche.com', 'http://frami.org/', NULL, 1, '2024-11-11 00:05:05', '2024-11-11 00:05:05'),
(31, 4, 'Aliquid libero et porro occaecati vero quia in.', 'Provident id illo eius accusamus doloremque magnam. Vel quo eaque alias illum cumque culpa. Odit magni consectetur enim ut possimus. At qui voluptatibus ducimus non. Et est delectus beatae occaecati molestias nisi blanditiis. Fugit quod harum quod in exercitationem. Cumque ipsam sunt et quod dicta. Amet dolores nihil culpa quas doloremque molestiae. Ut a omnis est qui totam voluptatem. Temporibus dolor quam laudantium cumque recusandae quam qui. Ut culpa quas autem nostrum velit. Magnam voluptas et eius aut quasi debitis. Cum accusamus at et perspiciatis modi. Voluptates reiciendis et et necessitatibus. Aut nam distinctio maiores et sit.', 'dev,game', 'karianne90@gmail.com', 'https://thiel.org/eos-vel-facere-ut-odit-et-vel.html', NULL, 1, '2024-11-11 00:05:05', '2024-11-11 00:05:05'),
(32, 2, 'At est enim modi provident delectus velit.', 'Expedita voluptatem sequi perspiciatis ut repudiandae voluptatum explicabo. Ullam commodi delectus omnis magnam cupiditate non quia nobis. Laudantium qui quo et rerum ut expedita maxime nemo. Corporis dicta corporis dicta. Pariatur voluptatum explicabo error aut aliquid molestiae impedit animi. Libero ex mollitia dolores. Illo et et et voluptatem. Modi rem minus esse mollitia architecto. Et deserunt sit tenetur ducimus minima sequi. Neque repellat quia qui autem blanditiis quod minus. Minima saepe iure eaque atque. Omnis a quaerat laborum aut itaque. Aut iusto sunt et tempora qui iste sit.', 'tech,game,biz', 'ksauer@sporer.com', 'http://hayes.org/magnam-maxime-optio-totam-quasi.html', NULL, 1, '2024-11-11 00:05:05', '2024-11-11 00:05:05'),
(33, 5, 'Aut incidunt optio quas modi enim quidem iusto.', 'Alias eaque quis eligendi sed cumque ipsam. Omnis perferendis sequi laboriosam est illo. Quaerat fuga nam aut illo unde. Repudiandae sed similique exercitationem eaque. Unde molestiae expedita est est accusamus. Sint amet dolor incidunt velit rem veniam natus. Quo reprehenderit nesciunt odio in cumque. Reprehenderit ab tempore non voluptas quo repellat pariatur. Atque aut molestiae iusto numquam. Doloribus ipsum corrupti autem nihil vero. Repudiandae quia consequuntur consequatur vero. Et nostrum occaecati repellat voluptas sapiente sint tempora iusto. Dignissimos maiores et architecto earum quidem tempora. Expedita doloremque inventore voluptatem est laborum qui amet quae. Qui quia unde unde nemo veritatis. Nihil facilis commodi quisquam sit. Quis ipsum iure laborum excepturi commodi velit impedit aut.', 'tech,game,biz', 'nnicolas@hotmail.com', 'http://www.ohara.com/', NULL, 1, '2024-11-11 00:05:05', '2024-11-11 00:05:05'),
(34, 4, 'Qui cupiditate ex autem corporis omnis doloribus sed magnam suscipit deleniti aut sint.', 'Ut accusamus reiciendis ab eligendi. Illum consequuntur quia qui facilis sequi iusto dolores. Exercitationem libero animi sunt aperiam eius. Perspiciatis at non cum quibusdam voluptatem eligendi est. Laudantium error laboriosam voluptatibus quas minus quia. Et eaque dolores fuga placeat. Aut voluptates blanditiis unde sit atque expedita. Officiis qui et iure qui aut. Ad maxime quo saepe repellendus optio veritatis placeat in. Consequatur optio cum quis sint. Distinctio rerum molestiae autem voluptatem voluptate.', 'tech,game,biz', 'bjenkins@wunsch.info', 'http://www.mohr.com/', NULL, 1, '2024-11-11 00:05:05', '2024-11-11 00:05:05'),
(35, 2, 'Ea velit pariatur numquam officiis enim aut sed necessitatibus aperiam molestias molestiae.', 'Accusamus mollitia rerum ut. Beatae expedita odio tenetur velit occaecati earum natus. Reiciendis odio nulla ex earum nam non. Similique commodi natus reiciendis quis. Occaecati omnis quod dolorem placeat consequatur non facilis. In repellat dolor dolore aut. Ex nemo sunt vel et aliquam. Quod alias doloremque dolores voluptates. Molestias et molestiae accusantium quam id harum. Eos dolorum recusandae molestiae eveniet rerum. Reiciendis enim culpa in. Autem molestias tempore distinctio.', 'biz,tech', 'oernser@gleichner.com', 'http://wolf.org/aut-eligendi-consequatur-ut-nulla', NULL, 1, '2024-11-11 00:05:05', '2024-11-11 00:05:05'),
(36, 6, 'Qui at molestiae quo quo sed quis quis temporibus magni qui.', 'Sed sit rerum vel illo animi. Vel dolorum ad velit. Amet non atque dolorem aliquid quaerat eos sed. Facilis sapiente voluptates corrupti repudiandae saepe. Modi laudantium et dicta delectus et. Dolorem repellendus laudantium ipsum illum. Et est similique ex amet laboriosam quae ut. Quisquam occaecati modi voluptate et aut impedit. Expedita voluptatum commodi quisquam labore facere non nihil molestiae. Facere rem ut voluptas pariatur non ipsum numquam. Reprehenderit voluptas omnis cupiditate aut ad quis dicta odio. Deserunt sint voluptates velit quibusdam. Libero neque est dolore voluptatem blanditiis sapiente repudiandae expedita. Quidem et sed sint sunt quis ut. Sunt vitae ut laudantium sed dolorum labore quisquam. Ab ea veritatis amet repellat provident et. Neque cum iste recusandae odio voluptatem velit autem.', 'tech,game,biz', 'mraz.jasen@nienow.org', 'https://fahey.org/perspiciatis-earum-eligendi-eos-voluptatem-enim.html', NULL, 1, '2024-11-11 00:05:05', '2024-11-11 00:05:05'),
(37, 5, 'Qui unde sint voluptatem enim aliquid voluptas pariatur.', 'Quidem ea sit laborum non aliquid illo. Omnis debitis aut deleniti sit qui ut. Unde voluptas unde alias doloremque numquam id. Veritatis sapiente ab molestiae maxime. Adipisci labore et sequi asperiores consequatur et et. Expedita libero quae hic qui suscipit. Eos nobis blanditiis molestias aut dolores non qui. Repellat assumenda corrupti eos id provident perspiciatis. Labore velit ut eos dolores explicabo excepturi. Aut impedit esse quod libero. Sunt cum dicta ex ducimus laborum laboriosam dignissimos. Ratione dolores quia dolores ut libero quod enim.', 'biz,tech', 'bmedhurst@gmail.com', 'http://mcglynn.net/', NULL, 1, '2024-11-11 00:05:05', '2024-11-11 00:05:05'),
(38, 5, 'Ab et est libero sint et quod nam nihil aut beatae illo harum in.', 'Ipsa esse ex voluptatem qui sequi. Voluptate quis adipisci consequatur vel. Quas eius cupiditate aut ipsum. Sit similique et et. Vel ipsam distinctio officia reprehenderit nesciunt ut deserunt. Facilis maiores voluptas soluta qui dolores aut omnis. Veritatis aut dolores totam dolorum animi nulla non. Consectetur consequatur amet veritatis ut.', 'game', 'dubuque.buck@von.com', 'http://wisoky.info/assumenda-est-quidem-perspiciatis-animi-minus-consequatur-aliquid.html', NULL, 1, '2024-11-11 00:05:05', '2024-11-11 00:05:05'),
(39, 1, 'Nihil fugit minus possimus numquam delectus nulla et officiis corrupti.', 'Quo autem ut fuga neque facilis sed. Omnis quia quaerat tenetur quis laudantium doloremque. Officia doloribus ipsum modi voluptas et accusantium nostrum recusandae. Et consequatur modi modi ut rerum. Maxime beatae porro ea nam neque beatae aut. Delectus necessitatibus soluta rerum aut culpa. Ea quas ut eveniet dolorem dolorum eligendi. Veritatis velit necessitatibus repellat quasi saepe ut cupiditate. Dolore expedita sed nihil corrupti quaerat animi et deleniti. Tempore autem cum aperiam nihil delectus. Dolores velit quia ut tenetur ratione corrupti sint illum. Vel veniam voluptatibus aut quia doloribus laborum. Quis voluptas et facere aut nisi. Consequatur saepe repellat laborum sed. Sunt et hic incidunt et non sed repudiandae. Quae fugiat earum totam ab dolore doloremque.', 'dev,game', 'vbreitenberg@yahoo.com', 'http://flatley.com/nihil-et-aliquam-blanditiis-esse-maiores-rerum-impedit-molestiae', NULL, 1, '2024-11-11 00:05:05', '2024-11-11 00:05:05'),
(40, 1, 'At qui inventore quo natus qui illum nesciunt.', 'Rem ab necessitatibus consequatur porro. Nemo harum necessitatibus non neque suscipit. Repellat soluta sapiente aut perspiciatis. Et saepe quis rerum consequatur sint non quo. Iure similique eos voluptate sint pariatur. Odit ea esse distinctio at. Nobis nobis quis et repellat sint. Amet consectetur totam eos et. Saepe distinctio itaque dignissimos ipsum perferendis dolorem hic. Culpa ratione est animi error. Dolorem voluptates dolorem ea amet aut. Non ducimus voluptatum rerum.', 'biz,tech', 'xnikolaus@yahoo.com', 'http://gleason.com/est-numquam-nobis-asperiores-nesciunt-et-vero-sed', NULL, 1, '2024-11-11 00:05:05', '2024-11-11 00:05:05'),
(41, 1, 'Et dolorum optio numquam omnis nam dolorem.', 'Odio commodi necessitatibus fuga hic sed dolorem. Consectetur nobis officiis dicta laudantium ut quidem et. Repudiandae laudantium eos consequatur aliquam facere quasi et. Accusamus consectetur maxime veritatis quibusdam a qui. Nobis natus modi sunt accusamus sit. Delectus et adipisci qui sit. Odit aliquam quas provident aut ut quam iure. Eos omnis sunt aut maiores fugiat eos consequatur tenetur. Tempora consequatur aut quisquam nihil ab dolorem suscipit. Deleniti aut et iusto sit consequatur. Accusamus aliquid dolores provident non nobis tempora. Deserunt ut aliquid eos aspernatur est ut officiis. Consectetur iusto laboriosam non ipsum laborum ut. Adipisci repellat veniam nulla voluptate doloribus. Ullam repudiandae dignissimos magni debitis autem officia. Laboriosam unde et in corrupti a est ut. Quia fugit illo facere non.', 'dev,game', 'gerlach.eula@lowe.com', 'http://www.dooley.net/', NULL, 1, '2024-11-11 00:05:05', '2024-11-11 00:05:05'),
(42, 5, 'At necessitatibus ut consequuntur et expedita illum error cum sint consectetur unde sit.', 'Animi atque ut quis dolorem. Quaerat sed ratione et voluptatem. Corporis consequatur omnis molestias ipsa quis odio eos. Quia ipsum atque aut at. Necessitatibus nihil id qui non vel molestiae. Optio dolores facere alias repellendus. Optio possimus voluptatem quia qui distinctio. Dolorem est officiis voluptatibus eum quo veritatis aperiam. Officia amet distinctio est deserunt sit est adipisci. Voluptas nostrum in voluptas harum voluptatem accusamus qui. Rerum nam inventore voluptas voluptas quia. Sunt officia qui totam corporis. Sapiente fugiat soluta eum et. Voluptatibus et quibusdam dicta minus est. Earum alias laudantium et est. Iure voluptates dolor ratione aut sequi molestiae illum ipsum. Fuga eligendi qui odio rem rerum cumque.', 'dev,game', 'doyle.soledad@gmail.com', 'http://www.franecki.info/', NULL, 1, '2024-11-11 00:05:05', '2024-11-11 00:05:05'),
(43, 3, 'Minus quae distinctio et quibusdam qui ipsam iusto quo consequuntur.', 'Aspernatur blanditiis deserunt et molestias et eum. Eos accusamus ut distinctio. Tempora eos nihil nam quaerat labore. Veritatis iste hic illo dolorem nesciunt. Temporibus error quae at aut laborum voluptate praesentium. Laborum qui laborum non et ad incidunt. Deleniti ab sapiente et dolores. Voluptatem itaque mollitia et occaecati ut sunt voluptates. Beatae rerum qui hic sed possimus quis perspiciatis. Soluta ut sed rerum alias tenetur tempore. Qui eos est ea non tenetur. Excepturi recusandae impedit et eos aut. Distinctio fugit nihil nostrum eum nulla. Voluptas sapiente debitis dolor unde ut. Et unde dicta est voluptatem est.', 'game', 'carol.cassin@gmail.com', 'http://www.stehr.org/eius-consequatur-earum-accusantium-modi-quis-nobis-dolor', NULL, 1, '2024-11-11 00:05:05', '2024-11-11 00:05:05'),
(44, 5, 'Eum dolorem et vero est dolores et voluptatem.', 'Molestias animi ut minus nulla quasi dolorum. Qui dicta ut voluptas alias non quasi. Quas possimus totam sunt recusandae dolorum corrupti provident. Laudantium soluta impedit et aut nisi eum. Est ut animi numquam repellat quaerat hic earum voluptatem. Non consequatur amet nihil sequi numquam optio porro. Repudiandae ipsam nesciunt quis molestias consequuntur et porro. Dolore nobis odio et aliquid dolorem at laudantium assumenda. In quia enim dolores quia qui omnis. Natus quas itaque totam sit aperiam dignissimos.', 'dev,game', 'gulgowski.danial@hotmail.com', 'http://white.net/et-exercitationem-inventore-explicabo', NULL, 1, '2024-11-11 00:05:05', '2024-11-11 00:05:05'),
(45, 4, 'Laudantium laboriosam et amet perspiciatis et sint rem ullam voluptatum doloremque neque qui.', 'Voluptates voluptas facilis est vero est. Iusto repellat ut veritatis distinctio quam ut beatae. Tenetur sit non tempora laboriosam sit quis et aut. Ad sed commodi et omnis magni. Cumque animi quisquam similique unde optio ipsa. Quos reprehenderit est qui debitis vero dolor molestiae. Aut tempora dolorem minus molestiae. Ut quasi in quas omnis nostrum dicta a. Ducimus perferendis est amet alias. Distinctio quaerat ut vel. Minima ad reiciendis omnis est enim sit ut.', 'game', 'wdibbert@hotmail.com', 'http://hackett.biz/nulla-est-nihil-explicabo-unde-magnam-distinctio-repellat', NULL, 1, '2024-11-11 00:05:05', '2024-11-11 00:05:05'),
(46, 4, 'Culpa ipsam corporis et enim sapiente consequuntur sit totam dolorem asperiores et qui.', 'Possimus ducimus modi mollitia qui debitis. Quo illo et corporis. Asperiores consequatur est beatae. Unde assumenda consectetur aut quia. Sunt harum enim ipsa quia hic. Fuga sed culpa et non. Voluptates dicta et voluptate occaecati ut. Vitae reprehenderit perferendis est laudantium eius eius saepe. Ea repudiandae ab eligendi odit autem. Ut sed nihil reiciendis temporibus provident consequuntur quidem. Id eveniet nobis libero voluptatibus eaque nihil. Et mollitia accusamus nihil fuga. Nihil harum rem consequuntur perspiciatis dolorem at facilis. Autem quis a esse dicta rerum. Autem deserunt nisi perferendis dicta et minima est. Dolores inventore laudantium magni ipsa rerum rerum qui quia.', 'tech,game,biz', 'idickens@hotmail.com', 'http://www.beier.com/libero-minima-eos-sunt-aut', NULL, 1, '2024-11-11 00:05:05', '2024-11-11 00:05:05'),
(47, 2, 'Sequi sapiente et voluptatum velit omnis quia.', 'Non adipisci eligendi saepe doloribus vel dolore autem. Voluptate consectetur est nam et rerum ut. Ab quidem eum et qui voluptas. Necessitatibus esse velit impedit consequatur. Aliquam dolorum aut repellendus non dolor. Ut ullam optio dolorem nesciunt. Ducimus natus sit aut possimus repellendus aut. Veniam tempora numquam veniam sequi sequi aperiam ab. Sunt eveniet est eaque consequuntur fuga perferendis repellendus. Temporibus sed officia autem suscipit. Sed quas voluptatem fugit mollitia illo quo. Numquam pariatur vel voluptatem nisi ut eum consequatur. Ut corporis itaque quia et est. Commodi non totam odio inventore deleniti. Ad iste fuga molestiae velit atque ut est. Est quo eum hic tenetur qui tempore magnam. Et animi ipsum sequi reiciendis omnis earum officia.', 'tech,game,biz', 'ratke.kathlyn@hotmail.com', 'http://bogisich.biz/voluptas-voluptas-quis-asperiores-quis-illum-asperiores-dolorem', NULL, 1, '2024-11-11 00:05:05', '2024-11-11 00:05:05'),
(48, 6, 'Ad facere ipsam ea vel iste minus porro tenetur minus dolorem quibusdam sunt quidem.', 'Minima voluptatem enim non asperiores similique. Illo alias doloribus temporibus sed qui sed. Earum eum corporis ipsum reprehenderit. Unde beatae et nam voluptatum. Deleniti animi aut aut quisquam in laborum rerum officia. Voluptatem earum sunt assumenda deleniti deleniti voluptatum. Mollitia enim dolores quos officiis. Corrupti delectus consequatur rerum voluptatem sed. Sit repellendus laboriosam ut molestiae. Ratione beatae ex qui magni. Veniam distinctio dolor laborum. Eum temporibus eos dolore velit et nihil aut. Voluptatem nostrum expedita asperiores dolorum ut. Ipsam laudantium mollitia voluptas quas ut animi quo.', 'dev,game', 'alice.feeney@fadel.com', 'http://runolfsdottir.com/quis-error-cumque-iusto', NULL, 1, '2024-11-11 00:05:05', '2024-11-11 00:05:05'),
(49, 2, 'Veniam rerum hic aut laboriosam necessitatibus sint.', 'Itaque sed et minima sint ea adipisci dolor. Provident sapiente molestiae qui in quaerat neque ea facere. Amet at sed possimus voluptatem omnis ullam. Non eligendi accusantium rerum. Incidunt harum doloremque maxime odit velit reprehenderit. Illum eos ut ratione culpa aliquid molestiae velit. Et voluptas sed praesentium aut. Nihil porro necessitatibus dolore quae debitis dolor inventore et. Doloribus esse repellat sed commodi. Assumenda sunt tempora repudiandae dignissimos.', 'biz,tech', 'elenor.marvin@hotmail.com', 'http://www.wiegand.com/', NULL, 1, '2024-11-11 00:05:05', '2024-11-11 00:05:05'),
(50, 5, 'Id libero ipsum aut quis vel sunt.', 'Et dolore suscipit omnis optio. Blanditiis voluptas voluptatem aut necessitatibus beatae et. Pariatur praesentium repellat omnis voluptas recusandae commodi vel deserunt. Et quo non voluptates est libero non non. Vel aut adipisci molestias. Ducimus ab suscipit aliquid mollitia. Sequi fugit molestiae in deserunt est amet nulla. Voluptate occaecati harum vitae. Voluptatem enim occaecati eum laborum nihil libero. Dolorem delectus labore praesentium est. Quidem non qui ut aliquam. Iusto inventore sed sunt aspernatur.', 'biz,tech', 'abernathy.heaven@casper.com', 'http://daniel.biz/', NULL, 1, '2024-11-11 00:05:05', '2024-11-11 00:05:05');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_11_03_091945_add_avatar_to_users', 1),
(5, '2024_11_07_091953_create_listings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('koBAtYX5NrJIP1kclXocpSpbq1c4CfYio0rakNx1', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiak5sYUxYemtTNm9lWG1uUnhOaDRGdUcyaU91OXoybHFrQ0FEZkFGcyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1731417756),
('SGgbvYavIoW5U4163cQlKRuRGNInFjrA7gtKz3C1', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYm5kUXk1Zk1jNTdBbnVTcnR6anBaTUpvR2hSTzI2SEtWanZxYTk1NCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1731327973);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'general',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`, `avatar`) VALUES
(1, 'Admin', 'admin@example.net', '2024-11-11 00:05:04', '$2y$12$UHKhdEOlasvM33RN1vqmseAzrVd83XpgaK5Tf/47AID0Nmvefyrje', 'admin', 'kGlm3fmsN15Syf0WqWiInsDhdLdfVWFvN8hRfLLj62EGlKcew23EfPe0rjgD', '2024-11-11 00:05:05', '2024-11-11 00:05:05', NULL),
(2, 'Ola Rogahn', 'brakus.audie@example.net', '2024-11-11 00:05:05', '$2y$12$UHKhdEOlasvM33RN1vqmseAzrVd83XpgaK5Tf/47AID0Nmvefyrje', 'general', 'iVTqY1slTj', '2024-11-11 00:05:05', '2024-11-11 23:28:01', NULL),
(3, 'Maureen Feil', 'arjun15@example.org', '2024-11-11 00:05:05', '$2y$12$UHKhdEOlasvM33RN1vqmseAzrVd83XpgaK5Tf/47AID0Nmvefyrje', 'general', 'MtTP4X4wvz', '2024-11-11 00:05:05', '2024-11-12 06:13:53', NULL),
(4, 'Prof. Garrick Corwin Sr.', 'cmueller@example.org', '2024-11-11 00:05:05', '$2y$12$UHKhdEOlasvM33RN1vqmseAzrVd83XpgaK5Tf/47AID0Nmvefyrje', 'general', 'siscx4yfDR', '2024-11-11 00:05:05', '2024-11-11 00:05:05', NULL),
(5, 'Brendon Feil', 'faye28@example.org', '2024-11-11 00:05:05', '$2y$12$UHKhdEOlasvM33RN1vqmseAzrVd83XpgaK5Tf/47AID0Nmvefyrje', 'general', 'uq3pOx4ZeY', '2024-11-11 00:05:05', '2024-11-11 00:05:05', NULL),
(6, 'Mr. Valentin Donnelly Sr.', 'boyle.terrance@example.org', '2024-11-11 00:05:05', '$2y$12$UHKhdEOlasvM33RN1vqmseAzrVd83XpgaK5Tf/47AID0Nmvefyrje', 'general', '3G7ax9XFnx', '2024-11-11 00:05:05', '2024-11-12 06:26:32', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listings`
--
ALTER TABLE `listings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listings_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `listings`
--
ALTER TABLE `listings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `listings`
--
ALTER TABLE `listings`
  ADD CONSTRAINT `listings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
