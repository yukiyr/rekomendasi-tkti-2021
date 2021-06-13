-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2021 at 12:28 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tkti`
--

-- --------------------------------------------------------

--
-- Table structure for table `domain`
--

CREATE TABLE `domain` (
  `id_domain` int(11) NOT NULL,
  `nama_domain` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `domain`
--

INSERT INTO `domain` (`id_domain`, `nama_domain`) VALUES
(1, 'Plan and Organize (PO)'),
(2, 'Acquire and Implement (AI)'),
(3, 'Deliver and Support (DS)'),
(4, 'Monitor and Evaluate (ME)');

-- --------------------------------------------------------

--
-- Table structure for table `it_process`
--

CREATE TABLE `it_process` (
  `id_it_process` int(11) NOT NULL,
  `id_domain` int(11) NOT NULL,
  `it_process` varchar(256) NOT NULL,
  `importance` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `it_process`
--

INSERT INTO `it_process` (`id_it_process`, `id_domain`, `it_process`, `importance`) VALUES
(1, 1, 'Define a strategic IT plan', 'H'),
(2, 1, 'Define the information architecture', 'L'),
(3, 1, 'Determine technological direction', 'M'),
(4, 1, 'Define the IT processes, organisation\r\nand relationships', 'L'),
(5, 1, 'Manage the IT investment', 'M'),
(6, 1, 'Communicate management aims and\r\ndirection', 'M'),
(7, 1, 'Manage IT human resources', 'L'),
(8, 1, 'Manage quality', 'M'),
(9, 1, 'Assess and manage IT risks', 'H'),
(10, 1, 'Manage projects', 'H'),
(11, 2, 'Identify automated solutions', 'M'),
(12, 2, 'Acquire and maintain application\r\nsoftware', 'M'),
(13, 2, 'Acquire and maintain technology\r\ninfrastructure', 'L'),
(14, 2, 'Enable operation and use', 'L'),
(15, 2, 'Procure IT resources', 'M'),
(16, 2, 'Manage changes', 'H'),
(17, 2, 'Install and accredit solutions and changes', 'M'),
(18, 3, 'Define and manage service levels', 'M'),
(19, 3, 'Manage third-party services', 'L'),
(20, 3, 'Manage performance and capacity', 'L'),
(21, 3, 'Ensure continuous service', 'M'),
(22, 3, 'Ensure systems security', 'H'),
(23, 3, 'Identify and allocate costs', 'L'),
(24, 3, 'Educate and train users', 'L'),
(25, 3, 'Manage service desk and incidents', 'L'),
(26, 3, 'Manage the configuration', 'M'),
(27, 3, 'Manage problems', 'M'),
(28, 3, 'Manage data', 'H'),
(29, 3, 'Manage the physical environment', 'L'),
(30, 3, 'Manage operations', 'L'),
(31, 4, 'Monitor and evaluate IT performance', 'H'),
(32, 4, 'Monitor and evaluate internal control', 'M'),
(33, 4, 'Ensure compliance with\r\nexternal requirements', 'H'),
(34, 4, 'Provide IT governance', 'H');

-- --------------------------------------------------------

--
-- Table structure for table `it_resource`
--

CREATE TABLE `it_resource` (
  `id_it_resource` int(11) NOT NULL,
  `it_resource` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `it_resource`
--

INSERT INTO `it_resource` (`id_it_resource`, `it_resource`) VALUES
(1, 'Application'),
(2, 'Information'),
(3, 'Infrastructure'),
(4, 'People');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_perusahaan`
--

CREATE TABLE `jenis_perusahaan` (
  `id_jenis_perusahaan` int(11) NOT NULL,
  `nama_jenis_perusahaan` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenis_perusahaan`
--

INSERT INTO `jenis_perusahaan` (`id_jenis_perusahaan`, `nama_jenis_perusahaan`) VALUES
(1, 'Startup'),
(2, 'Intermediate'),
(3, 'Establish');

-- --------------------------------------------------------

--
-- Table structure for table `mapping_it_resource_process`
--

CREATE TABLE `mapping_it_resource_process` (
  `id_it_resource` int(11) NOT NULL,
  `id_it_process` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mapping_it_resource_process`
--

INSERT INTO `mapping_it_resource_process` (`id_it_resource`, `id_it_process`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 5),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 25),
(1, 26),
(1, 27),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(2, 1),
(2, 2),
(2, 6),
(2, 8),
(2, 9),
(2, 15),
(2, 16),
(2, 17),
(2, 18),
(2, 19),
(2, 21),
(2, 22),
(2, 23),
(2, 26),
(2, 27),
(2, 28),
(2, 30),
(2, 31),
(2, 32),
(2, 33),
(2, 34),
(3, 1),
(3, 3),
(3, 5),
(3, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 13),
(3, 14),
(3, 15),
(3, 16),
(3, 17),
(3, 18),
(3, 19),
(3, 20),
(3, 21),
(3, 22),
(3, 23),
(3, 26),
(3, 27),
(3, 29),
(3, 30),
(3, 31),
(3, 32),
(3, 33),
(3, 34),
(4, 1),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 10),
(4, 14),
(4, 15),
(4, 16),
(4, 17),
(4, 18),
(4, 19),
(4, 21),
(4, 22),
(4, 23),
(4, 24),
(4, 25),
(4, 27),
(4, 30),
(4, 31),
(4, 32),
(4, 33),
(4, 34);

-- --------------------------------------------------------

--
-- Table structure for table `pertanyaan`
--

CREATE TABLE `pertanyaan` (
  `id_pertanyaan` int(11) NOT NULL,
  `id_it_process` int(11) NOT NULL,
  `pertanyaan` varchar(256) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pertanyaan`
--

INSERT INTO `pertanyaan` (`id_pertanyaan`, `id_it_process`, `pertanyaan`, `level`) VALUES
(1, 1, 'Perencanaan strategis pada IT tidak dijalankan.', 0),
(2, 1, 'Bagian manajemen perusahaan tidak memiliki kesadaran bahwa perencanaan strategis IT diperlukan untuk mendukung tujuan bisnis.', 0),
(3, 1, 'Manajemen IT perusahaan mengetahui bahwa perencanaan strategis pada IT dibutuhkan di organisasi.', 1),
(4, 1, 'Perencanaan IT dilakukan untuk memenuhi tujuan bisnis tertentu.', 1),
(5, 1, 'Perencanaan strategis IT perusahaan terkadang dibahas pada pertemuan manajemen IT.', 1),
(6, 1, 'Penyelarasan kebutuhan bisnis perusahaan dan teknologi merupakan reaksi dari kejadian tertentu.', 1),
(7, 1, 'Resiko-resiko pada strategi hanya diidentifikasi secara informal dari proyek ke proyek.', 1),
(8, 1, 'Perencanaan strategis IT pada perusahaan selaras dengan manajemen bisnis sesuai dengan kebutuhan.', 2),
(9, 1, 'Perusahaan memperbarui perencanaan IT sesuai dengan permintaan Manajemen.', 2),
(10, 1, 'Keputusan strategis pada perusahaan didorong atas dasar proyek-demi-proyek tanpa konsistensi dengan strategi organisasi secara keseluruhan.', 2),
(11, 1, 'Resiko dan manfaat pengguna teknologi sebagai hasil dari keputusan strategis utama dikenali dengan cara intuitif.', 2),
(12, 1, 'Kebijakan dapat menentukan kapan dan bagaimana perencanaan strategis IT dilakukan pada perusahaan.', 3),
(13, 1, 'Perencanaan srtategis IT terstruktur dan didokumentasikan dan diketahui oleh semua staf perusahaan.', 3),
(14, 1, 'Proses perencanaan IT pada perusahaan cukup baik dan terlihat bisa direalisasikan.', 3),
(15, 1, 'Manajer diberikan wewenang untuk implementasi dari proses perencanaan, tidak ada prosedur untuk menguji proses tersebut.', 3),
(16, 1, 'Stategi IT pada perusahaan mencakup definisi resiko yang akan diambil oleh organisasi.', 3),
(17, 1, 'Strategi keuangan, teknis, dan sumber daya manusia IT mempengaruhi pendapatan perusahaan.', 3),
(18, 1, 'Perencanaan strategis IT dibahas pada pertemuan manajemen perusahaan.', 3),
(19, 1, 'Perencanaan strategis IT pada perusahaan dijalankan dan manajemen dapat mengetahui jika ada kesalahan.', 4),
(20, 1, 'Perencanaan strategis IT pada perusahaan merupakan fungsi manajemen yang ditentukan dengan tanggung jawab tingkat senior (senior-level responsibilities).', 4),
(21, 1, 'Manajemen perusahaan mampu memantau proses perencanaan strategis IT, membuat keputusan berdasarkan informasi dan mengukur efektivitasnya.', 4),
(22, 1, 'Perencanaan IT jangka pendek dan panjang terjadi dan diturunkan pada organisasi dengan pembaharuan sesuai dengan kebutuhan.', 4),
(23, 1, 'Strategi IT terkoordinasi dengan strategi perusahaan secara umum.', 4),
(24, 1, 'Ada proses yang didefinisikan dengan baik untuk menentukan penggunaan sumber daya internal dan eksternal pada perusahaan.', 4),
(25, 1, 'Perencanan strategis IT pada PIKTI menjadi sebuah proses hidup yang terdokumentasi, dipertimbangkan dalam penetapan tujuan bisnis secara terus-menerus, dan menghasilkan nilai bisnis.', 5),
(26, 1, 'Pertimbangan resiko dan nilai tambah terus diperbarui dalam proses perencanaan strategis IT.', 5),
(27, 1, 'Rencana IT jangka panjang di perusahaan dikembangkan secara terus menerus dan terus diperbarui.', 5),
(28, 1, 'Adanya perbandingan terhadap norma-norma industri yang mudah dipahami dan dapat diandalkan serta diintegrasikan dengan proses perumusan stategi', 5),
(29, 1, 'Rencana strategis perusahaan mencakup bagaimana perkembangan teknologi baru dapat mendukung terciptanya kapabilitas bisnis baru dan meningkatkan keunggulan kompetitif organisasi.', 5),
(30, 2, 'Arsitektur informasi bagi organisasi perusahaan adalah hal yang penting', 0),
(31, 2, 'Pengetahuan, keahlian dan tanggung jawab yang diperlukan untuk mengembangkan arsitektur ini ada dalam organisasi perusahaan', 0),
(32, 2, 'Manajemen perusahaan menyadari kebutuhan akan arsitektur informasi.', 1),
(33, 2, 'Pengembangan beberapa komponen arsitektur informasi pada perusahaan terjadi secara ad hoc (tidak permanen dan pembentukannya sejak semula dimaksudkan hanya untuk sementara waktu dan untuk menangani peristiwa tertentu).', 1),
(34, 2, 'Alamat data arsitektur informasi pada perusahaan didorong oleh penawaran vendor perangkat lunak aplikasi.', 1),
(35, 2, 'Adanya komunikasi yang tidak konsisten tentang kebutuhan arsitektur informasi pada perusahaan.', 1),
(36, 2, 'Proses pembangunan arsitektur informasi yang sama muncul dan diikuti oleh individu yang berbeda dalam organisasi perusahaan.', 2),
(37, 2, 'Staf pada perusahaan memperoleh keterampilan mereka dalam membangun arsitektur informasi melalui pengalaman langsung dan pengaplikasian teknik berulang kali.', 2),
(38, 2, 'Anggota staf perusahaan yang mengembangkan komponen arsitektur informasi memerlukan rencana taktis.', 2),
(39, 2, 'Arsitektur informasi penting untuk dapat dipahami dan diterima, karena itu tanggung jawab penyampaiannya ditetapkan dan dikomunikasikan dengan jelas oleh perusahaan.', 3),
(40, 2, 'Prosedur, alat, dan teknik pada perusahaan (meskipun tidak canggih) telah distandarisasi dan didokumentasikan, serta merupakan bagian dari kegiatan pelatihan informal pada perusahaan.', 3),
(41, 2, 'Kebijakan arsitektur informasi dasar perusahaan telah dikembangkan (termasuk beberapa persyaratan strategis), dan kepatuhan terhadap kebijakan, standar, dan alat ditegakkan secara konsisten pada perusahaan.', 3),
(42, 2, 'Tersedianya fungsi administrasi data yang ditetapkan secara formal pada perusahaan. Perusahaan juga menetapkan standar seluruh organisasi dan mulai melaporkan pengiriman dan penggunaan arsitektur informasi.', 3),
(43, 2, 'Peralatan otomatis mulai digunakan, proses dan aturan yang digunakan tidak ditentukan oleh penawaran vendor.', 3),
(44, 2, 'Adanya rencana pengembangan pelatihan formal yang terencana.', 3),
(45, 2, 'Pengembangan dan penegakan arsitektur informasi didukung penuh oleh metode dan teknik formal yang ada pada perusahaan.', 4),
(46, 2, 'Akuntabilitas untuk kinerja proses pengembangan arsitektur ditegakkan dan keberhasilan arsitektur informasi sedang diukur oleh perusahaan.', 4),
(47, 2, 'Alat pendukung otomatis yang ada pada perusahaan telah disebarkan namun belum terintegrasi. Metrik dasar telah diidentifikasi dan sistem pengukuran sudah siap.', 4),
(48, 2, 'Proses definisi arsitektur informasi bersifat proaktif dan berfokus pada pemenuhan kebutuhan bisnis perusahaan di masa depan.', 4),
(49, 2, 'Administrasi data perusahaan secara aktif terlibat dalam semua upaya pengembangan aplikasi untuk memastikan konsistensi.', 4),
(50, 2, 'Model data yang lebih kompleks sedang diimplementasikan untuk memanfaatkan konten informasi dari database dan repositori otomatis telah diterapkan sepenuhnya pada organisasi perusahaan.', 4),
(51, 2, 'Sistem informasi eksekutif dan sistem pendukung keputusan pada perusahaan memanfaatkan informasi yang tersedia.', 4),
(52, 2, 'Arsitektur informasi diterapkan secara konsisten di semua tingkatan perusahaan.', 5),
(53, 2, 'Nilai arsitektur informasi bisnis PIKTI terus ditekankan.', 5),
(54, 2, 'Personel TI pada perusahaan memiliki keahlian dan keterampilan yang diperlukan untuk mengembangkan dan memelihara arsitektur informasi yang kuat dan responsif yang mencerminkan semua persyaratan bisnis.', 5),
(55, 2, 'Informasi yang disediakan oleh arsitektur informasi diterapkan secara konsisten dan ekstensif pada perusahaan.', 5),
(56, 2, 'Penggunaan ekstensif pada perusahaan dibuat dari praktik industri yang baik dalam pengembangan dan pemeliharaan arsitektur informasi, termasuk proses peningkatan berkelanjutan.', 5),
(57, 2, 'Adanya pendefinisian strategi untuk memanfaatkan informasi melalui data warehousing dan teknologi data mining pada PIKTI.', 5),
(58, 2, 'Arsitektur informasi pada perusahaan terus meningkat dan mempertimbangkan informasi non-tradisional.', 5),
(59, 3, 'Perusahaan memerlukan perencanaan infrastruktur teknologi', 0),
(60, 3, 'Perusahaan mengetahui dan dapat mengembangkan infrastruktur teknologi yang direncanakan', 0),
(61, 3, 'Perencanaan untuk perubahan teknologi penting dilakukan', 0),
(62, 3, 'Penting adanya perencanaan infrastruktur teknologi', 1),
(63, 3, 'Perkembangan teknologi dan implementasinya pada perusahaan dilakukan saat diperlukan dan bersifat terisolasi', 1),
(64, 3, 'Dalam perencanaan infrastruktur, dilakukan menggunakan pendekatan reaktif dan fokus operasional', 1),
(65, 3, 'Arah pengembangan teknologi PIKTI biasanya disebabkan adanya kontra antara rencana pengembangan perangkat keras, perangkat lunak sistem dan vendor dari perangkat lunak.', 1),
(66, 3, 'Dampak dari perubahan teknologi dikomunikasikan secara konsisten', 1),
(67, 3, 'Adanya penyuluhan akan kebutuhan dari perencanaan teknolgi', 2),
(68, 3, 'Perencanaan teknologi lebih berfokus untuk menyelesaikan masalah teknis daripada memenuhi kebutuhan bisnis', 2),
(69, 3, 'Evaluasi dari perubahan teknologi diserahkan kepada orang yang berbeda yang mengikuti proses intuitif', 2),
(70, 3, 'Keterampilan dalam perencanaan teknologi didapat dari pembelajaran langsung dan penerapan teknik yang sudah dilakukan berkali-kali', 2),
(71, 3, 'Adanya standar dan teknik umum untuk pengembangan komponen infrastruktur', 2),
(72, 3, 'Manajemen perusahaan mengetahui pentingnya perencanaan infrastruktur teknologi', 3),
(73, 3, 'Rencana infrastruktur berjalan dengan cukup baik dan sesuai dengan rencana strategis IT.', 3),
(74, 3, 'Perencanaan infrastruktur teknologi didokumentasikan, dikomunikasikan, serta didefinisikan dengan baik. Namun implementasinya tidak dilakukan secara konsisten.', 3),
(75, 3, 'Arah dari infrastruktur teknologi mencakup pemahaman tentang ke mana perusahaan ingin memimpin atau tertinggal dalam penggunaan teknologi, berdasarkan risiko dan keselarasan dengan strategi perusahaan.', 3),
(76, 3, 'Vendor utama dipilih berdasarkan pemahaman teknologi untuk jangka panjang dan rencana pengembangan produk yang mereka miliki sesuai dengan tujuan perusahaan.', 3),
(77, 3, 'Adanya pelatihan dan komunikasi mengenai peran dan tanggung jawab yang dilakukan secara formal', 3),
(78, 3, 'Manajemen memastikan pengembangan dan perawatan dari rencana infrastruktur teknologi.', 4),
(79, 3, 'Staff IT memiliki keahlian yang dibutuhkan untuk mengembangkan infrastruktur teknologi yang telah direncanakan.', 4),
(80, 3, 'Memperhitungkan dampak akibat perubahan dan teknologi yang muncul', 4),
(81, 3, 'Manajemen dapat mengidentifikasi apabila terdapat penyimpangan dari rencana dan dapat mengantisipasi masalah', 4),
(82, 3, 'Adanya pemberian tanggung jawab untuk pengembangan dan pemeliharaan infrastruktur teknologi.', 4),
(83, 3, 'Proses pengembangan rencana infrastruktur teknologi canggih dan responsif terhadap perubahan', 4),
(84, 3, 'Praktikal baik sudah diperkenalkan ke dalam proses pengembangan', 4),
(85, 3, 'Strategi SDM sesuai dengan arah teknologi, sehingga staff IT dapat mengelola perubahan teknologi.', 4),
(86, 3, 'Rencana migrasi untuk memperkenalkan teknologi baru sudah ditentukan.', 4),
(87, 3, 'Outsourcing dan kemitraan digunakan untuk mendapatkan keahlian dalam pengembangan teknologi', 4),
(88, 3, 'Manajemen telah menganalisa penerimaan risiko terkait lead atau lag penggunaan teknologi dalam mengefisiensikan operasional', 4),
(89, 3, 'Perusahaan melakukan penelitian untuk meninjau teknologi yang muncul dan berkembang.', 5),
(90, 3, 'Arah perencanaan infrastruktur teknologi dipandu oleh industri, standar, dan perkembangan internasional, bukan mengikuti vendor teknologi.', 5),
(91, 3, 'Manajemen senior meninjau dampak dari bisnis potensial dan dampak dari perubahan teknologi', 5),
(92, 3, 'Arah pembaruan dan perubahan teknologi disetujui oleh eksekutif secara formal', 5),
(93, 3, 'Perusahaan memiliki rencana infrastruktur yang kuat yang mencerminkan kebutuhan bisnis, responsif, dan dapat diubah sesuai dengan perubahan lingkungan', 5),
(94, 3, 'Adanya proses peningkatan rencana infrastruktur teknologi yang diakukan secara berkelanjutan', 5),
(95, 3, 'Praktik baik industri digunakan sebagai acuan untuk arah teknologi.', 5),
(96, 4, 'Departemen TI pada perusahaan mempunyai fokus pada pencapaian tujuan bisnis.', 0),
(97, 4, 'Aktivitas dan fungsi TI pada perusahaan bersifat reaktif dan diimplementasikan dengan konsisten.', 1),
(98, 4, 'TI tidak terlibat secara langsung dalam suatu proyek pada perusahaan, dan hanya dilibatkan pada tahap-tahap akhir pada proses bisnisnya.', 1),
(99, 4, 'Perusahaan mengganggap TI sebagai fungsi pendukung, tanpa adanya pandangan dari departemen secara keseluruhan.', 1),
(100, 4, 'Perusahaan memiliki departemen TI dengan pemahaman kebutuhan yang implisit, namun peran dan tanggung jawab secara formal belum ada.', 1),
(101, 4, 'Perusahaan memiliki TI dengan kemampuan untuk memenuhi kebutuhan pelanggan dan hubungan dengan vendor berupa kemampuan berpikir dengan cepat dan dapat beradaptasi dengan perubahan, namun dilakukan secara tidak konsisten.', 2),
(102, 4, 'Perusahaan telah memiliki departemen TI yang dibuat secara terstruktur, namun keputusan yang diambil masih tergantung pada pengetahuan dan keterampilan individu.', 2),
(103, 4, 'Perusahaan memiliki kebijakan umum yang mengatur hubungan antara departemen TI dan vendor.', 2),
(104, 4, 'Perusahaan memiliki peran dan tanggung jawab yang jelas antara departemen TI dan pihak ketiga.', 3),
(105, 4, 'Departemen TI pada perusahaan telah dikembangkan, didokumentasikan, dikomunikasikan, dan selaras dengan strategi TI yang telah ditentukan.', 3),
(106, 4, 'Lingkungan untuk pengendalian internal pada perusahaan telah didefinisikan.', 3),
(107, 4, 'Perusahaan memiliki pemeliharaan hubungan yang baik dengan pihak lain (seperti komite penasihat, audit internal, dan manajemen vendor).', 3),
(108, 4, 'Perusahaan memiliki departemen TI yang berfungsi secara keseluruhan.', 3),
(109, 4, 'Pada perusahaan, terdapat perbedaan fungsi yang harus dilakukan oleh staff TI dan apa yang harus dilakukan oleh pengguna.', 3),
(110, 4, 'Kriteria persyaratan untuk perekrutan menjadi staff TI di perusahaan telah sesuai dengan standar yang telah ditentukan.', 3),
(111, 4, 'Perusahaan memiliki aturan resmi yang mengatur tentang hubungan dengan pengguna dan pihak ketiga.', 3),
(112, 4, 'Pembagian tugas/peran serta tanggung jawab setiap stakeholder di perusahaan terdefinisi dengan baik serta terealisasi sesuai dengan yang telah ditentukan.', 3),
(113, 4, 'Departemen TI pada perusahaan secara proaktif menanggapi perubahan dan mencakup semua peran yang diperlukan untuk memenuhi kebutuhan bisnis.', 4),
(114, 4, 'Perusahaan memiliki keseimbangan definisi antara manajemen TI, kepemilikan proses, akuntabilitas, dan tanggung jawab.', 4),
(115, 4, 'Perusahaan menerapkan praktek-praktek internal yang baik ke dalam departemen TI.', 4),
(116, 4, 'Manajemen TI yang dimiliki oleh perusahaan mempunyai keahlian dan keterampilan yang sesuai untuk mendefinisikan, menerapkan dan memantau hubungan dalam departemen.', 4),
(117, 4, 'Perusahaan menjadikan metrik yang terukur untuk mendukung tujuan bisnis dan faktor-faktor keberhasilan yang diterapkan menjadi standar penilaian.', 4),
(118, 4, 'Perusahaan menyediakan individu yang memiliki skill untuk mendukung jalannya proyek dan pengembangan profesional.', 4),
(119, 4, 'Perusahaan memiliki keseimbangan antara skill dan sumber daya internal yang dibutuhkan oleh organisasi luar untuk ditetapkan dan diterapkan.', 4),
(120, 4, 'Struktur departemen TI pada perusahaan secara tepat mencerminkan kebutuhan bisnis dengan memberikan layanan yang sesuai dengan proses bisnis strategis, bukan karena keterbatasan teknologi.', 4),
(121, 4, 'Struktur departemen TI pada perusahaan telah dibuat secara fleksibel dan adaptif.', 5),
(122, 4, 'Perusahaan telah menerapkan praktik yang dilakukan pada organisasi/industri sejenis.', 5),
(123, 4, 'Perusahaan telah menggunakan teknologi untuk membantu pemantauan kinerja dan proses departemen TI.', 5),
(124, 4, 'Perusahaan telah menggunakan teknologi secara optimal untuk proses komunikasi dan monitoring.', 5),
(125, 4, 'Perusahaan telah melakukan proses perbaikan secara berkelanjutan dalam departemen.', 5),
(126, 5, 'Perusahaan memiliki kesadaran akan pentingnya pemilihan investasi TI dan perencanaan penganggaran pada TI', 0),
(127, 5, 'Perusahaan melakukan pengawasan atau pemantauan pada investasi dan pengeluaran TI', 0),
(128, 5, 'Perusahaan menyadari akan perlunya pengelolaan pada investasi TI, dan kebutuhan tersebut dikomunikasikan secara konsisten', 1),
(129, 5, 'Tanggung jawab untuk pemilihan investasi TI dan penganggaran TI pada perusahaan dilakukan secara terencana', 1),
(130, 5, 'Perusahaan memiliki implementasi pemilihan investasi TI dan penganggaran TI yang terisolasi dengan dokumen yang informal.', 1),
(131, 5, 'Investasi TI pada PIKTI dilakukan secara terencana', 1),
(132, 5, 'Perusahaan bertindak reaktif dalam investasi TI atau bersifat operasional yang berfokus pada keputusan penganggaran', 1),
(133, 5, 'Perusahaan memiliki koordinasi pengertian secara implisit akan kebutuhan pemilihan investasi TI dan penganggaran TI', 2),
(134, 5, 'Perusahaan melakukan komunikasi yang baik terkait kebutuhan akan proses pemilihan dan penganggaran investasi TI', 2),
(135, 5, 'Adanya pemenuhan kebutuhan pemilihan investasi TI dan penganggaran TI pada perusahaan.', 2),
(136, 5, 'Perusahaan memiliki teknik umum dan standar untuk pengembangan komponen penganggaran TI (infrastruktur, aplikasi dan layanan, sumber daya manusia, dll)', 2),
(137, 5, 'Perusahaan bertindak reaktif dan taktis dalam penyetujuan anggaran TI', 2),
(138, 5, 'Perusahaan memiliki kebijakan dan proses investasi serta penganggaran investasi TI yang terdefinisi, terdokumentasi, dikomunikasikan dengan baik, dan mencakup isu utama bisnis dan teknologi', 3),
(139, 5, 'Anggaran TI yang dimiliki oleh perusahaan telah selaras dengan rencana strategis TI dan rencana bisnis yang dimiliki', 3),
(140, 5, 'Proses pemilihan dan penganggaran investasi TI pada perusahaan telah diatur secara formal, terdokumentasi, dan dikomunikasikan dengan baik', 3),
(141, 5, 'Pelatihan formal telah diadakan di perusahaan namun masih berdasarkan pada inisiatif individu', 3),
(142, 5, 'Perusahaan telah memiliki persetujuan formal dari pemilihan investasi TI dan penganggaran TI', 3),
(143, 5, 'Anggota staf TI pada perusahaan memiliki pengalaman dan keterampilan yang dibutuhkan untuk mengembangkan proses penganggaran TI dan merekomendasikan investasi TI yang tepat', 3),
(144, 5, 'Tanggung jawab dan akuntabilitas terhadap pemilihan dan penganggaran investasi TI pada perusahaan ditugaskan kepada individu tertentu secara khusus', 4),
(145, 5, 'Adanya duplikasi anggaran TI pada perusahaan telah diidentifikasi dan diselesaikan', 4),
(146, 5, 'Perusahaan memiliki analisa biaya TI secara formal, meliputi biaya langsung maupun tidak langsung serta investasi yang diusulkan, dengan adanya pertimbangan dari semua total biaya selama ini yang sudah dikeluarkan', 4),
(147, 5, 'Perusahaan memiliki proses penganggaran TI yang proaktif dan terstandarisasi', 4),
(148, 5, 'Dampak dari pergeseran biaya dalam pengembangan dan operasional dari hardware dan software untuk proses integrasi sistem dan SDM TI telah ditetapkan dalam perencanaan investasi TI', 4),
(149, 5, 'Perusahaan telah melakukan perhitungan investasi TI berupa manfaat dan keuntungan secara finansial dan non finansial', 4),
(150, 5, 'Praktek pelayanan perusahaan yang baik telah digunakan untuk menghitung biaya dan mengidentifikasi pendekatan untuk meningkatkan efektifitas investasi TI', 5),
(151, 5, 'Analisa pengembangan teknologi telah dilakukan oleh perusahaan guna pemilihan investasi TI dan proses penganggaran TI', 5),
(152, 5, 'Perusahaan secara terus-menerus meningkatkan proses manajemen investasi TI berdasarkan pengalaman dan analisa kinerja investasi TI', 5),
(153, 5, 'Keputusan investasi TI pada perusahaan memasukkan harga/sesuai dengan tren peningkatan kinerja', 5),
(154, 5, 'Pendanaan alternatif pada investasi TI dinilai dan dievaluasi secara formal dalam konteks struktur modal yang ada pada perusahaan dengan menggunakan metode evaluasi formal', 5),
(155, 5, 'Perusahaan bertindak proaktif dalam hal identifikasi perbedaan dan variasi', 5),
(156, 5, 'Analisa biaya dan manfaat yang selama ini telah dikeluarkan oleh perusahaab masuk ke dalam keputusan investasi', 5),
(157, 6, 'Perusahaan telah membentuk lingkungan kontrol TI yang positif', 0),
(158, 6, 'Perusahaan telah menyadari perlunya penyediaan informasi yang akurat dan tepat waktu tentang layanan TI saat ini dan di masa depan serta resiko dan tanggung jawab terkait', 0),
(159, 6, 'Perusahaan telah menyadari pentingnya kebijakan, prosedur, pedoman, dan dokumentasi IT yang akurat, dapat dipahami dan disetujui kepada pemangku kepentingan, yang tertanam dalam kerangka kerja pengendalian TI', 0),
(160, 6, 'Manajemen bertindak secara reaktif dalam menangani persyaratan lingkungan pengendalian informasi perusahaan', 1),
(161, 6, 'Perusahaan mengembangkan dan mengkomunikasikan kebijakan, prosedur, dan standar secara ad hoc sebagaimana didorong oleh isu-isu dalam institusi', 1),
(162, 6, 'Proses pengembangan, komunikasi, dan kepatuhan penggunaan TI pada perusahaan bersifat informal dan tidak konsisten', 1),
(163, 6, 'Telah ditentukannya elemen lingkungan kontrol untuk TI, selaras dengan filosofi manajemen dan operasi perusahaan. Catatan: Elemen tersebut mencakup persyaratan mengenai penyampaian nilai dari investasi TI, risiko, integritas, etika, kompetensi staf, akunta', 1),
(164, 6, 'Lingkungan pengendalian TI perusahaan didasarkan dengan mengelola risiko yang signifikan, mendorong kerja sama lintas divisi dan kerja tim, mendorong kepatuhan dan perbaikan proses berkelanjutan, dan menangani penyimpangan proses (termasuk kegagalan) denga', 1),
(165, 6, 'Kebutuhan dan persyaratan lingkungan pengendalian informasi yang efektif secara implisit dipahami oleh manajemen perusahaan, tetapi dalam praktiknya sebagian besar bersifat informal', 2),
(166, 6, 'Kebutuhan akan kebijakan pengendalian, rencana dan prosedur dikomunikasikan oleh manajemen perusahaan, tetapi pengembangan diserahkan kepada kebijaksanaan manajer individu dan area bisnis perusahaan.', 2),
(167, 6, 'Kualitas TI diakui sebagai filosofi yang diinginkan untuk diikuti perusahaan, tetapi praktik diserahkan kepada kebijaksanaan manajer individu', 2),
(168, 6, 'Pelatihan TI dilakukan secara individu, sesuai kebutuhan masing-masing individual', 2),
(169, 6, 'Mengembangkan dan memelihara kerangka kerja yang mendefinisikan pendekatan keseluruhan perusahaan terhadap risiko dan kendali TI dan yang selaras dengan kebijakan TI dan lingkungan kendali serta kerangka kerja risiko dan kendali perusahaan.', 2),
(170, 6, 'Kontrol informasi lengkap dan lingkungan manajemen kualitas dikembangkan, didokumentasikan dan dikomunikasikan oleh manajemen perusahaan dan mencakup kerangka kerja untuk kebijakan, rencana dan prosedur', 3),
(171, 6, 'Proses pengembangan kebijakan terstruktur, dipelihara dan diketahui oleh staf, dan kebijakan, rencana, dan prosedur yang ada cukup baik dan mencakup masalah-masalah utama dalam PIKTI', 3),
(172, 6, 'Manajemen perusahaan membahas pentingnya kesadaran keamanan TI dan memulai program kesadaran', 3),
(173, 6, 'Perusahaan menyediakan pelatihan formal untuk mendukung lingkungan pengendalian informasi tetapi tidak diterapkan secara ketat', 3),
(174, 6, 'Meskipun perusahaan memiliki kerangka pengembangan keseluruhan untuk kebijakan dan prosedur pengendalian, ada pemantauan yang tidak konsisten atas kepatuhan terhadap kebijakan dan prosedur TI', 3),
(175, 6, 'Teknik untuk mempromosikan kesadaran keamanan telah distandarisasi dan diformalkan secara merata di perusahaan', 3),
(176, 6, 'Perusahaan telah mengembangkan dan memelihara seperangkat kebijakan untuk mendukung strategi TI. Catatan: Kebijakan ini mencakup maksud kebijakan; peran dan tanggung jawab; proses pengecualian; pendekatan kepatuhan; dan referensi untuk prosedur, standar da', 3),
(177, 6, 'Manajemen perusahaan menerima tanggung jawab untuk mengkomunikasikan kebijakan pengendalian internal dan mendelegasikan tanggung jawab dan mengalokasikan sumber daya yang cukup untuk memelihara lingkungan sejalan dengan perubahan signifikan', 4),
(178, 6, 'Perusahaan memiliki lingkungan pengendalian informasi yang positif dan proaktif, termasuk komitmen terhadap kualitas dan kesadaran keamanan TI, dibangun.', 4),
(179, 6, 'Perusahaan telah mengembangkan, memelihara, dan mengkomunikasikan kebijakan, rencana dan prosedur yang lengkap dan merupakan gabungan dari praktik internal yang baik', 4),
(180, 6, 'Kerangka kerja untuk peluncuran dan pemeriksaan kepatuhan TI selanjutnya ditetapkan dalam perusahaan', 4),
(181, 6, 'Perusahaan telah meluncurkan dan menegakkan kebijakan TI untuk semua staf yang relevan, sehingga mereka terintegrasi dan menjadi bagian integral dari operasi perusahaan.', 4),
(182, 6, 'Lingkungan pengendalian informasi perusahaan selaras dengan kerangka kerja dan visi manajemen strategis dan sering ditinjau, diperbarui dan terus ditingkatkan', 5),
(183, 6, 'Tenaga ahli internal dan eksternal perusahaan ditugaskan untuk memastikan bahwa praktik industri yang baik diadopsi sehubungan dengan panduan pengendalian dan teknik komunikasi', 5),
(184, 6, 'Pemantauan, penilaian mandiri, dan pemeriksaan kepatuhan tersebar luas di dalam organisasi perusahaan', 5),
(185, 6, 'Teknologi digunakan dalam perusahaan untuk memelihara kebijakan dan basis pengetahuan kesadaran dan untuk mengoptimalkan komunikasi, menggunakan otomatisasi kantor dan alat pelatihan berbasis komputer', 5),
(186, 6, 'Perusahaan mengkomunikasikan kesadaran dan pemahaman tentang tujuan dan arahan bisnis dan TI kepada pemangku kepentingan dan pengguna yang sesuai di seluruh perusahaan', 5),
(187, 7, 'Apakah ada kesadaran tentang pentingnya menyelaraskan manajemen SDM TI dengan proses perencanaan teknologi untuk organisasi?', 0),
(188, 7, 'Apakah ada bagian yang bertanggung jawab mengenai TI pada bagian human resource?', 0),
(189, 7, 'Apakah menurut anda TI dibutuhkan pada bagian human resource?', 1),
(190, 7, 'Apakah manajemen SDM dilakukan secara informal dan reaktif?', 1),
(191, 7, 'Apakah menurut anda proses manjemen SDM TI difokuskan pada perekrutan dan pengelolaan personel?', 1),
(192, 7, 'Apakah menurut anda dengan perkembangan teknologi sekarang ini dibutuhkan kemampuan dan kompetensi baru?', 1),
(193, 7, 'Apakah ada niatan dalam mempekerjakan dan mengelola personel TI karena kebutuhan proyek, dibanding oleh karena keseimbangan antara ketersediaan staf internal dan eksternal?', 2),
(194, 7, 'Apakah perusahaan mengadakan pelatihan untuk staf baru?', 2),
(195, 7, 'Apakah manajemen menyadari kebutuhan akan manajemen SDM TI?', 3),
(196, 7, 'Apakah ada rencana dalam melakukan manajemen SDM TI?', 3),
(197, 7, 'Apakah ada pendekatan strategis untuk mempekerjakan dan mengelola personel TI?', 3),
(198, 7, 'Apakah ada rencana pelatihan formal untuk memenuhi kebutuhan SDM TI?', 3),
(199, 7, 'Apakah ada program rotasi yang dirancang untuk memperluas keterampilan manajemen teknis dan bisnis yang ditetapkan?', 3),
(200, 7, 'Apakah tanggung jawab untuk pengembangan dan pemeliharaan rencana manajemen SDM TI diberikan kepada individu/kelompok tertentu dengan keahlian dan keterampilan yang diperlukan untuk mengembangkan rencana?', 4),
(201, 7, 'Apakah proses pengembangan dan pengelolaan rencana manajemen SDM TI responsif terhadap perubahan?', 4),
(202, 7, 'Apakah ada standarisasi dalam organisasi untuk memungkinkannya mengidentifikasi penyimpangan dari rencana manajemen SDM TI, khususnya pada pengelolaan pertumbuhan dan pergantian personel TI?', 4),
(203, 7, 'Apakah kompensasi dan tinjauan kinerja dibuat dan dibandingkan dengan organisasi TI lainnya?', 4),
(204, 7, 'Apakah manajemen SDM TI bersifat proaktif dengan mempertimbangkan pengembangan jalur karier?', 4),
(205, 7, 'Apakah rencana Manajemen SDM selalu diperbaharui sesuai dengan kebutuhan?', 5),
(206, 7, 'Apakah perencanaan manajemen SDM terintegrasi dengan teknologi IT?', 5),
(207, 7, 'Apakah manajemen SDM sejalan dengan arah strategis organisasi?', 5),
(208, 7, 'Apakah komponen manajemen SDM TI konsisten dengan praktik industri yang baik, seperti kompensasi, tinjauan kinerja, transfer pengetahuan, pelatihan dan pendampingan?', 5),
(209, 7, 'Apakah program pelatihan dikembangkan berdasarkan semua standar dan produk teknologi baru sebelum diterapkan di organisasi?', 5),
(210, 8, 'Perusahaan memiliki perencanaan Quality Management System (QMS) dan metodologi System Development Life Cycle (SDLC)', 0),
(211, 8, 'Manajemen perusahaan menyadari bahwa kualitas dari layanan perusahaan sangat penting', 0),
(212, 8, 'Pernah dilakukan peninjauan terkait kualitas operasi dan layanan di perusahaan', 0),
(213, 8, 'Manajemen membuat penilaian terkait layanan di perusahaan secara informal untuk mengukur kualitas', 1),
(214, 8, 'Apakah aktivitas Quality Management System (QMS) pada perusahaan berfokus pada IT-project dan process oriented?', 2),
(215, 8, 'Adanya program atau aplikasi yang digunakan untuk memonitor aktivitas Quality Management System (QMS) pada manajemen perusahaan', 2),
(216, 8, 'Apakah proses Quality Management System (QMS) dikomunikasikan kepada perusahaan oleh manajemen dengan mengikutsertakan manajemen IT dan manajemen end-user?', 3),
(217, 8, 'Adanya kegiatan edukasi dan pelatihan untuk staff dan karyawan perusahaan terkait kualitas layanan yang diberikan', 3),
(218, 8, 'Apakah ada ekspetasi kualitas dasar yang didefinisikan dan digunakan di berbagai proyek pada organisasi IT?', 3),
(219, 8, 'Apakah ada perencanaan dan pelaksanaan survey terkait kepuasan kualitas layanan di perusahaan?', 3),
(220, 8, 'Alat maupun pelatihan yang menunjang sistem manajemen kualitas sudah dimunculkan (diputuskan)', 3),
(221, 8, 'Suvery mengenai kepuasan terhadap kualitas layanan perusahaan sudah direncanakan', 3),
(222, 8, 'Perusahaan memiliki standar mengenai kualitas layanan', 4),
(223, 8, 'Apakah survey kualitas kepuasan dijalankan secara konsisten?', 4),
(224, 8, 'apakah proses benchmarking dengan kompetitor sudah mulai dilakukan?', 4),
(225, 8, 'Apakah IT management menjadi dasar pengetahuan dari metriks kualitas?', 4),
(226, 8, 'Apakah proses analisis akar permasalahan (root cause analysis) diaplikasikan secara berkala?', 4),
(227, 8, 'Sistem manajemen kualitas (QMS) sudah diterapkan pada setiap aktivitas maupun proses bisnis di perusahaan', 5),
(228, 8, 'Sistem manajemen kualitas (QMS) yang diterapkan sudah fleksibel dan mudah beradaptasi dengan perubahan lingkungan di perusahaan', 5),
(229, 8, 'Perusahaan telah rutin mengadakan proses brenchmarking dengan program pendidikan diluar (kompetitor perusahaan)', 5),
(230, 8, 'Proses manajemen mutu perusahaan sudah sesuai standar dan spesifikasi', 5),
(231, 9, 'Adakah proses pengadaan sumber daya TI yang ditetapkan oleh perusahaan ?', 0),
(232, 9, 'Apakah perusahaan menyadari perlunya kebijakan dan prosedur pengadaan yang jelas untuk memastikan bahwa semua sumber daya TI tersedia secara tepat waktu dan hemat biaya?', 0),
(233, 9, 'Sudahkah manajemen risiko diidentifikasi dengan relevan untuk memperoleh Solusi TI dan memberikan layanan TI pada perusahaan?', 0),
(234, 9, 'Apakah Risiko TI perusahaan sudah dipertimbangkan secara ad hoc?', 1),
(235, 9, 'Apakah Penilaian informal dari risiko proyek dilakukan sebagaimana ditentukan oleh masing-masing proyek?', 1),
(236, 9, 'Apakah Penilaian risiko terkadang diidentifikasi dalam rencana proyek tetapi jarang ditugaskan kepada manajer perusahaan tertentu ?', 1),
(237, 9, 'Apakah Risiko spesifik terkait TI, seperti keamanan, ketersediaan, dan integritas telah dipertimbangkan berdasarkan proyek per proyek?', 1),
(238, 9, 'Adakah risiko terkait TI yang memengaruhi operasi setiap harinya yang selalu dibahas dalam rapat manajemen perusahaan ?', 1),
(239, 9, 'Apakah mitigasi tetap konsisten ketika risiko telah dipertimbangkan ?', 1),
(240, 9, 'Apakah ada pemahaman yang muncul bahwa risiko TI itu penting dan perlu dipertimbangkan ?', 1),
(241, 9, 'Apakah terdapat pendekatan penilaian risiko yang berkembang dan diterapkan atas arahan manajer perusahaan?', 2),
(242, 9, 'Apakah manajemen risiko pada perusahaan biasanya terletak pada level tinggi dan diterapkan hanya untuk proyek besar atau sebagai respons terhadap masalah?', 2),
(243, 9, 'Sudahkah proses mitigasi risiko mulai diterapkan di mana risiko telah teridentifikasi sebelumnya?', 2),
(244, 9, 'Apakah kebijakan manajemen risiko di seluruh organisasi perusahaan telah menentukan kapan dan bagaimana dalam melakukan penilaian risiko?', 3),
(245, 9, 'Apakah manajemen risiko mengikuti proses yang telah ditentukan dan didokumentasikan?', 3),
(246, 9, 'Apakah pelatihan manajemen risiko tersedia untuk semua anggota staf perusahaan?', 3),
(247, 9, 'Apakah keputusan untuk mengikuti proses manajemen risiko dan menerima pelatihan telah diserahkan kepada kebijaksanaan individu staf perusahaan?', 3),
(248, 9, 'Apakah metodologi untuk penilaian risiko meyakinkan dan memastikan bahwa risiko utama bisnis pada perusahaan teridentifikasi?', 3),
(249, 9, 'Apakah sebuah proses untuk memitigasi risiko / membuat langkah-langkah menghindari adanya risiko utama biasanya dilakukan setelah risiko diidentifikasi?', 3),
(250, 9, 'Apakah perusahaan memiliki uraian tugas untuk mempertimbangkan tanggung jawab manajemen risiko?', 3),
(251, 9, 'Apakah perusahaan telah menerapkan prosedur standar yang mana merupakan penilaian dan pengelolaan dari sebuah risiko?', 4),
(252, 9, 'Apakah pengecualian untuk proses manajemen risiko dilaporkan ke manajemen TI perusahaan.?', 4),
(253, 9, 'Apakah manajemen risiko TI adalah tanggung jawab dari manajemen senior perusahaan?', 4),
(254, 9, 'Sudahkah risiko dinilai dan dimitigasi pada tingkat proyek individu dan juga secara teratur berkaitan dengan operasi TI secara keseluruhan?', 4),
(255, 9, 'Apakah manajemen perusahaan diberi tahu tentang perubahan dalam bisnis dan lingkungan TI yang dapat secara signifikan memengaruhi skenario risiko terkait TI perusahaan?', 4),
(256, 9, 'Apakah manajemen perusahaan mampu memantau posisi risiko dan membuat keputusan yang terinformasi mengenai eksposur yang bersedia diterimanya?', 4),
(257, 9, 'Apakah semua risiko yang teridentifikasi memiliki pemilik yang ditunjuk, manajemen senior, dan manajemen TI yang mana menentukan tingkat risiko yang akan ditoleransi oleh organisasi perusahaan?', 4),
(258, 9, 'Apakah manajemen TI perusahaan telah mengembangkan ukuran standar untuk menilai risiko dan menentukan rasio risiko / pengembalian?', 4),
(259, 9, 'Apakah perusahaan memiliki anggaran manajemen untuk proyek manajemen risiko operasional yang mana bertujuan untuk menilai kembali risiko secara teratur?', 4),
(260, 9, 'Apakah perusahaan sudah melakukan pembuatan database manajemen risiko, dan mulai mengotomatiskan bagian dari proses manajemen risiko?', 4),
(261, 9, 'Apakah Manajemen TI perusahaan telah mempertimbangkan strategi mitigasi risiko (langkah-langkah menghindari adanya risiko) ?', 4),
(262, 9, 'Apakah di perusahaan, manajemen risiko berkembang ke tahap di mana proses organisasi yang terstruktur ditegakkan dan dikelola dengan baik?', 5),
(263, 9, 'Apakah perusahaan telah menerapkan praktik yang baik di seluruh operasi perusahaan?', 5),
(264, 9, 'Apakah perusahaan telah melakukan penangkapan, analisis, dan pelaporan data manajemen risiko dengan sangat otomatis?', 5),
(265, 9, 'Apakah di perusahaan, bimbingan diambil dari para pemimpin perusahaan di lapangan, dan organisasi TI perusahaan mengambil bagian dalam kelompok sebaya untuk bertukar pengalaman?', 5),
(266, 9, 'Apakah di perusahaan, manajemen risiko benar-benar terintegrasi ke dalam semua bisnis dan operasi TI perusahaan yang mana diterima dengan baik dan melibatkan pengguna layanan TI perusahaan secara luas?', 5),
(267, 9, 'Apakah Manajemen perusahaan mendeteksi dan bertindak ketika keputusan operasional dan investasi TI utama dibuat dengan mempertimbangkan rencana manajemen risiko?', 5),
(268, 9, 'Apakah manajemen perusahaan terus menilai strategi mitigasi risiko (langkah-langkah menghindari adanya risiko) ?', 5),
(269, 10, 'Perusahaan menggunakan teknik manajemen proyek dan mempertimbangkan dampak bisnis yang terkait dengan kesalahan manajemen proyek dan kegagalan proyek pengembangan', 0),
(270, 10, 'Penggunaan teknik dan pendekatan manajemen proyek dalam perusahaan adalah keputusan yang tidak diserahkan kepada manajer perusahaan secara individu.', 1),
(271, 10, 'Terdapat komitmen manajemen dalam kepemilikan dan manajemen proyek.', 1),
(272, 10, 'Keputusan penting dalam manajemen proyek perusahaan dibuat dengan mempertimbangkan manajemen pengguna atau masukan dari pelanggan.', 1),
(273, 10, 'Terdapat keterlibatan pengguna dalam mendefinisikan proyek perusahaan.', 1),
(274, 10, 'Terdapat organisasi/bagian yang jelas dalam perusahaan untuk pengelolaan proyek.', 1),
(275, 10, 'Peran dan tanggung jawab untuk pengelolaan proyek perusahaan telah ditentukan.', 1),
(276, 10, 'Proyek, jadwal, dan pencapaian perusahaan telah didefinisikan dengan baik (jika ada).', 1),
(277, 10, 'Waktu dan pengeluaran dari staf yang mengerjakan proyek pada perusahaan dilakukan tracking dan dibandingkan dengan anggaran.', 1),
(278, 10, 'Manajemen senior mendapatkan dan menyampaikan awareness akan kebutuhan dan pentingnya manajemen proyek TI pada perusahaan.', 2),
(279, 10, 'Perusahaan sedang dalam proses mengembangkan dan menggunakan beberapa teknik dan metode dari proyek ke proyek.', 2),
(280, 10, 'Proyek-proyek pada perusahaan memiliki tujuan bisnis dan teknis yang didefinisikan secara informal.', 2),
(281, 10, 'Terdapat keterlibatan pemangku kepentingan (stakeholder) yang terbatas dalam manajemen proyek pada perusahaan.', 2),
(282, 10, 'Terdapat pedoman awal yang dikembangkan untuk aspek-aspek dalam manajemen proyek perusahaan.', 2),
(283, 10, 'Penerapan pedoman manajemen proyek perusahaan diserahkan kepada masing-masing manajer dari suatu proyek.', 2),
(284, 10, 'Proses dan metodologi manajemen proyek TI pada perusahaan telah ditetapkan dan disampaikan.', 3),
(285, 10, 'Proyek TI pada perusahaan ditentukan dengan tujuan bisnis dan teknis yang sesuai.', 3),
(286, 10, 'Senior dan manajemen bisnis perusahaan mulai berkomitmen dan terlibat dalam manajemen proyek perusahaan.', 3),
(287, 10, 'Terdapat bagian manajemen proyek yang didirikan dalam perusahaan dengan pemanfaatan TI serta dengan peran dan tanggung jawab awal yang telah ditentukan.', 3),
(288, 10, 'Proyek-proyek perusahaan dipantau dengan pencapaian, jadwal, anggaran, dan pengukuran kinerja yang telah ditetukan dan diperbarui.', 3),
(289, 10, 'Tersedia pelatihan manajemen proyek dan terutama merupakan hasil inisiatif dari staf individu.', 3),
(290, 10, 'Prosedur QA (Quality Assurance) dan aktivitas implementasi pasca-sistem ditentukan, dan diterapkan secara luas oleh manajemen perusahaan.', 3),
(291, 10, 'Proyek perusahaan mulai dikelola sebagai portofolio.', 3),
(292, 10, 'Manajemen membutuhkan metrik/pengukuran proyek formal dan terstandarisasi serta hasil evaluasi ditinjau setelah penyelesaian proyek.', 4),
(293, 10, 'Manajemen proyek diukur dan dievaluasi di keseluruhan perusahaan dan tidak hanya dalam TI.', 4),
(294, 10, 'Peningkatan pada proses manajemen proyek diformalkan dan disampaikan kepada anggota tim proyek perusahaan untuk melatih peningkatan.', 4),
(295, 10, 'Manajemen TI perusahaan menerapkan struktur organisasi proyek dengan peran, tanggung jawab, dan kinerja staf yang terdokumentasi.', 4),
(296, 10, 'Kriteria untuk mengevaluasi kesuksesan pada setiap pencapaian ditetapkan.', 4),
(297, 10, 'Dalam perusahaan, nilai dan risiko diukur dan dikelola sebelum, selama dan setelah penyelesaian proyek.', 4),
(298, 10, 'Proyek pada perusahaan dengan meningkat membahas tujuannya, bukan hanya yang spesifik dalam TI.', 4),
(299, 10, 'Terdapat dukungan proyek yang kuat dan aktif dari manajemen senior serta pemangku kepentingan (stakeholder) pada perusahaan.', 4),
(300, 10, 'Pelatihan manajemen proyek yang relevan direncanakan untuk staf bagian manajemen proyek dan di seluruh fungsi TI pada perusahaan.', 4),
(301, 10, 'Metodologi proyek yang terbukti diterapkan, ditegakkan dan diintegrasikan ke dalam budaya seluruh bagian dalam perusahaan.', 5),
(302, 10, 'Terdapat inisiatif berkelanjutan untuk mengidentifikasi dan melembagakan praktik manajemen proyek terbaik yang diterapkan.', 5),
(303, 10, 'Strategi TI untuk pengembangan sumber daya dan proyek operasional didefinisikan dan diimplementasikan dalam perusahaan.', 5),
(304, 10, 'Kantor manajemen proyek yang terintegrasi dengan perusahaan bertanggung jawab atas proyek dan program dari awal hingga pasca-implementasi.', 5),
(305, 10, 'Perencanaan program dan proyek di keseluruhan perusahaan memastikan bahwa pengguna dan sumber daya TI dimanfaatkan sebaik-baiknya untuk mendukung strategi perusahaan.', 5),
(306, 11, 'Perusahaan membutuhkan identifikasi dari kebutuhan fungsional dan operasional untuk implementasi pemanfaatan teknologi informasi', 0),
(307, 11, 'Perusahaan memelihara kesadaran akan pemanfaatan teknologi informasi', 0),
(308, 11, 'Perusahaan memiliki kesadaran dalam menentukan kebutuhan serta mengidentifikasi solusi teknologi', 1),
(309, 11, 'Adanya pertemuan diantara beberapa kelompok manajemen perusahaan membahas kebutuhan informal yang mana ada dokumentasi mengenai kebutuhan tersebut', 1),
(310, 11, 'Solusi TI diidentifikasi oleh individu berdasarkan kesadaran pasar yang terbatas atau sebagai tanggapan terhadap penawaran vendor', 1),
(311, 11, 'Adanya riset terstruktur dari perusahaan mengenai teknologi yang tersedia saat ini', 1),
(312, 11, 'Adanya pendekatan intuitif untuk mengidentifikasi ketersediaan solusi teknologi informasi di perusahaan', 2),
(313, 11, 'Solusi pemanfaatan teknologi informasi pada perusahaan diidentifikasi berdasarkan pengalaman dan pengetahuan internal tentang fungsi teknologi informasi', 2),
(314, 11, 'Adanya individu dalam perusahaan yang keahliannya menjadi kunci keberhasilan proyek', 2),
(315, 11, 'Adanya variasi dalam kualitas dokumentasi dan pengambilan keputusan di perusahaan', 2),
(316, 11, 'Adanya pendekatan yang jelas dan terstruktur dalam menentukan solusi TI pada perusahaan', 2),
(317, 11, 'Adanya pendekatan yang jelas dan terstruktur dalam menentukan solusi TI pada perusahaan', 3),
(318, 11, 'Adanya pendekatan untuk menentukan solusi TI membutuhkan pertimbangan alternatif yang dievaluasi terhadap faktor kebutuhan bisnis atau pengguna pada perusahaan', 3),
(319, 11, 'Proses penentuan solusi TI pada perusahaan diterapkan untuk beberapa proyek berdasarkan keputusan yang dibuat oleh anggota staf yang terlibat', 3),
(320, 11, 'Pendekatan terstruktur digunakan untuk menentukan persyaratan dan mengidentifikasi solusi TI pada perusahaan', 3),
(321, 11, 'Adanya metodologi yang sesuai standar untuk mengidentifikasi dan menilai solusi TI yang digunakan untuk sebagian besar proyek.', 4),
(322, 11, 'Adanya dokumentasi proyek yang berkualitas yang disetujui di setiap tingkatnya', 4),
(323, 11, 'Adanya kebutuhan di perusahaan yang jelas dan sesuai dengan struktur yang sudah didefinisikan sebelumnya', 4),
(324, 11, 'Adanya alternatif solusi yang juga dipertimbangkan, termasuk analisis mengenai biaya dan manfaatnya', 4),
(325, 11, 'Adanya metodologi yang jelas,didefinisikan, dipahami secara umum dan dapat diukur', 4),
(326, 11, 'Adanya antarmuka yang didefinisikan dengan jelas antara manajemen TI dan bisnis pada identifikasi dan penilaian solusi TI di perusahaan', 4),
(327, 11, 'Metodologi untuk identifikasi dan penilaian solusi TI di perusahaan mengalami peningkatan berkelanjutan.', 5),
(328, 11, 'Akuisisi dan implementasi metodologi yang ada di perusahaan memiliki fleksibilitas untuk proyek skala besar dan kecil.', 5),
(329, 11, 'Metodologi ini didukung oleh internal dan database pengetahuan eksternal yang berisi materi referensi tentang solusi teknologi', 5),
(330, 11, 'Adanya peluang baru yang sering kali diidentifikasi untuk memanfaatkan teknologi guna mendapatkan keunggulan kompetitif, memengaruhi rekayasa ulang proses bisnis, dan meningkatkan efisiensi secara keseluruhan pada perusahaan', 5),
(331, 11, 'Adanya peluang baru yang sering kali diidentifikasi untuk memanfaatkan teknologi guna mendapatkan keunggulan kompetitif, memengaruhi rekayasa ulang proses bisnis, dan meningkatkan efisiensi secara keseluruhan pada perusahaan', 5),
(332, 11, 'Manajemen perusahaan dapat mendeteksi dan bertindak jika solusi TI disetujui tanpa mempertimbangkan teknologi alternatif atau kebutuhan fungsional bisnis', 5),
(333, 12, 'Perusahaan memiliki proses desain dan spesifikasi terhadap pembuatan aplikasi TI', 0),
(334, 12, 'Aplikasi TI pada perusahaan diperoleh berdasarkan penawaran yang didorong oleh vendor, pengenalan suatu merek tertentu, atau dengan tujuan keakraban staf TI pada produk tertentu, sehingga memiliki sedikit atau tanpa pertimbangan pada kebutuhan sebenarnya y', 0),
(335, 12, 'Perusahaan memiliki kesadaran bahwa proses untuk akuisisi dan mempertahankan aplikasi diperlukan', 1),
(336, 12, 'Pendekatan untuk akuisisi dan memelihara perangkat lunak aplikasi bervariasi dari proyek ke proyek', 1),
(337, 12, 'Beberapa solusi individu untuk kebutuhan bisnis tertentu kemungkinan diperoleh secara independen, sehingga menjadi efisien dengan pemeliharaan dan dukungan', 1),
(338, 12, 'Terdapat proses yang berbeda, tetapi serupa, untuk akuisisi dan memelihara aplikasi berdasarkan keahlian dalam fungsi TI', 2),
(339, 12, 'Tingkat keberhasilan dengan aplikasi sangat tergantung pada keterampilan dan tingkat pengalaman di dalam IT', 2),
(340, 12, 'Perawatan biasanya bermasalah dan menderita ketika pengetahuan internal hilang dari organisasi', 2),
(341, 12, 'Adanya sedikit pertimbangan keamanan aplikasi dan ketersediaan dalam desain atau akuisis perangkat lunak aplikasi', 2),
(342, 12, 'Proses yang jelas, ditentukan dan umumnya dipahami ada untuk akuisis dan pemeliharaan perangkat lunak aplikasi', 3),
(343, 12, 'Proses selaras dengan strategi TI dan bisnis', 3),
(344, 12, 'Terdapat upaya yang dilakukan untuk menerapkan proses yang terdokumentasi secara baik dan konsisten pada berbagai aplikasi dan proyek', 3),
(345, 12, 'Metodologi umumnya fleksibel dan sulit diterapkan dalam semua kasus, sehingga langkah-langkahnya mungkin dilewati', 3),
(346, 12, 'Kegiatan perawatan direncanakan, dijadwalkan dan dikoordinasikan.', 3),
(347, 12, 'Terdapat metodologi yang formal dan dipahami dengan baik yang mencakup proses desain dan spesifikasi, kriteria untuk akuisisi,proses untuk pengujian dan persyaratan dokumentasi', 4),
(348, 12, 'Mekanisme persetujuan yang didokumentasikan dan disetujui ada untuk memastikan semua langkah-langkah diikuti dan pengecualian diizinkan.', 4),
(349, 12, 'Praktik dan prosedur berevolusi dan cocok untuk organisasi perusahaan, digunakan oleh semua staf dan berlaku untuk sebagian besar kebutuhan aplikasi.', 4),
(350, 12, 'Akuisisi aplikasi perangkat lunak dan praktik pemeliharaan diselaraskan dengan proses yang ditentukan.', 5),
(351, 12, 'Pendekatan untuk akuisisi dan pemeliharaan aplikasi perangkat lunak telah ditentukan sebelumnya serta disesuaikan dengan kebutuhan bisnis perusahaan', 5),
(352, 12, 'Pendekatan untuk akuisisi dan pemeliharaan perangkat lunak aplikasi yang mendukung proses bisnis, arus informasi, pelaporan, dan analitik data dalam perusahaan', 5),
(353, 12, 'Akuisisi dan metodologi pemeliharaan canggih dan memungkinkan penyebaran yang cepat, memungkinkan responsif dan fleksibilitas yang tinggi dalam menanggapi kebutuhan bisnis yang berubah.', 5),
(354, 12, 'Akuisisi aplikasi perangkat lunak dan implementasi metodologi mengalami perbaikan terus menerus dan didukung oleh database pengetahuan internal dan eksternal yang mengandung referensi bahan dan praktik yang baik', 5),
(355, 12, 'Metodologi menciptakan dokumentasi dalam struktur yang telah ditentukan yang membuat produksi dan pemeliharaan efisien', 5),
(356, 13, 'Pengelolaan infrastruktur teknologi pada perusahaan diakui sebagai topik yang cukup penting untuk ditangani', 0),
(357, 13, 'Apabila terdapat perubahan yang dilakukan pada infrastruktur perusahaan untuk setiap aplikasi baru, dilakukan dengan rencana yang matang pada keseluruhannya', 1),
(358, 13, 'Terdapat kesadaran bahwa infrastruktur TI perusahaan itu penting dan terdapat pendekatan keseluruhan yang konsisten', 1),
(359, 13, 'Aktivitas pemeliharaan TI perusahaan telah berpengaruh terhadap kebutuhan jangka pendek', 1),
(360, 13, 'Lingkungan produksi pada perusahaan adalah lingkungan pengujian', 1),
(361, 13, 'Terdapat konsistensi di antara pendekatan taktis saat proses akuisisi dan pemeliharaan infrastruktur TI perusahaan', 2),
(362, 13, 'Akuisisi dan pemeliharaan infrastruktur TI perusahaan didasarkan pada strategi yang ditentukan pertimbangan kebutuhan aplikasi bisnis yang harus didukung', 2),
(363, 13, 'Terdapat pemahaman bahwa infrastruktur TI perusahaan itu penting dengan didukung oleh beberapa praktik formal', 2),
(364, 13, 'Pemeliharaan TI pada perusahaan terjadwalkan dan terkoordinasi', 2),
(365, 13, 'Untuk beberapa lingkungan pada perusahaan, terdapat lingkungan pengujian yang terpisah', 2),
(366, 13, 'Terdapat proses yang jelas, terdefinisi, dan dipahami secara umum untuk akuisisi dan memelihara infrastruktur TI perusahaan', 3),
(367, 13, 'Proses tersebut mendukung kebutuhan aplikasi bisnis yang penting dan sejalan dengan strategi bisnis dan TI perusahaan, yang diterapkan secara konsisten', 3),
(368, 13, 'Pemeliharaan direncanakan, terjadwal dan terkoordinasi', 3),
(369, 13, 'Terdapat lingkungan yang terpisah untuk pengujian dan produksi', 3),
(370, 13, 'Proses akuisisi dan pemeliharaan infrastruktur teknologi perusahaan telah berkembang ke titik di mana ia bekerja dengan baik untuk sebagian besar situasi, diikuti secara konsisten dan difokuskan pada dapat digunakan kembali', 4),
(371, 13, 'Infrastruktur TI perusahaan cukup untuk mendukung aplikasi bisnis', 4),
(372, 13, 'Proses akuisisi dan pemeliharaan infrastruktur TI pada perusahaan terorganisir dengan baik dan proaktif', 4),
(373, 13, 'Biaya dan waktu tunggu untuk mencapai tingkat skalabilitas, fleksibilitas, dan integrasi yang diharapkan sebagian telah dioptimalkan', 4),
(374, 13, 'Proses akuisisi dan pemeliharaan infrastruktur teknologi pada perusahaan bersifat proaktif dan selaras dengan aplikasi bisnis yang penting dan arsitektur teknologi', 5),
(375, 13, 'Praktik yang baik terkait solusi teknologi telah diikuti dengan baik, dan perusahaan mengetahui perkembangan platform dan alat manajemen terbaru', 5);
INSERT INTO `pertanyaan` (`id_pertanyaan`, `id_it_process`, `pertanyaan`, `level`) VALUES
(376, 13, 'Pengurangan biaya pengeluaran perusahaan dengan merasionalisasi dan menstandarisasi komponen infrastruktur dan dengan menggunakan otomatisasi', 5),
(377, 13, 'Tingkat kesadaran teknis yang tinggi dapat mengidentifikasi cara optimal untuk secara proaktif meningkatkan kinerja, termasuk pertimbangan opsi pengalihdayaan', 5),
(378, 13, 'Infrastruktur TI pada perusahaan dipandang sebagai pendorong utama untuk memanfaatkan penggunaan TI', 5),
(379, 14, 'Terdapat pendokumentasian pengopersian aplikasi pada perusahaan (adanya dokumentasi pengoperasian, user manual, dan materi pelatihan).', 0),
(380, 14, 'Bahan materi pengoperasian aplikasi terdapat pada aplikasi milik perusahaan sendiri sehingga tidak memerlukan aplikasi berbayar.', 1),
(381, 14, 'Terdapat kesadaran akan pembuatan dokumentasi pengoperasian aplikasi pada perusahaan yang dibutuhkan.', 1),
(382, 14, 'Pembuatan dokumentasi pengoperasian aplikasi pada perusahaan dilakukan secara berkelanjutan serta diperuntukkan untuk seluruh bagian staff pada perusahaan', 1),
(383, 14, 'Dokumen-dokumen pengoperasian aplikasi pada perusahaan rutin dilakukan update.', 1),
(384, 14, 'Pelatihan pada pengoperasian aplikasi pada perusahaan dilakukan secara rutin kepada pengguna.', 1),
(385, 14, 'Memiliki SOP yang terintegrasi antara sistem yang dibangun dan unit bisnis', 1),
(386, 14, 'Adanya masukan dari unit bisnis untuk meningkatkan rancangan program pelatihan pengoperasian aplikasi pada perusahaan.', 1),
(387, 14, 'Terdapat SOP dan dokumentasi pada pengoperasian aplikasi pada perusahaan, akan tetapi tidak melalui pendekatan berdasarkan kerangka kerja yang dibangun secara terstruktur', 2),
(388, 14, 'Terdapat pengembangan SOP dan dokumentasi pengoperasian aplikasi pada perusahaan pada pengguna', 2),
(389, 14, 'Materi pelatihan pengoperasian aplikasi pada perusahaan dibuat oleh tim tertentu dengan pengawasan dari Koordinator Staff IT.', 2),
(390, 14, 'Penilaian pengguna terhadap SOP dan dokumentasi pengoperasian aplikasi pada perusahaan berada pada tingkat cukup.', 2),
(391, 14, 'Tersedianya program pelatihan pengoperasian aplikasi pada perusahaan kepada pengguna, akan tetapi tidak ada rencana berkelanjutan yang dilakukan.', 2),
(392, 14, 'Adanya SOP dan dokumentasi pengoperasian aplikasi pada perusahaan kepada pengguna diterima dan dipahami secara jelas.', 3),
(393, 14, 'SOP dan dokumentasi pengoperasian aplikasi pada perusahaan tersimpan dengan baik di tempat penyimpanan tertentu yang telah ditentukan dan bisa diakses oleh seluruh staff perusahaan', 3),
(394, 14, 'SOP dan dokumentasi pengoperasian aplikasi pada perusahaan dibuat berdasarkan respon pengguna.', 3),
(395, 14, 'SOP dan dokumentasi pengoperasian aplikasi pada perusahaan bisa diakses secara offline ketika terjadi keadaan yang darurat', 3),
(396, 14, 'Adanya proses pembaruan SOP dan materi pelatihan pengoperasian aplikasi pada perusahaan ketika terdapat perubahan yang terjadi pada aplikasi.', 3),
(397, 14, 'Terdapat pendekatan yang ditentukan pada proses pembuatan SOP dan dokumentasi pengoperasian aplikasi pada perusahaan, walaupun isinya bervariasi namun harus ada kontrol untuk harus mematuhi standar', 3),
(398, 14, 'Pengguna juga terlibat secara tidak langsung pada proses pembuatan SOP dan materi pelatihan pengoperasian aplikasi pada perusahaan.', 3),
(399, 14, 'Terdapat peningkatan penggunaan alat yang dijalankan secara otomatis pada pembuatan dan distribusi SOP dan dokumentasi pengoperasian aplikasi pada perusahaan', 3),
(400, 14, 'Pelatihan pengguna dan bisnis terhadap proses pembuatan SOP dan dokumentasi pengoperasian aplikasi telah direncanakan dan dijadwalkan oleh perusahaan', 3),
(401, 14, 'Adanya suatu kerangka kerja untuk me-maintain SOP dan materi pelatihan pengoperasian aplikasi pada perusahaan dengan dukungan IT', 4),
(402, 14, 'Pendekatan diambil untuk me-maintain SOP dan materi pelatihan pengoperasian aplikasi pada perusahaan sehingga mencakup semua sistem dan unit bisnis', 4),
(403, 14, 'SOP dan materi pelatihan pengoperasian aplikasi pada perusahaan saling terintegrasi serta terdapat antarmuka yang interaktif.', 4),
(404, 14, 'Terdapat pengawasan terhadap SOP dan materi pelatihan pengoperasian aplikasi pada perusahaan yang dikembangkan.', 4),
(405, 14, 'Terdapat umpan balik dari pengguna dan unit bisnis pada dokumentasi dan program pelatihan pengoperasian aplikasi pada perusahaan.', 4),
(406, 14, 'Dokumentasi bahan ajar dan pelatihan pengoperasian aplikasi pada perusahaan pada tingkat kehandalan dan ketersediaan yang baik.', 4),
(407, 14, 'Perusahaan telah mengimplementasikan proses yang akan digunakan untuk dokumen prosedur dan manajemen yang dijalankan secara otomatis', 4),
(408, 14, 'Terdapat pengembangan SOP dan dokumen bahan ajar pelatihan yang terintegrasi pada sistem aplikasi dan memungkinkan akses terhadap pengguna.', 4),
(409, 14, 'Pelatihan pengoperasian aplikasi pada perusahaan kepada unit bisnis dan pengguna berpartisipasi secara aktif sesuai dengan kebutuhan bisnis', 4),
(410, 14, 'Manajemen TI mengembangkan metrik perangkat lunak untuk mengukur pengembangan dan penyampaian bahan ajar dan program pelatihan pengguna.', 4),
(411, 14, 'Adanya peningkatan yang berkala terhadap user manual dan dokumentasi pengoperasian aplikasi pada perusahaan seiring dengan metode baru yang digunakan.', 5),
(412, 14, 'SOP dan materi pelatihan pengoperasian aplikasi pada perusahaan dilakukan secara bekelanjutan berdasarkan ilmu terkini sehingga melibatkan alur kerja, distribusi teknologi, dan kemudahan pengaksesan.', 5),
(413, 14, 'Dokumentasi dan materi pelatihan diperbarui untuk mencerminkan perubahan organisasi, operasional, dan perangkat lunak pada perusahaan', 5),
(414, 14, 'Pengembangan dari dokumentasi dan materi pelatihan pengoperasian aplikasi pada perusahaan serta penyampaian program pelatihan terintegrasi penuh dengan proses bisnis sehingga mendukung kebutuhan perusahaan yang berorientasi TI.', 5),
(415, 15, 'Terdapat proses pengadaan sumber daya TI yang ditetapkan', 0),
(416, 15, 'Perusahaan menyadari perlunya kebijakan dan prosedur pengadaan yang jelas untuk memastikan bahwa semua sumber daya TI tersedia secara tepat waktu dan hemat biaya', 0),
(417, 15, 'Perusahaan menyadari bahwa mereka harus memiliki kebutuhan untuk mendokumentasikan kebijakan dan prosedur yang menghubungkan akuisisi TI dengan proses pengadaan organisasi bisnis secara keseluruhan.', 1),
(418, 15, 'Kontrak untuk perolehan sumber daya TI dikembangkan dan dikelola oleh manajer proyek dan individu lain yang melaksanakan penilaian profesional mereka daripada sebagai hasil dari prosedur dan kebijakan formal', 1),
(419, 15, 'Terdapat hubungan ad hoc antara akuisisi perusahaan dan proses manajemen kontrak dan TI.', 1),
(420, 15, 'Kontrak untuk akuisisi dikelola secara berkelanjutan', 1),
(421, 15, 'Terdapat kesadaran organisasi tentang perlunya memiliki kebijakan dan prosedur dasar untuk akuisisi TI', 2),
(422, 15, 'Kebijakan-kebijakan dan prosedur sudah sebagian terintegrasi dengan proses pengadaan organisasi bisnis secara keseluruhan', 2),
(423, 15, 'Proses pengadaan sumber daya TI digunakan untuk seluruh proyek perusahaan baik proyek kecil sampai proyek besar.', 2),
(424, 15, 'Tanggung jawab dan akuntabilitas untuk pengadaan TI dan manajemen kontrak ditentukan oleh pengalaman masing-masing manajer kontrak', 2),
(425, 15, 'Pentingnya manajemen pemasok dan manajemen hubungan diakui, ditangani berdasarkan inisiatif individu', 2),
(426, 15, 'Proses kontrak sebagian besar digunakan oleh seluruh proyek perusahaan baik proyek kecil sampai proyek besar.', 2),
(427, 15, 'Manajemen telah menerapkan kebijakan dan prosedur untuk akuisisi TI', 3),
(428, 15, 'Kebijakan dan prosedur dipandu oleh keseluruhan proses pengadaan organisasi bisnis.', 3),
(429, 15, 'Sebagian besar sistem pengadaan bisnis terintegrasi dengan akuisisi TI secara keseluruhan', 3),
(430, 15, 'Terdapat standar TI untuk perolehan sumber daya TI', 3),
(431, 15, 'Pemasok sumber daya TI diintegrasikan ke dalam mekanisme manajemen proyek organisasi dari perspektif manajemen kontrak.', 3),
(432, 15, 'Manajemen TI mengkomunikasikan kebutuhan akuisisi yang sesuai serta manajemen kontrak pada seluruh fungsi TI.', 3),
(433, 15, 'Sistem pengadaan bisnis terintegrasi dengan akuisisi TI secara keseluruhan', 4),
(434, 15, 'Standar TI untuk akuisisi sumber daya TI digunakan untuk semua pengadaan.', 4),
(435, 15, 'Pengukuran pada kontrak dan manajemen pengadaan diambil secara relevan dengan kasus bisnis untuk akuisisi TI.', 4),
(436, 15, 'Pelaporan aktivitas akuisisi TI mendukung tujuan bisnis yang telah tersedia', 4),
(437, 15, 'Manajemen mengetahui pengecualian terhadap kebijakan serta prosedur akuisisi TI', 4),
(438, 15, 'Manajemen hubungan yang strategis sedang berkembang.', 4),
(439, 15, 'Perusahaan melakukan manajemen TI dengan menggunakan manajemen kontrak dan proses akuisisi untuk semua akuisisi dengan memonitor pengukuran kinerja', 4),
(440, 15, 'Manajemen melembagakan proses pengadaan sumber daya secara menyeluruh untuk proses akuisisi TI.', 5),
(441, 15, 'Manajemen menegakkan kepatuhan terhadap kebijakan dan prosedur untuk akuisisi TI', 5),
(442, 15, 'Evaluasi pada kontrak dan manajemen pengadaan diambil dari yang relevan dengan kasus bisnis untuk akuisisi TI.', 5),
(443, 15, 'Hubungan yang baik akan menjadikan waktu dengan kebanyakan penyalur dan mitra, dan koneksi yang baik dengan cara diukur dan dipantau', 5),
(444, 15, 'Hubungan telah dikelola atau direncanakan secara strategis', 5),
(445, 15, 'Standar, kebijakan, dan prosedur TI untuk akuisisi sumber daya TI diatur secara strategis dan menanggapi pengukuran proses tersebut', 5),
(446, 15, 'Manajemen TI mengkomunikasikan kepentingan strategis dari proses akuisisi yang tepat dan manajemen kontrak di seluruh fungsi TI.', 5),
(447, 16, 'Manajemen proses terhadap perubahan terdefinisi serta segala perubahan dilakukan dengan kontrol.', 0),
(448, 16, 'Terdapat kesadaran terhadap bagaimana sebuah perubahan dapat berdampak negatif bagi perusahaan terutama terhadap operasi bisnis dan teknologi informasi serta terdapat kesadaran terhadap bagaimana sebuah manajemen perubahan yang baik dapat berdampak positif', 0),
(449, 16, 'Perusahaan mengetahui bahwa setiap perubahan yang terjadi harus dikelola dan diawasi', 1),
(450, 16, 'Terdapat keberagaman bidang urusan pada perusahaan namun mengusahakan terjadinya perubahan yang terkelola dan sah.', 1),
(451, 16, 'Terdapat dokumentasi dari perubahan yang pernah terjadi di perusahaan serta terdapat dan konfigurasi yang cenderung lengkap dan dapat dipercaya.', 1),
(452, 16, 'Kesalahan jarang terjadi akibat manajemen perubahan yang ada dilakukan dengan baik.', 1),
(453, 16, 'Terdapat proses manajemen perubahan secara formal yang terstruktur, mendasar, dan mengusahakan agar jarang terjadi kesalahan.', 2),
(454, 16, 'Keakuratan dari konfigurasi dokumentasi konsisten dan perencanaan serta terdapat proses penilaian dampak terhadap perubahan.', 2),
(455, 16, 'Terdapat proses manajemen perubahan formal yang baik yang mencakup kategorisasi, prioritasisasi, prosedur-prosedur darurat, autorisasi perubahan dan manajemen pelepasan yang sesuai dengan perkembangan perusahaan.', 3),
(456, 16, 'Ketika workaround (solusi sementara terhada suatu masalah) telah ditemukan, proses manajemen perubahan yang terdapat pada perusahaan tetap diperhatikan.', 3),
(457, 16, 'Kesalahan jarang terjadi akibat perubahan-perubahan yang terkelola dengan baik.', 3),
(458, 16, 'Analisis dampak perubahan TI pada operasi bisnis mulai dibentuk untuk mendukung perencanaan teknologi dan aplikasi baru.', 3),
(459, 16, 'Proses manajemen perubahan dikembangkan dengan baik dan secara konsisten diikuti untuk segala perubahan yang ada.', 4),
(460, 16, 'Proses berjalan dengan efisien dan efektif dengan berdasar pada prosedur yang otomatis dan kontrol untuk memastikan bahwa mutu tercapai.', 4),
(461, 16, 'Semua perubahan yang terjadi berdasarkan perencanaan yang menyeluruh dan penilaian dampak untuk meminimalkan kemungkinan masalah pasca produksi', 4),
(462, 16, 'Proses persetujuan untuk perubahan sudah sesuai aturan.', 4),
(463, 16, 'Dokumentasi manajemen perubahan dibuat dengan tepat dan umumnya akurat, dengan perubahan yang dilakukan tracking secara formal', 4),
(464, 16, 'Dokumentasi konfigurasi TI pada perusahaan umumnya akurat', 4),
(465, 16, 'Perencanaan manejemen perubahan TI menjadi terintegrasi dengan perubahan dalam proses bisnis untuk menjamin training, perubahan organisasi dan persoalan kelancaran bisnis terkelola.', 4),
(466, 16, 'Terdapat peningkatan koordinasi antara manajemen perubahan TI dan perancangan proses bisnis baru.', 4),
(467, 16, 'Terdapat proses yang konsisten untuk mengawasi mutu dan kinerja proses manajemen perubahan perusahaan.', 4),
(468, 16, 'Proses manajemen perubahan dilakukan secara teratur, ditinjau dan diperbaharui untuk tetap sejalan dengan visi dan misi perusahaan.', 5),
(469, 16, 'Proses peninjauan mencerminkan hasil dari monitoring', 5),
(470, 16, 'Informasi konfigurasi sudah berbasis komputer dan menyediakan version control (sistem pengelolaan perubahan yang terjadi pada perusahaan).', 5),
(471, 16, 'Tracking perubahan sangat canggih dan menggunakan alat untuk mendeteksi perangkat lunak yang tidak sah dan tidak berlisensi', 5),
(472, 16, 'Manajemen perubahanTI terintegrasi dengan manajemen perubahan bisnis untuk memastikan bahwa TI adalah aspek penting dalam peningkatan produktivitas dan penciptaan kesempatan bisnis baru bagi perusahaan.', 5),
(473, 17, 'Manajemen senior maupun anggota staf TI menyadari kebutuhan dalam memverifikasi solusi yang diterapkan sudah sesuai dengan tujuan yang diinginkan.', 0),
(474, 17, 'Terdapat kesadaran terhadap kebutuhan untuk memverifikasi dan mengkonfirmasi solusi yang diterapkan yang telah memenuhi tujuan perusahaan.', 1),
(475, 17, 'Setiap tim proyek sudah melakukan inisiatif untuk melakukan pengujian dengan pendekatan yang tepat.', 1),
(476, 17, 'Terdapat akreditasi dan persetujuan formal pada perusahaan.', 1),
(477, 17, 'Pendekatan pengujian dan akreditasi didasarkan pada suatu metodologi tertentu yang telah ditentukan.', 2),
(478, 17, 'Tim pengembangan individu biasanya memutuskan pendekatan pengujian, dan terdapat pengujian integrasi juga.', 2),
(479, 17, 'Terdapat proses persetujuan secara formal.', 2),
(480, 17, 'Tersedia metodologi formal yang berkaitan dengan pemasangan, migrasi, konversi, dan penerimaan.', 3),
(481, 17, 'Proses instalasi dan akreditasi TI diintegrasikan ke dalam siklus hidup sistem dan diotomatisasi sampai batas tertentu.', 3),
(482, 17, 'Pelatihan, pengujian, dan transisi ke status produksi dan akreditasi sama dengan proses yang telah ditentukan karena berdasarkan keputusan bersama.', 3),
(483, 17, 'Kualitas sistem yang memasuki produksi konsisten, sehingga walaupun dengan adanya sistem baru tidak menimbulkan masalah pasca implementasi yang signifikan.', 3),
(484, 17, 'Prosedur sudah diformalkan dan dikembangkan agar terorganisir dengan baik dan praktis dengan lingkungan pengujian dan prosedur akreditasi yang ditentukan.', 4),
(485, 17, 'Dalam praktiknya, semua perubahan besar pada sistem mengikuti pendekatan formal tersebut.', 4),
(486, 17, 'Evaluasi pemenuhan kebutuhan pengguna distandarisasi dan diukur, menghasilkan metrik yang dapat ditinjau dan dianalisis secara efektif oleh manajemen.', 4),
(487, 17, 'Kualitas sistem yang memasuki produksi memuaskan manajemen bahkan dengan tingkat masalah pasca implementasi yang wajar.', 4),
(488, 17, 'Otomatisasi proses bersifat ad hoc dan bergantung pada proyek masing-masing.', 4),
(489, 17, 'Manajemen berusaha meningkatkan tingkat efisiensi saat ini apabila masih terdapat kekurangan evaluasi pasca-implementasi.', 4),
(490, 17, 'Sistem pengujian mencerminkan lingkungan hidup yang memadai.', 4),
(491, 17, 'Terdapat pengujian stres (menguji ketahanan suatu perusahaan atas suatu kondisi yang merugikan dan sangat berisiko) untuk sistem baru dan pengujian regresi (pengujian terhadap perangkat lunak secara menyeluruh dan sedetail mungkin) untuk sistem yang ada di', 4),
(492, 17, 'Proses pemasangan dan akreditasi telah disempurnakan ke tingkat praktik yang baik, berdasarkan hasil penyempurnaan dan penyempurnaan yang berkelanjutan.', 5),
(493, 17, 'Proses instalasi dan akreditasi TI sepenuhnya diintegrasikan ke dalam siklus hidup sistem dan diotomatiskan jika sesuai, memfasilitasi pelatihan, pengujian, dan transisi yang paling efisien ke status produksi sistem baru.', 5),
(494, 17, 'Lingkungan pengujian yang dikembangkan dengan baik, proses register permasalahan, dan proses penyelesaian kesalahan dapat memastikan transisi yang efisien dan efektif ke lingkungan produksi.', 5),
(495, 17, 'Akreditasi biasanya dilakukan tanpa pengerjaan ulang, dan masalah pasca implementasi biasanya terbatas pada koreksi kecil.', 5),
(496, 17, 'Tinjauan pasca-implementasi distandarisasi, dengan pelajaran yang dipetik disalurkan kembali ke dalam proses untuk memastikan peningkatan kualitas yang berkelanjutan.', 5),
(497, 17, 'Pengujian stres (menguji ketahanan suatu perusahaan atas suatu kondisi yang merugikan dan sangat berisiko) untuk sistem baru dan pengujian regresi (pengujian terhadap perangkat lunak secara menyeluruh dan sedetail mungkin) untuk sistem yang dimodifikasi di', 5),
(498, 18, 'Manajemen menyadari pentingnya proses untuk menentukan level dari layanan (Service Level)', 0),
(499, 18, 'Ada pihak dalam perusahaan yang bertanggung jawab untuk memonitor level dari layanan', 0),
(500, 18, 'Proses dalam mengatur level dari layanan perusahaan bersifat informal dan reaktif', 1),
(501, 18, 'Adanya pihak yang bertanggung jawab untuk menentukan dan menegelola layanan perusahaan', 1),
(502, 18, 'Pengukuran performa layanan perusahaan hanya bersifat kualitatif dengan tujuan yang tidak tepat/jelas', 1),
(503, 18, 'Pelaporan mengenai level dari layanan perusahaan bersifat tidak formal, jarang dilakukan dan tidak konsisten', 1),
(504, 18, 'Level layanan dari perusahaan bersifat informal dan tidak di-review', 2),
(505, 18, 'Pelaporan level layanan tidak lengkap dan ada kemungkinan tidak relevan atau membuat salah paham pengguna', 2),
(506, 18, 'Pelaporan level layanan bergantung kepada kemampuan dan inisiatif dari masing-masing manager', 2),
(507, 18, 'Wewenang dari koordinator level layanan terbatas', 2),
(508, 18, 'Penyusunan Service Level Agreement (SLA) bersifat sukarela dan tidak ada pemaksaan', 2),
(509, 18, 'Tanggung jawab dari koordinator level layanan jelas, dan wewenang sesuai kebijakan dari koordinator sendiri', 3),
(510, 18, 'Proses pengembangan Service Level Agreement (SLA) sudah ada dengan adanya checkpoint untuk menilai kembali level layanan dan kepuasan pengguna', 3),
(511, 18, 'Adanya dokumentasi dari layanan dan level layanan, dan disetujui dengan proses yang standard', 3),
(512, 18, 'Prosedur untuk mengatasi kekurangan dari level layanan bersifat informal', 3),
(513, 18, 'Adanya keterkaitan yang jelas antara ekspektasi pencapaian level layanan dan biaya yang tersedia', 3),
(514, 18, 'Level layanan perusahaan telah disetujui namun belum memenuhi kebutuhan bisnis', 3),
(515, 18, 'Level layanan perusahaan ditentukan pada fase penentuan kebutuhan sistem dan tergabung pada desain aplikasi dan lingkungan operasional', 4),
(516, 18, 'Kepuasan pelanggan diukur dan dinilai secara rutin', 4),
(517, 18, 'Pengukuran performa lebih mencerminkan kebutuhan pengguna daripada tujuan IT', 4),
(518, 18, 'Ukuran dari penilaian level layanan sudah terstandarisasi dan merefleksikan norma industri', 4),
(519, 18, 'Kriteria untuk penentuan level layanan berdasarkan pada ketersediaan, keandalan, performa, kapasitas pertumbuhan, dukungan pengguna, perencanaan berkelanjutan dan pertimbangan keamanan', 4),
(520, 18, 'Root Cause Analysis (RCA) rutin dilakukan ketika level layanan tidak memenuhi', 4),
(521, 18, 'Proses pelaporan untuk memonitor level layanan lebih terotomasi', 4),
(522, 18, 'Resiko operasional dan keuangan berhubungan dengan level layanan yang disetujui tidak memuaskan', 4),
(523, 18, 'Sistem formal untuk pengukuran level layanan bersifat legal dan selalu di-maintain', 4),
(524, 18, 'Level layanan dievaluasi berkelanjutan untuk memastikan tetap selaras dengan tujuan IT dan bisnis, sembari mengambil keuntungan dari teknologi, termasuk ratio cost-benefit', 5),
(525, 18, 'Semua proses manajemen level layanan dapat dilakukan pengembangan berkelanjutan', 5),
(526, 18, 'Kepuasan pengguna dimonitor dan dikelola secara berkelanjutan', 5),
(527, 18, 'Ekspektasi dari level layanan merefleksikan strategi tujuan dari bisnis dan dievaluasi sesuai norma industri', 5),
(528, 18, 'Management IT memiliki sumber daya dan tanggung jawab untuk memenuhi target level layanan, dan kompensasi untuk memenuhi target ini bersifat terstruktur', 5),
(529, 18, 'Manajemen senior memonitor matriks performa sebagai bagian dari proses pengembangan berkelanjutan', 5),
(530, 19, 'Apakah perusahaan memiliki peraturan/ketetapan/SOP yang mendefinisikan tanggung jawab dan akuntabilitas dalam menjalankan proses IT?', 0),
(531, 19, 'Apakah perusahaan memiliki kebijakan dan prosedur dalam melakukan kontrak dengan pihak ketiga?', 0),
(532, 19, 'Apakah ada proses review dan persetujuan dari manajemen terkait layanan dari pihak ketiga?', 0),
(533, 19, 'Apakah ada aktivitas pengukuran atau laporan yang diberikan oleh pihak ketiga untuk memantau kinerja pihak ketiga?', 0),
(534, 19, 'Apakah manajemen senior perusahaan peduli terhadap kualitas dari layanan yang diberikan oleh pihak ketiga?', 0),
(535, 19, 'Apakah manajemen perusahaan sadar dan peduli tentang perlunya kebijakan dan prosedur tertulis untuk memanajemen pihak ketiga, termasuk kontrak bertanda tangan?', 1),
(536, 19, 'Apakah perusahaan memiliki istilah standar dalam perjanjian dengan penyedia layanan?', 1),
(537, 19, 'Apakah perusahaan memiliki metode pengukuran yang formal terhadap layanan yang diberikan?', 1),
(538, 19, 'Apakah perusahaan memiliki guideline terhadap pelaksanaan layanan yang dilakukan oleh pihak ketiga?', 1),
(539, 19, 'Apakah ada proses pengawasan formal dari perusahaan terhadap penyedia layanan pihak ketiga, risiko terkait, dan pelaksanaan layanan?', 2),
(540, 19, 'Apakah perusahaan menggunakan dokumen formal yang ditandatangai dengan menggunakan istilah – istilah standar dalam menjalin Kerjasama dengan pihak ketiga?', 2),
(541, 19, 'Apakah laporan terkait layanan yang diberikan mendukung objektif bisnis?', 2),
(542, 19, 'Apakah perusahaan memiliki prosedur yang terdokumentasi dengan baik untuk mengatur layanan pihak ketiga, dengan proses yang jelas untuk pemeriksaan dan negosiasi dengan penyedia layanan?', 3),
(543, 19, 'Apakah ketika kesepakatan untuk penyediaan layanan dibuat, hubungan dengan pihak ketiga adalah murni kontrak?', 3),
(544, 19, 'Apakah sifat layanan yang akan diberikan dirinci dalam kontrak dan mencakup, hukum, operasional, dan kontrol?', 3),
(545, 19, 'Apakah di perusahaan ada bagian yang diberi tanggungjawab untuk mengawasi layanan dari pihak ketiga?', 3),
(546, 19, 'Apakah perusahaan memiliki susunan standar untuk menyusun persyaratan kontrak?', 3),
(547, 19, 'Apakah risiko bisnis yang terkait dengan layanan pihak ketiga dinilai dan dilaporkan?', 3),
(548, 19, 'Apakah perusahaan menetapkan kriteria formal dan standar untuk mendefinisikan ketentuan perjanjian, termasuk ruang lingkup pekerjaan, layanan yang akan disediakan, asumsi, jadwal, biaya, pengaturan penagihan dan tanggung jawab?', 4),
(549, 19, 'Apakah perusahaan menetapkan tanggung jawab untuk kontrak dan manajemen pihak ketiga?', 4),
(550, 19, 'Apakah Kualifikasi, risiko, dan kemampuan pihak ketiga diverifikasi secara berkelanjutan?', 4),
(551, 19, 'Apakah persyaratan layanan ditentukan dan dikaitkan dengan tujuan bisnis?', 4),
(552, 19, 'Apakah perusahaan memiliki proses untuk meninjau kinerja layanan terhadap persyaratan kontrak, memberikan masukan untuk menilai layanan pihak ketiga saat ini dan di masa mendatang?', 4),
(553, 19, 'Apakah perusahaan menggunakan model harga transfer dalam proses pengadaan?', 4),
(554, 19, 'Apakah semua pihak yang terlibat sadar akan layanan, biaya, dan ekspektasi pencapaian?', 4),
(555, 19, 'Apakah ada tujuan dan metrik yang disepakati untuk pengawasan penyedia layanan?', 4),
(556, 19, 'Apakah kontrak yang ditandatangani dengan pihak ketiga ditinjau secara berkala pada interval yang telah ditentukan sebelumnya?', 5),
(557, 19, 'Apakah bukti kepatuhan kontrak terhadap ketentuan operasional, hukum dan control dipantau, dan tindakan korektif diberlakukan?', 5),
(558, 19, 'Apakah pihak ketiga tunduk pada tinjauan berkala independent oleh perusahaan, dan umpan balik atas kinerja disediakan dan digunakan untuk meningkatkan pemberian layanan?', 5),
(559, 19, 'Apakah pengukuran kinerja dapat bervariasi dalam menanggapi kondisi bisnis yang berubah?', 5),
(560, 19, 'Apakah perusahaan memiliki tindakan yang mendukung deteksi dini masalah potensial dengan layanan pihak ketiga?', 5),
(561, 19, 'Apakah ada pelaporan pencapaian tingkat layanan yang komprehensif dan terdefinisi terkait dengan kepuasan terhadap pihak ketiga?', 5),
(562, 19, 'Apakah manajemen perusahaan dapat menyesuaikan proses akuisisi dan pemantauan layanan pihak ketiga berdasarkan pengukur kinerja?', 5),
(563, 20, 'Manajemen menyadari bahwa proses bisnis utama mungkin memerlukan kinerja tingkat tinggi dari TI atau bahwa kebutuhan bisnis secara keseluruhan untuk layanan TI dapat melebihi kapasitas.', 0),
(564, 20, 'Ada proses perencanaan kapasitas.', 0),
(565, 20, 'Pengguna mencari solusi untuk kendala kinerja.', 1),
(566, 20, 'Ada apresiasi atas kebutuhan akan kapasitas dan perencanaan kinerja oleh para pemilik proses bisnis.', 1),
(567, 20, 'Tindakan yang diambil untuk mengelola kinerja dan kapasitas biasanya bersifat reaktif.', 1),
(568, 20, 'Proses perencanaan kapasitas dan kinerja bersifat informal.', 1),
(569, 20, 'Pemahaman tentang kapasitas dan kinerja sumber daya TI terbatas.', 1),
(570, 20, 'Manajemen bisnis dan TI menyadari dampak dari tidak terkelolanya kinerja dan kapasitas.', 2),
(571, 20, 'Kebutuhan kinerja umumnya dipenuhi berdasarkan penilaian sistem individu dan pengetahuan dukungan dan tim proyek.', 2),
(572, 20, 'Alat individu dapat digunakan untuk mendiagnosis masalah kinerja dan kapasitas, tetapi konsistensi hasil tetap bergantung pada keahlian individu.', 2),
(573, 20, 'Ada penilaian keseluruhan dari kemampuan kinerja TI atau pertimbangan berdasarkan situasi peak dan worst-case.', 2),
(574, 20, 'Masalah ketersediaan kemungkinan besar terjadi dengan cara tidak terduga dan random, serta membutuhkan waktu yang cukup lama untuk didiagnosis dan dikoreksi.', 2),
(575, 20, 'Setiap pengukuran kinerja didasarkan terutama pada kebutuhan TI dan bukan pada kebutuhan pelanggan.', 2),
(576, 20, 'Persyaratan kinerja dan kapasitas ditentukan di sepanjang siklus hidup sistem.', 3),
(577, 20, 'Ada persyaratan dan metrik tingkat layanan yang dapat digunakan untuk mengukur kinerja operasional.', 3),
(578, 20, 'Persyaratan kinerja dan kapasitas di masa mendatang dimodelkan mengikuti proses yang ditentukan.', 3),
(579, 20, 'Laporan dibuat dengan memberikan statistik kinerja.', 3),
(580, 20, 'Akuisisi TI sebagian besar terintegrasi dengan sistem pengadaan bisnis secara keseluruhan.', 3),
(581, 20, 'Masalah terkait kinerja dan kapasitas masih mungkin terjadi dan memakan waktu untuk memperbaikinya.', 3),
(582, 20, 'Meskipun tingkat layanan dipublikasikan, pengguna dan pelanggan mungkin masih merasa skeptis tentang kemampuan layanan.', 3),
(583, 20, 'Ada proses dan alat yang tersedia untuk mengukur penggunaan sistem, kinerja dan kapasitas, dan hasil dibandingkan dengan tujuan yang ditentukan.', 4),
(584, 20, 'Tersedia informasi terkini yang memberikan statistik kinerja standar dan memperingatkan insiden yang disebabkan oleh kinerja dan kapasitas yang tidak memadai.', 4),
(585, 20, 'Masalah kinerja dan kapasitas yang tidak memadai ditangani sesuai dengan prosedur yang ditetapkan dan sesuai standar.', 4),
(586, 20, 'Alat otomatis digunakan untuk memantau sumber daya tertentu, seperti ruang disk, jaringan, server, dan gateway jaringan.', 4),
(587, 20, 'Statistik kinerja dan kapasitas dilaporkan dalam istilah proses bisnis, sehingga pengguna dan pelanggan memahami tingkat layanan TI.', 4),
(588, 20, 'Pengguna secara umum merasa puas dengan kemampuan layanan saat ini dan mungkin menuntut tingkat ketersediaan yang baru dan lebih baik.', 4),
(589, 20, 'Metrik untuk mengukur kinerja dan kapasitas TI yang telah disepakati mungkin diterapkan secara tidak konsisten.', 4),
(590, 20, 'Rencana kinerja dan kapasitas sepenuhnya disinkronkan dengan perkiraan permintaan bisnis.', 5),
(591, 20, 'Infrastruktur TI dan permintaan bisnis didasarkan pada tinjauan rutin untuk memastikan bahwa kapasitas optimal dicapai dengan biaya serendah mungkin.', 5),
(592, 20, 'Alat untuk memantau sumber daya TI penting distandarisasi dan digunakan di seluruh platform dan dihubungkan ke sistem manajemen insiden di seluruh organisasi.', 5),
(593, 20, 'Alat pemantauan mendeteksi dan secara otomatis dapat memperbaiki masalah terkait kinerja dan kapasitas.', 5),
(594, 20, 'Analisis tren dilakukan untuk menunjukkan masalah kinerja apa yang akan segera terjadi yang disebabkan oleh peningkatan volume bisnis, sehingga memungkinkan perencanaan dan penghindaran masalah yang tidak terduga.', 5),
(595, 20, 'Metrik untuk mengukur kinerja dan kapasitas TI telah disesuaikan dengan hasil dan indikator kinerja untuk semua proses bisnis yang penting dan diukur secara konsisten.', 5),
(596, 20, 'Manajemen menyesuaikan perencanaan kinerja dan kapasitas setelah melakukan analisis atas tindakan-tindakan yang dilakukan.', 5);

-- --------------------------------------------------------

--
-- Table structure for table `rekomendasi`
--

CREATE TABLE `rekomendasi` (
  `id_rekomendasi` int(11) NOT NULL,
  `id_pertanyaan` int(11) NOT NULL,
  `rekomendasi` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rekomendasi`
--

INSERT INTO `rekomendasi` (`id_rekomendasi`, `id_pertanyaan`, `rekomendasi`) VALUES
(1, 1, 'Lakukan perencanaan strategis untuk IT.'),
(2, 2, 'Perencanaan strategis IT dibutuhkan untuk mengelola dan mengarahkan sumber daya IT agar sesuai dengan priotitas dan kebutuhan perusahaan. Oleh karena itu, penting adanya kesadaran bahwa perencanaan strategis IT mendukung mencapai tujuan bisnis.'),
(3, 3, 'Perencanaan strategis IT dibutuhkan untuk mengelola dan mengarahkan sumber daya IT agar sesuai dengan priotitas dan kebutuhan perusahaan. Oleh karena itu, penting adanya kesadaran bahwa perencanaan strategis IT mendukung mencapai tujuan bisnis.'),
(4, 4, 'Jadikan perencanaan IT untuk memenuhi suatu tujuan bisnis tertentu.'),
(5, 5, 'Lakukan pembahasan mengenai perencanaan strategis IT pada pertemuan manajemen IT secara berkala.'),
(6, 6, 'Kebutuhan bisnis dan teknologi perusahaan harus dipengaruhi dan dipertimbangkan berdasarkan keadaan perusahaan.'),
(7, 7, 'Lakukan identifikasi risiko pada strategi untuk mempersiapkan perusahaan dalam menghadapi dan meminimalkan dampak yang mungkin terjadi.'),
(8, 8, 'Selaraskan perencanaan strategis IT dengan manajemen bisnis berdasarkan kebutuhan perusahaan.'),
(9, 9, 'Perbarui perencanaan IT apabila terdapat permintaan dari bagian manajemen.'),
(10, 10, 'Keputusan strategis harus konsisten sesuai dengan strategi perusahaan.'),
(11, 11, 'Kenali risiko dan manfaat dari teknologi dengan cara intuitif.'),
(12, 12, 'Buat kebijakan perusahaan mengenai perencanaan strategis IT.'),
(13, 13, 'Lakukan perencanaan strategis IT secara terstruktur dan terdokumentasi agar dapat diketahui oleh seluruh staff perusahaan'),
(14, 14, 'Buat perencanaan IT yang dapat direalisasikan sesuai kemampuan perusahaan.'),
(15, 15, 'Buat suatu prosedur untuk pengujian dari proses perencanaan teknoogi.'),
(16, 16, 'Buatlah definisi risiko yang akan diambil perusahaan pada strategi IT perusahaan.'),
(17, 17, 'Perlu diketahui bahwa strategi keuangan, strategi teknis, strategi sumber daya manusia mempengaruhi pendapatan perusahaan.'),
(18, 18, 'Lakukan pembahasan mengenai perencanaan strategis IT pada pertemuan manajemen IT secara berkala.'),
(19, 19, 'Manajemen harus mengetahui kesalahan pada implementasi perencanaan strategis IT.'),
(20, 20, 'Pertanggungjawaban dari perencanaan strategis IT dijadikan tanggung jawab tingkat senior (senior-level responsibilities)'),
(21, 21, 'Manajemen perusahaan harus dapat memantau proses dari perencanaan strategis IT, serta dapat membuat keputusan berdasarkan informasi yang diperoleh dan mengukur efektivitasnya.'),
(22, 22, 'Lakukan pembaruan pada perencanaan IT jangka pendek maupun panjang sesuai dengan kebutuhan perusahaan.'),
(23, 23, 'Strategi IT harus terkoordinasi dengan strategi perusahaan secara umum.'),
(24, 24, 'Buat definisi proses untuk menggunakan sumber daya internal dan eksternal pada perusahaan.'),
(25, 25, 'Lakukan perencanaan strategis IT secara terstruktur dan terdokumentasi. Perencanaan strategis IT sangat penting karena berpengaruh pada peforma perusahaan sehingga perlu dilakukan secara terus menerus agar dapat menghasilkan nilai bisnis.'),
(26, 26, 'Perbarui pertimbangan risiko dan nilai tambah dalam proses perencanan strategis IT.'),
(27, 27, 'Perbarui dan kembangkan rencana jangka panjang IT secara berkala.'),
(28, 28, 'Lakukan benchmarking dan perbandingan terhadap norma-norma industri yang dapat diandallkan. Integrasikan hasil perbandingan tersebut dengan proses perumusan strategi.'),
(29, 29, 'Dalam perencanaan harus jelas bagaimana suatu perkebangan teknologi dapat membantu perusahaan. Oleh karena itu, harus dipahami dan jelas bagaimana suatu teknologi baru dapat membantu perusahaan agar dapat mendukung dan meningkatkan keunggulan kompetitif pe'),
(30, 30, 'Arsitektur informasi bagi organisasi perusahaan adalah hal yang penting'),
(31, 31, 'Pengetahuan, keahlian, dan tanggung jawab diperlukan untuk mengembankan arsitektur perusahaan. Oleh karena itu, lakukan pelatihan untuk mendapat keahloan tersebut.'),
(32, 32, 'Manajemen perusahaan harus menyadari adanya kebutuhan akan arsitektur informasi.'),
(33, 33, 'Lakukan pengembangan komponan arsitektur berdasarkan kebutuhan perusahaan.'),
(34, 34, 'Arahkan arsitektur informasi sesuai dengan penawaran vendor perangkat lunak.'),
(35, 35, 'Komunikasikan secara konsisten tentang kebutuhan arsitektur informasi secara konsisten.'),
(36, 36, 'Proses pembangunan arsitektur informasi harus diketahui oleh individu yang berbeda.'),
(37, 37, 'Lakukan pengembangan kopetensi bagi staff perusahaan untuk mendapatkan keterampilan dan menambah pengalaman.'),
(38, 38, 'Buatlah rencana taktis dalam pengembangan komponen arsitektur informasi.'),
(39, 39, 'Komunikasikan dan tentukan penanggung jawab penyampaian arsitektur informasi pada perusahaan'),
(40, 40, 'Lakukan standarisasi dan dokumentasikan prosedur, alat, dan teknk dari perusahaan dan jadikan kegiatan pelatihan informal.'),
(41, 41, 'Lakukan penegakan kebijakan dan standar pada perusahaan apabia kebijakan arsitektur informasi dasar untuk perusahaan telah dikembangkan untuk meningkatkan kepatuhan terhadap kebijakan tersebut'),
(42, 42, 'Tetapkan fungsi administrasi data secara formal, standar perusahaan, dan lakukan pelaporan pengiriman dan penggunaan arsitektur informasi'),
(43, 43, 'Apabila memungkinkan dan dibutuhkan, sesuaikan proses dan rule (aturan) dari peralatan tersebut berdasarkan kebutuhan perusahaan.'),
(44, 44, 'Buat program rencana pelatihan untuk pengembangan kemampuan staf secara berkala.'),
(45, 45, 'Buat meode dan teknik untuk pengembangan dan implementasi arsitektur informasi.'),
(46, 46, 'Tegakan akuntabilitas pada kinerja proses pengembangan dan ukur tingkat keberhasilan arsitektur informasi perusahaan.'),
(47, 47, 'Kembangkan alat pendukung otomatis yang terintegrasi.'),
(48, 48, 'Fokuskan proses pendefinisian arsitektur informasi terhadap pemenuhan kebutuhan bisnis perusaaan di masa depan.'),
(49, 49, 'Administrasi data harus terlibat secara aktif dalam upaya pengembangan aplikasi untuk memastikan kosistensi.'),
(50, 50, 'Mulai kembangkan model data yang lebih kompleks untuk diimplementasikan sehinga perusahaan dapat memanfaatkan kontenindormasi dan repositori otomatis.'),
(51, 51, 'Gunakan informasi yang tersedia pada sistem pendukung keputusan dan sistem informasi untuk eksekutif.'),
(52, 52, 'Terapkan secara konsisten arsitektur informasi pada semua tingkatan perusahaan.'),
(53, 53, 'Terus tekankan nilai dari arsitektur informasi bisnis'),
(54, 54, 'Personel TI harus memiliki keahlian yang dibutuhkan untuk mengembangkan dan memelihara arsitektur informasi. Oleh karena itu, lakukan pelatihan untuk meningkatkan keterampilan dan pengetahuan personel TI.'),
(55, 55, 'Gunakan informasi yang disediakan oleh arsitektur informasi secara konsisten dan ekstensif pada perusahaan.'),
(56, 56, 'Terapkan praktik industri yang baik dalam penggunaan ekstensif dalam pengembangan dan pemeliharaan arsitektur informasi.'),
(57, 57, 'Lakukan pendefinisian strategi untuk pemanfaatan informasi melalui data warehousing dan teknologi data mining pada perusahaan.'),
(58, 58, 'Pertimbangkan informasi non-tradisional pada arsitektur informasi perusahaan.'),
(59, 59, 'Lakukan perencanaan infrastruktur teknologi.'),
(60, 60, 'Perusahaan harus mengetahui dan mampu mengembangkan infrastruktur teknologi yang telah direncanakan sebelumya.'),
(61, 61, 'Lakukan perencanaan untuk perubahan teknologi.'),
(62, 62, 'Perencanaan infrastruktur diperlukan oleh setiap perusahaan.'),
(63, 63, 'Lakukan perkebangan teknologi dan implementasikan pada perusahaan.'),
(64, 64, 'Lakukan perencanaan infrastruktur teknologi dengan mempertimbangkan pendekatan reaktif dan apabila memungkinkan lakukan pula pendekatan secara proaktif.'),
(65, 65, 'Lakukan evaluasi dari rencana pengembangan perangkat keras, perangkat lunak sistem dan vendor. Rencanakan pengembangan arah teknologi berdasarkan evaluasi tersebut.'),
(66, 66, 'Lakukan pengarahan dan komunikasikan dampak yang dapat terjadi akibat perubahan teknologi.'),
(67, 67, 'Lakukan pengarahan mengenai pentingnya perencanaan teknologi.'),
(68, 68, 'Lakukan perencanaan teknologi berfokus pada menyelesaikan masalah teknis daripada memenuhi kebutuhan bisnis'),
(69, 69, 'Lakukan evaluasi dari perubahan teknologi pada orang yang berbeda melalui proses intuitif'),
(70, 70, 'Lakukan pembelajaran dari penerapan teknik yang pernah dilakukan berkali-kali dan pembelajaran langsung untuk mendapatkan keterampilan.'),
(71, 71, 'Buat suatu kebijakan atau standar dalam pengembangan komponen infrastruktur teknologi perusahaan.'),
(72, 72, 'Manajemen perusahaan harus mengetaui pentingnya perencanaan infrastruktur teknologi.'),
(73, 73, 'Buat perencanaan infrastruktur yang sesuai dengan rencana strategis IT.'),
(74, 74, 'Lakukan perencanaan infrastruktur secara konsisten.'),
(75, 75, 'Arah dari infrastruktur teknologi harus memperhatikan arah dari perusahaan ingin memimpin dan tertinggal dalam penggunaan teknologi, sehingga infrastruktur teknologi tersebut harus mempertimbangkan risiko dan selaras dengan strategi perusahaan.'),
(76, 76, 'Pilihlah vendor utama yang paham dengan teknologi untuk jangka panjang dan memiliki rencana pengembangan produk yang sesuai dnegan tujuan perusahaan.'),
(77, 77, 'Lakukan pelatihan dan komunikasikan tentang peran dan tanggung jawab komponen perusahaan secara formal.'),
(78, 78, 'Pengembanga dan perawatan rencana infrastruktur teknologi harus dipastikan dan diawasi oleh bagian manajemen.'),
(79, 79, 'Staff IT harus memiliki keahlian yang dibutuhkan dalam mengembangkan infrastruktur teknologi yang direncanakan. Lakukan pelatihan pada staff T apabila staff IT tidak memiliki keahlian yang cukup'),
(80, 80, 'Lakukan manajemen risiko terkait perubahan teknologi yang muncul agar dapat mengantisipasi dan meminimalkan dampak dari risiko tersebut.'),
(81, 81, 'Manajemen harus mampu mengidentifikasi penyimpangan dari rencana dan dapat mengantisi masalah yang mungkin terjadi.'),
(82, 82, 'Lakukan pemberian tanggung jawab untuk pengembangan dan pemeliharaan infrastruktur teknologi.'),
(83, 83, 'Tingkatkan proses pengembangan rencana infrastruktur teknologi agar responsif terhadap perubahan pada perusahaan'),
(84, 84, 'Perkenalkan praktikal baik pada proses pengembangan.'),
(85, 85, 'Buat startegi SDM yang sesuai dengan arah teknologi, sehingga staff IT dapat mengelola perubahan teknologi.'),
(86, 86, 'Tentukan rencana migrasi dalam memperkenalkan teknologi baru yang sudah ditentukan oleh perusahaan.'),
(87, 87, 'Lakukan kemitraan dan outsourcing untuk membantu perusahaan memperoleh keahlian dalam mengembangkan teknologi perusahaan'),
(88, 88, 'Lakukan analisa penerimaan resiko yang terkait dengan lead or lag penggunaan teknologi, hasil dari analisa tersebut kemudian digunakan sebagai mengefisienkan operasional perusahaan.'),
(89, 89, 'Lakukan penelitian dari teknologi baru yang muncul dan berkembang agar mampu bersaing dengan perusahaan lainnya.'),
(90, 90, 'Jadikan standar dan perkembangan internasional sebagai arah perencanaan infrastruktur teknologi.'),
(91, 91, 'Libatkan manajemen senior dalam peninjauan dampak dari bisnis potensial dan dampak dari perubahan teknologi.'),
(92, 92, 'Lakukan persetujuan atas perubahan teknologi dengan melibatkan eksekutif secara formal.'),
(93, 93, 'Lakukan perencanaan infrastruktur teknologi dengan mempertimbangkan kebutuhan bisnis dan perubahan lingkungan perusahaan.'),
(94, 94, 'Lakukan peningkatan rencana infrastruktur secara berkelanjutan.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `domain`
--
ALTER TABLE `domain`
  ADD PRIMARY KEY (`id_domain`);

--
-- Indexes for table `it_process`
--
ALTER TABLE `it_process`
  ADD PRIMARY KEY (`id_it_process`),
  ADD KEY `domain` (`id_domain`);

--
-- Indexes for table `it_resource`
--
ALTER TABLE `it_resource`
  ADD PRIMARY KEY (`id_it_resource`);

--
-- Indexes for table `jenis_perusahaan`
--
ALTER TABLE `jenis_perusahaan`
  ADD PRIMARY KEY (`id_jenis_perusahaan`);

--
-- Indexes for table `mapping_it_resource_process`
--
ALTER TABLE `mapping_it_resource_process`
  ADD KEY `mapping` (`id_it_process`),
  ADD KEY `mapping 2` (`id_it_resource`);

--
-- Indexes for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  ADD PRIMARY KEY (`id_pertanyaan`),
  ADD KEY `it_process` (`id_it_process`);

--
-- Indexes for table `rekomendasi`
--
ALTER TABLE `rekomendasi`
  ADD PRIMARY KEY (`id_rekomendasi`),
  ADD KEY `pertanyaan` (`id_pertanyaan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `domain`
--
ALTER TABLE `domain`
  MODIFY `id_domain` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `it_process`
--
ALTER TABLE `it_process`
  MODIFY `id_it_process` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `jenis_perusahaan`
--
ALTER TABLE `jenis_perusahaan`
  MODIFY `id_jenis_perusahaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  MODIFY `id_pertanyaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=597;

--
-- AUTO_INCREMENT for table `rekomendasi`
--
ALTER TABLE `rekomendasi`
  MODIFY `id_rekomendasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `it_process`
--
ALTER TABLE `it_process`
  ADD CONSTRAINT `domain` FOREIGN KEY (`id_domain`) REFERENCES `domain` (`id_domain`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mapping_it_resource_process`
--
ALTER TABLE `mapping_it_resource_process`
  ADD CONSTRAINT `mapping` FOREIGN KEY (`id_it_process`) REFERENCES `it_process` (`id_it_process`),
  ADD CONSTRAINT `mapping 2` FOREIGN KEY (`id_it_resource`) REFERENCES `it_resource` (`id_it_resource`);

--
-- Constraints for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  ADD CONSTRAINT `it_process` FOREIGN KEY (`id_it_process`) REFERENCES `it_process` (`id_it_process`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rekomendasi`
--
ALTER TABLE `rekomendasi`
  ADD CONSTRAINT `pertanyaan` FOREIGN KEY (`id_pertanyaan`) REFERENCES `pertanyaan` (`id_pertanyaan`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;