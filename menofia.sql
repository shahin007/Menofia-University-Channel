-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 15, 2019 at 07:32 AM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `heshamgamal_graduation`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title_ar`, `title_en`, `url`, `created_at`, `updated_at`) VALUES
(3, 'تيست', 'Test', 'https://www.youtube.com/watch?v=vkVS-kfeU20', '2019-06-14 21:24:24', '2019-06-14 21:24:24');

-- --------------------------------------------------------

--
-- Table structure for table `colleges`
--

CREATE TABLE `colleges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colleges`
--

INSERT INTO `colleges` (`id`, `name_ar`, `name_en`, `desc_ar`, `desc_en`, `created_at`, `updated_at`) VALUES
(4, 'كلية الزراعة', 'Faculty Of Agriculture', 'أصل الكلية', 'The Origin Of The Faculty', '2019-06-15 13:36:08', '2019-06-15 13:47:59'),
(5, 'كلية الفنون', 'Faculty Of Arts', 'أصل الكلية', 'The Origin Of The Faculty', '2019-06-15 14:04:26', '2019-06-15 14:04:26'),
(6, 'كلية التجارة', 'Faculty Of Commerce', 'أصل الكلية', 'The Origin Of The Faculty', '2019-06-15 14:19:15', '2019-06-15 14:19:15'),
(7, 'كلية الحاسبات والمعلومات', 'Faculty Of Computers And Information', 'أصل الكلية', 'The Origin Of The Faculty', '2019-06-15 14:26:41', '2019-06-15 14:26:41'),
(8, 'كلية التربية', 'Faculty Of Education', 'أصل الكلية', 'The Origin Of The Faculty', '2019-06-15 14:33:47', '2019-06-15 14:33:47'),
(9, 'كلية الهندسة الالكترونية', 'Faculty Of Electronic Engineering', 'أصل الكلية', 'The Origin Of The Faculty', '2019-06-15 14:40:22', '2019-06-15 14:40:22'),
(10, 'كلية الهندسة', 'Faculty Of Engineering', 'أهداف الكلية', 'The Goals Of The Faculty', '2019-06-15 14:51:26', '2019-06-15 14:51:26'),
(11, 'كلية الاقتصاد المنزلي', 'Faculty Of Home Economics', 'أصل الكلية', 'The Origin Of The Faculty', '2019-06-15 14:59:08', '2019-06-15 14:59:08'),
(12, 'كلية الحقوق', 'Faculty Of Law', 'أصل الكلية', 'The Origin Of The Faculty', '2019-06-15 15:05:59', '2019-06-15 15:05:59'),
(13, 'كلية الطب', 'Faculty Of Medicine', 'أصل الكلية', 'The Origin Of The Faculty', '2019-06-15 15:11:57', '2019-06-15 15:11:57'),
(14, 'كلية التمريض', 'Faculty Of Nursing', 'أصل الكلية', 'The Origin Of The Faculty', '2019-06-15 15:18:05', '2019-06-15 15:18:05'),
(15, 'كلية التربية الرياضية', 'Faculty Of Physical Education', 'لا يوجد داتا', 'no data', '2019-06-15 15:24:53', '2019-06-15 15:24:53'),
(16, 'كلية العلوم', 'Faculty Of Science', 'أصل الكلية', 'The Origin Of The Faculty', '2019-06-15 15:26:35', '2019-06-15 15:26:35'),
(17, 'كلية التربية النوعية', 'Faculty Of Specific Education', 'أهداف الكلية', 'The Goals Of The Faculty', '2019-06-15 15:32:29', '2019-06-15 15:32:29'),
(18, 'كلية العلوم التطبيقية', 'Faculty Of Applied Science', 'رؤية الكلية', 'The Vision Of The Faculty', '2019-06-15 15:36:54', '2019-06-15 15:36:54'),
(19, 'المستشفيات الجامعية', 'University Hospitals', 'الأصل والأهداف', 'The Origin & Goals', '2019-06-15 15:42:26', '2019-06-15 15:42:26'),
(20, 'كلية الطب البيطري', 'Faculty Of Of Veterinary Medicine', 'لا يوجد داتا', 'no data', '2019-06-15 15:49:58', '2019-06-15 15:49:58'),
(21, 'معهد الكبد', 'Liver Institute', 'النشأه', 'The Origin', '2019-06-15 15:51:08', '2019-06-15 15:51:08'),
(22, 'كلية الصيدلة', 'Faculty Of Pharmacy', 'أصل الكلية', 'The Origin Of The Faculty', '2019-06-15 15:57:18', '2019-06-15 15:57:18');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'mahmoud', 'mahmoudnada5050@yahoo.com', '01208971865', 'ffd', 'sfsdfs', '2019-06-14 16:27:22', '2019-06-14 16:27:22'),
(2, 'mohamed mostafa', 'elbiheiry2@gmail.com', '01011093385', 'test', 'فغثللاانتم', '2019-06-14 21:32:45', '2019-06-14 21:32:45');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageable_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `url`, `imageable_type`, `imageable_id`, `created_at`, `updated_at`) VALUES
(11, '/uploads/images/6350-slider1.jpg', 'App\\Slider', 5, '2019-06-14 21:18:53', '2019-06-14 21:18:53'),
(12, '/uploads/images/5048-اداب.jpg', 'App\\Article', 3, '2019-06-14 21:24:24', '2019-06-15 17:29:51'),
(13, '/uploads/images/5262-حاسبات.jpg', 'App\\College', 3, '2019-06-14 21:25:41', '2019-06-14 21:25:41'),
(14, '/uploads/images/791-slider1u.png', 'App\\Slider', 6, '2019-06-15 13:17:32', '2019-06-15 13:17:32'),
(15, '/uploads/images/8314-slider2u.png', 'App\\Slider', 7, '2019-06-15 13:21:19', '2019-06-15 13:24:32'),
(16, '/uploads/images/6349-slider1u.png', 'App\\Slider', 8, '2019-06-15 13:28:04', '2019-06-15 13:28:04'),
(17, '/uploads/images/4521-زراعه.png', 'App\\College', 4, '2019-06-15 13:36:08', '2019-06-15 13:36:08'),
(18, '/uploads/images/3244-اداب.jpg', 'App\\College', 5, '2019-06-15 14:04:26', '2019-06-15 14:04:26'),
(19, '/uploads/images/1923-تجاره.jpg', 'App\\College', 6, '2019-06-15 14:19:15', '2019-06-15 14:19:15'),
(20, '/uploads/images/8011-حاسبات.jpg', 'App\\College', 7, '2019-06-15 14:26:41', '2019-06-15 14:26:41'),
(21, '/uploads/images/2374-تربيه.jpg', 'App\\College', 8, '2019-06-15 14:33:47', '2019-06-15 14:33:47'),
(22, '/uploads/images/8480-هنسه-منوف.jpg', 'App\\College', 9, '2019-06-15 14:40:22', '2019-06-15 14:40:22'),
(23, '/uploads/images/8447-هندسه.jpg', 'App\\College', 10, '2019-06-15 14:51:26', '2019-06-15 14:51:26'),
(24, '/uploads/images/6056-اقتصاد.jpg', 'App\\College', 11, '2019-06-15 14:59:08', '2019-06-15 14:59:08'),
(25, '/uploads/images/2231-حقوق.jpg', 'App\\College', 12, '2019-06-15 15:05:59', '2019-06-15 15:05:59'),
(26, '/uploads/images/1361-طب.jpg', 'App\\College', 13, '2019-06-15 15:11:57', '2019-06-15 15:11:57'),
(27, '/uploads/images/9143-تمريض.png', 'App\\College', 14, '2019-06-15 15:18:05', '2019-06-15 15:18:05'),
(28, '/uploads/images/2782-رياضية.png', 'App\\College', 15, '2019-06-15 15:24:53', '2019-06-15 15:24:53'),
(29, '/uploads/images/2320-علوم.jpg', 'App\\College', 16, '2019-06-15 15:26:35', '2019-06-15 15:26:35'),
(30, '/uploads/images/4423-تربيه-نوعيه.jpg', 'App\\College', 17, '2019-06-15 15:32:29', '2019-06-15 15:32:29'),
(31, '/uploads/images/862-علوم-طبيه.jpg', 'App\\College', 18, '2019-06-15 15:36:54', '2019-06-15 15:36:54'),
(32, '/uploads/images/5564-الجامعه.jpg', 'App\\College', 19, '2019-06-15 15:42:26', '2019-06-15 15:42:26'),
(33, '/uploads/images/3604-طب-بيطرى.gif', 'App\\College', 20, '2019-06-15 15:49:58', '2019-06-15 15:49:58'),
(34, '/uploads/images/9710-معهد-الكبد.jpg', 'App\\College', 21, '2019-06-15 15:51:08', '2019-06-15 15:51:08'),
(35, '/uploads/images/35-صيدله.png', 'App\\College', 22, '2019-06-15 15:57:18', '2019-06-15 15:59:08');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_06_12_205736_create_sliders_table', 1),
(3, '2019_06_12_210006_create_colleges_table', 1),
(4, '2019_06_12_210041_create_articles_table', 1),
(5, '2019_06_12_212250_create_images_table', 1),
(6, '2019_06_14_170135_create_contacts_table', 2),
(7, '2019_06_14_210914_create_objectives_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `objectives`
--

CREATE TABLE `objectives` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `college_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `objectives`
--

INSERT INTO `objectives` (`id`, `title_ar`, `title_en`, `college_id`, `created_at`, `updated_at`) VALUES
(4, 'صدر المرسوم الملكي رقم (92) في أغسطس 1950 م بتأسيس جامعة إبراهيم باشا الكبير', 'The Royal Decree No. (92) was issued in August 1950 with the establishment of Ibrahim Pasha Al-Kabir University', 4, '2019-06-15 13:49:47', '2019-06-15 13:49:47'),
(5, 'والتي تضمنت إحضار المعهد الزراعي العالي في شبين الكوم إلى كلية الزراعة في تلك الجامعة.', 'which included making the Higher Agricultural Institute in Shebeen Al-Kom to the Faculty of Agriculture of that university.', 4, '2019-06-15 13:51:09', '2019-06-15 13:51:09'),
(6, 'التي غيرت اسمها في عام 1954 إلى جامعة عين شمس ، وفي نفس العام انتقلت الكلية إلى القاهرة.', 'Which changed its name in 1954 to Ain Shams University, and in the same year the college moved to Cairo.', 4, '2019-06-15 13:52:00', '2019-06-15 13:52:00'),
(7, 'في عام 1969 ، تم تحويل المعهد إلى كلية أخرى للزراعة تابعة لجامعة عين شمس ،', 'In 1969, the Institute was transformed into another Faculty of Agriculture belonging to Ain Shams University,', 4, '2019-06-15 13:53:31', '2019-06-15 13:53:31'),
(8, 'ثم إلى جامعة الزقازيق في عام 1974 ، ثم إلى جامعة طنطا في عام 1975 وأخيرا إلى جامعة المنوفية. في عام 1976.', 'then to the University of Zagazig in 1974, then to the University of Tanta in 1975 and finally to Menoufia University. In 1976.', 4, '2019-06-15 13:54:09', '2019-06-15 13:54:09'),
(9, 'الأقسام العلمية:', 'Scientific Departments:', 4, '2019-06-15 13:55:52', '2019-06-15 13:55:52'),
(10, 'البساتين-النبات الزراعي -الحشرات الزراعية والاقتصادية -الإنتاج الحيواني- إنتاج الدواجن-المحاصيل -الطبيعية-علوم وتكنولوجيا الأغذية', 'Horticulture-Agricultural Plant -Agricultural and economic insects -Animal Production -Poultry production -Crops -Genetics -Food science and technology', 4, '2019-06-15 13:59:07', '2019-06-15 13:59:07'),
(11, 'علوم وتكنولوجيا الألبان - علوم الأرض - الكيمياء الحيوية الزراعية - الاقتصاد الزراعي - الإرشاد الزراعي والمجتمع الريفي - الهندسة الزراعية', 'Dairy Science and Technology-Land sciences-Agricultural biochemistry-The agricultural economy-Agricultural extension and rural society-Agricultural engineering', 4, '2019-06-15 14:00:37', '2019-06-15 14:00:37'),
(12, 'تأسست كلية الآداب في جامعة المنوفية بشبين الكوم. بدأت الدراسة في عام 1987/1988 لدعم الفكر الإنساني:', 'The Faculty of Arts was established in Menoufia University in Shebin El Koum. The study was started in 1987/1988 to support human thought :', 5, '2019-06-15 14:06:48', '2019-06-15 14:06:48'),
(16, '- قسم اللغة العربية', '- Department of Arabic Language and Literature', 5, '2019-06-15 14:12:53', '2019-06-15 14:12:53'),
(17, '- قسم اللغة الإنجليزية', '- Department of English Language and Literature', 5, '2019-06-15 14:13:25', '2019-06-15 14:13:25'),
(18, '- قسم اللغة الفرنسية', '- Department of French Language and Literature', 5, '2019-06-15 14:13:46', '2019-06-15 14:13:46'),
(19, '- قسم اللغة الألمانية', '- Department of German Language and Literature', 5, '2019-06-15 14:14:09', '2019-06-15 14:14:09'),
(20, '- قسم اللغة العبرية', '- Department of Hebrew language and literature', 5, '2019-06-15 14:14:33', '2019-06-15 14:14:33'),
(21, '- قسم اللغة الفارسية', '- Department of Persian language and literature', 5, '2019-06-15 14:15:05', '2019-06-15 14:15:05'),
(22, '- قسم علم الاجتماع', '- Department of Sociology', 5, '2019-06-15 14:15:29', '2019-06-15 14:15:29'),
(23, '- قسم التاريخ', '- History Section', 5, '2019-06-15 14:15:48', '2019-06-15 14:15:48'),
(24, '- قسم الجغرافيا', '- Department of Geography', 5, '2019-06-15 14:16:09', '2019-06-15 14:16:09'),
(25, '-قسم علم النفس', '-Department of Psychology', 5, '2019-06-15 14:16:40', '2019-06-15 14:17:06'),
(26, '· صدر قرار رئيس مجلس الوزراء رقم 1142 لعام 1976 بتاريخ 25/12/1976 بإنشاء كلية التجارة التابعة لجامعة المنوفية.', '· The Prime Minister\'s Decision No. 1142 of 1976 was issued on 25/12/1976 establishing the Faculty of Commerce affiliated with the University of Menoufia', 6, '2019-06-15 14:19:54', '2019-06-15 14:19:54'),
(27, '· بدأت الدراسة في الكلية من العام الدراسي 1980/1981 في المبنى أمام سكن طلاب الجامعة في الضفة الشرقية في مدينة شبين الكوم', '· The study started at the college from the academic year 1980/1981 in the building in front of the university students housing in the east bank in Shebin Al-Kom city', 6, '2019-06-15 14:20:32', '2019-06-15 14:20:32'),
(28, '· تم نقل الكلية إلى المبنى الجديد في مبنى مجمع كليات الجامعة في العام الدراسي 86/1987.', '· The college was transferred to the new building in the building of the colleges complex of the university in the academic year 86/1987.', 6, '2019-06-15 14:21:25', '2019-06-15 14:21:25'),
(29, '· افتتح رئيس الجمهورية محمد حسني مبارك المبنى الجديد للدراسة في يناير 1989.', '· The President of the Republic, Mohamed Hosni Mubarak inaugurated the new building for study in January 1989.', 6, '2019-06-15 14:22:03', '2019-06-15 14:22:03'),
(30, 'تم افتتاح فرع لكلية التجارة بمدينة السادات اعتباراً من العام الدراسي 2001/2002.', '· A branch of the Faculty of Commerce - Sadat City was opened as of the academic year 2001/2002.', 6, '2019-06-15 14:22:20', '2019-06-15 14:22:20'),
(31, 'تم فصل فرع الكلية بمدينة السادات عن العام الدراسي 2006/2007.', '· The college branch was separated in Sadat City from the academic year 2006/2007.', 6, '2019-06-15 14:22:41', '2019-06-15 14:22:41'),
(32, 'تهدف جامعة المنوفية إلى استكمال الهيكل الأساسي للجامعة.', 'The University of Menoufia is aiming to complete the basic structure of the University.', 7, '2019-06-15 14:27:32', '2019-06-15 14:27:32'),
(33, 'المرسوم الرئاسي رقم 292 لعام 2001 ، الكمبيوتر والمعلومات - جامعة المنوفية ومقره مدينة شبين الكوم.', 'The Presidential Decree No. 292 of 2001, Computer and Information - University of Menoufia to be based in Shebin El Koum city.', 7, '2019-06-15 14:28:07', '2019-06-15 14:28:07'),
(34, 'الهدف العام:', 'Overall Objective:', 7, '2019-06-15 14:28:40', '2019-06-15 14:28:40'),
(35, 'تحقيق والحفاظ على التميز في التعليم من خلال البرامج التعليمية عالية الكفاءة.', 'Achieve and maintain excellence in education through highly efficient educational programs.', 7, '2019-06-15 14:29:05', '2019-06-15 14:29:05'),
(36, 'الأهداف الفرعية', 'Sub-objectives:', 7, '2019-06-15 14:30:06', '2019-06-15 14:30:06'),
(37, '- تطوير البرامج التعليمية لإعداد الطلاب', '- Developing educational programs to prepare students', 7, '2019-06-15 14:30:38', '2019-06-15 14:30:38'),
(38, '- آليات التعامل مع الطلاب الذين يفشلون في الدراسة.', '- Mechanisms for dealing with students who fail to study.', 7, '2019-06-15 14:31:35', '2019-06-15 14:31:35'),
(39, '- التغلب على مشاكل التعليم.', '- Overcoming the problems of education.', 7, '2019-06-15 14:31:53', '2019-06-15 14:31:53'),
(40, '- تطوير أساليب التقييم وأنظمة الفحص.', '- Development of evaluation methods and examination systems.', 7, '2019-06-15 14:32:12', '2019-06-15 14:32:12'),
(41, 'تأسست الكلية عام 1971 ، تلتها جامعة عين شمس.', '· The College was established in 1971, followed by Ain Shams University.', 8, '2019-06-15 14:35:08', '2019-06-15 14:35:08'),
(42, 'بدأت الدراسة في الكلية في العام الدراسي 1971/1972 مع شخصين من التاريخ الطبيعي - التاريخ.', '· The study began at the college in the academic year 1971/1972 with two people of natural history - history.', 8, '2019-06-15 14:35:29', '2019-06-15 14:35:29'),
(43, '· في 1972/1973 تم إضافة شعبتي اللغة الإنجليزية والرياضيات.', '· In 1972/73 the English and Mathematics divisions were added.', 8, '2019-06-15 14:35:49', '2019-06-15 14:35:49'),
(44, '· في عام 1974 ، أصبحت الكلية تابعة لفرع جامعة عين شمس بالزقازيق.', '· In 1974, the college became affiliated with the branch of Ain Shams University in Zagazig.', 8, '2019-06-15 14:36:08', '2019-06-15 14:36:08'),
(45, '· في عام 1975 ، أصبحت الكلية تابعة لجامعة طنطا.', '· In 1975, the college became affiliated with the University of Tanta.', 8, '2019-06-15 14:36:26', '2019-06-15 14:36:26'),
(46, '· في عام 1976 ، أصبحت الكلية تابعة لجامعة المنوفية بموجب مرسوم رئيس مجلس الوزراء رقم 1142 لعام 1976.', '· In 1976, the college became affiliated with the University of Menoufia under the decree of the Prime Minister No. 1142 of 1976.', 8, '2019-06-15 14:36:55', '2019-06-15 14:36:55'),
(47, '· في العام الدراسي 1977/1978 ، تمت إضافة قسم اللغة العربية.', '· In the academic year 1977/1978, the Arabic Language Division was added.', 8, '2019-06-15 14:37:16', '2019-06-15 14:37:16'),
(48, '· في العام الدراسي 1979/1980 ، تمت إضافة قسم الطبيعة والكيمياء.', '· In the academic year 1979/1980, the Department of Nature and Chemistry was added.', 8, '2019-06-15 14:37:36', '2019-06-15 14:37:36'),
(49, '· في العام الدراسي 1980/1981 ، تمت إضافة الكوادر الفنية الزراعية والصناعية.', '· In the academic year 1980/1981, the agricultural and industrial technical people were added.', 8, '2019-06-15 14:38:10', '2019-06-15 14:38:10'),
(50, '· في العام الدراسي 88/1989 ، تمت إضافة قسم التعليم الأساسي إلى الأقسام (اللغة العربية - الدراسات الاجتماعية - الرياضيات - العلوم).', '· In the academic year 88/1989, the Basic Education Division was added to the sections (Arabic Language - Social Studies - Mathematics - Science).', 8, '2019-06-15 14:38:42', '2019-06-15 14:38:42'),
(51, '· في العام الدراسي 1995/1996 ، تمت إضافة قسم رياض الأطفال وشعبة التعليم الأساسي إلى اللغة الإنجليزية.', '· In the academic year 1995/1996, the Division of Kindergartens and the Division of Basic Education were added to English.', 8, '2019-06-15 14:39:00', '2019-06-15 14:39:00'),
(52, 'تأسست الكلية عام 1965 تحت اسم المعهد العالي للإلكترونيات', 'The College was established in 1965 under the name of the Higher Institute of Electronics', 9, '2019-06-15 14:46:58', '2019-06-15 14:46:58'),
(53, 'صدر في 25/11/1976 من كلية الهندسة الإلكترونية إلى جامعة المنوفية.', 'issued on 25/11/1976 by the Faculty of Electronic Engineering to the University of Menoufia.', 9, '2019-06-15 14:48:03', '2019-06-15 14:48:03'),
(54, 'كلية الهندسة الإلكترونية - جامعة المنوفية هي الوحيدة في مصر الجامعات والمعاهد العربية والإفريقية.', 'The Faculty of Electronic Engineering - Menoufia University is the only one in the Egyptian Arab and African universities and institutes.', 9, '2019-06-15 14:48:53', '2019-06-15 14:48:53'),
(55, 'تعتبر السنوات الثلاث الأولى عامة لجميع الإدارات.', 'The first three years are considered general for all departments.', 9, '2019-06-15 14:49:25', '2019-06-15 14:49:25'),
(56, 'يبدأ الطلاب في السنة الثالثة والرابعة من التخصص في ثلاثة أقسام تخدم في الاتصالات ، أجهزة الكمبيوتر ، المعلومات ، الصناعية.', 'Students begin the third and fourth year of specialization in three departments serving in communications, computers, information, Industrial.', 9, '2019-06-15 14:49:49', '2019-06-15 14:49:49'),
(57, 'إعداد الكوادر الفنية المتخصصة في مجالات الهندسة المختلفة (الكهربائية ، الميكانيكية ، المدنية ، المعمارية) لتلبية احتياجات المجتمع', 'Preparing specialized technical cadres in different fields of engineering (electrical, mechanical, civil, architectural) to meet the needs of the society', 10, '2019-06-15 14:53:00', '2019-06-15 14:53:00'),
(58, 'توفير المؤهلين في التخصصات الهندسية الجديدة والمبتكرة المطلوبة من قبل سوق العمل', 'Provide qualified in new and innovative engineering disciplines required by the labor market', 10, '2019-06-15 14:54:06', '2019-06-15 14:54:06'),
(59, 'دمج ثقافة الجودة الشاملة والتحسين المستمر في العملية التعليمية والبحثية', 'Integrating the culture of total quality and continuous improvement in the educational and research process', 10, '2019-06-15 14:54:22', '2019-06-15 14:54:22'),
(60, 'التطوير المستمر لبرامج الدراسة وبرامج الدراسات العليا لمواكبة التقدم العلمي والتكنولوجي', 'Continuous development of study programs and graduate programs to keep pace with scientific and technological progress', 10, '2019-06-15 14:54:40', '2019-06-15 14:54:40'),
(61, '  نشر ثقافة وأخلاقيات البحث العلمي', 'Dissemination of the culture and ethics of scientific research', 10, '2019-06-15 14:54:58', '2019-06-15 14:54:58'),
(62, 'تعزيز التعاون بين الكلية وغيرها من الكليات ومراكز البحث العلمي محليا وإقليميا وعالميا', 'Strengthening cooperation between the college and other colleges and scientific research centers locally, regionally and globally', 10, '2019-06-15 14:55:15', '2019-06-15 14:55:15'),
(63, 'تطوير البرامج التعليمية في ضوء المعايير المحلية والإقليمية والعالمية', 'Developing educational programs in light of local, regional and global standards', 10, '2019-06-15 14:55:31', '2019-06-15 14:55:31'),
(64, 'تزويد الطلاب بأحدث مصادر المعرفة والتكنولوجيا الحديثة لتطوير قدرتهم على الابتكار والقيادة والتعلم الذاتي والعمل سوياً والمنافسة', 'Providing students with the latest sources of knowledge and modern technology to develop their ability to innovate, lead, self-learn, work together and compete', 10, '2019-06-15 14:56:26', '2019-06-15 14:56:26'),
(65, 'تعزيز التعليم المستمر والتعلم عن بعد والتعلم الإلكتروني', 'Strengthening of continuing education, distance learning and e-learning', 10, '2019-06-15 14:56:43', '2019-06-15 14:56:43'),
(66, 'الاستخدام الأمثل للموارد البشرية والمادية من خلال توفير خدمة تدريب فريدة من نوعها للمهندسين والفنيين في مختلف التخصصات', 'Optimal utilization of human and material resources by providing a unique training service for engineers and technicians in various disciplines', 10, '2019-06-15 14:56:59', '2019-06-15 14:56:59'),
(67, 'تفعيل دور المراكز والوحدات ذات الطبيعة الخاصة لتقديم الخدمات البحثية والاستشارية لخدمة المجتمع والتنمية البيئية', 'Activate the role of centers and units of a special nature to provide research and advisory services for community service and environmental development', 10, '2019-06-15 14:57:15', '2019-06-15 14:57:15'),
(68, 'أنشأت كلية الاقتصاد المنزلي بجامعة المنوفية المرسوم الرئاسي رقم (370) لسنة 1989 م.', 'The Faculty of Home Economics, Menoufia University, established the Presidential Decree No. (370) for the year 1989,', 11, '2019-06-15 15:00:27', '2019-06-15 15:00:27'),
(69, 'تعديل بعض أحكام اللائحة التنفيذية لقانون الجامعات', 'amending certain provisions of the executive regulations of the Universities Law', 11, '2019-06-15 15:01:06', '2019-06-15 15:01:06'),
(70, 'وفقًا لقرار المجلس الأعلى للجامعات رقم (15) في جلسته رقم (209) في 11/8/1988.', 'pursuant to the decision of the Supreme Council of Universities No. (15) in its session No. (209) on 11/8/1988.', 11, '2019-06-15 15:01:41', '2019-06-15 15:01:41'),
(71, '- التغذية وعلوم الأغذية - الملابس والنسيج - الاقتصاد المنزلي والتعليم - إدارة المنزل والمؤسسات', '- Nutrition and Food Science - Clothing and textile - Home Economics and Education - Management of home and institutions', 11, '2019-06-15 15:02:40', '2019-06-15 15:02:40'),
(72, 'مدة الدراسة للحصول على درجة البكالوريوس هي أربع سنوات وتستند الدراسة على نظام فصلين دراسيين', 'The duration of the study to obtain a bachelor\'s degree is four years and the study is based on the two-semester system', 11, '2019-06-15 15:03:04', '2019-06-15 15:03:04'),
(73, 'في عام 1991 ، قدمت الكلية مقترحاتها لبناء مبنى جديد لكلية الاقتصاد المنزلي.', 'In 1991, the College submitted its proposals for the construction of a new building for the Faculty of Home Economics.', 11, '2019-06-15 15:03:40', '2019-06-15 15:03:40'),
(74, 'قرار الأستاذ / رئيس الجامعة رقم (215) تاريخ 12/8/1992 بتشكيل لجنة لدراسة المواقع المقترحة لتأسيس كلية الاقتصاد المنزلي', 'The decision of the Professor / President of the University No. (215) dated 12/8/1992 to form a committee to study the proposed sites to establish the Faculty of Home Economics', 11, '2019-06-15 15:04:23', '2019-06-15 15:04:23'),
(75, 'تم إنشاء كلية الحقوق بموجب المرسوم الجمهوري رقم 321 لعام 1987 بهدف تعزيز الدراسات الإنسانية في الجامعة.', 'Faculty of Law was established by the Republican Decree No. 321 of 1987 in order to strengthen the humanities studies in the university.', 12, '2019-06-15 15:07:34', '2019-06-15 15:07:34'),
(76, 'في 20/9/1987 ، وافق مجلس جامعة المنوفية على بدء الدراسة في الكلية في العام الدراسي 1987/1988', 'On 20/9/1987, the Council of Menoufia University approved the start of the study at the college in the academic year 1987/1988', 12, '2019-06-15 15:07:56', '2019-06-15 15:07:56'),
(77, 'تهدف الكلية إلى تزويد المجتمع بخريجين مؤهلين قادرين ، بشرف وصدق ، على مواجهة مشاكل مع حلول قانونية عادلة', 'The College aims to provide the community with qualified graduates who are able, with honor and honesty, to face problems with fair legal solutions', 12, '2019-06-15 15:08:21', '2019-06-15 15:08:21'),
(78, 'المساهمة في تطوير وتطوير الفكر القانوني محليا وإقليميا وعالميا', 'Contributing to the development and development of legal thought locally, regionally and globally', 12, '2019-06-15 15:08:43', '2019-06-15 15:08:43'),
(79, 'العمل على تثقيف الطلاب وشحذ قدرتهم على أن يكونوا قضاة ومحامين قادرين على العمل والمنافسة في سوق العمل', 'Work on educating students and honing their ability to be judges and lawyers capable of working and competing in the labor market', 12, '2019-06-15 15:09:07', '2019-06-15 15:09:07'),
(80, 'تطوير البحث العلمي في المجال القانوني والعمل على تنمية القدرات الإبداعية والمشاركة الفعالة في تطبيق القانون.', 'To develop scientific research in the legal field and to work on the development of creative capacities and effective participation in the application of the law.', 12, '2019-06-15 15:09:30', '2019-06-15 15:09:30'),
(81, 'وضع أساسيات الحفاظ على الحريات العامة بما يصل إلى قيمة الإنسان ورؤيته بحقوقه وواجباته.', 'Putting the basics of preserving public freedoms up to the value of the human being and seeing him with his rights and duties.', 12, '2019-06-15 15:09:56', '2019-06-15 15:09:56'),
(82, 'الإرساء مع جميع قطاعات المجتمع وتقديم الخبرة والمشورة له وحل المشاكل في جميع المجالات القانونية.', 'Docking with all sectors of the community and providing expertise and advice to him and solve problems in all legal areas.', 12, '2019-06-15 15:10:16', '2019-06-15 15:10:16'),
(83, 'لنشر ثقافة العدالة وحماية حقوق الإنسان.', 'To spread the culture of justice and protect human rights.', 12, '2019-06-15 15:10:38', '2019-06-15 15:10:38'),
(84, 'صدر قرار رئيس الجمهورية رقم 1142 لعام 1976 ليشمل جامعة المنوفية ، كلية الطب ، ومقرها مدينة شبين الكوم.', 'The decree of the President of the Republic No. 1142 of 1976 was issued to include Menoufia University, Faculty of Medicine, based in the city of Shebin El Koum.', 13, '2019-06-15 15:13:03', '2019-06-15 15:13:03'),
(85, 'بدأت الدراسة في كلية الطب أولاً في المرحلة السريرية (السنة الرابعة) يوم السبت الموافق 27 أكتوبر 1984 في مبنى المعهد الوطني للكبد.', 'The study began at the Faculty of Medicine first in the clinical stage (fourth year) on Saturday, 27 October 1984 in the building of the National Institute of Liver.', 13, '2019-06-15 15:13:27', '2019-06-15 15:13:27'),
(86, 'في عام 1984 ، كان العدد الإجمالي للطلاب في الكلية 54 طالبًا.', 'In 1984, the total number of students in the college was 54 students.', 13, '2019-06-15 15:13:49', '2019-06-15 15:13:49'),
(87, 'في 1985/1986 ، انتقلت الكلية إلى المبنى الحالي خلف المستشفى التعليمي الجامعي.', 'In 1985/1986, the college moved to its current building behind the university teaching hospital.', 13, '2019-06-15 15:14:11', '2019-06-15 15:14:11'),
(88, 'تحتوي الكلية على 31 \"30 قسم علمي رئيسي\".', 'The College has 31 \"30 major scientific departments\".', 13, '2019-06-15 15:14:31', '2019-06-15 15:14:31'),
(89, 'كلية الطب الدرجة العلمية: - بكالوريوس الطب والجراحة.', 'Faculty of Medicine Degree: - Bachelor of Medicine and Surgery.', 13, '2019-06-15 15:14:54', '2019-06-15 15:14:54'),
(90, 'تمنح الكلية الدرجات العلمية: - (دبلوم - ماجستير - دكتوراه) في جميع فروع الطب.', 'The College also grants degrees: - (Diploma - Master - PhD) in all branches of medicine.', 13, '2019-06-15 15:15:18', '2019-06-15 15:15:18'),
(91, 'تتبع كلية الطب المعهد الفني للتمريض.', 'The Faculty of Medicine follows the Technical Institute of Nursing.', 13, '2019-06-15 15:15:52', '2019-06-15 15:15:52'),
(92, 'بلغ عدد الخريجين الدفعة التاسعة عشرة للعام الدراسي 2005 (327) ،', 'The number of graduates reached the nineteenth batch for the academic year 2005 (327),', 13, '2019-06-15 15:16:15', '2019-06-15 15:16:15'),
(93, 'في حين أن الخريجين كانوا أول دفعة (52) طالبًا للعام الدراسي 1987 ، فإن كلية الطب تحتفل هذا العام باستلام الدفعة رقم (29).', 'While the graduates were the first batch (52) students for the academic year 1987, the Faculty of Medicine celebrates this year to receive the payment No. (29).', 13, '2019-06-15 15:16:43', '2019-06-15 15:16:43'),
(94, 'قرار رئيس الجمهورية رقم 321 لسنة 1987 بإنشاء المعهد العالي للتمريض ، جامعة المنوفية.', 'Decree of the President of the Republic No. 321 of 1987 establishing the Higher Institute of Nursing, Menoufia University.', 14, '2019-06-15 15:18:56', '2019-06-15 15:18:56'),
(95, 'بدأت الدراسة بالعام الجامعي 1988/1989', 'The study began with the university year 1988/1989', 14, '2019-06-15 15:19:24', '2019-06-15 15:19:24'),
(96, 'فتح مدخل الدراسات العليا \"ماجستير - دكتوراه\" في المعهد (البعثات الداخلية والخارجية)', 'opening the entrance to the postgraduate studies \"MA - PhD\" in the Institute (internal and external missions)', 14, '2019-06-15 15:19:56', '2019-06-15 15:19:56'),
(97, 'بداية الدراسة في درجة البكالوريوس في العام الدراسي 91/1992 ثم مرسوم رئيس الجمهورية رقم 200 لعام 2000 المعهد العالي للتمريض لكلية التمريض.', 'the beginning of the study in the bachelor\'s degree in the academic year 91/1992  Then the President of  Republic Decree No. 200 of 2000 Higher Institute of Nursing to the College of Nursing.', 14, '2019-06-15 15:21:06', '2019-06-15 15:21:06'),
(98, 'تقع الكلية في مبنى خاص بها خلف المعهد الديني الأزهري وأمام المستشفى التعليمي في شبين الكوم', 'The college is located in its own building behind the religious institute of Azhari and in front of the educational hospital in Shebin El Koum', 14, '2019-06-15 15:21:37', '2019-06-15 15:21:37'),
(99, 'تهدف كلية التمريض - جامعة المنوفية إلى أن تكون مركزًا أكاديميًا متقدمًا للتعليم والأداء يعتمد على الأدلة والعلوم', 'The Faculty of Nursing - Menoufia University aims to be an advanced academic center for education and performance based on evidence and scientific', 14, '2019-06-15 15:22:06', '2019-06-15 15:22:06'),
(100, 'البحث في مجال التمريض وخدمة المجتمع لمواجهة التحديات الصحية للمجتمع وإعداد الخريجات القادرات على تحمل المسؤولية بشكل إيجابي', 'research in the field of nursing and community service to meet the health challenges of the community and prepare female graduates capable of taking responsibility positively', 14, '2019-06-15 15:22:26', '2019-06-15 15:22:26'),
(101, 'لتوفير الرعاية الصحية المتميزة لتلبية احتياجات المجتمع محليا ودوليا', 'to provide distinguished health care to meet the needs of the community locally and internationally', 14, '2019-06-15 15:22:50', '2019-06-15 15:22:50'),
(102, 'بموجب المرسوم الرئاسي رقم (89) لسنة 1975 بشأن اللائحة التنفيذية لقانون تنظيم الجامعات والقرارات المعدلة', 'Pursuant to Presidential Decree No. (89) for the year 1975 on the Executive Regulations of the Law on Organizing Universities and the Amended Decisions', 16, '2019-06-15 15:27:48', '2019-06-15 15:27:48'),
(103, 'موافقة المجلس الأعلى للجامعات في جلسته المنعقدة بتاريخ 16/11/1977 على إنشاء الكلية ، والمبنى ملحق بالمدرسة الثانوية الصناعية', 'the approval of the Supreme Council of Universities in its session on 16/11/1977 established the Faculty , the building is attached to the Industrial High School', 16, '2019-06-15 15:28:59', '2019-06-15 15:28:59'),
(104, 'كان عميد كلية العلوم عميد كلية العلوم ، وكان أولها البروفيسور أحمد عبد الخالق عمار ، وآخرهم الأستاذ محمد توفيق شعبان', 'The Dean of the Faculty of Science was the Dean of the Faculty of Science, the first of whom was Prof. Ahmed Abdel Khalek Ammar, the last of whom was Prof. Mohamed Tawfiq Shaaban', 16, '2019-06-15 15:29:22', '2019-06-15 15:29:22'),
(105, 'بدأت الدراسة في 1977/1978 وكان بها أقسام: الكيمياء - الطبيعة - البيولوجية', 'The study began in 1977/78 and had sections: Chemistry - Nature - Biological', 16, '2019-06-15 15:29:50', '2019-06-15 15:29:50'),
(106, 'في العام التالي ، بدأت الدراسة بأقسام: الجيولوجيا - الرياضيات', 'The following year, the study began with sections: Geology - Mathematics', 16, '2019-06-15 15:30:19', '2019-06-15 15:30:19'),
(107, 'تم نقل الكلية إلى المبنى الجديد في مجمع الكلية 1988-1989.', 'The college was moved to the new building at the College Complex 1988-1989.', 16, '2019-06-15 15:30:40', '2019-06-15 15:30:40'),
(108, 'بدأت الكلية بتطبيق نظام الساعات المعتمدة ، وهو النظام المطبق في كلية العلوم - جامعة المنوفية اعتبارًا من العام الدراسي / 19901989', 'The College started the application of the credit hours system, which is the system applied in the Faculty of Science - University of Menoufia as of the academic year / 19901989', 16, '2019-06-15 15:31:01', '2019-06-15 15:31:01'),
(109, 'توفير خريج عالي الجودة والمهني والمهني في مجالات \"الاقتصاد المنزلي - التربية الفنية - وسائل الإعلام - الموسيقى - تكنولوجيا التعليم\".', 'Providing a high-quality, professional and professional graduate in the fields of \"Home Economics - Art Education - Media - Music - Educational Technology\".', 17, '2019-06-15 15:33:47', '2019-06-15 15:33:47'),
(110, 'توفير الفرص ومجالات التعليم ومواكبة تطور تكنولوجيا المعلومات والاتصالات.', 'Providing opportunities and areas of education and keeping pace with the development of ICTs.', 17, '2019-06-15 15:34:03', '2019-06-15 15:34:03'),
(111, 'التواصل مع قطاعات المجتمع المدني وتحقيق التوأمة مع خدمة المجتمع وتنمية البيئة', 'Communicating with the civil society sectors and achieving twinning with community service and environmental development', 17, '2019-06-15 15:34:19', '2019-06-15 15:34:19'),
(112, 'أداء عضو فعال ومتميز في هيئة التدريس.', 'The performance of an effective and distinguished member of the teaching body.', 17, '2019-06-15 15:34:38', '2019-06-15 15:34:38'),
(113, 'زيادة كفاءة وإنتاجية المفردات ومكونات الكلية ، \"القطاع الأكاديمي - القطاع الإداري - القطاع الفني\" والوصول إلى الأداء الأمثل.', 'Increase the efficiency and productivity of vocabulary and components of the college, \"Academic sector - administrative sector - the technical sector\" and access to optimal performance.', 17, '2019-06-15 15:34:59', '2019-06-15 15:34:59'),
(114, 'إن رفع نظام البحث العلمي سيؤدي إلى تحقيق التحسن والتميز والمشاركة الفعالة في مفردات جامعة الأبحاث.', 'Raising the scientific research system will lead to achieving improvement and excellence and active participation in the vocabulary of the research university.', 17, '2019-06-15 15:35:16', '2019-06-15 15:35:16'),
(115, 'إعداد المهنيين الصحيين المهرة لرفع كفاءة الخدمة الصحية وتعزيز أخصائي الفريق الطبي في التقنيات الطبية المختلفة.', 'The preparation of skilled health professionals to raise the efficiency of the health service and strengthen the medical team specialists in various medical techniques.', 18, '2019-06-15 15:38:01', '2019-06-15 15:38:01'),
(116, 'تسعى الكلية إلى تخريج كوادر مؤهلة من الناحية العلمية والعملية لتكون مؤهلة لدخول سوق العمل لتقديم خدمة ذات جودة عالية للمجتمع.', 'The College seeks to graduate cadres who are competent in scientific and practical  to be qualified to enter the labor market to provide high quality service to the community.', 18, '2019-06-15 15:39:21', '2019-06-15 15:39:21'),
(117, 'إعداد الخريجين المؤهلين تأهيلا عاليا قادر على رفع كفاءة الخدمة الصحية الوقائية والعلاجية.', 'Preparation of a highly qualified graduate capable of raising the efficiency of the health service both preventive and therapeutic.', 18, '2019-06-15 15:40:12', '2019-06-15 15:40:12'),
(118, 'تطوير المهارات التطبيقية في المؤسسات الصحية.', 'Developing applied skills in health institutions.', 18, '2019-06-15 15:40:29', '2019-06-15 15:40:29'),
(119, 'توفير بيئة أكاديمية وإدارية مواتية للتعلم والإبداع.', 'Providing an academic and administrative environment conducive to learning and creativity.', 18, '2019-06-15 15:40:46', '2019-06-15 15:40:46'),
(120, 'دعم البحث العلمي لتطوير العلوم الطبية التطبيقية للمساهمة في التقدم العلمي والتقني لتطوير وخدمة المجتمع.', 'Supporting scientific research for the development of applied medical sciences to contribute to the scientific and technical progress of community development and service.', 18, '2019-06-15 15:41:03', '2019-06-15 15:41:03'),
(121, 'تم اعتماد القرار رقم 301 و 302 و 303 لسنة 1988 لإنشاء مستشفيات جامعة المنوفية.', 'Decision No. 301, 302, and 303 for the year 1988 was adopted to establish the hospitals of the University of Menoufia.', 19, '2019-06-15 15:43:07', '2019-06-15 15:43:07'),
(122, 'بدأ العمل الفعلي للمستشفيات الجامعية في عام 1994 حيث تمثل المستشفيات قيمة مساهمتها في تقديم خدمات صحية عالية الجودة لجميع أفراد المجتمع.', 'The actual work of the university hospitals started in 1994 as the hospitals represent the value of their contribution in providing high quality health services to all members of society.', 19, '2019-06-15 15:43:27', '2019-06-15 15:43:27'),
(123, 'الطب والكبد المعهد الوطني', 'Medicine and National Liver Institute', 19, '2019-06-15 15:43:48', '2019-06-15 15:43:48'),
(124, 'تعد مستشفيات الجامعة من أهم الركائز في تقديم خدمة صحية متميزة لأبناء المنوفية والمحافظات المجاورة.', 'The university hospitals are one of the most important pillars in providing a distinguished health service for the sons of Menoufia and the neighboring governorates.', 19, '2019-06-15 15:44:18', '2019-06-15 15:44:18'),
(125, 'المستشفيات الجامعية هي الملاذ الآمن لجميع أهالي المحافظة', 'The university hospitals are the safe haven for all the people of the governorate', 19, '2019-06-15 15:44:40', '2019-06-15 15:44:40'),
(126, 'وهو مصب لجميع روافد تقديم الخدمات الصحية في محافظة المنوفية.', 'which is the estuary for all tributaries providing health service in the governorate of Menoufia.', 19, '2019-06-15 15:45:04', '2019-06-15 15:45:04'),
(127, 'قد يكون هذا نتيجة وجود خدمات صحية مقدمة من خلال نظام علاج متكامل', 'This may be the result of the existence of health services provided through an integrated treatment system', 19, '2019-06-15 15:45:26', '2019-06-15 15:45:26'),
(128, 'والذي يحتوي على جميع عناصر النجاح في توافر الكوادر العلمية على أعلى مستوى علمي من خبرات أعضاء هيئة التدريس والهيئة الداعمة', 'which has all the elements of success of the availability of scientific cadres at the highest scientific level of the expertise of faculty members and the supporting body', 19, '2019-06-15 15:45:47', '2019-06-15 15:45:47'),
(129, 'وكذلك مواكبة التطور العلمي والتكنولوجي في التشخيص والعلاج.', 'as well as keeping pace with the scientific and technological development in diagnosis and treatment.', 19, '2019-06-15 15:46:07', '2019-06-15 15:46:07'),
(130, 'لا تقتصر المستشفيات على الخدمات الصحية المقدمة لمواطني المقاطعة', 'The hospitals are not limited to the health services provided to the citizens of the province', 19, '2019-06-15 15:46:27', '2019-06-15 15:46:27'),
(131, 'هناك خدمات تعليمية وتقنية لأهالي المحافظة من خلال برامج طب الأسرة ورعاية البيئة وبرامج الاهتمام ومكافحة العدوى', 'there are educational and technical services for  people of the province through the programs of family medicine and the care of the environment and attention and infection control programs', 19, '2019-06-15 15:47:23', '2019-06-15 15:47:23'),
(132, 'يشمل نظام المستشفى: مستشفى الطوارئ والنقد - المستشفى الرئيسي - مستشفى الأقصر - مستشفى الأورام - مستشفى منشأة سلطان', 'The hospital system includes: Emergency and Critical Hospital - The main hospital - Hospital Luxor -  Oncology Hospital - Manshat Sultan Hospital', 19, '2019-06-15 15:48:55', '2019-06-15 15:48:55'),
(133, 'التي تعتبر هدية ثمينة من جامعة المنوفية للمجتمعات المصرية والعربية للقضاء على العديد من الأمراض الناجمة عن الأمراض الخطيرة التي لا تزال تنتشر في المنطقة', 'which is considered a precious gift from Menoufia University to the Egyptian and Arab societies to eradicate many diseases caused by serious diseases that continue to spread in the region', 21, '2019-06-15 15:52:45', '2019-06-15 15:52:45'),
(134, 'التي تؤثر على الكبيرة والصغيرة وتهدد المجتمع واقتصاده. تم تأسيسه أولاً وأخيراً لخدمة المجتمع الذي يعيش فيه والمساهمة في حل مشاكله.', 'affecting the large and small and threatening the society and its economy. Was established first and finally to serve the society in which it lives and contribute to solving its problems.', 21, '2019-06-15 15:53:12', '2019-06-15 15:53:12'),
(135, 'أنشئ كمؤسسة متخصصة لعلاج أمراض الكبد في مصر والعالم العربي وفقًا للقرار الوزاري رقم 1256 المؤرخ 7/12/1985.', 'Established as a specialized institute for the treatment of liver diseases in Egypt and the Arab world in accordance with Ministerial Resolution No. 1256 of 7/12/1985.', 21, '2019-06-15 15:53:46', '2019-06-15 15:53:46'),
(136, 'تم اختيار محافظة المنوفية كمكان لتأسيس هذا المعهد', 'The governorate of Menoufia was chosen as a place for the establishment of this institute', 21, '2019-06-15 15:55:27', '2019-06-15 15:55:27'),
(137, 'حيث ارتفعت نسبة الإصابات الكبدية بين سكان محافظات وسط الدلتا في مارس 1987.', 'where the percentage of hepatic infections among the population of the governorates of Central Delta started to increase in March 1987.', 21, '2019-06-15 15:56:11', '2019-06-15 15:56:11');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title_ar`, `title_en`, `desc_ar`, `desc_en`, `created_at`, `updated_at`) VALUES
(7, 'تأمل جامعة المنوفية أن تكون إحدى الجامعات العربية والإفريقية الرائدة في تطوير المعرفة ورفاهية المجتمع.', 'Menoufia University  hopes to be one of the leading Arab and African universities  in the development of knowledge and the welfare of society.', 'تأمل جامعة المنوفية أن تكون إحدى الجامعات العربية والإفريقية الرائدة في تطوير المعرفة ورفاهية المجتمع.', 'Menoufia University  hopes to be one of the leading Arab and African universities  in the development of knowledge and the welfare of society.', '2019-06-15 13:21:18', '2019-06-15 13:21:18'),
(8, 'تأمل جامعة المنوفية أن تكون إحدى الجامعات العربية والإفريقية الرائدة في تطوير المعرفة ورفاهية المجتمع.', 'Menoufia University  hopes to be one of the leading Arab and African universities  in the development of knowledge and the welfare of society.', 'تأمل جامعة المنوفية أن تكون إحدى الجامعات العربية والإفريقية الرائدة في تطوير المعرفة ورفاهية المجتمع.', 'Menoufia University  hopes to be one of the leading Arab and African universities  in the development of knowledge and the welfare of society.', '2019-06-15 13:28:03', '2019-06-15 13:28:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@menofia.com', '$2y$10$1I870fV.8qMJco6mPO.6VO3lXP/.fyAZ/V2mc6ItREvLXPkl47zsq', 'YHDHxq8dd2vyylNeyqkf69JIhWdmbdUcWdvCJYgoWCXiXUZXjsummIpQmFLy', '2019-06-12 19:33:24', '2019-06-12 19:33:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colleges`
--
ALTER TABLE `colleges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_imageable_type_imageable_id_index` (`imageable_type`,`imageable_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `objectives`
--
ALTER TABLE `objectives`
  ADD PRIMARY KEY (`id`),
  ADD KEY `objectives_college_id_foreign` (`college_id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `colleges`
--
ALTER TABLE `colleges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `objectives`
--
ALTER TABLE `objectives`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `objectives`
--
ALTER TABLE `objectives`
  ADD CONSTRAINT `objectives_college_id_foreign` FOREIGN KEY (`college_id`) REFERENCES `colleges` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
