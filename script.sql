USE [master]
GO
/****** Object:  Database [TechShop ]    Script Date: 11/11/2016 4:13:40 PM ******/
CREATE DATABASE [TechShop ]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TechShop', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\TechShop .mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TechShop _log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\TechShop _log.ldf' , SIZE = 5120KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TechShop ] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TechShop ].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TechShop ] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TechShop ] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TechShop ] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TechShop ] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TechShop ] SET ARITHABORT OFF 
GO
ALTER DATABASE [TechShop ] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TechShop ] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [TechShop ] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TechShop ] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TechShop ] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TechShop ] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TechShop ] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TechShop ] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TechShop ] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TechShop ] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TechShop ] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TechShop ] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TechShop ] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TechShop ] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TechShop ] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TechShop ] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TechShop ] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TechShop ] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TechShop ] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TechShop ] SET  MULTI_USER 
GO
ALTER DATABASE [TechShop ] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TechShop ] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TechShop ] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TechShop ] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [TechShop ]
GO
/****** Object:  Table [dbo].[tblChiTietKhuyenMai]    Script Date: 11/11/2016 4:13:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChiTietKhuyenMai](
	[IDKM] [int] NOT NULL,
	[IDSanPham] [int] NOT NULL,
	[GiaGiam] [int] NULL,
 CONSTRAINT [PK_tblChiTietKhuyenMai] PRIMARY KEY CLUSTERED 
(
	[IDKM] ASC,
	[IDSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblChiTietPhieuNhap]    Script Date: 11/11/2016 4:13:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChiTietPhieuNhap](
	[IDPhieuNhap] [int] NOT NULL,
	[IDChiTietPhieuNhap] [int] NOT NULL,
	[IDLoaiSanPham] [int] NULL,
	[IDSanPham] [int] NULL,
	[SoLuong] [int] NULL,
	[GiaNhap] [int] NULL,
	[ThanhTien] [int] NULL,
 CONSTRAINT [PK_tblChiTietPhieuNhap] PRIMARY KEY CLUSTERED 
(
	[IDPhieuNhap] ASC,
	[IDChiTietPhieuNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblChiTietPhieuYeuCau]    Script Date: 11/11/2016 4:13:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChiTietPhieuYeuCau](
	[IDPhieuYeuCau] [int] NOT NULL,
	[IDChiTietPhieuYeuCau] [int] NOT NULL,
	[IDSanPham] [int] NULL,
	[SoLuong] [int] NULL,
	[DonGia] [int] NULL,
	[ThanhTien] [int] NULL,
 CONSTRAINT [PK_tblChiTietPhieuYeuCau] PRIMARY KEY CLUSTERED 
(
	[IDPhieuYeuCau] ASC,
	[IDChiTietPhieuYeuCau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblGioHang]    Script Date: 11/11/2016 4:13:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblGioHang](
	[IDGioHang] [int] NOT NULL,
	[IDKhachHang] [int] NOT NULL,
	[IDSanPham] [int] NULL,
	[SoLuong] [int] NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_tblGioHang] PRIMARY KEY CLUSTERED 
(
	[IDGioHang] ASC,
	[IDKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblKhachHang]    Script Date: 11/11/2016 4:13:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKhachHang](
	[IDKhachHang] [int] NOT NULL,
	[IDTaiKhoan] [int] NULL,
	[Ho] [nvarchar](50) NULL,
	[Ten] [nvarchar](50) NULL,
	[DaiChi] [nvarchar](50) NULL,
	[SDT] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblKhachHang] PRIMARY KEY CLUSTERED 
(
	[IDKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblKhuyenMai]    Script Date: 11/11/2016 4:13:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKhuyenMai](
	[IDKM] [int] NOT NULL,
	[TenKM] [nvarchar](50) NULL,
	[NoiDung] [nvarchar](max) NULL,
	[NgayBatDau] [date] NULL,
	[NgayKetThuc] [date] NULL,
 CONSTRAINT [PK_tblKhuyenMai] PRIMARY KEY CLUSTERED 
(
	[IDKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblLoaiSanPham]    Script Date: 11/11/2016 4:13:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLoaiSanPham](
	[IDLoaiSanPham] [int] NOT NULL,
	[TenLoaiSanPham] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblLoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[IDLoaiSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblPhieuNhap]    Script Date: 11/11/2016 4:13:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPhieuNhap](
	[IDPhieuNhap] [int] NOT NULL,
	[NgayNhap] [date] NULL,
	[TongTien] [int] NULL,
 CONSTRAINT [PK_tblPhieuNhap] PRIMARY KEY CLUSTERED 
(
	[IDPhieuNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblPhieuYeucau]    Script Date: 11/11/2016 4:13:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPhieuYeucau](
	[IDPhieuYeuCau] [int] NOT NULL,
	[IDGioHang] [int] NOT NULL,
	[TongTien] [int] NULL,
 CONSTRAINT [PK_tblPhieuYeucau] PRIMARY KEY CLUSTERED 
(
	[IDPhieuYeuCau] ASC,
	[IDGioHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblSanPham]    Script Date: 11/11/2016 4:13:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSanPham](
	[IDLoaiSanPham] [int] NOT NULL,
	[IDSanPham] [int] NOT NULL,
	[TenSanPham] [nvarchar](50) NULL,
	[NgayNhap] [date] NULL,
	[GiaNhap] [int] NULL,
	[GiaBan] [int] NULL,
	[SoLuong] [int] NULL,
	[LinkAnh] [nchar](50) NULL,
	[MoTa] [nvarchar](max) NULL,
	[LuotXem] [int] NULL,
	[Mau] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblSanPham] PRIMARY KEY CLUSTERED 
(
	[IDLoaiSanPham] ASC,
	[IDSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblTaiKhoan]    Script Date: 11/11/2016 4:13:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTaiKhoan](
	[IDTaiKhoan] [int] NOT NULL,
	[TenDangNhap] [nchar](30) NULL,
	[MatKhau] [nchar](30) NULL,
	[MucQuyen] [int] NULL,
	[Ho] [nvarchar](50) NULL,
	[Ten] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[ThongTin] [nvarchar](500) NULL,
	[GioiTinh] [nvarchar](20) NULL,
 CONSTRAINT [PK_tblTaiKhoan] PRIMARY KEY CLUSTERED 
(
	[IDTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[tblChiTietKhuyenMai]  WITH CHECK ADD  CONSTRAINT [FK_tblChiTietKhuyenMai_tblKhuyenMai] FOREIGN KEY([IDKM])
REFERENCES [dbo].[tblKhuyenMai] ([IDKM])
GO
ALTER TABLE [dbo].[tblChiTietKhuyenMai] CHECK CONSTRAINT [FK_tblChiTietKhuyenMai_tblKhuyenMai]
GO
ALTER TABLE [dbo].[tblChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_tblChiTietPhieuNhap_tblPhieuNhap] FOREIGN KEY([IDPhieuNhap])
REFERENCES [dbo].[tblPhieuNhap] ([IDPhieuNhap])
GO
ALTER TABLE [dbo].[tblChiTietPhieuNhap] CHECK CONSTRAINT [FK_tblChiTietPhieuNhap_tblPhieuNhap]
GO
ALTER TABLE [dbo].[tblGioHang]  WITH CHECK ADD  CONSTRAINT [FK_tblGioHang_tblKhachHang] FOREIGN KEY([IDKhachHang])
REFERENCES [dbo].[tblKhachHang] ([IDKhachHang])
GO
ALTER TABLE [dbo].[tblGioHang] CHECK CONSTRAINT [FK_tblGioHang_tblKhachHang]
GO
ALTER TABLE [dbo].[tblSanPham]  WITH CHECK ADD  CONSTRAINT [FK_tblSanPham_tblLoaiSanPham] FOREIGN KEY([IDLoaiSanPham])
REFERENCES [dbo].[tblLoaiSanPham] ([IDLoaiSanPham])
GO
ALTER TABLE [dbo].[tblSanPham] CHECK CONSTRAINT [FK_tblSanPham_tblLoaiSanPham]
GO
USE [master]
GO
ALTER DATABASE [TechShop ] SET  READ_WRITE 
GO
