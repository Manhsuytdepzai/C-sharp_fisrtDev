USE [master]
GO
/****** Object:  Database [QuanLyBanHang_2024_v3]    Script Date: 16/05/2024 8:14:12 CH ******/
CREATE DATABASE [QuanLyBanHang_2024_v3]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyBanHang_2024_v3', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\QuanLyBanHang_2024_v3.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLyBanHang_2024_v3_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\QuanLyBanHang_2024_v3_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QuanLyBanHang_2024_v3] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyBanHang_2024_v3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyBanHang_2024_v3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyBanHang_2024_v3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyBanHang_2024_v3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyBanHang_2024_v3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyBanHang_2024_v3] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyBanHang_2024_v3] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QuanLyBanHang_2024_v3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyBanHang_2024_v3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyBanHang_2024_v3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyBanHang_2024_v3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyBanHang_2024_v3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyBanHang_2024_v3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyBanHang_2024_v3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyBanHang_2024_v3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyBanHang_2024_v3] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanLyBanHang_2024_v3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyBanHang_2024_v3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyBanHang_2024_v3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyBanHang_2024_v3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyBanHang_2024_v3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyBanHang_2024_v3] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyBanHang_2024_v3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyBanHang_2024_v3] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyBanHang_2024_v3] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyBanHang_2024_v3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyBanHang_2024_v3] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyBanHang_2024_v3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyBanHang_2024_v3] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyBanHang_2024_v3] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyBanHang_2024_v3] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QuanLyBanHang_2024_v3] SET QUERY_STORE = ON
GO
ALTER DATABASE [QuanLyBanHang_2024_v3] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QuanLyBanHang_2024_v3]
GO
/****** Object:  Table [dbo].[HopDong]    Script Date: 16/05/2024 8:14:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HopDong](
	[SoHieuHD] [varchar](15) NOT NULL,
	[MaKH] [varchar](15) NOT NULL,
	[NgayLap] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SoHieuHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HopDong_MatHang]    Script Date: 16/05/2024 8:14:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HopDong_MatHang](
	[SoHieuHD] [varchar](15) NOT NULL,
	[MaMH] [varchar](10) NOT NULL,
	[SoLuong] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SoHieuHD] ASC,
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 16/05/2024 8:14:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [varchar](15) NOT NULL,
	[TenKH] [nvarchar](30) NOT NULL,
	[GioiTinh] [nvarchar](5) NOT NULL,
	[DiaChi] [nvarchar](80) NOT NULL,
	[DienThoai] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MatHang]    Script Date: 16/05/2024 8:14:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MatHang](
	[MaMH] [varchar](10) NOT NULL,
	[TenMH] [nvarchar](100) NOT NULL,
	[DonViTinh] [nvarchar](10) NOT NULL,
	[DonGia] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[HopDong] ([SoHieuHD], [MaKH], [NgayLap]) VALUES (N'ABC20220110', N'PA655471', CAST(N'2022-10-01T00:00:00.000' AS DateTime))
INSERT [dbo].[HopDong] ([SoHieuHD], [MaKH], [NgayLap]) VALUES (N'ABC20220121', N'PE730980', CAST(N'2022-01-21T00:00:00.000' AS DateTime))
INSERT [dbo].[HopDong] ([SoHieuHD], [MaKH], [NgayLap]) VALUES (N'ABC20220125', N'PD794787', CAST(N'2022-01-25T00:00:00.000' AS DateTime))
INSERT [dbo].[HopDong] ([SoHieuHD], [MaKH], [NgayLap]) VALUES (N'ABC20220319', N'PP163449', CAST(N'2022-03-19T00:00:00.000' AS DateTime))
INSERT [dbo].[HopDong] ([SoHieuHD], [MaKH], [NgayLap]) VALUES (N'ABC20220422', N'PE832119', CAST(N'2022-04-22T00:00:00.000' AS DateTime))
INSERT [dbo].[HopDong] ([SoHieuHD], [MaKH], [NgayLap]) VALUES (N'ABC20220720', N'PQ476838', CAST(N'2022-07-20T00:00:00.000' AS DateTime))
INSERT [dbo].[HopDong] ([SoHieuHD], [MaKH], [NgayLap]) VALUES (N'ABC20220724', N'PC364905', CAST(N'2022-07-24T00:00:00.000' AS DateTime))
INSERT [dbo].[HopDong] ([SoHieuHD], [MaKH], [NgayLap]) VALUES (N'ABC20220820', N'PA472952', CAST(N'2022-08-20T00:00:00.000' AS DateTime))
INSERT [dbo].[HopDong] ([SoHieuHD], [MaKH], [NgayLap]) VALUES (N'ABC20220901', N'PC472104', CAST(N'2022-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[HopDong] ([SoHieuHD], [MaKH], [NgayLap]) VALUES (N'ABC20221004', N'PB440502', CAST(N'2022-10-04T00:00:00.000' AS DateTime))
INSERT [dbo].[HopDong] ([SoHieuHD], [MaKH], [NgayLap]) VALUES (N'ABC20221006', N'PH424027', CAST(N'2022-10-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[HopDong_MatHang] ([SoHieuHD], [MaMH], [SoLuong]) VALUES (N'ABC20220110', N'570330', 74)
INSERT [dbo].[HopDong_MatHang] ([SoHieuHD], [MaMH], [SoLuong]) VALUES (N'ABC20220121', N'441011', 208)
INSERT [dbo].[HopDong_MatHang] ([SoHieuHD], [MaMH], [SoLuong]) VALUES (N'ABC20220125', N'030611', 126)
INSERT [dbo].[HopDong_MatHang] ([SoHieuHD], [MaMH], [SoLuong]) VALUES (N'ABC20220319', N'610620', 171)
INSERT [dbo].[HopDong_MatHang] ([SoHieuHD], [MaMH], [SoLuong]) VALUES (N'ABC20220422', N'392290', 148)
INSERT [dbo].[HopDong_MatHang] ([SoHieuHD], [MaMH], [SoLuong]) VALUES (N'ABC20220720', N'71410', 112)
INSERT [dbo].[HopDong_MatHang] ([SoHieuHD], [MaMH], [SoLuong]) VALUES (N'ABC20220724', N'250590', 143)
INSERT [dbo].[HopDong_MatHang] ([SoHieuHD], [MaMH], [SoLuong]) VALUES (N'ABC20220820', N'640219', 76)
INSERT [dbo].[HopDong_MatHang] ([SoHieuHD], [MaMH], [SoLuong]) VALUES (N'ABC20220901', N'540720', 111)
INSERT [dbo].[HopDong_MatHang] ([SoHieuHD], [MaMH], [SoLuong]) VALUES (N'ABC20221004', N'340600', 77)
INSERT [dbo].[HopDong_MatHang] ([SoHieuHD], [MaMH], [SoLuong]) VALUES (N'ABC20221006', N'570220', 181)
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'PA472952', N'Nguyễn Văn Tiền', N'Nam', N'231/12 Lê Văn Sỹ, P. 14, Q. Phú Nhuận,', N'913807978')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'PA655471', N'Ngô Đức Thắng', N'Nam', N'178-180 Hồng Bàng, P. 12, Q. 5,', N'903907001')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'PB440502', N'Hoàng Minh Trung', N'Nam', N'E8/225 Ấp 5,Quốc Lộ 50, X. Phong Phú, H. Bình Chánh,', N'903800568')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'PC364905', N'Lưu Vĩ Lương', N'Nam', N'220/21/7 Lê Văn Sỹ, P. 14, Q. 3,', N'903759767')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'PC472104', N'Phan Minh Triết', N'Nam', N'180 Quốc Lộ 13, P. 26, Q. Bình Thạnh,', N'908637719')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'PD794787', N'Nguyễn Ngọc Quỳnh Tiên', N'Nữ', N'365B Trần Hưng Đạo, P. Cầu Kho, Q. 1,', N'903659850')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'PE730980', N'Đỗ Hữu Tuệ', N'Nam', N'Tầng6, Tòa Nhà Waseco, 10 Phổ Quang, P. 2, Q. Tân Bình,', N'918498984')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'PE832119', N'Hoàng Thị Phương Liên', N'Nữ', N'79 Trường Sơn, P. 2, Q. Tân Bình,', N'903702314')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'PH424027', N'Trần Thị Hà Mỹ Lệ', N'Nữ', N'94 Khu Phố 3,Hà Huy Giáp, P. Thạnh Lộc, Q. 12,', N'903919331')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'PP163449', N'Nguyễn Văn Nghĩa', N'Nam', N'135 Tạ Uyên, P. 4, Q. 11,', N'903737826')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'PQ476838', N'Trần Thị Ngọc Hạnh', N'Nữ', N'351/29 Lê Đại Hành, P. 11, Q. 11,', N'903123459')
GO
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [DonViTinh], [DonGia]) VALUES (N'030349', N'Cá ngừ đông lạnh', N'kg', 38.9)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [DonViTinh], [DonGia]) VALUES (N'030611', N'Tôm hùm đông lạnh', N'kg', 15.2)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [DonViTinh], [DonGia]) VALUES (N'110814', N'Tinh bột sắn', N'tấn', 45.6)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [DonViTinh], [DonGia]) VALUES (N'250590', N'Cát tự nhiên các loại', N'tấn', 36.8)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [DonViTinh], [DonGia]) VALUES (N'270900', N'Dầu thô ', N'thùng', 28.4)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [DonViTinh], [DonGia]) VALUES (N'300220', N'Vắc xin cho người:', N'hộp', 125.5)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [DonViTinh], [DonGia]) VALUES (N'340600', N'Nến', N'hộp', 6.9)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [DonViTinh], [DonGia]) VALUES (N'392290', N'Bệ rửa, bình xả nước', N'chiếc', 38.5)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [DonViTinh], [DonGia]) VALUES (N'392321', N'Bao, túi bằng nhựa PE', N'chiếc', 39.6)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [DonViTinh], [DonGia]) VALUES (N'440729', N'Gỗ đã bào, đã đánh giáp', N'm3', 38.6)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [DonViTinh], [DonGia]) VALUES (N'441011', N'Ván dăm bằng gỗ', N'm3', 46.4)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [DonViTinh], [DonGia]) VALUES (N'482010', N'Sổ đăng ký, Sổ kế toán, vở ghi chép, Sổ ', N'quyển', 12.5)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [DonViTinh], [DonGia]) VALUES (N'490110', N'Các loại sách in, sách gấp, sách mỏng', N'quyển', 11.5)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [DonViTinh], [DonGia]) VALUES (N'540720', N'Vải dệt thoi từ sợi dạng dải', N'cuộn', 75.2)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [DonViTinh], [DonGia]) VALUES (N'570220', N'Hàng dệt trải sàn từ xơ dừa', N'm2', 47.2)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [DonViTinh], [DonGia]) VALUES (N'570330', N'Thảm dệt', N'm2', 50.4)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [DonViTinh], [DonGia]) VALUES (N'590610', N'Băng dính ', N'cuộn', 6.2)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [DonViTinh], [DonGia]) VALUES (N'610620', N'Áo dệt kim nữ', N'cái', 22.4)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [DonViTinh], [DonGia]) VALUES (N'640192', N'Giày cổ cao quá mắt cá chân', N'đôi', 89.9)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [DonViTinh], [DonGia]) VALUES (N'640219', N'Giày thể thao', N'đôi', 78.6)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [DonViTinh], [DonGia]) VALUES (N'680422', N'Đá mài', N'viên', 8.6)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [DonViTinh], [DonGia]) VALUES (N'71410', N'Sắn thái lát', N'tấn', 41.1)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [DonViTinh], [DonGia]) VALUES (N'970190', N'Tranh vẽ, tranh phác họa và tranh bột màu', N'bức', 90.2)
GO
ALTER TABLE [dbo].[HopDong]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HopDong_MatHang]  WITH CHECK ADD FOREIGN KEY([SoHieuHD])
REFERENCES [dbo].[HopDong] ([SoHieuHD])
GO
ALTER TABLE [dbo].[HopDong_MatHang]  WITH CHECK ADD FOREIGN KEY([MaMH])
REFERENCES [dbo].[MatHang] ([MaMH])
GO
USE [master]
GO
ALTER DATABASE [QuanLyBanHang_2024_v3] SET  READ_WRITE 
GO
