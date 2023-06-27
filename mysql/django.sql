-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for django
CREATE DATABASE IF NOT EXISTS `django` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `django`;

-- Dumping structure for table django.auth_group
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table django.auth_group: ~0 rows (approximately)

-- Dumping structure for table django.auth_group_permissions
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table django.auth_group_permissions: ~0 rows (approximately)

-- Dumping structure for table django.auth_permission
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table django.auth_permission: ~48 rows (approximately)
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add user', 1, 'add_user'),
	(2, 'Can change user', 1, 'change_user'),
	(3, 'Can delete user', 1, 'delete_user'),
	(4, 'Can view user', 1, 'view_user'),
	(5, 'Can add profile', 2, 'add_profile'),
	(6, 'Can change profile', 2, 'change_profile'),
	(7, 'Can delete profile', 2, 'delete_profile'),
	(8, 'Can view profile', 2, 'view_profile'),
	(9, 'Can add customer', 3, 'add_customer'),
	(10, 'Can change customer', 3, 'change_customer'),
	(11, 'Can delete customer', 3, 'delete_customer'),
	(12, 'Can view customer', 3, 'view_customer'),
	(13, 'Can add cart', 4, 'add_cart'),
	(14, 'Can change cart', 4, 'change_cart'),
	(15, 'Can delete cart', 4, 'delete_cart'),
	(16, 'Can view cart', 4, 'view_cart'),
	(17, 'Can add cart products', 5, 'add_cartproducts'),
	(18, 'Can change cart products', 5, 'change_cartproducts'),
	(19, 'Can delete cart products', 5, 'delete_cartproducts'),
	(20, 'Can view cart products', 5, 'view_cartproducts'),
	(21, 'Can add product', 6, 'add_product'),
	(22, 'Can change product', 6, 'change_product'),
	(23, 'Can delete product', 6, 'delete_product'),
	(24, 'Can view product', 6, 'view_product'),
	(25, 'Can add category', 7, 'add_category'),
	(26, 'Can change category', 7, 'change_category'),
	(27, 'Can delete category', 7, 'delete_category'),
	(28, 'Can view category', 7, 'view_category'),
	(29, 'Can add log entry', 8, 'add_logentry'),
	(30, 'Can change log entry', 8, 'change_logentry'),
	(31, 'Can delete log entry', 8, 'delete_logentry'),
	(32, 'Can view log entry', 8, 'view_logentry'),
	(33, 'Can add permission', 9, 'add_permission'),
	(34, 'Can change permission', 9, 'change_permission'),
	(35, 'Can delete permission', 9, 'delete_permission'),
	(36, 'Can view permission', 9, 'view_permission'),
	(37, 'Can add group', 10, 'add_group'),
	(38, 'Can change group', 10, 'change_group'),
	(39, 'Can delete group', 10, 'delete_group'),
	(40, 'Can view group', 10, 'view_group'),
	(41, 'Can add content type', 11, 'add_contenttype'),
	(42, 'Can change content type', 11, 'change_contenttype'),
	(43, 'Can delete content type', 11, 'delete_contenttype'),
	(44, 'Can view content type', 11, 'view_contenttype'),
	(45, 'Can add session', 12, 'add_session'),
	(46, 'Can change session', 12, 'change_session'),
	(47, 'Can delete session', 12, 'delete_session'),
	(48, 'Can view session', 12, 'view_session');

-- Dumping structure for table django.carts_cart
CREATE TABLE IF NOT EXISTS `carts_cart` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cart_id` varchar(100) NOT NULL,
  `subtotal` decimal(8,0) NOT NULL,
  `total` decimal(8,0) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cart_id` (`cart_id`),
  KEY `carts_cart_user_id_bd0756c7_fk_users_user_id` (`user_id`),
  CONSTRAINT `carts_cart_user_id_bd0756c7_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table django.carts_cart: ~0 rows (approximately)
INSERT INTO `carts_cart` (`id`, `cart_id`, `subtotal`, `total`, `created_at`, `user_id`) VALUES
	(1, '6f596390-43ef-44eb-aea4-71067365f1f0', 154000, 167860, '2023-06-27 01:22:39.122769', 1);

-- Dumping structure for table django.carts_cartproducts
CREATE TABLE IF NOT EXISTS `carts_cartproducts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int unsigned NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `cart_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `carts_cartproducts_cart_id_ba4f1f11_fk_carts_cart_id` (`cart_id`),
  KEY `carts_cartproducts_product_id_20faa16a_fk_products_product_id` (`product_id`),
  CONSTRAINT `carts_cartproducts_cart_id_ba4f1f11_fk_carts_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `carts_cart` (`id`),
  CONSTRAINT `carts_cartproducts_product_id_20faa16a_fk_products_product_id` FOREIGN KEY (`product_id`) REFERENCES `products_product` (`id`),
  CONSTRAINT `carts_cartproducts_chk_1` CHECK ((`quantity` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table django.carts_cartproducts: ~0 rows (approximately)
INSERT INTO `carts_cartproducts` (`id`, `quantity`, `created_at`, `cart_id`, `product_id`) VALUES
	(6, 1, '2023-06-27 02:47:16.955003', 1, 6),
	(7, 1, '2023-06-27 02:56:18.102033', 1, 5),
	(8, 1, '2023-06-27 03:13:11.227891', 1, 7);

-- Dumping structure for table django.categories_category
CREATE TABLE IF NOT EXISTS `categories_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table django.categories_category: ~0 rows (approximately)

-- Dumping structure for table django.categories_category_products
CREATE TABLE IF NOT EXISTS `categories_category_products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_category_prod_category_id_product_id_83c57c41_uniq` (`category_id`,`product_id`),
  KEY `categories_category__product_id_0803359e_fk_products_` (`product_id`),
  CONSTRAINT `categories_category__category_id_54c9c22d_fk_categorie` FOREIGN KEY (`category_id`) REFERENCES `categories_category` (`id`),
  CONSTRAINT `categories_category__product_id_0803359e_fk_products_` FOREIGN KEY (`product_id`) REFERENCES `products_product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table django.categories_category_products: ~0 rows (approximately)

-- Dumping structure for table django.django_admin_log
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_users_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table django.django_admin_log: ~0 rows (approximately)
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
	(1, '2023-06-27 01:28:48.671769', '1', 'MG Lightning Astray Gundam', 1, '[{"added": {}}]', 6, 1),
	(2, '2023-06-27 01:30:25.246070', '2', 'Pikachu’s final form', 1, '[{"added": {}}]', 6, 1),
	(3, '2023-06-27 01:31:38.193314', '3', 'This is absolutely insane!', 1, '[{"added": {}}]', 6, 1),
	(4, '2023-06-27 01:32:57.441321', '4', 'Gundam premiun', 1, '[{"added": {}}]', 6, 1),
	(5, '2023-06-27 01:33:34.311716', '5', 'gundam deluxe', 1, '[{"added": {}}]', 6, 1),
	(6, '2023-06-27 01:34:23.094992', '6', 'gundem edicion limitada', 1, '[{"added": {}}]', 6, 1),
	(7, '2023-06-27 01:35:37.586616', '7', 'Gundam r2', 1, '[{"added": {}}]', 6, 1);

-- Dumping structure for table django.django_content_type
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table django.django_content_type: ~12 rows (approximately)
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(8, 'admin', 'logentry'),
	(10, 'auth', 'group'),
	(9, 'auth', 'permission'),
	(4, 'carts', 'cart'),
	(5, 'carts', 'cartproducts'),
	(7, 'categories', 'category'),
	(11, 'contenttypes', 'contenttype'),
	(6, 'products', 'product'),
	(12, 'sessions', 'session'),
	(3, 'users', 'customer'),
	(2, 'users', 'profile'),
	(1, 'users', 'user');

-- Dumping structure for table django.django_migrations
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table django.django_migrations: ~26 rows (approximately)
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2023-06-27 01:22:23.903118'),
	(2, 'contenttypes', '0002_remove_content_type_name', '2023-06-27 01:22:23.951649'),
	(3, 'auth', '0001_initial', '2023-06-27 01:22:24.160518'),
	(4, 'auth', '0002_alter_permission_name_max_length', '2023-06-27 01:22:24.209663'),
	(5, 'auth', '0003_alter_user_email_max_length', '2023-06-27 01:22:24.215647'),
	(6, 'auth', '0004_alter_user_username_opts', '2023-06-27 01:22:24.221475'),
	(7, 'auth', '0005_alter_user_last_login_null', '2023-06-27 01:22:24.227309'),
	(8, 'auth', '0006_require_contenttypes_0002', '2023-06-27 01:22:24.230311'),
	(9, 'auth', '0007_alter_validators_add_error_messages', '2023-06-27 01:22:24.235309'),
	(10, 'auth', '0008_alter_user_username_max_length', '2023-06-27 01:22:24.241310'),
	(11, 'auth', '0009_alter_user_last_name_max_length', '2023-06-27 01:22:24.247340'),
	(12, 'auth', '0010_alter_group_name_max_length', '2023-06-27 01:22:24.264309'),
	(13, 'auth', '0011_update_proxy_permissions', '2023-06-27 01:22:24.269354'),
	(14, 'auth', '0012_alter_user_first_name_max_length', '2023-06-27 01:22:24.274331'),
	(15, 'users', '0001_initial', '2023-06-27 01:22:24.604758'),
	(16, 'admin', '0001_initial', '2023-06-27 01:22:24.722268'),
	(17, 'admin', '0002_logentry_remove_auto_add', '2023-06-27 01:22:24.730266'),
	(18, 'admin', '0003_logentry_add_action_flag_choices', '2023-06-27 01:22:24.737792'),
	(19, 'products', '0001_initial', '2023-06-27 01:22:24.751899'),
	(20, 'products', '0002_product_slug_alter_product_price', '2023-06-27 01:22:24.831740'),
	(21, 'products', '0003_product_image', '2023-06-27 01:22:24.855738'),
	(22, 'carts', '0001_initial', '2023-06-27 01:22:25.063912'),
	(23, 'carts', '0002_cart_products', '2023-06-27 01:22:25.073885'),
	(24, 'categories', '0001_initial', '2023-06-27 01:22:25.088886'),
	(25, 'categories', '0002_category_products', '2023-06-27 01:22:25.201984'),
	(26, 'sessions', '0001_initial', '2023-06-27 01:22:25.228529');

-- Dumping structure for table django.django_session
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table django.django_session: ~1 rows (approximately)
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	('u6y74oshx5z8tkutryjvn45wj31etovc', '.eJxVjDkOwjAQRe_imlhjxyslPWeIZuwZwqJEylIh7g4RadL-995_q4LT0t2rOqsgPoc2Q-NalsY5pgYZXRMNhNgGL0ZAnVSH69J368zTPzPHjbA8edhAfeBwG3UZh2W6k94UvdNZX8fKr8vuHg56nPtfzSEUsgXI1WTQMxokT8DZRJIoOSdxxaIkyMUYF9FaTgKRIKRoBdXnC_xXRT0:1qDz8i:EIQXPQGUzhCewmIO_eaI6Z4mfD1i_d139FmzSc-ytCk', '2023-07-11 03:13:12.456272');

-- Dumping structure for table django.products_product
CREATE TABLE IF NOT EXISTS `products_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `price` decimal(8,0) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table django.products_product: ~0 rows (approximately)
INSERT INTO `products_product` (`id`, `title`, `description`, `price`, `created_at`, `slug`, `image`) VALUES
	(1, 'MG Lightning Astray Gundam', 'unos de los mejores gundam', 35000, '2023-06-27 01:28:48.671769', 'mg-lightning-astray-gundam', 'products/MG_Lightning_Astray_Gundam_x1000_3.jpg'),
	(2, 'Pikachu’s final form', 'un exclusivo', 52000, '2023-06-27 01:30:25.245000', 'pikachus-final-form', 'products/Pikachus_final_form.jpg'),
	(3, 'This is absolutely insane!', 'es un gundam oscuro', 37000, '2023-06-27 01:31:38.192313', 'this-is-absolutely-insane', 'products/This_is_absolutely_insane4.jpg'),
	(4, 'Gundam premiun', 'lo mejor de lo mejor', 70000, '2023-06-27 01:32:57.441321', 'gundam-premiun', 'products/image-product-2-1.jpg'),
	(5, 'gundam deluxe', 'que dicir', 80000, '2023-06-27 01:33:34.310384', 'gundam-deluxe', 'products/image-product-3-1.jpg'),
	(6, 'gundem edicion limitada', 'esta en oferta', 28000, '2023-06-27 01:34:23.094452', 'gundem-edicion-limitada', 'products/image-product-1.jpg'),
	(7, 'Gundam r2', 'r2 con su accesorio', 46000, '2023-06-27 01:35:37.585618', 'gundam-r2', 'products/image-product-2_khnQja0.jpg');

-- Dumping structure for table django.users_profile
CREATE TABLE IF NOT EXISTS `users_profile` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `bio` longtext NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `users_profile_user_id_2112e78d_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table django.users_profile: ~0 rows (approximately)

-- Dumping structure for table django.users_user
CREATE TABLE IF NOT EXISTS `users_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table django.users_user: ~0 rows (approximately)
INSERT INTO `users_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(1, 'pbkdf2_sha256$600000$Cfg0vfsIWqBCupJKCnP7Jl$jHxmS65yKi9JR+LKI2FGX18DMyu4t51cQYascldlIh8=', '2023-06-27 01:25:45.075474', 1, 'exequiel', '', '', 'ex.alvarado@duocuc.cl', 1, 1, '2023-06-27 01:25:32.792322');

-- Dumping structure for table django.users_user_groups
CREATE TABLE IF NOT EXISTS `users_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_user_groups_user_id_group_id_b88eab82_uniq` (`user_id`,`group_id`),
  KEY `users_user_groups_group_id_9afc8d0e_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_user_groups_group_id_9afc8d0e_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `users_user_groups_user_id_5f6f5a90_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table django.users_user_groups: ~0 rows (approximately)

-- Dumping structure for table django.users_user_user_permissions
CREATE TABLE IF NOT EXISTS `users_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_user_user_permissions_user_id_permission_id_43338c45_uniq` (`user_id`,`permission_id`),
  KEY `users_user_user_perm_permission_id_0b93982e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `users_user_user_perm_permission_id_0b93982e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `users_user_user_permissions_user_id_20aca447_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table django.users_user_user_permissions: ~0 rows (approximately)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
