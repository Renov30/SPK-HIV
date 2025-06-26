/*
 Navicat Premium Data Transfer

 Source Server         : lokal
 Source Server Type    : MySQL
 Source Server Version : 110702 (11.7.2-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : db_diagnosa_hiv

 Target Server Type    : MySQL
 Target Server Version : 110702 (11.7.2-MariaDB)
 File Encoding         : 65001

 Date: 27/06/2025 08:00:12
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
INSERT INTO `cache` VALUES ('356a192b7913b04c54574d18c28d46e6395428ab', 'i:1;', 1749595295);
INSERT INTO `cache` VALUES ('356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1749595295;', 1749595295);
INSERT INTO `cache` VALUES ('livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3', 'i:2;', 1750915525);
INSERT INTO `cache` VALUES ('livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1750915525;', 1750915525);
INSERT INTO `cache` VALUES ('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:8:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:11:\"view gejala\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:13:\"view penyakit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:11:\"view solusi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:17:\"manage permission\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:11:\"manage user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:12:\"manage roles\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:14:\"view dashboard\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:23:\"view riwayat konsultasi\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}}s:5:\"roles\";a:2:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:5:\"admin\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:5:\"pakar\";s:1:\"c\";s:3:\"web\";}}}', 1750917529);

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

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
INSERT INTO `galeris` VALUES (12, 12, '01JNB89T8YXSM7AG20JS18TSBQ.jpg', '2025-03-02 11:09:26', '2025-03-02 11:01:45', '2025-03-02 11:09:26');
INSERT INTO `galeris` VALUES (13, 7, '01JNB8MA0TNAMFHNER32NWV7XY.jpg', '2025-03-02 11:09:26', '2025-03-02 11:07:29', '2025-03-02 11:09:26');
INSERT INTO `galeris` VALUES (14, 9, '01JNB8NH607BBGCJAQ5MBTRDJE.jpg', '2025-03-02 11:09:26', '2025-03-02 11:08:09', '2025-03-02 11:09:26');

-- ----------------------------
-- Table structure for gejalas
-- ----------------------------
DROP TABLE IF EXISTS `gejalas`;
CREATE TABLE `gejalas`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_gejala` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gejalas
-- ----------------------------
INSERT INTO `gejalas` VALUES (1, 'demam', NULL, '2025-06-23 23:48:33', '2025-06-23 23:50:34');
INSERT INTO `gejalas` VALUES (2, 'ruam pada tubuh', NULL, '2025-06-23 23:49:48', '2025-06-23 23:49:48');
INSERT INTO `gejalas` VALUES (3, 'sakit tenggorokan', NULL, '2025-06-23 23:50:03', '2025-06-23 23:50:03');
INSERT INTO `gejalas` VALUES (4, 'bengkak pada kelenjar', NULL, '2025-06-23 23:50:55', '2025-06-23 23:50:55');
INSERT INTO `gejalas` VALUES (5, 'sakit kepala', NULL, '2025-06-23 23:51:07', '2025-06-23 23:51:07');
INSERT INTO `gejalas` VALUES (6, 'sakit perut', NULL, '2025-06-23 23:51:17', '2025-06-23 23:51:17');
INSERT INTO `gejalas` VALUES (7, 'sakit dan nyeri pada sendi', NULL, '2025-06-23 23:51:29', '2025-06-23 23:51:29');
INSERT INTO `gejalas` VALUES (8, 'nyeri otot', NULL, '2025-06-23 23:51:42', '2025-06-23 23:51:42');
INSERT INTO `gejalas` VALUES (9, 'penurunan berat badan', NULL, '2025-06-23 23:52:14', '2025-06-23 23:52:14');
INSERT INTO `gejalas` VALUES (10, 'infeksi saluran pernapasan ', NULL, '2025-06-23 23:52:29', '2025-06-23 23:52:29');
INSERT INTO `gejalas` VALUES (11, 'infeksi jamur pada kuku dan jari-jari', NULL, '2025-06-23 23:52:43', '2025-06-23 23:52:43');
INSERT INTO `gejalas` VALUES (12, 'Herpes Zoster', NULL, '2025-06-23 23:52:55', '2025-06-23 23:52:55');
INSERT INTO `gejalas` VALUES (13, 'gatal pada kulit', NULL, '2025-06-23 23:53:09', '2025-06-23 23:53:09');
INSERT INTO `gejalas` VALUES (14, 'Dermatitis Serboroik', NULL, '2025-06-23 23:53:21', '2025-06-23 23:53:21');
INSERT INTO `gejalas` VALUES (15, 'radang mulut dan Stomatitis', NULL, '2025-06-23 23:53:37', '2025-06-23 23:53:37');
INSERT INTO `gejalas` VALUES (16, 'berkeringat di malam hari', NULL, '2025-06-23 23:53:49', '2025-06-23 23:53:49');
INSERT INTO `gejalas` VALUES (17, 'Batuk', NULL, '2025-06-23 23:53:57', '2025-06-23 23:53:57');
INSERT INTO `gejalas` VALUES (18, 'Diare', NULL, '2025-06-23 23:54:09', '2025-06-23 23:54:09');
INSERT INTO `gejalas` VALUES (19, 'demam yang berlangsung lebih dari 10 hari', NULL, '2025-06-23 23:54:31', '2025-06-23 23:54:31');
INSERT INTO `gejalas` VALUES (20, 'penurunan berat badan drastis', NULL, '2025-06-23 23:54:50', '2025-06-23 23:54:50');
INSERT INTO `gejalas` VALUES (21, 'diare kronis yang berlangsung lebih dari satu bulan', NULL, '2025-06-23 23:55:05', '2025-06-23 23:55:05');
INSERT INTO `gejalas` VALUES (22, 'tubuh terasa lemas dan tidak berdaya', NULL, '2025-06-23 23:55:22', '2025-06-23 23:55:22');
INSERT INTO `gejalas` VALUES (23, 'kesulitan bernafas', NULL, '2025-06-23 23:55:34', '2025-06-23 23:55:34');
INSERT INTO `gejalas` VALUES (24, 'infeksi jamur dimulut, tenggorokan dan alat kelamin', NULL, '2025-06-23 23:55:48', '2025-06-23 23:55:48');
INSERT INTO `gejalas` VALUES (25, 'pembengkakan kelenjar getah bening di ketiak, selangkangan atau leher', NULL, '2025-06-23 23:56:00', '2025-06-23 23:56:00');
INSERT INTO `gejalas` VALUES (26, 'luka pada mulut, anus atau alat kelamin', NULL, '2025-06-23 23:56:12', '2025-06-23 23:56:12');
INSERT INTO `gejalas` VALUES (27, 'bercak putih dilidah, mulut, kelamin dan anus', NULL, '2025-06-23 23:56:25', '2025-06-23 23:56:25');
INSERT INTO `gejalas` VALUES (28, 'bintik ungu dikulit yang tidak bisa hilang', NULL, '2025-06-23 23:56:43', '2025-06-23 23:56:43');

-- ----------------------------
-- Table structure for hasil_diagnosas
-- ----------------------------
DROP TABLE IF EXISTS `hasil_diagnosas`;
CREATE TABLE `hasil_diagnosas`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `usia` int NOT NULL,
  `jenis_kelamin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `penyakit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `persentase` double NOT NULL,
  `persentase_all` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hasil_diagnosas
-- ----------------------------
INSERT INTO `hasil_diagnosas` VALUES (1, 'Furi', 35, 'Laki-laki', 'HIV Fase 1 (Periode Jendela)', 75, '{\"HIV Fase 1 (Periode Jendela)\":75,\"HIV Fase 2 (Masa Laten)\":20,\"HIV Fase 3 (Masa AIDS)\":0}', '2025-06-25 02:40:23', '2025-06-25 02:40:23');
INSERT INTO `hasil_diagnosas` VALUES (4, 'Diana', 23, 'Perempuan', 'HIV Fase 2 (Masa Laten)', 90, '{\"HIV Fase 1 (Periode Jendela)\":87.5,\"HIV Fase 2 (Masa Laten)\":90,\"HIV Fase 3 (Masa AIDS)\":20}', '2025-06-26 05:13:31', '2025-06-26 05:13:31');
INSERT INTO `hasil_diagnosas` VALUES (5, 'Hardi', 45, 'Laki-laki', 'HIV Fase 1 (Periode Jendela)', 75, '{\"HIV Fase 1 (Periode Jendela)\":75,\"HIV Fase 2 (Masa Laten)\":50,\"HIV Fase 3 (Masa AIDS)\":20}', '2025-06-26 22:58:15', '2025-06-26 22:58:15');

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

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
INSERT INTO `lahans` VALUES (12, '1', '1', '22', '2', 1, '3', '4', '5', '6', '01JNB881ED9GZQ5B99RJEWZ6W6.jpg', '2025-03-02 11:05:14', '2025-03-02 11:00:47', '2025-03-02 11:05:14');
INSERT INTO `lahans` VALUES (13, 'Maulana Fauzi', 'maulana-fauzi', 'Maulana Fauzi', '100', 1, 'Jl. Kemangi Kemayoran', '082344778899', '-7.277882', '-8.39361', '01JNB9RM1BMXW8CXA6ZH8VW6E8.jpg', '2025-03-02 11:47:56', '2025-03-02 11:27:19', '2025-03-02 11:47:56');
INSERT INTO `lahans` VALUES (14, 'Lahan Jagung Semangga 4', 'lahan-jagung-semangga-4', 'Renov', '21.00', 1, 'Jl. Kuper, Kec. Semangga', '-', '140.445881', '-8.45309', '01JXDQ5PZHNP5DHEBXT65P0Z2B.jpg', NULL, '2025-06-10 20:05:43', '2025-06-10 20:08:33');
INSERT INTO `lahans` VALUES (15, 'Lahan Jagung Tanah Miring 1', 'lahan-jagung-tanah-miring-1', 'Reza', '153.00', 2, 'Jl. Yasa Mulya, Tanah Miring', '-', '140.507672', '-8.393636', '01JXDZNP1Z49QQAX4Q7FXJ6FP5.jpg', NULL, '2025-06-10 22:34:15', '2025-06-10 22:34:15');
INSERT INTO `lahans` VALUES (16, 'Lahan Jagung Semangga 5', 'lahan-jagung-semangga-5', 'Maun', '143.75', 1, 'Jl. Marga Mula, Kec. Semangga', '-', '140.472411', '-8.404892', '01JXDZQV4DQWFCZ40PFNTCZNF5.jpg', NULL, '2025-06-10 22:35:26', '2025-06-10 22:35:26');
INSERT INTO `lahans` VALUES (17, 'Lahan Jagung Semangga 6', 'lahan-jagung-semangga-6', 'Renov', '143.75', 1, 'Jl. Marga Mulya, Kec. Semangga', '-', '140.463402', '-8.403868', '01JXDZSXAV972Y7AAWDC3JTCG1.jpg', NULL, '2025-06-10 22:36:34', '2025-06-10 22:36:34');
INSERT INTO `lahans` VALUES (18, 'Lahan SP 5', 'lahan-sp-5', 'Maun', '21.00', 2, 'Jl. SP 55', '-', '140.49918', '-8.3363889', '01JXDZY5KA6K9M7Y98E97F64T3.jpg', NULL, '2025-06-10 22:38:53', '2025-06-10 22:41:56');
INSERT INTO `lahans` VALUES (19, 'Lahan SP 6', 'lahan-sp-6', 'Azmil', '137.75', 2, 'Jl. Tanah Miring Tiga Belas RT 003 RW 004', '-', '140.4627778', '-8.3158333', '01JXE01CPZ3VBRAQBHRWWHCH5P.jpg', NULL, '2025-06-10 22:40:39', '2025-06-10 22:40:39');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

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
INSERT INTO `migrations` VALUES (9, '2025_06_24_142514_create_hasil_diagnosa_table', 3);
INSERT INTO `migrations` VALUES (11, '2025_06_24_142514_create_hasil_diagnosas_table', 4);

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
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 2);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 4);

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
-- Table structure for penyakits
-- ----------------------------
DROP TABLE IF EXISTS `penyakits`;
CREATE TABLE `penyakits`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_penyakit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of penyakits
-- ----------------------------
INSERT INTO `penyakits` VALUES (1, 'HIV Fase 1 (Periode Jendela)', '•	Meskipun tubuh telah terinfeksi HIV, pemeriksaan darah belum ditemukan antibodi anti-HIV.\n•	Pada periode ini seseorang yang terinfeksi HIV dapat menularkan pada orang lain (sangat infeksius), ditandai dengan viral load HIV sangat tinggi dan limfosit T CD4 menurun tajam. “flu-like syndrome\" terjadi akibat serokonversi dalam darah, saat replikasi virus terjadi sangat hebat pada infeksi primer HIV.\n•	Fase ini biasanya berlangsung sekitar dua minggu sampai tiga bulan sejak infeksi awal.\n', NULL, '2025-06-23 23:30:05', '2025-06-23 23:32:00');
INSERT INTO `penyakits` VALUES (2, 'HIV Fase 2 (Masa Laten)', '•	Fase ini bisa disertai gejala ringan atau bahkan tanpa gejala (asimtomatik).\n•	Viral load menurun dan relatif stabil, namun CD4 berangsur-angsur menurun.\n•	Tes darah antibodi terhadap HIV menunjukkan hasil reaktif, walaupun gejala penyakit belum timbul.\n•	Pada fase ini, orang dengan HIV tetap dapat menularkan HIV kepada orang lain.\n•	Masa tanpa gejala rata-rata berlangsung selama 2-3 tahun, sedangkan masa dengan gejala ringan bisa berlangsung hingga 5-8 tahun.\n', NULL, '2025-06-23 23:30:25', '2025-06-23 23:32:14');
INSERT INTO `penyakits` VALUES (3, 'HIV Fase 3 (Masa AIDS)', '•	Fase terminal infeksi HIV, kekebalan tubuh telah menurun drastis, nilai viral load semakin tinggi, dan CD4 sangat rendah sehingga mengakibatkan timbulnya berbagai infeksi oportunistik.\n•	Tuberkulosis (TBC), herpes zoster (HZV), oral hairy cell leukoplakia (OHL), kandidiasis oral, Pneumocystic jirovecii pneumonia (PCP), infeksi cytomegalovirus (CMV), papular pruritic eruption (PPE) dan Mycobacterium avium complex (MAC).\n', NULL, '2025-06-23 23:30:43', '2025-06-23 23:30:43');

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
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES (1, 'view gejala', 'web', '2025-03-20 00:37:58', '2025-06-25 05:57:57');
INSERT INTO `permissions` VALUES (2, 'view penyakit', 'web', '2025-03-20 00:37:58', '2025-06-25 05:58:14');
INSERT INTO `permissions` VALUES (3, 'view solusi', 'web', '2025-03-20 00:37:58', '2025-06-25 05:58:26');
INSERT INTO `permissions` VALUES (4, 'manage permission', 'web', '2025-03-20 23:43:50', '2025-03-20 23:43:50');
INSERT INTO `permissions` VALUES (5, 'manage user', 'web', '2025-03-20 23:44:04', '2025-03-20 23:44:04');
INSERT INTO `permissions` VALUES (6, 'manage roles', 'web', '2025-03-20 23:44:19', '2025-03-20 23:44:19');
INSERT INTO `permissions` VALUES (7, 'view dashboard', 'web', '2025-03-20 23:44:47', '2025-03-20 23:44:47');
INSERT INTO `permissions` VALUES (8, 'view riwayat konsultasi', 'web', '2025-03-20 23:45:08', '2025-06-25 05:58:49');

-- ----------------------------
-- Table structure for produksis
-- ----------------------------
DROP TABLE IF EXISTS `produksis`;
CREATE TABLE `produksis`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `lahan_id` bigint UNSIGNED NOT NULL,
  `tanggal_produksi` date NOT NULL,
  `hasil_produksi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `produksis_lahan_id_foreign`(`lahan_id` ASC) USING BTREE,
  CONSTRAINT `produksis_lahan_id_foreign` FOREIGN KEY (`lahan_id`) REFERENCES `lahans` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of produksis
-- ----------------------------
INSERT INTO `produksis` VALUES (14, 7, '2025-01-01', '10', NULL, '2025-03-12 21:32:10', '2025-03-12 21:32:10');
INSERT INTO `produksis` VALUES (15, 7, '2025-06-17', '11', NULL, '2025-03-12 21:32:32', '2025-03-12 21:32:32');
INSERT INTO `produksis` VALUES (16, 7, '2025-09-09', '13', NULL, '2025-03-12 21:32:43', '2025-03-12 21:32:43');
INSERT INTO `produksis` VALUES (17, 7, '2025-12-11', '12.5', NULL, '2025-03-12 21:32:56', '2025-03-12 21:32:56');
INSERT INTO `produksis` VALUES (18, 3, '2024-01-06', '13.2', NULL, '2025-03-12 21:33:28', '2025-03-12 21:33:28');
INSERT INTO `produksis` VALUES (19, 3, '2024-04-09', '14.99', NULL, '2025-03-12 21:33:41', '2025-03-12 21:34:43');
INSERT INTO `produksis` VALUES (20, 3, '2024-09-07', '10.75', NULL, '2025-03-12 21:33:54', '2025-03-12 21:34:30');
INSERT INTO `produksis` VALUES (21, 3, '2024-11-30', '11', NULL, '2025-03-12 21:34:07', '2025-03-12 21:34:07');
INSERT INTO `produksis` VALUES (22, 7, '2024-02-15', '11.2', NULL, '2025-03-14 13:28:52', '2025-03-14 13:28:52');

-- ----------------------------
-- Table structure for relasis
-- ----------------------------
DROP TABLE IF EXISTS `relasis`;
CREATE TABLE `relasis`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `gejala_id` bigint UNSIGNED NOT NULL,
  `penyakit_id` bigint UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `relasis_gejala_id_foreign`(`gejala_id` ASC) USING BTREE,
  INDEX `relasis_penyakit_id_foreign`(`penyakit_id` ASC) USING BTREE,
  CONSTRAINT `relasis_gejala_id_foreign` FOREIGN KEY (`gejala_id`) REFERENCES `gejalas` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `relasis_penyakit_id_foreign` FOREIGN KEY (`penyakit_id`) REFERENCES `penyakits` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of relasis
-- ----------------------------
INSERT INTO `relasis` VALUES (1, 1, 1, NULL, '2025-06-23 23:48:33', '2025-06-23 23:48:33');
INSERT INTO `relasis` VALUES (2, 2, 1, NULL, '2025-06-23 23:49:48', '2025-06-23 23:49:48');
INSERT INTO `relasis` VALUES (3, 3, 1, NULL, '2025-06-23 23:50:03', '2025-06-23 23:50:03');
INSERT INTO `relasis` VALUES (4, 4, 1, NULL, '2025-06-23 23:50:55', '2025-06-23 23:50:55');
INSERT INTO `relasis` VALUES (5, 5, 1, NULL, '2025-06-23 23:51:07', '2025-06-23 23:51:07');
INSERT INTO `relasis` VALUES (6, 6, 1, NULL, '2025-06-23 23:51:17', '2025-06-23 23:51:17');
INSERT INTO `relasis` VALUES (7, 7, 1, NULL, '2025-06-23 23:51:29', '2025-06-23 23:51:29');
INSERT INTO `relasis` VALUES (8, 8, 1, NULL, '2025-06-23 23:51:42', '2025-06-23 23:51:42');
INSERT INTO `relasis` VALUES (9, 9, 2, NULL, '2025-06-23 23:52:14', '2025-06-23 23:52:14');
INSERT INTO `relasis` VALUES (10, 10, 2, NULL, '2025-06-23 23:52:29', '2025-06-23 23:52:29');
INSERT INTO `relasis` VALUES (11, 11, 2, NULL, '2025-06-23 23:52:43', '2025-06-23 23:52:43');
INSERT INTO `relasis` VALUES (12, 12, 2, NULL, '2025-06-23 23:52:55', '2025-06-23 23:52:55');
INSERT INTO `relasis` VALUES (13, 13, 2, NULL, '2025-06-23 23:53:09', '2025-06-23 23:53:09');
INSERT INTO `relasis` VALUES (14, 14, 2, NULL, '2025-06-23 23:53:21', '2025-06-23 23:53:21');
INSERT INTO `relasis` VALUES (15, 15, 2, NULL, '2025-06-23 23:53:37', '2025-06-23 23:53:37');
INSERT INTO `relasis` VALUES (16, 16, 2, NULL, '2025-06-23 23:53:49', '2025-06-23 23:53:49');
INSERT INTO `relasis` VALUES (17, 17, 2, NULL, '2025-06-23 23:53:57', '2025-06-23 23:53:57');
INSERT INTO `relasis` VALUES (18, 18, 2, NULL, '2025-06-23 23:54:09', '2025-06-23 23:54:09');
INSERT INTO `relasis` VALUES (19, 19, 3, NULL, '2025-06-23 23:54:31', '2025-06-23 23:54:31');
INSERT INTO `relasis` VALUES (20, 20, 3, NULL, '2025-06-23 23:54:50', '2025-06-23 23:54:50');
INSERT INTO `relasis` VALUES (21, 21, 3, NULL, '2025-06-23 23:55:05', '2025-06-23 23:55:05');
INSERT INTO `relasis` VALUES (22, 22, 3, NULL, '2025-06-23 23:55:22', '2025-06-23 23:55:22');
INSERT INTO `relasis` VALUES (23, 23, 3, NULL, '2025-06-23 23:55:34', '2025-06-23 23:55:34');
INSERT INTO `relasis` VALUES (24, 24, 3, NULL, '2025-06-23 23:55:48', '2025-06-23 23:55:48');
INSERT INTO `relasis` VALUES (25, 25, 3, NULL, '2025-06-23 23:56:00', '2025-06-23 23:56:00');
INSERT INTO `relasis` VALUES (26, 26, 3, NULL, '2025-06-23 23:56:12', '2025-06-23 23:56:12');
INSERT INTO `relasis` VALUES (27, 27, 3, NULL, '2025-06-23 23:56:25', '2025-06-23 23:56:25');
INSERT INTO `relasis` VALUES (28, 28, 3, NULL, '2025-06-23 23:56:43', '2025-06-23 23:56:43');

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
INSERT INTO `role_has_permissions` VALUES (1, 1);
INSERT INTO `role_has_permissions` VALUES (2, 1);
INSERT INTO `role_has_permissions` VALUES (3, 1);
INSERT INTO `role_has_permissions` VALUES (4, 1);
INSERT INTO `role_has_permissions` VALUES (5, 1);
INSERT INTO `role_has_permissions` VALUES (6, 1);
INSERT INTO `role_has_permissions` VALUES (7, 1);
INSERT INTO `role_has_permissions` VALUES (8, 1);
INSERT INTO `role_has_permissions` VALUES (1, 2);
INSERT INTO `role_has_permissions` VALUES (2, 2);
INSERT INTO `role_has_permissions` VALUES (3, 2);
INSERT INTO `role_has_permissions` VALUES (7, 2);
INSERT INTO `role_has_permissions` VALUES (8, 2);

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
INSERT INTO `roles` VALUES (2, 'pakar', 'web', '2025-02-19 13:53:24', '2025-06-25 05:57:40');

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
INSERT INTO `sessions` VALUES ('454PAd4xeLGktSHEolg5QEwdkZIp3H21mi1Df2dg', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YToxMTp7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo2OiJfdG9rZW4iO3M6NDA6IlNwcFAxQTZGU0d6dEh3TVV4SFpIbmQxWHo5aXRFeEtxVTgzWEwyRHIiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMyOiJodHRwOi8vYXBwZGlhZ25vc2FoaXYudGVzdC9oYXNpbCI7fXM6NDoibmFtYSI7czo1OiJIYXJkaSI7czo0OiJ1c2lhIjtzOjI6IjQ1IjtzOjEzOiJqZW5pc19rZWxhbWluIjtzOjk6Ikxha2ktbGFraSI7czo5OiJnZWphbGFfaWQiO2k6Mjk7czoxMDoicGVyc2VudGFzZSI7YToxMzp7aTowO2k6MTtpOjE7aToyO2k6MjtpOjM7aTozO2k6NDtpOjQ7aTo2O2k6NTtpOjg7aTo2O2k6MTA7aTo3O2k6MTI7aTo4O2k6MTQ7aTo5O2k6MTY7aToxMDtpOjE4O2k6MTE7aToxOTtpOjEyO2k6MjE7fXM6Mjg6IkhJViBGYXNlIDEgKFBlcmlvZGUgSmVuZGVsYSkiO2Q6NzU7czoyMzoiSElWIEZhc2UgMiAoTWFzYSBMYXRlbikiO2Q6NTA7czoyMjoiSElWIEZhc2UgMyAoTWFzYSBBSURTKSI7ZDoyMDt9', 1750978795);

-- ----------------------------
-- Table structure for solusis
-- ----------------------------
DROP TABLE IF EXISTS `solusis`;
CREATE TABLE `solusis`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `penyakit_id` bigint UNSIGNED NOT NULL,
  `solusi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `solusis_penyakit_id_foreign`(`penyakit_id` ASC) USING BTREE,
  CONSTRAINT `solusis_penyakit_id_foreign` FOREIGN KEY (`penyakit_id`) REFERENCES `penyakits` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of solusis
-- ----------------------------
INSERT INTO `solusis` VALUES (1, 1, 'Segera lakukan tes HIV (antibodi & antigen).', NULL, '2025-06-24 00:17:54', '2025-06-24 00:17:54');
INSERT INTO `solusis` VALUES (2, 1, 'Konseling psikologis untuk penerimaan dan pencegahan penularan lebih lanjut.', NULL, '2025-06-24 00:18:04', '2025-06-24 00:18:04');
INSERT INTO `solusis` VALUES (3, 1, 'Edukasi tentang perilaku seks aman dan penggunaan kondom.', NULL, '2025-06-24 00:18:14', '2025-06-24 00:18:14');
INSERT INTO `solusis` VALUES (4, 1, 'Istirahat cukup dan konsumsi makanan bergizi.', NULL, '2025-06-24 00:18:24', '2025-06-24 00:18:24');
INSERT INTO `solusis` VALUES (5, 1, 'Hindari alkohol dan merokok untuk mendukung sistem imun.', NULL, '2025-06-24 00:18:34', '2025-06-24 00:18:34');
INSERT INTO `solusis` VALUES (6, 1, 'Mulai terapi ARV (Antiretroviral) sedini mungkin setelah diagnosis.', NULL, '2025-06-24 00:18:46', '2025-06-24 00:18:46');
INSERT INTO `solusis` VALUES (7, 1, 'Pantau dan kelola gejala secara simptomatis (obat demam, nyeri otot, dll).', NULL, '2025-06-24 00:18:58', '2025-06-24 00:18:58');
INSERT INTO `solusis` VALUES (8, 1, 'Lakukan pemeriksaan lanjutan untuk menentukan viral load dan jumlah CD4.', NULL, '2025-06-24 00:19:08', '2025-06-24 00:19:08');
INSERT INTO `solusis` VALUES (9, 2, 'Terapi ARV rutin dan tepat waktu untuk menghambat perkembangan virus.', NULL, '2025-06-24 00:19:46', '2025-06-24 00:19:46');
INSERT INTO `solusis` VALUES (10, 2, 'Pemantauan rutin kadar CD4 dan viral load tiap 3–6 bulan.', NULL, '2025-06-24 00:19:59', '2025-06-24 00:19:59');
INSERT INTO `solusis` VALUES (11, 2, 'Menjaga gaya hidup sehat: pola makan seimbang, olahraga ringan, tidur cukup.', NULL, '2025-06-24 00:20:08', '2025-06-24 00:20:08');
INSERT INTO `solusis` VALUES (12, 2, 'Imunisasi tambahan bila diperlukan (misalnya hepatitis B, pneumokokus).', NULL, '2025-06-24 00:20:19', '2025-06-24 00:20:19');
INSERT INTO `solusis` VALUES (13, 2, 'Pengobatan gejala sekunder seperti infeksi jamur, batuk, atau dermatitis.', NULL, '2025-06-24 00:20:29', '2025-06-24 00:20:29');
INSERT INTO `solusis` VALUES (14, 2, 'Konseling dan dukungan psikososial untuk menjaga kualitas hidup.', NULL, '2025-06-24 00:20:40', '2025-06-24 00:20:40');
INSERT INTO `solusis` VALUES (15, 2, 'Edukasi tentang pentingnya kepatuhan terhadap pengobatan ARV.', NULL, '2025-06-24 00:20:50', '2025-06-24 00:20:50');
INSERT INTO `solusis` VALUES (16, 2, 'Hindari stres berlebih dan jaga kesehatan mental.', NULL, '2025-06-24 00:21:03', '2025-06-24 00:21:03');
INSERT INTO `solusis` VALUES (17, 3, 'Perawatan intensif dengan kombinasi ARV yang disesuaikan dengan kondisi pasien.', NULL, '2025-06-24 00:21:24', '2025-06-24 00:21:24');
INSERT INTO `solusis` VALUES (18, 3, 'Pengobatan dan pencegahan infeksi oportunistik (seperti TB, kandidiasis, dll).', NULL, '2025-06-24 00:21:34', '2025-06-24 00:21:34');
INSERT INTO `solusis` VALUES (19, 3, 'Nutrisi tinggi kalori dan tinggi protein untuk mencegah wasting syndrome.', NULL, '2025-06-24 00:21:43', '2025-06-24 00:21:43');
INSERT INTO `solusis` VALUES (20, 3, 'Terapi suportif untuk mengurangi rasa sakit dan meningkatkan kualitas hidup.', NULL, '2025-06-24 00:21:54', '2025-06-24 00:21:54');
INSERT INTO `solusis` VALUES (21, 3, 'Perawatan luka mulut, anus, atau kelamin dengan antiseptik/topikal.', NULL, '2025-06-24 00:22:03', '2025-06-24 00:22:03');
INSERT INTO `solusis` VALUES (22, 3, 'Dukungan mental, spiritual, dan sosial (melibatkan keluarga/komunitas).', NULL, '2025-06-24 00:22:13', '2025-06-24 00:22:13');
INSERT INTO `solusis` VALUES (23, 3, 'Pengawasan dan rawat inap bila diperlukan.', NULL, '2025-06-24 00:22:22', '2025-06-24 00:22:22');
INSERT INTO `solusis` VALUES (24, 3, 'Konsultasi berkala dengan tim multidisiplin (dokter, psikolog, gizi, dll).', NULL, '2025-06-24 00:22:32', '2025-06-24 00:22:32');
INSERT INTO `solusis` VALUES (25, 3, 'Edukasi dan pelatihan untuk caregiver agar tidak tertular dan mampu merawat dengan benar.', NULL, '2025-06-24 00:22:42', '2025-06-24 00:22:42');

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
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'admin@gmail.com', NULL, '$2y$12$QfR5KlBLpUtId3HSBBdVJeUZs/W8Z/KXblP3deo4v5O42n3uqWNqm', NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-19 13:53:24', '2025-02-19 13:53:24');
INSERT INTO `users` VALUES (2, 'diana', 'diana@gmail.com', NULL, '$2y$12$IskRfvooQrTu1hFCvEkN5OWEnoSo1IcHwwyUYRtFl0bO3YXvdg5PG', '-', 'Diana', 'Merauke', '2001-01-01', 'Mahasiswa', NULL, '2025-03-01 08:10:10', '2025-06-25 05:59:20');
INSERT INTO `users` VALUES (4, 'renov', 'renov@gmail.com', NULL, '$2y$12$4hP1oCijA4912iZsboaKn..DIpbHS1p5UkvxMNr4CKdLDXCGeKgEm', '081343026394', 'Novgeny Ramadhalero Ermiawan', 'Maumere', '2001-11-30', 'Programmer', NULL, '2025-03-20 23:39:34', '2025-03-20 23:40:01');

SET FOREIGN_KEY_CHECKS = 1;
