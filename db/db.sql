USE [master]
GO
/****** Object:  Database [HinoData]    Script Date: 8/9/2023 2:30:56 PM ******/
CREATE DATABASE [HinoData]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HinoData', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.TRUNGSSQL\MSSQL\DATA\HinoData.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HinoData_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.TRUNGSSQL\MSSQL\DATA\HinoData_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [HinoData] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HinoData].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HinoData] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HinoData] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HinoData] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HinoData] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HinoData] SET ARITHABORT OFF 
GO
ALTER DATABASE [HinoData] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HinoData] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HinoData] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HinoData] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HinoData] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HinoData] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HinoData] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HinoData] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HinoData] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HinoData] SET  ENABLE_BROKER 
GO
ALTER DATABASE [HinoData] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HinoData] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HinoData] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HinoData] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HinoData] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HinoData] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HinoData] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HinoData] SET RECOVERY FULL 
GO
ALTER DATABASE [HinoData] SET  MULTI_USER 
GO
ALTER DATABASE [HinoData] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HinoData] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HinoData] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HinoData] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HinoData] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HinoData] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'HinoData', N'ON'
GO
ALTER DATABASE [HinoData] SET QUERY_STORE = ON
GO
ALTER DATABASE [HinoData] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [HinoData]
GO
/****** Object:  User [admin]    Script Date: 8/9/2023 2:30:56 PM ******/
CREATE USER [admin] FOR LOGIN [admin] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [admin]
GO
/****** Object:  Table [dbo].[ChiNhanh]    Script Date: 8/9/2023 2:30:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiNhanh](
	[ma_chi_nhanh] [nvarchar](7) NOT NULL,
	[ten_chi_nhanh] [nvarchar](50) NOT NULL,
	[ma_so_thue] [nvarchar](50) NOT NULL,
	[dia_chi] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_chi_nhanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPhieuNhap]    Script Date: 8/9/2023 2:30:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuNhap](
	[id_chi_tiet_phieu_nhap] [int] IDENTITY(1,1) NOT NULL,
	[ma_nhan_vien_kd] [nvarchar](15) NULL,
	[ma_khach_hang] [nvarchar](7) NULL,
	[ma_phieu_nhap] [nvarchar](15) NULL,
	[ma_phieu_xuat] [nvarchar](15) NULL,
	[ma_vi_tri] [nvarchar](7) NOT NULL,
	[ma_loai_xe] [nvarchar](20) NOT NULL,
	[so_khung] [nvarchar](7) NOT NULL,
	[so_may] [nvarchar](7) NOT NULL,
	[so_luong_nhap] [int] NULL,
	[gia_nhap] [float] NULL,
	[gia_xuat] [float] NULL,
	[so_luong_xuat] [int] NULL,
	[xuat_kho] [bit] NOT NULL,
	[ma_nhan_vien_nhap] [nvarchar](15) NULL,
	[ngay_nhap] [datetime] NULL,
	[ngay_sua_doi_pn] [datetime] NULL,
	[nguoi_sua_doi_pn] [nvarchar](15) NULL,
	[ma_nhan_vien_xuat] [nvarchar](15) NULL,
	[ngay_xuat] [datetime] NULL,
	[ngay_sua_doi_px] [datetime] NULL,
	[nguoi_sua_doi_px] [nvarchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_chi_tiet_phieu_nhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 8/9/2023 2:30:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[ma_khach_hang] [nvarchar](7) NOT NULL,
	[ten_khach_hang] [nvarchar](50) NOT NULL,
	[dia_chi] [nvarchar](100) NOT NULL,
	[email] [nvarchar](50) NULL,
	[sdt] [nvarchar](13) NULL,
	[ma_so_thue] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_khach_hang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiXe]    Script Date: 8/9/2023 2:30:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiXe](
	[ma_loai_xe] [nvarchar](20) NOT NULL,
	[dong_xe] [nvarchar](50) NOT NULL,
	[ten_loai_xe] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_loai_xe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 8/9/2023 2:30:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[ma_nhan_vien] [nvarchar](15) NOT NULL,
	[mat_khau] [nvarchar](50) NOT NULL,
	[ten_nhanh_nien] [nvarchar](50) NOT NULL,
	[ngay_sinh] [date] NOT NULL,
	[gioi_tinh] [nvarchar](3) NOT NULL,
	[dia_chi] [nvarchar](100) NULL,
	[email] [nvarchar](50) NOT NULL,
	[chucVu] [nvarchar](20) NOT NULL,
	[ma_phong_ban] [nvarchar](7) NOT NULL,
	[hinh] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_nhan_vien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 8/9/2023 2:30:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[ma_phieu_nhap] [nvarchar](15) NOT NULL,
	[ma_nhan_vien] [nvarchar](15) NOT NULL,
	[ngay_nhap] [datetime] NULL,
	[ngay_sua_doi] [datetime] NULL,
	[nguoi_sua_doi] [nvarchar](15) NULL,
	[dien_giai] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_phieu_nhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuXuat]    Script Date: 8/9/2023 2:30:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuXuat](
	[ma_phieu_xuat] [nvarchar](15) NOT NULL,
	[so_luong] [int] NULL,
	[gia_xuat] [float] NULL,
	[nguoi_xuat_kho] [nvarchar](15) NULL,
	[ngay_xuat] [datetime] NULL,
	[nguoi_sua_doi] [nvarchar](15) NULL,
	[ngay_sua_doi] [datetime] NULL,
	[dien_giai] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_phieu_xuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhongBan]    Script Date: 8/9/2023 2:30:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongBan](
	[ma_phong_ban] [nvarchar](7) NOT NULL,
	[ten_phong_ban] [nvarchar](50) NOT NULL,
	[ma_chi_nhanh] [nvarchar](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_phong_ban] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ViTri]    Script Date: 8/9/2023 2:30:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ViTri](
	[ma_vi_tri] [nvarchar](7) NOT NULL,
	[ma_chi_nhanh] [nvarchar](7) NOT NULL,
	[ten_vi_tri] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_vi_tri] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD FOREIGN KEY([ma_khach_hang])
REFERENCES [dbo].[KhachHang] ([ma_khach_hang])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD FOREIGN KEY([ma_loai_xe])
REFERENCES [dbo].[LoaiXe] ([ma_loai_xe])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD FOREIGN KEY([ma_nhan_vien_kd])
REFERENCES [dbo].[NhanVien] ([ma_nhan_vien])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD FOREIGN KEY([ma_phieu_nhap])
REFERENCES [dbo].[PhieuNhap] ([ma_phieu_nhap])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD FOREIGN KEY([ma_phieu_xuat])
REFERENCES [dbo].[PhieuXuat] ([ma_phieu_xuat])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD FOREIGN KEY([ma_vi_tri])
REFERENCES [dbo].[ViTri] ([ma_vi_tri])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([ma_phong_ban])
REFERENCES [dbo].[PhongBan] ([ma_phong_ban])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD FOREIGN KEY([ma_nhan_vien])
REFERENCES [dbo].[NhanVien] ([ma_nhan_vien])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[PhieuXuat]  WITH CHECK ADD FOREIGN KEY([nguoi_xuat_kho])
REFERENCES [dbo].[NhanVien] ([ma_nhan_vien])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhongBan]  WITH CHECK ADD FOREIGN KEY([ma_chi_nhanh])
REFERENCES [dbo].[ChiNhanh] ([ma_chi_nhanh])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ViTri]  WITH CHECK ADD FOREIGN KEY([ma_chi_nhanh])
REFERENCES [dbo].[ChiNhanh] ([ma_chi_nhanh])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [CHK_PersonAge] CHECK  (((datepart(year,getdate())-datepart(year,[ngay_sinh]))>=(18)))
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [CHK_PersonAge]
GO
/****** Object:  StoredProcedure [dbo].[SP_cap_nhat_sl_xuat]    Script Date: 8/9/2023 2:30:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_cap_nhat_sl_xuat] @SK Nvarchar(7)
AS
BEGIN
	update ChiTietPhieuNhap
	set xuat_kho=1
	where so_khung=@SK
END
GO
/****** Object:  StoredProcedure [dbo].[SP_chi_nhanh_auto_id]    Script Date: 8/9/2023 2:30:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_chi_nhanh_auto_id]
AS
BEGIN
	DECLARE @MA_NEXT nvarchar(7)
	DECLARE @MAX INT
	SELECT @MAX=COUNT(ma_chi_nhanh)+1 FROM ChiNhanh
	SET @MA_NEXT='CN' + RIGHT('0' +CAST(@MAX AS VARCHAR(5)),5)
	WHILE (EXISTS (SELECT ma_chi_nhanh FROM ChiNhanh WHERE ma_chi_nhanh=@MA_NEXT))
		BEGIN
			SET @MAX=@MAX+1
			SET @MA_NEXT='CN' + RIGHT('0' +CAST(@MAX AS VARCHAR(5)),5)
		END
SELECT @MA_NEXT
END

GO
/****** Object:  StoredProcedure [dbo].[SP_doanh_so]    Script Date: 8/9/2023 2:30:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_doanh_so] @ma_nhan_vien_kd nvarchar(15), @ma_loai_xe nvarchar(20)
AS
BEGIN
	Select ct.ma_loai_xe,lx.dong_xe,lx.ten_loai_xe,sum(ct.so_luong_xuat) as so_luong_xuat, kh.ten_khach_hang,nv.ten_nhanh_nien
	from ChiTietPhieuNhap ct
	inner join LoaiXe lx on lx.ma_loai_xe=ct.ma_loai_xe
	inner join NhanVien nv on nv.ma_nhan_vien=ct.ma_nhan_vien_kd
	inner join KhachHang kh on kh.ma_khach_hang=ct.ma_khach_hang
	where ct.xuat_kho = 1 and ct.ma_nhan_vien_kd=@ma_nhan_vien_kd and ct.ma_loai_xe=@ma_loai_xe
	Group by ct.ma_loai_xe,lx.dong_xe,lx.ten_loai_xe,kh.ten_khach_hang,nv.ten_nhanh_nien
END
GO
/****** Object:  StoredProcedure [dbo].[SP_doanh_so_nvkd]    Script Date: 8/9/2023 2:30:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_doanh_so_nvkd] 
AS
BEGIN
	select ct.ma_nhan_vien_kd,nv.ten_nhanh_nien,SUM(so_luong_xuat) as so_luong_xuat 
	from ChiTietPhieuNhap ct inner join NhanVien nv on  nv.ma_nhan_vien=ct.ma_nhan_vien_kd 
	where xuat_kho=1 group by ct.ma_nhan_vien_kd,nv.ten_nhanh_nien
END
GO
/****** Object:  StoredProcedure [dbo].[SP_doanh_so_xuatFile]    Script Date: 8/9/2023 2:30:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_doanh_so_xuatFile] 
AS
BEGIN
	Select ct.ma_loai_xe,lx.dong_xe,lx.ten_loai_xe,sum(ct.so_luong_xuat) as so_luong_xuat, kh.ten_khach_hang,nv.ten_nhanh_nien
	from ChiTietPhieuNhap ct
	inner join LoaiXe lx on lx.ma_loai_xe=ct.ma_loai_xe
	inner join NhanVien nv on nv.ma_nhan_vien=ct.ma_nhan_vien_kd
	inner join KhachHang kh on kh.ma_khach_hang=ct.ma_khach_hang
	where ct.xuat_kho = 1
	Group by ct.ma_loai_xe,lx.dong_xe,lx.ten_loai_xe,kh.ten_khach_hang,nv.ten_nhanh_nien
END
GO
/****** Object:  StoredProcedure [dbo].[SP_doanh_thu]    Script Date: 8/9/2023 2:30:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_doanh_thu]
AS
BEGIN
	SELECT ct.ma_loai_xe,lx.ten_loai_xe, Sum(ct.so_luong_xuat) as so_luong_xuat,SUM(ct.gia_xuat - ct.gia_nhap) as doanh_thu FROM ChiTietPhieuNhap ct
	inner join LoaiXe lx on lx.ma_loai_xe=ct.ma_loai_xe
	WHERE xuat_kho=1
	Group by ct.ma_loai_xe,lx.ten_loai_xe
END
GO
/****** Object:  StoredProcedure [dbo].[SP_doanh_thu_theo_ngay]    Script Date: 8/9/2023 2:30:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_doanh_thu_theo_ngay] @date1 date, @date2 date
AS
BEGIN
	SELECT ct.ma_loai_xe,lx.ten_loai_xe, Sum(ct.so_luong_xuat) as so_luong_xuat,SUM(ct.gia_xuat - ct.gia_nhap) as doanh_thu FROM ChiTietPhieuNhap ct
	inner join LoaiXe lx on lx.ma_loai_xe=ct.ma_loai_xe
	WHERE xuat_kho=1 and ct.ngay_xuat between @date1 and @date2
	Group by ct.ma_loai_xe,lx.ten_loai_xe
END
GO
/****** Object:  StoredProcedure [dbo].[SP_khach_hang_auto_id]    Script Date: 8/9/2023 2:30:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_khach_hang_auto_id]
AS
BEGIN
	DECLARE @MA_NEXT nvarchar(7)
	DECLARE @MAX INT
	SELECT @MAX=COUNT(ma_khach_hang)+1 FROM KhachHang
	SET @MA_NEXT='KH' + RIGHT('0' +CAST(@MAX AS VARCHAR(5)),5)
	WHILE (EXISTS (SELECT ma_khach_hang FROM KhachHang WHERE ma_khach_hang=@MA_NEXT))
		BEGIN
			SET @MAX=@MAX+1
			SET @MA_NEXT='KH' + RIGHT('0' +CAST(@MAX AS VARCHAR(5)),5)
		END
SELECT @MA_NEXT
END

GO
/****** Object:  StoredProcedure [dbo].[SP_nhan_vien_auto_id]    Script Date: 8/9/2023 2:30:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_nhan_vien_auto_id]
AS
BEGIN
DECLARE @id VARCHAR(15)
	IF (SELECT COUNT(ma_nhan_vien) FROM NhanVien) = 0
		SET @id = '0'
	ELSE
		SELECT @id = MAX(RIGHT(ma_nhan_vien, 5)) FROM NhanVien
		SELECT @id = CASE
			WHEN @id = 99999 THEN 'NV00001' + CONVERT(VARCHAR,GETDATE(),112)
			WHEN @id >= 0 and @id < 9 THEN 'NV' + CONVERT(VARCHAR,GETDATE(),112)+'0000' +CONVERT(VARCHAR, CONVERT(INT, @id) + 1)
			WHEN @id >= 9 THEN 'NV' +CONVERT(VARCHAR,GETDATE(),112)+'000' +CONVERT(VARCHAR, CONVERT(INT, @id) + 1)
			WHEN @id >= 99 THEN 'NV' + CONVERT(VARCHAR,GETDATE(),112) +'00'+CONVERT(VARCHAR, CONVERT(INT, @id) + 1)
			WHEN @id >= 999 THEN  'NV' +CONVERT(VARCHAR,GETDATE(),112) +'0'+ CONVERT(VARCHAR, CONVERT(INT, @id) + 1)
			WHEN @id >= 9999 THEN  'NV' + CONVERT(VARCHAR,GETDATE(),112) + CONVERT(VARCHAR, CONVERT(INT, @id) + 1)
		END
	SELECT @id
END

GO
/****** Object:  StoredProcedure [dbo].[SP_phieu_nhap_auto_id]    Script Date: 8/9/2023 2:30:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_phieu_nhap_auto_id]
AS
BEGIN
DECLARE @id VARCHAR(15)
	IF (SELECT COUNT(ma_phieu_nhap) FROM PhieuNhap) = 0
		SET @id = '0'
	ELSE
		SELECT @id = MAX(RIGHT(ma_phieu_nhap, 5))  FROM PhieuNhap
		SELECT @id = CASE
			WHEN @id = 99999 THEN 'PN00001' + CONVERT(VARCHAR,GETDATE(),112)
			WHEN @id >= 0 and @id < 9 THEN 'PN' + CONVERT(VARCHAR,GETDATE(),112)+'0000' +CONVERT(VARCHAR, CONVERT(INT, @id) + 1)
			WHEN @id >= 9 THEN 'PN' +CONVERT(VARCHAR,GETDATE(),112)+'000' +CONVERT(VARCHAR, CONVERT(INT, @id) + 1)
			WHEN @id >= 99 THEN 'PN' + CONVERT(VARCHAR,GETDATE(),112) +'00'+CONVERT(VARCHAR, CONVERT(INT, @id) + 1)
			WHEN @id >= 999 THEN  'PN' +CONVERT(VARCHAR,GETDATE(),112) +'0'+ CONVERT(VARCHAR, CONVERT(INT, @id) + 1)
			WHEN @id >= 9999 THEN  'PN' + CONVERT(VARCHAR,GETDATE(),112) + CONVERT(VARCHAR, CONVERT(INT, @id) + 1)
		END
	SELECT @id AS MaPN
END

GO
/****** Object:  StoredProcedure [dbo].[SP_phieu_xuat_auto_id]    Script Date: 8/9/2023 2:30:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_phieu_xuat_auto_id]
AS
BEGIN
DECLARE @id VARCHAR(15)
	IF (SELECT COUNT(ma_phieu_xuat) FROM PhieuXuat) = 0
		SET @id = '0'
	ELSE
		SELECT @id = MAX(RIGHT(ma_phieu_xuat, 5)) FROM PhieuXuat
		SELECT @id = CASE
			WHEN @id = 99999 THEN 'PX00001' + CONVERT(VARCHAR,GETDATE(),112)
			WHEN @id >= 0 and @id < 9 THEN 'PX' + CONVERT(VARCHAR,GETDATE(),112)+'0000' +CONVERT(VARCHAR, CONVERT(INT, @id) + 1)
			WHEN @id >= 9 THEN 'PX' +CONVERT(VARCHAR,GETDATE(),112)+'000' +CONVERT(VARCHAR, CONVERT(INT, @id) + 1)
			WHEN @id >= 99 THEN 'PX' + CONVERT(VARCHAR,GETDATE(),112) +'00'+CONVERT(VARCHAR, CONVERT(INT, @id) + 1)
			WHEN @id >= 999 THEN  'PX' +CONVERT(VARCHAR,GETDATE(),112) +'0'+ CONVERT(VARCHAR, CONVERT(INT, @id) + 1)
			WHEN @id >= 9999 THEN  'PX' + CONVERT(VARCHAR,GETDATE(),112) + CONVERT(VARCHAR, CONVERT(INT, @id) + 1)
		END
	SELECT @id
END

GO
/****** Object:  StoredProcedure [dbo].[SP_SL_ton_kho]    Script Date: 8/9/2023 2:30:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_SL_ton_kho] 
AS
BEGIN
	SELECT ct.ma_loai_xe,lx.dong_xe,lx.ten_loai_xe, ct.so_luong_nhap ,vt.ten_vi_tri   FROM ChiTietPhieuNhap ct
	inner join LoaiXe lx on lx.ma_loai_xe=ct.ma_loai_xe
	inner join ViTri vt on vt.ma_vi_tri=ct.ma_vi_tri
	where ct.xuat_kho=0
END
GO
/****** Object:  StoredProcedure [dbo].[SP_so_luong_ton_kho]    Script Date: 8/9/2023 2:30:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_so_luong_ton_kho] @LoaiXe Nvarchar(20), @ViTri Nvarchar(20)
AS
BEGIN
	SELECT ct.ma_loai_xe,lx.dong_xe,lx.ten_loai_xe, ct.so_luong_nhap ,vt.ten_vi_tri   FROM ChiTietPhieuNhap ct
	inner join LoaiXe lx on lx.ma_loai_xe=ct.ma_loai_xe
	inner join ViTri vt on vt.ma_vi_tri=ct.ma_vi_tri
	where ct.xuat_kho=0 and ct.ma_vi_tri= @ViTri and lx.ma_loai_xe = @LoaiXe 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_vi_tri_auto_id]    Script Date: 8/9/2023 2:30:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_vi_tri_auto_id]
AS
BEGIN
	DECLARE @MA_NEXT nvarchar(7)
	DECLARE @MAX INT
	SELECT @MAX=COUNT(ma_vi_tri)+1 FROM ViTri
	SET @MA_NEXT='VT' + RIGHT('0' +CAST(@MAX AS VARCHAR(5)),5)
	WHILE (EXISTS (SELECT ma_vi_tri FROM ViTri WHERE ma_vi_tri=@MA_NEXT))
		BEGIN
			SET @MAX=@MAX+1
			SET @MA_NEXT='VT' + RIGHT('0' +CAST(@MAX AS VARCHAR(5)),5)
		END
SELECT @MA_NEXT
END

GO
USE [master]
GO
ALTER DATABASE [HinoData] SET  READ_WRITE 
GO
