
/*---------------------------------------------------------------
  SQL DB BACKUP 21.09.2023 21:45 
  HOST: localhost
  DATABASE: candycbt3
  TABLES: *
  ---------------------------------------------------------------*/

/*---------------------------------------------------------------
  TABLE: `berita`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `berita`;
CREATE TABLE `berita` (
  `id_berita` int(10) NOT NULL AUTO_INCREMENT,
  `id_mapel` int(10) NOT NULL,
  `sesi` varchar(10) NOT NULL,
  `ruang` varchar(20) NOT NULL,
  `jenis` varchar(30) NOT NULL,
  `ikut` varchar(10) DEFAULT NULL,
  `susulan` varchar(10) DEFAULT NULL,
  `no_susulan` text DEFAULT NULL,
  `mulai` varchar(10) DEFAULT NULL,
  `selesai` varchar(10) DEFAULT NULL,
  `nama_proktor` varchar(50) DEFAULT NULL,
  `nip_proktor` varchar(50) DEFAULT NULL,
  `nama_pengawas` varchar(50) DEFAULT NULL,
  `nip_pengawas` varchar(50) DEFAULT NULL,
  `catatan` text DEFAULT NULL,
  `tgl_ujian` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_berita`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*---------------------------------------------------------------
  TABLE: `file_pendukung`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `file_pendukung`;
CREATE TABLE `file_pendukung` (
  `id_file` int(11) NOT NULL AUTO_INCREMENT,
  `id_mapel` int(11) DEFAULT 0,
  `nama_file` varchar(50) DEFAULT NULL,
  `status_file` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_file`)
) ENGINE=InnoDB AUTO_INCREMENT=380 DEFAULT CHARSET=utf8;
INSERT INTO `file_pendukung` VALUES   ('356','1','file1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('357','1','file2.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('358','1','fileA.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('359','1','fileB.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('360','1','fileC.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('361','1','fileD.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('362','1','fileE.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('363','1','file1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('364','1','file2.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('365','1','fileA.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('366','1','fileB.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('367','1','fileC.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('368','1','fileD.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('369','1','file1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('370','1','fileB.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('371','1','fileD.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('372','1','file2.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('373','1','fileA.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('374','1','fileC.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('375','1','file1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('376','1','fileA.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('377','1','1_4_A.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('378','1','1_4_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('379','1','1_4_A.jpg',NULL);

/*---------------------------------------------------------------
  TABLE: `jawaban`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `jawaban`;
CREATE TABLE `jawaban` (
  `id_jawaban` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_soal` int(11) NOT NULL,
  `id_ujian` int(11) NOT NULL,
  `jawaban` char(1) DEFAULT NULL,
  `jawabx` char(1) DEFAULT NULL,
  `jenis` int(1) NOT NULL,
  `esai` text DEFAULT NULL,
  `nilai_esai` int(5) NOT NULL DEFAULT 0,
  `ragu` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_jawaban`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=latin1;
INSERT INTO `jawaban` VALUES   ('1','2','1','4','1','A','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('82','12','2','80','4','A','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('83','12','2','79','4','C','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('84','12','2','78','4','B','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('85','12','2','77','4','A','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('86','12','2','76','4','B','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('87','12','2','75','4','C','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('88','12','2','74','4','D','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('89','12','2','73','4','C','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('90','12','2','72','4','B','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('91','12','2','71','4','A','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('92','12','2','70','4','B','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('93','12','2','69','4','C','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('94','12','2','68','4','D','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('95','12','2','67','4','C','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('96','12','2','66','4','C','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('97','12','2','65','4','A','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('98','12','2','64','4','C','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('99','12','2','63','4','A','D','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('100','12','2','62','4','B','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('101','12','2','61','4','C','A','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('102','12','2','60','4','B','C','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('103','12','2','59','4','B','B','1',NULL,'0','0');
INSERT INTO `jawaban` VALUES ('104','11','2','80','4','A','B','1',NULL,'0','1');
INSERT INTO `jawaban` VALUES ('105','1','2','80','4','A','C','1',NULL,'0','0');

/*---------------------------------------------------------------
  TABLE: `jawaban_tugas`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `jawaban_tugas`;
CREATE TABLE `jawaban_tugas` (
  `id_jawaban` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) DEFAULT NULL,
  `id_tugas` int(11) DEFAULT NULL,
  `jawaban` longtext DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `tgl_dikerjakan` datetime DEFAULT NULL,
  `tgl_update` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `nilai` varchar(5) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_jawaban`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*---------------------------------------------------------------
  TABLE: `jenis`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `jenis`;
CREATE TABLE `jenis` (
  `id_jenis` varchar(30) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_jenis`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `jenis` VALUES   ('PTS','Penilaian Tengah Semester','tidak');
INSERT INTO `jenis` VALUES ('UJICOBA','UJI COBA','aktif');
INSERT INTO `jenis` VALUES ('USBK','Ujian Sekolah','tidak');

/*---------------------------------------------------------------
  TABLE: `jurusan`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `jurusan`;
CREATE TABLE `jurusan` (
  `jurusan_id` varchar(25) NOT NULL,
  `nama_jurusan_sp` varchar(100) DEFAULT NULL,
  `kurikulum` varchar(120) DEFAULT NULL,
  `jurusan_sp_id` varchar(50) DEFAULT NULL,
  `kurikulum_id` varchar(20) DEFAULT NULL,
  `sekolah_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`jurusan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*---------------------------------------------------------------
  TABLE: `kelas`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `kelas`;
CREATE TABLE `kelas` (
  `id_kelas` varchar(11) NOT NULL,
  `level` varchar(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `rombongan_belajar_id` varchar(50) DEFAULT NULL,
  `semester_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_kelas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `kelas` VALUES   ('IPA','SISWA','IPA',NULL,NULL);
INSERT INTO `kelas` VALUES ('MATEMATIKA','SISWA','MATEMATIKA',NULL,NULL);

/*---------------------------------------------------------------
  TABLE: `level`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `level`;
CREATE TABLE `level` (
  `kode_level` varchar(5) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `rombongan_belajar_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`kode_level`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `level` VALUES   ('SISWA','SISWA',NULL);

/*---------------------------------------------------------------
  TABLE: `log`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id_log` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `text` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
INSERT INTO `log` VALUES   ('1','1','login','masuk','2023-09-19 12:00:50');
INSERT INTO `log` VALUES ('2','2','login','masuk','2023-09-19 12:01:18');
INSERT INTO `log` VALUES ('3','1','logout','keluar','2023-09-19 12:02:57');
INSERT INTO `log` VALUES ('4','1','login','masuk','2023-09-19 12:03:04');
INSERT INTO `log` VALUES ('5','2','testongoing','sedang ujian','2023-09-19 12:17:14');
INSERT INTO `log` VALUES ('6','2','logout','keluar','2023-09-19 12:19:08');
INSERT INTO `log` VALUES ('7','2','login','masuk','2023-09-19 12:19:15');
INSERT INTO `log` VALUES ('8','2','logout','keluar','2023-09-19 12:30:10');
INSERT INTO `log` VALUES ('9','2','login','masuk','2023-09-19 12:30:16');
INSERT INTO `log` VALUES ('10','3','login','masuk','2023-09-19 13:56:59');
INSERT INTO `log` VALUES ('11','3','testongoing','sedang ujian','2023-09-19 13:57:25');
INSERT INTO `log` VALUES ('12','50','login','masuk','2023-09-19 13:57:26');
INSERT INTO `log` VALUES ('13','3','login','Selesai Ujian','2023-09-19 14:00:59');
INSERT INTO `log` VALUES ('14','3','logout','keluar','2023-09-19 14:04:24');
INSERT INTO `log` VALUES ('15','4','login','masuk','2023-09-19 14:04:40');
INSERT INTO `log` VALUES ('16','4','testongoing','sedang ujian','2023-09-19 14:04:48');
INSERT INTO `log` VALUES ('17','4','login','Selesai Ujian','2023-09-19 14:06:43');
INSERT INTO `log` VALUES ('18','4','logout','keluar','2023-09-19 14:08:37');
INSERT INTO `log` VALUES ('19','50','logout','keluar','2023-09-19 14:09:19');
INSERT INTO `log` VALUES ('20','3','login','masuk','2023-09-19 14:09:26');
INSERT INTO `log` VALUES ('21','5','login','masuk','2023-09-20 16:17:57');
INSERT INTO `log` VALUES ('22','5','logout','keluar','2023-09-20 16:22:46');
INSERT INTO `log` VALUES ('23','40','login','masuk','2023-09-20 16:23:07');
INSERT INTO `log` VALUES ('24','10','login','masuk','2023-09-20 16:26:21');
INSERT INTO `log` VALUES ('25','40','logout','keluar','2023-09-20 16:26:41');
INSERT INTO `log` VALUES ('26','31','login','masuk','2023-09-20 16:26:54');
INSERT INTO `log` VALUES ('27','12','login','masuk','2023-09-20 16:47:08');
INSERT INTO `log` VALUES ('28','12','logout','keluar','2023-09-20 16:52:25');
INSERT INTO `log` VALUES ('29','12','login','masuk','2023-09-20 16:54:27');
INSERT INTO `log` VALUES ('30','12','testongoing','sedang ujian','2023-09-20 16:54:40');
INSERT INTO `log` VALUES ('31','12','logout','keluar','2023-09-20 16:55:28');
INSERT INTO `log` VALUES ('32','12','login','masuk','2023-09-20 16:56:52');
INSERT INTO `log` VALUES ('33','12','logout','keluar','2023-09-20 16:57:11');
INSERT INTO `log` VALUES ('34','11','login','masuk','2023-09-20 17:00:49');
INSERT INTO `log` VALUES ('35','11','testongoing','sedang ujian','2023-09-20 17:01:01');
INSERT INTO `log` VALUES ('36','1','login','masuk','2023-09-20 17:19:23');
INSERT INTO `log` VALUES ('37','1','testongoing','sedang ujian','2023-09-20 17:19:43');
INSERT INTO `log` VALUES ('38','2','login','masuk','2023-09-20 17:29:42');
INSERT INTO `log` VALUES ('39','2','testongoing','sedang ujian','2023-09-20 17:29:56');
INSERT INTO `log` VALUES ('40','2','login','Selesai Ujian','2023-09-20 17:32:37');

/*---------------------------------------------------------------
  TABLE: `mapel`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `mapel`;
CREATE TABLE `mapel` (
  `id_mapel` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) NOT NULL DEFAULT '0',
  `idpk` varchar(255) NOT NULL,
  `idguru` varchar(3) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jml_soal` int(5) NOT NULL,
  `jml_esai` int(5) NOT NULL DEFAULT 0,
  `tampil_pg` int(5) NOT NULL,
  `tampil_esai` int(5) NOT NULL DEFAULT 0,
  `bobot_pg` int(5) NOT NULL,
  `bobot_esai` int(5) NOT NULL DEFAULT 0,
  `level` varchar(5) NOT NULL,
  `opsi` int(1) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(2) NOT NULL,
  `kkm` int(3) DEFAULT NULL,
  `soal_agama` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_mapel`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
INSERT INTO `mapel` VALUES   ('2','MTK','a:1:{i:0;s:5:\"semua\";}','285','MTK','40','0','40','0','100','0','SISWA','4','a:1:{i:0;s:10:\"MATEMATIKA\";}','2023-09-20 16:23:51','1','0','');
INSERT INTO `mapel` VALUES ('3','IPA','a:1:{i:0;s:5:\"semua\";}','295','IPA','40','0','40','0','100','0','SISWA','4','a:1:{i:0;s:3:\"IPA\";}','2023-09-20 16:24:46','1','0','');

/*---------------------------------------------------------------
  TABLE: `mata_pelajaran`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `mata_pelajaran`;
CREATE TABLE `mata_pelajaran` (
  `kode_mapel` varchar(20) NOT NULL,
  `nama_mapel` varchar(50) NOT NULL,
  `mata_pelajaran_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`kode_mapel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `mata_pelajaran` VALUES   ('IPA','IPA',NULL);
INSERT INTO `mata_pelajaran` VALUES ('MTK','MATEMATIKA',NULL);

/*---------------------------------------------------------------
  TABLE: `materi`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `materi`;
CREATE TABLE `materi` (
  `id_materi` int(255) NOT NULL AUTO_INCREMENT,
  `id_guru` int(255) NOT NULL DEFAULT 0,
  `kelas` text NOT NULL,
  `mapel` varchar(255) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `materi` longtext DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `tgl_mulai` datetime NOT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `tgl` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_materi`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
INSERT INTO `materi` VALUES   ('12','1','a:1:{i:0;s:5:\"semua\";}','COVID','COVID SUDAH USAI','<p>CONTOH MATERI</p>',NULL,'2020-07-05 21:00:00','https://www.youtube.com/watch?v=0-mwwfaSD44','2020-07-05 21:10:16',NULL);
INSERT INTO `materi` VALUES ('13','1','a:1:{i:0;s:5:\"semua\";}','COVID','CONTOH LAGI','<p><iframe src=\"https://www.youtube.com/embed/0-mwwfaSD44\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe></p>\r\n<p><a href=\"https://www.youtube.com/watch?v=0-mwwfaSD44\" target=\"_blank\" rel=\"noopener\">TONTON VIDEO</a></p>',NULL,'2020-07-05 21:00:00','','2020-07-05 21:14:56',NULL);

/*---------------------------------------------------------------
  TABLE: `nilai`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `nilai`;
CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  `id_ujian` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `kode_ujian` varchar(30) NOT NULL,
  `ujian_mulai` varchar(20) NOT NULL,
  `ujian_berlangsung` varchar(20) DEFAULT NULL,
  `ujian_selesai` varchar(20) DEFAULT NULL,
  `jml_benar` int(10) DEFAULT NULL,
  `jml_salah` int(10) DEFAULT NULL,
  `nilai_esai` varchar(10) DEFAULT NULL,
  `skor` varchar(200) DEFAULT NULL,
  `total` varchar(10) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `ipaddress` varchar(20) DEFAULT NULL,
  `hasil` int(2) NOT NULL,
  `jawaban` text DEFAULT NULL,
  `jawaban_esai` longtext DEFAULT NULL,
  `nilai_esai2` text DEFAULT NULL,
  `online` int(1) NOT NULL DEFAULT 0,
  `id_soal` longtext DEFAULT NULL,
  `id_opsi` longtext DEFAULT NULL,
  `id_esai` text DEFAULT NULL,
  `blok` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
INSERT INTO `nilai` VALUES   ('1','1','1','2','UJICOBA','2023-09-19 12:17:14','2023-09-19 12:17:14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'192.168.1.10','0',NULL,NULL,NULL,'1','2,9,11,15,17,6,7,8,13,19,20,24,25,28,31,21,23,27,1,10,12,22,26,30,32,29,33,35,3,14,34,36,37,39,16,5,38,18,4,40,','A,B,D,C,B,A,C,D,D,C,B,A,A,B,D,C,D,B,A,C,D,C,B,A,A,D,B,C,A,D,C,B,C,A,B,D,B,D,C,A,B,D,C,A,D,B,A,C,C,D,B,A,A,C,D,B,D,A,B,C,A,D,C,B,B,C,A,D,D,C,B,A,A,B,C,D,A,C,B,D,D,B,A,C,A,B,D,C,D,A,B,C,D,B,C,A,B,D,A,C,B,A,D,C,D,A,C,B,D,B,A,C,C,B,D,A,A,D,C,B,C,D,A,B,A,C,B,D,D,B,A,C,B,C,A,D,B,C,A,D,D,B,A,C,A,C,D,B,B,D,C,A,A,C,B,D,D,A,C,B,',NULL,'0');
INSERT INTO `nilai` VALUES ('2','1','1','3','UJICOBA','2023-09-19 13:57:25','2023-09-19 13:57:25','2023-09-19 14:00:59','22','18',NULL,'55','55',NULL,'10.10.10.99','0','a:40:{i:1;s:1:\"A\";i:2;s:1:\"B\";i:3;s:1:\"C\";i:4;s:1:\"D\";i:5;s:1:\"C\";i:6;s:1:\"B\";i:7;s:1:\"A\";i:8;s:1:\"B\";i:9;s:1:\"C\";i:10;s:1:\"D\";i:11;s:1:\"C\";i:12;s:1:\"B\";i:13;s:1:\"A\";i:14;s:1:\"B\";i:15;s:1:\"C\";i:16;s:1:\"D\";i:17;s:1:\"C\";i:18;s:1:\"B\";i:19;s:1:\"A\";i:20;s:1:\"B\";i:21;s:1:\"C\";i:22;s:1:\"D\";i:23;s:1:\"C\";i:24;s:1:\"B\";i:25;s:1:\"A\";i:26;s:1:\"B\";i:27;s:1:\"C\";i:28;s:1:\"D\";i:29;s:1:\"C\";i:30;s:1:\"B\";i:31;s:1:\"A\";i:32;s:1:\"B\";i:33;s:1:\"C\";i:34;s:1:\"D\";i:35;s:1:\"C\";i:36;s:1:\"B\";i:37;s:1:\"A\";i:38;s:1:\"B\";i:39;s:1:\"C\";i:40;s:1:\"A\";}','a:0:{}',NULL,'0','1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,','A,C,B,D,D,A,B,C,D,C,B,A,C,A,B,D,A,B,C,D,D,B,A,C,B,D,A,C,D,C,B,A,A,B,C,D,B,A,C,D,C,B,D,A,A,B,C,D,A,C,B,D,B,D,C,A,A,D,B,C,B,A,C,D,D,A,C,B,C,D,B,A,D,A,B,C,A,C,D,B,A,B,D,C,C,A,B,D,D,A,C,B,D,B,A,C,A,B,D,C,B,A,D,C,C,B,D,A,B,D,C,A,D,A,C,B,D,A,B,C,A,C,D,B,C,B,A,D,A,C,B,D,B,C,D,A,D,B,C,A,C,A,B,D,D,C,B,A,A,D,C,B,B,A,D,C,C,B,D,A,',NULL,'0');
INSERT INTO `nilai` VALUES ('3','1','1','4','UJICOBA','2023-09-19 14:04:48','2023-09-19 14:04:48','2023-09-19 14:06:43','22','18',NULL,'55','55',NULL,'10.10.10.99','1','a:40:{i:1;s:1:\"A\";i:2;s:1:\"B\";i:3;s:1:\"C\";i:4;s:1:\"D\";i:5;s:1:\"C\";i:6;s:1:\"B\";i:7;s:1:\"A\";i:8;s:1:\"B\";i:9;s:1:\"C\";i:10;s:1:\"D\";i:11;s:1:\"C\";i:12;s:1:\"B\";i:13;s:1:\"A\";i:14;s:1:\"B\";i:15;s:1:\"C\";i:16;s:1:\"D\";i:17;s:1:\"C\";i:18;s:1:\"B\";i:19;s:1:\"A\";i:20;s:1:\"B\";i:21;s:1:\"C\";i:22;s:1:\"D\";i:23;s:1:\"C\";i:24;s:1:\"B\";i:25;s:1:\"A\";i:26;s:1:\"B\";i:27;s:1:\"C\";i:28;s:1:\"D\";i:29;s:1:\"C\";i:30;s:1:\"B\";i:31;s:1:\"A\";i:32;s:1:\"B\";i:33;s:1:\"C\";i:34;s:1:\"D\";i:35;s:1:\"C\";i:36;s:1:\"B\";i:37;s:1:\"A\";i:38;s:1:\"B\";i:39;s:1:\"C\";i:40;s:1:\"A\";}','a:0:{}',NULL,'0','40,4,7,16,18,15,17,14,38,39,37,31,6,21,23,26,35,25,19,1,2,12,34,13,3,5,8,9,10,11,20,22,24,27,28,29,30,32,33,36,','B,D,C,A,B,C,A,D,A,C,D,B,C,D,A,B,A,B,D,C,D,A,B,C,B,D,A,C,A,B,D,C,B,A,D,C,C,D,A,B,C,D,A,B,D,C,B,A,B,A,C,D,B,D,A,C,B,D,A,C,A,D,B,C,C,A,D,B,D,A,B,C,B,D,C,A,D,B,A,C,D,C,B,A,B,D,A,C,A,B,D,C,B,A,D,C,C,A,B,D,B,C,A,D,C,A,D,B,C,A,D,B,A,C,D,B,C,A,B,D,C,A,D,B,C,D,B,A,A,D,B,C,C,D,A,B,D,B,A,C,D,C,B,A,D,A,B,C,D,A,B,C,B,C,A,D,C,D,A,B,',NULL,'0');
INSERT INTO `nilai` VALUES ('4','4','2','12','UJICOBA','2023-09-20 16:54:40','2023-09-20 16:54:40',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'10.10.10.100','1',NULL,NULL,NULL,'1','80,79,78,77,76,75,74,73,72,71,70,69,68,67,66,65,64,63,62,61,60,59,58,57,56,55,54,53,52,51,50,49,48,47,46,45,44,43,42,41,','D,B,A,C,B,A,D,C,B,D,A,C,D,C,B,A,B,C,A,D,C,B,D,A,D,B,C,A,A,B,D,C,B,C,A,D,B,A,D,C,C,B,D,A,A,B,D,C,B,A,D,C,A,B,D,C,B,D,C,A,D,C,A,B,A,B,C,D,C,D,B,A,A,D,B,C,C,A,B,D,A,C,B,D,A,B,C,D,A,C,B,D,A,D,B,C,C,A,B,D,A,C,D,B,C,B,A,D,B,C,D,A,B,A,C,D,D,B,A,C,D,B,C,A,A,D,C,B,D,A,B,C,A,C,D,B,C,A,B,D,D,B,C,A,D,A,B,C,B,C,A,D,B,A,C,D,C,B,A,D,',NULL,'0');
INSERT INTO `nilai` VALUES ('5','4','2','11','UJICOBA','2023-09-20 17:01:01','2023-09-20 17:01:01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'10.10.10.100','1',NULL,NULL,NULL,'1','80,44,47,56,58,55,57,54,78,79,77,71,46,61,63,66,75,65,59,41,42,52,74,53,43,45,48,49,50,51,60,62,64,67,68,69,70,72,73,76,','D,A,B,C,C,B,A,D,D,C,A,B,C,A,D,B,B,C,D,A,C,D,A,B,A,D,B,C,C,A,B,D,B,C,D,A,B,C,A,D,D,B,C,A,B,D,C,A,B,C,D,A,C,D,B,A,C,D,A,B,A,B,C,D,C,B,A,D,C,A,B,D,C,B,D,A,A,D,B,C,B,C,A,D,D,C,B,A,C,A,B,D,D,B,A,C,B,A,D,C,D,B,C,A,A,C,D,B,C,D,A,B,D,A,C,B,B,A,C,D,A,D,C,B,D,A,B,C,C,D,B,A,C,B,D,A,A,D,B,C,A,C,B,D,D,C,B,A,A,D,C,B,B,D,A,C,A,D,B,C,',NULL,'0');
INSERT INTO `nilai` VALUES ('6','4','2','1','UJICOBA','2023-09-20 17:19:43','2023-09-20 17:19:43',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'10.10.10.100','1',NULL,NULL,NULL,'1','80,44,58,45,78,56,79,43,54,74,76,77,75,73,69,41,50,52,62,66,70,72,67,63,61,46,47,48,53,59,60,64,65,68,71,57,55,51,49,42,','C,B,A,D,C,B,D,A,C,D,A,B,D,A,C,B,D,A,B,C,D,A,B,C,B,C,D,A,D,C,A,B,C,D,B,A,B,C,A,D,B,C,D,A,A,B,C,D,A,C,B,D,A,B,C,D,B,C,D,A,C,A,D,B,B,C,D,A,C,D,A,B,B,C,D,A,C,D,B,A,C,D,B,A,C,A,B,D,A,C,D,B,A,B,C,D,B,C,D,A,D,B,C,A,B,A,C,D,C,B,D,A,B,C,A,D,B,A,C,D,D,A,B,C,D,C,B,A,A,B,C,D,C,A,B,D,D,A,B,C,C,B,A,D,C,A,D,B,C,A,D,B,B,C,A,D,C,B,A,D,',NULL,'0');
INSERT INTO `nilai` VALUES ('7','4','2','2','UJICOBA','2023-09-20 17:29:56','2023-09-20 17:29:56','2023-09-20 17:32:37','18','22',NULL,'45','45',NULL,'10.10.10.100','1','a:40:{i:41;s:1:\"A\";i:42;s:1:\"B\";i:43;s:1:\"C\";i:44;s:1:\"B\";i:45;s:1:\"C\";i:46;s:1:\"D\";i:47;s:1:\"A\";i:48;s:1:\"C\";i:49;s:1:\"A\";i:50;s:1:\"A\";i:51;s:1:\"C\";i:52;s:1:\"B\";i:53;s:1:\"A\";i:54;s:1:\"C\";i:55;s:1:\"C\";i:56;s:1:\"D\";i:57;s:1:\"C\";i:58;s:1:\"B\";i:59;s:1:\"A\";i:60;s:1:\"B\";i:61;s:1:\"D\";i:62;s:1:\"D\";i:63;s:1:\"C\";i:64;s:1:\"C\";i:65;s:1:\"A\";i:66;s:1:\"B\";i:67;s:1:\"D\";i:68;s:1:\"B\";i:69;s:1:\"A\";i:70;s:1:\"C\";i:71;s:1:\"A\";i:72;s:1:\"A\";i:73;s:1:\"C\";i:74;s:1:\"D\";i:75;s:1:\"C\";i:76;s:1:\"B\";i:77;s:1:\"A\";i:78;s:1:\"B\";i:79;s:1:\"C\";i:80;s:1:\"A\";}','a:0:{}',NULL,'0','43,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,44,41,42,','B,A,D,C,C,B,D,A,C,D,B,A,D,A,C,B,D,A,C,B,D,B,A,C,B,A,D,C,C,D,B,A,C,D,A,B,B,D,A,C,D,C,A,B,B,D,A,C,A,C,D,B,A,C,B,D,C,B,D,A,C,B,A,D,B,C,D,A,C,B,D,A,A,D,C,B,A,C,B,D,A,D,B,C,B,A,D,C,A,C,B,D,D,C,A,B,D,A,C,B,D,C,A,B,A,C,D,B,A,D,C,B,D,B,A,C,C,B,D,A,A,C,D,B,B,C,D,A,B,A,D,C,C,D,B,A,D,A,B,C,A,B,C,D,D,C,A,B,A,D,B,C,A,C,D,B,B,C,D,A,',NULL,'0');

/*---------------------------------------------------------------
  TABLE: `nilai_temp`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `nilai_temp`;
CREATE TABLE `nilai_temp` (
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  `id_ujian` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `kode_ujian` varchar(30) NOT NULL,
  `ujian_mulai` varchar(20) NOT NULL,
  `ujian_berlangsung` varchar(20) DEFAULT NULL,
  `ujian_selesai` varchar(20) DEFAULT NULL,
  `jml_benar` int(10) DEFAULT NULL,
  `jml_salah` int(10) DEFAULT NULL,
  `nilai_esai` varchar(10) DEFAULT NULL,
  `skor` varchar(200) DEFAULT NULL,
  `total` varchar(10) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `ipaddress` varchar(20) DEFAULT NULL,
  `hasil` int(2) NOT NULL,
  `jawaban` text DEFAULT NULL,
  `jawaban_esai` longtext DEFAULT NULL,
  `nilai_esai2` text DEFAULT NULL,
  `online` int(1) NOT NULL DEFAULT 0,
  `id_soal` longtext DEFAULT NULL,
  `id_opsi` longtext DEFAULT NULL,
  `id_esai` text DEFAULT NULL,
  `blok` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_nilai`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
INSERT INTO `nilai_temp` VALUES   ('1','1','1','2','UJICOBA','2023-09-19 12:17:14','2023-09-19 12:21:26',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'192.168.1.10','0',NULL,NULL,NULL,'1','2,9,11,15,17,6,7,8,13,19,20,24,25,28,31,21,23,27,1,10,12,22,26,30,32,29,33,35,3,14,34,36,37,39,16,5,38,18,4,40,','A,B,D,C,B,A,C,D,D,C,B,A,A,B,D,C,D,B,A,C,D,C,B,A,A,D,B,C,A,D,C,B,C,A,B,D,B,D,C,A,B,D,C,A,D,B,A,C,C,D,B,A,A,C,D,B,D,A,B,C,A,D,C,B,B,C,A,D,D,C,B,A,A,B,C,D,A,C,B,D,D,B,A,C,A,B,D,C,D,A,B,C,D,B,C,A,B,D,A,C,B,A,D,C,D,A,C,B,D,B,A,C,C,B,D,A,A,D,C,B,C,D,A,B,A,C,B,D,D,B,A,C,B,C,A,D,B,C,A,D,D,B,A,C,A,C,D,B,B,D,C,A,A,C,B,D,D,A,C,B,',NULL,'0');
INSERT INTO `nilai_temp` VALUES ('4','4','2','12','UJICOBA','2023-09-20 16:54:40','2023-09-20 16:55:15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'10.10.10.100','1',NULL,NULL,NULL,'1','80,79,78,77,76,75,74,73,72,71,70,69,68,67,66,65,64,63,62,61,60,59,58,57,56,55,54,53,52,51,50,49,48,47,46,45,44,43,42,41,','D,B,A,C,B,A,D,C,B,D,A,C,D,C,B,A,B,C,A,D,C,B,D,A,D,B,C,A,A,B,D,C,B,C,A,D,B,A,D,C,C,B,D,A,A,B,D,C,B,A,D,C,A,B,D,C,B,D,C,A,D,C,A,B,A,B,C,D,C,D,B,A,A,D,B,C,C,A,B,D,A,C,B,D,A,B,C,D,A,C,B,D,A,D,B,C,C,A,B,D,A,C,D,B,C,B,A,D,B,C,D,A,B,A,C,D,D,B,A,C,D,B,C,A,A,D,C,B,D,A,B,C,A,C,D,B,C,A,B,D,D,B,C,A,D,A,B,C,B,C,A,D,B,A,C,D,C,B,A,D,',NULL,'0');
INSERT INTO `nilai_temp` VALUES ('5','4','2','11','UJICOBA','2023-09-20 17:01:01','2023-09-20 17:01:53',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'10.10.10.100','1',NULL,NULL,NULL,'1','80,44,47,56,58,55,57,54,78,79,77,71,46,61,63,66,75,65,59,41,42,52,74,53,43,45,48,49,50,51,60,62,64,67,68,69,70,72,73,76,','D,A,B,C,C,B,A,D,D,C,A,B,C,A,D,B,B,C,D,A,C,D,A,B,A,D,B,C,C,A,B,D,B,C,D,A,B,C,A,D,D,B,C,A,B,D,C,A,B,C,D,A,C,D,B,A,C,D,A,B,A,B,C,D,C,B,A,D,C,A,B,D,C,B,D,A,A,D,B,C,B,C,A,D,D,C,B,A,C,A,B,D,D,B,A,C,B,A,D,C,D,B,C,A,A,C,D,B,C,D,A,B,D,A,C,B,B,A,C,D,A,D,C,B,D,A,B,C,C,D,B,A,C,B,D,A,A,D,B,C,A,C,B,D,D,C,B,A,A,D,C,B,B,D,A,C,A,D,B,C,',NULL,'0');
INSERT INTO `nilai_temp` VALUES ('6','4','2','1','UJICOBA','2023-09-20 17:19:43','2023-09-20 17:24:52',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'10.10.10.100','1',NULL,NULL,NULL,'1','80,44,58,45,78,56,79,43,54,74,76,77,75,73,69,41,50,52,62,66,70,72,67,63,61,46,47,48,53,59,60,64,65,68,71,57,55,51,49,42,','C,B,A,D,C,B,D,A,C,D,A,B,D,A,C,B,D,A,B,C,D,A,B,C,B,C,D,A,D,C,A,B,C,D,B,A,B,C,A,D,B,C,D,A,A,B,C,D,A,C,B,D,A,B,C,D,B,C,D,A,C,A,D,B,B,C,D,A,C,D,A,B,B,C,D,A,C,D,B,A,C,D,B,A,C,A,B,D,A,C,D,B,A,B,C,D,B,C,D,A,D,B,C,A,B,A,C,D,C,B,D,A,B,C,A,D,B,A,C,D,D,A,B,C,D,C,B,A,A,B,C,D,C,A,B,D,D,A,B,C,C,B,A,D,C,A,D,B,C,A,D,B,B,C,A,D,C,B,A,D,',NULL,'0');

/*---------------------------------------------------------------
  TABLE: `pengawas`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `pengawas`;
CREATE TABLE `pengawas` (
  `id_pengawas` int(11) NOT NULL AUTO_INCREMENT,
  `nip` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jabatan` varchar(50) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `no_ktp` varchar(16) DEFAULT NULL,
  `tempat_lahir` varchar(30) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(10) DEFAULT NULL,
  `agama` varchar(10) DEFAULT NULL,
  `no_hp` varchar(13) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `alamat_jalan` varchar(255) DEFAULT NULL,
  `rt_rw` varchar(8) DEFAULT NULL,
  `dusun` varchar(50) DEFAULT NULL,
  `kelurahan` varchar(50) DEFAULT NULL,
  `kecamatan` varchar(30) DEFAULT NULL,
  `kode_pos` int(6) DEFAULT NULL,
  `nuptk` varchar(20) DEFAULT NULL,
  `bidang_studi` varchar(50) DEFAULT NULL,
  `jenis_ptk` varchar(50) DEFAULT NULL,
  `tgs_tambahan` varchar(50) DEFAULT NULL,
  `status_pegawai` varchar(50) DEFAULT NULL,
  `status_aktif` varchar(20) DEFAULT NULL,
  `status_nikah` varchar(20) DEFAULT NULL,
  `sumber_gaji` varchar(30) DEFAULT NULL,
  `ahli_lab` varchar(10) DEFAULT NULL,
  `nama_ibu` varchar(40) DEFAULT NULL,
  `nama_suami` varchar(50) DEFAULT NULL,
  `nik_suami` varchar(20) DEFAULT NULL,
  `pekerjaan` varchar(20) DEFAULT NULL,
  `tmt` date DEFAULT NULL,
  `keahlian_isyarat` varchar(10) DEFAULT NULL,
  `kewarganegaraan` varchar(10) DEFAULT NULL,
  `npwp` varchar(16) DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `ptk_id` varchar(50) DEFAULT NULL,
  `password2` text DEFAULT NULL,
  `ruang` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_pengawas`)
) ENGINE=InnoDB AUTO_INCREMENT=296 DEFAULT CHARSET=utf8;
INSERT INTO `pengawas` VALUES   ('1','-','administrator','','admin','$2y$10$OKWG8PU9d8J8dCy4dnCvRewDrDmfUt930JYYCizT/mxY1EVoDPp8G','admin','','','0000-00-00','','','','','','','','','','0','','','','','','','','','','','','','','0000-00-00','','','','',NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('273','-','PENGAWAS 1',NULL,'pajar','$2y$10$QFJSTIMfE0kYtDOm/k3z7enCO2HhNHxVu1m12Kclc.rLF177OisYq','pengawas',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ONLINE');
INSERT INTO `pengawas` VALUES ('285','-','PEMBINA MTK 1','KSN','chandy','$2y$10$/Qyep4TKzgbx0M6Lu./ct.pie1omAm/iI91TK0k.BHHHASnJ7vibm','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('295','-','PEMBINA IPA 1','KSN','arke','$2y$10$TMYlTkuZvlMZ..Gagn9KHupK493c/r3Ag64oWeyVeg2tuRBmFqZxW','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*---------------------------------------------------------------
  TABLE: `pengumuman`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `pengumuman`;
CREATE TABLE `pengumuman` (
  `id_pengumuman` int(5) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `user` int(3) NOT NULL,
  `text` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_pengumuman`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
INSERT INTO `pengumuman` VALUES   ('9','internal','CARA AKSES CBT','1','<p>Untuk ujian sekolah dilakukan menggunakan Hp Android, PC, Laptop. Aplikasi ujian diakses dengan browser Google Chrome dengan mengetikkan alamat http://10.10.10.10/ksn</p>','2023-09-19 10:33:56');
INSERT INTO `pengumuman` VALUES ('10','eksternal','SELAMAT MENGERJAKAN SEMOGA SUKSES','1','<p>Selamat datang di Aplikasi CBT KSN Kecamatan Pakisaji Tahun 2024. Semoga sukses .....</p>','2023-09-19 10:35:52');

/*---------------------------------------------------------------
  TABLE: `pk`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `pk`;
CREATE TABLE `pk` (
  `id_pk` varchar(10) NOT NULL,
  `program_keahlian` varchar(50) NOT NULL,
  `jurusan_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `pk` VALUES   ('IPA','IPA',NULL);
INSERT INTO `pk` VALUES ('MTK','MATEMATIKA',NULL);

/*---------------------------------------------------------------
  TABLE: `referensi_jurusan`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `referensi_jurusan`;
CREATE TABLE `referensi_jurusan` (
  `jurusan_id` varchar(10) NOT NULL,
  `nama_jurusan` varchar(100) DEFAULT NULL,
  `untuk_sma` int(1) NOT NULL,
  `untuk_smk` int(1) NOT NULL,
  `jenjang_pendidikan_id` int(1) DEFAULT NULL,
  PRIMARY KEY (`jurusan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*---------------------------------------------------------------
  TABLE: `ruang`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `ruang`;
CREATE TABLE `ruang` (
  `kode_ruang` varchar(10) NOT NULL,
  `keterangan` varchar(30) NOT NULL,
  PRIMARY KEY (`kode_ruang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `ruang` VALUES   ('R1','R1');
INSERT INTO `ruang` VALUES ('R2','R2');
INSERT INTO `ruang` VALUES ('R3','R3');
INSERT INTO `ruang` VALUES ('R4','R4');

/*---------------------------------------------------------------
  TABLE: `savsoft_options`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `savsoft_options`;
CREATE TABLE `savsoft_options` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `qid` int(11) NOT NULL,
  `q_option` text NOT NULL,
  `q_option_match` varchar(1000) DEFAULT NULL,
  `score` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*---------------------------------------------------------------
  TABLE: `savsoft_qbank`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `savsoft_qbank`;
CREATE TABLE `savsoft_qbank` (
  `qid` int(11) NOT NULL AUTO_INCREMENT,
  `question_type` varchar(100) NOT NULL DEFAULT 'Multiple Choice Single Answer',
  `question` text NOT NULL,
  `description` text NOT NULL,
  `cid` int(11) NOT NULL,
  `lid` int(11) NOT NULL,
  `no_time_served` int(11) NOT NULL DEFAULT 0,
  `no_time_corrected` int(11) NOT NULL DEFAULT 0,
  `no_time_incorrected` int(11) NOT NULL DEFAULT 0,
  `no_time_unattempted` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*---------------------------------------------------------------
  TABLE: `semester`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `semester`;
CREATE TABLE `semester` (
  `semester_id` varchar(5) NOT NULL,
  `tahun_ajaran_id` varchar(4) NOT NULL,
  `nama_semester` varchar(50) NOT NULL,
  `semester` int(1) NOT NULL,
  `periode_aktif` enum('1','0') NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_selesai` date NOT NULL,
  PRIMARY KEY (`semester_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*---------------------------------------------------------------
  TABLE: `server`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `server`;
CREATE TABLE `server` (
  `kode_server` varchar(20) NOT NULL,
  `nama_server` varchar(30) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `server` VALUES   ('ONLINE','ONLINE','aktif');
INSERT INTO `server` VALUES ('ONLINE','ONLINE','aktif');
INSERT INTO `server` VALUES ('UJICOBA','UJI COBA','aktif');

/*---------------------------------------------------------------
  TABLE: `sesi`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `sesi`;
CREATE TABLE `sesi` (
  `kode_sesi` varchar(10) NOT NULL,
  `nama_sesi` varchar(30) NOT NULL,
  PRIMARY KEY (`kode_sesi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `sesi` VALUES   ('1','1');

/*---------------------------------------------------------------
  TABLE: `session`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `session`;
CREATE TABLE `session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_time` varchar(10) NOT NULL,
  `session_hash` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*---------------------------------------------------------------
  TABLE: `setting`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting` (
  `id_setting` int(11) NOT NULL AUTO_INCREMENT,
  `aplikasi` varchar(100) DEFAULT NULL,
  `kode_sekolah` varchar(10) DEFAULT NULL,
  `sekolah` varchar(50) DEFAULT NULL,
  `jenjang` varchar(5) DEFAULT NULL,
  `kepsek` varchar(50) DEFAULT NULL,
  `nip` varchar(30) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `kecamatan` varchar(50) DEFAULT NULL,
  `kota` varchar(30) DEFAULT NULL,
  `telp` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `web` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `header` text DEFAULT NULL,
  `header_kartu` text DEFAULT NULL,
  `nama_ujian` text DEFAULT NULL,
  `versi` varchar(10) DEFAULT NULL,
  `ip_server` varchar(100) DEFAULT NULL,
  `waktu` varchar(50) DEFAULT NULL,
  `server` varchar(50) DEFAULT NULL,
  `id_server` varchar(50) DEFAULT NULL,
  `url_host` varchar(50) DEFAULT NULL,
  `token_api` varchar(50) DEFAULT NULL,
  `sekolah_id` varchar(50) DEFAULT NULL,
  `npsn` varchar(10) DEFAULT NULL,
  `db_versi` varchar(10) DEFAULT NULL,
  `bc` varchar(50) NOT NULL,
  PRIMARY KEY (`id_setting`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
INSERT INTO `setting` VALUES   ('1','KSN PAKISAJI','KSN','KSN PAKISAJI','SD','ERNA KUSRINI, S.Pd.','197009151996052001','Pakisaji','Pakisaji                                   ','Kab. Malang','','','','','dist/img/logo8.png','','KARTU PESERTA CBT\naaaaaa','UJI COBA','2.9','http://10.10.10.10/ksn','Asia/Jakarta','pusat','SR01','http://pts.smkhsagung.sch.id/','HO3FIrBYcFUMp0','8cce47df-aae7-4274-83cb-5af3093eab56','69787351','2.9.4','dist/img/bc.jpg');

/*---------------------------------------------------------------
  TABLE: `sinkron`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `sinkron`;
CREATE TABLE `sinkron` (
  `nama_data` varchar(50) NOT NULL,
  `data` varchar(50) DEFAULT NULL,
  `jumlah` varchar(50) DEFAULT NULL,
  `tanggal` varchar(50) DEFAULT NULL,
  `status_sinkron` int(11) DEFAULT NULL,
  PRIMARY KEY (`nama_data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `sinkron` VALUES   ('DATA1','siswa','','','0');
INSERT INTO `sinkron` VALUES ('DATA2','bank soal','','','0');
INSERT INTO `sinkron` VALUES ('DATA3','soal','','','0');
INSERT INTO `sinkron` VALUES ('DATA4','jadwal','','','0');

/*---------------------------------------------------------------
  TABLE: `siswa`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `siswa`;
CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL AUTO_INCREMENT,
  `id_kelas` varchar(11) DEFAULT NULL,
  `idpk` varchar(10) DEFAULT NULL,
  `nis` varchar(30) DEFAULT NULL,
  `no_peserta` varchar(30) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `level` varchar(5) DEFAULT NULL,
  `ruang` varchar(10) DEFAULT NULL,
  `sesi` int(2) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `server` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(30) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `agama` varchar(10) DEFAULT NULL,
  `kebutuhan_khusus` varchar(20) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `rt` varchar(5) DEFAULT NULL,
  `rw` varchar(5) DEFAULT NULL,
  `dusun` varchar(100) DEFAULT NULL,
  `kelurahan` varchar(100) DEFAULT NULL,
  `kecamatan` varchar(100) DEFAULT NULL,
  `kode_pos` int(10) DEFAULT NULL,
  `jenis_tinggal` varchar(100) DEFAULT NULL,
  `alat_transportasi` varchar(100) DEFAULT NULL,
  `hp` varchar(15) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `skhun` int(11) DEFAULT NULL,
  `no_kps` varchar(50) DEFAULT NULL,
  `nama_ayah` varchar(150) DEFAULT NULL,
  `tahun_lahir_ayah` int(4) DEFAULT NULL,
  `pendidikan_ayah` varchar(50) DEFAULT NULL,
  `pekerjaan_ayah` varchar(100) DEFAULT NULL,
  `penghasilan_ayah` varchar(100) DEFAULT NULL,
  `nohp_ayah` varchar(15) DEFAULT NULL,
  `nama_ibu` varchar(150) DEFAULT NULL,
  `tahun_lahir_ibu` int(4) DEFAULT NULL,
  `pendidikan_ibu` varchar(50) DEFAULT NULL,
  `pekerjaan_ibu` varchar(100) DEFAULT NULL,
  `penghasilan_ibu` varchar(100) DEFAULT NULL,
  `nohp_ibu` int(15) DEFAULT NULL,
  `nama_wali` varchar(150) DEFAULT NULL,
  `tahun_lahir_wali` int(4) DEFAULT NULL,
  `pendidikan_wali` varchar(50) DEFAULT NULL,
  `pekerjaan_wali` varchar(100) DEFAULT NULL,
  `penghasilan_wali` varchar(50) DEFAULT NULL,
  `angkatan` int(5) DEFAULT NULL,
  `nisn` varchar(50) DEFAULT NULL,
  `peserta_didik_id` varchar(50) DEFAULT NULL,
  `semester_id` varchar(10) DEFAULT NULL,
  `rombongan_belajar_id` varchar(50) DEFAULT NULL,
  `status` varchar(10) DEFAULT 'aktif',
  `online` int(1) DEFAULT 0,
  PRIMARY KEY (`id_siswa`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;
INSERT INTO `siswa` VALUES   ('1','MATEMATIKA','semua','1','1','USER 1','SISWA','R1','1','user1','user1','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('2','MATEMATIKA','semua','2','2','USER 2','SISWA','R1','1','user2','user2','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('3','MATEMATIKA','semua','3','3','USER 3','SISWA','R1','1','user3','user3','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('4','MATEMATIKA','semua','4','4','USER 4','SISWA','R1','1','user4','user4','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('5','MATEMATIKA','semua','5','5','USER 5','SISWA','R1','1','user5','user5','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('6','MATEMATIKA','semua','6','6','USER 6','SISWA','R1','1','user6','user6','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('7','MATEMATIKA','semua','7','7','USER 7','SISWA','R1','1','user7','user7','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('8','MATEMATIKA','semua','8','8','USER 8','SISWA','R1','1','user8','user8','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('9','MATEMATIKA','semua','9','9','USER 9','SISWA','R1','1','user9','user9','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('10','MATEMATIKA','semua','10','10','USER 10','SISWA','R1','1','user10','user10','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','1');
INSERT INTO `siswa` VALUES ('11','MATEMATIKA','semua','11','11','USER 11','SISWA','R1','1','user11','user11','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('12','MATEMATIKA','semua','12','12','USER 12','SISWA','R1','1','user12','user12','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('13','MATEMATIKA','semua','13','13','USER 13','SISWA','R1','1','user13','user13','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('14','MATEMATIKA','semua','14','14','USER 14','SISWA','R1','1','user14','user14','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('15','MATEMATIKA','semua','15','15','USER 15','SISWA','R1','1','user15','user15','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('16','MATEMATIKA','semua','16','16','USER 16','SISWA','R2','1','user16','user16','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('17','MATEMATIKA','semua','17','17','USER 17','SISWA','R2','1','user17','user17','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'17',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('18','MATEMATIKA','semua','18','18','USER 18','SISWA','R2','1','user18','user18','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('19','MATEMATIKA','semua','19','19','USER 19','SISWA','R2','1','user19','user19','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('20','MATEMATIKA','semua','20','20','USER 20','SISWA','R2','1','user20','user20','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('21','MATEMATIKA','semua','21','21','USER 21','SISWA','R2','1','user21','user21','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('22','MATEMATIKA','semua','22','22','USER 22','SISWA','R2','1','user22','user22','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('23','MATEMATIKA','semua','23','23','USER 23','SISWA','R2','1','user23','user23','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('24','MATEMATIKA','semua','24','24','USER 24','SISWA','R2','1','user24','user24','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('25','MATEMATIKA','semua','25','25','USER 25','SISWA','R2','1','user25','user25','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('26','MATEMATIKA','semua','26','26','USER 26','SISWA','R2','1','user26','user26','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'26',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('27','MATEMATIKA','semua','27','27','USER 27','SISWA','R2','1','user27','user27','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('28','MATEMATIKA','semua','28','28','USER 28','SISWA','R2','1','user28','user28','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('29','MATEMATIKA','semua','29','29','USER 29','SISWA','R2','1','user29','user29','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('30','MATEMATIKA','semua','30','30','USER 30','SISWA','R2','1','user30','user30','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'30',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('31','IPA','semua','31','31','USER 31','SISWA','R3','1','user31','user31','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('32','IPA','semua','32','32','USER 32','SISWA','R3','1','user32','user32','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'32',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('33','IPA','semua','33','33','USER 33','SISWA','R3','1','user33','user33','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'33',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('34','IPA','semua','34','34','USER 34','SISWA','R3','1','user34','user34','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'34',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('35','IPA','semua','35','35','USER 35','SISWA','R3','1','user35','user35','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'35',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('36','IPA','semua','36','36','USER 36','SISWA','R3','1','user36','user36','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'36',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('37','IPA','semua','37','37','USER 37','SISWA','R3','1','user37','user37','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'37',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('38','IPA','semua','38','38','USER 38','SISWA','R3','1','user38','user38','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'38',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('39','IPA','semua','39','39','USER 39','SISWA','R3','1','user39','user39','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'39',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('40','IPA','semua','40','40','USER 40','SISWA','R3','1','user40','user40','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'40',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('41','IPA','semua','41','41','USER 41','SISWA','R3','1','user41','user41','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'41',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('42','IPA','semua','42','42','USER 42','SISWA','R3','1','user42','user42','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'42',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('43','IPA','semua','43','43','USER 43','SISWA','R3','1','user43','user43','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'43',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('44','IPA','semua','44','44','USER 44','SISWA','R3','1','user44','user44','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'44',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('45','IPA','semua','45','45','USER 45','SISWA','R3','1','user45','user45','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'45',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('46','IPA','semua','46','46','USER 46','SISWA','R4','1','user46','user46','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'46',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('47','IPA','semua','47','47','USER 47','SISWA','R4','1','user47','user47','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'47',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('48','IPA','semua','48','48','USER 48','SISWA','R4','1','user48','user48','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'48',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('49','IPA','semua','49','49','USER 49','SISWA','R4','1','user49','user49','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'49',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('50','IPA','semua','50','50','USER 50','SISWA','R4','1','user50','user50','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'50',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('51','IPA','semua','51','51','USER 51','SISWA','R4','1','user51','user51','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'51',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('52','IPA','semua','52','52','USER 52','SISWA','R4','1','user52','user52','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'52',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('53','IPA','semua','53','53','USER 53','SISWA','R4','1','user53','user53','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'53',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('54','IPA','semua','54','54','USER 54','SISWA','R4','1','user54','user54','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'54',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('55','IPA','semua','55','55','USER 55','SISWA','R4','1','user55','user55','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'55',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('56','IPA','semua','56','56','USER 56','SISWA','R4','1','user56','user56','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'56',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('57','IPA','semua','57','57','USER 57','SISWA','R4','1','user57','user57','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'57',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('58','IPA','semua','58','58','USER 58','SISWA','R4','1','user58','user58','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('59','IPA','semua','59','59','USER 59','SISWA','R4','1','user59','user59','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'59',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');
INSERT INTO `siswa` VALUES ('60','IPA','semua','60','60','USER 60','SISWA','R4','1','user60','user60','','UJICOBA',NULL,'',NULL,'ISLAM',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'60',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aktif','0');

/*---------------------------------------------------------------
  TABLE: `soal`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `soal`;
CREATE TABLE `soal` (
  `id_soal` int(11) NOT NULL AUTO_INCREMENT,
  `id_mapel` int(11) NOT NULL,
  `nomor` int(5) DEFAULT NULL,
  `soal` longtext DEFAULT NULL,
  `jenis` int(1) DEFAULT NULL,
  `pilA` longtext DEFAULT NULL,
  `pilB` longtext DEFAULT NULL,
  `pilC` longtext DEFAULT NULL,
  `pilD` longtext DEFAULT NULL,
  `pilE` longtext DEFAULT NULL,
  `jawaban` varchar(1) DEFAULT NULL,
  `file` mediumtext DEFAULT NULL,
  `file1` mediumtext DEFAULT NULL,
  `fileA` mediumtext DEFAULT NULL,
  `fileB` mediumtext DEFAULT NULL,
  `fileC` mediumtext DEFAULT NULL,
  `fileD` mediumtext DEFAULT NULL,
  `fileE` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_soal`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;
INSERT INTO `soal` VALUES   ('41','2','1','1 + 1 =','1','2','1','3','4','','A','file1.jpg','file2.jpg','fileA.jpg','fileB.jpg','fileC.jpg','fileD.jpg','');
INSERT INTO `soal` VALUES ('42','2','2','2 + 1 =','1','2','3','1','4','','B','file1.jpg','','','fileB.jpg','','fileD.jpg','');
INSERT INTO `soal` VALUES ('43','2','3','3 + 1 =','1','1','2','4','3','','C','','file2.jpg','fileA.jpg','','fileC.jpg','','');
INSERT INTO `soal` VALUES ('44','2','4','<p>4 + 1 =</p>','1','<p>1</p>','<p>2</p>','<p>3</p>','<p>5</p>','','D','1_4_1.jpg','','1_4_A.jpg','','','','');
INSERT INTO `soal` VALUES ('45','2','5','5 + 1 =','1','1','2','6','3','','A','','','','','','','');
INSERT INTO `soal` VALUES ('46','2','6','6 + 1 =','1','3','7','2','1','','B','','','','','','','');
INSERT INTO `soal` VALUES ('47','2','7','7 + 1 =','1','8','1','2','3','','C','','','','','','','');
INSERT INTO `soal` VALUES ('48','2','8','8 + 1 =','1','1','9','2','3','','D','','','','','','','');
INSERT INTO `soal` VALUES ('49','2','9','9 + 1 =','1','1','2','10','3','','A','','','','','','','');
INSERT INTO `soal` VALUES ('50','2','10','10 + 1 =','1','1','2','3','11','','B','','','','','','','');
INSERT INTO `soal` VALUES ('51','2','11','11 + 1 =','1','1','2','12','3','','C','','','','','','','');
INSERT INTO `soal` VALUES ('52','2','12','12 + 1 =','1','2','13','3','1','','D','','','','','','','');
INSERT INTO `soal` VALUES ('53','2','13','13 + 1 =','1','14','5','2','3','','A','','','','','','','');
INSERT INTO `soal` VALUES ('54','2','14','14 + 1 =','1','5','15','4','7','','B','','','','','','','');
INSERT INTO `soal` VALUES ('55','2','15','15 + 1 =','1','7','6','16','4','','C','','','','','','','');
INSERT INTO `soal` VALUES ('56','2','16','16 + 1 =','1','8','9','5','17','','D','','','','','','','');
INSERT INTO `soal` VALUES ('57','2','17','17 + 1 =','1','6','4','18','4','','A','','','','','','','');
INSERT INTO `soal` VALUES ('58','2','18','18 + 1 =','1','8','19','8','7','','B','','','','','','','');
INSERT INTO `soal` VALUES ('59','2','19','19 + 1 =','1','20','3','2','1','','C','','','','','','','');
INSERT INTO `soal` VALUES ('60','2','20','20 + 1 =','1','1','21','2','3','','D','','','','','','','');
INSERT INTO `soal` VALUES ('61','2','21','21 + 1 =','1','3','2','22','1','','A','','','','','','','');
INSERT INTO `soal` VALUES ('62','2','22','22 + 1 =','1','1','2','3','23','','B','','','','','','','');
INSERT INTO `soal` VALUES ('63','2','23','23 + 1 =','1','3','2','24','1','','C','','','','','','','');
INSERT INTO `soal` VALUES ('64','2','24','24 + 1 =','1','1','25','2','3','','D','','','','','','','');
INSERT INTO `soal` VALUES ('65','2','25','25 + 1 =','1','26','3','2','1','','A','','','','','','','');
INSERT INTO `soal` VALUES ('66','2','26','26 + 1 =','1','3','27','3','4','','B','','','','','','','');
INSERT INTO `soal` VALUES ('67','2','27','27 + 1 =','1','1','2','28','4','','C','','','','','','','');
INSERT INTO `soal` VALUES ('68','2','28','28 + 1 =','1','1','3','2','29','','D','','','','','','','');
INSERT INTO `soal` VALUES ('69','2','29','29 + 1 =','1','1','3','30','2','','A','','','','','','','');
INSERT INTO `soal` VALUES ('70','2','30','30 + 1 =','1','1','31','3','2','','B','','','','','','','');
INSERT INTO `soal` VALUES ('71','2','31','31 + 1 =','1','32','1','2','4','','C','','','','','','','');
INSERT INTO `soal` VALUES ('72','2','32','32 + 1 =','1','1','33','3','4','','D','','','','','','','');
INSERT INTO `soal` VALUES ('73','2','33','33 + 1 =','1','1','2','34','4','','A','','','','','','','');
INSERT INTO `soal` VALUES ('74','2','34','34 + 1 =','1','2','3','4','35','','B','','','','','','','');
INSERT INTO `soal` VALUES ('75','2','35','35 + 1 =','1','3','2','36','4','','C','','','','','','','');
INSERT INTO `soal` VALUES ('76','2','36','36 + 1 =','1','1','37','4','5','','D','','','','','','','');
INSERT INTO `soal` VALUES ('77','2','37','37 + 1 =','1','38','5','4','2','','A','','','','','','','');
INSERT INTO `soal` VALUES ('78','2','38','38 + 1 =','1','5','39','6','4','','B','','','','','','','');
INSERT INTO `soal` VALUES ('79','2','39','39 + 1 =','1','5','6','40','3','','C','','','','','','','');
INSERT INTO `soal` VALUES ('80','2','40','<p>40 + 1 =</p>','1','<p>41</p>','<p>45</p>','<p>43</p>','<p>46</p>','','A','','','','','','','');
INSERT INTO `soal` VALUES ('81','3','1','1 + 1 =','1','2','1','3','4','','A','file1.jpg','file2.jpg','fileA.jpg','fileB.jpg','fileC.jpg','fileD.jpg','');
INSERT INTO `soal` VALUES ('82','3','2','2 + 1 =','1','2','3','1','4','','B','file1.jpg','','','fileB.jpg','','fileD.jpg','');
INSERT INTO `soal` VALUES ('83','3','3','3 + 1 =','1','1','2','4','3','','C','','file2.jpg','fileA.jpg','','fileC.jpg','','');
INSERT INTO `soal` VALUES ('84','3','4','<p>4 + 1 =</p>','1','<p>1</p>','<p>2</p>','<p>3</p>','<p>5</p>','','D','1_4_1.jpg','','1_4_A.jpg','','','','');
INSERT INTO `soal` VALUES ('85','3','5','5 + 1 =','1','1','2','6','3','','A','','','','','','','');
INSERT INTO `soal` VALUES ('86','3','6','6 + 1 =','1','3','7','2','1','','B','','','','','','','');
INSERT INTO `soal` VALUES ('87','3','7','7 + 1 =','1','8','1','2','3','','C','','','','','','','');
INSERT INTO `soal` VALUES ('88','3','8','8 + 1 =','1','1','9','2','3','','D','','','','','','','');
INSERT INTO `soal` VALUES ('89','3','9','9 + 1 =','1','1','2','10','3','','A','','','','','','','');
INSERT INTO `soal` VALUES ('90','3','10','10 + 1 =','1','1','2','3','11','','B','','','','','','','');
INSERT INTO `soal` VALUES ('91','3','11','11 + 1 =','1','1','2','12','3','','C','','','','','','','');
INSERT INTO `soal` VALUES ('92','3','12','12 + 1 =','1','2','13','3','1','','D','','','','','','','');
INSERT INTO `soal` VALUES ('93','3','13','13 + 1 =','1','14','5','2','3','','A','','','','','','','');
INSERT INTO `soal` VALUES ('94','3','14','14 + 1 =','1','5','15','4','7','','B','','','','','','','');
INSERT INTO `soal` VALUES ('95','3','15','15 + 1 =','1','7','6','16','4','','C','','','','','','','');
INSERT INTO `soal` VALUES ('96','3','16','16 + 1 =','1','8','9','5','17','','D','','','','','','','');
INSERT INTO `soal` VALUES ('97','3','17','17 + 1 =','1','6','4','18','4','','A','','','','','','','');
INSERT INTO `soal` VALUES ('98','3','18','18 + 1 =','1','8','19','8','7','','B','','','','','','','');
INSERT INTO `soal` VALUES ('99','3','19','19 + 1 =','1','20','3','2','1','','C','','','','','','','');
INSERT INTO `soal` VALUES ('100','3','20','20 + 1 =','1','1','21','2','3','','D','','','','','','','');
INSERT INTO `soal` VALUES ('101','3','21','21 + 1 =','1','3','2','22','1','','A','','','','','','','');
INSERT INTO `soal` VALUES ('102','3','22','22 + 1 =','1','1','2','3','23','','B','','','','','','','');
INSERT INTO `soal` VALUES ('103','3','23','23 + 1 =','1','3','2','24','1','','C','','','','','','','');
INSERT INTO `soal` VALUES ('104','3','24','24 + 1 =','1','1','25','2','3','','D','','','','','','','');
INSERT INTO `soal` VALUES ('105','3','25','25 + 1 =','1','26','3','2','1','','A','','','','','','','');
INSERT INTO `soal` VALUES ('106','3','26','26 + 1 =','1','3','27','3','4','','B','','','','','','','');
INSERT INTO `soal` VALUES ('107','3','27','27 + 1 =','1','1','2','28','4','','C','','','','','','','');
INSERT INTO `soal` VALUES ('108','3','28','28 + 1 =','1','1','3','2','29','','D','','','','','','','');
INSERT INTO `soal` VALUES ('109','3','29','29 + 1 =','1','1','3','30','2','','A','','','','','','','');
INSERT INTO `soal` VALUES ('110','3','30','30 + 1 =','1','1','31','3','2','','B','','','','','','','');
INSERT INTO `soal` VALUES ('111','3','31','31 + 1 =','1','32','1','2','4','','C','','','','','','','');
INSERT INTO `soal` VALUES ('112','3','32','32 + 1 =','1','1','33','3','4','','D','','','','','','','');
INSERT INTO `soal` VALUES ('113','3','33','33 + 1 =','1','1','2','34','4','','A','','','','','','','');
INSERT INTO `soal` VALUES ('114','3','34','34 + 1 =','1','2','3','4','35','','B','','','','','','','');
INSERT INTO `soal` VALUES ('115','3','35','35 + 1 =','1','3','2','36','4','','C','','','','','','','');
INSERT INTO `soal` VALUES ('116','3','36','36 + 1 =','1','1','37','4','5','','D','','','','','','','');
INSERT INTO `soal` VALUES ('117','3','37','37 + 1 =','1','38','5','4','2','','A','','','','','','','');
INSERT INTO `soal` VALUES ('118','3','38','38 + 1 =','1','5','39','6','4','','B','','','','','','','');
INSERT INTO `soal` VALUES ('119','3','39','39 + 1 =','1','5','6','40','3','','C','','','','','','','');
INSERT INTO `soal` VALUES ('120','3','40','<p>40 + 1 =</p>','1','<p>41</p>','<p>45</p>','<p>43</p>','<p>46</p>','','A','','','','','','','');

/*---------------------------------------------------------------
  TABLE: `token`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `id_token` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(6) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `masa_berlaku` time NOT NULL,
  PRIMARY KEY (`id_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
INSERT INTO `token` VALUES   ('1','UUFZTR','2020-12-19 18:58:33','00:15:00');

/*---------------------------------------------------------------
  TABLE: `tugas`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `tugas`;
CREATE TABLE `tugas` (
  `id_tugas` int(255) NOT NULL AUTO_INCREMENT,
  `id_guru` int(255) NOT NULL DEFAULT 0,
  `kelas` text NOT NULL,
  `mapel` varchar(255) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `tugas` longtext NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `tgl_mulai` datetime NOT NULL,
  `tgl_selesai` datetime NOT NULL,
  `tgl` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_tugas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*---------------------------------------------------------------
  TABLE: `ujian`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `ujian`;
CREATE TABLE `ujian` (
  `id_ujian` int(5) NOT NULL AUTO_INCREMENT,
  `kode_nama` varchar(255) DEFAULT '0',
  `id_pk` varchar(255) NOT NULL,
  `id_guru` int(5) NOT NULL,
  `id_mapel` int(5) NOT NULL,
  `kode_ujian` varchar(30) DEFAULT NULL,
  `nama` varchar(100) NOT NULL,
  `jml_soal` int(5) NOT NULL,
  `jml_esai` int(5) NOT NULL,
  `bobot_pg` int(5) NOT NULL,
  `opsi` int(1) NOT NULL,
  `bobot_esai` int(5) NOT NULL,
  `tampil_pg` int(5) NOT NULL,
  `tampil_esai` int(5) NOT NULL,
  `lama_ujian` int(5) NOT NULL,
  `tgl_ujian` datetime NOT NULL,
  `tgl_selesai` datetime NOT NULL,
  `waktu_ujian` time DEFAULT NULL,
  `selesai_ujian` time DEFAULT NULL,
  `level` varchar(5) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `sesi` varchar(1) DEFAULT NULL,
  `acak` int(1) NOT NULL,
  `token` int(1) NOT NULL,
  `status` int(1) DEFAULT NULL,
  `hasil` int(1) DEFAULT NULL,
  `kkm` varchar(128) DEFAULT NULL,
  `ulang` int(2) DEFAULT NULL,
  `soal_agama` varchar(50) DEFAULT NULL,
  `reset` int(1) DEFAULT NULL,
  `ulang_kkm` int(1) NOT NULL,
  `btn_selesai` int(11) NOT NULL,
  `pelanggaran` int(5) NOT NULL,
  PRIMARY KEY (`id_ujian`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
INSERT INTO `ujian` VALUES   ('3','IPA','a:1:{i:0;s:5:\"semua\";}','1','3','UJICOBA','IPA','40','0','100','4','0','40','0','120','2023-09-20 15:00:00','2023-09-20 23:00:00','15:00:00',NULL,'SISWA','a:1:{i:0;s:3:\"IPA\";}','1','1','0','1','1','0','1','','1','0','1','0');
INSERT INTO `ujian` VALUES ('4','MTK','a:1:{i:0;s:5:\"semua\";}','1','2','UJICOBA','MTK','40','0','100','4','0','40','0','120','2023-09-20 15:00:00','2023-09-20 23:00:00','15:00:00',NULL,'SISWA','a:1:{i:0;s:10:\"MATEMATIKA\";}','1','1','0','1','1','0','1','','1','0','1','0');
