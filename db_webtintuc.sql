-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 01, 2023 lúc 04:27 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_webtintuc`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `Ten` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `groups`
--

INSERT INTO `groups` (`id`, `Ten`) VALUES
(1, 'Admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_comment`
--

CREATE TABLE `tb_comment` (
  `id` int(11) NOT NULL,
  `idUser` int(11) DEFAULT NULL,
  `idTinTuc` int(11) DEFAULT NULL,
  `NoiDung` longtext DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `Tintuc_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tb_comment`
--

INSERT INTO `tb_comment` (`id`, `idUser`, `idTinTuc`, `NoiDung`, `created_at`, `updated_at`, `Tintuc_id`) VALUES
(1, 2, 1, 'Hay', '2022-11-29 23:03:11', NULL, NULL),
(2, 4, 1, 'test', '2023-01-17 16:11:54', '2023-01-17 16:11:54', NULL),
(3, 4, 1, 'test1', '2023-01-17 16:33:11', '2023-01-17 16:33:11', NULL),
(4, 2, 1, 'test', '2023-01-17 16:34:01', '2023-01-17 16:34:01', NULL),
(5, 2, 1, 'hi', '2023-01-28 12:01:47', '2023-01-28 12:01:47', NULL),
(6, 4, 1, 'tewst', '2023-01-28 12:03:07', '2023-01-28 12:03:07', NULL),
(7, 2, 6, 'test', '2023-01-31 15:19:15', '2023-01-31 15:19:15', NULL),
(8, 2, 14, 'bài này hay', '2023-02-01 15:05:07', '2023-02-01 15:05:07', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_loaitin`
--

CREATE TABLE `tb_loaitin` (
  `id` int(11) NOT NULL,
  `idTheLoai` int(11) DEFAULT NULL,
  `Ten` varchar(255) DEFAULT NULL,
  `TenKhongDau` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tb_loaitin`
--

INSERT INTO `tb_loaitin` (`id`, `idTheLoai`, `Ten`, `TenKhongDau`, `created_at`, `updated_at`) VALUES
(1, 2, 'Chiến tranh', NULL, NULL, NULL),
(2, 8, 'BlockChain', NULL, NULL, NULL),
(3, 1, 'Tài chính', NULL, NULL, NULL),
(4, 10, 'đời sống', NULL, NULL, NULL),
(8, 12, 'Tin thế giới', NULL, NULL, NULL),
(10, 11, 'Trong nước -ngoài nước', NULL, NULL, NULL),
(12, 8, 'IT', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_slide`
--

CREATE TABLE `tb_slide` (
  `id` int(11) NOT NULL,
  `Ten` varchar(255) DEFAULT NULL,
  `HinhAnh` varchar(255) DEFAULT NULL,
  `NoiDung` mediumtext DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tb_slide`
--

INSERT INTO `tb_slide` (`id`, `Ten`, `HinhAnh`, `NoiDung`, `link`, `created_at`, `updated_at`) VALUES
(1, 'test', 'https://cafebitcoin.org/wp-content/uploads/2022/11/ftx.jpg', 'test', 'tesaf', NULL, NULL),
(2, 'coin', 'https://coin68.com/wp-content/uploads/2022/11/Market-27.11.22-1536x864.jpg', 'coin', 'https://coin68.com/tuan-san-coin68-w47-2022/', NULL, NULL),
(3, 'Laravel', 'https://vantien.net/wp-content/uploads/2021/09/v8h2ztgkxtdhys0z0z9f.png', 'Laravel', 'https://laravel.com/', NULL, NULL),
(4, 'bitcoin', 'https://image.thanhnien.vn/w2048/Uploaded/2022/vjryqdxwp/2021_05_30/bitcoin-cnbc_eeou.jpeg', 'Bitcoin', 'chua co', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_theloai`
--

CREATE TABLE `tb_theloai` (
  `id` int(11) NOT NULL,
  `Ten` varchar(255) NOT NULL,
  `TenKhongDau` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tb_theloai`
--

INSERT INTO `tb_theloai` (`id`, `Ten`, `TenKhongDau`, `created_at`, `updated_at`) VALUES
(1, 'Kinh tế', NULL, NULL, NULL),
(2, 'Quân sự', NULL, NULL, NULL),
(8, 'Công nghệ', NULL, NULL, NULL),
(10, 'Xã hội', NULL, NULL, NULL),
(11, 'Chính trị', NULL, NULL, NULL),
(12, 'Thế giới', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_tintuc`
--

CREATE TABLE `tb_tintuc` (
  `id` int(11) NOT NULL,
  `TieuDe` varchar(255) DEFAULT NULL,
  `TieuDeKhongDau` varchar(255) DEFAULT NULL,
  `TomTat` varchar(255) DEFAULT NULL,
  `NoiDung` mediumtext DEFAULT NULL,
  `Hinh` varchar(255) DEFAULT NULL,
  `NoiBat` int(11) DEFAULT NULL,
  `SoLuotXem` int(11) DEFAULT NULL,
  `idLoaiTin` int(11) DEFAULT NULL,
  `idTheLoai` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tb_tintuc`
--

INSERT INTO `tb_tintuc` (`id`, `TieuDe`, `TieuDeKhongDau`, `TomTat`, `NoiDung`, `Hinh`, `NoiBat`, `SoLuotXem`, `idLoaiTin`, `idTheLoai`, `created_at`, `updated_at`) VALUES
(1, 'ACV chịu trách nhiệm giám sát gói thầu 35 nghìn tỷ dự án sân bay Long Thành\r\n', NULL, 'ACV chịu trách nhiệm giám sát gói thầu 35 nghìn tỷ dự án sân bay Long Thành\r\n', 'Vietstock - ACV (HN:ACV) chịu trách nhiệm giám sát gói thầu 35 nghìn tỷ dự án sân bay Long Thành\r\n\r\nBộ GTVT vừa nhận được văn bản của Bộ Kế hoạch và Đầu tư về việc giám sát công tác lựa chọn nhà thầu dự án xây sân bay Cảng HKQT Long Thành.\r\n\r\nBộ GTVT vừa nhận được văn bản của Bộ Kế hoạch và Đầu tư về việc giám sát công tác lựa chọn nhà thầu dự án xây sân bay Cảng HKQT Long Thành, trong đó có Gói thầu số 5.10 (trị giá hơn 35 nghìn tỷ đồng).\r\n\r\nGói thầu số 5.10 “Thi công xây dựng và lắp đặt thiết bị công trình Nhà ga hành khách”, có giá gói thầu 35.233 tỷ đồng\r\nTheo Bộ Kế hoạch và Đầu tư, Điều 126 Nghị định số 63/2014/NĐ-CP quy định rõ: Người có thẩm quyền quyết định và chỉ đạo việc giám sát, theo dõi hoạt động đấu thầu đối với các gói thầu thuộc dự án, dự toán mua sắm do mình quyết định khi thấy cần thiết; tập trung giám sát, theo dõi đối với các chủ đầu tư, bên mời thầu có thắc mắc, kiến nghị, đối với các gói thầu áp dụng hình thức chỉ định thầu, các gói thầu có giá trị lớn, đặc thù, yêu cầu cao về kỹ thuật.\r\n\r\nBộ Kế hoạch và Đầu tư nhận thấy TCT Cảng hàng không Việt Nam - ACV đã phê duyệt Dự án thành phần 3 và phê duyệt kế hoạch lựa chọn nhà thầu.\r\n\r\nDo vậy, căn cứ quy định tại Nghị định số 63/2014/NĐ-CP, ACV với tư cách là người quyết định đầu tư, người có thẩm quyền của dự án chịu trách nhiệm quyết định và chỉ đạo việc giám sát, theo dõi hoạt động đấu thầu đối với gói thầu nêu trên.\r\n\r\nTrước đó, vào giữa tháng 11/2022, Bộ GTVT đã có công văn đề nghị Bộ Kế hoạch và đầu tư chủ trì và tổ chức, triển khai công tác giám sát, rà soát hoạt động đấu thầu của Dự án, trong đó có Gói thầu số 5.10 “Thi công xây dựng và lắp đặt thiết bị công trình Nhà ga hành khách” thuộc Dự án thành phần 3 - Các công trình thiết yếu trong cảng hàng không thuộc Dự án đầu tư xây dựng Cảng hàng không quốc tế Long Thành giai đoạn 1.\r\n\r\nTheo Bộ Kế hoạch và Đầu tư, sau khi nhận được đề nghị của Bộ GTVT, Bộ Kế hoạch và đầu tư (Cục Quản lý đấu thầu) đã chủ động cử cán bộ phối hợp rà soát hoạt động đấu thầu Gói thầu số 5.10.\r\n\r\nTại cuộc họp hôm 21/11/2022 do lãnh đạo Bộ GTVT chủ trì, có sự tham gia của đại diện các đơn vị thuộc Bộ GTVT, ACV, Ban quản lý dự án thành phần 3 Cảng HKQT Long Thành, lãnh đạo Cục Quản lý đấu thầu đã đề nghị ACV làm rõ nguyên nhân kế hoạch lựa chọn nhà thầu áp dụng hình thức đấu thầu rộng rãi quốc tế nhưng không có nhà thầu quốc tế tham dự mà chỉ có một nhà thầu liên danh trong nước nộp hồ sơ dự thầu.\r\n\r\nCục Quản lý đấu thấu cũng đề nghị ACV rà soát quá trình thực hiện thủ tục đấu thầu để bảo đảm tuân thủ thời gian cho nhà thầu chuẩn bị hồ sơ dự thầu (tối thiểu 40 ngày đối với đấu thầu quốc tế). Ngoài ra, trong quá trình tổ chức lựa chọn nhà thầu, Cục Quản lý đấu thầu, Bộ Kế hoạch và Đầu tư đã có một số văn bản hướng dẫn, hỗ trợ ACV triển khai, thực hiện.\r\n\r\nTại cuộc họp lần thứ 3 Ban Chỉ đạo Nhà nước các công trình, dự án quan trọng quốc gia, trọng điểm ngành GTVT hôm 16/11, Thủ tướng Chính phủ Phạm Minh Chính đã chỉ đạo tổ chức giám sát, rà soát công tác lựa chọn nhà thầu gói thầu thi công xây dựng và lắp đặt thiết bị công trình Nhà ga hành khách Dự án thành phần 3 thuộc Dự án đầu tư xây dựng Cảng hàng không quốc tế Long Thành do Tổng công ty Cảng hàng không Việt Nam - ACV làm chủ đầu tư, bảo đảm tuân thủ quy định pháp luật.\r\n\r\nGói thầu số 5.10 “Thi công xây dựng và lắp đặt thiết bị công trình Nhà ga hành khách”, có giá gói thầu 35.233 tỷ đồng bao gồm việc thiết kế bản vẽ thi công và Thi công xây dựng và lắp đặt thiết bị công trình Nhà ga hành khách của Dự án thành phần 3- Các công trình thiết yếu trong cảng hàng không thuộc Dự án đầu tư xây dựng Cảng hàng không quốc tế Long Thành giai đoạn 1.\r\n\r\nThời gian thực hiện hợp đồng là 990 ngày (tương đương 33 tháng), bao gồm cả ngày nghỉ cuối tuần, nghỉ lễ, nghỉ Tết theo quy định của pháp luật Việt Nam kể từ ngày hợp đồng có hiệu lực.\r\n\r\nHình thức đấu thầu Gói thầu 5.10 là đấu thầu rộng rãi quốc tế, không qua mạng, không sơ tuyển. Phương thức lựa chọn nhà thầu là một giai đoạn hai túi hồ sơ. Thời gian phát hành hồ sơ mời thầu: Từ 09h30 ngày 24/9/2022 đến trước 9h30 ngày 8/11/2022 (trong giờ làm việc hành chính); thời điểm đóng thầu là 9h30 ngày 8/11/2022 nhưng được gia hạn đến 9h30 ngày 23/11/2022, rồi gia hạn tiếp đến 9h30 ngày 30/11/2022.', 'https://d52-invdn-com.investing.com/content/pic066691b823d9788dd28a7b8a4906d987.jpg', 1, NULL, 3, 1, '2022-11-29 22:54:41', NULL),
(2, 'Khai trương khu nhà mẫu lớn nhất Việt Nam', NULL, 'Masterise Homes đã khai trương sales gallery (khu nhà mẫu) của dự án The Global City', 'Đây được xem là sales gallery lớn nhất Việt Nam với quy mô 10.000m2 , được thiết kế độc đáo và quy mô kết hợp với công nghệ tiên tiến lần đầu tiên xuất hiện tại Việt Nam.', 'https://image.thanhnien.vn/w2048/Uploaded/2022/kpuozvu/2022_11_29/tempimagexh61av-3618.jpg', NULL, NULL, 3, NULL, NULL, NULL),
(3, '10 dự án đất đai tại Đồng Nai sẽ thanh tra là dự án nào?', NULL, '10 dự án đất đai tại Đồng Nai sẽ thanh tra', 'Từ nay tới cuối năm 2022, Bộ Tài Nguyên - Môi trường (TN-MT) sẽ thanh tra 10 dự án đất đai tại Đồng Nai, cụ thể tại 3 địa phương gồm TP.Long Khánh, H.Long Thành, H.Nhơn Trạch về việc chấp hành pháp luật trong lĩnh vực tài nguyên môi trường.\r\nThứ trưởng Bộ TN-MT Nguyễn Thị Phương Hoa vừa dẫn đầu đoàn công tác của Bộ TN-MT vào làm việc với UBND tỉnh Đồng Nai để công bố quyết định thanh tra việc chấp hành pháp luật trong lĩnh vực tài nguyên môi trường. Theo đó, Bộ TN-MT sẽ thanh tra đối với 3 địa phương của Đồng Nai là TP.Long Khánh, H.Long Thành, H.Nhơn Trạch và 10 dự án đất đai trên địa bàn. Thời gian thanh tra là 30 ngày.', 'https://image.thanhnien.vn/w2048/Uploaded/2022/qfrqa/2021_06_11/132305877_301832281247308_4659890117252862734_n_sqjo.jpg', 1, NULL, 3, NULL, NULL, NULL),
(4, 'Cung thấp, chi phí cao giá nhà ở tiếp tục tăng', NULL, 'Theo báo cáo mới công bố về chỉ số giá bất động sản của Savills (SPPI) quý 3/2022 cho thấy, chỉ số giá bất động sản nhà ở và văn phòng tại Hà Nội và TP.HCM đều có xu hướng gia tăng.', 'Giá nhà ở tăng\r\nTheo đó, chỉ số giá nhà ở tại TP.HCM là 130 điểm và tăng 1 điểm theo quý trước. Sự gia tăng này đến từ việc giá sản phẩm nhà ở hạng B tại TP.Thủ Đức tăng 13% theo quý và huyện Nhà Bè tăng 5% theo quý.\r\n\r\nTrong quý 3/2022, tỷ lệ hấp thụ đạt 15% giảm 54% theo quý nhưng tăng 1% theo năm. Sự sụt giảm đáng kể đến từ việc giá sơ cấp tăng cao, niềm tin của người mua nhà giảm bởi việc lãi suất tăng và kiểm soát tín dụng chặt chẽ. Nguồn cung nhà ở hạng B chiếm 54% nguồn cung sơ cấp, với giá cao nhất là 10 tỉ đồng/căn. Dòng sản phẩm hạng A chiếm 23% nguồn cung sơ cấp, với mức giá lên tới 30 tỉ đồng/căn.', 'https://image.thanhnien.vn/w2048/Uploaded/2022/kpuozvu/2022_10_28/tempimagemfozqn-9255.jpg', NULL, NULL, 3, NULL, NULL, NULL),
(5, 'Chính phủ họp tháo gỡ khó khăn cho thị trường bất động sản', NULL, 'Ngày 8.11, Phó thủ tướng Chính phủ Lê Minh Khái cùng với Bộ Xây dựng đã có buổi làm việc với các doanh nghiệp bất động sản phía nam và Hiệp hội Bất động sản TP.HCM nhằm tháo gỡ khó khăn cho thị trường bất động sản.', 'Theo Văn phòng Chính phủ, thực hiện ý kiến chỉ đạo của Phó thủ tướng Chính phủ Lê Minh Khái, ngày 7.11 Văn phòng Chính phủ đã có công văn số 1492 mời lãnh đạo Bộ Xây dựng và lãnh đạo các doanh nghiệp đến dự cuộc họp về tháo gỡ khó khăn, vướng mắc cho thị trường bất động sản. Trong đó 11 doanh nghiệp bất động sản khu vực phía nam được Văn phòng Chính phủ mời họp, bao gồm: Tập đoàn Novaland, Công ty Phú Mỹ Hưng, Tổng công ty đầu tư và phát triển công nghiệp Becamex, Tập đoàn Hưng Thịnh, Công ty cổ phần Đầu tư IMG, Công ty địa ốc Hoàng Quân, Tập đoàn Himlam, Công ty cổ phần Đại An, Tập đoàn Phú Cường, Tập đoàn Sơn Kim Land, Tổng công ty cổ phần Đầu tư phát triển xây dựng (DIC), Tập đoàn Khang Điền và Hiệp hội Bất động sản TP.HCM. Ngoài 11 doanh nghiệp phía nam còn có 12 doanh nghiệp bất động sản lớn tại khu vực phía bắc cũng được mời dự họp trực tuyến gồm Tập đoàn Vingroup, Tập đoàn Sungroup, Tập đoàn Ecopark, Tập đoàn Tuần Châu, Tập đoàn TNG, Tập đoàn Flamingo... Bộ Xây dựng được yêu cầu chuẩn bị 40 bộ tài liệu và báo cáo.\r\n\r\nChia sẻ với Thanh Niên về nội dung báo cáo với Chính phủ, ông Lê Hoàng Châu, Chủ tịch Hiệp hội Bất động sản TP.HCM (HoREA), cho biết hiện nay thị trường bất động sản đang rất khó khăn và đứng trước khả năng có thể rơi vào suy thoái, một số tập đoàn, doanh nghiệp bất động sản cũng đang rất khó khăn, đặc biệt là rủi ro bị sụt giảm sâu thanh khoản, thậm chí có thể bị mất thanh khoản, thể hiện qua việc một số tập đoàn, doanh nghiệp bất động sản phải thực hiện các biện pháp “đau đớn” để tồn tại như thu hẹp quy mô đầu tư sản xuất kinh doanh (dừng, đình hoãn hoạt động đầu tư, thi công xây dựng một số dự án; dừng triển khai các dự án mới; dừng phát hành cổ phiếu tăng vốn; dừng IPO). Điều này sẽ tác động đến sự phục hồi và tăng trưởng của nền kinh tế, trực tiếp làm giảm nguồn thu ngân sách nhà nước.\r\n\r\nKhông những thế, một số tập đoàn, doanh nghiệp bất động sản phải tinh giản tối đa bộ máy, giảm lực lượng lao động. Thậm chí có tập đoàn giảm đến 50% lực lượng lao động tác động đến vấn đề an sinh xã hội hoặc phải giảm lương tác động đến cuộc sống người lao động.', 'https://image.thanhnien.vn/w2048/Uploaded/2022/kpuozvu/2022_11_07/nha-dat-quan-2-thuthiem-anh-gia-khiem-3-9122.jpg', 1, NULL, 3, NULL, NULL, NULL),
(6, 'Thủ tướng dự triển lãm quốc phòng quốc tế, trưng bày vũ khí, khí tài', NULL, 'Thủ tướng dự triển lãm quốc phòng quốc tế, trưng bày vũ khí, khí tài', 'Sáng 8/12, tại sân bay Gia Lâm, Thủ tướng Phạm Minh Chính và Bộ trưởng Quốc phòng Phan Văn Giang chủ trì khai mạc khai mạc triển lãm quốc phòng quốc tế Việt Nam 2022.\r\n\r\nDự khai mạc có lãnh đạo Quân uỷ Trung ương, Bộ Quốc phòng, đại diện lãnh đạo các ban, bộ, ngành Trung ương, địa phương. Về phía quốc tế có đại diện lãnh đạo Bộ Quốc phòng, chỉ huy quân đội các nước trong khu vực và thế giới.\r\n\r\nThay mặt Chính phủ Việt Nam, Thủ tướng Phạm Minh Chính chào mừng các đại biểu từ 30 quốc gia dự triển lãm.\r\n\r\nVới mục đích đẩy mạnh hội nhập quốc tế, tăng cường đối ngoại quốc phòng, lòng tin giữa Việt Nam và các nước trên thế giới, nâng cao hợp tác công nghiệp quốc phòng, Thủ tướng đánh giá, triển lãm là cơ hội để các nhà hoạch định chính sách, các doanh nghiệp gặp gỡ, trao đổi, phát triển hợp tác hướng tới một thế giới hòa bình, hợp tác và phát triển thịnh vượng.\r\n\r\n\r\nĐại tướng Phan Văn Giang đón Thủ tướng Phạm Minh Chính đến dự triển lãm.\r\nThủ tướng nhấn mạnh, Chính phủ Việt Nam đánh giá cao Bộ Quốc phòng Việt Nam và các đơn vị trong việc tổ chức và tham gia Triển lãm Quốc phòng Quốc tế lần thứ nhất tại Việt Nam.\r\n\r\n“Vượt qua những khó khăn của đại dịch Covid-19, 170 đơn vị, doanh nghiệp công nghiệp quốc phòng, an ninh có công nghệ tiên tiến và uy tín của 30 quốc gia từ khắp các châu lục đã có mặt tại đây, thể hiện tình cảm, sự đoàn kết vì một thế giới tốt đẹp hơn” Thủ tướng Phạm Minh Chính chia sẻ.\r\n\r\nTại triển lãm, các doanh nghiệp quốc phòng trong nước và quốc tế sẽ trưng bày và giới thiệu trang thiết bị quân sự, vũ khí, giải pháp công nghệ cho tất cả các lực lượng hải quân, lục quân, phòng không - không quân, tác chiến không gian mạng, hậu cần, kỹ thuật.\r\n\r\n\r\nThủ tướng Phạm Minh Chính và Bộ trưởng Quốc phòng duyệt đội danh dự QĐND.\r\nThủ tướng nhìn nhận: “Đây là biểu tượng cho lòng tin và mối quan hệ hữu nghị, hợp tác và phát triển; là tình cảm đầy ý nghĩa của bạn bè quốc tế dành cho đất nước, con người và QĐND Việt Nam”.\r\n \r\nBộ trưởng Quốc phòng Phan Văn Giang cho biết, mặc dù tổ chức lần đầu tiên nhưng triển lãm đã thu hút được hơn 170 công ty, doanh nghiệp quốc phòng từ 30 quốc gia trên thế giới và các bộ, ngành Việt Nam cùng hơn 250 đoàn khách quốc tế, trong nước tham dự, trưng bày sản phẩm công nghiệp quốc phòng.\r\n\r\nBộ trưởng hy vọng triển lãm sẽ mang lại cơ hội tốt để các nhà nghiên cứu, sản xuất quốc phòng và các cơ quan, đơn vị, lực lượng vũ trang gặp gỡ, trao đổi và hợp tác thành công.\r\n\r\n\r\nThủ tướng Phạm Minh Chính và các đại biểu bấm nút khai mạc triển lãm.\r\nNgoài nội dung chính, ban tổ chức cũng bố trí khu vực không gian văn hóa, ẩm thực, khu vực “Kinh tế - quốc phòng trong kỷ nguyên công nghệ số” để trưng bày các mốc son tiêu biểu của QĐND Việt Nam trong từng giai đoạn lịch sử. \r\n\r\n\r\n\r\nThủ tướng Phạm Minh Chính tham quan triển lãm.\r\n\r\n\r\nBộ trưởng Quốc phòng giới thiệu với Thủ tướng về vũ khí, khí tài tại triển lãm.', 'https://static-images.vnncdn.net/files/publish/2022/12/8/don-thu-tuong-1205-303.jpg', NULL, NULL, 1, NULL, NULL, NULL),
(9, 'Viva Land \'biến mất\' khỏi dự án One Central HCM đầy bí ẩn', NULL, 'Ngay sau khi bà Trương Mỹ Lan, Chủ tịch Tập đoàn Vạn Thịnh Phát bị bắt thì cái tên Viva Land trước đây được giới thiệu là đơn vị phát triển siêu dự án One Central HCM ở tứ giác Bến Thành đã biến mất khỏi dự án này một cách đầy bí ẩn.', 'Ngày 1.11, quan sát thực tế tại dự án One Central HCM đối diện chợ Bến Thành (quận 1, TP.HCM) chúng tôi nhận thấy thông tin Công ty Viva Land (nằm trong hệ sinh thái Tập đoàn Vạn Thịnh Phát - NV) trên hàng rào dự án đã được tháo xuống và hiện chưa xuất hiện một cái tên nào khác. Thay vào các tấm biển trước đây xuất hiện tên và các thông tin liên quan của Viva Land là hình ảnh các dự án bất động sản của một doanh nghiệp khác.\r\n\r\nTrước đó, ngày 28.10 một nhóm gồm 3 người dùng decal dán lại tất cả các thông tin liên quan đến Công ty Viva Land có xuất hiện trên hàng rào của dự án.', 'https://image.thanhnien.vn/w2048/Uploaded/2022/kpuozvu/2022_11_02/img-6047-5676.jpg', 1, NULL, 3, NULL, NULL, NULL),
(10, 'Cuộc họp của Fed, Suy thoái ở Eurozone - Chuyện thị trường 31/1', NULL, 'Cuộc họp của Fed, Suy thoái ở Eurozone - Chuyện thị trường 31/1', 'Theo Geoffrey Smith \r\n\r\nInvesting.com -- Cục Dự trữ Liên bang bắt đầu cuộc họp chính sách kéo dài hai ngày trong bối cảnh dữ liệu kinh tế suy yếu - mặc dù Quỹ Tiền tệ Quốc tế đã nâng dự báo của mình cho năm nay một chút. Khu vực đồng tiền chung châu Âu dường như đã tránh được nỗi lo suy thoái trong nửa cuối năm ngoái, nhưng lại đang mất đà vào cuối năm. ExxonMobil đạt mức lợi nhuận kỷ lục; tiếp tục sẽ có nhiều báo cáo thu nhập từ những công ty như McDonald\'s, Caterpillar và Advanced Micro Devices. Đây là những gì bạn cần biết trên thị trường tài chính vào Thứ Ba, ngày 31 tháng Giêng.\r\n\r\n1. Cuộc họp của Fed sắp bắt đầu; IMF nâng triển vọng tăng trưởng\r\n\r\nCục Dự trữ Liên bang bắt đầu cuộc họp kéo dài hai ngày dự kiến sẽ kết thúc với phạm vi mục tiêu cho các quỹ liên bang được tăng thêm 25 điểm cơ bản lên 4,50-4,75%. Đây là cuộc họp thứ hai liên tiếp mà ngân hàng trung ương quyết định làm chậm tốc độ thắt chặt chính sách của mình để đối phó với dữ liệu kinh tế đã trở nên tồi tệ hơn trong những tháng gần đây.\r\n\r\nQua đêm, Quỹ Tiền tệ Quốc tế (IMF) cho biết họ dự kiến ​​tăng trưởng của Hoa Kỳ sẽ chậm lại 1,4% trong năm nay và 1,0% dưới tác động của lãi suất cao hơn của Fed. Tuy nhiên, họ đã nâng dự báo tăng trưởng toàn cầu trong năm nay thêm 0,2% lên 2,9%, phản ánh động lực mạnh mẽ hơn ở Trung Quốc và Ấn Độ.\r\n\r\n2. Khu vực đồng tiền chung châu Âu tránh được suy thoái, nhưng đà tăng trưởng bị đình trệ\r\n\r\nXét cho cùng, nền kinh tế Khu vực đồng tiền chung châu Âu dường như đã tránh được suy thoái trong nửa cuối năm ngoái. Tăng trưởng trong quý IV là 0,1%, đảo ngược đà giảm của ba tháng trước đó.\r\n\r\nTuy nhiên, đã có bằng chứng cho thấy động lực kinh tế đang chững lại. Cả Doanh số bán lẻ của Đức và Chi tiêu của người tiêu dùng Pháp đều thấp hơn nhiều so với kỳ vọng vào tháng 12, trong khi Khảo sát cho vay ngân hàng của Ngân hàng Trung ương Châu Âu trong quý vừa qua cho thấy nhu cầu tín dụng giảm mạnh, đặc biệt là từ các hộ gia đình. Ở Anh cũng vậy, hoạt động cho vay chậm lại trong tháng 12.\r\n\r\nGiống như ở Hoa Kỳ, yếu tố hỗ trợ chính ở châu Âu vẫn là thị trường lao động, vốn vẫn có khả năng phục hồi. Số lượng thất nghiệp của Đức đã giảm 15.000 – nhiều hơn dự kiến – vào tháng Giêng.\r\n\r\nCác số liệu được đưa ra hai ngày trước khi Ngân hàng Trung ương Châu Âu và Ngân hàng Anh đưa ra quyết định chính sách tiền tệ mới nhất của họ. Các thị trường vẫn mong đợi mức tăng nửa điểm từ cả hai tổ chức, nhưng các nhà phân tích cho biết những con số mới nhất ít nhất đã để ngỏ cho nhiều viễn cảnh về lộ trình lãi suất trong tương lai.\r\n\r\n3. Cổ phiếu chuẩn bị cho một ngày báo cáo thu nhập dày đặc\r\n\r\nĐến 06:10 ET (11:10 GMT), {{8873|hợp đồng tương lai Dow Jones futures}} giảm 128 điểm hay 0,4%, trong khi hợp đồng tương lai S&P 500 giảm 0,5% và hợp đồng tương lai Nasdaq 100 đã giảm 0,7%.\r\n\r\nMùa báo cáo thu nhập sẽ nhộn nhịp trở lại vào Thứ Ba, với Pfizer (NYSE:PFE), United Parcel Service (NYSE: UPS), McDonald\'s (NYSE:MCD), Caterpillar (NYSE:CAT), { {erl-239||General Motors}} (NYSE:GM) và ExxonMobil (NYSE:XOM) đều sẵn sàng báo cáo sớm. \r\n\r\nSau tiếng chuông mở cửa sẽ có báo cáo từ Advanced Micro Devices (NASDAQ:AMD), Amgen (NASDAQ:AMGN), Stryker (NYSE:SYK), {{erl-8175| |Chubb}} (NYSE:CB), Mondelez (NASDAQ:MDLZ) và Electronic Arts (NASDAQ:EA). \r\n\r\nCác cổ phiếu khác có thể sẽ được chú ý hôm nay sẽ gồm Johnson & Johnson (NYSE:JNJ) và Huawei.\r\n\r\n4. Adani gần như ĐÃ thu hút đủ giá thầu \r\n\r\nĐợt bán cổ phiếu trị giá 2,4 tỷ USD của ông trùm Ấn Độ, Gautam Adani, vừa thu hút đủ số lượng người đặt mua để đăng ký mua hết vào cuối phiên giao dịch tại Mumbai hôm thứ Ba.\r\n\r\nCổ phiếu Adani Enterprises (NS:ADEL) tăng ngày thứ hai liên tiếp vào thứ Ba, phục hồi 2,8%. \r\n\r\nInternational Holding Company (ADX:IHC) của Các Tiểu vương quốc Ả Rập Thống nhất (ADX:IHC) cho biết vào thứ Hai rằng họ sẽ chiếm khoảng 16% số tiền chào bán, trong khi Jupiter Asset Management, BNP Paribas (EPA:BNPP), Société Générale (EPA:SOGN) và Goldman Sachs (NYSE:GS) cũng được Financial Times đưa tin là những nhà đầu tư mấu chốt.\r\n\r\n5. Exxon ghi nhận lợi nhuận kỷ lục; không có thay đổi nào trong chính sách của OPEC+\r\n\r\nExxonMobil đã phá kỷ lục của chính mình với khoản lãi 59 tỷ đô la vào năm 2022, do giá dầu và khí đốt tăng vọt sau cuộc xâm lược của Nga vào Ukraine. Công ty cho biết thu nhập trên mỗi cổ phiếu trong quý IV cao hơn dự báo ở mức 3,40 đô la, trong khi sản lượng tăng lên 3,822 triệu thùng dầu quy đổi mỗi ngày.\r\n\r\nGiá dầu ổn định qua đêm sau khi hoạt động chốt lời cuối tháng đã loại bỏ một số vị thế mua yếu hơn đã tích lũy trong tháng này. OPEC dự kiến vẫn sẽ không bổ sung sản lượng khi các bộ trưởng của họ họp để xác định chính sách sản lượng vào thứ Tư.\r\n\r\nViện Dầu mỏ Hoa Kỳ báo cáo dữ liệu hàng tồn kho lúc 16:30 ET như thường lệ.', 'https://i-invdn-com.investing.com/news/moved_LYNXNPEI48074_L.jpg', NULL, NULL, 3, NULL, NULL, NULL),
(11, 'Lính Ukraine lo ngại trước khả năng thích ứng của quân đội Nga', NULL, 'Ukraine lo ngại trước khả năng thích ứng của quân đội Nga', 'Tại một chốt chiến đấu ở Donbass, hai người lính Ukraine vội vã lao vào, khuôn mặt vẫn còn đỏ ửng lên vì căng thẳng. Họ vừa lái xe trở về từ chiến tuyến và lập tức báo cáo với chỉ huy lữ đoàn về tình hình của lực lượng Nga tại tiền tuyến.\r\n\r\nNhìn vào tấm bản đồ lớn tại sở chỉ huy lữ đoàn, họ chỉ ra những vị trí mà lực lượng Nga đang tiến công, hướng về một con đường quan trọng.\r\n\r\n\"Họ cách chúng tôi khoảng 400 m, bên kia cánh đồng ở ngay đây. Chúng tôi vẫn cố gắng cầm cự, nhưng mọi chuyện đang trở nên khó khăn hơn\", trung sĩ Denys Kalchuk từ tiểu đoàn tình nguyện Dnipro-1 cho biết.', 'https://i1-vnexpress.vnecdn.net/2023/02/01/AP23009808956227-1968-1675225623.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=5_JsbSnz62-J-uGdMTH2Mg', NULL, NULL, 1, NULL, NULL, NULL),
(12, 'Hải cảnh Trung Quốc xua đuổi tàu Nhật gần đảo tranh chấp', NULL, 'Hải cảnh Trung Quốc xua đuổi tàu Nhật gần đảo tranh chấp', 'Hải cảnh Trung Quốc tuyên bố xua đuổi 5 tàu Nhật Bản hiện diện ở vùng biển quanh quần đảo Senkaku/Điếu Ngư do Tokyo kiểm soát.\r\n\r\nPhát ngôn viên Hải cảnh Trung Quốc Gan Yu hôm nay cáo buộc tàu Shinsei Maru và 4 tàu khác của Nhật Bản \"xâm phạm trái phép\" vùng biển quanh quần đảo Senkaku/Điếu Ngư, thêm rằng các tàu công vụ của Bắc Kinh đã xua đuổi nhóm tàu này khỏi khu vực.', 'https://i1-vnexpress.vnecdn.net/2023/01/30/ta-u-ha-i-ca-nh-trung-quo-c-16-7157-4277-1675084746.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=i4qSi46SQfHwtb-2sFh35A', NULL, NULL, 1, NULL, '2023-02-01 15:02:11', NULL),
(13, 'Người Việt chật vật trong giá rét kỷ lục ở Nhật, Hàn', NULL, 'Nhiều gia đình Việt ở Hàn Quốc, Nhật Bản khổ sở khi đường ống nước đóng băng, chi phí sưởi ấm tăng vọt giữa đợt lạnh giá kỷ lục tấn công Đông Bắc Á.', 'Nhiều gia đình Việt ở Hàn Quốc, Nhật Bản khổ sở khi đường ống nước đóng băng, chi phí sưởi ấm tăng vọt giữa đợt lạnh giá kỷ lục tấn công Đông Bắc Á.\r\n\r\nCác nước Đông Bắc Á, trong đó có Nhật Bản và Hàn Quốc, từ tuần trước hứng chịu đợt giá rét kỷ lục. Nhiệt độ xuống thấp nhất trong vòng một thập kỷ, kết hợp với bão tuyết, gây rối loạn giao thông và ảnh hưởng lớn đến cuộc sống người dân.\r\n\r\n\"Bão tuyết khiến nhiều chuyến bay bị hủy, xe cộ luôn phải bật đèn và di chuyển ở tốc độ rất chậm, khi tầm nhìn chỉ dưới một mét\", Nguyễn Thị Bích Ngân, phiên dịch viên 28 tuổi sống tại thành phố Sapporo, tỉnh cực bắc Hokkaido của Nhật Bản, nói với VnExpress.\r\n\r\nGiao thông trên khắp nước Nhật rơi vào hỗn loạn tuần trước, khi thời tiết lạnh giá khắc nghiệt tấn công, khiến 46 trên 47 tỉnh thành ghi nhận mức nhiệt âm độ vào ngày 25/1. Không chỉ ngành hàng không bị ảnh hưởng, nhiều chuyến tàu cao tốc Shinkansen và tàu điện địa phương cũng bị gián đoạn.\r\n\r\nĐợt giá rét trở nên tồi tệ hơn vì gió lớn. Cơ quan khí tượng ở Rausu, Hokkaido, có lúc ghi nhận vận tốc gió hơn 130 km/h. \"Rất lạnh, tuyết kèm gió lớn hình thành bão tuyết, nhiệt độ luôn dưới -10 độ C\", chị Ngân nói.\r\n\r\nTại tỉnh Nara, phía nam Nhật Bản, Quỳnh, nhân viên văn phòng 32 tuổi, cho biết khu vực cô ở thường không hay có tuyết vào mùa đông, nhưng đợt lạnh bất thường năm nay khiến tuyết rơi tới hai tuần, khiến mọi hoạt động trở nên khó khăn hơn.\r\n\r\n\"Tôi thường đi làm sớm bằng xe đạp, nhưng mặt đường đóng băng rất trơn trượt, các phương tiện đều phải đi chậm\", Quỳnh, người đã làm việc ở Nara 8 năm, chia sẻ.', 'https://i1-vnexpress.vnecdn.net/2023/02/01/afp-com-20230126-partners-053-8121-1578-1675223011.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=0EevDMIjq0bP4kPwJm9mvA', NULL, NULL, 10, NULL, '2023-02-01 15:03:28', NULL),
(14, 'Mối lo thúc đẩy phương Tây chuyển xe tăng cho Ukraine', NULL, 'ằng sau quyết định chuyển hàng loạt xe tăng chủ lực cho Ukraine là nỗi lo của nhiều nước phương Tây rằng thời gian có thể đang đứng về phía Nga.', 'Nỗi lo ngại đó cho thấy cơ hội phản công dành cho Ukraine không kéo dài mãi mãi và nước này cần sớm nhận được những vũ khí mạnh hơn của phương Tây như xe tăng chiến đấu chủ lực, thiết giáp và hệ thống phòng không hiện đại, để phát huy những thành quả đã đạt được vài tháng trước.\r\n\r\nĐiều này trái ngược với tâm lý lạc quan vào mùa xuân năm ngoái, khi quân đội Nga hứng chịu nhiều thất bại liên tiếp và phải rút quân khỏi miền bắc Kiev. Chiến lược \"đánh nhanh thắng nhanh\" của Nga sụp đổ khiến các nước phương Tây thời điểm đó đã hy vọng rằng cuộc chiến càng kéo dài, Ukraine càng có nhiều cơ hội thắng thế.\r\n\r\nCác binh sĩ Ukraine tại một vị trí gần thành phố Bakhmut, miền đông Ukraine. Ảnh: Wall Street Journal.\r\nCác binh sĩ Ukraine tại một vị trí gần thành phố Bakhmut, miền đông Ukraine. Ảnh: Wall Street Journal.\r\n\r\nCác quan chức phương Tây cho rằng nếu châu Âu và Washington giữ vững tinh thần và duy trì mặt trận đoàn kết sau một mùa đông khó khăn, khó khăn về kinh tế và loạt bước lùi trên chiến trường có thể buộc Nga phải tìm đường lui khỏi cuộc xung đột, thậm chí quyết định ngồi vào bàn đàm phán.\r\n\r\nMột số biện pháp trừng phạt cứng rắn từ phương Tây, như lệnh cấm vận dầu mỏ và áp trần giá dầu Nga, giờ đây mới bắt đầu có hiệu lực. Nền kinh tế Nga được dự đoán phải chịu một cuộc suy thoái nghiêm trọng trong năm nay và có thể tiếp tục suy giảm trong nhiều năm tới.\r\n\r\nNhưng khi cuộc xung đột Nga - Ukraine sắp kéo dài trong một năm, niềm tin đó ngày càng lung lay. Có rất ít dấu hiệu cho thấy các biện pháp trừng phạt khiến quân đội Nga phải ngừng hoạt động hoặc gây áp lực kinh tế đủ lớn lên Điện Kremlin đến mức làm mất đi ủng hộ ở trong nước đối với chiến dịch quân sự tại Ukraine.\r\n\r\nNga chưa thể hiện bất cứ dấu hiệu nào cho thấy họ muốn sớm chấm dứt chiến sự. Thay vào đó, Điện Kremlin dường như đang tìm cách phát động một chiến dịch tấn công mới trong những tháng tới, với gần 300.000 lính dự bị được huấn luyện tốt hơn sắp được tung ra tiền tuyến, sẵn sàng cho những trận chiến khốc liệt. Những bước tiến gần đây của Nga quanh thành phố Bakhmut, vùng Donbass, miền đông Ukraine, là minh chứng rõ nhất cho điều này.\r\n\r\nĐiều này khiến một số nước phương Tây lo ngại Moskva có thể giành lại lợi thế trong một cuộc chiến tiêu hao kéo dài. Vì thế, quan điểm chủ đạo hiện nay ở Mỹ và châu Âu là phải cung cấp cho Ukraine những vũ khí tiên tiến hơn, nhằm giúp nước này áp đảo hỏa lực Nga và thay đổi cục diện cuộc chiến.\r\n\r\nCác quan chức Anh gần đây tuyên bố mối đe dọa do Nga gây ra có thể gia tăng theo thời gian và rằng cần phải lập tức cung cấp cho Ukraine những trang thiết bị, vũ khí giúp nước này phá vỡ thế bế tắc.\r\n\r\n\"Chúng ta đã có cơ hội đẩy nhanh các nỗ lực nhằm đảm bảo hòa bình lâu dài cho người dân Ukraine. Chúng ta hãy tiếp tục thúc đẩy nó\", Thủ tướng Anh Rishi Sunak hôm 25/1 viết trên Twitter trong thông điệp hoan nghênh quyết định của Đức và Mỹ cung cấp xe tăng chiến đấu hạng nặng cho Ukraine.\r\n\r\nCác quan chức phương Tây cho biết dư luận ở châu Âu và Mỹ vẫn kiên định ủng hộ viện trợ quân sự và tài chính cho Ukraine. Nhưng Tổng thống Putin có thể đặt cược rằng những hỗ trợ như vậy sẽ không thể duy trì qua nhiều năm xung đột và Mỹ sẽ bầu cử tổng thống vào năm 2024. Đây cũng là lý do khiến phương Tây đẩy nhanh các nỗ lực hỗ trợ vũ khí cho Ukraine.\r\n\r\nTheo giới quan sát, thay đổi trong tư duy của phương Tây về đẩy nhanh cung cấp vũ khí hạng nặng cho Ukraine là một bước ngoặt lớn. Vài tháng trước, khi Ukraine phát động một cuộc phản công thành công, giành lại nhiều vùng lãnh thổ, các quan chức phương Tây đã tin rằng Kiev đang có những gì cần thiết để đạt được bước tiến xa hơn nữa.\r\n\r\nKhi đó, một số nước đã kêu gọi các đồng minh phương Tây tăng cường hỗ trợ Ukraine để ngăn cuộc xung đột kéo dài nhiều năm.\r\n\r\n\"Nga vẫn là một quốc gia rộng lớn và có nguồn lực dồi dào hơn về số lượng binh sĩ cũng như khả năng sản xuất vũ khí mà không cần đến các linh kiện nhập từ phương Tây\", Ngoại trưởng Litva Gabrielius Landsbergis, một trong những người đề xuất tăng hỗ trợ Ukraine sớm nhất, nói. \"Chúng ta cho họ càng nhiều thời gian thì họ càng tập trung được nhiều người để tấn công Ukraine\".\r\n\r\nNhưng nhiều nước phương Tây khi đó vẫn thận trọng với quyết định tăng hỗ trợ quân sự cho Ukraine.\r\n\r\nNgay cả khi Thủ tướng Đức Olaf Scholz tuyên bố hồi tuần trước rằng Berlin sẽ chuyển xe tăng Leopard 2 tới Ukraine, ông vẫn lưu ý đến mối lo ngại lớn nhất giữa các đồng minh của Kiev về việc gửi thêm các lô vũ khí, trang thiết bị tiên tiến hơn.\r\n\r\n\"Chúng ta sẽ làm những gì cần thiết và có thể để hỗ trợ Ukraine, nhưng đồng thời vẫn phải ngăn chặn nguy cơ giao tranh leo thang thành một cuộc xung đột giữa Nga và NATO\", ông nói.\r\n\r\nMột số quan chức phương Tây cũng lo ngại về việc liệu việc tăng cường hỗ trợ quân sự cho Ukraine có giúp xung đột kết thúc nhanh hơn hay không.\r\n\r\nCác phương tiện quân sự Nga bị phá hủy nằm trên một cánh đồng hồi đầu tháng này ở khu vực Kharkov. Ảnh: AP.\r\nCác phương tiện quân sự Nga bị phá hủy nằm trên một cánh đồng hồi đầu tháng này ở khu vực Kharkov. Ảnh: AP.\r\n\r\nMặc dù quân đội Ukraine đã thể hiện vượt xa mong đợi về tốc độ làm quen với cách vận hành và tích hợp những thiết bị quân sự phức tạp của phương Tây, không có gì chắc chắn rằng Kiev có thể một lần nữa tiến hành thành công các chiến dịch phản công như họ đã đạt được vào mùa thu năm ngoái. Phương Tây cũng không có nhiều niềm tin rằng Tổng thống Putin sẽ chấp nhận chấm dứt xung đột khi Ukraine chưa khuất phục.\r\n\r\nAnna Wieslander, giám đốc khu vực Bắc Âu tại Hội đồng Đại Tây Dương, tổ chức tư vấn có trụ sở tại Washington, cho hay bà hoài nghi về việc các đồng minh phương Tây đã xây dựng được một chiến lược rõ ràng trước phương án tăng quy mô cung cấp vũ khí để giúp Ukraine đối đầu Nga.\r\n\r\n\"Đây là một giai đoạn rất biến động trong cuộc xung đột, nhưng phản ứng từ các nước phương Tây đến nay chỉ đơn thuần mang tính chiến thuật\", bà nói. \"Chúng ta thiếu một tầm nhìn chung về cách xung đột sẽ kết thúc và những lô xe tăng, tên lửa viện trợ này phù hợp với tầm nhìn đó như thế nào\".', 'https://i1-vnexpress.vnecdn.net/2023/01/30/images-wsj-8575-1675054366.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=iXpI15o_nZQ79FcV2kM0jg', NULL, NULL, 1, NULL, '2023-02-01 15:04:33', NULL),
(15, '5 phút nhóm cảnh sát Mỹ đánh người đến chết', NULL, '\\5 cảnh sát da màu ở Memphis truy đuổi Tyre Nichols, cùng nhau đánh đập anh này trong 5 phút liên tục, khiến nạn nhân tử vong và làm rúng động nước Mỹ.', 'Giới chức thành phố Memphis, bang Tennessee, miền nam nước Mỹ ngày 27/1 công bố loạt video, ghi lại các diễn biến trong vụ nhóm cảnh sát đánh hội đồng Tyre Nichols, 29 tuổi, vào tối 7/1.\r\n\r\nCác đoạn video có tổng thời lượng hơn một tiếng, nhưng \"trận mưa đòn\" của 5 cảnh sát giáng xuống Nichols chỉ kéo dài trong 5 phút sau một cuộc truy đuổi. Thanh niên da màu này bị thương nghiêm trọng, được nhập viện trong đêm nhưng không qua khỏi do tổn thương vùng thận và ngưng tim. Anh qua đời ba ngày sau đó.\r\n\r\nDựa trên video từ camera gắn trên người các cảnh sát, sự việc bắt đầu từ 20h24 đêm 7/1, khi xe tuần tra của đội chống tội phạm đường phố (SCORPION) thuộc Sở Cảnh sát Memphis chặn xe của Nichols để yêu cầu kiểm tra với cáo buộc anh \"qua đường ẩu\".\r\n\r\nNichols khi đó đang lái xe về nhà mẹ, sau khi chụp ảnh hoàng hôn ở một công viên vùng ngoại ô thành phố Memphis. Anh bị nhóm cảnh sát SCORPION chặn tại ngã tư giữa đường Đông Raines và đường Ross, cách không xa nhà mình.\r\n\r\nKhi bị hai cảnh sát lôi ra khỏi xe, Nichols nói rằng mình \"không làm gì cả\" và phản đối việc họ tìm cách khống chế anh. Một cảnh sát sau đó bắn súng điện vào chân và cố còng tay Nichols, trong khi anh nói: \"Tôi chỉ đang trở về nhà thôi mà\".\r\n\r\nTyre Nichols khi bị cảnh sát chặn xe kiểm tra, khống chế bằng vũ lực vào đêm 7/1. Ảnh: Chính quyền thành phố Memphis.\r\nTyre Nichols khi bị cảnh sát chặn xe kiểm tra, khống chế bằng vũ lực vào đêm 7/1. Ảnh: Chính quyền thành phố Memphis.\r\n\r\nMột sĩ quan ra lệnh cho Nichols nằm úp xuống mặt đất, rồi xịt hơi cay khi anh nói \"Tôi không thở được\". Nichols vùng dậy chạy dọc theo đường Ross và cuộc truy đuổi kéo dài khoảng 7 phút. Mọi việc bắt đầu diễn biến tồi tệ từ đây.\r\n\r\nLúc 20h34, nhóm cảnh sát bắt kịp Nichols trên đường Ross và màn đánh đập bắt đầu. Hình ảnh từ camera gắn trên người một cảnh sát cho thấy Nichols bị ba sĩ quan đè xuống đường. Họ tìm cách khóa tay anh ra sau lưng, xịt hơi cay vào mặt Nichols bất chấp anh nói mình đang hợp tác và đã nằm sấp xuống đường. Nichols sau đó gào thét cầu cứu, gọi mẹ vì anh biết nhà mẹ anh ở gần.\r\n\r\nGiữa lúc giằng co, một cảnh sát bước đến đá thẳng vào phần thân trên Nichols, khi anh đang nghiêng người chống tay tìm cách bò dậy. Cảnh sát này sau đó dùng chân phải đá thêm một cú vào đầu Nichols.\r\n\r\nMột cảnh sát khác tiến lại gần, hét lớn yêu cầu Nichols nằm sấp và đưa tay ra sau lưng, rồi cầm dùi cui đánh anh ít nhất hai phát. Lúc 20h35, cảnh sát thứ tư bước đến đấm vào người Nichols, khi anh đang nằm trên mặt đường, bị ba cảnh sát khác khống chế. Nhóm cảnh sát sau đó dựng Nichols đứng dậy để người này đấm tiếp.\r\n\r\nNhóm cảnh sát đánh đập Nichols trên đường Ross đêm 7/1. Video có hình ảnh bạo lực, độc giả cân nhắc trước khi xem. Video: Chính quyền thành phố Memphis\r\n\r\nVideo trích xuất từ camera an ninh bên đường cho thấy nhóm cảnh sát thay phiên nhau đấm Nichols 6 lần, trong đó ít nhất hai cú nhắm vào vùng đầu. Người đàn ông 29 tuổi khi đó không còn đứng vững.\r\n\r\nĐến 20h36, một cảnh sát khác chạy đến đá vào sườn Nichols. Đây là cú đá thứ ba mà anh phải hứng chịu. Màn đánh đập kết thúc vào khoảng 20h38, sau khi nạn nhân hứng chịu khoảng 9 cú đánh mạnh vào cơ thể, trong đó có nhiều cú vào các yếu huyệt, chỉ trong 5 phút.\r\n\r\nCảnh sát sau đó còng tay Nichols sau lưng, đặt anh nằm dựa vào một xe tuần tra rồi bỏ mặc nạn nhân hơn 20 phút mà không có bất cứ động thái sơ cứu nào. Họ nhiều lần chiếu đèn về phía anh nhưng không kiểm tra tình trạng sức khỏe nạn nhân, tiếp tục trao đổi với nhau về vụ bắt người \"thành công\". Hai cảnh sát còn có cử chỉ ăn mừng.\r\n\r\nĐến 20h41, hai nhân viên khẩn cấp được triển khai đến hiện trường, song họ cũng không sơ cứu cho Nichols mà chỉ hỏi anh đã dùng \"chất kích thích gì\". Video hiện trường cho thấy nhóm cảnh sát cáo buộc Nichols phê thuốc và có thể đã vứt ma túy khi bỏ chạy, mặc dù báo cáo từ bệnh viện thời gian qua không cho thấy anh dương tính với chất cấm.\r\n\r\nVideo kết thúc vào lúc 21h02, khi xe cấp cứu đến hiện trường và đưa Nichols tới bệnh viện, nơi anh trút hơi thở cuối cùng.\r\n\r\nNhóm cảnh sát đánh đập Nichols tàn nhẫn đến mức CNN đã đăng bài viết hướng dẫn độc giả liên hệ bác sĩ hoặc chuyên gia tâm lý trước khi xem hoặc nếu cảm thấy khủng hoảng sau khi xem, khuyến cáo mọi người không xem video cùng nhau để tránh hiệu ứng tâm lý tiêu cực và chuẩn bị tinh thần để trấn an con cái.\r\n\r\nHình ảnh nhóm cảnh sát đánh Tyre Nichols ở góc đường gần nhà mẹ anh ta vào đêm 7/1. Ảnh: Chính quyền thành phố Memphis.\r\nHình ảnh nhóm cảnh sát thay phiên nhau đánh Tyre Nichols ở góc đường đêm 7/1. Ảnh: Chính quyền thành phố Memphis.\r\n\r\nGiới chức thành phố Memphis cho biết 5 cảnh sát liên quan sự việc, tất cả đều là người da màu, đã bị sa thải sau khi cuộc điều tra nội bộ cho thấy họ đã \"vi phạm nhiều chính sách, trong đó có sử dụng vũ lực quá mức\". Họ đối mặt với 7 cáo buộc, trong đó có tội giết người, hành hung, bắt cóc và hành xử sai trái khi thực thi công vụ. Họ sẽ phải ra tòa điều trần vào ngày 17/2.\r\n\r\nChủ tịch Hội đồng Thành phố Martavius Jones đã bật khóc khi trả lời CNN về các video ghi lại diễn biến sự việc. Ông nhấn mạnh cách nhóm cảnh sát hành xử rõ ràng không đúng quy trình đối với một cuộc kiểm tra phương tiện giao thông để ngăn chặn tội phạm đường phố.\r\n\r\nTổng thống Joe Biden chia sẻ ông \"vô cùng phẫn nộ và đau đớn khi xem lại vụ đánh đập dẫn đến cái chết của Tyre Nichols\". Ông nói mọi người dân đều có quyền phẫn nộ khi chứng kiến những hình ảnh kinh hoàng này.\r\n\r\nSự việc được coi là lời cảnh tỉnh về tình trạng sử dụng bạo lực có hệ thống trong lực lượng cảnh sát Mỹ, đồng thời gợi lại trường hợp của người đàn ông da màu George Floyd bị cảnh sát ghì chết năm 2020. Cái chết của Floyd sau đó thổi bùng các cuộc biểu tình khắp nước Mỹ và lan sang cả các quốc gia khác trên thế giới.\r\n\r\nLần này, biểu tình cũng bùng phát ở hơn 10 thành phố trên khắp nước Mỹ trong hai ngày cuối tuần, đòi công lý cho Nichols và phản đối bạo lực cảnh sát. Sở Cảnh sát Memphis tuyên bố giải tán đội SCORPION để xoa dịu nỗi bức xúc của dư luận.\r\n\r\nNhà Trắng đã yêu cầu điều tra nhanh chóng, đầy đủ và minh bạch về sự việc, đồng thời kêu gọi người dân biểu tình ôn hòa. Ông Biden cũng thông báo cho thị trưởng các thành phố về biện pháp hỗ trợ của chính quyền liên bang trong trường hợp xảy ra biểu tình bạo lực.', 'https://i1-vnexpress.vnecdn.net/2023/01/30/Ca-nh-sa-t-My-da-nh-ngu-o-i-2-2904-1675054136.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=4c8Rs17vK7Z9Tfi-4rd22Q', NULL, NULL, 8, NULL, '2023-02-01 15:06:45', NULL),
(16, 'Tổ chức nhân quyền tố cáo Ukraine sử dụng mìn bướm', NULL, 'Tổ chức Giám sát Nhân quyền cáo buộc Ukraine rải mìn bướm chống bộ binh để ngăn các lực lượng Nga tiến quân, khiến gần 50 dân thường bị thương.', '\"Các lực lượng Ukraine dường như đã rải nhiều mìn\" quanh thành phố Izyum ở vùng đông bắc, chuyên gia vũ khí Steve Goose của Tổ chức Giám sát Nhân quyền (HRW), trụ sở Mỹ, nói hôm nay. Loại mìn sử dụng là mìn chống bộ binh PFM, còn gọi là mìn bướm, được rải bằng rocket.\r\n\r\nSau khi mở chiến dịch quân sự ở Ukraine hồi tháng 2/2022, các lực lượng Nga đã kiểm soát Izyum vào tháng 4. Ukraine tháng 9 mở đợt phản công và giành lại thành phố.\r\n\r\nHRW cho biết các nhà nghiên cứu trên thực địa của tổ chức đã thấy bằng chứng rocket phóng mìn được sử dụng cùng dấu vết các quả mìn ở Izyum. Họ cũng đã trao đổi với các nhân chứng, những người nhìn thấy mìn, biết ai đó bị thương hoặc được cảnh báo về loại vũ khí này.\r\n\r\n\"Các nhân viên y tế nói họ đã điều trị cho gần 50 dân thường, trong đó có ít nhất 5 trẻ em, dường như bị thương vì PFM\", theo HRW. \"Khoảng nửa số ca liên quan phải cắt bỏ bàn chân hoặc cẳng chân, những vị trí thương tích thường thấy do PFM gây ra\".\r\n\r\nMột quả mìn PFM-1 trong trạng thái triển khai. Ảnh: Interfax Ukraine.\r\nMột quả mìn PFM-1 trong trạng thái triển khai. Ảnh: Interfax Ukraine.\r\n\r\nUkraine là một trong những quốc gia tham gia Công ước cấm mìn sát thương cá nhân năm 1997 và đến năm 2020 Kiev đã tiêu hủy gần hết lượng mìn trong kho từ thời Liên Xô. Trong khi đó, một số quốc gia như Mỹ, Nga, Trung Quốc không tham gia công ước này. Năm 2021, Ukraine báo cáo Liên Hợp Quốc rằng họ còn hơn 3,3 triệu PFM trong các hệ thống rocket chưa bị tiêu hủy.\r\n\r\nHRW cho biết họ đã gửi các bằng chứng thu thập được cho giới chức Ukraine vào tháng 11. Thứ trưởng Quốc phòng Ukraine Oleksandr Polishchuk phản hồi nhưng không đề cập trực tiếp cáo buộc.\r\n\r\n\"Ukraine là thành viên đáng tin cậy của cộng đồng quốc tế và cam kết đầy đủ với các nghĩa vụ quốc tế liên quan sử dụng mìn. Điều này bao gồm không sử dụng mìn chống bộ binh trong chiến tranh\", ông Polishchuk nói, theo HRW.\r\n\r\nBộ Quốc phòng Ukraine chưa bình luận về thông tin từ HRW. Cơ quan này từng nhấn mạnh Kiev tuân thủ nghĩa vụ trong công ước và không bình luận về các loại vũ khí đã được sử dụng \"cho đến khi xung đột với Nga kết thúc và Ukraine khôi phục chủ quyền, toàn vẹn lãnh thổ\".', 'https://i1-vnexpress.vnecdn.net/2023/01/31/PFM-1-5581-1660892680-5656-1675169655.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=xUhdmM832mxpgqOf9xfgIw', NULL, NULL, 1, NULL, '2023-02-01 15:08:24', NULL),
(18, 'FBI khám nhà ông Biden', NULL, 'FBI khám xét nhà riêng của ông Joe Biden ở bang Delaware khi đang điều tra vụ ông giữ tài liệu mật từ thời làm phó tổng thống.', 'FBI khám xét nhà riêng của ông Joe Biden ở bang Delaware khi đang điều tra vụ ông giữ tài liệu mật từ thời làm phó tổng thống.', 'https://i1-vnexpress.vnecdn.net/2023/02/01/337K7K4-highres-9631-1675263355.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=6u3KJ1KgBuuUlxB30ibKsg', NULL, NULL, 10, NULL, '2023-02-01 15:10:48', NULL),
(19, 'Hải cảnh Trung Quốc xua đuổi tàu Nhật gần đảo tranh chấp', NULL, 'FBI khám xét nhà riêng của ông Joe Biden ở bang Delaware khi đang điều tra vụ ông giữ tài liệu mật từ thời làm phó tổng thống.', 'FBI khám xét nhà riêng của ông Joe Biden ở bang Delaware khi đang điều tra vụ ông giữ tài liệu mật từ thời làm phó tổng thống.', 'https://i-invdn-com.investing.com/news/moved_LYNXNPEI48074_L.jpg', NULL, NULL, 10, NULL, '2023-02-01 15:11:29', NULL),
(20, 'Bitcoin NFT và tranh cãi về vai trò sử dụng của mạng lưới Bitcoin', NULL, 'Bitcoin NFT và tranh cãi về vai trò sử dụng của mạng lưới Bitcoin', 'Dẫu là blockchain ra đời đầu tiên trên thế giới, mang đến những phát kiến đột phá, Bitcoin ngày nay đã “chậm chân” hơn trong mảng DeFi và NFT khi so với những blockchain ra đời sau này như Ethereum, Solana, Near, Avalanche,…\r\n\r\nCộng đồng đang xem Bitcoin là vàng kỹ thuật số, là tài sản tích lũy và đầu tư nhiều hơn là một blockchain nền tảng được dùng cho các giao dịch vi mô. Nhưng có khi nào bạn tự hỏi:', 'https://coin68.com/wp-content/uploads/2023/01/Bitcoin-NFT-Ordinals.jpg', NULL, NULL, 2, NULL, '2023-02-01 15:13:36', NULL),
(21, 'OOP là gì? 4 đặc tính cơ bản của OOP', NULL, 'OOP là gì? 4 đặc tính cơ bản của OOP', 'OOP (viết tắt của Object Oriented Programming) – lập trình hướng đối tượng là một phương pháp lập trình dựa trên khái niệm về lớp và đối tượng. OOP tập trung vào các đối tượng thao tác hơn là logic để thao tác chúng, giúp code dễ quản lý, tái sử dụng được và dễ bảo trì.\r\n\r\nBất kỳ developer nào muốn đi trên con đường lập trình cũng đều phải biết về OOP.\r\n\r\nĐọc bài viết này để biết:\r\n\r\nOOP là gì? Đối tượng và lớp trong OOP là gì?\r\nCác đặc tính cơ bản của OOP là gì?\r\nCác ngôn ngữ OOP phổ biến và tài liệu tham khảo\r\nTham khảo việc làm OOP Developer trên ITviec.\r\n\r\nLập trình hướng đối tượng (OOP) là gì? OOP được dùng để làm gì?\r\nOOP (viết tắt của Object Oriented Programming) – lập trình hướng đối tượng là một phương pháp lập trình dựa trên khái niệm về lớp và đối tượng. OOP tập trung vào các đối tượng thao tác hơn là logic để thao tác chúng.\r\n\r\nOOP là nền tảng của các design pattern hiện nay.\r\n\r\nĐọc thêm: Design pattern là gì? Vì sao nên học design pattern?\r\n\r\nMục tiêu của OOP là tối ưu việc quản lý source code, giúp tăng khả năng tái sử dụng và quan trọng hơn hết là giúp tóm gọn các thủ tục đã biết trước tính chất thông qua việc sử dụng các đối tượng.\r\n\r\nĐối tượng (Object) và Lớp (Class) trong OOP là gì?\r\nĐối tượng (Object)\r\nĐối tượng trong OOP bao gồm 2 thành phần chính:\r\n\r\nThuộc tính (Attribute): là những thông tin, đặc điểm của đối tượng\r\nPhương thức (Method): là những hành vi mà đối tượng có thể thực hiện\r\nĐể dễ hình dung, ta có một ví dụ thực tế về đối tượng là smartphone. Đối tượng này sẽ có:\r\n\r\nThuộc tính: màu sắc, bộ nhớ, hệ điều hành…\r\nPhương thức: gọi điện, chụp ảnh, nhắn tin, ghi âm…\r\nLớp (Class)\r\nLớp là sự trừu tượng hóa của đối tượng. Những đối tượng có những đặc tính tương tự nhau sẽ được tập hợp thành một lớp. Lớp cũng sẽ bao gồm 2 thông tin là thuộc tính và phương thức.\r\n\r\nMột đối tượng sẽ được xem là một thực thể của lớp.\r\n\r\nTiếp nối ví dụ ở phần đối tượng (object) phía trên, ta có lớp (class) smartphone gồm 2 thành phần:\r\n\r\nThuộc tính: màu sắc, bộ nhớ, hệ điều hành…\r\nPhương thức: gọi điện, chụp ảnh, nhắn tin, ghi âm…\r\nCác đối tượng của lớp này có thể là: iPhone, Samsung, Oppo, Huawei…\r\n\r\nƯu điểm của lập trình hướng đối tượng OOP\r\nOOP mô hình hóa những thứ phức tạp dưới dạng cấu trúc đơn giản.\r\nCode OOP có thể sử dụng lại, giúp tiết kiệm tài nguyên.\r\nGiúp sửa lỗi dễ dàng hơn. So với việc tìm lỗi ở nhiều vị trí trong code thì tìm lỗi trong các lớp (được cấu trúc từ trước) đơn giản và ít mất thời gian hơn.\r\nCó tính bảo mật cao, bảo vệ thông tin thông qua đóng gói.\r\nDễ mở rộng dự án.\r\n4 đặc tính cơ bản của OOP\r\nTính đóng gói (Encapsulation)\r\n\r\nTính đóng gói cho phép che giấu thông tin và những tính chất xử lý bên trong của đối tượng. Các đối tượng khác không thể tác động trực tiếp đến dữ liệu bên trong và làm thay đổi trạng thái của đối tượng mà bắt buộc phải thông qua các phương thức công khai do đối tượng đó cung cấp.\r\n\r\nTính chất này giúp tăng tính bảo mật cho đối tượng và tránh tình trạng dữ liệu bị hư hỏng ngoài ý muốn.\r\n\r\nTính kế thừa (Inheritance)\r\nĐây là tính chất được sử dụng khá nhiều. Tính kế thừa cho phép xây dựng một lớp mới (lớp Con), kế thừa và tái sử dụng các thuộc tính, phương thức dựa trên lớp cũ (lớp Cha) đã có trước đó. \r\n\r\nCác lớp Con kế thừa toàn bộ thành phần của lớp Cha và không cần phải định nghĩa lại. Lớp Con có thể mở rộng các thành phần kế thừa hoặc bổ sung những thành phần mới.\r\n\r\nVí dụ: \r\n\r\nLớp Cha là smartphone, có các thuộc tính: màu sắc, bộ nhớ, hệ điều hành…\r\nCác lớp Con là iPhone, Samsung, Oppo cũng có các thuộc tính: màu sắc, bộ nhớ, hệ điều hành…\r\nTính đa hình (Polymorphism)\r\nTính đa hình trong lập trình OOP cho phép các đối tượng khác nhau thực thi chức năng giống nhau theo những cách khác nhau.\r\n\r\nVí dụ: \r\n\r\nỞ lớp smartphone, mỗi một dòng máy đều kế thừa các thành phần của lớp cha nhưng iPhone chạy trên hệ điều hành iOS, còn Samsung lại chạy trên hệ điều hành Android.\r\nChó và mèo cùng nghe mệnh lệnh “kêu đi” từ người chủ. Chó sẽ “gâu gâu” còn mèo lại kêu “meo meo”.\r\n\r\nTính trừu tượng (Abstraction)\r\nTính trừu tượng giúp loại bỏ những thứ phức tạp, không cần thiết của đối tượng và chỉ tập trung vào những gì cốt lõi, quan trọng.\r\n\r\nVí dụ: Quản lý nhân viên thì chỉ cần quan tâm đến những thông tin như:\r\n\r\nHọ tên\r\nNgày sinh\r\nGiới tính\r\n…\r\nChứ không cần phải quản lý thêm thông tin về:\r\n\r\nChiều cao\r\nCân nặng\r\nSở thích\r\nMàu da\r\n…\r\nNhững ngôn ngữ OOP phổ biến nhất\r\nJava\r\nJava là ngôn ngữ lập trình hướng đối tượng (OOP), đa mục đích và độc lập nền tảng. Thay vì biên dịch mã nguồn thành mã máy trên nền tảng cụ thể, code Java được biên dịch thành bytecode – một định dạng trung gian. Bytecode sau đó sẽ được chạy bởi môi trường thực thi (runtime environment).\r\n\r\nCode Java “viết một lần, chạy mọi nơi” nên khá lý tưởng cho những người mới tìm hiểu.\r\n\r\nTham khảo: 12 tài liệu học lập trình Java chọn lọc\r\n\r\nC++\r\nLà một ngôn ngữ lập trình hướng đối tượng được phát triển bởi Bjarne Stroustrup nhưng C++ mang cả 2 phong cách: lập trình hướng cấu trúc giống C và có thêm phong cách hướng đối tượng. Nếu đã quen với lập trình hướng cấu trúc trước đó thì việc học C++ không phải là điều quá khó khăn.\r\n\r\nTham khảo: Tài liệu học C++ hoàn toàn miễn phí\r\n\r\nPHP\r\nPHP là ngôn ngữ lập trình đa mục đích, được rất nhiều Developer sử dụng. Đây là ngôn ngữ kịch bản mã nguồn mở, chạy ở phía server và được dùng để tạo ra các ứng dụng web.\r\n\r\nTham khảo: 10+ sách lập trình PHP hay nhất mọi cấp độ\r\n\r\nJavaScript\r\nJavaScript là ngôn ngữ lập trình được sử dụng trong việc xây dựng các website có tính tương tác cao, với mức độ phổ biến được xếp hạng bậc nhất. Học JavaScript khá dễ dàng và đặc biệt phù hợp cho những developer mới bắt đầu học lập trình.', 'https://itviec.com/blog/wp-content/uploads/2020/09/oop-la-gi-fi.webp', NULL, NULL, 12, NULL, '2023-02-01 15:17:23', NULL),
(22, 'Người Việt chật vật trong giá rét kỷ lục ở Nhật, Hàn', NULL, 'Người Việt chật vật trong giá rét kỷ lục ở Nhật, Hàn', 'Nhiều gia đình Việt ở Hàn Quốc, Nhật Bản khổ sở khi đường ống nước đóng băng, chi phí sưởi ấm tăng vọt giữa đợt lạnh giá kỷ lục tấn công Đông Bắc Á. Các nước Đông Bắc Á, trong đó có Nhật Bản và Hàn Quốc, từ tuần trước hứng chịu đợt giá rét kỷ lục. Nhiệt độ xuống thấp nhất trong vòng một thập kỷ, kết hợp với bão tuyết, gây rối loạn giao thông và ảnh hưởng lớn đến cuộc sống người dân. \"Bão tuyết khiến nhiều chuyến bay bị hủy, xe cộ luôn phải bật đèn và di chuyển ở tốc độ rất chậm, khi tầm nhìn chỉ dưới một mét\", Nguyễn Thị Bích Ngân, phiên dịch viên 28 tuổi sống tại thành phố Sapporo, tỉnh cực bắc Hokkaido của Nhật Bản, nói với VnExpress. Giao thông trên khắp nước Nhật rơi vào hỗn loạn tuần trước, khi thời tiết lạnh giá khắc nghiệt tấn công, khiến 46 trên 47 tỉnh thành ghi nhận mức nhiệt âm độ vào ngày 25/1. Không chỉ ngành hàng không bị ảnh hưởng, nhiều chuyến tàu cao tốc Shinkansen và tàu điện địa phương cũng bị gián đoạn. Đợt giá rét trở nên tồi tệ hơn vì gió lớn. Cơ quan khí tượng ở Rausu, Hokkaido, có lúc ghi nhận vận tốc gió hơn 130 km/h. \"Rất lạnh, tuyết kèm gió lớn hình thành bão tuyết, nhiệt độ luôn dưới -10 độ C\", chị Ngân nói. Tại tỉnh Nara, phía nam Nhật Bản, Quỳnh, nhân viên văn phòng 32 tuổi, cho biết khu vực cô ở thường không hay có tuyết vào mùa đông, nhưng đợt lạnh bất thường năm nay khiến tuyết rơi tới hai tuần, khiến mọi hoạt động trở nên khó khăn hơn. \"Tôi thường đi làm sớm bằng xe đạp, nhưng mặt đường đóng băng rất trơn trượt, các phương tiện đều phải đi chậm\", Quỳnh, người đã làm việc ở Nara 8 năm, chia sẻ.', 'https://i1-vnexpress.vnecdn.net/2023/02/01/afp-com-20230126-partners-053-8121-1578-1675223011.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=0EevDMIjq0bP4kPwJm9mvA', NULL, NULL, 4, NULL, '2023-02-01 15:18:41', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `password` mediumtext DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `comment` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tb_user`
--

INSERT INTO `tb_user` (`id`, `name`, `email`, `group_id`, `password`, `created_at`, `updated_at`, `comment`) VALUES
(1, 'test', 'ngovu@test.com', 1, '$2y$10$r1PbwlDfcLEJ/RkEpiUJ6ONAby4k3E68Q5RtJA6o1QfTw8t8BQtFS', NULL, '2022-11-30 16:36:04', NULL),
(2, 'admin', 'admin@test.com', 1, '$2y$10$zTgcPaKSy01H5lORi.iFPOcbzN.IANraLVEOT/4xv.CCRCz/Uzzxm', NULL, '2022-11-30 16:36:17', NULL),
(3, 'quanly1233', 'quanly@test.com', 2, '$2y$10$uC.nF3nd3brGBAYqVexACeBp.2FJZq01mKMDRXY6X8x6Wq/5u2Mn.', NULL, '2023-01-31 13:56:00', NULL),
(4, 'etensach', 'admin@email.com', 2, '$2y$10$h3O4443SHbV/09Wz7pvxreuerYTkzSiYLdw7BvAO.82SMDnox3LK2', NULL, '2022-11-30 16:36:54', NULL),
(7, 'idathang', 'ngovu2121@gmail.com', 1, '$2y$10$a.vWxtprIpLeE9gnjNGaw.GGAXkrAQ/.NE8wFDK.oF2RK1LSbk.Ym', NULL, '2022-11-30 16:37:15', NULL),
(8, 'ngolongvu', 'ngovu2122@gmail.com', 2, '$2y$10$sgfUZNBwuPI5TVO/O80BZ.j65SpkGN1.9PTyOgI4Mm41bmp.Dvdyy', NULL, '2022-12-04 11:26:32', NULL),
(9, 'admin', 'admin@123email.com', 1, '$2y$10$.upkK1c6nVKhBWLKHp.Ol.HDBSVC6hTEMdZ/vhUD0l4Sul2E9Bv4S', NULL, NULL, NULL),
(11, 'false', '1234@email.com', 2, '123456', NULL, '2023-01-31 14:29:36', NULL),
(12, 'false123456', 'false123456@email.com', 2, '$2y$10$nMRATT6tCPl.uBNoBJz.4ezHgRpVqTRha5IVeVXD0R3l.LWrs/gLq', NULL, '2023-01-31 14:22:29', NULL),
(13, 'idathang', 'ngovu813@yahoo.com.vn', 2, '$2y$10$u/G8PnCP3dd6.7GaSQn7vOiM9AwfLYWs8EkosESfae11c2f4.q3Xi', NULL, '2023-01-31 14:32:27', NULL),
(14, '124aaa', 'aaa@email.com', 2, '$2y$10$xog400q9gR70Lr919QMCw.RUytwGZNm183H/9BJ8KTmrtkIFP9guO', NULL, '2023-02-01 14:39:01', NULL),
(17, 'idathang', '113@email.com', 2, '$2y$10$.8wT1hJmAgJEa0SxrLccJuVsltjWXboKjQz3q8ks2De0EeJiXZvX.', '2023-02-01 14:53:39', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@test.com', NULL, '123456', NULL, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `tb_comment`
--
ALTER TABLE `tb_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idTinTuc` (`idTinTuc`),
  ADD KEY `idUser` (`idUser`);

--
-- Chỉ mục cho bảng `tb_loaitin`
--
ALTER TABLE `tb_loaitin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idTheLoai` (`idTheLoai`);

--
-- Chỉ mục cho bảng `tb_slide`
--
ALTER TABLE `tb_slide`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tb_theloai`
--
ALTER TABLE `tb_theloai`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tb_tintuc`
--
ALTER TABLE `tb_tintuc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idLoaiTin` (`idLoaiTin`),
  ADD KEY `idTheLoai` (`idTheLoai`);

--
-- Chỉ mục cho bảng `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tb_comment`
--
ALTER TABLE `tb_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tb_loaitin`
--
ALTER TABLE `tb_loaitin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tb_slide`
--
ALTER TABLE `tb_slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tb_theloai`
--
ALTER TABLE `tb_theloai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `tb_tintuc`
--
ALTER TABLE `tb_tintuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tb_comment`
--
ALTER TABLE `tb_comment`
  ADD CONSTRAINT `tb_comment_ibfk_2` FOREIGN KEY (`idTinTuc`) REFERENCES `tb_tintuc` (`id`),
  ADD CONSTRAINT `tb_comment_ibfk_3` FOREIGN KEY (`idUser`) REFERENCES `tb_user` (`id`);

--
-- Các ràng buộc cho bảng `tb_loaitin`
--
ALTER TABLE `tb_loaitin`
  ADD CONSTRAINT `tb_loaitin_ibfk_1` FOREIGN KEY (`idTheLoai`) REFERENCES `tb_theloai` (`id`);

--
-- Các ràng buộc cho bảng `tb_tintuc`
--
ALTER TABLE `tb_tintuc`
  ADD CONSTRAINT `tb_tintuc_ibfk_1` FOREIGN KEY (`idLoaiTin`) REFERENCES `tb_loaitin` (`id`),
  ADD CONSTRAINT `tb_tintuc_ibfk_2` FOREIGN KEY (`idTheLoai`) REFERENCES `tb_theloai` (`id`);

--
-- Các ràng buộc cho bảng `tb_user`
--
ALTER TABLE `tb_user`
  ADD CONSTRAINT `tb_user_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
