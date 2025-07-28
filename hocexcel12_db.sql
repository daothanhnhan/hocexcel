-- phpMyAdmin SQL Dump
-- version 4.7.8
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th8 12, 2019 lúc 07:38 AM
-- Phiên bản máy phục vụ: 5.5.41-MariaDB
-- Phiên bản PHP: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hocexcel12_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_password` text COLLATE utf8_unicode_ci,
  `admin_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_note` text COLLATE utf8_unicode_ci,
  `admin_state` int(11) DEFAULT '1',
  `admin_role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_login`, `admin_password`, `admin_phone`, `admin_email`, `admin_note`, `admin_state`, `admin_role`) VALUES
(1, 'Admin', 'admin', '$2y$10$NX3hWJ4UvsO3Flwd/uUKUu/PUF8y7j2Se2HB.YPcxq3.DSKIPymVu', '1', '', '', 1, 1),
(2, 'hpt', 'hpt', '$2y$10$x9RWBVgCWSb9fkQGoh7ESOhYV1SnY5Fn5uwKUS9WfdUV1O4wvIe4a', '0973457689', 'ngobkanh@gmail.com', 'đây là tài khoản test', 1, 2),
(3, 'Trương Quang Tuấn', 'tuan', '$2y$10$sYR1CeUP5x0cw2Rwc1N25uglpBtX520qXyolMIggKy.zEt6XUinRu', '01669', 'tuan@gmail.com', 'test', 1, 2),
(5, 'cms', 'cms', '$2y$10$FtjsErf.CxMYTl3zt3xOpuvWvPOAHfdCxo/9apf.tw8Aky/udFN6i', '135778', '', '', 1, 1),
(6, 'Thu Hiền', 'thuhien2105aof@gmail.com', '$2y$10$kz0TDLIoSOaTgeUwLD.qku1tAG9/znSTOd0804JRFJ/.6PdJNndJG', '', '', '', 1, 1),
(7, 'Excel 123', 'khoahoc.hocexcel123@gmail.com', '$2y$10$9WF18.FnZvu4KN9HtJ4jV.CeGZr8vlaTTvkNw9.wgFObEbRIO9Y7y', '', '', '', 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_role`
--

CREATE TABLE `admin_role` (
  `admin_role_id` int(11) NOT NULL,
  `admin_role_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_role`
--

INSERT INTO `admin_role` (`admin_role_id`, `admin_role_name`) VALUES
(1, 'Admin'),
(2, 'Mod');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id_cart` int(11) NOT NULL,
  `id_account` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `total_cart` int(11) DEFAULT NULL,
  `date_cart` date DEFAULT NULL,
  `id_orderState` int(11) DEFAULT NULL,
  `note_cart` text COLLATE utf8_unicode_ci,
  `name_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_buyer` text COLLATE utf8_unicode_ci,
  `note_buyer` text COLLATE utf8_unicode_ci,
  `code_active` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id_cart`, `id_account`, `session_id`, `total_price`, `total_cart`, `date_cart`, `id_orderState`, `note_cart`, `name_buyer`, `mail_buyer`, `phone_buyer`, `address_buyer`, `note_buyer`, `code_active`) VALUES
(45, NULL, 'mkrnfu62crnut73tj9ip88k4c0', 4560000, NULL, '0000-00-00', NULL, NULL, 'hang', 'ngockhanh260614@gmail.com', '0973378669', 'Thanh Xuân, Thanh Xuân', 'đơn hàng hằng pt', ''),
(46, NULL, 'q6hilk5otma71lnmfk4jfe3bo0', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', 'test', ''),
(47, NULL, '8rg8qp2tib6bhq40siemsl0au1', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '', ''),
(48, NULL, 'p29v6fieekj8qc6r9iei8rkr84', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '', ''),
(49, NULL, 'gibro9jjp7o8r4dhlulet7t2c7', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '', ''),
(50, NULL, 'skgfhmeppmr97bion8qlhv2f24', 7600000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '', ''),
(51, NULL, '14sbco3nbkh6tss6mibu4c63i2', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '', ''),
(52, NULL, 'rdk00s074i1i4seat51nh109d6', 7600000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '', ''),
(53, NULL, 'ibcpu4cam64hh6jvvlqde89v90', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '', ''),
(54, NULL, 'r2hcu630iilbqufhd80udq4eh0', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '', ''),
(55, NULL, 'krsem1sgk8k9smbs1uinikks42', 7600000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '', ''),
(56, NULL, 'gjdbs5hhkns2vjb0juaf6g8i84', 135000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '', ''),
(57, NULL, 'q4asrlk395bqes71q3m1dj7a53', 135000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '', ''),
(58, NULL, 'mfuj32kovfsj87sum11433so15', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '', ''),
(59, NULL, 'o82tantv1gh498mq2giekk0mj1', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '', ''),
(60, NULL, 'vv3bvs960u0efu33mksbikfr02', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '', ''),
(61, NULL, '77v49he85i8nuuet5p2vt9g7r0', 7600000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '', ''),
(62, NULL, 'qs835th55ruep5q2f34fdimdg6', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '', ''),
(63, NULL, '0v3amtlih28cip0bskvi8tr2t7', 7600000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '', ''),
(64, NULL, 's34tnbg59l4psbpbc2jg4ru734', 135000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '', ''),
(65, NULL, 'jna4k52dg50ce0e2euknmpsc53', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '', ''),
(66, NULL, '1mrapf9122qb0n9gd32j94l6f5', 6000, NULL, '0000-00-00', NULL, NULL, 'adf', 'viethung@gmail.com', '01672523165', 'ha nội', 'ghi chú aaa', ''),
(67, NULL, 'sl6a5d5957d6n37tptrtp29mt4', 2000, NULL, '0000-00-00', NULL, NULL, 'bczcv', 'viethung@gmail.com', 'aasdfas', 'asfas', 'fdasdfasdf', ''),
(68, NULL, 'ape83laqntnptihbcmk5g0li26', 6000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '29-3', ''),
(69, NULL, 'lc7opealpf3l1a0m2utp3nr4g7', 2937600, NULL, '0000-00-00', NULL, NULL, 'adsfasdf', 'viethung@gmail.com', '1672523165', 'ĐH Mỏ - Địa chất', 'fasdfasdf', ''),
(74, NULL, '09tq876h8p0r5qp4gquahjef65', 119000, NULL, '0000-00-00', 4, '', 'Nguyễn Hiền', 'thuhien2105aof@gmail.com', '0966178559', 'Hải Dương', '', ''),
(75, NULL, 'bnfh4bls0hpirqqrk64alhamb6', 125100, NULL, '0000-00-00', 4, '', 'Việt Hưng', 'viethung95cute@gmail.com', '1672523165', 'ĐH Mỏ - Địa chất', 'test', ''),
(78, NULL, 's42mo8nldo5ajjuek0a91mdfo5', 119000, NULL, '0000-00-00', 4, NULL, 'Việt Hưng', 'viethung95cute@gmail.com', '1672523165', 'ĐH Mỏ - Địa chất', 'test', 'QldNIxghVV'),
(79, NULL, 'b6sfao8sbb8lemj135vgv6lp60', 395000, NULL, '0000-00-00', 4, '', 'Nguyễn Thị Thu Hiền', 'thuhien2105aof@gmail.com', '0966178559', '', '', 'E7x4wf1pwd'),
(80, NULL, 'ik2ldelds6mme5553k76386gl0', 395000, NULL, '0000-00-00', 4, NULL, 'Duyên', 'content.gbvn@gmail.com', '0972460215', '', '', 'hQe2CKCMnE'),
(81, NULL, '0m465l8mb6uj4chqjuabqnm641', 119000, NULL, '0000-00-00', NULL, NULL, 'Duyên', 'content.gbvn@gmail.com', '0972460215', '', '', 'Zif8Y0WQ1u'),
(82, NULL, 'mvl9qm3voqr4r33lo1tkv4v6s1', 350000, NULL, '0000-00-00', NULL, NULL, 'Châu Thanh Hưng', 'Chauthanhhung@gmail.com', '0979101079', '159/2 Nguyễn Văn Cừ, Buôn Ma Thuột, Đăk Lăk', '', 'OxPFKC4s8p'),
(83, NULL, 'luuigiofai9iuoan4npi84m044', 119000, NULL, '0000-00-00', NULL, NULL, 'Nicholas', 'nic06209@iencm.com', '0987859658', '15 David stem, orland,  NJ', '', 'Umj8ARadD2'),
(84, NULL, 's6ke7ld6jam12m7leqh6lm5107', 395000, NULL, '0000-00-00', NULL, NULL, 'Trần Tuyết', 'hpfeed1102@gmail.com', '0966178559', 'Tứ kỳ hải dương', '', 'laBYezDkfX'),
(85, NULL, '9dcup8o97dhu832kl4gqupt3f2', 119000, NULL, '0000-00-00', 4, NULL, 'Nguyễn Thị Thu Hiền', 'thuhien2105aof@gmail.com', '0966178559', 'Hải dương', '', 'Cy8HSgsBWG'),
(86, NULL, '9b6m8n543k8f7kqq63pa2i93s1', 395000, NULL, '0000-00-00', NULL, NULL, 'Hiểu Minh', 'htfeed1102@gmail.com', '0966178559', 'Hải Dương', '', 'pmwRdfVqyO'),
(87, NULL, '6joolcoh1bce053jtfepmn2360', 350000, NULL, '0000-00-00', NULL, NULL, 'Hiểu Minh', 'htfeed1102@gmail.com', '0966178559', 'Hải Dương', '', 'hmIe65IKxc'),
(88, NULL, 'ksiqfderg5mn4h8hibr1otcml1', 119000, NULL, '0000-00-00', 4, '', 'Trần Minh', 'htfeed1102@gmail.com', '0966178559', 'Hải Dương', '', 'cjXbrWitUL'),
(89, NULL, '86l34ogdbmpltpcuju174mccq0', 395000, NULL, '0000-00-00', 6, '', 'Trần Minh', 'htfeed1102@gmail.com', '0966178559', 'Hải Dương', '', 'Y2NqmudPEk'),
(90, NULL, '4cn9994pnf3mmtk370hljitqc3', 395000, NULL, '0000-00-00', 6, '', 'Trần Minh', 'htfeed1102@gmail.com', '0966178559', 'Hải Dương', '', 'HEUDYAdTf2'),
(91, NULL, 'dbeimp41p6j2bsueqh5mospd45', 395000, NULL, '0000-00-00', 6, '', 'Trần Minh', 'htfeed1102@gmail.com', '0966178559', 'Hải Dương', '', 'E31qrR4YG8'),
(92, NULL, 'dbeimp41p6j2bsueqh5mospd45', 395000, NULL, '0000-00-00', 6, '', 'Trần Minh', 'htfeed1102@gmail.com', '0966178559', 'Hải Dương', '', '7QlhWmhYjY'),
(93, NULL, '9st2jddcug7e7pkea9s90rifm0', 395000, NULL, '0000-00-00', 6, '', 'Trần Minh', 'htfeed1102@gmail.com', '0966178559', 'Hải Dương', '', '75iiXlyLkl'),
(94, NULL, '4asbksk78kvjr1c0p16lfqg8v2', 395000, NULL, '0000-00-00', 6, '', 'Trần Minh', 'htfeed1102@gmail.com', '0966178559', 'Hải Dương', '', 'fhqSSyljyh'),
(95, NULL, 'jnjedop01hdi66rl7a4scq4vt1', 395000, NULL, '0000-00-00', 6, '', 'Trần Minh', 'htfeed1102@gmail.com', '0966178559', 'hải dương', '', 'XQl6tmRfDR'),
(96, NULL, 'k5n23oisc27tf0lagl9no73ef2', 125100, NULL, '0000-00-00', 2, '', 'Tuan Truong Quang', 'songmaituoitho@yahoo.com.vn', '', 'Hà Nội', 'test master', 'nM5soWcIyW'),
(97, NULL, '6n0uojolkdd2hmari13ag9f4a2', 395000, NULL, '0000-00-00', 1, '', 'Trần Minh', 'htfeed1102@gmail.com', '0966178559', 'Hải Dương', '', 'RUzERmbYMa'),
(98, NULL, 'bhoftm9kgbsf52kcchjdbm4l86', 395000, NULL, '0000-00-00', 2, '', 'Trần Tuyết', 'hpfeed1102@gmail.com', '0966178559', 'Hải Dương', '', 'un5G9qYSVP'),
(99, NULL, 't0m9farpmu35lm0lclncltjjd1', 395000, NULL, '0000-00-00', 4, '', 'Trần Minh', 'htfeed1102@gmail.com', '0966178559', 'Hải Dương', '', 'XXR0r2CBFq'),
(100, NULL, 's808vf7nmg8sjq6mhf8h89f6t1', 395000, NULL, '2018-11-29', 4, '', 'Puka', 'htfeed1102@gmail.com', '0966178559', 'Hải Dương', '', 'uJrhekpip2'),
(101, NULL, '189q5vue7gqetkk9qtkcsgp2i3', 395000, NULL, '2018-11-30', 4, '', 'Trần Minh', 'htfeed1102@gmail.com', '0966178559', 'Hải Cương', '', 'f6XPuJuBXY'),
(102, NULL, 'i457lnk99potqle4a1ddq3bvm7', 395000, NULL, '2018-12-01', 4, '', 'Trần Minh', 'htfeed1102@gmail.com', '0966178559', 'Hải Dương', '', 'd4MHQbIBTV'),
(103, NULL, 'kl68hclvc5f99jn6si6tdfv0b7', 395000, NULL, '2018-12-04', 4, '', 'Trần Minh', 'htfeed1102@gmail.com', '0966178559', 'hf', '', '9EZk2kKYBj'),
(104, NULL, 'd5srssp0f4ihu16uhjci2f3ib3', 119000, NULL, '2018-12-08', 4, '', 'Trương Quang Tuấn', 'truongquangtuan3110@zoho.com', '0369268608', '', '', 'DDUg1M6TsH'),
(105, NULL, '1lk6mm80u988uuefmlioqcaia4', 395000, NULL, '2018-12-08', 4, '', 'Thành Trung', 'Dampuk35@gmail.com', '0966178559', 'Hà Nội', '', 'KfPyc1SXjH'),
(106, NULL, 'ibv0o3p2r2qqtsglo36pi2mvd6', 395000, NULL, '2018-12-08', 4, '', 'Trần Minh', 'htfeed1102@gmail.com', '0966178559', 'Bình dương', '', 'uYCQ8bDhON'),
(107, NULL, 'robddp85b5aq5q63d5e7ec4122', 395000, NULL, '2018-12-08', 4, '', 'Bùi Minh Hiền', 'buihiengh123@gmail.com', '0989217356', 'Hà Giang', '', '0q2gzS9UGr'),
(108, NULL, 'l5d07qfmgmktdv3mg5s7iuudp5', 999000, NULL, '2018-12-18', NULL, NULL, 'Hiệp', 'zoluvcuc@gmail.com', '0981562308', '1153 Láng', '', 'Vfsb9YymGp'),
(109, NULL, 'bh9o9d3imt65v2456i2tk35lg1', 119000, NULL, '2018-12-22', 4, '', 'a', 'a@a.com', '01234564321', 'haha', '', '4mjEy5GKOG'),
(110, NULL, '6dfmfq55u27smgqevrsbq876n0', 719999.1, NULL, '2018-12-23', 4, '', 'Nguyễn Thị Thu Hiền', 'thuhien2105aof@gmail.com', '0966178559', '', '', 'xRUTVwOic4'),
(111, NULL, 'hs2l5rbt3lblf2sjdpist5co80', 314999.1, NULL, '2019-05-26', 4, '', 'Tài Thị Kim Liên', 'Taikimlien99@gmail.com', '0961557052', '', '', 'WjAbqaVTqB'),
(112, NULL, 'ii2ocrplbce7qi23vvl8pq9ta4', 314999.1, NULL, '2019-05-26', 4, '', 'Phạm Thanh Nguyệt', 'Phamthanhnguyet6496@gmail', '0961557052', '', '', 'QmToGekufP'),
(113, NULL, 'ss73e7h87nehdu8rabn4vi8df3', 314999.1, NULL, '2019-05-26', 4, '', 'Huỳnh Thị Thu Hằng', 'huynhthithuhang23051999@gmail.com', '0961557052', '', '', 'bH07iKJton'),
(114, NULL, '5q3dka4g8r4ab1v48dg0l5bbt0', 314999.1, NULL, '2019-05-26', 4, '', 'Triệu Khánh Linh', 'Trieulinh209@gmail.com', '0961557052', '', '', '0zuBHAv40u'),
(115, NULL, 'mgejhv28hgc5f8v24r1ds7moa7', 314999.1, NULL, '2019-05-26', 4, '', 'Lê Hồng Vi', 'lehongvipharma@gmail.com', '123456789', '', '', 'Ta0cEWNw5z'),
(116, NULL, 'ico74pll5kpo3uf985cga8lvl4', 314999.1, NULL, '2019-05-26', 4, '', 'Hoàng Hiệp', 'Kimcommander1005@gmail.com', '12345678', '', '', 'CCDLLdwUB3'),
(117, NULL, 'ta1hpc74hcdv78sh57fjfos681', 314999.1, NULL, '2019-05-26', 4, '', 'Hoàng Ngô', 'Phanhoangdo2020bplaw@gmail.com', '12345678', '', '', 'k6hhRF8sqc'),
(118, NULL, 'c5503frs7vs2k51q9mdmtt1l01', 314999.1, NULL, '2019-05-26', 4, '', 'Trần Hiếu', 'thieu7790@gmail.com', '12345678', '', '', '26HQLX4Dnh'),
(119, NULL, '41iuudpmsl9pl2tna169qn3s50', 314999.1, NULL, '2019-05-26', 4, '', 'Lê Thanh Tuấn', 'tuanlatui98@gmail.com', '12345678', '', '', 'sRvAcnJ0FA'),
(120, NULL, 'u88knumhrnpegeh3lln4382562', 314999.1, NULL, '2019-05-26', 4, '', 'Nguyên Vũ', 'Vunguyenhoang007@gmail.com', '12345678', '', '', 'gN5MsNT8za'),
(121, NULL, 'cfrqqukjcg0s6unn504vq6ahg0', 314999.1, NULL, '2019-05-26', 4, '', 'Thu Hằng', 'hangthuhang97@gmail.com', '12345678', '', '', 'Ab9TMhH1Dr'),
(122, NULL, 'e91gcjbrjik0kfljeervn2bsf3', 0, NULL, '2019-05-26', 4, '', 'Văn Nam', 'Haruki.hnue.1994@gmail.com', '12345678', '', '', '34XSUXWDIH'),
(123, NULL, 'idf4ea4k6mk58alkqv3rk9to67', 0, NULL, '2019-05-26', 4, '', 'Quách Minh Tuấn', 'qmtuan282@gmail.com', '12345678', '', '', 'dJpG5ue5aR'),
(124, NULL, 'ir741mpdqp1bjg2ids64rl9m02', 0, NULL, '2019-05-26', 4, '', 'Đặng Thị Thùy Dung', 'Dangthithuydung120896@gmail.com', '12345678', '', '', 'bcg47A6iDG'),
(125, NULL, 'p743ep2e3odih4775aejidk6d3', 0, NULL, '2019-05-26', 4, '', 'Vân Nguyễn', 'vuinguyen.neu1997@gmail.com', '12345678', '', '', '5oFSnF623P'),
(126, NULL, 'p2gj74qv4acjisamc7jnu78g34', 0, NULL, '2019-05-26', 4, '', 'Nguyễn Thị Hồng Huệ', 'honghuebka59@gmail.com', '123456', '', '', 'zbhy2jiLmU'),
(127, NULL, 'gjmhe5dr60pcr5rf1dojlgk231', 0, NULL, '2019-05-26', 4, '', 'Thu Vũ', 'Thulvct@gmail.com', '123456', '', '', 'JXX0pjkPmX'),
(128, NULL, 'om6cosj7idlnmsfnauugvng7a5', 0, NULL, '2019-05-26', 4, '', 'Vy Hoàng', 'hoangvy14120@gmail.com', '123456', '', '', 'V6Xf9Fvnq7'),
(129, NULL, 'b32776mi0fs8enrll17bkd7n41', 0, NULL, '2019-05-26', 4, '', 'Anna Nguyễn', 'Hongem94@gmail.com', '123456', '', '', 'YO7pRefh3K'),
(130, NULL, 'ukphkt81lliuk6c61lrt82hq46', 0, NULL, '2019-05-26', 2, '', 'Linh Thảo', 'linhthaobui94qt@gmail.com', '123456', '', '', 'nf2EkKf6Mo'),
(131, NULL, 'eu87a70o20n2a233qi0qdad2a2', 0, NULL, '2019-05-26', NULL, NULL, 'Hồ Thị Hoa', 'hothihoa2510@gmail.com', '123456', '', '', 'upf1Lw50ED'),
(132, NULL, 'eu87a70o20n2a233qi0qdad2a2', 0, NULL, '2019-05-26', 4, '', 'Hồ Thị Hoa', 'hothihoa2510@gmail.com', '123456', '', '', 'hIeC2jtcYo'),
(133, NULL, 'qn213h8dbbh8cv5e4sdh4f1qo7', 0, NULL, '2019-05-26', NULL, NULL, 'Lê Thanh Tuấn', 'tuanlatui98@gmail.com', '12345678', '', '', 'E3cNbyAP6p'),
(134, NULL, 'qn213h8dbbh8cv5e4sdh4f1qo7', 0, NULL, '2019-05-26', NULL, NULL, 'Lê Thanh Tuấn', 'tuanlatui98@gmail.com', '12345678', '', '', '9VOATA0NiY'),
(135, NULL, 'hnap5202i1dfs1h5qavrc6j6p1', 0, NULL, '2019-05-26', 4, '', 'Sam Sam', 'tuyetqtvp@gmail.com', '123456', '', '', 'AtxfEesR98'),
(136, NULL, 'hfu7pnklnbco2jlbe0nnn2j1a2', 0, NULL, '2019-05-26', NULL, NULL, 'Lê Thanh Tuấn', 'tuanlatui98@gmail.com', '12345678', '', '', 'FKglpNWTct'),
(137, NULL, 'it87tojbmvqjru6b0ae9c1thf4', 0, NULL, '2019-05-26', 4, '', 'Đông Đông', 'duydongyudo@gmail.com', '123456789', '', '', 'OwJ5zefXlN'),
(138, NULL, 'qlflg46ngnsj72d9fvrrgqt0g5', 0, NULL, '2019-05-26', 4, '', 'Trà My', 'httramy20126@gmail.com', '12345678', '', '', 'VzgIGbMEBH'),
(139, NULL, 'npkuin8hs1h47tusi35i693ec4', 0, NULL, '2019-05-26', 4, '', 'Lê Yến My', 'izymy104@gmail.com', '12345678', '', '', 'ZvKhBa3ukn'),
(140, NULL, '8h33lha7crjplfmcjg0if11uq0', 0, NULL, '2019-05-26', 4, '', 'Nguyễn Duy Linh', 'Linh.ndhaugiang@gmail.com', '12345678', '', '', 'UKAZPyQB6x'),
(141, NULL, 'dg1d7qgmrevf7859q8q6d65ps2', 0, NULL, '2019-05-26', 4, '', 'Lê Thị Ngoan', 'lethingoan1998@gmail.com', '1234567', '', '', 'xpvCmey2Ge'),
(142, NULL, 'otjvf176uk1a0h21bmq77r35o1', 0, NULL, '2019-05-26', 4, '', 'Thanh Mẹo', 'mr.thanhwarmboy@gmail.com', 'mr.thanhwarmboy@gmail.com', '', '', 'EJXBL6fZQr'),
(143, NULL, 'clp848ajb3d5mv9t8qj7asu244', 0, NULL, '2019-05-26', 4, '', 'Như Như', 'Nhubella77@gmail.com', '12345678', '', '', 'RiZWROpyo4'),
(144, NULL, 'nojbb7e6h64ilpj0h7nodiq871', 0, NULL, '2019-05-26', 4, '', 'Kim Hai', 'Lethikimhai0802@gmail.com', '122346', '', '', 'JxUcX43Nn8'),
(145, NULL, 'jir8tvrq8pvt9374edi7bh5dt3', 0, NULL, '2019-05-26', 4, '', 'Thu Hương', 'vuthithuhuong03112002.star@gmail.com', '123456', '', '', '458LkuhJIk'),
(146, NULL, 'k6h9q5i8m3upr853a14ctjcbb6', 0, NULL, '2019-05-26', 4, '', 'Hoa Vinh', 'dinhctrla@gmail.com', '312345', '', '', '6NwdtWPrsx'),
(147, NULL, 'j6gbm6pm58oatnh4japfkiiq97', 0, NULL, '2019-05-26', 4, '', 'Nguyễn Văn Trịnh', 'vantrinh194@gmail.com', '12345678', '', '', 'Ua6sKMmE46'),
(148, NULL, 'kfkmk55k6sboqqtbf8hgf9shc7', 0, NULL, '2019-05-26', 4, '', 'Trần Hữu Nghĩa', 'Tranhuunghia1997bg@gmail.com', '12345678', '', '', '46YLbqLtuQ'),
(149, NULL, 'f83gqfcib2qtbshe55lb922g24', 0, NULL, '2019-05-26', 4, '', 'Ngọc Hoàn Phan', 'Nguyenthihoan28061999@gmail.com', '12345678', '', '', 'IiG0PaKACX'),
(150, NULL, 'uga3de4576d91o0jbu3j9e6nj1', 0, NULL, '2019-05-26', 4, '', 'Việt Hải', 'ninhviethai1999@gmail.com', '12345678', '', '', 'Fo3Slass0R'),
(151, NULL, '2j2v6cv4kmafpei1d4knm0se55', 0, NULL, '2019-05-26', 4, '', 'Thư Auguste', 'Augustethu@gmail.com', '12345678', '', '', 'UwAI7BYJVj'),
(152, NULL, '779sr7llrg3o5it2jg474u6qr3', 0, NULL, '2019-05-26', 4, '', 'Nguyễn Tấn Đạt', 'nguyentandat.2k.yds@gmail.com', '2345678', '', '', 'a4aqSSVmDX'),
(153, NULL, '0ofmvl9jl5oult0n4826ek19l1', 0, NULL, '2019-05-26', 4, '', 'Trong Nguye', 'Ngdtrong1998@gmail.com', '1234564', '', '', '8w0Cgm3Pju'),
(154, NULL, '9b8ccslaeenakce7mhqm3ifoq1', 0, NULL, '2019-05-26', 4, '', 'Vinh Le', 'vinhhul0298@gmail.com', '12345678', '', '', 'u9Gd228tQQ'),
(155, NULL, '6ch6lmqu066guae4pcg7g230u6', 0, NULL, '2019-05-26', 4, '', 'Phan Trí Nhân', 'boyka9865@gmail.com', 'boyka9865@gmail.com', '', '', '8cSvyqfy2J'),
(156, NULL, '4meqe2vlbqc5htni2kcvn14603', 0, NULL, '2019-05-26', 4, '', 'NT Hạnh', 'hanhvithanhvit16@gmail.com', '12345678', '', '', 'MzByvNCCpM'),
(157, NULL, '6vo8rg5s4thjeluqo001e90me7', 0, NULL, '2019-05-26', 4, '', 'Mochi', 'tuananh13298@gmail.com', '12345678', '', '', '8O2pjKdisj'),
(158, NULL, 'ef4cgp155aeprbt38f61lebpb1', 0, NULL, '2019-05-26', NULL, NULL, 'Nguyễn Thị Hạnh', 'hanhvithanhvit16@gmail.com', '0368574452', 'Sơn Tây', '', 'CK40K51G0I'),
(159, NULL, 't8t6hq076spk1lj3pr8k2gvpr7', 0, NULL, '2019-05-26', 4, '', 'Kim Oanh', 'oanhbinh28@gmail.com', '123', '', '', '8EIhxX4knQ'),
(160, NULL, '6ifv2nd02ihvdofr4hkre0c292', 0, NULL, '2019-05-26', 4, '', 'Bình Lê', 'lethibinh2004199@gmail.com', '123', '', '', 'zl7rXA5aHy'),
(161, NULL, 'r3f503bm4vcgep1ei5gmpvs7d3', 0, NULL, '2019-05-26', 4, '', 'Chung Anh Hoang', 'chunganhht@gmail.com', '1234578', '', '', 'Bgxo1TCV4r'),
(162, NULL, '3pc9b61t57ekbfcifuspca4ug5', 0, NULL, '2019-05-26', 4, '', 'Nguyễn Phong Phú', 'phuphuphu261296@gmail.com', '12345678', '', '', 'UFBYYcotoa'),
(163, NULL, '6kg8v2vip48skrgolmrabn5s43', 0, NULL, '2019-05-26', 4, '', 'Hào Lâm', 'haolamftn95@gmail.com', '12345678', '', '', 'orGZVY4672'),
(164, NULL, 'ondek8j13p5bpdenbedd6p4ad3', 0, NULL, '2019-05-26', 4, '', 'Hoi Luong', 'luongtamhoibd@gmail.com', '12345678', '', '', 'CsVDAXYiqY'),
(165, NULL, 'mt2ln6h4dq1lhtdq2gifvvanv3', 0, NULL, '2019-05-26', 4, '', 'My Xu', 'mymyanh898@gmail.com', '123456789', '', '', 'X7gvSSo78f'),
(166, NULL, 'j44at3bevgfqfr33rp61fjl1e1', 0, NULL, '2019-05-26', 4, '', 'Duy Toàn', 'Nguyenduytoan245@gmail.com', '12345678', '', '', 'VQff69gSZq'),
(167, NULL, 'h451n7b4f491o5scn0hpffo8e0', 0, NULL, '2019-05-26', 4, '', 'Lê Thiện Tính', 'thientinh8843@gmail.com', '12345678', '', '', '43ID7PVta8'),
(168, NULL, 'okthg5593hejs66sn0stn1lrg2', 0, NULL, '2019-05-26', 4, '', 'Huyền Trang', 'Nguyenthihuyentrang1795@gmail.com', '123456789', '', '', '3F4XRXMwUQ'),
(169, NULL, 'str9tflpcisuth65pi6j639m83', 0, NULL, '2019-05-26', 4, '', 'Vũ Khắc Đoàn', 'doanvu93@gmail.com', '123', '', '', '9AC0aNhUh5'),
(170, NULL, 'gotvmb60nm2r0bui3rmgf955b0', 0, NULL, '2019-05-26', 4, '', 'Bùi Kim Hà', 'buikimha1997@gmail.com', '12345678', '', '', 'llhoqbyilk'),
(171, NULL, '1453dedp0ov80e89cf7d48cfh4', 0, NULL, '2019-05-26', 4, '', 'Minh Lê', 'Minhle11233@gmail.com', '12345', '', '', 'YCUsmqMaPZ'),
(172, NULL, 'lfogbt07pvdgekuq6lsfibkfc1', 0, NULL, '2019-05-26', NULL, NULL, 'Lê công minh ', 'minhle11233@gmail.com', '+84911034526', 'Bao loc lam dong', '', 'RiLPRkfV1E'),
(173, NULL, 'grsk4m07q0tc5ktmc1d2ffjkn0', 0, NULL, '2019-05-26', 4, '', 'Nguyễn Thị Hạnh', 'Nguyenthihanh.tp2016@gmail.com', '12345678', '', '', 'LyuzZqRnsD'),
(174, NULL, 'pfpg3pvrt1euqc5g9fk0hkjfi7', 0, NULL, '2019-05-26', 4, '', 'Đặng Huyền', 'huyenlinhchi2019@gmail.com', '123456', '', '', 'LFhvv3rsDx'),
(175, NULL, 'afflpoqvibancklho2uth6f1p1', 0, NULL, '2019-05-26', 4, '', 'Kim Tùng Vũ', 'Kimtung447@gmail.com', '12345', '', '', '47KNw9K9Pl'),
(176, NULL, '4gh2g016hr3gn8udvd2or7kmt1', 0, NULL, '2019-05-26', 4, '', 'Nguyễn Phương', 'phuongnguyendl96@gmail.com', '12345678', '', '', 'zcOYCsQ0ld'),
(177, NULL, 'c789qgf95js1hhl3j1cpj9dsr0', 0, NULL, '2019-05-26', 4, '', 'Kim Cúc', 'nguyenthikimcuc96@gmail.com', '12345', '', '', 'RWYbKcFbUX'),
(178, NULL, 'el5ka80lflh9peuk36legs1433', 0, NULL, '2019-05-26', NULL, NULL, 'Bùi thị Kim Hà', 'buikimha1997@gmail.com', '0336267605', 'Quốc oai- hà nội', '', '6nLCcTTqEZ'),
(179, NULL, '1i7q51n1dacoh416c57tg7hj51', 0, NULL, '2019-05-26', 4, '', 'Ha Ho', 'Saimakita7@gmail.com', '12345678', '', '', 'YEHxsucD5T'),
(180, NULL, 'emsno1lvd9argfokkkfm8hre91', 0, NULL, '2019-05-26', 4, '', 'Nguyễn Thị Nhung', 'nguyenttnhung20@gmail.com', '12345678', '', '', 'x7UYShsreJ'),
(181, NULL, '5008v420ue5fdbmr5gdado4p42', 0, NULL, '2019-05-26', 4, '', 'Kim Sambo', 'luutrutailieu55@gmail.com', '123456', '', '', 'HogU0IWKrd'),
(182, NULL, 'rk49ff2f4go8ljqfqdlvagqrv6', 0, NULL, '2019-05-26', 4, '', 'Mai Phương', 'phuonghuynhfpt@gmail.com', '12345678', '', '', 'O7uYH8o80H'),
(183, NULL, 'ae4uoqor361q3llilpl5fcagm6', 0, NULL, '2019-05-26', 4, '', 'Nguyễn Bảo Đại', 'nguyenbaodai378@gmail.com', '12345678', '', '', '0qcgUqgzKN'),
(184, NULL, 'h9tsdiogfgc35g5mu5r323b5h3', 0, NULL, '2019-05-26', 4, '', 'Triệu Sơn', 'sontrieu2000@gmail.com', '123', '', '', 'uoALuL0mKP'),
(185, NULL, 'pct01n54vt89054s9pkog8hrd6', 0, NULL, '2019-05-26', 4, '', 'Hương Nguyên', 'keokeo3042000@gmail.com', '12345678', '', '', 'fbsUtBZcX0'),
(186, NULL, 'uue3rcd94t9dlg4c2nb06emda1', 0, NULL, '2019-05-26', 4, '', 'Nhật Quỳnh', 'voquangnhatquynh@gmail.com', '123', '', '', 'VofNqSA9Fy'),
(187, NULL, 'jue5dvvseadi9lcn7beifhudt6', 0, NULL, '2019-05-26', 4, '', 'Phap Phan', 'vanphapdn@gmail.com', '123456', '', '', 'iO9lUUB1jc'),
(188, NULL, '22seh5st0brfnuva5djoocf474', 0, NULL, '2019-05-26', 4, '', 'Le Ngoc Khanh', 'khanhln.990@gmail.com', '12345', '', '', 'UxuYQpAPdx'),
(189, NULL, '9dismms2g47knebdka6slpn5l7', 0, NULL, '2019-05-26', 4, '', 'Dương Thị Văn', 'duongthivan17012000@gmail.com', '12345678', '', '', '3RkBmwHHx4'),
(190, NULL, 'r9fd7oj4kh0e10lnohoh9ev7k3', 0, NULL, '2019-05-26', 4, '', 'Ty Nguyễn', 'minhtoan631995@gmail.com', '1234567', '', '', 'fKIfcwhnVg'),
(191, NULL, 'hmm0p30cup2m4g05o4jjtqn2g3', 0, NULL, '2019-05-26', 4, '', 'Thúy Lê', 'doleshin2306@gmail.com', '123', '', '', 'U2stJCToHj'),
(192, NULL, 'bno6qbcuclsl3f13a6jbi1lro2', 0, NULL, '2019-05-26', NULL, NULL, 'Nguyễn Bảo Đại', 'nguyenbaodai378@gmail.com', '0386788808', 'đồng nai', 'xin cảm ơn', 'i5J9Rg18xC'),
(193, NULL, 'd6qg15pcthj3evda61deg70oo7', 0, NULL, '2019-05-26', NULL, NULL, 'Mỹ Duyen', 'peduyen9968@gmail.com', '12345678', '', '', 'JdEVfZkXtl'),
(194, NULL, 'd6qg15pcthj3evda61deg70oo7', 0, NULL, '2019-05-26', 4, '', 'Mỹ Duyen', 'peduyen9968@gmail.com', '12345678', '', '', 'r932lj9iIo'),
(195, NULL, 'k9n0g2kt2v2ivpfi9phvcvekt6', 0, NULL, '2019-05-26', 4, '', 'Dong Hae', 'huyenlovesuju@gmail.com', '12345', '', '', 'TK2E7QOGwC'),
(196, NULL, 'jssnr04cv43e266biqpd6sbjv2', 0, NULL, '2019-05-26', 4, '', 'Lê Alissa', 'letinhtinh1905@gmail.com', '1234567', '', '', 'u9BisMnpwX'),
(197, NULL, '61jj52b9hkcs8mre34qjdrnvl3', 0, NULL, '2019-05-26', 4, '', 'Xuân Nghĩa', 'Nghiax177@gmail.com', '123457', '', '', 'CMvrh0lthu'),
(198, NULL, 'olkd1nqgdorropfm8ghtvhjs42', 0, NULL, '2019-05-26', 4, '', 'Vũ Quang Trường', 'truongquangvu1912@gmail.com', '12345', '', '', 'd1BWf95cpq'),
(199, NULL, '48h2bcgdl2q52hb05cm2os4661', 0, NULL, '2019-05-26', 4, '', 'Phạm Thị Thanh Ngân', 'thanhngan5920@gmail.com', '123456', '', '', 'sBS3J1TsqX'),
(200, NULL, '05qkgr30d0flgvj3uie7ss9mq5', 0, NULL, '2019-05-26', 4, '', 'Phạm Thành', 'kts.spplt@gmail.com', '123456', '', '', 'FRLfEEmpDZ'),
(201, NULL, '776k67ul8tvim9l6vsbqqk0b57', 0, NULL, '2019-05-26', 4, '', 'Nguyễn Văn Vụ', 'sales_hn3@thaihabooks.com', '12345678', '', '', 'N8NgK9xSZI'),
(202, NULL, 'm6sctflkmkgjb758149o5hi1c4', 0, NULL, '2019-05-26', 4, '', 'Nguyễn thị Hạnh', 'nguyenthihanh.tp2016@gmail.com', '032874712', 'xã Hải Vân , huyện Hải Hậu , tỉnh Nam Định', '', 'YKuPOVAdrA'),
(203, NULL, '8m0lj5p2iobmv975f84vqc9mf2', 0, NULL, '2019-05-26', 4, '', 'Nguyễn Thị Hạnh', 'nguyenthihanh.tp2016@gmail.com', '0328742712', 'Nam Định', '', 'xBfC80ag0x'),
(204, NULL, 'rcfgfp6p5ms6i3sjr20hvmv7h1', 0, NULL, '2019-05-26', 4, '', 'Nguyễn Thị Hạnh', 'nguyenthihanh.tp2016@gmail.com', '0328742712', 'Nam Định', '', 'LPMAtoVRaX'),
(205, NULL, 'ab3fc57a6kqhve4nc1jns3cki3', 0, NULL, '2019-05-26', 4, '', 'Lê Hữu Hiệp', 'lehiep040397@gmail.com', '12345678', 'lehiep040397@gmail.com', '', '9Tb4xnX6Ju'),
(206, NULL, 'c9sr5vhbqbh7hg9ba1stem7cc4', 0, NULL, '2019-05-26', 4, '', 'Ngoc Anh', 'Ninhtieutich25012003@gmail.com', '12345678', '', '', 'YpinY5NjTN'),
(207, NULL, 'ekr7jd7ogg5a2nfdq4hlb96vb1', 0, NULL, '2019-05-26', 4, '', 'Trần Hiếu', 'thieu7790@gmail.com', '12345678', 'thieu7790@gmail.com', '', 'ZpcKtYLEHX'),
(208, NULL, 'p4eptik5r6ebadle8tt6q7ljq1', 0, NULL, '2019-05-26', 4, '', 'Kiều Linh', 'linhkieu2609@gmail.com', '123456', '', '', 'b5yldW4RT3'),
(209, NULL, '5mnmhsl40taf3s08fs6vpm9gd6', 0, NULL, '2019-05-26', 4, '', 'Phuongnguyen', 'phuongpro1111996@gmail.com', '0523531009', '', '', 'bxhlt10Ndl'),
(210, NULL, '6h92ea01bs8sbs2s53819sknh2', 0, NULL, '2019-05-26', 4, '', 'Nguyen phan na phi', 'naphi2907@gmail.com', '0939183922', '', '', 'kPea77vUWe'),
(211, NULL, '5ga265oqcaot7lf19almqqva61', 0, NULL, '2019-05-26', 4, '', 'Phuongnguyen', 'phuongpro1111996@gmail.com', '0523531009', '', '', '4vCm7Y879p'),
(212, NULL, 'uvbl0o6puf0pb9s0vp59u1a3a6', 0, NULL, '2019-05-26', 4, '', 'Lê Minh Thành', 'minhthanh990@gmail.com', '0906777896', '33 Quang Trung GV', '.', 'fFQ9lWK6Uo'),
(213, NULL, 'q8kjapnfb3qmhd6e5sk9f9gno0', 0, NULL, '2019-05-26', 4, '', 'Lê thị mỹ', 'mymyanh898@gmail.com', '0336341357', 'Tân ước thanh oai hà nội', '', 'mp0dmXG2Re'),
(214, NULL, 'gqnd88pi1f2tjvjsntgu16rap6', 0, NULL, '2019-05-26', 4, '', 'Sam Sam', 'tuyetqtvp@gmail.com', '0329970171', 'số 53 ngõ 132 Khương Trung- Thanh Xuân-Hà Nội', '', 'vdo57jnIzk'),
(215, NULL, '7mt85bju9tnmr4m2a0jssapmp5', 0, NULL, '2019-05-26', 4, '', 'Phạm Quang', 'quangpv007@gmail.com', '', '', '', '7FYK5lKI5t'),
(216, NULL, 'bpj44c7igbmrss4q61de3qgvn4', 0, NULL, '2019-05-26', 4, '', 'Nguyễn Viết Anh', 'vietanh3839@gmail.com', '0909953160', '002 lô F1 chung cư Nguyễn Thiện Thuật P1,Q3', '', '2nNCE8LI3J'),
(217, NULL, 'r974jvtq9k3t44v2sdpi6pu5a1', 0, NULL, '2019-05-26', 4, '', 'Đinh Văn Nam', 'dinhnamhnvn@gmail.com', '0982012012', '299 Cầu Giấy, Hà Nội', '', 'XW9DwkK3dg'),
(218, NULL, '4mnbmhm0515d98fcuqfat19on1', 0, NULL, '2019-05-26', 4, '', 'Trần Văn Dũng', 'trandung0123321@gmail.com', '0966075853', 'Sơn Tây', '', 'kVRu0nMaAf'),
(219, NULL, 'uvhido1ldrercu6355l02ppvv6', 0, NULL, '2019-05-27', 4, '', 'Ngoc Anh', 'ninhtieutich003@gmail.com', '12345678', '', '', 'URgAEYNZck'),
(220, NULL, 'uvhido1ldrercu6355l02ppvv6', 0, NULL, '2019-05-27', 4, '', 'Ngoc Anh', 'ninhtieutich003@gmail.com', '12345678', '', '', 'XkX489andf'),
(221, NULL, 's3pe0gtsncp09hnjeslf0t47o6', 0, NULL, '2019-05-27', 4, '', 'Hồng Vân', 'nthvan237@gmail.com', '702788158', '', '', 'KTDhDSDzo4'),
(222, NULL, 'l2calsi2v2npjnmu94cqa6a3v1', 0, NULL, '2019-05-27', 4, '', 'Nguyễn Thị Anh Đào', 'anhdao0703304@gmail.com', '0973144717', 'Số1, DE3, khu công nghiệp mỹ Phước 3, bến cát, bình dương(wanek  3)', '', 'LJVkj7IHlw'),
(223, NULL, '62a7atu3elgnejlcimu9dfmdk2', 0, NULL, '2019-05-27', 4, '', 'Nguyễn Văn Minh ', 'minhnguyenbm82@gmail.com', '0909504777', 'Phòng 026 lô C chung cư Hóa An, đường Nguyễn Ái Quốc, phường Hóa An, Tp Biên Hoà, Đồng Nai ', '', 'NMHKb8jVYb'),
(224, NULL, '1poardiuna4nb0fh0f7igigh87', 0, NULL, '2019-05-27', 4, '', 'Nguyễn Thị Anh Đào', 'anhdao0703304@gmail.com', '0973144717', 'WANEK 3 SỐ 1, DE3, KCN MỸ PHƯỚC 3, BẾN CÁT, BÌNH  DƯƠNG', '', 'yMJPAKtubM'),
(225, NULL, 'flu2m5m5p7u2u70q9tnomk1ij7', 0, NULL, '2019-05-27', 4, '', 'Nguyễn Thị Hồng Hợp', 'cogan726@gmailcom', '123468', '', '', 'oKbhP5G3CZ'),
(226, NULL, '84e67b422kpcnc4m9su18h7ql0', 0, NULL, '2019-05-27', 4, '', 'Hoàng Hương', 'huong121020@gmail.com', '12346', '', '', '1LggUjlYDV'),
(227, NULL, '9ppm6ussrobn8k3teqlen0stl0', 0, NULL, '2019-05-27', 4, '', 'AnhTuấn Đỗ', 'boykieu_kocangirlxinh_8x@yahoo.com', '', '', '', '0wmWQ64E5b'),
(228, NULL, 'an7a42kmbma8c4ed45m1acm5p7', 0, NULL, '2019-05-27', 4, '', 'AnhTuấn Đỗ', 'doanhtuan170795@gmail.com', '', '', '', 'RvqyDUcndU'),
(229, NULL, '35de8k65hq3a6smt7dsl7is5k4', 0, NULL, '2019-05-27', 4, '', 'AnhTuấn Đỗ', 'doanhtuancb95@gmail.com', '', '', '', 'lFQHp8IH5l'),
(230, NULL, 'i6o5qn1tmo0hpd1pmh66mlc3m3', 0, NULL, '2019-05-27', 4, '', 'AnhTuấn Đỗ', 'doanhtuancb95@gmail.com', '398080316', '94a/8 phan chu trinh - phường cam lộc', '', 'Wux0onfLGW'),
(231, NULL, '6gpus1lokbminc7uchsba5uqr5', 0, NULL, '2019-05-27', 4, '', 'AnhTuấn Đỗ', 'boykieu_kocangirlxinh_8x@yahoo.com', '398080316', '94a/8 phan chu trinh - phường cam lộc', '', '2WYIBnQ9Tb'),
(232, NULL, 'q2hqbgf62etfliopelfcp4d0g2', 0, NULL, '2019-05-27', 4, '', 'Nguyen Thuong', 'gagoyp@gmail.com', '+818085048600', '', '', 'jqAC4AsKgE'),
(233, NULL, 'if2tptqb5al8841dheovvv56c3', 0, NULL, '2019-05-27', 4, '', 'Trần Thư', 'tranthu12032003@gmail.com', '13456', '', '', 'jrwmZpADBa'),
(234, NULL, 'faqomqf7top8q6g1q08cam3jg7', 0, NULL, '2019-05-27', 4, '', 'Nguyễn Văn Đại', 'nguyenvandai027@gmail.com', '12346', '', '', 'c9FLgQR7ju'),
(235, NULL, 'ntm67u7j217bk6aq55qms4vn76', 0, NULL, '2019-05-27', 4, '', 'Hằng Trương', 'Hangtruongshinee2910@gmail.com', '1234678', '', '', 'v0i5xqMf90'),
(236, NULL, 'na9tb6bb2sl3irpihp1sqov071', 0, NULL, '2019-05-27', 4, '', 'Kiều Khánh Tiên', 'huyentrangkieu@gmail.com', '978866097', 'tòa nhà AC ngõ 78 Duy Tân', '', '5nNoq8Vs9d'),
(237, NULL, 'fjf1cgppcuk0pgnfrun9o43ha1', 0, NULL, '2019-05-27', 4, '', 'Trần Như Quyền', 'trannhuquyen2810@gmail.com', '12345689', '', '', 'fcZvFNWK3T'),
(238, NULL, 'dbe82j6vsd1rnstajett10rcu6', 0, NULL, '2019-05-27', 4, '', 'Doremon', 'vuongnguyenlkdn@gmail.com', '123356', '', '', 't3aPJG1DmK'),
(239, NULL, 'orpimq6rvq67avqgf5t0hjeki6', 0, NULL, '2019-05-27', 4, '', 'Nguyễn Đình Trung', 'Nguyendinhtrung90@gmail.com', '1234456', '', '', 'CRMfkNlhnq'),
(240, NULL, 'idbl2a43kdg489cebhlg4h8m07', 0, NULL, '2019-05-27', 4, '', 'Mộc Mộc', 'nhokmiko32@gmail.com', '1233', '', '', '38KGbUUKnB'),
(241, NULL, 'n3dnkvkhdh0m9ltcv2scctnm77', 0, NULL, '2019-05-27', 4, '', 'Uyên Nhi Dương', 'Uyennhi832006@gmail.com', '123456', '', '', 'Xm3GC4hTIK'),
(242, NULL, 'vt9svmttd1s57ku4eqe81mf5u7', 0, NULL, '2019-05-27', 4, '', 'Hồ Hồng My', 'hongman1611@gmail.com', '0388429107', '', '', 'As7iTqavby'),
(243, NULL, 'uugv37dhr4i9n7m8bseq9vonv0', 0, NULL, '2019-05-27', 4, '', 'Duyên Đoàn', 'zonzon310896@gmail.com', '123456', '', '', '2HXKpGxEUi'),
(244, NULL, 'fvrtmsdkrjnaqtpdcjnnopdpb5', 0, NULL, '2019-05-27', 4, '', 'Trang Đoàn', 'trangdoan1191@gmail.com', '123456', '', '', 'cix14Cy4CM'),
(245, NULL, '5cmhg79co0uk6ljj3subqrfjs6', 0, NULL, '2019-05-27', 4, '', 'Nguyễn Mai Hoa', 'hoamai906@gmail.com', '12345', '', '', 'IIlBOrlnA9'),
(246, NULL, 'qc08kbcer5htj3hchmo22vrnr3', 0, NULL, '2019-05-27', 4, '', 'Đình Đạt', 'dinhdat0918@gmail.com', '12345', '', '', 'dr1z3XRQkv'),
(247, NULL, '0f1qbusauso5cehjuo10nlelo2', 0, NULL, '2019-05-27', 4, '', 'An Nhiên', 'Annhiena4@gmail.com', '12346', '', '', '80DPET9ziR'),
(248, NULL, 'ptno0ug6sjbdka76db41dirf80', 0, NULL, '2019-05-27', 4, '', 'nguyễn thị hà my', 'mymotnguyen2@gmail.com', '0392009222', '', '', 'qvkRN4EdiM'),
(249, NULL, 'ptno0ug6sjbdka76db41dirf80', 0, NULL, '2019-05-27', 4, '', 'nguyễn thị hà my', 'mymotnguyen2@gmail.com', '0392009222', '', '', 'J8NF3FgWO3'),
(250, NULL, 'ptno0ug6sjbdka76db41dirf80', 0, NULL, '2019-05-27', 4, '', 'nguyễn thị hà my', 'mymotnguyen2@gmail.com', '0392009222', '', '', 'itzjBGT84i'),
(251, NULL, 'ptno0ug6sjbdka76db41dirf80', 0, NULL, '2019-05-27', 4, '', 'nguyễn thị hà my', 'mymotnguyen2@gmail.com', '0392009222', '', '', 'sjK7LefaSk'),
(252, NULL, '46r2ofvof59sacrp957imlevq6', 0, NULL, '2019-05-27', 4, '', 'nguyễn thị hà my', 'mymotnguyen2@gmail.com', '0392009222', '', '', 'hw3TCOFex9'),
(253, NULL, 'jeu3n2gqgukqb4a6im82qvv445', 0, NULL, '2019-05-27', 4, '', 'Nam Phạm', 'phannam1608tb@gmail.com', '123456', '', '', '1R7zdKVZhl'),
(254, NULL, 'e17mhc7vrn9nor3aqfmaugvo60', 0, NULL, '2019-05-27', 4, '', 'Tan Quan', 'huynhtanquan2018@gmail.com', '123456', '', '', 'AOPp56N3vR'),
(255, NULL, '4ungmb43tum3khov3gv1lu1277', 0, NULL, '2019-05-27', 4, '', 'Dũng Hoàng', 'hoangxuandung311@gmail.com', '1223', '', '', '7GzYEZGTL8'),
(256, NULL, 's64ohdko09ia5h9qgpftpillb2', 0, NULL, '2019-05-27', 4, '', 'Cây Phong Thuỷ', 'Nghuyn79@gmail.com', '12345', '', '', '3BsBNOwt4O'),
(257, NULL, 'fe0fadgfg3hj22p0tnp4530bu4', 0, NULL, '2019-05-27', 4, '', 'Phạm Tuyến', 'phamtuyen0369@gmail.com', '12346', '', '', 'jNaocGf2f7'),
(258, NULL, 'e8so1q9otkmo3bamq1jg41na15', 0, NULL, '2019-05-27', 4, '', 'Việt Hà', 'daothivietha99@gmail.com', '1233456', '', '', 'nJAHxzXmI6'),
(259, NULL, 'rn0d600stfta92csavbh004u26', 0, NULL, '2019-05-27', 4, '', 'Tâm Duyên', 'huynhthanhthuy.0909598@gmail.com', '1234678', '', '', 'B0IcCcSdvJ'),
(260, NULL, '6uu3kuqucb6sfo2listi4eb4b1', 0, NULL, '2019-05-27', 4, '', 'Gấu Trúc', 'Vanlun99ht@gmal.com', '123468', '', '', 'Du0rvp9IlJ'),
(261, NULL, 'kng44pqlp6kovabesgsutcqqe1', 0, NULL, '2019-05-27', 4, '', 'Nguyễn Hữu Duy', 'Huuduy05111999@gmail.com', '13456', '', '', 'ZwbdIEvcmH'),
(262, NULL, '2mb57o9r7n11dftgpbe7kq1lo1', 0, NULL, '2019-05-27', 4, '', 'Nhân Lê Doãn', 'doan.nhan95ht@gmail.com', '123456', '', '', 'cpYDsXFlBZ'),
(263, NULL, '0hl523mpal49aaffgcqrs6k5o4', 0, NULL, '2019-05-27', 4, '', 'Tuấn Minh', 'Ngtuanminh995@gmail.com', '123456', '', '', 'AcHt5fAreq'),
(264, NULL, 'tm9djpci5o64r09hifvk1qft14', 0, NULL, '2019-05-27', 4, '', 'Kiều Oanh', 'oanhkieungo888@gmail.com', '0908538520', '', '', 'OJwlpYtgwl'),
(265, NULL, 'tm9djpci5o64r09hifvk1qft14', 0, NULL, '2019-05-27', 4, '', 'Kiều Oanh', 'oanhkieungo888@gmail.com', '0908538520', '', '', 'SooTbMKe7j'),
(266, NULL, 'tm9djpci5o64r09hifvk1qft14', 0, NULL, '2019-05-27', 4, '', 'Kiều Oanh', 'oanhkieungo888@gmail.com', '0908538520', '', '', 'vAegL4nAHB'),
(267, NULL, '07psbj987jkrqi2dbfc9tf0rj3', 0, NULL, '2019-05-27', 4, '', 'Kat Sara', 'hao533899@gmail.com', '123456', '', '', 'VwbEJxsGsj'),
(268, NULL, '9922elgbcp21hmoe8fnl8qog00', 0, NULL, '2019-05-27', 4, '', 'Phan Duy', 'phanduy0106@gmail.com', '123456', '', '', 'wsNuz1vKBX'),
(269, NULL, 'tv0jr1kndrhqhmgifvqj6dmkt0', 0, NULL, '2019-05-27', 4, '', 'Đào Triệu', 'daoxuantrieuhp@gmail.com', '1234678', '', '', 'Xu2AlyPIwi'),
(270, NULL, 's7p8vd2scrimcc8lqvstaecjr1', 0, NULL, '2019-05-27', 4, '', 'Nguyễn Xuân Quang', 'Quanh14081996@gmail.com', '123456', '', '', 'AoNmHLOQne'),
(271, NULL, 'nglohnlck41k20o0odq63sath5', 0, NULL, '2019-05-27', 4, '', 'Nguyễn Xuân Quang', 'Quang14081996@gmail.com', '123456', '', '', 'd9j7qJcBmd'),
(272, NULL, '063kd71l0vppn143hv148kkap3', 0, NULL, '2019-05-27', 4, '', 'Nguyễn Hải', 'Tanhaiflp@gmail.com', '1234678', '', '', 'e2x30SRrNv'),
(273, NULL, '3k3idgap2megot6tj64cj12tm4', 0, NULL, '2019-05-27', 4, '', 'Phụng Tiên', 'Hpts109@gmail.com', '13456', '', '', 'b2ZyC27RMV'),
(274, NULL, '32ss836eu2fdubbsmrsheo6ca1', 0, NULL, '2019-05-27', 4, '', 'Vy Nguyễn', 'nguyenthituongvy19061996@gmail.com', '123468', '', '', 'z4SYtRhvK7'),
(275, NULL, 'trkg82turoegbrqi0l0j3uct22', 0, NULL, '2019-05-27', 4, '', 'Hùng Đinh Duy', 'dinhduyhung99@gmail.com', '0961075276', '', '', 'QwtZIyyxBV'),
(276, NULL, 'lm4hnch9465retj0th7k7j52u0', 0, NULL, '2019-05-27', 4, '', 'Viet Hoang', 'Viethoang1263@gmail.com', '123456', '', '', '1b2VdPx1C4'),
(277, NULL, 'qf95qja396jtco7c01l1iam6g0', 0, NULL, '2019-05-28', 4, '', 'Hoàng Thắng', 'hoangthanghg1508@gmail.com', '123456', '', '', 'iQtNOPWq9e'),
(278, NULL, '1b1u7e33q1fhaognpd3m412ga2', 0, NULL, '2019-05-28', 4, '', 'Trần Nhài', 'trannhaiulsa@gmail.com', '123456', '', '', 'G5JFE5gPGw'),
(279, NULL, 'ngtvtta53b4blmj0s4bbm73ge2', 0, NULL, '2019-05-28', 4, '', 'Lê Phi Yến', 'lephiyen2910@gmail.com', '12345', '', '', 'EaAWestLo3'),
(280, NULL, 'llp51f64co5dfa08ls88nics65', 0, NULL, '2019-05-28', 4, '', 'HV Việt', 'Hiep1032000@gmail.com', '123468', '', '', '2bovoVGBTe'),
(281, NULL, 'nl5osai8lspaa9b04vkeoh4cn1', 0, NULL, '2019-05-28', 4, '', 'Tiến Dũng', 'dungcao1008@gmail.com', '123456', '', '', '3JpOBreCZp'),
(282, NULL, 'q2347gjdu26guj65233omaolt7', 0, NULL, '2019-05-28', 4, '', 'Nguyen Sa', 'nguyensa.cnk48@gmail.com', '1234678', '', '', 'AoZiAyLJ6t'),
(283, NULL, 'q2347gjdu26guj65233omaolt7', 0, NULL, '2019-05-28', 4, '', 'Nguyen Sa', 'nguyensa.cnk48@gmail.com', '1234678', '', '', 'eLL7LWoNAI'),
(284, NULL, 'l81ami5njc1625c4gmdbd9f0d0', 0, NULL, '2019-05-28', 4, '', 'Trúc Lan', 'builam608@gmail.com', '1234678', '', '', 'AHOK0bNO65'),
(285, NULL, 'rcmf54pbitmfa7qrijhm4f0l45', 0, NULL, '2019-05-28', 4, '', 'Le Thu', 'lethu71094@gmail.com', '12345', '', '', 'L7qTgCA0A9'),
(286, NULL, 'qiivvtobqujr6ofqj2o0qqdc41', 0, NULL, '2019-05-28', 4, '', 'Thanh Hoang', 'thanhhoang2962000@gmail.com', '123456', '', '', '7eXBRnRKZX'),
(287, NULL, 'nrsjnemd5j0lhdl80fmrrg4i26', 0, NULL, '2019-05-28', 4, '', 'Đoàn Ngoan', 'Dngoan102@gmail.com', '1234678', '', '', 'k3Biwzh0WP'),
(288, NULL, '02vqjbg7ab7me7td818sqe4ck0', 0, NULL, '2019-05-28', 4, '', 'Bi Bi', 'pkien18896@gmail.com', '1234678', '', '', 'urcyUf85O1'),
(289, NULL, '02vqjbg7ab7me7td818sqe4ck0', 0, NULL, '2019-05-28', 4, '', 'Bi Bi', 'pkien18896@gmail.com', '1234678', '', '', 'Xq43fLhSKd'),
(290, NULL, '3dnpb9ccie7mp2sauv0a1r52k2', 0, NULL, '2019-05-28', 4, '', 'My My', 'mymyu969@gmail.com', '1234678', '', '', 'yEn9U2OVgA'),
(291, NULL, 'qp0vjnlor51ks3m4rbofepaqq5', 0, NULL, '2019-05-28', 4, '', 'Xuan Nguyen Tran', 'xuannguyentran123456@gmail.com', '1234678', '', '', '49GtkpHyHv'),
(292, NULL, '88j97dea9e7s5o7hio5lvutm22', 0, NULL, '2019-05-28', 4, '', 'Đặng Thiện', 'thiendang8791@gmail.com', '123456', '', '', 'oickMU1xdy'),
(293, NULL, 'eufvqi7vifevmf27v7o3oqcur4', 0, NULL, '2019-05-28', 4, '', 'Nguyễn Quỳnh', 'Ngquynh030104@gmail.com', '123456', '', '', 'O2MK6fyfcO'),
(294, NULL, 'aod767m5vicnuv5veuh9hhi4q4', 0, NULL, '2019-05-28', 4, '', 'Phương Thảo', 'Noname7652259@gmail.com', '123456', '', '', '8Y0VD6mAV1'),
(295, NULL, 'rsh6151rkkqat6o8r5l69rq7i4', 0, NULL, '2019-05-28', 4, '', 'Đoàn Minh Tài', 'doanminhtai91@gmail.com', '12346', '', '', '91VRL1vDE5'),
(296, NULL, '8co7s300gimltipfh969hvacd0', 0, NULL, '2019-05-28', 4, '', 'Ngô Hồng', 'ngohong2711998@gmail.com', '123468', '', '', 'RqAB94zXVl'),
(297, NULL, 'tcn0m9c5a2emrvvhncvrk19n74', 0, NULL, '2019-05-28', 4, '', 'Lương Thị Ngọc Kiều', 'luongthingockieu87@gmail.com', '123468', '', '', 'L0s6QIhNDp'),
(298, NULL, 'a3jqg0qgc6avpb9p4q8lug39s1', 0, NULL, '2019-05-28', 4, '', 'Trần Xuân Lợi', 'Tranxuanloi298@gmail.com', '123456', '', '', 'ySSeBhtZar'),
(299, NULL, 'shnapq0utndiko0neokr4ui4g1', 0, NULL, '2019-05-28', 4, '', 'Văn Đức Pháp', 'tramhuongdhv@gmail.com', '123456', '', '', '8HMc9QHCTR'),
(300, NULL, 'm9g48nsr4nresrfinspfjjqmg1', 0, NULL, '2019-05-28', 4, '', 'Đỗ Quân', 'doanhquan2k@gmail.com', '123468', '', '', 'xfVzdeE89M'),
(301, NULL, 'grir4tnt7m6c9vi1q1hivkc955', 0, NULL, '2019-05-28', 4, '', 'Hoa Phạm', 'hoayumie97@gmail.com', '', '', '', 'K6VtSyPBbL'),
(302, NULL, '63udavagb3p2pso58ro2khusl1', 0, NULL, '2019-05-28', 4, '', 'meo minh', 'tranthiminhmeo@gmail.com', '', '', '', 'A5pJD8W5jQ'),
(303, NULL, 'o2h3ec6ed5hd1r61l2a3rh9sg4', 0, NULL, '2019-05-28', 4, '', 'Nguyễn Thị Hạnh', 'hanhvithanhvit16@gmail.com', '0368574452', 'Sơn Tây', '', 'NmcGGdw3FK'),
(304, NULL, 'k5p8jh5cs99l09cukpkr6196u2', 0, NULL, '2019-05-28', 4, '', 'đặng kim ngân', 'dangkieu505@gmail.com', '03628011564', '', '', 'slMfKuahAO'),
(305, NULL, 'd8unf93hi37jig2ok6s37131p4', 119000, NULL, '2019-05-28', 6, '', 'đặng kim ngân', 'dangkieu505@gmail.com', '03628011564', '', '', 'qKg9wHfrfd'),
(306, NULL, 'apb3c0a1pmm30bdj4mebmrcvn6', 0, NULL, '2019-05-28', 4, '', 'Triệu Sơn', 'sontrieu2000@gmail.com', '0822850804', '536 Minh Khai , Hà Nội', '', '6IWiplRrm8'),
(307, NULL, '5dmcjrek7hgukgnug94q5j4nc3', 0, NULL, '2019-05-28', 4, '', 'Triệu Thanh Sơn', 'sontrieu2000@gmail.com', '0822850804', '536 Minh Khai , Hà Nội', '', 'BcfXJAeBCg'),
(308, NULL, '0dt3l552miks7m09ca13j79kr5', 0, NULL, '2019-05-30', 4, '', 'Đoàn Thị Loan', 'loanmanh91@gmail.com', '0932657025', 'loanmanh91@gmail.com', '', 'U9y4pqiT6e'),
(309, NULL, 'rcqp6e8t3k3t1h6qolthlpt7o3', 0, NULL, '2019-05-31', 4, '', 'Hanh Phuong', 'phuonghonghanh_93@yahoo.com', '', '', '', 'xEWy4IChGj'),
(310, NULL, '44jvi4385le424c3ufcaotekv3', 0, NULL, '2019-05-31', 4, '', 'Hanh Phuong', 'hanhph@grandhomes.vn', '', '', '', 'NA1cpoAWex'),
(311, NULL, 'oa9ekoj1t3b8lq4b0rqkh9krv4', 0, NULL, '2019-06-01', 4, '', 'huỳnh thị thanh thủy', 'huynhthanhthuy.090598@gmail.com', '0964358471', '', '', '1G5y2IJmYu'),
(312, NULL, 'us37slej8vmn4tfampkafmhnh3', 0, NULL, '2019-06-01', 4, '', 'huỳnh thị thanh thủy', 'huynhthanhthuy.090598@gmail.com', '0964358471', '', '', 'IOBP5UAqN0'),
(313, NULL, 'ifvqe8q05urdi950d8qtnv1a01', 0, NULL, '2019-06-01', NULL, NULL, 'huỳnh thị thanh thủy', 'huynhthanhthuy.090598@gmail.com', '0964358471', '', '', 'LlSfCbGsG0'),
(314, NULL, '6rdegd3iai759r7ua89mqpigo2', 0, NULL, '2019-06-01', 4, '', 'huỳnh thị thanh thủy', 'huynhthanhthuy.090598@gmail.com', '0964358471', '', '', 'UlmQqWI6Wi'),
(315, NULL, 'vq8cu63na5iuuqjfrlhb1ulkp1', 0, NULL, '2019-06-01', 4, '', 'Kim Tiền', 'kimtien318@yahoo.com', '0937648126', '', '', 'SyJMWLumdB'),
(316, NULL, '3ql4c9iu1tdg5l986fmqadeqs1', 0, NULL, '2019-06-01', 4, '', 'Kim Tiền', 'kimtien318@yahoo.com', '0937648126', '', '', 'PeHoM7VLFW'),
(317, NULL, '6vq2o302gp5pfdddjcfusbb6c6', 0, NULL, '2019-06-03', 4, '', 'Nguyễn Thị Yến Nhi', 'yennhi11021998@gmail.com', '0962154023', '348/9/11 Cách mạng tháng 8, phường 10, quận 3, TP HCM', '', 'CA9id9N9uA'),
(318, NULL, '0cpcd3epr5vc96lgrlo8v2vs70', 0, NULL, '2019-06-05', 4, '', 'Lê Alissa', 'letinhtinh1905@gmail.com', '0374719390', 'hoằng hóa thanh hóa', '', 'hwTlV15oVf'),
(319, NULL, 'gf32t8425du2h5ifu1jpk3mtj6', 0, NULL, '2019-06-07', 4, '', 'phạm thị mai', 'pmai96684@gmail.com', '0964890906', 'thái nguyên', '`', 'qYABdZcoVc'),
(320, NULL, 'pqmcluea6p2smv60lnijkgn9e3', 0, NULL, '2019-06-11', 4, '', 'Lại Thuỳ Dung', 'dungthuyjunjun@gmail.com', '0852395542', '20/51 nguyễn cao luyện , tp nam định', 'Tôi muốn học thành thạo excel cơ bản', 'CyjldesfTe'),
(321, NULL, '4tu3em45c6eqveou6ide071u70', 0, NULL, '2019-06-18', NULL, NULL, 'Hoàng Thị Chung Anh', 'chunganhht@gmail.com', '0388443800', 'Từ Liêm Hà Nội', '', 'Fo08GgTZ54'),
(322, NULL, '3da1mmlrsf3ghmnbvl6nnsa1e0', 0, NULL, '2019-06-26', NULL, NULL, 'Huỳnh Văn Cọ', 'huynhvanco30081998@gmail.com', '0353365544', 'Kp.ông đông , phường tân hiệp , tx tân uyên , bình dương', '', 'fGaKDtvhkj'),
(323, NULL, 'b78l3b8lq0hofmcp4cpdibbss2', 0, NULL, '2019-07-22', NULL, NULL, 'Lê Thị Tình', '', '', '', '', 'bpVWbBnexc'),
(324, NULL, 'ls9mbl6r85mcjqkja9bio4ujh0', 0, NULL, '2019-07-22', NULL, NULL, 'Lê Thị Tình', 'letinhtinh1905@gmail.com', '0374719390', 'hoằng hóa thanh hóa', '', 'eNQYDvYC5x'),
(325, NULL, '4nmabk3sb9mudjtnr5e84gbfj2', 0, NULL, '2019-07-25', NULL, NULL, 'Đinh Duy Hùng', 'dinhduyhung99@gmail.com', '0961075276', 'Hải Dương', '', 'RkGSW1dsT2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cartdetail`
--

CREATE TABLE `cartdetail` (
  `id_cartDetail` int(11) NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price_product` double DEFAULT NULL,
  `qyt_product` int(11) DEFAULT NULL,
  `totalprice_product` double DEFAULT NULL,
  `subInfo1` text COLLATE utf8_unicode_ci,
  `id_color` int(11) DEFAULT NULL,
  `id_size` int(11) DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cart` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cartdetail`
--

INSERT INTO `cartdetail` (`id_cartDetail`, `id_product`, `session_id`, `price_product`, `qyt_product`, `totalprice_product`, `subInfo1`, `id_color`, `id_size`, `color`, `size`, `id_cart`) VALUES
(30, 28, 'mkrnfu62crnut73tj9ip88k4c0', 760000, 4, 3040000, NULL, 0, 0, '', '', 45),
(31, 34, 'mkrnfu62crnut73tj9ip88k4c0', 760000, 2, 1520000, NULL, 0, 0, '', '', 45),
(32, 28, 'q6hilk5otma71lnmfk4jfe3bo0', 760000, 1, 760000, NULL, 0, 0, '', '', 46),
(33, 29, '8rg8qp2tib6bhq40siemsl0au1', 760000, 1, 760000, NULL, 0, 0, '', '', 47),
(34, 27, 'p29v6fieekj8qc6r9iei8rkr84', 760000, 1, 760000, NULL, 0, 0, '', '', 48),
(35, 28, 'gibro9jjp7o8r4dhlulet7t2c7', 760000, 1, 760000, NULL, 0, 0, '', '', 49),
(36, 30, 'skgfhmeppmr97bion8qlhv2f24', 7600000, 1, 7600000, NULL, 0, 0, '', '', 50),
(37, 31, '14sbco3nbkh6tss6mibu4c63i2', 760000, 1, 760000, NULL, 0, 0, '', '', 51),
(38, 32, 'rdk00s074i1i4seat51nh109d6', 7600000, 1, 7600000, NULL, 0, 0, '', '', 52),
(39, 33, 'ibcpu4cam64hh6jvvlqde89v90', 760000, 1, 760000, NULL, 0, 0, '', '', 53),
(40, 35, 'r2hcu630iilbqufhd80udq4eh0', 760000, 1, 760000, NULL, 0, 0, '', '', 54),
(41, 36, 'krsem1sgk8k9smbs1uinikks42', 7600000, 1, 7600000, NULL, 0, 0, '', '', 55),
(42, 37, 'gjdbs5hhkns2vjb0juaf6g8i84', 135000, 1, 135000, NULL, 0, 0, '', '', 56),
(43, 37, 'q4asrlk395bqes71q3m1dj7a53', 135000, 1, 135000, NULL, 0, 0, '', '', 57),
(44, 27, 'mfuj32kovfsj87sum11433so15', 760000, 1, 760000, NULL, 0, 0, '', '', 58),
(45, 28, 'o82tantv1gh498mq2giekk0mj1', 760000, 1, 760000, NULL, 0, 0, '', '', 59),
(46, 29, 'vv3bvs960u0efu33mksbikfr02', 760000, 1, 760000, NULL, 0, 0, '', '', 60),
(47, 30, '77v49he85i8nuuet5p2vt9g7r0', 7600000, 1, 7600000, NULL, 0, 0, '', '', 61),
(48, 35, 'qs835th55ruep5q2f34fdimdg6', 760000, 1, 760000, NULL, 0, 0, '', '', 62),
(49, 36, '0v3amtlih28cip0bskvi8tr2t7', 7600000, 1, 7600000, NULL, 0, 0, '', '', 63),
(50, 37, 's34tnbg59l4psbpbc2jg4ru734', 135000, 1, 135000, NULL, 0, 0, '', '', 64),
(51, 27, 'jna4k52dg50ce0e2euknmpsc53', 760000, 1, 760000, NULL, 0, 0, '', '', 65),
(52, 27, '1mrapf9122qb0n9gd32j94l6f5', 2000, 3, 6000, NULL, 0, 0, '', '', 66),
(53, 27, 'sl6a5d5957d6n37tptrtp29mt4', 2000, 1, 2000, NULL, 0, 0, '', '', 67),
(54, 28, 'ape83laqntnptihbcmk5g0li26', 2000, 3, 6000, NULL, 0, 0, '', '', 68),
(55, 27, 'lc7opealpf3l1a0m2utp3nr4g7', 125100, 4, 500400, NULL, 0, 0, '', '', 69),
(56, 29, 'lc7opealpf3l1a0m2utp3nr4g7', 999000, 2, 1998000, NULL, 0, 0, '', '', 69),
(57, 38, 'lc7opealpf3l1a0m2utp3nr4g7', 219600, 2, 439200, NULL, 0, 0, '', '', 69),
(64, 31, '09tq876h8p0r5qp4gquahjef65', 119000, 1, 119000, NULL, 0, 0, '', '', 74),
(65, 27, 'bnfh4bls0hpirqqrk64alhamb6', 125100, 1, 125100, NULL, 0, 0, '', '', 75),
(68, 31, 's42mo8nldo5ajjuek0a91mdfo5', 119000, 1, 119000, NULL, 0, 0, '', '', 78),
(69, 34, 'b6sfao8sbb8lemj135vgv6lp60', 395000, 1, 395000, NULL, 0, 0, '', '', 79),
(70, 34, 'ik2ldelds6mme5553k76386gl0', 395000, 1, 395000, NULL, 0, 0, '', '', 80),
(71, 31, '0m465l8mb6uj4chqjuabqnm641', 119000, 1, 119000, NULL, 0, 0, '', '', 81),
(72, 32, 'mvl9qm3voqr4r33lo1tkv4v6s1', 350000, 1, 350000, NULL, 0, 0, '', '', 82),
(73, 30, 'luuigiofai9iuoan4npi84m044', 119000, 1, 119000, NULL, 0, 0, '', '', 83),
(74, 34, 's6ke7ld6jam12m7leqh6lm5107', 395000, 1, 395000, NULL, 0, 0, '', '', 84),
(75, 28, '9dcup8o97dhu832kl4gqupt3f2', 119000, 1, 119000, NULL, 0, 0, '', '', 85),
(76, 34, '9b6m8n543k8f7kqq63pa2i93s1', 395000, 1, 395000, NULL, 0, 0, '', '', 86),
(77, 32, '6joolcoh1bce053jtfepmn2360', 350000, 1, 350000, NULL, 0, 0, '', '', 87),
(78, 30, 'ksiqfderg5mn4h8hibr1otcml1', 119000, 1, 119000, NULL, 0, 0, '', '', 88),
(79, 34, '86l34ogdbmpltpcuju174mccq0', 395000, 1, 395000, NULL, 0, 0, '', '', 89),
(80, 34, '4cn9994pnf3mmtk370hljitqc3', 395000, 1, 395000, NULL, 0, 0, '', '', 90),
(81, 34, 'dbeimp41p6j2bsueqh5mospd45', 395000, 1, 395000, NULL, 0, 0, '', '', 91),
(82, 34, 'dbeimp41p6j2bsueqh5mospd45', 395000, 1, 395000, NULL, 0, 0, '', '', 92),
(83, 34, '9st2jddcug7e7pkea9s90rifm0', 395000, 1, 395000, NULL, 0, 0, '', '', 93),
(84, 34, '4asbksk78kvjr1c0p16lfqg8v2', 395000, 1, 395000, NULL, 0, 0, '', '', 94),
(85, 34, 'jnjedop01hdi66rl7a4scq4vt1', 395000, 1, 395000, NULL, 0, 0, '', '', 95),
(86, 27, 'k5n23oisc27tf0lagl9no73ef2', 125100, 1, 125100, NULL, 0, 0, '', '', 96),
(87, 34, '6n0uojolkdd2hmari13ag9f4a2', 395000, 1, 395000, NULL, 0, 0, '', '', 97),
(88, 34, 'bhoftm9kgbsf52kcchjdbm4l86', 395000, 1, 395000, NULL, 0, 0, '', '', 98),
(89, 34, 't0m9farpmu35lm0lclncltjjd1', 395000, 1, 395000, NULL, 0, 0, '', '', 99),
(90, 34, 's808vf7nmg8sjq6mhf8h89f6t1', 395000, 1, 395000, NULL, 0, 0, '', '', 100),
(91, 34, '189q5vue7gqetkk9qtkcsgp2i3', 395000, 1, 395000, NULL, 0, 0, '', '', 101),
(92, 34, 'i457lnk99potqle4a1ddq3bvm7', 395000, 1, 395000, NULL, 0, 0, '', '', 102),
(93, 34, 'kl68hclvc5f99jn6si6tdfv0b7', 395000, 1, 395000, NULL, 0, 0, '', '', 103),
(94, 31, 'd5srssp0f4ihu16uhjci2f3ib3', 119000, 1, 119000, NULL, 0, 0, '', '', 104),
(95, 34, '1lk6mm80u988uuefmlioqcaia4', 395000, 1, 395000, NULL, 0, 0, '', '', 105),
(96, 34, 'ibv0o3p2r2qqtsglo36pi2mvd6', 395000, 1, 395000, NULL, 0, 0, '', '', 106),
(97, 34, 'robddp85b5aq5q63d5e7ec4122', 395000, 1, 395000, NULL, 0, 0, '', '', 107),
(98, 29, 'l5d07qfmgmktdv3mg5s7iuudp5', 999000, 1, 999000, NULL, 0, 0, '', '', 108),
(99, 30, 'bh9o9d3imt65v2456i2tk35lg1', 119000, 1, 119000, NULL, 0, 0, '', '', 109),
(100, 35, '6dfmfq55u27smgqevrsbq876n0', 719999.1, 1, 719999.1, NULL, 0, 0, '', '', 110),
(101, 35, 'hs2l5rbt3lblf2sjdpist5co80', 314999.1, 1, 314999.1, NULL, 0, 0, '', '', 111),
(102, 35, 'ii2ocrplbce7qi23vvl8pq9ta4', 314999.1, 1, 314999.1, NULL, 0, 0, '', '', 112),
(103, 35, 'ss73e7h87nehdu8rabn4vi8df3', 314999.1, 1, 314999.1, NULL, 0, 0, '', '', 113),
(104, 35, '5q3dka4g8r4ab1v48dg0l5bbt0', 314999.1, 1, 314999.1, NULL, 0, 0, '', '', 114),
(105, 35, 'mgejhv28hgc5f8v24r1ds7moa7', 314999.1, 1, 314999.1, NULL, 0, 0, '', '', 115),
(106, 35, 'ico74pll5kpo3uf985cga8lvl4', 314999.1, 1, 314999.1, NULL, 0, 0, '', '', 116),
(107, 35, 'ta1hpc74hcdv78sh57fjfos681', 314999.1, 1, 314999.1, NULL, 0, 0, '', '', 117),
(108, 35, 'c5503frs7vs2k51q9mdmtt1l01', 314999.1, 1, 314999.1, NULL, 0, 0, '', '', 118),
(109, 35, '41iuudpmsl9pl2tna169qn3s50', 314999.1, 1, 314999.1, NULL, 0, 0, '', '', 119),
(110, 35, 'u88knumhrnpegeh3lln4382562', 314999.1, 1, 314999.1, NULL, 0, 0, '', '', 120),
(111, 35, 'cfrqqukjcg0s6unn504vq6ahg0', 314999.1, 1, 314999.1, NULL, 0, 0, '', '', 121),
(112, 35, 'e91gcjbrjik0kfljeervn2bsf3', 0, 1, 0, NULL, 0, 0, '', '', 122),
(113, 35, 'idf4ea4k6mk58alkqv3rk9to67', 0, 1, 0, NULL, 0, 0, '', '', 123),
(114, 35, 'ir741mpdqp1bjg2ids64rl9m02', 0, 1, 0, NULL, 0, 0, '', '', 124),
(115, 35, 'p743ep2e3odih4775aejidk6d3', 0, 1, 0, NULL, 0, 0, '', '', 125),
(116, 35, 'p2gj74qv4acjisamc7jnu78g34', 0, 1, 0, NULL, 0, 0, '', '', 126),
(117, 35, 'gjmhe5dr60pcr5rf1dojlgk231', 0, 1, 0, NULL, 0, 0, '', '', 127),
(118, 35, 'om6cosj7idlnmsfnauugvng7a5', 0, 1, 0, NULL, 0, 0, '', '', 128),
(119, 35, 'b32776mi0fs8enrll17bkd7n41', 0, 1, 0, NULL, 0, 0, '', '', 129),
(120, 35, 'ukphkt81lliuk6c61lrt82hq46', 0, 1, 0, NULL, 0, 0, '', '', 130),
(121, 35, 'eu87a70o20n2a233qi0qdad2a2', 0, 1, 0, NULL, 0, 0, '', '', 131),
(122, 35, 'eu87a70o20n2a233qi0qdad2a2', 0, 1, 0, NULL, 0, 0, '', '', 132),
(123, 35, 'qn213h8dbbh8cv5e4sdh4f1qo7', 0, 1, 0, NULL, 0, 0, '', '', 133),
(124, 35, 'qn213h8dbbh8cv5e4sdh4f1qo7', 0, 1, 0, NULL, 0, 0, '', '', 134),
(125, 35, 'hnap5202i1dfs1h5qavrc6j6p1', 0, 1, 0, NULL, 0, 0, '', '', 135),
(126, 35, 'hfu7pnklnbco2jlbe0nnn2j1a2', 0, 1, 0, NULL, 0, 0, '', '', 136),
(127, 35, 'it87tojbmvqjru6b0ae9c1thf4', 0, 1, 0, NULL, 0, 0, '', '', 137),
(128, 35, 'qlflg46ngnsj72d9fvrrgqt0g5', 0, 1, 0, NULL, 0, 0, '', '', 138),
(129, 35, 'npkuin8hs1h47tusi35i693ec4', 0, 1, 0, NULL, 0, 0, '', '', 139),
(130, 35, '8h33lha7crjplfmcjg0if11uq0', 0, 1, 0, NULL, 0, 0, '', '', 140),
(131, 35, 'dg1d7qgmrevf7859q8q6d65ps2', 0, 1, 0, NULL, 0, 0, '', '', 141),
(132, 35, 'otjvf176uk1a0h21bmq77r35o1', 0, 1, 0, NULL, 0, 0, '', '', 142),
(133, 35, 'clp848ajb3d5mv9t8qj7asu244', 0, 1, 0, NULL, 0, 0, '', '', 143),
(134, 35, 'nojbb7e6h64ilpj0h7nodiq871', 0, 1, 0, NULL, 0, 0, '', '', 144),
(135, 35, 'jir8tvrq8pvt9374edi7bh5dt3', 0, 1, 0, NULL, 0, 0, '', '', 145),
(136, 35, 'k6h9q5i8m3upr853a14ctjcbb6', 0, 1, 0, NULL, 0, 0, '', '', 146),
(137, 35, 'j6gbm6pm58oatnh4japfkiiq97', 0, 1, 0, NULL, 0, 0, '', '', 147),
(138, 35, 'kfkmk55k6sboqqtbf8hgf9shc7', 0, 1, 0, NULL, 0, 0, '', '', 148),
(139, 35, 'f83gqfcib2qtbshe55lb922g24', 0, 1, 0, NULL, 0, 0, '', '', 149),
(140, 35, 'uga3de4576d91o0jbu3j9e6nj1', 0, 1, 0, NULL, 0, 0, '', '', 150),
(141, 35, '2j2v6cv4kmafpei1d4knm0se55', 0, 1, 0, NULL, 0, 0, '', '', 151),
(142, 35, '779sr7llrg3o5it2jg474u6qr3', 0, 1, 0, NULL, 0, 0, '', '', 152),
(143, 35, '0ofmvl9jl5oult0n4826ek19l1', 0, 1, 0, NULL, 0, 0, '', '', 153),
(144, 35, '9b8ccslaeenakce7mhqm3ifoq1', 0, 1, 0, NULL, 0, 0, '', '', 154),
(145, 35, '6ch6lmqu066guae4pcg7g230u6', 0, 1, 0, NULL, 0, 0, '', '', 155),
(146, 35, '4meqe2vlbqc5htni2kcvn14603', 0, 1, 0, NULL, 0, 0, '', '', 156),
(147, 35, '6vo8rg5s4thjeluqo001e90me7', 0, 1, 0, NULL, 0, 0, '', '', 157),
(148, 35, 'ef4cgp155aeprbt38f61lebpb1', 0, 1, 0, NULL, 0, 0, '', '', 158),
(149, 35, 't8t6hq076spk1lj3pr8k2gvpr7', 0, 1, 0, NULL, 0, 0, '', '', 159),
(150, 35, '6ifv2nd02ihvdofr4hkre0c292', 0, 1, 0, NULL, 0, 0, '', '', 160),
(151, 35, 'r3f503bm4vcgep1ei5gmpvs7d3', 0, 1, 0, NULL, 0, 0, '', '', 161),
(152, 35, '3pc9b61t57ekbfcifuspca4ug5', 0, 1, 0, NULL, 0, 0, '', '', 162),
(153, 35, '6kg8v2vip48skrgolmrabn5s43', 0, 1, 0, NULL, 0, 0, '', '', 163),
(154, 35, 'ondek8j13p5bpdenbedd6p4ad3', 0, 1, 0, NULL, 0, 0, '', '', 164),
(155, 35, 'mt2ln6h4dq1lhtdq2gifvvanv3', 0, 1, 0, NULL, 0, 0, '', '', 165),
(156, 35, 'j44at3bevgfqfr33rp61fjl1e1', 0, 1, 0, NULL, 0, 0, '', '', 166),
(157, 35, 'h451n7b4f491o5scn0hpffo8e0', 0, 1, 0, NULL, 0, 0, '', '', 167),
(158, 35, 'okthg5593hejs66sn0stn1lrg2', 0, 1, 0, NULL, 0, 0, '', '', 168),
(159, 35, 'str9tflpcisuth65pi6j639m83', 0, 1, 0, NULL, 0, 0, '', '', 169),
(160, 35, 'gotvmb60nm2r0bui3rmgf955b0', 0, 1, 0, NULL, 0, 0, '', '', 170),
(161, 35, '1453dedp0ov80e89cf7d48cfh4', 0, 1, 0, NULL, 0, 0, '', '', 171),
(162, 35, 'lfogbt07pvdgekuq6lsfibkfc1', 0, 1, 0, NULL, 0, 0, '', '', 172),
(163, 35, 'grsk4m07q0tc5ktmc1d2ffjkn0', 0, 1, 0, NULL, 0, 0, '', '', 173),
(164, 35, 'pfpg3pvrt1euqc5g9fk0hkjfi7', 0, 1, 0, NULL, 0, 0, '', '', 174),
(165, 35, 'afflpoqvibancklho2uth6f1p1', 0, 1, 0, NULL, 0, 0, '', '', 175),
(166, 35, '4gh2g016hr3gn8udvd2or7kmt1', 0, 1, 0, NULL, 0, 0, '', '', 176),
(167, 35, 'c789qgf95js1hhl3j1cpj9dsr0', 0, 1, 0, NULL, 0, 0, '', '', 177),
(168, 35, 'el5ka80lflh9peuk36legs1433', 0, 1, 0, NULL, 0, 0, '', '', 178),
(169, 35, '1i7q51n1dacoh416c57tg7hj51', 0, 1, 0, NULL, 0, 0, '', '', 179),
(170, 35, 'emsno1lvd9argfokkkfm8hre91', 0, 1, 0, NULL, 0, 0, '', '', 180),
(171, 35, '5008v420ue5fdbmr5gdado4p42', 0, 1, 0, NULL, 0, 0, '', '', 181),
(172, 35, 'rk49ff2f4go8ljqfqdlvagqrv6', 0, 1, 0, NULL, 0, 0, '', '', 182),
(173, 35, 'ae4uoqor361q3llilpl5fcagm6', 0, 1, 0, NULL, 0, 0, '', '', 183),
(174, 35, 'h9tsdiogfgc35g5mu5r323b5h3', 0, 1, 0, NULL, 0, 0, '', '', 184),
(175, 35, 'pct01n54vt89054s9pkog8hrd6', 0, 1, 0, NULL, 0, 0, '', '', 185),
(176, 35, 'uue3rcd94t9dlg4c2nb06emda1', 0, 1, 0, NULL, 0, 0, '', '', 186),
(177, 35, 'jue5dvvseadi9lcn7beifhudt6', 0, 1, 0, NULL, 0, 0, '', '', 187),
(178, 35, '22seh5st0brfnuva5djoocf474', 0, 1, 0, NULL, 0, 0, '', '', 188),
(179, 35, '9dismms2g47knebdka6slpn5l7', 0, 1, 0, NULL, 0, 0, '', '', 189),
(180, 35, 'r9fd7oj4kh0e10lnohoh9ev7k3', 0, 1, 0, NULL, 0, 0, '', '', 190),
(181, 35, 'hmm0p30cup2m4g05o4jjtqn2g3', 0, 1, 0, NULL, 0, 0, '', '', 191),
(182, 35, 'bno6qbcuclsl3f13a6jbi1lro2', 0, 1, 0, NULL, 0, 0, '', '', 192),
(183, 35, 'd6qg15pcthj3evda61deg70oo7', 0, 1, 0, NULL, 0, 0, '', '', 193),
(184, 35, 'd6qg15pcthj3evda61deg70oo7', 0, 1, 0, NULL, 0, 0, '', '', 194),
(185, 35, 'k9n0g2kt2v2ivpfi9phvcvekt6', 0, 1, 0, NULL, 0, 0, '', '', 195),
(186, 35, 'jssnr04cv43e266biqpd6sbjv2', 0, 1, 0, NULL, 0, 0, '', '', 196),
(187, 35, '61jj52b9hkcs8mre34qjdrnvl3', 0, 1, 0, NULL, 0, 0, '', '', 197),
(188, 35, 'olkd1nqgdorropfm8ghtvhjs42', 0, 1, 0, NULL, 0, 0, '', '', 198),
(189, 35, '48h2bcgdl2q52hb05cm2os4661', 0, 1, 0, NULL, 0, 0, '', '', 199),
(190, 35, '05qkgr30d0flgvj3uie7ss9mq5', 0, 1, 0, NULL, 0, 0, '', '', 200),
(191, 35, '776k67ul8tvim9l6vsbqqk0b57', 0, 1, 0, NULL, 0, 0, '', '', 201),
(192, 35, 'm6sctflkmkgjb758149o5hi1c4', 0, 1, 0, NULL, 0, 0, '', '', 202),
(193, 35, '8m0lj5p2iobmv975f84vqc9mf2', 0, 1, 0, NULL, 0, 0, '', '', 203),
(194, 35, 'rcfgfp6p5ms6i3sjr20hvmv7h1', 0, 1, 0, NULL, 0, 0, '', '', 204),
(195, 35, 'ab3fc57a6kqhve4nc1jns3cki3', 0, 1, 0, NULL, 0, 0, '', '', 205),
(196, 35, 'c9sr5vhbqbh7hg9ba1stem7cc4', 0, 1, 0, NULL, 0, 0, '', '', 206),
(197, 35, 'ekr7jd7ogg5a2nfdq4hlb96vb1', 0, 1, 0, NULL, 0, 0, '', '', 207),
(198, 35, 'p4eptik5r6ebadle8tt6q7ljq1', 0, 1, 0, NULL, 0, 0, '', '', 208),
(199, 35, '5mnmhsl40taf3s08fs6vpm9gd6', 0, 1, 0, NULL, 0, 0, '', '', 209),
(200, 35, '6h92ea01bs8sbs2s53819sknh2', 0, 1, 0, NULL, 0, 0, '', '', 210),
(201, 35, '5ga265oqcaot7lf19almqqva61', 0, 1, 0, NULL, 0, 0, '', '', 211),
(202, 35, 'uvbl0o6puf0pb9s0vp59u1a3a6', 0, 1, 0, NULL, 0, 0, '', '', 212),
(203, 35, 'q8kjapnfb3qmhd6e5sk9f9gno0', 0, 1, 0, NULL, 0, 0, '', '', 213),
(204, 35, 'gqnd88pi1f2tjvjsntgu16rap6', 0, 1, 0, NULL, 0, 0, '', '', 214),
(205, 35, '7mt85bju9tnmr4m2a0jssapmp5', 0, 1, 0, NULL, 0, 0, '', '', 215),
(206, 35, 'bpj44c7igbmrss4q61de3qgvn4', 0, 1, 0, NULL, 0, 0, '', '', 216),
(207, 35, 'r974jvtq9k3t44v2sdpi6pu5a1', 0, 1, 0, NULL, 0, 0, '', '', 217),
(208, 35, '4mnbmhm0515d98fcuqfat19on1', 0, 1, 0, NULL, 0, 0, '', '', 218),
(209, 35, 'uvhido1ldrercu6355l02ppvv6', 0, 2, 0, NULL, 0, 0, '', '', 219),
(210, 35, 'uvhido1ldrercu6355l02ppvv6', 0, 2, 0, NULL, 0, 0, '', '', 220),
(211, 35, 's3pe0gtsncp09hnjeslf0t47o6', 0, 1, 0, NULL, 0, 0, '', '', 221),
(212, 35, 'l2calsi2v2npjnmu94cqa6a3v1', 0, 2, 0, NULL, 0, 0, '', '', 222),
(213, 35, '62a7atu3elgnejlcimu9dfmdk2', 0, 1, 0, NULL, 0, 0, '', '', 223),
(214, 35, '1poardiuna4nb0fh0f7igigh87', 0, 1, 0, NULL, 0, 0, '', '', 224),
(215, 35, 'flu2m5m5p7u2u70q9tnomk1ij7', 0, 1, 0, NULL, 0, 0, '', '', 225),
(216, 35, '84e67b422kpcnc4m9su18h7ql0', 0, 1, 0, NULL, 0, 0, '', '', 226),
(217, 35, '9ppm6ussrobn8k3teqlen0stl0', 0, 2, 0, NULL, 0, 0, '', '', 227),
(218, 35, 'an7a42kmbma8c4ed45m1acm5p7', 0, 1, 0, NULL, 0, 0, '', '', 228),
(219, 35, '35de8k65hq3a6smt7dsl7is5k4', 0, 1, 0, NULL, 0, 0, '', '', 229),
(220, 35, 'i6o5qn1tmo0hpd1pmh66mlc3m3', 0, 1, 0, NULL, 0, 0, '', '', 230),
(221, 35, '6gpus1lokbminc7uchsba5uqr5', 0, 1, 0, NULL, 0, 0, '', '', 231),
(222, 35, 'q2hqbgf62etfliopelfcp4d0g2', 0, 1, 0, NULL, 0, 0, '', '', 232),
(223, 35, 'if2tptqb5al8841dheovvv56c3', 0, 1, 0, NULL, 0, 0, '', '', 233),
(224, 35, 'faqomqf7top8q6g1q08cam3jg7', 0, 1, 0, NULL, 0, 0, '', '', 234),
(225, 35, 'ntm67u7j217bk6aq55qms4vn76', 0, 1, 0, NULL, 0, 0, '', '', 235),
(226, 35, 'na9tb6bb2sl3irpihp1sqov071', 0, 1, 0, NULL, 0, 0, '', '', 236),
(227, 35, 'fjf1cgppcuk0pgnfrun9o43ha1', 0, 1, 0, NULL, 0, 0, '', '', 237),
(228, 35, 'dbe82j6vsd1rnstajett10rcu6', 0, 1, 0, NULL, 0, 0, '', '', 238),
(229, 35, 'orpimq6rvq67avqgf5t0hjeki6', 0, 1, 0, NULL, 0, 0, '', '', 239),
(230, 35, 'idbl2a43kdg489cebhlg4h8m07', 0, 1, 0, NULL, 0, 0, '', '', 240),
(231, 35, 'n3dnkvkhdh0m9ltcv2scctnm77', 0, 1, 0, NULL, 0, 0, '', '', 241),
(232, 35, 'vt9svmttd1s57ku4eqe81mf5u7', 0, 1, 0, NULL, 0, 0, '', '', 242),
(233, 35, 'uugv37dhr4i9n7m8bseq9vonv0', 0, 1, 0, NULL, 0, 0, '', '', 243),
(234, 35, 'fvrtmsdkrjnaqtpdcjnnopdpb5', 0, 1, 0, NULL, 0, 0, '', '', 244),
(235, 35, '5cmhg79co0uk6ljj3subqrfjs6', 0, 1, 0, NULL, 0, 0, '', '', 245),
(236, 35, 'qc08kbcer5htj3hchmo22vrnr3', 0, 1, 0, NULL, 0, 0, '', '', 246),
(237, 35, '0f1qbusauso5cehjuo10nlelo2', 0, 1, 0, NULL, 0, 0, '', '', 247),
(238, 35, 'ptno0ug6sjbdka76db41dirf80', 0, 1, 0, NULL, 0, 0, '', '', 248),
(239, 35, 'ptno0ug6sjbdka76db41dirf80', 0, 1, 0, NULL, 0, 0, '', '', 249),
(240, 35, 'ptno0ug6sjbdka76db41dirf80', 0, 1, 0, NULL, 0, 0, '', '', 250),
(241, 35, 'ptno0ug6sjbdka76db41dirf80', 0, 1, 0, NULL, 0, 0, '', '', 251),
(242, 35, '46r2ofvof59sacrp957imlevq6', 0, 1, 0, NULL, 0, 0, '', '', 252),
(243, 35, 'jeu3n2gqgukqb4a6im82qvv445', 0, 1, 0, NULL, 0, 0, '', '', 253),
(244, 35, 'e17mhc7vrn9nor3aqfmaugvo60', 0, 1, 0, NULL, 0, 0, '', '', 254),
(245, 35, '4ungmb43tum3khov3gv1lu1277', 0, 1, 0, NULL, 0, 0, '', '', 255),
(246, 35, 's64ohdko09ia5h9qgpftpillb2', 0, 1, 0, NULL, 0, 0, '', '', 256),
(247, 35, 'fe0fadgfg3hj22p0tnp4530bu4', 0, 1, 0, NULL, 0, 0, '', '', 257),
(248, 35, 'e8so1q9otkmo3bamq1jg41na15', 0, 1, 0, NULL, 0, 0, '', '', 258),
(249, 35, 'rn0d600stfta92csavbh004u26', 0, 1, 0, NULL, 0, 0, '', '', 259),
(250, 35, '6uu3kuqucb6sfo2listi4eb4b1', 0, 1, 0, NULL, 0, 0, '', '', 260),
(251, 35, 'kng44pqlp6kovabesgsutcqqe1', 0, 1, 0, NULL, 0, 0, '', '', 261),
(252, 35, '2mb57o9r7n11dftgpbe7kq1lo1', 0, 1, 0, NULL, 0, 0, '', '', 262),
(253, 35, '0hl523mpal49aaffgcqrs6k5o4', 0, 1, 0, NULL, 0, 0, '', '', 263),
(254, 35, 'tm9djpci5o64r09hifvk1qft14', 0, 2, 0, NULL, 0, 0, '', '', 264),
(255, 35, 'tm9djpci5o64r09hifvk1qft14', 0, 2, 0, NULL, 0, 0, '', '', 265),
(256, 35, 'tm9djpci5o64r09hifvk1qft14', 0, 2, 0, NULL, 0, 0, '', '', 266),
(257, 35, '07psbj987jkrqi2dbfc9tf0rj3', 0, 1, 0, NULL, 0, 0, '', '', 267),
(258, 35, '9922elgbcp21hmoe8fnl8qog00', 0, 1, 0, NULL, 0, 0, '', '', 268),
(259, 35, 'tv0jr1kndrhqhmgifvqj6dmkt0', 0, 1, 0, NULL, 0, 0, '', '', 269),
(260, 35, 's7p8vd2scrimcc8lqvstaecjr1', 0, 1, 0, NULL, 0, 0, '', '', 270),
(261, 35, 'nglohnlck41k20o0odq63sath5', 0, 1, 0, NULL, 0, 0, '', '', 271),
(262, 35, '063kd71l0vppn143hv148kkap3', 0, 1, 0, NULL, 0, 0, '', '', 272),
(263, 35, '3k3idgap2megot6tj64cj12tm4', 0, 1, 0, NULL, 0, 0, '', '', 273),
(264, 35, '32ss836eu2fdubbsmrsheo6ca1', 0, 1, 0, NULL, 0, 0, '', '', 274),
(265, 35, 'trkg82turoegbrqi0l0j3uct22', 0, 2, 0, NULL, 0, 0, '', '', 275),
(266, 35, 'lm4hnch9465retj0th7k7j52u0', 0, 1, 0, NULL, 0, 0, '', '', 276),
(267, 35, 'qf95qja396jtco7c01l1iam6g0', 0, 1, 0, NULL, 0, 0, '', '', 277),
(268, 35, '1b1u7e33q1fhaognpd3m412ga2', 0, 1, 0, NULL, 0, 0, '', '', 278),
(269, 35, 'ngtvtta53b4blmj0s4bbm73ge2', 0, 1, 0, NULL, 0, 0, '', '', 279),
(270, 35, 'llp51f64co5dfa08ls88nics65', 0, 1, 0, NULL, 0, 0, '', '', 280),
(271, 35, 'nl5osai8lspaa9b04vkeoh4cn1', 0, 1, 0, NULL, 0, 0, '', '', 281),
(272, 35, 'q2347gjdu26guj65233omaolt7', 0, 1, 0, NULL, 0, 0, '', '', 282),
(273, 35, 'q2347gjdu26guj65233omaolt7', 0, 1, 0, NULL, 0, 0, '', '', 283),
(274, 35, 'l81ami5njc1625c4gmdbd9f0d0', 0, 1, 0, NULL, 0, 0, '', '', 284),
(275, 35, 'rcmf54pbitmfa7qrijhm4f0l45', 0, 1, 0, NULL, 0, 0, '', '', 285),
(276, 35, 'qiivvtobqujr6ofqj2o0qqdc41', 0, 1, 0, NULL, 0, 0, '', '', 286),
(277, 35, 'nrsjnemd5j0lhdl80fmrrg4i26', 0, 1, 0, NULL, 0, 0, '', '', 287),
(278, 35, '02vqjbg7ab7me7td818sqe4ck0', 0, 1, 0, NULL, 0, 0, '', '', 288),
(279, 35, '02vqjbg7ab7me7td818sqe4ck0', 0, 1, 0, NULL, 0, 0, '', '', 289),
(280, 35, '3dnpb9ccie7mp2sauv0a1r52k2', 0, 1, 0, NULL, 0, 0, '', '', 290),
(281, 35, 'qp0vjnlor51ks3m4rbofepaqq5', 0, 1, 0, NULL, 0, 0, '', '', 291),
(282, 35, '88j97dea9e7s5o7hio5lvutm22', 0, 1, 0, NULL, 0, 0, '', '', 292),
(283, 35, 'eufvqi7vifevmf27v7o3oqcur4', 0, 1, 0, NULL, 0, 0, '', '', 293),
(284, 35, 'aod767m5vicnuv5veuh9hhi4q4', 0, 1, 0, NULL, 0, 0, '', '', 294),
(285, 35, 'rsh6151rkkqat6o8r5l69rq7i4', 0, 1, 0, NULL, 0, 0, '', '', 295),
(286, 35, '8co7s300gimltipfh969hvacd0', 0, 1, 0, NULL, 0, 0, '', '', 296),
(287, 35, 'tcn0m9c5a2emrvvhncvrk19n74', 0, 1, 0, NULL, 0, 0, '', '', 297),
(288, 35, 'a3jqg0qgc6avpb9p4q8lug39s1', 0, 1, 0, NULL, 0, 0, '', '', 298),
(289, 35, 'shnapq0utndiko0neokr4ui4g1', 0, 1, 0, NULL, 0, 0, '', '', 299),
(290, 35, 'm9g48nsr4nresrfinspfjjqmg1', 0, 1, 0, NULL, 0, 0, '', '', 300),
(291, 35, 'grir4tnt7m6c9vi1q1hivkc955', 0, 1, 0, NULL, 0, 0, '', '', 301),
(292, 35, '63udavagb3p2pso58ro2khusl1', 0, 1, 0, NULL, 0, 0, '', '', 302),
(293, 35, 'o2h3ec6ed5hd1r61l2a3rh9sg4', 0, 1, 0, NULL, 0, 0, '', '', 303),
(294, 35, 'k5p8jh5cs99l09cukpkr6196u2', 0, 1, 0, NULL, 0, 0, '', '', 304),
(295, 31, 'd8unf93hi37jig2ok6s37131p4', 119000, 1, 119000, NULL, 0, 0, '', '', 305),
(296, 35, 'apb3c0a1pmm30bdj4mebmrcvn6', 0, 1, 0, NULL, 0, 0, '', '', 306),
(297, 35, '5dmcjrek7hgukgnug94q5j4nc3', 0, 1, 0, NULL, 0, 0, '', '', 307),
(298, 35, '0dt3l552miks7m09ca13j79kr5', 0, 1, 0, NULL, 0, 0, '', '', 308),
(299, 35, 'rcqp6e8t3k3t1h6qolthlpt7o3', 0, 1, 0, NULL, 0, 0, '', '', 309),
(300, 35, '44jvi4385le424c3ufcaotekv3', 0, 1, 0, NULL, 0, 0, '', '', 310),
(301, 35, 'oa9ekoj1t3b8lq4b0rqkh9krv4', 0, 2, 0, NULL, 0, 0, '', '', 311),
(302, 35, 'us37slej8vmn4tfampkafmhnh3', 0, 1, 0, NULL, 0, 0, '', '', 312),
(303, 35, 'ifvqe8q05urdi950d8qtnv1a01', 0, 1, 0, NULL, 0, 0, '', '', 313),
(304, 35, '6rdegd3iai759r7ua89mqpigo2', 0, 1, 0, NULL, 0, 0, '', '', 314),
(305, 35, 'vq8cu63na5iuuqjfrlhb1ulkp1', 0, 1, 0, NULL, 0, 0, '', '', 315),
(306, 35, '3ql4c9iu1tdg5l986fmqadeqs1', 0, 1, 0, NULL, 0, 0, '', '', 316),
(307, 35, '6vq2o302gp5pfdddjcfusbb6c6', 0, 1, 0, NULL, 0, 0, '', '', 317),
(308, 35, '0cpcd3epr5vc96lgrlo8v2vs70', 0, 1, 0, NULL, 0, 0, '', '', 318),
(309, 35, 'gf32t8425du2h5ifu1jpk3mtj6', 0, 1, 0, NULL, 0, 0, '', '', 319),
(310, 35, 'pqmcluea6p2smv60lnijkgn9e3', 0, 1, 0, NULL, 0, 0, '', '', 320),
(311, 35, '4tu3em45c6eqveou6ide071u70', 0, 1, 0, NULL, 0, 0, '', '', 321),
(312, 35, '3da1mmlrsf3ghmnbvl6nnsa1e0', 0, 1, 0, NULL, 0, 0, '', '', 322),
(313, 35, 'b78l3b8lq0hofmcp4cpdibbss2', 0, 1, 0, NULL, 0, 0, '', '', 323),
(314, 35, 'ls9mbl6r85mcjqkja9bio4ujh0', 0, 1, 0, NULL, 0, 0, '', '', 324),
(315, 35, '4nmabk3sb9mudjtnr5e84gbfj2', 0, 1, 0, NULL, 0, 0, '', '', 325);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `color`
--

CREATE TABLE `color` (
  `color_id` bigint(20) NOT NULL,
  `color_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color_price` double DEFAULT NULL,
  `color_stock` text COLLATE utf8_unicode_ci,
  `color_img` text COLLATE utf8_unicode_ci,
  `product_id` int(11) DEFAULT NULL,
  `friendly_url` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `color`
--

INSERT INTO `color` (`color_id`, `color_name`, `color_price`, `color_stock`, `color_img`, `product_id`, `friendly_url`) VALUES
(4, 'Làm chủ Excel qua 10 thao tác đơn giản', NULL, '<iframe id=\"player\" style=\"position: relative;top: -48px;\" width=\"800\" height=\"600\" src=\"https://www.youtube.com/embed/-l80PrV1vAA?rel=0&modestbranding=1&showinfo=0&enablejsapi=1\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', NULL, 27, 'lam-chu-excel-qua-10-thao-tac-don-gian-bai-1'),
(5, 'Làm chủ Excel qua 10 thao tác đơn giản - Part 1', NULL, '<iframe id=\"player\" onclick=\"disableRightClick(event)\" style=\"position: relative;\" width=\"800\" height=\"600\" src=\"https://www.youtube.com/embed/-l80PrV1vAA?rel=0&showinfo=0&modestbranding=1&enablejsapi=1\" frameborder=\"0\" allow=\"autoplay; encrypted-media\"></iframe>', NULL, 31, 'lam-chu-excel-qua-10-thao-tac-don-gian-part-1'),
(7, 'Học Excel cơ bản | #2 Hướng dẫn đặt mật khẩu Excel', NULL, '<iframe id=\"player\" style=\"position: relative;top: -48px;\" width=\"800\" height=\"600\" src=\"https://www.youtube.com/embed/dXCOiBall_Y?rel=0&modestbranding=1&showinfo=0&enablejsapi=1\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', NULL, 27, 'hoc-excel-co-ban-2-huong-dan-dat-mat-khau-excel'),
(9, 'Chỉnh lỗi định dạng số', NULL, '<iframe id=\"player\" style=\"position: relative;top: -48px;\" width=\"800\" height=\"600\" src=\"https://www.youtube.com/embed/XmvKw61FvdM?rel=0&showinfo=0&modestbranding=1&enablejsapi=1\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', NULL, 27, 'chinh-loi-dinh-dang-so'),
(11, 'Tạo cảnh báo mã trùng nhau', NULL, '<iframe id=\"player\" style=\"position: relative;top: -55px;\" width=\"900\" height=\"700\" src=\"https://www.youtube.com/embed/YdO7-drq6cU?rel=0&showinfo=0&modestbranding=1&enablejsapi=1\" frameborder=\"0\" allow=\"autoplay; encrypted-media\"></iframe>', NULL, 34, 'tao-canh-bao-ma-trung-nhau'),
(12, 'Tô màu dữ liệu trùng nhau', NULL, '<iframe id=\"player\" style=\"position: relative;top: -48px;\" width=\"800\" height=\"600\" src=\"https://www.youtube.com/embed/eBe3zipkA2I?rel=0&showinfo=0&modestbranding=1&enablejsapi=1\" frameborder=\"0\" allow=\"autoplay; encrypted-media\"></iframe>', NULL, 34, 'to-mau-du-lieu-trung-nhau'),
(13, 'Tham chiếu dữ liệu', NULL, '<iframe width=\"100%\" width=\"100%\" height=\"450\" src=\"https://www.youtube.com/embed/CG5lj9A-6P0?playlist=NmkL-Empixk&loop=1&rel=0&cc_load_policy=1&showinfo=0&loop=1&modestbranding=1&controls=1&fs=1&autoplay=1&wmode=Opaque&enablejsapi=1\" frameborder=\"0\" allow=\"autoplay; encrypted-media; fullscreen\"></iframe>', NULL, 35, 'tham-chieu-du-lieu'),
(16, 'Sử dụng hàm', NULL, '<iframe width=\"100%\" width=\"100%\" height=\"450\" src=\"https://www.youtube.com/embed/-ULYyO08RMo?playlist=NmkL-Empixk&loop=1&rel=0&cc_load_policy=1&showinfo=0&loop=1&modestbranding=1&controls=1&fs=1&autoplay=1&wmode=Opaque&enablejsapi=1\" frameborder=\"0\" allow=\"autoplay; encrypted-media; fullscreen\"></iframe>', NULL, 35, 'su-dung-ham'),
(17, 'Nhóm hàm Sum, Count, Counta', NULL, '<iframe width=\"100%\" width=\"100%\" height=\"450\" src=\"https://www.youtube.com/embed/OUGuGMrL4Qw?playlist=NmkL-Empixk&loop=1&rel=0&cc_load_policy=1&showinfo=0&loop=1&modestbranding=1&controls=1&fs=1&autoplay=1&wmode=Opaque&enablejsapi=1\" frameborder=\"0\" allow=\"autoplay; encrypted-media; fullscreen\"></iframe>', NULL, 35, 'nhom-ham-sum-count-counta'),
(21, 'Nhóm hàm Rank, Rank.AVG, Rank.AQ', NULL, '<iframe width=\"100%\" width=\"100%\" height=\"450\" src=\"https://www.youtube.com/embed/eyXRN2USZn8?playlist=NmkL-Empixk&loop=1&rel=0&cc_load_policy=1&showinfo=0&loop=1&modestbranding=1&controls=1&fs=1&autoplay=1&wmode=Opaque&enablejsapi=1\" frameborder=\"0\" allow=\"autoplay; encrypted-media; fullscreen\"></iframe>', NULL, 35, 'nhom-ham-rank-rankavg-rankaq'),
(22, 'Nhóm hàm Average-AverageA; Column-Columns', NULL, '<iframe width=\"100%\" width=\"100%\" height=\"450\" src=\"https://www.youtube.com/embed/d40aWmg1rxA?playlist=NmkL-Empixk&loop=1&rel=0&cc_load_policy=1&showinfo=0&loop=1&modestbranding=1&controls=1&fs=1&autoplay=1&wmode=Opaque&enablejsapi=1\" frameborder=\"0\" allow=\"autoplay; encrypted-media; fullscreen\"></iframe>', NULL, 35, 'nhom-ham-average-averagea-column-columns'),
(23, 'Nhóm hàm Sumif, Countif', NULL, '<iframe width=\"100%\" width=\"100%\" height=\"450\" src=\"https://www.youtube.com/embed/zPMWVansQdY?playlist=NmkL-Empixk&loop=1&rel=0&cc_load_policy=1&showinfo=0&loop=1&modestbranding=1&controls=1&fs=1&autoplay=1&wmode=Opaque&enablejsapi=1\" frameborder=\"0\" allow=\"autoplay; encrypted-media; fullscreen\"></iframe>', NULL, 35, 'nhom-ham-sumif-countif'),
(24, 'Hàm tìm kiếm Vlookup', NULL, '<iframe width=\"100%\" width=\"100%\" height=\"450\" src=\"https://www.youtube.com/embed/jnFlqManETg?playlist=NmkL-Empixk&loop=1&rel=0&cc_load_policy=1&showinfo=0&loop=1&modestbranding=1&controls=1&fs=1&autoplay=1&wmode=Opaque&enablejsapi=1\" frameborder=\"0\" allow=\"autoplay; encrypted-media; fullscreen\"></iframe>', NULL, 35, 'ham-tim-kiem-vlookup'),
(25, 'Ứng dụng hàm VLOOKUP và Scroll bar control tạo biểu đồ tiến độ động', NULL, '<iframe width=\"100%\" width=\"100%\" height=\"450\" src=\"https://www.youtube.com/embed/p5G_7mCqnzM?playlist=NmkL-Empixk&loop=1&rel=0&cc_load_policy=1&showinfo=0&loop=1&modestbranding=1&controls=1&fs=1&autoplay=1&wmode=Opaque&enablejsapi=1\" frameborder=\"0\" allow=\"autoplay; encrypted-media; fullscreen\"></iframe>', NULL, 35, 'ung-dung-ham-vlookup-va-scroll-bar-control-tao-bieu-do-tien-do-dong'),
(26, 'Cách đưa dữ liệu vào ô trống bằng hàm IF, AND, COUNTA Hoặc GO TO SPECIAL, CTRL+ENTER', NULL, '<iframe width=\"100%\" width=\"100%\" height=\"450\" src=\"https://www.youtube.com/embed/7Dr3kJIcmtA?playlist=NmkL-Empixk&loop=1&rel=0&cc_load_policy=1&showinfo=0&loop=1&modestbranding=1&controls=1&fs=1&autoplay=1&wmode=Opaque&enablejsapi=1\" frameborder=\"0\" allow=\"autoplay; encrypted-media; fullscreen\"></iframe>\r\n<a>Lưu ý: Xem hướng dẫn Hàm IF ở Bài 10</a>\r\n<a> và Hàm AND ở Bài 11</a>', NULL, 35, 'cach-dua-du-lieu-vao-o-trong-bang-ham-if-and-counta-hoac-go-to-special-ctrlenter'),
(27, 'Hàm điều kiện IF', NULL, '<iframe width=\"100%\" width=\"100%\" height=\"450\" src=\"https://www.youtube.com/embed/5iaFhZ1dYxU?playlist=NmkL-Empixk&loop=1&rel=0&cc_load_policy=1&showinfo=0&loop=1&modestbranding=1&controls=1&fs=1&autoplay=1&wmode=Opaque&enablejsapi=1\" frameborder=\"0\" allow=\"autoplay; encrypted-media; fullscreen\"></iframe>\r\n<a href=\"https://drive.google.com/file/d/1DL8en1MsTib1-MOHtJfMJ63F1X1ggRa7/view\">Tải file bài tập!</a>', NULL, 35, 'ham-dieu-kien-if'),
(28, 'Hàm AND-OR-NOT và kết hợp với hàm IF', NULL, '<iframe width=\"100%\" width=\"100%\" height=\"450\" src=\"https://www.youtube.com/embed/tTlZcQ8zlx0?playlist=NmkL-Empixk&loop=1&rel=0&cc_load_policy=1&showinfo=0&loop=1&modestbranding=1&controls=1&fs=1&autoplay=1&wmode=Opaque&enablejsapi=1\" frameborder=\"0\" allow=\"autoplay; encrypted-media; fullscreen\"></iframe>', NULL, 35, 'ham-and-or-not-va-ket-hop-voi-ham-if'),
(29, 'Nhóm hàm Weekday, Weeknum', NULL, '<iframe width=\"100%\" width=\"100%\" height=\"450\" src=\"https://www.youtube.com/embed/HtE0FGoivp4?playlist=NmkL-Empixk&loop=1&rel=0&cc_load_policy=1&showinfo=0&loop=1&modestbranding=1&controls=1&fs=1&autoplay=1&wmode=Opaque&enablejsapi=1\" frameborder=\"0\" allow=\"autoplay; encrypted-media; fullscreen\"></iframe>', NULL, 35, 'nhom-ham-weekday-weeknum'),
(30, 'Nhóm hàm INT, MODE', NULL, '<iframe width=\"100%\" width=\"100%\" height=\"450\" src=\"https://www.youtube.com/embed/UWaMAiiN6Uk?playlist=NmkL-Empixk&loop=1&rel=0&cc_load_policy=1&showinfo=0&loop=1&modestbranding=1&controls=1&fs=1&autoplay=1&wmode=Opaque&enablejsapi=1\" frameborder=\"0\" allow=\"autoplay; encrypted-media; fullscreen\"></iframe>', NULL, 35, 'nhom-ham-int-mode'),
(31, 'Hàm Substitute và ứng dụng tách họ tên', NULL, '<iframe width=\"100%\" width=\"100%\" height=\"450\" src=\"https://www.youtube.com/embed/ebd1n44b_20?playlist=NmkL-Empixk&loop=1&rel=0&cc_load_policy=1&showinfo=0&loop=1&modestbranding=1&controls=1&fs=1&autoplay=1&wmode=Opaque&enablejsapi=1\" frameborder=\"0\" allow=\"autoplay; encrypted-media; fullscreen\"></iframe>', NULL, 35, 'ham-substitute-va-ung-dung-tach-ho-ten'),
(32, 'Định dạng ngày tháng chuẩn trong Excel', NULL, '<iframe width=\"100%\" width=\"100%\" height=\"450\" src=\"https://www.youtube.com/embed/J3Do4klIe8A?playlist=NmkL-Empixk&loop=1&rel=0&cc_load_policy=1&showinfo=0&loop=1&modestbranding=1&controls=1&fs=1&autoplay=1&wmode=Opaque&enablejsapi=1\" frameborder=\"0\" allow=\"autoplay; encrypted-media; fullscreen\"></iframe>', NULL, 35, 'dinh-dang-ngay-thang-chuan-trong-excel'),
(33, 'Phát hiện và sửa lại dữ liệu ngày tháng sai trong Excel', NULL, '<iframe width=\"100%\" width=\"100%\" height=\"450\" src=\"https://www.youtube.com/embed/KiQEXgsvqr8?playlist=NmkL-Empixk&loop=1&rel=0&cc_load_policy=1&showinfo=0&loop=1&modestbranding=1&controls=1&fs=1&autoplay=1&wmode=Opaque&enablejsapi=1\" frameborder=\"0\" allow=\"autoplay; encrypted-media; fullscreen\"></iframe>', NULL, 35, 'phat-hien-va-sua-lai-du-lieu-ngay-thang-sai-trong-excel'),
(34, 'Hàm Value và chỉnh lỗi định dạng số bằng Multiply', NULL, '<iframe width=\"100%\" width=\"100%\" height=\"450\" src=\"https://www.youtube.com/embed/XmvKw61FvdM?playlist=NmkL-Empixk&loop=1&rel=0&cc_load_policy=1&showinfo=0&loop=1&modestbranding=1&controls=1&fs=1&autoplay=1&wmode=Opaque&enablejsapi=1\" frameborder=\"0\" allow=\"autoplay; encrypted-media; fullscreen\"></iframe>', NULL, 35, 'ham-value-va-chinh-loi-dinh-dang-so-bang-multiply'),
(35, 'Chức năng Paste Multiply', NULL, '<iframe width=\"100%\" width=\"100%\" height=\"450\" src=\"https://www.youtube.com/embed/RmZ2a0fDgcM?playlist=NmkL-Empixk&loop=1&rel=0&cc_load_policy=1&showinfo=0&loop=1&modestbranding=1&controls=1&fs=1&autoplay=1&wmode=Opaque&enablejsapi=1\" frameborder=\"0\" allow=\"autoplay; encrypted-media; fullscreen\"></iframe>', NULL, 35, 'chuc-nang-paste-multiply'),
(36, 'Sử dụng Goal Seek xác định Điểm hòa vốn', NULL, '<iframe width=\"100%\" width=\"100%\" height=\"450\" src=\"https://www.youtube.com/embed/cwV24JQ7Bi8?playlist=NmkL-Empixk&loop=1&rel=0&cc_load_policy=1&showinfo=0&loop=1&modestbranding=1&controls=1&fs=1&autoplay=1&wmode=Opaque&enablejsapi=1\" frameborder=\"0\" allow=\"autoplay; encrypted-media; fullscreen\"></iframe>', NULL, 35, 'su-dung-goal-seek-xac-dinh-diem-hoa-von'),
(37, 'Giá trị xấp xỉ của Goal Seek', NULL, '<iframe width=\"100%\" width=\"100%\" height=\"450\" src=\"https://www.youtube.com/embed/pusdozLpqbg?playlist=NmkL-Empixk&loop=1&rel=0&cc_load_policy=1&showinfo=0&loop=1&modestbranding=1&controls=1&fs=1&autoplay=1&wmode=Opaque&enablejsapi=1\" frameborder=\"0\" allow=\"autoplay; encrypted-media; fullscreen\"></iframe>', NULL, 35, 'gia-tri-xap-xi-cua-goal-seek'),
(38, 'Xen kẽ dòng trắng vào các dòng dữ liệu có sẵn', NULL, '<iframe width=\"100%\" width=\"100%\" height=\"450\" src=\"https://www.youtube.com/embed/F4EHXD7SJ-c?playlist=NmkL-Empixk&loop=1&rel=0&cc_load_policy=1&showinfo=0&loop=1&modestbranding=1&controls=1&fs=1&autoplay=1&wmode=Opaque&enablejsapi=1\" frameborder=\"0\" allow=\"autoplay; encrypted-media; fullscreen\"></iframe>', NULL, 35, 'xen-ke-dong-trang-vao-cac-dong-du-lieu-co-san'),
(39, 'Ứng dụng các hàm cơ bản (VLOOKUP, HLOOKUP, RIGHT,...)', NULL, '<iframe width=\"100%\" width=\"100%\" height=\"450\" src=\"https://www.youtube.com/embed/tLcAa1GAVz8?playlist=NmkL-Empixk&loop=1&rel=0&cc_load_policy=1&showinfo=0&loop=1&modestbranding=1&controls=1&fs=1&autoplay=1&wmode=Opaque&enablejsapi=1\" frameborder=\"0\" allow=\"autoplay; encrypted-media; fullscreen\"></iframe>', NULL, 35, 'ung-dung-cac-ham-co-ban-vlookup-hlookup-right'),
(40, 'Insert table trong Excel và các tuỳ chỉnh', NULL, '<iframe width=\"100%\" width=\"100%\" height=\"450\" src=\"https://www.youtube.com/embed/-I5eeM9DVq0?playlist=NmkL-Empixk&loop=1&rel=0&cc_load_policy=1&showinfo=0&loop=1&modestbranding=1&controls=1&fs=1&autoplay=1&wmode=Opaque&enablejsapi=1\" frameborder=\"0\" allow=\"autoplay; encrypted-media; fullscreen\"></iframe>', NULL, 35, 'insert-table-trong-excel-va-cac-tuy-chinh'),
(41, 'Lọc dự liệu bằng Advanced', NULL, '<iframe width=\"100%\" width=\"100%\" height=\"450\" src=\"https://www.youtube.com/embed/SdxWBKChIsk?playlist=NmkL-Empixk&loop=1&rel=0&cc_load_policy=1&showinfo=0&loop=1&modestbranding=1&controls=1&fs=1&autoplay=1&wmode=Opaque&enablejsapi=1\" frameborder=\"0\" allow=\"autoplay; encrypted-media; fullscreen\"></iframe>', NULL, 35, 'loc-du-lieu-bang-advanced'),
(42, 'Cách ẩn dữ liệu trong Excel', NULL, '<iframe width=\"100%\" width=\"100%\" height=\"450\" src=\"https://www.youtube.com/embed/8fy6RDFE33A?playlist=NmkL-Empixk&loop=1&rel=0&cc_load_policy=1&showinfo=0&loop=1&modestbranding=1&controls=1&fs=1&autoplay=1&wmode=Opaque&enablejsapi=1\" frameborder=\"0\" allow=\"autoplay; encrypted-media; fullscreen\"></iframe>', NULL, 35, 'cach-an-du-lieu-trong-excel');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment_user`
--

CREATE TABLE `comment_user` (
  `comment_id` int(11) NOT NULL,
  `comment_user` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `comment_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `comment_date` date NOT NULL,
  `state` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `comment_user`
--

INSERT INTO `comment_user` (`comment_id`, `comment_user`, `comment_content`, `comment_date`, `state`, `product_id`) VALUES
(2, 'Nguyễn Việt Hưng', 'Bài học rất ok', '2018-08-20', 1, 0),
(3, 'Forever Love', 'Gọi vào số 01672523165 và tư vấn cho mình khóa học nhé! cảm ơn bạn', '2018-08-20', 1, 0),
(4, 'Forever Love', 'Gọi vào số 01672523165 và tư vấn cho mình khóa học nhé! cảm ơn bạn', '2018-08-20', 1, 0),
(5, 'Thành', 'Bài học bằng tiến anh à anh/chị?', '2018-12-03', 0, 0),
(6, 'Linh', 'Đăng ký học như thế nào ạ?', '2018-12-09', 0, 27),
(7, 'Tuấn', 'test', '2018-12-22', 1, 27),
(8, 'Minh', 'Cảm ơn bài học rất hay!', '2018-12-22', 1, 28),
(9, '854616', 'Instatabs Viagra  <a href=http://gnplls.com>levitra 20 mg orodispersibile</a> Cialis 20 Mg Precio Farmacia Cialis Orosolubile  ', '2019-02-19', 0, 32),
(10, '492689', 'Levitra Dopo Mangiato  <a href=http://addrall.com>alli pills amazon</a> Buy Silagra Dove Comprare Cialis Buy Onadron  ', '2019-02-23', 0, 32),
(11, '915997', 'Does Cephalexin Have Sulfa In It  <a href=http://cialicheap.com>cialis no prescription</a> Levitra Info Cialis 20 Mg Wechselwirkungen  ', '2019-03-05', 0, 32);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config`
--

CREATE TABLE `config` (
  `config_id` int(11) NOT NULL,
  `web_name` text COLLATE utf8_unicode_ci,
  `web_meta` text COLLATE utf8_unicode_ci,
  `web_des` text COLLATE utf8_unicode_ci,
  `web_keyword` text COLLATE utf8_unicode_ci,
  `web_logo` text COLLATE utf8_unicode_ci,
  `web_hotline` text COLLATE utf8_unicode_ci,
  `web_phone` text COLLATE utf8_unicode_ci,
  `web_email` text COLLATE utf8_unicode_ci,
  `content_home1` text COLLATE utf8_unicode_ci,
  `content_home2` text COLLATE utf8_unicode_ci,
  `content_home3` text COLLATE utf8_unicode_ci,
  `content_home4` text COLLATE utf8_unicode_ci,
  `content_home5` text COLLATE utf8_unicode_ci,
  `content_home6` text COLLATE utf8_unicode_ci,
  `content_home7` text COLLATE utf8_unicode_ci,
  `content_home8` text COLLATE utf8_unicode_ci,
  `content_home9` text COLLATE utf8_unicode_ci,
  `content_home10` text COLLATE utf8_unicode_ci,
  `facebook` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `google` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `google_map` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `icon_web` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `slideshow_home` text COLLATE utf8_unicode_ci,
  `banner1` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `banner2` varchar(300) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `config`
--

INSERT INTO `config` (`config_id`, `web_name`, `web_meta`, `web_des`, `web_keyword`, `web_logo`, `web_hotline`, `web_phone`, `web_email`, `content_home1`, `content_home2`, `content_home3`, `content_home4`, `content_home5`, `content_home6`, `content_home7`, `content_home8`, `content_home9`, `content_home10`, `facebook`, `google`, `twitter`, `google_map`, `youtube`, `icon_web`, `slideshow_home`, `banner1`, `banner2`) VALUES
(1, 'Học Excel 123 - Tiết Kiệm Thời Gian, Làm Việc Hiệu Quả, Học Excel Trực Tuyến', '', 'Đến với hocexcel123.com mở rộng cơ hội việc làm tốt hơn!', '', 'ANH3.png', '', '', 'hocexcel123.com', 'Học trực tuyến', 'khoahoc.hocexcel123@gmail.com', '0961 557 052 ', 'HỌC EXCEL 123 TIẾT KIỆM THỜI GIAN LÀM VIỆC HIỆU QUẢ', '', '', '', '', '', '', 'https://www.facebook.com/www.hocexcel123/', 'https://plus.google.com/discover', 'twitter', '', 'https://www.youtube.com/c/H%E1%BB%8DcExcel123', 'anhd1.png', '[\"{\\\"image\\\":\\\"Picture5.png\\\"}\",\"{\\\"image\\\":\\\"hocexcel123.mp4\\\"}\"]', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config_languages`
--

CREATE TABLE `config_languages` (
  `id` int(11) NOT NULL,
  `config_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_name` text COLLATE utf8_unicode_ci,
  `lang_web_meta` text COLLATE utf8_unicode_ci,
  `lang_web_des` text COLLATE utf8_unicode_ci,
  `lang_web_keyword` text COLLATE utf8_unicode_ci,
  `lang_web_hotline` text COLLATE utf8_unicode_ci,
  `lang_web_phone` text COLLATE utf8_unicode_ci,
  `lang_web_email` text COLLATE utf8_unicode_ci,
  `lang_content_home1` text COLLATE utf8_unicode_ci,
  `lang_content_home2` text COLLATE utf8_unicode_ci,
  `lang_content_home3` text COLLATE utf8_unicode_ci,
  `lang_content_home4` text COLLATE utf8_unicode_ci,
  `lang_content_home5` text COLLATE utf8_unicode_ci,
  `lang_content_home6` text COLLATE utf8_unicode_ci,
  `lang_content_home7` text COLLATE utf8_unicode_ci,
  `lang_content_home8` text COLLATE utf8_unicode_ci,
  `lang_content_home9` text COLLATE utf8_unicode_ci,
  `lang_content_home10` text COLLATE utf8_unicode_ci,
  `facebook` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `google` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `google_map` text COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(20000) COLLATE utf8_unicode_ci NOT NULL,
  `icon_web` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `edit_state` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `config_languages`
--

INSERT INTO `config_languages` (`id`, `config_id`, `languages_code`, `lang_web_name`, `lang_web_meta`, `lang_web_des`, `lang_web_keyword`, `lang_web_hotline`, `lang_web_phone`, `lang_web_email`, `lang_content_home1`, `lang_content_home2`, `lang_content_home3`, `lang_content_home4`, `lang_content_home5`, `lang_content_home6`, `lang_content_home7`, `lang_content_home8`, `lang_content_home9`, `lang_content_home10`, `facebook`, `google`, `twitter`, `google_map`, `youtube`, `icon_web`, `edit_state`) VALUES
(1, 1, 'vn', 'Học Excel 123 - Tiết Kiệm Thời Gian, Làm Việc Hiệu Quả, Học Excel Trực Tuyến', '', 'Đến với hocexcel123.com mở rộng cơ hội việc làm tốt hơn!', '', '', '', 'hocexcel123.com', 'Học trực tuyến', 'khoahoc.hocexcel123@gmail.com', '0961 557 052 ', 'HỌC EXCEL 123 TIẾT KIỆM THỜI GIAN LÀM VIỆC HIỆU QUẢ', '', '', '', '', '', '', 'https://www.facebook.com/www.hocexcel123/', 'https://plus.google.com/discover', 'twitter', '<p><iframe frameborder=\"0\" height=\"450\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d59587.97785448771!2d105.80194413492788!3d21.02273601629448!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab9bd9861ca1%3A0xe7887f7b72ca17a9!2zSGFub2ksIEhvw6BuIEtp4bq_bSwgSGFub2k!5e0!3m2!1sen!2s!4v1513235284242\" style=\"border:0\" width=\"600\"></iframe></p>\r\n', 'https://www.youtube.com/c/H%E1%BB%8DcExcel123', '', 1),
(2, 1, 'en', '', '', '', '', '', '', '', 'V-ONION Organic for your family', 'banhang@rio.net.vn', '+84 971 765 775', 'Số 12 ngõ 5, Tân Mỹ, P.Mỹ Đình 1, Q.Nam Từ Liêm, Hà Nội', 'Our factory start to operate in 2012, selling to trading companies to bring cargo to foreign countries. And in 2015, we establish our own company to export to customer directly. \r\nOur plywood is exported to Thailand, Indonesia, Korea, Malaysia, Taiwan and other countries.\r\n', 'MAIN PRODUCTS', 'Plywood, Core Veneer, Film faced plywood, Finger Joint , Sawn timber', 'CLIENTS - PARTNERS', 'TIMBER RELATED STORIES', '', '', '', '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `currency`
--

CREATE TABLE `currency` (
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_name` text COLLATE utf8_unicode_ci,
  `currency_exchange_rate` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `languages`
--

CREATE TABLE `languages` (
  `languages_id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `languages_name` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `languages`
--

INSERT INTO `languages` (`languages_id`, `languages_code`, `languages_name`) VALUES
(1, 'vn', 'Tiếng Việt'),
(2, 'en', 'English');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lien_he`
--

CREATE TABLE `lien_he` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(500) CHARACTER SET utf8 NOT NULL,
  `comment` mediumtext CHARACTER SET utf8 NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `lien_he`
--

INSERT INTO `lien_he` (`id`, `name`, `email`, `phone`, `address`, `comment`, `time`) VALUES
(18, 'Nguyễn Việt Hưng', 'viethung95cute@gmail.com', '', '', 'sdfgsdfg', '2018-05-02 12:01:44'),
(19, 'Việt Hưng', 'viethung95cute@gmail.com', '1672523165', '', 'Tesst  Liên hệ lần 1 ^_^ -_- :D :v :))', '2018-05-07 02:40:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_name` text COLLATE utf8_unicode_ci,
  `menu_sort_order` int(11) DEFAULT '0',
  `menu_type_id` int(11) DEFAULT NULL,
  `menu_url` text COLLATE utf8_unicode_ci,
  `productcat_id` int(11) DEFAULT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `news_id` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `menu_parent` int(11) NOT NULL DEFAULT '0',
  `servicecat_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `state_menuHeader` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_name`, `menu_sort_order`, `menu_type_id`, `menu_url`, `productcat_id`, `newscat_id`, `product_id`, `page_id`, `news_id`, `state`, `menu_parent`, `servicecat_id`, `service_id`, `state_menuHeader`) VALUES
(114, 'VBA EXCEL', 0, 3, '', 232, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(194, 'EXCEL NÂNG CAO', 2, 3, '', 239, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(205, 'EXCEL CƠ BẢN', 1, 3, '', 240, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(216, 'EXCEL KẾ TOÁN', 0, 3, '', 238, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(218, 'POWERPOINT', 0, 3, '', 237, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(220, 'ACCA', 2, 3, '', 236, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(221, 'GOOGLE SHEET', 0, 3, '', 235, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(222, 'WORD', 0, 3, '', 243, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(223, 'MOS', 0, 3, '', 244, 0, 0, 0, 0, 1, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_languages`
--

CREATE TABLE `menu_languages` (
  `id` bigint(20) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang_menu_name` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `urlFriendly_menu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_languages`
--

INSERT INTO `menu_languages` (`id`, `languages_code`, `lang_menu_name`, `edit_state`, `urlFriendly_menu`, `menu_id`) VALUES
(205, 'vn', 'VBA EXCEL', 1, '', 114),
(206, 'en', 'Home', 1, '', 114),
(365, 'vn', 'EXCEL NÂNG CAO', 1, '', 194),
(366, 'en', 'Product', 1, '', 194),
(387, 'vn', 'EXCEL CƠ BẢN', 1, '', 205),
(388, 'en', 'Introduce', 1, '', 205),
(409, 'vn', 'EXCEL KẾ TOÁN', 0, '', 216),
(410, 'en', 'EXCEL KẾ TOÁN', 0, '', 216),
(413, 'vn', 'POWERPOINT', 0, '', 218),
(414, 'en', 'POWERPOINT', 0, '', 218),
(417, 'vn', 'ACCA', 0, '', 220),
(418, 'en', 'ACCA', 0, '', 220),
(419, 'vn', 'GOOGLE SHEET', 0, '', 221),
(420, 'en', 'GOOGLE SHEET', 0, '', 221),
(421, 'vn', 'WORD', 0, '', 222),
(422, 'en', 'WORD', 0, '', 222),
(423, 'vn', 'MOS', 0, '', 223),
(424, 'en', 'MOS', 0, '', 223);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_type`
--

CREATE TABLE `menu_type` (
  `menu_type_id` int(11) NOT NULL,
  `menu_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_type`
--

INSERT INTO `menu_type` (`menu_type_id`, `menu_type_name`, `first_url`) VALUES
(1, 'Trang chủ', ''),
(2, 'Tất cả sản phẩm', 'san-pham'),
(3, 'Danh mục sản phẩm', NULL),
(4, 'Sản phẩm cụ thể', NULL),
(5, 'Danh mục tin tức', NULL),
(6, 'Tất cả bài tin tức', ''),
(7, 'Bài viết tin tức', NULL),
(8, 'Địa chỉ web', NULL),
(9, 'Liên hệ', NULL),
(10, 'Tất cả dịch vụ', NULL),
(11, 'Bài viết dịch vụ', NULL),
(12, 'Danh mục dịch vụ', NULL),
(13, 'Page', NULL),
(14, 'Đăng ký', NULL),
(15, 'Đăng nhập', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_type_languages`
--

CREATE TABLE `menu_type_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_type_id` int(11) DEFAULT NULL,
  `menu_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_type_languages`
--

INSERT INTO `menu_type_languages` (`id`, `languages_code`, `menu_type_id`, `menu_type_name`, `friendly_url`) VALUES
(1, 'vn', 1, 'Trang chủ', ''),
(2, 'en', 1, 'Home', ''),
(3, 'vn', 2, 'Tất cả sản phẩm', 'san-pham'),
(4, 'en', 2, 'All products', 'products'),
(5, 'vn', 3, 'Danh mục sản phẩm', ''),
(6, 'en', 3, 'Catalog product', ''),
(7, 'vn', 4, 'Sản phẩm cụ thể', ''),
(8, 'en', 4, 'Product detail', ''),
(9, 'vn', 5, 'Danh mục tin tức', ''),
(10, 'en', 5, 'Catalog news', ''),
(11, 'vn', 6, 'Tất cả bài tin tức', 'tin-tuc'),
(12, 'en', 6, 'All News', 'news'),
(13, 'vn', 7, 'Bài viết tin tức', ''),
(14, 'en', 7, 'News detail', ''),
(15, 'vn', 8, 'Địa chỉ website', ''),
(16, 'en', 8, 'Website Address', ''),
(17, 'vn', 9, 'Liên hệ', 'lien-he'),
(18, 'en', 9, 'Contact', 'contact'),
(19, 'vn', 10, 'Tất cả dịch vụ', 'dich-vu'),
(20, 'en', 10, 'All Services', 'services'),
(21, 'vn', 11, 'Bài viết dịch vụ', ''),
(22, 'en', 11, 'Service detail', ''),
(23, 'vn', 12, 'Danh mục dịch vụ', ''),
(24, 'en', 12, 'Catalog service', ''),
(25, 'vn', 13, 'Trang nội dung', ''),
(26, 'en', 13, 'Page', ''),
(27, 'vn', 14, 'Đăng ký', 'dang-ky'),
(28, 'en', 14, 'Sign in', 'sign-in'),
(29, 'vn', 15, 'Đăng nhập', 'dang-nhap'),
(30, 'en', 15, 'Log in', 'log-in');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `news_name` text COLLATE utf8_unicode_ci,
  `news_des` text COLLATE utf8_unicode_ci,
  `news_content` text COLLATE utf8_unicode_ci,
  `news_img` text COLLATE utf8_unicode_ci,
  `news_views` int(11) DEFAULT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `news_author` text COLLATE utf8_unicode_ci,
  `news_created_date` datetime DEFAULT NULL,
  `news_update_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `news_sub_info1` text COLLATE utf8_unicode_ci,
  `news_sub_info2` text COLLATE utf8_unicode_ci,
  `news_sub_info3` text COLLATE utf8_unicode_ci,
  `news_sub_info4` text COLLATE utf8_unicode_ci,
  `news_sub_info5` text COLLATE utf8_unicode_ci,
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL,
  `newstag_arr` varchar(10000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`news_id`, `news_name`, `news_des`, `news_content`, `news_img`, `news_views`, `newscat_id`, `news_author`, `news_created_date`, `news_update_date`, `state`, `news_sub_info1`, `news_sub_info2`, `news_sub_info3`, `news_sub_info4`, `news_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `newstag_arr`) VALUES
(26, 'Cách kiểm tra số dư tài khoản ngân hàng', 'Để sở hữu làn da căng bóng, mịn màng, phụ nữ Hàn Quốc phải thực hiện quá trình chăm sóc da với nhiều bước quan trọng và nghiêm ngặt, đặc biệt phải thật chăm chỉ.', '<p>Để sở hữu l&agrave;n da căng b&oacute;ng, mịn m&agrave;ng, phụ nữ H&agrave;n Quốc phải thực hiện qu&aacute; tr&igrave;nh chăm s&oacute;c da với nhiều bước quan trọng v&agrave; nghi&ecirc;m ngặt, đặc biệt phải thật chăm chỉ.</p>\r\n', 'gói-vay-tiền-mua-nhà-trả-góp-ngân-hàng-Vietcombank.jpg', 0, 0, '', '2017-07-09 23:07:30', '2018-07-24 05:07:44', 1, '', '', '', '', '', 'Cách kiểm tra số dư tài khoản ngân hàng', 'Thông tin mô tả ngắn cho bài Khuyến mãi 5', 'cach-kiem-tra-so-du-tai-khoan-ngan-hang', '', 1, ''),
(27, 'Tổng đài chăm sóc khách hàng', 'Bạn cần biết cách kiểm soát lượng dầu khiến khuôn mặt nhờn bóng, kém xinh khi sở hữu làn da dầu.', '<h3><strong>B&iacute; quyết l&agrave;m đẹp 1. Lu&ocirc;n lu&ocirc;n thử trước khi mua</strong></h3>\r\n\r\n<p>C&oacute; một số sản phẩm trang điểm, bạn thực sự cần phải thử trước khi mua ch&uacute;ng. Bạn c&oacute; thế mua ngay m&agrave; kh&ocirc;ng cần đắn đo như b&uacute;t kẻ mắt, phấn mắt v&agrave; son b&oacute;ng; nhưng bạn cần phải kiểm tra bột, son m&ocirc;i, phấn nền v&agrave; m&aacute; hồng. V&igrave; để an to&agrave;n cho l&agrave;n da cũng như gi&uacute;p bạn tỏa s&aacute;ng hơn, th&igrave; l&agrave;m kiểm tra với sản phẩm trang điểm kh&ocirc;ng phải l&agrave; thừa, đ&acirc;y cũng c&oacute; thể xem như 1 b&iacute; quyết l&agrave;m đẹp. Bởi v&igrave;, c&oacute; một số son hay phấn chứa c&aacute;c chất h&oacute;a học khiến cho da bạn trở n&ecirc;n tệ hơn khi trang điểm một thời gian d&agrave;i.</p>\r\n\r\n<h3><strong>B&iacute; quyết l&agrave;m đẹp 2. Kh&ocirc;ng n&ecirc;n bỏ qua bơ hạt mỡ (shea butter)</strong></h3>\r\n\r\n<p>Kh&ocirc;ng c&oacute; c&ocirc; g&aacute;i n&agrave;o th&iacute;ch l&agrave;m đẹp m&agrave; kh&ocirc;ng biết đến bơ hạt mỡ. N&oacute; được lưu trong b&iacute; quyết l&agrave;m đẹp của rất nhiều chị em. Bạn c&oacute; thể sử dụng bơ hạt mỡ gi&uacute;p loại bỏ lớp trang điểm, l&agrave;m son b&oacute;ng hoặc l&agrave;m mềm cho đ&ocirc;i m&ocirc;i của bạn. Bơ hạt mỡ l&agrave; nguy&ecirc;n liệu l&agrave;m mềm đ&ocirc;i tay v&agrave; b&agrave;n ch&acirc;n tuyệt vời, v&agrave;o những ng&agrave;y trời lạnh bạn kh&ocirc;ng phải lo lắng v&igrave; da kh&ocirc; nữa. Nhưng bạn h&atilde;y thận trọng trong liều lượng sử dụng đặc biệt l&agrave; với da mặt, bởi nếu sử dụng qu&aacute; nhiều c&oacute; thể l&agrave;m g&acirc;y tắc nghẽn lỗ ch&acirc;n l&ocirc;ng v&agrave; g&acirc;y ra mụn.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'dich-vu-cho-vay-tin-chap.jpg', 0, 0, '', '2017-07-09 23:07:15', '2018-07-24 05:07:24', 1, '', '', '', '', '', 'Tổng đài chăm sóc khách hàng', '', 'tong-dai-cham-soc-khach-hang', '', 1, ''),
(31, 'Sửa chữa UPS', 'Cô gái xinh xắn, chăm chỉ bán bánh mướt ở chân cầu Nghệ An hiện khiến nhiều dân mạng tìm kiếm thông tin.', '<p>Ng&agrave;y 27/4, khoảnh khắc c&ocirc; g&aacute;i b&aacute;n b&aacute;nh mướt xinh đẹp ngồi dưới ch&acirc;n cầu ở Nghệ An được nhiều người quan t&acirc;m. Bức ảnh đơn giản, song c&oacute; sức h&uacute;t với người xem bởi nữ ch&iacute;nh kh&aacute; xinh xắn.</p>\r\n\r\n<p>Chỉ v&agrave;i giờ sau khi đăng tải, b&agrave;i đăng n&agrave;y đ&atilde; nhận được h&agrave;ng ngh&igrave;n like (th&iacute;ch), chia sẻ từ d&acirc;n mạng. Phần lớn mọi người d&agrave;nh nhiều lời khen cho c&ocirc; g&aacute;i.</p>\r\n\r\n<p>Theo đ&oacute;, nữ ch&iacute;nh c&ograve;n rất trẻ, sở hữu một khu&ocirc;n mặt ưa nh&igrave;n, t&oacute;c buộc gọn g&agrave;ng, l&agrave;n da trắng hồng, đang chăm chỉ b&aacute;n h&agrave;ng.</p>\r\n\r\n<p>C&ocirc; g&aacute;i Nghệ An b&aacute;n b&aacute;nh khiến nhiều người t&ograve; m&ograve; l&agrave; Nguyễn Thị Kim Kh&aacute;nh, 20 tuổi. Hiện c&ocirc; l&agrave;m việc tại một spa l&agrave;m đẹp ở TP Vinh, Nghệ An.</p>\r\n\r\n<p>Kim Kh&aacute;nh cho&nbsp;<em>Zing.vn&nbsp;</em>hay c&ocirc; kh&aacute; bất ngờ khi bức ảnh được chia sẻ tr&ecirc;n mạng. 9X kh&ocirc;ng biết khoảnh khắc n&agrave;y được chụp từ khi n&agrave;o.</p>\r\n\r\n<p>&quot;Ng&agrave;y n&agrave;o m&igrave;nh cũng phụ mẹ b&aacute;n h&agrave;ng từ 8-9h s&aacute;ng. Thời gian trước, m&igrave;nh vẫn l&agrave;m từ s&aacute;ng tới trưa, rồi c&ugrave;ng mẹ dọn h&agrave;ng&quot;, Kh&aacute;nh n&oacute;i.</p>\r\n', 'dieu-kien-vay-mua-nha-1.jpg', 0, 69, '', '2017-12-03 16:12:41', '2018-07-28 08:07:27', 1, '', '', '', '', '', 'Sửa chữa UPS', '', 'sua-chua-ups', '', 1, ''),
(49, 'Bảo Trì UPS', 'Người ta nói, nhan sắc của các mỹ nhân lừng danh này là một thứ \"tài năng\" thiên bẩm, sinh ra đã có, tuy nhiên mỗi người đều giữ cho mình một bí quyết riêng để giữ cho nhan sắc trời ban trường tồn với thời gian. ', '<p>Theo GS.TS.BS. Đỗ Do&atilde;n Lợi, Viện trưởng Viện Tim mạch Việt Nam, bệnh l&iacute; tim mạch đang ng&agrave;y c&agrave;ng trẻ h&oacute;a: Cứ 4 người trẻ Việt Nam từ 25 tuổi trở l&ecirc;n, c&oacute; &iacute;t nhất 1 người c&oacute; nguy cơ mắc bệnh tim mạch.</p>\r\n\r\n<p>Bệnh tim mạch để lại những hệ luỵ kh&ocirc;n lường, ảnh hưởng đến chất lượng cuộc sống.</p>\r\n\r\n<p>Để tr&aacute;nh xa bệnh tim mạch kh&ocirc;ng qu&aacute; kh&oacute;, 5 thay đổi nhỏ trong cuộc sống h&agrave;ng ng&agrave;y sau đ&acirc;y sẽ gi&uacute;p bạn.</p>\r\n\r\n<h3><strong>Ngủ đủ giấc</strong></h3>\r\n\r\n<p>Thức khuya, ngủ kh&ocirc;ng đủ giấc kh&ocirc;ng những l&agrave;m hệ thống miễn dịch của cơ thể suy yếu dần m&agrave; c&ograve;n tăng tỉ lệ mắc bệnh tim mạch. Khi thiếu ngủ, c&aacute;c mạch m&aacute;u co lại, huyết &aacute;p tăng, tạo &aacute;p lực l&ecirc;n tim nhiều hơn.</p>\r\n\r\n<p>Đ&acirc;y l&agrave; nguy&ecirc;n nh&acirc;n dẫn đến c&aacute;c bệnh l&iacute; tim mạch như: bệnh mạch v&agrave;nh, xơ vữa động mạch, cao huyết &aacute;p...</p>\r\n\r\n<p>Ngủ đủ giấc từ 7 - 8 tiếng/ng&agrave;y l&agrave; thay đổi nhỏ đầu ti&ecirc;n v&agrave; cũng hết sức đơn giản gi&uacute;p ngăn ngừa bệnh l&iacute; tim mạch.</p>\r\n\r\n<p>Để c&oacute; giấc ngủ s&acirc;u v&agrave; ngon, duy tr&igrave; nhịp sinh học của cơ thể một c&aacute;ch c&acirc;n bằng, bạn n&ecirc;n đi ngủ đ&uacute;ng giờ, kh&ocirc;ng thức qu&aacute; khuya, tr&aacute;nh ăn no hoặc uống nhiều nước trước khi đi ngủ.</p>\r\n\r\n<h3><strong>Tập thể dục thường xuy&ecirc;n</strong></h3>\r\n\r\n<p>Người trẻ thường hay than thở thời gian ăn, ngủ, l&agrave;m việc c&ograve;n chưa đủ huống chi l&agrave; tập thể dục mỗi ng&agrave;y.</p>\r\n\r\n<p>Nhưng thật ra nếu biết c&aacute;ch sắp sếp c&ocirc;ng việc, bạn c&oacute; thể đi ngủ v&agrave;o 11g đ&ecirc;m, thức dậy v&agrave;o 6 - 7g s&aacute;ng h&ocirc;m sau để c&oacute; thời gian luyện tập thể dục trước khi c&oacute; mặt ở văn ph&ograve;ng l&agrave;m việc.</p>\r\n\r\n<p>GS.TS.BS. Đỗ Do&atilde;n Lợi chia sẻ &ldquo;N<em>gười trẻ cần d&agrave;nh thời gian hoạt động thể lực từ 30 - 60 ph&uacute;t/ng&agrave;y, &iacute;t nhất 4 ng&agrave;y/tuần, tốt nhất l&agrave; đều đặn h&agrave;ng ng&agrave;y để tăng cường sức khỏe tim mạch&rdquo;.</em></p>\r\n\r\n<p>Những b&agrave;i tập thể dục nhẹ nh&agrave;ng như: đi bộ, chạy bộ, đạp xe, bơi, yoga rất tốt cho sức khỏe tr&aacute;i tim, gi&uacute;p ph&ograve;ng tr&aacute;nh c&aacute;c bệnh mạch v&agrave;nh, tăng huyết &aacute;p, đột quỵ.</p>\r\n', 'can-vay-tien-mua-nha.jpg', 0, 69, '', '2017-12-08 14:12:15', '2018-07-27 13:07:33', 1, '', '', '', '', '', 'Bảo Trì UPS', '', 'bao-tri-ups', '', 1, 'a:1:{i:0;s:1:\"3\";}'),
(50, 'UPS GTEC cho Thuê', 'Luôn xuất hiện rạng ngời hay thậm chí để mặt mộc, không phải ngẫu nhiên mà các mỹ nhân này lại có thể tự tin đến như vậy. ', '<p>Mary Ellen Phipps, chuy&ecirc;n gia dinh dưỡng v&agrave; l&agrave; &ocirc;ng chủ của Milk &amp; Honey Nutrition cho biết: &quot;Điều quan trọng l&agrave; phải nhớ rằng mỗi cơ thể đều c&oacute; đặc t&iacute;nh ri&ecirc;ng v&agrave; kh&aacute;c biệt n&ecirc;n kh&ocirc;ng thể lấy phương ph&aacute;p của người n&agrave;y để &aacute;p dụng cho người kh&aacute;c&quot;.</p>\r\n\r\n<p>Đối với kh&aacute;ch h&agrave;ng low-carb của m&igrave;nh, Phipps khuyến nghị chỉ n&ecirc;n ti&ecirc;u thụ 30-80g carbohydrate mỗi ng&agrave;y, t&ugrave;y thuộc v&agrave;o t&igrave;nh trạng cơ thể từng người. H&agrave;m lượng n&agrave;y chia đều c&aacute;c bữa như sau: Khoảng 12-25g cho bữa s&aacute;ng, 20-30g cho bữa trưa, 15-25g cho bữa tối v&agrave; 0-10g cho bữa ăn nhẹ.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '20141103-ngan-hang-tmcp-quan-doi-mb-tri-an-khach-hang-nhan-ky-niem-20-nam-thanh-lap-1.jpg', 0, 69, '', '2017-12-08 14:12:26', '2018-07-27 13:07:57', 1, '', '', '', '', '', 'UPS GTEC cho Thuê', 'a', 'ups-gtec-cho-thue', '1', 1, ''),
(51, 'Hướng dẫn chức năng HID UPS BATTERY', 'Với việc nâng cấp sản phẩm UPS Santak từ dòng Blazer 2000EH sang Blazer 2000 PRO, Eaton đã tích hợp thêm tính năng HID UPS Battery nhằm hỗ trợ người tiêu dùng thiết lập thông số dung lượng ắc quy khi sử dụng bộ lưu điện được dễ dàng hơn.', '<h3>The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n\r\n<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>\r\n\r\n<h3>Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC</h3>\r\n\r\n<p>&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>\r\n\r\n<h3>1914 translation by H. Rackham</h3>\r\n\r\n<p>&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;</p>\r\n', 'ups_zp120i.jpg', 0, 70, '', '2018-07-28 08:07:59', NULL, 1, '', '', '', '', '', 'Hướng dẫn chức năng HID UPS BATTERY', '', 'huong-dan-chuc-nang-hid-ups-battery', '', 1, ''),
(52, 'Tổng hợp kiến thức ắc quy của bộ lưu điện (UPS)', 'Bạn đã biết bộ lưu điện, hay còn được gọi là UPS, là thiết bị lưu trữ điện cho thiết bị điện tử trong các trường hợp mất điện đột ngột, tránh trường hợp mất các dữ liệu quan trọng. Bạn có biết để hoạt động được thì bộ lưu điện cũng phải sạc bình ắc quy? Dấu hiệu nào cho biết đã đến lúc thay ắc quy cho UPS?', '<p>Những lợi &iacute;ch khi sử dụng&nbsp;bộ lưu điện&nbsp;(UPS &ndash; Uninterruptible Power Supply) th&igrave; khỏi phải b&agrave;n đến nữa, ngo&agrave;i c&aacute;i t&ecirc;n bộ lưu điện th&igrave; UPS c&ograve;n được biết đến với những c&aacute;i t&ecirc;n kh&aacute;c như c&aacute;i / cục lưu điện. Nhiệm vụ ch&iacute;nh của UPS l&agrave; duy tr&igrave; thiết bị tiếp tục hoạt động trong l&uacute;c mất điện đột ngột, tr&aacute;nh trường hợp mất dữ liệu trong m&aacute;y khi mất điện.</p>\r\n\r\n<p>Nguy&ecirc;n tắc hoạt động của bộ lưu điện UPS dựa v&agrave;o nguy&ecirc;n l&yacute; biến đổi điện &aacute;p một chiều từ&nbsp;<em>ắc quy bộ lưu điện</em>&nbsp;sang d&ograve;ng điện xoay chiều để ph&ugrave; hợp với c&aacute;c thiết bị điện, ngo&agrave;i t&aacute;c dụng ch&iacute;nh th&igrave; UPS c&ograve;n c&oacute; một số c&ocirc;ng dụng phụ cho thiết bị như: chống nhiễu, chống giật, chống s&eacute;t, ổn định d&ograve;ng điện v&agrave; d&ograve;ng tần số điện.</p>\r\n\r\n<p>C&oacute; thể hiểu đơn giản l&agrave; tất cả c&aacute;c loại bộ lưu điện đều phải sử dụng ắc quy, nhưng những d&ograve;ng bộ lưu điện kh&aacute;c nhau sẽ sử dụng c&aacute;c b&igrave;nh ắc quy kh&aacute;c nhau.</p>\r\n', 'ac-quy-chuyen-dung-cho-ups.jpg', 0, 70, '', '2018-07-28 08:07:27', '2018-07-28 08:07:33', 1, '', '', '', '', '', 'Tổng hợp kiến thức ắc quy của bộ lưu điện (UPS)', '', 'tong-hop-kien-thuc-ac-quy-cua-bo-luu-dien-ups', '', 1, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newscat`
--

CREATE TABLE `newscat` (
  `newscat_id` int(11) NOT NULL,
  `newscat_name` text COLLATE utf8_unicode_ci,
  `newscat_des` text COLLATE utf8_unicode_ci,
  `newscat_content` text COLLATE utf8_unicode_ci,
  `newscat_parent` int(11) DEFAULT NULL,
  `newscat_sort_order` int(11) DEFAULT NULL,
  `newscat_created_date` datetime DEFAULT NULL,
  `newscat_update_date` datetime DEFAULT NULL,
  `state` int(11) DEFAULT '0',
  `newscat_img` text COLLATE utf8_unicode_ci,
  `newscat_sub_info1` text COLLATE utf8_unicode_ci,
  `newscat_sub_info2` text COLLATE utf8_unicode_ci,
  `newscat_sub_info3` text COLLATE utf8_unicode_ci,
  `newscat_sub_info4` text COLLATE utf8_unicode_ci,
  `newscat_sub_info5` text COLLATE utf8_unicode_ci,
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `newscat`
--

INSERT INTO `newscat` (`newscat_id`, `newscat_name`, `newscat_des`, `newscat_content`, `newscat_parent`, `newscat_sort_order`, `newscat_created_date`, `newscat_update_date`, `state`, `newscat_img`, `newscat_sub_info1`, `newscat_sub_info2`, `newscat_sub_info3`, `newscat_sub_info4`, `newscat_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(69, 'Dịch vụ', '', '', 0, 0, '2018-07-27 13:07:30', NULL, 1, NULL, '', '', '', '', '', 'Dịch vụ', '', 'dich-vu', '', 1),
(70, 'Tin tức VBS', '', '', 0, 0, '2018-07-27 15:07:49', NULL, 1, '', '', '', '', '', '', 'Tin tức VBS', '', 'tin-tuc-vbs', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newscat_languages`
--

CREATE TABLE `newscat_languages` (
  `id` int(11) NOT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_name` text COLLATE utf8_unicode_ci,
  `lang_newscat_des` text COLLATE utf8_unicode_ci,
  `lang_newscat_content` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `newscat_languages`
--

INSERT INTO `newscat_languages` (`id`, `newscat_id`, `languages_code`, `lang_newscat_name`, `lang_newscat_des`, `lang_newscat_content`, `lang_newscat_sub_info1`, `lang_newscat_sub_info2`, `lang_newscat_sub_info3`, `lang_newscat_sub_info4`, `lang_newscat_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(133, 69, 'vn', 'Dịch vụ', '', NULL, '', '', '', '', '', 1, 'dich-vu', '', 'Dịch vụ', ''),
(134, 69, 'en', 'Technology Transfer', '<p>english version</p>\r\n', '1', '', '', '', '', '', 1, 'en-chuyen-giao-cong-nghe', '', 'Chuyển giao công nghệ', ''),
(135, 70, 'vn', 'Tin tức VBS', '', '', '', '', '', '', '', 0, 'tin-tuc-vbs', '', 'Tin tức VBS', ''),
(136, 70, 'en', 'english version Tin tức VBS', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-tin-tuc-vbs', '', 'Tin tức VBS', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newstag`
--

CREATE TABLE `newstag` (
  `newstag_id` int(11) NOT NULL,
  `newstag_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sort_order` int(11) NOT NULL,
  `newstag_created_date` datetime NOT NULL,
  `newstag_update_date` datetime NOT NULL,
  `state` int(11) NOT NULL,
  `newstag_img` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sub_info5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `friendly_url` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `newstag`
--

INSERT INTO `newstag` (`newstag_id`, `newstag_name`, `newstag_des`, `newstag_content`, `newstag_sort_order`, `newstag_created_date`, `newstag_update_date`, `state`, `newstag_img`, `newstag_sub_info1`, `newstag_sub_info2`, `newstag_sub_info3`, `newstag_sub_info4`, `newstag_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(2, 'sách hot', '<p>M&ocirc; tả s&aacute;ch</p>\r\n', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '', '', '', '', '', '', 'sách hot', 'chuyên sách', 'sach-hot', 'sach', 1),
(3, 'Vở đẹp', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '', '', '', '', '', '', 'Vở đẹp', '', 'vo-dep', '', 1),
(4, 'Butb', '<p>bb</p>\r\n', '', 0, '2017-12-13 11:12:54', '2017-12-13 11:12:11', 1, '', '', '', '', '', '', 'Butb', 'bb', 'butb', 'bb', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newstag_languages`
--

CREATE TABLE `newstag_languages` (
  `id` int(11) NOT NULL,
  `newstag_id` int(11) NOT NULL,
  `languages_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_content` text CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `lang_newstag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_sub_info5` text CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `edit_state` int(11) NOT NULL,
  `friendly_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_seo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `newstag_languages`
--

INSERT INTO `newstag_languages` (`id`, `newstag_id`, `languages_code`, `lang_newstag_name`, `lang_newstag_des`, `lang_newstag_content`, `lang_newstag_sub_info1`, `lang_newstag_sub_info2`, `lang_newstag_sub_info3`, `lang_newstag_sub_info4`, `lang_newstag_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(3, 2, 'vn', 'sách hot', '<p>M&ocirc; tả s&aacute;ch</p>\r\n', '', '', '', '', '', '', 1, 'sach-hot', 'sach', 'sách hot', 'chuyên sách'),
(4, 2, 'en', 'sách en', '<p>M&ocirc; tả s&aacute;ch</p>\r\n', '', '', '', '', '', '', 1, 'sach', 'sach', 'sách', 'chuyên sách'),
(5, 3, 'vn', 'Vở đẹp', '', '', '', '', '', '', '', 1, 'vo-dep', '', 'Vở đẹp', ''),
(6, 3, 'en', 'Vở đẹp', '', '', '', '', '', '', '', 1, 'vo-dep', '', 'Vở đẹp', ''),
(7, 4, 'vn', 'But', '<p>but</p>\r\n', '', '', '', '', '', '', 1, 'butb', 'bb', 'Butb', 'bb'),
(8, 4, 'en', 'pen', '<p>pen</p>\r\n', '', '', '', '', '', '', 1, 'but', 'b', 'But', 'b');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_languages`
--

CREATE TABLE `news_languages` (
  `id` bigint(20) NOT NULL,
  `news_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_name` text COLLATE utf8_unicode_ci,
  `lang_news_des` text COLLATE utf8_unicode_ci,
  `lang_news_content` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news_languages`
--

INSERT INTO `news_languages` (`id`, `news_id`, `languages_code`, `lang_news_name`, `lang_news_des`, `lang_news_content`, `lang_news_sub_info1`, `lang_news_sub_info2`, `lang_news_sub_info3`, `lang_news_sub_info4`, `lang_news_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(51, 26, 'vn', 'Cách kiểm tra số dư tài khoản ngân hàng', 'Để sở hữu làn da căng bóng, mịn màng, phụ nữ Hàn Quốc phải thực hiện quá trình chăm sóc da với nhiều bước quan trọng và nghiêm ngặt, đặc biệt phải thật chăm chỉ.', '<p>Để sở hữu l&agrave;n da căng b&oacute;ng, mịn m&agrave;ng, phụ nữ H&agrave;n Quốc phải thực hiện qu&aacute; tr&igrave;nh chăm s&oacute;c da với nhiều bước quan trọng v&agrave; nghi&ecirc;m ngặt, đặc biệt phải thật chăm chỉ.</p>\r\n', '', '', '', '', '', 0, 'cach-kiem-tra-so-du-tai-khoan-ngan-hang', 'Cách kiểm tra số dư tài khoản ngân hàng', 'Thông tin mô tả ngắn cho bài Khuyến mãi 5', ''),
(52, 26, 'en', 'Khuyến mãi 5', 'Thông tin mô tả ngắn cho bài Khuyến mãi 5', '<p>Th&ocirc;ng tin m&ocirc; tả ngắn cho b&agrave;i Khuyến m&atilde;i 5</p>\r\n', '', '', '', '', '', 0, 'khuyen-mai-5', 'Khuyến mãi 5', 'Thông tin mô tả ngắn cho bài Khuyến mãi 5', ''),
(53, 27, 'vn', 'Tổng đài chăm sóc khách hàng', 'Bạn cần biết cách kiểm soát lượng dầu khiến khuôn mặt nhờn bóng, kém xinh khi sở hữu làn da dầu.', '<h3><strong>B&iacute; quyết l&agrave;m đẹp 1. Lu&ocirc;n lu&ocirc;n thử trước khi mua</strong></h3>\r\n\r\n<p>C&oacute; một số sản phẩm trang điểm, bạn thực sự cần phải thử trước khi mua ch&uacute;ng. Bạn c&oacute; thế mua ngay m&agrave; kh&ocirc;ng cần đắn đo như b&uacute;t kẻ mắt, phấn mắt v&agrave; son b&oacute;ng; nhưng bạn cần phải kiểm tra bột, son m&ocirc;i, phấn nền v&agrave; m&aacute; hồng. V&igrave; để an to&agrave;n cho l&agrave;n da cũng như gi&uacute;p bạn tỏa s&aacute;ng hơn, th&igrave; l&agrave;m kiểm tra với sản phẩm trang điểm kh&ocirc;ng phải l&agrave; thừa, đ&acirc;y cũng c&oacute; thể xem như 1 b&iacute; quyết l&agrave;m đẹp. Bởi v&igrave;, c&oacute; một số son hay phấn chứa c&aacute;c chất h&oacute;a học khiến cho da bạn trở n&ecirc;n tệ hơn khi trang điểm một thời gian d&agrave;i.</p>\r\n\r\n<h3><strong>B&iacute; quyết l&agrave;m đẹp 2. Kh&ocirc;ng n&ecirc;n bỏ qua bơ hạt mỡ (shea butter)</strong></h3>\r\n\r\n<p>Kh&ocirc;ng c&oacute; c&ocirc; g&aacute;i n&agrave;o th&iacute;ch l&agrave;m đẹp m&agrave; kh&ocirc;ng biết đến bơ hạt mỡ. N&oacute; được lưu trong b&iacute; quyết l&agrave;m đẹp của rất nhiều chị em. Bạn c&oacute; thể sử dụng bơ hạt mỡ gi&uacute;p loại bỏ lớp trang điểm, l&agrave;m son b&oacute;ng hoặc l&agrave;m mềm cho đ&ocirc;i m&ocirc;i của bạn. Bơ hạt mỡ l&agrave; nguy&ecirc;n liệu l&agrave;m mềm đ&ocirc;i tay v&agrave; b&agrave;n ch&acirc;n tuyệt vời, v&agrave;o những ng&agrave;y trời lạnh bạn kh&ocirc;ng phải lo lắng v&igrave; da kh&ocirc; nữa. Nhưng bạn h&atilde;y thận trọng trong liều lượng sử dụng đặc biệt l&agrave; với da mặt, bởi nếu sử dụng qu&aacute; nhiều c&oacute; thể l&agrave;m g&acirc;y tắc nghẽn lỗ ch&acirc;n l&ocirc;ng v&agrave; g&acirc;y ra mụn.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 1, 'tong-dai-cham-soc-khach-hang', 'Tổng đài chăm sóc khách hàng', '', ''),
(54, 27, 'en', 'Khuyễn mãi 6', 'Thông tin mô tả ngắn cho bài Khuyến mãi 6', '<p>Thông tin mô tả ngắn cho bài Khuyến mãi 6</p>\r\n', '', '', '', '', '', 1, 'khuyen-mai-6', 'Khuyễn mãi 6', 'Thông tin mô tả ngắn cho bài Khuyến mãi 6', ''),
(61, 31, 'vn', 'Sửa chữa UPS', 'Cô gái xinh xắn, chăm chỉ bán bánh mướt ở chân cầu Nghệ An hiện khiến nhiều dân mạng tìm kiếm thông tin.', '<p>Ng&agrave;y 27/4, khoảnh khắc c&ocirc; g&aacute;i b&aacute;n b&aacute;nh mướt xinh đẹp ngồi dưới ch&acirc;n cầu ở Nghệ An được nhiều người quan t&acirc;m. Bức ảnh đơn giản, song c&oacute; sức h&uacute;t với người xem bởi nữ ch&iacute;nh kh&aacute; xinh xắn.</p>\r\n\r\n<p>Chỉ v&agrave;i giờ sau khi đăng tải, b&agrave;i đăng n&agrave;y đ&atilde; nhận được h&agrave;ng ngh&igrave;n like (th&iacute;ch), chia sẻ từ d&acirc;n mạng. Phần lớn mọi người d&agrave;nh nhiều lời khen cho c&ocirc; g&aacute;i.</p>\r\n\r\n<p>Theo đ&oacute;, nữ ch&iacute;nh c&ograve;n rất trẻ, sở hữu một khu&ocirc;n mặt ưa nh&igrave;n, t&oacute;c buộc gọn g&agrave;ng, l&agrave;n da trắng hồng, đang chăm chỉ b&aacute;n h&agrave;ng.</p>\r\n\r\n<p>C&ocirc; g&aacute;i Nghệ An b&aacute;n b&aacute;nh khiến nhiều người t&ograve; m&ograve; l&agrave; Nguyễn Thị Kim Kh&aacute;nh, 20 tuổi. Hiện c&ocirc; l&agrave;m việc tại một spa l&agrave;m đẹp ở TP Vinh, Nghệ An.</p>\r\n\r\n<p>Kim Kh&aacute;nh cho&nbsp;<em>Zing.vn&nbsp;</em>hay c&ocirc; kh&aacute; bất ngờ khi bức ảnh được chia sẻ tr&ecirc;n mạng. 9X kh&ocirc;ng biết khoảnh khắc n&agrave;y được chụp từ khi n&agrave;o.</p>\r\n\r\n<p>&quot;Ng&agrave;y n&agrave;o m&igrave;nh cũng phụ mẹ b&aacute;n h&agrave;ng từ 8-9h s&aacute;ng. Thời gian trước, m&igrave;nh vẫn l&agrave;m từ s&aacute;ng tới trưa, rồi c&ugrave;ng mẹ dọn h&agrave;ng&quot;, Kh&aacute;nh n&oacute;i.</p>\r\n', '', '', '', '', '', 1, 'sua-chua-ups', 'Sửa chữa UPS', '', ''),
(62, 31, 'en', 'news 4', 'Mô tả tin tức 4', '<p>Nội dung tin tức 4 en</p>\r\n', '', '', '', '', '', 1, 'tin-tuc-4', 'Tin tức 4', '', ''),
(97, 49, 'vn', 'Bảo Trì UPS', 'Người ta nói, nhan sắc của các mỹ nhân lừng danh này là một thứ \"tài năng\" thiên bẩm, sinh ra đã có, tuy nhiên mỗi người đều giữ cho mình một bí quyết riêng để giữ cho nhan sắc trời ban trường tồn với thời gian. ', '<p>Theo GS.TS.BS. Đỗ Do&atilde;n Lợi, Viện trưởng Viện Tim mạch Việt Nam, bệnh l&iacute; tim mạch đang ng&agrave;y c&agrave;ng trẻ h&oacute;a: Cứ 4 người trẻ Việt Nam từ 25 tuổi trở l&ecirc;n, c&oacute; &iacute;t nhất 1 người c&oacute; nguy cơ mắc bệnh tim mạch.</p>\r\n\r\n<p>Bệnh tim mạch để lại những hệ luỵ kh&ocirc;n lường, ảnh hưởng đến chất lượng cuộc sống.</p>\r\n\r\n<p>Để tr&aacute;nh xa bệnh tim mạch kh&ocirc;ng qu&aacute; kh&oacute;, 5 thay đổi nhỏ trong cuộc sống h&agrave;ng ng&agrave;y sau đ&acirc;y sẽ gi&uacute;p bạn.</p>\r\n\r\n<h3><strong>Ngủ đủ giấc</strong></h3>\r\n\r\n<p>Thức khuya, ngủ kh&ocirc;ng đủ giấc kh&ocirc;ng những l&agrave;m hệ thống miễn dịch của cơ thể suy yếu dần m&agrave; c&ograve;n tăng tỉ lệ mắc bệnh tim mạch. Khi thiếu ngủ, c&aacute;c mạch m&aacute;u co lại, huyết &aacute;p tăng, tạo &aacute;p lực l&ecirc;n tim nhiều hơn.</p>\r\n\r\n<p>Đ&acirc;y l&agrave; nguy&ecirc;n nh&acirc;n dẫn đến c&aacute;c bệnh l&iacute; tim mạch như: bệnh mạch v&agrave;nh, xơ vữa động mạch, cao huyết &aacute;p...</p>\r\n\r\n<p>Ngủ đủ giấc từ 7 - 8 tiếng/ng&agrave;y l&agrave; thay đổi nhỏ đầu ti&ecirc;n v&agrave; cũng hết sức đơn giản gi&uacute;p ngăn ngừa bệnh l&iacute; tim mạch.</p>\r\n\r\n<p>Để c&oacute; giấc ngủ s&acirc;u v&agrave; ngon, duy tr&igrave; nhịp sinh học của cơ thể một c&aacute;ch c&acirc;n bằng, bạn n&ecirc;n đi ngủ đ&uacute;ng giờ, kh&ocirc;ng thức qu&aacute; khuya, tr&aacute;nh ăn no hoặc uống nhiều nước trước khi đi ngủ.</p>\r\n\r\n<h3><strong>Tập thể dục thường xuy&ecirc;n</strong></h3>\r\n\r\n<p>Người trẻ thường hay than thở thời gian ăn, ngủ, l&agrave;m việc c&ograve;n chưa đủ huống chi l&agrave; tập thể dục mỗi ng&agrave;y.</p>\r\n\r\n<p>Nhưng thật ra nếu biết c&aacute;ch sắp sếp c&ocirc;ng việc, bạn c&oacute; thể đi ngủ v&agrave;o 11g đ&ecirc;m, thức dậy v&agrave;o 6 - 7g s&aacute;ng h&ocirc;m sau để c&oacute; thời gian luyện tập thể dục trước khi c&oacute; mặt ở văn ph&ograve;ng l&agrave;m việc.</p>\r\n\r\n<p>GS.TS.BS. Đỗ Do&atilde;n Lợi chia sẻ &ldquo;N<em>gười trẻ cần d&agrave;nh thời gian hoạt động thể lực từ 30 - 60 ph&uacute;t/ng&agrave;y, &iacute;t nhất 4 ng&agrave;y/tuần, tốt nhất l&agrave; đều đặn h&agrave;ng ng&agrave;y để tăng cường sức khỏe tim mạch&rdquo;.</em></p>\r\n\r\n<p>Những b&agrave;i tập thể dục nhẹ nh&agrave;ng như: đi bộ, chạy bộ, đạp xe, bơi, yoga rất tốt cho sức khỏe tr&aacute;i tim, gi&uacute;p ph&ograve;ng tr&aacute;nh c&aacute;c bệnh mạch v&agrave;nh, tăng huyết &aacute;p, đột quỵ.</p>\r\n', '', '', '', '', '', 1, 'bao-tri-ups', 'Bảo Trì UPS', '', ''),
(98, 49, 'en', '5 thói quen giúp người trẻ tránh xa bệnh tim mạch', '5 thói quen giúp người trẻ tránh xa bệnh tim mạch', '<p>Theo GS.TS.BS. Đỗ Do&atilde;n Lợi, Viện trưởng Viện Tim mạch Việt Nam, bệnh l&iacute; tim mạch đang ng&agrave;y c&agrave;ng trẻ h&oacute;a: Cứ 4 người trẻ Việt Nam từ 25 tuổi trở l&ecirc;n, c&oacute; &iacute;t nhất 1 người c&oacute; nguy cơ mắc bệnh tim mạch.</p>\r\n\r\n<p>Bệnh tim mạch để lại những hệ luỵ kh&ocirc;n lường, ảnh hưởng đến chất lượng cuộc sống.</p>\r\n\r\n<p>Để tr&aacute;nh xa bệnh tim mạch kh&ocirc;ng qu&aacute; kh&oacute;, 5 thay đổi nhỏ trong cuộc sống h&agrave;ng ng&agrave;y sau đ&acirc;y sẽ gi&uacute;p bạn.</p>\r\n\r\n<h3><strong>Ngủ đủ giấc</strong></h3>\r\n\r\n<p>Thức khuya, ngủ kh&ocirc;ng đủ giấc kh&ocirc;ng những l&agrave;m hệ thống miễn dịch của cơ thể suy yếu dần m&agrave; c&ograve;n tăng tỉ lệ mắc bệnh tim mạch. Khi thiếu ngủ, c&aacute;c mạch m&aacute;u co lại, huyết &aacute;p tăng, tạo &aacute;p lực l&ecirc;n tim nhiều hơn.</p>\r\n\r\n<p>Đ&acirc;y l&agrave; nguy&ecirc;n nh&acirc;n dẫn đến c&aacute;c bệnh l&iacute; tim mạch như: bệnh mạch v&agrave;nh, xơ vữa động mạch, cao huyết &aacute;p...</p>\r\n\r\n<p>Ngủ đủ giấc từ 7 - 8 tiếng/ng&agrave;y l&agrave; thay đổi nhỏ đầu ti&ecirc;n v&agrave; cũng hết sức đơn giản gi&uacute;p ngăn ngừa bệnh l&iacute; tim mạch.</p>\r\n\r\n<p>Để c&oacute; giấc ngủ s&acirc;u v&agrave; ngon, duy tr&igrave; nhịp sinh học của cơ thể một c&aacute;ch c&acirc;n bằng, bạn n&ecirc;n đi ngủ đ&uacute;ng giờ, kh&ocirc;ng thức qu&aacute; khuya, tr&aacute;nh ăn no hoặc uống nhiều nước trước khi đi ngủ.</p>\r\n\r\n<h3><strong>Tập thể dục thường xuy&ecirc;n</strong></h3>\r\n\r\n<p>Người trẻ thường hay than thở thời gian ăn, ngủ, l&agrave;m việc c&ograve;n chưa đủ huống chi l&agrave; tập thể dục mỗi ng&agrave;y.</p>\r\n\r\n<p>Nhưng thật ra nếu biết c&aacute;ch sắp sếp c&ocirc;ng việc, bạn c&oacute; thể đi ngủ v&agrave;o 11g đ&ecirc;m, thức dậy v&agrave;o 6 - 7g s&aacute;ng h&ocirc;m sau để c&oacute; thời gian luyện tập thể dục trước khi c&oacute; mặt ở văn ph&ograve;ng l&agrave;m việc.</p>\r\n\r\n<p>GS.TS.BS. Đỗ Do&atilde;n Lợi chia sẻ &ldquo;N<em>gười trẻ cần d&agrave;nh thời gian hoạt động thể lực từ 30 - 60 ph&uacute;t/ng&agrave;y, &iacute;t nhất 4 ng&agrave;y/tuần, tốt nhất l&agrave; đều đặn h&agrave;ng ng&agrave;y để tăng cường sức khỏe tim mạch&rdquo;.</em></p>\r\n\r\n<p>Những b&agrave;i tập thể dục nhẹ nh&agrave;ng như: đi bộ, chạy bộ, đạp xe, bơi, yoga rất tốt cho sức khỏe tr&aacute;i tim, gi&uacute;p ph&ograve;ng tr&aacute;nh c&aacute;c bệnh mạch v&agrave;nh, tăng huyết &aacute;p, đột quỵ.</p>\r\n', '', '', '', '', '', 1, 'post-18', '5 thói quen giúp người trẻ tránh xa bệnh tim mạch', '', ''),
(99, 50, 'vn', 'UPS GTEC cho Thuê', 'Luôn xuất hiện rạng ngời hay thậm chí để mặt mộc, không phải ngẫu nhiên mà các mỹ nhân này lại có thể tự tin đến như vậy. ', '<p>Mary Ellen Phipps, chuy&ecirc;n gia dinh dưỡng v&agrave; l&agrave; &ocirc;ng chủ của Milk &amp; Honey Nutrition cho biết: &quot;Điều quan trọng l&agrave; phải nhớ rằng mỗi cơ thể đều c&oacute; đặc t&iacute;nh ri&ecirc;ng v&agrave; kh&aacute;c biệt n&ecirc;n kh&ocirc;ng thể lấy phương ph&aacute;p của người n&agrave;y để &aacute;p dụng cho người kh&aacute;c&quot;.</p>\r\n\r\n<p>Đối với kh&aacute;ch h&agrave;ng low-carb của m&igrave;nh, Phipps khuyến nghị chỉ n&ecirc;n ti&ecirc;u thụ 30-80g carbohydrate mỗi ng&agrave;y, t&ugrave;y thuộc v&agrave;o t&igrave;nh trạng cơ thể từng người. H&agrave;m lượng n&agrave;y chia đều c&aacute;c bữa như sau: Khoảng 12-25g cho bữa s&aacute;ng, 20-30g cho bữa trưa, 15-25g cho bữa tối v&agrave; 0-10g cho bữa ăn nhẹ.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 1, 'ups-gtec-cho-thue', 'UPS GTEC cho Thuê', 'a', '1'),
(100, 50, 'en', '20 thực phẩm lành mạnh', '20 thực phẩm lành mạnh', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n', '', '', '', '', '', 1, 'post-19', '20 thực phẩm lành mạnh', 'b', '2'),
(101, 51, 'vn', 'Hướng dẫn chức năng HID UPS BATTERY', 'Với việc nâng cấp sản phẩm UPS Santak từ dòng Blazer 2000EH sang Blazer 2000 PRO, Eaton đã tích hợp thêm tính năng HID UPS Battery nhằm hỗ trợ người tiêu dùng thiết lập thông số dung lượng ắc quy khi sử dụng bộ lưu điện được dễ dàng hơn.', '<h3>The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n\r\n<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>\r\n\r\n<h3>Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC</h3>\r\n\r\n<p>&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>\r\n\r\n<h3>1914 translation by H. Rackham</h3>\r\n\r\n<p>&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;</p>\r\n', '', '', '', '', '', 0, 'huong-dan-chuc-nang-hid-ups-battery', 'Hướng dẫn chức năng HID UPS BATTERY', '', ''),
(102, 51, 'en', 'english version Hướng dẫn chức năng HID UPS BATTERY', 'english version Với việc nâng cấp sản phẩm UPS Santak từ dòng Blazer 2000EH sang Blazer 2000 PRO, Eaton đã tích hợp thêm tính năng HID UPS Battery nhằm hỗ trợ người tiêu dùng thiết lập thông số dung lượng ắc quy khi sử dụng bộ lưu điện được dễ dàng hơn.', 'english version <h3>The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n\r\n<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>\r\n\r\n<h3>Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC</h3>\r\n\r\n<p>&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>\r\n\r\n<h3>1914 translation by H. Rackham</h3>\r\n\r\n<p>&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;</p>\r\n', '', '', '', '', '', 0, 'en-huong-dan-chuc-nang-hid-ups-battery', 'Hướng dẫn chức năng HID UPS BATTERY', '', ''),
(103, 52, 'vn', 'Tổng hợp kiến thức ắc quy của bộ lưu điện (UPS)', 'Bạn đã biết bộ lưu điện, hay còn được gọi là UPS, là thiết bị lưu trữ điện cho thiết bị điện tử trong các trường hợp mất điện đột ngột, tránh trường hợp mất các dữ liệu quan trọng. Bạn có biết để hoạt động được thì bộ lưu điện cũng phải sạc bình ắc quy? Dấu hiệu nào cho biết đã đến lúc thay ắc quy cho UPS?', '<p>Những lợi &iacute;ch khi sử dụng&nbsp;bộ lưu điện&nbsp;(UPS &ndash; Uninterruptible Power Supply) th&igrave; khỏi phải b&agrave;n đến nữa, ngo&agrave;i c&aacute;i t&ecirc;n bộ lưu điện th&igrave; UPS c&ograve;n được biết đến với những c&aacute;i t&ecirc;n kh&aacute;c như c&aacute;i / cục lưu điện. Nhiệm vụ ch&iacute;nh của UPS l&agrave; duy tr&igrave; thiết bị tiếp tục hoạt động trong l&uacute;c mất điện đột ngột, tr&aacute;nh trường hợp mất dữ liệu trong m&aacute;y khi mất điện.</p>\r\n\r\n<p>Nguy&ecirc;n tắc hoạt động của bộ lưu điện UPS dựa v&agrave;o nguy&ecirc;n l&yacute; biến đổi điện &aacute;p một chiều từ&nbsp;<em>ắc quy bộ lưu điện</em>&nbsp;sang d&ograve;ng điện xoay chiều để ph&ugrave; hợp với c&aacute;c thiết bị điện, ngo&agrave;i t&aacute;c dụng ch&iacute;nh th&igrave; UPS c&ograve;n c&oacute; một số c&ocirc;ng dụng phụ cho thiết bị như: chống nhiễu, chống giật, chống s&eacute;t, ổn định d&ograve;ng điện v&agrave; d&ograve;ng tần số điện.</p>\r\n\r\n<p>C&oacute; thể hiểu đơn giản l&agrave; tất cả c&aacute;c loại bộ lưu điện đều phải sử dụng ắc quy, nhưng những d&ograve;ng bộ lưu điện kh&aacute;c nhau sẽ sử dụng c&aacute;c b&igrave;nh ắc quy kh&aacute;c nhau.</p>\r\n', '', '', '', '', '', 0, 'tong-hop-kien-thuc-ac-quy-cua-bo-luu-dien-ups', 'Tổng hợp kiến thức ắc quy của bộ lưu điện (UPS)', '', ''),
(104, 52, 'en', 'english version Tổng hợp kiến thức ắc quy của bộ lưu điện (UPS)', 'english version Bạn đã biết bộ lưu điện, hay còn được gọi là UPS, là thiết bị lưu trữ điện cho thiết bị điện tử trong các trường hợp mất điện đột ngột, tránh trường hợp mất các dữ liệu quan trọng. Bạn có biết để hoạt động được thì bộ lưu điện cũng phải sạc bình ắc quy? Dấu hiệu nào cho biết đã đến lúc thay ắc quy cho UPS?', 'english version <p>Những lợi &iacute;ch khi sử dụng&nbsp;bộ lưu điện&nbsp;(UPS &ndash; Uninterruptible Power Supply) th&igrave; khỏi phải b&agrave;n đến nữa, ngo&agrave;i c&aacute;i t&ecirc;n bộ lưu điện th&igrave; UPS c&ograve;n được biết đến với những c&aacute;i t&ecirc;n kh&aacute;c như c&aacute;i / cục lưu điện. Nhiệm vụ ch&iacute;nh của UPS l&agrave; duy tr&igrave; thiết bị tiếp tục hoạt động trong l&uacute;c mất điện đột ngột, tr&aacute;nh trường hợp mất dữ liệu trong m&aacute;y khi mất điện.</p>\r\n\r\n<p>Nguy&ecirc;n tắc hoạt động của bộ lưu điện UPS dựa v&agrave;o nguy&ecirc;n l&yacute; biến đổi điện &aacute;p một chiều từ&nbsp;<em>ắc quy bộ lưu điện</em>&nbsp;sang d&ograve;ng điện xoay chiều để ph&ugrave; hợp với c&aacute;c thiết bị điện, ngo&agrave;i t&aacute;c dụng ch&iacute;nh th&igrave; UPS c&ograve;n c&oacute; một số c&ocirc;ng dụng phụ cho thiết bị như: chống nhiễu, chống giật, chống s&eacute;t, ổn định d&ograve;ng điện v&agrave; d&ograve;ng tần số điện.</p>\r\n\r\n<p>C&oacute; thể hiểu đơn giản l&agrave; tất cả c&aacute;c loại bộ lưu điện đều phải sử dụng ắc quy, nhưng những d&ograve;ng bộ lưu điện kh&aacute;c nhau sẽ sử dụng c&aacute;c b&igrave;nh ắc quy kh&aacute;c nhau.</p>\r\n', '', '', '', '', '', 0, 'en-tong-hop-kien-thuc-ac-quy-cua-bo-luu-dien-ups', 'Tổng hợp kiến thức ắc quy của bộ lưu điện (UPS)', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ1`
--

CREATE TABLE `optionsQ1` (
  `optionsQ1_id` int(11) NOT NULL,
  `optionsQ1_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ1`
--

INSERT INTO `optionsQ1` (`optionsQ1_id`, `optionsQ1_value`) VALUES
(1, 'Đau rát'),
(2, 'Chảy máu khi đi vệ sinh'),
(3, 'Ngứa ngáy, khó chịu, ẩm ướt có mùi khó chịu'),
(4, 'Búi trĩ sa ra ngoài (nhìn hoặc sờ)'),
(5, 'Không có biểu hiện nào như trên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ2`
--

CREATE TABLE `optionsQ2` (
  `optionsQ2_id` int(11) NOT NULL,
  `optionsQ2_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ2`
--

INSERT INTO `optionsQ2` (`optionsQ2_id`, `optionsQ2_value`) VALUES
(1, 'Có'),
(2, 'Không');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ3`
--

CREATE TABLE `optionsQ3` (
  `optionsQ3_id` int(11) NOT NULL,
  `optionsQ3_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ3`
--

INSERT INTO `optionsQ3` (`optionsQ3_id`, `optionsQ3_value`) VALUES
(1, 'Mới (đang bị)'),
(2, 'Lâu, tái đi tái lại'),
(3, 'Lâu, nhưng giờ đang bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ4`
--

CREATE TABLE `optionsQ4` (
  `optionsQ4_id` int(11) NOT NULL,
  `optionsQ4_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ4`
--

INSERT INTO `optionsQ4` (`optionsQ4_id`, `optionsQ4_value`) VALUES
(1, 'Máu dính trên giấy vệ sinh'),
(2, 'Máu dính trên phân hoặc nhỏ giọt'),
(3, 'Máu chảy thành tia'),
(4, 'Không thấy máu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ5`
--

CREATE TABLE `optionsQ5` (
  `optionsQ5_id` int(11) NOT NULL,
  `optionsQ5_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ5`
--

INSERT INTO `optionsQ5` (`optionsQ5_id`, `optionsQ5_value`) VALUES
(1, 'Hơi đau, tức hậu môn, khó chịu'),
(2, 'Đau nhiều, rát. đỡ khi nằm'),
(3, 'Rất đau rát, đứng ngồi, nằm không yên'),
(4, 'Không đau, bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ6`
--

CREATE TABLE `optionsQ6` (
  `optionsQ6_id` int(11) NOT NULL,
  `optionsQ6_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ6`
--

INSERT INTO `optionsQ6` (`optionsQ6_id`, `optionsQ6_value`) VALUES
(1, 'Ít, lồi ra như hạt ngô'),
(2, 'Nhiều, lồi ra bằng 1/3 đốt ngón tay'),
(3, 'Rất nhiều, dài >2.5cm'),
(4, 'Không sa, bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ7`
--

CREATE TABLE `optionsQ7` (
  `optionsQ7_id` int(11) NOT NULL,
  `optionsQ7_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ7`
--

INSERT INTO `optionsQ7` (`optionsQ7_id`, `optionsQ7_value`) VALUES
(1, 'Không tự co vào được, ấn vào lại sa ra, hoặc rặn nhẹ là sa ra'),
(2, 'Tự co lên được sau khi ấn vào nhẹ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ8`
--

CREATE TABLE `optionsQ8` (
  `optionsQ8_id` int(11) NOT NULL,
  `optionsQ8_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ8`
--

INSERT INTO `optionsQ8` (`optionsQ8_id`, `optionsQ8_value`) VALUES
(1, 'Khô, thoáng bình thường, không có dịch'),
(2, 'Hơi ẩm, ít mùi'),
(3, 'Ướt, có dịch vào đồ lót, mùi khó chịu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ9`
--

CREATE TABLE `optionsQ9` (
  `optionsQ9_id` int(11) NOT NULL,
  `optionsQ9_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ9`
--

INSERT INTO `optionsQ9` (`optionsQ9_id`, `optionsQ9_value`) VALUES
(1, 'Có'),
(2, 'Không'),
(3, 'Có nhưng mức độ 3-4h/ngày');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_receiver_name` text COLLATE utf8_unicode_ci,
  `orders_receiver_email` text COLLATE utf8_unicode_ci,
  `orders_receiver_phone` text COLLATE utf8_unicode_ci,
  `orders_receiver_address` text COLLATE utf8_unicode_ci,
  `orders_receiver_note` text COLLATE utf8_unicode_ci,
  `orders_total_price` float DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `orders_created_date` datetime DEFAULT NULL,
  `orders_state` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `order_detail_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `order_detail_quantity` int(11) DEFAULT NULL,
  `order_detail_price` double DEFAULT NULL,
  `order_detail_note` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0',
  `product_name` text COLLATE utf8_unicode_ci,
  `currency_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_state`
--

CREATE TABLE `order_state` (
  `order_state_id` int(11) NOT NULL,
  `order_state_name` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_state`
--

INSERT INTO `order_state` (`order_state_id`, `order_state_name`, `state`) VALUES
(1, 'Chờ xác nhận', 0),
(2, 'Đã xác nhận', 0),
(3, 'Chờ thanh toán', 0),
(4, 'Đã thanh toán', 0),
(5, 'Chờ gửi hàng', 0),
(6, '	\r\nHủy đơn hàng', 0),
(7, '	\r\nĐã chuyển hàng', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page`
--

CREATE TABLE `page` (
  `page_id` int(11) NOT NULL,
  `page_name` text COLLATE utf8_unicode_ci,
  `page_des` text COLLATE utf8_unicode_ci,
  `page_content` text COLLATE utf8_unicode_ci,
  `page_img` text COLLATE utf8_unicode_ci,
  `page_created_date` datetime DEFAULT NULL,
  `page_update_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `page_sub_info1` text COLLATE utf8_unicode_ci,
  `page_sub_info2` text COLLATE utf8_unicode_ci,
  `page_sub_info3` text COLLATE utf8_unicode_ci,
  `page_sub_info4` text COLLATE utf8_unicode_ci,
  `page_sub_info5` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `page`
--

INSERT INTO `page` (`page_id`, `page_name`, `page_des`, `page_content`, `page_img`, `page_created_date`, `page_update_date`, `state`, `page_sub_info1`, `page_sub_info2`, `page_sub_info3`, `page_sub_info4`, `page_sub_info5`, `keyword`, `title_seo`, `des_seo`, `friendly_url`, `created_id`) VALUES
(35, 'Giới thiệu', 'Lĩnh vực hoạt động: Marketing Online toàn diện - quảng cáo, seo, thiết kế website, email marketing, thiết kế đồ họa, quản trị mạng xã hội, quản trị website,…..', '<p><img alt=\"\" src=\"../image/slide1.jpg\" /></p>\r\n\r\n<p>C&ocirc;ng ty cổ phần DP GREEN- PHAR được th&agrave;nh lập bởi Dược sĩ Đai học Dược H&agrave; Nội Trần Kh&aacute;nh H&ograve;a từ 2015. Trải qua qu&aacute; tr&igrave;nh nghi&ecirc;n cứu &amp; tư vấn điều trị bệnh ngo&agrave;i c&ocirc;ng đồng, DP GREEN- PHAR được th&agrave;nh lập với mục ti&ecirc;u:</p>\r\n\r\n<p>DP GREEN-PHAR trung t&acirc;m tư vấn &amp; t&igrave;m giải ph&aacute;p xử l&yacute; c&aacute;c bệnh ngo&agrave;i cộng đồng.<br />\r\nƯu ti&ecirc;n giải quyết c&aacute;c vấn đề về sức khỏe cho qu&yacute; kh&aacute;ch h&agrave;ng l&agrave; số 1.<br />\r\nKết hợp với đội ngũ Dược Sĩ của nh&agrave; m&aacute;y Armephaco 12- x&iacute; nghiệp dược phẩm 120- Qu&acirc;n đội, nghi&ecirc;n cứu đưa ra những sản phẩm, giải ph&aacute;p chất lượng cao: HIỆU QUẢ- AN TO&Agrave;N với người sử dụng.</p>\r\n\r\n<h2>Th&ocirc;ng tin c&ocirc;ng ty:</h2>\r\n\r\n<p><strong>C&Ocirc;NG TY CỔ PHẦN DP GREEN-PHAR</strong><br />\r\nĐược cấp giấy chứng nhận ĐKKD số 0106800687 do Sở Kế Hoạch v&agrave; Đầu Tư H&agrave; Nội cấp ng&agrave;y 25/04/2015, c&oacute; trụ sở ch&iacute;nh đặt tại số 19, ng&otilde; 4, phố Văn La, H&agrave; Đ&ocirc;ng, H&agrave; Nội</p>\r\n\r\n<h2>C&aacute;c lĩnh vực hoạt động</h2>\r\n\r\n<p>Tư vấn &amp; t&igrave;m giải ph&aacute;p cho c&aacute;c bệnh tại c&ocirc;ng đồng<br />\r\nTham gia nghi&ecirc;n cứu c&ugrave;ng Armephaco 120, t&igrave;m ra c&aacute;c sản phẩm c&oacute; hiệu quả cao, an to&agrave;n với người sử dụng.<br />\r\nTrồng &amp; ph&aacute;t triển v&ugrave;ng dược liệu</p>\r\n\r\n<h2>Sau hơn 2 năm nghi&ecirc;n cứu &amp; s&agrave;ng lọc DP GREEN- PHAR đ&atilde; c&oacute; giải ph&aacute;p cho c&aacute;c vấn đề:</h2>\r\n\r\n<p>Bệnh trĩ, đi cầu ra m&aacute;u, bệnh trĩ sau sinh, Suy gi&atilde;n tĩnh mạch.<br />\r\nTiền đ&igrave;nh, đau đầu, ch&oacute;ng mặt, ngủ kh&ocirc;ng ngon.<br />\r\nBệnh đại tr&agrave;ng cấp, m&atilde;n &amp; đại tr&agrave;ng co thắt.<br />\r\nBệnh vi&ecirc;m gan, tăng men gan do rượu. chức năng gan suy giảm do thuốc, h&oacute;a chất...<br />\r\nC&aacute;c sản phẩm bổ sung yếu tố vi lượng: Ca++, Mg ++, Spirulina, men vi sinh...<br />\r\nĐến với DP GREEN- PHAR qu&yacute; kh&aacute;ch h&agrave;ng sẽ được đội ngũ B&aacute;c sĩ, Dược sĩ Đại học Dược H&agrave; Nội tư vấn &amp; t&igrave;m giải ph&aacute;p cho vấn đề sức khỏe của qu&yacute; kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<h2>Đội ngũ bao gồm:</h2>\r\n\r\n<p>B&aacute;c Sĩ, Thạc Sĩ: Nguyễn Văn Quyết.<br />\r\nDược sĩ Đại Học Dược H&agrave; Nội: Trần Kh&aacute;nh H&ograve;a.<br />\r\nDược sĩ Đại Học Dược H&agrave; Nội: Đo&agrave;n Xu&acirc;n Phan.<br />\r\nDược sĩ Đại Học Dược H&agrave; Nội: L&ecirc; Thị Đĩnh.<br />\r\nDược sĩ Đại Học Dược H&agrave; Nội: L&ecirc; Quang H&ograve;a.<br />\r\nC&aacute;c dược sĩ kh&aacute;c: Nguyễn th&igrave; Dơn, L&ecirc; Thị Gi&aacute;ng Hương, L&ecirc; Thị Th&uacute;y, Nguyễn Thị Nh&agrave;n.<br />\r\nVới mục ti&ecirc;u ưu ti&ecirc;n giải quyết c&aacute;c vấn đề về sức khỏe cho qu&yacute; kh&aacute;ch l&agrave; số 1, DP GREEN-PHAR đ&atilde; v&agrave; đang l&agrave;m tốt. Ch&uacute;ng t&ocirc;i cam kết lu&ocirc;n lu&ocirc;n cố gắng nghi&ecirc;n cứu, ho&agrave;n thiện ch&iacute;nh m&igrave;nh để đem lại những sản phẩm, dịch vụ v&agrave; giải ph&aacute;p tốt nhất cho qu&yacute; kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<h2>C&aacute;c chứng chỉ c&ocirc;ng ty đ&atilde; đạt được do bộ y tế cấp.</h2>\r\n\r\n<p>Nh&agrave; m&aacute;y Armepharco 120: GMP- WHO ( Thực h&agrave;nh sản xuất tốt).<br />\r\nDP GREEN- PHAR: GSP- WHO ( Thực h&agrave;nh bảo quản tốt).<br />\r\nDP GREEN &ndash; PHAR: GDP &ndash; WHO ( Thực h&agrave;nh ph&acirc;n phối tốt.<br />\r\nCảm ơn qu&yacute; kh&aacute;ch đ&atilde; tin d&ugrave;ng dịch vụ của ch&uacute;ng t&ocirc;i, DP GREEN- PHAR cam kết sẽ lu&ocirc;n đưa ra c&aacute;c sản phẩm, dịch vụ v&agrave; giải ph&aacute;p hiệu quả, an to&agrave;n cho qu&yacute; kh&aacute;ch.</p>\r\n', 'pa5.jpg', '2017-05-11 16:05:22', '2018-07-24 05:07:47', 1, '', '', '', '', '', 'Goldbridge Việt Nam', 'Giới thiệu', 'Lĩnh vực hoạt động: Marketing Online toàn diện - quảng cáo, seo, thiết kế website, email marketing, thiết kế đồ họa, quản trị mạng xã hội, quản trị website,…..', 'gioi-thieu', 1),
(36, 'Chuyển giao công nghệ', 'Bảng giá dịch thuật công chứng Giá tốt, chất lượng cao, dịch ngay\r\nHơn 8000 CTV Dịch thuật · Hơn 10 năm kinh nghiệm · 100% khách hàng hài lòng', '<h2><strong>PHƯƠNG THỨC GIAO DỊCH ĐỐI VỚI B&Aacute;O GI&Aacute; DỊCH THUẬT</strong></h2>\r\n\r\n<p>1. Ch&uacute;ng t&ocirc;i sẽ giao nhận t&agrave;i liệu tận nơi với những đơn đặt h&agrave;ng tr&ecirc;n 50 trang t&agrave;i liệu.<br />\r\n2. Để tiến h&agrave;nh c&ocirc;ng t&aacute;c dịch thuật v&agrave; phi&ecirc;n dịch Hợp đồng Qu&yacute; kh&aacute;ch cần đặt trước 30% gi&aacute; trị hợp đồng.<br />\r\n3. Nếu qu&yacute; kh&aacute;ch l&agrave; c&ocirc;ng ty c&oacute; nhu cầu dịch thuật dưới 10 trang, Qu&yacute; kh&aacute;ch chỉ cần fax x&aacute;c nhận y&ecirc;u cầu c&oacute; đầy đủ th&ocirc;ng tin li&ecirc;n quan k&egrave;m con dấu, ch&uacute;ng t&ocirc;i sẽ tiến h&agrave;nh thực hiện y&ecirc;u cầu dịch m&agrave; kh&ocirc;ng cần tiền đặt cọc hợp đồng.<br />\r\n4. Đối với kh&aacute;ch h&agrave;ng thường xuy&ecirc;n dịch tại C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i sẽ giao nhận tận nơi miễn ph&iacute;.</p>\r\n\r\n<p><strong>Phần ưu ti&ecirc;n kh&aacute;ch h&agrave;ng dịch với số lượng lớn</strong><br />\r\n1. Giảm 5% với số lượng từ 100 &ndash; 500 trang<br />\r\n2. Giảm 10% với số lượng từ 500 &ndash; 1000 trang<br />\r\n3. Giảm 15% với số lượng 1000 trang trở l&ecirc;n</p>\r\n\r\n<p><strong>Lưu &yacute; quan trọng:</strong></p>\r\n\r\n<ul>\r\n	<li>Gi&aacute; dịch chưa bao gồm VAT (10%).</li>\r\n	<li>Mức gi&aacute; tr&ecirc;n kh&ocirc;ng &aacute;p dụng đối với Kh&aacute;ch h&agrave;ng dịch chuy&ecirc;n ng&agrave;nh, dịch gấp, c&ocirc;ng chứng gấp.</li>\r\n	<li>Văn bản hiệu đ&iacute;nh: Hiệu đ&iacute;nh = 50% tiền dịch. Nếu t&agrave;i liệu hiệu đ&iacute;nh sai tr&ecirc;n 30% th&igrave; bản hiệu đ&iacute;nh đ&oacute; được t&iacute;nh bằng tiền dịch.</li>\r\n	<li>Số lượng từ tr&ecirc;n một trang được quy định dưới 300 từ (D&ugrave;ng hệ thống đếm từ tự động Word Count), trường hợp t&agrave;i liệu của qu&yacute; kh&aacute;ch l&agrave; bản cứng kh&ocirc;ng thể đếm từ được sẽ t&iacute;nh x&aacute;c xuất hoặc t&iacute;nh theo bản dịch l&uacute;c n&agrave;y số lượng từ tr&ecirc;n trang sản phẩm c&oacute; thể quy định lại, th&ocirc;ng thường sẽ giao động 10-20%.</li>\r\n	<li>Gi&aacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y sang tiếng nước ngo&agrave;i kh&aacute;c sẽ bằng chi ph&iacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y ra tiếng Việt cộng với từ tiếng Việt sang tiếng nước ngo&agrave;i thứ hai hoặc sẽ t&iacute;nh ph&iacute; dịch trực tiếp nếu c&oacute; y&ecirc;u cầu người bản địa dịch thuật lại</li>\r\n	<li>Nếu qu&yacute; kh&aacute;ch y&ecirc;u cầu dịch gấp, dịch v&agrave;o ng&agrave;y nghỉ, ng&agrave;y lễ gi&aacute; dịch sẽ tăng 25 %, th&ocirc;ng thường đơn đặt h&agrave;ng tr&ecirc;n 20 trang lấy trong ng&agrave;y được coi l&agrave; gấp. Nếu l&agrave; kh&aacute;ch h&agrave;ng thường xuy&ecirc;n của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; qu&yacute; kh&aacute;ch sẽ được miễn ph&iacute; dịch vụ cộng th&ecirc;m n&agrave;y.</li>\r\n	<li>Đối với t&agrave;i liệu chuy&ecirc;n ng&agrave;nh như: Hợp đồng kinh tế, kỹ thuật, thương mại, t&agrave;i ch&iacute;nh,y học, dược phẩm... th&igrave; ngo&agrave;i tiền dịch + 30% tiền dịch chuy&ecirc;n ng&agrave;nh.</li>\r\n</ul>\r\n\r\n<h3>BẢNG GI&Aacute; DỊCH THUẬT N&Agrave;Y C&Oacute; THỂ THAY ĐỔI PHỤ THUỘC V&Agrave;O NHU CẦU THỰC TẾ CỦA DỰ &Aacute;N, HỢP ĐỒNG V&Agrave; SỰ THỎA THUẬN GIỮA HAI B&Ecirc;N !</h3>\r\n\r\n<p>Chuyển ngữ v&agrave; địa phương h&oacute;a t&agrave;i liệu rất quan trọng n&oacute; c&oacute; ảnh hưởng rất lớn đến c&ocirc;ng việc v&agrave; quyết định trong dự &aacute;n của bạn. Qu&yacute; kh&aacute;ch đang t&igrave;m một đơn vị&nbsp;<a href=\"https://www.dichthuatchaua.com/bien-phien-dich/dich-thuat/dich-thuat-cong-chung.html\" title=\"Dịch thuật công chứng\">Dịch Thuật</a>&nbsp;chuy&ecirc;n nghiệp v&agrave; gi&agrave;u kinh nghiệm trong việc Địa phương h&oacute;a t&agrave;i liệu, đảm bảo thời gian ch&iacute;nh x&aacute;c v&agrave; chất lượng tuyệt đối, chi ph&iacute; hợp l&yacute; nhất. H&atilde;y li&ecirc;n hệ ngay với&nbsp;<a href=\"https://www.dichthuatchaua.com/gioi-thieu-cong-ty-dich-thuat.html\" title=\"Công ty dịch thuật chuyên nghiệp\">C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;</a>&nbsp;để được nhưng chuy&ecirc;n gia tư vấn chuy&ecirc;n nghiệp, gi&agrave;u kinh nghiệm gi&uacute;p Qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/image/images/55e7557453f13-sierra-fig2.jpg\" width=\"1600\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dự &aacute;n, Hợp đồng của Qu&yacute; kh&aacute;ch h&agrave;ng rất quan trọng, Qu&yacute; kh&aacute;ch h&agrave;ng đang muốn t&igrave;m một đơn vị Dịch thuật c&oacute; thể đảm bảo về thời gian, chất lượng v&agrave; cung cấp gi&aacute; cả tốt nhất, h&atilde;y li&ecirc;n lạc với số Hotline: 0932232318 (H&agrave; Nội) hoặc 0932237939 (TP HCM) của Dich thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; sẽ l&agrave;m Qu&yacute; kh&aacute;ch h&agrave;i l&ograve;ng.</p>\r\n\r\n<p>Cảm ơn Qu&yacute; kh&aacute;ch đ&atilde; ngh&eacute; thăm website của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i lu&ocirc;n cam kết đưa ra mức gi&aacute; cạnh tranh v&agrave; chất lương v&agrave; bảo mật bảo đảm tuyệt đối.</p>\r\n', 'pa4.jpg', '2017-05-11 16:05:03', '2018-04-07 11:04:55', 1, '', '', '', '', '', 'báo giá dịch vụ', 'Báo giá', '\"Làm kế toán phải có Tâm với Doanh nghiệp. Đang Tư vấn Miễn Phí. Tìm hiểu ngay!\r\nBảo hành trọn đời · Bảo vệ Doanh Nghiệp\"', 'chuyen-giao-cong-nghe', 1),
(37, 'Tuyển Cộng Tác Viên', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!', '<p>1. Nội dung c&ocirc;ng việc :<br />\r\n<br />\r\n. Triển khai c&aacute;c bản vẽ nội thất để sản xuất : tủ, giường, b&agrave;n, ghế.... bằng phần mềm autocad<br />\r\n<br />\r\n. Hỗ trợ kiểm tra đối chiếu bản vẽ với b&ecirc;n sản xuất hoặc tại c&ocirc;ng tr&igrave;nh<br />\r\n<br />\r\n2. Y&ecirc;u cầu :<br />\r\n<br />\r\n. Nam/ nữ c&oacute; kinh nghiệm tối thiểu 1 năm về họa vi&ecirc;n autocad cho c&aacute;c xưởng sản xuất nội thất<br />\r\n<br />\r\n. C&oacute; hiểu biết về kết cấu , kỹ thuật sản phẩm, thao t&aacute;c nhanh tr&ecirc;n phần mềm Autocad<br />\r\n<br />\r\n. C&oacute; phương tiện đi lại<br />\r\n<br />\r\n. C&oacute; thể đi c&ocirc;ng t&aacute;c ngắn hạn.<br />\r\n<br />\r\n. C&oacute; thể tăng ca theo y&ecirc;u cầu<br />\r\n<br />\r\n3. Chế độ :<br />\r\n<br />\r\n. Lương : 6.000.000 VND / th&aacute;ng hoặc thỏa thuận<br />\r\n<br />\r\n. L&agrave;m việc tại showroom 233B B&ugrave;i Thị Xu&acirc;n T&acirc;n B&igrave;nh HCM<br />\r\n<br />\r\n. Lương th&aacute;ng 13. ph&eacute;p năm, thưởng chuy&ecirc;n cần. thưởng lễ tết<br />\r\n<br />\r\n4. Th&ocirc;ng tin kh&aacute;c:<br />\r\n<br />\r\n. Nộp hồ sơ trực tiếp hoặc trực tuyến<br />\r\n<br />\r\n. Hồ sơ c&oacute; c&aacute;c bản vẽ đ&atilde; từng thực hiện<br />\r\n<br />\r\n. Tham khảo th&ecirc;m th&ocirc;ng tin c&ocirc;ng ty tại : www.zenhomes.vn<br />\r\n<br />\r\nLoại h&igrave;nh c&ocirc;ng việc: To&agrave;n thời gian<br />\r\n<br />\r\nLương: ₫6.000.000 /th&aacute;ng<br />\r\n<br />\r\nKinh nghiệm y&ecirc;u cầu:<br />\r\n<br />\r\nkhai triển autocad nội thất: 1 năm</p>\r\n', 'pa3.jpg', '2017-05-18 02:05:05', '2017-12-03 17:12:45', 1, '', '', '', '', '', 'tuyên cộng tác viên', 'Tuyển Cộng Tác Viên ', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!', 'tuyen-cong-tac-vien', 1),
(39, 'Câu hỏi thường gặp', 'Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết', '<h1>Ti&ecirc;u đề tin tức</h1>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px\">M&ocirc; tả ngắn của b&agrave;i viết, m&ocirc; tả ngắn của b&agrave;i viết, m&ocirc; tả ngắn của b&agrave;i viết, m&ocirc; tả ngắn của b&agrave;i viết, m&ocirc; tả ngắn của b&agrave;i viết</p>\r\n\r\n<p><img alt=\"\" src=\"../image/slide1.jpg\" /></p>\r\n\r\n<h2>Thẻ h2</h2>\r\n\r\n<p>Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết. Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết</p>\r\n\r\n<h2>Thẻ h2</h2>\r\n\r\n<p>Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết. Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết</p>\r\n\r\n<p><img alt=\"\" src=\"../image/formImgCate.jpg\" /></p>\r\n', 'pa2.jpg', '2017-07-10 15:07:50', '2017-12-03 17:12:33', 1, '', '', '', '', '', '', 'Câu hỏi thường gặp', 'Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viế', 'cau-hoi-thuong-gap', 1),
(40, 'Chính sách bảo mật', '', '<h2>DP GREEN-PHAR cam kết bảo mật th&ocirc;ng tin c&aacute; nh&acirc;n của tất cả kh&aacute;ch h&agrave;ng.</h2>\r\n\r\n<p>Cảm ơn bạn đ&atilde; truy cập website: www.greenphar.com<br />\r\nCh&uacute;ng t&ocirc;i hiểu r&otilde; tầm quan trọng của sự ri&ecirc;ng tư v&agrave; sẽ giữ b&iacute; mật th&ocirc;ng tin c&aacute; nh&acirc;n của bạn. Xin vui l&ograve;ng đọc bản Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y v&agrave; hiểu c&aacute;c h&agrave;nh động li&ecirc;n quan về th&ocirc;ng tin c&aacute; nh&acirc;n của bạn. Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y c&oacute; thể thay đổi m&agrave; kh&ocirc;ng th&ocirc;ng b&aacute;o trước, do đ&oacute; bạn vui l&ograve;ng thường xuy&ecirc;n r&agrave; so&aacute;t, cập nhật c&aacute;c điều khoản để biết những thay đổi.</p>\r\n\r\n<h2>Điều 1. Mục đ&iacute;ch v&agrave; phạm vi thu thập th&ocirc;ng tin</h2>\r\n\r\n<h3>1.1. Mục đ&iacute;ch thu thập th&ocirc;ng tin:</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i thực hiện việc thu thập th&ocirc;ng tin của bạn th&ocirc;ng qua website n&agrave;y nhằm:<br />\r\nDP GREEN-PHAR trung t&acirc;m tư vấn &amp; t&igrave;m giải ph&aacute;p xử l&yacute; c&aacute;c bệnh ngo&agrave;i cộng đồng.<br />\r\nGiải đ&aacute;p thắc mắc của bạn về vấn đề c&aacute;c bệnh m&agrave; bạn thắc mắc v&agrave; quan t&acirc;m.<br />\r\nGiới thiệu c&aacute;c h&agrave;ng h&oacute;a v&agrave; dịch vụ c&oacute; thể ph&ugrave; hợp với c&aacute;c nhu cầu v&agrave; sở th&iacute;ch của bạn.<br />\r\nCung cấp những th&ocirc;ng tin mới nhất của website.<br />\r\nXem x&eacute;t v&agrave; n&acirc;ng cấp nội dung, giao diện của website.<br />\r\nThực hiện hoạt động khảo s&aacute;t kh&aacute;ch h&agrave;ng.<br />\r\nThực hiện c&aacute;c hoạt động quảng b&aacute; sản phẩm v&agrave; giới thiệu những chương tr&igrave;nh khuyến m&atilde;i.<br />\r\nGiải quyết c&aacute;c vấn đề, tranh chấp ph&aacute;t sinh li&ecirc;n quan đến việc sử dụng website.<br />\r\nCh&uacute;ng t&ocirc;i bảo lưu quyền từ chối tr&aacute;ch nhiệm về bất kỳ thiệt hại n&agrave;o ph&aacute;t sinh nếu th&ocirc;ng tin c&aacute; nh&acirc;n của bạn bị đ&aacute;nh cắp, bị mất hoặc bị thiệt hại do sự cố hoặc bằng bất kỳ c&aacute;ch n&agrave;o kh&aacute;c.</p>\r\n\r\n<h3>1.2. Phạm vi thu thập th&ocirc;ng tin c&aacute; nh&acirc;n:</h3>\r\n\r\n<p>Th&ocirc;ng tin c&aacute; nh&acirc;n m&agrave; ch&uacute;ng t&ocirc;i thu thập của bạn khi bạn gửi thắc mắc về cho ch&uacute;ng t&ocirc;i, bao gồm:<br />\r\nHọ, t&ecirc;n, Năm sinh.<br />\r\nĐịa chỉ li&ecirc;n hệ.<br />\r\nĐiện thoại li&ecirc;n hệ.<br />\r\nEmail.<br />\r\nTh&ocirc;ng tin bệnh l&yacute; v&agrave; những thắc mắc về bệnh học li&ecirc;n quan.</p>\r\n\r\n<h2>Điều 2. Phạm vi sử dụng th&ocirc;ng tin</h2>\r\n\r\n<p>Th&ocirc;ng tin của bạn được sử dụng để ch&uacute;ng t&ocirc;i hoặc c&aacute;c b&ecirc;n c&oacute; li&ecirc;n quan kh&aacute;c c&oacute; thể thực hiện c&aacute;c y&ecirc;u cầu của bạn.<br />\r\nCh&uacute;ng t&ocirc;i c&oacute; thể li&ecirc;n hệ với bạn hoặc giới thiệu bạn đến c&aacute;c cuộc nghi&ecirc;n cứu bao gồm nghi&ecirc;n cứu sự h&agrave;i l&ograve;ng của kh&aacute;ch h&agrave;ng, thị trường, nội dung c&aacute; nh&acirc;n kh&aacute;c, hoặc c&oacute; li&ecirc;n quan đến một số giao dịch nhất định.<br />\r\nCh&uacute;ng t&ocirc;i thu thập th&ocirc;ng tin về truy cập website của bạn gồm những th&ocirc;ng tin c&oacute; thể nhận biết v&agrave; kh&ocirc;ng thể nhận biết để ph&acirc;n t&iacute;ch (v&iacute; dụ: dữ liệu ph&acirc;n t&iacute;ch việc truy cập website, &hellip;).<br />\r\nTh&ocirc;ng tin của bạn được sử dụng để gi&uacute;p cung cấp cho c&aacute;c dịch vụ của ch&uacute;ng t&ocirc;i v&agrave; ch&uacute;ng t&ocirc;i c&oacute; thể cung cấp th&ocirc;ng tin cho c&aacute;c c&ocirc;ng ty đại diện ch&uacute;ng t&ocirc;i. Những c&ocirc;ng ty n&agrave;y cũng chịu sự r&agrave;ng buộc nghi&ecirc;m ngặt bởi Ch&iacute;nh s&aacute;ch Bảo mật của ch&uacute;ng t&ocirc;i.</p>\r\n\r\n<h2>Điều 3. Thời gian lưu trữ th&ocirc;ng tin</h2>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i sẽ lưu trữ c&aacute;c th&ocirc;ng tin c&aacute; nh&acirc;n do kh&aacute;ch h&agrave;ng cung cấp tr&ecirc;n c&aacute;c hệ thống quản l&yacute;, lưu trữ dữ liệu của ch&uacute;ng t&ocirc;i hoặc ch&uacute;ng t&ocirc;i thu&ecirc; trong qu&aacute; tr&igrave;nh cung cấp dịch vụ cho kh&aacute;ch h&agrave;ng cho đến khi ho&agrave;n th&agrave;nh mục đ&iacute;ch thu thập hoặc khi bạn c&oacute; y&ecirc;u cầu hủy c&aacute;c th&ocirc;ng tin đ&atilde; cung cấp.</p>\r\n\r\n<h2>Điều 4. Địa chỉ của đơn vị thu thập v&agrave; quản l&yacute; th&ocirc;ng tin c&aacute; nh&acirc;n</h2>\r\n\r\n<p><strong>C&Ocirc;NG TY CỔ PHẦN DP GREEN-PHAR</strong><br />\r\nĐịa chỉ: Số 19, Ng&otilde; 4, phố Văn La, H&agrave; Đ&ocirc;ng, H&agrave; Nội.<br />\r\nĐiện thoại: (024) 6262.7731<br />\r\nEmail: dpgreenphar@gmail.com</p>\r\n\r\n<h2>Điều 5. Phương tiện v&agrave; c&ocirc;ng cụ để người d&ugrave;ng tiếp cận v&agrave; chỉnh sửa dữ liệu c&aacute; nh&acirc;n của m&igrave;nh.</h2>\r\n\r\n<p>Bạn c&oacute; thể tự đăng nhập v&agrave;o website qua link www.greenphar.com &nbsp;v&agrave; chỉnh sửa c&aacute;c th&ocirc;ng tin c&aacute; nh&acirc;n như: t&ecirc;n, số điện thoại, địa chỉ giao-nhận h&agrave;ng, ...<br />\r\nNếu bạn kh&ocirc;ng quan t&acirc;m hoặc kh&ocirc;ng muốn nhận tin tức, th&ocirc;ng tin, bạn c&oacute; thể thay đổi th&ocirc;ng tin của bạn v&agrave;o bất kỳ l&uacute;c n&agrave;o bằng c&aacute;ch gửi email về cho ch&uacute;ng t&ocirc;i qua địa chỉ email: cskh@greenphar.com</p>\r\n\r\n<h2>Điều 6. Cam kết bảo mật th&ocirc;ng tin c&aacute; nh&acirc;n kh&aacute;ch h&agrave;ng</h2>\r\n\r\n<p>Ngo&agrave;i việc sử dụng c&aacute;c th&ocirc;ng tin của bạn v&agrave;o c&aacute;c mục đ&iacute;ch n&ecirc;u tại Khoản 1.1 Điều 1 của Ch&iacute;nh s&aacute;ch bảo mật n&agrave;y v&agrave; phạm vi n&ecirc;u tại Điều 2 của Ch&iacute;nh s&aacute;ch bảo mật n&agrave;y, Ch&uacute;ng t&ocirc;i sẽ giữ b&iacute; mật th&ocirc;ng tin c&aacute; nh&acirc;n của bạn.&nbsp;Xin vui l&ograve;ng đọc bản Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y v&agrave; hiểu c&aacute;c h&agrave;nh động li&ecirc;n quan về th&ocirc;ng tin c&aacute; nh&acirc;n của bạn. Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y c&oacute; thể thay đổi m&agrave; kh&ocirc;ng th&ocirc;ng b&aacute;o trước, do đ&oacute; bạn vui l&ograve;ng thường xuy&ecirc;n r&agrave; so&aacute;t, cập nhật c&aacute;c điều khoản n&agrave;y để biết những thay đổi.<br />\r\n<strong>Ch&iacute;nh s&aacute;ch bảo mật tại DP GREEN- PHAR</strong><br />\r\n- DP GREEN-PHAR c&oacute; thể thay đổi ch&iacute;nh s&aacute;ch bảo mật v&agrave; mọi thay đổi sẽ được c&ocirc;ng khai tr&ecirc;n website www.greenphar.com<br />\r\n- Tất cả c&aacute;c thay đổi về ch&iacute;nh s&aacute;ch bảo mật ch&uacute;ng t&ocirc;i đều tu&acirc;n thủ theo quy định của Ph&aacute;p Luật Nh&agrave; Nước hiện h&agrave;nh.<br />\r\n- Mọi &yacute; kiến thắc mắc, khiếu nại v&agrave; tranh chấp vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i qua hotline Chăm s&oacute;c kh&aacute;ch h&agrave;ng:&nbsp;<strong>(024) 6262. 7731</strong><br />\r\n<br />\r\nTr&acirc;n trọng,<br />\r\n<strong>DP GREEN- PHAR: Chu Đ&aacute;o, Tin Cậy!</strong></p>\r\n', 'pa1.jpg', '2017-07-10 22:07:44', '2017-12-03 17:12:20', 1, '', '', '', '', '', '', 'Chính sách bảo mật', '', 'chinh-sach-bao-mat', 1),
(41, 'Chính sách đổi - trả', '', '<p>Qu&yacute; kh&aacute;ch vui l&ograve;ng chắc chắn rằng sản phẩm y&ecirc;u cầu đổi (trả) thỏa m&atilde;n điều kiện đổi trả h&agrave;ng của DP GREEN- PHAR tại ch&iacute;nh s&aacute;ch đổi trả h&agrave;ng h&oacute;a như sau:<br />\r\n<strong><em>C&aacute;c trường hợp được quyền đổi - trả sản phẩm:</em></strong><br />\r\nĐổi - trả do đơn h&agrave;ng sai hoặc thiếu sản phẩm so với th&ocirc;ng tin đặt h&agrave;ng.<br />\r\nTrả h&agrave;ng - ho&agrave;n tiền sản phẩm lỗi do qu&aacute; tr&igrave;nh vận chuyển (hộp thuốc bị bể, ẩm mốc,&hellip;).<br />\r\nTrả h&agrave;ng - ho&agrave;n tiền sản phẩm lỗi sản xuất (nh&atilde;n m&aacute;c kh&ocirc;ng r&otilde; chữ, th&ocirc;ng tin tr&ecirc;n bao b&igrave; sản phẩm kh&ocirc;ng ch&iacute;nh x&aacute;c, sản phẩm đ&atilde; bị mở trước khi đến tay kh&aacute;ch h&agrave;ng...).<br />\r\nTrả h&agrave;ng - ho&agrave;n tiền do lỗi giao h&agrave;ng sản phẩm hết hạn sử dụng.<br />\r\n<strong><em>Điều kiện bắt buộc:</em></strong><br />\r\nSản phẩm kh&ocirc;ng c&oacute; dấu hiệu đ&atilde; qua sử dụng, c&ograve;n nguy&ecirc;n hộp, tem, m&aacute;c, seal (seal vỏ hộp v&agrave; seal chai thuốc).<br />\r\nTrong trường hợp Kh&aacute;ch h&agrave;ng đ&atilde; khui seal vỏ hộp v&agrave; ph&aacute;t hiện chai thuốc c&oacute; lỗi sản xuất, vui l&ograve;ng chụp h&igrave;nh v&agrave; gọi Hotline để BP CSKH hướng dẫn th&ecirc;m.<br />\r\nĐối với c&aacute;c sản phẩm đ&atilde; khui seal chai thuốc, DP GREEN- PHAR xin được từ chối đổi trả.<br />\r\nQu&yacute; kh&aacute;ch h&agrave;ng lưu &yacute; lu&ocirc;n lu&ocirc;n kiểm tra kĩ t&igrave;nh trạng sản phẩm sau khi nhận được ngay tại thời điểm nhận h&agrave;ng v&agrave; c&oacute; sự chứng kiến của nh&acirc;n vi&ecirc;n giao h&agrave;ng. C&aacute;c vấn đề như bể vỡ, vỏ hộp chai thuốc bị r&aacute;ch n&aacute;t hoặc seal đ&atilde; bị mở, &hellip; Tất cả những sự cố n&agrave;y sẽ chỉ được đổi trả nếu do lỗi từ ph&iacute;a nh&acirc;n vi&ecirc;n của DP GREEN- PHAR v&agrave; đơn vị vận chuyển ViettelPost.</p>\r\n\r\n<h2>Thời hạn đổi trả h&agrave;ng</h2>\r\n\r\n<p>Sau khi nhận được sản phẩm của kh&aacute;ch h&agrave;ng gửi trả, Bộ phận Chăm s&oacute;c Kh&aacute;ch h&agrave;ng sẽ tiến h&agrave;nh kiểm tra chất lượng sản phẩm ngay lập tức. Quy tr&igrave;nh kiểm tra h&agrave;ng đổi trả được thực hiện trong v&ograve;ng từ 1-3 ng&agrave;y l&agrave;m việc, kết quả kiểm tra sẽ được th&ocirc;ng b&aacute;o đến kh&aacute;ch h&agrave;ng qua email v&agrave; tin nhắn điện thoại sau khi ho&agrave;n tất.<br />\r\nSau khi nhận được email hoặc tin nhắn th&ocirc;ng b&aacute;o từ DP GREEN- PHAR, kh&aacute;ch h&agrave;ng c&oacute; thể kiểm tra t&igrave;nh trạng đổi trả hoặc ho&agrave;n tiền th&ocirc;ng qua c&ocirc;ng cụ kiểm tra đơn h&agrave;ng của&nbsp;<strong>DP GREEN-PHAR</strong>.</p>\r\n\r\n<h2>Phương thức đổi trả h&agrave;ng đ&atilde; mua</h2>\r\n\r\n<p><strong><em>Bước 1:</em></strong> Đăng k&iacute;<br />\r\nKh&aacute;ch h&agrave;ng c&oacute; thể li&ecirc;n hệ với bộ phận chăm s&oacute;c kh&aacute;ch h&agrave;ng của DP GREEN-PHAR qua hotline (024) 6262.7731 hoặc truy cập trang web: WWW.GREENPHAR.COM &nbsp;v&agrave; cung cấp th&ocirc;ng tin chi tiết về sản phẩm lỗi gồm:<br />\r\n- T&ecirc;n sản phẩm<br />\r\n- M&atilde; số đơn h&agrave;ng, l&ocirc; sản xuất, hạn sử dụng<br />\r\n- Lỗi sản phẩm (m&ocirc; tả chi tiết v&agrave; k&egrave;m ảnh chụp)<br />\r\n<strong><em>Bước 2:</em></strong> Nhận tin nhắn x&aacute;c nhận đ&atilde; đăng k&yacute; đổi/trả th&agrave;nh c&ocirc;ng v&agrave; email hướng dẫn đ&oacute;ng g&oacute;i sản phẩm ho&agrave;n trả.<br />\r\nSau khi y&ecirc;u cầu đổi/trả được chấp nhận, DP GREEN-PHAR sẽ gửi đến qu&yacute; kh&aacute;ch một tin nhắn v&agrave; email hướng dẫn c&aacute;ch gửi trả sản phẩm.<br />\r\n<strong><em>Bước 3:</em></strong> Đ&oacute;ng g&oacute;i theo hướng dẫn v&agrave; mang sản phẩm đến Bưu Điện<br />\r\n<strong><em>Bước 4:</em></strong> Gửi trả sản phẩm về DP GREEN-PHAR<br />\r\nKh&aacute;ch h&agrave;ng vui l&ograve;ng gửi sản phẩm qua đường Bưu Điện về DP GREEN-PHAR trong v&ograve;ng 3 ng&agrave;y l&agrave;m việc kể từ khi th&ocirc;ng b&aacute;o với bộ phận Chăm S&oacute;c Kh&aacute;ch H&agrave;ng v&agrave; gửi k&egrave;m:<br />\r\n- H&oacute;a đơn mua h&agrave;ng hoặc đ&iacute;nh k&egrave;m giấy ghi ch&uacute; c&oacute; m&atilde; đơn h&agrave;ng<br />\r\n- H&oacute;a đơn gi&aacute; trị gia tăng (nếu c&oacute;)<br />\r\n- Phụ kiện đi k&egrave;m sản phẩm v&agrave; tặng khuyến m&atilde;i k&egrave;m theo (nếu c&oacute;)<br />\r\n<strong><em>Một số lưu &yacute; khi gửi h&agrave;ng đến bưu điện:</em></strong><br />\r\n- Kh&ocirc;ng ni&ecirc;m phong bề mặt th&ugrave;ng ​trước khi ho&agrave;n tất qu&aacute; tr&igrave;nh gửi h&agrave;ng ​v&igrave; c&oacute; thể bưu điện cần kiểm tra trước khi nhận h&agrave;ng. Đ&oacute;ng g&oacute;i, ch&egrave;n l&oacute;t sản phẩm như ban đầu.<br />\r\n- Cung cấp cho nh&acirc;n vi&ecirc;n bưu điện m&atilde; đơn h&agrave;ng v&agrave; m&atilde; gửi h&agrave;ng b&ecirc;n DP GREEN-PHAR đ&atilde; cung cấp. - Lưu &yacute; kh&ocirc;ng d&aacute;n băng keo trực tiếp l&ecirc;n hộp sản phẩm v&igrave; y&ecirc;u cầu đổi/trả c&oacute; thể sẽ bị từ chối nếu hộp sản phẩm bị hư hỏng.<br />\r\n- Vui l&ograve;ng li&ecirc;n hệ Bộ phận Chăm s&oacute;c Kh&aacute;ch h&agrave;ng của DP GREEN-PHAR &nbsp;(024) 6262. 7731&nbsp;khi c&oacute; bất cứ kh&oacute; khăn xảy ra trong qu&aacute; tr&igrave;nh l&agrave;m việc với bưu điện.<br />\r\n- Điền th&ocirc;ng tin m&atilde; số đơn h&agrave;ng l&ecirc;n th&ugrave;ng h&agrave;ng v&agrave; gửi về DP GREEN- PHAR theo địa chỉ nh&acirc;n vi&ecirc;n chăm s&oacute;c kh&aacute;ch h&agrave;ng đ&atilde; cung cấp.<br />\r\n<strong>Note:</strong>&nbsp;<em>Trong trường hợp kh&ocirc;ng nhớ th&ocirc;ng tin ở bước số 4, qu&yacute; kh&aacute;ch c&oacute; thể xuất tr&igrave;nh tin nhắn hoặc email nhận được từ DP GREEN- PHAR đ&atilde; gửi (ở bước 2) cho nh&acirc;n vi&ecirc;n bưu điện v&agrave; l&agrave;m theo hướng dẫn.</em><br />\r\n<span style=\"color:#cc0000\">Lưu &yacute;:</span> Kh&aacute;ch h&agrave;ng trong qu&aacute; tr&igrave;nh gửi trả sản phẩm về DP GREEN-PHAR sẽ chịu ho&agrave;n to&agrave;n tr&aacute;ch nhiệm về trạng th&aacute;i nguy&ecirc;n vẹn của sản phẩm.<br />\r\nSau khi nhận được sản phẩm kh&aacute;ch h&agrave;ng gửi trả về, DP GREEN- PHAR sẽ phản hồi v&agrave; cập nhật th&ocirc;ng tin tr&ecirc;n từng giai đoạn xử l&yacute; đến kh&aacute;ch h&agrave;ng qua email hoặc sms.</p>\r\n\r\n<h2>C&aacute;ch thức nhận lại tiền khi mua h&agrave;ng online</h2>\r\n\r\n<h3>Kh&aacute;ch h&agrave;ng sẽ nhận được số tiền ho&agrave;n trả sau bao l&acirc;u?</h3>\r\n\r\n<p>DP GREEN- PHAR sẽ ho&agrave;n tiền cho kh&aacute;ch h&agrave;ng trong trường hợp kh&aacute;ch h&agrave;ng trả hay hủy đơn h&agrave;ng.<br />\r\nPhương thức ho&agrave;n tiền bằng c&aacute;ch chuyển khoản ng&acirc;n h&agrave;ng.<br />\r\nTh&ocirc;ng tin sẽ được cập nhật đến cho qu&yacute; kh&aacute;ch bằng email hoặc SMS khi thủ tục ho&agrave;n tiền được tiến h&agrave;nh.<br />\r\n<strong>Phương thức ho&agrave;n tiền:</strong> Chuyển khoản ng&acirc;n h&agrave;ng<br />\r\n<strong>Thời gian ho&agrave;n tiền:</strong> 3 - 5 ng&agrave;y l&agrave;m việc<br />\r\nTrong trường hợp đ&atilde; vượt qu&aacute; c&aacute;c khoảng thời gian ho&agrave;n tiền tr&ecirc;n nhưng kh&aacute;ch h&agrave;ng vẫn chưa nhận được tiền, xin vui l&ograve;ng li&ecirc;n hệ với ng&acirc;n h&agrave;ng để được hỗ trợ hoặc Tổng đ&agrave;i Chăm s&oacute;c Kh&aacute;ch h&agrave;ng của DP GREEN-PHAR&nbsp;<strong>(024) 6262.7731</strong></p>\r\n\r\n<h3>Chi ph&iacute; cho việc đổi trả h&agrave;ng</h3>\r\n\r\n<p>Qu&yacute; Kh&aacute;ch h&agrave;ng vui l&ograve;ng thanh to&aacute;n tiền ph&iacute; vận chuyển khi Kh&aacute;ch h&agrave;ng thực hiện gửi h&agrave;ng tại bưu điện. DP GREEN- PHAR sẽ kh&ocirc;ng ho&agrave;n trả chi ph&iacute; n&agrave;y. Tuy nhi&ecirc;n sẽ giao h&agrave;ng miễn ph&iacute; đối với những đơn h&agrave;ng thuộc nh&oacute;m &ldquo;Đổi h&agrave;ng&quot;. Nếu c&oacute; bất k&igrave; vấn đề g&igrave; ph&aacute;t sinh, qu&yacute; kh&aacute;ch c&oacute; thể li&ecirc;n hệ với bộ phận CSKH của DP GREEN-PHAR theo Hotline&nbsp;<strong>(024) 6262.7731</strong></p>\r\n', 'pa5.jpg', '2017-07-10 22:07:03', '2017-12-03 17:12:06', 1, '', '', '', '', '', '', 'Chính sách đổi - trả', '', 'chinh-sach-doi-tra', 1),
(42, 'Hệ thống nhà thuốc', '', '<p>T&acirc;t cả c&aacute;c sản phẩm của DP GREEN-PHAR&nbsp;đ&atilde; được ph&acirc;n phối tại hơn 1000 nh&agrave; thuốc tại c&aacute;c tỉnh th&agrave;nh tr&ecirc;n khắp miền bắc<br />\r\nVui l&ograve;ng li&ecirc;n hệ tổng đ&agrave;i CSKH: <em><strong>024. 6262.7731</strong></em> để biết địa chỉ nh&agrave; thuốc gần nhất nơi bạn ở.<br />\r\nXin ch&acirc;n th&agrave;nh cảm ơn qu&yacute; kh&aacute;ch đ&atilde; tin d&ugrave;ng sản phẩm của <strong>DP GREEN-PHAR</strong>.</p>\r\n', 'pa4.jpg', '2017-07-10 22:07:22', '2017-12-03 17:12:52', 1, '', '', '', '', '', '', 'Hệ thống nhà thuốc', '', 'he-thong-nha-thuoc', 1),
(43, 'Hình thức giao hàng', '', '<p>Sau khi đặt h&agrave;ng th&agrave;nh c&ocirc;ng, Bộ phận Chăm s&oacute;c Kh&aacute;ch h&agrave;ng của DP GREEN- PHAR sẽ li&ecirc;n hệ với Qu&yacute; kh&aacute;ch để x&aacute;c nhận v&agrave; gửi email/sms về th&ocirc;ng tin đơn h&agrave;ng trong thời gian sớm nhất. Hiện tại DP GREEN-PHAR hợp t&aacute;c với ViettelPost - đơn vị chuyển ph&aacute;t h&agrave;ng đầu tại Việt Nam để thực hiện chuyển ph&aacute;t c&aacute;c sản phẩm tới Qu&yacute; kh&aacute;ch h&agrave;ng.<br />\r\nSau khi x&aacute;c nhận th&agrave;nh c&ocirc;ng, đơn h&agrave;ng sẽ được giao đến Qu&yacute; kh&aacute;ch trong khoảng thời gian sau đ&acirc;y: <strong>Tại Th&agrave;nh phố Hồ Ch&iacute; Minh v&agrave; H&agrave; Nội:</strong> Giao h&agrave;ng sau 1 - 4h l&agrave;m việc<br />\r\n<strong>C&aacute;c khu vực tỉnh, th&agrave;nh c&ograve;n lại:</strong> Giao h&agrave;ng sau 1 - 2 ng&agrave;y l&agrave;m việc<br />\r\n<em>*Lưu &yacute;: thời gian giao h&agrave;ng dự kiến ở tr&ecirc;n chỉ &aacute;p dụng cho c&aacute;c đơn h&agrave;ng trong nước.</em> Tất cả c&aacute;c đơn h&agrave;ng từ khắp cả nước sẽ được chia l&agrave;m 2 khu vực v&agrave; ph&iacute; vận chuyển &aacute;p dụng cho tất cả c&aacute;c đơn h&agrave;ng của Qu&yacute; kh&aacute;ch (trong đ&oacute;, DP GREEN-PHAR đ&atilde; hỗ trợ 50-70% chi ph&iacute; giao h&agrave;ng v&agrave; ph&iacute; thu tiền hộ):<br />\r\n<strong>Khu vực 1:</strong>&nbsp;Th&agrave;nh phố Hồ Ch&iacute; Minh v&agrave; H&agrave; Nội l&agrave; 10.000đ/đơn h&agrave;ng bất kỳ<br />\r\n<strong>Khu vực 2:</strong>&nbsp;C&aacute;c tỉnh, th&agrave;nh phố c&ograve;n lại tr&ecirc;n to&agrave;n quốc l&agrave; 20.000đ/đơn h&agrave;ng bất kỳ<br />\r\n<strong>FREE SHIP NẾU ĐƠN H&Agrave;NG TR&Ecirc;N 600.000 VNĐ.</strong></p>\r\n\r\n<p>Qu&yacute; kh&aacute;ch h&agrave;ng lưu &yacute; lu&ocirc;n lu&ocirc;n kiểm tra kĩ t&igrave;nh trạng sản phẩm sau khi nhận được ngay tại thời điểm nhận h&agrave;ng v&agrave; c&oacute; sự chứng kiến của nh&acirc;n vi&ecirc;n giao h&agrave;ng. C&aacute;c vấn đề như bể vỡ, vỏ hộp chai thuốc bị r&aacute;ch n&aacute;t hoặc seal đ&atilde; bị mở, &hellip; Tất cả những sự cố n&agrave;y sẽ chỉ được đổi trả nếu do lỗi từ ph&iacute;a nh&acirc;n vi&ecirc;n của DP GREEN-PHAR v&agrave; đơn vị vận chuyển ViettelPost.</p>\r\n\r\n<p>Trong qu&aacute; tr&igrave;nh giao h&agrave;ng c&oacute; thể ph&aacute;t sinh những vấn đề ngo&agrave;i &yacute; muốn về ph&iacute;a Kh&aacute;ch h&agrave;ng khiến việc giao h&agrave;ng bị chậm trễ. DP GREEN-PHAR sẽ linh động giải quyết cho Kh&aacute;ch h&agrave;ng trong từng trường hợp như sau:<br />\r\n- Kh&aacute;ch h&agrave;ng kh&ocirc;ng cung cấp ch&iacute;nh x&aacute;c v&agrave; đầy đủ địa chỉ giao h&agrave;ng v&agrave; số điện thoại li&ecirc;n lạc.<br />\r\n- Kh&aacute;ch h&agrave;ng kh&ocirc;ng sẵn s&agrave;ng để nhận h&agrave;ng v&agrave;o thời điểm giao h&agrave;ng.<br />\r\n- DP GREEN- PHAR đ&atilde; giao h&agrave;ng đ&uacute;ng hẹn theo th&ocirc;ng tin giao h&agrave;ng nhưng kh&ocirc;ng li&ecirc;n lạc được với Kh&aacute;ch h&agrave;ng v&agrave; chờ tại địa điểm giao h&agrave;ng qu&aacute; 15 ph&uacute;t, mọi nỗ lực của nh&acirc;n vi&ecirc;n giao h&agrave;ng nhằm li&ecirc;n hệ với Kh&aacute;ch h&agrave;ng đều kh&ocirc;ng th&agrave;nh c&ocirc;ng.<br />\r\n- Những trường hợp bất khả kh&aacute;ng như thi&ecirc;n tai, tai nạn giao th&ocirc;ng, gi&aacute;n đoạn mạng lưới giao th&ocirc;ng, đứt c&aacute;p, hệ thống bị tấn c&ocirc;ng.<br />\r\nC&aacute;c trường hợp kh&aacute;c: Trong trường hợp xảy ra sự cố phức tạp hơn, DP GREEN- PHAR bảo đảm quyền lợi lớn nhất thuộc về Kh&aacute;ch h&agrave;ng.</p>\r\n', 'pa3.jpg', '2017-07-10 22:07:41', '2017-12-03 17:12:42', 1, '', '', '', '', '', '', 'Hình thức giao hàng', '', 'hinh-thuc-giao-hang', 1),
(44, 'Hình thức thanh toán', '', '<h2>DP GREEN- PHAR hỗ trợ 4 phương thức thanh to&aacute;n cho tất cả c&aacute;c đơn h&agrave;ng tr&ecirc;n hệ thống.</h2>\r\n\r\n<p><strong>1. Thanh to&aacute;n khi nhận h&agrave;ng (COD): </strong>Qu&yacute; kh&aacute;ch sẽ thanh to&aacute;n tiền mặt cho nh&acirc;n vi&ecirc;n giao h&agrave;ng ngay sau khi nhận được h&agrave;ng.<br />\r\n<strong>2. Thanh to&aacute;n bằng Internet Banking:</strong> Thẻ/t&agrave;i khoản ATM của qu&yacute; kh&aacute;ch c&oacute; đăng k&iacute; sử dụng dịch vụ internet banking, DP GREEN- PHAR hiện hỗ trợ thanh to&aacute;n cho phần lớn c&aacute;c ng&acirc;n h&agrave;ng tại Việt Nam:<br />\r\n<img alt=\"\" src=\"../image/pay.jpg\" /> <strong>3. Thanh to&aacute;n bằng thẻ quốc tế Visa, Master Card:</strong>&nbsp;Ph&iacute; thanh to&aacute;n t&ugrave;y thuộc v&agrave;o từng loại thẻ qu&yacute; kh&aacute;ch d&ugrave;ng v&agrave; ng&acirc;n h&agrave;ng ph&aacute;t h&agrave;nh thẻ. Vui l&ograve;ng li&ecirc;n hệ với ng&acirc;n h&agrave;ng ph&aacute;t h&agrave;nh thẻ để biết r&otilde; ph&iacute; thanh to&aacute;n ph&aacute;t sinh.<br />\r\n<strong>4. Chuyển khoản trực tiếp tại ng&acirc;n h&agrave;ng:<br />\r\nCHỦ T&Agrave;I KHOẢN: CT CỔ PHẦN DP GREEN PHAR<br />\r\nSTK: 0691000342789<br />\r\nchi nh&aacute;nh h&agrave; t&acirc;y, Vietcombank.</strong><br />\r\n&quot;T&ecirc;n người mua h&agrave;ng, Tỉnh/th&agrave;nh phố&quot; chuyển tiền cho đơn h&agrave;ng ng&agrave;y ... th&aacute;ng ... năm ...<br />\r\n<em>Mọi thắc mắc v&agrave; g&oacute;p &yacute; vui l&ograve;ng li&ecirc;n hệ Hotline Chăm s&oacute;c kh&aacute;ch h&agrave;ng:&nbsp;<strong>(024) 6262.7731</strong></em></p>\r\n', 'pa2.jpg', '2017-07-10 22:07:55', '2017-12-03 17:12:31', 1, '', '', '', '', '', '', 'Hình thức thanh toán', '', 'hinh-thuc-thanh-toan', 1),
(45, 'Điều khoản sử dụng', '', '<h2>1. Giới thiệu</h2>\r\n\r\n<p>Ch&agrave;o mừng bạn đến với trang Thương mại điện tử DP GREEN-PHAR<br />\r\nGREENPHAR.COM l&agrave; trang Thương mại điện tử của C&ocirc;ng ty Cổ phần DP GREEN- PHAR - chuy&ecirc;n ph&acirc;n phối độc quyền c&aacute;c sản phẩm do Armephaco 120- x&iacute; nghiệp dược phẩm 120, qu&acirc;n đội, nghi&ecirc;n cứu v&agrave; sản xuất, được cấp giấy chứng nhận ĐKKD số 0106800687 do Sở Kế Hoạch v&agrave; Đầu Tư H&agrave; Nội cấp ng&agrave;y 25/4/2015<br />\r\nC&ocirc;ng ty CPDP GREEN- PHAR c&oacute; trụ sở ch&iacute;nh đặt tại 19, Ng&otilde; 4, Phố Văn La- H&agrave; Đ&ocirc;ng- H&agrave; Nội.<br />\r\nKhi bạn truy cập v&agrave;o website greenphar.com của ch&uacute;ng t&ocirc;i c&oacute; nghĩa l&agrave; bạn đồng &yacute; với c&aacute;c điều khoản n&agrave;y. Website c&oacute; quyền chỉnh sửa, thay đổi, th&ecirc;m hoặc lược bỏ bất kỳ phần n&agrave;o trong Điều khoản mua b&aacute;n h&agrave;ng h&oacute;a n&agrave;y v&agrave;o bất cứ l&uacute;c n&agrave;o. C&aacute;c thay đổi c&oacute; hiệu lực ngay khi được đăng tr&ecirc;n website m&agrave; kh&ocirc;ng cần th&ocirc;ng b&aacute;o trước. V&agrave; khi bạn tiếp tục sử dụng website, sau khi c&aacute;c thay đổi về Điều khoản n&agrave;y được đăng tải, c&oacute; nghĩa l&agrave; bạn chấp nhận với những thay đổi đ&oacute; của ch&uacute;ng t&ocirc;i.<br />\r\nV&igrave; vậy, bạn vui l&ograve;ng kiểm tra thường xuy&ecirc;n v&agrave; cập nhật những thay đổi trong Điều khoản mua b&aacute;n tr&ecirc;n website của ch&uacute;ng t&ocirc;i để đảm bảo quyền lợi của m&igrave;nh.</p>\r\n\r\n<h2>2. Hướng dẫn sử dụng website</h2>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"450\" src=\"/image/images/Hydrangeas.jpg\" width=\"600\" /></p>\r\n\r\n<p>Khi truy cập v&agrave;o website của DP GREEN-PHAR, bạn phải đảm bảo đủ 18 tuổi, hoặc c&oacute; sự gi&aacute;m s&aacute;t của cha mẹ hay người gi&aacute;m hộ hợp ph&aacute;p. Vui l&ograve;ng đảm bảo bạn c&oacute; đầy đủ h&agrave;nh vi d&acirc;n sự để thực hiện c&aacute;c giao dịch mua b&aacute;n h&agrave;ng h&oacute;a theo quy định hiện h&agrave;nh của ph&aacute;p luật Việt Nam.<br />\r\nCh&uacute;ng t&ocirc;i sẽ cũng cấp cho bạn một t&agrave;i khoản (Account) sử dụng để bạn c&oacute; thể mua sắm tr&ecirc;n website greenphar.com trong khu&ocirc;n khổ Điều khoản v&agrave; Điều kiện sử dụng đ&atilde; đề ra.<br />\r\nBạn sẽ phải đăng k&yacute; t&agrave;i khoản với th&ocirc;ng tin c&aacute; nh&acirc;n x&aacute;c thực v&agrave; phải cập nhật nếu c&oacute; bất kỳ thay đổi n&agrave;o trong qu&aacute; tr&igrave;nh sử dụng. Mỗi c&aacute; nh&acirc;n khi truy cập v&agrave;o website của DP GREEN- PHAR phải c&oacute; tr&aacute;ch nhiệm với mật khẩu, t&agrave;i khoản v&agrave; hoạt động của m&igrave;nh tr&ecirc;n web. B&ecirc;n cạnh đ&oacute;, bạn phải th&ocirc;ng b&aacute;o ngay cho ch&uacute;ng t&ocirc;i biết khi t&agrave;i khoản bị truy cập tr&aacute;i ph&eacute;p. Đối với những thiệt hại hoặc mất m&aacute;t g&acirc;y ra do bạn kh&ocirc;ng tu&acirc;n thủ quy định v&agrave; c&aacute;c điều khoản mua b&aacute;n đ&atilde; cam kết ph&iacute;a DP GREEN-PHAR sẽ kh&ocirc;ng chịu bất kỳ tr&aacute;ch nhiệm n&agrave;o, d&ugrave; trực tiếp hay gi&aacute;n tiếp.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"221\" src=\"/image/images/Cataloge%20Rem-File%20OK%2003.jpg\" width=\"600\" /></p>\r\n\r\n<p><img alt=\"\" height=\"900\" src=\"/image/images/11___.png\" width=\"900\" /><br />\r\nNghi&ecirc;m cấm sử dụng bất kỳ phần n&agrave;o của website n&agrave;y dưới mọi h&igrave;nh thức với mục đ&iacute;ch thương mại hoặc nh&acirc;n danh bất kỳ đối t&aacute;c thứ ba n&agrave;o nếu kh&ocirc;ng được sự cho ph&eacute;p bằng văn bản từ ph&iacute;a DP GREEN- PHAR. Nếu vi phạm bất cứ điều n&agrave;o trong đ&acirc;y, ch&uacute;ng t&ocirc;i sẽ hủy t&agrave;i khoản của bạn m&agrave; kh&ocirc;ng cần b&aacute;o trước.<br />\r\nBạn sẽ nhận được email quảng c&aacute;o từ website GREENPHAR.COM của ch&uacute;ng t&ocirc;i trong suốt qu&aacute; tr&igrave;nh đăng k&iacute;. Nếu cảm thấy bị l&agrave;m phiền, bạn c&oacute; thể từ chối nhận email bằng c&aacute;ch nhấp v&agrave;o đường link ở dưới c&ugrave;ng trong mọi email quảng c&aacute;o.</p>\r\n\r\n<h2>3. &Yacute; kiến của kh&aacute;ch h&agrave;ng</h2>\r\n\r\n<p>Tất cả nội dung tr&ecirc;n website v&agrave; những &yacute; kiến, nhận x&eacute;t ph&ecirc; b&igrave;nh của qu&yacute; kh&aacute;ch h&agrave;ng đều l&agrave; t&agrave;i sản của DP GREEN-PHAR ch&uacute;ng t&ocirc;i. Nếu ph&aacute;t hiện bất kỳ th&ocirc;ng tin giả mạo n&agrave;o, ch&uacute;ng t&ocirc;i sẽ v&ocirc; hiệu h&oacute;a t&agrave;i khoản của bạn ngay lập tức hoặc &aacute;p dụng c&aacute;c biện ph&aacute;p kh&aacute;c theo quy định của ph&aacute;p luật Việt Nam.</p>\r\n\r\n<h2>4. Chấp nhận đơn h&agrave;ng v&agrave; gi&aacute; cả</h2>\r\n\r\n<p>Với bất kỳ l&yacute; do g&igrave; li&ecirc;n quan đến lỗi kỹ thuật, hệ thống một c&aacute;ch kh&aacute;ch quan v&agrave;o bất kỳ l&uacute;c n&agrave;o, ph&iacute;a DP GREEN-PHAR ch&uacute;ng t&ocirc;i c&oacute; quyền từ chối hoặc hủy đơn h&agrave;ng của qu&yacute; kh&aacute;ch.<br />\r\nTrong qu&aacute; tr&igrave;nh x&aacute;c nhận đơn h&agrave;ng, ch&uacute;ng t&ocirc;i c&oacute; thể hỏi th&ecirc;m về số điện thoại v&agrave; địa chỉ của bạn để thuận tiện cho giao dịch.<br />\r\nDP GREEN-PHAR cam kết sẽ cung cấp th&ocirc;ng tin gi&aacute; cả ch&iacute;nh x&aacute;c nhất cho người ti&ecirc;u d&ugrave;ng. Tuy nhi&ecirc;n, đ&ocirc;i l&uacute;c vẫn c&oacute; sai s&oacute;t xảy ra, v&iacute; dụ như trường hợp gi&aacute; sản phẩm kh&ocirc;ng hiển thị ch&iacute;nh x&aacute;c tr&ecirc;n website hoặc sai gi&aacute;, t&ugrave;y theo từng trường hợp ph&iacute;a DP GREEN-PHAR ch&uacute;ng t&ocirc;i sẽ li&ecirc;n hệ hướng dẫn hoặc th&ocirc;ng b&aacute;o hủy đơn h&agrave;ng đ&oacute; cho qu&yacute; kh&aacute;ch.<br />\r\nDP GREEN-PHAR cũng c&oacute; quyền từ chối hoặc hủy bỏ bất kỳ đơn h&agrave;ng n&agrave;o của qu&yacute; kh&aacute;ch d&ugrave; đơn h&agrave;ng đ&oacute; đ&atilde; hay chưa được x&aacute;c nhận hoặc đ&atilde; thanh to&aacute;n.</p>\r\n\r\n<h2>5. Thay đổi hoặc hủy bỏ giao dịch</h2>\r\n\r\n<p>Trong mọi trường hợp, kh&aacute;ch h&agrave;ng đều c&oacute; quyền chấm dứt giao dịch nếu đ&atilde; thực hiện c&aacute;c biện ph&aacute;p sau đ&acirc;y:<br />\r\nTh&ocirc;ng b&aacute;o cho bộ phận chăm s&oacute;c kh&aacute;ch h&agrave;ng của DP GREEN-PHAR về việc hủy giao dịch qua hotline (024) 6262. 7731</p>\r\n\r\n<h2>6. Giải quyết lỗi nhập sai th&ocirc;ng tin</h2>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng c&oacute; tr&aacute;ch nhiệm cung cấp th&ocirc;ng tin đầy đủ v&agrave; ch&iacute;nh x&aacute;c khi tham gia giao dịch tại website greenphar.com. Trong trường hợp kh&aacute;ch h&agrave;ng nhập sai th&ocirc;ng tin v&agrave; gửi v&agrave;o site thương mại điện tử greenphar.com, ch&uacute;ng t&ocirc;i c&oacute; quyền từ chối thực hiện giao dịch. Ngo&agrave;i ra, trong mọi trường hợp, kh&aacute;ch h&agrave;ng đều c&oacute; quyền đơn phương chấm dứt giao dịch nếu đ&atilde; thực hiện c&aacute;c biện ph&aacute;p sau đ&acirc;y: Li&ecirc;n hệ với bộ phậm CSKH của DP GREEN-PHAR qua hotline (024) 6262. 7731<br />\r\nTrả lại sản phẩm đ&atilde; nhận v&agrave; kh&ocirc;ng c&oacute; dấu hiệu khui mở hoặc đ&atilde; sử dụng.<br />\r\nTrong trường hợp sai th&ocirc;ng tin ph&aacute;t sinh từ ph&iacute;a DP GREEN-PHAR m&agrave; DP GREEN-PHAR c&oacute; thể chứng minh đ&oacute; l&agrave; lỗi của hệ thống, ch&uacute;ng t&ocirc;i sẽ chịu ho&agrave;n to&agrave;n tr&aacute;ch nhiệm v&agrave; đền b&ugrave; cho kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<h2>7. Quyền ph&aacute;p l&yacute;</h2>\r\n\r\n<p>C&aacute;c điều kiện, điều khoản v&agrave; nội dung của website n&agrave;y được điều chỉnh bởi luật ph&aacute;p Việt Nam. T&ograve;a &aacute;n c&oacute; thẩm quyền tại Việt Nam sẽ giải quyết bất kỳ tranh chấp n&agrave;o ph&aacute;t sinh từ việc sử dụng tr&aacute;i ph&eacute;p trang web n&agrave;y.</p>\r\n\r\n<h2>8. Quy định về bảo mật</h2>\r\n\r\n<p>Website GREENPHAR.COM của ch&uacute;ng t&ocirc;i xem trọng việc bảo mật th&ocirc;ng tin, sử dụng c&aacute;c biện ph&aacute;p tốt nhất để bảo mật th&ocirc;ng tin v&agrave; việc thanh to&aacute;n của qu&yacute; kh&aacute;ch. Trong qu&aacute; tr&igrave;nh thanh to&aacute;n, th&ocirc;ng tin của qu&yacute; kh&aacute;ch sẽ được m&atilde; h&oacute;a để đảm bảo an to&agrave;n. Bạn sẽ tho&aacute;t khỏi chế độ an to&agrave;n sau khi ho&agrave;n th&agrave;nh qu&aacute; tr&igrave;nh đặt h&agrave;ng.<br />\r\nQu&yacute; kh&aacute;ch kh&ocirc;ng được sử dụng bất kỳ chương tr&igrave;nh, c&ocirc;ng cụ hay h&igrave;nh thức n&agrave;o kh&aacute;c để can thiệp v&agrave;o hệ thống hay l&agrave;m thay đổi cấu tr&uacute;c dữ liệu. Website greenphar.com cũng nghi&ecirc;m cấm việc ph&aacute;t t&aacute;n, truyền b&aacute; hay cổ vũ cho bất kỳ hoạt động n&agrave;o nhằm can thiệp, ph&aacute; hoại hay x&acirc;m nhập v&agrave;o dữ liệu của hệ thống. C&aacute; nh&acirc;n hay tổ chức vi phạm sẽ bị tước bỏ mọi quyền lợi cũng như sẽ bị truy tố trước ph&aacute;p luật nếu cần thiết.<br />\r\nMọi th&ocirc;ng tin giao dịch sẽ được bảo mật ngoại trừ trong trường hợp cơ quan ph&aacute;p luật y&ecirc;u cầu.</p>\r\n\r\n<h2>9. C&aacute;c phương thức thanh to&aacute;n &aacute;p dụng tại GREENPHAR.COM</h2>\r\n\r\n<p>Qu&yacute; kh&aacute;ch c&oacute; thể tham khảo c&aacute;c phương thức thanh to&aacute;n sau đ&acirc;y v&agrave; lựa chọn &aacute;p dụng phương thức ph&ugrave; hợp:</p>\r\n\r\n<h3>C&aacute;ch 1: Thanh to&aacute;n trực tiếp (T&igrave;m đến chuỗi nh&agrave; thuốc b&aacute;n lẻ)</h3>\r\n\r\n<p>Bước 1: T&igrave;m hiểu th&ocirc;ng tin về sản phẩm<br />\r\nBước 2: Đến địa chỉ nh&agrave; thuốc b&aacute;n lẻ<br />\r\nBước 3: Người mua thanh to&aacute;n v&agrave; nhận h&agrave;ng</p>\r\n\r\n<h3>C&aacute;ch 2: Nhận h&agrave;ng thanh to&aacute;n tiền - COD</h3>\r\n\r\n<p>Bước 1: T&igrave;m hiểu th&ocirc;ng tin về sản phẩm<br />\r\nBước 2: X&aacute;c thực đơn h&agrave;ng (qua điện thoại, tin nhắn, email)<br />\r\nBước 3: Bộ phận CSKH của DP GREEN-PHAR sẽ li&ecirc;n hệ với qu&yacute; kh&aacute;ch để x&aacute;c nhận th&ocirc;ng tin v&agrave; đơn h&agrave;ng, đủ điều kiện đơn h&agrave;ng sẽ được chuyển qua cho bộ phận giao h&agrave;ng<br />\r\nBước 4: Giao h&agrave;ng<br />\r\nBước 5: Nhận h&agrave;ng v&agrave; thanh to&aacute;n</p>\r\n\r\n<h3>C&aacute;ch 3: Thanh to&aacute;n online qua thẻ t&iacute;n dụng, chuyển khoản</h3>\r\n\r\n<p>Bước 1: T&igrave;m hiểu th&ocirc;ng tin về sản phẩm<br />\r\nBước 2: X&aacute;c thực đơn h&agrave;ng (qua điện thoại, tin nhắn, email)<br />\r\nBước 3: Kh&aacute;ch h&agrave;ng thực hiện thanh to&aacute;n 100% gi&aacute; trị đơn h&agrave;ng (đơn h&agrave;ng thanh to&aacute;n th&agrave;nh c&ocirc;ng sẽ b&aacute;o qua điện thoại, tin nhắn, email)<br />\r\nBước 4: Bộ phận CSKH của DP GREEN-PHAR sẽ li&ecirc;n hệ với qu&yacute; kh&aacute;ch để x&aacute;c nhận th&ocirc;ng tin v&agrave; đơn h&agrave;ng, đủ điều kiện đơn h&agrave;ng sẽ được chuyển qua cho bộ phận giao h&agrave;ng<br />\r\nBước 5: Giao h&agrave;ng<br />\r\nBước 6: Kh&aacute;ch h&agrave;ng nhận h&agrave;ng.</p>\r\n\r\n<h2>10. Giải quyết tranh chấp</h2>\r\n\r\n<p>Bất kỳ tranh c&atilde;i, khiếu nại hoặc tranh chấp ph&aacute;t sinh từ hoặc li&ecirc;n quan đến giao dịch tại greenphar.com hoặc c&aacute;c Quy định v&agrave; Điều kiện n&agrave;y đều sẽ được giải quyết bằng h&igrave;nh thức thương lượng, h&ograve;a giải, trọng t&agrave;i v&agrave;/hoặc T&ograve;a &aacute;n theo Luật bảo vệ Người ti&ecirc;u d&ugrave;ng Chương 4 về Giải quyết tranh chấp giữa người ti&ecirc;u d&ugrave;ng v&agrave; tổ chức, c&aacute; nh&acirc;n kinh doanh h&agrave;ng h&oacute;a, dịch vụ.</p>\r\n\r\n<h2>11. Luật ph&aacute;p v&agrave; thẩm quyền tại L&atilde;nh thổ Việt Nam</h2>\r\n\r\n<p>Tất cả c&aacute;c Điều Khoản, Điều Kiện v&agrave; Hợp Đồng n&agrave;y (v&agrave; tất cả nghĩa vụ ph&aacute;t sinh ngo&agrave;i hợp đồng hoặc c&oacute; li&ecirc;n quan) sẽ bị chi phối v&agrave; được hiểu theo luật ph&aacute;p của Việt Nam. Nếu c&oacute; tranh chấp ph&aacute;t sinh bởi c&aacute;c Quy định Sử dụng n&agrave;y, qu&yacute; kh&aacute;ch h&agrave;ng c&oacute; quyền gửi khiếu nại/khiếu kiện l&ecirc;n T&ograve;a &aacute;n c&oacute; thẩm quyền tại Việt Nam để giải quyết.</p>\r\n', 'pa1.jpg', '2017-07-10 22:07:51', '2017-12-03 17:12:21', 1, '', '', '', '', '', '', 'Điều khoản sử dụng', '', 'dieu-khoan-su-dung', 1),
(46, 'page test 1', '', '', '', '2017-12-08 14:12:11', NULL, 1, '', '', '', '', '', '', 'page test 1', '', 'page-test-1', 1),
(47, 'page test 2', '', '', '', '2017-12-08 14:12:24', NULL, 1, '', '', '', '', '', '', 'page test 2', '', 'page-test-2', 1),
(48, 'page test 3', '', '', '', '2017-12-08 14:12:34', NULL, 1, '', '', '', '', '', '', 'page test 3', '', 'page-test-3', 1),
(49, 'page test 4', '', '', '', '2017-12-08 14:12:56', NULL, 1, '', '', '', '', '', '', 'page test 4', '', 'page-test-4', 1),
(50, 'page test 5', '', '', '', '2017-12-08 14:12:09', NULL, 1, '', '', '', '', '', '', 'page test 5', '', 'page-test-5', 1),
(51, 'page test 6', '', '', '', '2017-12-08 14:12:24', NULL, 1, '', '', '', '', '', '', 'page test 6', '', 'page-test-6', 1),
(52, 'page test 7', '', '', '', '2017-12-08 14:12:35', NULL, 1, '', '', '', '', '', '', 'page test 7', '', 'page-test-7', 1),
(53, 'page test 8', '', '', '', '2017-12-08 14:12:46', NULL, 1, '', '', '', '', '', '', 'page test 8', '', 'page-test-8', 1);
INSERT INTO `page` (`page_id`, `page_name`, `page_des`, `page_content`, `page_img`, `page_created_date`, `page_update_date`, `state`, `page_sub_info1`, `page_sub_info2`, `page_sub_info3`, `page_sub_info4`, `page_sub_info5`, `keyword`, `title_seo`, `des_seo`, `friendly_url`, `created_id`) VALUES
(54, 'Chính sách vận chuyển', '', '<h1 style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><u><span style=\"font-family:Arial\"><img alt=\"Chính sách giao hàng SPRO\" height=\"284\" src=\"http://spro.vn/image/catalog/bt_products/free%20shipping8.jpg\" style=\"float:left\" width=\"300\" /></span></u></span></span></span></h1>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#ff3300\"><strong>1. PHẠM VI &Aacute;P DỤNG:</strong></span><br />\r\nTất cả c&aacute;c kh&aacute;ch h&agrave;ng mua sản phẩm tại Website;&nbsp;hoặc kh&aacute;ch h&agrave;ng đến trực tiếp xem v&agrave; mua h&agrave;ng tại c&ocirc;ng ty c&oacute; nhu cầu giao h&agrave;ng trực tiếp tại nh&agrave;.&nbsp;<br />\r\n<br />\r\n<span style=\"color:#ff3300\"><strong>2. H&Igrave;NH THỨC &Aacute;P DỤNG:</strong></span><br />\r\n<u>2.1. Giao h&agrave;ng miễn ph&iacute; :</u><br />\r\nGiao h&agrave;ng miễn ph&iacute;<strong>&nbsp;</strong><strong>&aacute;p dụng cho đơn h&agrave;ng gi&aacute; trị từ 1.000.000&nbsp;VNĐ</strong>&nbsp;trở l&ecirc;n, trong&nbsp;<strong>khu vực nội th&agrave;nh th&agrave;nh phố Hồ Ch&iacute; Minh.</strong><br />\r\nVới Qu&yacute; Kh&aacute;ch h&agrave;ng&nbsp;<strong>mua c&aacute;c sản phẩm cồng kềnh (khối lượng tr&ecirc;n 50kg), hoặc đơn h&agrave;ng c&oacute; gi&aacute; trị tr&ecirc;n 5.000.000 VNĐ</strong>: Qu&yacute; Kh&aacute;ch an t&acirc;m v&igrave; cũng sẽ được SPRO.VN giao h&agrave;ng miễn ph&iacute;&nbsp;trong khu vực l&ecirc;n đến 40km t&iacute;nh từ trụ sở SPRO.VN đến địa chỉ của Qu&yacute; Kh&aacute;ch.<br />\r\n<br />\r\n<u>2.2 . Giao h&agrave;ng t&iacute;nh ph&iacute;:</u></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\">- Nếu Qu&yacute; Kh&aacute;ch h&agrave;ng ở qu&aacute; xa so với trụ sở SPRO.VN, nhưng c&oacute; đ<strong>ơn h&agrave;ng tr&ecirc;n 5.000.000VNĐ hoặc đơn h&agrave;ng cồng kềnh lớn hơn 50kg</strong>, Qu&yacute; Kh&aacute;ch an t&acirc;m với ch&iacute;nh s&aacute;ch vận chuyển ưu đ&atilde;i của ch&uacute;ng t&ocirc;i:</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"color:#0000ff\"><strong><span style=\"font-family:Arial\">Miễn ph&iacute; giao h&agrave;ng cho 40km đầu ti&ecirc;n.</span></strong></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\">Với mỗi km tiếp theo, Qu&yacute; Kh&aacute;ch h&agrave;ng&nbsp;chỉ phải trả mức ph&iacute; rất mềm:</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><img alt=\"Chinh sach van chuyen\" height=\"34\" src=\"http://spro.vn/image/catalog/bt_products/them%2010k.png\" width=\"200\" /></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\">- C&aacute;c trường hợp giao h&agrave;ng dưới 1.000.000VNĐ hoặc vận chuyển bằng dịch vụ vận chuyển&nbsp;b&ecirc;n thứ 3&nbsp;sẽ t&iacute;nh ph&iacute; giao h&agrave;ng theo bảng ph&iacute; vận chuyển của h&atilde;ng vận chuyển thứ 3 hoặc theo bảng ph&iacute; của c&ocirc;ng ty. Chi ph&iacute; n&agrave;y sẽ được c&ocirc;ng ty th&ocirc;ng b&aacute;o v&agrave; x&aacute;c nhận với Qu&yacute; kh&aacute;ch trước khi Qu&yacute; kh&aacute;ch tiến h&agrave;nh thanh to&aacute;n v&agrave; c&ocirc;ng ty tiến h&agrave;nh gửi h&agrave;ng.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#ff3300\"><strong>3. THỜI GIAN GIAO H&Agrave;NG:</strong></span><br />\r\n-&nbsp;<strong>Thời gian giao h&agrave;ng sẽ từ 1-4 ng&agrave;y</strong>&nbsp;(Kh&ocirc;ng t&iacute;nh ng&agrave;y nghỉ, lễ, tết&nbsp;) t&ugrave;y v&agrave;o khoảng c&aacute;ch vận chuyển.<br />\r\n- Trong một số trường hợp kh&aacute;ch quan C&ocirc;ng ty c&oacute; thể giao h&agrave;ng chậm trễ do những điều kiện bất khả kh&aacute;ng như thời tiết xấu, điều kiện giao th&ocirc;ng kh&ocirc;ng thuận lợi, xe hỏng h&oacute;c tr&ecirc;n đường giao h&agrave;ng, trục trặc trong qu&aacute; tr&igrave;nh xuất h&agrave;ng.<br />\r\n- Trong thời gian chờ đợi nhận h&agrave;ng, Qu&yacute; kh&aacute;ch c&oacute; bất cứ thắc mắc g&igrave; về th&ocirc;ng tin vận chuyển xin vui l&ograve;ng li&ecirc;n hệ hotline của ch&uacute;ng t&ocirc;i để nhận trợ gi&uacute;p.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><a href=\"http://spro.vn/van-chuyen\" style=\"box-sizing:border-box; color:#ff5011; text-decoration:none; cursor:pointer\"><span style=\"font-family:Arial\"><img alt=\"Chính sách vận chuyển\" height=\"296\" src=\"http://spro.vn/image/catalog/bt_products/624.jpg\" title=\"Vận chuyển hàng hóa, vận chuyển giá rẻ, vận chuyển toàn quốc, vận chuyển  nhanh\" width=\"300\" /></span></a></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><em><span style=\"font-family:Arial\"><strong>Thời gian giao h&agrave;ng sẽ từ 1-4 ng&agrave;y</strong>&nbsp;(Kh&ocirc;ng t&iacute;nh ng&agrave;y nghỉ, lễ, tết&nbsp;)</span></em></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#ff3300\"><strong>4. TR&Aacute;CH NHIỆM VỚI H&Agrave;NG H&Oacute;A VẬN CHUYỂN.</strong></span><br />\r\n- C&ocirc;ng ty sẽ chịu tr&aacute;ch nhiệm với h&agrave;ng h&oacute;a v&agrave; c&aacute;c rủi ro như mất m&aacute;t hoặc hư hại của h&agrave;ng h&oacute;a trong suốt qu&aacute; tr&igrave;nh vận chuyển h&agrave;ng từ kho h&agrave;ng ch&uacute;ng t&ocirc;i đến Qu&yacute; kh&aacute;ch.<br />\r\n- Qu&yacute; kh&aacute;ch c&oacute; tr&aacute;ch nhiệm kiểm tra h&agrave;ng h&oacute;a khi nhận h&agrave;ng. Khi ph&aacute;t hiện h&agrave;ng h&oacute;a bị hư hại, trầy xước, bể vỡ, m&oacute;p m&eacute;o, hoặc sai h&agrave;ng h&oacute;a th&igrave; k&yacute; x&aacute;c nhận t&igrave;nh trạng h&agrave;ng h&oacute;a với Nh&acirc;n vi&ecirc;n giao nhận v&agrave; th&ocirc;ng b&aacute;o ngay cho Bộ phận chăm s&oacute;c kh&aacute;ch h&agrave;ng theo số hotline của C&ocirc;ng ty.<br />\r\n- Sau khi Qu&yacute;&nbsp;kh&aacute;ch đ&atilde; k&yacute; nhận h&agrave;ng m&agrave; kh&ocirc;ng ghi ch&uacute; hoặc c&oacute; &yacute; kiến về h&agrave;ng h&oacute;a. C&ocirc;ng ty kh&ocirc;ng c&oacute; tr&aacute;ch nhiệm với những y&ecirc;u cầu đổi trả v&igrave; hư hỏng, trầy xước, bể vỡ, m&oacute;p m&eacute;o, sai h&agrave;ng h&oacute;a,&hellip; từ Qu&yacute; kh&aacute;ch sau n&agrave;y.<br />\r\n- Nếu dịch vụ vận chuyển do Qu&yacute; kh&aacute;ch chỉ định v&agrave; lựa chọn th&igrave; qu&yacute; kh&aacute;ch sẽ chịu tr&aacute;ch nhiệm với h&agrave;ng h&oacute;a v&agrave; c&aacute;c rủi ro như mất m&aacute;t hoặc hư hại của h&agrave;ng h&oacute;a xảy ra trong suốt qu&aacute; tr&igrave;nh vận chuyển h&agrave;ng từ kho h&agrave;ng của c&ocirc;ng ty đến Qu&yacute; kh&aacute;ch. Kh&aacute;ch h&agrave;ng sẽ chịu tr&aacute;ch nhiệm cước ph&iacute; v&agrave; tổn thất li&ecirc;n quan.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><a href=\"http://spro.vn/van-chuyen\" style=\"box-sizing:border-box; color:#ff5011; text-decoration:none; cursor:pointer\"><span style=\"font-family:Arial\"><img alt=\"Chinh sach van chuyen SPRO\" height=\"224\" src=\"http://spro.vn/image/catalog/bt_products/free_shipping_0.jpg\" title=\"Chính sách vận chuyển\" width=\"300\" /></span></a></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\">Hotline:&nbsp;<strong>0283 5 534 298 hoặc&nbsp;0986 954 423&nbsp;</strong></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#ff3300\"><strong>5. C&Aacute;C ĐIỀU KIỆN KH&Aacute;C</strong></span><br />\r\n- Ch&iacute;nh s&aacute;ch giao h&agrave;ng miễn ph&iacute; kh&ocirc;ng &aacute;p dụng đối với những sản phẩm được mua trong chương tr&igrave;nh khuyến mại giờ v&agrave;ng, gi&aacute; sốc&hellip;..<br />\r\n- Chi ph&iacute; cầu đường, ph&iacute; v&agrave;o th&ocirc;n x&atilde; hoặc ph&iacute; đỗ xe tại chung cư do kh&aacute;ch h&agrave;ng tự thanh to&aacute;n.<br />\r\n- C&ocirc;ng ty chỉ giao h&agrave;ng cho đ&uacute;ng người nhận m&agrave; Qu&yacute; kh&aacute;ch h&agrave;ng đ&atilde; đăng k&yacute; khi mua h&agrave;ng. Trong qu&aacute; tr&igrave;nh giao h&agrave;ng nếu c&oacute; sự thay đổi người nhận một c&aacute;ch kh&ocirc;ng r&otilde; r&agrave;ng, ch&uacute;ng t&ocirc;i c&oacute; quyền từ chối giao h&agrave;ng v&agrave; y&ecirc;u cầu Qu&yacute; kh&aacute;ch h&agrave;ng nhận h&agrave;ng tại địa điểm của b&aacute;n h&agrave;ng của c&ocirc;ng ty.<br />\r\n- Nếu địa chỉ giao h&agrave;ng kh&ocirc;ng r&otilde; r&agrave;ng, nằm trong ng&otilde; ng&aacute;ch, hoặc ở những nơi nguy hiểm, những v&ugrave;ng đồi n&uacute;i hiểm trở, phương tiện giao th&ocirc;ng đi lại kh&oacute; khăn, ch&uacute;ng t&ocirc;i c&oacute; quyền từ chối vận chuyển, giao nhận h&agrave;ng trực tiếp.<br />\r\n- Trong c&aacute;c trường hợp bất khả kh&aacute;ng, do thi&ecirc;n tai, lũ lụt, hỏng h&oacute;c cầu ph&agrave; &hellip;, ch&uacute;ng t&ocirc;i kh&ocirc;ng chịu tr&aacute;ch nhiệm bồi thường thiệt hại ph&aacute;t sinh do giao h&agrave;ng kh&ocirc;ng đ&uacute;ng thời gian hoặc kh&ocirc;ng vận chuyển h&agrave;ng h&oacute;a đến địa điểm như đ&atilde; thỏa thuận với kh&aacute;ch h&agrave;ng.<br />\r\n- Trường hợp ch&uacute;ng t&ocirc;i đ&atilde; vận chuyển h&agrave;ng đến địa điểm giao nhận như thỏa thuận l&uacute;c mua h&agrave;ng, nhưng v&igrave; một l&yacute; do n&agrave;o đ&oacute; kh&aacute;ch h&agrave;ng y&ecirc;u cầu trả lại h&agrave;ng th&igrave; l&uacute;c đ&oacute; kh&aacute;ch h&agrave;ng phải chịu chi ph&iacute; vận chuyển theo quy định của c&ocirc;ng ty.<br />\r\n- Đối với những sản phẩm nặng v&agrave; cồng kềnh cần vận chuyển l&ecirc;n tầng m&agrave; kh&ocirc;ng c&oacute; thang m&aacute;y đề nghị kh&aacute;ch h&agrave;ng hỗ trợ trong việc giao nhận.<br />\r\n- Trong những ng&agrave;y đặc biệt hoặc c&aacute;c ng&agrave;y Lễ hội do ch&iacute;nh s&aacute;ch giao th&ocirc;ng chung bị hạn chế (cấm đường đối với một số phương tiện&hellip;) thời gian giao h&agrave;ng c&oacute; thể sẽ thay đổi, Ch&uacute;ng t&ocirc;i sẽ gọi điện cho kh&aacute;ch h&agrave;ng để thống nhất thời gian giao nhận.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><img alt=\"Phuong thuc van chuyen SPRO\" height=\"247\" src=\"http://spro.vn/image/catalog/bt_products/phuong-thuc-thanh-toan.jpg\" width=\"300\" /></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><em><span style=\"font-family:Arial\"><strong>SPRO.VN</strong>&nbsp;- Giao h&agrave;ng tận nơi, đ&uacute;ng h&agrave;ng đ&uacute;ng người</span></em></span></span></span></p>\r\n', NULL, '2017-12-08 14:12:56', '2018-04-02 00:04:08', 1, '', '', '', '', '', '', 'Chính sách vận chuyển', '', 'chinh-sach-van-chuyen', 1),
(55, 'Hướng dẫn vay vốn', '', '<h4 style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:18px\"><span style=\"color:#444444\"><span style=\"background-color:#ffffff\">Hướng dẫn mua h&agrave;ng</span></span></span></h4>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>SPRO.VN</strong>&nbsp;- L&agrave; 1 giải ph&aacute;p mua h&agrave;ng tuyệt vời đối với qu&yacute; kh&aacute;ch h&agrave;ng xa gần, bởi n&oacute; được đảm bảo t&iacute;nh ph&aacute;p l&yacute; của 1 c&ocirc;ng ty thiết bị l&acirc;u năm trong l&atilde;nh vực.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">Thị trường rộng lớn đ&atilde; v&agrave; đang li&ecirc;n kết được với nhiều đối t&aacute;c giao h&agrave;ng, tiện lợi, uy t&iacute;nh v&agrave; chuy&ecirc;n nghiệp.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">Vận chuyển h&agrave;ng h&oacute;a tận nơi, đối với những sản phẩm kh&oacute; lắp đặt đ&atilde; c&oacute; đội ngũ kỹ thuật lắp đặt hướng dẫn ngay tại nh&agrave; m&agrave; kh&ocirc;ng cần mất th&ecirc;m chi ph&iacute;.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">Điều đ&oacute; đồng nghĩa với việc kh&aacute;ch h&agrave;ng c&oacute; thể mua h&agrave;ng ngay khi ngồi tại nh&agrave; m&agrave; vẫn đảm bảo 100% những m&ocirc; tả của ch&uacute;ng t&ocirc;i l&agrave; ch&iacute;nh x&aacute;c, h&igrave;nh ảnh v&agrave; video l&agrave; x&aacute;c thực.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>C&Aacute;CH MUA H&Agrave;NG NHƯ THẾ N&Agrave;O?</strong></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong><u>Mua h&agrave;ng tại cửa h&agrave;ng:&nbsp;</u>&nbsp;</strong>143 B&igrave;nh Lợi, Phường 13, Quận B&igrave;nh Thạnh</span></span></span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>Bước 1:</strong>&nbsp;Li&ecirc;n hệ với số&nbsp;<strong>Hotline</strong>:&nbsp;<strong>028.35.534.298</strong>&nbsp;&nbsp;của cửa h&agrave;ng để biết ch&iacute;nh x&aacute;c về t&igrave;nh trạng h&agrave;ng h&oacute;a &ndash; Địa chỉ x&aacute;c thực v&agrave; t&ecirc;n người phụ tr&aacute;ch b&aacute;n h&agrave;ng.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>Bước 2:</strong>&nbsp;Mua h&agrave;ng + Đặt cọc + l&ecirc;n lịch giao h&agrave;ng (thỏa thuận)</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>Bước 3:</strong>&nbsp;Nhận h&agrave;ng tại nh&agrave;, kiểm tra đầy đủ phụ kiện, thanh to&aacute;n cho nh&acirc;n vi&ecirc;n giao h&agrave;ng số tiền c&ograve;n lại.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong><u>Mua h&agrave;ng online:</u></strong></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>Bước 1:</strong>&nbsp;Truy cập v&agrave;o website&nbsp;<strong>SPRO.VN</strong>&nbsp;t&igrave;m sản phẩm tr&ecirc;n menu hoặc tr&ecirc;n c&ocirc;ng cụ t&igrave;m kiếm.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">V&iacute; dụ: mua m&aacute;y gia xe gia đ&igrave;nh chỉ cần g&otilde; v&agrave;o thanh t&igrave;m kiếm &ldquo;M&aacute;y rửa xe gia đ&igrave;nh&rdquo; hoặc &ldquo;may rua xe gia dinh&rdquo; hoặc &ldquo;gia đ&igrave;nh&rdquo;, &ldquo;gia dinh&rdquo; tuy nhi&ecirc;n t&igrave;m c&agrave;ng chi tiết th&igrave; c&agrave;ng dễ chọn được sản phẩm ph&ugrave; hợp. Hoặc t&igrave;m theo m&atilde; sản phẩm v&iacute; dụ: &ldquo;k2 360&rdquo;...</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>Bước 2:</strong>&nbsp; Gọi điện thoại tr&ecirc;n website để được nh&acirc;n vi&ecirc;n tư vấn v&agrave; mua h&agrave;ng lu&ocirc;n qua điện thoại, hoặc click v&agrave;o n&uacute;t đặt h&agrave;ng l&agrave;m theo hướng dẫn sau đ&acirc;y để mua h&agrave;ng:</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>Bước 3:</strong>&nbsp;Tiếp nhận điện thoại x&aacute;c nhận đơn h&agrave;ng của c&aacute;c tổng đ&agrave;i vi&ecirc;n &ndash; Thỏa thuận c&aacute;c phương thức vận chuyển thanh to&aacute;n sao cho ph&ugrave; hợp nhất.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>Bước 4:</strong>&nbsp;Nhận h&agrave;ng v&agrave; kiểm tra h&agrave;ng h&oacute;a tại nh&agrave;, li&ecirc;n hệ số điện thoại kỹ thuật để nhận được tư vấn khi sử dụng hoặc thắc mắc về sự cố: 0961.958.460 (Mr. Tuấn).</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong><u>Mua h&agrave;ng qua điện thoại:</u></strong></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong><u>Hồ Ch&iacute; Minh:</u></strong><br />\r\n<br />\r\n<strong>&nbsp;Hotline</strong>: 0835.534.298</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">Mr.Ph&uacute;: 0986.954.423</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">Ms.Hường: 0909.115.704</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">Mr.Biển: 0965.570.643</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">Mr.Hưng: 0962.073.945 (Tiếp nhận kh&aacute;ch h&agrave;ng c&oacute; nhu cầu l&agrave;m đại l&yacute;)</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong><u>H&agrave; Nội:</u></strong></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>Hotline</strong>: 0976.666.906 Mr.Hưng</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">Mr.Đạo: 0964.063.553</span></span></span></p>\r\n', NULL, '2017-12-08 14:12:06', '2018-07-23 11:07:23', 1, '', '', '', '', '', '', 'Hướng dẫn vay vốn', '', 'huong-dan-vay-von', 1),
(56, 'Phương thức thanh toán', '', '<h3>Phương thức thanh to&aacute;n</h3>\r\n\r\n<p>C&Aacute;C TH&Ocirc;NG TIN CẦN BIẾT KHI THANH TO&Aacute;N</p>\r\n\r\n<h2 style=\"text-align:center\"><u><a href=\"http://spro.vn/thong-tin-thanh-toan.html\"><img alt=\"Phuong thuc thanh toan SPRO\" height=\"186\" src=\"http://spro.vn/image/catalog/bt_products/payment-options-banner.png\" title=\"phương thức thanh toan, phuong thuc thanh toan, thanh toán tiền hàng, thanh toan tien hang\" width=\"500\" /></a></u><br />\r\n&nbsp;</h2>\r\n\r\n<p>1. Thanh to&aacute;n COD: Nhận h&agrave;ng v&agrave; thanh to&aacute;n tiền mặt<br />\r\n<em>Khi qu&yacute; kh&aacute;ch y&ecirc;u cầu h&igrave;nh thức thanh to&aacute;n COD tức nhận h&agrave;ng v&agrave; thanh to&aacute;n tiền mặt,&nbsp;Qu&yacute; kh&aacute;ch vui l&ograve;ng lưu &yacute; những quy định sau:</em><br />\r\n- Đối với c&aacute;c sản phẩm được giao h&agrave;ng bởi nh&acirc;n vi&ecirc;n c&ocirc;ng ty, Qu&yacute; kh&aacute;ch vui l&ograve;ng thanh to&aacute;n đầy đủ sau khi nh&acirc;n vi&ecirc;n đ&atilde; giao h&agrave;ng cho Qu&yacute; kh&aacute;ch. Nếu cần hỗ trợ hướng dẫn sử dụng, hoặc kiểm tra m&aacute;y m&oacute;c, thiết bị ch&uacute;ng t&ocirc;i sẵn s&agrave;ng hỗ trợ ngay tại chỗ.<br />\r\n- Đối với h&agrave;ng h&oacute;a được gởi theo đường bưu điện hoặc dịch vụ chuyển ph&aacute;t nhanh. Qu&yacute; kh&aacute;ch vui l&ograve;ng thanh to&aacute;n trước cho nh&acirc;n vi&ecirc;n giao h&agrave;ng rồi mới b&oacute;c mở h&agrave;ng h&oacute;a (Đ&acirc;y l&agrave; quy định bắt buộc của đơn vị vận chuyển). Sau khi b&oacute;c mở h&agrave;ng h&oacute;a, nếu&nbsp;Qu&yacute; kh&aacute;ch cần th&ecirc;m hỗ trợ g&igrave;, Qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ với c&ocirc;ng ty ch&uacute;ng t&ocirc;i.<br />\r\n<br />\r\n2. Thanh to&aacute;n qua nh&agrave; xe, đơn vị chuyển ph&aacute;t<br />\r\n<em>Đối với c&aacute;c tỉnh ở xa khu vực th&agrave;nh phố Hồ Ch&iacute; Minh hay H&agrave; Nội. Ch&uacute;ng t&ocirc;i thường lựa chọn phương&nbsp;thức vận chuyển bằng xe kh&aacute;ch hoặc ch&agrave;nh xe vận chuyển. Điều n&agrave;y l&agrave;m giảm chi ph&iacute; vận chuyển đ&aacute;ng kể cho kh&aacute;ch h&agrave;ng. V&igrave; những sản phẩm c&oacute; k&iacute;ch thước hoặc trọng lượng lớn gần như kh&ocirc;ng thể gởi bưu điện hoặc c&oacute; gởi cước ph&iacute; sẽ rất cao. Do đ&oacute; Qu&yacute; kh&aacute;ch lưu &yacute; một số vấn đề sau đ&acirc;y:</em><br />\r\n- C&ocirc;ng ty sẽ &aacute;p dụng ch&iacute;nh s&aacute;ch nh&agrave; xe thu tiền hộ c&ocirc;ng ty. Do đ&oacute; nếu được y&ecirc;u cầu thu hộ, Qu&yacute; kh&aacute;ch vui l&ograve;ng chuẩn bị tiền thanh to&aacute;n trực tiếp cho nh&agrave; xe hoặc đơn vị vận chuyển do&nbsp;c&ocirc;ng ty y&ecirc;u cầu.<br />\r\n- Đối với c&aacute;c sản phẩm c&oacute; trọng lượng lớn v&agrave; kỹ thuật sử dụng phức tạp, Qu&yacute; kh&aacute;ch c&oacute; thể y&ecirc;u cầu nh&acirc;n vi&ecirc;n c&ocirc;ng ty đến tận nh&agrave; lắp đặt. V&agrave; sẽ thanh to&aacute;n cho nh&acirc;n vi&ecirc;n giao h&agrave;ng hoặc nh&acirc;n vi&ecirc;n lắp đặt t&ugrave;y theo th&ocirc;ng b&aacute;o của c&ocirc;ng ty.<br />\r\n<br />\r\n3.&nbsp;Thanh to&aacute;n tại c&ocirc;ng ty<br />\r\nQu&yacute; kh&aacute;ch mua h&agrave;ng c&oacute; thể đến địa chỉ c&ocirc;ng ty để xem h&agrave;ng v&agrave; mua h&agrave;ng:</p>\r\n\r\n<p><em>167 - 169 B&igrave;nh Lợi (Nơ Trang Long nối d&agrave;i), P. 13, Quận B&igrave;nh Thạnh, Tp. Hồ Ch&iacute; Minh .</em></p>\r\n\r\n<p><br />\r\n4. Thanh to&aacute;n c&ocirc;ng nợ<br />\r\nĐối với c&aacute;c c&ocirc;ng ty đề nghị thanh to&aacute;n c&ocirc;ng nợ, hai b&ecirc;n cần x&aacute;c nhận đơn đặt h&agrave;ng v&agrave; thời gian c&ocirc;ng nợ hoặc gởi PO đặt h&agrave;ng qua Email:&nbsp;Hotrospro@gmail.com. C&ocirc;ng ty sẽ xem x&eacute;t c&aacute;c trường hợp cụ thể v&agrave; th&ocirc;ng b&aacute;o đến kh&aacute;ch h&agrave;ng về việc c&oacute; chấp nhận&nbsp;c&ocirc;ng nợ hay kh&ocirc;ng.<br />\r\nLi&ecirc;n hệ trực tiếp qua số điện thoại:&nbsp;0283 5 534 298 hoặc&nbsp;0986 954 423&nbsp;<br />\r\n<br />\r\n5. Thanh to&aacute;n Chuyển khoản</p>\r\n\r\n<p style=\"text-align:center\"><a href=\"http://spro.vn/thong-tin-thanh-toan.html\"><img alt=\"Phuong thuc thanh toan SPRO \" height=\"313\" src=\"http://spro.vn/image/catalog/bt_products/computer-keyboard-and-credit-card.jpg\" title=\"phương thức thanh toán\" width=\"500\" /></a><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Qu&yacute; Kh&aacute;ch vui l&ograve;ng chuyển tiền&nbsp;v&agrave;o một&nbsp;trong c&aacute;c&nbsp;t&agrave;i khoản sau:</strong></p>\r\n\r\n<ul>\r\n	<li>Chủ t&agrave;i khoản: C&ocirc;ng ty TNHH C&ocirc;ng Nghiệp v&agrave; Thương Mại Nam Việt<br />\r\n	- Số TK: 060059386363<br />\r\n	-&nbsp;<strong>Tại NH Sacombank</strong>&nbsp;- PGD Phan Đăng Lưu - Chi nh&aacute;nh 8/3<br />\r\n	&nbsp;</li>\r\n	<li>Chủ TK: CT TNHH C&ocirc;ng Nghiệp v&agrave; TM Nam Việt<br />\r\n	- Số TK: 0531002529891<br />\r\n	-&nbsp;<strong>Tại NH Vietcombank&nbsp;</strong>- Chi nh&aacute;nh Đ&ocirc;ng S&agrave;i G&ograve;n<br />\r\n	&nbsp;</li>\r\n	<li>Chủ TK: C&ocirc;ng ty TNHH C&ocirc;ng Nghiệp v&agrave; Thương Mại Nam Việt<br />\r\n	- Số TK: 19026579068019<br />\r\n	-&nbsp;<strong>Tại NH Techcombank</strong>&nbsp;- Chi nh&aacute;nh Nguyễn Th&aacute;i Sơn<br />\r\n	&nbsp;</li>\r\n	<li>Chủ TK: C&ocirc;ng ty TNHH C&ocirc;ng Nghiệp v&agrave; Thương Mại Nam Việt<br />\r\n	- Số TK: 100414851047518<br />\r\n	-&nbsp;<strong>Tại NH Eximbank</strong>&nbsp;- Chi nh&aacute;nh Chợ Lớn<br />\r\n	&nbsp;</li>\r\n	<li>Chủ TK: C&ocirc;ng ty TNHH C&ocirc;ng Nghiệp v&agrave; Thương Mại Nam Việt<br />\r\n	- Số TK: 172704070003087<br />\r\n	-&nbsp;<strong>Tại NH HD Bank</strong>&nbsp;- Chi nh&aacute;nh Gia Định<br />\r\n	&nbsp;</li>\r\n	<li>TK c&aacute; nh&acirc;n kế to&aacute;n trưởng. Chủ TK: Phạm Thị&nbsp;Tuyết<br />\r\n	- Số TK: 108004183511<br />\r\n	-&nbsp;<strong>Tại NH Vietinbank</strong>&nbsp;- Chi nh&aacute;nh Vũng T&agrave;u.</li>\r\n</ul>\r\n\r\n<p>Hiện nay, c&ocirc;ng ty ch&uacute;ng t&ocirc;i kh&ocirc;ng &aacute;p dụng h&igrave;nh thức mua h&agrave;ng trả g&oacute;p. Khi mua h&agrave;ng nếu Qu&yacute; kh&aacute;ch c&oacute; thắc mắc về vấn đề thanh to&aacute;n, xin vui l&ograve;ng xem qua c&aacute;c th&ocirc;ng tin ph&iacute;a dưới.</p>\r\n\r\n<p>Sau khi đ&atilde; chuyển tiền, Qu&yacute; kh&aacute;ch vui l&ograve;ng th&ocirc;ng b&aacute;o ngay để c&ocirc;ng ty ch&uacute;ng t&ocirc;i tiện theo d&otilde;i,&nbsp;ghi nhận v&agrave; chuyển h&agrave;ng ngay cho Qu&yacute; kh&aacute;ch.&nbsp;</p>\r\n\r\n<p>--------------------------------------------------------------------</p>\r\n\r\n<p style=\"text-align:center\">Rất cảm ơn sự ủng hộ của Qu&yacute; kh&aacute;ch!</p>\r\n', NULL, '2017-12-08 14:12:15', '2018-04-02 00:04:15', 1, '', '', '', '', '', '', 'Phương thức thanh toán', '', 'phuong-thuc-thanh-toan', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page_languages`
--

CREATE TABLE `page_languages` (
  `id` bigint(20) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_name` text COLLATE utf8_unicode_ci,
  `lang_page_des` text COLLATE utf8_unicode_ci,
  `lang_page_content` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `page_languages`
--

INSERT INTO `page_languages` (`id`, `page_id`, `languages_code`, `lang_page_name`, `lang_page_des`, `lang_page_content`, `lang_page_sub_info1`, `lang_page_sub_info2`, `lang_page_sub_info3`, `lang_page_sub_info4`, `lang_page_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `keyword`, `des_seo`) VALUES
(35, 35, 'vn', 'Giới thiệu', 'Lĩnh vực hoạt động: Marketing Online toàn diện - quảng cáo, seo, thiết kế website, email marketing, thiết kế đồ họa, quản trị mạng xã hội, quản trị website,…..', '<p><img alt=\"\" src=\"../image/slide1.jpg\" /></p>\r\n\r\n<p>C&ocirc;ng ty cổ phần DP GREEN- PHAR được th&agrave;nh lập bởi Dược sĩ Đai học Dược H&agrave; Nội Trần Kh&aacute;nh H&ograve;a từ 2015. Trải qua qu&aacute; tr&igrave;nh nghi&ecirc;n cứu &amp; tư vấn điều trị bệnh ngo&agrave;i c&ocirc;ng đồng, DP GREEN- PHAR được th&agrave;nh lập với mục ti&ecirc;u:</p>\r\n\r\n<p>DP GREEN-PHAR trung t&acirc;m tư vấn &amp; t&igrave;m giải ph&aacute;p xử l&yacute; c&aacute;c bệnh ngo&agrave;i cộng đồng.<br />\r\nƯu ti&ecirc;n giải quyết c&aacute;c vấn đề về sức khỏe cho qu&yacute; kh&aacute;ch h&agrave;ng l&agrave; số 1.<br />\r\nKết hợp với đội ngũ Dược Sĩ của nh&agrave; m&aacute;y Armephaco 12- x&iacute; nghiệp dược phẩm 120- Qu&acirc;n đội, nghi&ecirc;n cứu đưa ra những sản phẩm, giải ph&aacute;p chất lượng cao: HIỆU QUẢ- AN TO&Agrave;N với người sử dụng.</p>\r\n\r\n<h2>Th&ocirc;ng tin c&ocirc;ng ty:</h2>\r\n\r\n<p><strong>C&Ocirc;NG TY CỔ PHẦN DP GREEN-PHAR</strong><br />\r\nĐược cấp giấy chứng nhận ĐKKD số 0106800687 do Sở Kế Hoạch v&agrave; Đầu Tư H&agrave; Nội cấp ng&agrave;y 25/04/2015, c&oacute; trụ sở ch&iacute;nh đặt tại số 19, ng&otilde; 4, phố Văn La, H&agrave; Đ&ocirc;ng, H&agrave; Nội</p>\r\n\r\n<h2>C&aacute;c lĩnh vực hoạt động</h2>\r\n\r\n<p>Tư vấn &amp; t&igrave;m giải ph&aacute;p cho c&aacute;c bệnh tại c&ocirc;ng đồng<br />\r\nTham gia nghi&ecirc;n cứu c&ugrave;ng Armephaco 120, t&igrave;m ra c&aacute;c sản phẩm c&oacute; hiệu quả cao, an to&agrave;n với người sử dụng.<br />\r\nTrồng &amp; ph&aacute;t triển v&ugrave;ng dược liệu</p>\r\n\r\n<h2>Sau hơn 2 năm nghi&ecirc;n cứu &amp; s&agrave;ng lọc DP GREEN- PHAR đ&atilde; c&oacute; giải ph&aacute;p cho c&aacute;c vấn đề:</h2>\r\n\r\n<p>Bệnh trĩ, đi cầu ra m&aacute;u, bệnh trĩ sau sinh, Suy gi&atilde;n tĩnh mạch.<br />\r\nTiền đ&igrave;nh, đau đầu, ch&oacute;ng mặt, ngủ kh&ocirc;ng ngon.<br />\r\nBệnh đại tr&agrave;ng cấp, m&atilde;n &amp; đại tr&agrave;ng co thắt.<br />\r\nBệnh vi&ecirc;m gan, tăng men gan do rượu. chức năng gan suy giảm do thuốc, h&oacute;a chất...<br />\r\nC&aacute;c sản phẩm bổ sung yếu tố vi lượng: Ca++, Mg ++, Spirulina, men vi sinh...<br />\r\nĐến với DP GREEN- PHAR qu&yacute; kh&aacute;ch h&agrave;ng sẽ được đội ngũ B&aacute;c sĩ, Dược sĩ Đại học Dược H&agrave; Nội tư vấn &amp; t&igrave;m giải ph&aacute;p cho vấn đề sức khỏe của qu&yacute; kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<h2>Đội ngũ bao gồm:</h2>\r\n\r\n<p>B&aacute;c Sĩ, Thạc Sĩ: Nguyễn Văn Quyết.<br />\r\nDược sĩ Đại Học Dược H&agrave; Nội: Trần Kh&aacute;nh H&ograve;a.<br />\r\nDược sĩ Đại Học Dược H&agrave; Nội: Đo&agrave;n Xu&acirc;n Phan.<br />\r\nDược sĩ Đại Học Dược H&agrave; Nội: L&ecirc; Thị Đĩnh.<br />\r\nDược sĩ Đại Học Dược H&agrave; Nội: L&ecirc; Quang H&ograve;a.<br />\r\nC&aacute;c dược sĩ kh&aacute;c: Nguyễn th&igrave; Dơn, L&ecirc; Thị Gi&aacute;ng Hương, L&ecirc; Thị Th&uacute;y, Nguyễn Thị Nh&agrave;n.<br />\r\nVới mục ti&ecirc;u ưu ti&ecirc;n giải quyết c&aacute;c vấn đề về sức khỏe cho qu&yacute; kh&aacute;ch l&agrave; số 1, DP GREEN-PHAR đ&atilde; v&agrave; đang l&agrave;m tốt. Ch&uacute;ng t&ocirc;i cam kết lu&ocirc;n lu&ocirc;n cố gắng nghi&ecirc;n cứu, ho&agrave;n thiện ch&iacute;nh m&igrave;nh để đem lại những sản phẩm, dịch vụ v&agrave; giải ph&aacute;p tốt nhất cho qu&yacute; kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<h2>C&aacute;c chứng chỉ c&ocirc;ng ty đ&atilde; đạt được do bộ y tế cấp.</h2>\r\n\r\n<p>Nh&agrave; m&aacute;y Armepharco 120: GMP- WHO ( Thực h&agrave;nh sản xuất tốt).<br />\r\nDP GREEN- PHAR: GSP- WHO ( Thực h&agrave;nh bảo quản tốt).<br />\r\nDP GREEN &ndash; PHAR: GDP &ndash; WHO ( Thực h&agrave;nh ph&acirc;n phối tốt.<br />\r\nCảm ơn qu&yacute; kh&aacute;ch đ&atilde; tin d&ugrave;ng dịch vụ của ch&uacute;ng t&ocirc;i, DP GREEN- PHAR cam kết sẽ lu&ocirc;n đưa ra c&aacute;c sản phẩm, dịch vụ v&agrave; giải ph&aacute;p hiệu quả, an to&agrave;n cho qu&yacute; kh&aacute;ch.</p>\r\n', '', '', '', '', '', 1, 'gioi-thieu', 'Giới thiệu', 'Goldbridge Việt Nam', 'Lĩnh vực hoạt động: Marketing Online toàn diện - quảng cáo, seo, thiết kế website, email marketing, thiết kế đồ họa, quản trị mạng xã hội, quản trị website,…..'),
(36, 35, 'en', 'Giới thiệu en', 'Giới thiệu công ty. Được thành lập vào năm 1993, Công ty Cổ Phần Kỹ Thuật Toàn Thắng được biết đến như một nhà cung cấp chuyên nghiệp các giải pháp ...', '<p>Được th&agrave;nh lập v&agrave;o năm 1993, C&ocirc;ng ty Cổ Phần Kỹ Thuật To&agrave;n Thắng được biết đến như một&nbsp; nh&agrave; cung cấp chuy&ecirc;n nghiệp c&aacute;c giải ph&aacute;p thiết bị v&agrave; dịch vụ kỹ thuật chất lượng cao, c&ocirc;ng nghệ ti&ecirc;n tiến&nbsp;cho kh&aacute;ch h&agrave;ng ng&agrave;nh dầu kh&iacute;, điện lực v&agrave; một số ng&agrave;nh c&ocirc;ng nghiệp nặng kh&aacute;c.</p>\r\n\r\n<p>C&ocirc;ng ty c&oacute; văn ph&ograve;ng ch&iacute;nh tại TP. Hồ Ch&iacute; Minh v&agrave; một c&ocirc;ng ty con tại TP. Vũng T&agrave;u. Với đội ngũ chuy&ecirc;n gia, kỹ sư được đ&agrave;o tạo chuy&ecirc;n s&acirc;u, chuy&ecirc;n tr&aacute;ch từng mảng sản phẩm, ch&uacute;ng t&ocirc;i lu&ocirc;n đem đến cho kh&aacute;ch h&agrave;ng những giải ph&aacute;p kỹ thuật, thương mại đa dạng, đ&aacute;p ứng tốt nhu cầu ng&agrave;y c&agrave;ng cao của kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p><img alt=\"\" height=\"564\" src=\"/image/images/670px-conceptualmapfloss(1).png\" style=\"float:right\" width=\"670\" /></p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i cũng đảm nhận cung cấp c&aacute;c dịch vụ sau b&aacute;n h&agrave;ng như: Bảo tr&igrave;, đại tu, sửa chữa, đ&agrave;o tạo, hướng dẫn sử dụng, dịch vụ quản l&yacute; t&agrave;i sản &amp; hợp đồng v&agrave; c&aacute;c dịch vụ kh&aacute;c tại c&ocirc;ng trường cho kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 1, 'gioi-thieu-en', 'Giới thiệu', '', 'Mô tả cho bài viết giới thiệu'),
(37, 36, 'vn', 'Chuyển giao công nghệ', 'Bảng giá dịch thuật công chứng Giá tốt, chất lượng cao, dịch ngay\r\nHơn 8000 CTV Dịch thuật · Hơn 10 năm kinh nghiệm · 100% khách hàng hài lòng', '<h2><strong>PHƯƠNG THỨC GIAO DỊCH ĐỐI VỚI B&Aacute;O GI&Aacute; DỊCH THUẬT</strong></h2>\r\n\r\n<p>1. Ch&uacute;ng t&ocirc;i sẽ giao nhận t&agrave;i liệu tận nơi với những đơn đặt h&agrave;ng tr&ecirc;n 50 trang t&agrave;i liệu.<br />\r\n2. Để tiến h&agrave;nh c&ocirc;ng t&aacute;c dịch thuật v&agrave; phi&ecirc;n dịch Hợp đồng Qu&yacute; kh&aacute;ch cần đặt trước 30% gi&aacute; trị hợp đồng.<br />\r\n3. Nếu qu&yacute; kh&aacute;ch l&agrave; c&ocirc;ng ty c&oacute; nhu cầu dịch thuật dưới 10 trang, Qu&yacute; kh&aacute;ch chỉ cần fax x&aacute;c nhận y&ecirc;u cầu c&oacute; đầy đủ th&ocirc;ng tin li&ecirc;n quan k&egrave;m con dấu, ch&uacute;ng t&ocirc;i sẽ tiến h&agrave;nh thực hiện y&ecirc;u cầu dịch m&agrave; kh&ocirc;ng cần tiền đặt cọc hợp đồng.<br />\r\n4. Đối với kh&aacute;ch h&agrave;ng thường xuy&ecirc;n dịch tại C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i sẽ giao nhận tận nơi miễn ph&iacute;.</p>\r\n\r\n<p><strong>Phần ưu ti&ecirc;n kh&aacute;ch h&agrave;ng dịch với số lượng lớn</strong><br />\r\n1. Giảm 5% với số lượng từ 100 &ndash; 500 trang<br />\r\n2. Giảm 10% với số lượng từ 500 &ndash; 1000 trang<br />\r\n3. Giảm 15% với số lượng 1000 trang trở l&ecirc;n</p>\r\n\r\n<p><strong>Lưu &yacute; quan trọng:</strong></p>\r\n\r\n<ul>\r\n	<li>Gi&aacute; dịch chưa bao gồm VAT (10%).</li>\r\n	<li>Mức gi&aacute; tr&ecirc;n kh&ocirc;ng &aacute;p dụng đối với Kh&aacute;ch h&agrave;ng dịch chuy&ecirc;n ng&agrave;nh, dịch gấp, c&ocirc;ng chứng gấp.</li>\r\n	<li>Văn bản hiệu đ&iacute;nh: Hiệu đ&iacute;nh = 50% tiền dịch. Nếu t&agrave;i liệu hiệu đ&iacute;nh sai tr&ecirc;n 30% th&igrave; bản hiệu đ&iacute;nh đ&oacute; được t&iacute;nh bằng tiền dịch.</li>\r\n	<li>Số lượng từ tr&ecirc;n một trang được quy định dưới 300 từ (D&ugrave;ng hệ thống đếm từ tự động Word Count), trường hợp t&agrave;i liệu của qu&yacute; kh&aacute;ch l&agrave; bản cứng kh&ocirc;ng thể đếm từ được sẽ t&iacute;nh x&aacute;c xuất hoặc t&iacute;nh theo bản dịch l&uacute;c n&agrave;y số lượng từ tr&ecirc;n trang sản phẩm c&oacute; thể quy định lại, th&ocirc;ng thường sẽ giao động 10-20%.</li>\r\n	<li>Gi&aacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y sang tiếng nước ngo&agrave;i kh&aacute;c sẽ bằng chi ph&iacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y ra tiếng Việt cộng với từ tiếng Việt sang tiếng nước ngo&agrave;i thứ hai hoặc sẽ t&iacute;nh ph&iacute; dịch trực tiếp nếu c&oacute; y&ecirc;u cầu người bản địa dịch thuật lại</li>\r\n	<li>Nếu qu&yacute; kh&aacute;ch y&ecirc;u cầu dịch gấp, dịch v&agrave;o ng&agrave;y nghỉ, ng&agrave;y lễ gi&aacute; dịch sẽ tăng 25 %, th&ocirc;ng thường đơn đặt h&agrave;ng tr&ecirc;n 20 trang lấy trong ng&agrave;y được coi l&agrave; gấp. Nếu l&agrave; kh&aacute;ch h&agrave;ng thường xuy&ecirc;n của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; qu&yacute; kh&aacute;ch sẽ được miễn ph&iacute; dịch vụ cộng th&ecirc;m n&agrave;y.</li>\r\n	<li>Đối với t&agrave;i liệu chuy&ecirc;n ng&agrave;nh như: Hợp đồng kinh tế, kỹ thuật, thương mại, t&agrave;i ch&iacute;nh,y học, dược phẩm... th&igrave; ngo&agrave;i tiền dịch + 30% tiền dịch chuy&ecirc;n ng&agrave;nh.</li>\r\n</ul>\r\n\r\n<h3>BẢNG GI&Aacute; DỊCH THUẬT N&Agrave;Y C&Oacute; THỂ THAY ĐỔI PHỤ THUỘC V&Agrave;O NHU CẦU THỰC TẾ CỦA DỰ &Aacute;N, HỢP ĐỒNG V&Agrave; SỰ THỎA THUẬN GIỮA HAI B&Ecirc;N !</h3>\r\n\r\n<p>Chuyển ngữ v&agrave; địa phương h&oacute;a t&agrave;i liệu rất quan trọng n&oacute; c&oacute; ảnh hưởng rất lớn đến c&ocirc;ng việc v&agrave; quyết định trong dự &aacute;n của bạn. Qu&yacute; kh&aacute;ch đang t&igrave;m một đơn vị&nbsp;<a href=\"https://www.dichthuatchaua.com/bien-phien-dich/dich-thuat/dich-thuat-cong-chung.html\" title=\"Dịch thuật công chứng\">Dịch Thuật</a>&nbsp;chuy&ecirc;n nghiệp v&agrave; gi&agrave;u kinh nghiệm trong việc Địa phương h&oacute;a t&agrave;i liệu, đảm bảo thời gian ch&iacute;nh x&aacute;c v&agrave; chất lượng tuyệt đối, chi ph&iacute; hợp l&yacute; nhất. H&atilde;y li&ecirc;n hệ ngay với&nbsp;<a href=\"https://www.dichthuatchaua.com/gioi-thieu-cong-ty-dich-thuat.html\" title=\"Công ty dịch thuật chuyên nghiệp\">C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;</a>&nbsp;để được nhưng chuy&ecirc;n gia tư vấn chuy&ecirc;n nghiệp, gi&agrave;u kinh nghiệm gi&uacute;p Qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/image/images/55e7557453f13-sierra-fig2.jpg\" width=\"1600\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dự &aacute;n, Hợp đồng của Qu&yacute; kh&aacute;ch h&agrave;ng rất quan trọng, Qu&yacute; kh&aacute;ch h&agrave;ng đang muốn t&igrave;m một đơn vị Dịch thuật c&oacute; thể đảm bảo về thời gian, chất lượng v&agrave; cung cấp gi&aacute; cả tốt nhất, h&atilde;y li&ecirc;n lạc với số Hotline: 0932232318 (H&agrave; Nội) hoặc 0932237939 (TP HCM) của Dich thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; sẽ l&agrave;m Qu&yacute; kh&aacute;ch h&agrave;i l&ograve;ng.</p>\r\n\r\n<p>Cảm ơn Qu&yacute; kh&aacute;ch đ&atilde; ngh&eacute; thăm website của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i lu&ocirc;n cam kết đưa ra mức gi&aacute; cạnh tranh v&agrave; chất lương v&agrave; bảo mật bảo đảm tuyệt đối.</p>\r\n', '', '', '', '', '', 1, 'chuyen-giao-cong-nghe', 'Báo giá', 'báo giá dịch vụ', '\"Làm kế toán phải có Tâm với Doanh nghiệp. Đang Tư vấn Miễn Phí. Tìm hiểu ngay!\r\nBảo hành trọn đời · Bảo vệ Doanh Nghiệp\"'),
(38, 36, 'en', 'Báo giá', 'Bảng giá dịch thuật công chứng Giá tốt, chất lượng cao, dịch ngay\r\nHơn 8000 CTV Dịch thuật · Hơn 10 năm kinh nghiệm · 100% khách hàng hài lòng', '<h2><strong>PHƯƠNG THỨC GIAO DỊCH ĐỐI VỚI B&Aacute;O GI&Aacute; DỊCH THUẬT</strong></h2>\r\n\r\n<p>1. Ch&uacute;ng t&ocirc;i sẽ giao nhận t&agrave;i liệu tận nơi với những đơn đặt h&agrave;ng tr&ecirc;n 50 trang t&agrave;i liệu.<br />\r\n2. Để tiến h&agrave;nh c&ocirc;ng t&aacute;c dịch thuật v&agrave; phi&ecirc;n dịch Hợp đồng Qu&yacute; kh&aacute;ch cần đặt trước 30% gi&aacute; trị hợp đồng.<br />\r\n3. Nếu qu&yacute; kh&aacute;ch l&agrave; c&ocirc;ng ty c&oacute; nhu cầu dịch thuật dưới 10 trang, Qu&yacute; kh&aacute;ch chỉ cần fax x&aacute;c nhận y&ecirc;u cầu c&oacute; đầy đủ th&ocirc;ng tin li&ecirc;n quan k&egrave;m con dấu, ch&uacute;ng t&ocirc;i sẽ tiến h&agrave;nh thực hiện y&ecirc;u cầu dịch m&agrave; kh&ocirc;ng cần tiền đặt cọc hợp đồng.<br />\r\n4. Đối với kh&aacute;ch h&agrave;ng thường xuy&ecirc;n dịch tại C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i sẽ giao nhận tận nơi miễn ph&iacute;.</p>\r\n\r\n<p><strong>Phần ưu ti&ecirc;n kh&aacute;ch h&agrave;ng dịch với số lượng lớn</strong><br />\r\n1. Giảm 5% với số lượng từ 100 &ndash; 500 trang<br />\r\n2. Giảm 10% với số lượng từ 500 &ndash; 1000 trang<br />\r\n3. Giảm 15% với số lượng 1000 trang trở l&ecirc;n</p>\r\n\r\n<p><strong>Lưu &yacute; quan trọng:</strong></p>\r\n\r\n<ul>\r\n	<li>Gi&aacute; dịch chưa bao gồm VAT (10%).</li>\r\n	<li>Mức gi&aacute; tr&ecirc;n kh&ocirc;ng &aacute;p dụng đối với Kh&aacute;ch h&agrave;ng dịch chuy&ecirc;n ng&agrave;nh, dịch gấp, c&ocirc;ng chứng gấp.</li>\r\n	<li>Văn bản hiệu đ&iacute;nh: Hiệu đ&iacute;nh = 50% tiền dịch. Nếu t&agrave;i liệu hiệu đ&iacute;nh sai tr&ecirc;n 30% th&igrave; bản hiệu đ&iacute;nh đ&oacute; được t&iacute;nh bằng tiền dịch.</li>\r\n	<li>Số lượng từ tr&ecirc;n một trang được quy định dưới 300 từ (D&ugrave;ng hệ thống đếm từ tự động Word Count), trường hợp t&agrave;i liệu của qu&yacute; kh&aacute;ch l&agrave; bản cứng kh&ocirc;ng thể đếm từ được sẽ t&iacute;nh x&aacute;c xuất hoặc t&iacute;nh theo bản dịch l&uacute;c n&agrave;y số lượng từ tr&ecirc;n trang sản phẩm c&oacute; thể quy định lại, th&ocirc;ng thường sẽ giao động 10-20%.</li>\r\n	<li>Gi&aacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y sang tiếng nước ngo&agrave;i kh&aacute;c sẽ bằng chi ph&iacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y ra tiếng Việt cộng với từ tiếng Việt sang tiếng nước ngo&agrave;i thứ hai hoặc sẽ t&iacute;nh ph&iacute; dịch trực tiếp nếu c&oacute; y&ecirc;u cầu người bản địa dịch thuật lại</li>\r\n	<li>Nếu qu&yacute; kh&aacute;ch y&ecirc;u cầu dịch gấp, dịch v&agrave;o ng&agrave;y nghỉ, ng&agrave;y lễ gi&aacute; dịch sẽ tăng 25 %, th&ocirc;ng thường đơn đặt h&agrave;ng tr&ecirc;n 20 trang lấy trong ng&agrave;y được coi l&agrave; gấp. Nếu l&agrave; kh&aacute;ch h&agrave;ng thường xuy&ecirc;n của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; qu&yacute; kh&aacute;ch sẽ được miễn ph&iacute; dịch vụ cộng th&ecirc;m n&agrave;y.</li>\r\n	<li>Đối với t&agrave;i liệu chuy&ecirc;n ng&agrave;nh như: Hợp đồng kinh tế, kỹ thuật, thương mại, t&agrave;i ch&iacute;nh,y học, dược phẩm... th&igrave; ngo&agrave;i tiền dịch + 30% tiền dịch chuy&ecirc;n ng&agrave;nh.</li>\r\n</ul>\r\n\r\n<h3>BẢNG GI&Aacute; DỊCH THUẬT N&Agrave;Y C&Oacute; THỂ THAY ĐỔI PHỤ THUỘC V&Agrave;O NHU CẦU THỰC TẾ CỦA DỰ &Aacute;N, HỢP ĐỒNG V&Agrave; SỰ THỎA THUẬN GIỮA HAI B&Ecirc;N !</h3>\r\n\r\n<p>Chuyển ngữ v&agrave; địa phương h&oacute;a t&agrave;i liệu rất quan trọng n&oacute; c&oacute; ảnh hưởng rất lớn đến c&ocirc;ng việc v&agrave; quyết định trong dự &aacute;n của bạn. Qu&yacute; kh&aacute;ch đang t&igrave;m một đơn vị&nbsp;<a href=\"https://www.dichthuatchaua.com/bien-phien-dich/dich-thuat/dich-thuat-cong-chung.html\" title=\"Dịch thuật công chứng\">Dịch Thuật</a>&nbsp;chuy&ecirc;n nghiệp v&agrave; gi&agrave;u kinh nghiệm trong việc Địa phương h&oacute;a t&agrave;i liệu, đảm bảo thời gian ch&iacute;nh x&aacute;c v&agrave; chất lượng tuyệt đối, chi ph&iacute; hợp l&yacute; nhất. H&atilde;y li&ecirc;n hệ ngay với&nbsp;<a href=\"https://www.dichthuatchaua.com/gioi-thieu-cong-ty-dich-thuat.html\" title=\"Công ty dịch thuật chuyên nghiệp\">C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;</a>&nbsp;để được nhưng chuy&ecirc;n gia tư vấn chuy&ecirc;n nghiệp, gi&agrave;u kinh nghiệm gi&uacute;p Qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/image/images/55e7557453f13-sierra-fig2.jpg\" width=\"1600\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dự &aacute;n, Hợp đồng của Qu&yacute; kh&aacute;ch h&agrave;ng rất quan trọng, Qu&yacute; kh&aacute;ch h&agrave;ng đang muốn t&igrave;m một đơn vị Dịch thuật c&oacute; thể đảm bảo về thời gian, chất lượng v&agrave; cung cấp gi&aacute; cả tốt nhất, h&atilde;y li&ecirc;n lạc với số Hotline: 0932232318 (H&agrave; Nội) hoặc 0932237939 (TP HCM) của Dich thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; sẽ l&agrave;m Qu&yacute; kh&aacute;ch h&agrave;i l&ograve;ng.</p>\r\n\r\n<p>Cảm ơn Qu&yacute; kh&aacute;ch đ&atilde; ngh&eacute; thăm website của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i lu&ocirc;n cam kết đưa ra mức gi&aacute; cạnh tranh v&agrave; chất lương v&agrave; bảo mật bảo đảm tuyệt đối.</p>\r\n', '', '', '', '', '', 1, 'chuyen-giao-cong-nghe-en', 'Báo giá', '', 'thẻ mô tả của bài viết báo giá'),
(39, 37, 'vn', 'Tuyển Cộng Tác Viên', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!', '<p>1. Nội dung c&ocirc;ng việc :<br />\r\n<br />\r\n. Triển khai c&aacute;c bản vẽ nội thất để sản xuất : tủ, giường, b&agrave;n, ghế.... bằng phần mềm autocad<br />\r\n<br />\r\n. Hỗ trợ kiểm tra đối chiếu bản vẽ với b&ecirc;n sản xuất hoặc tại c&ocirc;ng tr&igrave;nh<br />\r\n<br />\r\n2. Y&ecirc;u cầu :<br />\r\n<br />\r\n. Nam/ nữ c&oacute; kinh nghiệm tối thiểu 1 năm về họa vi&ecirc;n autocad cho c&aacute;c xưởng sản xuất nội thất<br />\r\n<br />\r\n. C&oacute; hiểu biết về kết cấu , kỹ thuật sản phẩm, thao t&aacute;c nhanh tr&ecirc;n phần mềm Autocad<br />\r\n<br />\r\n. C&oacute; phương tiện đi lại<br />\r\n<br />\r\n. C&oacute; thể đi c&ocirc;ng t&aacute;c ngắn hạn.<br />\r\n<br />\r\n. C&oacute; thể tăng ca theo y&ecirc;u cầu<br />\r\n<br />\r\n3. Chế độ :<br />\r\n<br />\r\n. Lương : 6.000.000 VND / th&aacute;ng hoặc thỏa thuận<br />\r\n<br />\r\n. L&agrave;m việc tại showroom 233B B&ugrave;i Thị Xu&acirc;n T&acirc;n B&igrave;nh HCM<br />\r\n<br />\r\n. Lương th&aacute;ng 13. ph&eacute;p năm, thưởng chuy&ecirc;n cần. thưởng lễ tết<br />\r\n<br />\r\n4. Th&ocirc;ng tin kh&aacute;c:<br />\r\n<br />\r\n. Nộp hồ sơ trực tiếp hoặc trực tuyến<br />\r\n<br />\r\n. Hồ sơ c&oacute; c&aacute;c bản vẽ đ&atilde; từng thực hiện<br />\r\n<br />\r\n. Tham khảo th&ecirc;m th&ocirc;ng tin c&ocirc;ng ty tại : www.zenhomes.vn<br />\r\n<br />\r\nLoại h&igrave;nh c&ocirc;ng việc: To&agrave;n thời gian<br />\r\n<br />\r\nLương: ₫6.000.000 /th&aacute;ng<br />\r\n<br />\r\nKinh nghiệm y&ecirc;u cầu:<br />\r\n<br />\r\nkhai triển autocad nội thất: 1 năm</p>\r\n', '', '', '', '', '', 0, 'tuyen-cong-tac-vien', 'Tuyển Cộng Tác Viên ', 'tuyên cộng tác viên', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!'),
(40, 37, 'en', 'Tuyển Cộng Tác Viên ', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!', '<p>1. Nội dung c&ocirc;ng việc :<br />\r\n<br />\r\n. Triển khai c&aacute;c bản vẽ nội thất để sản xuất : tủ, giường, b&agrave;n, ghế.... bằng phần mềm autocad<br />\r\n<br />\r\n. Hỗ trợ kiểm tra đối chiếu bản vẽ với b&ecirc;n sản xuất hoặc tại c&ocirc;ng tr&igrave;nh<br />\r\n<br />\r\n2. Y&ecirc;u cầu :<br />\r\n<br />\r\n. Nam/ nữ c&oacute; kinh nghiệm tối thiểu 1 năm về họa vi&ecirc;n autocad cho c&aacute;c xưởng sản xuất nội thất<br />\r\n<br />\r\n. C&oacute; hiểu biết về kết cấu , kỹ thuật sản phẩm, thao t&aacute;c nhanh tr&ecirc;n phần mềm Autocad<br />\r\n<br />\r\n. C&oacute; phương tiện đi lại<br />\r\n<br />\r\n. C&oacute; thể đi c&ocirc;ng t&aacute;c ngắn hạn.<br />\r\n<br />\r\n. C&oacute; thể tăng ca theo y&ecirc;u cầu<br />\r\n<br />\r\n3. Chế độ :<br />\r\n<br />\r\n. Lương : 6.000.000 VND / th&aacute;ng hoặc thỏa thuận<br />\r\n<br />\r\n. L&agrave;m việc tại showroom 233B B&ugrave;i Thị Xu&acirc;n T&acirc;n B&igrave;nh HCM<br />\r\n<br />\r\n. Lương th&aacute;ng 13. ph&eacute;p năm, thưởng chuy&ecirc;n cần. thưởng lễ tết<br />\r\n<br />\r\n4. Th&ocirc;ng tin kh&aacute;c:<br />\r\n<br />\r\n. Nộp hồ sơ trực tiếp hoặc trực tuyến<br />\r\n<br />\r\n. Hồ sơ c&oacute; c&aacute;c bản vẽ đ&atilde; từng thực hiện<br />\r\n<br />\r\n. Tham khảo th&ecirc;m th&ocirc;ng tin c&ocirc;ng ty tại : www.zenhomes.vn<br />\r\n<br />\r\nLoại h&igrave;nh c&ocirc;ng việc: To&agrave;n thời gian<br />\r\n<br />\r\nLương: ₫6.000.000 /th&aacute;ng<br />\r\n<br />\r\nKinh nghiệm y&ecirc;u cầu:<br />\r\n<br />\r\nkhai triển autocad nội thất: 1 năm</p>\r\n', '', '', '', '', '', 0, 'tuyen-cong-tac-vien', 'Tuyển Cộng Tác Viên ', 'tuyên cộng tác viên', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!'),
(43, 39, 'vn', 'Câu hỏi thường gặp', 'Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết', '<h1>Ti&ecirc;u đề tin tức</h1>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px\">M&ocirc; tả ngắn của b&agrave;i viết, m&ocirc; tả ngắn của b&agrave;i viết, m&ocirc; tả ngắn của b&agrave;i viết, m&ocirc; tả ngắn của b&agrave;i viết, m&ocirc; tả ngắn của b&agrave;i viết</p>\r\n\r\n<p><img alt=\"\" src=\"../image/slide1.jpg\" /></p>\r\n\r\n<h2>Thẻ h2</h2>\r\n\r\n<p>Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết. Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết</p>\r\n\r\n<h2>Thẻ h2</h2>\r\n\r\n<p>Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết. Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết</p>\r\n\r\n<p><img alt=\"\" src=\"../image/formImgCate.jpg\" /></p>\r\n', '', '', '', '', '', 0, 'cau-hoi-thuong-gap', 'Câu hỏi thường gặp', '', 'Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viế'),
(44, 39, 'en', 'Câu hỏi thường gặp', 'Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết', '<h2>THẺ H2</h2>\r\n\r\n<p>Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết. Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết</p>\r\n', '', '', '', '', '', 0, 'cau-hoi-thuong-gap', 'Câu hỏi thường gặp', '', 'Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viế'),
(45, 40, 'vn', 'Chính sách bảo mật', '', '<h2>DP GREEN-PHAR cam kết bảo mật th&ocirc;ng tin c&aacute; nh&acirc;n của tất cả kh&aacute;ch h&agrave;ng.</h2>\r\n\r\n<p>Cảm ơn bạn đ&atilde; truy cập website: www.greenphar.com<br />\r\nCh&uacute;ng t&ocirc;i hiểu r&otilde; tầm quan trọng của sự ri&ecirc;ng tư v&agrave; sẽ giữ b&iacute; mật th&ocirc;ng tin c&aacute; nh&acirc;n của bạn. Xin vui l&ograve;ng đọc bản Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y v&agrave; hiểu c&aacute;c h&agrave;nh động li&ecirc;n quan về th&ocirc;ng tin c&aacute; nh&acirc;n của bạn. Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y c&oacute; thể thay đổi m&agrave; kh&ocirc;ng th&ocirc;ng b&aacute;o trước, do đ&oacute; bạn vui l&ograve;ng thường xuy&ecirc;n r&agrave; so&aacute;t, cập nhật c&aacute;c điều khoản để biết những thay đổi.</p>\r\n\r\n<h2>Điều 1. Mục đ&iacute;ch v&agrave; phạm vi thu thập th&ocirc;ng tin</h2>\r\n\r\n<h3>1.1. Mục đ&iacute;ch thu thập th&ocirc;ng tin:</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i thực hiện việc thu thập th&ocirc;ng tin của bạn th&ocirc;ng qua website n&agrave;y nhằm:<br />\r\nDP GREEN-PHAR trung t&acirc;m tư vấn &amp; t&igrave;m giải ph&aacute;p xử l&yacute; c&aacute;c bệnh ngo&agrave;i cộng đồng.<br />\r\nGiải đ&aacute;p thắc mắc của bạn về vấn đề c&aacute;c bệnh m&agrave; bạn thắc mắc v&agrave; quan t&acirc;m.<br />\r\nGiới thiệu c&aacute;c h&agrave;ng h&oacute;a v&agrave; dịch vụ c&oacute; thể ph&ugrave; hợp với c&aacute;c nhu cầu v&agrave; sở th&iacute;ch của bạn.<br />\r\nCung cấp những th&ocirc;ng tin mới nhất của website.<br />\r\nXem x&eacute;t v&agrave; n&acirc;ng cấp nội dung, giao diện của website.<br />\r\nThực hiện hoạt động khảo s&aacute;t kh&aacute;ch h&agrave;ng.<br />\r\nThực hiện c&aacute;c hoạt động quảng b&aacute; sản phẩm v&agrave; giới thiệu những chương tr&igrave;nh khuyến m&atilde;i.<br />\r\nGiải quyết c&aacute;c vấn đề, tranh chấp ph&aacute;t sinh li&ecirc;n quan đến việc sử dụng website.<br />\r\nCh&uacute;ng t&ocirc;i bảo lưu quyền từ chối tr&aacute;ch nhiệm về bất kỳ thiệt hại n&agrave;o ph&aacute;t sinh nếu th&ocirc;ng tin c&aacute; nh&acirc;n của bạn bị đ&aacute;nh cắp, bị mất hoặc bị thiệt hại do sự cố hoặc bằng bất kỳ c&aacute;ch n&agrave;o kh&aacute;c.</p>\r\n\r\n<h3>1.2. Phạm vi thu thập th&ocirc;ng tin c&aacute; nh&acirc;n:</h3>\r\n\r\n<p>Th&ocirc;ng tin c&aacute; nh&acirc;n m&agrave; ch&uacute;ng t&ocirc;i thu thập của bạn khi bạn gửi thắc mắc về cho ch&uacute;ng t&ocirc;i, bao gồm:<br />\r\nHọ, t&ecirc;n, Năm sinh.<br />\r\nĐịa chỉ li&ecirc;n hệ.<br />\r\nĐiện thoại li&ecirc;n hệ.<br />\r\nEmail.<br />\r\nTh&ocirc;ng tin bệnh l&yacute; v&agrave; những thắc mắc về bệnh học li&ecirc;n quan.</p>\r\n\r\n<h2>Điều 2. Phạm vi sử dụng th&ocirc;ng tin</h2>\r\n\r\n<p>Th&ocirc;ng tin của bạn được sử dụng để ch&uacute;ng t&ocirc;i hoặc c&aacute;c b&ecirc;n c&oacute; li&ecirc;n quan kh&aacute;c c&oacute; thể thực hiện c&aacute;c y&ecirc;u cầu của bạn.<br />\r\nCh&uacute;ng t&ocirc;i c&oacute; thể li&ecirc;n hệ với bạn hoặc giới thiệu bạn đến c&aacute;c cuộc nghi&ecirc;n cứu bao gồm nghi&ecirc;n cứu sự h&agrave;i l&ograve;ng của kh&aacute;ch h&agrave;ng, thị trường, nội dung c&aacute; nh&acirc;n kh&aacute;c, hoặc c&oacute; li&ecirc;n quan đến một số giao dịch nhất định.<br />\r\nCh&uacute;ng t&ocirc;i thu thập th&ocirc;ng tin về truy cập website của bạn gồm những th&ocirc;ng tin c&oacute; thể nhận biết v&agrave; kh&ocirc;ng thể nhận biết để ph&acirc;n t&iacute;ch (v&iacute; dụ: dữ liệu ph&acirc;n t&iacute;ch việc truy cập website, &hellip;).<br />\r\nTh&ocirc;ng tin của bạn được sử dụng để gi&uacute;p cung cấp cho c&aacute;c dịch vụ của ch&uacute;ng t&ocirc;i v&agrave; ch&uacute;ng t&ocirc;i c&oacute; thể cung cấp th&ocirc;ng tin cho c&aacute;c c&ocirc;ng ty đại diện ch&uacute;ng t&ocirc;i. Những c&ocirc;ng ty n&agrave;y cũng chịu sự r&agrave;ng buộc nghi&ecirc;m ngặt bởi Ch&iacute;nh s&aacute;ch Bảo mật của ch&uacute;ng t&ocirc;i.</p>\r\n\r\n<h2>Điều 3. Thời gian lưu trữ th&ocirc;ng tin</h2>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i sẽ lưu trữ c&aacute;c th&ocirc;ng tin c&aacute; nh&acirc;n do kh&aacute;ch h&agrave;ng cung cấp tr&ecirc;n c&aacute;c hệ thống quản l&yacute;, lưu trữ dữ liệu của ch&uacute;ng t&ocirc;i hoặc ch&uacute;ng t&ocirc;i thu&ecirc; trong qu&aacute; tr&igrave;nh cung cấp dịch vụ cho kh&aacute;ch h&agrave;ng cho đến khi ho&agrave;n th&agrave;nh mục đ&iacute;ch thu thập hoặc khi bạn c&oacute; y&ecirc;u cầu hủy c&aacute;c th&ocirc;ng tin đ&atilde; cung cấp.</p>\r\n\r\n<h2>Điều 4. Địa chỉ của đơn vị thu thập v&agrave; quản l&yacute; th&ocirc;ng tin c&aacute; nh&acirc;n</h2>\r\n\r\n<p><strong>C&Ocirc;NG TY CỔ PHẦN DP GREEN-PHAR</strong><br />\r\nĐịa chỉ: Số 19, Ng&otilde; 4, phố Văn La, H&agrave; Đ&ocirc;ng, H&agrave; Nội.<br />\r\nĐiện thoại: (024) 6262.7731<br />\r\nEmail: dpgreenphar@gmail.com</p>\r\n\r\n<h2>Điều 5. Phương tiện v&agrave; c&ocirc;ng cụ để người d&ugrave;ng tiếp cận v&agrave; chỉnh sửa dữ liệu c&aacute; nh&acirc;n của m&igrave;nh.</h2>\r\n\r\n<p>Bạn c&oacute; thể tự đăng nhập v&agrave;o website qua link www.greenphar.com &nbsp;v&agrave; chỉnh sửa c&aacute;c th&ocirc;ng tin c&aacute; nh&acirc;n như: t&ecirc;n, số điện thoại, địa chỉ giao-nhận h&agrave;ng, ...<br />\r\nNếu bạn kh&ocirc;ng quan t&acirc;m hoặc kh&ocirc;ng muốn nhận tin tức, th&ocirc;ng tin, bạn c&oacute; thể thay đổi th&ocirc;ng tin của bạn v&agrave;o bất kỳ l&uacute;c n&agrave;o bằng c&aacute;ch gửi email về cho ch&uacute;ng t&ocirc;i qua địa chỉ email: cskh@greenphar.com</p>\r\n\r\n<h2>Điều 6. Cam kết bảo mật th&ocirc;ng tin c&aacute; nh&acirc;n kh&aacute;ch h&agrave;ng</h2>\r\n\r\n<p>Ngo&agrave;i việc sử dụng c&aacute;c th&ocirc;ng tin của bạn v&agrave;o c&aacute;c mục đ&iacute;ch n&ecirc;u tại Khoản 1.1 Điều 1 của Ch&iacute;nh s&aacute;ch bảo mật n&agrave;y v&agrave; phạm vi n&ecirc;u tại Điều 2 của Ch&iacute;nh s&aacute;ch bảo mật n&agrave;y, Ch&uacute;ng t&ocirc;i sẽ giữ b&iacute; mật th&ocirc;ng tin c&aacute; nh&acirc;n của bạn.&nbsp;Xin vui l&ograve;ng đọc bản Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y v&agrave; hiểu c&aacute;c h&agrave;nh động li&ecirc;n quan về th&ocirc;ng tin c&aacute; nh&acirc;n của bạn. Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y c&oacute; thể thay đổi m&agrave; kh&ocirc;ng th&ocirc;ng b&aacute;o trước, do đ&oacute; bạn vui l&ograve;ng thường xuy&ecirc;n r&agrave; so&aacute;t, cập nhật c&aacute;c điều khoản n&agrave;y để biết những thay đổi.<br />\r\n<strong>Ch&iacute;nh s&aacute;ch bảo mật tại DP GREEN- PHAR</strong><br />\r\n- DP GREEN-PHAR c&oacute; thể thay đổi ch&iacute;nh s&aacute;ch bảo mật v&agrave; mọi thay đổi sẽ được c&ocirc;ng khai tr&ecirc;n website www.greenphar.com<br />\r\n- Tất cả c&aacute;c thay đổi về ch&iacute;nh s&aacute;ch bảo mật ch&uacute;ng t&ocirc;i đều tu&acirc;n thủ theo quy định của Ph&aacute;p Luật Nh&agrave; Nước hiện h&agrave;nh.<br />\r\n- Mọi &yacute; kiến thắc mắc, khiếu nại v&agrave; tranh chấp vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i qua hotline Chăm s&oacute;c kh&aacute;ch h&agrave;ng:&nbsp;<strong>(024) 6262. 7731</strong><br />\r\n<br />\r\nTr&acirc;n trọng,<br />\r\n<strong>DP GREEN- PHAR: Chu Đ&aacute;o, Tin Cậy!</strong></p>\r\n', '', '', '', '', '', 0, 'chinh-sach-bao-mat', 'Chính sách bảo mật', '', ''),
(46, 40, 'en', 'Chính sách bảo mật', '', 'DP GREEN-PHAR CAM KẾT BẢO MẬT THÔNG TIN CÁ NHÂN CỦA TẤT CẢ KHÁCH HÀNG. Cảm ơn bạn đã truy cập website: www.greenphar.com\r\nChúng tôi hiểu rõ tầm quan trọng của sự riêng tư và sẽ giữ bí mật thông tin cá nhân của bạn. Xin vui lòng đọc bản Chính sách bảo mật thông tin này và hiểu các hành động liên quan về thông tin cá nhân của bạn. Chính sách bảo mật thông tin này có thể thay đổi mà không thông báo trước, do đó bạn vui lòng thường xuyên rà soát, cập nhật các điều khoản để biết những thay đổi. ĐIỀU 1. MỤC ĐÍCH VÀ PHẠM VI THU THẬP THÔNG TIN1.1. Mục đích thu thập thông tin:Chúng tôi thực hiện việc thu thập thông tin của bạn thông qua website này nhằm:\r\nDP GREEN-PHAR trung tâm tư vấn & tìm giải pháp xử lý các bệnh ngoài cộng đồng.\r\nGiải đáp thắc mắc của bạn về vấn đề các bệnh mà bạn thắc mắc và quan tâm.\r\nGiới thiệu các hàng hóa và dịch vụ có thể phù hợp với các nhu cầu và sở thích của bạn.\r\nCung cấp những thông tin mới nhất của website.\r\nXem xét và nâng cấp nội dung, giao diện của website.\r\nThực hiện hoạt động khảo sát khách hàng.\r\nThực hiện các hoạt động quảng bá sản phẩm và giới thiệu những chương trình khuyến mãi.\r\nGiải quyết các vấn đề, tranh chấp phát sinh liên quan đến việc sử dụng website.\r\nChúng tôi bảo lưu quyền từ chối trách nhiệm về bất kỳ thiệt hại nào phát sinh nếu thông tin cá nhân của bạn bị đánh cắp, bị mất hoặc bị thiệt hại do sự cố hoặc bằng bất kỳ cách nào khác. 1.2. Phạm vi thu thập thông tin cá nhân:Thông tin cá nhân mà chúng tôi thu thập của bạn khi bạn gửi thắc mắc về cho chúng tôi, bao gồm:\r\nHọ, tên, Năm sinh.\r\nĐịa chỉ liên hệ.\r\nĐiện thoại liên hệ.\r\nEmail.\r\nThông tin bệnh lý và những thắc mắc về bệnh học liên quan. ĐIỀU 2. PHẠM VI SỬ DỤNG THÔNG TINThông tin của bạn được sử dụng để chúng tôi hoặc các bên có liên quan khác có thể thực hiện các yêu cầu của bạn.\r\nChúng tôi có thể liên hệ với bạn hoặc giới thiệu bạn đến các cuộc nghiên cứu bao gồm nghiên cứu sự hài lòng của khách hàng, thị trường, nội dung cá nhân khác, hoặc có liên quan đến một số giao dịch nhất định.\r\nChúng tôi thu thập thông tin về truy cập website của bạn gồm những thông tin có thể nhận biết và không thể nhận biết để phân tích (ví dụ: dữ liệu phân tích việc truy cập website, …).\r\nThông tin của bạn được sử dụng để giúp cung cấp cho các dịch vụ của chúng tôi và chúng tôi có thể cung cấp thông tin cho các công ty đại diện chúng tôi. Những công ty này cũng chịu sự ràng buộc nghiêm ngặt bởi Chính sách Bảo mật của chúng tôi. ĐIỀU 3. THỜI GIAN LƯU TRỮ THÔNG TINChúng tôi sẽ lưu trữ các thông tin cá nhân do khách hàng cung cấp trên các hệ thống quản lý, lưu trữ dữ liệu của chúng tôi hoặc chúng tôi thuê trong quá trình cung cấp dịch vụ cho khách hàng cho đến khi hoàn thành mục đích thu thập hoặc khi bạn có yêu cầu hủy các thông tin đã cung cấp.ĐIỀU 4. ĐỊA CHỈ CỦA ĐƠN VỊ THU THẬP VÀ QUẢN LÝ THÔNG TIN CÁ NHÂNCÔNG TY CỔ PHẦN DP GREEN-PHAR\r\nĐịa chỉ: Số 19, Ngõ 4, phố Văn La, Hà Đông, Hà Nội.\r\nĐiện thoại: (024) 6262.7731\r\nEmail: dpgreenphar@gmail.com ĐIỀU 5. PHƯƠNG TIỆN VÀ CÔNG CỤ ĐỂ NGƯỜI DÙNG TIẾP CẬN VÀ CHỈNH SỬA DỮ LIỆU CÁ NHÂN CỦA MÌNH.Bạn có thể tự đăng nhập vào website qua link www.greenphar.com  và chỉnh sửa các thông tin cá nhân như: tên, số điện thoại, địa chỉ giao-nhận hàng, ...\r\nNếu bạn không quan tâm hoặc không muốn nhận tin tức, thông tin, bạn có thể thay đổi thông tin của bạn vào bất kỳ lúc nào bằng cách gửi email về cho chúng tôi qua địa chỉ email: cskh@greenphar.comĐIỀU 6. CAM KẾT BẢO MẬT THÔNG TIN CÁ NHÂN KHÁCH HÀNGNgoài việc sử dụng các thông tin của bạn vào các mục đích nêu tại Khoản 1.1 Điều 1 của Chính sách bảo mật này và phạm vi nêu tại Điều 2 của Chính sách bảo mật này, Chúng tôi sẽ giữ bí mật thông tin cá nhân của bạn. Xin vui lòng đọc bản Chính sách bảo mật thông tin này và hiểu các hành động liên quan về thông tin cá nhân của bạn. Chính sách bảo mật thông tin này có thể thay đổi mà không thông báo trước, do đó bạn vui lòng thường xuyên rà soát, cập nhật các điều khoản này để biết những thay đổi.\r\nChính sách bảo mật tại DP GREEN- PHAR\r\n- DP GREEN-PHAR có thể thay đổi chính sách bảo mật và mọi thay đổi sẽ được công khai trên website www.greenphar.com\r\n- Tất cả các thay đổi về chính sách bảo mật chúng tôi đều tuân thủ theo quy định của Pháp Luật Nhà Nước hiện hành.\r\n- Mọi ý kiến thắc mắc, khiếu nại và tranh chấp vui lòng liên hệ với chúng tôi qua hotline Chăm sóc khách hàng: (024) 6262. 7731\r\n\r\nTrân trọng,\r\nDP GREEN- PHAR: Chu Đáo, Tin Cậy!', '', '', '', '', '', 0, 'chinh-sach-bao-mat', 'Chính sách bảo mật', '', ''),
(47, 41, 'vn', 'Chính sách đổi - trả', '', '<p>Qu&yacute; kh&aacute;ch vui l&ograve;ng chắc chắn rằng sản phẩm y&ecirc;u cầu đổi (trả) thỏa m&atilde;n điều kiện đổi trả h&agrave;ng của DP GREEN- PHAR tại ch&iacute;nh s&aacute;ch đổi trả h&agrave;ng h&oacute;a như sau:<br />\r\n<strong><em>C&aacute;c trường hợp được quyền đổi - trả sản phẩm:</em></strong><br />\r\nĐổi - trả do đơn h&agrave;ng sai hoặc thiếu sản phẩm so với th&ocirc;ng tin đặt h&agrave;ng.<br />\r\nTrả h&agrave;ng - ho&agrave;n tiền sản phẩm lỗi do qu&aacute; tr&igrave;nh vận chuyển (hộp thuốc bị bể, ẩm mốc,&hellip;).<br />\r\nTrả h&agrave;ng - ho&agrave;n tiền sản phẩm lỗi sản xuất (nh&atilde;n m&aacute;c kh&ocirc;ng r&otilde; chữ, th&ocirc;ng tin tr&ecirc;n bao b&igrave; sản phẩm kh&ocirc;ng ch&iacute;nh x&aacute;c, sản phẩm đ&atilde; bị mở trước khi đến tay kh&aacute;ch h&agrave;ng...).<br />\r\nTrả h&agrave;ng - ho&agrave;n tiền do lỗi giao h&agrave;ng sản phẩm hết hạn sử dụng.<br />\r\n<strong><em>Điều kiện bắt buộc:</em></strong><br />\r\nSản phẩm kh&ocirc;ng c&oacute; dấu hiệu đ&atilde; qua sử dụng, c&ograve;n nguy&ecirc;n hộp, tem, m&aacute;c, seal (seal vỏ hộp v&agrave; seal chai thuốc).<br />\r\nTrong trường hợp Kh&aacute;ch h&agrave;ng đ&atilde; khui seal vỏ hộp v&agrave; ph&aacute;t hiện chai thuốc c&oacute; lỗi sản xuất, vui l&ograve;ng chụp h&igrave;nh v&agrave; gọi Hotline để BP CSKH hướng dẫn th&ecirc;m.<br />\r\nĐối với c&aacute;c sản phẩm đ&atilde; khui seal chai thuốc, DP GREEN- PHAR xin được từ chối đổi trả.<br />\r\nQu&yacute; kh&aacute;ch h&agrave;ng lưu &yacute; lu&ocirc;n lu&ocirc;n kiểm tra kĩ t&igrave;nh trạng sản phẩm sau khi nhận được ngay tại thời điểm nhận h&agrave;ng v&agrave; c&oacute; sự chứng kiến của nh&acirc;n vi&ecirc;n giao h&agrave;ng. C&aacute;c vấn đề như bể vỡ, vỏ hộp chai thuốc bị r&aacute;ch n&aacute;t hoặc seal đ&atilde; bị mở, &hellip; Tất cả những sự cố n&agrave;y sẽ chỉ được đổi trả nếu do lỗi từ ph&iacute;a nh&acirc;n vi&ecirc;n của DP GREEN- PHAR v&agrave; đơn vị vận chuyển ViettelPost.</p>\r\n\r\n<h2>Thời hạn đổi trả h&agrave;ng</h2>\r\n\r\n<p>Sau khi nhận được sản phẩm của kh&aacute;ch h&agrave;ng gửi trả, Bộ phận Chăm s&oacute;c Kh&aacute;ch h&agrave;ng sẽ tiến h&agrave;nh kiểm tra chất lượng sản phẩm ngay lập tức. Quy tr&igrave;nh kiểm tra h&agrave;ng đổi trả được thực hiện trong v&ograve;ng từ 1-3 ng&agrave;y l&agrave;m việc, kết quả kiểm tra sẽ được th&ocirc;ng b&aacute;o đến kh&aacute;ch h&agrave;ng qua email v&agrave; tin nhắn điện thoại sau khi ho&agrave;n tất.<br />\r\nSau khi nhận được email hoặc tin nhắn th&ocirc;ng b&aacute;o từ DP GREEN- PHAR, kh&aacute;ch h&agrave;ng c&oacute; thể kiểm tra t&igrave;nh trạng đổi trả hoặc ho&agrave;n tiền th&ocirc;ng qua c&ocirc;ng cụ kiểm tra đơn h&agrave;ng của&nbsp;<strong>DP GREEN-PHAR</strong>.</p>\r\n\r\n<h2>Phương thức đổi trả h&agrave;ng đ&atilde; mua</h2>\r\n\r\n<p><strong><em>Bước 1:</em></strong> Đăng k&iacute;<br />\r\nKh&aacute;ch h&agrave;ng c&oacute; thể li&ecirc;n hệ với bộ phận chăm s&oacute;c kh&aacute;ch h&agrave;ng của DP GREEN-PHAR qua hotline (024) 6262.7731 hoặc truy cập trang web: WWW.GREENPHAR.COM &nbsp;v&agrave; cung cấp th&ocirc;ng tin chi tiết về sản phẩm lỗi gồm:<br />\r\n- T&ecirc;n sản phẩm<br />\r\n- M&atilde; số đơn h&agrave;ng, l&ocirc; sản xuất, hạn sử dụng<br />\r\n- Lỗi sản phẩm (m&ocirc; tả chi tiết v&agrave; k&egrave;m ảnh chụp)<br />\r\n<strong><em>Bước 2:</em></strong> Nhận tin nhắn x&aacute;c nhận đ&atilde; đăng k&yacute; đổi/trả th&agrave;nh c&ocirc;ng v&agrave; email hướng dẫn đ&oacute;ng g&oacute;i sản phẩm ho&agrave;n trả.<br />\r\nSau khi y&ecirc;u cầu đổi/trả được chấp nhận, DP GREEN-PHAR sẽ gửi đến qu&yacute; kh&aacute;ch một tin nhắn v&agrave; email hướng dẫn c&aacute;ch gửi trả sản phẩm.<br />\r\n<strong><em>Bước 3:</em></strong> Đ&oacute;ng g&oacute;i theo hướng dẫn v&agrave; mang sản phẩm đến Bưu Điện<br />\r\n<strong><em>Bước 4:</em></strong> Gửi trả sản phẩm về DP GREEN-PHAR<br />\r\nKh&aacute;ch h&agrave;ng vui l&ograve;ng gửi sản phẩm qua đường Bưu Điện về DP GREEN-PHAR trong v&ograve;ng 3 ng&agrave;y l&agrave;m việc kể từ khi th&ocirc;ng b&aacute;o với bộ phận Chăm S&oacute;c Kh&aacute;ch H&agrave;ng v&agrave; gửi k&egrave;m:<br />\r\n- H&oacute;a đơn mua h&agrave;ng hoặc đ&iacute;nh k&egrave;m giấy ghi ch&uacute; c&oacute; m&atilde; đơn h&agrave;ng<br />\r\n- H&oacute;a đơn gi&aacute; trị gia tăng (nếu c&oacute;)<br />\r\n- Phụ kiện đi k&egrave;m sản phẩm v&agrave; tặng khuyến m&atilde;i k&egrave;m theo (nếu c&oacute;)<br />\r\n<strong><em>Một số lưu &yacute; khi gửi h&agrave;ng đến bưu điện:</em></strong><br />\r\n- Kh&ocirc;ng ni&ecirc;m phong bề mặt th&ugrave;ng ​trước khi ho&agrave;n tất qu&aacute; tr&igrave;nh gửi h&agrave;ng ​v&igrave; c&oacute; thể bưu điện cần kiểm tra trước khi nhận h&agrave;ng. Đ&oacute;ng g&oacute;i, ch&egrave;n l&oacute;t sản phẩm như ban đầu.<br />\r\n- Cung cấp cho nh&acirc;n vi&ecirc;n bưu điện m&atilde; đơn h&agrave;ng v&agrave; m&atilde; gửi h&agrave;ng b&ecirc;n DP GREEN-PHAR đ&atilde; cung cấp. - Lưu &yacute; kh&ocirc;ng d&aacute;n băng keo trực tiếp l&ecirc;n hộp sản phẩm v&igrave; y&ecirc;u cầu đổi/trả c&oacute; thể sẽ bị từ chối nếu hộp sản phẩm bị hư hỏng.<br />\r\n- Vui l&ograve;ng li&ecirc;n hệ Bộ phận Chăm s&oacute;c Kh&aacute;ch h&agrave;ng của DP GREEN-PHAR &nbsp;(024) 6262. 7731&nbsp;khi c&oacute; bất cứ kh&oacute; khăn xảy ra trong qu&aacute; tr&igrave;nh l&agrave;m việc với bưu điện.<br />\r\n- Điền th&ocirc;ng tin m&atilde; số đơn h&agrave;ng l&ecirc;n th&ugrave;ng h&agrave;ng v&agrave; gửi về DP GREEN- PHAR theo địa chỉ nh&acirc;n vi&ecirc;n chăm s&oacute;c kh&aacute;ch h&agrave;ng đ&atilde; cung cấp.<br />\r\n<strong>Note:</strong>&nbsp;<em>Trong trường hợp kh&ocirc;ng nhớ th&ocirc;ng tin ở bước số 4, qu&yacute; kh&aacute;ch c&oacute; thể xuất tr&igrave;nh tin nhắn hoặc email nhận được từ DP GREEN- PHAR đ&atilde; gửi (ở bước 2) cho nh&acirc;n vi&ecirc;n bưu điện v&agrave; l&agrave;m theo hướng dẫn.</em><br />\r\n<span style=\"color:#cc0000\">Lưu &yacute;:</span> Kh&aacute;ch h&agrave;ng trong qu&aacute; tr&igrave;nh gửi trả sản phẩm về DP GREEN-PHAR sẽ chịu ho&agrave;n to&agrave;n tr&aacute;ch nhiệm về trạng th&aacute;i nguy&ecirc;n vẹn của sản phẩm.<br />\r\nSau khi nhận được sản phẩm kh&aacute;ch h&agrave;ng gửi trả về, DP GREEN- PHAR sẽ phản hồi v&agrave; cập nhật th&ocirc;ng tin tr&ecirc;n từng giai đoạn xử l&yacute; đến kh&aacute;ch h&agrave;ng qua email hoặc sms.</p>\r\n\r\n<h2>C&aacute;ch thức nhận lại tiền khi mua h&agrave;ng online</h2>\r\n\r\n<h3>Kh&aacute;ch h&agrave;ng sẽ nhận được số tiền ho&agrave;n trả sau bao l&acirc;u?</h3>\r\n\r\n<p>DP GREEN- PHAR sẽ ho&agrave;n tiền cho kh&aacute;ch h&agrave;ng trong trường hợp kh&aacute;ch h&agrave;ng trả hay hủy đơn h&agrave;ng.<br />\r\nPhương thức ho&agrave;n tiền bằng c&aacute;ch chuyển khoản ng&acirc;n h&agrave;ng.<br />\r\nTh&ocirc;ng tin sẽ được cập nhật đến cho qu&yacute; kh&aacute;ch bằng email hoặc SMS khi thủ tục ho&agrave;n tiền được tiến h&agrave;nh.<br />\r\n<strong>Phương thức ho&agrave;n tiền:</strong> Chuyển khoản ng&acirc;n h&agrave;ng<br />\r\n<strong>Thời gian ho&agrave;n tiền:</strong> 3 - 5 ng&agrave;y l&agrave;m việc<br />\r\nTrong trường hợp đ&atilde; vượt qu&aacute; c&aacute;c khoảng thời gian ho&agrave;n tiền tr&ecirc;n nhưng kh&aacute;ch h&agrave;ng vẫn chưa nhận được tiền, xin vui l&ograve;ng li&ecirc;n hệ với ng&acirc;n h&agrave;ng để được hỗ trợ hoặc Tổng đ&agrave;i Chăm s&oacute;c Kh&aacute;ch h&agrave;ng của DP GREEN-PHAR&nbsp;<strong>(024) 6262.7731</strong></p>\r\n\r\n<h3>Chi ph&iacute; cho việc đổi trả h&agrave;ng</h3>\r\n\r\n<p>Qu&yacute; Kh&aacute;ch h&agrave;ng vui l&ograve;ng thanh to&aacute;n tiền ph&iacute; vận chuyển khi Kh&aacute;ch h&agrave;ng thực hiện gửi h&agrave;ng tại bưu điện. DP GREEN- PHAR sẽ kh&ocirc;ng ho&agrave;n trả chi ph&iacute; n&agrave;y. Tuy nhi&ecirc;n sẽ giao h&agrave;ng miễn ph&iacute; đối với những đơn h&agrave;ng thuộc nh&oacute;m &ldquo;Đổi h&agrave;ng&quot;. Nếu c&oacute; bất k&igrave; vấn đề g&igrave; ph&aacute;t sinh, qu&yacute; kh&aacute;ch c&oacute; thể li&ecirc;n hệ với bộ phận CSKH của DP GREEN-PHAR theo Hotline&nbsp;<strong>(024) 6262.7731</strong></p>\r\n', '', '', '', '', '', 0, 'chinh-sach-doi-tra', 'Chính sách đổi - trả', '', ''),
(48, 41, 'en', 'Chính sách đổi - trả', '', '<p>Nội dung Ch&iacute;nh s&aacute;ch đổi - trả</p>\r\n', '', '', '', '', '', 0, 'chinh-sach-doi-tra', 'Chính sách đổi - trả', '', ''),
(49, 42, 'vn', 'Hệ thống nhà thuốc', '', '<p>T&acirc;t cả c&aacute;c sản phẩm của DP GREEN-PHAR&nbsp;đ&atilde; được ph&acirc;n phối tại hơn 1000 nh&agrave; thuốc tại c&aacute;c tỉnh th&agrave;nh tr&ecirc;n khắp miền bắc<br />\r\nVui l&ograve;ng li&ecirc;n hệ tổng đ&agrave;i CSKH: <em><strong>024. 6262.7731</strong></em> để biết địa chỉ nh&agrave; thuốc gần nhất nơi bạn ở.<br />\r\nXin ch&acirc;n th&agrave;nh cảm ơn qu&yacute; kh&aacute;ch đ&atilde; tin d&ugrave;ng sản phẩm của <strong>DP GREEN-PHAR</strong>.</p>\r\n', '', '', '', '', '', 0, 'he-thong-nha-thuoc', 'Hệ thống nhà thuốc', '', ''),
(50, 42, 'en', 'Hệ thống nhà thuốc', '', '<p>Nội dung&nbsp;Hệ thống nh&agrave; thuốc</p>\r\n', '', '', '', '', '', 0, 'he-thong-nha-thuoc', 'Hệ thống nhà thuốc', '', ''),
(51, 43, 'vn', 'Hình thức giao hàng', '', '<p>Sau khi đặt h&agrave;ng th&agrave;nh c&ocirc;ng, Bộ phận Chăm s&oacute;c Kh&aacute;ch h&agrave;ng của DP GREEN- PHAR sẽ li&ecirc;n hệ với Qu&yacute; kh&aacute;ch để x&aacute;c nhận v&agrave; gửi email/sms về th&ocirc;ng tin đơn h&agrave;ng trong thời gian sớm nhất. Hiện tại DP GREEN-PHAR hợp t&aacute;c với ViettelPost - đơn vị chuyển ph&aacute;t h&agrave;ng đầu tại Việt Nam để thực hiện chuyển ph&aacute;t c&aacute;c sản phẩm tới Qu&yacute; kh&aacute;ch h&agrave;ng.<br />\r\nSau khi x&aacute;c nhận th&agrave;nh c&ocirc;ng, đơn h&agrave;ng sẽ được giao đến Qu&yacute; kh&aacute;ch trong khoảng thời gian sau đ&acirc;y: <strong>Tại Th&agrave;nh phố Hồ Ch&iacute; Minh v&agrave; H&agrave; Nội:</strong> Giao h&agrave;ng sau 1 - 4h l&agrave;m việc<br />\r\n<strong>C&aacute;c khu vực tỉnh, th&agrave;nh c&ograve;n lại:</strong> Giao h&agrave;ng sau 1 - 2 ng&agrave;y l&agrave;m việc<br />\r\n<em>*Lưu &yacute;: thời gian giao h&agrave;ng dự kiến ở tr&ecirc;n chỉ &aacute;p dụng cho c&aacute;c đơn h&agrave;ng trong nước.</em> Tất cả c&aacute;c đơn h&agrave;ng từ khắp cả nước sẽ được chia l&agrave;m 2 khu vực v&agrave; ph&iacute; vận chuyển &aacute;p dụng cho tất cả c&aacute;c đơn h&agrave;ng của Qu&yacute; kh&aacute;ch (trong đ&oacute;, DP GREEN-PHAR đ&atilde; hỗ trợ 50-70% chi ph&iacute; giao h&agrave;ng v&agrave; ph&iacute; thu tiền hộ):<br />\r\n<strong>Khu vực 1:</strong>&nbsp;Th&agrave;nh phố Hồ Ch&iacute; Minh v&agrave; H&agrave; Nội l&agrave; 10.000đ/đơn h&agrave;ng bất kỳ<br />\r\n<strong>Khu vực 2:</strong>&nbsp;C&aacute;c tỉnh, th&agrave;nh phố c&ograve;n lại tr&ecirc;n to&agrave;n quốc l&agrave; 20.000đ/đơn h&agrave;ng bất kỳ<br />\r\n<strong>FREE SHIP NẾU ĐƠN H&Agrave;NG TR&Ecirc;N 600.000 VNĐ.</strong></p>\r\n\r\n<p>Qu&yacute; kh&aacute;ch h&agrave;ng lưu &yacute; lu&ocirc;n lu&ocirc;n kiểm tra kĩ t&igrave;nh trạng sản phẩm sau khi nhận được ngay tại thời điểm nhận h&agrave;ng v&agrave; c&oacute; sự chứng kiến của nh&acirc;n vi&ecirc;n giao h&agrave;ng. C&aacute;c vấn đề như bể vỡ, vỏ hộp chai thuốc bị r&aacute;ch n&aacute;t hoặc seal đ&atilde; bị mở, &hellip; Tất cả những sự cố n&agrave;y sẽ chỉ được đổi trả nếu do lỗi từ ph&iacute;a nh&acirc;n vi&ecirc;n của DP GREEN-PHAR v&agrave; đơn vị vận chuyển ViettelPost.</p>\r\n\r\n<p>Trong qu&aacute; tr&igrave;nh giao h&agrave;ng c&oacute; thể ph&aacute;t sinh những vấn đề ngo&agrave;i &yacute; muốn về ph&iacute;a Kh&aacute;ch h&agrave;ng khiến việc giao h&agrave;ng bị chậm trễ. DP GREEN-PHAR sẽ linh động giải quyết cho Kh&aacute;ch h&agrave;ng trong từng trường hợp như sau:<br />\r\n- Kh&aacute;ch h&agrave;ng kh&ocirc;ng cung cấp ch&iacute;nh x&aacute;c v&agrave; đầy đủ địa chỉ giao h&agrave;ng v&agrave; số điện thoại li&ecirc;n lạc.<br />\r\n- Kh&aacute;ch h&agrave;ng kh&ocirc;ng sẵn s&agrave;ng để nhận h&agrave;ng v&agrave;o thời điểm giao h&agrave;ng.<br />\r\n- DP GREEN- PHAR đ&atilde; giao h&agrave;ng đ&uacute;ng hẹn theo th&ocirc;ng tin giao h&agrave;ng nhưng kh&ocirc;ng li&ecirc;n lạc được với Kh&aacute;ch h&agrave;ng v&agrave; chờ tại địa điểm giao h&agrave;ng qu&aacute; 15 ph&uacute;t, mọi nỗ lực của nh&acirc;n vi&ecirc;n giao h&agrave;ng nhằm li&ecirc;n hệ với Kh&aacute;ch h&agrave;ng đều kh&ocirc;ng th&agrave;nh c&ocirc;ng.<br />\r\n- Những trường hợp bất khả kh&aacute;ng như thi&ecirc;n tai, tai nạn giao th&ocirc;ng, gi&aacute;n đoạn mạng lưới giao th&ocirc;ng, đứt c&aacute;p, hệ thống bị tấn c&ocirc;ng.<br />\r\nC&aacute;c trường hợp kh&aacute;c: Trong trường hợp xảy ra sự cố phức tạp hơn, DP GREEN- PHAR bảo đảm quyền lợi lớn nhất thuộc về Kh&aacute;ch h&agrave;ng.</p>\r\n', '', '', '', '', '', 0, 'hinh-thuc-giao-hang', 'Hình thức giao hàng', '', ''),
(52, 43, 'en', 'Hình thức giao hàng', '', '<p>Nội dung H&igrave;nh thức giao h&agrave;ng</p>\r\n', '', '', '', '', '', 0, 'hinh-thuc-giao-hang', 'Hình thức giao hàng', '', '');
INSERT INTO `page_languages` (`id`, `page_id`, `languages_code`, `lang_page_name`, `lang_page_des`, `lang_page_content`, `lang_page_sub_info1`, `lang_page_sub_info2`, `lang_page_sub_info3`, `lang_page_sub_info4`, `lang_page_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `keyword`, `des_seo`) VALUES
(53, 44, 'vn', 'Hình thức thanh toán', '', '<h2>DP GREEN- PHAR hỗ trợ 4 phương thức thanh to&aacute;n cho tất cả c&aacute;c đơn h&agrave;ng tr&ecirc;n hệ thống.</h2>\r\n\r\n<p><strong>1. Thanh to&aacute;n khi nhận h&agrave;ng (COD): </strong>Qu&yacute; kh&aacute;ch sẽ thanh to&aacute;n tiền mặt cho nh&acirc;n vi&ecirc;n giao h&agrave;ng ngay sau khi nhận được h&agrave;ng.<br />\r\n<strong>2. Thanh to&aacute;n bằng Internet Banking:</strong> Thẻ/t&agrave;i khoản ATM của qu&yacute; kh&aacute;ch c&oacute; đăng k&iacute; sử dụng dịch vụ internet banking, DP GREEN- PHAR hiện hỗ trợ thanh to&aacute;n cho phần lớn c&aacute;c ng&acirc;n h&agrave;ng tại Việt Nam:<br />\r\n<img alt=\"\" src=\"../image/pay.jpg\" /> <strong>3. Thanh to&aacute;n bằng thẻ quốc tế Visa, Master Card:</strong>&nbsp;Ph&iacute; thanh to&aacute;n t&ugrave;y thuộc v&agrave;o từng loại thẻ qu&yacute; kh&aacute;ch d&ugrave;ng v&agrave; ng&acirc;n h&agrave;ng ph&aacute;t h&agrave;nh thẻ. Vui l&ograve;ng li&ecirc;n hệ với ng&acirc;n h&agrave;ng ph&aacute;t h&agrave;nh thẻ để biết r&otilde; ph&iacute; thanh to&aacute;n ph&aacute;t sinh.<br />\r\n<strong>4. Chuyển khoản trực tiếp tại ng&acirc;n h&agrave;ng:<br />\r\nCHỦ T&Agrave;I KHOẢN: CT CỔ PHẦN DP GREEN PHAR<br />\r\nSTK: 0691000342789<br />\r\nchi nh&aacute;nh h&agrave; t&acirc;y, Vietcombank.</strong><br />\r\n&quot;T&ecirc;n người mua h&agrave;ng, Tỉnh/th&agrave;nh phố&quot; chuyển tiền cho đơn h&agrave;ng ng&agrave;y ... th&aacute;ng ... năm ...<br />\r\n<em>Mọi thắc mắc v&agrave; g&oacute;p &yacute; vui l&ograve;ng li&ecirc;n hệ Hotline Chăm s&oacute;c kh&aacute;ch h&agrave;ng:&nbsp;<strong>(024) 6262.7731</strong></em></p>\r\n', '', '', '', '', '', 0, 'hinh-thuc-thanh-toan', 'Hình thức thanh toán', '', ''),
(54, 44, 'en', 'Hình thức thanh toán', '', '<p>Nội dung&nbsp;H&igrave;nh thức thanh to&aacute;n</p>\r\n', '', '', '', '', '', 0, 'hinh-thuc-thanh-toan', 'Hình thức thanh toán', '', ''),
(55, 45, 'vn', 'Điều khoản sử dụng', '', '<h2>1. Giới thiệu</h2>\r\n\r\n<p>Ch&agrave;o mừng bạn đến với trang Thương mại điện tử DP GREEN-PHAR<br />\r\nGREENPHAR.COM l&agrave; trang Thương mại điện tử của C&ocirc;ng ty Cổ phần DP GREEN- PHAR - chuy&ecirc;n ph&acirc;n phối độc quyền c&aacute;c sản phẩm do Armephaco 120- x&iacute; nghiệp dược phẩm 120, qu&acirc;n đội, nghi&ecirc;n cứu v&agrave; sản xuất, được cấp giấy chứng nhận ĐKKD số 0106800687 do Sở Kế Hoạch v&agrave; Đầu Tư H&agrave; Nội cấp ng&agrave;y 25/4/2015<br />\r\nC&ocirc;ng ty CPDP GREEN- PHAR c&oacute; trụ sở ch&iacute;nh đặt tại 19, Ng&otilde; 4, Phố Văn La- H&agrave; Đ&ocirc;ng- H&agrave; Nội.<br />\r\nKhi bạn truy cập v&agrave;o website greenphar.com của ch&uacute;ng t&ocirc;i c&oacute; nghĩa l&agrave; bạn đồng &yacute; với c&aacute;c điều khoản n&agrave;y. Website c&oacute; quyền chỉnh sửa, thay đổi, th&ecirc;m hoặc lược bỏ bất kỳ phần n&agrave;o trong Điều khoản mua b&aacute;n h&agrave;ng h&oacute;a n&agrave;y v&agrave;o bất cứ l&uacute;c n&agrave;o. C&aacute;c thay đổi c&oacute; hiệu lực ngay khi được đăng tr&ecirc;n website m&agrave; kh&ocirc;ng cần th&ocirc;ng b&aacute;o trước. V&agrave; khi bạn tiếp tục sử dụng website, sau khi c&aacute;c thay đổi về Điều khoản n&agrave;y được đăng tải, c&oacute; nghĩa l&agrave; bạn chấp nhận với những thay đổi đ&oacute; của ch&uacute;ng t&ocirc;i.<br />\r\nV&igrave; vậy, bạn vui l&ograve;ng kiểm tra thường xuy&ecirc;n v&agrave; cập nhật những thay đổi trong Điều khoản mua b&aacute;n tr&ecirc;n website của ch&uacute;ng t&ocirc;i để đảm bảo quyền lợi của m&igrave;nh.</p>\r\n\r\n<h2>2. Hướng dẫn sử dụng website</h2>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"450\" src=\"/image/images/Hydrangeas.jpg\" width=\"600\" /></p>\r\n\r\n<p>Khi truy cập v&agrave;o website của DP GREEN-PHAR, bạn phải đảm bảo đủ 18 tuổi, hoặc c&oacute; sự gi&aacute;m s&aacute;t của cha mẹ hay người gi&aacute;m hộ hợp ph&aacute;p. Vui l&ograve;ng đảm bảo bạn c&oacute; đầy đủ h&agrave;nh vi d&acirc;n sự để thực hiện c&aacute;c giao dịch mua b&aacute;n h&agrave;ng h&oacute;a theo quy định hiện h&agrave;nh của ph&aacute;p luật Việt Nam.<br />\r\nCh&uacute;ng t&ocirc;i sẽ cũng cấp cho bạn một t&agrave;i khoản (Account) sử dụng để bạn c&oacute; thể mua sắm tr&ecirc;n website greenphar.com trong khu&ocirc;n khổ Điều khoản v&agrave; Điều kiện sử dụng đ&atilde; đề ra.<br />\r\nBạn sẽ phải đăng k&yacute; t&agrave;i khoản với th&ocirc;ng tin c&aacute; nh&acirc;n x&aacute;c thực v&agrave; phải cập nhật nếu c&oacute; bất kỳ thay đổi n&agrave;o trong qu&aacute; tr&igrave;nh sử dụng. Mỗi c&aacute; nh&acirc;n khi truy cập v&agrave;o website của DP GREEN- PHAR phải c&oacute; tr&aacute;ch nhiệm với mật khẩu, t&agrave;i khoản v&agrave; hoạt động của m&igrave;nh tr&ecirc;n web. B&ecirc;n cạnh đ&oacute;, bạn phải th&ocirc;ng b&aacute;o ngay cho ch&uacute;ng t&ocirc;i biết khi t&agrave;i khoản bị truy cập tr&aacute;i ph&eacute;p. Đối với những thiệt hại hoặc mất m&aacute;t g&acirc;y ra do bạn kh&ocirc;ng tu&acirc;n thủ quy định v&agrave; c&aacute;c điều khoản mua b&aacute;n đ&atilde; cam kết ph&iacute;a DP GREEN-PHAR sẽ kh&ocirc;ng chịu bất kỳ tr&aacute;ch nhiệm n&agrave;o, d&ugrave; trực tiếp hay gi&aacute;n tiếp.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"221\" src=\"/image/images/Cataloge%20Rem-File%20OK%2003.jpg\" width=\"600\" /></p>\r\n\r\n<p><img alt=\"\" height=\"900\" src=\"/image/images/11___.png\" width=\"900\" /><br />\r\nNghi&ecirc;m cấm sử dụng bất kỳ phần n&agrave;o của website n&agrave;y dưới mọi h&igrave;nh thức với mục đ&iacute;ch thương mại hoặc nh&acirc;n danh bất kỳ đối t&aacute;c thứ ba n&agrave;o nếu kh&ocirc;ng được sự cho ph&eacute;p bằng văn bản từ ph&iacute;a DP GREEN- PHAR. Nếu vi phạm bất cứ điều n&agrave;o trong đ&acirc;y, ch&uacute;ng t&ocirc;i sẽ hủy t&agrave;i khoản của bạn m&agrave; kh&ocirc;ng cần b&aacute;o trước.<br />\r\nBạn sẽ nhận được email quảng c&aacute;o từ website GREENPHAR.COM của ch&uacute;ng t&ocirc;i trong suốt qu&aacute; tr&igrave;nh đăng k&iacute;. Nếu cảm thấy bị l&agrave;m phiền, bạn c&oacute; thể từ chối nhận email bằng c&aacute;ch nhấp v&agrave;o đường link ở dưới c&ugrave;ng trong mọi email quảng c&aacute;o.</p>\r\n\r\n<h2>3. &Yacute; kiến của kh&aacute;ch h&agrave;ng</h2>\r\n\r\n<p>Tất cả nội dung tr&ecirc;n website v&agrave; những &yacute; kiến, nhận x&eacute;t ph&ecirc; b&igrave;nh của qu&yacute; kh&aacute;ch h&agrave;ng đều l&agrave; t&agrave;i sản của DP GREEN-PHAR ch&uacute;ng t&ocirc;i. Nếu ph&aacute;t hiện bất kỳ th&ocirc;ng tin giả mạo n&agrave;o, ch&uacute;ng t&ocirc;i sẽ v&ocirc; hiệu h&oacute;a t&agrave;i khoản của bạn ngay lập tức hoặc &aacute;p dụng c&aacute;c biện ph&aacute;p kh&aacute;c theo quy định của ph&aacute;p luật Việt Nam.</p>\r\n\r\n<h2>4. Chấp nhận đơn h&agrave;ng v&agrave; gi&aacute; cả</h2>\r\n\r\n<p>Với bất kỳ l&yacute; do g&igrave; li&ecirc;n quan đến lỗi kỹ thuật, hệ thống một c&aacute;ch kh&aacute;ch quan v&agrave;o bất kỳ l&uacute;c n&agrave;o, ph&iacute;a DP GREEN-PHAR ch&uacute;ng t&ocirc;i c&oacute; quyền từ chối hoặc hủy đơn h&agrave;ng của qu&yacute; kh&aacute;ch.<br />\r\nTrong qu&aacute; tr&igrave;nh x&aacute;c nhận đơn h&agrave;ng, ch&uacute;ng t&ocirc;i c&oacute; thể hỏi th&ecirc;m về số điện thoại v&agrave; địa chỉ của bạn để thuận tiện cho giao dịch.<br />\r\nDP GREEN-PHAR cam kết sẽ cung cấp th&ocirc;ng tin gi&aacute; cả ch&iacute;nh x&aacute;c nhất cho người ti&ecirc;u d&ugrave;ng. Tuy nhi&ecirc;n, đ&ocirc;i l&uacute;c vẫn c&oacute; sai s&oacute;t xảy ra, v&iacute; dụ như trường hợp gi&aacute; sản phẩm kh&ocirc;ng hiển thị ch&iacute;nh x&aacute;c tr&ecirc;n website hoặc sai gi&aacute;, t&ugrave;y theo từng trường hợp ph&iacute;a DP GREEN-PHAR ch&uacute;ng t&ocirc;i sẽ li&ecirc;n hệ hướng dẫn hoặc th&ocirc;ng b&aacute;o hủy đơn h&agrave;ng đ&oacute; cho qu&yacute; kh&aacute;ch.<br />\r\nDP GREEN-PHAR cũng c&oacute; quyền từ chối hoặc hủy bỏ bất kỳ đơn h&agrave;ng n&agrave;o của qu&yacute; kh&aacute;ch d&ugrave; đơn h&agrave;ng đ&oacute; đ&atilde; hay chưa được x&aacute;c nhận hoặc đ&atilde; thanh to&aacute;n.</p>\r\n\r\n<h2>5. Thay đổi hoặc hủy bỏ giao dịch</h2>\r\n\r\n<p>Trong mọi trường hợp, kh&aacute;ch h&agrave;ng đều c&oacute; quyền chấm dứt giao dịch nếu đ&atilde; thực hiện c&aacute;c biện ph&aacute;p sau đ&acirc;y:<br />\r\nTh&ocirc;ng b&aacute;o cho bộ phận chăm s&oacute;c kh&aacute;ch h&agrave;ng của DP GREEN-PHAR về việc hủy giao dịch qua hotline (024) 6262. 7731</p>\r\n\r\n<h2>6. Giải quyết lỗi nhập sai th&ocirc;ng tin</h2>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng c&oacute; tr&aacute;ch nhiệm cung cấp th&ocirc;ng tin đầy đủ v&agrave; ch&iacute;nh x&aacute;c khi tham gia giao dịch tại website greenphar.com. Trong trường hợp kh&aacute;ch h&agrave;ng nhập sai th&ocirc;ng tin v&agrave; gửi v&agrave;o site thương mại điện tử greenphar.com, ch&uacute;ng t&ocirc;i c&oacute; quyền từ chối thực hiện giao dịch. Ngo&agrave;i ra, trong mọi trường hợp, kh&aacute;ch h&agrave;ng đều c&oacute; quyền đơn phương chấm dứt giao dịch nếu đ&atilde; thực hiện c&aacute;c biện ph&aacute;p sau đ&acirc;y: Li&ecirc;n hệ với bộ phậm CSKH của DP GREEN-PHAR qua hotline (024) 6262. 7731<br />\r\nTrả lại sản phẩm đ&atilde; nhận v&agrave; kh&ocirc;ng c&oacute; dấu hiệu khui mở hoặc đ&atilde; sử dụng.<br />\r\nTrong trường hợp sai th&ocirc;ng tin ph&aacute;t sinh từ ph&iacute;a DP GREEN-PHAR m&agrave; DP GREEN-PHAR c&oacute; thể chứng minh đ&oacute; l&agrave; lỗi của hệ thống, ch&uacute;ng t&ocirc;i sẽ chịu ho&agrave;n to&agrave;n tr&aacute;ch nhiệm v&agrave; đền b&ugrave; cho kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<h2>7. Quyền ph&aacute;p l&yacute;</h2>\r\n\r\n<p>C&aacute;c điều kiện, điều khoản v&agrave; nội dung của website n&agrave;y được điều chỉnh bởi luật ph&aacute;p Việt Nam. T&ograve;a &aacute;n c&oacute; thẩm quyền tại Việt Nam sẽ giải quyết bất kỳ tranh chấp n&agrave;o ph&aacute;t sinh từ việc sử dụng tr&aacute;i ph&eacute;p trang web n&agrave;y.</p>\r\n\r\n<h2>8. Quy định về bảo mật</h2>\r\n\r\n<p>Website GREENPHAR.COM của ch&uacute;ng t&ocirc;i xem trọng việc bảo mật th&ocirc;ng tin, sử dụng c&aacute;c biện ph&aacute;p tốt nhất để bảo mật th&ocirc;ng tin v&agrave; việc thanh to&aacute;n của qu&yacute; kh&aacute;ch. Trong qu&aacute; tr&igrave;nh thanh to&aacute;n, th&ocirc;ng tin của qu&yacute; kh&aacute;ch sẽ được m&atilde; h&oacute;a để đảm bảo an to&agrave;n. Bạn sẽ tho&aacute;t khỏi chế độ an to&agrave;n sau khi ho&agrave;n th&agrave;nh qu&aacute; tr&igrave;nh đặt h&agrave;ng.<br />\r\nQu&yacute; kh&aacute;ch kh&ocirc;ng được sử dụng bất kỳ chương tr&igrave;nh, c&ocirc;ng cụ hay h&igrave;nh thức n&agrave;o kh&aacute;c để can thiệp v&agrave;o hệ thống hay l&agrave;m thay đổi cấu tr&uacute;c dữ liệu. Website greenphar.com cũng nghi&ecirc;m cấm việc ph&aacute;t t&aacute;n, truyền b&aacute; hay cổ vũ cho bất kỳ hoạt động n&agrave;o nhằm can thiệp, ph&aacute; hoại hay x&acirc;m nhập v&agrave;o dữ liệu của hệ thống. C&aacute; nh&acirc;n hay tổ chức vi phạm sẽ bị tước bỏ mọi quyền lợi cũng như sẽ bị truy tố trước ph&aacute;p luật nếu cần thiết.<br />\r\nMọi th&ocirc;ng tin giao dịch sẽ được bảo mật ngoại trừ trong trường hợp cơ quan ph&aacute;p luật y&ecirc;u cầu.</p>\r\n\r\n<h2>9. C&aacute;c phương thức thanh to&aacute;n &aacute;p dụng tại GREENPHAR.COM</h2>\r\n\r\n<p>Qu&yacute; kh&aacute;ch c&oacute; thể tham khảo c&aacute;c phương thức thanh to&aacute;n sau đ&acirc;y v&agrave; lựa chọn &aacute;p dụng phương thức ph&ugrave; hợp:</p>\r\n\r\n<h3>C&aacute;ch 1: Thanh to&aacute;n trực tiếp (T&igrave;m đến chuỗi nh&agrave; thuốc b&aacute;n lẻ)</h3>\r\n\r\n<p>Bước 1: T&igrave;m hiểu th&ocirc;ng tin về sản phẩm<br />\r\nBước 2: Đến địa chỉ nh&agrave; thuốc b&aacute;n lẻ<br />\r\nBước 3: Người mua thanh to&aacute;n v&agrave; nhận h&agrave;ng</p>\r\n\r\n<h3>C&aacute;ch 2: Nhận h&agrave;ng thanh to&aacute;n tiền - COD</h3>\r\n\r\n<p>Bước 1: T&igrave;m hiểu th&ocirc;ng tin về sản phẩm<br />\r\nBước 2: X&aacute;c thực đơn h&agrave;ng (qua điện thoại, tin nhắn, email)<br />\r\nBước 3: Bộ phận CSKH của DP GREEN-PHAR sẽ li&ecirc;n hệ với qu&yacute; kh&aacute;ch để x&aacute;c nhận th&ocirc;ng tin v&agrave; đơn h&agrave;ng, đủ điều kiện đơn h&agrave;ng sẽ được chuyển qua cho bộ phận giao h&agrave;ng<br />\r\nBước 4: Giao h&agrave;ng<br />\r\nBước 5: Nhận h&agrave;ng v&agrave; thanh to&aacute;n</p>\r\n\r\n<h3>C&aacute;ch 3: Thanh to&aacute;n online qua thẻ t&iacute;n dụng, chuyển khoản</h3>\r\n\r\n<p>Bước 1: T&igrave;m hiểu th&ocirc;ng tin về sản phẩm<br />\r\nBước 2: X&aacute;c thực đơn h&agrave;ng (qua điện thoại, tin nhắn, email)<br />\r\nBước 3: Kh&aacute;ch h&agrave;ng thực hiện thanh to&aacute;n 100% gi&aacute; trị đơn h&agrave;ng (đơn h&agrave;ng thanh to&aacute;n th&agrave;nh c&ocirc;ng sẽ b&aacute;o qua điện thoại, tin nhắn, email)<br />\r\nBước 4: Bộ phận CSKH của DP GREEN-PHAR sẽ li&ecirc;n hệ với qu&yacute; kh&aacute;ch để x&aacute;c nhận th&ocirc;ng tin v&agrave; đơn h&agrave;ng, đủ điều kiện đơn h&agrave;ng sẽ được chuyển qua cho bộ phận giao h&agrave;ng<br />\r\nBước 5: Giao h&agrave;ng<br />\r\nBước 6: Kh&aacute;ch h&agrave;ng nhận h&agrave;ng.</p>\r\n\r\n<h2>10. Giải quyết tranh chấp</h2>\r\n\r\n<p>Bất kỳ tranh c&atilde;i, khiếu nại hoặc tranh chấp ph&aacute;t sinh từ hoặc li&ecirc;n quan đến giao dịch tại greenphar.com hoặc c&aacute;c Quy định v&agrave; Điều kiện n&agrave;y đều sẽ được giải quyết bằng h&igrave;nh thức thương lượng, h&ograve;a giải, trọng t&agrave;i v&agrave;/hoặc T&ograve;a &aacute;n theo Luật bảo vệ Người ti&ecirc;u d&ugrave;ng Chương 4 về Giải quyết tranh chấp giữa người ti&ecirc;u d&ugrave;ng v&agrave; tổ chức, c&aacute; nh&acirc;n kinh doanh h&agrave;ng h&oacute;a, dịch vụ.</p>\r\n\r\n<h2>11. Luật ph&aacute;p v&agrave; thẩm quyền tại L&atilde;nh thổ Việt Nam</h2>\r\n\r\n<p>Tất cả c&aacute;c Điều Khoản, Điều Kiện v&agrave; Hợp Đồng n&agrave;y (v&agrave; tất cả nghĩa vụ ph&aacute;t sinh ngo&agrave;i hợp đồng hoặc c&oacute; li&ecirc;n quan) sẽ bị chi phối v&agrave; được hiểu theo luật ph&aacute;p của Việt Nam. Nếu c&oacute; tranh chấp ph&aacute;t sinh bởi c&aacute;c Quy định Sử dụng n&agrave;y, qu&yacute; kh&aacute;ch h&agrave;ng c&oacute; quyền gửi khiếu nại/khiếu kiện l&ecirc;n T&ograve;a &aacute;n c&oacute; thẩm quyền tại Việt Nam để giải quyết.</p>\r\n', '', '', '', '', '', 1, 'dieu-khoan-su-dung', 'Điều khoản sử dụng', '', ''),
(56, 45, 'en', 'Điều khoản sử dụng', '', '<p>Nội dung&nbsp;Điều khoản sử dụng</p>\r\n', '', '', '', '', '', 1, 'dieu-khoan-su-dung', 'Điều khoản sử dụng', '', ''),
(57, 46, 'vn', 'page test 1', '', '', '', '', '', '', '', 0, 'page-test-1', 'page test 1', '', ''),
(58, 46, 'en', 'page test 1', '', '', '', '', '', '', '', 0, 'page-test-1', 'page test 1', '', ''),
(59, 47, 'vn', 'page test 2', '', '', '', '', '', '', '', 0, 'page-test-2', 'page test 2', '', ''),
(60, 47, 'en', 'page test 2', '', '', '', '', '', '', '', 0, 'page-test-2', 'page test 2', '', ''),
(61, 48, 'vn', 'page test 3', '', '', '', '', '', '', '', 0, 'page-test-3', 'page test 3', '', ''),
(62, 48, 'en', 'page test 3', '', '', '', '', '', '', '', 0, 'page-test-3', 'page test 3', '', ''),
(63, 49, 'vn', 'page test 4', '', '', '', '', '', '', '', 0, 'page-test-4', 'page test 4', '', ''),
(64, 49, 'en', 'page test 4', '', '', '', '', '', '', '', 0, 'page-test-4', 'page test 4', '', ''),
(65, 50, 'vn', 'page test 5', '', '', '', '', '', '', '', 0, 'page-test-5', 'page test 5', '', ''),
(66, 50, 'en', 'page test 5', '', '', '', '', '', '', '', 0, 'page-test-5', 'page test 5', '', ''),
(67, 51, 'vn', 'page test 6', '', '', '', '', '', '', '', 0, 'page-test-6', 'page test 6', '', ''),
(68, 51, 'en', 'page test 6', '', '', '', '', '', '', '', 0, 'page-test-6', 'page test 6', '', ''),
(69, 52, 'vn', 'page test 7', '', '', '', '', '', '', '', 0, 'page-test-7', 'page test 7', '', ''),
(70, 52, 'en', 'page test 7', '', '', '', '', '', '', '', 0, 'page-test-7', 'page test 7', '', ''),
(71, 53, 'vn', 'page test 8', '', '', '', '', '', '', '', 0, 'page-test-8', 'page test 8', '', ''),
(72, 53, 'en', 'page test 8', '', '', '', '', '', '', '', 0, 'page-test-8', 'page test 8', '', ''),
(73, 54, 'vn', 'Chính sách vận chuyển', '', '<h1 style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><u><span style=\"font-family:Arial\"><img alt=\"Chính sách giao hàng SPRO\" height=\"284\" src=\"http://spro.vn/image/catalog/bt_products/free%20shipping8.jpg\" style=\"float:left\" width=\"300\" /></span></u></span></span></span></h1>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#ff3300\"><strong>1. PHẠM VI &Aacute;P DỤNG:</strong></span><br />\r\nTất cả c&aacute;c kh&aacute;ch h&agrave;ng mua sản phẩm tại Website;&nbsp;hoặc kh&aacute;ch h&agrave;ng đến trực tiếp xem v&agrave; mua h&agrave;ng tại c&ocirc;ng ty c&oacute; nhu cầu giao h&agrave;ng trực tiếp tại nh&agrave;.&nbsp;<br />\r\n<br />\r\n<span style=\"color:#ff3300\"><strong>2. H&Igrave;NH THỨC &Aacute;P DỤNG:</strong></span><br />\r\n<u>2.1. Giao h&agrave;ng miễn ph&iacute; :</u><br />\r\nGiao h&agrave;ng miễn ph&iacute;<strong>&nbsp;</strong><strong>&aacute;p dụng cho đơn h&agrave;ng gi&aacute; trị từ 1.000.000&nbsp;VNĐ</strong>&nbsp;trở l&ecirc;n, trong&nbsp;<strong>khu vực nội th&agrave;nh th&agrave;nh phố Hồ Ch&iacute; Minh.</strong><br />\r\nVới Qu&yacute; Kh&aacute;ch h&agrave;ng&nbsp;<strong>mua c&aacute;c sản phẩm cồng kềnh (khối lượng tr&ecirc;n 50kg), hoặc đơn h&agrave;ng c&oacute; gi&aacute; trị tr&ecirc;n 5.000.000 VNĐ</strong>: Qu&yacute; Kh&aacute;ch an t&acirc;m v&igrave; cũng sẽ được SPRO.VN giao h&agrave;ng miễn ph&iacute;&nbsp;trong khu vực l&ecirc;n đến 40km t&iacute;nh từ trụ sở SPRO.VN đến địa chỉ của Qu&yacute; Kh&aacute;ch.<br />\r\n<br />\r\n<u>2.2 . Giao h&agrave;ng t&iacute;nh ph&iacute;:</u></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\">- Nếu Qu&yacute; Kh&aacute;ch h&agrave;ng ở qu&aacute; xa so với trụ sở SPRO.VN, nhưng c&oacute; đ<strong>ơn h&agrave;ng tr&ecirc;n 5.000.000VNĐ hoặc đơn h&agrave;ng cồng kềnh lớn hơn 50kg</strong>, Qu&yacute; Kh&aacute;ch an t&acirc;m với ch&iacute;nh s&aacute;ch vận chuyển ưu đ&atilde;i của ch&uacute;ng t&ocirc;i:</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"color:#0000ff\"><strong><span style=\"font-family:Arial\">Miễn ph&iacute; giao h&agrave;ng cho 40km đầu ti&ecirc;n.</span></strong></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\">Với mỗi km tiếp theo, Qu&yacute; Kh&aacute;ch h&agrave;ng&nbsp;chỉ phải trả mức ph&iacute; rất mềm:</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><img alt=\"Chinh sach van chuyen\" height=\"34\" src=\"http://spro.vn/image/catalog/bt_products/them%2010k.png\" width=\"200\" /></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\">- C&aacute;c trường hợp giao h&agrave;ng dưới 1.000.000VNĐ hoặc vận chuyển bằng dịch vụ vận chuyển&nbsp;b&ecirc;n thứ 3&nbsp;sẽ t&iacute;nh ph&iacute; giao h&agrave;ng theo bảng ph&iacute; vận chuyển của h&atilde;ng vận chuyển thứ 3 hoặc theo bảng ph&iacute; của c&ocirc;ng ty. Chi ph&iacute; n&agrave;y sẽ được c&ocirc;ng ty th&ocirc;ng b&aacute;o v&agrave; x&aacute;c nhận với Qu&yacute; kh&aacute;ch trước khi Qu&yacute; kh&aacute;ch tiến h&agrave;nh thanh to&aacute;n v&agrave; c&ocirc;ng ty tiến h&agrave;nh gửi h&agrave;ng.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#ff3300\"><strong>3. THỜI GIAN GIAO H&Agrave;NG:</strong></span><br />\r\n-&nbsp;<strong>Thời gian giao h&agrave;ng sẽ từ 1-4 ng&agrave;y</strong>&nbsp;(Kh&ocirc;ng t&iacute;nh ng&agrave;y nghỉ, lễ, tết&nbsp;) t&ugrave;y v&agrave;o khoảng c&aacute;ch vận chuyển.<br />\r\n- Trong một số trường hợp kh&aacute;ch quan C&ocirc;ng ty c&oacute; thể giao h&agrave;ng chậm trễ do những điều kiện bất khả kh&aacute;ng như thời tiết xấu, điều kiện giao th&ocirc;ng kh&ocirc;ng thuận lợi, xe hỏng h&oacute;c tr&ecirc;n đường giao h&agrave;ng, trục trặc trong qu&aacute; tr&igrave;nh xuất h&agrave;ng.<br />\r\n- Trong thời gian chờ đợi nhận h&agrave;ng, Qu&yacute; kh&aacute;ch c&oacute; bất cứ thắc mắc g&igrave; về th&ocirc;ng tin vận chuyển xin vui l&ograve;ng li&ecirc;n hệ hotline của ch&uacute;ng t&ocirc;i để nhận trợ gi&uacute;p.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><a href=\"http://spro.vn/van-chuyen\" style=\"box-sizing:border-box; color:#ff5011; text-decoration:none; cursor:pointer\"><span style=\"font-family:Arial\"><img alt=\"Chính sách vận chuyển\" height=\"296\" src=\"http://spro.vn/image/catalog/bt_products/624.jpg\" title=\"Vận chuyển hàng hóa, vận chuyển giá rẻ, vận chuyển toàn quốc, vận chuyển  nhanh\" width=\"300\" /></span></a></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><em><span style=\"font-family:Arial\"><strong>Thời gian giao h&agrave;ng sẽ từ 1-4 ng&agrave;y</strong>&nbsp;(Kh&ocirc;ng t&iacute;nh ng&agrave;y nghỉ, lễ, tết&nbsp;)</span></em></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#ff3300\"><strong>4. TR&Aacute;CH NHIỆM VỚI H&Agrave;NG H&Oacute;A VẬN CHUYỂN.</strong></span><br />\r\n- C&ocirc;ng ty sẽ chịu tr&aacute;ch nhiệm với h&agrave;ng h&oacute;a v&agrave; c&aacute;c rủi ro như mất m&aacute;t hoặc hư hại của h&agrave;ng h&oacute;a trong suốt qu&aacute; tr&igrave;nh vận chuyển h&agrave;ng từ kho h&agrave;ng ch&uacute;ng t&ocirc;i đến Qu&yacute; kh&aacute;ch.<br />\r\n- Qu&yacute; kh&aacute;ch c&oacute; tr&aacute;ch nhiệm kiểm tra h&agrave;ng h&oacute;a khi nhận h&agrave;ng. Khi ph&aacute;t hiện h&agrave;ng h&oacute;a bị hư hại, trầy xước, bể vỡ, m&oacute;p m&eacute;o, hoặc sai h&agrave;ng h&oacute;a th&igrave; k&yacute; x&aacute;c nhận t&igrave;nh trạng h&agrave;ng h&oacute;a với Nh&acirc;n vi&ecirc;n giao nhận v&agrave; th&ocirc;ng b&aacute;o ngay cho Bộ phận chăm s&oacute;c kh&aacute;ch h&agrave;ng theo số hotline của C&ocirc;ng ty.<br />\r\n- Sau khi Qu&yacute;&nbsp;kh&aacute;ch đ&atilde; k&yacute; nhận h&agrave;ng m&agrave; kh&ocirc;ng ghi ch&uacute; hoặc c&oacute; &yacute; kiến về h&agrave;ng h&oacute;a. C&ocirc;ng ty kh&ocirc;ng c&oacute; tr&aacute;ch nhiệm với những y&ecirc;u cầu đổi trả v&igrave; hư hỏng, trầy xước, bể vỡ, m&oacute;p m&eacute;o, sai h&agrave;ng h&oacute;a,&hellip; từ Qu&yacute; kh&aacute;ch sau n&agrave;y.<br />\r\n- Nếu dịch vụ vận chuyển do Qu&yacute; kh&aacute;ch chỉ định v&agrave; lựa chọn th&igrave; qu&yacute; kh&aacute;ch sẽ chịu tr&aacute;ch nhiệm với h&agrave;ng h&oacute;a v&agrave; c&aacute;c rủi ro như mất m&aacute;t hoặc hư hại của h&agrave;ng h&oacute;a xảy ra trong suốt qu&aacute; tr&igrave;nh vận chuyển h&agrave;ng từ kho h&agrave;ng của c&ocirc;ng ty đến Qu&yacute; kh&aacute;ch. Kh&aacute;ch h&agrave;ng sẽ chịu tr&aacute;ch nhiệm cước ph&iacute; v&agrave; tổn thất li&ecirc;n quan.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><a href=\"http://spro.vn/van-chuyen\" style=\"box-sizing:border-box; color:#ff5011; text-decoration:none; cursor:pointer\"><span style=\"font-family:Arial\"><img alt=\"Chinh sach van chuyen SPRO\" height=\"224\" src=\"http://spro.vn/image/catalog/bt_products/free_shipping_0.jpg\" title=\"Chính sách vận chuyển\" width=\"300\" /></span></a></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\">Hotline:&nbsp;<strong>0283 5 534 298 hoặc&nbsp;0986 954 423&nbsp;</strong></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#ff3300\"><strong>5. C&Aacute;C ĐIỀU KIỆN KH&Aacute;C</strong></span><br />\r\n- Ch&iacute;nh s&aacute;ch giao h&agrave;ng miễn ph&iacute; kh&ocirc;ng &aacute;p dụng đối với những sản phẩm được mua trong chương tr&igrave;nh khuyến mại giờ v&agrave;ng, gi&aacute; sốc&hellip;..<br />\r\n- Chi ph&iacute; cầu đường, ph&iacute; v&agrave;o th&ocirc;n x&atilde; hoặc ph&iacute; đỗ xe tại chung cư do kh&aacute;ch h&agrave;ng tự thanh to&aacute;n.<br />\r\n- C&ocirc;ng ty chỉ giao h&agrave;ng cho đ&uacute;ng người nhận m&agrave; Qu&yacute; kh&aacute;ch h&agrave;ng đ&atilde; đăng k&yacute; khi mua h&agrave;ng. Trong qu&aacute; tr&igrave;nh giao h&agrave;ng nếu c&oacute; sự thay đổi người nhận một c&aacute;ch kh&ocirc;ng r&otilde; r&agrave;ng, ch&uacute;ng t&ocirc;i c&oacute; quyền từ chối giao h&agrave;ng v&agrave; y&ecirc;u cầu Qu&yacute; kh&aacute;ch h&agrave;ng nhận h&agrave;ng tại địa điểm của b&aacute;n h&agrave;ng của c&ocirc;ng ty.<br />\r\n- Nếu địa chỉ giao h&agrave;ng kh&ocirc;ng r&otilde; r&agrave;ng, nằm trong ng&otilde; ng&aacute;ch, hoặc ở những nơi nguy hiểm, những v&ugrave;ng đồi n&uacute;i hiểm trở, phương tiện giao th&ocirc;ng đi lại kh&oacute; khăn, ch&uacute;ng t&ocirc;i c&oacute; quyền từ chối vận chuyển, giao nhận h&agrave;ng trực tiếp.<br />\r\n- Trong c&aacute;c trường hợp bất khả kh&aacute;ng, do thi&ecirc;n tai, lũ lụt, hỏng h&oacute;c cầu ph&agrave; &hellip;, ch&uacute;ng t&ocirc;i kh&ocirc;ng chịu tr&aacute;ch nhiệm bồi thường thiệt hại ph&aacute;t sinh do giao h&agrave;ng kh&ocirc;ng đ&uacute;ng thời gian hoặc kh&ocirc;ng vận chuyển h&agrave;ng h&oacute;a đến địa điểm như đ&atilde; thỏa thuận với kh&aacute;ch h&agrave;ng.<br />\r\n- Trường hợp ch&uacute;ng t&ocirc;i đ&atilde; vận chuyển h&agrave;ng đến địa điểm giao nhận như thỏa thuận l&uacute;c mua h&agrave;ng, nhưng v&igrave; một l&yacute; do n&agrave;o đ&oacute; kh&aacute;ch h&agrave;ng y&ecirc;u cầu trả lại h&agrave;ng th&igrave; l&uacute;c đ&oacute; kh&aacute;ch h&agrave;ng phải chịu chi ph&iacute; vận chuyển theo quy định của c&ocirc;ng ty.<br />\r\n- Đối với những sản phẩm nặng v&agrave; cồng kềnh cần vận chuyển l&ecirc;n tầng m&agrave; kh&ocirc;ng c&oacute; thang m&aacute;y đề nghị kh&aacute;ch h&agrave;ng hỗ trợ trong việc giao nhận.<br />\r\n- Trong những ng&agrave;y đặc biệt hoặc c&aacute;c ng&agrave;y Lễ hội do ch&iacute;nh s&aacute;ch giao th&ocirc;ng chung bị hạn chế (cấm đường đối với một số phương tiện&hellip;) thời gian giao h&agrave;ng c&oacute; thể sẽ thay đổi, Ch&uacute;ng t&ocirc;i sẽ gọi điện cho kh&aacute;ch h&agrave;ng để thống nhất thời gian giao nhận.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><img alt=\"Phuong thuc van chuyen SPRO\" height=\"247\" src=\"http://spro.vn/image/catalog/bt_products/phuong-thuc-thanh-toan.jpg\" width=\"300\" /></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><em><span style=\"font-family:Arial\"><strong>SPRO.VN</strong>&nbsp;- Giao h&agrave;ng tận nơi, đ&uacute;ng h&agrave;ng đ&uacute;ng người</span></em></span></span></span></p>\r\n', '', '', '', '', '', 0, 'chinh-sach-van-chuyen', 'Chính sách vận chuyển', '', ''),
(74, 54, 'en', 'page test 9', '', '', '', '', '', '', '', 0, 'page-test-9', 'page test 9', '', ''),
(75, 55, 'vn', 'Hướng dẫn vay vốn', '', '<h4 style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:18px\"><span style=\"color:#444444\"><span style=\"background-color:#ffffff\">Hướng dẫn mua h&agrave;ng</span></span></span></h4>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>SPRO.VN</strong>&nbsp;- L&agrave; 1 giải ph&aacute;p mua h&agrave;ng tuyệt vời đối với qu&yacute; kh&aacute;ch h&agrave;ng xa gần, bởi n&oacute; được đảm bảo t&iacute;nh ph&aacute;p l&yacute; của 1 c&ocirc;ng ty thiết bị l&acirc;u năm trong l&atilde;nh vực.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">Thị trường rộng lớn đ&atilde; v&agrave; đang li&ecirc;n kết được với nhiều đối t&aacute;c giao h&agrave;ng, tiện lợi, uy t&iacute;nh v&agrave; chuy&ecirc;n nghiệp.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">Vận chuyển h&agrave;ng h&oacute;a tận nơi, đối với những sản phẩm kh&oacute; lắp đặt đ&atilde; c&oacute; đội ngũ kỹ thuật lắp đặt hướng dẫn ngay tại nh&agrave; m&agrave; kh&ocirc;ng cần mất th&ecirc;m chi ph&iacute;.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">Điều đ&oacute; đồng nghĩa với việc kh&aacute;ch h&agrave;ng c&oacute; thể mua h&agrave;ng ngay khi ngồi tại nh&agrave; m&agrave; vẫn đảm bảo 100% những m&ocirc; tả của ch&uacute;ng t&ocirc;i l&agrave; ch&iacute;nh x&aacute;c, h&igrave;nh ảnh v&agrave; video l&agrave; x&aacute;c thực.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>C&Aacute;CH MUA H&Agrave;NG NHƯ THẾ N&Agrave;O?</strong></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong><u>Mua h&agrave;ng tại cửa h&agrave;ng:&nbsp;</u>&nbsp;</strong>143 B&igrave;nh Lợi, Phường 13, Quận B&igrave;nh Thạnh</span></span></span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>Bước 1:</strong>&nbsp;Li&ecirc;n hệ với số&nbsp;<strong>Hotline</strong>:&nbsp;<strong>028.35.534.298</strong>&nbsp;&nbsp;của cửa h&agrave;ng để biết ch&iacute;nh x&aacute;c về t&igrave;nh trạng h&agrave;ng h&oacute;a &ndash; Địa chỉ x&aacute;c thực v&agrave; t&ecirc;n người phụ tr&aacute;ch b&aacute;n h&agrave;ng.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>Bước 2:</strong>&nbsp;Mua h&agrave;ng + Đặt cọc + l&ecirc;n lịch giao h&agrave;ng (thỏa thuận)</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>Bước 3:</strong>&nbsp;Nhận h&agrave;ng tại nh&agrave;, kiểm tra đầy đủ phụ kiện, thanh to&aacute;n cho nh&acirc;n vi&ecirc;n giao h&agrave;ng số tiền c&ograve;n lại.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong><u>Mua h&agrave;ng online:</u></strong></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>Bước 1:</strong>&nbsp;Truy cập v&agrave;o website&nbsp;<strong>SPRO.VN</strong>&nbsp;t&igrave;m sản phẩm tr&ecirc;n menu hoặc tr&ecirc;n c&ocirc;ng cụ t&igrave;m kiếm.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">V&iacute; dụ: mua m&aacute;y gia xe gia đ&igrave;nh chỉ cần g&otilde; v&agrave;o thanh t&igrave;m kiếm &ldquo;M&aacute;y rửa xe gia đ&igrave;nh&rdquo; hoặc &ldquo;may rua xe gia dinh&rdquo; hoặc &ldquo;gia đ&igrave;nh&rdquo;, &ldquo;gia dinh&rdquo; tuy nhi&ecirc;n t&igrave;m c&agrave;ng chi tiết th&igrave; c&agrave;ng dễ chọn được sản phẩm ph&ugrave; hợp. Hoặc t&igrave;m theo m&atilde; sản phẩm v&iacute; dụ: &ldquo;k2 360&rdquo;...</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>Bước 2:</strong>&nbsp; Gọi điện thoại tr&ecirc;n website để được nh&acirc;n vi&ecirc;n tư vấn v&agrave; mua h&agrave;ng lu&ocirc;n qua điện thoại, hoặc click v&agrave;o n&uacute;t đặt h&agrave;ng l&agrave;m theo hướng dẫn sau đ&acirc;y để mua h&agrave;ng:</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>Bước 3:</strong>&nbsp;Tiếp nhận điện thoại x&aacute;c nhận đơn h&agrave;ng của c&aacute;c tổng đ&agrave;i vi&ecirc;n &ndash; Thỏa thuận c&aacute;c phương thức vận chuyển thanh to&aacute;n sao cho ph&ugrave; hợp nhất.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>Bước 4:</strong>&nbsp;Nhận h&agrave;ng v&agrave; kiểm tra h&agrave;ng h&oacute;a tại nh&agrave;, li&ecirc;n hệ số điện thoại kỹ thuật để nhận được tư vấn khi sử dụng hoặc thắc mắc về sự cố: 0961.958.460 (Mr. Tuấn).</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong><u>Mua h&agrave;ng qua điện thoại:</u></strong></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong><u>Hồ Ch&iacute; Minh:</u></strong><br />\r\n<br />\r\n<strong>&nbsp;Hotline</strong>: 0835.534.298</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">Mr.Ph&uacute;: 0986.954.423</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">Ms.Hường: 0909.115.704</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">Mr.Biển: 0965.570.643</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">Mr.Hưng: 0962.073.945 (Tiếp nhận kh&aacute;ch h&agrave;ng c&oacute; nhu cầu l&agrave;m đại l&yacute;)</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong><u>H&agrave; Nội:</u></strong></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>Hotline</strong>: 0976.666.906 Mr.Hưng</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">Mr.Đạo: 0964.063.553</span></span></span></p>\r\n', '', '', '', '', '', 0, 'huong-dan-vay-von', 'Hướng dẫn vay vốn', '', ''),
(76, 55, 'en', 'page test 10', '', '', '', '', '', '', '', 0, 'page-test-10', 'page test 10', '', ''),
(77, 56, 'vn', 'Phương thức thanh toán', '', '<h3>Phương thức thanh to&aacute;n</h3>\r\n\r\n<p>C&Aacute;C TH&Ocirc;NG TIN CẦN BIẾT KHI THANH TO&Aacute;N</p>\r\n\r\n<h2 style=\"text-align:center\"><u><a href=\"http://spro.vn/thong-tin-thanh-toan.html\"><img alt=\"Phuong thuc thanh toan SPRO\" height=\"186\" src=\"http://spro.vn/image/catalog/bt_products/payment-options-banner.png\" title=\"phương thức thanh toan, phuong thuc thanh toan, thanh toán tiền hàng, thanh toan tien hang\" width=\"500\" /></a></u><br />\r\n&nbsp;</h2>\r\n\r\n<p>1. Thanh to&aacute;n COD: Nhận h&agrave;ng v&agrave; thanh to&aacute;n tiền mặt<br />\r\n<em>Khi qu&yacute; kh&aacute;ch y&ecirc;u cầu h&igrave;nh thức thanh to&aacute;n COD tức nhận h&agrave;ng v&agrave; thanh to&aacute;n tiền mặt,&nbsp;Qu&yacute; kh&aacute;ch vui l&ograve;ng lưu &yacute; những quy định sau:</em><br />\r\n- Đối với c&aacute;c sản phẩm được giao h&agrave;ng bởi nh&acirc;n vi&ecirc;n c&ocirc;ng ty, Qu&yacute; kh&aacute;ch vui l&ograve;ng thanh to&aacute;n đầy đủ sau khi nh&acirc;n vi&ecirc;n đ&atilde; giao h&agrave;ng cho Qu&yacute; kh&aacute;ch. Nếu cần hỗ trợ hướng dẫn sử dụng, hoặc kiểm tra m&aacute;y m&oacute;c, thiết bị ch&uacute;ng t&ocirc;i sẵn s&agrave;ng hỗ trợ ngay tại chỗ.<br />\r\n- Đối với h&agrave;ng h&oacute;a được gởi theo đường bưu điện hoặc dịch vụ chuyển ph&aacute;t nhanh. Qu&yacute; kh&aacute;ch vui l&ograve;ng thanh to&aacute;n trước cho nh&acirc;n vi&ecirc;n giao h&agrave;ng rồi mới b&oacute;c mở h&agrave;ng h&oacute;a (Đ&acirc;y l&agrave; quy định bắt buộc của đơn vị vận chuyển). Sau khi b&oacute;c mở h&agrave;ng h&oacute;a, nếu&nbsp;Qu&yacute; kh&aacute;ch cần th&ecirc;m hỗ trợ g&igrave;, Qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ với c&ocirc;ng ty ch&uacute;ng t&ocirc;i.<br />\r\n<br />\r\n2. Thanh to&aacute;n qua nh&agrave; xe, đơn vị chuyển ph&aacute;t<br />\r\n<em>Đối với c&aacute;c tỉnh ở xa khu vực th&agrave;nh phố Hồ Ch&iacute; Minh hay H&agrave; Nội. Ch&uacute;ng t&ocirc;i thường lựa chọn phương&nbsp;thức vận chuyển bằng xe kh&aacute;ch hoặc ch&agrave;nh xe vận chuyển. Điều n&agrave;y l&agrave;m giảm chi ph&iacute; vận chuyển đ&aacute;ng kể cho kh&aacute;ch h&agrave;ng. V&igrave; những sản phẩm c&oacute; k&iacute;ch thước hoặc trọng lượng lớn gần như kh&ocirc;ng thể gởi bưu điện hoặc c&oacute; gởi cước ph&iacute; sẽ rất cao. Do đ&oacute; Qu&yacute; kh&aacute;ch lưu &yacute; một số vấn đề sau đ&acirc;y:</em><br />\r\n- C&ocirc;ng ty sẽ &aacute;p dụng ch&iacute;nh s&aacute;ch nh&agrave; xe thu tiền hộ c&ocirc;ng ty. Do đ&oacute; nếu được y&ecirc;u cầu thu hộ, Qu&yacute; kh&aacute;ch vui l&ograve;ng chuẩn bị tiền thanh to&aacute;n trực tiếp cho nh&agrave; xe hoặc đơn vị vận chuyển do&nbsp;c&ocirc;ng ty y&ecirc;u cầu.<br />\r\n- Đối với c&aacute;c sản phẩm c&oacute; trọng lượng lớn v&agrave; kỹ thuật sử dụng phức tạp, Qu&yacute; kh&aacute;ch c&oacute; thể y&ecirc;u cầu nh&acirc;n vi&ecirc;n c&ocirc;ng ty đến tận nh&agrave; lắp đặt. V&agrave; sẽ thanh to&aacute;n cho nh&acirc;n vi&ecirc;n giao h&agrave;ng hoặc nh&acirc;n vi&ecirc;n lắp đặt t&ugrave;y theo th&ocirc;ng b&aacute;o của c&ocirc;ng ty.<br />\r\n<br />\r\n3.&nbsp;Thanh to&aacute;n tại c&ocirc;ng ty<br />\r\nQu&yacute; kh&aacute;ch mua h&agrave;ng c&oacute; thể đến địa chỉ c&ocirc;ng ty để xem h&agrave;ng v&agrave; mua h&agrave;ng:</p>\r\n\r\n<p><em>167 - 169 B&igrave;nh Lợi (Nơ Trang Long nối d&agrave;i), P. 13, Quận B&igrave;nh Thạnh, Tp. Hồ Ch&iacute; Minh .</em></p>\r\n\r\n<p><br />\r\n4. Thanh to&aacute;n c&ocirc;ng nợ<br />\r\nĐối với c&aacute;c c&ocirc;ng ty đề nghị thanh to&aacute;n c&ocirc;ng nợ, hai b&ecirc;n cần x&aacute;c nhận đơn đặt h&agrave;ng v&agrave; thời gian c&ocirc;ng nợ hoặc gởi PO đặt h&agrave;ng qua Email:&nbsp;Hotrospro@gmail.com. C&ocirc;ng ty sẽ xem x&eacute;t c&aacute;c trường hợp cụ thể v&agrave; th&ocirc;ng b&aacute;o đến kh&aacute;ch h&agrave;ng về việc c&oacute; chấp nhận&nbsp;c&ocirc;ng nợ hay kh&ocirc;ng.<br />\r\nLi&ecirc;n hệ trực tiếp qua số điện thoại:&nbsp;0283 5 534 298 hoặc&nbsp;0986 954 423&nbsp;<br />\r\n<br />\r\n5. Thanh to&aacute;n Chuyển khoản</p>\r\n\r\n<p style=\"text-align:center\"><a href=\"http://spro.vn/thong-tin-thanh-toan.html\"><img alt=\"Phuong thuc thanh toan SPRO \" height=\"313\" src=\"http://spro.vn/image/catalog/bt_products/computer-keyboard-and-credit-card.jpg\" title=\"phương thức thanh toán\" width=\"500\" /></a><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Qu&yacute; Kh&aacute;ch vui l&ograve;ng chuyển tiền&nbsp;v&agrave;o một&nbsp;trong c&aacute;c&nbsp;t&agrave;i khoản sau:</strong></p>\r\n\r\n<ul>\r\n	<li>Chủ t&agrave;i khoản: C&ocirc;ng ty TNHH C&ocirc;ng Nghiệp v&agrave; Thương Mại Nam Việt<br />\r\n	- Số TK: 060059386363<br />\r\n	-&nbsp;<strong>Tại NH Sacombank</strong>&nbsp;- PGD Phan Đăng Lưu - Chi nh&aacute;nh 8/3<br />\r\n	&nbsp;</li>\r\n	<li>Chủ TK: CT TNHH C&ocirc;ng Nghiệp v&agrave; TM Nam Việt<br />\r\n	- Số TK: 0531002529891<br />\r\n	-&nbsp;<strong>Tại NH Vietcombank&nbsp;</strong>- Chi nh&aacute;nh Đ&ocirc;ng S&agrave;i G&ograve;n<br />\r\n	&nbsp;</li>\r\n	<li>Chủ TK: C&ocirc;ng ty TNHH C&ocirc;ng Nghiệp v&agrave; Thương Mại Nam Việt<br />\r\n	- Số TK: 19026579068019<br />\r\n	-&nbsp;<strong>Tại NH Techcombank</strong>&nbsp;- Chi nh&aacute;nh Nguyễn Th&aacute;i Sơn<br />\r\n	&nbsp;</li>\r\n	<li>Chủ TK: C&ocirc;ng ty TNHH C&ocirc;ng Nghiệp v&agrave; Thương Mại Nam Việt<br />\r\n	- Số TK: 100414851047518<br />\r\n	-&nbsp;<strong>Tại NH Eximbank</strong>&nbsp;- Chi nh&aacute;nh Chợ Lớn<br />\r\n	&nbsp;</li>\r\n	<li>Chủ TK: C&ocirc;ng ty TNHH C&ocirc;ng Nghiệp v&agrave; Thương Mại Nam Việt<br />\r\n	- Số TK: 172704070003087<br />\r\n	-&nbsp;<strong>Tại NH HD Bank</strong>&nbsp;- Chi nh&aacute;nh Gia Định<br />\r\n	&nbsp;</li>\r\n	<li>TK c&aacute; nh&acirc;n kế to&aacute;n trưởng. Chủ TK: Phạm Thị&nbsp;Tuyết<br />\r\n	- Số TK: 108004183511<br />\r\n	-&nbsp;<strong>Tại NH Vietinbank</strong>&nbsp;- Chi nh&aacute;nh Vũng T&agrave;u.</li>\r\n</ul>\r\n\r\n<p>Hiện nay, c&ocirc;ng ty ch&uacute;ng t&ocirc;i kh&ocirc;ng &aacute;p dụng h&igrave;nh thức mua h&agrave;ng trả g&oacute;p. Khi mua h&agrave;ng nếu Qu&yacute; kh&aacute;ch c&oacute; thắc mắc về vấn đề thanh to&aacute;n, xin vui l&ograve;ng xem qua c&aacute;c th&ocirc;ng tin ph&iacute;a dưới.</p>\r\n\r\n<p>Sau khi đ&atilde; chuyển tiền, Qu&yacute; kh&aacute;ch vui l&ograve;ng th&ocirc;ng b&aacute;o ngay để c&ocirc;ng ty ch&uacute;ng t&ocirc;i tiện theo d&otilde;i,&nbsp;ghi nhận v&agrave; chuyển h&agrave;ng ngay cho Qu&yacute; kh&aacute;ch.&nbsp;</p>\r\n\r\n<p>--------------------------------------------------------------------</p>\r\n\r\n<p style=\"text-align:center\">Rất cảm ơn sự ủng hộ của Qu&yacute; kh&aacute;ch!</p>\r\n', '', '', '', '', '', 1, 'phuong-thuc-thanh-toan', 'Phương thức thanh toán', '', ''),
(78, 56, 'en', 'page test 11', '', '<p>2</p>\r\n', '', '', '', '', '', 1, 'page-test-11', 'page test 11', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` text COLLATE utf8_unicode_ci,
  `alias` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `product_des` text COLLATE utf8_unicode_ci,
  `product_des2` text COLLATE utf8_unicode_ci,
  `product_des3` text COLLATE utf8_unicode_ci,
  `product_content` text COLLATE utf8_unicode_ci,
  `product_content2` text COLLATE utf8_unicode_ci,
  `product_content3` text COLLATE utf8_unicode_ci,
  `product_price` float DEFAULT NULL,
  `product_price_sale` float DEFAULT NULL,
  `product_discount` float DEFAULT NULL,
  `product_img` text COLLATE utf8_unicode_ci,
  `product_sub_img` text COLLATE utf8_unicode_ci,
  `product_created_date` datetime DEFAULT NULL,
  `product_update_date` datetime DEFAULT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `product_hot` int(11) DEFAULT '0',
  `product_new` int(11) DEFAULT '0',
  `product_sale` int(11) DEFAULT '0',
  `product_code` text COLLATE utf8_unicode_ci,
  `product_original` text COLLATE utf8_unicode_ci,
  `product_size` text COLLATE utf8_unicode_ci,
  `product_package` text COLLATE utf8_unicode_ci,
  `product_delivery` text COLLATE utf8_unicode_ci,
  `product_delivery_time` text COLLATE utf8_unicode_ci,
  `product_payment` text COLLATE utf8_unicode_ci,
  `product_payment_type` text COLLATE utf8_unicode_ci,
  `product_sub_info1` text COLLATE utf8_unicode_ci,
  `product_sub_info2` text COLLATE utf8_unicode_ci,
  `product_sub_info3` text COLLATE utf8_unicode_ci,
  `product_sub_info4` text COLLATE utf8_unicode_ci,
  `product_sub_info5` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0',
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL,
  `product_material` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_shape` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_expiration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_producer` int(11) DEFAULT NULL,
  `product_review` text COLLATE utf8_unicode_ci,
  `productcat_ar` text COLLATE utf8_unicode_ci,
  `producttag_arr` varchar(10000) COLLATE utf8_unicode_ci NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `alias`, `product_des`, `product_des2`, `product_des3`, `product_content`, `product_content2`, `product_content3`, `product_price`, `product_price_sale`, `product_discount`, `product_img`, `product_sub_img`, `product_created_date`, `product_update_date`, `productcat_id`, `product_hot`, `product_new`, `product_sale`, `product_code`, `product_original`, `product_size`, `product_package`, `product_delivery`, `product_delivery_time`, `product_payment`, `product_payment_type`, `product_sub_info1`, `product_sub_info2`, `product_sub_info3`, `product_sub_info4`, `product_sub_info5`, `state`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `product_material`, `product_shape`, `product_expiration`, `product_producer`, `product_review`, `productcat_ar`, `producttag_arr`, `teacher_id`) VALUES
(27, 'HX004 - Trở thành chuyên gia Excel cho người đi làm', '', '<p>Thủ thuật Excel cập nhật h&agrave;ng tuần từ Học Excel Online. C&aacute;c thủ thuật trong kho&aacute; học n&agrave;y sẽ được cập nhật h&agrave;ng tuần. Mỗi tuần sẽ c&oacute; &iacute;t nhất 1 tới 2 videos mới trong kho&aacute; học n&agrave;y. Mỗi video được thiết kế ngắn nhất v&agrave; đơn giản nhất c&oacute; thể để gi&uacute;p bạn c&oacute; thể nhanh ch&oacute;ng nắm bắt v&agrave; &aacute;p dụng ngay v&agrave;o t&igrave;nh huống c&ocirc;ng việc của bạn.<br />\r\nMỗi video được minh hoạ r&otilde; r&agrave;ng bằng h&igrave;nh ảnh v&agrave; dữ liệu v&iacute; dụ gi&uacute;p c&aacute;c bạn c&oacute; thể dễ d&agrave;ng h&igrave;nh dung ra c&aacute;ch l&agrave;m v&agrave; c&oacute; thể l&agrave;m theo m&agrave; kh&ocirc;ng gặp kh&oacute; khăn g&igrave;.</p>\r\n\r\n<h4>Y&ecirc;u cầu trước khi tham gia kh&oacute;a học</h4>\r\n\r\n<ul>\r\n	<li>Học vi&ecirc;n cần c&oacute; kiến thức cơ bản về Excel để c&oacute; thể theo d&otilde;i v&agrave; l&agrave;m theo c&aacute;c thủ thuật n&agrave;y</li>\r\n	<li>Học vi&ecirc;n cần c&oacute; tr&igrave;nh duyệt c&oacute; kết nối Internet, tốt nhất l&agrave; tr&igrave;nh duyệt Web Google Chrome</li>\r\n	<li>M&aacute;y t&iacute;nh của học vi&ecirc;n cần c&agrave;i sẵn Excel phi&ecirc;n bản từ 2010 trở l&ecirc;n</li>\r\n</ul>\r\n\r\n<h4>Kiến thức mục ti&ecirc;u</h4>\r\n\r\n<ul>\r\n	<li>Những thủ thuật nhanh gọn sẽ gi&uacute;p bạn tiết kiệm thời gian tới 200%</li>\r\n	<li>L&agrave;m việc hiệu quả hơn với Excel</li>\r\n</ul>\r\n', '', '', '<div>\r\n<h3>The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n\r\n<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>\r\n\r\n<h3>Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC</h3>\r\n\r\n<p>&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>\r\n\r\n<h3>1914 translation by H. Rackham</h3>\r\n\r\n<p>&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;</p>\r\n</div>\r\n', '', '', 139000, 10, 0, 'image-7-770x550.jpg', '[]', '2017-05-22 00:05:19', '2018-12-21 15:12:44', 0, 0, 1, 0, '01', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'HX004 - Trở thành chuyên gia Excel cho người đi làm', '', 'hx004-tro-thanh-chuyen-gia-excel-cho-nguoi-di-lam', '', NULL, '70', 'Nguyễn Thị Thu Hiền', '50', 4, NULL, '244,243,240,239,238,237,236,235,232,232', '', 1),
(28, 'HX003 - Luyện tập Excel qua các đề thi', '', '<h3>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</h3>\r\n', '', '', '<h3>The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n\r\n<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>\r\n\r\n<h3>Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC</h3>\r\n\r\n<p>&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>\r\n\r\n<h3>1914 translation by H. Rackham</h3>\r\n\r\n<p>&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;</p>\r\n', '', '', 119000, 0, 0, 'image-6-770x550.jpg', '[\"{\\\"image\\\":\\\"hi\\\\u00ean 2.jpg\\\"}\",\"{\\\"image\\\":\\\"ups_supreme.jpg\\\"}\",\"{\\\"image\\\":\\\"battery_fgh.jpg\\\"}\",\"{\\\"image\\\":\\\"battery_fg.jpg\\\"}\",\"{\\\"image\\\":\\\"ups_gx130.jpg\\\"}\"]', '2017-05-22 00:05:54', '2018-12-21 15:12:44', 0, 0, 1, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'HX003 - Luyện tập Excel qua các đề thi', '', 'hx003-luyen-tap-excel-qua-cac-de-thi', '', NULL, '', 'Nguyễn Thị Thu Hiền', '', 5, NULL, '240,239,239', '', 1),
(29, 'HP202 - Học thiết kế Slide chuyên nghiệp', '', '<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>\r\n', '', '', '<h3>The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n\r\n<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>\r\n\r\n<h3>Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC</h3>\r\n\r\n<p>&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>\r\n\r\n<h3>1914 translation by H. Rackham</h3>\r\n\r\n<p>&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;</p>\r\n', '', '', 999000, 0, 0, 'web-trinh-chieu-powerpoint-chuyen-nghiep-03.png', '[\"{\\\"image\\\":\\\"ups_sr10_120.jpg\\\"}\",\"{\\\"image\\\":\\\"ups_supreme.jpg\\\"}\",\"{\\\"image\\\":\\\"ups_zp110.jpg\\\"}\",\"{\\\"image\\\":\\\"ups_zp120i.jpg\\\"}\"]', '2017-05-22 00:05:49', '2018-12-21 16:12:16', 0, 0, 1, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'HP202 - Học thiết kế Slide chuyên nghiệp', '', 'hp202-hoc-thiet-ke-slide-chuyen-nghiep', '', NULL, '', 'Nguyễn Thị Thu Hiền', '', 3, NULL, '237,237', '', 1),
(30, 'HW301 - Thành thục kỹ năng soạn thảo văn bản trong Microsoft Word', '', '<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>\r\n', '', '', '<h3>The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n\r\n<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>\r\n\r\n<h3>Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC</h3>\r\n\r\n<p>&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>\r\n\r\n<h3>1914 translation by H. Rackham</h3>\r\n\r\n<p>&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;</p>\r\n', '', '', 119000, 0, 0, 'images.png', '[\"{\\\"image\\\":\\\"battery_fgh.jpg\\\"}\",\"{\\\"image\\\":\\\"battery_fg.jpg\\\"}\",\"{\\\"image\\\":\\\"ups_zp110.jpg\\\"}\",\"{\\\"image\\\":\\\"ups_gx130.jpg\\\"}\"]', '2017-05-22 00:05:38', '2018-12-21 16:12:51', 0, 1, 0, 0, 'BVK521974', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'HW301 - Thành thục kỹ năng soạn thảo văn bản trong Microsoft Word', '', 'hw301-thanh-thuc-ky-nang-soan-thao-van-ban-trong-microsoft-word', '', NULL, '100', 'Nguyễn Thị Thu Hiền', '60', NULL, NULL, '243,243', '', 1),
(31, 'HP201 - Học thiết kế Slide POWERPOINT cho người mới bắt đầu', '', '<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>\r\n', '', '', '<h3>The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n\r\n<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>\r\n\r\n<h3>Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC</h3>\r\n\r\n<p>&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>\r\n\r\n<h3>1914 translation by H. Rackham</h3>\r\n\r\n<p>&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;</p>\r\n', '', '', 119000, 0, 0, 'template-powerpoint-thaitrien-6.jpg', '[\"{\\\"image\\\":\\\"ups_zp120i.jpg\\\"}\",\"{\\\"image\\\":\\\"ups_zp110.jpg\\\"}\",\"{\\\"image\\\":\\\"ups_gx130.jpg\\\"}\",\"{\\\"image\\\":\\\"battery_fgh.jpg\\\"}\",\"{\\\"image\\\":\\\"battery_fg.jpg\\\"}\"]', '2017-05-22 00:05:30', '2018-12-21 16:12:20', 0, 1, 0, 0, 'BVK521677', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'HP201 - Học thiết kế Slide POWERPOINT cho người mới bắt đầu', '', 'hp201-hoc-thiet-ke-slide-powerpoint-cho-nguoi-moi-bat-dau', '', NULL, '100', 'Nguyễn Thị Thu Hiền', '60', NULL, NULL, '237,237', '', 1),
(32, 'HK101 - Excel từ cơ bản tới nâng cao dành cho kế toán', '', '<p>orem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fug</p>\r\n', '', '', '<h3>The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n\r\n<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>\r\n\r\n<h3>Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC</h3>\r\n\r\n<p>&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>\r\n\r\n<h3>1914 translation by H. Rackham</h3>\r\n\r\n<p>&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;</p>\r\n', '', '', 350000, 0, 0, 'image-7-770x550.jpg', '[\"{\\\"image\\\":\\\"ups_zp120i.jpg\\\"}\",\"{\\\"image\\\":\\\"battery_fgh.jpg\\\"}\",\"{\\\"image\\\":\\\"battery_fg.jpg\\\"}\",\"{\\\"image\\\":\\\"ups_gx130.jpg\\\"}\"]', '2017-05-22 00:05:13', '2018-12-21 16:12:50', 0, 1, 1, 0, 'BVK52197', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'HK101 - Excel từ cơ bản tới nâng cao dành cho kế toán', '', 'hk101-excel-tu-co-ban-toi-nang-cao-danh-cho-ke-toan', '', NULL, '60', 'Nguyễn Thị Thu Hiền', '50', NULL, NULL, '240,239,238,232,232', '', 1),
(34, 'HX002 - Học Excel cho người mới bắt đầu', '', '<h3>GIỚI THIỆU CHUNG</h3>\r\n\r\n<p>Thủ thuật Excel cập nhật h&agrave;ng tuần từ Học Excel Online. C&aacute;c thủ thuật trong kho&aacute; học n&agrave;y sẽ được cập nhật h&agrave;ng tuần. Mỗi tuần sẽ c&oacute; &iacute;t nhất 1 tới 2 videos mới trong kho&aacute; học n&agrave;y. Mỗi video được thiết kế ngắn nhất v&agrave; đơn giản nhất c&oacute; thể để gi&uacute;p bạn c&oacute; thể nhanh ch&oacute;ng nắm bắt v&agrave; &aacute;p dụng ngay v&agrave;o t&igrave;nh huống c&ocirc;ng việc của bạn.&nbsp;<br />\r\nMỗi video được minh hoạ r&otilde; r&agrave;ng bằng h&igrave;nh ảnh v&agrave; dữ liệu v&iacute; dụ gi&uacute;p c&aacute;c bạn c&oacute; thể dễ d&agrave;ng h&igrave;nh dung ra c&aacute;ch l&agrave;m v&agrave; c&oacute; thể l&agrave;m theo m&agrave; kh&ocirc;ng gặp kh&oacute; khăn g&igrave;.</p>\r\n\r\n<h4>Y&Ecirc;U CẦU TRƯỚC KHI THAM GIA KH&Oacute;A HỌC</h4>\r\n\r\n<ul>\r\n	<li>Học vi&ecirc;n cần c&oacute; kiến thức cơ bản về Excel để c&oacute; thể theo d&otilde;i v&agrave; l&agrave;m theo c&aacute;c thủ thuật n&agrave;y</li>\r\n	<li>Học vi&ecirc;n cần c&oacute; tr&igrave;nh duyệt c&oacute; kết nối Internet, tốt nhất l&agrave; tr&igrave;nh duyệt Web Google Chrome</li>\r\n	<li>M&aacute;y t&iacute;nh của học vi&ecirc;n cần c&agrave;i sẵn Excel phi&ecirc;n bản từ 2010 trở l&ecirc;n</li>\r\n</ul>\r\n\r\n<h4>KIẾN THỨC MỤC TI&Ecirc;U</h4>\r\n\r\n<ul>\r\n	<li>Những thủ thuật nhanh gọn sẽ gi&uacute;p bạn tiết kiệm thời gian tới 200%</li>\r\n	<li>L&agrave;m việc hiệu quả hơn với Excel</li>\r\n</ul>\r\n', '', '', '<h3>The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n\r\n<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>\r\n\r\n<h3>Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC</h3>\r\n\r\n<p>&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>\r\n', '', '', 395000, 0, 0, 'images (1).png', '[\"{\\\"image\\\":\\\"hi\\\\u00ean 2.jpg\\\"}\",\"{\\\"image\\\":\\\"post4.png\\\"}\",\"{\\\"image\\\":\\\"ups_zp120i.jpg\\\"}\",\"{\\\"image\\\":\\\"ups_gx130.jpg\\\"}\",\"{\\\"image\\\":\\\"battery_fgh.jpg\\\"}\",\"{\\\"image\\\":\\\"battery_fg.jpg\\\"}\"]', '2017-05-22 00:05:32', '2018-12-21 16:12:11', 0, 1, 1, 0, 'EC001', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'HX002 - Học Excel cho người mới bắt đầu', '', 'hx002-hoc-excel-cho-nguoi-moi-bat-dau', '', NULL, '60', 'Nguyễn Thị Thu Hiền', '50', NULL, NULL, '240,232,232', '', 1),
(35, 'HX001 - Thành thạo Excel cơ bản', '', '', '', '', '', '', '', 0, 10, 0, 'excel_021709.jpg', '[]', '2018-12-09 11:12:26', '2019-05-26 12:05:14', 0, 1, 1, 0, 'HX001', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'HX001 - Thành thạo Excel cơ bản', '', 'hx001-thanh-thao-excel-co-ban', '', 1, '60', 'Nguyễn Thị Thu Hiền', '25', NULL, NULL, '240,239,239', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productcat`
--

CREATE TABLE `productcat` (
  `productcat_id` int(11) NOT NULL,
  `productcat_name` text COLLATE utf8_unicode_ci,
  `productcat_des` text COLLATE utf8_unicode_ci,
  `productcat_content` text COLLATE utf8_unicode_ci,
  `productcat_parent` int(11) NOT NULL DEFAULT '0',
  `productcat_sort_order` int(11) NOT NULL DEFAULT '0',
  `productcat_img` text COLLATE utf8_unicode_ci,
  `productcat_created_date` datetime DEFAULT NULL,
  `productcat_update_date` datetime DEFAULT NULL,
  `productcat_sub_info1` text COLLATE utf8_unicode_ci,
  `productcat_sub_info2` text COLLATE utf8_unicode_ci,
  `productcat_sub_info3` text COLLATE utf8_unicode_ci,
  `productcat_sub_info4` text COLLATE utf8_unicode_ci,
  `productcat_sub_info5` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0',
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL,
  `productcat_hot` int(11) NOT NULL,
  `productcat_new` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `productcat`
--

INSERT INTO `productcat` (`productcat_id`, `productcat_name`, `productcat_des`, `productcat_content`, `productcat_parent`, `productcat_sort_order`, `productcat_img`, `productcat_created_date`, `productcat_update_date`, `productcat_sub_info1`, `productcat_sub_info2`, `productcat_sub_info3`, `productcat_sub_info4`, `productcat_sub_info5`, `state`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `productcat_hot`, `productcat_new`) VALUES
(232, 'VBA EXCEL', '', '', 0, 0, 'icon_cate1.png', '2018-08-01 17:08:16', NULL, '', '', '', '', '', 1, 'VBA EXCEL', '', 'vba-excel', '', 1, 0, 0),
(235, 'GOOGLE SHEET', '', '', 0, 0, 'icon_cate10.png', '2018-08-01 17:08:08', NULL, '', '', '', '', '', 1, 'GOOGLE SHEET', '', 'google-sheet', '', 1, 0, 0),
(236, 'ACCA', '', '', 0, 0, 'icon_cate6.png', '2018-08-01 17:08:58', NULL, '', '', '', '', '', 1, 'ACCA', '', 'acca', '', 1, 0, 0),
(237, 'POWERPOINT', '', '', 0, 0, 'icon_cate5.png', '2018-08-01 17:08:39', NULL, '', '', '', '', '', 1, 'POWERPOINT', '', 'powerpoint', '', 1, 0, 0),
(238, 'EXCEL KẾ TOÁN', '', '', 0, 0, 'icon_cate4.png', '2018-08-01 17:08:16', NULL, '', '', '', '', '', 1, 'EXCEL KẾ TOÁN', '', 'excel-ke-toan', '', 1, 0, 0),
(239, 'EXCEL NÂNG CAO', '', '', 0, 0, 'icon_cate3.png', '2018-08-01 17:08:55', NULL, '', '', '', '', '', 1, 'EXCEL NÂNG CAO', '', 'excel-nang-cao', '', 1, 0, 0),
(240, 'EXCEL CƠ BẢN', '', '', 0, 0, 'icon_cate7.png', '2018-12-09 09:12:57', NULL, '', '', '', '', '', 1, 'EXCEL CƠ BẢN', '', 'excel-co-ban', '', 1, 0, 0),
(243, 'WORD', '', '', 0, 0, 'icon_cate7.png', '2018-08-01 17:08:25', NULL, '', '', '', '', '', 1, 'WORD', '', 'word', '', 1, 0, 0),
(244, 'MOS', '', '', 0, 3, 'icon_cate9.png', '2018-08-01 18:08:19', NULL, '', '', '', '', '', 1, 'MOS', '', 'mos', '', 1, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productcat_languages`
--

CREATE TABLE `productcat_languages` (
  `id` bigint(20) NOT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `lang_productcat_name` text COLLATE utf8_unicode_ci,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_des` text COLLATE utf8_unicode_ci,
  `lang_productcat_content` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `productcat_languages`
--

INSERT INTO `productcat_languages` (`id`, `productcat_id`, `lang_productcat_name`, `languages_code`, `lang_productcat_des`, `lang_productcat_content`, `lang_productcat_sub_info1`, `lang_productcat_sub_info2`, `lang_productcat_sub_info3`, `lang_productcat_sub_info4`, `lang_productcat_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(449, 232, 'VBA EXCEL', 'vn', '', '', '', '', '', '', '', 1, 'vba-excel', '', 'VBA EXCEL', ''),
(450, 232, 'Organic Fish - Meat', 'en', 'english version ', 'english version ', '', '', '', '', '', 1, 'en-thit-ca-huu-co', '', 'Thịt cá hữu cơ', ''),
(455, 235, 'GOOGLE SHEET', 'vn', '', '', '', '', '', '', '', 0, 'google-sheet', '', 'GOOGLE SHEET', ''),
(456, 235, 'english version LIPSGTEX SRPLUS', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-lipsgtex-srplus', '', 'LIPSGTEX SRPLUS', ''),
(457, 236, 'ACCA', 'vn', '', '', '', '', '', '', '', 0, 'acca', '', 'ACCA', ''),
(458, 236, 'english version LIPSGTEX MUST 400', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-lipsgtex-must-400', '', 'LIPSGTEX MUST 400', ''),
(459, 237, 'POWERPOINT', 'vn', '', '', '', '', '', '', '', 0, 'powerpoint', '', 'POWERPOINT', ''),
(460, 237, 'english version LIPSGTEX SRO 10-200', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-lipsgtex-sro-10-200', '', 'LIPSGTEX SRO 10-200', ''),
(461, 238, 'EXCEL KẾ TOÁN', 'vn', '', '', '', '', '', '', '', 0, 'excel-ke-toan', '', 'EXCEL KẾ TOÁN', ''),
(462, 238, 'english version UPSGTEX SUPREME', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-upsgtex-supreme', '', 'UPSGTEX SUPREME', ''),
(463, 239, 'EXCEL NÂNG CAO', 'vn', '', '', '', '', '', '', '', 0, 'excel-nang-cao', '', 'EXCEL NÂNG CAO', ''),
(464, 239, 'english version UPSGTEX MUST 900', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-upsgtex-must-900', '', 'UPSGTEX MUST 900', ''),
(465, 240, 'EXCEL CƠ BẢN', 'vn', '', '', '', '', '', '', '', 0, 'excel-co-ban', '', 'EXCEL CƠ BẢN', ''),
(466, 240, 'english version UPSGTEX MASTER NOVA', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-upsgtex-master-nova', '', 'UPSGTEX MASTER NOVA', ''),
(471, 243, 'WORD', 'vn', '', '', '', '', '', '', '', 0, 'word', '', 'WORD', ''),
(472, 243, 'english version WORD', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-word', '', 'WORD', ''),
(473, 244, 'MOS', 'vn', '', '', '', '', '', '', '', 0, 'mos', '', 'MOS', ''),
(474, 244, 'english version MOS', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-mos', '', 'MOS', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `producttag`
--

CREATE TABLE `producttag` (
  `producttag_id` int(11) NOT NULL,
  `producttag_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_sort_order` int(11) NOT NULL,
  `producttag_img` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_created_date` datetime NOT NULL,
  `producttag_update_date` datetime NOT NULL,
  `producttag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_sub_info5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `state` int(11) NOT NULL,
  `title_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `friendly_url` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `producttag`
--

INSERT INTO `producttag` (`producttag_id`, `producttag_name`, `producttag_des`, `producttag_content`, `producttag_sort_order`, `producttag_img`, `producttag_created_date`, `producttag_update_date`, `producttag_sub_info1`, `producttag_sub_info2`, `producttag_sub_info3`, `producttag_sub_info4`, `producttag_sub_info5`, `state`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(5, 'đỏ', '<p>des</p>\r\n', '<p>content1</p>\r\n', 0, '', '2017-12-12 19:12:53', '2017-12-13 12:12:30', '', '', '', '', '', 1, 'đỏ', 'a1', 'do', 'a1', 1),
(7, 'Xanh', '', '', 0, '', '2017-12-13 12:12:49', '2017-12-13 12:12:49', '', '', '', '', '', 1, 'Xanh', '', 'xanh', '', 1),
(8, 'Vàng', '', '', 0, '', '2017-12-13 12:12:04', '2017-12-13 17:12:26', '', '', '', '', '', 1, 'Vàng', '', 'vang', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `producttag_languages`
--

CREATE TABLE `producttag_languages` (
  `id` int(11) NOT NULL,
  `producttag_id` int(11) NOT NULL,
  `lang_producttag_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `languages_code` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_sub_info5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `edit_state` int(11) NOT NULL,
  `friendly_url` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_seo` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `producttag_languages`
--

INSERT INTO `producttag_languages` (`id`, `producttag_id`, `lang_producttag_name`, `languages_code`, `lang_producttag_des`, `lang_producttag_content`, `lang_producttag_sub_info1`, `lang_producttag_sub_info2`, `lang_producttag_sub_info3`, `lang_producttag_sub_info4`, `lang_producttag_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(2, 5, 'đỏ', 'vn', '<p>des</p>\r\n', '<p>content1</p>\r\n', '', '', '', '', '', 1, 'do', 'a1', 'đỏ', 'a1'),
(3, 5, 'tag produnt', 'en', '<p>des</p>\r\n', '<p>content</p>\r\n', '', '', '', '', '', 1, 'tag-produnt', 'a', 'tag produnt', 'a'),
(6, 7, 'Xanh', 'vn', '', '', '', '', '', '', '', 1, 'xanh', '', 'Xanh', ''),
(7, 7, 'Xanh', 'en', '', '', '', '', '', '', '', 1, 'xanh', '', 'Xanh', ''),
(8, 8, 'Vàng', 'vn', '<p>1</p>\r\n', '<p>1</p>\r\n', '', '', '', '', '', 1, 'vang', '', 'Vàng', ''),
(9, 8, 'yellow', 'en', '', '', '', '', '', '', '', 1, 'vang', '', 'Vàng', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_color`
--

CREATE TABLE `product_color` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_languages`
--

CREATE TABLE `product_languages` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_name` text COLLATE utf8_unicode_ci,
  `lang_product_des` text COLLATE utf8_unicode_ci,
  `lang_product_des2` text COLLATE utf8_unicode_ci,
  `lang_product_des3` text COLLATE utf8_unicode_ci,
  `lang_product_content` text COLLATE utf8_unicode_ci,
  `lang_product_content2` text COLLATE utf8_unicode_ci,
  `lang_product_content3` text COLLATE utf8_unicode_ci,
  `lang_product_code` text COLLATE utf8_unicode_ci,
  `lang_product_original` text COLLATE utf8_unicode_ci,
  `lang_product_size` text COLLATE utf8_unicode_ci,
  `lang_product_package` text COLLATE utf8_unicode_ci,
  `lang_product_delivery` text COLLATE utf8_unicode_ci,
  `lang_product_delivery_time` text COLLATE utf8_unicode_ci,
  `lang_product_payment` text COLLATE utf8_unicode_ci,
  `lang_product_payment_type` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_languages`
--

INSERT INTO `product_languages` (`id`, `product_id`, `languages_code`, `lang_product_name`, `lang_product_des`, `lang_product_des2`, `lang_product_des3`, `lang_product_content`, `lang_product_content2`, `lang_product_content3`, `lang_product_code`, `lang_product_original`, `lang_product_size`, `lang_product_package`, `lang_product_delivery`, `lang_product_delivery_time`, `lang_product_payment`, `lang_product_payment_type`, `lang_product_sub_info1`, `lang_product_sub_info2`, `lang_product_sub_info3`, `lang_product_sub_info4`, `lang_product_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(41, 27, 'vn', 'HX004 - Trở thành chuyên gia Excel cho người đi làm', '<p>Thủ thuật Excel cập nhật h&agrave;ng tuần từ Học Excel Online. C&aacute;c thủ thuật trong kho&aacute; học n&agrave;y sẽ được cập nhật h&agrave;ng tuần. Mỗi tuần sẽ c&oacute; &iacute;t nhất 1 tới 2 videos mới trong kho&aacute; học n&agrave;y. Mỗi video được thiết kế ngắn nhất v&agrave; đơn giản nhất c&oacute; thể để gi&uacute;p bạn c&oacute; thể nhanh ch&oacute;ng nắm bắt v&agrave; &aacute;p dụng ngay v&agrave;o t&igrave;nh huống c&ocirc;ng việc của bạn.<br />\r\nMỗi video được minh hoạ r&otilde; r&agrave;ng bằng h&igrave;nh ảnh v&agrave; dữ liệu v&iacute; dụ gi&uacute;p c&aacute;c bạn c&oacute; thể dễ d&agrave;ng h&igrave;nh dung ra c&aacute;ch l&agrave;m v&agrave; c&oacute; thể l&agrave;m theo m&agrave; kh&ocirc;ng gặp kh&oacute; khăn g&igrave;.</p>\r\n\r\n<h4>Y&ecirc;u cầu trước khi tham gia kh&oacute;a học</h4>\r\n\r\n<ul>\r\n	<li>Học vi&ecirc;n cần c&oacute; kiến thức cơ bản về Excel để c&oacute; thể theo d&otilde;i v&agrave; l&agrave;m theo c&aacute;c thủ thuật n&agrave;y</li>\r\n	<li>Học vi&ecirc;n cần c&oacute; tr&igrave;nh duyệt c&oacute; kết nối Internet, tốt nhất l&agrave; tr&igrave;nh duyệt Web Google Chrome</li>\r\n	<li>M&aacute;y t&iacute;nh của học vi&ecirc;n cần c&agrave;i sẵn Excel phi&ecirc;n bản từ 2010 trở l&ecirc;n</li>\r\n</ul>\r\n\r\n<h4>Kiến thức mục ti&ecirc;u</h4>\r\n\r\n<ul>\r\n	<li>Những thủ thuật nhanh gọn sẽ gi&uacute;p bạn tiết kiệm thời gian tới 200%</li>\r\n	<li>L&agrave;m việc hiệu quả hơn với Excel</li>\r\n</ul>\r\n', '', '', '<div>\r\n<h3>The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n\r\n<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>\r\n\r\n<h3>Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC</h3>\r\n\r\n<p>&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>\r\n\r\n<h3>1914 translation by H. Rackham</h3>\r\n\r\n<p>&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;</p>\r\n</div>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'hx004-tro-thanh-chuyen-gia-excel-cho-nguoi-di-lam', 'HX004 - Trở thành chuyên gia Excel cho người đi làm', '', ''),
(42, 27, 'en', 'Rice KEO', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<div>\r\n<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n</div>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'rice-keo', 'Rice KEO', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'Rèm vải'),
(43, 28, 'vn', 'HX003 - Luyện tập Excel qua các đề thi', '<h3>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</h3>\r\n', '', '', '<h3>The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n\r\n<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>\r\n\r\n<h3>Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC</h3>\r\n\r\n<p>&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>\r\n\r\n<h3>1914 translation by H. Rackham</h3>\r\n\r\n<p>&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;</p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'hx003-luyen-tap-excel-qua-cac-de-thi', 'HX003 - Luyện tập Excel qua các đề thi', '', ''),
(44, 28, 'en', 'Sữa RN', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '02', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'rem-vai-02', 'Rèm vải 02', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'Rèm vải'),
(45, 29, 'vn', 'HP202 - Học thiết kế Slide chuyên nghiệp', '<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>\r\n', '', '', '<h3>The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n\r\n<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>\r\n\r\n<h3>Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC</h3>\r\n\r\n<p>&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>\r\n\r\n<h3>1914 translation by H. Rackham</h3>\r\n\r\n<p>&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;</p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'hp202-hoc-thiet-ke-slide-chuyen-nghiep', 'HP202 - Học thiết kế Slide chuyên nghiệp', '', ''),
(46, 29, 'en', 'Đồ uống EN', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '03', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'rem-vai-03', 'Rèm vải 03', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'Rèm vải'),
(47, 30, 'vn', 'HW301 - Thành thục kỹ năng soạn thảo văn bản trong Microsoft Word', '<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>\r\n', '', '', '<h3>The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n\r\n<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>\r\n\r\n<h3>Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC</h3>\r\n\r\n<p>&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>\r\n\r\n<h3>1914 translation by H. Rackham</h3>\r\n\r\n<p>&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;</p>\r\n', '', '', 'BVK521974', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'hw301-thanh-thuc-ky-nang-soan-thao-van-ban-trong-microsoft-word', 'HW301 - Thành thục kỹ năng soạn thảo văn bản trong Microsoft Word', '', ''),
(48, 30, 'en', 'Meat', '<p>Thịt lợn hữu cơ l&agrave; thịt của lợn được nu&ocirc;i dưỡng v&agrave; chăm s&oacute;c trong m&ocirc;i trường ho&agrave;n to&agrave;n tự nhi&ecirc;n. Cho ăn bằng những thức ăn ho&agrave;n to&agrave;n tự nhi&ecirc;n như c&aacute;m ng&ocirc;, c&aacute;m gạo, rau, củ&hellip; &nbsp;M&agrave; kh&ocirc;ng sử dụng bất k&igrave; loại hooc-m&ocirc;n tăng trưởng, tăng trọng, chất tạo nạc, hay c&aacute;c sản phẩm biến đổi gen n&agrave;o kh&aacute;c.&nbsp;Thịt hữu cơ l&agrave; g&igrave;? Thịt hữu cơ c&oacute; tốt hơn thịt thường kh&ocirc;ng?</p>\r\n', '', '', '<p>C&oacute; thể nhận thấy sự kh&aacute;c biệt giữa thịt lợn hữu cơ v&agrave; thịt lợn sạch l&agrave;: Thịt lợn hữu cơ bắt buộc l&agrave; thịt từ những con lợn được nu&ocirc;i trong điều kiện thức ăn ti&ecirc;u chuẩn, ho&agrave;n to&agrave;n tự nhi&ecirc;n v&agrave; hữu cơ. Trong khi đ&oacute;, thịt lợn sạch kh&ocirc;ng bắt buộc l&agrave; sản phẩm được nu&ocirc;i lớn trong điều kiện hữu cơ. M&agrave; c&oacute; thể cho ăn bằng nhiều nguồn thức ăn kh&aacute;c. Nhưng khi xuất chuồng v&agrave; đưa sản phẩm ra thị trường th&igrave; phải đ&aacute;p ứng được 3 ti&ecirc;u chuẩn L&iacute; &ndash; H&oacute;a &ndash; Sinh như tr&ecirc;n.&nbsp;Thịt hữu cơ l&agrave; g&igrave;? Thịt hữu cơ c&oacute; tốt hơn thịt thường kh&ocirc;ng?</p>\r\n\r\n<p>C&oacute; thể n&oacute;i, thịt heo hữu cơ bao gồm cả thịt sạch v&agrave; l&agrave; mức ti&ecirc;u chuẩn cao nhất đối với sản phẩm từ thịt.</p>\r\n\r\n<p>Do được nu&ocirc;i dưỡng v&agrave; chăm s&oacute;c trong m&ocirc;i trường ho&agrave;n to&agrave;n tự nhi&ecirc;n. Cho ăn bằng những thức ăn ho&agrave;n to&agrave;n tự nhi&ecirc;n: c&aacute;m ng&ocirc;,c&aacute;m gạo, rau, củ&hellip; M&agrave; kh&ocirc;ng sử dụng bất k&igrave;, loại hooc-m&ocirc;n tăng trưởng, tăng trọng, chất tạo nạc, hay c&aacute;c sản phẩm biến đổi gen n&agrave;o kh&aacute;c. N&ecirc;n thịt hữu cơ vị ngon, chắc thịt, thơm thịt, hơn bất k&igrave; loại thịt n&agrave;o kh&aacute;c, h&agrave;m lượng dinh dưỡng cao. Gi&agrave;u protein v&agrave; c&aacute;c nguy&ecirc;n tố vi lượng: vitamin v&agrave; kho&aacute;ng chất&hellip;. &nbsp;Đảm bảo mọi ti&ecirc;u chuẩn về thịt sạch v&agrave; vệ sinh an to&agrave;n thực phẩm.Thịt hữu cơ l&agrave; g&igrave;? Thịt hữu cơ c&oacute; tốt hơn thịt thường kh&ocirc;ng?</p>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'meat', 'Meat', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'Rèm vải'),
(49, 31, 'vn', 'HP201 - Học thiết kế Slide POWERPOINT cho người mới bắt đầu', '<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>\r\n', '', '', '<h3>The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n\r\n<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>\r\n\r\n<h3>Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC</h3>\r\n\r\n<p>&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>\r\n\r\n<h3>1914 translation by H. Rackham</h3>\r\n\r\n<p>&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;</p>\r\n', '', '', 'BVK521677', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'hp201-hoc-thiet-ke-slide-powerpoint-cho-nguoi-moi-bat-dau', 'HP201 - Học thiết kế Slide POWERPOINT cho người mới bắt đầu', '', ''),
(50, 31, 'en', 'Red Apple', '<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\">Kh&ocirc;ng phải l&agrave; giống t&aacute;o <strong>l&ugrave;n nhất thế giới</strong>, nhưng ho&agrave;n to&agrave;n kh&aacute;c&nbsp;với c&aacute;c giống t&aacute;o đang trồng tại Việt Nam.&nbsp;<span style=\"color:#ff0000\"><strong>Giống T&aacute;o Đỏ L&ugrave;n F1</strong></span>&nbsp;đặc biệt thấp l&ugrave;n, c&acirc;y chỉ cao từ <strong>1 - 2 m&eacute;t</strong>, đặc trưng giống cao sản rất sai quả, qu&aacute; ho&agrave;n hảo cho việc <strong>trồng chậu l&agrave;m cảnh v&agrave; tạo d&aacute;ng bonsai.</strong></span><br />\r\n<br />\r\n<span style=\"font-size:12pt\">Giống đặc biệt dễ trồng, nhanh cho thu hoạch, quả ăn rất gi&ograve;n v&agrave; c&oacute; vị ngọt thanh. C&acirc;y 2 năm tuổi c&oacute; sản lượng trung b&igrave;nh từ <strong>15 - 20 kg/c&acirc;y</strong> v&agrave; sản lượng tăng dần theo độ tuổi của c&acirc;y.</span></p>\r\n', '', '', '<p>Khi mang thai, l&agrave;n da của chị em bị ảnh hưởng một c&aacute;ch nghi&ecirc;m trọng. C&aacute;c chuy&ecirc;n gia nghi&ecirc;n cứu v&agrave; chứng minh rằng t&aacute;o t&agrave;u c&oacute; chứa lượng vitamin C v&agrave; vitamin E phong ph&uacute;. C&aacute;c loại vitamin n&agrave;y gi&uacute;p cho l&agrave;n da của phụ nữ mang bầu tươi s&aacute;ng hơn. Ngo&agrave;i ra, n&oacute; c&ograve;n gi&uacute;p chống lại sự h&igrave;nh th&agrave;nh c&aacute;c vết n&aacute;m.</p>\r\n\r\n<p>Huyết &aacute;p thấp l&agrave; t&igrave;nh trạng phổ biến ở phụ nữ mang thai. Bạn c&oacute; thể cải thiện t&igrave;nh h&igrave;nh n&agrave;y bằng m&oacute;n ăn t&aacute;o đỏ T&acirc;n Cương kh&ocirc; hầm thịt g&agrave;. Bạn cần chọn 20 quả t&aacute;o đỏ T&acirc;n Cương, một con g&agrave; m&aacute;i tơ. G&agrave; chặt từng kh&uacute;c, ướp gia vị hầm lửa to, đến khi g&agrave; gần nhừ th&igrave; cho t&aacute;o đỏ T&acirc;n Cương v&agrave;o. C&oacute; thể d&ugrave;ng canh hầm g&agrave; t&aacute;o đỏ T&acirc;n Cương l&agrave;m nhiều lần.</p>\r\n', '', '', '05', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'red-apple', 'Red Apple', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'Rèm vải'),
(51, 32, 'vn', 'HK101 - Excel từ cơ bản tới nâng cao dành cho kế toán', '<p>orem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fug</p>\r\n', '', '', '<h3>The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n\r\n<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>\r\n\r\n<h3>Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC</h3>\r\n\r\n<p>&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>\r\n\r\n<h3>1914 translation by H. Rackham</h3>\r\n\r\n<p>&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;</p>\r\n', '', '', 'BVK52197', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'hk101-excel-tu-co-ban-toi-nang-cao-danh-cho-ke-toan', 'HK101 - Excel từ cơ bản tới nâng cao dành cho kế toán', '', ''),
(52, 32, 'en', 'Banana', '<p>Chuối c&oacute; chứng nhận hữu cơ ti&ecirc;u chuẩn USDA organic v&agrave; EU do tổ chức Ecocert SA, Cộng H&ograve;a Ph&aacute;p cấp.</p>\r\n', '', '', '<p><span style=\"color:#000000\"><span style=\"font-family:verdana,geneva,sans-serif\"><span style=\"font-size:14px\">Chuối c&oacute; chứng nhận hữu cơ ti&ecirc;u chuẩn USDA organic v&agrave; EU&nbsp;do tổ chức Ecocert SA, Cộng H&ograve;a Ph&aacute;p cấp.</span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://europa.eu/rapid/exploit/2010/06/IP/EN/i10_861.eni/Pictures/10000000000001F40000014D178D7D73.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'banana', 'Banana', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'Rèm vải'),
(55, 34, 'vn', 'HX002 - Học Excel cho người mới bắt đầu', '<h3>GIỚI THIỆU CHUNG</h3>\r\n\r\n<p>Thủ thuật Excel cập nhật h&agrave;ng tuần từ Học Excel Online. C&aacute;c thủ thuật trong kho&aacute; học n&agrave;y sẽ được cập nhật h&agrave;ng tuần. Mỗi tuần sẽ c&oacute; &iacute;t nhất 1 tới 2 videos mới trong kho&aacute; học n&agrave;y. Mỗi video được thiết kế ngắn nhất v&agrave; đơn giản nhất c&oacute; thể để gi&uacute;p bạn c&oacute; thể nhanh ch&oacute;ng nắm bắt v&agrave; &aacute;p dụng ngay v&agrave;o t&igrave;nh huống c&ocirc;ng việc của bạn.&nbsp;<br />\r\nMỗi video được minh hoạ r&otilde; r&agrave;ng bằng h&igrave;nh ảnh v&agrave; dữ liệu v&iacute; dụ gi&uacute;p c&aacute;c bạn c&oacute; thể dễ d&agrave;ng h&igrave;nh dung ra c&aacute;ch l&agrave;m v&agrave; c&oacute; thể l&agrave;m theo m&agrave; kh&ocirc;ng gặp kh&oacute; khăn g&igrave;.</p>\r\n\r\n<h4>Y&Ecirc;U CẦU TRƯỚC KHI THAM GIA KH&Oacute;A HỌC</h4>\r\n\r\n<ul>\r\n	<li>Học vi&ecirc;n cần c&oacute; kiến thức cơ bản về Excel để c&oacute; thể theo d&otilde;i v&agrave; l&agrave;m theo c&aacute;c thủ thuật n&agrave;y</li>\r\n	<li>Học vi&ecirc;n cần c&oacute; tr&igrave;nh duyệt c&oacute; kết nối Internet, tốt nhất l&agrave; tr&igrave;nh duyệt Web Google Chrome</li>\r\n	<li>M&aacute;y t&iacute;nh của học vi&ecirc;n cần c&agrave;i sẵn Excel phi&ecirc;n bản từ 2010 trở l&ecirc;n</li>\r\n</ul>\r\n\r\n<h4>KIẾN THỨC MỤC TI&Ecirc;U</h4>\r\n\r\n<ul>\r\n	<li>Những thủ thuật nhanh gọn sẽ gi&uacute;p bạn tiết kiệm thời gian tới 200%</li>\r\n	<li>L&agrave;m việc hiệu quả hơn với Excel</li>\r\n</ul>\r\n', '', '', '<h3>The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n\r\n<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>\r\n\r\n<h3>Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC</h3>\r\n\r\n<p>&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>\r\n', '', '', 'EC001', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'hx002-hoc-excel-cho-nguoi-moi-bat-dau', 'HX002 - Học Excel cho người mới bắt đầu', '', '');
INSERT INTO `product_languages` (`id`, `product_id`, `languages_code`, `lang_product_name`, `lang_product_des`, `lang_product_des2`, `lang_product_des3`, `lang_product_content`, `lang_product_content2`, `lang_product_content3`, `lang_product_code`, `lang_product_original`, `lang_product_size`, `lang_product_package`, `lang_product_delivery`, `lang_product_delivery_time`, `lang_product_payment`, `lang_product_payment_type`, `lang_product_sub_info1`, `lang_product_sub_info2`, `lang_product_sub_info3`, `lang_product_sub_info4`, `lang_product_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(56, 34, 'en', 'Apple', '<p>Trung Y c&oacute; c&acirc;u: &ldquo;Một ng&agrave;y ăn ba quả t&aacute;o, cả đời kh&ocirc;ng thấy gi&agrave;&rdquo; T&aacute;o t&agrave;u kh&ocirc; c&oacute; t&iacute;nh giữ nhiệt, vị cam, giàu chất dinh dưỡng, bởi chứa c&aacute;c th&agrave;nh phần như: pr&ocirc;t&ecirc;in,...</p>\r\n', '', '', '<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><span style=\"font-family:Verdana,Geneva,sans-serif\">&aacute;o t&agrave;u kh&ocirc; c&oacute; t&iacute;nh giữ nhiệt, vị cam, giàu chất dinh dưỡng, bởi chứa c&aacute;c th&agrave;nh phần như: pr&ocirc;t&ecirc;in, lipit, đường, can xi, phốt pho, sắt, v&agrave; nhiều loại vitamin A,C, B1, B2, carotene&hellip;.. n&ecirc;n mang đến nhiều gi&aacute; trị về sức khỏe cho người sử dụng như tăng cường hệ h&ocirc; hấp, giải độc, l&agrave;m bổ trung kh&iacute;, tốt cho hệ ti&ecirc;u h&oacute;a... Đặc biệt tốt cho những người suy nhược cơ thể hay suy nhược thần kinh, cao huyết &aacute;o, kh&oacute; ti&ecirc;u, t&aacute;o b&oacute;n, người bị dị ứng da...</span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://img.aws.livestrongcdn.com/ls-article-image-673/cpi.studiod.com/www_livestrong_com/photos.demandstudios.com/getty/article/181/98/473810580_XS.jpg\" /></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>HDSD:</strong> T&aacute;o t&agrave;u c&oacute; thể ăn liền, hay đun nước pha tr&agrave;, nấu ch&egrave;, chưng yến hay ng&acirc;m rượu thuốc. Hay d&ugrave;ng t&aacute;o t&agrave;u hầm canh g&agrave;, k&igrave; tử v&agrave; &yacute; dĩ để c&oacute; được m&oacute;n canh ngon bổ dưỡng</span></span></span></p>\r\n\r\n<p><strong><span style=\"color:#000000\"><span style=\"font-size:14px\"><span style=\"font-family:Verdana,Geneva,sans-serif\">Bảo quản nơi kh&ocirc; tho&aacute;ng m&aacute;t. Sau khi mở t&uacute;i v&agrave; chưa d&ugrave;ng hết, cần đ&oacute;ng k&iacute;n v&agrave; lưu giữ trong ngăn m&aacute;t tủ lạnh</span></span></span></strong></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><span style=\"font-family:Verdana,Geneva,sans-serif\">Sản phẩm được chứng nhận hữu cơ ti&ecirc;u chuẩn Ch&acirc;u &Acirc;u bởi Control Union</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'apple', 'Apple', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'Rèm vải'),
(57, 35, 'vn', 'HX001 - Thành thạo Excel cơ bản', '', '', '', '', '', '', 'HX001', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'hx001-thanh-thao-excel-co-ban', 'HX001 - Thành thạo Excel cơ bản', '', ''),
(58, 35, 'en', 'english version EX002 - Excel từ kiến thức cơ bản đến thực hành chuyên nghiệp', 'english version ', '', '', 'english version ', '', '', 'EX002', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-ex002-excel-tu-kien-thuc-co-ban-den-thuc-hanh-chuyen-nghiep', 'EX002 - Excel từ kiến thức cơ bản đến thực hành chuyên nghiệp', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_producer`
--

CREATE TABLE `product_producer` (
  `producer_id` int(11) NOT NULL,
  `producer_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `producer_sort_order` int(11) DEFAULT NULL,
  `producer_parent` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_producer`
--

INSERT INTO `product_producer` (`producer_id`, `producer_name`, `producer_sort_order`, `producer_parent`, `state`) VALUES
(3, 'Donaldson', 1, 0, 1),
(4, 'Komatsu', 2, 0, 1),
(5, 'Fleetguard', 3, 0, 1),
(6, 'Badwin', 4, 0, 1),
(7, 'Huyndai-Mobis', 5, 0, 1),
(8, 'Sakura', 6, 0, 1),
(9, 'Kobelco', 7, 0, 1),
(10, 'Hãng khác', 8, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_producer_languages`
--

CREATE TABLE `product_producer_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_producer_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `producer_id` int(11) NOT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_producer_languages`
--

INSERT INTO `product_producer_languages` (`id`, `languages_code`, `lang_producer_name`, `producer_id`, `friendly_url`) VALUES
(34, 'vn', 'Donaldson', 3, 'donaldson'),
(35, 'en', 'Donaldson', 3, 'donaldson'),
(36, 'vn', 'Komatsu', 4, 'komatsu'),
(37, 'en', 'Komatsu', 4, 'komatsu'),
(38, 'vn', 'Fleetguard', 5, 'fleetguard'),
(39, 'en', 'Fleetguard', 5, 'fleetguard'),
(40, 'vn', 'Badwin', 6, 'badwin'),
(41, 'en', 'Badwin', 6, 'badwin'),
(42, 'vn', 'Huyndai-Mobis', 7, 'huyndai-mobis'),
(43, 'en', 'Huyndai-Mobis', 7, 'huyndai-mobis'),
(44, 'vn', 'Sakura', 8, 'sakura'),
(45, 'en', 'Sakura', 8, 'sakura'),
(46, 'vn', 'Kobelco', 9, 'kobelco'),
(47, 'en', 'Kobelco', 9, 'kobelco'),
(48, 'vn', 'Hãng khác', 10, 'hang-khac'),
(49, 'en', 'Hãng khác', 10, 'hang-khac');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pro_color`
--

CREATE TABLE `pro_color` (
  `id` int(11) NOT NULL,
  `color` text COLLATE utf8_unicode_ci,
  `id_product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `regInfor`
--

CREATE TABLE `regInfor` (
  `regInfor_id` int(11) NOT NULL,
  `regInfor_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_wasBorn` int(11) DEFAULT NULL,
  `regInfor_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_state` int(11) DEFAULT '1',
  `regInfor_createdDate` date DEFAULT NULL,
  `regInfor_answer1` int(11) DEFAULT '1',
  `regInfor_answer2` int(11) DEFAULT '1',
  `regInfor_answer3` int(11) DEFAULT '1',
  `regInfor_answer4` int(11) DEFAULT '1',
  `regInfor_answer5` int(11) DEFAULT '1',
  `regInfor_answer6` int(11) DEFAULT '1',
  `regInfor_answer7` int(11) DEFAULT '1',
  `regInfor_answer8` int(11) DEFAULT '1',
  `regInfor_answer9` int(11) DEFAULT '1',
  `regInfor_sex` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `regInfor`
--

INSERT INTO `regInfor` (`regInfor_id`, `regInfor_name`, `regInfor_phone`, `regInfor_mail`, `regInfor_address`, `regInfor_wasBorn`, `regInfor_code`, `regInfor_state`, `regInfor_createdDate`, `regInfor_answer1`, `regInfor_answer2`, `regInfor_answer3`, `regInfor_answer4`, `regInfor_answer5`, `regInfor_answer6`, `regInfor_answer7`, `regInfor_answer8`, `regInfor_answer9`, `regInfor_sex`) VALUES
(25, 'fgsf', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(26, 'th', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(31, 'thuyhang', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(32, 'thuyhang2', '0967878', NULL, NULL, 1955, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 2, 'nữ'),
(34, 'thdfghgfh', 'dfasdfas', NULL, NULL, 1940, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 2, 1, 1, 'nam'),
(35, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(36, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(37, 'hh', '01669745858', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(38, '', '01669745858', NULL, NULL, 1982, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(39, 'hsdfansdf', '0967878', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(40, '', 'dsfdsfsfs', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(41, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(42, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(43, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(44, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(45, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(46, '', '01669745858', NULL, NULL, 1940, NULL, 1, '2017-06-27', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(47, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(48, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(49, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(50, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(51, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(52, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(53, 'erte', '5657', NULL, NULL, 2345, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '4'),
(54, '', '', NULL, NULL, 0, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(55, 'dryrs', '3426546', NULL, NULL, 25346, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '1'),
(56, 'hangpt', '0973378669', NULL, NULL, 1989, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '4'),
(57, 'fhgh', 'fhfhfh', NULL, NULL, 0, NULL, 1, '2017-07-15', 1, 1, 1, 1, 1, 1, 1, 1, 1, '3'),
(58, 'tgsdfg', '', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(59, 'zxcv', 'sdf', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(60, 'xzc', '35345', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `regMember`
--

CREATE TABLE `regMember` (
  `regMember_id` int(11) NOT NULL,
  `regMember_mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regMember_createdDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `regMember`
--

INSERT INTO `regMember` (`regMember_id`, `regMember_mail`, `regMember_createdDate`) VALUES
(11, 'ádgf', '2017-07-16'),
(12, 'xvdfg', '2017-07-16'),
(13, '', '2017-07-30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sale`
--

CREATE TABLE `sale` (
  `sale_id` int(11) NOT NULL,
  `sale_name` text COLLATE utf8_unicode_ci,
  `sale_code` text COLLATE utf8_unicode_ci,
  `sale_total_count` int(11) DEFAULT NULL,
  `sale_type` int(11) DEFAULT NULL,
  `sale_value` float DEFAULT NULL,
  `sale_apply` int(11) DEFAULT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `sale_start_date` datetime DEFAULT NULL,
  `sale_end_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service`
--

CREATE TABLE `service` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_des` text COLLATE utf8_unicode_ci,
  `service_content` text COLLATE utf8_unicode_ci,
  `service_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_views` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_id` int(11) DEFAULT NULL,
  `service_author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_create_date` date DEFAULT NULL,
  `service_update_date` date DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `service_sub_infor1` text COLLATE utf8_unicode_ci,
  `service_sub_infor2` text COLLATE utf8_unicode_ci,
  `service_sub_infor3` text COLLATE utf8_unicode_ci,
  `service_sub_infor4` text COLLATE utf8_unicode_ci,
  `service_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `servicetag_arr` varchar(10000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `service`
--

INSERT INTO `service` (`service_id`, `service_name`, `service_des`, `service_content`, `service_img`, `service_views`, `servicecat_id`, `service_author`, `service_create_date`, `service_update_date`, `state`, `service_sub_infor1`, `service_sub_infor2`, `service_sub_infor3`, `service_sub_infor4`, `service_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `servicetag_arr`) VALUES
(57, 'Vay thế chấp sổ đỏ lãi suất thấp', 'Trong các hình thức vay vốn ngân hàng thì hình thức vay thế chấp được khách hàng lựa chọn vay nhiều hơn so với hình thức vay tín chấp. Vì sao vậy ? So với hình thức vay thế chấp tuy người vay phải thế chấp tài sản của mình nhưng đổi lại họ sẽ được vay với lãi suất ưu đãi hơn, thời gian hạn mức cao. Còn đối với hình thức vay tín chấp, tuy người đi vay không phải thế chấp tài sản nhưng đổi lại họ được vay với mức vay nhỏ lãi suất không cao.', '<p>Trong c&aacute;c h&igrave;nh thức&nbsp;vay vốn ng&acirc;n h&agrave;ng&nbsp;th&igrave; h&igrave;nh thức&nbsp;<strong><em>vay thế chấp&nbsp;</em></strong>được kh&aacute;ch h&agrave;ng lựa chọn vay nhiều hơn so với h&igrave;nh thức vay t&iacute;n chấp. V&igrave; sao vậy ? So với h&igrave;nh thức vay thế chấp tuy người vay phải thế chấp t&agrave;i sản của m&igrave;nh nhưng đổi lại họ sẽ được vay với l&atilde;i suất ưu đ&atilde;i hơn, thời gian hạn mức cao. C&ograve;n đối với h&igrave;nh thức&nbsp;<strong><em>vay t&iacute;n chấp</em></strong>, tuy người đi vay kh&ocirc;ng phải thế chấp t&agrave;i sản nhưng đổi lại họ được vay với mức vay nhỏ l&atilde;i suất kh&ocirc;ng cao.</p>\r\n\r\n<p>Chỉ cần c&oacute; t&agrave;i sản thế chấp l&agrave; kh&aacute;ch h&agrave;ng c&oacute; thể vay vốn thế chấp d&agrave;i hạn tương ứng với giấy tờ đảm bảo t&agrave;i sản, hạn mức tối đa cho vay l&agrave; 75% gi&aacute; trị t&agrave;i sản.&nbsp;</p>\r\n\r\n<p>Điều kiện để kh&aacute;ch h&agrave;ng l&agrave;m thủ tục vay thế chấp sổ đỏ, nh&agrave; đất ng&acirc;n h&agrave;ng Agribank:</p>\r\n\r\n<p>Để được hỗ trợ vay tại Agribank kh&aacute;ch h&agrave;ng l&agrave; c&ocirc;ng d&acirc;n Việt Nam đang trong độ tuổi lao động, c&oacute; thu nhập ổn định tr&ecirc;n 3 triệu đồng mỗi th&aacute;ng, tại thời điểm vay kh&ocirc;ng c&oacute; nợ xấu tại ng&acirc;n h&agrave;ng v&agrave; đang cư tr&uacute; tại phạm vi của ng&acirc;n h&agrave;ng Agribank.</p>\r\n', 'cho-vay-tieu-dung-2-1513702694434_BLXU.jpg', '354', 4, 'Minh Công', '2017-05-22', '2018-07-24', 1, NULL, NULL, NULL, NULL, NULL, 'Vay thế chấp sổ đỏ lãi suất thấp', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'vay-the-chap-so-do-lai-suat-thap', 'Thi công rèm', NULL, ''),
(58, 'Thủ tục vay tiền mua nhà', 'Trong các hình thức vay vốn ngân hàng thì hình thức vay thế chấp được khách hàng lựa chọn vay nhiều hơn so với hình thức vay tín chấp. Vì sao vậy ? So với hình thức vay thế chấp tuy người vay phải thế chấp tài sản của mình nhưng đổi lại họ sẽ được vay với lãi suất ưu đãi hơn, thời gian hạn mức cao. Còn đối với hình thức vay tín chấp, tuy người đi vay không phải thế chấp tài sản nhưng đổi lại họ được vay với mức vay nhỏ lãi suất không cao.', '<p>&nbsp;</p>\r\n\r\n<p>Trong c&aacute;c h&igrave;nh thức&nbsp;vay vốn ng&acirc;n h&agrave;ng&nbsp;th&igrave; h&igrave;nh thức&nbsp;<strong><em>vay thế chấp&nbsp;</em></strong>được kh&aacute;ch h&agrave;ng lựa chọn vay nhiều hơn so với h&igrave;nh thức vay t&iacute;n chấp. V&igrave; sao vậy ? So với h&igrave;nh thức vay thế chấp tuy người vay phải thế chấp t&agrave;i sản của m&igrave;nh nhưng đổi lại họ sẽ được vay với l&atilde;i suất ưu đ&atilde;i hơn, thời gian hạn mức cao. C&ograve;n đối với h&igrave;nh thức&nbsp;<strong><em>vay t&iacute;n chấp</em></strong>, tuy người đi vay kh&ocirc;ng phải thế chấp t&agrave;i sản nhưng đổi lại họ được vay với mức vay nhỏ l&atilde;i suất kh&ocirc;ng cao.</p>\r\n\r\n<p>Chỉ cần c&oacute; t&agrave;i sản thế chấp l&agrave; kh&aacute;ch h&agrave;ng c&oacute; thể vay vốn thế chấp d&agrave;i hạn tương ứng với giấy tờ đảm bảo t&agrave;i sản, hạn mức tối đa cho vay l&agrave; 75% gi&aacute; trị t&agrave;i sản.&nbsp;</p>\r\n\r\n<p>Điều kiện để kh&aacute;ch h&agrave;ng l&agrave;m thủ tục vay thế chấp sổ đỏ, nh&agrave; đất ng&acirc;n h&agrave;ng Agribank:</p>\r\n\r\n<p>Để được hỗ trợ vay tại Agribank kh&aacute;ch h&agrave;ng l&agrave; c&ocirc;ng d&acirc;n Việt Nam đang trong độ tuổi lao động, c&oacute; thu nhập ổn định tr&ecirc;n 3 triệu đồng mỗi th&aacute;ng, tại thời điểm vay kh&ocirc;ng c&oacute; nợ xấu tại ng&acirc;n h&agrave;ng v&agrave; đang cư tr&uacute; tại phạm vi của ng&acirc;n h&agrave;ng Agribank.</p>\r\n', 'gói-vay-tiền-mua-nhà-trả-góp-ngân-hàng-Vietcombank.jpg', '354', 3, 'Minh Công', '2017-05-22', '2018-07-24', 1, NULL, NULL, NULL, NULL, NULL, 'Thủ tục vay tiền mua nhà', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'thu-tuc-vay-tien-mua-nha', 'Thi công rèm', NULL, ''),
(59, 'Vay tiền mua nhà đơn giản không?', 'Không phải ai cũng có đủ điều kiện kinh tế để đi mua nhà, nhiều người phải tích cóp hàng năm trời, kết hợp với vay vốn ngân hàng mới có đủ tiền sở hữu ngôi nhà trong mơ. Bài viết dưới đây Rever sẽ mách bạn 9 điều người mua nhà lần đầu nên lưu ý trước khi tiến hành vay tiền ngân hàng mua nhà.', '<p>Kh&ocirc;ng phải ai cũng c&oacute; đủ điều kiện kinh tế để đi mua nh&agrave;, nhiều người phải t&iacute;ch c&oacute;p h&agrave;ng năm trời, kết hợp với&nbsp;vay vốn ng&acirc;n h&agrave;ng mới c&oacute; đủ tiền sở hữu ng&ocirc;i nh&agrave; trong mơ. B&agrave;i viết dưới đ&acirc;y Rever sẽ m&aacute;ch bạn 9&nbsp;điều người mua nh&agrave; lần đầu n&ecirc;n lưu &yacute; trước khi tiến h&agrave;nh vay tiền ng&acirc;n h&agrave;ng&nbsp;mua nh&agrave;.</p>\r\n\r\n<h2>Lưu &yacute; 1: Chỉ n&ecirc;n vay tối đa 50% gi&aacute; trị ng&ocirc;i nh&agrave;</h2>\r\n\r\n<p>Trước khi c&oacute;&nbsp;quyết định mua nh&agrave;, h&atilde;y chắc rằng bạn đ&atilde; c&oacute; một khoản tiền t&iacute;ch lũy tối thiểu 30% gi&aacute; trị ng&ocirc;i&nbsp;nh&agrave; muốn mua, l&yacute; tưởng hơn th&igrave; khoản tiền t&iacute;ch lũy n&agrave;y n&ecirc;n bằng mức 50% gi&aacute; trị ng&ocirc;i nh&agrave;. Theo chuy&ecirc;n vi&ecirc;n tư vấn Rever, tỷ lệ vay 50% gi&aacute; trị t&agrave;i sản được xem l&agrave; mức vay l&yacute; tưởng&nbsp;v&agrave; &iacute;t &aacute;p lực nhất, gi&uacute;p người vay vốn vừa dễ d&agrave;ng thanh to&aacute;n tiền vay cho ng&acirc;n h&agrave;ng vừa c&oacute; thể trang trải c&aacute;c chi ti&ecirc;u kh&aacute;c trong cuộc sống. Trong trường hợp mức vay lớn hơn 50% gi&aacute; trị ng&ocirc;i&nbsp;nh&agrave;, c&oacute; lẽ người vay sẽ&nbsp;phải đối mặt với những th&aacute;ng ng&agrave;y đầy kh&oacute; khăn khi &aacute;p lực trả nợ l&uacute;c n&agrave;o cũng hiện hữu b&ecirc;n m&igrave;nh.</p>\r\n\r\n<h2>Lưu &yacute; 2: Ch&uacute; &yacute; l&atilde;i suất ng&acirc;n h&agrave;ng</h2>\r\n\r\n<p>Khi vay vốn ng&acirc;n h&agrave;ng&nbsp;mua nh&agrave;, người vay n&ecirc;n thuộc nằm l&ograve;ng quy tắc v&agrave;ng n&agrave;y: &quot;Vốn cố định nhưng l&atilde;i vay của ng&acirc;n h&agrave;ng thường bị thả nổi&quot;. Vấn đề n&agrave;y l&agrave; như thế n&agrave;o?</p>\r\n\r\n<p>Hiện nay tr&ecirc;n thị trường c&oacute; kh&aacute; nhiều ng&acirc;n h&agrave;ng mời ch&agrave;o người vay với l&atilde;i suất ưu đ&atilde;i rất hấp dẫn chỉ từ 7,5-8%/năm, nhưng bạn n&ecirc;n nhớ l&atilde;i suất ưu đ&atilde;i n&agrave;y thường chỉ &aacute;p dụng trong 6-12 th&aacute;ng đầu ti&ecirc;n. Kể từ th&aacute;ng 13 trở đi, mức l&atilde;i suất sẽ được điều chỉnh tăng th&ecirc;m khoảng 3,5-4% t&ugrave;y thuộc v&agrave;o từng ng&acirc;n h&agrave;ng v&agrave; từng đối tượng vay.&nbsp;Ch&iacute;nh v&igrave; vậy, Rever nhắc bạn trước khi vay&nbsp;<a href=\"http://rever.vn/mua-nha-voi-rever\">mua nh&agrave; cần phải xem kỹ</a>&nbsp;l&atilde;i suất thay đổi như thế n&agrave;o cho c&aacute;c năm sau theo hợp đồng t&iacute;n dụng. Nếu c&oacute; thể, h&atilde;y y&ecirc;u cầu nh&acirc;n vi&ecirc;n ng&acirc;n h&agrave;ng tư vấn r&otilde; về chi ph&iacute; l&atilde;i vay qua c&aacute;c năm.</p>\r\n\r\n<p>Một yếu tố kh&aacute;c cũng cần hiểu r&otilde; trước khi k&yacute; v&agrave;o hợp đồng vay vốn đ&oacute; l&agrave; tiền vay ng&acirc;n h&agrave;ng sẽ t&iacute;nh theo dư nợ giảm dần hay dư nợ ban đầu.</p>\r\n\r\n<h2>Lưu &yacute; 3: Duy tr&igrave; mức thu nhập h&agrave;ng th&aacute;ng</h2>\r\n\r\n<p>Duy tr&igrave; thu nhập ổn định h&agrave;ng th&aacute;ng l&agrave; một trong những điều cực kỳ quan trọng trước khi vay vốn ng&acirc;n h&agrave;ng mua nh&agrave;. Nhiều chuy&ecirc;n gia t&agrave;i ch&iacute;nh cho rằng c&oacute; được mức thu nhập ổn định th&igrave;&nbsp;mới tạo cơ sở t&agrave;i ch&iacute;nh vững v&agrave;ng để trả nợ ng&acirc;n h&agrave;ng (trong đ&oacute; bao gồm cả vốn v&agrave; l&atilde;i vay). B&ecirc;n cạnh đ&oacute;, người vay cũng n&ecirc;n b&agrave;n bạc với gia đ&igrave;nh t&igrave;m th&ecirc;m phương &aacute;n tăng thu nhập từ c&aacute;c nguồn phụ, qua đ&oacute; đảm bảo d&ugrave; l&atilde;i suất tăng l&ecirc;n cũng c&oacute; thể trả nổi nợ gốc v&agrave; l&atilde;i vay.</p>\r\n\r\n<h2>Lưu &yacute; 4:&nbsp;Tự đ&aacute;nh gi&aacute; khả năng thanh to&aacute;n</h2>\r\n\r\n<p>Trước khi vay tiền&nbsp;<a href=\"https://offer.rever.vn/topic/mua-nha-lan-dau\" rel=\" noopener\" target=\"_blank\">mua nh&agrave; hay chung cư</a>, điều quan trọng nhất đ&oacute; l&agrave; người vay cần đ&aacute;nh gi&aacute; được khả năng t&agrave;i ch&iacute;nh của bản th&acirc;n nhằm&nbsp;hạn chế tối đa việc mất khả năng trả nợ trong tương lai. H&atilde;y l&ecirc;n kế hoạch r&otilde; r&agrave;ng 3 khả năng sau đ&acirc;y:</p>\r\n\r\n<p>Khả năng t&agrave;i ch&iacute;nh (1): Đ&acirc;y được coi l&agrave; số tiền tiết kiệm m&agrave; người vay đang c&oacute;, thu nhập h&agrave;ng th&aacute;ng của người vay v&agrave; gia đ&igrave;nh sau khi đ&atilde; trừ&nbsp;đi to&agrave;n bộ những khoản chi ph&iacute; sinh hoạt trong th&aacute;ng.</p>\r\n\r\n<p>Khả năng t&agrave;i ch&iacute;nh hỗ trợ (2): Một phần vốn được hỗ trợ bởi người th&acirc;n để mua nh&agrave; với việc cho vay kh&ocirc;ng lấy l&atilde;i hoặc &aacute;p dụng mức l&atilde;i suất nhưng bằng hoặc thấp hơn so với l&atilde;i suất của ng&acirc;n h&agrave;ng.</p>\r\n\r\n<p>Khả năng trả nợ (3): Việc chắc chắn phải l&agrave;m sau khi mua nh&agrave;/chung cư&nbsp;trả g&oacute;p ch&iacute;nh l&agrave; trả nợ. Ở trường hợp n&agrave;y, người vay vốn cần phải biết ch&iacute;nh x&aacute;c mức chi trả mỗi th&aacute;ng, đồng thời phải nắm được sự biến động của l&atilde;i suất trong tầm kiểm so&aacute;t.&nbsp;<strong>Rever lưu &yacute; người vay đ&oacute; l&agrave; kh&ocirc;ng n&ecirc;n c&oacute; những khoản chi ph&iacute; ph&aacute;t sinh hoặc nếu c&oacute; th&igrave; cũng kh&ocirc;ng đ&aacute;ng kể</strong>. D&ugrave; vậy, để tr&aacute;nh mất khả năng chi trả, người vay mua nh&agrave; chỉ n&ecirc;n vay tối đa từ 20%-30% gi&aacute; trị căn nh&agrave;, tuyệt đối kh&ocirc;ng vay qu&aacute; 50% gi&aacute; trị căn nh&agrave; như ch&uacute;ng t&ocirc;i đ&atilde; đề cập ở Lưu &yacute; 1.</p>\r\n\r\n<p>Nếu thực hiện ph&eacute;p t&iacute;nh (1) + (2) v&agrave; cho ra kết quả (1) + (2)&ge; (3) th&igrave; việc vốn ng&acirc;n h&agrave;ng mua nh&agrave;&nbsp;được xem l&agrave; khả thi.</p>\r\n\r\n<h2>Lưu &yacute; 5: Chỉ mua ng&ocirc;i nh&agrave; ph&ugrave; hợp với nhu cầu v&agrave; điều kiện kinh tế</h2>\r\n\r\n<p>H&atilde;y chắc rằng bạn đang c&oacute; &yacute; định mua ng&ocirc;i nh&agrave; c&oacute; diện t&iacute;ch vừa phải, đủ cho c&aacute;c th&agrave;nh vi&ecirc;n trong gia đ&igrave;nh sử dụng. Trong trường hợp bạn mua trả g&oacute;p một ng&ocirc;i nh&agrave; c&oacute; diện t&iacute;ch qu&aacute; lớn so với số người trong nh&agrave; của bạn th&igrave; &aacute;p lực vay vốn sẽ nặng nề hơn, k&eacute;o theo đ&oacute; l&agrave; việc bạn sẽ phải trả những khoản nợ gốc v&agrave; l&atilde;i kh&ocirc;ng cần thiết.</p>\r\n\r\n<h2><strong>Lưu &yacute; 6: C&acirc;n nhắc thời hạn g&oacute;i vay</strong></h2>\r\n\r\n<p><strong><img alt=\"vay tien mua nha\" src=\"https://blog.rever.vn/hs-fs/hubfs/phatquahan.jpg?t=1532375959182&amp;width=640&amp;name=phatquahan.jpg\" title=\"vay tien mua nha\" width=\"640\" /></strong></p>\r\n\r\n<p><em>Thời hạn g&oacute;i vay l&agrave; yếu tố cực kỳ quan trọng kh&ocirc;ng n&ecirc;n bỏ qua</em></p>\r\n\r\n<p>B&ecirc;n cạnh l&atilde;i suất th&igrave; thời hạn của g&oacute;i vay cũng l&agrave; yếu tố rất quan trọng m&agrave; người vay n&ecirc;n biết. Khi bạn đ&atilde; vay ng&acirc;n h&agrave;ng th&igrave; th&ocirc;ng thường vay tr&ecirc;n 5 năm đều c&oacute; l&atilde;i suất như nhau. Ch&iacute;nh v&igrave; vậy, bạn n&ecirc;n chọn thời gian vay d&agrave;i nhất c&oacute; thể để giảm số vốn gốc h&agrave;ng th&aacute;ng xuống thấp nhất.</p>\r\n\r\n<h2>Lưu &yacute; 7:&nbsp;Chủ động đối ph&oacute; với bẫy l&atilde;i suất thả nổi</h2>\r\n\r\n<p>Để tr&aacute;nh gặp phải bẫy l&atilde;i suất thả nổi, người vay phải ước t&iacute;nh trong giả định rằng l&atilde;i suất c&oacute; thể tăng đến 30% cũng như&nbsp;dự đo&aacute;n trước một số chi ph&iacute; đột biến bất ngờ c&oacute; thể xảy ra. Như vậy, sau khi trừ đi c&aacute;c khoản chi ti&ecirc;u h&agrave;ng th&aacute;ng trong gia đ&igrave;nh th&igrave; số tiền c&ograve;n lại phải đảm bảo 150% số tiền phải trả ng&acirc;n h&agrave;ng. V&iacute; dụ bạn trả ng&acirc;n h&agrave;ng 10&nbsp;triệu đồng/ th&aacute;ng th&igrave; bạn phải c&oacute; số tiền dư h&agrave;ng th&aacute;ng l&agrave; 15 triệu đồng để đề ph&ograve;ng t&igrave;nh huống l&atilde;i suất c&oacute; thể bất ngờ tăng l&ecirc;n.</p>\r\n\r\n<h2>Lưu &yacute; 8: Coi chừng bị phạt khi trả nợ trước hạn vay</h2>\r\n\r\n<p>Th&ocirc;ng thường khi vay mua nh&agrave;, c&oacute; đến 80% kh&aacute;ch h&agrave;ng thường thanh to&aacute;n dứt nợ trong khoảng 5 năm đầu, kết quả l&agrave; họ thường bị ng&acirc;n h&agrave;ng phạt ph&iacute; khi thanh to&aacute;n trước hạn, thường l&agrave; bị phạt từ 1-3% tr&ecirc;n số tiền trả nợ trước hạn. Theo th&ocirc;ng tin Rever t&igrave;m hiểu, một khi ng&acirc;n h&agrave;ng mời ch&agrave;o mức l&atilde;i suất thấp th&igrave; họ&nbsp;sẽ k&egrave;m theo mức phạt cao để b&ugrave; lỗ khoản l&atilde;i suất ưu đ&atilde;i ban đầu. Do đ&oacute;, nếu chọn được&nbsp;<strong>dự &aacute;n</strong>&nbsp;hay nh&agrave; phố n&agrave;o m&agrave; ph&iacute;a ng&acirc;n h&agrave;ng bảo l&atilde;nh v&agrave; cam kết kh&ocirc;ng phạt trả nợ trước hạn th&igrave; bạn sẽ&nbsp;tiết kiệm được một khoản chi ph&iacute; đ&aacute;ng kể.</p>\r\n\r\n<h2>Lưu &yacute; 9: d&agrave;nh cho những người mua căn hộ chung cư trả g&oacute;p: H&atilde;y khảo s&aacute;t gi&aacute; thật kỹ lưỡng</h2>\r\n\r\n<p>Hiện nay tr&ecirc;n thị trường c&oacute; 2 dạng đối với căn hộ chung cư, đ&oacute; l&agrave; dự &aacute;n đang x&acirc;y hoặc dự &aacute;n đ&atilde; c&oacute; cư d&acirc;n v&agrave;o sinh sống. Theo đ&oacute;, với mỗi dạng dự &aacute;n ch&uacute;ng ta sẽ c&oacute; những c&aacute;ch khảo s&aacute;t gi&aacute; kh&aacute;c nhau. Cụ thể, nếu bạn đang t&igrave;m hiểu một căn hộ chung cư đ&atilde; c&oacute; người ở, để khảo s&aacute;t gi&aacute; căn hộ n&agrave;y, bạn c&oacute; thể&nbsp;t&igrave;m kiếm th&ocirc;ng tin tr&ecirc;n c&aacute;c diễn đ&agrave;n hoặc c&aacute;c website tin cậy. Hoặc nếu vẫn cảm thấy chưa an t&acirc;m, bạn&nbsp;c&oacute; thể đến trực tiếp khu chung cư v&agrave; hỏi những người d&acirc;n sống xung quanh hay người quen trong khu đ&oacute; (nếu c&oacute;). Điều n&agrave;y sẽ gi&uacute;p bạn c&oacute; th&ecirc;m nhiều th&ocirc;ng tin cần thiết.</p>\r\n\r\n<p>Với trường hợp muốn mua nh&agrave; trả g&oacute;p tại một dự &aacute;n vẫn đang x&acirc;y th&igrave; bạn cũng phải cần bỏ ch&uacute;t thời gian&nbsp;<strong>t&igrave;m hiểu th&ocirc;ng tin tr&ecirc;n c&aacute;c trang web về bất động sản uy t&iacute;n</strong>. Những th&ocirc;ng tin n&ecirc;n t&igrave;m kiếm bao gồm: diện t&iacute;ch dự &aacute;n, chủ đầu tư, ng&acirc;n h&agrave;ng bảo l&atilde;nh dự &aacute;n, c&aacute;c loại căn hộ hay ưu đ&atilde;i cho kh&aacute;ch h&agrave;ng...</p>\r\n\r\n<p>Để việc mua b&aacute;n nh&agrave; của bạn được diễn ra thuận lợi hơn, Rever cung cấp đến bạn&nbsp;<strong>Bảng t&iacute;nh l&atilde;i suất ng&acirc;n h&agrave;ng mua nh&agrave; h&agrave;ng th&aacute;ng.&nbsp;</strong>T&agrave;i liệu được ch&uacute;ng t&ocirc;i bi&ecirc;n soạn v&agrave; cung cấp Miễn ph&iacute;.</p>\r\n', '20141103-ngan-hang-tmcp-quan-doi-mb-tri-an-khach-hang-nhan-ky-niem-20-nam-thanh-lap-1.jpg', '354', 3, 'Minh Công', '2017-05-22', '2018-07-24', 1, NULL, NULL, NULL, NULL, NULL, 'Vay tiền mua nhà đơn giản không?', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'vay-tien-mua-nha-don-gian-khong', 'Thi công rèm', NULL, ''),
(60, 'Vay đáo hạn ngân hàng đơn giản', 'Trong các hình thức vay vốn ngân hàng thì hình thức vay thế chấp được khách hàng lựa chọn vay nhiều hơn so với hình thức vay tín chấp. Vì sao vậy ? So với hình thức vay thế chấp tuy người vay phải thế chấp tài sản của mình nhưng đổi lại họ sẽ được vay với lãi suất ưu đãi hơn, thời gian hạn mức cao. Còn đối với hình thức vay tín chấp, tuy người đi vay không phải thế chấp tài sản nhưng đổi lại họ được vay với mức vay nhỏ lãi suất không cao.', '<p>Trong c&aacute;c h&igrave;nh thức&nbsp;vay vốn ng&acirc;n h&agrave;ng&nbsp;th&igrave; h&igrave;nh thức&nbsp;<strong><em>vay thế chấp&nbsp;</em></strong>được kh&aacute;ch h&agrave;ng lựa chọn vay nhiều hơn so với h&igrave;nh thức vay t&iacute;n chấp. V&igrave; sao vậy ? So với h&igrave;nh thức vay thế chấp tuy người vay phải thế chấp t&agrave;i sản của m&igrave;nh nhưng đổi lại họ sẽ được vay với l&atilde;i suất ưu đ&atilde;i hơn, thời gian hạn mức cao. C&ograve;n đối với h&igrave;nh thức&nbsp;<strong><em>vay t&iacute;n chấp</em></strong>, tuy người đi vay kh&ocirc;ng phải thế chấp t&agrave;i sản nhưng đổi lại họ được vay với mức vay nhỏ l&atilde;i suất kh&ocirc;ng cao.</p>\r\n\r\n<p>Chỉ cần c&oacute; t&agrave;i sản thế chấp l&agrave; kh&aacute;ch h&agrave;ng c&oacute; thể vay vốn thế chấp d&agrave;i hạn tương ứng với giấy tờ đảm bảo t&agrave;i sản, hạn mức tối đa cho vay l&agrave; 75% gi&aacute; trị t&agrave;i sản.&nbsp;</p>\r\n\r\n<p>Điều kiện để kh&aacute;ch h&agrave;ng l&agrave;m thủ tục vay thế chấp sổ đỏ, nh&agrave; đất ng&acirc;n h&agrave;ng Agribank:</p>\r\n\r\n<p>Để được hỗ trợ vay tại Agribank kh&aacute;ch h&agrave;ng l&agrave; c&ocirc;ng d&acirc;n Việt Nam đang trong độ tuổi lao động, c&oacute; thu nhập ổn định tr&ecirc;n 3 triệu đồng mỗi th&aacute;ng, tại thời điểm vay kh&ocirc;ng c&oacute; nợ xấu tại ng&acirc;n h&agrave;ng v&agrave; đang cư tr&uacute; tại phạm vi của ng&acirc;n h&agrave;ng Agribank.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'dieu-kien-vay-mua-nha-1.jpg', '354', 4, 'Minh Công', '2017-05-22', '2018-07-24', 1, NULL, NULL, NULL, NULL, NULL, 'Vay đáo hạn ngân hàng đơn giản', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'vay-dao-han-ngan-hang-don-gian', 'Thi công rèm', NULL, ''),
(61, 'Thủ tục đáo hạn ngân hàng cần giấy tờ gì', 'Trong các hình thức vay vốn ngân hàng thì hình thức vay thế chấp được khách hàng lựa chọn vay nhiều hơn so với hình thức vay tín chấp. Vì sao vậy ? So với hình thức vay thế chấp tuy người vay phải thế chấp tài sản của mình nhưng đổi lại họ sẽ được vay với lãi suất ưu đãi hơn, thời gian hạn mức cao. Còn đối với hình thức vay tín chấp, tuy người đi vay không phải thế chấp tài sản nhưng đổi lại họ được vay với mức vay nhỏ lãi suất không cao.', '<p>Trong c&aacute;c h&igrave;nh thức&nbsp;vay vốn ng&acirc;n h&agrave;ng&nbsp;th&igrave; h&igrave;nh thức&nbsp;<strong><em>vay thế chấp&nbsp;</em></strong>được kh&aacute;ch h&agrave;ng lựa chọn vay nhiều hơn so với h&igrave;nh thức vay t&iacute;n chấp. V&igrave; sao vậy ? So với h&igrave;nh thức vay thế chấp tuy người vay phải thế chấp t&agrave;i sản của m&igrave;nh nhưng đổi lại họ sẽ được vay với l&atilde;i suất ưu đ&atilde;i hơn, thời gian hạn mức cao. C&ograve;n đối với h&igrave;nh thức&nbsp;<strong><em>vay t&iacute;n chấp</em></strong>, tuy người đi vay kh&ocirc;ng phải thế chấp t&agrave;i sản nhưng đổi lại họ được vay với mức vay nhỏ l&atilde;i suất kh&ocirc;ng cao.</p>\r\n\r\n<p>Chỉ cần c&oacute; t&agrave;i sản thế chấp l&agrave; kh&aacute;ch h&agrave;ng c&oacute; thể vay vốn thế chấp d&agrave;i hạn tương ứng với giấy tờ đảm bảo t&agrave;i sản, hạn mức tối đa cho vay l&agrave; 75% gi&aacute; trị t&agrave;i sản.&nbsp;</p>\r\n\r\n<p>Điều kiện để kh&aacute;ch h&agrave;ng l&agrave;m thủ tục vay thế chấp sổ đỏ, nh&agrave; đất ng&acirc;n h&agrave;ng Agribank:</p>\r\n\r\n<p>Để được hỗ trợ vay tại Agribank kh&aacute;ch h&agrave;ng l&agrave; c&ocirc;ng d&acirc;n Việt Nam đang trong độ tuổi lao động, c&oacute; thu nhập ổn định tr&ecirc;n 3 triệu đồng mỗi th&aacute;ng, tại thời điểm vay kh&ocirc;ng c&oacute; nợ xấu tại ng&acirc;n h&agrave;ng v&agrave; đang cư tr&uacute; tại phạm vi của ng&acirc;n h&agrave;ng Agribank.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'vay-the-chap-so-do.jpg', '354', 4, 'Minh Công', '2017-05-22', '2018-07-24', 1, NULL, NULL, NULL, NULL, NULL, 'Thủ tục đáo hạn ngân hàng cần giấy tờ gì', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'thu-tuc-dao-han-ngan-hang-can-giay-to-gi', 'Thi công rèm', NULL, ''),
(62, 'Cách vay thế chấp sổ đỏ', 'Trong các hình thức vay vốn ngân hàng thì hình thức vay thế chấp được khách hàng lựa chọn vay nhiều hơn so với hình thức vay tín chấp. Vì sao vậy ? So với hình thức vay thế chấp tuy người vay phải thế chấp tài sản của mình nhưng đổi lại họ sẽ được vay với lãi suất ưu đãi hơn, thời gian hạn mức cao. Còn đối với hình thức vay tín chấp, tuy người đi vay không phải thế chấp tài sản nhưng đổi lại họ được vay với mức vay nhỏ lãi suất không cao.', '<p>Trong c&aacute;c h&igrave;nh thức&nbsp;vay vốn ng&acirc;n h&agrave;ng&nbsp;th&igrave; h&igrave;nh thức&nbsp;<strong><em>vay thế chấp&nbsp;</em></strong>được kh&aacute;ch h&agrave;ng lựa chọn vay nhiều hơn so với h&igrave;nh thức vay t&iacute;n chấp. V&igrave; sao vậy ? So với h&igrave;nh thức vay thế chấp tuy người vay phải thế chấp t&agrave;i sản của m&igrave;nh nhưng đổi lại họ sẽ được vay với l&atilde;i suất ưu đ&atilde;i hơn, thời gian hạn mức cao. C&ograve;n đối với h&igrave;nh thức&nbsp;<strong><em>vay t&iacute;n chấp</em></strong>, tuy người đi vay kh&ocirc;ng phải thế chấp t&agrave;i sản nhưng đổi lại họ được vay với mức vay nhỏ l&atilde;i suất kh&ocirc;ng cao.</p>\r\n\r\n<p>Chỉ cần c&oacute; t&agrave;i sản thế chấp l&agrave; kh&aacute;ch h&agrave;ng c&oacute; thể vay vốn thế chấp d&agrave;i hạn tương ứng với giấy tờ đảm bảo t&agrave;i sản, hạn mức tối đa cho vay l&agrave; 75% gi&aacute; trị t&agrave;i sản.&nbsp;</p>\r\n\r\n<p>Điều kiện để kh&aacute;ch h&agrave;ng l&agrave;m thủ tục vay thế chấp sổ đỏ, nh&agrave; đất ng&acirc;n h&agrave;ng Agribank:</p>\r\n\r\n<p>Để được hỗ trợ vay tại Agribank kh&aacute;ch h&agrave;ng l&agrave; c&ocirc;ng d&acirc;n Việt Nam đang trong độ tuổi lao động, c&oacute; thu nhập ổn định tr&ecirc;n 3 triệu đồng mỗi th&aacute;ng, tại thời điểm vay kh&ocirc;ng c&oacute; nợ xấu tại ng&acirc;n h&agrave;ng v&agrave; đang cư tr&uacute; tại phạm vi của ng&acirc;n h&agrave;ng Agribank.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '1477393593_hosovaythechapsodo.png', '0', 6, '', '2018-05-03', '2018-07-24', 1, NULL, NULL, NULL, NULL, NULL, 'Cách vay thế chấp sổ đỏ', '', 'cach-vay-the-chap-so-do', '', 1, ''),
(63, 'Vay tiền mua nhà như thế nào', 'Không phải ai cũng có đủ điều kiện kinh tế để đi mua nhà, nhiều người phải tích cóp hàng năm trời, kết hợp với vay vốn ngân hàng mới có đủ tiền sở hữu ngôi nhà trong mơ. Bài viết dưới đây Rever sẽ mách bạn 9 điều người mua nhà lần đầu nên lưu ý trước khi tiến hành vay tiền ngân hàng mua nhà.', '<p>Kh&ocirc;ng phải ai cũng c&oacute; đủ điều kiện kinh tế để đi mua nh&agrave;, nhiều người phải t&iacute;ch c&oacute;p h&agrave;ng năm trời, kết hợp với&nbsp;vay vốn ng&acirc;n h&agrave;ng mới c&oacute; đủ tiền sở hữu ng&ocirc;i nh&agrave; trong mơ. B&agrave;i viết dưới đ&acirc;y Rever sẽ m&aacute;ch bạn 9&nbsp;điều người mua nh&agrave; lần đầu n&ecirc;n lưu &yacute; trước khi tiến h&agrave;nh vay tiền ng&acirc;n h&agrave;ng&nbsp;mua nh&agrave;.</p>\r\n\r\n<h2>Lưu &yacute; 1: Chỉ n&ecirc;n vay tối đa 50% gi&aacute; trị ng&ocirc;i nh&agrave;</h2>\r\n\r\n<p>Trước khi c&oacute;&nbsp;quyết định mua nh&agrave;, h&atilde;y chắc rằng bạn đ&atilde; c&oacute; một khoản tiền t&iacute;ch lũy tối thiểu 30% gi&aacute; trị ng&ocirc;i&nbsp;nh&agrave; muốn mua, l&yacute; tưởng hơn th&igrave; khoản tiền t&iacute;ch lũy n&agrave;y n&ecirc;n bằng mức 50% gi&aacute; trị ng&ocirc;i nh&agrave;. Theo chuy&ecirc;n vi&ecirc;n tư vấn Rever, tỷ lệ vay 50% gi&aacute; trị t&agrave;i sản được xem l&agrave; mức vay l&yacute; tưởng&nbsp;v&agrave; &iacute;t &aacute;p lực nhất, gi&uacute;p người vay vốn vừa dễ d&agrave;ng thanh to&aacute;n tiền vay cho ng&acirc;n h&agrave;ng vừa c&oacute; thể trang trải c&aacute;c chi ti&ecirc;u kh&aacute;c trong cuộc sống. Trong trường hợp mức vay lớn hơn 50% gi&aacute; trị ng&ocirc;i&nbsp;nh&agrave;, c&oacute; lẽ người vay sẽ&nbsp;phải đối mặt với những th&aacute;ng ng&agrave;y đầy kh&oacute; khăn khi &aacute;p lực trả nợ l&uacute;c n&agrave;o cũng hiện hữu b&ecirc;n m&igrave;nh.</p>\r\n\r\n<h2>Lưu &yacute; 2: Ch&uacute; &yacute; l&atilde;i suất ng&acirc;n h&agrave;ng</h2>\r\n\r\n<p>Khi vay vốn ng&acirc;n h&agrave;ng&nbsp;mua nh&agrave;, người vay n&ecirc;n thuộc nằm l&ograve;ng quy tắc v&agrave;ng n&agrave;y: &quot;Vốn cố định nhưng l&atilde;i vay của ng&acirc;n h&agrave;ng thường bị thả nổi&quot;. Vấn đề n&agrave;y l&agrave; như thế n&agrave;o?</p>\r\n\r\n<p>Hiện nay tr&ecirc;n thị trường c&oacute; kh&aacute; nhiều ng&acirc;n h&agrave;ng mời ch&agrave;o người vay với l&atilde;i suất ưu đ&atilde;i rất hấp dẫn chỉ từ 7,5-8%/năm, nhưng bạn n&ecirc;n nhớ l&atilde;i suất ưu đ&atilde;i n&agrave;y thường chỉ &aacute;p dụng trong 6-12 th&aacute;ng đầu ti&ecirc;n. Kể từ th&aacute;ng 13 trở đi, mức l&atilde;i suất sẽ được điều chỉnh tăng th&ecirc;m khoảng 3,5-4% t&ugrave;y thuộc v&agrave;o từng ng&acirc;n h&agrave;ng v&agrave; từng đối tượng vay.&nbsp;Ch&iacute;nh v&igrave; vậy, Rever nhắc bạn trước khi vay&nbsp;<a href=\"http://rever.vn/mua-nha-voi-rever\">mua nh&agrave; cần phải xem kỹ</a>&nbsp;l&atilde;i suất thay đổi như thế n&agrave;o cho c&aacute;c năm sau theo hợp đồng t&iacute;n dụng. Nếu c&oacute; thể, h&atilde;y y&ecirc;u cầu nh&acirc;n vi&ecirc;n ng&acirc;n h&agrave;ng tư vấn r&otilde; về chi ph&iacute; l&atilde;i vay qua c&aacute;c năm.</p>\r\n\r\n<p>Một yếu tố kh&aacute;c cũng cần hiểu r&otilde; trước khi k&yacute; v&agrave;o hợp đồng vay vốn đ&oacute; l&agrave; tiền vay ng&acirc;n h&agrave;ng sẽ t&iacute;nh theo dư nợ giảm dần hay dư nợ ban đầu.</p>\r\n\r\n<h2>Lưu &yacute; 3: Duy tr&igrave; mức thu nhập h&agrave;ng th&aacute;ng</h2>\r\n\r\n<p>Duy tr&igrave; thu nhập ổn định h&agrave;ng th&aacute;ng l&agrave; một trong những điều cực kỳ quan trọng trước khi vay vốn ng&acirc;n h&agrave;ng mua nh&agrave;. Nhiều chuy&ecirc;n gia t&agrave;i ch&iacute;nh cho rằng c&oacute; được mức thu nhập ổn định th&igrave;&nbsp;mới tạo cơ sở t&agrave;i ch&iacute;nh vững v&agrave;ng để trả nợ ng&acirc;n h&agrave;ng (trong đ&oacute; bao gồm cả vốn v&agrave; l&atilde;i vay). B&ecirc;n cạnh đ&oacute;, người vay cũng n&ecirc;n b&agrave;n bạc với gia đ&igrave;nh t&igrave;m th&ecirc;m phương &aacute;n tăng thu nhập từ c&aacute;c nguồn phụ, qua đ&oacute; đảm bảo d&ugrave; l&atilde;i suất tăng l&ecirc;n cũng c&oacute; thể trả nổi nợ gốc v&agrave; l&atilde;i vay.</p>\r\n\r\n<h2>Lưu &yacute; 4:&nbsp;Tự đ&aacute;nh gi&aacute; khả năng thanh to&aacute;n</h2>\r\n\r\n<p>Trước khi vay tiền&nbsp;<a href=\"https://offer.rever.vn/topic/mua-nha-lan-dau\" rel=\" noopener\" target=\"_blank\">mua nh&agrave; hay chung cư</a>, điều quan trọng nhất đ&oacute; l&agrave; người vay cần đ&aacute;nh gi&aacute; được khả năng t&agrave;i ch&iacute;nh của bản th&acirc;n nhằm&nbsp;hạn chế tối đa việc mất khả năng trả nợ trong tương lai. H&atilde;y l&ecirc;n kế hoạch r&otilde; r&agrave;ng 3 khả năng sau đ&acirc;y:</p>\r\n\r\n<p>Khả năng t&agrave;i ch&iacute;nh (1): Đ&acirc;y được coi l&agrave; số tiền tiết kiệm m&agrave; người vay đang c&oacute;, thu nhập h&agrave;ng th&aacute;ng của người vay v&agrave; gia đ&igrave;nh sau khi đ&atilde; trừ&nbsp;đi to&agrave;n bộ những khoản chi ph&iacute; sinh hoạt trong th&aacute;ng.</p>\r\n\r\n<p>Khả năng t&agrave;i ch&iacute;nh hỗ trợ (2): Một phần vốn được hỗ trợ bởi người th&acirc;n để mua nh&agrave; với việc cho vay kh&ocirc;ng lấy l&atilde;i hoặc &aacute;p dụng mức l&atilde;i suất nhưng bằng hoặc thấp hơn so với l&atilde;i suất của ng&acirc;n h&agrave;ng.</p>\r\n\r\n<p>Khả năng trả nợ (3): Việc chắc chắn phải l&agrave;m sau khi mua nh&agrave;/chung cư&nbsp;trả g&oacute;p ch&iacute;nh l&agrave; trả nợ. Ở trường hợp n&agrave;y, người vay vốn cần phải biết ch&iacute;nh x&aacute;c mức chi trả mỗi th&aacute;ng, đồng thời phải nắm được sự biến động của l&atilde;i suất trong tầm kiểm so&aacute;t.&nbsp;<strong>Rever lưu &yacute; người vay đ&oacute; l&agrave; kh&ocirc;ng n&ecirc;n c&oacute; những khoản chi ph&iacute; ph&aacute;t sinh hoặc nếu c&oacute; th&igrave; cũng kh&ocirc;ng đ&aacute;ng kể</strong>. D&ugrave; vậy, để tr&aacute;nh mất khả năng chi trả, người vay mua nh&agrave; chỉ n&ecirc;n vay tối đa từ 20%-30% gi&aacute; trị căn nh&agrave;, tuyệt đối kh&ocirc;ng vay qu&aacute; 50% gi&aacute; trị căn nh&agrave; như ch&uacute;ng t&ocirc;i đ&atilde; đề cập ở Lưu &yacute; 1.</p>\r\n\r\n<p>Nếu thực hiện ph&eacute;p t&iacute;nh (1) + (2) v&agrave; cho ra kết quả (1) + (2)&ge; (3) th&igrave; việc vốn ng&acirc;n h&agrave;ng mua nh&agrave;&nbsp;được xem l&agrave; khả thi.</p>\r\n\r\n<h2>Lưu &yacute; 5: Chỉ mua ng&ocirc;i nh&agrave; ph&ugrave; hợp với nhu cầu v&agrave; điều kiện kinh tế</h2>\r\n\r\n<p>H&atilde;y chắc rằng bạn đang c&oacute; &yacute; định mua ng&ocirc;i nh&agrave; c&oacute; diện t&iacute;ch vừa phải, đủ cho c&aacute;c th&agrave;nh vi&ecirc;n trong gia đ&igrave;nh sử dụng. Trong trường hợp bạn mua trả g&oacute;p một ng&ocirc;i nh&agrave; c&oacute; diện t&iacute;ch qu&aacute; lớn so với số người trong nh&agrave; của bạn th&igrave; &aacute;p lực vay vốn sẽ nặng nề hơn, k&eacute;o theo đ&oacute; l&agrave; việc bạn sẽ phải trả những khoản nợ gốc v&agrave; l&atilde;i kh&ocirc;ng cần thiết.</p>\r\n\r\n<h2><strong>Lưu &yacute; 6: C&acirc;n nhắc thời hạn g&oacute;i vay</strong></h2>\r\n\r\n<p><strong><img alt=\"vay tien mua nha\" src=\"https://blog.rever.vn/hs-fs/hubfs/phatquahan.jpg?t=1532375959182&amp;width=640&amp;name=phatquahan.jpg\" title=\"vay tien mua nha\" width=\"640\" /></strong></p>\r\n\r\n<p><em>Thời hạn g&oacute;i vay l&agrave; yếu tố cực kỳ quan trọng kh&ocirc;ng n&ecirc;n bỏ qua</em></p>\r\n\r\n<p>B&ecirc;n cạnh l&atilde;i suất th&igrave; thời hạn của g&oacute;i vay cũng l&agrave; yếu tố rất quan trọng m&agrave; người vay n&ecirc;n biết. Khi bạn đ&atilde; vay ng&acirc;n h&agrave;ng th&igrave; th&ocirc;ng thường vay tr&ecirc;n 5 năm đều c&oacute; l&atilde;i suất như nhau. Ch&iacute;nh v&igrave; vậy, bạn n&ecirc;n chọn thời gian vay d&agrave;i nhất c&oacute; thể để giảm số vốn gốc h&agrave;ng th&aacute;ng xuống thấp nhất.</p>\r\n\r\n<h2>Lưu &yacute; 7:&nbsp;Chủ động đối ph&oacute; với bẫy l&atilde;i suất thả nổi</h2>\r\n\r\n<p>Để tr&aacute;nh gặp phải bẫy l&atilde;i suất thả nổi, người vay phải ước t&iacute;nh trong giả định rằng l&atilde;i suất c&oacute; thể tăng đến 30% cũng như&nbsp;dự đo&aacute;n trước một số chi ph&iacute; đột biến bất ngờ c&oacute; thể xảy ra. Như vậy, sau khi trừ đi c&aacute;c khoản chi ti&ecirc;u h&agrave;ng th&aacute;ng trong gia đ&igrave;nh th&igrave; số tiền c&ograve;n lại phải đảm bảo 150% số tiền phải trả ng&acirc;n h&agrave;ng. V&iacute; dụ bạn trả ng&acirc;n h&agrave;ng 10&nbsp;triệu đồng/ th&aacute;ng th&igrave; bạn phải c&oacute; số tiền dư h&agrave;ng th&aacute;ng l&agrave; 15 triệu đồng để đề ph&ograve;ng t&igrave;nh huống l&atilde;i suất c&oacute; thể bất ngờ tăng l&ecirc;n.</p>\r\n\r\n<h2>Lưu &yacute; 8: Coi chừng bị phạt khi trả nợ trước hạn vay</h2>\r\n\r\n<p>Th&ocirc;ng thường khi vay mua nh&agrave;, c&oacute; đến 80% kh&aacute;ch h&agrave;ng thường thanh to&aacute;n dứt nợ trong khoảng 5 năm đầu, kết quả l&agrave; họ thường bị ng&acirc;n h&agrave;ng phạt ph&iacute; khi thanh to&aacute;n trước hạn, thường l&agrave; bị phạt từ 1-3% tr&ecirc;n số tiền trả nợ trước hạn. Theo th&ocirc;ng tin Rever t&igrave;m hiểu, một khi ng&acirc;n h&agrave;ng mời ch&agrave;o mức l&atilde;i suất thấp th&igrave; họ&nbsp;sẽ k&egrave;m theo mức phạt cao để b&ugrave; lỗ khoản l&atilde;i suất ưu đ&atilde;i ban đầu. Do đ&oacute;, nếu chọn được&nbsp;<strong>dự &aacute;n</strong>&nbsp;hay nh&agrave; phố n&agrave;o m&agrave; ph&iacute;a ng&acirc;n h&agrave;ng bảo l&atilde;nh v&agrave; cam kết kh&ocirc;ng phạt trả nợ trước hạn th&igrave; bạn sẽ&nbsp;tiết kiệm được một khoản chi ph&iacute; đ&aacute;ng kể.</p>\r\n\r\n<h2>Lưu &yacute; 9: d&agrave;nh cho những người mua căn hộ chung cư trả g&oacute;p: H&atilde;y khảo s&aacute;t gi&aacute; thật kỹ lưỡng</h2>\r\n\r\n<p>Hiện nay tr&ecirc;n thị trường c&oacute; 2 dạng đối với căn hộ chung cư, đ&oacute; l&agrave; dự &aacute;n đang x&acirc;y hoặc dự &aacute;n đ&atilde; c&oacute; cư d&acirc;n v&agrave;o sinh sống. Theo đ&oacute;, với mỗi dạng dự &aacute;n ch&uacute;ng ta sẽ c&oacute; những c&aacute;ch khảo s&aacute;t gi&aacute; kh&aacute;c nhau. Cụ thể, nếu bạn đang t&igrave;m hiểu một căn hộ chung cư đ&atilde; c&oacute; người ở, để khảo s&aacute;t gi&aacute; căn hộ n&agrave;y, bạn c&oacute; thể&nbsp;t&igrave;m kiếm th&ocirc;ng tin tr&ecirc;n c&aacute;c diễn đ&agrave;n hoặc c&aacute;c website tin cậy. Hoặc nếu vẫn cảm thấy chưa an t&acirc;m, bạn&nbsp;c&oacute; thể đến trực tiếp khu chung cư v&agrave; hỏi những người d&acirc;n sống xung quanh hay người quen trong khu đ&oacute; (nếu c&oacute;). Điều n&agrave;y sẽ gi&uacute;p bạn c&oacute; th&ecirc;m nhiều th&ocirc;ng tin cần thiết.</p>\r\n\r\n<p>Với trường hợp muốn mua nh&agrave; trả g&oacute;p tại một dự &aacute;n vẫn đang x&acirc;y th&igrave; bạn cũng phải cần bỏ ch&uacute;t thời gian&nbsp;<strong>t&igrave;m hiểu th&ocirc;ng tin tr&ecirc;n c&aacute;c trang web về bất động sản uy t&iacute;n</strong>. Những th&ocirc;ng tin n&ecirc;n t&igrave;m kiếm bao gồm: diện t&iacute;ch dự &aacute;n, chủ đầu tư, ng&acirc;n h&agrave;ng bảo l&atilde;nh dự &aacute;n, c&aacute;c loại căn hộ hay ưu đ&atilde;i cho kh&aacute;ch h&agrave;ng...</p>\r\n\r\n<p>Để việc mua b&aacute;n nh&agrave; của bạn được diễn ra thuận lợi hơn, Rever cung cấp đến bạn&nbsp;<strong>Bảng t&iacute;nh l&atilde;i suất ng&acirc;n h&agrave;ng mua nh&agrave; h&agrave;ng th&aacute;ng.&nbsp;</strong>T&agrave;i liệu được ch&uacute;ng t&ocirc;i bi&ecirc;n soạn v&agrave; cung cấp Miễn ph&iacute;.</p>\r\n', 'can-vay-tien-mua-nha.jpg', '0', 3, '', '2018-05-03', '2018-07-24', 1, NULL, NULL, NULL, NULL, NULL, 'Vay tiền mua nhà như thế nào', '', 'vay-tien-mua-nha-nhu-the-nao', '', 1, ''),
(64, 'Vay thế chấp có đơn giản không?', 'Vay vốn ngân hàng hay các công ty tài chính hiện nay đang là một giải pháp phổ biến được nhiều khách hàng lựa chọn để đáp ứng các nhu cầu tiêu dùng, kế hoạch xây dụng cuộc sống tiện nghi hơn, đầy đủ hơn mà không cần phải chờ đợi quá lâu. ', '<p>Vay vốn ng&acirc;n h&agrave;ng hay c&aacute;c c&ocirc;ng ty t&agrave;i ch&iacute;nh hiện nay đang l&agrave; một giải ph&aacute;p phổ biến được nhiều kh&aacute;ch h&agrave;ng lựa chọn để đ&aacute;p ứng c&aacute;c nhu cầu ti&ecirc;u d&ugrave;ng, kế hoạch x&acirc;y dụng cuộc sống tiện nghi hơn, đầy đủ hơn m&agrave; kh&ocirc;ng cần phải chờ đợi qu&aacute; l&acirc;u. Việc vay vốn n&agrave;y dưới h&igrave;nh thức c&aacute;c g&oacute;i vay ti&ecirc;u d&ugrave;ng t&iacute;n chấp, vay mua h&agrave;ng trả g&oacute;p, vay ti&ecirc;u d&ugrave;ng c&aacute; nh&acirc;n kh&ocirc;ng cần t&agrave;i sản đảm bảo&hellip;c&aacute;c khoản vay n&agrave;y hấp dẫn về sự đơn giản về thủ tục giấy tờ, x&eacute;t duyệt nhanh ch&oacute;ng, số tiền vay đủ để đ&aacute;p ứng nhu cầu vay ti&ecirc;u d&ugrave;ng (như tại Mirae Asset c&oacute; thể vay tối đa 70 triệu đồng). Việc x&eacute;t duyệt cũng dễ d&agrave;ng hơn dựa theo lương, theo c&aacute;c hợp đồng t&iacute;n dụng tại c&aacute;c tổ chức t&iacute;n dụng kh&aacute;c, theo bảo hiểm nh&acirc;n thọ hay thậm ch&iacute; l&agrave; h&oacute;a đơn tiền điện.</p>\r\n\r\n<p>Nhu cầu vay ti&ecirc;u d&ugrave;ng, vay vốn ng&acirc;n h&agrave;ng rất đa dạng v&agrave; phong ph&uacute; như l&agrave; chăm s&oacute;c sức khỏe, sắm sửa c&aacute;c tiện nghi cho ng&ocirc;i nh&agrave;, mua sắm ti&ecirc;u d&ugrave;ng, du lịch, du học&hellip;Thực tế nhu cầu vay t&iacute;n chấp tr&ecirc;n thị trường kh&ocirc;ng nhỏ nhưng l&atilde;i suất vay t&iacute;n chấp kh&aacute; cao đang l&agrave; một trong những r&agrave;o cản khiến nhiều người ngần ngại với c&aacute;c khoản vay ti&ecirc;u d&ugrave;ng t&iacute;n chấp, vay ti&ecirc;u d&ugrave;ng c&aacute; nh&acirc;n.&nbsp;C&ocirc;ng ty T&agrave;i ch&iacute;nh Mirae Asset Việt Nam &nbsp;(MAFC) tự h&agrave;o trong suốt thời gian hoạt động đ&atilde; lu&ocirc;n nhận được sự t&iacute;n nhiệm, tin y&ecirc;u của kh&aacute;ch h&agrave;ng với c&aacute;c sản phẩm vay ti&ecirc;u d&ugrave;ng ng&agrave;y một ho&agrave;n thiện, đ&acirc;y ch&iacute;nh l&agrave; cơ hội để kh&aacute;ch h&agrave;ng tiếp cận th&ecirc;m một nguồn vốn hiệu quả, hợp ph&aacute;p v&agrave; an to&agrave;n.</p>\r\n', 'dich-vu-cho-vay-tin-chap.jpg', '0', 5, '', '2018-05-03', '2018-07-23', 1, NULL, NULL, NULL, NULL, NULL, 'Vay thế chấp có đơn giản không?', '', 'vay-the-chap-co-don-gian-khong', '', 1, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicecat`
--

CREATE TABLE `servicecat` (
  `servicecat_id` int(11) NOT NULL,
  `servicecat_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_des` text COLLATE utf8_unicode_ci,
  `servicecat_content` text COLLATE utf8_unicode_ci,
  `servicecat_parent` int(11) DEFAULT NULL,
  `servicecat_sort_order` int(11) DEFAULT NULL,
  `servicecat_created_date` date DEFAULT NULL,
  `servicecat_update_date` date DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `servicecat_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_sub_infor1` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor2` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor3` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor4` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `servicecat`
--

INSERT INTO `servicecat` (`servicecat_id`, `servicecat_name`, `servicecat_des`, `servicecat_content`, `servicecat_parent`, `servicecat_sort_order`, `servicecat_created_date`, `servicecat_update_date`, `state`, `servicecat_img`, `servicecat_sub_infor1`, `servicecat_sub_infor2`, `servicecat_sub_infor3`, `servicecat_sub_infor4`, `servicecat_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(3, ' Vay tiền mua nhà', '', '', 0, 0, '2018-07-23', NULL, 1, 'vietcombank-ho-tro-vay-mua-nha-o-xa-hoi.jpg', NULL, NULL, NULL, NULL, NULL, ' Vay tiền mua nhà', '', 'vay-tien-mua-nha', '', 1),
(4, 'Đáo hạn ngân hàng', '<p>M&ocirc; tả Danh mục dịch vụ 2</p>\r\n', '', 0, 0, '2018-07-23', NULL, 1, 'tcasy-6919.png', NULL, NULL, NULL, NULL, NULL, 'Đáo hạn ngân hàng', '', 'dao-han-ngan-hang', '', 1),
(5, 'Dịch vụ vay thế chấp', '', '', 0, 0, '2018-07-23', NULL, 1, 'dich-vu-cho-vay-tin-chap.jpg', NULL, NULL, NULL, NULL, NULL, 'Dịch vụ vay thế chấp', '', 'dich-vu-vay-the-chap', '', 1),
(6, ' Vay thế chấp sổ đỏ', '', '', 0, 0, '2018-07-23', NULL, 1, 'vay-the-chap-so-do.jpg', NULL, NULL, NULL, NULL, NULL, ' Vay thế chấp sổ đỏ', '', 'vay-the-chap-so-do', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicecat_languages`
--

CREATE TABLE `servicecat_languages` (
  `id` int(11) NOT NULL,
  `lang_servicecat_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_des` text COLLATE utf8_unicode_ci,
  `lang_servicecat_content` text COLLATE utf8_unicode_ci,
  `state` int(11) DEFAULT '1',
  `lang_servicecat_sub_infor1` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor2` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor3` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor4` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `servicecat_languages`
--

INSERT INTO `servicecat_languages` (`id`, `lang_servicecat_name`, `lang_servicecat_des`, `lang_servicecat_content`, `state`, `lang_servicecat_sub_infor1`, `lang_servicecat_sub_infor2`, `lang_servicecat_sub_infor3`, `lang_servicecat_sub_infor4`, `lang_servicecat_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `languages_code`, `servicecat_id`) VALUES
(5, ' Vay tiền mua nhà', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, ' Vay tiền mua nhà', '', 'vay-tien-mua-nha', '', NULL, 'vn', 3),
(6, 'Dịch vụ', '', '', 1, NULL, NULL, NULL, NULL, NULL, 'Dịch vụ', '', 'dich-vu', '', NULL, 'en', 3),
(7, 'Đáo hạn ngân hàng', '<p>M&ocirc; tả Danh mục dịch vụ 2</p>\r\n', NULL, 1, '', '', '', '', '', 'Đáo hạn ngân hàng', '', 'dao-han-ngan-hang', '', NULL, 'vn', 4),
(8, 'category service 2', '<p>M&ocirc; tả Danh mục dịch vụ 2</p>\r\n', '1', 1, '', '', '', '', '', 'Danh mục dịch vụ 2', '', 'category-service-2', '', NULL, 'en', 4),
(9, 'Dịch vụ vay thế chấp', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Dịch vụ vay thế chấp', '', 'dich-vu-vay-the-chap', '', NULL, 'vn', 5),
(10, 'english version Massage Trị Liệu', 'english version ', 'english version ', 1, NULL, NULL, NULL, NULL, NULL, 'Massage Trị Liệu', '', 'en-massage-tri-lieu', '', NULL, 'en', 5),
(11, ' Vay thế chấp sổ đỏ', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, ' Vay thế chấp sổ đỏ', '', 'vay-the-chap-so-do', '', NULL, 'vn', 6),
(12, 'english version  Vay thế chấp sổ đỏ', 'english version ', 'english version ', 1, NULL, NULL, NULL, NULL, NULL, ' Vay thế chấp sổ đỏ', '', 'en-vay-the-chap-so-do', '', NULL, 'en', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicetag`
--

CREATE TABLE `servicetag` (
  `servicetag_id` int(11) NOT NULL,
  `servicetag_name` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_sort_order` int(11) NOT NULL,
  `servicetag_created_date` datetime NOT NULL,
  `servicetag_update_date` datetime NOT NULL,
  `state` int(11) NOT NULL,
  `servicetag_img` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicttag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_sub_info5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_seo` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `friendly_url` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `servicetag`
--

INSERT INTO `servicetag` (`servicetag_id`, `servicetag_name`, `servicetag_des`, `servicetag_content`, `servicetag_sort_order`, `servicetag_created_date`, `servicetag_update_date`, `state`, `servicetag_img`, `servicetag_sub_info1`, `servicetag_sub_info2`, `servicttag_sub_info3`, `servicetag_sub_info4`, `servicetag_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(4, 'hot', '', '', 0, '2017-12-13 15:12:00', '2017-12-13 15:12:00', 1, '', '', '', '', '', '', 'hot', '', 'hot', '', 1),
(5, 'sale', '', '', 0, '2017-12-13 15:12:12', '2017-12-13 15:12:12', 1, '', '', '', '', '', '', 'sale', '', 'sale', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicetag_languages`
--

CREATE TABLE `servicetag_languages` (
  `id` int(11) NOT NULL,
  `servicetag_id` int(11) NOT NULL,
  `languages_code` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_name` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_sub_info5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_seo` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `friendly_url` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `servicetag_languages`
--

INSERT INTO `servicetag_languages` (`id`, `servicetag_id`, `languages_code`, `lang_servicetag_name`, `lang_servicetag_des`, `lang_servicetag_content`, `lang_servicetag_sub_info1`, `lang_servicetag_sub_info2`, `lang_servicetag_sub_info3`, `lang_servicetag_sub_info4`, `lang_servicetag_sub_info5`, `title_seo`, `des_seo`, `keyword`, `friendly_url`, `state`) VALUES
(4, 4, 'vn', 'hot', '', '', '', '', '', '', '', 'hot', '', 'keyword', 'hot', 1),
(5, 4, 'en', 'hot', '', '', '', '', '', '', '', 'hot', '', 'keyword', 'hot', 1),
(6, 5, 'vn', 'sale', '<p>1</p>\r\n', '', '', '', '', '', '', 'sale', '', 'keyword', 'sale', 1),
(7, 5, 'en', 'sale', '<p>2</p>\r\n', '', '', '', '', '', '', 'sale', '', 'keyword', 'sale', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service_languages`
--

CREATE TABLE `service_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_des` text COLLATE utf8_unicode_ci,
  `lang_service_content` text COLLATE utf8_unicode_ci,
  `lang_service_author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `service_sub_infor1` text COLLATE utf8_unicode_ci,
  `service_sub_infor2` text COLLATE utf8_unicode_ci,
  `service_sub_infor3` text COLLATE utf8_unicode_ci,
  `service_sub_infor4` text COLLATE utf8_unicode_ci,
  `service_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `service_languages`
--

INSERT INTO `service_languages` (`id`, `languages_code`, `lang_service_name`, `lang_service_des`, `lang_service_content`, `lang_service_author`, `state`, `service_sub_infor1`, `service_sub_infor2`, `service_sub_infor3`, `service_sub_infor4`, `service_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `service_id`) VALUES
(69, 'vn', 'Vay thế chấp sổ đỏ lãi suất thấp', 'Trong các hình thức vay vốn ngân hàng thì hình thức vay thế chấp được khách hàng lựa chọn vay nhiều hơn so với hình thức vay tín chấp. Vì sao vậy ? So với hình thức vay thế chấp tuy người vay phải thế chấp tài sản của mình nhưng đổi lại họ sẽ được vay với lãi suất ưu đãi hơn, thời gian hạn mức cao. Còn đối với hình thức vay tín chấp, tuy người đi vay không phải thế chấp tài sản nhưng đổi lại họ được vay với mức vay nhỏ lãi suất không cao.', '<p>Trong c&aacute;c h&igrave;nh thức&nbsp;vay vốn ng&acirc;n h&agrave;ng&nbsp;th&igrave; h&igrave;nh thức&nbsp;<strong><em>vay thế chấp&nbsp;</em></strong>được kh&aacute;ch h&agrave;ng lựa chọn vay nhiều hơn so với h&igrave;nh thức vay t&iacute;n chấp. V&igrave; sao vậy ? So với h&igrave;nh thức vay thế chấp tuy người vay phải thế chấp t&agrave;i sản của m&igrave;nh nhưng đổi lại họ sẽ được vay với l&atilde;i suất ưu đ&atilde;i hơn, thời gian hạn mức cao. C&ograve;n đối với h&igrave;nh thức&nbsp;<strong><em>vay t&iacute;n chấp</em></strong>, tuy người đi vay kh&ocirc;ng phải thế chấp t&agrave;i sản nhưng đổi lại họ được vay với mức vay nhỏ l&atilde;i suất kh&ocirc;ng cao.</p>\r\n\r\n<p>Chỉ cần c&oacute; t&agrave;i sản thế chấp l&agrave; kh&aacute;ch h&agrave;ng c&oacute; thể vay vốn thế chấp d&agrave;i hạn tương ứng với giấy tờ đảm bảo t&agrave;i sản, hạn mức tối đa cho vay l&agrave; 75% gi&aacute; trị t&agrave;i sản.&nbsp;</p>\r\n\r\n<p>Điều kiện để kh&aacute;ch h&agrave;ng l&agrave;m thủ tục vay thế chấp sổ đỏ, nh&agrave; đất ng&acirc;n h&agrave;ng Agribank:</p>\r\n\r\n<p>Để được hỗ trợ vay tại Agribank kh&aacute;ch h&agrave;ng l&agrave; c&ocirc;ng d&acirc;n Việt Nam đang trong độ tuổi lao động, c&oacute; thu nhập ổn định tr&ecirc;n 3 triệu đồng mỗi th&aacute;ng, tại thời điểm vay kh&ocirc;ng c&oacute; nợ xấu tại ng&acirc;n h&agrave;ng v&agrave; đang cư tr&uacute; tại phạm vi của ng&acirc;n h&agrave;ng Agribank.</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Vay thế chấp sổ đỏ lãi suất thấp', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'vay-the-chap-so-do-lai-suat-thap', 'Thi công rèm', NULL, 57),
(70, 'en', 'Thi công rèm chung cư Roal City', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', '<h3>CHI TIẾT DỰ &Aacute;N</h3>\r\n\r\n<p>Địa chỉ:&nbsp;số 72A Nguyễn Tr&atilde;i, Thanh Xu&acirc;n, H&agrave; Nội</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Thi công rèm chung cư Roal City', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'thi-cong-rem-chung-cu-roal-city', 'Thi công rèm', NULL, 57),
(71, 'vn', 'Thủ tục vay tiền mua nhà', 'Trong các hình thức vay vốn ngân hàng thì hình thức vay thế chấp được khách hàng lựa chọn vay nhiều hơn so với hình thức vay tín chấp. Vì sao vậy ? So với hình thức vay thế chấp tuy người vay phải thế chấp tài sản của mình nhưng đổi lại họ sẽ được vay với lãi suất ưu đãi hơn, thời gian hạn mức cao. Còn đối với hình thức vay tín chấp, tuy người đi vay không phải thế chấp tài sản nhưng đổi lại họ được vay với mức vay nhỏ lãi suất không cao.', '<p>&nbsp;</p>\r\n\r\n<p>Trong c&aacute;c h&igrave;nh thức&nbsp;vay vốn ng&acirc;n h&agrave;ng&nbsp;th&igrave; h&igrave;nh thức&nbsp;<strong><em>vay thế chấp&nbsp;</em></strong>được kh&aacute;ch h&agrave;ng lựa chọn vay nhiều hơn so với h&igrave;nh thức vay t&iacute;n chấp. V&igrave; sao vậy ? So với h&igrave;nh thức vay thế chấp tuy người vay phải thế chấp t&agrave;i sản của m&igrave;nh nhưng đổi lại họ sẽ được vay với l&atilde;i suất ưu đ&atilde;i hơn, thời gian hạn mức cao. C&ograve;n đối với h&igrave;nh thức&nbsp;<strong><em>vay t&iacute;n chấp</em></strong>, tuy người đi vay kh&ocirc;ng phải thế chấp t&agrave;i sản nhưng đổi lại họ được vay với mức vay nhỏ l&atilde;i suất kh&ocirc;ng cao.</p>\r\n\r\n<p>Chỉ cần c&oacute; t&agrave;i sản thế chấp l&agrave; kh&aacute;ch h&agrave;ng c&oacute; thể vay vốn thế chấp d&agrave;i hạn tương ứng với giấy tờ đảm bảo t&agrave;i sản, hạn mức tối đa cho vay l&agrave; 75% gi&aacute; trị t&agrave;i sản.&nbsp;</p>\r\n\r\n<p>Điều kiện để kh&aacute;ch h&agrave;ng l&agrave;m thủ tục vay thế chấp sổ đỏ, nh&agrave; đất ng&acirc;n h&agrave;ng Agribank:</p>\r\n\r\n<p>Để được hỗ trợ vay tại Agribank kh&aacute;ch h&agrave;ng l&agrave; c&ocirc;ng d&acirc;n Việt Nam đang trong độ tuổi lao động, c&oacute; thu nhập ổn định tr&ecirc;n 3 triệu đồng mỗi th&aacute;ng, tại thời điểm vay kh&ocirc;ng c&oacute; nợ xấu tại ng&acirc;n h&agrave;ng v&agrave; đang cư tr&uacute; tại phạm vi của ng&acirc;n h&agrave;ng Agribank.</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Thủ tục vay tiền mua nhà', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'thu-tuc-vay-tien-mua-nha', 'Thi công rèm', NULL, 58),
(72, 'en', 'Thi công rèm chung cư Vimcom Bà Triệu', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', '<h3>CHI TIẾT DỰ &Aacute;N</h3>\r\n\r\n<p>Địa chỉ:&nbsp;số 72A Nguyễn Tr&atilde;i, Thanh Xu&acirc;n, H&agrave; Nội</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Thi công rèm chung cư Vimcom Bà Triệu', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'thi-cong-rem-chung-cu-vimcom-ba-trieu', 'Thi công rèm', NULL, 58),
(73, 'vn', 'Vay tiền mua nhà đơn giản không?', 'Không phải ai cũng có đủ điều kiện kinh tế để đi mua nhà, nhiều người phải tích cóp hàng năm trời, kết hợp với vay vốn ngân hàng mới có đủ tiền sở hữu ngôi nhà trong mơ. Bài viết dưới đây Rever sẽ mách bạn 9 điều người mua nhà lần đầu nên lưu ý trước khi tiến hành vay tiền ngân hàng mua nhà.', '<p>Kh&ocirc;ng phải ai cũng c&oacute; đủ điều kiện kinh tế để đi mua nh&agrave;, nhiều người phải t&iacute;ch c&oacute;p h&agrave;ng năm trời, kết hợp với&nbsp;vay vốn ng&acirc;n h&agrave;ng mới c&oacute; đủ tiền sở hữu ng&ocirc;i nh&agrave; trong mơ. B&agrave;i viết dưới đ&acirc;y Rever sẽ m&aacute;ch bạn 9&nbsp;điều người mua nh&agrave; lần đầu n&ecirc;n lưu &yacute; trước khi tiến h&agrave;nh vay tiền ng&acirc;n h&agrave;ng&nbsp;mua nh&agrave;.</p>\r\n\r\n<h2>Lưu &yacute; 1: Chỉ n&ecirc;n vay tối đa 50% gi&aacute; trị ng&ocirc;i nh&agrave;</h2>\r\n\r\n<p>Trước khi c&oacute;&nbsp;quyết định mua nh&agrave;, h&atilde;y chắc rằng bạn đ&atilde; c&oacute; một khoản tiền t&iacute;ch lũy tối thiểu 30% gi&aacute; trị ng&ocirc;i&nbsp;nh&agrave; muốn mua, l&yacute; tưởng hơn th&igrave; khoản tiền t&iacute;ch lũy n&agrave;y n&ecirc;n bằng mức 50% gi&aacute; trị ng&ocirc;i nh&agrave;. Theo chuy&ecirc;n vi&ecirc;n tư vấn Rever, tỷ lệ vay 50% gi&aacute; trị t&agrave;i sản được xem l&agrave; mức vay l&yacute; tưởng&nbsp;v&agrave; &iacute;t &aacute;p lực nhất, gi&uacute;p người vay vốn vừa dễ d&agrave;ng thanh to&aacute;n tiền vay cho ng&acirc;n h&agrave;ng vừa c&oacute; thể trang trải c&aacute;c chi ti&ecirc;u kh&aacute;c trong cuộc sống. Trong trường hợp mức vay lớn hơn 50% gi&aacute; trị ng&ocirc;i&nbsp;nh&agrave;, c&oacute; lẽ người vay sẽ&nbsp;phải đối mặt với những th&aacute;ng ng&agrave;y đầy kh&oacute; khăn khi &aacute;p lực trả nợ l&uacute;c n&agrave;o cũng hiện hữu b&ecirc;n m&igrave;nh.</p>\r\n\r\n<h2>Lưu &yacute; 2: Ch&uacute; &yacute; l&atilde;i suất ng&acirc;n h&agrave;ng</h2>\r\n\r\n<p>Khi vay vốn ng&acirc;n h&agrave;ng&nbsp;mua nh&agrave;, người vay n&ecirc;n thuộc nằm l&ograve;ng quy tắc v&agrave;ng n&agrave;y: &quot;Vốn cố định nhưng l&atilde;i vay của ng&acirc;n h&agrave;ng thường bị thả nổi&quot;. Vấn đề n&agrave;y l&agrave; như thế n&agrave;o?</p>\r\n\r\n<p>Hiện nay tr&ecirc;n thị trường c&oacute; kh&aacute; nhiều ng&acirc;n h&agrave;ng mời ch&agrave;o người vay với l&atilde;i suất ưu đ&atilde;i rất hấp dẫn chỉ từ 7,5-8%/năm, nhưng bạn n&ecirc;n nhớ l&atilde;i suất ưu đ&atilde;i n&agrave;y thường chỉ &aacute;p dụng trong 6-12 th&aacute;ng đầu ti&ecirc;n. Kể từ th&aacute;ng 13 trở đi, mức l&atilde;i suất sẽ được điều chỉnh tăng th&ecirc;m khoảng 3,5-4% t&ugrave;y thuộc v&agrave;o từng ng&acirc;n h&agrave;ng v&agrave; từng đối tượng vay.&nbsp;Ch&iacute;nh v&igrave; vậy, Rever nhắc bạn trước khi vay&nbsp;<a href=\"http://rever.vn/mua-nha-voi-rever\">mua nh&agrave; cần phải xem kỹ</a>&nbsp;l&atilde;i suất thay đổi như thế n&agrave;o cho c&aacute;c năm sau theo hợp đồng t&iacute;n dụng. Nếu c&oacute; thể, h&atilde;y y&ecirc;u cầu nh&acirc;n vi&ecirc;n ng&acirc;n h&agrave;ng tư vấn r&otilde; về chi ph&iacute; l&atilde;i vay qua c&aacute;c năm.</p>\r\n\r\n<p>Một yếu tố kh&aacute;c cũng cần hiểu r&otilde; trước khi k&yacute; v&agrave;o hợp đồng vay vốn đ&oacute; l&agrave; tiền vay ng&acirc;n h&agrave;ng sẽ t&iacute;nh theo dư nợ giảm dần hay dư nợ ban đầu.</p>\r\n\r\n<h2>Lưu &yacute; 3: Duy tr&igrave; mức thu nhập h&agrave;ng th&aacute;ng</h2>\r\n\r\n<p>Duy tr&igrave; thu nhập ổn định h&agrave;ng th&aacute;ng l&agrave; một trong những điều cực kỳ quan trọng trước khi vay vốn ng&acirc;n h&agrave;ng mua nh&agrave;. Nhiều chuy&ecirc;n gia t&agrave;i ch&iacute;nh cho rằng c&oacute; được mức thu nhập ổn định th&igrave;&nbsp;mới tạo cơ sở t&agrave;i ch&iacute;nh vững v&agrave;ng để trả nợ ng&acirc;n h&agrave;ng (trong đ&oacute; bao gồm cả vốn v&agrave; l&atilde;i vay). B&ecirc;n cạnh đ&oacute;, người vay cũng n&ecirc;n b&agrave;n bạc với gia đ&igrave;nh t&igrave;m th&ecirc;m phương &aacute;n tăng thu nhập từ c&aacute;c nguồn phụ, qua đ&oacute; đảm bảo d&ugrave; l&atilde;i suất tăng l&ecirc;n cũng c&oacute; thể trả nổi nợ gốc v&agrave; l&atilde;i vay.</p>\r\n\r\n<h2>Lưu &yacute; 4:&nbsp;Tự đ&aacute;nh gi&aacute; khả năng thanh to&aacute;n</h2>\r\n\r\n<p>Trước khi vay tiền&nbsp;<a href=\"https://offer.rever.vn/topic/mua-nha-lan-dau\" rel=\" noopener\" target=\"_blank\">mua nh&agrave; hay chung cư</a>, điều quan trọng nhất đ&oacute; l&agrave; người vay cần đ&aacute;nh gi&aacute; được khả năng t&agrave;i ch&iacute;nh của bản th&acirc;n nhằm&nbsp;hạn chế tối đa việc mất khả năng trả nợ trong tương lai. H&atilde;y l&ecirc;n kế hoạch r&otilde; r&agrave;ng 3 khả năng sau đ&acirc;y:</p>\r\n\r\n<p>Khả năng t&agrave;i ch&iacute;nh (1): Đ&acirc;y được coi l&agrave; số tiền tiết kiệm m&agrave; người vay đang c&oacute;, thu nhập h&agrave;ng th&aacute;ng của người vay v&agrave; gia đ&igrave;nh sau khi đ&atilde; trừ&nbsp;đi to&agrave;n bộ những khoản chi ph&iacute; sinh hoạt trong th&aacute;ng.</p>\r\n\r\n<p>Khả năng t&agrave;i ch&iacute;nh hỗ trợ (2): Một phần vốn được hỗ trợ bởi người th&acirc;n để mua nh&agrave; với việc cho vay kh&ocirc;ng lấy l&atilde;i hoặc &aacute;p dụng mức l&atilde;i suất nhưng bằng hoặc thấp hơn so với l&atilde;i suất của ng&acirc;n h&agrave;ng.</p>\r\n\r\n<p>Khả năng trả nợ (3): Việc chắc chắn phải l&agrave;m sau khi mua nh&agrave;/chung cư&nbsp;trả g&oacute;p ch&iacute;nh l&agrave; trả nợ. Ở trường hợp n&agrave;y, người vay vốn cần phải biết ch&iacute;nh x&aacute;c mức chi trả mỗi th&aacute;ng, đồng thời phải nắm được sự biến động của l&atilde;i suất trong tầm kiểm so&aacute;t.&nbsp;<strong>Rever lưu &yacute; người vay đ&oacute; l&agrave; kh&ocirc;ng n&ecirc;n c&oacute; những khoản chi ph&iacute; ph&aacute;t sinh hoặc nếu c&oacute; th&igrave; cũng kh&ocirc;ng đ&aacute;ng kể</strong>. D&ugrave; vậy, để tr&aacute;nh mất khả năng chi trả, người vay mua nh&agrave; chỉ n&ecirc;n vay tối đa từ 20%-30% gi&aacute; trị căn nh&agrave;, tuyệt đối kh&ocirc;ng vay qu&aacute; 50% gi&aacute; trị căn nh&agrave; như ch&uacute;ng t&ocirc;i đ&atilde; đề cập ở Lưu &yacute; 1.</p>\r\n\r\n<p>Nếu thực hiện ph&eacute;p t&iacute;nh (1) + (2) v&agrave; cho ra kết quả (1) + (2)&ge; (3) th&igrave; việc vốn ng&acirc;n h&agrave;ng mua nh&agrave;&nbsp;được xem l&agrave; khả thi.</p>\r\n\r\n<h2>Lưu &yacute; 5: Chỉ mua ng&ocirc;i nh&agrave; ph&ugrave; hợp với nhu cầu v&agrave; điều kiện kinh tế</h2>\r\n\r\n<p>H&atilde;y chắc rằng bạn đang c&oacute; &yacute; định mua ng&ocirc;i nh&agrave; c&oacute; diện t&iacute;ch vừa phải, đủ cho c&aacute;c th&agrave;nh vi&ecirc;n trong gia đ&igrave;nh sử dụng. Trong trường hợp bạn mua trả g&oacute;p một ng&ocirc;i nh&agrave; c&oacute; diện t&iacute;ch qu&aacute; lớn so với số người trong nh&agrave; của bạn th&igrave; &aacute;p lực vay vốn sẽ nặng nề hơn, k&eacute;o theo đ&oacute; l&agrave; việc bạn sẽ phải trả những khoản nợ gốc v&agrave; l&atilde;i kh&ocirc;ng cần thiết.</p>\r\n\r\n<h2><strong>Lưu &yacute; 6: C&acirc;n nhắc thời hạn g&oacute;i vay</strong></h2>\r\n\r\n<p><strong><img alt=\"vay tien mua nha\" src=\"https://blog.rever.vn/hs-fs/hubfs/phatquahan.jpg?t=1532375959182&amp;width=640&amp;name=phatquahan.jpg\" title=\"vay tien mua nha\" width=\"640\" /></strong></p>\r\n\r\n<p><em>Thời hạn g&oacute;i vay l&agrave; yếu tố cực kỳ quan trọng kh&ocirc;ng n&ecirc;n bỏ qua</em></p>\r\n\r\n<p>B&ecirc;n cạnh l&atilde;i suất th&igrave; thời hạn của g&oacute;i vay cũng l&agrave; yếu tố rất quan trọng m&agrave; người vay n&ecirc;n biết. Khi bạn đ&atilde; vay ng&acirc;n h&agrave;ng th&igrave; th&ocirc;ng thường vay tr&ecirc;n 5 năm đều c&oacute; l&atilde;i suất như nhau. Ch&iacute;nh v&igrave; vậy, bạn n&ecirc;n chọn thời gian vay d&agrave;i nhất c&oacute; thể để giảm số vốn gốc h&agrave;ng th&aacute;ng xuống thấp nhất.</p>\r\n\r\n<h2>Lưu &yacute; 7:&nbsp;Chủ động đối ph&oacute; với bẫy l&atilde;i suất thả nổi</h2>\r\n\r\n<p>Để tr&aacute;nh gặp phải bẫy l&atilde;i suất thả nổi, người vay phải ước t&iacute;nh trong giả định rằng l&atilde;i suất c&oacute; thể tăng đến 30% cũng như&nbsp;dự đo&aacute;n trước một số chi ph&iacute; đột biến bất ngờ c&oacute; thể xảy ra. Như vậy, sau khi trừ đi c&aacute;c khoản chi ti&ecirc;u h&agrave;ng th&aacute;ng trong gia đ&igrave;nh th&igrave; số tiền c&ograve;n lại phải đảm bảo 150% số tiền phải trả ng&acirc;n h&agrave;ng. V&iacute; dụ bạn trả ng&acirc;n h&agrave;ng 10&nbsp;triệu đồng/ th&aacute;ng th&igrave; bạn phải c&oacute; số tiền dư h&agrave;ng th&aacute;ng l&agrave; 15 triệu đồng để đề ph&ograve;ng t&igrave;nh huống l&atilde;i suất c&oacute; thể bất ngờ tăng l&ecirc;n.</p>\r\n\r\n<h2>Lưu &yacute; 8: Coi chừng bị phạt khi trả nợ trước hạn vay</h2>\r\n\r\n<p>Th&ocirc;ng thường khi vay mua nh&agrave;, c&oacute; đến 80% kh&aacute;ch h&agrave;ng thường thanh to&aacute;n dứt nợ trong khoảng 5 năm đầu, kết quả l&agrave; họ thường bị ng&acirc;n h&agrave;ng phạt ph&iacute; khi thanh to&aacute;n trước hạn, thường l&agrave; bị phạt từ 1-3% tr&ecirc;n số tiền trả nợ trước hạn. Theo th&ocirc;ng tin Rever t&igrave;m hiểu, một khi ng&acirc;n h&agrave;ng mời ch&agrave;o mức l&atilde;i suất thấp th&igrave; họ&nbsp;sẽ k&egrave;m theo mức phạt cao để b&ugrave; lỗ khoản l&atilde;i suất ưu đ&atilde;i ban đầu. Do đ&oacute;, nếu chọn được&nbsp;<strong>dự &aacute;n</strong>&nbsp;hay nh&agrave; phố n&agrave;o m&agrave; ph&iacute;a ng&acirc;n h&agrave;ng bảo l&atilde;nh v&agrave; cam kết kh&ocirc;ng phạt trả nợ trước hạn th&igrave; bạn sẽ&nbsp;tiết kiệm được một khoản chi ph&iacute; đ&aacute;ng kể.</p>\r\n\r\n<h2>Lưu &yacute; 9: d&agrave;nh cho những người mua căn hộ chung cư trả g&oacute;p: H&atilde;y khảo s&aacute;t gi&aacute; thật kỹ lưỡng</h2>\r\n\r\n<p>Hiện nay tr&ecirc;n thị trường c&oacute; 2 dạng đối với căn hộ chung cư, đ&oacute; l&agrave; dự &aacute;n đang x&acirc;y hoặc dự &aacute;n đ&atilde; c&oacute; cư d&acirc;n v&agrave;o sinh sống. Theo đ&oacute;, với mỗi dạng dự &aacute;n ch&uacute;ng ta sẽ c&oacute; những c&aacute;ch khảo s&aacute;t gi&aacute; kh&aacute;c nhau. Cụ thể, nếu bạn đang t&igrave;m hiểu một căn hộ chung cư đ&atilde; c&oacute; người ở, để khảo s&aacute;t gi&aacute; căn hộ n&agrave;y, bạn c&oacute; thể&nbsp;t&igrave;m kiếm th&ocirc;ng tin tr&ecirc;n c&aacute;c diễn đ&agrave;n hoặc c&aacute;c website tin cậy. Hoặc nếu vẫn cảm thấy chưa an t&acirc;m, bạn&nbsp;c&oacute; thể đến trực tiếp khu chung cư v&agrave; hỏi những người d&acirc;n sống xung quanh hay người quen trong khu đ&oacute; (nếu c&oacute;). Điều n&agrave;y sẽ gi&uacute;p bạn c&oacute; th&ecirc;m nhiều th&ocirc;ng tin cần thiết.</p>\r\n\r\n<p>Với trường hợp muốn mua nh&agrave; trả g&oacute;p tại một dự &aacute;n vẫn đang x&acirc;y th&igrave; bạn cũng phải cần bỏ ch&uacute;t thời gian&nbsp;<strong>t&igrave;m hiểu th&ocirc;ng tin tr&ecirc;n c&aacute;c trang web về bất động sản uy t&iacute;n</strong>. Những th&ocirc;ng tin n&ecirc;n t&igrave;m kiếm bao gồm: diện t&iacute;ch dự &aacute;n, chủ đầu tư, ng&acirc;n h&agrave;ng bảo l&atilde;nh dự &aacute;n, c&aacute;c loại căn hộ hay ưu đ&atilde;i cho kh&aacute;ch h&agrave;ng...</p>\r\n\r\n<p>Để việc mua b&aacute;n nh&agrave; của bạn được diễn ra thuận lợi hơn, Rever cung cấp đến bạn&nbsp;<strong>Bảng t&iacute;nh l&atilde;i suất ng&acirc;n h&agrave;ng mua nh&agrave; h&agrave;ng th&aacute;ng.&nbsp;</strong>T&agrave;i liệu được ch&uacute;ng t&ocirc;i bi&ecirc;n soạn v&agrave; cung cấp Miễn ph&iacute;.</p>\r\n', NULL, 1, '', '', '', '', '', 'Vay tiền mua nhà đơn giản không?', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'vay-tien-mua-nha-don-gian-khong', 'Thi công rèm', NULL, 59),
(74, 'en', 'Thi công rèm khu đô thị Ecopark', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', '<h3>CHI TIẾT DỰ ÁN</h3>\r\n\r\n<p>Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội</p>\r\n', NULL, 1, '', '', '', '', '', 'Thi công rèm khu đô thị Ecopark', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'thi-cong-rem-khu-do-thi-ecopark', 'Thi công rèm', NULL, 59),
(75, 'vn', 'Vay đáo hạn ngân hàng đơn giản', 'Trong các hình thức vay vốn ngân hàng thì hình thức vay thế chấp được khách hàng lựa chọn vay nhiều hơn so với hình thức vay tín chấp. Vì sao vậy ? So với hình thức vay thế chấp tuy người vay phải thế chấp tài sản của mình nhưng đổi lại họ sẽ được vay với lãi suất ưu đãi hơn, thời gian hạn mức cao. Còn đối với hình thức vay tín chấp, tuy người đi vay không phải thế chấp tài sản nhưng đổi lại họ được vay với mức vay nhỏ lãi suất không cao.', '<p>Trong c&aacute;c h&igrave;nh thức&nbsp;vay vốn ng&acirc;n h&agrave;ng&nbsp;th&igrave; h&igrave;nh thức&nbsp;<strong><em>vay thế chấp&nbsp;</em></strong>được kh&aacute;ch h&agrave;ng lựa chọn vay nhiều hơn so với h&igrave;nh thức vay t&iacute;n chấp. V&igrave; sao vậy ? So với h&igrave;nh thức vay thế chấp tuy người vay phải thế chấp t&agrave;i sản của m&igrave;nh nhưng đổi lại họ sẽ được vay với l&atilde;i suất ưu đ&atilde;i hơn, thời gian hạn mức cao. C&ograve;n đối với h&igrave;nh thức&nbsp;<strong><em>vay t&iacute;n chấp</em></strong>, tuy người đi vay kh&ocirc;ng phải thế chấp t&agrave;i sản nhưng đổi lại họ được vay với mức vay nhỏ l&atilde;i suất kh&ocirc;ng cao.</p>\r\n\r\n<p>Chỉ cần c&oacute; t&agrave;i sản thế chấp l&agrave; kh&aacute;ch h&agrave;ng c&oacute; thể vay vốn thế chấp d&agrave;i hạn tương ứng với giấy tờ đảm bảo t&agrave;i sản, hạn mức tối đa cho vay l&agrave; 75% gi&aacute; trị t&agrave;i sản.&nbsp;</p>\r\n\r\n<p>Điều kiện để kh&aacute;ch h&agrave;ng l&agrave;m thủ tục vay thế chấp sổ đỏ, nh&agrave; đất ng&acirc;n h&agrave;ng Agribank:</p>\r\n\r\n<p>Để được hỗ trợ vay tại Agribank kh&aacute;ch h&agrave;ng l&agrave; c&ocirc;ng d&acirc;n Việt Nam đang trong độ tuổi lao động, c&oacute; thu nhập ổn định tr&ecirc;n 3 triệu đồng mỗi th&aacute;ng, tại thời điểm vay kh&ocirc;ng c&oacute; nợ xấu tại ng&acirc;n h&agrave;ng v&agrave; đang cư tr&uacute; tại phạm vi của ng&acirc;n h&agrave;ng Agribank.</p>\r\n\r\n<p>&nbsp;</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Vay đáo hạn ngân hàng đơn giản', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'vay-dao-han-ngan-hang-don-gian', 'Thi công rèm', NULL, 60),
(76, 'en', 'Thi công rèm khách sạn Thắng Lợi', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', '<h3>CHI TIẾT DỰ &Aacute;N</h3>\r\n\r\n<p>Địa chỉ:&nbsp;số 72A Nguyễn Tr&atilde;i, Thanh Xu&acirc;n, H&agrave; Nội</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Thi công rèm khách sạn Thắng Lợi', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'thi-cong-rem-khach-san-thang-loi', 'Thi công rèm', NULL, 60),
(77, 'vn', 'Thủ tục đáo hạn ngân hàng cần giấy tờ gì', 'Trong các hình thức vay vốn ngân hàng thì hình thức vay thế chấp được khách hàng lựa chọn vay nhiều hơn so với hình thức vay tín chấp. Vì sao vậy ? So với hình thức vay thế chấp tuy người vay phải thế chấp tài sản của mình nhưng đổi lại họ sẽ được vay với lãi suất ưu đãi hơn, thời gian hạn mức cao. Còn đối với hình thức vay tín chấp, tuy người đi vay không phải thế chấp tài sản nhưng đổi lại họ được vay với mức vay nhỏ lãi suất không cao.', '<p>Trong c&aacute;c h&igrave;nh thức&nbsp;vay vốn ng&acirc;n h&agrave;ng&nbsp;th&igrave; h&igrave;nh thức&nbsp;<strong><em>vay thế chấp&nbsp;</em></strong>được kh&aacute;ch h&agrave;ng lựa chọn vay nhiều hơn so với h&igrave;nh thức vay t&iacute;n chấp. V&igrave; sao vậy ? So với h&igrave;nh thức vay thế chấp tuy người vay phải thế chấp t&agrave;i sản của m&igrave;nh nhưng đổi lại họ sẽ được vay với l&atilde;i suất ưu đ&atilde;i hơn, thời gian hạn mức cao. C&ograve;n đối với h&igrave;nh thức&nbsp;<strong><em>vay t&iacute;n chấp</em></strong>, tuy người đi vay kh&ocirc;ng phải thế chấp t&agrave;i sản nhưng đổi lại họ được vay với mức vay nhỏ l&atilde;i suất kh&ocirc;ng cao.</p>\r\n\r\n<p>Chỉ cần c&oacute; t&agrave;i sản thế chấp l&agrave; kh&aacute;ch h&agrave;ng c&oacute; thể vay vốn thế chấp d&agrave;i hạn tương ứng với giấy tờ đảm bảo t&agrave;i sản, hạn mức tối đa cho vay l&agrave; 75% gi&aacute; trị t&agrave;i sản.&nbsp;</p>\r\n\r\n<p>Điều kiện để kh&aacute;ch h&agrave;ng l&agrave;m thủ tục vay thế chấp sổ đỏ, nh&agrave; đất ng&acirc;n h&agrave;ng Agribank:</p>\r\n\r\n<p>Để được hỗ trợ vay tại Agribank kh&aacute;ch h&agrave;ng l&agrave; c&ocirc;ng d&acirc;n Việt Nam đang trong độ tuổi lao động, c&oacute; thu nhập ổn định tr&ecirc;n 3 triệu đồng mỗi th&aacute;ng, tại thời điểm vay kh&ocirc;ng c&oacute; nợ xấu tại ng&acirc;n h&agrave;ng v&agrave; đang cư tr&uacute; tại phạm vi của ng&acirc;n h&agrave;ng Agribank.</p>\r\n\r\n<p>&nbsp;</p>\r\n', NULL, 1, '', '', '', '', '', 'Thủ tục đáo hạn ngân hàng cần giấy tờ gì', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'thu-tuc-dao-han-ngan-hang-can-giay-to-gi', 'Thi công rèm', NULL, 61),
(78, 'en', 'Thi công rèm chung cư Keangnam', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', '<h3>CHI TIẾT DỰ ÁN</h3>\r\n\r\n<p>Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội</p>\r\n', NULL, 1, '', '', '', '', '', 'Thi công rèm chung cư Keangnam', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'thi-cong-rem-chung-cu-keangnam', 'Thi công rèm', NULL, 61),
(79, 'vn', 'Cách vay thế chấp sổ đỏ', 'Trong các hình thức vay vốn ngân hàng thì hình thức vay thế chấp được khách hàng lựa chọn vay nhiều hơn so với hình thức vay tín chấp. Vì sao vậy ? So với hình thức vay thế chấp tuy người vay phải thế chấp tài sản của mình nhưng đổi lại họ sẽ được vay với lãi suất ưu đãi hơn, thời gian hạn mức cao. Còn đối với hình thức vay tín chấp, tuy người đi vay không phải thế chấp tài sản nhưng đổi lại họ được vay với mức vay nhỏ lãi suất không cao.', '<p>Trong c&aacute;c h&igrave;nh thức&nbsp;vay vốn ng&acirc;n h&agrave;ng&nbsp;th&igrave; h&igrave;nh thức&nbsp;<strong><em>vay thế chấp&nbsp;</em></strong>được kh&aacute;ch h&agrave;ng lựa chọn vay nhiều hơn so với h&igrave;nh thức vay t&iacute;n chấp. V&igrave; sao vậy ? So với h&igrave;nh thức vay thế chấp tuy người vay phải thế chấp t&agrave;i sản của m&igrave;nh nhưng đổi lại họ sẽ được vay với l&atilde;i suất ưu đ&atilde;i hơn, thời gian hạn mức cao. C&ograve;n đối với h&igrave;nh thức&nbsp;<strong><em>vay t&iacute;n chấp</em></strong>, tuy người đi vay kh&ocirc;ng phải thế chấp t&agrave;i sản nhưng đổi lại họ được vay với mức vay nhỏ l&atilde;i suất kh&ocirc;ng cao.</p>\r\n\r\n<p>Chỉ cần c&oacute; t&agrave;i sản thế chấp l&agrave; kh&aacute;ch h&agrave;ng c&oacute; thể vay vốn thế chấp d&agrave;i hạn tương ứng với giấy tờ đảm bảo t&agrave;i sản, hạn mức tối đa cho vay l&agrave; 75% gi&aacute; trị t&agrave;i sản.&nbsp;</p>\r\n\r\n<p>Điều kiện để kh&aacute;ch h&agrave;ng l&agrave;m thủ tục vay thế chấp sổ đỏ, nh&agrave; đất ng&acirc;n h&agrave;ng Agribank:</p>\r\n\r\n<p>Để được hỗ trợ vay tại Agribank kh&aacute;ch h&agrave;ng l&agrave; c&ocirc;ng d&acirc;n Việt Nam đang trong độ tuổi lao động, c&oacute; thu nhập ổn định tr&ecirc;n 3 triệu đồng mỗi th&aacute;ng, tại thời điểm vay kh&ocirc;ng c&oacute; nợ xấu tại ng&acirc;n h&agrave;ng v&agrave; đang cư tr&uacute; tại phạm vi của ng&acirc;n h&agrave;ng Agribank.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Cách vay thế chấp sổ đỏ', '', 'cach-vay-the-chap-so-do', '', NULL, 62),
(80, 'en', 'english version Điều trị nám và tàn nhang', 'english version Điều trị nám tàn nhang chuyên sâu với mặt nạ đánh thức giác quan và da chai sạn, giúp làm sạch chuyển hóa trao đổi chất tốt, hấp thụ nhanh sản phẩm và đưa dưỡng chất vào sâu tận trong da, ức chế sự hội tụ melanin dưới da, đem lại cho da một làn da trắng sáng.', 'english version ', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Điều trị nám và tàn nhang', '', 'en-dieu-tri-nam-va-tan-nhang', '', NULL, 62),
(81, 'vn', 'Vay tiền mua nhà như thế nào', 'Không phải ai cũng có đủ điều kiện kinh tế để đi mua nhà, nhiều người phải tích cóp hàng năm trời, kết hợp với vay vốn ngân hàng mới có đủ tiền sở hữu ngôi nhà trong mơ. Bài viết dưới đây Rever sẽ mách bạn 9 điều người mua nhà lần đầu nên lưu ý trước khi tiến hành vay tiền ngân hàng mua nhà.', '<p>Kh&ocirc;ng phải ai cũng c&oacute; đủ điều kiện kinh tế để đi mua nh&agrave;, nhiều người phải t&iacute;ch c&oacute;p h&agrave;ng năm trời, kết hợp với&nbsp;vay vốn ng&acirc;n h&agrave;ng mới c&oacute; đủ tiền sở hữu ng&ocirc;i nh&agrave; trong mơ. B&agrave;i viết dưới đ&acirc;y Rever sẽ m&aacute;ch bạn 9&nbsp;điều người mua nh&agrave; lần đầu n&ecirc;n lưu &yacute; trước khi tiến h&agrave;nh vay tiền ng&acirc;n h&agrave;ng&nbsp;mua nh&agrave;.</p>\r\n\r\n<h2>Lưu &yacute; 1: Chỉ n&ecirc;n vay tối đa 50% gi&aacute; trị ng&ocirc;i nh&agrave;</h2>\r\n\r\n<p>Trước khi c&oacute;&nbsp;quyết định mua nh&agrave;, h&atilde;y chắc rằng bạn đ&atilde; c&oacute; một khoản tiền t&iacute;ch lũy tối thiểu 30% gi&aacute; trị ng&ocirc;i&nbsp;nh&agrave; muốn mua, l&yacute; tưởng hơn th&igrave; khoản tiền t&iacute;ch lũy n&agrave;y n&ecirc;n bằng mức 50% gi&aacute; trị ng&ocirc;i nh&agrave;. Theo chuy&ecirc;n vi&ecirc;n tư vấn Rever, tỷ lệ vay 50% gi&aacute; trị t&agrave;i sản được xem l&agrave; mức vay l&yacute; tưởng&nbsp;v&agrave; &iacute;t &aacute;p lực nhất, gi&uacute;p người vay vốn vừa dễ d&agrave;ng thanh to&aacute;n tiền vay cho ng&acirc;n h&agrave;ng vừa c&oacute; thể trang trải c&aacute;c chi ti&ecirc;u kh&aacute;c trong cuộc sống. Trong trường hợp mức vay lớn hơn 50% gi&aacute; trị ng&ocirc;i&nbsp;nh&agrave;, c&oacute; lẽ người vay sẽ&nbsp;phải đối mặt với những th&aacute;ng ng&agrave;y đầy kh&oacute; khăn khi &aacute;p lực trả nợ l&uacute;c n&agrave;o cũng hiện hữu b&ecirc;n m&igrave;nh.</p>\r\n\r\n<h2>Lưu &yacute; 2: Ch&uacute; &yacute; l&atilde;i suất ng&acirc;n h&agrave;ng</h2>\r\n\r\n<p>Khi vay vốn ng&acirc;n h&agrave;ng&nbsp;mua nh&agrave;, người vay n&ecirc;n thuộc nằm l&ograve;ng quy tắc v&agrave;ng n&agrave;y: &quot;Vốn cố định nhưng l&atilde;i vay của ng&acirc;n h&agrave;ng thường bị thả nổi&quot;. Vấn đề n&agrave;y l&agrave; như thế n&agrave;o?</p>\r\n\r\n<p>Hiện nay tr&ecirc;n thị trường c&oacute; kh&aacute; nhiều ng&acirc;n h&agrave;ng mời ch&agrave;o người vay với l&atilde;i suất ưu đ&atilde;i rất hấp dẫn chỉ từ 7,5-8%/năm, nhưng bạn n&ecirc;n nhớ l&atilde;i suất ưu đ&atilde;i n&agrave;y thường chỉ &aacute;p dụng trong 6-12 th&aacute;ng đầu ti&ecirc;n. Kể từ th&aacute;ng 13 trở đi, mức l&atilde;i suất sẽ được điều chỉnh tăng th&ecirc;m khoảng 3,5-4% t&ugrave;y thuộc v&agrave;o từng ng&acirc;n h&agrave;ng v&agrave; từng đối tượng vay.&nbsp;Ch&iacute;nh v&igrave; vậy, Rever nhắc bạn trước khi vay&nbsp;<a href=\"http://rever.vn/mua-nha-voi-rever\">mua nh&agrave; cần phải xem kỹ</a>&nbsp;l&atilde;i suất thay đổi như thế n&agrave;o cho c&aacute;c năm sau theo hợp đồng t&iacute;n dụng. Nếu c&oacute; thể, h&atilde;y y&ecirc;u cầu nh&acirc;n vi&ecirc;n ng&acirc;n h&agrave;ng tư vấn r&otilde; về chi ph&iacute; l&atilde;i vay qua c&aacute;c năm.</p>\r\n\r\n<p>Một yếu tố kh&aacute;c cũng cần hiểu r&otilde; trước khi k&yacute; v&agrave;o hợp đồng vay vốn đ&oacute; l&agrave; tiền vay ng&acirc;n h&agrave;ng sẽ t&iacute;nh theo dư nợ giảm dần hay dư nợ ban đầu.</p>\r\n\r\n<h2>Lưu &yacute; 3: Duy tr&igrave; mức thu nhập h&agrave;ng th&aacute;ng</h2>\r\n\r\n<p>Duy tr&igrave; thu nhập ổn định h&agrave;ng th&aacute;ng l&agrave; một trong những điều cực kỳ quan trọng trước khi vay vốn ng&acirc;n h&agrave;ng mua nh&agrave;. Nhiều chuy&ecirc;n gia t&agrave;i ch&iacute;nh cho rằng c&oacute; được mức thu nhập ổn định th&igrave;&nbsp;mới tạo cơ sở t&agrave;i ch&iacute;nh vững v&agrave;ng để trả nợ ng&acirc;n h&agrave;ng (trong đ&oacute; bao gồm cả vốn v&agrave; l&atilde;i vay). B&ecirc;n cạnh đ&oacute;, người vay cũng n&ecirc;n b&agrave;n bạc với gia đ&igrave;nh t&igrave;m th&ecirc;m phương &aacute;n tăng thu nhập từ c&aacute;c nguồn phụ, qua đ&oacute; đảm bảo d&ugrave; l&atilde;i suất tăng l&ecirc;n cũng c&oacute; thể trả nổi nợ gốc v&agrave; l&atilde;i vay.</p>\r\n\r\n<h2>Lưu &yacute; 4:&nbsp;Tự đ&aacute;nh gi&aacute; khả năng thanh to&aacute;n</h2>\r\n\r\n<p>Trước khi vay tiền&nbsp;<a href=\"https://offer.rever.vn/topic/mua-nha-lan-dau\" rel=\" noopener\" target=\"_blank\">mua nh&agrave; hay chung cư</a>, điều quan trọng nhất đ&oacute; l&agrave; người vay cần đ&aacute;nh gi&aacute; được khả năng t&agrave;i ch&iacute;nh của bản th&acirc;n nhằm&nbsp;hạn chế tối đa việc mất khả năng trả nợ trong tương lai. H&atilde;y l&ecirc;n kế hoạch r&otilde; r&agrave;ng 3 khả năng sau đ&acirc;y:</p>\r\n\r\n<p>Khả năng t&agrave;i ch&iacute;nh (1): Đ&acirc;y được coi l&agrave; số tiền tiết kiệm m&agrave; người vay đang c&oacute;, thu nhập h&agrave;ng th&aacute;ng của người vay v&agrave; gia đ&igrave;nh sau khi đ&atilde; trừ&nbsp;đi to&agrave;n bộ những khoản chi ph&iacute; sinh hoạt trong th&aacute;ng.</p>\r\n\r\n<p>Khả năng t&agrave;i ch&iacute;nh hỗ trợ (2): Một phần vốn được hỗ trợ bởi người th&acirc;n để mua nh&agrave; với việc cho vay kh&ocirc;ng lấy l&atilde;i hoặc &aacute;p dụng mức l&atilde;i suất nhưng bằng hoặc thấp hơn so với l&atilde;i suất của ng&acirc;n h&agrave;ng.</p>\r\n\r\n<p>Khả năng trả nợ (3): Việc chắc chắn phải l&agrave;m sau khi mua nh&agrave;/chung cư&nbsp;trả g&oacute;p ch&iacute;nh l&agrave; trả nợ. Ở trường hợp n&agrave;y, người vay vốn cần phải biết ch&iacute;nh x&aacute;c mức chi trả mỗi th&aacute;ng, đồng thời phải nắm được sự biến động của l&atilde;i suất trong tầm kiểm so&aacute;t.&nbsp;<strong>Rever lưu &yacute; người vay đ&oacute; l&agrave; kh&ocirc;ng n&ecirc;n c&oacute; những khoản chi ph&iacute; ph&aacute;t sinh hoặc nếu c&oacute; th&igrave; cũng kh&ocirc;ng đ&aacute;ng kể</strong>. D&ugrave; vậy, để tr&aacute;nh mất khả năng chi trả, người vay mua nh&agrave; chỉ n&ecirc;n vay tối đa từ 20%-30% gi&aacute; trị căn nh&agrave;, tuyệt đối kh&ocirc;ng vay qu&aacute; 50% gi&aacute; trị căn nh&agrave; như ch&uacute;ng t&ocirc;i đ&atilde; đề cập ở Lưu &yacute; 1.</p>\r\n\r\n<p>Nếu thực hiện ph&eacute;p t&iacute;nh (1) + (2) v&agrave; cho ra kết quả (1) + (2)&ge; (3) th&igrave; việc vốn ng&acirc;n h&agrave;ng mua nh&agrave;&nbsp;được xem l&agrave; khả thi.</p>\r\n\r\n<h2>Lưu &yacute; 5: Chỉ mua ng&ocirc;i nh&agrave; ph&ugrave; hợp với nhu cầu v&agrave; điều kiện kinh tế</h2>\r\n\r\n<p>H&atilde;y chắc rằng bạn đang c&oacute; &yacute; định mua ng&ocirc;i nh&agrave; c&oacute; diện t&iacute;ch vừa phải, đủ cho c&aacute;c th&agrave;nh vi&ecirc;n trong gia đ&igrave;nh sử dụng. Trong trường hợp bạn mua trả g&oacute;p một ng&ocirc;i nh&agrave; c&oacute; diện t&iacute;ch qu&aacute; lớn so với số người trong nh&agrave; của bạn th&igrave; &aacute;p lực vay vốn sẽ nặng nề hơn, k&eacute;o theo đ&oacute; l&agrave; việc bạn sẽ phải trả những khoản nợ gốc v&agrave; l&atilde;i kh&ocirc;ng cần thiết.</p>\r\n\r\n<h2><strong>Lưu &yacute; 6: C&acirc;n nhắc thời hạn g&oacute;i vay</strong></h2>\r\n\r\n<p><strong><img alt=\"vay tien mua nha\" src=\"https://blog.rever.vn/hs-fs/hubfs/phatquahan.jpg?t=1532375959182&amp;width=640&amp;name=phatquahan.jpg\" title=\"vay tien mua nha\" width=\"640\" /></strong></p>\r\n\r\n<p><em>Thời hạn g&oacute;i vay l&agrave; yếu tố cực kỳ quan trọng kh&ocirc;ng n&ecirc;n bỏ qua</em></p>\r\n\r\n<p>B&ecirc;n cạnh l&atilde;i suất th&igrave; thời hạn của g&oacute;i vay cũng l&agrave; yếu tố rất quan trọng m&agrave; người vay n&ecirc;n biết. Khi bạn đ&atilde; vay ng&acirc;n h&agrave;ng th&igrave; th&ocirc;ng thường vay tr&ecirc;n 5 năm đều c&oacute; l&atilde;i suất như nhau. Ch&iacute;nh v&igrave; vậy, bạn n&ecirc;n chọn thời gian vay d&agrave;i nhất c&oacute; thể để giảm số vốn gốc h&agrave;ng th&aacute;ng xuống thấp nhất.</p>\r\n\r\n<h2>Lưu &yacute; 7:&nbsp;Chủ động đối ph&oacute; với bẫy l&atilde;i suất thả nổi</h2>\r\n\r\n<p>Để tr&aacute;nh gặp phải bẫy l&atilde;i suất thả nổi, người vay phải ước t&iacute;nh trong giả định rằng l&atilde;i suất c&oacute; thể tăng đến 30% cũng như&nbsp;dự đo&aacute;n trước một số chi ph&iacute; đột biến bất ngờ c&oacute; thể xảy ra. Như vậy, sau khi trừ đi c&aacute;c khoản chi ti&ecirc;u h&agrave;ng th&aacute;ng trong gia đ&igrave;nh th&igrave; số tiền c&ograve;n lại phải đảm bảo 150% số tiền phải trả ng&acirc;n h&agrave;ng. V&iacute; dụ bạn trả ng&acirc;n h&agrave;ng 10&nbsp;triệu đồng/ th&aacute;ng th&igrave; bạn phải c&oacute; số tiền dư h&agrave;ng th&aacute;ng l&agrave; 15 triệu đồng để đề ph&ograve;ng t&igrave;nh huống l&atilde;i suất c&oacute; thể bất ngờ tăng l&ecirc;n.</p>\r\n\r\n<h2>Lưu &yacute; 8: Coi chừng bị phạt khi trả nợ trước hạn vay</h2>\r\n\r\n<p>Th&ocirc;ng thường khi vay mua nh&agrave;, c&oacute; đến 80% kh&aacute;ch h&agrave;ng thường thanh to&aacute;n dứt nợ trong khoảng 5 năm đầu, kết quả l&agrave; họ thường bị ng&acirc;n h&agrave;ng phạt ph&iacute; khi thanh to&aacute;n trước hạn, thường l&agrave; bị phạt từ 1-3% tr&ecirc;n số tiền trả nợ trước hạn. Theo th&ocirc;ng tin Rever t&igrave;m hiểu, một khi ng&acirc;n h&agrave;ng mời ch&agrave;o mức l&atilde;i suất thấp th&igrave; họ&nbsp;sẽ k&egrave;m theo mức phạt cao để b&ugrave; lỗ khoản l&atilde;i suất ưu đ&atilde;i ban đầu. Do đ&oacute;, nếu chọn được&nbsp;<strong>dự &aacute;n</strong>&nbsp;hay nh&agrave; phố n&agrave;o m&agrave; ph&iacute;a ng&acirc;n h&agrave;ng bảo l&atilde;nh v&agrave; cam kết kh&ocirc;ng phạt trả nợ trước hạn th&igrave; bạn sẽ&nbsp;tiết kiệm được một khoản chi ph&iacute; đ&aacute;ng kể.</p>\r\n\r\n<h2>Lưu &yacute; 9: d&agrave;nh cho những người mua căn hộ chung cư trả g&oacute;p: H&atilde;y khảo s&aacute;t gi&aacute; thật kỹ lưỡng</h2>\r\n\r\n<p>Hiện nay tr&ecirc;n thị trường c&oacute; 2 dạng đối với căn hộ chung cư, đ&oacute; l&agrave; dự &aacute;n đang x&acirc;y hoặc dự &aacute;n đ&atilde; c&oacute; cư d&acirc;n v&agrave;o sinh sống. Theo đ&oacute;, với mỗi dạng dự &aacute;n ch&uacute;ng ta sẽ c&oacute; những c&aacute;ch khảo s&aacute;t gi&aacute; kh&aacute;c nhau. Cụ thể, nếu bạn đang t&igrave;m hiểu một căn hộ chung cư đ&atilde; c&oacute; người ở, để khảo s&aacute;t gi&aacute; căn hộ n&agrave;y, bạn c&oacute; thể&nbsp;t&igrave;m kiếm th&ocirc;ng tin tr&ecirc;n c&aacute;c diễn đ&agrave;n hoặc c&aacute;c website tin cậy. Hoặc nếu vẫn cảm thấy chưa an t&acirc;m, bạn&nbsp;c&oacute; thể đến trực tiếp khu chung cư v&agrave; hỏi những người d&acirc;n sống xung quanh hay người quen trong khu đ&oacute; (nếu c&oacute;). Điều n&agrave;y sẽ gi&uacute;p bạn c&oacute; th&ecirc;m nhiều th&ocirc;ng tin cần thiết.</p>\r\n\r\n<p>Với trường hợp muốn mua nh&agrave; trả g&oacute;p tại một dự &aacute;n vẫn đang x&acirc;y th&igrave; bạn cũng phải cần bỏ ch&uacute;t thời gian&nbsp;<strong>t&igrave;m hiểu th&ocirc;ng tin tr&ecirc;n c&aacute;c trang web về bất động sản uy t&iacute;n</strong>. Những th&ocirc;ng tin n&ecirc;n t&igrave;m kiếm bao gồm: diện t&iacute;ch dự &aacute;n, chủ đầu tư, ng&acirc;n h&agrave;ng bảo l&atilde;nh dự &aacute;n, c&aacute;c loại căn hộ hay ưu đ&atilde;i cho kh&aacute;ch h&agrave;ng...</p>\r\n\r\n<p>Để việc mua b&aacute;n nh&agrave; của bạn được diễn ra thuận lợi hơn, Rever cung cấp đến bạn&nbsp;<strong>Bảng t&iacute;nh l&atilde;i suất ng&acirc;n h&agrave;ng mua nh&agrave; h&agrave;ng th&aacute;ng.&nbsp;</strong>T&agrave;i liệu được ch&uacute;ng t&ocirc;i bi&ecirc;n soạn v&agrave; cung cấp Miễn ph&iacute;.</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Vay tiền mua nhà như thế nào', '', 'vay-tien-mua-nha-nhu-the-nao', '', NULL, 63),
(82, 'en', 'english version Massage với tinh dầu', 'english version Massage với tinh dầu là dùng tinh dầu nguyên chất để massage tạo cảm giác thư giãn.', 'english version ', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Massage với tinh dầu', '', 'en-massage-voi-tinh-dau', '', NULL, 63),
(83, 'vn', 'Vay thế chấp có đơn giản không?', 'Vay vốn ngân hàng hay các công ty tài chính hiện nay đang là một giải pháp phổ biến được nhiều khách hàng lựa chọn để đáp ứng các nhu cầu tiêu dùng, kế hoạch xây dụng cuộc sống tiện nghi hơn, đầy đủ hơn mà không cần phải chờ đợi quá lâu. ', '<p>Vay vốn ng&acirc;n h&agrave;ng hay c&aacute;c c&ocirc;ng ty t&agrave;i ch&iacute;nh hiện nay đang l&agrave; một giải ph&aacute;p phổ biến được nhiều kh&aacute;ch h&agrave;ng lựa chọn để đ&aacute;p ứng c&aacute;c nhu cầu ti&ecirc;u d&ugrave;ng, kế hoạch x&acirc;y dụng cuộc sống tiện nghi hơn, đầy đủ hơn m&agrave; kh&ocirc;ng cần phải chờ đợi qu&aacute; l&acirc;u. Việc vay vốn n&agrave;y dưới h&igrave;nh thức c&aacute;c g&oacute;i vay ti&ecirc;u d&ugrave;ng t&iacute;n chấp, vay mua h&agrave;ng trả g&oacute;p, vay ti&ecirc;u d&ugrave;ng c&aacute; nh&acirc;n kh&ocirc;ng cần t&agrave;i sản đảm bảo&hellip;c&aacute;c khoản vay n&agrave;y hấp dẫn về sự đơn giản về thủ tục giấy tờ, x&eacute;t duyệt nhanh ch&oacute;ng, số tiền vay đủ để đ&aacute;p ứng nhu cầu vay ti&ecirc;u d&ugrave;ng (như tại Mirae Asset c&oacute; thể vay tối đa 70 triệu đồng). Việc x&eacute;t duyệt cũng dễ d&agrave;ng hơn dựa theo lương, theo c&aacute;c hợp đồng t&iacute;n dụng tại c&aacute;c tổ chức t&iacute;n dụng kh&aacute;c, theo bảo hiểm nh&acirc;n thọ hay thậm ch&iacute; l&agrave; h&oacute;a đơn tiền điện.</p>\r\n\r\n<p>Nhu cầu vay ti&ecirc;u d&ugrave;ng, vay vốn ng&acirc;n h&agrave;ng rất đa dạng v&agrave; phong ph&uacute; như l&agrave; chăm s&oacute;c sức khỏe, sắm sửa c&aacute;c tiện nghi cho ng&ocirc;i nh&agrave;, mua sắm ti&ecirc;u d&ugrave;ng, du lịch, du học&hellip;Thực tế nhu cầu vay t&iacute;n chấp tr&ecirc;n thị trường kh&ocirc;ng nhỏ nhưng l&atilde;i suất vay t&iacute;n chấp kh&aacute; cao đang l&agrave; một trong những r&agrave;o cản khiến nhiều người ngần ngại với c&aacute;c khoản vay ti&ecirc;u d&ugrave;ng t&iacute;n chấp, vay ti&ecirc;u d&ugrave;ng c&aacute; nh&acirc;n.&nbsp;C&ocirc;ng ty T&agrave;i ch&iacute;nh Mirae Asset Việt Nam &nbsp;(MAFC) tự h&agrave;o trong suốt thời gian hoạt động đ&atilde; lu&ocirc;n nhận được sự t&iacute;n nhiệm, tin y&ecirc;u của kh&aacute;ch h&agrave;ng với c&aacute;c sản phẩm vay ti&ecirc;u d&ugrave;ng ng&agrave;y một ho&agrave;n thiện, đ&acirc;y ch&iacute;nh l&agrave; cơ hội để kh&aacute;ch h&agrave;ng tiếp cận th&ecirc;m một nguồn vốn hiệu quả, hợp ph&aacute;p v&agrave; an to&agrave;n.</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Vay thế chấp có đơn giản không?', '', 'vay-the-chap-co-don-gian-khong', '', NULL, 64),
(84, 'en', 'english version Massage với thảo dược', 'english version Với mùi hương dễ chịu của các loại thảo dược như: ngải cứu, sả, gừng, bạch đàn hương…', 'english version ', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Massage với thảo dược', '', 'en-massage-voi-thao-duoc', '', NULL, 64);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size`
--

CREATE TABLE `size` (
  `size_id` bigint(20) NOT NULL,
  `size_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size_stock` int(11) DEFAULT NULL,
  `size_price` double DEFAULT NULL,
  `color_id` bigint(20) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `name` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `teacher`
--

INSERT INTO `teacher` (`id`, `name`, `image`, `note`, `email`, `phone`) VALUES
(1, 'Nguyễn Thị Thu Hiền', 'anhd1.png', '<p>Cử nh&acirc;n Học Viện T&agrave;i Ch&iacute;nh</p>\r\n', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_address` text COLLATE utf8_unicode_ci,
  `user_password` text COLLATE utf8_unicode_ci,
  `user_birthday` date NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `time` date NOT NULL,
  `ask` text COLLATE utf8_unicode_ci NOT NULL,
  `remember_me_identify` text COLLATE utf8_unicode_ci NOT NULL,
  `remember_me_token` text COLLATE utf8_unicode_ci NOT NULL,
  `id_fb` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `id_go` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_phone`, `user_address`, `user_password`, `user_birthday`, `created_date`, `state`, `time`, `ask`, `remember_me_identify`, `remember_me_token`, `id_fb`, `id_go`) VALUES
(10, 'hung', 'hung71483@gmail.com', NULL, NULL, '$2y$10$K1pWsDER5UHre0zaC5IYyOZFnYSXYA34OO7M7Yu3wG/LzFaiXaN6O', '0000-00-00', NULL, 1, '0000-00-00', '$2y$10$agH2TActbd84Z7FltVwgYuuls12k7kwo4nIKTwYTF9NwaoD/B6Z8a', 'Ub9dhdrbOub9AnPESARe', 'zcZMIcNMkrAeVbLqbPIueU4x0JS3Q5', '0', ''),
(11, 'Việt Hưng', 'viethung95cute@gmail.com', NULL, NULL, '$2y$10$H/oRwht13lj1/tnj.VEIVO58qvIvEIjfTDt4HByWikd/e15e0CD2G', '0000-00-00', NULL, 1, '0000-00-00', '$2y$10$nEdTTn2WO1lwvkii8gfgpuwf9TRz72.ypUNmDUUGlVJvuR2ZC.idy', '', '', '0', ''),
(12, 'Nguyễn Thùy Linh', 'linhlanhlung@gmail.com', '01672523165', NULL, '$2y$10$Hx8Y.kMSBqR6GyzgI9gQs.4c3VMY4DFgoIC.OV6oPw9dt6Sc16auS', '1995-09-06', NULL, 1, '2018-08-15', '$2y$10$xuSkw4kJdzrY5mF0rnOMeOZ/pRCIZWny2XnZ2YU.Ez28cTZeQfC/m', '', '', '0', ''),
(13, 'Duyên', 'content.gbvn@gmail.com', '0972460215', NULL, '$2y$10$Q7aiPHEOq7TQt9iCMSYw0ufPWoYNH4PBKs8apH1YZ3RhS9ur.MSoe', '1993-07-28', NULL, 1, '2018-08-24', '$2y$10$BfDQ6i3Cl.qLVo/wIKePH.5TUFnDonTaKuLoXg9Y8NPSHtjLRETD2', '', '', '0', ''),
(14, 'Nguyễn Thị Thu Hiền', 'thuhien2105aof@gmail.com', '0966178559', NULL, '$2y$10$7O/js3DN6YkvLdvOuGD/3OqgUBVbf7lpZ3Tn0DQ3XzIDpq1x2tmwu', '1991-04-06', NULL, 1, '2018-08-24', '$2y$10$ZZixBH4TT35yXGlbd39a4.DoUUfUgFYI.q2nrO0H7hTYmYYiozKn.', '', '', '0', ''),
(15, 'Tuan Truong Quang', 'songmaituoitho@yahoo.com.vn', NULL, NULL, '$2y$10$Y9i9ZtU6K/3SHONFmFJuD.Sn5eBM.321oQQKXaeXEFK7VuiJcxZc6', '0000-00-00', NULL, 1, '0000-00-00', '', '', '', '1283794285094515', ''),
(16, 'Sakura Hiền', 'khoahoc.hocexcel123@gmail.com', NULL, NULL, '$2y$10$9SC0tUsmCKoSfgMX8UyDgOAmzf7NuY0YwQiOcS0BIjtt1BrSP4cKu', '0000-00-00', NULL, 1, '0000-00-00', '', '', '', '191735821760694', ''),
(17, '', '', NULL, NULL, '$2y$10$AGnYZfjS43Ch2AxGVTaPrOE8Oj4pBGECgZQRaSikefoxoe5pZV9Qa', '0000-00-00', NULL, 1, '0000-00-00', '', '', '', '', ''),
(18, 'truong quang tuan', 'truongquangtuan3110@gmail.com', NULL, NULL, '$2y$10$nkcViIIk.utYMx2ha7EhEOi.lnMWLNl1lmPdLMg4okj7Usms.WFnW', '0000-00-00', NULL, 1, '0000-00-00', '', '', '', '', '115546341319345602469'),
(19, 'Trần Tuyết', 'hpfeed1102@gmail.com', '0966178559', NULL, '$2y$10$NpJ4ZDsAYDHtk0YZZKRMFe9/d3lVfpEvx5M8R7Z.KUExkakGBawLu', '1999-11-24', NULL, 1, '2018-11-24', '$2y$10$fl2TKkzFUR/nUDz/5ZaGjeAT3cVnlYStzGtzE0b0X6aHjNDSnO.fS', '', '', '', ''),
(20, 'Trần Minh', 'htfeed1102@gmail.com', '0966178559', NULL, '$2y$10$fuyO6Vhb9dwKHdSUN0FBEuJC9WCA5tYsN3dgpp2Di5iolhU2rbpZS', '2001-02-09', NULL, 1, '2018-11-25', '$2y$10$csRk5NStK/ZvQAfDTlbU/uccqMtCDzkvKEij35kO6Lxk9Xxj64KHO', '', '', '', ''),
(21, 'Trương Quang Tuấn', 'truongquangtuan3110@zoho.com', '0369268608', NULL, '$2y$10$ORVoY3unOylrvVHrRyialu1HimxPafvkfHE/pdsZfcCRo/fZh4SRC', '1983-10-31', NULL, 1, '2018-11-26', '$2y$10$kzx97GpM/.kV5Ay0ruPMi.vVltQs3Lgbef9VZ0Oh5UmcH4eNdz2C2', '', '', '', ''),
(22, 'Thành Trung', 'Dampuk35@gmail.com', '0966178559', NULL, '$2y$10$fzWMh6GPkYIF/weUqNLQUezM87GmvNAXzpXAFvjiI52etJcx3OBCK', '1998-09-15', NULL, 1, '2018-12-08', '$2y$10$JXrbt92dz3WphfuHuWMg9.SiEc19Yr/o1PFLRzfzX2Dqfuvcp90/u', '', '', '', ''),
(23, 'Bùi Minh Hiền', 'buihiengh123@gmail.com', '0989217356', NULL, '$2y$10$DqZe9wDsxsUA0BKrPeXdcOZrWlbNdQ3.eFSH.AH9SiwBVYWQYAdWa', '1994-07-12', NULL, 1, '2018-12-08', '$2y$10$uOdXi3lgZ1OUO.81UCiUo.vwm9uCIUTp7WXG3tCZEEdyqwb3GXBnS', '', '', '', ''),
(24, 'Ngyuễnn Hậuu', 'buocthatchamdenhomotnguoi_laem@yahoo.com.vn', NULL, NULL, '$2y$10$bjbIrnJXGspXEn62NklqO.czSu9RKqUEA4jjajow658qa.BTe7Mmy', '0000-00-00', NULL, 1, '0000-00-00', '', '', '', '1435309229934944', ''),
(25, 'Nguyễn Thị Thu Hiền', 'hopdonghgv@gmail.com', NULL, NULL, '$2y$10$tAhaak2oozW0MBgizCcoFubu2vjqhOeiik7Hl5fhBTY2Dxj5HSOsS', '0000-00-00', NULL, 1, '0000-00-00', '', '', '', '', '116664096276785753730'),
(26, 'Thảo Hoàng', 'tho.hongthu@yahoo.com.vn', NULL, NULL, '$2y$10$YRloVamMHrJBtTjMHv6SAOFHtPKW/3MAePsW3BBiKGjP3yq5dWhei', '0000-00-00', NULL, 1, '0000-00-00', '', '', '', '2222430774665251', ''),
(27, 'Tài Thị Kim Liên', 'Taikimlien99@gmail.com', '0961557052', NULL, '$2y$10$t2qsjGYgAIX8sV7mn6KhQeGin.ITNiDoPjw.c0e6Nz6NkV7JcHXjq', '1997-11-11', NULL, 1, '2019-05-26', '$2y$10$S3zEVU2FpDZQ.ALl0BATzeymXPkJNVAyW5XuFMu1.qUmcMKo2A.Am', '', '', '', ''),
(28, 'Phạm Thanh Nguyệt', 'Phamthanhnguyet6496@gmail', '0961557052', NULL, '$2y$10$qWnacCWR3CenXcsOLG1NIOpjzE.8zsO/MdFuOFN9IzbGKo6SmVMLK', '1997-11-15', NULL, 1, '2019-05-26', '$2y$10$WccdFndUhjFu2moLYUT6relkTaFOUQA0l5EWyObaVV7wOSdl2VdP6', '', '', '', ''),
(29, 'Huỳnh Thị Thu Hằng', 'huynhthithuhang23051999@gmail.com', '0961557052', NULL, '$2y$10$uri1c6/4NNAJz8mltRhhJ.J4YsAeWAGoUPhiX7mN3dJuLluIpxsre', '1997-12-11', NULL, 1, '2019-05-26', '$2y$10$Uty14o9YT4gaJ1qojxi/ku2hIml2Uanaly4KpVaPJxyG1kZ7939LC', '', '', '', ''),
(30, 'Triệu Khánh Linh', 'Trieulinh209@gmail.com', '0961557052', NULL, '$2y$10$lFQ4t2eLZaIdUBzHWBs6cOQnkp5qdChLlwz9uoD9Ol75L/TBlw6nK', '1994-04-15', NULL, 1, '2019-05-26', '$2y$10$aDlO6/lTE6A28y3CFUiApeL6igcBxp4cV.x.J0N3yAVpN3Qlio8C2', '', '', '', ''),
(31, 'Lê Hồng Vi', 'lehongvipharma@gmail.com', '123456789', NULL, '$2y$10$T9SW.I1r/o1wce42T1gyQuOyyDknl4Fy3nN/hHVznK2UAK0gb/JHu', '1997-12-15', NULL, 1, '2019-05-26', '$2y$10$.OxrOb5AB/X4OaTgBO6BvOe63jcUL/WV2y2OCHoCBEmU0kg5xGnUq', '', '', '', ''),
(32, 'Hoàng Hiệp', 'Kimcommander1005@gmail.com', '12345678', NULL, '$2y$10$WlVjOvAmdPP6TgugB5Xzo.4WdKiYcufFTyR8vTZH7QmcsqtEcKy/u', '1999-12-11', NULL, 1, '2019-05-26', '$2y$10$zGqASHJ7Rqb5Iucp2pY6HOuGtdzw52tDzS7ph0c63G7KjOH2Bu2/m', '', '', '', ''),
(33, 'Hoàng Ngô', 'Phanhoangdo2020bplaw@gmail.com', '12345678', NULL, '$2y$10$oU0bSmPUjojyrVOb4RfBj./RZmRdaOBJYCVyibtwvAG4R2I.pjXSq', '2000-12-12', NULL, 1, '2019-05-26', '$2y$10$VN1cN0zjJkigf5onZB5/feupU/nq7cjvg41aSzNGhpejzOV6qXB2y', '', '', '', ''),
(34, 'Trần Hiếu', 'thieu7790@gmail.com', '12345678', NULL, '$2y$10$t3oi.djBQNR0Thzs4J6I1uD4y7S0FwiFxS4nv.HkXCCAdQxHgeBAy', '2000-12-12', NULL, 1, '2019-05-26', '$2y$10$qRvrCNwT631.waKULwxkvewK20w2Xfcgvf.UmQRXSXKbONVZ3pYN6', '', '', '', ''),
(35, 'Lê Thanh Tuấn', 'tuanlatui98@gmail.com', '12345678', NULL, '$2y$10$bdeByN0Q27Zc8T458SGlJ.QV8EwMcq2.ds2yaiHNGYPIxvtsVQKQe', '1998-11-11', NULL, 1, '2019-05-26', '$2y$10$wlvlCwILslIzRLWpaF.u6Ot9ChA7Oj.C80kZgUhV1zbf7MAx8MZOu', '', '', '', ''),
(36, 'Nguyên Vũ', 'Vunguyenhoang007@gmail.com', '12345678', NULL, '$2y$10$.oLuCmeZFNjxabxtTKRJx.5h.SSYR4JapUws6KkDK88M7DITuSq6e', '1997-11-11', NULL, 1, '2019-05-26', '$2y$10$eIQXSHGbPm75bAezri4Ph.PCTWm6U6dDPQ59wu9ZvZ4F9D3hMrv1y', '', '', '', ''),
(37, 'Thu Hằng', 'hangthuhang97@gmail.com', '12345678', NULL, '$2y$10$hPvPe5fwKvg7Muv5ZKvu0OzsluEmypXr2cZpaGsoNzZCJ7e3Ay0Mq', '1997-12-11', NULL, 1, '2019-05-26', '$2y$10$SeOPAyXxmvwKcsJFB7CIWukYOXVXmotK8.slJCigyQNx7bqy4kN.C', '', '', '', ''),
(38, 'Văn Nam', 'Haruki.hnue.1994@gmail.com', '12345678', NULL, '$2y$10$0CjR.48A4SPe5DE0WPiWUeMw5WAXM7vemnjJruErO4JAvg5r/N1ve', '1994-12-12', NULL, 1, '2019-05-26', '$2y$10$hXnOnw/v.3Pgy7m4KnimlOdRFa2LrUEug.FY9OVRUaNaInmTIeSv6', '', '', '', ''),
(39, 'Quách Minh Tuấn', 'qmtuan282@gmail.com', '12345678', NULL, '$2y$10$zj4jw8yL2zcv4PVWptVgWOU1dQDvP3XBHH4WZ1bynu3FsBUMgOpUW', '1994-02-28', NULL, 1, '2019-05-26', '$2y$10$CRoNwqc9FFz61pCe8vjiQ.iw3UH8179zOwqU/ZM48Y/rpUQPM67nq', '', '', '', ''),
(40, 'Đặng Thị Thùy Dung', 'Dangthithuydung120896@gmail.com', '12345678', NULL, '$2y$10$Gh0a2ZRtQiAivo3DCqfJvO5KHHs397jF5Ss5uigPZ0nzpQtGKsKj6', '1996-08-12', NULL, 1, '2019-05-26', '$2y$10$QbCwpPH5BWf5DfyX20t./O/KiG7aW8jVlXdWENyivrm1G.53gyR.2', '', '', '', ''),
(41, 'Vân Nguyễn', 'vuinguyen.neu1997@gmail.com', '12345678', NULL, '$2y$10$cqA5PejaVeNFLLHaR644euCrmabcoyDfxZ/lrFnrMMQ4RIUSUc4de', '1997-11-11', NULL, 1, '2019-05-26', '$2y$10$24H0RfsOB/5y6uTsEcvIn.YQtwaUfgPdxyFJtTdUiKP1euFnBTa.C', '', '', '', ''),
(42, 'Nguyễn Thị Hồng Huệ', 'honghuebka59@gmail.com', '123456', NULL, '$2y$10$9QM4ykYczT27ftQXoB/3SONUMv12/shjkVCrT3MdqXU8ycue2xlJG', '1997-09-05', NULL, 1, '2019-05-26', '$2y$10$Xq7Lj1GVLqWNjh6cqDZO3OHHKKXFDaaCvD3y.aa3Cw2/r3bBlQ82m', '', '', '', ''),
(43, 'Thu Vũ', 'Thulvct@gmail.com', '123456', NULL, '$2y$10$QW/rDv/8giNjkSeguY2u.OJlvEMl5X0F2mGuoQK0dkCkxHTxEcpa6', '1997-11-11', NULL, 1, '2019-05-26', '$2y$10$S8MaRfSVtbRvhAa2dEe97.F2DMMxDIitl2c4oWtnhJXTPh.oDmjNO', '', '', '', ''),
(44, 'Vy Hoàng', 'hoangvy14120@gmail.com', '123456', NULL, '$2y$10$fhZiH1xcURUTdyOIrQmXD.RsVYIoCEbhBoZQgkQvfdWSY5x9lsC8.', '1999-12-14', NULL, 1, '2019-05-26', '$2y$10$KIAmTJ8oY8qggGmI1PZND.Lf2yyIsNI7gxlur.WBaw9BS5oWbzR5a', '', '', '', ''),
(45, 'Anna Nguyễn', 'Hongem94@gmail.com', '123456', NULL, '$2y$10$kljQYmfSwdVhVf0HYsuklON0qsDnMjNrzCgpVF/3XbMeRZy7fK88.', '1991-12-11', NULL, 1, '2019-05-26', '$2y$10$Vk3QipkKx3s3re2jM34a6eML0NTzLCRv.i3ovylbsfwXZ.Pd0Cu9O', '', '', '', ''),
(46, 'Linh Thảo', 'linhthaobui94qt@gmail.com', '123456', NULL, '$2y$10$9phtmKxPLK4q7aszFjpLmer..kp75QH0g0t1iG31xMtVLSqhPGR6S', '1994-11-11', NULL, 1, '2019-05-26', '$2y$10$Q.KMye2L.FxY2PEcf31TBuGPLF6bdE3WfBGi5CXiJVVTIr/Db82CG', '', '', '', ''),
(47, 'Hồ Thị Hoa', 'hothihoa2510@gmail.com', '123456', NULL, '$2y$10$rABwymaA0X3x8ZTcfH/P2Ohai5kQgCNTth8u.dJuvcUKlU7Y2NJVG', '1995-10-25', NULL, 1, '2019-05-26', '$2y$10$mQoVJrXbsuMIw0tlyuCLAOSQ6jRBJBqNrKP6Rz2gDR3Jd9BMhxeFu', '', '', '', ''),
(48, 'Sam Sam', 'tuyetqtvp@gmail.com', '123456', NULL, '$2y$10$oDBxTNQn9lmYiSV1zu.C1efkj.bFl6Gb9Zu76yGq9eD2iFAcoeTHa', '1998-11-11', NULL, 1, '2019-05-26', '$2y$10$YtnGOoXLevRXtPcCsHS1.u/Co/EWHcMUfRWkjJA.Rbay1FjcA5tiG', '', '', '', ''),
(49, 'Đông Đông', 'duydongyudo@gmail.com', '123456789', NULL, '$2y$10$Yoy3wT8o58t3gvLXxHQiduua9O5pgyPu/duoxLvFA.pvXhKTTr/3q', '1997-12-11', NULL, 1, '2019-05-26', '$2y$10$fvqO0poet8wQALy59f9HZOheJj2nX.AY5PfNpGUQlkmMWSgKf9W2.', '', '', '', ''),
(50, 'Trà My', 'httramy20126@gmail.com', '12345678', NULL, '$2y$10$cjLblkTTfdAbInr/ED6tVut3cAFRMWNBOxgN4ExzdLOnNQnHtM6dq', '1996-12-20', NULL, 1, '2019-05-26', '$2y$10$d8PnkzhWCEA1grMiCsSJlOeBQFfcGL/CnNayEcUsoX43t70dyLqQu', '', '', '', ''),
(51, 'Lê Yến My', 'izymy104@gmail.com', '12345678', NULL, '$2y$10$a1p2k.isL00g785xyEQv4OvaZbov7UGwtItYs.qC/6X79Bghlkltu', '1994-04-10', NULL, 1, '2019-05-26', '$2y$10$.17PJ4tthvFOuUudgvAHvOedBDqSb6Q1fFM1fgHAsLmXKghHrkF12', '', '', '', ''),
(52, 'Nguyễn Duy Linh', 'Linh.ndhaugiang@gmail.com', '12345678', NULL, '$2y$10$eBNITSlv1goqz6texYBANuIyPRXDGL.n1hEHnQqjvX2G.eW5nOngy', '1994-11-11', NULL, 1, '2019-05-26', '$2y$10$98rVL7thGN8Yvl9Ia3BBM.GbHxyMbDkVI.UQ.u.Cv8L41uPn5GtBG', '', '', '', ''),
(53, 'Lê Thị Ngoan', 'lethingoan1998@gmail.com', '1234567', NULL, '$2y$10$vywY6kay8dz8py6Pcd/1T.cH2et4Cj5fOLRj55Nwj7ITU4513v5aG', '1998-11-11', NULL, 1, '2019-05-26', '$2y$10$puodBauEXiuXNekZyGPIwuaZ8FhRF9O8.yQLAmOccFAuweaxbmN/6', '', '', '', ''),
(54, 'Thanh Mẹo', 'mr.thanhwarmboy@gmail.com', 'mr.thanhwarmboy@gmail.com', NULL, '$2y$10$aPV9y9g3sOCH0Hp1XO2sLeBvt7Aq040swCmAtiBIGJsiQt4PpLG4K', '1994-11-11', NULL, 1, '2019-05-26', '$2y$10$KgGCjDhvK83VPIPvSkeiue7OKRXOWSShFkqsSUOqMMUwZRk8Iu0TG', '', '', '', ''),
(55, 'Như Như', 'Nhubella77@gmail.com', '12345678', NULL, '$2y$10$TUxCJyxAqFE9ofl9Y9UCyOibRRGGX8u/XEcIf05PZa8DZNctNDJRK', '1997-11-11', NULL, 1, '2019-05-26', '$2y$10$/n9ZPdxueB2Scu0RYL6au..T8X9hQOooOuyXpigDIgSz0/WH0abcu', '', '', '', ''),
(56, 'Kim Hai', 'Lethikimhai0802@gmail.com', '122346', NULL, '$2y$10$BcFzkckRV7K8aa5xSZMGne.JAkdY7RurdC0o/.xx3m8lrZ8LJ8w.G', '2000-02-08', NULL, 1, '2019-05-26', '$2y$10$985zZh9I/sYpCbvdoyFl0OGTlDCiYgshW7umfN6AfxNDjoAfVwCWC', '', '', '', ''),
(57, 'Thu Hương', 'vuthithuhuong03112002.star@gmail.com', '123456', NULL, '$2y$10$6BxM/i.zahN.uYkqR5p7V.xU9vKBqvf.1lRv9IJhGNcmZOXDmbM2C', '1997-11-11', NULL, 1, '2019-05-26', '$2y$10$tkwROErNvA9QUSpeYG/Fnu15s5u6XMpLD1u7IH2/gulbKMdLwRFpa', '', '', '', ''),
(58, 'Hoa Vinh', 'dinhctrla@gmail.com', '312345', NULL, '$2y$10$ucd39BWllmGD1gFXxmTw4uB4A7cBZ4aCmzIbO6BKBRvPGAU/xmT0y', '1997-05-04', NULL, 1, '2019-05-26', '$2y$10$.b4vU5rOyP7g8AFAi4LQuuGtrnA70fL7K1rnYZ03PJPZOa1Np/GAG', '', '', '', ''),
(59, 'Nguyễn Văn Trịnh', 'vantrinh194@gmail.com', '12345678', NULL, '$2y$10$zWXKR8RcMpPuZyjKmFBRkO4F1tJXEprxDoPAMpFklyl9K/PHFEjUO', '1994-04-19', NULL, 1, '2019-05-26', '$2y$10$qO9S8NPJMlOiZS2hRObjvesHGn8WJ2CJRQxfKtSra078wTfVQR8nq', '', '', '', ''),
(60, 'Trần Hữu Nghĩa', 'Tranhuunghia1997bg@gmail.com', '12345678', NULL, '$2y$10$e/drQRvJobDIZKFakqWh6uRsvVfsvR0QVMbTrx0dCv8y17srZYQPO', '1997-11-11', NULL, 1, '2019-05-26', '$2y$10$VN/iRtkxQk98OOwL9UJAtuDqRQ159e7ZDVRQ/DukzErJDhYpBR6Gi', '', '', '', ''),
(61, 'Ngọc Hoàn Phan', 'Nguyenthihoan28061999@gmail.com', '12345678', NULL, '$2y$10$zP0cd1klm.Q1O6HNBGszdeGOFVgGjZs2Cye5XuyDVXEVrTTC1n.Ky', '1999-06-28', NULL, 1, '2019-05-26', '$2y$10$S.vVPgSnXz6qF07bDYj/bO9RGas.ehap7q69OJQ98AdGmPizwyhHy', '', '', '', ''),
(62, 'Việt Hải', 'ninhviethai1999@gmail.com', '12345678', NULL, '$2y$10$CP5sOKafB/3CXYj5QimzV.1gPU.QkzqPUPSGqW0Aw1uzVsruuBbiu', '1999-11-11', NULL, 1, '2019-05-26', '$2y$10$EFw4wR3hjqa3Y/Y.fChXLO8KPdA3PM9KisbH1vcrGkyoPbGdMkkge', '', '', '', ''),
(63, 'Thư Auguste', 'Augustethu@gmail.com', '12345678', NULL, '$2y$10$/iLHwc1rlkho6lUU1dC/ueONg0zwPOI2Qtp3it2850MxoaUOQ7Vda', '1999-11-11', NULL, 1, '2019-05-26', '$2y$10$BHI7uYq1/Ad1nFX76BmGv.tWUyLwba3fbV7k4Kf43/NQIpLx8HkgS', '', '', '', ''),
(64, 'Nguyễn Tấn Đạt', 'nguyentandat.2k.yds@gmail.com', '2345678', NULL, '$2y$10$jlDXNZWlxOwqplC8H7z0yORUdLH4KzpJwqi.9wgpr0Pgxlca4AHLa', '2000-11-11', NULL, 1, '2019-05-26', '$2y$10$FXgXypasQpQAnAzbl7d/qOaZkK4qkV5SyvKsmefXt2ejDo4cUrvem', '', '', '', ''),
(65, 'Trong Nguyen', 'Ngdtrong1998@gmail.com', '1234564', '123', '$2y$10$OiY4dP7hcG63jfggSvKO0OM73xxT40c3mHR6p8qAqmWodkRlqDxj6', '1998-11-11', NULL, 1, '2019-05-26', '$2y$10$w/70OHrzplIKb3nYgUCjg.pJxR2QqdPu0ziIccFaAZbAg2bB5gFZW', '', '', '', ''),
(66, 'Vinh Le', 'vinhhul0298@gmail.com', '12345678', NULL, '$2y$10$MMjW85vrp81d5NCfdBAjmuRAzk5mQpoioaJoDcddovUALhfv8I8Ty', '1998-11-11', NULL, 1, '2019-05-26', '$2y$10$xR2cydyF2CcDNdzZofHj0O.ugVJD4My7jEXWFFOtpvILji/RK5NjS', '', '', '', ''),
(67, 'Phan Trí Nhân', 'boyka9865@gmail.com', 'boyka9865@gmail.com', NULL, '$2y$10$sKa3pJ.kHjRh7TsjLhFOIesga5gfmwOni3z5LxK2bZBN14nc/9lo2', '1998-06-05', NULL, 1, '2019-05-26', '$2y$10$S5t3XUUShzyQbFZ5NipQle7jG3NKsbc8a/tKmR50.LBy5/WYLSF02', '', '', '', ''),
(68, 'NT Hạnh', 'hanhvithanhvit16@gmail.com', '12345678', NULL, '$2y$10$0olU5hAsQXt5/0mWG17MluCONE.F5XnSPyUBS1b5ccO8cbbjf4IW6', '1998-04-16', NULL, 1, '2019-05-26', '$2y$10$Goq3cnJzs7KCfcxPMUzQ0upPdTb0JKjj/otKICxyLXNzGbgn1lCCO', '', '', '', ''),
(69, 'Mochi', 'tuananh13298@gmail.com', '12345678', NULL, '$2y$10$5kyy9u6EkNOdPRkmfAICpOZlqs4Hth6hSJhb7PXVpSAQ4DW/Mou7K', '1998-02-13', NULL, 1, '2019-05-26', '$2y$10$LfmLooCDSb50lauAqHy7T.SiTPwBQbvM0Q2ufdzngJi6rEjwGAoYu', '', '', '', ''),
(70, 'Kim Oanh', 'oanhbinh28@gmail.com', '123', NULL, '$2y$10$C.P9j0r/8pCVMOe1COfOieajdo0KUfsLuzXm2pOCu3M1/yb6dOWoK', '1997-05-04', NULL, 1, '2019-05-26', '$2y$10$ZwzKrLMnWNMz4VTW/fA3f.IxJ2z0NR8eiZa75h0kLlZmK9Iqtj2rS', '', '', '', ''),
(71, 'Bình Lê', 'lethibinh2004199@gmail.com', '123', NULL, '$2y$10$O3LhzR3YSUuatmtrIApxNOlCCV0NB2GTCqpao1mXfacMIFxeEcXUy', '1999-04-20', NULL, 1, '2019-05-26', '$2y$10$SFWUfhWdFO8ICJrBtdJoeewHMfQa/VVmBliCilmktwmLJsieqwN5y', '', '', '', ''),
(72, 'Chung Anh Hoang', 'chunganhht@gmail.com', '1234578', NULL, '$2y$10$Wt16bEC/T3HmnnCEDScZ8ebv/CBq1J9A3IjULJW/YZ1pynsPayBne', '1999-12-01', NULL, 1, '2019-05-26', '$2y$10$cYXZKhZQuwJMJqDsj.oM3e81NhLx1o1WfudZy0VgkxmD//rw.58ye', '', '', '', ''),
(73, 'Nguyễn Phong Phú', 'phuphuphu261296@gmail.com', '12345678', NULL, '$2y$10$zSoUzMDTcT84ahjdDMjnuuAFaEPRfrNqqaM13Vj6H6MNrA/.ZTtLW', '1996-12-26', NULL, 1, '2019-05-26', '$2y$10$im.utR9QONFWleUkuOF/KudHrXM5Fw3uXrkuB0OjFjd0WO69XineC', '', '', '', ''),
(74, 'Hào Lâm', 'haolamftn95@gmail.com', '12345678', NULL, '$2y$10$ael7M2WMkFV1jQBh2v1b7e3xS3aSSPbvkAgLhOBJapXfldIDsGbGC', '1995-11-11', NULL, 1, '2019-05-26', '$2y$10$2QSTCmZfcdZbvDU6OMNJRuQnC/mE6Mr9bah.WBE7pUKX8ctt3Qc9y', '', '', '', ''),
(75, 'Hoi Luong', 'luongtamhoibd@gmail.com', '12345678', NULL, '$2y$10$67jbM8c9yPVMld3DcOqua.Ht1ZQ7MIHCCdcjVHOtz24CGILDWhEbu', '1995-11-11', NULL, 1, '2019-05-26', '$2y$10$o5nQqlubdD2HFyU72w0m/ukB7rUoaxKPc3g/WAQ2juFkXeqz1C4hS', '', '', '', ''),
(76, 'My Xu', 'mymyanh898@gmail.com', '123456789', NULL, '$2y$10$PUAodH.6wnRRwTiPOUhhtedcW11CcOuWW3CEl65Bs3pH2EZi.PN2q', '1998-08-11', NULL, 1, '2019-05-26', '$2y$10$my96qRrefwLFTHHasufCn.2bfErUIfyUDgJBLXyvbVS6NdG2wD1B2', '', '', '', ''),
(77, 'Duy Toàn', 'Nguyenduytoan245@gmail.com', '12345678', NULL, '$2y$10$WtLGXvOhSZ1fZs1FB8nkW.bA828Co9/hJ.Mr6lweYpxDHfUHP/MQy', '1995-05-24', NULL, 1, '2019-05-26', '$2y$10$cEMMNxu1n6ZwZkCRg2EQ2OojHNOCdzQKObmkGAgJQYfZa0gVPrA46', '', '', '', ''),
(78, 'Lê Thiện Tính', 'thientinh8843@gmail.com', '12345678', NULL, '$2y$10$J6VFEvvqX2125Eu7E3ATMe9szplZfnzCGehUGtW1JmEymkqVyixsG', '1988-04-03', NULL, 1, '2019-05-26', '$2y$10$LglAQxm03u30IZbDh8NQ/uDV796cbfijCxmDpteEIXb6vJ4P8kyCi', '', '', '', ''),
(79, 'Huyền Trang', 'Nguyenthihuyentrang1795@gmail.com', '123456789', NULL, '$2y$10$twIRP9bx1bEnl9mO3M4NVeNCY3c3DMFTxKc8MvV/lozZKdbxuD.Qi', '1995-07-01', NULL, 1, '2019-05-26', '$2y$10$U.wXf4kknUuNuccDq65Y.uKePxqIJ8DD/q0gyF85UFGxk17vy9.zm', '', '', '', ''),
(80, 'Vũ Khắc Đoàn', 'doanvu93@gmail.com', '123', NULL, '$2y$10$ZZxBbEggcl69Nv8ZFURWwuXYotQW63h/XDRcZ1oW0qlrDHajlgF2m', '1993-05-04', NULL, 1, '2019-05-26', '$2y$10$0dm1.1hJbnaWYj0UJldrpupoVO4t50PazATVqBG8mx8wrLVLstd8C', '', '', '', ''),
(81, 'Bùi Kim Hà', 'buikimha1997@gmail.com', '12345678', NULL, '$2y$10$EDVKIBqOCR072RizPC7jE.mMKCePJkLbDJ7cQW6Wkfd0Yx1OW.9/i', '1997-03-12', NULL, 1, '2019-05-26', '$2y$10$eeBOV9YqRsyuQob4DhpJ7e4PEvZgEy30hUomVMUOl6xvJkqVOPQzu', '', '', '', ''),
(82, 'Minh Lê', 'Minhle11233@gmail.com', '12345', NULL, '$2y$10$tbkyxs47lbtLOXnfiPJuPe4hgg9ssn7gYnszftRc0cUr.utCAZviu', '1995-02-11', NULL, 1, '2019-05-26', '$2y$10$JypZUOUuD.arkdJn0AZcoeSNnId7aurGAS51wvz3Jgxb1UgWHPu3C', '', '', '', ''),
(83, 'Nguyễn Thị Hạnh', 'Nguyenthihanh.tp2016@gmail.com', '12345678', NULL, '$2y$10$DABZL1bxLD5pCD3bYQraY.YbwRrVa2hXjAUN2kmMGB2or8UrcT.i6', '1995-11-11', NULL, 1, '2019-05-26', '$2y$10$KdXi8HvUFqcRuyOcOX3Vj.SpnuTTjf5mkNwXikObfql9xwzi8s2Ua', '', '', '', ''),
(84, 'Đặng Huyền', 'huyenlinhchi2019@gmail.com', '123456', NULL, '$2y$10$UhHCDh6DLFYy7Lesf8/SZ.sgEnPihg21j3lXmc1b02.nPRATVuid.', '1984-11-11', NULL, 1, '2019-05-26', '$2y$10$1gaaaWIFyhhqqooS3GiiFOwWC/E96xL8GEbNfMOMgWcRpb1JmPGfC', '', '', '', ''),
(85, 'Kim Tùng Vũ', 'Kimtung447@gmail.com', '12345', NULL, '$2y$10$YR.KlfWwkkA8SbsQqydKsuVq0ZzD8qb2RNOkl8JE1r3tnDhVkjxTC', '1999-11-11', NULL, 1, '2019-05-26', '$2y$10$40IS.MdrRYYQu879VNGpQOpXstKyADFwT5S4U0SRdzw76gh/ouWuK', '', '', '', ''),
(86, 'Nguyễn Phương', 'phuongnguyendl96@gmail.com', '12345678', NULL, '$2y$10$UDxJ1qabDXCFJVwt7kPrxeqZXD70DLKdnsO0.eHA8nap6.gY4VXlu', '1996-11-11', NULL, 1, '2019-05-26', '$2y$10$k0nJ6DeTbBbm.ekm/O/Hk.tuC0JmhgxZ9ERfOOMGdUaxVIsxiiDKu', '', '', '', ''),
(87, 'Kim Cúc', 'nguyenthikimcuc96@gmail.com', '12345', NULL, '$2y$10$vVJGjcX0sqa.TWfg2jXrS.i2unqlbzOc/JfPJhzWiDDFabjAnxfh2', '1996-11-11', NULL, 1, '2019-05-26', '$2y$10$jAZeu4pvzDUqh7X6DR8xk.9I3geXsfyzvw4p1deA0uUHJB7vbjreO', '', '', '', ''),
(88, 'Ha Ho', 'Saimakita7@gmail.com', '12345678', NULL, '$2y$10$qYTSj.UvT7cLZRbCMGrAuOBQiuuL2ZP4/Vo3fmnYRHWtficieepoK', '1995-11-11', NULL, 1, '2019-05-26', '$2y$10$1cG/8ik4jTZktIEJfxGHG.h12lUn8AVpw4eGeEdVN/EdJWGFFdKBa', '', '', '', ''),
(89, 'Nguyễn Thị Nhung', 'nguyenttnhung20@gmail.com', '12345678', NULL, '$2y$10$VFLBzhVNv0v1fQYtUcY91.zaUFrZarY1XlfD4QAbzOJXG4YnfWlTW', '1995-11-11', NULL, 1, '2019-05-26', '$2y$10$DBL1JYJOqwp/lF9T1Z/KuO7wQcKJqYE/vMp9YpcZTOSiXa7o2binu', '', '', '', ''),
(90, 'Kim Sambo', 'luutrutailieu55@gmail.com', '123456', NULL, '$2y$10$4jNWROCB0P5YozLkTD41weBgdtQadoLnRuNI6Y29uhVjqHrTZ0GL2', '1995-11-11', NULL, 1, '2019-05-26', '$2y$10$KyicI9SePnm0MyTyDU3UIetDAMA44C4/9VUqU5k0n6rlUGAEq1hEu', '', '', '', ''),
(91, 'Mai Phương', 'phuonghuynhfpt@gmail.com', '12345678', NULL, '$2y$10$Vt8fIDwNm1v0KecdeanY1.x4prwx/VUkLdokQ6Vcb8Ckb7spsuzJa', '1995-11-11', NULL, 1, '2019-05-26', '$2y$10$vvbVPwkuuXY7p2S9hqhl4.h0S5UZ/e1Iocl6qDMpFjb/7kgbuYa76', '', '', '', ''),
(92, 'Nguyễn Bảo Đại', 'nguyenbaodai378@gmail.com', '12345678', NULL, '$2y$10$MhWwjAqJOOfpo4hWuVmkKuT5IA/H1s2iA5B1nAmmzS.fTjIaI2eJG', '1996-11-21', NULL, 1, '2019-05-26', '$2y$10$bR/nOgYj8YsbfSxgFm5tQOuPFAjPAWkrwXIXMJo0xvsDlLFfpUs7a', '', '', '', ''),
(93, 'Triệu Sơn', 'sontrieu2000@gmail.com', '123', NULL, '$2y$10$m4gPqn8znqoT7Qz1AfxrPeP1bjZpO6AljEgv7.68vMQLnnH8m.BtG', '1995-05-04', NULL, 1, '2019-05-26', '$2y$10$XUlI2vxanKkTk7ogNz7GTefKOWz7tgIS99C4wuR7cL6Qsf27ixeMK', '', '', '', ''),
(94, 'Hương Nguyên', 'keokeo3042000@gmail.com', '12345678', NULL, '$2y$10$5n2pzQy9bez9Yiw/d.iAK..7O3Wlrm.VTIjS3/pPHGdJgZiQvNfQS', '1995-11-11', NULL, 1, '2019-05-26', '$2y$10$gxiVXdNef9OrQccnTUvjuevItMgkOFWSCSspjsU0CFr3eIR8meMMm', '', '', '', ''),
(95, 'Nhật Quỳnh', 'voquangnhatquynh@gmail.com', '123', NULL, '$2y$10$QhgSFr4ihQFumofgf/7UAOhftoMLzDlE2.nFogfWDbzVY3.usPA9q', '1995-05-04', NULL, 1, '2019-05-26', '$2y$10$oxg9NvCWahyxkzGpe3zPK.PNV179oN21ZqLV2XlMlZT2zkZ8U5MSy', '', '', '', ''),
(96, 'Phap Phan', 'vanphapdn@gmail.com', '123456', NULL, '$2y$10$v25AQO.ZSiPGHel1.XVjROqKk4wH8M.CLkOTvSATu2H9ivmya8Z7a', '1995-02-22', NULL, 1, '2019-05-26', '$2y$10$FO16WAhg1dlvS.c5Uli5Q.YTVVw2KeptTtD5ff22ghfh2VGeJFcFC', '', '', '', ''),
(97, 'Le Ngoc Khanh', 'khanhln.990@gmail.com', '12345', NULL, '$2y$10$o1LQw9ThRGFFWpuU3tn98euXAHt3Rls.G2BjMaSq2fxY9.WEEUSji', '1990-11-11', NULL, 1, '2019-05-26', '$2y$10$g3luMLebmjnrrPDIxH8ULetmo9RMA.lkBATMjfugm7QDp956Hs0Ja', '', '', '', ''),
(98, 'Dương Thị Văn', 'duongthivan17012000@gmail.com', '12345678', NULL, '$2y$10$VspfHoyBH60.dFJ1gdE0r.j6ntu/sp51pwq31Is5NSovjcNSevQT6', '1995-11-11', NULL, 1, '2019-05-26', '$2y$10$qb0aTxTW1v04BO7N73Ylj.U8BXWIgb0ygm4LLBU5ZueU1N.iKpcOe', '', '', '', ''),
(99, 'Ty Nguyễn', 'minhtoan631995@gmail.com', '1234567', NULL, '$2y$10$801/gyev10RadOrSF44.HO72JWcvlCpeTMpkBIuA7eN7ISySVoUJq', '1995-03-06', NULL, 1, '2019-05-26', '$2y$10$1.ceDkUCkV0jrdrh0WBcx.oUYhoEqpF/kMluXcPQ4MIRMSId4Y6r.', '', '', '', ''),
(100, 'Thúy Lê', 'doleshin2306@gmail.com', '123', NULL, '$2y$10$0CKjhf3Jms5BiYvp9uXzrezJX.JUNijHbDYJhLv7LzWjlDbeXmoqy', '1996-06-23', NULL, 1, '2019-05-26', '$2y$10$TGN9Rauv0LntHQfgO2jlmeohP0Slhx5oVKjWRKdBbkJl/8Vkcnhcy', '', '', '', ''),
(101, 'Mỹ Duyen', 'peduyen9968@gmail.com', '12345678', NULL, '$2y$10$PVcnya3dQ6n.SSH.tJZEeOBWQeQyGDjcnwMRSQ9Mk4Rs3SPS.SaCm', '1999-11-11', NULL, 1, '2019-05-26', '$2y$10$JhosYRCvkEVtaDvT/.O5nelXFFvUcsHW5YqhXANdq9mkHHiJtYh/u', '', '', '', ''),
(102, 'Dong Hae', 'huyenlovesuju@gmail.com', '12345', NULL, '$2y$10$aIpPoyrAvjDTQv/JfHYF1exysmYfZEpKnzI.mBeRqgnrgNdIemVHu', '1995-11-11', NULL, 1, '2019-05-26', '$2y$10$pAw8i5/rzGaALZx3Sf8nn.8l9rGWnE0EL5dYEdqVc8FEHINE/pkvO', '', '', '', ''),
(103, 'Lê Alissa', 'letinhtinh1905@gmail.com', '1234567', NULL, '$2y$10$RNUIiRk08Jb9MieYgb1kGuDrNsUa8t62Z2NLnGbt0L/aiZYV0DsLS', '1995-05-19', NULL, 1, '2019-05-26', '$2y$10$t16UeLZp40N8rtKQ/bXV2eOfOyOc61RFNdj5GAUUR5/1lAi7tTg/6', '', '', '', ''),
(104, 'Xuân Nghĩa', 'Nghiax177@gmail.com', '123457', NULL, '$2y$10$4S4J7TEnmKbunHUgMCNS0utglIUT4gDwEacb0177FO7gYlE7q.W7u', '1997-11-11', NULL, 1, '2019-05-26', '$2y$10$o8JXHs.nVKxPiQOR.0U/Z.cV4PP9cOepYNE/aV0WIXuN/XkpmcmiW', '', '', '', ''),
(105, 'Vũ Quang Trường', 'truongquangvu1912@gmail.com', '12345', NULL, '$2y$10$nQSlpykcJ40.Aup/bGxFq.wYmIph3rGvhiFFIE62VIat5rYRKYJNG', '1995-12-19', NULL, 1, '2019-05-26', '$2y$10$UOZLP.UEShzSkYkLos8xbe0yJ96hLPbeWolNtCdxgFc0KdlkAisGq', '', '', '', ''),
(106, 'Phạm Thị Thanh Ngân', 'thanhngan5920@gmail.com', '123456', NULL, '$2y$10$n8PnQq1wP5V7hRro4zgsreebHZIVKUN0h5u7jlWMnY30IxxFEqyCq', '1995-11-11', NULL, 1, '2019-05-26', '$2y$10$6DDkDs5OGpYXlYrDkBycFOQo9h2vXlVBxrjg/AhV7MgVDKuC.54S.', '', '', '', ''),
(107, 'Phạm Thành', 'kts.spplt@gmail.com', '123456', NULL, '$2y$10$VtGi2Jtfn07CCam7mBmEV.mJ7DXSpbosKhPX5D4k9bNi.fkF8YR6S', '1995-11-11', NULL, 1, '2019-05-26', '$2y$10$7rufdr8FJ3XF3DqN6m5aROTeo833qoO5jZz.E9u0x52TdXgyTvbRG', '', '', '', ''),
(108, 'Nguyễn Văn Vụ', 'sales_hn3@thaihabooks.com', '12345678', NULL, '$2y$10$qtG6IyAUySMKIs/l1kCU5evP7GSUpbYWIiRZiL9nMAKXFMbCTizM6', '1995-11-11', NULL, 1, '2019-05-26', '$2y$10$7RIy77Z9ndba3x08Gz56P.cyl1nrua1W6arnmguiUkdwGWuakuANS', '', '', '', ''),
(109, 'Phạm Thị Thanh Ngân', 'undefined', NULL, NULL, '$2y$10$PwEQi49QnFtBgjkTlDB.IeBj6vj4EpZBJideKjOAEfc7YowhjSdkC', '0000-00-00', NULL, 1, '0000-00-00', '', '', '', '2258227274494960', ''),
(110, 'Lê Hữu Hiệp', 'lehiep040397@gmail.com', '123456', NULL, '$2y$10$vr65j8.uiB2vVJBmqaou/uw4YKSNBjJFXhMUwiDjNhN06xKSP4j.G', '1994-11-11', NULL, 1, '2019-05-26', '$2y$10$acauDgGjJVnry3nXUECHfOBvHFGfo5VcIstrtmcBaUrOWEjITGbtC', '', '', '', ''),
(111, 'Ngoc Anh', 'Ninhtieutich25012003@gmail.com', '12345678', NULL, '$2y$10$dksYUvKaYmtg99eW78ErkeSZIzvjRGWQoIfnAMaLnbNPq7lJ3.mU.', '1995-11-11', NULL, 1, '2019-05-26', '$2y$10$QIwdnDGNu7O96nqnIzZASu1XdlzFbP8q1a42fxOL4p.4EBEsi0KH2', '', '', '', ''),
(112, 'Kiều Linh', 'linhkieu2609@gmail.com', '123456', NULL, '$2y$10$F92Q9k95b0GpQzmK7hIWHejWoABap.6locUmc5uEjGzvO35jINUQK', '2000-11-11', NULL, 1, '2019-05-26', '$2y$10$g1uIz9A6N4XkRiOF9Ef4JuCNl1.8NQc.OW/15Uy3tbXk1S.elt17.', '', '', '', ''),
(113, 'Phuongnguyen', 'phuongpro1111996@gmail.com', '0523531009', NULL, '$2y$10$iJuNliHsz0y1OooXEL6nlO279pm8afiifgm3XxYC/mc6LurGgfuWC', '2019-05-10', NULL, 1, '2019-05-26', '$2y$10$o2/lXFkRMnimXEiRsN3/WuY4Sed5phkvw93sYBweooh0tMwdGHWVK', '', '', '', ''),
(114, 'Nguyen phan na phi', 'naphi2907@gmail.com', '0939183922', NULL, '$2y$10$pNKOkJHCj3MXynfmzI2jj.krXJOCF9oBd3KE/obBG1gVjs5WkuxKK', '1997-07-29', NULL, 1, '2019-05-26', '$2y$10$wsgeG2biNCb/gQbUQsidA.vNvZEyTIu1cMCoHteLCHDsWCIPq0D92', '', '', '', ''),
(115, 'Phạm Quang', 'quangpv007@gmail.com', NULL, NULL, '$2y$10$VSu6A.kJq4zwSOJ/HDM0iuydDhYfsCMQYZahdmCqN31MmWV0C7mmS', '0000-00-00', NULL, 1, '0000-00-00', '', '', '', '', '114666649186328706738'),
(116, 'Phạm Thị Mai', 'pmai96684@gmail.com', '0964890906', NULL, '$2y$10$V54MC3JAPnPcEmN7Y7pZiu67S4rUU18qqjO03BCTok6KeUfwUOK/y', '2019-05-26', NULL, 1, '2019-05-26', '$2y$10$fUah7Vv4xDXBf7RdhEmYleDn2x/qAYr3wp0F00Q7rssmJD/eiIWwS', '', '', '', ''),
(117, 'Tao Van Cuong', 'taocuongmv19@yahoo.com.vn', '0347024816', NULL, '$2y$10$ku99pK9kMSEOCjFGQgdtc.SrjDzVEhJtaP1UCgo8500jnOM3hvoLe', '1983-02-06', NULL, 1, '2019-05-26', '$2y$10$m6TgbrX8ZfFZt0eZ5fb0D.N/y50PHn9Pvup1MKcE1zICxPeGh.4pi', '', '', '', ''),
(118, 'Ngoc Anh', 'ninhtieutich003@gmail.com', '12345678', NULL, '$2y$10$tEVxLgxszSAIQQ66RjTc.epiYUvrksZk7FA7IDwkYjibG.mS4hawu', '1995-11-11', NULL, 1, '2019-05-27', '$2y$10$cK5pDsfrSm1n8wxf.fVMfO9AlGxDNR5ctqO2MJw7q4o67url7X/u6', '', '', '', ''),
(119, 'Hồng Vân', 'nthvan237@gmail.com', '702788158', NULL, '$2y$10$F24Fam4sG4/sHLTtblXQZ.3jn0AEQCdKTKhTM5tVNi1u/iaUpUVVa', '2019-05-01', NULL, 1, '2019-05-27', '$2y$10$vv2GyigLRi5U8VKymFAOmuFG5JyX8V9iK26D0.8wuFrdLZ7G8lfN6', '', '', '', ''),
(120, 'Nguyễn Thị Tâm', 'nthitam1@gmail.com', '0334285126', NULL, '$2y$10$z/2HH5pSzxHYg8zjfF0AQu47YoNf2tfg58YK3hRYOM2bP4GdPfgi.', '2002-12-03', NULL, 1, '2019-05-27', '$2y$10$3gqdF8aq/YDOFHi1aOxOt.CQwyz.mt6HrMZWoNk1zSiiHQJ9AgKhO', '', '', '', ''),
(121, 'Minh Nguyễn', 'minhnguyenbm82@gmail.com', NULL, NULL, '$2y$10$AZaAVPMF9Mlu./mCIU3Ff.HGlhe466F1FrqV7hxJ5jqjkARuIJGD.', '0000-00-00', NULL, 1, '0000-00-00', '', '', '', '2347613185514216', ''),
(122, 'Nguyễn Thị Hồng Hợp', 'cogan726@gmailcom', '123468', NULL, '$2y$10$M2ScYAfZJQbqpNbJL4SVCO2OOHgYzQbPQnYCYdqIKTKHMB3S4uGIG', '1995-11-11', NULL, 1, '2019-05-27', '$2y$10$WSMvUOrk6f1iyxlBPyteauBBziijsHC.4PAhRVX/PkZ0igH6/QtjC', '', '', '', ''),
(123, 'Hoàng Hương', 'huong121020@gmail.com', '12346', NULL, '$2y$10$WDoFsymtrVA/BI8oYrn60exCtm7VrCNkxpooEPhVFcNj6LZTeiGe2', '1995-11-11', NULL, 1, '2019-05-27', '$2y$10$kVhBr9MY9gihc3tJMoylteKKfjlIGMbCtVC0ubZhjB37.nX6u4dLy', '', '', '', ''),
(124, 'AnhTuấn Đỗ', 'boykieu_kocangirlxinh_8x@yahoo.com', '398080316', '94a/8 phan chu trinh - phường cam lộc', '$2y$10$eG/m7Q48SZVpYzBl3cIP/OBV9BlJEs8BkkHpekCACMuycdfT.2fE.', '0000-00-00', NULL, 1, '0000-00-00', '', '', '', '2207393919387566', ''),
(125, 'Nguyen Thuong', 'gagoyp@gmail.com', '+818085048600', NULL, '$2y$10$sw4.kYwSIwByEuxhlvYYAeJSjpRAXY1OCD6WLBvCikTU1sZHtyI3i', '1991-12-10', NULL, 1, '2019-05-27', '$2y$10$Y.tWq8OIEkJfC9n4n2b6nO4NEbpWmftBdnIFpKZaV4ZXdLJT0WDIi', '', '', '', ''),
(126, 'Trần Thư', 'tranthu12032003@gmail.com', '13456', NULL, '$2y$10$S8KpxaVXKfD2G8zqc1Ron.phf8kwMcGrf9Tv6QTm9z57SfRLrAUZO', '2003-03-12', NULL, 1, '2019-05-27', '$2y$10$8sLBuzpELPkn.k12G2Y4NuloGuqMme.slIzJQnnpOO8vhx/MkZx4a', '', '', '', ''),
(127, 'Nguyễn Văn Đại', 'nguyenvandai027@gmail.com', '12346', NULL, '$2y$10$ImFluqrm/V90DxtFJ68lweCuTLjmvh699lEAoPmh1bDo9mz9M.rLa', '1995-11-11', NULL, 1, '2019-05-27', '$2y$10$534ULlDerIdGCR22ywq8XuzMrO/mlVpcDgPW7HOM9mCZRMsZ1gssK', '', '', '', ''),
(128, 'Hằng Trương', 'Hangtruongshinee2910@gmail.com', '1234678', NULL, '$2y$10$3JyieaJVz.RhQSZJqEd0BelI.nlJuSiT6IB8tbMxYM6ot0v3os7ES', '1999-10-29', NULL, 1, '2019-05-27', '$2y$10$NywsrHtkGPI28DZHeioghOl.2SRWGMxYoZ2MgVk6QWEXGe9gEcNmm', '', '', '', ''),
(129, 'Trần Như Quyền', 'trannhuquyen2810@gmail.com', '12345689', NULL, '$2y$10$gDOYb4IMLsbcq9KMCgvMZuE4JcRTc6KRefWyCmcOe8NrJOT2vkcx2', '1999-10-28', NULL, 1, '2019-05-27', '$2y$10$OuItamEi.o7HrfG3UWCPrOMs6tMz.SPJmXGnryctJdqApXqvudXYa', '', '', '', ''),
(130, 'Thanh Tâm Deutschland', 'thanhtambavaria@gmailm', '0973310575', NULL, '$2y$10$21cV8kzVxS/h3MAoBRnrs.l2s1phODWTdIEOj6D5T7k/xbu3uDea.', '2019-05-27', NULL, 1, '2019-05-27', '$2y$10$QAZp5Hf81s.e69YoRf4oJOmYblu4lofXEsYFn.euhLTPsVkpXAP2K', '', '', '', ''),
(131, 'Doremon', 'vuongnguyenlkdn@gmail.com', '123356', NULL, '$2y$10$b.nPzd8zEHjoGRl8zbJH2ehjjla62hHN3Cba2GF69EuGD.DpyYUqG', '1999-11-11', NULL, 1, '2019-05-27', '$2y$10$D83/2TG3e9uBxQ6bOFg9XO5V2idM2fFNQwAPwbtg/D3jPWgB3Voi.', '', '', '', ''),
(132, 'Nguyễn Đình Trung', 'Nguyendinhtrung90@gmail.com', '1234456', NULL, '$2y$10$VWSdio6aXTNSbrsHr5Evpu0qAD/xw8jd5v9dVMnNsQAgePoO2Xmr.', '1990-11-11', NULL, 1, '2019-05-27', '$2y$10$mdLYRjQyaJgD6eg2lVk9res0pN0xEV613ALTPqNGqqBsV1.KHsY/S', '', '', '', ''),
(133, 'Mộc Mộc', 'nhokmiko32@gmail.com', '1233', NULL, '$2y$10$LXpgj3e6TiHX3wrtpuE/ReS9ByLjZP9jJxkCrKG/nAa5M0rtjQOHC', '1999-11-11', NULL, 1, '2019-05-27', '$2y$10$yR1BNUIEHPv7pyVnEBlSDuSijCgkTIRn4P6yzwtbhSinkcvy2TbXi', '', '', '', ''),
(134, 'Uyên Nhi Dương', 'Uyennhi832006@gmail.com', '123456', NULL, '$2y$10$3VlodUy0c0tnTOfvjriNgukDvFfS3jVXUcBV.n2gm276YXGsAK7da', '2006-03-08', NULL, 1, '2019-05-27', '$2y$10$OosTZXZNQqdff21NjzWc/Ov9bXbnNQVLzO.y2EgSb1zsrxO8I/aFu', '', '', '', ''),
(135, 'Hồ Hồng My', 'hongman1611@gmail.com', '0388429107', NULL, '$2y$10$/3ekW3fPD6kPkgNKT6jYKePPDyE5FGhOKYiKc/RRw5yhhj9J6fbWq', '2019-05-28', NULL, 1, '2019-05-27', '$2y$10$Hv/gt3.IdwIYU0b1RPQiheenH.UQ5QCEENPrZU7FZ6Hy5OEZo7CXa', '', '', '', ''),
(136, 'Duyên Đoàn', 'zonzon310896@gmail.com', '123456', NULL, '$2y$10$us3F.iMiOyUpNEfRT6koSeDeucbAdq.DKMroCNrA/nbEpPliQm1qm', '1996-08-31', NULL, 1, '2019-05-27', '$2y$10$bXY1r/BDQXl1gDZfCGMzw.fLDUdHP6QW8NvcAc1asUs2xcO7wdR/K', '', '', '', ''),
(137, 'Trang Đoàn', 'trangdoan1191@gmail.com', '123456', NULL, '$2y$10$ff830ejIy5yZSY2DznnDNuWoj5ecFTMnS4/7vxmFvDAY54zaGZf0W', '1991-11-11', NULL, 1, '2019-05-27', '$2y$10$V.uKyEgQjU4zkpxYK2yaYelXz6QzwHD6Zv1FGzqHtRbYLKbVeG.bi', '', '', '', ''),
(138, 'Nguyễn Mai Hoa', 'hoamai906@gmail.com', '12345', NULL, '$2y$10$9w4q1NaSgz9jQIEny8pG7uasANzUQIj.EVLKEgvyKTDYttp/asp.q', '1996-11-11', NULL, 1, '2019-05-27', '$2y$10$K08Rk7kOfOM0V66RzKY8eeU09Uar4esBv4CXHJRvy2yGIZgh1q9Xa', '', '', '', ''),
(139, 'Đình Đạt', 'dinhdat0918@gmail.com', '12345', NULL, '$2y$10$OJUFIAxIgeTJPvBO5gbTSupfTNt.qHDwG5aFynvhLIJHRzIQrysm6', '1995-11-11', NULL, 1, '2019-05-27', '$2y$10$NCuK6UBEBOTwwvVLmDn/JO9mdkhFKiAWtqRRf9oMp2S0TpixeEb3e', '', '', '', ''),
(140, 'An Nhiên', 'Annhiena4@gmail.com', '12346', NULL, '$2y$10$rRUeKejKSbgxAMpiqfVqo.hNqX58DzzS58gXUMhAESXLddiBHjeuO', '1996-11-11', NULL, 1, '2019-05-27', '$2y$10$ip9oFOTb0V.Q7EIexIzPcuy6ptklOT3aGrTJLBW51yhD3SCYqtxyy', '', '', '', ''),
(141, 'nguyễn thị hà my', 'mymotnguyen2@gmail.com', '0392009222', NULL, '$2y$10$pKWmwiznWcMfIuEur8oY/.79jaO3kvQPmDCnlB0qdoEq7m/BVtrBu', '1997-06-07', NULL, 1, '2019-05-27', '$2y$10$JG78Yp4g8nqBFWvtAzoTsO8jNHoO12yDlCSrlUC7lSxNd6YwEA6BO', '', '', '', ''),
(142, 'Nam Phạm', 'phannam1608tb@gmail.com', '123456', NULL, '$2y$10$i2P2g9cvwAPM9Dbz1SBBy.7RLzbnAoaoeizaoNlG2JzmP3TQJjVrm', '1999-08-16', NULL, 1, '2019-05-27', '$2y$10$sWxB0geEDgoCHAZPk0tBTOWwBljy6FyMQrCjDUXbQ655PUwBReGxi', '', '', '', ''),
(143, 'Tan Quan', 'huynhtanquan2018@gmail.com', '123456', NULL, '$2y$10$sHWwovtPDy4MeOyP5HiIAeeUMZJm1I4P5LZLk2/yyl6KD1TBAolGK', '1999-11-11', NULL, 1, '2019-05-27', '$2y$10$xNvtTWsolUfY03xJ8DzaiOwJ0.GtsMEvRoL1v/IomiMu.4t1LQF1y', '', '', '', ''),
(144, 'Dũng Hoàng', 'hoangxuandung311@gmail.com', '1223', NULL, '$2y$10$vH4mgs89iZePQiFPicINHu7MEuyH3rc3/W73T66s065oLban0DDSm', '1999-01-31', NULL, 1, '2019-05-27', '$2y$10$s.P73aHx2n0LH.1ckCSB1ePKp2P7Inhw.OXiK9v63YbiHlPMaypMa', '', '', '', ''),
(145, 'Cây Phong Thuỷ', 'Nghuyn79@gmail.com', '12345', NULL, '$2y$10$LYfsRiRtV0pXAZ2yU0caauk9iPfj/uRn8ECyckhcyf2vjJCa59oQm', '1999-11-11', NULL, 1, '2019-05-27', '$2y$10$xoPwPxPsW0E.hSKVEVmJ6eoyrnzK4LSaWUKOxDJWnVnpqsnMUGvPK', '', '', '', ''),
(146, 'Đỗ Thị Ngọc Sương', 'ngocsuong1511.hce@gmail.com', '0372109188', NULL, '$2y$10$8e6ZiI.JPFBjNl/sEp6rjumJ1JDvrm5guHgbd6DB6SY6yhM.snBQy', '2019-05-27', NULL, 1, '2019-05-27', '$2y$10$l04vVdkJcqUJsilivaCptekCYVgvtWtsBBhhXohF745/ZRo2rKBf2', '', '', '', ''),
(147, 'Phạm Tuyến', 'phamtuyen0369@gmail.com', '12346', NULL, '$2y$10$xJP0sskK3Rz3o7TY93N1G.bPLAJug3mabjYK0shWECHCFL2ULjPaG', '1999-11-11', NULL, 1, '2019-05-27', '$2y$10$zJ6RKvVvCkWOF04AL.ggberHxKsa9A4jEZgmpYV5ibEdQ3zxvIsDq', '', '', '', ''),
(148, 'Việt Hà', 'daothivietha99@gmail.com', '1233456', NULL, '$2y$10$jdCu0mRhyvfVMlKuKMzAM.GwH4ogkOr7gX68lg.HLy1CaFCrqrvOa', '1999-11-11', NULL, 1, '2019-05-27', '$2y$10$OPPIZ0GdHNpl7ALbMWgNbOctbfLrdiZHqsQTLCM9Dm/ErtFH0XHKm', '', '', '', ''),
(149, 'Tâm Duyên', 'huynhthanhthuy.0909598@gmail.com', '1234678', NULL, '$2y$10$phIVO5CfYeuyjKubWhLNb.rOPHzFH4HMWvUEB3v6plpF4nEtHyw8m', '1995-11-11', NULL, 1, '2019-05-27', '$2y$10$S8pkiVlPNKMCNjS.deVNEe7uH6J2q8Fm/gzg3mck9Sdrgcjli20Qe', '', '', '', ''),
(150, 'Gấu Trúc', 'Vanlun99ht@gmal.com', '123468', NULL, '$2y$10$dryAkzWT7gFqBhf0RP1RAubJjy68ltTdKQ2eRh0HMSVadUAA./IV6', '1999-11-11', NULL, 1, '2019-05-27', '$2y$10$52nCdYQflb3ou6RxNfLhkOas6rwJT1C1vPpeiLDudtZCwuKjthyKS', '', '', '', ''),
(151, 'Nguyễn Hữu Duy', 'Huuduy05111999@gmail.com', '13456', NULL, '$2y$10$WakSyVtYVwSJwdvtCl8H5.88IdnQ/rPyoDpicZCA1aUIg.oTWTLwS', '1999-11-05', NULL, 1, '2019-05-27', '$2y$10$yezR4iMqSvih.EdMtrxDSeF2HJdsXS1NggdYY93sYnUuqH5jZXdoC', '', '', '', ''),
(152, 'Nhân Lê Doãn', 'doan.nhan95ht@gmail.com', '123456', NULL, '$2y$10$BMbhr2MQrEyVM/EjQihKiOeMFef2nPV5Xi2ECWPg34XmUkr5BPDAy', '1995-11-11', NULL, 1, '2019-05-27', '$2y$10$deYJxcKbfZJ861OwvQrPSOYYLlZEatK/Xf73OMyiM26RnWL4h/5ka', '', '', '', ''),
(153, 'Tuấn Minh', 'Ngtuanminh995@gmail.com', '123456', NULL, '$2y$10$vnLnL3UmJKv32zcaD9tSWOJT7UCtbp9twCutF6y55.g/xIWKhPAge', '1995-11-11', NULL, 1, '2019-05-27', '$2y$10$17tP/suRcnIatiH3RQP2dOOrZcaZAqb3OvtU6dhURj1sPY/P84b1.', '', '', '', ''),
(154, 'Kiều Oanh', 'oanhkieungo888@gmail.com', '0908538520', NULL, '$2y$10$W8CelABUMw8rbvTSIzFzjefFRA8UAA7JfwZmR6RYBPxubXt3jWKFC', '1992-05-09', NULL, 1, '2019-05-27', '$2y$10$0W84rzuJKCttzqrF0JNjSeqQQnLw6ilURx5jMjxbIcs2UTIqj2oUG', '', '', '', ''),
(155, 'Kat Sara', 'hao533899@gmail.com', '123456', NULL, '$2y$10$JfPB4iWkPOBX1s0qG5gDCeEXxYtOE.Wf/2p/v3RVlMYA3qSpMl7tS', '1999-11-11', NULL, 1, '2019-05-27', '$2y$10$qHnD5lVAuS46SCZgH..2BOZJrarFZO4Bzjt2LzF7zaXseDbTLkmfa', '', '', '', ''),
(156, 'Phan Duy', 'phanduy0106@gmail.com', '123456', NULL, '$2y$10$6gdt7eGe3l9Jq.9mfXGhE.LSrmou172jZQqLoKATT7nJ.8MYf5z0W', '1999-06-01', NULL, 1, '2019-05-27', '$2y$10$o5ZtLwXWh7yrqDJEYzpW6eHkCM6KKVbhoWNj0HH42TbmDToDc7XVy', '', '', '', ''),
(157, 'Đào Triệu', 'daoxuantrieuhp@gmail.com', '1234678', NULL, '$2y$10$wOSJj0aJJZZRVarjI0yYN.MVDhePdS7O8VhtjI9xBGYcVyD/0riWi', '1999-11-11', NULL, 1, '2019-05-27', '$2y$10$FJAmxpQ4XSHY6dNFwvv7/O01lY.YCdM2XnPphCP7.kdO1bqrHIB9G', '', '', '', ''),
(158, 'Nguyễn Xuân Quang', 'Quanh14081996@gmail.com', '123456', NULL, '$2y$10$zi2LWrgQ7C5qYvQZrmACZOJrWl1v5S0KtXkoRHdv0s97MdmGu7Q5u', '1996-08-14', NULL, 1, '2019-05-27', '$2y$10$y508KaIBfg9FsQI.ZUeZtuLqeREHokSqTyRRvRZ8OQHkAYehWU1nq', '', '', '', ''),
(159, 'Nguyễn Xuân Quang', 'Quang14081996@gmail.com', '123456', NULL, '$2y$10$inef056BAhPtgDVtjjVxf.fJ7zZiRF4MDKnKV2f0YJ47SjhMk6RXK', '1996-08-14', NULL, 1, '2019-05-27', '$2y$10$CpObIejEW.gCH26elWK3XewWaOtYoHrgwqpEyA3.xaLV67wmYkK1u', '', '', '', ''),
(160, 'Nguyễn Hải', 'Tanhaiflp@gmail.com', '1234678', NULL, '$2y$10$QQqHV9QsxSMXb8neAKD5pOOEKGt1q2Kr9HnQeNIEGPn.ZwP/TgyJa', '1999-11-11', NULL, 1, '2019-05-27', '$2y$10$/XUmjPjYBwzIhkmnsH23ueyu88cIOIf.txvTbCysxpzCapM4VDdZe', '', '', '', ''),
(161, 'Phụng Tiên', 'Hpts109@gmail.com', '13456', NULL, '$2y$10$EHf7zBPbtgcy2D9gOuk6Tu/fwcUcX4j3WpUrY/0B0Juhjw0hrBp2G', '1999-09-10', NULL, 1, '2019-05-27', '$2y$10$wSgHIOCdfTMDShqv4vYcNupYVCvYKPKBvBOD0KsYEbcXomRu9Bjui', '', '', '', ''),
(162, 'Vy Nguyễn', 'nguyenthituongvy19061996@gmail.com', '123468', NULL, '$2y$10$Jgq7OBubnjslZ9gsmOy9xO8IWou8yLdVXsKdN6qJ.GNdl0DzVoQZ.', '1996-06-19', NULL, 1, '2019-05-27', '$2y$10$WKnb9VChOrvDcH.Yhjf1D.tIYUouwKIwoz.dV1ygShGZpIg1ezmpS', '', '', '', ''),
(163, 'Hùng Đinh Duy', 'dinhduyhung99@gmail.com', NULL, NULL, '$2y$10$VayQCmFyo6hRcHDiIvSJqu6d4gS.uuaaxq5DKkcCWjzdyaWRsVYDi', '0000-00-00', NULL, 1, '0000-00-00', '', '', '', '', '103725736002054315029'),
(164, 'Viet Hoang', 'Viethoang1263@gmail.com', '123456', NULL, '$2y$10$5B6g5dv1VwLQDO0V7tUYEeN87uvOnUgvEpAdZu.lgYWDMYUlPrpAm', '1999-06-12', NULL, 1, '2019-05-27', '$2y$10$tx.ljuT617PVtyfVyelHVuyX.2QK5V1vJzToUI2HQRKZ63AvbbRHm', '', '', '', ''),
(165, 'Hoàng Thắng', 'hoangthanghg1508@gmail.com', '123456', NULL, '$2y$10$O8JtT9/L/GuB0rVPDZALf.sKZmKODHUP15vxQUW4/eUTaNFRdleT6', '1999-08-15', NULL, 1, '2019-05-28', '$2y$10$fDDah/dQHdU2ycmXnapBhullGmpNgkJeqEna/nqnjmmfqUsiTbADu', '', '', '', ''),
(166, 'Trần Nhài', 'trannhaiulsa@gmail.com', '123456', NULL, '$2y$10$GoGjytQeX7jvvJCMS.gWxOKJbGJ8pFE/2NPXIvfuymCKVd3mHHCnW', '1999-11-11', NULL, 1, '2019-05-28', '$2y$10$S8mys7EwZaAiEFVjWgOcguyHisorwJGjkDJqRSDRG7yGrqhUt8fVu', '', '', '', ''),
(167, 'Lê Phi Yến', 'lephiyen2910@gmail.com', '12345', NULL, '$2y$10$cbpXmwJ6X4NSUse4x0CtQOvR4jrVxuno2GqwU7RlmO1sLeN39py8y', '2003-10-29', NULL, 1, '2019-05-28', '$2y$10$V5oBoL/8ztbUacJBPyof6u7TDhXWXKqG.GsDn2Rbtl.XjsIBdp9jq', '', '', '', ''),
(168, 'HV Việt', 'Hiep1032000@gmail.com', '123468', NULL, '$2y$10$Vcq.NnH6e455ccysZ/ayLuMitbLEvEwyt7HdKygYyk5n1cOCB5tqO', '1996-03-10', NULL, 1, '2019-05-28', '$2y$10$XleX6G55jM2hk0GCcOH3JOxkbF3ccKxTcAADCjBahGG4QrKC9vD0e', '', '', '', ''),
(169, 'Tiến Dũng', 'dungcao1008@gmail.com', '123456', NULL, '$2y$10$icwZlhUKAuIDD4sKQXLET.TvgiQaGTtd5VYgK5kn9XPxEVWFd0NQG', '1999-08-10', NULL, 1, '2019-05-28', '$2y$10$zIsiv5I3kVtVm.gqfQobGuLzB1u7HMH7y0dL81DEFJinCeXrMCf3S', '', '', '', ''),
(170, 'Nguyen Sa', 'nguyensa.cnk48@gmail.com', '1234678', NULL, '$2y$10$jaD6Z/CLRlY3Y7HdYxKmSe6NspIP1sTbFsU9cF8MykZrvKmVsy/Rq', '1999-11-11', NULL, 1, '2019-05-28', '$2y$10$hp7yi0gjY6L6HCZjMP7oBeNNdckN1lMli/IixF8gVupoX3NDGkrSu', '', '', '', ''),
(171, 'Trúc Lan', 'builam608@gmail.com', '1234678', NULL, '$2y$10$j3UtzyTXAtwW0.eC2A4XUeY1cpcP7Un.p4vdPHNTD3/SstB0hmrBe', '1999-08-06', NULL, 1, '2019-05-28', '$2y$10$snj0lWAGPuQ7frM7aoE21uWEdeTByu1XaZjM8IZ3ndeix4FW3kT/a', '', '', '', ''),
(172, 'Le Thu', 'lethu71094@gmail.com', '12345', NULL, '$2y$10$OvvfHZEMiO9eWyehF4EctO2LEbp8KbcQBy/a0tkwif06ri8If3M3q', '1994-10-07', NULL, 1, '2019-05-28', '$2y$10$IG7owWP.aqyGuYIYsUrGx.O1GA9Weq.WPJH9yI0PgD02unuQWMcRC', '', '', '', ''),
(173, 'Thanh Hoang', 'thanhhoang2962000@gmail.com', '123456', NULL, '$2y$10$RXVDr/7x2jKa/PaWJ0UCbOqyJMNEZ0OzeKiw3UNJ8WJ8mONYMGGza', '2000-06-29', NULL, 1, '2019-05-28', '$2y$10$eKO96vIDrY3VOU/kxoEVyOf3c1SGry7tX06IpNyD9aVP7gio1FdLm', '', '', '', ''),
(174, 'Đoàn Ngoan', 'Dngoan102@gmail.com', '1234678', NULL, '$2y$10$GzyZAzNSx6lBGekuAIwIQ.SkjlPDmE67t.OKuLbvtYFG.WQzQclQG', '1999-02-10', NULL, 1, '2019-05-28', '$2y$10$bgX2c97xSpB3M1ImoQ0Ri.NiL6m4Rhs0HAxsAHPh6.J3I6Yqg6m0.', '', '', '', ''),
(175, 'Bi Bi', 'pkien18896@gmail.com', '1234678', NULL, '$2y$10$n8odu0UAVf1YLM88ihsAn.fbXq3llhyTH/BTidJBOYnQnaGf/GnwO', '1996-08-18', NULL, 1, '2019-05-28', '$2y$10$bH3yIYiGA/lnLFaJ0dn1lepkeHHJ8I.aY/cVPHv0GjIBhKhf.YWOu', '', '', '', ''),
(176, 'My My', 'mymyu969@gmail.com', '1234678', NULL, '$2y$10$bZdlUhhtymw5ugooZRizIeTrM2DYAl7Xthi7pZm2HslPwrcWbJFlm', '1996-11-11', NULL, 1, '2019-05-28', '$2y$10$f8pUxIZ29VEvtKa7oDnRNOy1iNfyj5JhmBo4FNE9ObB/dWw.p1Ql6', '', '', '', ''),
(177, 'Xuan Nguyen Tran', 'xuannguyentran123456@gmail.com', '1234678', NULL, '$2y$10$GXDy.Kw5BxnVDsbjx/bJHOXuDygHsj4Q04801bWpyMyZHnGerXaMa', '1996-11-11', NULL, 1, '2019-05-28', '$2y$10$bdbZOjoRwhaiPOD6UZXVo.whwWsfV8RaxeK0LS2NbQiHaeEWVG35C', '', '', '', ''),
(178, 'Đặng Thiện', 'thiendang8791@gmail.com', '123456', NULL, '$2y$10$p734OYVPM3Ebdsdhug1d7utnmrxfdWLOjYlHk4QErfEo1OMXXGBni', '1991-07-08', NULL, 1, '2019-05-28', '$2y$10$MChCXZyV89A3y4XKf9nYFuhbBV6EY9jn0.50L.T/S7TP2Oj5maSKu', '', '', '', ''),
(179, 'Nguyễn Quỳnh', 'Ngquynh030104@gmail.com', '123456', NULL, '$2y$10$8o6O5U4JDOIvcDijyIy1au5JBK4afDDVGZ.BK2AnCi2mJHd0o6YYC', '1999-11-11', NULL, 1, '2019-05-28', '$2y$10$2qNVyRUFKnpOmxFD18r9teaZoA2R/8rg9XLk6dSU9HguyTzs/U0m.', '', '', '', ''),
(180, 'Phương Thảo', 'Noname7652259@gmail.com', '123456', NULL, '$2y$10$.uG/MyikbCq7Y0Gn3o9HIOBoVlLj0gHmBp1RoG4JnIhq.Jwaj.Wzq', '1999-11-11', NULL, 1, '2019-05-28', '$2y$10$vcl6Aw/wySnM1vAlxQA0CeJfRxK4f4kFK0jDPvYeDOQvAXGoEOga.', '', '', '', ''),
(181, 'Đoàn Minh Tài', 'doanminhtai91@gmail.com', '12346', NULL, '$2y$10$fR5g3cLF6YzWzCOq4hvrce6I0STWbU07OQd7QpFMSjlqorpiRURBa', '1991-11-11', NULL, 1, '2019-05-28', '$2y$10$cOk5ili/CXRlZX3cedybaO.ynfw/F35LGXMz2UC6pB249QS7QhU6S', '', '', '', ''),
(182, 'Ngô Hồng', 'ngohong2711998@gmail.com', '123468', NULL, '$2y$10$rxV0q2FC0IvzuCo2Y4dGU.pr5NQJ1Cdfqxc/nlhkh14Z.p4xhb9O.', '1998-11-27', NULL, 1, '2019-05-28', '$2y$10$p/8Ib3cXI795oNqeOlNWO.svC1wyWXpVWPxwQfqXvR2ynmLizTRMy', '', '', '', ''),
(183, 'Lương Thị Ngọc Kiều', 'luongthingockieu87@gmail.com', '123468', NULL, '$2y$10$IOQqlnvwFNJCfdbVUVf0lOeDtdjHpzY9ZSjd/H9fZ7890oUD.w/Hu', '1983-11-11', NULL, 1, '2019-05-28', '$2y$10$qalIp65AwlwmedR5pacUm.zB5Se9/ziGL0cGaCr5PtOGr77bsexM.', '', '', '', ''),
(184, 'Trần Xuân Lợi', 'Tranxuanloi298@gmail.com', '123456', NULL, '$2y$10$1yjT6mdHlzv3lPHX0j.9bOp1i7kOzVt7QwSrv.cqu.y/AGSwh9yiO', '1998-02-11', NULL, 1, '2019-05-28', '$2y$10$b0dgSV5h/Suewi8pFqfgA.UHfVFMy8PkX5WBbfqsvZUze9plsz3ZW', '', '', '', ''),
(185, 'Văn Đức Pháp', 'tramhuongdhv@gmail.com', '123456', NULL, '$2y$10$pMylMtJVcJ4rWDvxWTg3nuI3.5xZIatMT.Vro9U5S/.PvjbJR7jxC', '1999-11-11', NULL, 1, '2019-05-28', '$2y$10$XA8RmUF6TZJLCg2i7ZW.iOlpY4Ku3iKjv3M3hgZlFCQy8g7U1n/kS', '', '', '', ''),
(186, 'Đỗ Quân', 'doanhquan2k@gmail.com', '123468', NULL, '$2y$10$iG064l6n5pg8JpX54jNxwOb4gg/8kuOm15R8.g2OjhDBf.6Ep3Km2', '2000-11-11', NULL, 1, '2019-05-28', '$2y$10$sTQDbdKWso3vuw7.xTSCP.LkWZ3XbUNhlqQzxLJu7lPV16aI6uOGS', '', '', '', ''),
(187, 'Hoa Phạm', 'hoayumie97@gmail.com', NULL, NULL, '$2y$10$Rzk2DvK3TvqhGxEKsLN1yOD6OfQmpoXSSbwgNt7zHzVrWZkgvzbTa', '0000-00-00', NULL, 1, '0000-00-00', '', '', '', '', '117135130207564774951'),
(188, 'meo minh', 'tranthiminhmeo@gmail.com', NULL, NULL, '$2y$10$MDB8yVF1ptnQmrczr6hUbOfpJ0NzeiuZ/eKdim7XfM8EsFVXU1.Aa', '0000-00-00', NULL, 1, '0000-00-00', '', '', '', '', '114148781367198029554'),
(189, 'đặng kim ngân', 'dangkieu505@gmail.com', '03628011564', NULL, '$2y$10$lDE.BLO3J8PpWrm2bYR0bO1pkV/oeEQEoMlBWwzYsVoO5OYFKo7na', '1999-03-05', NULL, 1, '2019-05-28', '$2y$10$MqcNe9rsvwScQC4FcaVtCOr1JYFJ8h/xv2nXeqO0C1xoeVbTlhmDe', '', '', '', ''),
(190, 'Andy Bogard', 'hbjfhdwlbl_1543819438@tfbnw.net', NULL, NULL, '$2y$10$P3DaQUJAQU64eOza8oHCeuAQVgDrTLA.sbtGIET50qujy1LfdssbG', '0000-00-00', NULL, 1, '0000-00-00', '', '', '', '10150064185084267', ''),
(191, 'Đoàn Thị Loan', 'loanmanh91@gmail.com', '0932657025', NULL, '$2y$10$yCZ4Kmo/9ybpPJHVkLPStevhwD4REvUYsTzWU5vgHX9SA35.1eugy', '1991-11-06', NULL, 1, '2019-05-30', '$2y$10$PKSxaaInT6THNhWUvyTDrexEnwS41RhqnylPnU/JM2H9MuuPY3lFm', '', '', '', ''),
(192, 'Hanh Phuong', 'phuonghonghanh_93@yahoo.com', NULL, NULL, '$2y$10$vMk0uMVzGcMDb9P/WuLOQ.mD.GqXBpK6Ib9SZkcezYeaEY64SfIym', '0000-00-00', NULL, 1, '0000-00-00', '', '', '', '2782729365077326', ''),
(193, 'huỳnh thị thanh thủy', 'huynhthanhthuy.090598@gmail.com', '0964358471', NULL, '$2y$10$2cZy6/4uY6d6bdkuwNYVtuJWEWloioPye/J/xqGdjtlkrUcUtzkIm', '1998-05-09', NULL, 1, '2019-06-01', '$2y$10$CMBDVleWv289Tjyh1ndn/.7hpZ4czEXJbl5TKEFtYqpzRlBeUEy/u', '', '', '', ''),
(194, 'Kim Tiền', 'kimtien318@yahoo.com', '0937648126', NULL, '$2y$10$OARjRN3dNTqfM6kHcqjTJed/Bmj7cxWmFd19R.AVk.oTUrywkUAzW', '1988-08-31', NULL, 1, '2019-06-01', '$2y$10$l2muEb2Jpt0XJ4kBJcpyuO6IMs0k75jjwSI.DDzUS2KSEwaN1yYn2', '', '', '', ''),
(195, 'Nguyễn Thị Yến Nhi', 'yennhi11021998@gmail.com', '0962154023', NULL, '$2y$10$XsyUwczM0a4JWUEfFEquQ.viyhZmO84LIWHcYKZO6WX1Af3V.dG.e', '1998-02-11', NULL, 1, '2019-06-03', '$2y$10$Wktvq6/On79fS1INcAOFGuc.EQ7kfrRqGjlxiBDJnNlXuYlGMYY92', '', '', '', ''),
(196, 'Lại thuỳ dung', 'dungthuyjunjun@gmail.com', '0852395542', NULL, '$2y$10$Akvq/HzEO3RizlNSZQaVpOYsH55uizMCO8qyuyAiw5cbsg6bC7ilW', '2008-05-09', NULL, 1, '2019-06-11', '$2y$10$Rt/sUAzRVP8eEGqbTsWl6ezHXIXHEH8prZC3QXqlFuzvWgF45twPy', '', '', '', ''),
(197, 'Lê thị thu', 'thudtxm@gmail.com', '0936986456', NULL, '$2y$10$0jq8Ut4nSRA7JHLFVMM.2Om/q8lQNnAmQOdiYHlBRUM5TYGA6RzUC', '1988-11-24', NULL, 1, '2019-06-11', '$2y$10$q6ivU6W344nuZWSK2o9cQOywQp.egR7.4pcsV8ul/Unf.GPBx31qa', '', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_online`
--

CREATE TABLE `user_online` (
  `tgtmp` int(15) NOT NULL DEFAULT '0',
  `ip` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `local` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `wishlist_created_date` datetime DEFAULT NULL,
  `product_name` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `admin_role` (`admin_role`),
  ADD KEY `admin_state` (`admin_state`);

--
-- Chỉ mục cho bảng `admin_role`
--
ALTER TABLE `admin_role`
  ADD PRIMARY KEY (`admin_role_id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Chỉ mục cho bảng `cartdetail`
--
ALTER TABLE `cartdetail`
  ADD PRIMARY KEY (`id_cartDetail`),
  ADD KEY `id_cart` (`id_cart`);

--
-- Chỉ mục cho bảng `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`color_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `comment_user`
--
ALTER TABLE `comment_user`
  ADD PRIMARY KEY (`comment_id`);

--
-- Chỉ mục cho bảng `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`config_id`);

--
-- Chỉ mục cho bảng `config_languages`
--
ALTER TABLE `config_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `config_id` (`config_id`);

--
-- Chỉ mục cho bảng `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`currency_id`),
  ADD UNIQUE KEY `currency_code` (`currency_code`);

--
-- Chỉ mục cho bảng `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`languages_id`);

--
-- Chỉ mục cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`),
  ADD KEY `menu_type_id` (`menu_type_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `state` (`state`),
  ADD KEY `menu_parent` (`menu_parent`),
  ADD KEY `productcat_id` (`productcat_id`),
  ADD KEY `newscat_id` (`newscat_id`);

--
-- Chỉ mục cho bảng `menu_languages`
--
ALTER TABLE `menu_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Chỉ mục cho bảng `menu_type`
--
ALTER TABLE `menu_type`
  ADD PRIMARY KEY (`menu_type_id`);

--
-- Chỉ mục cho bảng `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_menu_type` (`menu_type_id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `newscat`
--
ALTER TABLE `newscat`
  ADD PRIMARY KEY (`newscat_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `newscat_languages`
--
ALTER TABLE `newscat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `newscat_id` (`newscat_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `newstag`
--
ALTER TABLE `newstag`
  ADD PRIMARY KEY (`newstag_id`);

--
-- Chỉ mục cho bảng `newstag_languages`
--
ALTER TABLE `newstag_languages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news_languages`
--
ALTER TABLE `news_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `optionsQ1`
--
ALTER TABLE `optionsQ1`
  ADD PRIMARY KEY (`optionsQ1_id`);

--
-- Chỉ mục cho bảng `optionsQ2`
--
ALTER TABLE `optionsQ2`
  ADD PRIMARY KEY (`optionsQ2_id`);

--
-- Chỉ mục cho bảng `optionsQ3`
--
ALTER TABLE `optionsQ3`
  ADD PRIMARY KEY (`optionsQ3_id`);

--
-- Chỉ mục cho bảng `optionsQ4`
--
ALTER TABLE `optionsQ4`
  ADD PRIMARY KEY (`optionsQ4_id`);

--
-- Chỉ mục cho bảng `optionsQ5`
--
ALTER TABLE `optionsQ5`
  ADD PRIMARY KEY (`optionsQ5_id`);

--
-- Chỉ mục cho bảng `optionsQ6`
--
ALTER TABLE `optionsQ6`
  ADD PRIMARY KEY (`optionsQ6_id`);

--
-- Chỉ mục cho bảng `optionsQ7`
--
ALTER TABLE `optionsQ7`
  ADD PRIMARY KEY (`optionsQ7_id`);

--
-- Chỉ mục cho bảng `optionsQ8`
--
ALTER TABLE `optionsQ8`
  ADD PRIMARY KEY (`optionsQ8_id`);

--
-- Chỉ mục cho bảng `optionsQ9`
--
ALTER TABLE `optionsQ9`
  ADD PRIMARY KEY (`optionsQ9_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `orders_state` (`orders_state`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Chỉ mục cho bảng `order_state`
--
ALTER TABLE `order_state`
  ADD PRIMARY KEY (`order_state_id`),
  ADD KEY `state` (`state`);

--
-- Chỉ mục cho bảng `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`page_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `page_languages`
--
ALTER TABLE `page_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_cat_id` (`productcat_id`),
  ADD KEY `product_hot` (`product_hot`),
  ADD KEY `state` (`state`),
  ADD KEY `product_sale` (`product_sale`),
  ADD KEY `product_new` (`product_new`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `productcat`
--
ALTER TABLE `productcat`
  ADD PRIMARY KEY (`productcat_id`),
  ADD KEY `productcat_sort_order` (`productcat_sort_order`),
  ADD KEY `productcat_parent` (`productcat_parent`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `productcat_languages`
--
ALTER TABLE `productcat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_cat_id` (`productcat_id`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `producttag`
--
ALTER TABLE `producttag`
  ADD PRIMARY KEY (`producttag_id`);

--
-- Chỉ mục cho bảng `producttag_languages`
--
ALTER TABLE `producttag_languages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `product_languages`
--
ALTER TABLE `product_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `product_producer`
--
ALTER TABLE `product_producer`
  ADD PRIMARY KEY (`producer_id`);

--
-- Chỉ mục cho bảng `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producer_id` (`producer_id`);

--
-- Chỉ mục cho bảng `pro_color`
--
ALTER TABLE `pro_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- Chỉ mục cho bảng `regInfor`
--
ALTER TABLE `regInfor`
  ADD PRIMARY KEY (`regInfor_id`);

--
-- Chỉ mục cho bảng `regMember`
--
ALTER TABLE `regMember`
  ADD PRIMARY KEY (`regMember_id`);

--
-- Chỉ mục cho bảng `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`sale_id`);

--
-- Chỉ mục cho bảng `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`service_id`);

--
-- Chỉ mục cho bảng `servicecat`
--
ALTER TABLE `servicecat`
  ADD PRIMARY KEY (`servicecat_id`);

--
-- Chỉ mục cho bảng `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_servicecat` (`servicecat_id`);

--
-- Chỉ mục cho bảng `servicetag`
--
ALTER TABLE `servicetag`
  ADD PRIMARY KEY (`servicetag_id`);

--
-- Chỉ mục cho bảng `servicetag_languages`
--
ALTER TABLE `servicetag_languages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `service_languages`
--
ALTER TABLE `service_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_service` (`service_id`);

--
-- Chỉ mục cho bảng `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`size_id`),
  ADD KEY `color_id` (`color_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `user_online`
--
ALTER TABLE `user_online`
  ADD PRIMARY KEY (`tgtmp`),
  ADD KEY `ip` (`ip`),
  ADD KEY `local` (`local`);

--
-- Chỉ mục cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `admin_role`
--
ALTER TABLE `admin_role`
  MODIFY `admin_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=326;

--
-- AUTO_INCREMENT cho bảng `cartdetail`
--
ALTER TABLE `cartdetail`
  MODIFY `id_cartDetail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=316;

--
-- AUTO_INCREMENT cho bảng `color`
--
ALTER TABLE `color`
  MODIFY `color_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `comment_user`
--
ALTER TABLE `comment_user`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `config`
--
ALTER TABLE `config`
  MODIFY `config_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `config_languages`
--
ALTER TABLE `config_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `currency`
--
ALTER TABLE `currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `languages`
--
ALTER TABLE `languages`
  MODIFY `languages_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT cho bảng `menu_languages`
--
ALTER TABLE `menu_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=425;

--
-- AUTO_INCREMENT cho bảng `menu_type`
--
ALTER TABLE `menu_type`
  MODIFY `menu_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `newscat`
--
ALTER TABLE `newscat`
  MODIFY `newscat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT cho bảng `newscat_languages`
--
ALTER TABLE `newscat_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT cho bảng `newstag`
--
ALTER TABLE `newstag`
  MODIFY `newstag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `newstag_languages`
--
ALTER TABLE `newstag_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `news_languages`
--
ALTER TABLE `news_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT cho bảng `optionsQ1`
--
ALTER TABLE `optionsQ1`
  MODIFY `optionsQ1_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `optionsQ2`
--
ALTER TABLE `optionsQ2`
  MODIFY `optionsQ2_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `optionsQ3`
--
ALTER TABLE `optionsQ3`
  MODIFY `optionsQ3_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `optionsQ4`
--
ALTER TABLE `optionsQ4`
  MODIFY `optionsQ4_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optionsQ5`
--
ALTER TABLE `optionsQ5`
  MODIFY `optionsQ5_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optionsQ6`
--
ALTER TABLE `optionsQ6`
  MODIFY `optionsQ6_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optionsQ7`
--
ALTER TABLE `optionsQ7`
  MODIFY `optionsQ7_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `optionsQ8`
--
ALTER TABLE `optionsQ8`
  MODIFY `optionsQ8_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `optionsQ9`
--
ALTER TABLE `optionsQ9`
  MODIFY `optionsQ9_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_state`
--
ALTER TABLE `order_state`
  MODIFY `order_state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `page`
--
ALTER TABLE `page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `page_languages`
--
ALTER TABLE `page_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `productcat`
--
ALTER TABLE `productcat`
  MODIFY `productcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT cho bảng `productcat_languages`
--
ALTER TABLE `productcat_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=475;

--
-- AUTO_INCREMENT cho bảng `producttag`
--
ALTER TABLE `producttag`
  MODIFY `producttag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `producttag_languages`
--
ALTER TABLE `producttag_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `product_color`
--
ALTER TABLE `product_color`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_languages`
--
ALTER TABLE `product_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT cho bảng `product_producer`
--
ALTER TABLE `product_producer`
  MODIFY `producer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `pro_color`
--
ALTER TABLE `pro_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `regInfor`
--
ALTER TABLE `regInfor`
  MODIFY `regInfor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `regMember`
--
ALTER TABLE `regMember`
  MODIFY `regMember_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `sale`
--
ALTER TABLE `sale`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `servicecat`
--
ALTER TABLE `servicecat`
  MODIFY `servicecat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `servicetag`
--
ALTER TABLE `servicetag`
  MODIFY `servicetag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `servicetag_languages`
--
ALTER TABLE `servicetag_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `service_languages`
--
ALTER TABLE `service_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT cho bảng `size`
--
ALTER TABLE `size`
  MODIFY `size_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cartdetail`
--
ALTER TABLE `cartdetail`
  ADD CONSTRAINT `cartdetail_ibfk_1` FOREIGN KEY (`id_cart`) REFERENCES `cart` (`id_cart`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `color`
--
ALTER TABLE `color`
  ADD CONSTRAINT `color_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `menu_languages`
--
ALTER TABLE `menu_languages`
  ADD CONSTRAINT `menu_languages_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`menu_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  ADD CONSTRAINT `menu_type_languages_ibfk_1` FOREIGN KEY (`menu_type_id`) REFERENCES `menu_type` (`menu_type_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `newscat_languages`
--
ALTER TABLE `newscat_languages`
  ADD CONSTRAINT `newscat_languages_ibfk_1` FOREIGN KEY (`newscat_id`) REFERENCES `newscat` (`newscat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `news_languages`
--
ALTER TABLE `news_languages`
  ADD CONSTRAINT `news_languages_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`news_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`orders_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `page_languages`
--
ALTER TABLE `page_languages`
  ADD CONSTRAINT `page_languages_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `page` (`page_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `productcat_languages`
--
ALTER TABLE `productcat_languages`
  ADD CONSTRAINT `productcat_languages_ibfk_1` FOREIGN KEY (`productcat_id`) REFERENCES `productcat` (`productcat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product_languages`
--
ALTER TABLE `product_languages`
  ADD CONSTRAINT `product_languages_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  ADD CONSTRAINT `product_producer_languages_ibfk_1` FOREIGN KEY (`producer_id`) REFERENCES `product_producer` (`producer_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `pro_color`
--
ALTER TABLE `pro_color`
  ADD CONSTRAINT `pro_color_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`product_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  ADD CONSTRAINT `servicecat_languages_ibfk_1` FOREIGN KEY (`servicecat_id`) REFERENCES `servicecat` (`servicecat_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `service_languages`
--
ALTER TABLE `service_languages`
  ADD CONSTRAINT `service_languages_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `service` (`service_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `size`
--
ALTER TABLE `size`
  ADD CONSTRAINT `size_ibfk_1` FOREIGN KEY (`color_id`) REFERENCES `color` (`color_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
