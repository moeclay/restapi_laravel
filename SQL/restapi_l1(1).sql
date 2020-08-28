-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2020 at 11:06 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restapi_l1`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(2, 'Learn AnguarJS', 'Zero is Hero, AngularJS is Awesome', '2020-07-28 21:35:22', '2020-07-28 21:57:47'),
(3, 'Rerum non laborum dolore cupiditate.', 'Et dolor veniam suscipit molestiae sint quae vero. Sint consequatur ratione qui aspernatur.', '2020-07-28 21:35:22', '2020-07-28 21:35:22'),
(5, 'Eligendi sit commodi inventore quo dolorem.', 'Sit nam natus rerum. Dolorum dolor ut iure eum maiores. Deleniti totam modi quod id maxime et.', '2020-07-28 21:35:22', '2020-07-28 21:35:22'),
(6, 'Quos eos natus quaerat at qui.', 'Nihil aut laboriosam a aut aut. Ea reiciendis beatae id qui explicabo ea nesciunt. Asperiores ullam iusto enim. Unde similique quisquam velit illum quibusdam eius.', '2020-07-28 21:35:22', '2020-07-28 21:35:22'),
(7, 'Repellendus consequatur eum dicta et accusantium aut est doloribus.', 'Inventore ipsa natus et doloremque suscipit eius. Pariatur totam perspiciatis sunt tempore quos est. Ut velit harum ut veritatis tempore quia.', '2020-07-28 21:35:22', '2020-07-28 21:35:22'),
(8, 'Veritatis incidunt rerum fugiat recusandae necessitatibus beatae explicabo.', 'Voluptas saepe quibusdam consequatur ipsum. Et sapiente placeat dolores autem voluptate. Quis non placeat doloremque officia aut consequatur.', '2020-07-28 21:35:22', '2020-07-28 21:35:22'),
(9, 'Incidunt molestiae sit quas voluptatum consequatur quis enim.', 'Porro quae dolorem alias quos sed velit impedit. Explicabo aut officiis inventore eius incidunt quam adipisci. Et quo ut reprehenderit praesentium facere.', '2020-07-28 21:35:22', '2020-07-28 21:35:22'),
(10, 'Dolor dolor et velit aut voluptatem.', 'Sit sit animi magni et sit dolores velit. Veniam accusamus omnis reiciendis. At labore architecto iusto et facere. Officiis et consectetur dolores non ut voluptas. Numquam neque et expedita voluptatem.', '2020-07-28 21:35:22', '2020-07-28 21:35:22'),
(11, 'Vel libero ab commodi officiis recusandae sit.', 'Sit natus sapiente expedita qui. Architecto tenetur est ducimus accusamus deleniti explicabo. Voluptatem doloribus id maiores illum nobis nostrum.', '2020-07-28 21:35:22', '2020-07-28 21:35:22'),
(12, 'Molestias aliquid eos et eveniet ipsam sit ut.', 'Enim architecto est qui velit rerum unde atque. Aut quibusdam consequuntur consectetur perspiciatis reiciendis. Veritatis ducimus sed voluptatem et.', '2020-07-28 21:35:22', '2020-07-28 21:35:22'),
(13, 'In occaecati voluptas rerum aut ut possimus vel officia.', 'Ut aut quia et expedita molestiae et ad. Architecto quia laudantium iste dolore. Dolor sit vel debitis voluptate repudiandae. Mollitia eum molestiae ut eius.', '2020-07-28 21:35:22', '2020-07-28 21:35:22'),
(14, 'Sequi omnis molestias molestiae officiis quas aut.', 'Quibusdam impedit sit maxime distinctio distinctio quia. Est ut unde rerum fuga. Nihil sunt blanditiis esse excepturi fugiat officia.', '2020-07-28 21:35:22', '2020-07-28 21:35:22'),
(15, 'Inventore et autem vitae est provident hic.', 'Repellendus quo eius deserunt voluptas. Voluptas dolore et modi fugiat et dolore est. Aut quaerat repellendus maxime quis. Omnis sed molestias ab. Sed illo occaecati cum saepe et perspiciatis non.', '2020-07-28 21:35:22', '2020-07-28 21:35:22'),
(16, 'Qui consectetur assumenda impedit dolorem qui aut.', 'Occaecati et dolor aperiam doloremque quidem et. Facilis et magnam qui consectetur dolorum ad natus. Sunt ut eos qui dolorum velit recusandae rerum. Iste alias et voluptas est unde.', '2020-07-28 21:35:22', '2020-07-28 21:35:22'),
(17, 'Inventore porro officiis omnis eaque aut provident eos blanditiis.', 'Ipsum saepe molestiae et aut voluptatem. Voluptatibus voluptas repellat possimus iste et quod aut. Qui possimus corrupti officiis nobis dolor id doloribus esse.', '2020-07-28 21:35:22', '2020-07-28 21:35:22'),
(18, 'Illo quasi doloremque exercitationem dicta doloribus et maiores.', 'Et non nihil magni et consequatur nihil. Qui voluptate itaque quod ducimus laudantium. In nulla rem non omnis reprehenderit veritatis ratione quisquam.', '2020-07-28 21:35:22', '2020-07-28 21:35:22'),
(19, 'Esse adipisci ipsum neque voluptas voluptatem illo rerum.', 'Rem dicta consequatur accusantium repellendus quis ut voluptatem. Odio quo nam sit perferendis ea quia. Molestias provident omnis sint eos velit ea nisi. Aliquid ipsam optio et iste. A aliquid itaque dolores assumenda dolor dolor nemo.', '2020-07-28 21:35:22', '2020-07-28 21:35:22'),
(20, 'Incidunt tenetur qui et accusamus quia cupiditate.', 'Est et et maxime. A porro et omnis id non mollitia rerum quisquam. Nihil accusantium velit et dolor quidem. Magnam aperiam fugiat eum quas.', '2020-07-28 21:35:22', '2020-07-28 21:35:22'),
(21, 'Cumque dolores ipsum ea aliquid.', 'Sed sunt porro perferendis aut. In iste quis laboriosam et tempore. Et vel placeat sit voluptatibus omnis ipsa illo.', '2020-07-28 21:35:22', '2020-07-28 21:35:22'),
(22, 'Eum saepe sed labore ex deserunt.', 'Atque omnis perferendis fugiat iste. Nesciunt expedita et ut architecto id laudantium voluptate. Doloribus doloribus doloribus suscipit temporibus neque itaque error.', '2020-07-28 21:35:22', '2020-07-28 21:35:22'),
(23, 'Quidem quam qui velit reprehenderit ut aut laboriosam.', 'Non rerum error impedit et mollitia error eaque. Animi quis molestias et reprehenderit minus quae error quia. Tempore quia ratione vero id.', '2020-07-28 21:35:22', '2020-07-28 21:35:22'),
(24, 'Repudiandae voluptatem quas ab blanditiis laboriosam iusto.', 'Omnis sed dolorem consequuntur dolores. Cumque voluptatem autem exercitationem totam quia neque expedita. Dolore nobis aut adipisci aliquam et. Qui eos possimus rem explicabo.', '2020-07-28 21:35:22', '2020-07-28 21:35:22'),
(25, 'Et in reprehenderit est hic vel et.', 'Veniam assumenda enim ullam assumenda. Laboriosam dolorum cumque est quam. Officiis illo consequatur maxime corporis qui.', '2020-07-28 21:35:22', '2020-07-28 21:35:22'),
(26, 'Vel sed necessitatibus doloribus ipsam.', 'Laudantium et accusantium et et est et accusamus maxime. Corrupti minima aperiam est ad asperiores neque. At quia ea enim cupiditate explicabo eum. Rerum laborum et id assumenda accusantium.', '2020-07-28 21:35:22', '2020-07-28 21:35:22'),
(27, 'Suscipit sint aut et enim quas.', 'Repellendus a earum sed suscipit qui qui iusto. Ut possimus non reprehenderit reprehenderit maiores. Laboriosam hic dolorem culpa aliquam nihil. Voluptatem dolores blanditiis perferendis aperiam.', '2020-07-28 21:35:22', '2020-07-28 21:35:22'),
(28, 'Tempora illum ipsam dolores aut aut odit.', 'Veniam dolor asperiores omnis natus repellat recusandae qui. Consequuntur rerum dolor est. Veritatis unde accusamus soluta debitis omnis est. Nemo qui cupiditate distinctio perferendis voluptatem voluptatem.', '2020-07-28 21:35:22', '2020-07-28 21:35:22'),
(29, 'Labore quam recusandae ipsum enim omnis dignissimos doloribus.', 'Consequuntur assumenda libero repudiandae id aut molestiae. Et sunt consequatur omnis ut earum. Quis enim ipsum saepe eveniet nobis laudantium qui. Rem perspiciatis cum ut.', '2020-07-28 21:35:22', '2020-07-28 21:35:22'),
(30, 'Error delectus temporibus sit quia a voluptates eos.', 'Aspernatur soluta quasi dolor. Rerum ut deserunt omnis et illo. Sint dolore excepturi at voluptatibus molestiae.', '2020-07-28 21:35:22', '2020-07-28 21:35:22'),
(31, 'Beatae ea labore ut nihil rerum.', 'Velit aut et quia quia. Quo iusto beatae numquam sunt voluptas quae magnam. Adipisci numquam molestias eaque sunt. Velit tenetur beatae quia et aut.', '2020-07-28 21:35:22', '2020-07-28 21:35:22'),
(32, 'Eum eius consectetur rerum sunt et ut.', 'Eveniet exercitationem voluptatem corrupti consequatur eos corporis. Numquam eum eos dolores. Saepe et similique inventore occaecati corrupti.', '2020-07-28 21:35:22', '2020-07-28 21:35:22'),
(33, 'Aut aut rem repudiandae aut sunt recusandae.', 'Rerum nihil quam sunt qui officiis esse. Officiis suscipit aut omnis quia. Est voluptatem sunt quidem beatae sapiente dolorem.', '2020-07-28 21:35:22', '2020-07-28 21:35:22'),
(34, 'Sunt nihil ut tempora non.', 'Quis dolores eos adipisci magnam. Nam et placeat impedit autem molestiae hic delectus nisi. Officia vitae saepe et ipsum tenetur ut magnam dolorum.', '2020-07-28 21:35:22', '2020-07-28 21:35:22'),
(35, 'Et itaque ullam et qui ut non.', 'Non et architecto numquam aut. Vero et quia tempora nobis impedit ducimus. Nemo corrupti ad odit non voluptatem eius sint. Eum est libero aut veniam.', '2020-07-28 21:35:22', '2020-07-28 21:35:22'),
(36, 'Inventore dicta sequi autem sit est.', 'Sint possimus inventore non porro culpa consectetur. Animi explicabo voluptas non beatae ut exercitationem. Dolorem quisquam voluptatem deleniti pariatur.', '2020-07-28 21:35:22', '2020-07-28 21:35:22'),
(37, 'Et sed assumenda et eum itaque animi dolorem exercitationem.', 'Omnis magnam aut quisquam vel in exercitationem. Autem error laborum error vitae sed reprehenderit. Aut est sint ipsam et earum veritatis quaerat similique. Vel illum praesentium accusamus vel et qui. Et voluptatem autem modi eos.', '2020-07-28 21:35:22', '2020-07-28 21:35:22'),
(38, 'Nisi ab in ea possimus nam aut.', 'Fugit autem qui harum doloremque et autem esse. Sint aperiam doloribus voluptate et esse. Quasi adipisci sed quia voluptatem et praesentium possimus.', '2020-07-28 21:35:22', '2020-07-28 21:35:22'),
(39, 'Tempora omnis dolorem perferendis minima inventore quo repellendus error.', 'Temporibus nam et incidunt quis non quis officia. Et voluptatum facilis perferendis. Itaque voluptas a commodi sint reiciendis fuga. Ex quasi dignissimos eius perspiciatis a adipisci.', '2020-07-28 21:35:22', '2020-07-28 21:35:22'),
(40, 'Occaecati aperiam accusamus et impedit dolor.', 'Quas ut sed veniam minima. Et fugit voluptatem porro qui libero. Quasi nisi qui ea ad. Praesentium eos quo debitis vero voluptas.', '2020-07-28 21:35:22', '2020-07-28 21:35:22'),
(41, 'Consequuntur accusantium sit natus iusto aspernatur.', 'Laborum maxime error accusamus repellendus. Ut officiis voluptatum deserunt cupiditate odio totam. Enim qui ut maxime dolor omnis animi.', '2020-07-28 21:35:22', '2020-07-28 21:35:22'),
(42, 'Distinctio vel voluptatem nam explicabo.', 'Harum hic temporibus delectus ipsum iure in odio. Et voluptatibus ad ut repellendus placeat non ex. Occaecati impedit expedita quis ad. Excepturi iusto perferendis et tempora doloribus est cupiditate. Cumque eaque deserunt vel non quam.', '2020-07-28 21:35:22', '2020-07-28 21:35:22'),
(43, 'Veniam numquam praesentium unde vero placeat rerum et.', 'In nam ut quisquam fugit. Exercitationem perferendis facilis sed quibusdam dolor repellat. Eos voluptas blanditiis perferendis et quod.', '2020-07-28 21:35:22', '2020-07-28 21:35:22'),
(44, 'Placeat quasi blanditiis at repudiandae.', 'Autem delectus vitae mollitia est. Ea nemo temporibus architecto ab consequatur id dignissimos. Nesciunt eligendi et autem sequi unde eveniet earum culpa. Voluptates et officia voluptatum nihil nemo veritatis excepturi. Quia similique saepe sit libero sit ducimus dolore nisi.', '2020-07-28 21:35:22', '2020-07-28 21:35:22'),
(45, 'Minima commodi sit aliquam iste.', 'Nostrum numquam rerum ea voluptas eligendi. Culpa totam neque minima sit.', '2020-07-28 21:35:22', '2020-07-28 21:35:22'),
(46, 'Ipsam eum similique et architecto.', 'Dolorem nesciunt nemo voluptas nam quo quaerat vel. Mollitia sit tempora et illo eum dolorum sed. Suscipit harum ab laboriosam. Eum tempore animi eum.', '2020-07-28 21:35:22', '2020-07-28 21:35:22'),
(47, 'Dicta odio repellat voluptatem et.', 'Dignissimos veniam vitae quas porro quo et nihil. Ut enim aut ut aut.', '2020-07-28 21:35:22', '2020-07-28 21:35:22'),
(48, 'At aut vel tempore id accusantium sed.', 'Temporibus rerum qui odit labore dolor. Atque perferendis similique distinctio possimus quibusdam excepturi et. Asperiores soluta vel inventore assumenda quia.', '2020-07-28 21:35:22', '2020-07-28 21:35:22'),
(49, 'Aut quod non culpa ut omnis.', 'Facilis cumque optio voluptatem odit nihil delectus delectus. Repudiandae possimus ea beatae. Odit modi vitae voluptatem assumenda itaque.', '2020-07-28 21:35:22', '2020-07-28 21:35:22'),
(50, 'Consectetur et omnis facere et culpa.', 'Et nihil nesciunt fuga perferendis ut. Sapiente ut et repudiandae magnam debitis. Et et magni quia repellendus. Omnis ut impedit sed eligendi in nesciunt.', '2020-07-28 21:35:22', '2020-07-28 21:35:22'),
(51, 'Hallo', 'Hallo body', '2020-07-28 21:52:39', '2020-07-28 21:52:39'),
(52, 'Let Javascript', 'Implementation of javascript', '2020-07-28 21:52:45', '2020-07-28 21:52:45'),
(57, 'Javascript for Kids', 'Awesome to javascript for kids', '2020-07-29 05:08:35', '2020-07-29 05:08:35'),
(58, 'Javascript for Kids', 'Awesome to javascript for kids', '2020-07-29 05:10:01', '2020-07-29 05:10:01'),
(59, 'Javascript for Kids', 'Awesome to javascript for kids', '2020-07-29 05:15:38', '2020-07-29 05:15:38'),
(60, 'Javascript for Kids', 'Awesome to javascript for kids', '2020-07-29 05:15:50', '2020-07-29 05:15:50'),
(61, 'Javascript for Kids', 'Awesome to javascript for kids', '2020-07-29 05:15:54', '2020-07-29 05:15:54'),
(62, 'Javascript for Kids', 'Awesome to javascript for kids', '2020-07-29 05:16:24', '2020-07-29 05:16:24'),
(63, 'Javascript for Kids', 'Awesome to javascript for kids', '2020-07-29 05:16:43', '2020-07-29 05:16:43'),
(64, 'Javascript for Kids', 'Awesome to javascript for kids', '2020-07-29 05:16:46', '2020-07-29 05:16:46'),
(65, 'Javascript for Kids', 'Awesome to javascript for kids', '2020-07-29 05:16:48', '2020-07-29 05:16:48'),
(66, 'Javascript for Kids', 'Awesome to javascript for kids', '2020-07-29 05:17:58', '2020-07-29 05:17:58'),
(67, 'Javascript for Kids', 'Awesome to javascript for kids', '2020-07-29 05:18:24', '2020-07-29 05:18:24'),
(68, 'VueJS FrontEnd II', 'Learn VueJS FrontEnd II', '2020-07-29 05:18:26', '2020-07-29 05:25:23'),
(70, 'VueJS FrontEnd', 'Learn VueJS FrontEnd', '2020-07-29 05:18:30', '2020-07-29 05:22:24'),
(71, 'Java is Amazing', 'java GUI for Expert Code', '2020-08-11 06:43:21', '2020-08-11 06:43:21'),
(72, 'Java is Amazing', 'Java GUI for Expert Code', '2020-08-11 06:44:09', '2020-08-11 06:44:09');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jabatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `waktu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id`, `nama`, `jabatan`, `waktu`, `created_at`, `updated_at`) VALUES
(3, 'Moeamar', 'Programmer', '28/07/2020', '2020-07-28 02:13:46', '2020-07-28 19:51:24'),
(4, 'Aditya', 'Head Store', '08/07/2015', '2020-07-28 02:19:44', '2020-07-28 19:50:01'),
(7, 'Hanif B', 'Head Online', '01/02/2020', '2020-07-28 19:45:36', '2020-07-28 19:46:03'),
(10, 'Reza IT', 'IT Programmer', '28/07/2020', '2020-08-28 08:29:37', '2020-08-28 08:29:37'),
(11, 'Moe Tadashi', 'Software Enginnering', '30/07/2020', '2020-08-28 08:30:00', '2020-08-28 08:30:00'),
(12, 'Heru', 'Staff', '28/07/2020', '2020-08-28 09:00:06', '2020-08-28 09:00:06');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_07_24_024152_add_api_token_field_users', 2),
(6, '2020_07_28_022418_create_contohs_table', 4),
(7, '2020_07_29_042150_create_articles_table', 5),
(8, '2020_07_24_025338_add_api_token_on_users_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('desi@domain.com', '$2y$10$uvyv8kjsE2QV.lCavQEVGeHVPzKDt0fIUUwdVJd/8wp5XmT1juRF2', '2020-08-12 03:20:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_access` enum('author','member') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'member',
  `is_active` enum('true','false') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'false',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_token` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `is_access`, `is_active`, `email`, `password`, `remember_token`, `api_token`, `created_at`, `updated_at`) VALUES
(1, 'Author', 'author', 'true', 'moeamarreza@gmail.com', '$2y$10$.76wr8yFeWbNJj8EOxMU2O3PupcJTgb4ptxJZutp9xj6t7HwbVi26', 'uPdG56NmRagLN7hTCWjPusSidklVFgIEZUAduars5qkOgbaodFjq1o2rWBa1', 'QisuD8KIF2fBhLt6l0RZT5aBsHPBW476Eab9PWFdB7XcLjpfBbsvlRLPKseB', '2020-07-29 00:33:48', '2020-07-29 00:45:30'),
(2, 'Desi', 'member', 'true', 'desi@domain.com', '$2y$10$TTf4v1CXfDKatcPXVqLV4eQzWzr5HXT6uxSaLnxnGH320CCaG7Zfa', NULL, 'o7BJ4fqZO9Vil214Rg4dizQpAnVp1Dv67TvdXu0kQu5njYwpEtEUUXIJGW9m', '2020-07-29 00:47:13', '2020-07-29 00:47:13'),
(4, 'Reza', 'member', 'false', 'reza@domain.com', '$2y$10$cVGiVAJvrL38ZF//GRrEeeRQj2rIt6n8EVLA/2IR07Cnd9UT9IgLK', NULL, 'msseoY2yBdPQszKOYA7ivDfu0B2cngYEHrDoIp0KzkK56nC5vNwfKclkkCjp', '2020-08-09 21:34:43', '2020-08-09 21:34:43'),
(5, 'Anan S', 'member', 'false', 'anan@domain.com', '$2y$10$TRCgxqtP0iEt66jYmqIU7u/xKKv8a3a029hF82RP3aM.rOIi6lzfm', NULL, 'cnEpghkqGOZS3p5k6pvwr3ByyDM21K9VSJvhTZe8H2AlSrZbMVVjmkyDea8H', '2020-08-10 00:36:20', '2020-08-10 00:36:20'),
(6, 'Hulk', 'member', 'false', 'hulk@domain.com', '$2y$10$gNeinkdKmxHsmWm/NOWkUuJd5ZWa25CO.FM2K3J7MsdcpunofqZ9e', NULL, 'txSyLLyKLrODrze7FsLvQ4USUBDNzEM3abzekQrB3Md4ZhDcsbLA0x7BOTvL', '2020-08-12 03:00:53', '2020-08-12 03:00:53'),
(12, 'Hulk 2', 'member', 'false', 'hulk2@domain.com', '$2y$10$qfs/d45VX17hkUDS9kIZg.997kEOUWeBp8sax1ahEDgVL2WTUnWwe', NULL, 'yFFOtvosAqZd6LTjc0gsW3z2mzL6lG0nsHXC36SluaqT8ffDUr12TPzBXgx8', '2020-08-12 03:05:47', '2020-08-12 03:05:47'),
(13, 'Hulk 3', 'member', 'false', 'hulk3@domain.com', '$2y$10$f3JxNDBBNDRjIekLTS7lDu7nZV.x7EVwUDwiB4CwpnHoMOjHXjSXS', NULL, 'G3uWwcsMFGrvUr9o2UqeCJEGfrqo3vLaRXQpgSVcWg0J3qALdDRGrOSjL8fZ', '2020-08-12 03:18:43', '2020-08-12 03:18:43'),
(14, 'Hulk 4', 'member', 'false', 'hulk4@domain.com', '$2y$10$4tn/PhlEuVESXx/9hqecxO03q7iV24SDvCLVAJziGSICDeKdGOPvW', NULL, '8aniT5k1eMXIDSGq9lG3kX2meu7mSator9JxaQq8OJKAFK6HDdTlFRtpf9Kr', '2020-08-12 03:22:37', '2020-08-12 03:22:37'),
(15, 'Hulk 5', 'member', 'false', 'hulk5@domain.com', '$2y$10$5tV9GWtbNZbiqeuKf.rxy.kC67KkjC.k0yq5cn0yAs2qKmXEzcdWK', NULL, 'LHDtVTHHOrY6O78Ky7HWYCxX1jE65BX0d233wmG0hJlNteL3mW5xGKhYRCib', '2020-08-14 07:49:35', '2020-08-14 07:49:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
