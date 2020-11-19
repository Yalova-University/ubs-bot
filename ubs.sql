-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 19, 2020 at 02:42 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ubs`
--

-- --------------------------------------------------------

--
-- Table structure for table `dersler`
--

DROP TABLE IF EXISTS `dersler`;
CREATE TABLE IF NOT EXISTS `dersler` (
  `dersler_id` int(11) NOT NULL AUTO_INCREMENT,
  `dersler_icerik` text NOT NULL,
  PRIMARY KEY (`dersler_id`)
) ENGINE=MyISAM AUTO_INCREMENT=287 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dersler`
--

INSERT INTO `dersler` (`dersler_id`, `dersler_icerik`) VALUES
(284, '06.10.2020'),
(285, '06.10.2020'),
(286, '06.10.2020'),
(283, 'Saat Ders Kodu Ders Adi Oturum Adi Islemler\r\n19:00 - 19:50 YBP104 Internet Programciligi - I INTERNET PROGRAMCILIGI\r\nDers Baslamadi\r\n21:00 - 21:20 YBP104 Internet Programciligi - I INTERNET PROGRAMCILIGI\r\nDers Baslamadi'),
(280, '12.11.2020'),
(281, 'Saat Ders Kodu Ders Adi Oturum Adi Islemler\r\n17:00 - 18:20 MAT101 Matematik 6. Hafta - Oran Oranti\r\nKayitli Dersi Izle'),
(282, '13.11.2020'),
(278, '11.11.2020'),
(279, 'Saat Ders Kodu Ders Adi Oturum Adi Islemler\r\n17:00 - 18:45 YBP251 Bilgisayar Yardimiyla Tasarim Modelleme ACAD 6. jafta\r\nDers Bitti'),
(276, '10.11.2020'),
(277, 'Saat Ders Kodu Ders Adi Oturum Adi Islemler\r\n20:00 - 20:50 YBP107 Bilgisayar Donanimi Donanim\r\nKayitli Dersi Izle'),
(272, '05.11.2020'),
(273, 'Saat Ders Kodu Ders Adi Oturum Adi Islemler\r\n17:00 - 18:20 MAT101 Matematik 5. Hafta - Köklü Sayilar\r\nKayitli Dersi Izle'),
(274, '06.11.2020'),
(275, 'Saat Ders Kodu Ders Adi Oturum Adi Islemler\r\n19:00 - 19:50 YBP104 Internet Programciligi - I INTERNET PROGRAMCILIGI\r\nKayitli Dersi Izle\r\n21:00 - 21:20 YBP104 Internet Programciligi - I INTERNET PROGRAMCILIGI\r\nKayitli Dersi Izle'),
(271, 'Saat Ders Kodu Ders Adi Oturum Adi Islemler\r\n20:00 - 20:50 YBP107 Bilgisayar Donanimi DONANIM\r\nKayitli Dersi Izle'),
(266, '27.10.2020'),
(267, 'Saat Ders Kodu Ders Adi Oturum Adi Islemler\r\n19:00 - 19:20 YBP101 Programlama Temelleri ProgTem4.haft\r\nKayitli Dersi Izle\r\n20:00 - 20:50 YBP107 Bilgisayar Donanimi Donanim\r\nKayitli Dersi Izle'),
(268, '30.10.2020'),
(269, 'Saat Ders Kodu Ders Adi Oturum Adi Islemler\r\n19:00 - 19:50 YBP104 Internet Programciligi - I Internet Programciligi\r\nKayitli Dersi Izle\r\n21:00 - 21:20 YBP104 Internet Programciligi - I Internet Programciligi\r\nKayitli Dersi Izle'),
(270, '03.11.2020'),
(263, 'Saat Ders Kodu Ders Adi Oturum Adi Islemler\r\n17:00 - 18:20 MAT101 Matematik 3. Hafta - Üslü Sayilar\r\nKayitli Dersi Izle'),
(265, 'Saat Ders Kodu Ders Adi Oturum Adi Islemler\r\n19:00 - 19:50 YBP104 Internet Programciligi - I Internet Programciligi\r\nKayitli Dersi Izle\r\n21:00 - 21:20 YBP104 Internet Programciligi - I Internet Programciligi\r\nKayitli Dersi Izle'),
(264, '23.10.2020'),
(262, '22.10.2020'),
(258, '20.10.2020'),
(259, 'Saat Ders Kodu Ders Adi Oturum Adi Islemler\r\n19:00 - 19:45 YBP101 Programlama Temelleri ProgTem3. hafta\r\nKayitli Dersi Izle\r\n20:00 - 20:50 YBP107 Bilgisayar Donanimi Donanim\r\nKayitli Dersi Izle'),
(260, '21.10.2020'),
(261, 'Saat Ders Kodu Ders Adi Oturum Adi Islemler\r\n13:00 - 13:50 YBP251 Bilgisayar Yardimiyla Tasarim Modelleme 3. Hafta ACAD Temel Çizim Komutlari\r\nDers Baslamadi\r\n17:00 - 17:50 YBP251 Bilgisayar Yardimiyla Tasarim Modelleme 3. Hafta ACAD Temel Çizim Komutlari\r\nDers Baslamadi'),
(256, '16.10.2020'),
(257, 'Saat Ders Kodu Ders Adi Oturum Adi Islemler\r\n19:00 - 19:50 YBP104 Internet Programciligi - I Internet Programciligi_IÖ\r\nKayitli Dersi Izle\r\n21:00 - 21:20 YBP104 Internet Programciligi - I Internet Programciligi_IÖ\r\nKayitli Dersi Izle'),
(252, '14.10.2020'),
(253, 'Saat Ders Kodu Ders Adi Oturum Adi Islemler\r\n13:00 - 13:50 YBP251 Bilgisayar Yardimiyla Tasarim Modelleme 2 Hafta\r\nDers Baslamadi\r\n17:00 - 18:20 YBP251 Bilgisayar Yardimiyla Tasarim Modelleme 2 Hafta\r\nKayitli Dersi Izle'),
(254, '15.10.2020'),
(255, 'Saat Ders Kodu Ders Adi Oturum Adi Islemler\r\n17:00 - 18:20 MAT101 Matematik 2. Hafta - Temel Kavramlar\r\nKayitli Dersi Izle'),
(244, '06.10.2020'),
(245, 'Saat Ders Kodu Ders Adi Oturum Adi Islemler\r\n19:00 - 19:20 YBP101 Programlama Temelleri Programlama Temelleri Iö\r\nKayitli Dersi Izle\r\n20:00 - 20:50 YBP107 Bilgisayar Donanimi DONANIM\r\nKayitli Dersi Izle'),
(250, '13.10.2020'),
(251, 'Saat Ders Kodu Ders Adi Oturum Adi Islemler\r\n19:00 - 19:20 YBP101 Programlama Temelleri prog tem-2ö-2.hafta\r\nKayitli Dersi Izle\r\n20:00 - 20:50 YBP107 Bilgisayar Donanimi Donanim_IÖ\r\nKayitli Dersi Izle'),
(249, 'Saat Ders Kodu Ders Adi Oturum Adi Islemler\r\n13:00 - 13:50 YBP104 Internet Programciligi - I INTERNET PROGRAMCILIGI\r\nKayitli Dersi Izle'),
(248, '09.10.2020'),
(247, 'Saat Ders Kodu Ders Adi Oturum Adi Islemler\r\n17:00 - 18:20 MAT101 Matematik 1. Hafta - Kümeler\r\nDers Baslamadi'),
(246, '08.10.2020');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
