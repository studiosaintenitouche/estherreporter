-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 25, 2020 at 02:07 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wordpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `estherreporter_commentmeta`
--

CREATE TABLE `estherreporter_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `estherreporter_comments`
--

CREATE TABLE `estherreporter_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `estherreporter_comments`
--

INSERT INTO `estherreporter_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-04-13 14:56:23', '2020-04-13 12:56:23', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `estherreporter_links`
--

CREATE TABLE `estherreporter_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `estherreporter_options`
--

CREATE TABLE `estherreporter_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `estherreporter_options`
--

INSERT INTO `estherreporter_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888/estherreporter', 'yes'),
(2, 'home', 'http://localhost:8888/estherreporter', 'yes'),
(3, 'blogname', 'Esther Reporter', 'yes'),
(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'poitiers.cheval@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:152:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:9:\"videos/?$\";s:26:\"index.php?post_type=videos\";s:39:\"videos/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=videos&feed=$matches[1]\";s:34:\"videos/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=videos&feed=$matches[1]\";s:26:\"videos/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=videos&paged=$matches[1]\";s:11:\"podcasts/?$\";s:28:\"index.php?post_type=podcasts\";s:41:\"podcasts/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=podcasts&feed=$matches[1]\";s:36:\"podcasts/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=podcasts&feed=$matches[1]\";s:28:\"podcasts/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=podcasts&paged=$matches[1]\";s:43:\"type/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?type=$matches[1]&feed=$matches[2]\";s:38:\"type/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?type=$matches[1]&feed=$matches[2]\";s:19:\"type/(.+?)/embed/?$\";s:37:\"index.php?type=$matches[1]&embed=true\";s:31:\"type/(.+?)/page/?([0-9]{1,})/?$\";s:44:\"index.php?type=$matches[1]&paged=$matches[2]\";s:13:\"type/(.+?)/?$\";s:26:\"index.php?type=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:33:\"socials/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"socials/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"socials/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"socials/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"socials/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"socials/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"socials/(.+?)/embed/?$\";s:40:\"index.php?socials=$matches[1]&embed=true\";s:26:\"socials/(.+?)/trackback/?$\";s:34:\"index.php?socials=$matches[1]&tb=1\";s:34:\"socials/(.+?)/page/?([0-9]{1,})/?$\";s:47:\"index.php?socials=$matches[1]&paged=$matches[2]\";s:41:\"socials/(.+?)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?socials=$matches[1]&cpage=$matches[2]\";s:30:\"socials/(.+?)(?:/([0-9]+))?/?$\";s:46:\"index.php?socials=$matches[1]&page=$matches[2]\";s:34:\"videos/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"videos/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"videos/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"videos/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"videos/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"videos/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"videos/([^/]+)/embed/?$\";s:39:\"index.php?videos=$matches[1]&embed=true\";s:27:\"videos/([^/]+)/trackback/?$\";s:33:\"index.php?videos=$matches[1]&tb=1\";s:47:\"videos/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?videos=$matches[1]&feed=$matches[2]\";s:42:\"videos/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?videos=$matches[1]&feed=$matches[2]\";s:35:\"videos/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?videos=$matches[1]&paged=$matches[2]\";s:42:\"videos/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?videos=$matches[1]&cpage=$matches[2]\";s:31:\"videos/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?videos=$matches[1]&page=$matches[2]\";s:23:\"videos/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"videos/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"videos/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"videos/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"videos/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"videos/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"podcasts/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"podcasts/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"podcasts/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"podcasts/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"podcasts/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"podcasts/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"podcasts/([^/]+)/embed/?$\";s:41:\"index.php?podcasts=$matches[1]&embed=true\";s:29:\"podcasts/([^/]+)/trackback/?$\";s:35:\"index.php?podcasts=$matches[1]&tb=1\";s:49:\"podcasts/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?podcasts=$matches[1]&feed=$matches[2]\";s:44:\"podcasts/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?podcasts=$matches[1]&feed=$matches[2]\";s:37:\"podcasts/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?podcasts=$matches[1]&paged=$matches[2]\";s:44:\"podcasts/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?podcasts=$matches[1]&cpage=$matches[2]\";s:33:\"podcasts/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?podcasts=$matches[1]&page=$matches[2]\";s:25:\"podcasts/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"podcasts/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"podcasts/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"podcasts/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"podcasts/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"podcasts/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'saintenitouche', 'yes'),
(41, 'stylesheet', 'saintenitouche', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '47018', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '2', 'yes'),
(84, 'page_on_front', '5', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1602334582', 'yes'),
(94, 'initial_db_version', '47018', 'yes'),
(95, 'estherreporter_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'fr_FR', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:7:{i:1590008183;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1590022583;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1590065783;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1590065807;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1590065808;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1590497783;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(117, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1587978189;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(134, 'can_compress_scripts', '1', 'no'),
(155, '_transient_health-check-site-status-result', '{\"good\":11,\"recommended\":6,\"critical\":0}', 'yes'),
(160, 'current_theme', 'Sainte Nitouche', 'yes'),
(161, 'theme_mods_saintenitouche', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(162, 'theme_switched', '', 'yes'),
(163, 'category_children', 'a:0:{}', 'yes'),
(200, 'recently_activated', 'a:1:{s:19:\"akismet/akismet.php\";i:1588175871;}', 'yes'),
(201, 'acf_version', '5.7.10', 'yes'),
(203, 'widget_akismet_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(208, 'cptui_new_install', 'false', 'yes'),
(209, 'cptui_post_types', 'a:2:{s:6:\"videos\";a:30:{s:4:\"name\";s:6:\"videos\";s:5:\"label\";s:7:\"Vidéos\";s:14:\"singular_label\";s:6:\"Vidéo\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:4:\"true\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:8:\"podcasts\";a:30:{s:4:\"name\";s:8:\"podcasts\";s:5:\"label\";s:8:\"Podcasts\";s:14:\"singular_label\";s:7:\"Podcast\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:4:\"true\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes'),
(225, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:25:\"poitiers.cheval@gmail.com\";s:7:\"version\";s:5:\"5.4.1\";s:9:\"timestamp\";i:1588235126;}', 'no'),
(322, 'options_instagram_url', 'https://www.instagram.com/estherreporter/', 'no'),
(323, '_options_instagram_url', 'field_5cff7bdfda1cb', 'no'),
(324, 'options_youtube_url', 'https://www.youtube.com/channel/UCATMfqNNOxrf4CwmXKyaS5Q', 'no'),
(325, '_options_youtube_url', 'field_5cff7bedda1cc', 'no'),
(326, 'options_Twitter', 'https://twitter.com/EstherMeunier', 'no'),
(327, '_options_Twitter', 'field_5cff7c05da1cd', 'no'),
(328, 'options_twitter_url', 'https://twitter.com/EstherMeunier', 'no'),
(329, '_options_twitter_url', 'field_5cff7c05da1cd', 'no'),
(398, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.4.1.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.4.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1589988720;s:15:\"version_checked\";s:5:\"5.4.1\";s:12:\"translations\";a:0:{}}', 'no'),
(399, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1589988727;s:7:\"checked\";a:1:{s:14:\"saintenitouche\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(404, '_site_transient_timeout_php_check_78e1776a2900a8656cebe7d7ea2a07cc', '1590566121', 'no'),
(405, '_site_transient_php_check_78e1776a2900a8656cebe7d7ea2a07cc', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(415, '_transient_timeout_acf_plugin_updates', '1590161522', 'no'),
(416, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:6:\"5.8.11\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.4.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:6:\"5.7.10\";}}', 'no'),
(417, '_site_transient_timeout_theme_roots', '1589990525', 'no'),
(418, '_site_transient_theme_roots', 'a:1:{s:14:\"saintenitouche\";s:7:\"/themes\";}', 'no'),
(419, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1589988729;s:7:\"checked\";a:4:{s:34:\"advanced-custom-fields-pro/acf.php\";s:6:\"5.7.10\";s:19:\"akismet/akismet.php\";s:5:\"4.1.4\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.7.4\";}s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.5\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:6:\"5.8.11\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.4.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.7.4\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.7.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `estherreporter_postmeta`
--

CREATE TABLE `estherreporter_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `estherreporter_postmeta`
--

INSERT INTO `estherreporter_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1589296699:1'),
(4, 5, '_wp_page_template', 'template-home.php'),
(6, 9, '_edit_last', '1'),
(7, 9, '_edit_lock', '1588686641:1'),
(8, 14, '_edit_last', '1'),
(9, 14, '_edit_lock', '1589374171:1'),
(10, 17, '_edit_last', '1'),
(11, 17, '_edit_lock', '1589374184:1'),
(12, 20, '_edit_last', '1'),
(13, 20, '_edit_lock', '1588257147:1'),
(14, 20, 'youtube_code', 'https://www.youtube.com/embed/QBd9Vn2-Tto'),
(15, 20, '_youtube_code', 'field_5ea9a4ce244d0'),
(16, 21, '_edit_last', '1'),
(17, 21, 'youtube_code', 'https://www.youtube.com/embed/QH8KZpwhDgc'),
(18, 21, '_youtube_code', 'field_5ea9a4ce244d0'),
(19, 21, '_edit_lock', '1588257219:1'),
(20, 22, '_edit_last', '1'),
(21, 22, 'youtube_code', 'https://www.youtube.com/embed/HhTzKW4uwoY'),
(22, 22, '_youtube_code', 'field_5ea9a4ce244d0'),
(23, 22, '_edit_lock', '1588257254:1'),
(24, 23, '_edit_last', '1'),
(25, 23, 'podcast_link', 'https://play.acast.com/s/activistes/1eb786e1-77c9-48dd-9077-85be5cd8c85e'),
(26, 23, '_podcast_link', 'field_5eaa8cf8f3627'),
(27, 23, '_edit_lock', '1588257514:1'),
(28, 24, '_edit_last', '1'),
(29, 24, 'podcast_link', 'https://play.acast.com/s/activistes/6285832a-6606-4348-ae87-d42d2f7e9344'),
(30, 24, '_podcast_link', 'field_5eaa8cf8f3627'),
(31, 24, '_edit_lock', '1588259408:1'),
(32, 26, '_edit_last', '1'),
(33, 26, '_edit_lock', '1588237668:1'),
(34, 26, 'podcast_link', 'https://play.acast.com/s/activistes/9e0b0f5b-890e-4314-8a91-3c79f56e0804'),
(35, 26, '_podcast_link', 'field_5eaa8cf8f3627'),
(36, 27, '_edit_last', '1'),
(37, 27, 'podcast_link', 'https://play.acast.com/s/activistes/3692240f-8a95-4588-9d1a-92d48f7abc85'),
(38, 27, '_podcast_link', 'field_5eaa8cf8f3627'),
(39, 27, '_edit_lock', '1588237689:1'),
(40, 28, '_edit_last', '1'),
(41, 28, 'podcast_link', 'https://play.acast.com/s/activistes/7c9c6f51-24a9-409a-940e-3cb07632d7a0'),
(42, 28, '_podcast_link', 'field_5eaa8cf8f3627'),
(43, 28, '_edit_lock', '1588237723:1'),
(44, 29, '_edit_last', '1'),
(45, 29, 'podcast_link', 'https://play.acast.com/s/activistes/b5366946-eddf-4764-b16f-51885593f7cd'),
(46, 29, '_podcast_link', 'field_5eaa8cf8f3627'),
(47, 29, '_edit_lock', '1588237744:1'),
(48, 1, '_edit_lock', '1588237269:1'),
(49, 23, 'resume_podcast', 'Non, cette semaine, Activistes ! n\'a pas voyagé dans le temps, pour aller tendre son micro à Hubertine Auclert. Mais nous sommes bel et bien allées donner la parole à celles qui œuvrent dans l\'ombre pour faire avancer le front de la lutte contre le sexisme, et pour l\'égalité. L\'une des voix de cette lutte est celle de Clémence Pajot, directrice du centre Hubertine Auclert : le centre francilien pour l\'égalité entre les femmes et les hommes.'),
(50, 23, '_resume_podcast', 'field_5eaa946f6a369'),
(51, 24, 'resume_podcast', '[TW : violences sexuelles] « T\'as pensé à ? » : cette interrogation vous est peut-être familière. C\'est celle qu\'a choisi Coline pour dénoncer la charge mentale : le fait de gérer, organiser, prévoir la vie d\'un foyer. Sur son compte Instagram, @taspensea, les témoignages mettent en lumière cette inégalité qui reste encore très majoritairement genrée. Mais l\'activisme de Coline ne s\'arrête pas là. Dans cet épisode, elle parle aussi de son passé de syndicaliste étudiante, et explique comment une agression sexuelle l\'a menée à cesser toute activité militante pendant 8 ans. On évoque aussi son métier, prof d\'histoire géo, et la claque que fut son arrivée dans le 93 pour enseigner. Finalement, on balaie un très grand nombre de sujets, et c\'est peut-être une des choses que je préfère dans Activistes : découvrir l\'ampleur de l\'engagement de personnes qu\'on avait contacté sur un sujet précis au départ.'),
(52, 24, '_resume_podcast', 'field_5eaa946f6a369'),
(53, 26, 'resume_podcast', 'Samantha Bailly est une autrice engagée : elle est l\'actuelle présidente de la Ligue des Auteurs Professionnels, en pointe de la lutte pour la constitution d\'un réel statut des artistes-auteurs. Qu\'est-ce que c\'est ? C\'est justement le sujet de cet épisode ! Rapport Racine, à-valoir, rémunération, bref toutes les clés pour comprendre la situation des acteurs et actrices de la création aujourd\'hui.'),
(54, 26, '_resume_podcast', 'field_5eaa946f6a369'),
(55, 27, 'resume_podcast', 'Consommer responsable, n’est-ce pas une injonction paradoxale ? Tout acte de consommation n’est-il pas par définition à impact négatif, dans un système de production et de distribution déconnecté des enjeux sociaux et environnementaux ? Cette semaine, rencontre avec Youna Zerrouki, chargée de communication pour l’entreprise EthicAdvisor. On y parle choix de consommation et moyens de pouvoir faire des choix éclairés, impact positif, lien social, où est passé l’argent des hôpitaux, découragement, cercle vertueux et monde d’après.'),
(56, 27, '_resume_podcast', 'field_5eaa946f6a369'),
(57, 28, 'resume_podcast', 'Anaïs Condomines est journaliste. Peut-on être journaliste et Activistes ? C\'est une bonne question, c\'est pourquoi on a effectivement longuement abordé ce point. Dans un monde où les Fake News sont devenues une arme puissante de « réinformation » — selon ceux qui les manipulent — le journalisme est, plus que jamais, un pilier de nos démocraties.'),
(58, 28, '_resume_podcast', 'field_5eaa946f6a369'),
(59, 29, 'resume_podcast', 'Aujourd\'hui dans Activistes ! : Zainab Fasiki, artiste, bédéiste marocaine, qui milite pour sa liberté individuelle – notamment sexuelle. Du dessin comme thérapie à la BD comme outil politique, il n\'y a qu\'un pas que Zainab a franchi, même si au départ, elle ne pensait pas que son intimité revêtait de tels enjeux.'),
(60, 29, '_resume_podcast', 'field_5eaa946f6a369'),
(61, 1, '_wp_trash_meta_status', 'publish'),
(62, 1, '_wp_trash_meta_time', '1588238048'),
(63, 1, '_wp_desired_post_slug', 'bonjour-tout-le-monde'),
(64, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(65, 34, '_edit_last', '1'),
(66, 34, '_edit_lock', '1589374282:1'),
(69, 34, 'post_link', 'https://www.madmoizelle.com/argentine-avortement-930757'),
(70, 34, '_post_link', 'field_5eaa8fa6211b9'),
(71, 34, 'resume_article', 'À l’occasion de la sortie du film Femmes d’Argentine (Que Sea Ley), Faustine fait le point sur la situation en Argentine, où l’annonce d’un projet de loi sur le droit à l’IVG et les manifestations de milliers de femmes donnent de l’espoir.'),
(72, 34, '_resume_article', 'field_5eaa94852cf19'),
(73, 35, 'post_link', 'https://www.madmoizelle.com/argentine-avortement-930757'),
(74, 35, '_post_link', 'field_5eaa8fa6211b9'),
(75, 35, 'resume_article', 'À l’occasion de la sortie du film Femmes d’Argentine (Que Sea Ley), Faustine fait le point sur la situation en Argentine, où l’annonce d’un projet de loi sur le droit à l’IVG et les manifestations de milliers de femmes donnent de l’espoir.'),
(76, 35, '_resume_article', 'field_5eaa94852cf19'),
(77, 36, '_edit_last', '1'),
(78, 36, '_edit_lock', '1589374267:1'),
(81, 36, 'post_link', 'https://www.madmoizelle.com/papillomavirus-hommes-vaccin-717061'),
(82, 36, '_post_link', 'field_5eaa8fa6211b9'),
(83, 36, 'resume_article', 'Le vaccin contre le papillomavirus, vous connaissez ? Il est efficace sur les hommes. Et jusqu\'ici, le Haut Conseil de la Santé Publique ne leur recommandait pas la vaccination. Mais ce temps est révolu.'),
(84, 36, '_resume_article', 'field_5eaa94852cf19'),
(85, 37, 'post_link', 'https://www.madmoizelle.com/papillomavirus-hommes-vaccin-717061'),
(86, 37, '_post_link', 'field_5eaa8fa6211b9'),
(87, 37, 'resume_article', 'Le vaccin contre le papillomavirus, vous connaissez ? Il est efficace sur les hommes. Et jusqu\'ici, le Haut Conseil de la Santé Publique ne leur recommandait pas la vaccination. Mais ce temps est révolu.'),
(88, 37, '_resume_article', 'field_5eaa94852cf19'),
(89, 38, '_edit_last', '1'),
(90, 38, '_edit_lock', '1589374248:1'),
(93, 38, 'post_link', 'https://www.madmoizelle.com/vih-malade-temoignage-861357'),
(94, 38, '_post_link', 'field_5eaa8fa6211b9'),
(95, 38, 'resume_article', 'JD et Nathalie ont contracté le VIH il y a plus de 30 ans, ils racontent leur quotidien en tant que personnes séropositives.'),
(96, 38, '_resume_article', 'field_5eaa94852cf19'),
(97, 39, 'post_link', 'https://www.madmoizelle.com/vih-malade-temoignage-861357'),
(98, 39, '_post_link', 'field_5eaa8fa6211b9'),
(99, 39, 'resume_article', 'JD et Nathalie ont contracté le VIH il y a plus de 30 ans, ils racontent leur quotidien en tant que personnes séropositives.'),
(100, 39, '_resume_article', 'field_5eaa94852cf19'),
(101, 40, '_edit_last', '1'),
(102, 40, '_edit_lock', '1589374232:1'),
(105, 40, 'post_link', 'https://www.madmoizelle.com/cadeau-enfant-non-genre-pandacraft-960601'),
(106, 40, '_post_link', 'field_5eaa8fa6211b9'),
(107, 40, 'resume_article', 'Des cadeaux pour enfants chouettes, qui ne soient pas genrés : la perle rare ? Pandacraft est peut-être la solution pour ta petite nièce ou ton petit cousin !'),
(108, 40, '_resume_article', 'field_5eaa94852cf19'),
(109, 41, 'post_link', 'https://www.madmoizelle.com/cadeau-enfant-non-genre-pandacraft-960601'),
(110, 41, '_post_link', 'field_5eaa8fa6211b9'),
(111, 41, 'resume_article', 'Des cadeaux pour enfants chouettes, qui ne soient pas genrés : la perle rare ? Pandacraft est peut-être la solution pour ta petite nièce ou ton petit cousin !'),
(112, 41, '_resume_article', 'field_5eaa94852cf19'),
(113, 42, '_edit_last', '1'),
(114, 42, '_edit_lock', '1589374217:1'),
(117, 42, 'post_link', 'https://www.madmoizelle.com/colocation-conseils-824559'),
(118, 42, '_post_link', 'field_5eaa8fa6211b9'),
(119, 42, 'resume_article', 'Réussir une colocation, c\'est tout un art. Argent, courses, ménage... Voici comment mettre les chances de ton côté !'),
(120, 42, '_resume_article', 'field_5eaa94852cf19'),
(121, 43, 'post_link', 'https://www.madmoizelle.com/colocation-conseils-824559'),
(122, 43, '_post_link', 'field_5eaa8fa6211b9'),
(123, 43, 'resume_article', 'Réussir une colocation, c\'est tout un art. Argent, courses, ménage... Voici comment mettre les chances de ton côté !'),
(124, 43, '_resume_article', 'field_5eaa94852cf19'),
(125, 44, '_edit_last', '1'),
(126, 44, '_edit_lock', '1589374205:1'),
(129, 44, 'post_link', 'https://www.madmoizelle.com/arreter-porter-soutiens-gorge-946335'),
(130, 44, '_post_link', 'field_5eaa8fa6211b9'),
(131, 44, 'resume_article', 'Esther porte de moins en moins de soutiens-gorge, et elle a constaté que les regards portés sur elle ont évolué.'),
(132, 44, '_resume_article', 'field_5eaa94852cf19'),
(133, 45, 'post_link', 'https://www.madmoizelle.com/arreter-porter-soutiens-gorge-946335'),
(134, 45, '_post_link', 'field_5eaa8fa6211b9'),
(135, 45, 'resume_article', 'Esther porte de moins en moins de soutiens-gorge, et elle a constaté que les regards portés sur elle ont évolué.'),
(136, 45, '_resume_article', 'field_5eaa94852cf19'),
(137, 47, '_edit_last', '1'),
(138, 47, '_edit_lock', '1589296699:1'),
(139, 49, '_edit_last', '1'),
(140, 49, '_edit_lock', '1588664299:1'),
(141, 52, '_edit_last', '1'),
(142, 52, 'texte_intro', 'Et olim licet otiosae sint tribus pacataeque centuriae et nulla suffragiorum certaminaset Pompiliani redierit securitas temporis, per omnes tamen quotquot sunt partes terrarum,ut domina suscipitur et regina et ubique patrum reverenda cum auctoritate canities populique Romani nomen circumspectum et verecundu'),
(143, 52, '_texte_intro', 'field_5eaac5acf5b0b'),
(144, 52, '_edit_lock', '1588250265:1'),
(145, 54, '_wp_attached_file', '2020/04/instagram-1.png'),
(146, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:23:\"2020/04/instagram-1.png\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"instagram-1-800x800.png\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"instagram-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"instagram-1-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"small\";a:4:{s:4:\"file\";s:23:\"instagram-1-500x500.png\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"x-small\";a:4:{s:4:\"file\";s:23:\"instagram-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:8:\"xx-small\";a:4:{s:4:\"file\";s:23:\"instagram-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:23:\"instagram-1-700x200.png\";s:5:\"width\";i:700;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(147, 53, '_edit_last', '1'),
(148, 53, 'texte_a_propos', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(149, 53, '_texte_a_propos', 'field_5eaac63fa1401'),
(150, 53, 'image_a_propos', '54'),
(151, 53, '_image_a_propos', 'field_5eaac65847bfe'),
(152, 53, '_edit_lock', '1588250346:1'),
(153, 5, '_edit_last', '1'),
(154, 5, 'texte_intro', 'Et olim licet otiosae sint tribus pacataeque centuriae et nulla suffragiorum certaminaset Pompiliani redierit securitas temporis, per omnes tamen quotquot sunt partes terrarum,ut domina suscipitur et regina et ubique patrum reverenda cum auctoritate canities populique Romani nomen circumspectum et verecundu'),
(155, 5, '_texte_intro', 'field_5eaac5acf5b0b'),
(156, 5, 'texte_a_propos', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(157, 5, '_texte_a_propos', 'field_5eaac63fa1401'),
(158, 5, 'image_a_propos', '54'),
(159, 5, '_image_a_propos', 'field_5eaac65847bfe'),
(160, 55, 'texte_intro', 'Et olim licet otiosae sint tribus pacataeque centuriae et nulla suffragiorum certaminaset Pompiliani redierit securitas temporis, per omnes tamen quotquot sunt partes terrarum,ut domina suscipitur et regina et ubique patrum reverenda cum auctoritate canities populique Romani nomen circumspectum et verecundu'),
(161, 55, '_texte_intro', 'field_5eaac5acf5b0b'),
(162, 55, 'texte_a_propos', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(163, 55, '_texte_a_propos', 'field_5eaac63fa1401'),
(164, 55, 'image_a_propos', '54'),
(165, 55, '_image_a_propos', 'field_5eaac65847bfe'),
(166, 5, 'home_intro_text', 'Et olim licet otiosae sint tribus pacataeque centuriae et nulla suffragiorum certaminaset Pompiliani redierit securitas temporis, per omnes tamen quotquot sunt partes terrarum,ut domina suscipitur et regina et ubique patrum reverenda cum auctoritate canities populique Romani nomen circumspectum et verecundu'),
(167, 5, '_home_intro_text', 'field_5eaac5acf5b0b'),
(168, 5, 'home_about_us_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(169, 5, '_home_about_us_text', 'field_5eaac63fa1401'),
(170, 5, 'home_about_us_image', '54'),
(171, 5, '_home_about_us_image', 'field_5eaac65847bfe'),
(172, 56, 'texte_intro', 'Et olim licet otiosae sint tribus pacataeque centuriae et nulla suffragiorum certaminaset Pompiliani redierit securitas temporis, per omnes tamen quotquot sunt partes terrarum,ut domina suscipitur et regina et ubique patrum reverenda cum auctoritate canities populique Romani nomen circumspectum et verecundu'),
(173, 56, '_texte_intro', 'field_5eaac5acf5b0b'),
(174, 56, 'texte_a_propos', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(175, 56, '_texte_a_propos', 'field_5eaac63fa1401'),
(176, 56, 'image_a_propos', '54'),
(177, 56, '_image_a_propos', 'field_5eaac65847bfe'),
(178, 56, 'home_intro_text', 'Et olim licet otiosae sint tribus pacataeque centuriae et nulla suffragiorum certaminaset Pompiliani redierit securitas temporis, per omnes tamen quotquot sunt partes terrarum,ut domina suscipitur et regina et ubique patrum reverenda cum auctoritate canities populique Romani nomen circumspectum et verecundu'),
(179, 56, '_home_intro_text', 'field_5eaac5acf5b0b'),
(180, 56, 'home_about_us_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(181, 56, '_home_about_us_text', 'field_5eaac63fa1401'),
(182, 56, 'home_about_us_image', '54'),
(183, 56, '_home_about_us_image', 'field_5eaac65847bfe'),
(184, 23, 'podcast_excerpt', 'Non, cette semaine, Activistes ! n\'a pas voyagé dans le temps, pour aller tendre son micro à Hubertine Auclert. Mais nous sommes bel et bien allées donner la parole à celles qui œuvrent dans l\'ombre pour faire avancer le front de la lutte contre le sexisme, et pour l\'égalité. L\'une des voix de cette lutte est celle de Clémence Pajot, directrice du centre Hubertine Auclert : le centre francilien pour l\'égalité entre les femmes et les hommes.'),
(185, 23, '_podcast_excerpt', 'field_5eaa946f6a369'),
(186, 58, '_wp_attached_file', '2020/04/instagram-6.png'),
(187, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:23:\"2020/04/instagram-6.png\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"instagram-6-800x800.png\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"instagram-6-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"instagram-6-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"small\";a:4:{s:4:\"file\";s:23:\"instagram-6-500x500.png\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"x-small\";a:4:{s:4:\"file\";s:23:\"instagram-6-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:8:\"xx-small\";a:4:{s:4:\"file\";s:23:\"instagram-6-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:23:\"instagram-6-700x200.png\";s:5:\"width\";i:700;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(188, 59, 'texte_intro', 'Et olim licet otiosae sint tribus pacataeque centuriae et nulla suffragiorum certaminaset Pompiliani redierit securitas temporis, per omnes tamen quotquot sunt partes terrarum,ut domina suscipitur et regina et ubique patrum reverenda cum auctoritate canities populique Romani nomen circumspectum et verecundu'),
(189, 59, '_texte_intro', 'field_5eaac5acf5b0b'),
(190, 59, 'texte_a_propos', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(191, 59, '_texte_a_propos', 'field_5eaac63fa1401'),
(192, 59, 'image_a_propos', '54'),
(193, 59, '_image_a_propos', 'field_5eaac65847bfe'),
(194, 59, 'home_intro_text', 'Et olim licet otiosae sint tribus pacataeque centuriae et nulla suffragiorum certaminaset Pompiliani redierit securitas temporis, per omnes tamen quotquot sunt partes terrarum,ut domina suscipitur et regina et ubique patrum reverenda cum auctoritate canities populique Romani nomen circumspectum et verecundu'),
(195, 59, '_home_intro_text', 'field_5eaac5acf5b0b'),
(196, 59, 'home_about_us_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(197, 59, '_home_about_us_text', 'field_5eaac63fa1401'),
(198, 59, 'home_about_us_image', '58'),
(199, 59, '_home_about_us_image', 'field_5eaac65847bfe'),
(200, 60, 'texte_intro', 'Et olim licet otiosae sint tribus pacataeque centuriae et nulla suffragiorum certaminaset Pompiliani redierit securitas temporis, per omnes tamen quotquot sunt partes terrarum,ut domina suscipitur et regina et ubique patrum reverenda cum auctoritate canities populique Romani nomen circumspectum et verecundu'),
(201, 60, '_texte_intro', 'field_5eaac5acf5b0b'),
(202, 60, 'texte_a_propos', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(203, 60, '_texte_a_propos', 'field_5eaac63fa1401'),
(204, 60, 'image_a_propos', '54'),
(205, 60, '_image_a_propos', 'field_5eaac65847bfe'),
(206, 60, 'home_intro_text', 'J\'aime la bite'),
(207, 60, '_home_intro_text', 'field_5eaac5acf5b0b'),
(208, 60, 'home_about_us_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(209, 60, '_home_about_us_text', 'field_5eaac63fa1401'),
(210, 60, 'home_about_us_image', '58'),
(211, 60, '_home_about_us_image', 'field_5eaac65847bfe'),
(212, 61, 'texte_intro', 'Et olim licet otiosae sint tribus pacataeque centuriae et nulla suffragiorum certaminaset Pompiliani redierit securitas temporis, per omnes tamen quotquot sunt partes terrarum,ut domina suscipitur et regina et ubique patrum reverenda cum auctoritate canities populique Romani nomen circumspectum et verecundu'),
(213, 61, '_texte_intro', 'field_5eaac5acf5b0b'),
(214, 61, 'texte_a_propos', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(215, 61, '_texte_a_propos', 'field_5eaac63fa1401'),
(216, 61, 'image_a_propos', '54'),
(217, 61, '_image_a_propos', 'field_5eaac65847bfe'),
(218, 61, 'home_intro_text', 'J\'aime la bite'),
(219, 61, '_home_intro_text', 'field_5eaac5acf5b0b'),
(220, 61, 'home_about_us_text', 'J\'aime la bite'),
(221, 61, '_home_about_us_text', 'field_5eaac63fa1401'),
(222, 61, 'home_about_us_image', '58'),
(223, 61, '_home_about_us_image', 'field_5eaac65847bfe'),
(224, 63, 'texte_intro', 'Et olim licet otiosae sint tribus pacataeque centuriae et nulla suffragiorum certaminaset Pompiliani redierit securitas temporis, per omnes tamen quotquot sunt partes terrarum,ut domina suscipitur et regina et ubique patrum reverenda cum auctoritate canities populique Romani nomen circumspectum et verecundu'),
(225, 63, '_texte_intro', 'field_5eaac5acf5b0b'),
(226, 63, 'texte_a_propos', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(227, 63, '_texte_a_propos', 'field_5eaac63fa1401'),
(228, 63, 'image_a_propos', '54'),
(229, 63, '_image_a_propos', 'field_5eaac65847bfe'),
(230, 63, 'home_intro_text', 'Et olim licet otiosae sint tribus pacataeque centuriae et nulla suffragiorum certaminaset Pompiliani redierit securitas temporis, per omnes tamen quotquot sunt partes terrarum,ut domina suscipitur et regina et ubique patrum reverenda cum auctoritate canities populique Romani nomen circumspectum et verecundu'),
(231, 63, '_home_intro_text', 'field_5eaac5acf5b0b'),
(232, 63, 'home_about_us_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(233, 63, '_home_about_us_text', 'field_5eaac63fa1401'),
(234, 63, 'home_about_us_image', '58'),
(235, 63, '_home_about_us_image', 'field_5eaac65847bfe'),
(236, 64, 'texte_intro', 'Et olim licet otiosae sint tribus pacataeque centuriae et nulla suffragiorum certaminaset Pompiliani redierit securitas temporis, per omnes tamen quotquot sunt partes terrarum,ut domina suscipitur et regina et ubique patrum reverenda cum auctoritate canities populique Romani nomen circumspectum et verecundu'),
(237, 64, '_texte_intro', 'field_5eaac5acf5b0b'),
(238, 64, 'texte_a_propos', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(239, 64, '_texte_a_propos', 'field_5eaac63fa1401'),
(240, 64, 'image_a_propos', '54'),
(241, 64, '_image_a_propos', 'field_5eaac65847bfe'),
(242, 64, 'home_intro_text', 'Et olim licet otiosae sint tribus pacataeque centuriae et nulla suffragiorum certaminaset Pompiliani redierit securitas temporis, per omnes tamen quotquot sunt partes terrarum,ut domina suscipitur et regina et ubique patrum reverenda cum auctoritate canities populique Romani nomen circumspectum et verecundu'),
(243, 64, '_home_intro_text', 'field_5eaac5acf5b0b'),
(244, 64, 'home_about_us_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(245, 64, '_home_about_us_text', 'field_5eaac63fa1401'),
(246, 64, 'home_about_us_image', '54'),
(247, 64, '_home_about_us_image', 'field_5eaac65847bfe'),
(248, 66, '_edit_last', '1'),
(249, 66, '_edit_lock', '1588257367:1'),
(250, 66, 'youtube_code', 'https://www.youtube.com/embed/tsh0Ba3s_as'),
(251, 66, '_youtube_code', 'field_5ea9a4ce244d0'),
(252, 67, '_edit_last', '1'),
(253, 67, 'youtube_code', 'https://www.youtube.com/embed/ZU65djEDWn8'),
(254, 67, '_youtube_code', 'field_5ea9a4ce244d0'),
(255, 67, '_edit_lock', '1589279320:1'),
(256, 29, '_wp_trash_meta_status', 'publish'),
(257, 29, '_wp_trash_meta_time', '1588261471'),
(258, 29, '_wp_desired_post_slug', 'zainab-fasiki-depenaliser-le-desir-au-maroc'),
(259, 28, '_wp_trash_meta_status', 'publish'),
(260, 28, '_wp_trash_meta_time', '1588261471'),
(261, 28, '_wp_desired_post_slug', 'anais-condomines-journaliste-engagee'),
(262, 27, '_wp_trash_meta_status', 'publish'),
(263, 27, '_wp_trash_meta_time', '1588261471'),
(264, 27, '_wp_desired_post_slug', 'consommer-responsable-une-injonction-paradoxale'),
(265, 26, '_wp_trash_meta_status', 'publish'),
(266, 26, '_wp_trash_meta_time', '1588261471'),
(267, 26, '_wp_desired_post_slug', 'samantha-bailly-autrice-engagee-pour-sa-profession-2'),
(268, 24, '_wp_trash_meta_status', 'publish'),
(269, 24, '_wp_trash_meta_time', '1588261471'),
(270, 24, '_wp_desired_post_slug', 'samantha-bailly-autrice-engagee-pour-sa-profession'),
(271, 23, '_wp_trash_meta_status', 'publish'),
(272, 23, '_wp_trash_meta_time', '1588261471'),
(273, 23, '_wp_desired_post_slug', 'clemence-pajot-directrice-du-centre-hubertine-auclert'),
(274, 68, '_edit_last', '1'),
(275, 68, '_edit_lock', '1588583893:1'),
(276, 69, '_wp_attached_file', '2020/04/podcast_img_1.png'),
(277, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2020/04/podcast_img_1.png\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"podcast_img_1-800x800.png\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"podcast_img_1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"podcast_img_1-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"small\";a:4:{s:4:\"file\";s:25:\"podcast_img_1-500x500.png\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"x-small\";a:4:{s:4:\"file\";s:25:\"podcast_img_1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:8:\"xx-small\";a:4:{s:4:\"file\";s:25:\"podcast_img_1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:25:\"podcast_img_1-700x200.png\";s:5:\"width\";i:700;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(278, 70, '_wp_attached_file', '2020/04/podcast_img_2.png'),
(279, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3000;s:6:\"height\";i:3000;s:4:\"file\";s:25:\"2020/04/podcast_img_2.png\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"podcast_img_2-800x800.png\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"podcast_img_2-1200x1200.png\";s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"podcast_img_2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"podcast_img_2-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:27:\"podcast_img_2-1536x1536.png\";s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:27:\"podcast_img_2-2048x2048.png\";s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"x-large\";a:4:{s:4:\"file\";s:27:\"podcast_img_2-1600x1600.png\";s:5:\"width\";i:1600;s:6:\"height\";i:1600;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"small\";a:4:{s:4:\"file\";s:25:\"podcast_img_2-500x500.png\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"x-small\";a:4:{s:4:\"file\";s:25:\"podcast_img_2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:8:\"xx-small\";a:4:{s:4:\"file\";s:25:\"podcast_img_2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:25:\"podcast_img_2-700x200.png\";s:5:\"width\";i:700;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(280, 71, '_wp_attached_file', '2020/04/podcast_img_3.jpg'),
(281, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2020/04/podcast_img_3.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"podcast_img_3-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"podcast_img_3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"podcast_img_3-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:25:\"podcast_img_3-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"x-small\";a:4:{s:4:\"file\";s:25:\"podcast_img_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"xx-small\";a:4:{s:4:\"file\";s:25:\"podcast_img_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:25:\"podcast_img_3-700x200.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(282, 72, '_wp_attached_file', '2020/04/podcast_img_4.jpg'),
(283, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1400;s:6:\"height\";i:1400;s:4:\"file\";s:25:\"2020/04/podcast_img_4.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"podcast_img_4-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"podcast_img_4-1200x1200.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"podcast_img_4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"podcast_img_4-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:25:\"podcast_img_4-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"x-small\";a:4:{s:4:\"file\";s:25:\"podcast_img_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"xx-small\";a:4:{s:4:\"file\";s:25:\"podcast_img_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:25:\"podcast_img_4-700x200.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(284, 73, '_wp_attached_file', '2020/04/podcast_img_5-scaled.jpg'),
(285, 73, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:2560;s:4:\"file\";s:32:\"2020/04/podcast_img_5-scaled.jpg\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"podcast_img_5-800x800.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"podcast_img_5-1200x1200.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"podcast_img_5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"podcast_img_5-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:27:\"podcast_img_5-1536x1536.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:27:\"podcast_img_5-2048x2048.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"x-large\";a:4:{s:4:\"file\";s:27:\"podcast_img_5-1600x1600.jpg\";s:5:\"width\";i:1600;s:6:\"height\";i:1600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:25:\"podcast_img_5-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"x-small\";a:4:{s:4:\"file\";s:25:\"podcast_img_5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"xx-small\";a:4:{s:4:\"file\";s:25:\"podcast_img_5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:25:\"podcast_img_5-700x200.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:17:\"podcast_img_5.jpg\";}'),
(286, 74, '_wp_attached_file', '2020/04/podcast_img_6.png'),
(287, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2020/04/podcast_img_6.png\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"podcast_img_6-800x800.png\";s:5:\"width\";i:800;s:6:\"height\";i:800;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"podcast_img_6-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"podcast_img_6-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"small\";a:4:{s:4:\"file\";s:25:\"podcast_img_6-500x500.png\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"x-small\";a:4:{s:4:\"file\";s:25:\"podcast_img_6-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:8:\"xx-small\";a:4:{s:4:\"file\";s:25:\"podcast_img_6-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:25:\"podcast_img_6-700x200.png\";s:5:\"width\";i:700;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(288, 68, 'podcast_link', 'https://play.acast.com/s/activistes/b5366946-eddf-4764-b16f-51885593f7cd'),
(289, 68, '_podcast_link', 'field_5eaa8cf8f3627'),
(290, 68, 'podcast_excerpt', 'Aujourd\'hui dans Activistes ! : Zainab Fasiki, artiste, bédéiste marocaine, qui milite pour sa liberté individuelle – notamment sexuelle. '),
(291, 68, '_podcast_excerpt', 'field_5eaa946f6a369'),
(292, 68, 'podcast_image', '74'),
(293, 68, '_podcast_image', 'field_5eaad82576492'),
(294, 75, '_edit_last', '1'),
(295, 75, '_edit_lock', '1588583871:1'),
(296, 75, 'podcast_link', 'https://play.acast.com/s/activistes/7c9c6f51-24a9-409a-940e-3cb07632d7a0'),
(297, 75, '_podcast_link', 'field_5eaa8cf8f3627'),
(298, 75, 'podcast_excerpt', 'Anaïs Condomines est journaliste. Peut-on être journaliste et Activistes ? C\'est une bonne question, c\'est pourquoi on a effectivement longuement abordé ce point. '),
(299, 75, '_podcast_excerpt', 'field_5eaa946f6a369'),
(300, 75, 'podcast_image', '73'),
(301, 75, '_podcast_image', 'field_5eaad82576492'),
(302, 76, '_edit_last', '1'),
(303, 76, '_edit_lock', '1588583848:1'),
(304, 76, 'podcast_link', 'https://play.acast.com/s/activistes/3692240f-8a95-4588-9d1a-92d48f7abc85'),
(305, 76, '_podcast_link', 'field_5eaa8cf8f3627'),
(306, 76, 'podcast_excerpt', 'Consommer responsable, n’est-ce pas une injonction paradoxale ? '),
(307, 76, '_podcast_excerpt', 'field_5eaa946f6a369'),
(308, 76, 'podcast_image', '72'),
(309, 76, '_podcast_image', 'field_5eaad82576492'),
(310, 77, '_edit_last', '1'),
(311, 77, '_edit_lock', '1588583825:1'),
(312, 77, 'podcast_link', 'https://play.acast.com/s/activistes/9e0b0f5b-890e-4314-8a91-3c79f56e0804'),
(313, 77, '_podcast_link', 'field_5eaa8cf8f3627'),
(314, 77, 'podcast_excerpt', 'Samantha Bailly est une autrice engagée : elle est l\'actuelle présidente de la Ligue des Auteurs Professionnels, en pointe de la lutte pour la constitution d\'un réel statut des artistes-auteurs. '),
(315, 77, '_podcast_excerpt', 'field_5eaa946f6a369'),
(316, 77, 'podcast_image', '71'),
(317, 77, '_podcast_image', 'field_5eaad82576492'),
(318, 78, '_edit_last', '1'),
(319, 78, '_edit_lock', '1588583928:1'),
(320, 78, 'podcast_link', 'https://play.acast.com/s/activistes/6285832a-6606-4348-ae87-d42d2f7e9344'),
(321, 78, '_podcast_link', 'field_5eaa8cf8f3627'),
(322, 78, 'podcast_excerpt', '« T\'as pensé à ? » : cette interrogation vous est peut-être familière. C\'est celle qu\'a choisi Coline pour dénoncer la charge mentale : le fait de gérer, organiser, prévoir la vie d\'un foyer. '),
(323, 78, '_podcast_excerpt', 'field_5eaa946f6a369'),
(324, 78, 'podcast_image', '70'),
(325, 78, '_podcast_image', 'field_5eaad82576492'),
(326, 79, '_edit_last', '1'),
(327, 79, '_edit_lock', '1589292231:1'),
(328, 79, 'podcast_link', 'https://play.acast.com/s/activistes/1eb786e1-77c9-48dd-9077-85be5cd8c85e'),
(329, 79, '_podcast_link', 'field_5eaa8cf8f3627'),
(330, 79, 'podcast_excerpt', 'Non, cette semaine, Activistes ! n\'a pas voyagé dans le temps, pour aller tendre son micro à Hubertine Auclert. '),
(331, 79, '_podcast_excerpt', 'field_5eaa946f6a369'),
(332, 79, 'podcast_image', '69'),
(333, 79, '_podcast_image', 'field_5eaad82576492'),
(334, 80, '_wp_attached_file', '2020/04/argentine-avortement-rejet.jpg'),
(335, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:420;s:4:\"file\";s:38:\"2020/04/argentine-avortement-rejet.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"argentine-avortement-rejet-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:38:\"argentine-avortement-rejet-500x328.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"x-small\";a:4:{s:4:\"file\";s:38:\"argentine-avortement-rejet-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"xx-small\";a:4:{s:4:\"file\";s:38:\"argentine-avortement-rejet-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:38:\"argentine-avortement-rejet-640x200.jpg\";s:5:\"width\";i:640;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(338, 34, 'post_excerpt', 'À l’occasion de la sortie du film Femmes d’Argentine (Que Sea Ley), Faustine fait le point sur la situation en Argentine, où l’annonce d’un projet de loi sur le droit à l’IVG et les manifestations de milliers de femmes donnent de l’espoir.'),
(339, 34, '_post_excerpt', 'field_5eaa94852cf19'),
(340, 34, 'post_image', '80'),
(341, 34, '_post_image', 'field_5eaadaa122dce'),
(342, 81, 'post_link', 'https://www.madmoizelle.com/argentine-avortement-930757'),
(343, 81, '_post_link', 'field_5eaa8fa6211b9'),
(344, 81, 'resume_article', 'À l’occasion de la sortie du film Femmes d’Argentine (Que Sea Ley), Faustine fait le point sur la situation en Argentine, où l’annonce d’un projet de loi sur le droit à l’IVG et les manifestations de milliers de femmes donnent de l’espoir.'),
(345, 81, '_resume_article', 'field_5eaa94852cf19'),
(346, 81, 'post_excerpt', 'À l’occasion de la sortie du film Femmes d’Argentine (Que Sea Ley), Faustine fait le point sur la situation en Argentine, où l’annonce d’un projet de loi sur le droit à l’IVG et les manifestations de milliers de femmes donnent de l’espoir.'),
(347, 81, '_post_excerpt', 'field_5eaa94852cf19'),
(348, 81, 'post_image', '80'),
(349, 81, '_post_image', 'field_5eaadaa122dce'),
(350, 82, '_wp_attached_file', '2020/04/papillomavirus-hommes-vaccin.jpg'),
(351, 82, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:420;s:4:\"file\";s:40:\"2020/04/papillomavirus-hommes-vaccin.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"papillomavirus-hommes-vaccin-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:40:\"papillomavirus-hommes-vaccin-500x328.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"x-small\";a:4:{s:4:\"file\";s:40:\"papillomavirus-hommes-vaccin-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"xx-small\";a:4:{s:4:\"file\";s:40:\"papillomavirus-hommes-vaccin-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:40:\"papillomavirus-hommes-vaccin-640x200.jpg\";s:5:\"width\";i:640;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(354, 36, 'post_excerpt', 'Le vaccin contre le papillomavirus, vous connaissez ? Il est efficace sur les hommes. Et jusqu\'ici, le Haut Conseil de la Santé Publique ne leur recommandait pas la vaccination. Mais ce temps est révolu.');
INSERT INTO `estherreporter_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(355, 36, '_post_excerpt', 'field_5eaa94852cf19'),
(356, 36, 'post_image', '82'),
(357, 36, '_post_image', 'field_5eaadaa122dce'),
(358, 83, 'post_link', 'https://www.madmoizelle.com/papillomavirus-hommes-vaccin-717061'),
(359, 83, '_post_link', 'field_5eaa8fa6211b9'),
(360, 83, 'resume_article', 'Le vaccin contre le papillomavirus, vous connaissez ? Il est efficace sur les hommes. Et jusqu\'ici, le Haut Conseil de la Santé Publique ne leur recommandait pas la vaccination. Mais ce temps est révolu.'),
(361, 83, '_resume_article', 'field_5eaa94852cf19'),
(362, 83, 'post_excerpt', 'Le vaccin contre le papillomavirus, vous connaissez ? Il est efficace sur les hommes. Et jusqu\'ici, le Haut Conseil de la Santé Publique ne leur recommandait pas la vaccination. Mais ce temps est révolu.'),
(363, 83, '_post_excerpt', 'field_5eaa94852cf19'),
(364, 83, 'post_image', '82'),
(365, 83, '_post_image', 'field_5eaadaa122dce'),
(366, 84, '_wp_attached_file', '2020/04/vih-malade-temoignage.jpg'),
(367, 84, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:420;s:4:\"file\";s:33:\"2020/04/vih-malade-temoignage.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"vih-malade-temoignage-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:33:\"vih-malade-temoignage-500x328.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"x-small\";a:4:{s:4:\"file\";s:33:\"vih-malade-temoignage-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"xx-small\";a:4:{s:4:\"file\";s:33:\"vih-malade-temoignage-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:33:\"vih-malade-temoignage-640x200.jpg\";s:5:\"width\";i:640;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(370, 38, 'post_excerpt', 'JD et Nathalie ont contracté le VIH il y a plus de 30 ans, ils racontent leur quotidien en tant que personnes séropositives.'),
(371, 38, '_post_excerpt', 'field_5eaa94852cf19'),
(372, 38, 'post_image', '84'),
(373, 38, '_post_image', 'field_5eaadaa122dce'),
(374, 85, 'post_link', 'https://www.madmoizelle.com/vih-malade-temoignage-861357'),
(375, 85, '_post_link', 'field_5eaa8fa6211b9'),
(376, 85, 'resume_article', 'JD et Nathalie ont contracté le VIH il y a plus de 30 ans, ils racontent leur quotidien en tant que personnes séropositives.'),
(377, 85, '_resume_article', 'field_5eaa94852cf19'),
(378, 85, 'post_excerpt', 'JD et Nathalie ont contracté le VIH il y a plus de 30 ans, ils racontent leur quotidien en tant que personnes séropositives.'),
(379, 85, '_post_excerpt', 'field_5eaa94852cf19'),
(380, 85, 'post_image', '84'),
(381, 85, '_post_image', 'field_5eaadaa122dce'),
(382, 86, '_wp_attached_file', '2020/04/cadeau-enfant-non-genre-pandacraft.jpg'),
(383, 86, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:420;s:4:\"file\";s:46:\"2020/04/cadeau-enfant-non-genre-pandacraft.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"cadeau-enfant-non-genre-pandacraft-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:46:\"cadeau-enfant-non-genre-pandacraft-500x328.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"x-small\";a:4:{s:4:\"file\";s:46:\"cadeau-enfant-non-genre-pandacraft-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"xx-small\";a:4:{s:4:\"file\";s:46:\"cadeau-enfant-non-genre-pandacraft-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:46:\"cadeau-enfant-non-genre-pandacraft-640x200.jpg\";s:5:\"width\";i:640;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(386, 40, 'post_excerpt', 'Des cadeaux pour enfants chouettes, qui ne soient pas genrés : la perle rare ? Pandacraft est peut-être la solution pour ta petite nièce ou ton petit cousin !'),
(387, 40, '_post_excerpt', 'field_5eaa94852cf19'),
(388, 40, 'post_image', '86'),
(389, 40, '_post_image', 'field_5eaadaa122dce'),
(390, 87, 'post_link', 'https://www.madmoizelle.com/cadeau-enfant-non-genre-pandacraft-960601'),
(391, 87, '_post_link', 'field_5eaa8fa6211b9'),
(392, 87, 'resume_article', 'Des cadeaux pour enfants chouettes, qui ne soient pas genrés : la perle rare ? Pandacraft est peut-être la solution pour ta petite nièce ou ton petit cousin !'),
(393, 87, '_resume_article', 'field_5eaa94852cf19'),
(394, 87, 'post_excerpt', 'Des cadeaux pour enfants chouettes, qui ne soient pas genrés : la perle rare ? Pandacraft est peut-être la solution pour ta petite nièce ou ton petit cousin !'),
(395, 87, '_post_excerpt', 'field_5eaa94852cf19'),
(396, 87, 'post_image', '86'),
(397, 87, '_post_image', 'field_5eaadaa122dce'),
(398, 88, '_wp_attached_file', '2020/04/reussir-colocation-conseils.jpg'),
(399, 88, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:420;s:4:\"file\";s:39:\"2020/04/reussir-colocation-conseils.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"reussir-colocation-conseils-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:39:\"reussir-colocation-conseils-500x328.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"x-small\";a:4:{s:4:\"file\";s:39:\"reussir-colocation-conseils-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"xx-small\";a:4:{s:4:\"file\";s:39:\"reussir-colocation-conseils-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:39:\"reussir-colocation-conseils-640x200.jpg\";s:5:\"width\";i:640;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(402, 42, 'post_excerpt', 'Réussir une colocation, c\'est tout un art. Argent, courses, ménage... Voici comment mettre les chances de ton côté !'),
(403, 42, '_post_excerpt', 'field_5eaa94852cf19'),
(404, 42, 'post_image', '88'),
(405, 42, '_post_image', 'field_5eaadaa122dce'),
(406, 89, 'post_link', 'https://www.madmoizelle.com/colocation-conseils-824559'),
(407, 89, '_post_link', 'field_5eaa8fa6211b9'),
(408, 89, 'resume_article', 'Réussir une colocation, c\'est tout un art. Argent, courses, ménage... Voici comment mettre les chances de ton côté !'),
(409, 89, '_resume_article', 'field_5eaa94852cf19'),
(410, 89, 'post_excerpt', 'Réussir une colocation, c\'est tout un art. Argent, courses, ménage... Voici comment mettre les chances de ton côté !'),
(411, 89, '_post_excerpt', 'field_5eaa94852cf19'),
(412, 89, 'post_image', '88'),
(413, 89, '_post_image', 'field_5eaadaa122dce'),
(414, 90, '_wp_attached_file', '2020/04/ne-pas-porter-soutien-gorges-regards.jpg'),
(415, 90, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:420;s:4:\"file\";s:48:\"2020/04/ne-pas-porter-soutien-gorges-regards.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"ne-pas-porter-soutien-gorges-regards-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:48:\"ne-pas-porter-soutien-gorges-regards-500x328.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:328;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"x-small\";a:4:{s:4:\"file\";s:48:\"ne-pas-porter-soutien-gorges-regards-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"xx-small\";a:4:{s:4:\"file\";s:48:\"ne-pas-porter-soutien-gorges-regards-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:48:\"ne-pas-porter-soutien-gorges-regards-640x200.jpg\";s:5:\"width\";i:640;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(418, 44, 'post_excerpt', 'Esther porte de moins en moins de soutiens-gorge, et elle a constaté que les regards portés sur elle ont évolué.'),
(419, 44, '_post_excerpt', 'field_5eaa94852cf19'),
(420, 44, 'post_image', '90'),
(421, 44, '_post_image', 'field_5eaadaa122dce'),
(422, 91, 'post_link', 'https://www.madmoizelle.com/arreter-porter-soutiens-gorge-946335'),
(423, 91, '_post_link', 'field_5eaa8fa6211b9'),
(424, 91, 'resume_article', 'Esther porte de moins en moins de soutiens-gorge, et elle a constaté que les regards portés sur elle ont évolué.'),
(425, 91, '_resume_article', 'field_5eaa94852cf19'),
(426, 91, 'post_excerpt', 'Esther porte de moins en moins de soutiens-gorge, et elle a constaté que les regards portés sur elle ont évolué.'),
(427, 91, '_post_excerpt', 'field_5eaa94852cf19'),
(428, 91, 'post_image', '90'),
(429, 91, '_post_image', 'field_5eaadaa122dce'),
(430, 94, '_wp_attached_file', '2020/05/001-instagram.png'),
(431, 94, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:25:\"2020/05/001-instagram.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"001-instagram-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"small\";a:4:{s:4:\"file\";s:25:\"001-instagram-500x500.png\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"x-small\";a:4:{s:4:\"file\";s:25:\"001-instagram-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:8:\"xx-small\";a:4:{s:4:\"file\";s:25:\"001-instagram-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:25:\"001-instagram-512x200.png\";s:5:\"width\";i:512;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(432, 5, 'home_intro_network', '94'),
(433, 5, '_home_intro_network', 'field_5eb115f188a69'),
(434, 95, 'texte_intro', 'Et olim licet otiosae sint tribus pacataeque centuriae et nulla suffragiorum certaminaset Pompiliani redierit securitas temporis, per omnes tamen quotquot sunt partes terrarum,ut domina suscipitur et regina et ubique patrum reverenda cum auctoritate canities populique Romani nomen circumspectum et verecundu'),
(435, 95, '_texte_intro', 'field_5eaac5acf5b0b'),
(436, 95, 'texte_a_propos', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(437, 95, '_texte_a_propos', 'field_5eaac63fa1401'),
(438, 95, 'image_a_propos', '54'),
(439, 95, '_image_a_propos', 'field_5eaac65847bfe'),
(440, 95, 'home_intro_text', 'Et olim licet otiosae sint tribus pacataeque centuriae et nulla suffragiorum certaminaset Pompiliani redierit securitas temporis, per omnes tamen quotquot sunt partes terrarum,ut domina suscipitur et regina et ubique patrum reverenda cum auctoritate canities populique Romani nomen circumspectum et verecundu'),
(441, 95, '_home_intro_text', 'field_5eaac5acf5b0b'),
(442, 95, 'home_about_us_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(443, 95, '_home_about_us_text', 'field_5eaac63fa1401'),
(444, 95, 'home_about_us_image', '54'),
(445, 95, '_home_about_us_image', 'field_5eaac65847bfe'),
(446, 95, 'home_intro_network', '94'),
(447, 95, '_home_intro_network', 'field_5eb115f188a69'),
(448, 5, 'home_intro_url_youtube', 'https://www.youtube.com/channel/UCATMfqNNOxrf4CwmXKyaS5Q'),
(449, 5, '_home_intro_url_youtube', 'field_5eb115f188a69'),
(450, 5, 'home_intro_url_instagram', 'https://www.instagram.com/estherreporter/'),
(451, 5, '_home_intro_url_instagram', 'field_5eb11af163be1'),
(452, 5, 'home_intro_url_twitter', 'https://twitter.com/EstherMeunier'),
(453, 5, '_home_intro_url_twitter', 'field_5eb11b2963be2'),
(454, 98, 'texte_intro', 'Et olim licet otiosae sint tribus pacataeque centuriae et nulla suffragiorum certaminaset Pompiliani redierit securitas temporis, per omnes tamen quotquot sunt partes terrarum,ut domina suscipitur et regina et ubique patrum reverenda cum auctoritate canities populique Romani nomen circumspectum et verecundu'),
(455, 98, '_texte_intro', 'field_5eaac5acf5b0b'),
(456, 98, 'texte_a_propos', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(457, 98, '_texte_a_propos', 'field_5eaac63fa1401'),
(458, 98, 'image_a_propos', '54'),
(459, 98, '_image_a_propos', 'field_5eaac65847bfe'),
(460, 98, 'home_intro_text', 'Et olim licet otiosae sint tribus pacataeque centuriae et nulla suffragiorum certaminaset Pompiliani redierit securitas temporis, per omnes tamen quotquot sunt partes terrarum,ut domina suscipitur et regina et ubique patrum reverenda cum auctoritate canities populique Romani nomen circumspectum et verecundu'),
(461, 98, '_home_intro_text', 'field_5eaac5acf5b0b'),
(462, 98, 'home_about_us_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(463, 98, '_home_about_us_text', 'field_5eaac63fa1401'),
(464, 98, 'home_about_us_image', '54'),
(465, 98, '_home_about_us_image', 'field_5eaac65847bfe'),
(466, 98, 'home_intro_network', '94'),
(467, 98, '_home_intro_network', 'field_5eb115f188a69'),
(468, 98, 'home_intro_url_youtube', 'https://www.youtube.com/channel/UCATMfqNNOxrf4CwmXKyaS5Q'),
(469, 98, '_home_intro_url_youtube', 'field_5eb115f188a69'),
(470, 98, 'home_intro_url_instagram', 'https://www.instagram.com/estherreporter/'),
(471, 98, '_home_intro_url_instagram', 'field_5eb11af163be1'),
(472, 98, 'home_intro_url_twitter', 'https://twitter.com/EstherMeunier'),
(473, 98, '_home_intro_url_twitter', 'field_5eb11b2963be2'),
(474, 5, 'socialmedia_image', '94'),
(475, 5, '_socialmedia_image', 'field_5eb12a5b02cc2'),
(476, 100, 'texte_intro', 'Et olim licet otiosae sint tribus pacataeque centuriae et nulla suffragiorum certaminaset Pompiliani redierit securitas temporis, per omnes tamen quotquot sunt partes terrarum,ut domina suscipitur et regina et ubique patrum reverenda cum auctoritate canities populique Romani nomen circumspectum et verecundu'),
(477, 100, '_texte_intro', 'field_5eaac5acf5b0b'),
(478, 100, 'texte_a_propos', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(479, 100, '_texte_a_propos', 'field_5eaac63fa1401'),
(480, 100, 'image_a_propos', '54'),
(481, 100, '_image_a_propos', 'field_5eaac65847bfe'),
(482, 100, 'home_intro_text', 'Et olim licet otiosae sint tribus pacataeque centuriae et nulla suffragiorum certaminaset Pompiliani redierit securitas temporis, per omnes tamen quotquot sunt partes terrarum,ut domina suscipitur et regina et ubique patrum reverenda cum auctoritate canities populique Romani nomen circumspectum et verecundu'),
(483, 100, '_home_intro_text', 'field_5eaac5acf5b0b'),
(484, 100, 'home_about_us_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(485, 100, '_home_about_us_text', 'field_5eaac63fa1401'),
(486, 100, 'home_about_us_image', '54'),
(487, 100, '_home_about_us_image', 'field_5eaac65847bfe'),
(488, 100, 'home_intro_network', '94'),
(489, 100, '_home_intro_network', 'field_5eb115f188a69'),
(490, 100, 'home_intro_url_youtube', 'https://www.youtube.com/channel/UCATMfqNNOxrf4CwmXKyaS5Q'),
(491, 100, '_home_intro_url_youtube', 'field_5eb115f188a69'),
(492, 100, 'home_intro_url_instagram', 'https://www.instagram.com/estherreporter/'),
(493, 100, '_home_intro_url_instagram', 'field_5eb11af163be1'),
(494, 100, 'home_intro_url_twitter', 'https://twitter.com/EstherMeunier'),
(495, 100, '_home_intro_url_twitter', 'field_5eb11b2963be2'),
(496, 100, 'socialmedia_image', '94'),
(497, 100, '_socialmedia_image', 'field_5eb12a5b02cc2'),
(498, 5, 'home_intro_link_youtube', 'https://www.youtube.com/channel/UCATMfqNNOxrf4CwmXKyaS5Q'),
(499, 5, '_home_intro_link_youtube', 'field_5eb115f188a69'),
(500, 5, 'home_intro_link_instagram', 'https://www.instagram.com/estherreporter/'),
(501, 5, '_home_intro_link_instagram', 'field_5eb11af163be1'),
(502, 5, 'home_intro_link_twitter', 'https://twitter.com/EstherMeunier'),
(503, 5, '_home_intro_link_twitter', 'field_5eb11b2963be2'),
(504, 101, 'texte_intro', 'Et olim licet otiosae sint tribus pacataeque centuriae et nulla suffragiorum certaminaset Pompiliani redierit securitas temporis, per omnes tamen quotquot sunt partes terrarum,ut domina suscipitur et regina et ubique patrum reverenda cum auctoritate canities populique Romani nomen circumspectum et verecundu'),
(505, 101, '_texte_intro', 'field_5eaac5acf5b0b'),
(506, 101, 'texte_a_propos', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(507, 101, '_texte_a_propos', 'field_5eaac63fa1401'),
(508, 101, 'image_a_propos', '54'),
(509, 101, '_image_a_propos', 'field_5eaac65847bfe'),
(510, 101, 'home_intro_text', 'Et olim licet otiosae sint tribus pacataeque centuriae et nulla suffragiorum certaminaset Pompiliani redierit securitas temporis, per omnes tamen quotquot sunt partes terrarum,ut domina suscipitur et regina et ubique patrum reverenda cum auctoritate canities populique Romani nomen circumspectum et verecundu'),
(511, 101, '_home_intro_text', 'field_5eaac5acf5b0b'),
(512, 101, 'home_about_us_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(513, 101, '_home_about_us_text', 'field_5eaac63fa1401'),
(514, 101, 'home_about_us_image', '54'),
(515, 101, '_home_about_us_image', 'field_5eaac65847bfe'),
(516, 101, 'home_intro_network', '94'),
(517, 101, '_home_intro_network', 'field_5eb115f188a69'),
(518, 101, 'home_intro_url_youtube', 'https://www.youtube.com/channel/UCATMfqNNOxrf4CwmXKyaS5Q'),
(519, 101, '_home_intro_url_youtube', 'field_5eb115f188a69'),
(520, 101, 'home_intro_url_instagram', 'https://www.instagram.com/estherreporter/'),
(521, 101, '_home_intro_url_instagram', 'field_5eb11af163be1'),
(522, 101, 'home_intro_url_twitter', 'https://twitter.com/EstherMeunier'),
(523, 101, '_home_intro_url_twitter', 'field_5eb11b2963be2'),
(524, 101, 'socialmedia_image', '94'),
(525, 101, '_socialmedia_image', 'field_5eb12a5b02cc2'),
(526, 101, 'home_intro_link_youtube', 'https://www.youtube.com/channel/UCATMfqNNOxrf4CwmXKyaS5Q'),
(527, 101, '_home_intro_link_youtube', 'field_5eb115f188a69'),
(528, 101, 'home_intro_link_instagram', 'https://www.instagram.com/estherreporter/'),
(529, 101, '_home_intro_link_instagram', 'field_5eb11af163be1'),
(530, 101, 'home_intro_link_twitter', 'https://twitter.com/EstherMeunier'),
(531, 101, '_home_intro_link_twitter', 'field_5eb11b2963be2'),
(532, 102, 'home_intro_text', 'Et olim licet otiosae sint tribus pacataeque centuriae et nulla suffragiorum certaminaset Pompiliani redierit securitas temporis, per omnes tamen quotquot sunt partes terrarum,ut domina suscipitur et regina et ubique patrum reverenda cum auctoritate canities populique Romani nomen circumspectum et verecundu'),
(533, 102, '_home_intro_text', 'field_5eaac5acf5b0b'),
(534, 102, 'home_intro_link_youtube', 'https://www.youtube.com/channel/UCATMfqNNOxrf4CwmXKyaS5Q'),
(535, 102, '_home_intro_link_youtube', 'field_5eb115f188a69'),
(536, 102, 'home_intro_link_instagram', 'https://www.instagram.com/estherreporter/'),
(537, 102, '_home_intro_link_instagram', 'field_5eb11af163be1'),
(538, 102, 'home_intro_link_twitter', 'https://twitter.com/EstherMeunier'),
(539, 102, '_home_intro_link_twitter', 'field_5eb11b2963be2'),
(540, 102, 'home_about_us_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(541, 102, '_home_about_us_text', 'field_5eaac63fa1401'),
(542, 102, 'home_about_us_image', '54'),
(543, 102, '_home_about_us_image', 'field_5eaac65847bfe'),
(544, 103, 'youtube_code', 'https://www.youtube.com/embed/ZU65djEDWn8'),
(545, 103, '_youtube_code', 'field_5ea9a4ce244d0'),
(552, 102, 'texte_intro', 'Et olim licet otiosae sint tribus pacataeque centuriae et nulla suffragiorum certaminaset Pompiliani redierit securitas temporis, per omnes tamen quotquot sunt partes terrarum,ut domina suscipitur et regina et ubique patrum reverenda cum auctoritate canities populique Romani nomen circumspectum et verecundu'),
(553, 102, '_texte_intro', 'field_5eaac5acf5b0b'),
(554, 102, 'texte_a_propos', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(555, 102, '_texte_a_propos', 'field_5eaac63fa1401'),
(556, 102, 'image_a_propos', '54'),
(557, 102, '_image_a_propos', 'field_5eaac65847bfe'),
(558, 102, 'home_intro_network', '94'),
(559, 102, '_home_intro_network', 'field_5eb115f188a69'),
(560, 102, 'home_intro_url_youtube', 'https://www.youtube.com/channel/UCATMfqNNOxrf4CwmXKyaS5Q'),
(561, 102, '_home_intro_url_youtube', 'field_5eb115f188a69'),
(562, 102, 'home_intro_url_instagram', 'https://www.instagram.com/estherreporter/'),
(563, 102, '_home_intro_url_instagram', 'field_5eb11af163be1'),
(564, 102, 'home_intro_url_twitter', 'https://twitter.com/EstherMeunier'),
(565, 102, '_home_intro_url_twitter', 'field_5eb11b2963be2'),
(566, 102, 'socialmedia_image', '94'),
(567, 102, '_socialmedia_image', 'field_5eb12a5b02cc2'),
(568, 105, '_edit_last', '1'),
(569, 105, '_edit_lock', '1589374394:1'),
(570, 105, 'podcast_link', 'https://play.acast.com/s/activistes/b5366946-eddf-4764-b16f-51885593f7cd'),
(571, 105, '_podcast_link', 'field_5eaa8cf8f3627'),
(572, 105, 'podcast_excerpt', 'Aujourd\'hui dans Activistes ! : Zainab Fasiki, artiste, bédéiste marocaine, qui milite pour sa liberté individuelle – notamment sexuelle. Du dessin comme thérapie à la BD comme outil politique, il n\'y a qu\'un pas que Zainab a franchi, même si au départ, elle ne pensait pas que son intimité revêtait de tels enjeux.'),
(573, 105, '_podcast_excerpt', 'field_5eaa946f6a369'),
(574, 105, 'podcast_image', '74'),
(575, 105, '_podcast_image', 'field_5eaad82576492'),
(576, 106, '_edit_last', '1'),
(577, 106, '_edit_lock', '1589374335:1'),
(578, 106, 'podcast_link', 'https://play.acast.com/s/activistes/7c9c6f51-24a9-409a-940e-3cb07632d7a0'),
(579, 106, '_podcast_link', 'field_5eaa8cf8f3627'),
(580, 106, 'podcast_excerpt', 'Anaïs Condomines est journaliste. Peut-on être journaliste et Activistes ? C\'est une bonne question, c\'est pourquoi on a effectivement longuement abordé ce point. Dans un monde où les Fake News sont devenues une arme puissante de « réinformation » — selon ceux qui les manipulent — le journalisme est, plus que jamais, un pilier de nos démocraties.'),
(581, 106, '_podcast_excerpt', 'field_5eaa946f6a369'),
(582, 106, 'podcast_image', '73'),
(583, 106, '_podcast_image', 'field_5eaad82576492'),
(584, 107, '_edit_last', '1'),
(585, 107, '_edit_lock', '1589374325:1'),
(586, 107, 'podcast_link', 'https://play.acast.com/s/activistes/3692240f-8a95-4588-9d1a-92d48f7abc85'),
(587, 107, '_podcast_link', 'field_5eaa8cf8f3627'),
(588, 107, 'podcast_excerpt', 'Consommer responsable, n’est-ce pas une injonction paradoxale ? Tout acte de consommation n’est-il pas par définition à impact négatif, dans un système de production et de distribution déconnecté des enjeux sociaux et environnementaux ?'),
(589, 107, '_podcast_excerpt', 'field_5eaa946f6a369'),
(590, 107, 'podcast_image', '72'),
(591, 107, '_podcast_image', 'field_5eaad82576492'),
(592, 108, '_edit_last', '1'),
(593, 108, '_edit_lock', '1589374309:1'),
(594, 108, 'podcast_link', 'https://play.acast.com/s/activistes/9e0b0f5b-890e-4314-8a91-3c79f56e0804'),
(595, 108, '_podcast_link', 'field_5eaa8cf8f3627'),
(596, 108, 'podcast_excerpt', 'Samantha Bailly est une autrice engagée : elle est l\'actuelle présidente de la Ligue des Auteurs Professionnels, en pointe de la lutte pour la constitution d\'un réel statut des artistes-auteurs. Qu\'est-ce que c\'est ? C\'est justement le sujet de cet épisode ! Rapport Racine, à-valoir, rémunération, bref toutes les clés pour comprendre la situation des acteurs et actrices de la création aujourd\'hui.'),
(597, 108, '_podcast_excerpt', 'field_5eaa946f6a369'),
(598, 108, 'podcast_image', '71'),
(599, 108, '_podcast_image', 'field_5eaad82576492'),
(600, 109, '_edit_last', '1'),
(601, 109, '_edit_lock', '1589374296:1'),
(602, 109, 'podcast_link', 'https://play.acast.com/s/activistes/6285832a-6606-4348-ae87-d42d2f7e9344'),
(603, 109, '_podcast_link', 'field_5eaa8cf8f3627'),
(604, 109, 'podcast_excerpt', '« T\'as pensé à ? » : cette interrogation vous est peut-être familière. C\'est celle qu\'a choisi Coline pour dénoncer la charge mentale : le fait de gérer, organiser, prévoir la vie d\'un foyer. Sur son compte Instagram, @taspensea, les témoignages mettent en lumière cette inégalité qui reste encore très majoritairement genrée. Mais l\'activisme de Coline ne s\'arrête pas là.'),
(605, 109, '_podcast_excerpt', 'field_5eaa946f6a369'),
(606, 109, 'podcast_image', '70'),
(607, 109, '_podcast_image', 'field_5eaad82576492'),
(608, 110, '_edit_last', '1'),
(609, 110, '_edit_lock', '1589375121:1'),
(610, 110, 'podcast_link', 'https://play.acast.com/s/activistes/1eb786e1-77c9-48dd-9077-85be5cd8c85e'),
(611, 110, '_podcast_link', 'field_5eaa8cf8f3627'),
(612, 110, 'podcast_excerpt', 'Non, cette semaine, Activistes ! n\'a pas voyagé dans le temps, pour aller tendre son micro à Hubertine Auclert. Mais nous sommes bel et bien allées donner la parole à celles qui œuvrent dans l\'ombre pour faire avancer le front de la lutte contre le sexisme, et pour l\'égalité.'),
(613, 110, '_podcast_excerpt', 'field_5eaa946f6a369'),
(614, 110, 'podcast_image', '69'),
(615, 110, '_podcast_image', 'field_5eaad82576492'),
(616, 110, '_thumbnail_id', '69'),
(617, 44, '_thumbnail_id', '90'),
(620, 42, '_thumbnail_id', '88'),
(623, 40, '_thumbnail_id', '86'),
(626, 38, '_thumbnail_id', '84'),
(631, 36, '_thumbnail_id', '82'),
(634, 34, '_thumbnail_id', '80'),
(637, 109, '_thumbnail_id', '70'),
(638, 108, '_thumbnail_id', '71'),
(639, 107, '_thumbnail_id', '72'),
(640, 106, '_thumbnail_id', '73'),
(641, 105, '_thumbnail_id', '74'),
(642, 2, '_edit_lock', '1589381680:1'),
(643, 2, '_edit_last', '1');

-- --------------------------------------------------------

--
-- Table structure for table `estherreporter_posts`
--

CREATE TABLE `estherreporter_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `estherreporter_posts`
--

INSERT INTO `estherreporter_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-04-13 14:56:23', '2020-04-13 12:56:23', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'trash', 'open', 'open', '', 'bonjour-tout-le-monde__trashed', '', '', '2020-04-30 11:14:08', '2020-04-30 09:14:08', '', 0, 'http://localhost:8888/estherreporter/?p=1', 0, 'post', '', 1),
(2, 1, '2020-04-13 14:56:23', '2020-04-13 12:56:23', '', 'Mes articles', '', 'publish', 'closed', 'open', '', 'articles', '', '', '2020-05-13 15:08:12', '2020-05-13 13:08:12', '', 0, 'http://localhost:8888/estherreporter/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-04-13 14:56:23', '2020-04-13 12:56:23', '<!-- wp:heading --><h2>Qui sommes-nous ?</h2><!-- /wp:heading --><!-- wp:paragraph --><p>L’adresse de notre site Web est : http://localhost:8888/estherreporter.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Utilisation des données personnelles collectées</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Commentaires</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quand vous laissez un commentaire sur notre site web, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Une chaîne anonymisée créée à partir de votre adresse de messagerie (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Médias</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous êtes un utilisateur ou une utilisatrice enregistré·e et que vous téléversez des images sur le site web, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les visiteurs de votre site web peuvent télécharger et extraire des données de localisation depuis ces images.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formulaires de contact</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse de messagerie et site web dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si vous vous rendez sur la page de connexion, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contenu embarqué depuis d’autres sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Statistiques et mesures d’audience</h3><!-- /wp:heading --><!-- wp:heading --><h2>Utilisation et transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:heading --><h2>Durées de stockage de vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pour les utilisateurs et utilisatrices qui s’enregistrent sur notre site (si cela est possible), nous stockons également les données personnelles indiquées dans leur profil. Tous les utilisateurs et utilisatrices peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur nom d’utilisateur·ice). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Les droits que vous avez sur vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Informations de contact</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informations supplémentaires</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comment nous protégeons vos données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Procédures mises en œuvre en cas de fuite de données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Les services tiers qui nous transmettent des données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Opérations de marketing automatisé et/ou de profilage réalisées à l’aide des données personnelles</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Affichage des informations liées aux secteurs soumis à des régulations spécifiques</h3><!-- /wp:heading -->', 'Politique de confidentialité', '', 'draft', 'closed', 'open', '', 'politique-de-confidentialite', '', '', '2020-04-13 14:56:23', '2020-04-13 12:56:23', '', 0, 'http://localhost:8888/estherreporter/?page_id=3', 0, 'page', '', 0),
(5, 1, '2020-04-27 11:03:57', '2020-04-27 09:03:57', '', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2020-05-12 12:40:27', '2020-05-12 10:40:27', '', 0, 'http://localhost:8888/estherreporter/?page_id=5', 0, 'page', '', 0),
(6, 1, '2020-04-27 11:03:57', '2020-04-27 09:03:57', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-04-27 11:03:57', '2020-04-27 09:03:57', '', 5, 'http://localhost:8888/estherreporter/2020/04/27/5-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2020-04-29 18:05:07', '2020-04-29 16:05:07', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"videos\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:12:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:10:\"discussion\";i:3;s:8:\"comments\";i:4;s:9:\"revisions\";i:5;s:4:\"slug\";i:6;s:6:\"author\";i:7;s:6:\"format\";i:8;s:15:\"page_attributes\";i:9;s:10:\"categories\";i:10;s:4:\"tags\";i:11;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Vidéos', 'videos', 'publish', 'closed', 'closed', '', 'group_5ea9a4a8bcd3c', '', '', '2020-04-29 18:05:07', '2020-04-29 16:05:07', '', 0, 'http://localhost:8888/estherreporter/?post_type=acf-field-group&#038;p=9', 0, 'acf-field-group', '', 0),
(11, 1, '2020-04-29 18:05:07', '2020-04-29 16:05:07', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Code vidéo YouTube', 'youtube_code', 'publish', 'closed', 'closed', '', 'field_5ea9a4ce244d0', '', '', '2020-04-29 18:05:07', '2020-04-29 16:05:07', '', 9, 'http://localhost:8888/estherreporter/?post_type=acf-field&p=11', 0, 'acf-field', '', 0),
(14, 1, '2020-04-30 10:36:30', '2020-04-30 08:36:30', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"podcasts\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:12:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:10:\"discussion\";i:3;s:8:\"comments\";i:4;s:9:\"revisions\";i:5;s:4:\"slug\";i:6;s:6:\"author\";i:7;s:6:\"format\";i:8;s:15:\"page_attributes\";i:9;s:10:\"categories\";i:10;s:4:\"tags\";i:11;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Podcasts', 'podcasts', 'publish', 'closed', 'closed', '', 'group_5eaa8cf0e6a48', '', '', '2020-05-13 14:50:22', '2020-05-13 12:50:22', '', 0, 'http://localhost:8888/estherreporter/?post_type=acf-field-group&#038;p=14', 0, 'acf-field-group', '', 0),
(15, 1, '2020-04-30 10:36:30', '2020-04-30 08:36:30', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Lien Podcast', 'podcast_link', 'publish', 'closed', 'closed', '', 'field_5eaa8cf8f3627', '', '', '2020-04-30 10:54:48', '2020-04-30 08:54:48', '', 14, 'http://localhost:8888/estherreporter/?post_type=acf-field&#038;p=15', 0, 'acf-field', '', 0),
(17, 1, '2020-04-30 10:44:22', '2020-04-30 08:44:22', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:12:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:10:\"discussion\";i:3;s:8:\"comments\";i:4;s:9:\"revisions\";i:5;s:4:\"slug\";i:6;s:6:\"author\";i:7;s:6:\"format\";i:8;s:15:\"page_attributes\";i:9;s:10:\"categories\";i:10;s:4:\"tags\";i:11;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Articles', 'articles', 'publish', 'closed', 'closed', '', 'group_5eaa8f9fa7d7a', '', '', '2020-05-13 14:52:04', '2020-05-13 12:52:04', '', 0, 'http://localhost:8888/estherreporter/?post_type=acf-field-group&#038;p=17', 0, 'acf-field-group', '', 0),
(18, 1, '2020-04-30 10:44:22', '2020-04-30 08:44:22', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Lien Article', 'post_link', 'publish', 'closed', 'closed', '', 'field_5eaa8fa6211b9', '', '', '2020-04-30 11:18:56', '2020-04-30 09:18:56', '', 17, 'http://localhost:8888/estherreporter/?post_type=acf-field&#038;p=18', 0, 'acf-field', '', 0),
(20, 1, '2020-04-30 10:49:53', '2020-04-30 08:49:53', '', 'Les bonnes nouvelles du féminisme #11 – Mars 2020', '', 'publish', 'closed', 'closed', '', 'les-bonnes-nouvelles-du-feminisme-11-mars-2020', '', '', '2020-04-30 16:32:27', '2020-04-30 14:32:27', '', 0, 'http://localhost:8888/estherreporter/?post_type=videos&#038;p=20', 0, 'videos', '', 0),
(21, 1, '2020-04-30 10:50:40', '2020-04-30 08:50:40', '', 'L\'IVG au temps du confinement', '', 'publish', 'closed', 'closed', '', 'livg-au-temps-du-confinement', '', '', '2020-04-30 16:33:38', '2020-04-30 14:33:38', '', 0, 'http://localhost:8888/estherreporter/?post_type=videos&#038;p=21', 0, 'videos', '', 0),
(22, 1, '2020-04-30 10:51:27', '2020-04-30 08:51:27', '', 'Le vieux monde se meurt, on dansera sur sa tombe – 8 mars 2020', '', 'publish', 'closed', 'closed', '', 'le-vieux-monde-se-meurt-on-dansera-sur-sa-tombe-8-mars-2020', '', '', '2020-04-30 16:34:13', '2020-04-30 14:34:13', '', 0, 'http://localhost:8888/estherreporter/?post_type=videos&#038;p=22', 0, 'videos', '', 0),
(23, 1, '2020-04-30 10:54:07', '2020-04-30 08:54:07', '', 'Clémence Pajot, directrice du Centre Hubertine Auclert', '', 'trash', 'closed', 'closed', '', 'clemence-pajot-directrice-du-centre-hubertine-auclert__trashed', '', '', '2020-04-30 17:44:31', '2020-04-30 15:44:31', '', 0, 'http://localhost:8888/estherreporter/?post_type=podcast&#038;p=23', 0, 'podcast', '', 0),
(24, 1, '2020-04-30 10:55:23', '2020-04-30 08:55:23', '', '« T\'as pensé à ? », Coline Charpentier expose la charge mentale sur nos feed Instagram', '', 'trash', 'closed', 'closed', '', 'samantha-bailly-autrice-engagee-pour-sa-profession__trashed', '', '', '2020-04-30 17:44:31', '2020-04-30 15:44:31', '', 0, 'http://localhost:8888/estherreporter/?post_type=podcast&#038;p=24', 0, 'podcast', '', 0),
(26, 1, '2020-04-30 10:57:36', '2020-04-30 08:57:36', '', 'Samantha Bailly, autrice engagée pour sa profession', '', 'trash', 'closed', 'closed', '', 'samantha-bailly-autrice-engagee-pour-sa-profession-2__trashed', '', '', '2020-04-30 17:44:31', '2020-04-30 15:44:31', '', 0, 'http://localhost:8888/estherreporter/?post_type=podcast&#038;p=26', 0, 'podcast', '', 0),
(27, 1, '2020-04-30 10:58:03', '2020-04-30 08:58:03', '', 'Consommer responsable, une injonction paradoxale ?', '', 'trash', 'closed', 'closed', '', 'consommer-responsable-une-injonction-paradoxale__trashed', '', '', '2020-04-30 17:44:31', '2020-04-30 15:44:31', '', 0, 'http://localhost:8888/estherreporter/?post_type=podcast&#038;p=27', 0, 'podcast', '', 0),
(28, 1, '2020-04-30 10:58:37', '2020-04-30 08:58:37', '', 'Anaïs Condomines, journaliste engagée', '', 'trash', 'closed', 'closed', '', 'anais-condomines-journaliste-engagee__trashed', '', '', '2020-04-30 17:44:31', '2020-04-30 15:44:31', '', 0, 'http://localhost:8888/estherreporter/?post_type=podcast&#038;p=28', 0, 'podcast', '', 0),
(29, 1, '2020-04-30 10:59:06', '2020-04-30 08:59:06', '', 'Zainab Fasiki, dépénaliser le désir au Maroc', '', 'trash', 'closed', 'closed', '', 'zainab-fasiki-depenaliser-le-desir-au-maroc__trashed', '', '', '2020-04-30 17:44:31', '2020-04-30 15:44:31', '', 0, 'http://localhost:8888/estherreporter/?post_type=podcast&#038;p=29', 0, 'podcast', '', 0),
(31, 1, '2020-04-30 11:03:58', '2020-04-30 09:03:58', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Résumé podcast', 'podcast_excerpt', 'publish', 'closed', 'closed', '', 'field_5eaa946f6a369', '', '', '2020-04-30 15:24:51', '2020-04-30 13:24:51', '', 14, 'http://localhost:8888/estherreporter/?post_type=acf-field&#038;p=31', 1, 'acf-field', '', 0),
(32, 1, '2020-04-30 11:04:15', '2020-04-30 09:04:15', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Résumé article', 'post_excerpt', 'publish', 'closed', 'closed', '', 'field_5eaa94852cf19', '', '', '2020-04-30 16:04:19', '2020-04-30 14:04:19', '', 17, 'http://localhost:8888/estherreporter/?post_type=acf-field&#038;p=32', 1, 'acf-field', '', 0),
(33, 1, '2020-04-30 11:14:08', '2020-04-30 09:14:08', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-04-30 11:14:08', '2020-04-30 09:14:08', '', 1, 'http://localhost:8888/estherreporter/2020/04/30/1-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2020-04-30 11:14:47', '2020-04-30 09:14:47', '', 'En Argentine, des milliers de femmes manifestent pour le droit à l’IVG', '', 'publish', 'open', 'open', '', 'en-argentine-des-milliers-de-femmes-manifestent-pour-le-droit-a-livg', '', '', '2020-05-13 14:53:43', '2020-05-13 12:53:43', '', 0, 'http://localhost:8888/estherreporter/?p=34', 0, 'post', '', 0),
(35, 1, '2020-04-30 11:14:47', '2020-04-30 09:14:47', '', 'En Argentine, des milliers de femmes manifestent pour le droit à l’IVG', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2020-04-30 11:14:47', '2020-04-30 09:14:47', '', 34, 'http://localhost:8888/estherreporter/2020/04/30/34-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2020-04-30 11:15:36', '2020-04-30 09:15:36', '', 'Les garçons aussi devront se vacciner contre le papillomavirus', '', 'publish', 'open', 'open', '', 'les-garcons-aussi-devront-se-vacciner-contre-le-papillomavirus', '', '', '2020-05-13 14:53:28', '2020-05-13 12:53:28', '', 0, 'http://localhost:8888/estherreporter/?p=36', 0, 'post', '', 0),
(37, 1, '2020-04-30 11:15:36', '2020-04-30 09:15:36', '', 'Les garçons aussi devront se vacciner contre le papillomavirus', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2020-04-30 11:15:36', '2020-04-30 09:15:36', '', 36, 'http://localhost:8888/estherreporter/2020/04/30/36-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2020-04-30 11:18:34', '2020-04-30 09:18:34', '', 'Séropositifs depuis des décennies, voici à quoi ressemblent nos vies', '', 'publish', 'open', 'open', '', 'seropositifs-depuis-des-decennies-voici-a-quoi-ressemblent-nos-vies', '', '', '2020-05-13 14:53:07', '2020-05-13 12:53:07', '', 0, 'http://localhost:8888/estherreporter/?p=38', 0, 'post', '', 0),
(39, 1, '2020-04-30 11:18:34', '2020-04-30 09:18:34', '', 'Séropositifs depuis des décennies, voici à quoi ressemblent nos vies', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2020-04-30 11:18:34', '2020-04-30 09:18:34', '', 38, 'http://localhost:8888/estherreporter/2020/04/30/38-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2020-04-30 11:30:58', '2020-04-30 09:30:58', '', 'Une idée cadeau cool (et non-genré) pour les enfants à Noël !', '', 'publish', 'open', 'open', '', 'une-idee-cadeau-cool-et-non-genre-pour-les-enfants-a-noel', '', '', '2020-05-13 14:52:53', '2020-05-13 12:52:53', '', 0, 'http://localhost:8888/estherreporter/?p=40', 0, 'post', '', 0),
(41, 1, '2020-04-30 11:30:58', '2020-04-30 09:30:58', '', 'Une idée cadeau cool (et non-genré) pour les enfants à Noël !', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-04-30 11:30:58', '2020-04-30 09:30:58', '', 40, 'http://localhost:8888/estherreporter/2020/04/30/40-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2020-04-30 11:31:39', '2020-04-30 09:31:39', '', 'Les bases d’une colocation saine : argent, propreté, intimité…', '', 'publish', 'open', 'open', '', 'les-bases-dune-colocation-saine-argent-proprete-intimite', '', '', '2020-05-13 14:52:39', '2020-05-13 12:52:39', '', 0, 'http://localhost:8888/estherreporter/?p=42', 0, 'post', '', 0),
(43, 1, '2020-04-30 11:31:39', '2020-04-30 09:31:39', '', 'Les bases d’une colocation saine : argent, propreté, intimité…', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2020-04-30 11:31:39', '2020-04-30 09:31:39', '', 42, 'http://localhost:8888/estherreporter/2020/04/30/42-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2020-04-30 11:32:21', '2020-04-30 09:32:21', '', 'Je ne porte plus de soutifs, et j’apprends à composer avec les regards curieux', '', 'publish', 'open', 'open', '', 'je-ne-porte-plus-de-soutifs-et-japprends-a-composer-avec-les-regards-curieux', '', '', '2020-05-13 14:52:19', '2020-05-13 12:52:19', '', 0, 'http://localhost:8888/estherreporter/?p=44', 0, 'post', '', 0),
(45, 1, '2020-04-30 11:32:21', '2020-04-30 09:32:21', '', 'Je ne porte plus de soutifs, et j’apprends à composer avec les regards curieux', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2020-04-30 11:32:21', '2020-04-30 09:32:21', '', 44, 'http://localhost:8888/estherreporter/2020/04/30/44-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2020-04-30 14:34:00', '2020-04-30 12:34:00', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"5\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:13:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:7:\"excerpt\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"author\";i:8;s:6:\"format\";i:9;s:15:\"page_attributes\";i:10;s:10:\"categories\";i:11;s:4:\"tags\";i:12;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Intro', 'intro', 'publish', 'closed', 'closed', '', 'group_5eaac5925c800', '', '', '2020-05-12 12:41:16', '2020-05-12 10:41:16', '', 0, 'http://localhost:8888/estherreporter/?post_type=acf-field-group&#038;p=47', 0, 'acf-field-group', '', 0),
(48, 1, '2020-04-30 14:34:00', '2020-04-30 12:34:00', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Texte intro home', 'home_intro_text', 'publish', 'closed', 'closed', '', 'field_5eaac5acf5b0b', '', '', '2020-04-30 15:19:16', '2020-04-30 13:19:16', '', 47, 'http://localhost:8888/estherreporter/?post_type=acf-field&#038;p=48', 0, 'acf-field', '', 0),
(49, 1, '2020-04-30 14:36:38', '2020-04-30 12:36:38', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"5\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:12:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:10:\"discussion\";i:3;s:8:\"comments\";i:4;s:9:\"revisions\";i:5;s:4:\"slug\";i:6;s:6:\"author\";i:7;s:6:\"format\";i:8;s:15:\"page_attributes\";i:9;s:10:\"categories\";i:10;s:4:\"tags\";i:11;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'A propos', 'a-propos', 'publish', 'closed', 'closed', '', 'group_5eaac62d48576', '', '', '2020-04-30 15:18:44', '2020-04-30 13:18:44', '', 0, 'http://localhost:8888/estherreporter/?post_type=acf-field-group&#038;p=49', 0, 'acf-field-group', '', 0),
(50, 1, '2020-04-30 14:36:38', '2020-04-30 12:36:38', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Texte a propos home', 'home_about_us_text', 'publish', 'closed', 'closed', '', 'field_5eaac63fa1401', '', '', '2020-04-30 15:18:21', '2020-04-30 13:18:21', '', 49, 'http://localhost:8888/estherreporter/?post_type=acf-field&#038;p=50', 0, 'acf-field', '', 0),
(51, 1, '2020-04-30 14:37:19', '2020-04-30 12:37:19', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image a propos home', 'home_about_us_image', 'publish', 'closed', 'closed', '', 'field_5eaac65847bfe', '', '', '2020-04-30 15:18:44', '2020-04-30 13:18:44', '', 49, 'http://localhost:8888/estherreporter/?post_type=acf-field&#038;p=51', 1, 'acf-field', '', 0),
(52, 1, '2020-04-30 14:37:45', '2020-04-30 12:37:45', '', '', '', 'publish', 'closed', 'closed', '', '52', '', '', '2020-04-30 14:37:45', '2020-04-30 12:37:45', '', 0, 'http://localhost:8888/estherreporter/?post_type=intro&#038;p=52', 0, 'intro', '', 0),
(53, 1, '2020-04-30 14:39:06', '2020-04-30 12:39:06', '', '', '', 'publish', 'closed', 'closed', '', '53', '', '', '2020-04-30 14:39:06', '2020-04-30 12:39:06', '', 0, 'http://localhost:8888/estherreporter/?post_type=a_propos&#038;p=53', 0, 'a_propos', '', 0),
(54, 1, '2020-04-30 14:38:36', '2020-04-30 12:38:36', '', 'estherreporter_a_propos', '', 'inherit', 'open', 'closed', '', 'instagram-1', '', '', '2020-04-30 14:39:02', '2020-04-30 12:39:02', '', 53, 'http://localhost:8888/estherreporter/wp-content/uploads/2020/04/instagram-1.png', 0, 'attachment', 'image/png', 0),
(55, 1, '2020-04-30 15:07:37', '2020-04-30 13:07:37', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-04-30 15:07:37', '2020-04-30 13:07:37', '', 5, 'http://localhost:8888/estherreporter/2020/04/30/5-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2020-04-30 15:22:47', '2020-04-30 13:22:47', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-04-30 15:22:47', '2020-04-30 13:22:47', '', 5, 'http://localhost:8888/estherreporter/2020/04/30/5-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2020-04-30 15:44:02', '2020-04-30 13:44:02', '', 'instagram-6', '', 'inherit', 'open', 'closed', '', 'instagram-6', '', '', '2020-04-30 15:44:02', '2020-04-30 13:44:02', '', 5, 'http://localhost:8888/estherreporter/wp-content/uploads/2020/04/instagram-6.png', 0, 'attachment', 'image/png', 0),
(59, 1, '2020-04-30 15:44:09', '2020-04-30 13:44:09', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-04-30 15:44:09', '2020-04-30 13:44:09', '', 5, 'http://localhost:8888/estherreporter/2020/04/30/5-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2020-04-30 15:45:00', '2020-04-30 13:45:00', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-04-30 15:45:00', '2020-04-30 13:45:00', '', 5, 'http://localhost:8888/estherreporter/2020/04/30/5-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2020-04-30 15:45:34', '2020-04-30 13:45:34', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-04-30 15:45:34', '2020-04-30 13:45:34', '', 5, 'http://localhost:8888/estherreporter/2020/04/30/5-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2020-04-30 15:57:14', '2020-04-30 13:57:14', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-04-30 15:57:14', '2020-04-30 13:57:14', '', 5, 'http://localhost:8888/estherreporter/2020/04/30/5-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2020-04-30 15:57:37', '2020-04-30 13:57:37', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-04-30 15:57:37', '2020-04-30 13:57:37', '', 5, 'http://localhost:8888/estherreporter/2020/04/30/5-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2020-04-30 16:36:06', '2020-04-30 14:36:06', '', 'Les bonnes nouvelles du féminisme #10 - Janvier/Février 2020', '', 'publish', 'closed', 'closed', '', 'les-bonnes-nouvelles-du-feminisme-10-janvier-fevrier-2020', '', '', '2020-04-30 16:36:06', '2020-04-30 14:36:06', '', 0, 'http://localhost:8888/estherreporter/?post_type=videos&#038;p=66', 0, 'videos', '', 0),
(67, 1, '2020-04-30 16:37:01', '2020-04-30 14:37:01', '', 'Les bonnes nouvelles du féminisme DE LA DÉCENNIE – Bonus', '', 'publish', 'closed', 'closed', '', 'les-bonnes-nouvelles-du-feminisme-de-la-decennie-bonus', '', '', '2020-04-30 16:37:01', '2020-04-30 14:37:01', '', 0, 'http://localhost:8888/estherreporter/?post_type=videos&#038;p=67', 0, 'videos', '', 0),
(68, 1, '2020-04-30 17:55:31', '2020-04-30 15:55:31', '', 'Zainab Fasiki, dépénaliser le désir au Maroc', '', 'publish', 'closed', 'closed', '', 'en-argentine-des-milliers-de-femmes-manifestent-pour-le-droit-a-livg', '', '', '2020-05-04 11:18:13', '2020-05-04 09:18:13', '', 0, 'http://localhost:8888/estherreporter/?post_type=podcast&#038;p=68', 0, 'podcast', '', 0),
(69, 1, '2020-04-30 17:51:31', '2020-04-30 15:51:31', '', 'podcast_img_1', '', 'inherit', 'open', 'closed', '', 'podcast_img_1', '', '', '2020-04-30 17:51:31', '2020-04-30 15:51:31', '', 68, 'http://localhost:8888/estherreporter/wp-content/uploads/2020/04/podcast_img_1.png', 0, 'attachment', 'image/png', 0),
(70, 1, '2020-04-30 17:51:33', '2020-04-30 15:51:33', '', 'podcast_img_2', '', 'inherit', 'open', 'closed', '', 'podcast_img_2', '', '', '2020-04-30 17:51:33', '2020-04-30 15:51:33', '', 68, 'http://localhost:8888/estherreporter/wp-content/uploads/2020/04/podcast_img_2.png', 0, 'attachment', 'image/png', 0),
(71, 1, '2020-04-30 17:51:48', '2020-04-30 15:51:48', '', 'podcast_img_3', '', 'inherit', 'open', 'closed', '', 'podcast_img_3', '', '', '2020-04-30 17:51:48', '2020-04-30 15:51:48', '', 68, 'http://localhost:8888/estherreporter/wp-content/uploads/2020/04/podcast_img_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2020-04-30 17:51:49', '2020-04-30 15:51:49', '', 'podcast_img_4', '', 'inherit', 'open', 'closed', '', 'podcast_img_4', '', '', '2020-04-30 17:51:49', '2020-04-30 15:51:49', '', 68, 'http://localhost:8888/estherreporter/wp-content/uploads/2020/04/podcast_img_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2020-04-30 17:51:51', '2020-04-30 15:51:51', '', 'podcast_img_5', '', 'inherit', 'open', 'closed', '', 'podcast_img_5', '', '', '2020-04-30 17:51:51', '2020-04-30 15:51:51', '', 68, 'http://localhost:8888/estherreporter/wp-content/uploads/2020/04/podcast_img_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2020-04-30 17:52:01', '2020-04-30 15:52:01', '', 'podcast_img_6', '', 'inherit', 'open', 'closed', '', 'podcast_img_6', '', '', '2020-04-30 17:52:01', '2020-04-30 15:52:01', '', 68, 'http://localhost:8888/estherreporter/wp-content/uploads/2020/04/podcast_img_6.png', 0, 'attachment', 'image/png', 0),
(75, 1, '2020-04-30 18:02:54', '2020-04-30 16:02:54', '', 'Anaïs Condomines, journaliste engagée', '', 'publish', 'closed', 'closed', '', 'tas-pense-a-coline-charpentier-expose-la-charge-mentale-sur-nos-feed-instagram', '', '', '2020-05-04 11:17:50', '2020-05-04 09:17:50', '', 0, 'http://localhost:8888/estherreporter/?post_type=podcast&#038;p=75', 0, 'podcast', '', 0),
(76, 1, '2020-04-30 18:06:40', '2020-04-30 16:06:40', '', 'Consommer responsable, une injonction paradoxale ?', '', 'publish', 'closed', 'closed', '', 'consommer-responsable-une-injonction-paradoxale', '', '', '2020-05-04 11:17:28', '2020-05-04 09:17:28', '', 0, 'http://localhost:8888/estherreporter/?post_type=podcast&#038;p=76', 0, 'podcast', '', 0),
(77, 1, '2020-04-30 18:07:26', '2020-04-30 16:07:26', '', 'Samantha Bailly, autrice engagée pour sa profession', '', 'publish', 'closed', 'closed', '', 'samantha-bailly-autrice-engagee-pour-sa-profession', '', '', '2020-05-04 11:17:04', '2020-05-04 09:17:04', '', 0, 'http://localhost:8888/estherreporter/?post_type=podcast&#038;p=77', 0, 'podcast', '', 0),
(78, 1, '2020-04-30 18:08:10', '2020-04-30 16:08:10', '', '« T\'as pensé à ? », Coline Charpentier expose la charge mentale sur nos feed Instagram', '', 'publish', 'closed', 'closed', '', 'tas-pense-a-coline-charpentier-expose-la-charge-mentale-sur-nos-feed-instagram-2', '', '', '2020-05-04 11:18:47', '2020-05-04 09:18:47', '', 0, 'http://localhost:8888/estherreporter/?post_type=podcast&#038;p=78', 0, 'podcast', '', 0),
(79, 1, '2020-04-30 18:08:56', '2020-04-30 16:08:56', '', 'Clémence Pajot, directrice du Centre Hubertine Auclert', '', 'publish', 'closed', 'closed', '', 'clemence-pajot-directrice-du-centre-hubertine-auclert', '', '', '2020-05-04 10:55:39', '2020-05-04 08:55:39', '', 0, 'http://localhost:8888/estherreporter/?post_type=podcast&#038;p=79', 0, 'podcast', '', 0),
(80, 1, '2020-05-04 10:33:48', '2020-05-04 08:33:48', '', 'argentine-avortement-rejet', '', 'inherit', 'open', 'closed', '', 'argentine-avortement-rejet', '', '', '2020-05-04 10:33:48', '2020-05-04 08:33:48', '', 34, 'http://localhost:8888/estherreporter/wp-content/uploads/2020/04/argentine-avortement-rejet.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2020-05-04 10:33:52', '2020-05-04 08:33:52', '', 'En Argentine, des milliers de femmes manifestent pour le droit à l’IVG', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2020-05-04 10:33:52', '2020-05-04 08:33:52', '', 34, 'http://localhost:8888/estherreporter/2020/05/04/34-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2020-05-04 10:51:42', '2020-05-04 08:51:42', '', 'papillomavirus-hommes-vaccin', '', 'inherit', 'open', 'closed', '', 'papillomavirus-hommes-vaccin', '', '', '2020-05-04 10:51:42', '2020-05-04 08:51:42', '', 36, 'http://localhost:8888/estherreporter/wp-content/uploads/2020/04/papillomavirus-hommes-vaccin.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2020-05-04 10:51:47', '2020-05-04 08:51:47', '', 'Les garçons aussi devront se vacciner contre le papillomavirus', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2020-05-04 10:51:47', '2020-05-04 08:51:47', '', 36, 'http://localhost:8888/estherreporter/2020/05/04/36-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2020-05-04 10:52:24', '2020-05-04 08:52:24', '', 'vih-malade-temoignage', '', 'inherit', 'open', 'closed', '', 'vih-malade-temoignage', '', '', '2020-05-04 10:52:24', '2020-05-04 08:52:24', '', 38, 'http://localhost:8888/estherreporter/wp-content/uploads/2020/04/vih-malade-temoignage.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2020-05-04 10:52:29', '2020-05-04 08:52:29', '', 'Séropositifs depuis des décennies, voici à quoi ressemblent nos vies', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2020-05-04 10:52:29', '2020-05-04 08:52:29', '', 38, 'http://localhost:8888/estherreporter/2020/05/04/38-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2020-05-04 10:53:03', '2020-05-04 08:53:03', '', 'cadeau-enfant-non-genre-pandacraft', '', 'inherit', 'open', 'closed', '', 'cadeau-enfant-non-genre-pandacraft', '', '', '2020-05-04 10:53:03', '2020-05-04 08:53:03', '', 40, 'http://localhost:8888/estherreporter/wp-content/uploads/2020/04/cadeau-enfant-non-genre-pandacraft.jpg', 0, 'attachment', 'image/jpeg', 0),
(87, 1, '2020-05-04 10:53:09', '2020-05-04 08:53:09', '', 'Une idée cadeau cool (et non-genré) pour les enfants à Noël !', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-05-04 10:53:09', '2020-05-04 08:53:09', '', 40, 'http://localhost:8888/estherreporter/2020/05/04/40-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2020-05-04 10:53:41', '2020-05-04 08:53:41', '', 'reussir-colocation-conseils', '', 'inherit', 'open', 'closed', '', 'reussir-colocation-conseils', '', '', '2020-05-04 10:53:41', '2020-05-04 08:53:41', '', 42, 'http://localhost:8888/estherreporter/wp-content/uploads/2020/04/reussir-colocation-conseils.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2020-05-04 10:53:46', '2020-05-04 08:53:46', '', 'Les bases d’une colocation saine : argent, propreté, intimité…', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2020-05-04 10:53:46', '2020-05-04 08:53:46', '', 42, 'http://localhost:8888/estherreporter/2020/05/04/42-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2020-05-04 10:54:17', '2020-05-04 08:54:17', '', 'ne-pas-porter-soutien-gorges-regards', '', 'inherit', 'open', 'closed', '', 'ne-pas-porter-soutien-gorges-regards', '', '', '2020-05-04 10:54:17', '2020-05-04 08:54:17', '', 44, 'http://localhost:8888/estherreporter/wp-content/uploads/2020/04/ne-pas-porter-soutien-gorges-regards.jpg', 0, 'attachment', 'image/jpeg', 0),
(91, 1, '2020-05-04 10:54:21', '2020-05-04 08:54:21', '', 'Je ne porte plus de soutifs, et j’apprends à composer avec les regards curieux', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2020-05-04 10:54:21', '2020-05-04 08:54:21', '', 44, 'http://localhost:8888/estherreporter/2020/05/04/44-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2020-05-05 09:43:51', '2020-05-05 07:43:51', '', '001-instagram', '', 'inherit', 'open', 'closed', '', '001-instagram', '', '', '2020-05-05 09:43:51', '2020-05-05 07:43:51', '', 5, 'http://localhost:8888/estherreporter/wp-content/uploads/2020/05/001-instagram.png', 0, 'attachment', 'image/png', 0),
(95, 1, '2020-05-05 09:43:57', '2020-05-05 07:43:57', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-05-05 09:43:57', '2020-05-05 07:43:57', '', 5, 'http://localhost:8888/estherreporter/2020/05/05/5-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2020-05-05 09:57:23', '2020-05-05 07:57:23', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-05-05 09:57:23', '2020-05-05 07:57:23', '', 5, 'http://localhost:8888/estherreporter/2020/05/05/5-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2020-05-05 11:01:23', '2020-05-05 09:01:23', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-05-05 11:01:23', '2020-05-05 09:01:23', '', 5, 'http://localhost:8888/estherreporter/2020/05/05/5-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2020-05-05 12:26:09', '2020-05-05 10:26:09', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-05-05 12:26:09', '2020-05-05 10:26:09', '', 5, 'http://localhost:8888/estherreporter/2020/05/05/5-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2020-05-12 12:24:18', '2020-05-12 10:24:18', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '5-autosave-v1', '', '', '2020-05-12 12:24:18', '2020-05-12 10:24:18', '', 5, 'http://localhost:8888/estherreporter/2020/05/12/5-autosave-v1/', 0, 'revision', '', 0),
(103, 1, '2020-05-12 12:27:29', '2020-05-12 10:27:29', '', 'Les bonnes nouvelles du féminisme DE LA DÉCENNIE – Bonus', '', 'inherit', 'closed', 'closed', '', '67-autosave-v1', '', '', '2020-05-12 12:27:29', '2020-05-12 10:27:29', '', 67, 'http://localhost:8888/estherreporter/2020/05/12/67-autosave-v1/', 0, 'revision', '', 0),
(105, 1, '2020-05-13 14:27:44', '2020-05-13 12:27:44', '', 'Zainab Fasiki, dépénaliser le désir au Maroc', '', 'publish', 'closed', 'closed', '', 'zainab-fasiki-depenaliser-le-desir-au-maroc', '', '', '2020-05-13 14:54:48', '2020-05-13 12:54:48', '', 0, 'http://localhost:8888/estherreporter/?post_type=podcasts&#038;p=105', 0, 'podcasts', '', 0),
(106, 1, '2020-05-13 14:28:42', '2020-05-13 12:28:42', '', 'Anaïs Condomines, journaliste engagée', '', 'publish', 'closed', 'closed', '', 'anais-condomines-journaliste-engagee', '', '', '2020-05-13 14:54:37', '2020-05-13 12:54:37', '', 0, 'http://localhost:8888/estherreporter/?post_type=podcasts&#038;p=106', 0, 'podcasts', '', 0),
(107, 1, '2020-05-13 14:29:35', '2020-05-13 12:29:35', '', 'Consommer responsable, une injonction paradoxale ?', '', 'publish', 'closed', 'closed', '', 'consommer-responsable-une-injonction-paradoxale', '', '', '2020-05-13 14:54:27', '2020-05-13 12:54:27', '', 0, 'http://localhost:8888/estherreporter/?post_type=podcasts&#038;p=107', 0, 'podcasts', '', 0),
(108, 1, '2020-05-13 14:30:47', '2020-05-13 12:30:47', '', 'Samantha Bailly, autrice engagée pour sa profession', '', 'publish', 'closed', 'closed', '', 'samantha-bailly-autrice-engagee-pour-sa-profession', '', '', '2020-05-13 14:54:10', '2020-05-13 12:54:10', '', 0, 'http://localhost:8888/estherreporter/?post_type=podcasts&#038;p=108', 0, 'podcasts', '', 0),
(109, 1, '2020-05-13 14:31:49', '2020-05-13 12:31:49', '', '« T\'as pensé à ? », Coline Charpentier expose la charge mentale sur nos feed Instagram', '', 'publish', 'closed', 'closed', '', 'tas-pense-a-coline-charpentier-expose-la-charge-mentale-sur-nos-feed-instagram', '', '', '2020-05-13 14:53:58', '2020-05-13 12:53:58', '', 0, 'http://localhost:8888/estherreporter/?post_type=podcasts&#038;p=109', 0, 'podcasts', '', 0),
(110, 1, '2020-05-13 14:33:21', '2020-05-13 12:33:21', '', 'Clémence Pajot, directrice du Centre Hubertine Auclert', '', 'publish', 'closed', 'closed', '', 'clemence-pajot-directrice-du-centre-hubertine-auclert', '', '', '2020-05-13 14:50:33', '2020-05-13 12:50:33', '', 0, 'http://localhost:8888/estherreporter/?post_type=podcasts&#038;p=110', 0, 'podcasts', '', 0),
(111, 1, '2020-05-13 15:08:12', '2020-05-13 13:08:12', '', 'Mes articles', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-05-13 15:08:12', '2020-05-13 13:08:12', '', 2, 'http://localhost:8888/estherreporter/2020/05/13/2-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `estherreporter_termmeta`
--

CREATE TABLE `estherreporter_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `estherreporter_terms`
--

CREATE TABLE `estherreporter_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `estherreporter_terms`
--

INSERT INTO `estherreporter_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0);

-- --------------------------------------------------------

--
-- Table structure for table `estherreporter_term_relationships`
--

CREATE TABLE `estherreporter_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `estherreporter_term_relationships`
--

INSERT INTO `estherreporter_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(34, 1, 0),
(36, 1, 0),
(38, 1, 0),
(40, 1, 0),
(42, 1, 0),
(44, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `estherreporter_term_taxonomy`
--

CREATE TABLE `estherreporter_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `estherreporter_term_taxonomy`
--

INSERT INTO `estherreporter_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `estherreporter_usermeta`
--

CREATE TABLE `estherreporter_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `estherreporter_usermeta`
--

INSERT INTO `estherreporter_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'estherreporter_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'estherreporter_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"038e7027c9fdf64dcb93dc4281e19afab793eef16dc8f5e6aa7dca3e1dad5c2c\";a:4:{s:10:\"expiration\";i:1589961645;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36\";s:5:\"login\";i:1589788845;}}'),
(17, 1, 'estherreporter_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:21:\"add-post-type-socials\";i:1;s:20:\"add-post-type-videos\";i:2;s:12:\"add-post_tag\";i:3;s:8:\"add-type\";}'),
(20, 1, 'estherreporter_user-settings', 'libraryContent=browse&editor=tinymce'),
(21, 1, 'estherreporter_user-settings-time', '1589373976'),
(22, 1, 'meta-box-order_page', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:36:\"submitdiv,pageparentdiv,postimagediv\";s:6:\"normal\";s:94:\"acf-group_5eaac5925c800,acf-group_5eaac62d48576,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(23, 1, 'screen_layout_page', '2'),
(24, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(25, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}');

-- --------------------------------------------------------

--
-- Table structure for table `estherreporter_users`
--

CREATE TABLE `estherreporter_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `estherreporter_users`
--

INSERT INTO `estherreporter_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Admin', '$P$BUEmb5KnFFh3VhwOhzJRvKQAda6qg6.', 'admin', 'poitiers.cheval@gmail.com', 'http://localhost:8888/estherreporter', '2020-04-13 12:56:22', '', 0, 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `estherreporter_commentmeta`
--
ALTER TABLE `estherreporter_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `estherreporter_comments`
--
ALTER TABLE `estherreporter_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `estherreporter_links`
--
ALTER TABLE `estherreporter_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `estherreporter_options`
--
ALTER TABLE `estherreporter_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `estherreporter_postmeta`
--
ALTER TABLE `estherreporter_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `estherreporter_posts`
--
ALTER TABLE `estherreporter_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `estherreporter_termmeta`
--
ALTER TABLE `estherreporter_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `estherreporter_terms`
--
ALTER TABLE `estherreporter_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `estherreporter_term_relationships`
--
ALTER TABLE `estherreporter_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `estherreporter_term_taxonomy`
--
ALTER TABLE `estherreporter_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `estherreporter_usermeta`
--
ALTER TABLE `estherreporter_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `estherreporter_users`
--
ALTER TABLE `estherreporter_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `estherreporter_commentmeta`
--
ALTER TABLE `estherreporter_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `estherreporter_comments`
--
ALTER TABLE `estherreporter_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `estherreporter_links`
--
ALTER TABLE `estherreporter_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `estherreporter_options`
--
ALTER TABLE `estherreporter_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=420;

--
-- AUTO_INCREMENT for table `estherreporter_postmeta`
--
ALTER TABLE `estherreporter_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=644;

--
-- AUTO_INCREMENT for table `estherreporter_posts`
--
ALTER TABLE `estherreporter_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `estherreporter_termmeta`
--
ALTER TABLE `estherreporter_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `estherreporter_terms`
--
ALTER TABLE `estherreporter_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `estherreporter_term_taxonomy`
--
ALTER TABLE `estherreporter_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `estherreporter_usermeta`
--
ALTER TABLE `estherreporter_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `estherreporter_users`
--
ALTER TABLE `estherreporter_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
