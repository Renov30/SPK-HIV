/*
 Navicat Premium Data Transfer

 Source Server         : lokal
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : pemetaan_lahanjagung

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 01/03/2025 17:21:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cache
-- ----------------------------
DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache`  (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cache
-- ----------------------------
INSERT INTO `cache` VALUES ('356a192b7913b04c54574d18c28d46e6395428ab', 'i:2;', 1740286587);
INSERT INTO `cache` VALUES ('356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1740286587;', 1740286587);
INSERT INTO `cache` VALUES ('livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1740816245);
INSERT INTO `cache` VALUES ('livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1740816245;', 1740816245);
INSERT INTO `cache` VALUES ('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:0:{}s:11:\"permissions\";a:0:{}s:5:\"roles\";a:0:{}}', 1740902587);

-- ----------------------------
-- Table structure for cache_locks
-- ----------------------------
DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE `cache_locks`  (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cache_locks
-- ----------------------------

-- ----------------------------
-- Table structure for distriks
-- ----------------------------
DROP TABLE IF EXISTS `distriks`;
CREATE TABLE `distriks`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `luas_tanam` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `luas_panen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `produksi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `produktivitas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of distriks
-- ----------------------------
INSERT INTO `distriks` VALUES (1, 'Semangga', 'semangga', '137,75', '137.75', '661.20', '4.80', NULL, '2025-02-19 13:54:32', '2025-02-19 13:54:32');
INSERT INTO `distriks` VALUES (2, 'Tanah Miring', 'tanah-miring', '137,75', '137,75', '661,20', '4.80', NULL, '2025-02-19 13:54:45', '2025-02-19 13:54:45');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for galeris
-- ----------------------------
DROP TABLE IF EXISTS `galeris`;
CREATE TABLE `galeris`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `lahan_id` bigint UNSIGNED NOT NULL,
  `gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `galeris_lahan_id_foreign`(`lahan_id` ASC) USING BTREE,
  CONSTRAINT `galeris_lahan_id_foreign` FOREIGN KEY (`lahan_id`) REFERENCES `lahans` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of galeris
-- ----------------------------
INSERT INTO `galeris` VALUES (1, 1, '01JMF7WRGH8XE32T2776W2GH9T.jpg', NULL, '2025-02-19 13:55:54', '2025-02-19 13:55:54');
INSERT INTO `galeris` VALUES (2, 2, '01JMF7ZA24K4TJ0M1N8WN28JTS.jpg', NULL, '2025-02-19 13:57:17', '2025-02-19 13:57:17');
INSERT INTO `galeris` VALUES (3, 3, '01JMRHHTQZX13BM5C04TVB3A96.jpg', NULL, '2025-02-23 04:37:51', '2025-02-23 04:37:51');
INSERT INTO `galeris` VALUES (4, 4, '01JMRHP6HSE0GVY3V0QB859Y38.jpg', NULL, '2025-02-23 04:40:14', '2025-02-23 04:40:14');
INSERT INTO `galeris` VALUES (5, 5, '01JMRHVM8KMW1MM7ND83SK7Z54.jpg', NULL, '2025-02-23 04:43:12', '2025-02-23 04:43:12');
INSERT INTO `galeris` VALUES (6, 6, '01JMRJ20RBTMAD9R07FHYRW9JH.jpeg', NULL, '2025-02-23 04:46:41', '2025-02-23 04:46:41');
INSERT INTO `galeris` VALUES (7, 7, '01JMRJ55YZ7F521WYZ7BB32ZTR.jpeg', NULL, '2025-02-23 04:48:25', '2025-02-23 04:48:25');
INSERT INTO `galeris` VALUES (8, 8, '01JMRJ9EN4WYQBT7SWCDX9KBXG.jpg', NULL, '2025-02-23 04:50:45', '2025-02-23 04:50:45');
INSERT INTO `galeris` VALUES (9, 9, '01JMRJCX69SHRWR5KWC3T5XTP8.png', NULL, '2025-02-23 04:52:38', '2025-02-23 04:52:38');
INSERT INTO `galeris` VALUES (10, 10, '01JMRJFW3RBV7QMSAWPC3P1J77.jpg', NULL, '2025-02-23 04:54:15', '2025-02-23 04:54:15');
INSERT INTO `galeris` VALUES (11, 11, '01JMRJJRG8METY7J7MRV0VT7ET.jpeg', NULL, '2025-02-23 04:55:50', '2025-02-23 04:55:50');

-- ----------------------------
-- Table structure for job_batches
-- ----------------------------
DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE `job_batches`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `cancelled_at` int NULL DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of job_batches
-- ----------------------------

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED NULL DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `jobs_queue_index`(`queue` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jobs
-- ----------------------------

-- ----------------------------
-- Table structure for lahans
-- ----------------------------
DROP TABLE IF EXISTS `lahans`;
CREATE TABLE `lahans`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_petani` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `luas_lahan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `distrik_id` bigint UNSIGNED NOT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `lahans_distrik_id_foreign`(`distrik_id` ASC) USING BTREE,
  CONSTRAINT `lahans_distrik_id_foreign` FOREIGN KEY (`distrik_id`) REFERENCES `distriks` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of lahans
-- ----------------------------
INSERT INTO `lahans` VALUES (1, 'Lahan Jagung Sidomulyo 1', 'lahan-jagung-sidomulyo-1', 'Maulana Fauzi', '11.50', 1, 'Jl. Semangga dua belas RT 005 RW 006', '080912091290', '140.43222', '-8.44833', '01JMF7VY631D2H462QPZ3TX159.jpg', NULL, '2025-02-19 13:55:27', '2025-02-23 04:35:13');
INSERT INTO `lahans` VALUES (2, 'Lahan Jagung Sidomulyo 2', 'lahan-jagung-sidomulyo-2', 'Maulana Fauzi', '21.00', 1, 'Jl. Semangga dua belas RT 005 RW 006', '082344778899', '140.43444', '-8.44750', '01JMF7YQN4FRX45D9J4KE3PBCM.jpeg', NULL, '2025-02-19 13:56:58', '2025-02-23 04:35:28');
INSERT INTO `lahans` VALUES (3, 'Lahan Jagung Semangga 1', 'lahan-jagung-semangga-1', 'Kusaeri', '153.00', 1, 'Jl. Semangga dua belas RT 007 RW 008', '080912091290', '140.44250', '-8.43472', '01JMRHH41C57M0J9J16Y99R8DT.png', NULL, '2025-02-23 04:37:28', '2025-02-23 04:37:28');
INSERT INTO `lahans` VALUES (4, 'Lahan Jagung Semangga 2', 'lahan-jagung-semangga-2', 'Kusaeri', '137.75', 1, 'Jl. Semangga dua belas RT 009 RW 010', '082344778899', '140.45250', '-8.42194', '01JMRHNM3WZA1QBTN3P8C4E0DB.jpg', NULL, '2025-02-23 04:39:55', '2025-02-23 04:40:43');
INSERT INTO `lahans` VALUES (5, 'Lahan SP 2 Pertama', 'lahan-sp-2-pertama', 'Huda', '143.75', 2, 'Jl. Tanah Miring Tiga Belas RT 001 RW 002', '087628902198', '140.50306', '-8.37694', '01JMRHV18CMS75QDYF41Y79Q8V.jpg', NULL, '2025-02-23 04:42:53', '2025-02-23 04:43:58');
INSERT INTO `lahans` VALUES (6, 'Lahan SP 2 Kedua', 'lahan-sp-2-kedua', 'Huda', '82.70', 2, 'Jl. Tanah Miring Tiga Belas RT 003 RW 004', '087628902198', '140.50528', '-8.39361', '01JMRJ00MAHEFH17SDQ32RTDAX.jpg', NULL, '2025-02-23 04:45:36', '2025-02-23 04:45:36');
INSERT INTO `lahans` VALUES (7, 'Lahan Depan RSAD', 'lahan-depan-rsad', 'Agus', '85.50', 2, 'Jl. Tanah Miring Tiga Belas RT 003 RW 004', '082344778899', '140.50528', '-8.39361', '01JMRJ4J6KCV68KGEVTEC15ZV2.jpeg', NULL, '2025-02-23 04:48:05', '2025-02-23 04:48:05');
INSERT INTO `lahans` VALUES (8, 'Lahan Jagung Semangga 3', 'lahan-jagung-semangga-3', 'Agus', '8.50', 1, 'Jl. Semangga dua belas RT 005 RW 006', '080912091290', '140.45167', '-8.42806', '01JMRJ8VXQ7HD03G9VST6322TY.png', NULL, '2025-02-23 04:50:26', '2025-02-23 04:51:09');
INSERT INTO `lahans` VALUES (9, 'Lahan Jagung Arah Muram', 'lahan-jagung-arah-muram', 'Julian', '7.00', 1, 'Jl. Semangga dua belas RT 007 RW 008', '080912091290', '140.44806', '-8.42583', '01JMRJCAVMHK9AAHQKF48QDFES.jpg', NULL, '2025-02-23 04:52:19', '2025-02-23 04:52:19');
INSERT INTO `lahans` VALUES (10, 'Lahan Jagung Maulana', 'lahan-jagung-maulana', 'Maulana Fauzi', '21.50', 1, 'Jl. Semangga dua belas RT 005 RW 006', '082344778899', '140.42778', '-8.43944', '01JMRJFAFW484H5YG3C442KRCP.jpg', NULL, '2025-02-23 04:53:57', '2025-02-23 04:53:57');
INSERT INTO `lahans` VALUES (11, 'Lahan Tetangganya Maulana', 'lahan-tetangganya-maulana', 'Julian', '3.50', 1, 'Jl. Semangga dua belas RT 007 RW 008', '081343026394', '140.44417', '-8.42333', '01JMRJJ69RT19S7QA0KQX21W3G.jpg', NULL, '2025-02-23 04:55:31', '2025-02-23 04:55:31');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '0001_01_01_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '0001_01_01_000001_create_cache_table', 1);
INSERT INTO `migrations` VALUES (3, '0001_01_01_000002_create_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2025_02_12_114000_create_distriks_table', 1);
INSERT INTO `migrations` VALUES (5, '2025_02_12_114444_create_lahans_table', 1);
INSERT INTO `migrations` VALUES (6, '2025_02_12_114501_create_galeris_table', 1);
INSERT INTO `migrations` VALUES (7, '2025_02_14_202745_create_permission_tables', 1);
INSERT INTO `migrations` VALUES (8, '2025_02_26_142222_create_produksis_table', 2);

-- ----------------------------
-- Table structure for model_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE `model_has_permissions`  (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `model_id`, `model_type`) USING BTREE,
  INDEX `model_has_permissions_model_id_model_type_index`(`model_id` ASC, `model_type` ASC) USING BTREE,
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of model_has_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for model_has_roles
-- ----------------------------
DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE `model_has_roles`  (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`, `model_id`, `model_type`) USING BTREE,
  INDEX `model_has_roles_model_id_model_type_index`(`model_id` ASC, `model_type` ASC) USING BTREE,
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of model_has_roles
-- ----------------------------
INSERT INTO `model_has_roles` VALUES (1, 'App\\Models\\User', 1);
INSERT INTO `model_has_roles` VALUES (1, 'App\\Models\\User', 2);

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `permissions_name_guard_name_unique`(`name` ASC, `guard_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of permissions
-- ----------------------------

-- ----------------------------
-- Table structure for produksis
-- ----------------------------
DROP TABLE IF EXISTS `produksis`;
CREATE TABLE `produksis`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `lahan_id` bigint UNSIGNED NOT NULL,
  `tahun_produksi` int NOT NULL,
  `hasil_produksi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `produksis_lahan_id_foreign`(`lahan_id` ASC) USING BTREE,
  CONSTRAINT `produksis_lahan_id_foreign` FOREIGN KEY (`lahan_id`) REFERENCES `lahans` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of produksis
-- ----------------------------
INSERT INTO `produksis` VALUES (1, 7, 2024, '10', NULL, '2025-02-27 11:11:50', '2025-02-27 11:11:50');
INSERT INTO `produksis` VALUES (2, 9, 2024, '11', NULL, '2025-02-27 11:21:52', '2025-03-01 08:07:17');
INSERT INTO `produksis` VALUES (3, 10, 2024, '12', NULL, '2025-02-27 11:22:03', '2025-03-01 08:07:28');
INSERT INTO `produksis` VALUES (4, 3, 2024, '13', NULL, '2025-02-27 11:24:12', '2025-03-01 08:07:37');
INSERT INTO `produksis` VALUES (5, 4, 2024, '14', NULL, '2025-02-27 11:24:23', '2025-03-01 08:07:45');
INSERT INTO `produksis` VALUES (6, 8, 2024, '15', NULL, '2025-02-27 11:24:49', '2025-03-01 08:07:59');
INSERT INTO `produksis` VALUES (7, 1, 2024, '16', NULL, '2025-02-27 11:24:59', '2025-03-01 08:08:09');
INSERT INTO `produksis` VALUES (8, 2, 2024, '17', NULL, '2025-02-27 11:25:09', '2025-03-01 08:08:16');
INSERT INTO `produksis` VALUES (9, 6, 2024, '18', NULL, '2025-02-27 11:25:21', '2025-03-01 08:08:24');
INSERT INTO `produksis` VALUES (10, 5, 2024, '19', NULL, '2025-02-27 11:25:52', '2025-03-01 08:08:33');
INSERT INTO `produksis` VALUES (11, 11, 2024, '20', NULL, '2025-02-27 11:26:07', '2025-03-01 08:08:52');

-- ----------------------------
-- Table structure for role_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE `role_has_permissions`  (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `role_id`) USING BTREE,
  INDEX `role_has_permissions_role_id_foreign`(`role_id` ASC) USING BTREE,
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role_has_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `roles_name_guard_name_unique`(`name` ASC, `guard_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'admin', 'web', '2025-02-19 13:53:24', '2025-02-19 13:53:24');
INSERT INTO `roles` VALUES (2, 'gapoktan', 'web', '2025-02-19 13:53:24', '2025-02-19 13:53:24');

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NULL DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sessions_user_id_index`(`user_id` ASC) USING BTREE,
  INDEX `sessions_last_activity_index`(`last_activity` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sessions
-- ----------------------------
INSERT INTO `sessions` VALUES ('X8xzvR571qCTkHDLxEnhYvoOMjDK4bsZyFdc2tek', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiT1FGVUl0N1kxbkcyRjdQczZjaDlrbW5ESFZrNmxka0NoSG1HdHhIMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9hcHBwZW1ldGFhbmxhaGFuamFndW5nLnRlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkUWZSNUtsQkxwVXRJZDNIU0JCZFZKZVVacy9XOFovS1hibFAzZGVvNHY1TzQybjN1cVdOcW0iO3M6ODoiZmlsYW1lbnQiO2E6MDp7fX0=', 1740817244);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `nama_lengkap` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tempat_lahir` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tgl_lahir` date NULL DEFAULT NULL,
  `pekerjaan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'admin@gmail.com', NULL, '$2y$12$QfR5KlBLpUtId3HSBBdVJeUZs/W8Z/KXblP3deo4v5O42n3uqWNqm', NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-19 13:53:24', '2025-02-19 13:53:24');
INSERT INTO `users` VALUES (2, 'putri', 'putri@gmail.com', NULL, '$2y$12$TiqXcMEIbIbz0xD/faQlKezd73d.D5e4IkYx6SpY1BZVrozkcHnW6', '-', 'Dwi Putri Fitrianingsih', 'Merauke', '2001-01-01', 'Mahasiswa', NULL, '2025-03-01 08:10:10', '2025-03-01 08:10:10');

SET FOREIGN_KEY_CHECKS = 1;
