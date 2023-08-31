-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-08-2022 a las 01:38:45
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sponzy`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_settings`
--

CREATE TABLE `admin_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `update_length` int(10) UNSIGNED NOT NULL COMMENT 'The max length of updates',
  `status_page` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 Offline, 1 Online',
  `email_verification` enum('0','1') NOT NULL COMMENT '0 Off, 1 On',
  `email_no_reply` varchar(200) NOT NULL,
  `email_admin` varchar(200) NOT NULL,
  `captcha` enum('on','off') NOT NULL DEFAULT 'on',
  `file_size_allowed` int(11) UNSIGNED NOT NULL COMMENT 'Size in Bytes',
  `google_analytics` text NOT NULL,
  `paypal_account` varchar(200) NOT NULL,
  `twitter` varchar(200) NOT NULL,
  `facebook` varchar(200) NOT NULL,
  `pinterest` varchar(200) NOT NULL,
  `instagram` varchar(200) NOT NULL,
  `google_adsense` text NOT NULL,
  `currency_symbol` char(10) NOT NULL,
  `currency_code` varchar(20) NOT NULL,
  `min_subscription_amount` int(11) UNSIGNED NOT NULL,
  `payment_gateway` enum('PayPal','Stripe') NOT NULL DEFAULT 'PayPal',
  `min_width_height_image` varchar(100) NOT NULL,
  `fee_commission` int(10) UNSIGNED NOT NULL,
  `max_subscription_amount` int(10) UNSIGNED NOT NULL,
  `date_format` varchar(200) NOT NULL,
  `link_privacy` varchar(200) NOT NULL,
  `link_terms` varchar(200) NOT NULL,
  `currency_position` varchar(100) NOT NULL DEFAULT 'left',
  `facebook_login` enum('on','off') NOT NULL DEFAULT 'off',
  `amount_min_withdrawal` int(10) UNSIGNED NOT NULL,
  `youtube` varchar(200) NOT NULL,
  `github` varchar(200) NOT NULL,
  `comment_length` int(10) UNSIGNED NOT NULL,
  `days_process_withdrawals` int(10) UNSIGNED NOT NULL,
  `google_login` enum('on','off') NOT NULL DEFAULT 'off',
  `number_posts_show` tinyint(3) UNSIGNED NOT NULL,
  `number_comments_show` tinyint(3) UNSIGNED NOT NULL,
  `registration_active` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 No, 1 Yes',
  `account_verification` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 No, 1 Yes',
  `logo` varchar(100) NOT NULL,
  `logo_2` varchar(100) NOT NULL,
  `favicon` varchar(100) NOT NULL,
  `home_index` varchar(100) NOT NULL,
  `bg_gradient` varchar(100) NOT NULL,
  `img_1` varchar(100) NOT NULL,
  `img_2` varchar(100) NOT NULL,
  `img_3` varchar(100) NOT NULL,
  `img_4` varchar(100) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `show_counter` enum('on','off') NOT NULL DEFAULT 'on',
  `color_default` varchar(100) NOT NULL,
  `decimal_format` enum('comma','dot') NOT NULL DEFAULT 'dot',
  `version` varchar(5) NOT NULL,
  `link_cookies` varchar(200) NOT NULL,
  `story_length` int(10) UNSIGNED NOT NULL,
  `maintenance_mode` enum('on','off') NOT NULL DEFAULT 'off',
  `company` varchar(100) NOT NULL,
  `country` varchar(255) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `zip` varchar(100) NOT NULL,
  `vat` varchar(100) NOT NULL,
  `widget_creators_featured` enum('on','off') NOT NULL DEFAULT 'on',
  `home_style` int(10) UNSIGNED NOT NULL,
  `file_size_allowed_verify_account` int(10) UNSIGNED NOT NULL,
  `payout_method_paypal` enum('on','off') NOT NULL DEFAULT 'on',
  `payout_method_bank` enum('on','off') NOT NULL DEFAULT 'on',
  `min_tip_amount` int(10) UNSIGNED NOT NULL,
  `max_tip_amount` int(10) UNSIGNED NOT NULL,
  `min_ppv_amount` int(10) UNSIGNED NOT NULL,
  `max_ppv_amount` int(10) UNSIGNED NOT NULL,
  `min_deposits_amount` int(10) UNSIGNED NOT NULL,
  `max_deposits_amount` int(10) UNSIGNED NOT NULL,
  `button_style` enum('rounded','normal') NOT NULL DEFAULT 'rounded',
  `twitter_login` enum('on','off') NOT NULL DEFAULT 'off',
  `hide_admin_profile` enum('on','off') NOT NULL DEFAULT 'off',
  `requests_verify_account` enum('on','off') NOT NULL DEFAULT 'on',
  `navbar_background_color` varchar(30) NOT NULL,
  `navbar_text_color` varchar(30) NOT NULL,
  `footer_background_color` varchar(30) NOT NULL,
  `footer_text_color` varchar(30) NOT NULL,
  `preloading` enum('on','off') NOT NULL DEFAULT 'off',
  `preloading_image` varchar(100) NOT NULL,
  `watermark` enum('on','off') NOT NULL DEFAULT 'on',
  `earnings_simulator` enum('on','off') NOT NULL DEFAULT 'on',
  `custom_css` text NOT NULL,
  `custom_js` text NOT NULL,
  `alert_adult` enum('on','off') NOT NULL DEFAULT 'off',
  `genders` varchar(250) NOT NULL,
  `cover_default` varchar(100) NOT NULL,
  `who_can_see_content` enum('all','users') NOT NULL DEFAULT 'all',
  `users_can_edit_post` enum('on','off') NOT NULL DEFAULT 'on',
  `disable_wallet` enum('on','off') NOT NULL DEFAULT 'on',
  `disable_banner_cookies` enum('on','off') NOT NULL DEFAULT 'off',
  `wallet_format` enum('real_money','credits','points','tokens') NOT NULL DEFAULT 'real_money',
  `maximum_files_post` int(10) UNSIGNED NOT NULL DEFAULT 5,
  `maximum_files_msg` int(10) UNSIGNED NOT NULL DEFAULT 5,
  `announcement` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `announcement_show` varchar(100) NOT NULL,
  `announcement_cookie` varchar(20) NOT NULL,
  `limit_categories` int(10) UNSIGNED NOT NULL DEFAULT 3,
  `captcha_contact` enum('on','off') NOT NULL DEFAULT 'on',
  `disable_tips` enum('on','off') NOT NULL DEFAULT 'off',
  `payout_method_payoneer` enum('on','off') NOT NULL DEFAULT 'off',
  `payout_method_zelle` enum('on','off') NOT NULL DEFAULT 'off',
  `type_announcement` char(10) NOT NULL DEFAULT 'primary',
  `referral_system` enum('on','off') NOT NULL DEFAULT 'off',
  `auto_approve_post` enum('on','off') NOT NULL DEFAULT 'on',
  `watermark_on_videos` enum('on','off') NOT NULL DEFAULT 'on',
  `percentage_referred` int(10) UNSIGNED NOT NULL DEFAULT 5,
  `referral_transaction_limit` char(10) NOT NULL DEFAULT '1',
  `video_encoding` enum('on','off') NOT NULL DEFAULT 'off',
  `live_streaming_status` enum('on','off') NOT NULL DEFAULT 'off',
  `live_streaming_minimum_price` int(10) UNSIGNED NOT NULL DEFAULT 5,
  `live_streaming_max_price` int(10) UNSIGNED NOT NULL DEFAULT 100,
  `agora_app_id` varchar(200) NOT NULL,
  `tiktok` varchar(200) NOT NULL,
  `snapchat` varchar(200) NOT NULL,
  `limit_live_streaming_paid` int(10) UNSIGNED NOT NULL,
  `limit_live_streaming_free` int(10) UNSIGNED NOT NULL,
  `live_streaming_free` enum('0','1') NOT NULL DEFAULT '0',
  `type_withdrawals` char(50) NOT NULL DEFAULT 'custom',
  `shop` tinyint(1) NOT NULL DEFAULT 0,
  `min_price_product` int(10) UNSIGNED NOT NULL DEFAULT 5,
  `max_price_product` int(10) UNSIGNED NOT NULL DEFAULT 100,
  `digital_product_sale` tinyint(1) NOT NULL DEFAULT 0,
  `custom_content` tinyint(1) NOT NULL DEFAULT 0,
  `tax_on_wallet` tinyint(1) NOT NULL DEFAULT 1,
  `stripe_connect` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `stripe_connect_countries` longtext NOT NULL,
  `physical_products` tinyint(1) NOT NULL DEFAULT 0,
  `disable_login_register_email` tinyint(1) NOT NULL DEFAULT 0,
  `disable_contact` tinyint(1) NOT NULL DEFAULT 0,
  `specific_day_payment_withdrawals` int(10) UNSIGNED NOT NULL,
  `disable_new_post_notification` tinyint(1) NOT NULL DEFAULT 0,
  `disable_search_creators` tinyint(1) NOT NULL DEFAULT 0,
  `search_creators_genders` tinyint(1) NOT NULL DEFAULT 0,
  `generate_qr_code` tinyint(1) NOT NULL DEFAULT 0,
  `autofollow_admin` tinyint(1) NOT NULL DEFAULT 0,
  `allow_zip_files` tinyint(1) NOT NULL DEFAULT 1,
  `reddit` varchar(200) NOT NULL,
  `telegram` varchar(200) NOT NULL,
  `linkedin` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `admin_settings`
--

INSERT INTO `admin_settings` (`id`, `title`, `description`, `keywords`, `update_length`, `status_page`, `email_verification`, `email_no_reply`, `email_admin`, `captcha`, `file_size_allowed`, `google_analytics`, `paypal_account`, `twitter`, `facebook`, `pinterest`, `instagram`, `google_adsense`, `currency_symbol`, `currency_code`, `min_subscription_amount`, `payment_gateway`, `min_width_height_image`, `fee_commission`, `max_subscription_amount`, `date_format`, `link_privacy`, `link_terms`, `currency_position`, `facebook_login`, `amount_min_withdrawal`, `youtube`, `github`, `comment_length`, `days_process_withdrawals`, `google_login`, `number_posts_show`, `number_comments_show`, `registration_active`, `account_verification`, `logo`, `logo_2`, `favicon`, `home_index`, `bg_gradient`, `img_1`, `img_2`, `img_3`, `img_4`, `avatar`, `show_counter`, `color_default`, `decimal_format`, `version`, `link_cookies`, `story_length`, `maintenance_mode`, `company`, `country`, `address`, `city`, `zip`, `vat`, `widget_creators_featured`, `home_style`, `file_size_allowed_verify_account`, `payout_method_paypal`, `payout_method_bank`, `min_tip_amount`, `max_tip_amount`, `min_ppv_amount`, `max_ppv_amount`, `min_deposits_amount`, `max_deposits_amount`, `button_style`, `twitter_login`, `hide_admin_profile`, `requests_verify_account`, `navbar_background_color`, `navbar_text_color`, `footer_background_color`, `footer_text_color`, `preloading`, `preloading_image`, `watermark`, `earnings_simulator`, `custom_css`, `custom_js`, `alert_adult`, `genders`, `cover_default`, `who_can_see_content`, `users_can_edit_post`, `disable_wallet`, `disable_banner_cookies`, `wallet_format`, `maximum_files_post`, `maximum_files_msg`, `announcement`, `announcement_show`, `announcement_cookie`, `limit_categories`, `captcha_contact`, `disable_tips`, `payout_method_payoneer`, `payout_method_zelle`, `type_announcement`, `referral_system`, `auto_approve_post`, `watermark_on_videos`, `percentage_referred`, `referral_transaction_limit`, `video_encoding`, `live_streaming_status`, `live_streaming_minimum_price`, `live_streaming_max_price`, `agora_app_id`, `tiktok`, `snapchat`, `limit_live_streaming_paid`, `limit_live_streaming_free`, `live_streaming_free`, `type_withdrawals`, `shop`, `min_price_product`, `max_price_product`, `digital_product_sale`, `custom_content`, `tax_on_wallet`, `stripe_connect`, `stripe_connect_countries`, `physical_products`, `disable_login_register_email`, `disable_contact`, `specific_day_payment_withdrawals`, `disable_new_post_notification`, `disable_search_creators`, `search_creators_genders`, `generate_qr_code`, `autofollow_admin`, `allow_zip_files`, `reddit`, `telegram`, `linkedin`) VALUES
(1, 'Sponzy', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ut tortor rutrum massa efficitur tincidunt vel nec lacus. Curabitur porta aliquet diam, eu gravida neque lacinia.', 'donations,support,creators,Creaty,subscription', 250, '1', '0', 'no-reply@sponzy.net', 'admin@admin.com', 'off', 5120, '', 'paypal@yousite.com', '', '', '', '', '', '$', 'USD', 2, 'PayPal', '400', 5, 100, 'M d, Y', 'https://yousite.com/p/privacy', 'https://yousite.com/p/terms-of-service', 'left', 'off', 50, '', '', 150, 7, 'off', 5, 2, '1', '1', 'logo.png', 'logo-blue.png', 'favicon.png', 'home_index.png', 'bg-gradient.jpg', 'img_1.svg', 'img_2.svg', 'img_3.svg', 'img_4.png', 'default.jpg', 'off', '#450ea7', 'dot', '4.1', 'https://yousite.com/p/cookies', 500, 'off', '', '', '', '', '', '', 'off', 0, 1024, 'on', 'on', 5, 100, 5, 100, 5, 100, 'rounded', 'off', 'off', 'on', '#ffffff', '#3a3a3a', '#ffffff', '#5f5f5f', 'off', '', 'on', 'on', '', '', 'off', 'male,female', '', 'all', 'on', 'off', 'off', 'real_money', 5, 5, '', '', '', 3, 'on', 'off', 'off', 'off', 'primary', 'off', 'on', 'on', 5, '1', 'off', 'off', 5, 100, '', '', '', 0, 0, '0', 'custom', 0, 5, 100, 0, 0, 1, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `image` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `tags` varchar(255) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bookmarks`
--

CREATE TABLE `bookmarks` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `updates_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `mode` enum('on','off') NOT NULL DEFAULT 'on',
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `keywords`, `mode`, `image`) VALUES
(1, 'Artist', 'artist', '', '', 'on', 'artist-By4bfBlXy75qPKK99RgC5MN9g8lUTWo8.jpg'),
(2, 'Designer', 'designer', '', '', 'on', 'designer-SP7jB58pOuQW7Wz3Tf2v32OOZrU6zgxh.jpg'),
(3, 'Drawing and Painting', 'drawing-and-painting', '', '', 'on', 'drawing-and-painting-sRKBmjTngYwmwZ5PZ2OIPr2K2MS5WT2Q.jpg'),
(4, 'Developer', 'developer', '', '', 'on', 'developer-fpZjQGTE9TCtNIkE3K7XmOyoFHsrcI7Q.jpg'),
(5, 'Animation', 'animation', 'Category Animation', 'animate, animation', 'on', 'animation-N600Gsc1uJffH9Jsdjo9kYpq3TKl7E9x.jpg'),
(7, 'Photography', 'photography', '', '', 'on', 'photography-Q8AA4mr4v3Y7AkNEj9dU46oHjTJqAWcO.jpg'),
(8, 'Video and Film', 'video-and-film', '', '', 'on', 'video-and-film-F4BHush4GW0y9WzMrxWCJXEoKMcZWZeZ.jpg'),
(9, 'Podcasts', 'podcasts', '', '', 'on', 'podcasts-ubacYB2BVCgzu79lqOXp9Zfa2jtjwgFE.jpg'),
(10, 'Others', 'others', '', '', 'on', 'others-PplPsJxWsOu7ex6qWqWdQtMhYDufxM2k.jpg'),
(12, 'Writing', 'writing', '', '', 'on', 'writing-Q5b6A8vlTiE4W1pokW1sR1TGxJigTLAv.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comments`
--

CREATE TABLE `comments` (
  `id` int(11) UNSIGNED NOT NULL,
  `updates_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `reply` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 Trash, 1 Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comments_likes`
--

CREATE TABLE `comments_likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `comments_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conversations`
--

CREATE TABLE `conversations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_1` int(11) NOT NULL,
  `user_2` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`) VALUES
(1, 'US', 'United States'),
(2, 'CA', 'Canada'),
(3, 'AF', 'Afghanistan'),
(4, 'AL', 'Albania'),
(5, 'DZ', 'Algeria'),
(6, 'DS', 'American Samoa'),
(7, 'AD', 'Andorra'),
(8, 'AO', 'Angola'),
(9, 'AI', 'Anguilla'),
(10, 'AQ', 'Antarctica'),
(11, 'AG', 'Antigua and/or Barbuda'),
(12, 'AR', 'Argentina'),
(13, 'AM', 'Armenia'),
(14, 'AW', 'Aruba'),
(15, 'AU', 'Australia'),
(16, 'AT', 'Austria'),
(17, 'AZ', 'Azerbaijan'),
(18, 'BS', 'Bahamas'),
(19, 'BH', 'Bahrain'),
(20, 'BD', 'Bangladesh'),
(21, 'BB', 'Barbados'),
(22, 'BY', 'Belarus'),
(23, 'BE', 'Belgium'),
(24, 'BZ', 'Belize'),
(25, 'BJ', 'Benin'),
(26, 'BM', 'Bermuda'),
(27, 'BT', 'Bhutan'),
(28, 'BO', 'Bolivia'),
(29, 'BA', 'Bosnia and Herzegovina'),
(30, 'BW', 'Botswana'),
(31, 'BV', 'Bouvet Island'),
(32, 'BR', 'Brazil'),
(33, 'IO', 'British lndian Ocean Territory'),
(34, 'BN', 'Brunei Darussalam'),
(35, 'BG', 'Bulgaria'),
(36, 'BF', 'Burkina Faso'),
(37, 'BI', 'Burundi'),
(38, 'KH', 'Cambodia'),
(39, 'CM', 'Cameroon'),
(40, 'CV', 'Cape Verde'),
(41, 'KY', 'Cayman Islands'),
(42, 'CF', 'Central African Republic'),
(43, 'TD', 'Chad'),
(44, 'CL', 'Chile'),
(45, 'CN', 'China'),
(46, 'CX', 'Christmas Island'),
(47, 'CC', 'Cocos (Keeling) Islands'),
(48, 'CO', 'Colombia'),
(49, 'KM', 'Comoros'),
(50, 'CG', 'Congo'),
(51, 'CK', 'Cook Islands'),
(52, 'CR', 'Costa Rica'),
(53, 'HR', 'Croatia (Hrvatska)'),
(54, 'CU', 'Cuba'),
(55, 'CY', 'Cyprus'),
(56, 'CZ', 'Czech Republic'),
(57, 'DK', 'Denmark'),
(58, 'DJ', 'Djibouti'),
(59, 'DM', 'Dominica'),
(60, 'DO', 'Dominican Republic'),
(61, 'TP', 'East Timor'),
(62, 'EC', 'Ecuador'),
(63, 'EG', 'Egypt'),
(64, 'SV', 'El Salvador'),
(65, 'GQ', 'Equatorial Guinea'),
(66, 'ER', 'Eritrea'),
(67, 'EE', 'Estonia'),
(68, 'ET', 'Ethiopia'),
(69, 'FK', 'Falkland Islands (Malvinas)'),
(70, 'FO', 'Faroe Islands'),
(71, 'FJ', 'Fiji'),
(72, 'FI', 'Finland'),
(73, 'FR', 'France'),
(74, 'FX', 'France, Metropolitan'),
(75, 'GF', 'French Guiana'),
(76, 'PF', 'French Polynesia'),
(77, 'TF', 'French Southern Territories'),
(78, 'GA', 'Gabon'),
(79, 'GM', 'Gambia'),
(80, 'GE', 'Georgia'),
(81, 'DE', 'Germany'),
(82, 'GH', 'Ghana'),
(83, 'GI', 'Gibraltar'),
(84, 'GR', 'Greece'),
(85, 'GL', 'Greenland'),
(86, 'GD', 'Grenada'),
(87, 'GP', 'Guadeloupe'),
(88, 'GU', 'Guam'),
(89, 'GT', 'Guatemala'),
(90, 'GN', 'Guinea'),
(91, 'GW', 'Guinea-Bissau'),
(92, 'GY', 'Guyana'),
(93, 'HT', 'Haiti'),
(94, 'HM', 'Heard and Mc Donald Islands'),
(95, 'HN', 'Honduras'),
(96, 'HK', 'Hong Kong'),
(97, 'HU', 'Hungary'),
(98, 'IS', 'Iceland'),
(99, 'IN', 'India'),
(100, 'ID', 'Indonesia'),
(101, 'IR', 'Iran (Islamic Republic of)'),
(102, 'IQ', 'Iraq'),
(103, 'IE', 'Ireland'),
(104, 'IL', 'Israel'),
(105, 'IT', 'Italy'),
(106, 'CI', 'Ivory Coast'),
(107, 'JM', 'Jamaica'),
(108, 'JP', 'Japan'),
(109, 'JO', 'Jordan'),
(110, 'KZ', 'Kazakhstan'),
(111, 'KE', 'Kenya'),
(112, 'KI', 'Kiribati'),
(113, 'KP', 'Korea, Democratic People\'s Republic of'),
(114, 'KR', 'Korea, Republic of'),
(115, 'XK', 'Kosovo'),
(116, 'KW', 'Kuwait'),
(117, 'KG', 'Kyrgyzstan'),
(118, 'LA', 'Lao People\'s Democratic Republic'),
(119, 'LV', 'Latvia'),
(120, 'LB', 'Lebanon'),
(121, 'LS', 'Lesotho'),
(122, 'LR', 'Liberia'),
(123, 'LY', 'Libyan Arab Jamahiriya'),
(124, 'LI', 'Liechtenstein'),
(125, 'LT', 'Lithuania'),
(126, 'LU', 'Luxembourg'),
(127, 'MO', 'Macau'),
(128, 'MK', 'Macedonia'),
(129, 'MG', 'Madagascar'),
(130, 'MW', 'Malawi'),
(131, 'MY', 'Malaysia'),
(132, 'MV', 'Maldives'),
(133, 'ML', 'Mali'),
(134, 'MT', 'Malta'),
(135, 'MH', 'Marshall Islands'),
(136, 'MQ', 'Martinique'),
(137, 'MR', 'Mauritania'),
(138, 'MU', 'Mauritius'),
(139, 'TY', 'Mayotte'),
(140, 'MX', 'Mexico'),
(141, 'FM', 'Micronesia, Federated States of'),
(142, 'MD', 'Moldova, Republic of'),
(143, 'MC', 'Monaco'),
(144, 'MN', 'Mongolia'),
(145, 'ME', 'Montenegro'),
(146, 'MS', 'Montserrat'),
(147, 'MA', 'Morocco'),
(148, 'MZ', 'Mozambique'),
(149, 'MM', 'Myanmar'),
(150, 'NA', 'Namibia'),
(151, 'NR', 'Nauru'),
(152, 'NP', 'Nepal'),
(153, 'NL', 'Netherlands'),
(154, 'AN', 'Netherlands Antilles'),
(155, 'NC', 'New Caledonia'),
(156, 'NZ', 'New Zealand'),
(157, 'NI', 'Nicaragua'),
(158, 'NE', 'Niger'),
(159, 'NG', 'Nigeria'),
(160, 'NU', 'Niue'),
(161, 'NF', 'Norfork Island'),
(162, 'MP', 'Northern Mariana Islands'),
(163, 'NO', 'Norway'),
(164, 'OM', 'Oman'),
(165, 'PK', 'Pakistan'),
(166, 'PW', 'Palau'),
(167, 'PA', 'Panama'),
(168, 'PG', 'Papua New Guinea'),
(169, 'PY', 'Paraguay'),
(170, 'PE', 'Peru'),
(171, 'PH', 'Philippines'),
(172, 'PN', 'Pitcairn'),
(173, 'PL', 'Poland'),
(174, 'PT', 'Portugal'),
(175, 'PR', 'Puerto Rico'),
(176, 'QA', 'Qatar'),
(177, 'RE', 'Reunion'),
(178, 'RO', 'Romania'),
(179, 'RU', 'Russian Federation'),
(180, 'RW', 'Rwanda'),
(181, 'KN', 'Saint Kitts and Nevis'),
(182, 'LC', 'Saint Lucia'),
(183, 'VC', 'Saint Vincent and the Grenadines'),
(184, 'WS', 'Samoa'),
(185, 'SM', 'San Marino'),
(186, 'ST', 'Sao Tome and Principe'),
(187, 'SA', 'Saudi Arabia'),
(188, 'SN', 'Senegal'),
(189, 'RS', 'Serbia'),
(190, 'SC', 'Seychelles'),
(191, 'SL', 'Sierra Leone'),
(192, 'SG', 'Singapore'),
(193, 'SK', 'Slovakia'),
(194, 'SI', 'Slovenia'),
(195, 'SB', 'Solomon Islands'),
(196, 'SO', 'Somalia'),
(197, 'ZA', 'South Africa'),
(198, 'GS', 'South Georgia South Sandwich Islands'),
(199, 'ES', 'Spain'),
(200, 'LK', 'Sri Lanka'),
(201, 'SH', 'St. Helena'),
(202, 'PM', 'St. Pierre and Miquelon'),
(203, 'SD', 'Sudan'),
(204, 'SR', 'Suriname'),
(205, 'SJ', 'Svalbarn and Jan Mayen Islands'),
(206, 'SZ', 'Swaziland'),
(207, 'SE', 'Sweden'),
(208, 'CH', 'Switzerland'),
(209, 'SY', 'Syrian Arab Republic'),
(210, 'TW', 'Taiwan'),
(211, 'TJ', 'Tajikistan'),
(212, 'TZ', 'Tanzania, United Republic of'),
(213, 'TH', 'Thailand'),
(214, 'TG', 'Togo'),
(215, 'TK', 'Tokelau'),
(216, 'TO', 'Tonga'),
(217, 'TT', 'Trinidad and Tobago'),
(218, 'TN', 'Tunisia'),
(219, 'TR', 'Turkey'),
(220, 'TM', 'Turkmenistan'),
(221, 'TC', 'Turks and Caicos Islands'),
(222, 'TV', 'Tuvalu'),
(223, 'UG', 'Uganda'),
(224, 'UA', 'Ukraine'),
(225, 'AE', 'United Arab Emirates'),
(226, 'GB', 'United Kingdom'),
(227, 'UM', 'United States minor outlying islands'),
(228, 'UY', 'Uruguay'),
(229, 'UZ', 'Uzbekistan'),
(230, 'VU', 'Vanuatu'),
(231, 'VA', 'Vatican City State'),
(232, 'VE', 'Venezuela'),
(233, 'VN', 'Vietnam'),
(234, 'VG', 'Virgin Islands (British)'),
(235, 'VI', 'Virgin Islands (U.S.)'),
(236, 'WF', 'Wallis and Futuna Islands'),
(237, 'EH', 'Western Sahara'),
(238, 'YE', 'Yemen'),
(239, 'YU', 'Yugoslavia'),
(240, 'ZR', 'Zaire'),
(241, 'ZM', 'Zambia'),
(242, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deposits`
--

CREATE TABLE `deposits` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `txn_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL,
  `payment_gateway` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` enum('active','pending') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `screenshot_transfer` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage_applied` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_fee` double(10,2) NOT NULL,
  `taxes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbreviation` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `languages`
--

INSERT INTO `languages` (`id`, `name`, `abbreviation`) VALUES
(1, 'English', 'en'),
(2, 'Español', 'es');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `likes`
--

CREATE TABLE `likes` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `updates_id` int(11) UNSIGNED NOT NULL,
  `status` enum('0','1') CHARACTER SET utf8 NOT NULL DEFAULT '1' COMMENT '0 trash, 1 active',
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `live_comments`
--

CREATE TABLE `live_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `live_streamings_id` int(10) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `joined` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `tip` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `tip_amount` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `live_likes`
--

CREATE TABLE `live_likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `live_streamings_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `live_online_users`
--

CREATE TABLE `live_online_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `live_streamings_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `live_streamings`
--

CREATE TABLE `live_streamings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `channel` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `availability` char(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all_pay'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `updates_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `encoded` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `video_poster` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration_video` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quality_video` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_embed` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `music` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','pending') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `media_messages`
--

CREATE TABLE `media_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `messages_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_poster` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration_video` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quality_video` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','pending') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `encoded` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `media_products`
--

CREATE TABLE `media_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `products_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `conversations_id` int(11) UNSIGNED NOT NULL,
  `from_user_id` int(10) UNSIGNED NOT NULL,
  `to_user_id` int(10) UNSIGNED NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attach_file` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` enum('new','readed') NOT NULL DEFAULT 'new',
  `remove_from` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 Delete, 1 Active',
  `file` varchar(150) NOT NULL,
  `original_name` varchar(255) NOT NULL,
  `format` varchar(10) NOT NULL,
  `size` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `tip` enum('yes','no') NOT NULL DEFAULT 'no',
  `tip_amount` int(10) UNSIGNED NOT NULL,
  `mode` enum('active','pending') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `destination` int(10) UNSIGNED NOT NULL,
  `author` int(10) UNSIGNED NOT NULL,
  `target` int(10) UNSIGNED NOT NULL,
  `type` int(10) UNSIGNED NOT NULL COMMENT '1 Subscribed, 2  Like, 3 reply, 4 Like Comment',
  `status` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0 unseen, 1 seen',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(150) NOT NULL,
  `content` mediumtext DEFAULT NULL,
  `slug` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `lang` char(10) NOT NULL DEFAULT 'es',
  `access` varchar(50) NOT NULL DEFAULT 'all'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pages`
--

INSERT INTO `pages` (`id`, `title`, `content`, `slug`, `description`, `keywords`, `lang`, `access`) VALUES
(2, 'Terms of Service', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets<br />\r\n<br />\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets<br />\r\n<br />\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets<br />\r\n<br />\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets</p>', 'terms-of-service', 'Terms of Service of Sponzy', 'terms, Terms of Service', 'en', 'all'),
(3, 'Privacy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets \n\n<br/><br/>\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'privacy', '', '', 'en', 'all'),
(5, 'About us', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets<br />\r\n<br />\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>\r\n', 'about', '', '', 'en', 'all'),
(8, 'How it works', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>', 'how-it-works', '', '', 'en', 'all'),
(9, 'Cookies Policy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets', 'cookies', 'Page Cookies Policy', 'cookies, policy', 'en', 'all');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(10) UNSIGNED NOT NULL,
  `token` varchar(150) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `sandbox` enum('true','false') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'true',
  `fee` decimal(3,1) NOT NULL,
  `fee_cents` decimal(6,2) NOT NULL,
  `email` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key_secret` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `recurrent` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `webhook_secret` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subscription` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `ccbill_accnum` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ccbill_subacc` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ccbill_flexid` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ccbill_salt` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `name`, `type`, `enabled`, `sandbox`, `fee`, `fee_cents`, `email`, `token`, `key`, `key_secret`, `bank_info`, `recurrent`, `logo`, `webhook_secret`, `subscription`, `ccbill_accnum`, `ccbill_subacc`, `ccbill_flexid`, `ccbill_salt`) VALUES
(1, 'PayPal', 'normal', '0', 'true', '5.4', '0.30', '', '02bGGfD9bHevK3eJN06CdDvFSTXsTrTG44yGdAONeN1R37jqnLY1PuNF0mJRoFnsEygyf28yePSCA1eR0alQk4BX89kGG9Rlha2D2KX55TpDFNR5o774OshrkHSZLOFo2fAhHzcWKnwsYDFKgwuaRg', '', '', '', 'yes', 'paypal.png', '', 'yes', '', '', '', ''),
(2, 'Stripe', 'card', '0', 'true', '2.9', '0.30', '', 'asfQSGRvYzS1P0X745krAAyHeU7ZbTpHbYKnxI2abQsBUi48EpeAu5lFAU2iBmsUWO5tpgAn9zzussI4Cce5ZcANIAmfBz0bNR9g3UfR4cserhkJwZwPsETiXiZuCixXVDHhCItuXTPXXSA6KITEoT', '', '', '', 'yes', 'stripe.png', '', 'yes', '', '', '', ''),
(3, 'Bank', 'bank', '0', 'true', '0.0', '0.00', '', 'MUXRUWEuhBulbgDGUS4PbTCCjlUGr4VcGb59RU2rRWtgCHstntxq2eOeeDvIHKUwxj5z2njJ6DUGfmt0PzFnEWuspasmCserf705dJeQcVttZtHugTlBMlzt0Uf6K4DjVmGVtyZuPzXakjrFGVLYRd', '', '', '', 'no', '', '', 'no', '', '', '', ''),
(4, 'CCBill', 'card', '0', 'true', '0.0', '0.00', '', 'zYYFZRjTfypGTPg0TCgWK8SKdLjGEMuNGMYedjl1D0hgmSPDS0UUduCNqkYL609NWH6ru6qdaBGFIzxeL85HwEtIOBfEQRC16qIQZ1zkTM1wbcC4fe2Wxpom6g8zmoOR1ppFN6MbPFHUJQur434Nzg', '', '', '', 'yes', '', '', 'yes', '', '', '', ''),
(5, 'Paystack', 'card', '0', 'true', '0.0', '0.00', '', '4w2JnfBSvoZKLiVRzHRWu3pzkgsFslVZBn8Z4mmwzVJ5KVfiFZN9kTgfFEVu90E1wPN8TnaXhtmYKwkzZ0p6HGUo1S5yVXisVxlD2PIOcm6v096akLbMAgjxiXCdFlCALkZXqi4pfrwxpYd7BGFk8c', '', '', '', 'yes', '', '', 'yes', '', '', '', ''),
(6, 'Coinpayments', 'normal', '0', 'true', '0.0', '0.00', '', 'nzfADI4PgRHRn8m3r7UrR0arnfT9u1rDOQL5SKGbqPjDOZGDZA35NX3y0lQBAdmIyGVS58Rr9OtebfpGNpiXROq1G1DJNqq6xoD04fLKWTaAS2Xh3CZvECa1OfH5cchJ2P6kEl167Caax2XyAwwjGl', '', '', '', 'no', 'coinpayments.png', '', 'no', '', '', '', ''),
(7, 'Mercadopago', 'normal', '0', 'true', '0.0', '0.00', '', 'UmqNKk1EzDyjGgJxAswkhzL8bSdHusZh8RxF4hqzCEf52qdMOAMzMCchsKrLZgPcuTry6AZLLG7DUGwlpXVVpv1CajJbiV3j4EvPqbbIkBCoOptrDWZY1nRJhMc39v6NDOKFo9TjHQdnwU5pZSSReW', '', '', '', 'no', 'mercadopago.png', '', 'no', '', '', '', ''),
(8, 'Flutterwave', 'normal', '0', 'true', '0.0', '0.00', '', 'jMF4RWTW14dfJxlusZ22jGeCLdc8i3416CNiw2ny4l8kGBILQDTrhLtCsDxmb1MfBQA6xGh5BhQBrOXCUBB8lQMZrCaJQykG3Nxbv0ADFUSJiNewq7kbSkxyR3rCbbVjhBYMtWt6dpJTB78CafpA6T', '', '', '', 'no', 'flutterwave.png', '', 'no', '', '', '', ''),
(9, 'Mollie', 'normal', '0', 'true', '0.0', '0.00', '', 'EqvhQZimw0L3zWQ35AV93iDOqgQnkXV9cqLnIvgsnz2zRLpjeZUv5JnC3QzTjtctYuVmzuo06N31tLCRPFJNkomdh7Rhk2zxe68GzgWsL1hc6YEM5V5W6JVnqwQfAzNGZkY6ZRFKmZCMbFQXOF3WkR', '', '', '', 'no', 'mollie.png', '', 'no', '', '', '', ''),
(10, 'Razorpay', 'normal', '0', 'true', '0.0', '0.00', '', 'PsNqGq2rlLjo4AaTTsJpxshttwFFrLXjaKcwwQeG2r8aekDoETl9OG1cqND9PluycCfXazyzUiLo7ZFWs2tBWYwOpGcM8i5ID93Kr7Y6l79XrBcST56QONVpEcAuLRs36Z2t1Q1MBlR315c6vSpAFX', '', '', '', 'no', 'razorpay.png', '', 'no', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pay_per_views`
--

CREATE TABLE `pay_per_views` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `updates_id` int(10) UNSIGNED NOT NULL,
  `messages_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plans`
--

CREATE TABLE `plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `interval` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paystack` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` char(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'digital',
  `price` decimal(10,2) NOT NULL,
  `delivery_time` int(10) UNSIGNED NOT NULL,
  `country_free_shipping` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shipping_fee` decimal(10,2) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `box_contents` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transactions_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `products_id` int(10) UNSIGNED NOT NULL,
  `delivery_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'delivered',
  `description_custom_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `referrals`
--

CREATE TABLE `referrals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `referred_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `referral_transactions`
--

CREATE TABLE `referral_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transactions_id` int(10) UNSIGNED DEFAULT NULL,
  `referrals_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `referred_by` int(10) UNSIGNED NOT NULL,
  `earnings` double(10,2) NOT NULL,
  `type` char(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reports`
--

CREATE TABLE `reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `report_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(100) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserved`
--

CREATE TABLE `reserved` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `reserved`
--

INSERT INTO `reserved` (`id`, `name`) VALUES
(14, 'account'),
(31, 'api'),
(2, 'app'),
(49, 'artisan'),
(47, 'blog'),
(30, 'bootstrap'),
(34, 'categories'),
(36, 'collections'),
(29, 'comment'),
(42, 'config'),
(25, 'contact'),
(45, 'core'),
(46, 'cpanel'),
(32, 'creators'),
(37, 'dashboard'),
(41, 'database'),
(50, 'explore'),
(35, 'featured'),
(1, 'fuck'),
(9, 'goods'),
(11, 'jobs'),
(21, 'join'),
(16, 'latest'),
(20, 'login'),
(33, 'logout'),
(27, 'members'),
(13, 'messages'),
(19, 'notifications'),
(48, 'offline'),
(15, 'popular'),
(6, 'porn'),
(12, 'projects'),
(3, 'public'),
(23, 'register'),
(40, 'resources'),
(39, 'routes'),
(17, 'search'),
(7, 'sex'),
(51, 'shop'),
(26, 'signup'),
(44, 'storage'),
(8, 'tags'),
(38, 'tests'),
(24, 'upgrade'),
(28, 'upload'),
(4, 'vendor'),
(5, 'xxx');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `restrictions`
--

CREATE TABLE `restrictions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_restricted` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shop_categories`
--

CREATE TABLE `shop_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `countries_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stripe_state_tokens`
--

CREATE TABLE `stripe_state_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_payment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `free` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `subscription_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cancelled` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `rebill_wallet` enum('on','off') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'off',
  `interval` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'monthly',
  `taxes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subscription_items`
--

CREATE TABLE `subscription_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscription_id` bigint(20) UNSIGNED NOT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_product` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tax_rates`
--

CREATE TABLE `tax_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 1,
  `percentage` decimal(5,2) NOT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iso_state` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `txn_id` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `subscriptions_id` int(10) UNSIGNED NOT NULL,
  `subscribed` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `earning_net_user` decimal(10,2) NOT NULL,
  `earning_net_admin` decimal(10,2) NOT NULL,
  `payment_gateway` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '0 Pending, 1 Success, 2 Canceled',
  `amount` float NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscription',
  `percentage_applied` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referred_commission` int(10) UNSIGNED NOT NULL,
  `taxes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direct_payment` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `two_factor_codes`
--

CREATE TABLE `two_factor_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `updates`
--

CREATE TABLE `updates` (
  `id` int(11) NOT NULL,
  `title` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `token_id` varchar(255) NOT NULL,
  `locked` enum('yes','no') NOT NULL DEFAULT 'no',
  `fixed_post` enum('0','1') NOT NULL DEFAULT '0',
  `price` decimal(10,2) NOT NULL,
  `status` char(20) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) NOT NULL,
  `countries_id` char(25) NOT NULL,
  `password` char(60) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `avatar` varchar(70) NOT NULL,
  `cover` varchar(70) NOT NULL,
  `status` enum('pending','active','suspended','delete') NOT NULL DEFAULT 'active',
  `role` enum('normal','admin') NOT NULL DEFAULT 'normal',
  `permission` enum('all','none') NOT NULL DEFAULT 'none',
  `remember_token` varchar(100) NOT NULL,
  `token` varchar(80) NOT NULL,
  `confirmation_code` varchar(125) NOT NULL,
  `paypal_account` varchar(200) NOT NULL,
  `payment_gateway` varchar(50) NOT NULL,
  `bank` text NOT NULL,
  `featured` enum('yes','no') NOT NULL DEFAULT 'no',
  `featured_date` timestamp NULL DEFAULT NULL,
  `about` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `story` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `profession` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `oauth_uid` varchar(255) NOT NULL,
  `oauth_provider` varchar(255) NOT NULL,
  `categories_id` varchar(255) NOT NULL,
  `website` varchar(200) NOT NULL,
  `stripe_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `pm_type` varchar(255) DEFAULT NULL,
  `pm_last_four` varchar(4) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `verified_id` enum('yes','no','reject') DEFAULT 'no',
  `address` varchar(200) NOT NULL,
  `city` varchar(150) NOT NULL,
  `zip` varchar(50) NOT NULL,
  `facebook` varchar(200) NOT NULL,
  `twitter` varchar(200) NOT NULL,
  `instagram` varchar(200) NOT NULL,
  `youtube` varchar(200) NOT NULL,
  `pinterest` varchar(200) NOT NULL,
  `github` varchar(200) NOT NULL,
  `last_seen` timestamp NULL DEFAULT NULL,
  `email_new_subscriber` enum('yes','no') NOT NULL DEFAULT 'yes',
  `plan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notify_new_subscriber` enum('yes','no') NOT NULL DEFAULT 'yes',
  `notify_liked_post` enum('yes','no') NOT NULL DEFAULT 'yes',
  `notify_commented_post` enum('yes','no') NOT NULL DEFAULT 'yes',
  `company` varchar(50) NOT NULL,
  `post_locked` enum('yes','no') NOT NULL DEFAULT 'yes',
  `ip` varchar(40) NOT NULL,
  `dark_mode` enum('on','off') NOT NULL DEFAULT 'off',
  `gender` varchar(50) NOT NULL,
  `birthdate` varchar(30) NOT NULL,
  `allow_download_files` enum('no','yes') NOT NULL DEFAULT 'no',
  `language` varchar(10) NOT NULL,
  `free_subscription` enum('yes','no') NOT NULL DEFAULT 'no',
  `wallet` decimal(10,2) NOT NULL,
  `tiktok` varchar(200) NOT NULL,
  `snapchat` varchar(200) NOT NULL,
  `paystack_plan` varchar(100) NOT NULL,
  `paystack_authorization_code` varchar(100) NOT NULL,
  `paystack_last4` int(10) UNSIGNED NOT NULL,
  `paystack_exp` varchar(50) NOT NULL,
  `paystack_card_brand` varchar(25) NOT NULL,
  `notify_new_tip` enum('yes','no') NOT NULL DEFAULT 'yes',
  `hide_profile` enum('yes','no') NOT NULL DEFAULT 'no',
  `hide_last_seen` enum('yes','no') NOT NULL DEFAULT 'no',
  `last_login` varchar(250) NOT NULL,
  `hide_count_subscribers` enum('yes','no') NOT NULL DEFAULT 'no',
  `hide_my_country` enum('yes','no') NOT NULL DEFAULT 'no',
  `show_my_birthdate` enum('yes','no') NOT NULL DEFAULT 'no',
  `notify_new_post` enum('yes','no') NOT NULL DEFAULT 'yes',
  `notify_email_new_post` enum('yes','no') NOT NULL DEFAULT 'yes',
  `custom_fee` int(10) UNSIGNED NOT NULL,
  `hide_name` enum('yes','no') NOT NULL DEFAULT 'no',
  `birthdate_changed` enum('yes','no') NOT NULL DEFAULT 'no',
  `email_new_tip` enum('yes','no') NOT NULL DEFAULT 'yes',
  `email_new_ppv` enum('yes','no') NOT NULL DEFAULT 'yes',
  `notify_new_ppv` enum('yes','no') NOT NULL DEFAULT 'yes',
  `active_status_online` enum('yes','no') NOT NULL DEFAULT 'yes',
  `payoneer_account` varchar(200) NOT NULL,
  `zelle_account` varchar(200) NOT NULL,
  `notify_liked_comment` enum('yes','no') NOT NULL DEFAULT 'yes',
  `permissions` text NOT NULL,
  `blocked_countries` text NOT NULL,
  `two_factor_auth` enum('yes','no') NOT NULL DEFAULT 'no',
  `notify_live_streaming` enum('yes','no') NOT NULL DEFAULT 'yes',
  `notify_mentions` enum('yes','no') NOT NULL DEFAULT 'yes',
  `stripe_connect_id` varchar(255) DEFAULT NULL,
  `completed_stripe_onboarding` tinyint(1) NOT NULL DEFAULT 0,
  `device_token` varchar(255) DEFAULT NULL,
  `telegram` varchar(200) NOT NULL,
  `vk` varchar(200) NOT NULL,
  `twitch` varchar(200) NOT NULL,
  `discord` varchar(200) NOT NULL,
  `reddit` varchar(200) NOT NULL,
  `spotify` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `countries_id`, `password`, `email`, `date`, `avatar`, `cover`, `status`, `role`, `permission`, `remember_token`, `token`, `confirmation_code`, `paypal_account`, `payment_gateway`, `bank`, `featured`, `featured_date`, `about`, `story`, `profession`, `oauth_uid`, `oauth_provider`, `categories_id`, `website`, `stripe_id`, `pm_type`, `pm_last_four`, `trial_ends_at`, `price`, `balance`, `verified_id`, `address`, `city`, `zip`, `facebook`, `twitter`, `instagram`, `youtube`, `pinterest`, `github`, `last_seen`, `email_new_subscriber`, `plan`, `notify_new_subscriber`, `notify_liked_post`, `notify_commented_post`, `company`, `post_locked`, `ip`, `dark_mode`, `gender`, `birthdate`, `allow_download_files`, `language`, `free_subscription`, `wallet`, `tiktok`, `snapchat`, `paystack_plan`, `paystack_authorization_code`, `paystack_last4`, `paystack_exp`, `paystack_card_brand`, `notify_new_tip`, `hide_profile`, `hide_last_seen`, `last_login`, `hide_count_subscribers`, `hide_my_country`, `show_my_birthdate`, `notify_new_post`, `notify_email_new_post`, `custom_fee`, `hide_name`, `birthdate_changed`, `email_new_tip`, `email_new_ppv`, `notify_new_ppv`, `active_status_online`, `payoneer_account`, `zelle_account`, `notify_liked_comment`, `permissions`, `blocked_countries`, `two_factor_auth`, `notify_live_streaming`, `notify_mentions`, `stripe_connect_id`, `completed_stripe_onboarding`, `device_token`, `telegram`, `vk`, `twitch`, `discord`, `reddit`, `spotify`) VALUES
(1, 'Admin', 'Admin', '1', '$2y$10$U3BsZ5Xx/MpiZLl2N54t8OP0h1EdWOQEDuzO/tAVwKM4AF/nAn9Tu', 'admin@example.com', '2021-03-13 08:01:01', 'default.jpg', '', 'active', 'admin', 'all', 'J5gmAUsBx9fwONd3Ms6PldgF3B0y8OmW6rcdkbtkdkcYlUnhJUsNXOTsS7ih', 'Wy4VkAl2dxHb9WHoXjTowSGPXFPnEQHca6RBe2yeqqmRafs0hSbCEobhNkZZAbCDIru60ceLzAAOI3fj', '', '', '', '', 'yes', '2019-02-21 03:25:00', '', 'Welcome to my page. If you like my content, please consider support. Any donation will be well received. Thank you for your support!', '', '', '', '0', '', NULL, NULL, NULL, NULL, '0.00', '0.00', 'yes', '', '', '', '', '', '', '', '', '', '2022-08-24 09:37:35', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '', 'off', '', '', 'no', '', 'no', '0.00', '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'no', 0, 'no', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', 'full_access', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `verification_requests`
--

CREATE TABLE `verification_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(150) NOT NULL,
  `zip` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `image_reverse` varchar(100) DEFAULT NULL,
  `image_selfie` varchar(100) DEFAULT NULL,
  `status` enum('pending','approved') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `form_w9` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status` enum('pending','paid') NOT NULL DEFAULT 'pending',
  `amount` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `gateway` varchar(100) NOT NULL,
  `account` text NOT NULL,
  `estimated_payment` timestamp NULL DEFAULT NULL,
  `date_paid` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `txn_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin_settings`
--
ALTER TABLE `admin_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tags` (`tags`),
  ADD KEY `slug` (`slug`);

--
-- Indices de la tabla `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookmarks_user_id_index` (`user_id`),
  ADD KEY `bookmarks_updates_id_index` (`updates_id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`);

--
-- Indices de la tabla `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post` (`updates_id`,`user_id`,`status`);

--
-- Indices de la tabla `comments_likes`
--
ALTER TABLE `comments_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_likes_user_id_index` (`user_id`),
  ADD KEY `comments_likes_comments_id_index` (`comments_id`);

--
-- Indices de la tabla `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_1` (`user_1`,`user_2`);

--
-- Indices de la tabla `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usr` (`user_id`,`updates_id`,`status`);

--
-- Indices de la tabla `live_comments`
--
ALTER TABLE `live_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `live_comments_user_id_index` (`user_id`),
  ADD KEY `live_comments_live_streamings_id_index` (`live_streamings_id`);

--
-- Indices de la tabla `live_likes`
--
ALTER TABLE `live_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `live_likes_user_id_index` (`user_id`),
  ADD KEY `live_likes_live_streamings_id_index` (`live_streamings_id`);

--
-- Indices de la tabla `live_online_users`
--
ALTER TABLE `live_online_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `live_online_users_user_id_index` (`user_id`),
  ADD KEY `live_online_users_live_streamings_id_index` (`live_streamings_id`);

--
-- Indices de la tabla `live_streamings`
--
ALTER TABLE `live_streamings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `live_streamings_user_id_index` (`user_id`);

--
-- Indices de la tabla `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_updates_id_index` (`updates_id`),
  ADD KEY `media_user_id_index` (`user_id`),
  ADD KEY `media_type_index` (`type`),
  ADD KEY `media_token_index` (`token`),
  ADD KEY `media_encoded_index` (`encoded`);

--
-- Indices de la tabla `media_messages`
--
ALTER TABLE `media_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_messages_messages_id_index` (`messages_id`),
  ADD KEY `media_messages_type_index` (`type`),
  ADD KEY `media_messages_token_index` (`token`),
  ADD KEY `media_messages_encoded_index` (`encoded`);

--
-- Indices de la tabla `media_products`
--
ALTER TABLE `media_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_products_products_id_index` (`products_id`);

--
-- Indices de la tabla `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `from` (`from_user_id`,`to_user_id`,`status`),
  ADD KEY `remove_from` (`remove_from`),
  ADD KEY `conversation_id` (`conversations_id`),
  ADD KEY `messages_mode_index` (`mode`);

--
-- Indices de la tabla `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destination` (`destination`,`author`,`target`,`status`);

--
-- Indices de la tabla `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_hash` (`token`),
  ADD KEY `email` (`email`);

--
-- Indices de la tabla `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pay_per_views`
--
ALTER TABLE `pay_per_views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pay_per_views_user_id_index` (`user_id`),
  ADD KEY `pay_per_views_updates_id_index` (`updates_id`),
  ADD KEY `pay_per_views_messages_id_index` (`messages_id`);

--
-- Indices de la tabla `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plans_name_unique` (`name`),
  ADD KEY `plans_user_id_index` (`user_id`),
  ADD KEY `plans_paystack_index` (`paystack`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_index` (`user_id`);

--
-- Indices de la tabla `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_transactions_id_index` (`transactions_id`),
  ADD KEY `purchases_user_id_index` (`user_id`),
  ADD KEY `purchases_products_id_index` (`products_id`);

--
-- Indices de la tabla `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `referrals_user_id_index` (`user_id`),
  ADD KEY `referrals_referred_by_index` (`referred_by`);

--
-- Indices de la tabla `referral_transactions`
--
ALTER TABLE `referral_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `referral_transactions_referrals_id_index` (`referrals_id`),
  ADD KEY `referral_transactions_user_id_index` (`user_id`),
  ADD KEY `referral_transactions_referred_by_index` (`referred_by`),
  ADD KEY `referral_transactions_transactions_id_index` (`transactions_id`);

--
-- Indices de la tabla `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`user_id`,`report_id`);

--
-- Indices de la tabla `reserved`
--
ALTER TABLE `reserved`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`) USING BTREE;

--
-- Indices de la tabla `restrictions`
--
ALTER TABLE `restrictions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restrictions_user_id_index` (`user_id`),
  ADD KEY `restrictions_user_restricted_index` (`user_restricted`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indices de la tabla `shop_categories`
--
ALTER TABLE `shop_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_categories_slug_index` (`slug`);

--
-- Indices de la tabla `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `states_countries_id_index` (`countries_id`),
  ADD KEY `name` (`name`),
  ADD KEY `code` (`code`);

--
-- Indices de la tabla `stripe_state_tokens`
--
ALTER TABLE `stripe_state_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_user_id_stripe_status_index` (`user_id`,`stripe_status`(191)),
  ADD KEY `last_payment` (`last_payment`(191));

--
-- Indices de la tabla `subscription_items`
--
ALTER TABLE `subscription_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_id` (`subscription_id`);

--
-- Indices de la tabla `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `type` (`type`);

--
-- Indices de la tabla `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `subscriber` (`subscriptions_id`),
  ADD KEY `subscribed` (`subscribed`);

--
-- Indices de la tabla `two_factor_codes`
--
ALTER TABLE `two_factor_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `updates`
--
ALTER TABLE `updates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token_id` (`token_id`),
  ADD KEY `author_id` (`token_id`),
  ADD KEY `category_id` (`user_id`),
  ADD KEY `updates_status_index` (`status`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `username` (`status`),
  ADD KEY `role` (`role`),
  ADD KEY `username_2` (`username`),
  ADD KEY `permission` (`permission`),
  ADD KEY `categories_id` (`categories_id`),
  ADD KEY `stripe_id` (`stripe_id`(191)),
  ADD KEY `users_permissions_index` (`permissions`(1024)),
  ADD KEY `users_blocked_countries_index` (`blocked_countries`(1024));

--
-- Indices de la tabla `verification_requests`
--
ALTER TABLE `verification_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaings_id` (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin_settings`
--
ALTER TABLE `admin_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bookmarks`
--
ALTER TABLE `bookmarks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `comments_likes`
--
ALTER TABLE `comments_likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT de la tabla `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `live_comments`
--
ALTER TABLE `live_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `live_likes`
--
ALTER TABLE `live_likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `live_online_users`
--
ALTER TABLE `live_online_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `live_streamings`
--
ALTER TABLE `live_streamings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `media_messages`
--
ALTER TABLE `media_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `media_products`
--
ALTER TABLE `media_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `pay_per_views`
--
ALTER TABLE `pay_per_views`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `plans`
--
ALTER TABLE `plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `referrals`
--
ALTER TABLE `referrals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `referral_transactions`
--
ALTER TABLE `referral_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reserved`
--
ALTER TABLE `reserved`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `restrictions`
--
ALTER TABLE `restrictions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `shop_categories`
--
ALTER TABLE `shop_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `stripe_state_tokens`
--
ALTER TABLE `stripe_state_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `subscription_items`
--
ALTER TABLE `subscription_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tax_rates`
--
ALTER TABLE `tax_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `two_factor_codes`
--
ALTER TABLE `two_factor_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `updates`
--
ALTER TABLE `updates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `verification_requests`
--
ALTER TABLE `verification_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
