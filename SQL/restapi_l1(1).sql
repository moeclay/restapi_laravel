-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2020 at 01:36 PM
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
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Sari Tania Puspita', NULL, NULL),
(2, 'Diki Alfarabi Hadi', NULL, NULL),
(3, 'Luluh Sinaga', NULL, NULL),
(4, 'Lamar Putra', NULL, NULL),
(5, 'Banawi Kuswoyo', NULL, NULL),
(6, 'Ratih Wijayanti', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `anggota_hadiah`
--

CREATE TABLE `anggota_hadiah` (
  `id` int(10) UNSIGNED NOT NULL,
  `anggota_id` int(10) UNSIGNED NOT NULL,
  `hadiah_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `anggota_hadiah`
--

INSERT INTO `anggota_hadiah` (`id`, `anggota_id`, `hadiah_id`, `created_at`, `updated_at`) VALUES
(1, 6, 6, NULL, NULL),
(2, 2, 5, NULL, NULL),
(3, 6, 10, NULL, NULL),
(4, 3, 4, NULL, NULL),
(5, 3, 6, NULL, NULL),
(6, 1, 4, NULL, NULL),
(7, 4, 11, NULL, NULL),
(8, 5, 5, NULL, NULL),
(9, 2, 9, NULL, NULL),
(10, 6, 6, NULL, NULL),
(11, 3, 2, NULL, NULL),
(12, 2, 3, NULL, NULL),
(13, 1, 8, NULL, NULL),
(14, 6, 8, NULL, NULL),
(15, 3, 2, NULL, NULL);

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
-- Table structure for table `gambar`
--

CREATE TABLE `gambar` (
  `id` int(10) UNSIGNED NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gambar`
--

INSERT INTO `gambar` (`id`, `file`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, '1598699707_pengajuan_whatsapp.png', 'pengajuan whatsapp', '2020-08-29 11:15:07', '2020-08-29 11:15:07'),
(2, '1598699725_Screenshot_1.jpg', 'Whatsapp Images', '2020-08-29 11:15:25', '2020-08-29 11:15:25'),
(3, '1598699806_logo.jpeg', 'bot father', '2020-08-29 11:16:46', '2020-08-29 11:16:46');

-- --------------------------------------------------------

--
-- Table structure for table `hadiah`
--

CREATE TABLE `hadiah` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_hadiah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hadiah`
--

INSERT INTO `hadiah` (`id`, `nama_hadiah`, `created_at`, `updated_at`) VALUES
(1, 'Kulkas', NULL, NULL),
(2, 'Lemari', NULL, NULL),
(3, 'Rumah', NULL, NULL),
(4, 'Mobil', NULL, NULL),
(5, 'Sepeda Motor', NULL, NULL),
(6, 'Pulpen', NULL, NULL),
(7, 'Tas', NULL, NULL),
(8, 'Sepatu', NULL, NULL),
(9, 'Voucher', NULL, NULL),
(10, 'Mouse', NULL, NULL),
(11, 'Laptop', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nim` int(11) NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nama`, `nim`, `alamat`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'reza', 2312412, 'bojong gede, jawa barat', '2020-08-28 17:00:00', '2020-08-28 17:00:00', NULL),
(2, 'Bakda Okto Prasasta', 32832, 'Ds. M.T. Haryono No. 986, Bima 96262, Lampung', '2020-08-29 02:10:18', NULL, NULL),
(3, 'Yoga Pangestu', 32832, 'Jln. S. Parman No. 189, Tomohon 82118, KalUt', '2020-08-29 02:10:18', NULL, NULL),
(4, 'Tasnim Karma Mandala', 32832, 'Ki. Muwardi No. 188, Tarakan 63885, SulTra', '2020-08-29 02:10:18', NULL, NULL),
(5, 'Alika Mulyani', 32832, 'Ds. Jagakarsa No. 115, Langsa 65447, Maluku', '2020-08-29 02:10:18', NULL, NULL),
(6, 'Kacung Lazuardi', 32832, 'Psr. Hasanuddin No. 199, Bukittinggi 16112, Jambi', '2020-08-29 02:10:18', NULL, NULL),
(7, 'Maras Maheswara', 32832, 'Psr. Bagas Pati No. 276, Batam 62368, BaBel', '2020-08-29 02:10:18', NULL, NULL),
(8, 'Putri Maya Prastuti', 32832, 'Ds. Baranang No. 754, Tanjung Pinang 48711, KalTeng', '2020-08-29 02:10:18', NULL, NULL),
(9, 'Cawisono Santoso', 32832, 'Gg. Ir. H. Juanda No. 758, Jayapura 58636, Bengkulu', '2020-08-29 02:10:18', NULL, NULL),
(10, 'Ulva Tania Astuti M.Farm', 32832, 'Jr. Kalimalang No. 609, Solok 11066, NTT', '2020-08-29 02:10:18', NULL, NULL),
(11, 'Agnes Rachel Zulaika M.Kom.', 32832, 'Jln. Madrasah No. 971, Ambon 47578, Lampung', '2020-08-29 02:10:18', NULL, NULL),
(12, 'Warsita Hidayanto', 12345, 'Kpg. Untung Suropati No. 570, Banjarbaru 61215, Maluku', '2020-08-29 02:11:00', NULL, NULL),
(16, 'Reza IT', 90296001, 'Bojong Gede, Bogor, Jawa Barat', '2020-08-29 02:46:44', '2020-08-29 02:46:44', NULL);

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
(8, '2020_07_24_025338_add_api_token_on_users_table', 6),
(9, '2020_08_10_071733_create_ongkirs_table', 7),
(10, '2020_08_29_084444_create_mahasiswa_table', 7),
(14, '2020_08_29_102326_mahasiswa_create_deleted_at', 8),
(15, '2020_08_29_180701_create_gambars_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `ongkirs`
--

CREATE TABLE `ongkirs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Padmi Kamila Hassanah S.Farm', NULL, NULL),
(2, 'Julia Oktaviani', NULL, NULL),
(3, 'Darmana Sitompul', NULL, NULL),
(4, 'Naradi Nainggolan', NULL, NULL),
(5, 'Tedi Winarno', NULL, NULL),
(6, 'Ulya Yani Permata S.Pt', NULL, NULL),
(7, 'Maida Uyainah', NULL, NULL),
(8, 'Putri Dian Nasyidah M.Pd', NULL, NULL),
(9, 'Lantar Uwais', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `judul`, `created_at`, `updated_at`) VALUES
(1, 'Placeat saepe ea possimus provident quos est molestiae reiciendis.', NULL, NULL),
(2, 'Totam laudantium molestiae similique sit.', NULL, NULL),
(3, 'Aut consequatur ducimus ut non voluptatem voluptas.', NULL, NULL),
(4, 'Ad sit voluptatem qui ut dolorem.', NULL, NULL),
(5, 'Qui consequatur eum fuga corrupti.', NULL, NULL),
(6, 'Quos nesciunt blanditiis amet odio.', NULL, NULL),
(7, 'Ex doloremque consequuntur velit alias repellendus ullam.', NULL, NULL),
(8, 'Perspiciatis a quo beatae nobis et suscipit illo.', NULL, NULL),
(9, 'Maiores voluptate animi est enim totam.', NULL, NULL),
(10, 'Rerum expedita inventore nulla voluptates perferendis placeat.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag`, `posts_id`, `created_at`, `updated_at`) VALUES
(1, 'dolores', 2, NULL, NULL),
(2, 'culpa', 3, NULL, NULL),
(3, 'sit', 4, NULL, NULL),
(4, 'quasi', 3, NULL, NULL),
(5, 'inventore', 5, NULL, NULL),
(6, 'istirahat', 7, NULL, NULL),
(7, 'quisquam', 5, NULL, NULL),
(8, 'fugiat', 7, NULL, NULL),
(9, 'perspiciatis', 5, NULL, NULL),
(10, 'voluptatem', 3, NULL, NULL),
(11, 'non', 2, NULL, NULL),
(12, 'ducimus', 5, NULL, NULL),
(13, 'tempora', 4, NULL, NULL),
(14, 'voluptatem', 10, NULL, NULL),
(15, 'nisi', 3, NULL, NULL),
(16, 'exercitationem', 10, NULL, NULL),
(17, 'sed', 2, NULL, NULL),
(18, 'tempora', 6, NULL, NULL),
(19, 'laudantium', 7, NULL, NULL),
(20, 'a', 6, NULL, NULL),
(21, 'consequuntur', 9, NULL, NULL),
(22, 'omnis', 1, NULL, NULL),
(23, 'rerum', 9, NULL, NULL),
(24, 'ut', 1, NULL, NULL),
(25, 'amet', 10, NULL, NULL),
(26, 'atque', 9, NULL, NULL),
(27, 'at', 4, NULL, NULL),
(28, 'hic', 3, NULL, NULL),
(29, 'itaque', 1, NULL, NULL),
(30, 'quia', 9, NULL, NULL),
(31, 'consequatur', 8, NULL, NULL),
(32, 'non', 9, NULL, NULL),
(33, 'explicabo', 10, NULL, NULL),
(34, 'eos', 6, NULL, NULL),
(35, 'eveniet', 5, NULL, NULL),
(36, 'dolor', 10, NULL, NULL),
(37, 'magnam', 10, NULL, NULL),
(38, 'aut', 1, NULL, NULL),
(39, 'et', 6, NULL, NULL),
(40, 'ut', 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `telepon`
--

CREATE TABLE `telepon` (
  `id` int(10) UNSIGNED NOT NULL,
  `nomor_telepon` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pengguna_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `telepon`
--

INSERT INTO `telepon` (`id`, `nomor_telepon`, `pengguna_id`, `created_at`, `updated_at`) VALUES
(1, '(+62) 878 0989 834', 1, NULL, NULL),
(2, '(+62) 509 9868 0557', 2, NULL, NULL),
(3, '023 9503 4379', 3, NULL, NULL),
(4, '(+62) 24 1120 052', 4, NULL, NULL),
(5, '0535 3676 2454', 5, NULL, NULL),
(6, '0614 0945 4128', 6, NULL, NULL),
(7, '0460 8541 5478', 7, NULL, NULL),
(8, '(+62) 713 5497 976', 8, NULL, NULL),
(9, '(+62) 653 4057 294', 9, NULL, NULL);

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
(1, 'Author', 'author', 'true', 'moeamarreza@gmail.com', '$2y$10$EWQKjmFB3mSa8pG63d7c8uAWOps0F7IM8YZe0lNHf4JJsgVgMGwZS', 'xBooXzLhOgTRo3yLo0QyLWO3J4H9dkel3ZvbrFB2OZgrphwE8d02VMB7TWBG', 'QisuD8KIF2fBhLt6l0RZT5aBsHPBW476Eab9PWFdB7XcLjpfBbsvlRLPKseB', '2020-07-29 00:33:48', '2020-08-29 07:03:20'),
(16, 'Reza', 'member', 'false', 'iamreza@pandawa-mqzz.com', '$2y$10$FTBX0CLyEcUMnvy0q26FDeYAcCKDMsVyKNbOm/AOSwVs86yXWM5oC', NULL, '3fMUMwbtafzKwRDoMOIjLEVpNfHz1MOkH47geCQ1dpbjrVD0LyBmYsC28FXi', '2020-08-29 07:05:00', '2020-08-29 07:05:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anggota_hadiah`
--
ALTER TABLE `anggota_hadiah`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `gambar`
--
ALTER TABLE `gambar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hadiah`
--
ALTER TABLE `hadiah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ongkirs`
--
ALTER TABLE `ongkirs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `telepon`
--
ALTER TABLE `telepon`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `anggota_hadiah`
--
ALTER TABLE `anggota_hadiah`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
-- AUTO_INCREMENT for table `gambar`
--
ALTER TABLE `gambar`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hadiah`
--
ALTER TABLE `hadiah`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ongkirs`
--
ALTER TABLE `ongkirs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `telepon`
--
ALTER TABLE `telepon`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
