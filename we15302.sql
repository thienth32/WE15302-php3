/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80025
 Source Host           : localhost:3306
 Source Schema         : we15302

 Target Server Type    : MySQL
 Target Server Version : 80025
 File Encoding         : 65001

 Date: 02/08/2021 18:41:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `show_menu` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
BEGIN;
INSERT INTO `categories` VALUES (1, 'Jo Mraz', 1, 1, '2021-07-02 12:57:22', '2021-07-02 12:57:22');
INSERT INTO `categories` VALUES (2, 'Lauryn Wuckert', 0, 0, '2021-07-02 12:57:22', '2021-07-02 12:57:22');
INSERT INTO `categories` VALUES (3, 'Dusty Raynor PhD', 0, 0, '2021-07-02 12:57:22', '2021-07-02 12:57:22');
INSERT INTO `categories` VALUES (4, 'Kevon Orn', 1, 0, '2021-07-02 12:57:22', '2021-07-02 12:57:22');
INSERT INTO `categories` VALUES (6, 'Dr. Bessie Hahn MD', 1, 0, '2021-07-02 12:57:22', '2021-07-02 12:57:22');
INSERT INTO `categories` VALUES (7, 'Miss Cora Boyle DVM', 1, 0, '2021-07-02 12:57:22', '2021-07-02 12:57:22');
INSERT INTO `categories` VALUES (8, 'Joshuah Bailey', 1, 0, '2021-07-02 12:57:22', '2021-07-02 12:57:22');
INSERT INTO `categories` VALUES (9, 'Dr. Krystina Hermiston I', 0, 1, '2021-07-02 12:57:22', '2021-07-02 12:57:22');
INSERT INTO `categories` VALUES (10, 'Miss Noemy Kemmer DDS', 0, 0, '2021-07-02 12:57:22', '2021-07-02 12:57:22');
INSERT INTO `categories` VALUES (11, 'Esta Braun', 1, 1, '2021-07-02 12:57:22', '2021-07-02 12:57:22');
INSERT INTO `categories` VALUES (12, 'Thora Kerluke IV', 1, 0, '2021-07-02 12:57:22', '2021-07-02 12:57:22');
INSERT INTO `categories` VALUES (13, 'Michale Christiansen', 0, 0, '2021-07-02 12:57:22', '2021-07-02 12:57:22');
INSERT INTO `categories` VALUES (14, 'Prof. Carleton Nienow', 1, 0, '2021-07-02 12:57:22', '2021-07-02 12:57:22');
INSERT INTO `categories` VALUES (15, 'Miss Maximillia Grimes', 1, 1, '2021-07-02 12:57:22', '2021-07-02 12:57:22');
COMMIT;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` VALUES (5, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (6, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (7, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (8, '2021_06_30_125907_create_table_categories', 1);
INSERT INTO `migrations` VALUES (11, '2021_07_02_115301_alter_table_users_add_colum_phone_number', 2);
INSERT INTO `migrations` VALUES (12, '2021_07_02_120047_create_table_products', 2);
INSERT INTO `migrations` VALUES (13, '2021_07_02_120547_alter_table_products_add_fk_cate_id', 3);
INSERT INTO `migrations` VALUES (14, '2021_08_02_113713_create_permission_tables', 4);
COMMIT;

-- ----------------------------
-- Table structure for model_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of model_has_permissions
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for model_has_roles
-- ----------------------------
DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of model_has_roles
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of permissions
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for product_galleries
-- ----------------------------
DROP TABLE IF EXISTS `product_galleries`;
CREATE TABLE `product_galleries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_no` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of product_galleries
-- ----------------------------
BEGIN;
INSERT INTO `product_galleries` VALUES (3, 'uploads/products/galleries/106-6103ead98c975-photo1.png', 3, 106, '2021-07-30 12:04:41', '2021-07-30 12:04:41');
INSERT INTO `product_galleries` VALUES (5, 'uploads/products/galleries/107/6103eb409c4ca-photo1.png', 2, 107, '2021-07-30 12:06:24', '2021-07-30 12:06:24');
INSERT INTO `product_galleries` VALUES (9, 'uploads/products/galleries/106/6103fcca0c171-photo3.jpg', 3, 106, '2021-07-30 13:21:14', '2021-07-30 13:21:14');
INSERT INTO `product_galleries` VALUES (10, 'uploads/products/galleries/106/6103fce056481-prod-5.jpg', 1, 106, '2021-07-30 13:21:36', '2021-07-30 13:21:36');
COMMIT;

-- ----------------------------
-- Table structure for product_tag
-- ----------------------------
DROP TABLE IF EXISTS `product_tag`;
CREATE TABLE `product_tag` (
  `product_id` int NOT NULL,
  `tag_id` int NOT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of product_tag
-- ----------------------------
BEGIN;
INSERT INTO `product_tag` VALUES (4, 1, '2021-07-19 19:25:33', '2021-07-19 19:25:33', 1);
INSERT INTO `product_tag` VALUES (4, 3, '2021-07-19 19:25:37', '2021-07-19 19:25:37', 2);
INSERT INTO `product_tag` VALUES (5, 1, '2021-07-19 19:25:44', '2021-07-19 19:25:44', 3);
INSERT INTO `product_tag` VALUES (5, 2, '2021-07-19 19:25:41', '2021-07-19 19:25:41', 4);
INSERT INTO `product_tag` VALUES (6, 2, '2021-07-19 19:25:48', '2021-07-19 19:25:48', 5);
INSERT INTO `product_tag` VALUES (6, 4, '2021-07-19 19:25:51', '2021-07-19 19:25:51', 6);
COMMIT;

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cate_id` bigint unsigned NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '1',
  `quantity` int NOT NULL DEFAULT '0',
  `detail` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_cate_id_foreign` (`cate_id`),
  CONSTRAINT `products_cate_id_foreign` FOREIGN KEY (`cate_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of products
-- ----------------------------
BEGIN;
INSERT INTO `products` VALUES (2, 'Allison Mueller', 1, 'uploads/products/60fab69e9ed69-prod-3.jpg', 1259, 0, 45, 'Hatter, \'when the Queen merely remarking that a red-hot poker will burn you if you cut your finger VERY deeply with a knife, it usually bleeds; and she looked up, and there was no longer to be a.', '2021-07-23 13:09:56', '2021-07-16 12:27:48', '2021-07-23 13:09:56');
INSERT INTO `products` VALUES (3, 'Alba Russel', 8, 'uploads/products/0aae71a853b1485ace381fc58b098cac.png', 2440, 1, 30, 'He looked at Alice, as she spoke. Alice did not like to go down the bottle, saying to herself, for this time she had got burnt, and eaten up by wild beasts and other unpleasant things, all because.', '2021-07-23 13:10:03', '2021-07-16 12:27:48', '2021-07-23 13:10:03');
INSERT INTO `products` VALUES (4, 'Mariana Bednar', 7, 'uploads/products/4a10097598568edbf6e5e826c975de68.png', 100, 1, 27, 'Majesty,\' he began, \'for bringing these in: but I hadn\'t drunk quite so much!\' Alas! it was certainly English. \'I don\'t think they play at all a proper way of expressing yourself.\' The baby grunted.', '2021-07-31 11:04:28', '2021-07-16 12:27:48', '2021-07-31 11:04:28');
INSERT INTO `products` VALUES (5, 'Bria Reilly', 7, 'uploads/products/ce5a056f4eb8f7dfc14e78a16e1e7125.png', 1527, 1, 51, 'I want to be?\' it asked. \'Oh, I\'m not used to queer things happening. While she was considering in her hands, and began:-- \'You are old, Father William,\' the young man said, \'And your hair has.', '2021-07-31 11:04:31', '2021-07-16 12:27:48', '2021-07-31 11:04:31');
INSERT INTO `products` VALUES (6, 'Princess Wilderman III', 2, 'uploads/products/32a5dd4146d3b8fb366ae9d3c8012f23.png', 289, 0, 50, 'And argued each case with MINE,\' said the White Rabbit with pink eyes ran close by her. There was a table set out under a tree a few minutes it seemed quite dull and stupid for life to go on in a.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (7, 'Katelyn Leannon', 11, 'uploads/products/0f87f2edfa8ea93924af2319f3d43a13.png', 54, 0, 3, 'Next came an angry tone, \'Why, Mary Ann, and be turned out of court! Suppress him! Pinch him! Off with his head!\"\' \'How dreadfully savage!\' exclaimed Alice. \'That\'s very curious.\' \'It\'s all about.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (8, 'Berta Streich DDS', 6, 'uploads/products/84a2db9bb553ca4be55cfbc12d02f010.png', 1786, 0, 2, 'I don\'t remember where.\' \'Well, it must be a letter, after all: it\'s a French mouse, come over with fright. \'Oh, I know!\' exclaimed Alice, who was a little ledge of rock, and, as they used to do.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (9, 'Emory Beier', 7, 'uploads/products/651764eda1ba571ff1bd4c627235c9a3.png', 1830, 1, 75, 'Alice\'s elbow was pressed so closely against her foot, that there was nothing else to do, and in despair she put one arm out of the singers in the lap of her knowledge. \'Just think of any good.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (10, 'Mr. Tracey Nienow', 14, 'uploads/products/c63f4b61f693561f24a0085023f41940.png', 2649, 1, 58, 'She was close behind her, listening: so she went on, half to itself, \'Oh dear! Oh dear! I shall ever see such a pleasant temper, and thought to herself, \'because of his great wig.\' The judge, by the.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (11, 'Miss Elise Farrell', 15, 'uploads/products/68e6e114fc41199ff293edb241713c73.png', 773, 0, 86, 'Alice, as she could have been a RED rose-tree, and we put a white one in by mistake; and if the Queen had never seen such a capital one for catching mice--oh, I beg your pardon!\' she exclaimed in a.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (12, 'Ms. Mara Conroy', 15, 'uploads/products/67f22873118ed652116db04200649426.png', 1589, 1, 65, 'Queen\'s hedgehog just now, only it ran away when it grunted again, so that it was written to nobody, which isn\'t usual, you know.\' \'Not at first, perhaps,\' said the Caterpillar. \'I\'m afraid I am.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (13, 'Mr. Jon VonRueden MD', 6, 'uploads/products/73e73604af85b2fe631906263727e967.png', 454, 0, 15, 'Alice could not possibly reach it: she could see, when she had asked it aloud; and in despair she put it. She stretched herself up closer to Alice\'s side as she had never done such a tiny little.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (14, 'Michel Kertzmann II', 1, 'uploads/products/5520c3fe23aa53361a663cf510abf6e4.png', 2036, 1, 81, 'Pigeon the opportunity of taking it away. She did it so yet,\' said the Caterpillar. \'Well, I should be like then?\' And she began fancying the sort of meaning in it.\' The jury all wrote down all.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (15, 'Pearlie Kshlerin', 14, 'uploads/products/256abb7c0c1e39c75d1ee6126b710281.png', 761, 0, 93, 'Poor Alice! It was high time to hear his history. I must go by the soldiers, who of course had to fall upon Alice, as she could for sneezing. There was not much larger than a rat-hole: she knelt.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (16, 'Mrs. Lesly Brakus DDS', 12, 'uploads/products/8940cb3b5e64f459b310db7bb0cc5e30.png', 1932, 1, 5, 'Alice, and tried to speak, but for a good deal until she had found the fan and gloves. \'How queer it seems,\' Alice said very politely, \'for I never was so large in the way out of the evening.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (18, 'Marcelo Erdman', 13, 'uploads/products/6f9da67f2e993d29559e395cac63a0b4.png', 200, 1, 93, 'Gryphon. \'I mean, what makes them sour--and camomile that makes them so shiny?\' Alice looked very anxiously into its face to see it again, but it makes me grow large again, for she could remember.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (19, 'Darryl Predovic', 14, 'uploads/products/6d0d9d420ee346b9cd62fd7dec5b6535.png', 782, 0, 62, 'Alice said; but was dreadfully puzzled by the fire, licking her paws and washing her face--and she is such a capital one for catching mice you can\'t take LESS,\' said the Cat, \'a dog\'s not mad. You.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (20, 'Destiney Gorczany', 10, 'uploads/products/576ee01ee9b2c7108ac52de2778be4ca.png', 657, 1, 65, 'Queen in front of the trial.\' \'Stupid things!\' Alice thought she had been anything near the door, and tried to curtsey as she could, for the baby, it was written to nobody, which isn\'t usual, you.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (21, 'Ms. Destiney Wisoky Sr.', 11, 'uploads/products/3b6e1a7e27c49c561f173db6103fca56.png', 739, 1, 59, 'Alice could see her after the birds! Why, she\'ll eat a little more conversation with her head! Off--\' \'Nonsense!\' said Alice, seriously, \'I\'ll have nothing more happened, she decided on going into.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (22, 'Deontae Swaniawski', 7, 'uploads/products/37b2761f4cb678090db978385fab4c05.png', 1877, 0, 94, 'Alice opened the door of the way I want to get in at the bottom of a feather flock together.\"\' \'Only mustard isn\'t a letter, written by the Queen put on one knee. \'I\'m a poor man, your Majesty,\' he.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (23, 'Claudie Stehr', 6, 'uploads/products/4c7845e853ce1b983ff8be7bb95b7f28.png', 1514, 1, 58, 'Alice. \'And ever since that,\' the Hatter went on, \'you see, a dog growls when it\'s angry, and wags its tail about in all their simple sorrows, and find a pleasure in all my limbs very supple By the.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (24, 'Ima Will', 10, 'uploads/products/5b17a9a45115c96b612ebb2d9b7d0a9a.png', 1665, 1, 1, 'THE SLUGGARD,\"\' said the Mock Turtle drew a long breath, and till the puppy\'s bark sounded quite faint in the sea, \'and in that case I can do without lobsters, you know. But do cats eat bats? Do.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (25, 'Milo Berge', 3, 'uploads/products/f5b04e8fa484d590dd8a72a80fbd2cec.png', 2217, 0, 1, 'Mock Turtle, capering wildly about. \'Change lobsters again!\' yelled the Gryphon answered, very nearly getting up and saying, \'Thank you, sir, for your interesting story,\' but she did not like the.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (26, 'Kendrick Cronin Sr.', 2, 'uploads/products/999250553ce40632bdb731c9615e3fc9.png', 949, 1, 86, 'Alice began to feel very uneasy: to be a lesson to you how the game was going a journey, I should say what you had been anything near the house before she found she could guess, she was now, and she.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (27, 'Eduardo Wolff', 10, 'uploads/products/c49c81bedcfd1b3317b0c89b85f14db2.png', 2337, 0, 80, 'Alice. The poor little thing sat down in a louder tone. \'ARE you to sit down without being invited,\' said the Mock Turtle. \'She can\'t explain MYSELF, I\'m afraid, but you might catch a bad cold if.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (28, 'Nelda Torp', 9, 'uploads/products/d37f208fd61d42573dfcf8e7394ff23b.png', 2914, 0, 15, 'Alice for protection. \'You shan\'t be beheaded!\' said Alice, a little more conversation with her face like the Queen?\' said the voice. \'Fetch me my gloves this moment!\' Then came a little startled.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (29, 'Jordon Shanahan', 1, 'uploads/products/68d1e8e62f25f5845a015d2aa23add2c.png', 398, 1, 70, 'Alice, who felt very glad to do it.\' (And, as you liked.\' \'Is that all?\' said Alice, very earnestly. \'I\'ve had nothing yet,\' Alice replied very readily: \'but that\'s because it stays the same solemn.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (30, 'Estrella Johnson', 4, 'uploads/products/df5bc1642ffcb965a50f02379a285509.png', 184, 0, 23, 'Caterpillar. \'I\'m afraid I don\'t believe it,\' said the Queen. \'You make me giddy.\' And then, turning to Alice, and looking at it again: but he could think of any that do,\' Alice hastily replied.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (31, 'Guillermo Pfeffer Jr.', 1, 'uploads/products/8050d09ef20df35e4ea4fe3076c973fc.png', 1284, 0, 68, 'Caterpillar sternly. \'Explain yourself!\' \'I can\'t explain MYSELF, I\'m afraid, but you might do very well to introduce some other subject of conversation. While she was in March.\' As she said this.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (32, 'Sedrick Robel', 14, 'uploads/products/7b0a894dda733f0e3d22b944ebf5c12e.png', 2546, 0, 67, 'Alice,) and round Alice, every now and then quietly marched off after the birds! Why, she\'ll eat a bat?\' when suddenly, thump! thump! down she came rather late, and the blades of grass, but she.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (33, 'Kaden Feil IV', 4, 'uploads/products/27d45359e736eb4d4588de6a424eebc3.png', 1384, 1, 98, 'King. The White Rabbit read out, at the door-- Pray, what is the reason so many lessons to learn! Oh, I shouldn\'t want YOURS: I don\'t remember where.\' \'Well, it must be really offended. \'We won\'t.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (34, 'Prof. Brandi Altenwerth Sr.', 13, 'uploads/products/97cde9de1fcd706a232e3a695c55fda8.png', 1768, 1, 22, 'I am very tired of being all alone here!\' As she said this, she came upon a low curtain she had not got into the jury-box, and saw that, in her pocket) till she was peering about anxiously among the.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (35, 'Constance Littel', 4, 'uploads/products/7c59e1762621590bc469b31f544eeb27.png', 1063, 1, 66, 'You MUST have meant some mischief, or else you\'d have signed your name like an arrow. The Cat\'s head began fading away the time. Alice had never been in a hurry. \'No, I\'ll look first,\' she said.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (36, 'Dr. Richard Stokes', 11, 'uploads/products/459d982e280d4ae1388238c9362c3107.png', 1279, 0, 37, 'I could show you our cat Dinah: I think I may as well look and see how the Dodo solemnly presented the thimble, looking as solemn as she could, \'If you knew Time as well go in at the flowers and the.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (37, 'Alene Murazik', 6, 'uploads/products/8e1ddc92c8b494bc15a63bddb951cb92.png', 1606, 0, 92, 'Do cats eat bats, I wonder?\' And here poor Alice in a melancholy tone. \'Nobody seems to suit them!\' \'I haven\'t the least idea what Latitude was, or Longitude either, but thought they were trying.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (38, 'George Ruecker', 13, 'uploads/products/03cfe3ea5c4a5311c151b011ff18c140.png', 942, 0, 100, 'Hatter. \'It isn\'t directed at all,\' said Alice: \'she\'s so extremely--\' Just then she remembered having seen such a tiny golden key, and unlocking the door opened inwards, and Alice\'s elbow was.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (39, 'Treva Nitzsche', 15, 'uploads/products/c3feed9bc810a4e30d78e96fe540fdcf.png', 542, 0, 64, 'Hatter, with an M, such as mouse-traps, and the sounds will take care of the cattle in the pool of tears which she found a little way forwards each time and a large ring, with the Queen,\' and she.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (40, 'Kylie Yost', 4, 'uploads/products/43bce98b2bd9149d4c889308e45f84c1.png', 2214, 0, 51, 'I should like it put the Dormouse into the earth. Let me see: that would be worth the trouble of getting her hands up to her great disappointment it was only sobbing,\' she thought, \'it\'s sure to do.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (41, 'Chris Sawayn', 1, 'uploads/products/205cbe188dcaa80df411c205ef992799.png', 2626, 0, 42, 'And the moral of that is--\"Be what you were all locked; and when she turned away. \'Come back!\' the Caterpillar called after it; and as Alice could only hear whispers now and then Alice put down yet.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (42, 'Emerson Heaney', 11, 'uploads/products/dda188593bc3998e1ffb33799e5714d7.png', 2548, 0, 40, 'Duchess, the Duchess! Oh! won\'t she be savage if I\'ve kept her waiting!\' Alice felt so desperate that she had caught the flamingo and brought it back, the fight was over, and she thought it had.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (43, 'Michale Kautzer', 6, 'uploads/products/c77992dfd0fbe624978a757a2b7064b0.png', 2942, 0, 51, 'Yet you finished the goose, with the clock. For instance, if you like,\' said the Rabbit was still in sight, hurrying down it. There was a large dish of tarts upon it: they looked so good, that it.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (44, 'Jazmyne Boyer', 11, 'uploads/products/363f56f2aeef6fbed9efaab37f5d7f3c.png', 1212, 0, 70, 'Dinah at you!\' There was not much surprised at her as she could not possibly reach it: she could not remember ever having seen such a subject! Our family always HATED cats: nasty, low, vulgar.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (45, 'Kennedi Paucek', 4, 'uploads/products/325037a741af84ddb62a265ea55b35ac.png', 1541, 0, 11, 'She said this she looked down at her feet in a moment: she looked down at her hands, wondering if anything would EVER happen in a natural way again. \'I wonder if I fell off the subjects on his knee.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (46, 'Mr. Rusty Vandervort', 11, 'uploads/products/b0d97491c6ebb7505f71373c9ff0d54d.png', 2602, 1, 28, 'Alice, a little shaking among the people near the door that led into a butterfly, I should frighten them out of its right paw round, \'lives a March Hare. \'I didn\'t know that you\'re mad?\' \'To begin.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (47, 'Shanelle Fadel IV', 9, 'uploads/products/45ce21019d015a987ae390dbdb8f8779.png', 2453, 1, 56, 'Cat: \'we\'re all mad here. I\'m mad. You\'re mad.\' \'How do you want to stay with it as to size,\' Alice hastily replied; \'only one doesn\'t like changing so often, you know.\' \'I DON\'T know,\' said the.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (48, 'Dr. Gustave Gibson I', 14, 'uploads/products/7fb3ee4145583faeaf0060fee096dbfb.png', 47, 0, 11, 'Alice said to herself, and nibbled a little pattering of footsteps in the newspapers, at the Queen, who had spoken first. \'That\'s none of YOUR adventures.\' \'I could tell you my adventures--beginning.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (49, 'Lilly Mayer', 14, 'uploads/products/82e4a1c754af337cfcd5f174fdac6471.png', 13, 0, 10, 'Who would not stoop? Soup of the words \'DRINK ME\' beautifully printed on it but tea. \'I don\'t even know what they\'re like.\' \'I believe so,\' Alice replied very gravely. \'What else have you executed.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (50, 'Ben Nitzsche', 10, 'uploads/products/4200c8287bbec0c53c1e8112c104f4b9.png', 699, 1, 1, 'This sounded promising, certainly: Alice turned and came back again. \'Keep your temper,\' said the King; and as he could go. Alice took up the fan and a great many teeth, so she set to partners--\'.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (51, 'Mrs. Adelle Langosh IV', 4, 'uploads/products/857444b6fd0b29c461de3a27be89980b.png', 2761, 1, 41, 'I will just explain to you how it was the fan and gloves. \'How queer it seems,\' Alice said to herself, rather sharply; \'I advise you to offer it,\' said the Mouse, who was trembling down to look.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (52, 'Ms. Talia Jacobi', 6, 'uploads/products/c24b3450dd4b41bee489ef144d27a4d0.png', 152, 0, 52, 'All on a little bird as soon as the door and found in it a very pretty dance,\' said Alice in a languid, sleepy voice. \'Who are YOU?\' said the Caterpillar took the hookah out of sight: \'but it.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (53, 'Raphael Kuhn', 4, 'uploads/products/272f44d49a2fdf1e75ff4247ac311c08.png', 662, 1, 50, 'Mock Turtle repeated thoughtfully. \'I should like to be a person of authority over Alice. \'Stand up and down looking for them, but they were nice grand words to say.) Presently she began looking at.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (54, 'Camilla Kerluke', 3, 'uploads/products/338d6347bd16ab7252c3bf48fcfdfd7d.png', 1250, 1, 84, 'Caterpillar. This was such a noise inside, no one to listen to her, one on each side, and opened their eyes and mouths so VERY tired of being all alone here!\' As she said to Alice, and she had.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (55, 'Abigale Murazik', 6, 'uploads/products/4116fc8e2cf3bda794ef1bae8687c0cb.png', 1057, 0, 53, 'Alice (she was rather glad there WAS no one to listen to me! I\'LL soon make you grow taller, and the Mock Turtle; \'but it doesn\'t matter much,\' thought Alice, \'it\'ll never do to ask: perhaps I shall.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (56, 'Dr. Cole Langosh', 8, 'uploads/products/eb26084ef3b0a5efa83b3b472ac9a452.png', 214, 1, 67, 'After a while, finding that nothing more happened, she decided to remain where she was walking hand in her brother\'s Latin Grammar, \'A mouse--of a mouse--to a mouse--a mouse--O mouse!\') The Mouse.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (57, 'Prof. Meaghan Dooley DVM', 3, 'uploads/products/a7a99964079c8b31b18744a4a0d60771.png', 2889, 1, 57, 'Improve his shining tail, And pour the waters of the moment she quite forgot how to set about it; and the whole thing very absurd, but they were getting so far off). \'Oh, my poor little thing was.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (58, 'Sheridan Armstrong', 2, 'uploads/products/51ff7845c5674d73ae276aa183e27627.png', 1084, 1, 3, 'I did: there\'s no name signed at the corners: next the ten courtiers; these were all in bed!\' On various pretexts they all moved off, and found herself in a large crowd collected round it: there was.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (59, 'Prof. Makenna Kuhic', 4, 'uploads/products/ca4c6cbc7f8e750a542dbec89efdd5d1.png', 2660, 0, 32, 'VERY short remarks, and she jumped up and rubbed its eyes: then it watched the Queen was silent. The Dormouse again took a minute or two. \'They couldn\'t have done that, you know,\' the Mock Turtle.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (60, 'Pauline Senger', 12, 'uploads/products/de07b26bc5d57ebb63de959c824ef165.png', 1795, 1, 52, 'King: \'leave out that it signifies much,\' she said to herself; \'his eyes are so VERY much out of the well, and noticed that the best plan.\' It sounded an excellent opportunity for croqueting one of.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (61, 'Dr. Mona Kling', 2, 'uploads/products/36bc2e654daa896b10a4709df5abc784.png', 2305, 0, 52, 'Alice heard the King very decidedly, and the m--\' But here, to Alice\'s great surprise, the Duchess\'s knee, while plates and dishes crashed around it--once more the shriek of the suppressed.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (62, 'Muriel Green', 14, 'uploads/products/7d06b38c4058f159247d678b58eea05d.png', 2219, 1, 90, 'Oh dear! I shall have somebody to talk about her other little children, and everybody else. \'Leave off that!\' screamed the Pigeon. \'I\'m NOT a serpent!\' said Alice sadly. \'Hand it over a little glass.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (63, 'Dallin Purdy', 13, 'uploads/products/e1fc248e105d61b72a521c6bda1ffadc.png', 292, 1, 56, 'The miserable Hatter dropped his teacup instead of onions.\' Seven flung down his cheeks, he went on, \'you see, a dog growls when it\'s pleased. Now I growl when I\'m pleased, and wag my tail when it\'s.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (64, 'Mr. Jace Windler V', 12, 'uploads/products/229424542f36f9a6ff35997c90b012e9.png', 921, 1, 70, 'Then followed the Knave of Hearts, and I don\'t want to stay with it as you are; secondly, because she was now the right size again; and the Queen jumped up and said, without opening its eyes, \'Of.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (65, 'Astrid Halvorson', 11, 'uploads/products/24a0d2d2d214b24b67e663d7f087fcb6.png', 2458, 0, 53, 'Alice. \'Well, then,\' the Gryphon answered, very nearly in the pool, \'and she sits purring so nicely by the end of the others took the hookah out of a treacle-well--eh, stupid?\' \'But they were nice.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (66, 'Prof. Deonte Carroll', 6, 'uploads/products/caf6c4d71c17971eb2c565c86673d8c4.png', 1734, 1, 50, 'I to get very tired of this. I vote the young Crab, a little animal (she couldn\'t guess of what work it would not open any of them. \'I\'m sure those are not attending!\' said the youth, \'as I.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (67, 'Malvina Gerhold', 10, 'uploads/products/db1431ef06a9ec3b268301383d831e0d.png', 137, 1, 24, 'I wonder what Latitude was, or Longitude I\'ve got back to the Mock Turtle replied; \'and then the puppy jumped into the earth. Let me see--how IS it to annoy, Because he knows it teases.\' CHORUS. (In.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (68, 'Wallace Herman', 1, 'uploads/products/78f68efabb8c350ad463f2d355696455.png', 1398, 0, 45, 'Alice, as the White Rabbit, jumping up and repeat something now. Tell her to wink with one elbow against the door, and the White Rabbit, who was talking. Alice could think of what sort it was).', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (69, 'Zachery Pacocha', 3, 'uploads/products/338bb6f1640d78a6f4cab9508f895ea0.png', 1384, 0, 93, 'As she said to herself, \'I wonder how many hours a day did you begin?\' The Hatter opened his eyes were nearly out of sight: \'but it doesn\'t mind.\' The table was a sound of many footsteps, and Alice.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (70, 'Joanie Farrell PhD', 4, 'uploads/products/61056a5af7d6ff1d1bc52c78fbea8cb7.png', 1825, 0, 39, 'I think.\' And she thought it had gone. \'Well! I\'ve often seen them so often, you know.\' \'Not the same thing, you know.\' \'I don\'t know of any that do,\' Alice hastily replied; \'at least--at least I.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (71, 'Dr. Stone Dach PhD', 3, 'uploads/products/edaeb18afd9b5dff8abd77907514c97f.png', 944, 0, 52, 'Puss,\' she began, rather timidly, as she was peering about anxiously among the distant sobs of the room again, no wonder she felt a violent blow underneath her chin: it had no idea what a delightful.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (72, 'Friedrich Fahey', 2, 'uploads/products/2b4aa9f85c47489c2e183acde87430ed.png', 228, 0, 7, 'Latitude was, or Longitude either, but thought they were trying which word sounded best. Some of the trees under which she had read several nice little dog near our house I should be like then?\' And.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (73, 'Adela Dooley', 11, 'uploads/products/2ab5d36c833fc0dc0f359fa38b5272e6.png', 1053, 1, 27, 'And so she went on, \'you throw the--\' \'The lobsters!\' shouted the Gryphon, \'she wants for to know what \"it\" means well enough, when I got up this morning? I almost wish I\'d gone to see what I was.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (74, 'Prof. Flossie Rath', 1, 'uploads/products/169eeeb02ba6b476c9ad8381e743f2c5.png', 1346, 1, 15, 'Queen will hear you! You see, she came rather late, and the Mock Turtle: \'why, if a dish or kettle had been to her, And mentioned me to introduce it.\' \'I don\'t quite understand you,\' she said, \'than.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (75, 'Dr. Adelbert O\'Connell PhD', 12, 'uploads/products/b92965fd34b7788a051043f38005d327.png', 1300, 1, 37, 'Duchess. \'I make you grow taller, and the sound of many footsteps, and Alice was soon submitted to by all three dates on their slates, when the White Rabbit, who was beginning very angrily, but the.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (76, 'Linda Wyman DDS', 1, 'uploads/products/94547168a7cfc5dcc235d296565b78e7.png', 2479, 0, 76, 'The Queen turned crimson with fury, and, after waiting till she shook the house, quite forgetting that she could remember them, all these strange Adventures of hers would, in the pictures of him).', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (77, 'Monique Hudson', 8, 'uploads/products/34a8ca3cbe9c257e6b030f17090a9cda.png', 147, 1, 25, 'Alice: he had a pencil that squeaked. This of course, I meant,\' the King sharply. \'Do you mean by that?\' said the Caterpillar. \'Well, I shan\'t go, at any rate: go and live in that poky little house.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (78, 'Kristin Skiles', 10, 'uploads/products/e2e193046f69b219ff7c30d35c1ee659.png', 2021, 1, 85, 'HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was that?\' inquired Alice. \'Reeling and Writhing, of course, to begin lessons: you\'d only have to go and live in that soup!\' Alice.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (79, 'Izabella Ruecker', 3, 'uploads/products/ef567f403b2f3e6d5fa313d03dc7f448.png', 1965, 0, 72, 'I know all sorts of things--I can\'t remember half of them--and it belongs to a snail. \"There\'s a porpoise close behind us, and he\'s treading on my tail. See how eagerly the lobsters to the other.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (80, 'Yvonne Wintheiser DVM', 4, 'uploads/products/dc61702d9856ded34fcc449d5898b609.png', 625, 1, 29, 'French mouse, come over with William the Conqueror.\' (For, with all their simple sorrows, and find a pleasure in all my life, never!\' They had not noticed before, and behind it, it occurred to her.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (81, 'Christophe Wuckert', 1, 'uploads/products/c3d44e15ac76af9860efdef9d706a0f9.png', 1333, 1, 47, 'She had not long to doubt, for the rest of the deepest contempt. \'I\'ve seen hatters before,\' she said to Alice, that she was nine feet high, and was going to turn into a large crowd collected round.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (82, 'Terrill Sipes V', 8, 'uploads/products/12e1b89213218a3bde95c10b967e4d81.png', 1648, 1, 10, 'Mock Turtle\'s Story \'You can\'t think how glad I am in the common way. So she was trying to put his mouth close to them, they set to work, and very soon came to the seaside once in her life before.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (83, 'Dr. Alessia Block', 3, 'uploads/products/bb01e7e17c780b918e10a2be67562346.png', 1299, 0, 53, 'I eat\" is the same thing as \"I get what I say,\' the Mock Turtle. \'Very much indeed,\' said Alice. \'Come, let\'s try the effect: the next thing is, to get out at all know whether it was very provoking.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (84, 'Miss Yasmin Bednar', 11, 'uploads/products/32212d4786f18779acf72e5d13d16d7e.png', 2855, 1, 37, 'Mock Turtle, and said anxiously to herself, \'Now, what am I to get through the glass, and she could not help bursting out laughing: and when she looked down at her feet, for it to be sure, she had.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (85, 'Mrs. Elizabeth Schumm', 12, 'uploads/products/31917084789686f4c3b35ded695c8a9c.png', 2753, 0, 63, 'Duchess: \'and the moral of that is, but I don\'t remember where.\' \'Well, it must be really offended. \'We won\'t talk about trouble!\' said the Duchess; \'I never went to the Mock Turtle in the distance.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (86, 'Marlin Armstrong Jr.', 9, 'uploads/products/5165c699f9c20c91650746c147ce69a3.png', 2803, 0, 30, 'Alice. \'Stand up and saying, \'Thank you, it\'s a set of verses.\' \'Are they in the sand with wooden spades, then a row of lodging houses, and behind it, it occurred to her full size by this time, and.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (87, 'Amelie Huels', 2, 'uploads/products/4b879c8089f7518732ee399cb723ce02.png', 1138, 0, 71, 'I don\'t understand. Where did they draw?\' said Alice, as she could, for the moment how large she had a VERY turn-up nose, much more like a star-fish,\' thought Alice. \'I\'m glad they\'ve begun asking.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (88, 'Mrs. Viola Morar', 10, 'uploads/products/ccbb07fe787457f1651e112715b037bb.png', 2507, 0, 62, 'I COULD NOT SWIM--\" you can\'t think! And oh, my poor little thing was waving its right paw round, \'lives a March Hare. \'Yes, please do!\' pleaded Alice. \'And ever since that,\' the Hatter went on.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (89, 'Jarrett Skiles DDS', 8, 'uploads/products/8bb446e1af7112e7065177f203cec134.png', 613, 1, 9, 'Mouse in the same tone, exactly as if she had gone through that day. \'A likely story indeed!\' said the Duchess: you\'d better ask HER about it.\' (The jury all looked so good, that it might injure the.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (90, 'Shany Morar', 6, 'uploads/products/e5ccc8aa28f871932a32f85c0bba09e4.png', 2344, 0, 77, 'Bill, the Lizard) could not possibly reach it: she could do, lying down with her head down to nine inches high. CHAPTER VI. Pig and Pepper For a minute or two to think about stopping herself before.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (91, 'Elisabeth Marquardt', 3, 'uploads/products/502bf1097d0b359869539bf93f693b68.png', 269, 1, 85, 'Alice did not sneeze, were the cook, to see it quite plainly through the door, she ran off as hard as it can be,\' said the Queen put on one side, to look through into the loveliest garden you ever.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (92, 'Jon Zboncak IV', 11, 'uploads/products/841191e6dbe8a87f32382e7e3a20c163.png', 1898, 0, 67, 'Alice, \'or perhaps they won\'t walk the way YOU manage?\' Alice asked. The Hatter was the White Rabbit, who said in a large ring, with the bread-and-butter getting so far off). \'Oh, my poor hands, how.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (93, 'Andy Thompson', 11, 'uploads/products/c7fd8a29d48ddf10ccc2f5994ca26144.png', 794, 1, 74, 'Alice ventured to remark. \'Tut, tut, child!\' said the Duchess, \'as pigs have to ask any more HERE.\' \'But then,\' thought Alice, \'to speak to this mouse? Everything is so out-of-the-way down here, and.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (94, 'Ms. Susan Shields II', 1, 'uploads/products/fd34c45dc866d2a00354b104e625aa3d.png', 1883, 1, 93, 'Alice, swallowing down her anger as well say that \"I see what was coming. It was so much frightened that she ran off as hard as it was just possible it had grown up,\' she said to herself how this.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (95, 'Dr. Terrence Hahn', 2, 'uploads/products/3b384636b23dbdc568728e6ee5b9b21a.png', 2911, 0, 10, 'I think I can remember feeling a little timidly, for she had felt quite strange at first; but she gained courage as she spoke, but no result seemed to Alice again. \'No, I give you fair warning,\'.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (96, 'Vivianne Olson Jr.', 12, 'uploads/products/38bfda2bfc8b0110f5c7f9c493767897.png', 1926, 0, 95, 'Alice panted as she went on eagerly: \'There is such a puzzled expression that she had hoped) a fan and two or three pairs of tiny white kid gloves and the whole thing very absurd, but they were nice.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (97, 'Cordell Hills II', 11, 'uploads/products/c597e7ab529dfc549bd819e21c63953b.png', 917, 1, 67, 'CHAPTER V. Advice from a bottle marked \'poison,\' it is I hate cats and dogs.\' It was so ordered about by mice and rabbits. I almost wish I\'d gone to see anything; then she walked off, leaving Alice.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (98, 'Meagan Konopelski', 6, 'uploads/products/e55a0704b47af730a290e896df96efa2.png', 2938, 1, 3, 'Five. \'I heard the Rabbit began. Alice thought to herself, and nibbled a little wider. \'Come, it\'s pleased so far,\' said the March Hare. Alice sighed wearily. \'I think you might catch a bad cold if.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (99, 'Frank Gerhold', 15, 'uploads/products/effb3aa278093708daaf1e07d9c534bc.png', 1481, 0, 7, 'Dinn may be,\' said the last few minutes, and she walked up towards it rather timidly, saying to her ear. \'You\'re thinking about something, my dear, and that if something wasn\'t done about it just.', NULL, '2021-07-16 12:27:48', '2021-07-16 12:27:48');
INSERT INTO `products` VALUES (100, 'demo sản phẩm 100', 4, 'uploads/products/0aae71a853b1485ace381fc58b098cac.png', 288, 1, 49, '', NULL, '2021-07-16 12:27:48', '2021-07-19 12:48:51');
INSERT INTO `products` VALUES (101, 'demo sản phẩm 1', 12, 'uploads/products/0aae71a853b1485ace381fc58b098cac.png', 437, 1, 82, '', NULL, '2021-07-19 12:47:50', '2021-07-19 12:47:50');
INSERT INTO `products` VALUES (102, 'sdfsdf', 6, 'uploads/products/60f821ea39f65-prod-2.jpg', 123, 1, 123, 'sdfsdfsdf', NULL, '2021-07-21 13:32:26', '2021-07-21 13:32:26');
INSERT INTO `products` VALUES (103, '11111', 6, 'oads/products/60f822697f979-prod-1.jpg', 123123, 1, 123, '131312', NULL, '2021-07-21 13:34:33', '2021-07-21 13:34:33');
INSERT INTO `products` VALUES (104, 'Sản phẩm đã cập nhật', 6, 'uploads/products/60fab64b93747-prod-3.jpg', 23424, 1, 234234, 'sdfsfs', NULL, '2021-07-21 13:35:34', '2021-07-23 12:30:03');
INSERT INTO `products` VALUES (105, 'sfgsfsdf', 4, 'uploads/products/60faaed682490-photo1.png', 123123, 1, 13123123, '13123123123', NULL, '2021-07-23 11:58:14', '2021-07-23 11:58:14');
INSERT INTO `products` VALUES (106, 'demo upload nhiều ảnh', 4, 'uploads/products/6103ead988be3-photo1.png', 100, 1, 100, 'sdfsdfsdf', NULL, '2021-07-30 12:04:41', '2021-07-30 12:04:41');
INSERT INTO `products` VALUES (107, 'demo upload nhiều ảnh 2', 4, 'uploads/products/6103eb409b687-photo1.png', 100, 1, 100, 'sdfsdfsdf', NULL, '2021-07-30 12:06:24', '2021-07-30 12:06:24');
COMMIT;

-- ----------------------------
-- Table structure for role_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of role_has_permissions
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tags
-- ----------------------------
BEGIN;
INSERT INTO `tags` VALUES (1, 'tivi', '2021-07-19 19:23:43', '2021-07-19 19:23:43');
INSERT INTO `tags` VALUES (2, '55 inch', '2021-07-19 19:23:49', '2021-07-19 19:23:49');
INSERT INTO `tags` VALUES (3, 'Màn hình LED', '2021-07-19 19:24:03', '2021-07-19 19:24:03');
INSERT INTO `tags` VALUES (4, 'Poly', '2021-07-19 19:24:11', '2021-07-19 19:24:11');
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_phone_number_unique` (`phone_number`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, 'Trần Hữu Thiện', 'thienth@fpt.edu.vn', NULL, '$2y$10$fZENP/oN8RTukUe/6ew/GO4BuNZX4frCrugg7uXmFnVk.v14uS.du', NULL, '2021-07-02 12:46:09', '2021-07-02 12:46:09', '0987654321');
INSERT INTO `users` VALUES (2, 'Trần Hữu Nam', 'namth@fpt.edu.vn', NULL, '$2y$10$eGstYLoPfeVh0/fHJexMt.DBm5jseJrSSgsW17WbfIxKZ7tH.KHgW', NULL, '2021-07-02 12:46:09', '2021-07-02 12:46:09', '0987654322');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
