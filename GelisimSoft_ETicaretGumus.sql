USE [master]
GO
/****** Object:  Database [GelisimSoft_ETicaretGumus]    Script Date: 01.06.2018 15:02:29 ******/
CREATE DATABASE [GelisimSoft_ETicaretGumus]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GelisimSoft_ETicaretGumus', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\GelisimSoft_ETicaretGumus.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'GelisimSoft_ETicaretGumus_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\GelisimSoft_ETicaretGumus_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [GelisimSoft_ETicaretGumus] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GelisimSoft_ETicaretGumus].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GelisimSoft_ETicaretGumus] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GelisimSoft_ETicaretGumus] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GelisimSoft_ETicaretGumus] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GelisimSoft_ETicaretGumus] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GelisimSoft_ETicaretGumus] SET ARITHABORT OFF 
GO
ALTER DATABASE [GelisimSoft_ETicaretGumus] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [GelisimSoft_ETicaretGumus] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [GelisimSoft_ETicaretGumus] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GelisimSoft_ETicaretGumus] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GelisimSoft_ETicaretGumus] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GelisimSoft_ETicaretGumus] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GelisimSoft_ETicaretGumus] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GelisimSoft_ETicaretGumus] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GelisimSoft_ETicaretGumus] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GelisimSoft_ETicaretGumus] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GelisimSoft_ETicaretGumus] SET  DISABLE_BROKER 
GO
ALTER DATABASE [GelisimSoft_ETicaretGumus] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GelisimSoft_ETicaretGumus] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GelisimSoft_ETicaretGumus] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GelisimSoft_ETicaretGumus] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GelisimSoft_ETicaretGumus] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GelisimSoft_ETicaretGumus] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GelisimSoft_ETicaretGumus] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GelisimSoft_ETicaretGumus] SET RECOVERY FULL 
GO
ALTER DATABASE [GelisimSoft_ETicaretGumus] SET  MULTI_USER 
GO
ALTER DATABASE [GelisimSoft_ETicaretGumus] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GelisimSoft_ETicaretGumus] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GelisimSoft_ETicaretGumus] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GelisimSoft_ETicaretGumus] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [GelisimSoft_ETicaretGumus]
GO
/****** Object:  Table [dbo].[E_A_Giris]    Script Date: 01.06.2018 15:02:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[E_A_Giris](
	[Giris_ID] [int] NULL,
	[Kullanici_Adi] [nvarchar](100) NULL,
	[Pass] [nvarchar](100) NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_E_A_Giris_IsActive]  DEFAULT ((1))
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[E_AraBeni_Bildirim]    Script Date: 01.06.2018 15:02:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[E_AraBeni_Bildirim](
	[E_AraBeni_BildirimID] [int] IDENTITY(1,1) NOT NULL,
	[AdSoyad] [nvarchar](100) NULL,
	[CepTelefonu] [nvarchar](100) NULL,
	[Tarih] [nvarchar](30) NULL,
	[Log_Index] [nvarchar](50) NULL,
	[Okundu] [bit] NULL,
 CONSTRAINT [PK_E_AraBeni_Bildirim] PRIMARY KEY CLUSTERED 
(
	[E_AraBeni_BildirimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[E_BankaHesap]    Script Date: 01.06.2018 15:02:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[E_BankaHesap](
	[E_BankaID] [int] IDENTITY(1,1) NOT NULL,
	[Logo] [nvarchar](50) NULL,
	[FirmaAdi] [nvarchar](50) NULL,
	[BankaAdi] [nvarchar](50) NULL,
	[SubeAdi] [nvarchar](50) NULL,
	[HesapNo] [nvarchar](50) NULL,
	[IBAN] [nvarchar](70) NULL,
 CONSTRAINT [PK_E_BankaHesap] PRIMARY KEY CLUSTERED 
(
	[E_BankaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[E_EBulten]    Script Date: 01.06.2018 15:02:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[E_EBulten](
	[E_bultenID] [int] IDENTITY(1,1) NOT NULL,
	[EPostaAdresi] [nvarchar](150) NULL,
	[ExcelID] [int] NULL,
	[Gidecek] [bit] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_E_Ebulten] PRIMARY KEY CLUSTERED 
(
	[E_bultenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[E_EBulten_ExcelListesi]    Script Date: 01.06.2018 15:02:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[E_EBulten_ExcelListesi](
	[E_ExceLID] [int] IDENTITY(1,1) NOT NULL,
	[ListeAdi] [nvarchar](50) NULL,
	[Tarih] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_E_EBulten_ExcelListesi] PRIMARY KEY CLUSTERED 
(
	[E_ExceLID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[E_HaberSlide]    Script Date: 01.06.2018 15:02:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[E_HaberSlide](
	[HaberID] [int] IDENTITY(1,1) NOT NULL,
	[Baslik] [nvarchar](50) NULL,
	[ResimYol] [nvarchar](300) NULL,
	[Link] [nvarchar](100) NULL,
	[sira] [tinyint] NULL,
 CONSTRAINT [PK_E-HaberSlide] PRIMARY KEY CLUSTERED 
(
	[HaberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[E_Iade_Degisim_Bildirim]    Script Date: 01.06.2018 15:02:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[E_Iade_Degisim_Bildirim](
	[Iade_DegisimID] [int] IDENTITY(1,1) NOT NULL,
	[BankaAdi] [nvarchar](50) NULL,
	[Iban] [nvarchar](50) NULL,
	[IadeNedeni] [nvarchar](50) NULL,
	[Aciklama] [nvarchar](250) NULL,
	[SiparisID] [int] NULL,
	[UyeID] [int] NULL,
	[Tarih] [nvarchar](50) NULL,
	[IslemTamam] [bit] NULL,
 CONSTRAINT [PK_E_Iade_Degisim_Bildirim] PRIMARY KEY CLUSTERED 
(
	[Iade_DegisimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[E_Iletisim_Bildirim]    Script Date: 01.06.2018 15:02:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[E_Iletisim_Bildirim](
	[E_Iletisim_BildirimID] [int] IDENTITY(1,1) NOT NULL,
	[AdSoyad] [nvarchar](100) NULL,
	[EpostaBox] [nvarchar](100) NULL,
	[CepTlf] [nvarchar](100) NULL,
	[Konu] [nvarchar](20) NULL,
	[Aciklama] [nvarchar](260) NULL,
	[Tarih] [nvarchar](30) NULL,
	[Log_Index] [nvarchar](50) NULL,
	[Okundu] [bit] NULL,
 CONSTRAINT [PK_E_Iletisim_Bildirim] PRIMARY KEY CLUSTERED 
(
	[E_Iletisim_BildirimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[E_KargoTakibi]    Script Date: 01.06.2018 15:02:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[E_KargoTakibi](
	[E_KargoTakipID] [int] IDENTITY(1,1) NOT NULL,
	[KargoFirmasi] [nvarchar](20) NULL,
	[TakipNo] [nvarchar](250) NULL,
	[SiparisID] [int] NULL,
	[UyeID] [int] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_E_KargoTakibi] PRIMARY KEY CLUSTERED 
(
	[E_KargoTakipID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[E_KuryeTakibi]    Script Date: 01.06.2018 15:02:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[E_KuryeTakibi](
	[E_KuryeTakipID] [int] IDENTITY(1,1) NOT NULL,
	[FirmaAdi] [nvarchar](100) NULL,
	[Aciklama] [nvarchar](310) NULL,
	[Tarih] [nvarchar](20) NULL,
	[SiparisID] [int] NULL,
	[UyeID] [int] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_E_KuryeTakibi] PRIMARY KEY CLUSTERED 
(
	[E_KuryeTakipID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[E_Odeme_Bildirim_Bilgisi]    Script Date: 01.06.2018 15:02:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[E_Odeme_Bildirim_Bilgisi](
	[Odeme_BildirimID] [int] IDENTITY(1,1) NOT NULL,
	[Tarih] [nvarchar](20) NULL,
	[BankaID] [int] NULL,
	[SiparisID] [int] NULL,
	[UyeID] [int] NULL,
	[IslemTamam] [bit] NULL,
 CONSTRAINT [PK_E_Odeme_Bildirim_Bilgisi] PRIMARY KEY CLUSTERED 
(
	[Odeme_BildirimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[E_Personel]    Script Date: 01.06.2018 15:02:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[E_Personel](
	[UyeID] [int] IDENTITY(1,1) NOT NULL,
	[AdSoyad] [nvarchar](150) NULL,
	[TlfBox] [nvarchar](150) NULL,
	[IsTlfBox] [nvarchar](150) NULL,
	[CepBox] [nvarchar](150) NULL,
	[SehirID] [int] NULL,
	[IlceID] [int] NULL,
	[EPostaBox] [nvarchar](150) NULL,
	[KayitTarihi] [datetime] NULL,
	[Log_Index] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_E_Personel] PRIMARY KEY CLUSTERED 
(
	[UyeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[E_Resimler]    Script Date: 01.06.2018 15:02:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[E_Resimler](
	[E_ResimID] [int] IDENTITY(1,1) NOT NULL,
	[ResimAd] [nvarchar](150) NULL,
 CONSTRAINT [PK_E_Resimler] PRIMARY KEY CLUSTERED 
(
	[E_ResimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[E_Sepet_Uye]    Script Date: 01.06.2018 15:02:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[E_Sepet_Uye](
	[E_Sepet_UyeID] [int] IDENTITY(1,1) NOT NULL,
	[id] [int] NULL,
	[resim] [nvarchar](500) NULL,
	[isim] [nvarchar](250) NULL,
	[fiyat] [decimal](10, 2) NULL,
	[adet] [int] NULL,
	[toplam] [decimal](10, 2) NULL,
	[link] [nvarchar](250) NULL,
	[UyeID] [int] NULL,
 CONSTRAINT [PK_E_Sepet_Uye] PRIMARY KEY CLUSTERED 
(
	[E_Sepet_UyeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[E_Siparis_Kart_Cekim]    Script Date: 01.06.2018 15:02:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[E_Siparis_Kart_Cekim](
	[Kart_CekimID] [int] IDENTITY(1,1) NOT NULL,
	[UyeID] [int] NULL,
	[SiparisID] [int] NULL,
	[Banka] [nvarchar](50) NULL,
	[TaksitSayisi] [nvarchar](100) NULL,
	[ReferansNo] [nvarchar](150) NULL,
	[GroupID] [nvarchar](150) NULL,
	[TransID] [nvarchar](150) NULL,
	[Code] [nvarchar](150) NULL,
	[KartNo] [nvarchar](50) NULL,
 CONSTRAINT [PK_E_Siparis_Kart_Cekim] PRIMARY KEY CLUSTERED 
(
	[Kart_CekimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[E_SiparisDurumu]    Script Date: 01.06.2018 15:02:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[E_SiparisDurumu](
	[E_Siparis_DurumuID] [int] IDENTITY(1,1) NOT NULL,
	[DurumAd] [nvarchar](50) NULL,
 CONSTRAINT [PK_E_SiparisDurumu] PRIMARY KEY CLUSTERED 
(
	[E_Siparis_DurumuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[E_SiparisFaturaAdresi]    Script Date: 01.06.2018 15:02:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[E_SiparisFaturaAdresi](
	[E_SiparisFaturaID] [int] IDENTITY(1,1) NOT NULL,
	[YetkiliAdSoyad] [nvarchar](150) NULL,
	[FirmaAdi] [nvarchar](150) NULL,
	[VergiDairesi] [nvarchar](150) NULL,
	[VergiNo] [nvarchar](150) NULL,
	[SehirID] [int] NULL,
	[SehirAdi] [nvarchar](50) NULL,
	[IlceID] [int] NULL,
	[IlceAdi] [nvarchar](50) NULL,
	[FaturaAdresi] [nvarchar](250) NULL,
	[UyeID] [int] NULL,
	[TeslimatAdres] [bit] NULL,
 CONSTRAINT [PK_E_SiparisFaturaAdresi] PRIMARY KEY CLUSTERED 
(
	[E_SiparisFaturaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[E_SiparisSepet]    Script Date: 01.06.2018 15:02:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[E_SiparisSepet](
	[SiparisSepetID] [int] IDENTITY(1,1) NOT NULL,
	[id] [int] NULL,
	[resim] [nvarchar](500) NULL,
	[isim] [nvarchar](250) NULL,
	[fiyat] [decimal](10, 2) NULL,
	[adet] [int] NULL,
	[toplam] [decimal](10, 2) NULL,
	[link] [nvarchar](250) NULL,
	[SiparisID] [int] NULL,
	[UyeID] [int] NULL,
 CONSTRAINT [PK_E_SiparisSepet] PRIMARY KEY CLUSTERED 
(
	[SiparisSepetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[E_SiparisTakip]    Script Date: 01.06.2018 15:02:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[E_SiparisTakip](
	[E_SiparisID] [int] IDENTITY(1,1) NOT NULL,
	[SiparisNo] [nvarchar](10) NULL,
	[SiparisTarihi] [nvarchar](30) NULL,
	[OdemeTipi] [nvarchar](40) NULL,
	[SiparisNoFiyat] [nvarchar](30) NULL,
	[SiparisFiyat] [nvarchar](30) NULL,
	[DurumID] [int] NULL,
	[UyeID] [int] NULL,
	[E_SiparisFaturaID] [int] NULL,
	[E_TeslimatAdresiID] [int] NULL,
	[Not] [nvarchar](250) NULL,
	[IsActive] [bit] NULL,
	[IslemTamam] [bit] NULL,
 CONSTRAINT [PK_E_SiparisTakip] PRIMARY KEY CLUSTERED 
(
	[E_SiparisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[E_SiparisTeslimatAdresi]    Script Date: 01.06.2018 15:02:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[E_SiparisTeslimatAdresi](
	[E_TeslimatAdresiID] [int] IDENTITY(1,1) NOT NULL,
	[TckimlikNo] [nvarchar](150) NULL,
	[EPostaAdresi] [nvarchar](150) NULL,
	[CepTelefonu] [nvarchar](150) NULL,
	[Telefon] [nvarchar](150) NULL,
	[SehirID] [int] NULL,
	[SehirAdi] [nvarchar](50) NULL,
	[IlceID] [int] NULL,
	[IlceAdi] [nvarchar](50) NULL,
	[Adres] [nvarchar](250) NULL,
	[UyeID] [int] NULL,
 CONSTRAINT [PK_E_SiparisTeslimatAdresi] PRIMARY KEY CLUSTERED 
(
	[E_TeslimatAdresiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[E_tbl_il]    Script Date: 01.06.2018 15:02:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[E_tbl_il](
	[il_id] [smallint] IDENTITY(1,1) NOT NULL,
	[il_ad] [nvarchar](16) NULL,
 CONSTRAINT [PK_E_tbl_il] PRIMARY KEY CLUSTERED 
(
	[il_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[E_tbl_ilce]    Script Date: 01.06.2018 15:02:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[E_tbl_ilce](
	[ilce_id] [smallint] IDENTITY(1,1) NOT NULL,
	[il_id] [smallint] NOT NULL,
	[ilce_ad] [nvarchar](32) NULL,
 CONSTRAINT [PK_E_tbl_ilce] PRIMARY KEY CLUSTERED 
(
	[ilce_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[E_Tedarikci]    Script Date: 01.06.2018 15:02:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[E_Tedarikci](
	[E_Tedarikci_ID] [int] IDENTITY(1,1) NOT NULL,
	[AdSoyad] [nvarchar](50) NULL,
	[FirmaAdi] [nvarchar](100) NULL,
	[IsTlf] [nvarchar](20) NULL,
	[CepTlf] [nvarchar](20) NULL,
	[Eposta] [nvarchar](50) NULL,
	[Web] [nvarchar](50) NULL,
	[Tarih] [datetime] NULL,
 CONSTRAINT [PK_E_Tedarikci] PRIMARY KEY CLUSTERED 
(
	[E_Tedarikci_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[E_TelefonMarka]    Script Date: 01.06.2018 15:02:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[E_TelefonMarka](
	[TelefonID] [int] IDENTITY(1,1) NOT NULL,
	[TelAdi] [nvarchar](30) NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_E_TelefonMarka_IsActive]  DEFAULT ((1)),
	[RouteTelAdi] [nvarchar](50) NULL,
 CONSTRAINT [PK_E_TelefonMarka] PRIMARY KEY CLUSTERED 
(
	[TelefonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[E_TelefonModeller]    Script Date: 01.06.2018 15:02:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[E_TelefonModeller](
	[TelefonModelID] [int] IDENTITY(1,1) NOT NULL,
	[ModelAdi] [nvarchar](50) NULL,
	[TelefonID] [int] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_E_TelefonModeller_IsActive]  DEFAULT ((1)),
	[RouteModelAdi] [nvarchar](50) NULL,
 CONSTRAINT [PK_E_TelefonModeller] PRIMARY KEY CLUSTERED 
(
	[TelefonModelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[E_UrunAnaKategori]    Script Date: 01.06.2018 15:02:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[E_UrunAnaKategori](
	[AnaKategoriID] [int] IDENTITY(1,1) NOT NULL,
	[AnaKategoriAdi] [nvarchar](50) NULL,
	[RouteKatAdi] [nvarchar](50) NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_E_UrunAnaKategori_IsActive]  DEFAULT ((1)),
 CONSTRAINT [PK_E_UrunAnaKategori] PRIMARY KEY CLUSTERED 
(
	[AnaKategoriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[E_UrunDetay_Banka]    Script Date: 01.06.2018 15:02:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[E_UrunDetay_Banka](
	[E_BankaID] [int] IDENTITY(1,1) NOT NULL,
	[BankaAdi] [nvarchar](50) NULL,
	[BankaLogo] [nvarchar](50) NULL,
	[TaksitSayisi] [tinyint] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_E_UrunDetay_Banka] PRIMARY KEY CLUSTERED 
(
	[E_BankaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[E_UrunDetay_Banka_Taksitler]    Script Date: 01.06.2018 15:02:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[E_UrunDetay_Banka_Taksitler](
	[TaksitID] [int] IDENTITY(1,1) NOT NULL,
	[UrunID] [int] NULL,
	[BankaID] [int] NULL,
	[TaksitSayisi] [tinyint] NULL,
	[TaksitTutari] [nvarchar](10) NULL,
	[ToplamTutar] [nvarchar](10) NULL,
	[VadeFarki] [decimal](2, 2) NULL,
 CONSTRAINT [PK_E_UrunDetay_Banka_Taksitler] PRIMARY KEY CLUSTERED 
(
	[TaksitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[E_UrunKategori]    Script Date: 01.06.2018 15:02:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[E_UrunKategori](
	[KategoriID] [int] IDENTITY(1,1) NOT NULL,
	[KategoriAdi] [nvarchar](50) NULL,
	[RouteKatAdi] [nvarchar](50) NULL,
	[UstKategoriID] [int] NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_E_UrunKategori_IsActive]  DEFAULT ((1)),
 CONSTRAINT [PK_E_UrunKategori] PRIMARY KEY CLUSTERED 
(
	[KategoriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[E_Urunler]    Script Date: 01.06.2018 15:02:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[E_Urunler](
	[UrunID] [int] IDENTITY(1,1) NOT NULL,
	[UrunAdi] [nvarchar](250) NULL,
	[Logo] [nvarchar](500) NULL,
	[EskiFiyat] [decimal](5, 2) NULL,
	[YeniFiyat] [decimal](5, 2) NULL,
	[Indirim] [tinyint] NULL,
	[Indirimli] [bit] NULL CONSTRAINT [DF_E_Urunler_Indirimli]  DEFAULT ((0)),
	[Aciklama] [nvarchar](max) NULL,
	[KategoriAdi] [nvarchar](50) NULL,
	[KatID] [int] NULL,
	[TelefonAdi] [nvarchar](50) NULL,
	[TelefonID] [int] NULL,
	[ModelAdi] [nvarchar](50) NULL,
	[TelefonModelID] [int] NULL,
	[Tiklama] [int] NULL,
	[Link] [nvarchar](250) NULL,
	[Tukendi] [bit] NULL CONSTRAINT [DF_E_Urunler_Tukendi]  DEFAULT ((0)),
	[SatisIptal] [bit] NULL CONSTRAINT [DF_E_Urunler_SatisIptal]  DEFAULT ((0)),
	[IsActive] [bit] NULL CONSTRAINT [DF_E_Urunler_IsActive]  DEFAULT ((1)),
 CONSTRAINT [PK_E_Urunler] PRIMARY KEY CLUSTERED 
(
	[UrunID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[E_Urunler_HaberdarEt]    Script Date: 01.06.2018 15:02:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[E_Urunler_HaberdarEt](
	[HaberdarEtID] [int] IDENTITY(1,1) NOT NULL,
	[Eposta] [nvarchar](150) NULL,
	[UyeID] [int] NULL,
	[Aciklama] [nvarchar](500) NULL,
	[IslemTamam] [bit] NULL,
 CONSTRAINT [PK_E_Urunler_HaberdarEt] PRIMARY KEY CLUSTERED 
(
	[HaberdarEtID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[E_Urunler_Renkler]    Script Date: 01.06.2018 15:02:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[E_Urunler_Renkler](
	[UrunID] [int] NOT NULL,
	[IliskiliUrunID] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[E_UrunResimler]    Script Date: 01.06.2018 15:02:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[E_UrunResimler](
	[E_ResimID] [int] NULL,
	[E_UrunID] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[E_Uyeler]    Script Date: 01.06.2018 15:02:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[E_Uyeler](
	[PersonelID] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAdi] [nvarchar](150) NULL,
	[Pass] [nvarchar](150) NULL,
	[FaceID] [nvarchar](150) NULL,
	[FaceUsername] [nvarchar](150) NULL,
	[TwitUsername] [nvarchar](150) NULL,
	[TwitterID] [nvarchar](150) NULL,
	[UyeID] [int] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_E_Uyeler] PRIMARY KEY CLUSTERED 
(
	[PersonelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[E_A_Giris] ([Giris_ID], [Kullanici_Adi], [Pass], [IsActive]) VALUES (1, N'9vaCQ3HRdy341aDF+i/7iFjNMEZ48qsvMvudtHQX1og=', N'62eVp9j335U5UqKgtQWPeA==', 1)
GO
SET IDENTITY_INSERT [dbo].[E_BankaHesap] ON 

GO
INSERT [dbo].[E_BankaHesap] ([E_BankaID], [Logo], [FirmaAdi], [BankaAdi], [SubeAdi], [HesapNo], [IBAN]) VALUES (1, N'isbankasi_logo.png', N'Gelişimsoft Yazılım', N'İş Bankası', N'İkitelli Şubesi', N'01010212', N'TR295455151515145145415145')
GO
SET IDENTITY_INSERT [dbo].[E_BankaHesap] OFF
GO
SET IDENTITY_INSERT [dbo].[E_HaberSlide] ON 

GO
INSERT [dbo].[E_HaberSlide] ([HaberID], [Baslik], [ResimYol], [Link], [sira]) VALUES (1, N'E-Ticaret Demo', N'HaberResim/99a145e0-1efc-495c-b096-ce3481eb2e2det-banner-1.jpg', N'http://www.gelisimsoft.com', 1)
GO
SET IDENTITY_INSERT [dbo].[E_HaberSlide] OFF
GO
SET IDENTITY_INSERT [dbo].[E_Resimler] ON 

GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (1, N'6fcf44-9720348377138.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (2, N'128536-9720348409906.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (3, N'03e292-9720348442674.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (4, N'936571-9720348475442.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (5, N'b471e0-9720348508210.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (6, N'77aee8-9546606477362.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (7, N'bfddba-9546606510130.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (8, N'afc081-9546606542898.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (9, N'687f7f-9546606575666.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (10, N'd32f97-9208049664050.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (11, N'544183-9208049696818.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (12, N'fd0521-9208049729586.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (13, N'af6886-9208049762354.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (14, N'ef7e06-9208049795122.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (15, N'6b4110-9208049860658.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (16, N'a4ff86-9201019945010.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (17, N'77d2ae-9573523652658.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (18, N'1d2583-9611694997554.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (19, N'ba5197-9639300726834.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (20, N'958b31-9619565314098.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (21, N'cc5f56-9619565346866.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (22, N'86a111-9512617639986.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (23, N'210dee-9512617672754.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (24, N'2d88ca-9512617705522.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (25, N'2fd554-wwewe332323.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (26, N'3f09ba-9541175902258.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (27, N'8523b5-9541175935026.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (28, N'ff2c05-9541175967794.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (29, N'75abbe-9541176000562.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (30, N'b60dac-9541176033330.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (31, N'8e992e-9541176033330.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (32, N'58092d-9820091547698.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (33, N'b90e8e-9820091580466.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (34, N'4adb7b-9820091613234.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (35, N'3d8804-9183646318642.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (36, N'1af0e9-9183646351410.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (37, N'08f8e2-9183646384178.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (38, N'f550f6-9515753898034.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (39, N'06b03f-9515753898034.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (40, N'1cb0ac-9515753898034.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (41, N'cc6553-9713631756338.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (42, N'6f5216-9713631789106.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (43, N'362dde-9771992186930.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (44, N'4420b6-9771992219698.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (45, N'1099e0-9771992252466.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (46, N'a5863c-9616041836594.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (47, N'c40fe7-9616041869362.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (48, N'53b35d-9616041902130.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (49, N'1266b4-9616041934898.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (50, N'962e49-9487882125362.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (51, N'53f80e-9215100354610.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (52, N'0f9f66-9215100354610.jpg')
GO
INSERT [dbo].[E_Resimler] ([E_ResimID], [ResimAd]) VALUES (53, N'a2657c-9505802518578.jpg')
GO
SET IDENTITY_INSERT [dbo].[E_Resimler] OFF
GO
SET IDENTITY_INSERT [dbo].[E_SiparisDurumu] ON 

GO
INSERT [dbo].[E_SiparisDurumu] ([E_Siparis_DurumuID], [DurumAd]) VALUES (1, N'Değişim Beklemede')
GO
INSERT [dbo].[E_SiparisDurumu] ([E_Siparis_DurumuID], [DurumAd]) VALUES (2, N'Havale / EFT Bekleniyor')
GO
INSERT [dbo].[E_SiparisDurumu] ([E_Siparis_DurumuID], [DurumAd]) VALUES (3, N'Havale / EFT Onayda')
GO
INSERT [dbo].[E_SiparisDurumu] ([E_Siparis_DurumuID], [DurumAd]) VALUES (4, N'İade/Değişim:  Değişecek Ürün Temin Ediliyor')
GO
INSERT [dbo].[E_SiparisDurumu] ([E_Siparis_DurumuID], [DurumAd]) VALUES (5, N'İade/Değişim:  EFT Yapılacak')
GO
INSERT [dbo].[E_SiparisDurumu] ([E_Siparis_DurumuID], [DurumAd]) VALUES (6, N'İade/Değişim:  İade yapıldı')
GO
INSERT [dbo].[E_SiparisDurumu] ([E_Siparis_DurumuID], [DurumAd]) VALUES (7, N'İade/Değişim:  Karta iade yapılacak')
GO
INSERT [dbo].[E_SiparisDurumu] ([E_Siparis_DurumuID], [DurumAd]) VALUES (8, N'İade/Değişim:  Müşteriden IBAN bekleniyor')
GO
INSERT [dbo].[E_SiparisDurumu] ([E_Siparis_DurumuID], [DurumAd]) VALUES (9, N'İade/Değişim:  Müşteriden Ürün bekleniyor')
GO
INSERT [dbo].[E_SiparisDurumu] ([E_Siparis_DurumuID], [DurumAd]) VALUES (10, N'Kargoya Teslim Edildi')
GO
INSERT [dbo].[E_SiparisDurumu] ([E_Siparis_DurumuID], [DurumAd]) VALUES (11, N'Ödeme gerçekleşmediği için sipariş iptal edildi.')
GO
INSERT [dbo].[E_SiparisDurumu] ([E_Siparis_DurumuID], [DurumAd]) VALUES (12, N'Sipariş Beklemede')
GO
INSERT [dbo].[E_SiparisDurumu] ([E_Siparis_DurumuID], [DurumAd]) VALUES (13, N'Sipariş İptal Edildi')
GO
INSERT [dbo].[E_SiparisDurumu] ([E_Siparis_DurumuID], [DurumAd]) VALUES (14, N'Sipariş onayı için aranacaksınız')
GO
INSERT [dbo].[E_SiparisDurumu] ([E_Siparis_DurumuID], [DurumAd]) VALUES (15, N'Sipariş Onaylandı / Ürün Temin Ediliyor')
GO
INSERT [dbo].[E_SiparisDurumu] ([E_Siparis_DurumuID], [DurumAd]) VALUES (16, N'Ürün iade edildi')
GO
INSERT [dbo].[E_SiparisDurumu] ([E_Siparis_DurumuID], [DurumAd]) VALUES (17, N'Ürün temin ediliyor')
GO
SET IDENTITY_INSERT [dbo].[E_SiparisDurumu] OFF
GO
SET IDENTITY_INSERT [dbo].[E_tbl_il] ON 

GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (1, N'Adana')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (2, N'Adıyaman')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (3, N'Afyonkarahisar')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (4, N'Ağrı')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (5, N'Amasya')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (6, N'Ankara')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (7, N'Antalya')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (8, N'Artvin')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (9, N'Aydın')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (10, N'Balıkesir')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (11, N'Bilecik')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (12, N'Bingöl')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (13, N'Bitlis')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (14, N'Bolu')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (15, N'Burdur')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (16, N'Bursa')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (17, N'Çanakkale')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (18, N'Çankırı')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (19, N'Çorum')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (20, N'Denizli')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (21, N'Diyarbakır')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (22, N'Edirne')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (23, N'Elazığ')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (24, N'Erzincan')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (25, N'Erzurum')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (26, N'Eskişehir')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (27, N'Gaziantep')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (28, N'Giresun')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (29, N'Gümüşhane')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (30, N'Hakkari')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (31, N'Hatay')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (32, N'Isparta')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (33, N'Mersin(İçel)')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (34, N'İstanbul')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (35, N'İzmir')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (36, N'Kars')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (37, N'Kastamonu')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (38, N'Kayseri')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (39, N'Kırklareli')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (40, N'Kırşehir')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (41, N'Kocaeli')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (42, N'Kahramanmaraş')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (43, N'Konya')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (44, N'Kütahya')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (45, N'Malatya')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (46, N'Manisa')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (47, N'Mardin')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (48, N'Muğla')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (49, N'Muş')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (50, N'Nevşehir')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (51, N'Niğde')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (52, N'Ordu')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (53, N'Rize')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (54, N'Sakarya')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (55, N'Samsun')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (56, N'Siirt')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (57, N'Sinop')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (58, N'Sivas')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (59, N'Tekirdağ')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (60, N'Tokat')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (61, N'Trabzon')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (62, N'Tunceli')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (63, N'Şanlıurfa')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (64, N'Uşak')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (65, N'Van')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (66, N'Yozgat')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (67, N'Zonguldak')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (68, N'Aksaray')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (69, N'Bayburt')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (70, N'Karaman')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (71, N'Kırıkkale')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (72, N'Batman')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (73, N'Şırnak')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (74, N'Bartın')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (75, N'Ardahan')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (76, N'Iğdır')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (77, N'Yalova')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (78, N'Karabük')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (79, N'Kilis')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (80, N'Osmaniye')
GO
INSERT [dbo].[E_tbl_il] ([il_id], [il_ad]) VALUES (81, N'Düzce')
GO
SET IDENTITY_INSERT [dbo].[E_tbl_il] OFF
GO
SET IDENTITY_INSERT [dbo].[E_tbl_ilce] ON 

GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (1, 1, N'Çukurova')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (2, 1, N'Girne')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (3, 2, N'Gölbaşı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (4, 2, N'Tut')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (5, 3, N'Bayat')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (6, 3, N'Çobanlar')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (7, 3, N'Şuhut')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (8, 4, N'Eleşkirt')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (9, 4, N'Hamur')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (10, 4, N'Patnos')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (11, 5, N'Gümüşhacıköy')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (12, 5, N'Merzifon')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (13, 6, N'Evren')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (14, 6, N'Güdül')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (15, 6, N'Kazan')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (16, 6, N'Pursaklar')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (17, 7, N'Aksu')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (18, 7, N'Demre(Kale)')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (19, 7, N'Gazipaşa')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (20, 7, N'Kaş')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (21, 7, N'Konyaaltı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (22, 7, N'Muratpaşa')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (23, 8, N'Arhavi')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (24, 8, N'Borçka')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (25, 8, N'Hopa')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (26, 9, N'Buharkent(Çubukdağı)')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (27, 9, N'Çine')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (28, 9, N'İncirliova')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (29, 9, N'Karacasu')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (30, 9, N'Karpuzlu')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (31, 9, N'Köşk')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (32, 9, N'Nazilli')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (33, 9, N'Sultanhisar')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (34, 10, N'Ayvalık')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (35, 10, N'Balya')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (36, 10, N'Burhaniye')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (37, 10, N'Edremit')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (38, 10, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (39, 10, N'Sındırgı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (40, 11, N'Gölpazarı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (41, 11, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (42, 12, N'Adaklı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (43, 12, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (44, 12, N'Yedisu')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (45, 13, N'Adilcevaz')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (46, 13, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (47, 14, N'Dörtdivan')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (48, 14, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (49, 15, N'Altınyayla(Dirmil)')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (50, 16, N'Büyükorhan')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (51, 16, N'Gemlik')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (52, 16, N'Mustafakemalpaşa')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (53, 16, N'Nilüfer')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (54, 17, N'Bayramiç')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (55, 17, N'Eceabat')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (56, 17, N'Yenice')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (57, 18, N'Atkaracalar')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (58, 18, N'Bayramören')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (59, 18, N'Çerkeş')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (60, 18, N'Yapraklı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (61, 19, N'Bayat')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (62, 19, N'İskilip')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (63, 19, N'Osmancık')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (64, 19, N'Uğurludağ')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (65, 20, N'Baklan')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (66, 20, N'Çal')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (67, 20, N'Güney')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (68, 20, N'Tavas')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (69, 21, N'Çınar')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (70, 21, N'Çüngüş')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (71, 21, N'Dicle')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (72, 21, N'Lice')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (73, 21, N'Sur')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (74, 21, N'Yenişehir')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (75, 22, N'Keşan')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (76, 22, N'Süloğlu(Süleoğlu)')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (77, 23, N'Alacakaya')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (78, 23, N'Kovancılar')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (79, 24, N'Kemaliye')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (80, 25, N'Karaçoban')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (81, 25, N'Narman')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (82, 25, N'Oltu')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (83, 25, N'Olur')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (84, 25, N'Tekman')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (85, 25, N'Tortum')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (86, 25, N'Uzundere')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (87, 26, N'Çifteler')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (88, 26, N'Han')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (89, 26, N'Mihalgazi')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (90, 26, N'Mihalıççık')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (91, 26, N'Tepebaşı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (92, 27, N'İslahiye')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (93, 27, N'Yavuzeli')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (94, 28, N'Alucra')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (95, 28, N'Bulancak')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (96, 28, N'Çanakçı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (97, 28, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (98, 28, N'Yağlıdere')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (99, 29, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (100, 29, N'Torul')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (101, 30, N'Çukurca')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (102, 30, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (103, 32, N'Atabey')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (104, 32, N'Sütçüler')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (105, 32, N'Uluborlu')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (106, 33, N'Akdeniz')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (107, 33, N'Aydıncık')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (108, 33, N'Bozyazı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (109, 34, N'Adalar')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (110, 34, N'Avcılar')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (111, 34, N'Beykoz')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (112, 34, N'Çatalca')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (113, 34, N'Esenler')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (114, 34, N'Eyüp')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (115, 34, N'Fatih')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (116, 34, N'Gaziosmanpaşa')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (117, 34, N'Kağıthane')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (118, 34, N'Kartal')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (119, 34, N'Pendik')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (120, 34, N'Sarıyer')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (121, 34, N'Sultangazi')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (122, 34, N'Tuzla')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (123, 34, N'Zeytinburnu')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (124, 35, N'Balçova')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (125, 35, N'Bayındır')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (126, 35, N'Çiğli')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (127, 35, N'Güzelbahçe')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (128, 35, N'Karabağlar')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (129, 35, N'Karaburun')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (130, 35, N'Kemalpaşa')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (131, 35, N'Konak')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (132, 35, N'Ödemiş')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (133, 35, N'Tire')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (134, 36, N'Arpaçay')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (135, 37, N'Azdavay')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (136, 37, N'Hanönü(Gökçeağaç)')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (137, 37, N'İnebolu')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (138, 38, N'Hacılar')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (139, 39, N'Demirköy')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (140, 39, N'Kofçaz')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (141, 39, N'Pehlivanköy')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (142, 39, N'Vize')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (143, 40, N'Akpınar')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (144, 40, N'Boztepe')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (145, 41, N'Dilovası')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (146, 41, N'Körfez(Tütünçiftlik)')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (147, 42, N'Çağlıyancerit')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (148, 42, N'Nurhak')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (149, 43, N'Akören')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (150, 43, N'Çumra')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (151, 43, N'Derbent')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (152, 43, N'Doğanhisar')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (153, 43, N'Emirgazi')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (154, 43, N'Ereğli')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (155, 43, N'Ilgın')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (156, 43, N'Sarayönü')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (157, 44, N'Çavdarhisar')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (158, 44, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (159, 44, N'Tavşanlı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (160, 45, N'Akçadağ')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (161, 45, N'Doğanşehir')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (162, 45, N'Kuluncak')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (163, 45, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (164, 46, N'Gölmarmara')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (165, 46, N'Gördes')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (166, 46, N'Kula')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (167, 46, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (168, 46, N'Sarıgöl')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (169, 46, N'Selendi')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (170, 46, N'Soma')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (171, 47, N'Dargeçit')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (172, 47, N'Derik')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (173, 47, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (174, 48, N'Köyceğiz')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (175, 48, N'Milas')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (176, 49, N'Hasköy')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (177, 49, N'Malazgirt')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (178, 50, N'Avanos')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (179, 50, N'Kozaklı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (180, 51, N'Çamardı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (181, 51, N'Ulukışla')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (182, 52, N'Akkuş')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (183, 52, N'Çatalpınar')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (184, 52, N'Çaybaşı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (185, 52, N'Gülyalı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (186, 53, N'Derepazarı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (187, 54, N'Arifiye')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (188, 54, N'Hendek')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (189, 54, N'Karasu')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (190, 54, N'Kaynarca')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (191, 54, N'Sapanca')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (192, 54, N'Serdivan')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (193, 55, N'Canik')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (194, 55, N'Çarşamba')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (195, 55, N'Terme')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (196, 55, N'Vezirköprü')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (197, 56, N'Aydınlar')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (198, 56, N'Baykan')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (199, 57, N'Ayancık')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (200, 57, N'Boyabat')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (201, 57, N'Durağan')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (202, 58, N'Gürün')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (203, 58, N'Kangal')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (204, 58, N'Koyulhisar')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (205, 59, N'Çorlu')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (206, 60, N'Almus')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (207, 60, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (208, 60, N'Pazar')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (209, 60, N'Reşadiye')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (210, 61, N'Beşikdüzü')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (211, 61, N'Düzköy')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (212, 61, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (213, 61, N'Tonya')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (214, 62, N'Hozat')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (215, 62, N'Mazgirt')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (216, 62, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (217, 62, N'Pülümür')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (218, 63, N'Halfeti')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (219, 63, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (220, 63, N'Siverek')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (221, 64, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (222, 65, N'Çatak')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (223, 65, N'Edremit(Gümüşdere)')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (224, 65, N'Erciş')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (225, 65, N'Gevaş')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (226, 65, N'Gürpınar')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (227, 65, N'Saray')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (228, 66, N'Akdağmadeni')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (229, 1, N'Karaisalı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (230, 1, N'Karataş')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (231, 1, N'Seyhan')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (232, 1, N'Yumurtalık')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (233, 2, N'Besni')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (234, 2, N'Çelikhan')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (235, 2, N'Gerger')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (236, 2, N'Samsat')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (237, 3, N'Başmakçı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (238, 3, N'Bolvadin')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (239, 3, N'Dazkırı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (240, 3, N'Emirdağ')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (241, 3, N'Evciler')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (242, 3, N'İscehisar')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (243, 3, N'Kızılören')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (244, 3, N'Sandıklı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (245, 4, N'Diyadin')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (246, 4, N'Tutak')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (247, 5, N'Hamamözü')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (248, 6, N'Çubuk')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (249, 6, N'Etimesgut')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (250, 6, N'Gölbaşı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (251, 6, N'Haymana')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (252, 6, N'Mamak')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (253, 6, N'Polatlı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (254, 7, N'Döşemealtı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (255, 7, N'Finike')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (256, 7, N'Manavgat')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (257, 9, N'Kuşadası')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (258, 9, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (259, 9, N'Söke')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (260, 9, N'Yenipazar')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (261, 10, N'Havran')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (262, 10, N'Kepsut')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (263, 10, N'Marmara')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (264, 10, N'Savaştepe')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (265, 12, N'Genç')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (266, 13, N'Güroymak')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (267, 14, N'Göynük')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (268, 14, N'Kıbrıscık')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (269, 14, N'Mengen')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (270, 15, N'Çavdır')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (271, 15, N'Kemer')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (272, 16, N'İnegöl')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (273, 16, N'Keles')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (274, 16, N'Mudanya')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (275, 16, N'Orhaneli')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (276, 16, N'Orhangazi')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (277, 16, N'Yenişehir')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (278, 16, N'Yıldırım')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (279, 17, N'Ayvacık')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (280, 17, N'Bozcaada')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (281, 17, N'Ezine')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (282, 17, N'Gelibolu')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (283, 17, N'Lapseki')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (284, 18, N'Eldivan')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (285, 18, N'Ilgaz')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (286, 18, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (287, 19, N'Dodurga')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (288, 19, N'Kargı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (289, 19, N'Mecitözü')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (290, 20, N'Babadağ')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (291, 20, N'Buldan')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (292, 20, N'Sarayköy')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (293, 20, N'Serinhisar')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (294, 21, N'Bismil')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (295, 21, N'Silvan')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (296, 22, N'Havsa')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (297, 23, N'Baskil')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (298, 23, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (299, 23, N'Palu')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (300, 23, N'Sivrice')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (301, 24, N'Üzümlü')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (302, 25, N'Horasan')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (303, 25, N'İspir')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (304, 25, N'Pasinler')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (305, 25, N'Şenkaya')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (306, 26, N'Alpu')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (307, 26, N'Günyüzü')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (308, 26, N'Sarıcakaya')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (309, 27, N'Karkamış')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (310, 27, N'Nizip')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (311, 27, N'Oğuzeli')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (312, 27, N'Şahinbey')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (313, 28, N'Dereli')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (314, 28, N'Eynesil')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (315, 28, N'Güce')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (316, 28, N'Keşap')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (317, 29, N'Köse')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (318, 29, N'Kürtün')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (319, 31, N'İskenderun')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (320, 31, N'Kumlu')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (321, 32, N'Gönen')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (322, 32, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (323, 33, N'Çamlıyayla')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (324, 33, N'Erdemli')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (325, 33, N'Mut')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (326, 33, N'Toroslar')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (327, 34, N'Arnavutköy')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (328, 34, N'Bağcılar')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (329, 34, N'Bayrampaşa')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (330, 34, N'Esenyurt')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (331, 34, N'Maltepe')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (332, 34, N'Silivri')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (333, 34, N'Şişli')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (334, 34, N'Üsküdar')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (335, 35, N'Bayraklı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (336, 35, N'Dikili')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (337, 35, N'Seferihisar')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (338, 36, N'Kağızman')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (339, 36, N'Susuz')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (340, 37, N'Araç')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (341, 37, N'Bozkurt')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (342, 37, N'Cide')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (343, 37, N'Çatalzeytin')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (344, 37, N'Daday')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (345, 37, N'Devrekani')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (346, 37, N'Doğanyurt')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (347, 37, N'İhsangazi')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (348, 37, N'Küre')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (349, 37, N'Seydiler')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (350, 37, N'Taşköprü')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (351, 38, N'Akkışla')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (352, 38, N'Bünyan')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (353, 38, N'Tomarza')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (354, 38, N'Yahyalı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (355, 39, N'Lüleburgaz')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (356, 40, N'Kaman')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (357, 41, N'Darıca')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (358, 41, N'Derince')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (359, 41, N'Gebze')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (360, 41, N'Karamürsel')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (361, 42, N'Andırın')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (362, 42, N'Ekinözü')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (363, 43, N'Bozkır')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (364, 43, N'Güneysınır')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (365, 43, N'Hadim')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (366, 43, N'Hüyük')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (367, 43, N'Seydişehir')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (368, 43, N'Yunak')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (369, 44, N'Domaniç')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (370, 45, N'Arapkir(Arapgir)')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (371, 45, N'Battalgazi')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (372, 45, N'Hekimhan')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (373, 45, N'Yeşilyurt')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (374, 46, N'Ahmetli')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (375, 46, N'Demirci')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (376, 46, N'Salihli')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (377, 47, N'Mazıdağı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (378, 48, N'Dalaman')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (379, 48, N'Datça')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (380, 48, N'Kavaklıdere')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (381, 48, N'Marmaris')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (382, 48, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (383, 48, N'Ortaca')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (384, 49, N'Bulanık')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (385, 49, N'Varto')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (386, 50, N'Derinkuyu')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (387, 50, N'Gülşehir')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (388, 50, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (389, 51, N'Çiftlik(Özyurt)')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (390, 52, N'Aybastı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (391, 52, N'Fatsa')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (392, 52, N'İkizce')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (393, 52, N'Kumru')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (394, 52, N'Ulubey')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (395, 53, N'Çamlıhemşin')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (396, 54, N'Akyazı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (397, 54, N'Geyve')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (398, 54, N'Pamukova')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (399, 55, N'Asarcık')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (400, 55, N'Havza')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (401, 55, N'İlkadım')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (402, 55, N'Ondokuzmayıs(Ballıca)')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (403, 55, N'Salıpazarı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (404, 57, N'Dikmen')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (405, 57, N'Erfelek')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (406, 57, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (407, 57, N'Saraydüzü')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (408, 58, N'Gemerek')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (409, 58, N'Gölova')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (410, 58, N'Hafik')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (411, 58, N'Suşehri')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (412, 58, N'Şarkışla')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (413, 58, N'Yıldızeli')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (414, 59, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (415, 59, N'Şarköy')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (416, 60, N'Artova')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (417, 60, N'Erbaa')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (418, 60, N'Niksar')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (419, 60, N'Sulusaray')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (420, 61, N'Çarşıbaşı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (421, 61, N'Çaykara')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (422, 61, N'Sürmene')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (423, 61, N'Vakfıkebir')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (424, 62, N'Çemişgezek')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (425, 62, N'Ovacık')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (426, 65, N'Muradiye')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (427, 66, N'Kadışehri')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (428, 66, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (429, 66, N'Şefaatli')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (430, 66, N'Yenifakılı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (431, 67, N'Gökçebey')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (432, 68, N'Ağaçören')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (433, 68, N'Gülağaç')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (434, 68, N'Güzelyurt')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (435, 68, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (436, 68, N'Ortaköy')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (437, 70, N'Ayrancı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (438, 70, N'Başyayla')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (439, 70, N'Ermenek')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (440, 71, N'Delice')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (441, 71, N'Keskin')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (442, 72, N'Beşiri')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (443, 73, N'Cizre')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (444, 73, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (445, 74, N'Amasra')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (446, 74, N'Kurucaşile')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (447, 75, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (448, 77, N'Armutlu')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (449, 78, N'Ovacık')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (450, 78, N'Yenice')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (451, 81, N'Akçakoca')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (452, 81, N'Kaynaşlı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (453, 81, N'Yığılca')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (454, 1, N'Aladağ(Karsantı)')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (455, 1, N'Ceyhan')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (456, 1, N'Feke')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (457, 1, N'İmamoğlu')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (458, 1, N'Kozan')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (459, 1, N'Tufanbeyli')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (460, 2, N'Kahta')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (461, 2, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (462, 2, N'Sincik')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (463, 3, N'Çay')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (464, 3, N'Dinar')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (465, 3, N'Hocalar')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (466, 3, N'İhsaniye')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (467, 3, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (468, 3, N'Sultandağı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (469, 4, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (470, 4, N'Taşlıçay')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (471, 5, N'Göynücek')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (472, 5, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (473, 5, N'Suluova')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (474, 5, N'Taşova')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (475, 6, N'Akyurt')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (476, 6, N'Ayaş')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (477, 6, N'Çankaya')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (478, 6, N'Elmadağ')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (479, 6, N'Nallıhan')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (480, 6, N'Sincan')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (481, 7, N'Akseki')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (482, 7, N'Alanya')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (483, 7, N'İbradı(Aydınkent)')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (484, 7, N'Kepez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (485, 7, N'Korkuteli')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (486, 7, N'Kumluca')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (487, 7, N'Serik')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (488, 8, N'Murgul(Göktaş)')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (489, 8, N'Yusufeli')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (490, 9, N'Bozdoğan')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (491, 9, N'Germencik')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (492, 9, N'Kuyucak')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (493, 10, N'Bandırma')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (494, 10, N'Bigadiç')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (495, 10, N'Gömeç')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (496, 11, N'Bozüyük')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (497, 11, N'İnhisar')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (498, 11, N'Pazaryeri')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (499, 11, N'Söğüt')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (500, 11, N'Yenipazar')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (501, 12, N'Yayladere')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (502, 13, N'Hizan')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (503, 13, N'Mutki')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (504, 14, N'Mudurnu')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (505, 15, N'Ağlasun')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (506, 15, N'Bucak')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (507, 15, N'Çeltikçi')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (508, 15, N'Yeşilova')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (509, 16, N'İznik')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (510, 16, N'Karacabey')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (511, 16, N'Osmangazi')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (512, 17, N'Biga')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (513, 18, N'Kızılırmak')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (514, 18, N'Şabanözü')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (515, 19, N'Alaca')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (516, 19, N'Laçin')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (517, 19, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (518, 19, N'Oğuzlar(Karaören)')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (519, 19, N'Sungurlu')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (520, 20, N'Acıpayam')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (521, 20, N'Beyağaç')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (522, 20, N'Çardak')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (523, 20, N'Honaz')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (524, 20, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (525, 21, N'Çermik')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (526, 21, N'Eğil')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (527, 21, N'Ergani')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (528, 21, N'Hazro')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (529, 21, N'Kayapınar')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (530, 21, N'Kulp')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (531, 22, N'İpsala')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (532, 22, N'Meriç')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (533, 22, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (534, 22, N'Uzunköprü')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (535, 24, N'Çayırlı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (536, 24, N'Kemah')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (537, 24, N'Tercan')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (538, 25, N'Aşkale')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (539, 25, N'Aziziye(Ilıca)')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (540, 25, N'Çat')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (541, 25, N'Karayazı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (542, 25, N'Köprüköy')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (543, 25, N'Palandöken')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (544, 25, N'Yakutiye')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (545, 26, N'Beylikova')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (546, 26, N'İnönü')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (547, 26, N'Mahmudiye')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (548, 27, N'Nurdağı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (549, 28, N'Doğankent')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (550, 28, N'Görele')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (551, 30, N'Yüksekova')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (552, 31, N'Dörtyol')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (553, 31, N'Hassa')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (554, 31, N'Reyhanlı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (555, 31, N'Samandağ')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (556, 31, N'Yayladağı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (557, 32, N'Aksu')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (558, 32, N'Eğirdir(Eğridir)')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (559, 32, N'Gelendost')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (560, 32, N'Keçiborlu')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (561, 32, N'Senirkent')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (562, 32, N'Şarkikaraağaç')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (563, 32, N'Yalvaç')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (564, 33, N'Anamur')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (565, 33, N'Gülnar (Gülpınar)')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (566, 33, N'Silifke')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (567, 34, N'Bakırköy')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (568, 34, N'Başakşehir')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (569, 34, N'Beşiktaş')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (570, 34, N'Beylikdüzü')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (571, 34, N'Büyükçekmece')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (572, 34, N'Kadıköy')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (573, 34, N'Sancaktepe')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (574, 34, N'Sultanbeyli')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (575, 35, N'Aliağa')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (576, 35, N'Beydağ')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (577, 35, N'Buca')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (578, 35, N'Çeşme')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (579, 35, N'Foça')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (580, 35, N'Gaziemir')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (581, 35, N'Kınık')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (582, 35, N'Kiraz')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (583, 35, N'Torbalı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (584, 35, N'Urla')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (585, 36, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (586, 37, N'Abana')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (587, 37, N'Ağlı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (588, 37, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (589, 37, N'Pınarbaşı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (590, 37, N'Tosya')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (591, 38, N'Felahiye')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (592, 38, N'İncesu')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (593, 38, N'Kocasinan')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (594, 38, N'Pınarbaşı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (595, 38, N'Sarız')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (596, 38, N'Talas')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (597, 39, N'Babaeski')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (598, 39, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (599, 40, N'Mucur')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (600, 42, N'Afşin')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (601, 42, N'Elbistan')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (602, 42, N'Pazarcık')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (603, 43, N'Akşehir')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (604, 43, N'Altınekin')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (605, 43, N'Cihanbeyli')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (606, 43, N'Çeltik')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (607, 43, N'Derebucak')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (608, 43, N'Kadınhanı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (609, 43, N'Karapınar')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (610, 43, N'Kulu')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (611, 43, N'Selçuklu')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (612, 43, N'Yalıhüyük')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (613, 44, N'Dumlupınar')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (614, 44, N'Emet')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (615, 44, N'Gediz')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (616, 44, N'Hisarcık')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (617, 44, N'Pazarlar')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (618, 44, N'Şaphane')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (619, 45, N'Darende')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (620, 45, N'Pütürge(Pötürge)')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (621, 45, N'Yazıhan')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (622, 46, N'Köprübaşı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (623, 46, N'Saruhanlı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (624, 47, N'Kızıltepe')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (625, 48, N'Bodrum')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (626, 50, N'Acıgöl')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (627, 51, N'Altunhisar')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (628, 52, N'Gölköy')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (629, 52, N'Gürgentepe')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (630, 52, N'Kabadüz(Karadüz)')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (631, 52, N'Korgan')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (632, 52, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (633, 52, N'Mesudiye')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (634, 52, N'Ünye')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (635, 53, N'Ardeşen')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (636, 53, N'Çayeli')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (637, 53, N'Fındıklı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (638, 53, N'Hemşin')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (639, 53, N'İyidere')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (640, 53, N'Kalkandere')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (641, 53, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (642, 54, N'Karapürçek')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (643, 54, N'Söğütlü')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (644, 55, N'Ayvacık')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (645, 55, N'Kavak')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (646, 55, N'Ladik')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (647, 55, N'Tekkeköy')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (648, 55, N'Yakakent')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (649, 56, N'Pervari')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (650, 56, N'Şirvan')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (651, 57, N'Türkeli')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (652, 58, N'Akıncılar')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (653, 58, N'Altınyayla')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (654, 58, N'Divriği')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (655, 58, N'Doğanşar')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (656, 58, N'İmranlı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (657, 58, N'Ulaş')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (658, 59, N'Çerkezköy')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (659, 59, N'Marmaraereğlisi')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (660, 60, N'Zile')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (661, 61, N'Akçaabat')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (662, 61, N'Arsin')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (663, 61, N'Dernekpazarı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (664, 61, N'Köprübaşı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (665, 61, N'Maçka')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (666, 61, N'Of')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (667, 61, N'Şalpazarı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (668, 61, N'Yomra')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (669, 63, N'Akçakale')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (670, 63, N'Bozova')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (671, 63, N'Ceylanpınar')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (672, 63, N'Harran')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (673, 63, N'Suruç')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (674, 64, N'Eşme')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (675, 64, N'Karahallı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (676, 64, N'Ulubey')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (677, 65, N'Başkale')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (678, 65, N'Çaldıran')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (679, 65, N'Özalp')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (680, 66, N'Boğazlıyan')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (681, 66, N'Aydıncık')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (682, 66, N'Sorgun')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (683, 67, N'Devrek')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (684, 67, N'Karadenizereğli')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (685, 70, N'Sarıveliler')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (686, 71, N'Balışeyh')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (687, 71, N'Yahşihan')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (688, 72, N'Kozluk')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (689, 73, N'Beytüşşebap')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (690, 73, N'İdil')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (691, 75, N'Çıldır')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (692, 76, N'Aralık')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (693, 76, N'Tuzluca')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (694, 77, N'Çınarcık')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (695, 77, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (696, 78, N'Eflani')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (697, 78, N'Eskipazar')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (698, 78, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (699, 78, N'Safranbolu')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (700, 79, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (701, 80, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (702, 80, N'Toprakkale')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (703, 81, N'Cumayeri')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (704, 66, N'Çandır')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (705, 66, N'Çayıralan')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (706, 66, N'Çekerek')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (707, 67, N'Çaycuma')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (708, 68, N'Eskil')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (709, 69, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (710, 70, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (711, 71, N'Bahşili')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (712, 71, N'Çelebi')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (713, 71, N'Karakeçili')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (714, 71, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (715, 72, N'Gercüş')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (716, 72, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (717, 73, N'Uludere')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (718, 74, N'Ulus')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (719, 75, N'Damal')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (720, 75, N'Hanak')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (721, 75, N'Posof')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (722, 76, N'Karakoyunlu')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (723, 77, N'Altınova')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (724, 77, N'Çiftlikköy')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (725, 80, N'Kadirli')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (726, 81, N'Gölyaka')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (727, 1, N'Gazimagosa')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (728, 1, N'Güzelyurt')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (729, 1, N'Pozantı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (730, 1, N'Saimbeyli')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (731, 1, N'Sarıçam')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (732, 1, N'Yüreğir')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (733, 3, N'Sincanlı(Sinanpaşa)')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (734, 4, N'Doğubayazıt(Doğubeyazıt)')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (735, 6, N'Altındağ')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (736, 6, N'Bala')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (737, 6, N'Beypazarı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (738, 6, N'Çamlıdere')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (739, 6, N'Kalecik')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (740, 6, N'Keçiören')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (741, 6, N'Kızılcahamam')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (742, 6, N'Şereflikoçhisar')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (743, 6, N'Yenimahalle')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (744, 7, N'Elmalı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (745, 7, N'Gündoğmuş')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (746, 7, N'Kemer')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (747, 8, N'Ardanuç')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (748, 8, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (749, 8, N'Şavşat')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (750, 9, N'Didim(Yenihisar)')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (751, 9, N'Koçarlı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (752, 10, N'Dursunbey')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (753, 10, N'Erdek')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (754, 10, N'Gönen')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (755, 10, N'İvrindi')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (756, 10, N'Manyas')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (757, 10, N'Susurluk')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (758, 11, N'Osmaneli')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (759, 12, N'Karlıova')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (760, 12, N'Kiğı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (761, 12, N'Solhan')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (762, 13, N'Ahlat')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (763, 13, N'Tatvan')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (764, 14, N'Gerede')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (765, 14, N'Seben')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (766, 14, N'Yeniçağa')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (767, 15, N'Gölhisar')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (768, 15, N'Karamanlı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (769, 15, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (770, 15, N'Tefenni')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (771, 16, N'Gürsu')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (772, 16, N'Harmancık')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (773, 16, N'Kestel')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (774, 17, N'Çan')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (775, 17, N'Gökçeada(İmroz)')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (776, 17, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (777, 18, N'Korgun')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (778, 18, N'Kurşunlu')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (779, 18, N'Orta')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (780, 19, N'Boğazkale')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (781, 19, N'Ortaköy')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (782, 20, N'Akköy')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (783, 20, N'Bekilli')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (784, 20, N'Bozkurt')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (785, 20, N'Çameli')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (786, 20, N'Çivril')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (787, 20, N'Kale')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (788, 21, N'Bağlar')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (789, 21, N'Hani')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (790, 21, N'Kocaköy')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (791, 22, N'Enez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (792, 22, N'Lalapaşa')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (793, 23, N'Ağın')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (794, 23, N'Arıcak')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (795, 23, N'Karakoçan')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (796, 23, N'Keban')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (797, 23, N'Maden')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (798, 24, N'Ilıç(İliç)')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (799, 24, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (800, 24, N'Otlukbeli')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (801, 24, N'Refahiye')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (802, 25, N'Hınıs')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (803, 25, N'Pazaryolu')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (804, 26, N'Odunpazarı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (805, 26, N'Seyitgazi')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (806, 26, N'Sivrihisar')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (807, 27, N'Araban')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (808, 27, N'Şehitkamil')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (809, 28, N'Çamoluk')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (810, 28, N'Espiye')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (811, 28, N'Piraziz')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (812, 28, N'Şebinkarahisar')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (813, 28, N'Tirebolu')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (814, 29, N'Kelkit')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (815, 29, N'Şiran')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (816, 30, N'Şemdinli')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (817, 31, N'Altınözü')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (818, 31, N'Antakya')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (819, 31, N'Belen')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (820, 31, N'Erzin')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (821, 31, N'Kırıkhan')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (822, 32, N'Yenişarbademli')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (823, 33, N'Mezitli')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (824, 33, N'Tarsus')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (825, 33, N'Yenişehir')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (826, 34, N'Ataşehir')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (827, 34, N'Bahçelievler')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (828, 34, N'Beyoğlu')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (829, 34, N'Çekmeköy')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (830, 34, N'Güngören')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (831, 34, N'Küçükçekmece')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (832, 34, N'Şile')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (833, 34, N'Ümraniye')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (834, 35, N'Bergama')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (835, 35, N'Bornova')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (836, 35, N'Karşıyaka')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (837, 35, N'Menderes(Cumaovası)')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (838, 35, N'Menemen')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (839, 35, N'Narlıdere')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (840, 35, N'Selçuk')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (841, 36, N'Akyaka')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (842, 36, N'Digor')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (843, 36, N'Sarıkamış')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (844, 36, N'Selim')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (845, 37, N'Şenpazar')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (846, 38, N'Develi')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (847, 38, N'Melikgazi')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (848, 38, N'Özvatan(Çukur)')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (849, 38, N'Sarıoğlan')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (850, 38, N'Yeşilhisar')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (851, 39, N'Pınarhisar')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (852, 40, N'Akçakent')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (853, 40, N'Çiçekdağı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (854, 40, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (855, 41, N'Başiskele')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (856, 41, N'Çayırova')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (857, 41, N'Gölcük')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (858, 41, N'İzmit')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (859, 41, N'Kandıra')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (860, 41, N'Kartepe')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (861, 42, N'Göksun')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (862, 42, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (863, 42, N'Türkoğlu')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (864, 43, N'Ahırlı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (865, 43, N'Beyşehir')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (866, 43, N'Halkapınar')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (867, 43, N'Karatay')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (868, 43, N'Meram')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (869, 43, N'Taşkent')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (870, 43, N'Tuzlukçu')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (871, 44, N'Altıntaş')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (872, 44, N'Aslanapa')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (873, 44, N'Simav')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (874, 45, N'Arguvan')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (875, 45, N'Doğanyol')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (876, 45, N'Kale')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (877, 46, N'Akhisar')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (878, 46, N'Alaşehir')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (879, 46, N'Kırkağaç')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (880, 46, N'Turgutlu')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (881, 47, N'Midyat(Estel)')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (882, 47, N'Nusaybin')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (883, 47, N'Ömerli')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (884, 47, N'Savur')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (885, 47, N'Yeşilli')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (886, 48, N'Fethiye')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (887, 48, N'Ula')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (888, 48, N'Yatağan')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (889, 49, N'Korkut')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (890, 49, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (891, 50, N'Hacıbektaş')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (892, 50, N'Ürgüp')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (893, 51, N'Bor')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (894, 51, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (895, 52, N'Çamaş')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (896, 52, N'Kabataş')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (897, 52, N'Perşembe')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (898, 53, N'Güneysu')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (899, 53, N'İkizdere')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (900, 53, N'Pazar')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (901, 54, N'Adapazarı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (902, 54, N'Erenler')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (903, 54, N'Ferizli')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (904, 54, N'Kocaali')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (905, 54, N'Taraklı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (906, 55, N'Alaçam')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (907, 55, N'Atakum')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (908, 55, N'Bafra')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (909, 56, N'Eruh')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (910, 56, N'Kurtalan')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (911, 56, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (912, 57, N'Gerze')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (913, 58, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (914, 58, N'Zara')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (915, 59, N'Hayrabolu')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (916, 59, N'Malkara')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (917, 59, N'Muratlı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (918, 59, N'Saray')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (919, 60, N'Başçiftlik')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (920, 60, N'Turhal')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (921, 60, N'Yeşilyurt')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (922, 61, N'Araklı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (923, 61, N'Hayrat')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (924, 62, N'Nazımiye')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (925, 62, N'Pertek')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (926, 63, N'Birecik')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (927, 63, N'Hilvan')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (928, 63, N'Viranşehir')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (929, 64, N'Banaz')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (930, 64, N'Sivaslı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (931, 65, N'Bahçesaray')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (932, 65, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (933, 66, N'Saraykent')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (934, 66, N'Sarıkaya')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (935, 66, N'Yerköy')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (936, 67, N'Alaplı')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (937, 67, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (938, 68, N'Sarıyahşi')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (939, 69, N'Aydıntepe')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (940, 69, N'Demirözü')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (941, 70, N'Kazımkarabekir')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (942, 71, N'Sulakyurt')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (943, 72, N'Hasankeyf')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (944, 72, N'Sason')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (945, 73, N'Güçlükonak')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (946, 73, N'Silopi')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (947, 74, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (948, 75, N'Göle')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (949, 76, N'Merkez')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (950, 77, N'Termal')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (951, 79, N'Elbeyli')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (952, 79, N'Musabeyli')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (953, 79, N'Polateli')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (954, 80, N'Bahçe')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (955, 80, N'Düziçi')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (956, 80, N'Hasanbeyli')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (957, 80, N'Sumbas')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (958, 81, N'Çilimli')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (959, 81, N'Gümüşova')
GO
INSERT [dbo].[E_tbl_ilce] ([ilce_id], [il_id], [ilce_ad]) VALUES (960, 81, N'Merkez')
GO
SET IDENTITY_INSERT [dbo].[E_tbl_ilce] OFF
GO
SET IDENTITY_INSERT [dbo].[E_TelefonMarka] ON 

GO
INSERT [dbo].[E_TelefonMarka] ([TelefonID], [TelAdi], [IsActive], [RouteTelAdi]) VALUES (1, N'Acer', 1, N'acer')
GO
INSERT [dbo].[E_TelefonMarka] ([TelefonID], [TelAdi], [IsActive], [RouteTelAdi]) VALUES (2, N'Amazon', 1, N'amazon')
GO
INSERT [dbo].[E_TelefonMarka] ([TelefonID], [TelAdi], [IsActive], [RouteTelAdi]) VALUES (3, N'Anycool', 1, N'anycool')
GO
INSERT [dbo].[E_TelefonMarka] ([TelefonID], [TelAdi], [IsActive], [RouteTelAdi]) VALUES (4, N'Apple', 1, N'apple')
GO
INSERT [dbo].[E_TelefonMarka] ([TelefonID], [TelAdi], [IsActive], [RouteTelAdi]) VALUES (5, N'Asus', 1, N'asus')
GO
INSERT [dbo].[E_TelefonMarka] ([TelefonID], [TelAdi], [IsActive], [RouteTelAdi]) VALUES (6, N'Avea', 1, N'avea')
GO
INSERT [dbo].[E_TelefonMarka] ([TelefonID], [TelAdi], [IsActive], [RouteTelAdi]) VALUES (7, N'BlackBerry', 1, N'blackberry')
GO
INSERT [dbo].[E_TelefonMarka] ([TelefonID], [TelAdi], [IsActive], [RouteTelAdi]) VALUES (8, N'Casper', 1, N'casper')
GO
INSERT [dbo].[E_TelefonMarka] ([TelefonID], [TelAdi], [IsActive], [RouteTelAdi]) VALUES (9, N'Dell', 1, N'dell')
GO
INSERT [dbo].[E_TelefonMarka] ([TelefonID], [TelAdi], [IsActive], [RouteTelAdi]) VALUES (10, N'Exper', 1, N'exper')
GO
INSERT [dbo].[E_TelefonMarka] ([TelefonID], [TelAdi], [IsActive], [RouteTelAdi]) VALUES (11, N'Fujitsu', 1, N'fujitsu')
GO
INSERT [dbo].[E_TelefonMarka] ([TelefonID], [TelAdi], [IsActive], [RouteTelAdi]) VALUES (12, N'General Mobile', 1, N'generalmobile')
GO
INSERT [dbo].[E_TelefonMarka] ([TelefonID], [TelAdi], [IsActive], [RouteTelAdi]) VALUES (13, N'GoldMaster', 1, N'goldmaster')
GO
INSERT [dbo].[E_TelefonMarka] ([TelefonID], [TelAdi], [IsActive], [RouteTelAdi]) VALUES (14, N'Google', 1, N'google')
GO
INSERT [dbo].[E_TelefonMarka] ([TelefonID], [TelAdi], [IsActive], [RouteTelAdi]) VALUES (15, N'HP', 1, N'hp')
GO
INSERT [dbo].[E_TelefonMarka] ([TelefonID], [TelAdi], [IsActive], [RouteTelAdi]) VALUES (16, N'HTC', 1, N'htc')
GO
INSERT [dbo].[E_TelefonMarka] ([TelefonID], [TelAdi], [IsActive], [RouteTelAdi]) VALUES (17, N'Huawei', 1, N'huawei')
GO
INSERT [dbo].[E_TelefonMarka] ([TelefonID], [TelAdi], [IsActive], [RouteTelAdi]) VALUES (18, N'Lenovo', 1, N'levono')
GO
INSERT [dbo].[E_TelefonMarka] ([TelefonID], [TelAdi], [IsActive], [RouteTelAdi]) VALUES (19, N'LG', 1, N'lg')
GO
INSERT [dbo].[E_TelefonMarka] ([TelefonID], [TelAdi], [IsActive], [RouteTelAdi]) VALUES (20, N'Microsoft', 1, N'microsoft')
GO
INSERT [dbo].[E_TelefonMarka] ([TelefonID], [TelAdi], [IsActive], [RouteTelAdi]) VALUES (21, N'Motorola', 1, N'motorola')
GO
INSERT [dbo].[E_TelefonMarka] ([TelefonID], [TelAdi], [IsActive], [RouteTelAdi]) VALUES (22, N'Nokia', 1, N'nokia')
GO
INSERT [dbo].[E_TelefonMarka] ([TelefonID], [TelAdi], [IsActive], [RouteTelAdi]) VALUES (23, N'Panasonic', 1, N'panasonic')
GO
INSERT [dbo].[E_TelefonMarka] ([TelefonID], [TelAdi], [IsActive], [RouteTelAdi]) VALUES (24, N'Philips', 1, N'philips')
GO
INSERT [dbo].[E_TelefonMarka] ([TelefonID], [TelAdi], [IsActive], [RouteTelAdi]) VALUES (25, N'Sagem', 1, N'sagem')
GO
INSERT [dbo].[E_TelefonMarka] ([TelefonID], [TelAdi], [IsActive], [RouteTelAdi]) VALUES (26, N'Samsung', 1, N'samsung')
GO
INSERT [dbo].[E_TelefonMarka] ([TelefonID], [TelAdi], [IsActive], [RouteTelAdi]) VALUES (27, N'Sharp', 1, N'sharp')
GO
INSERT [dbo].[E_TelefonMarka] ([TelefonID], [TelAdi], [IsActive], [RouteTelAdi]) VALUES (28, N'Sony', 1, N'sony')
GO
INSERT [dbo].[E_TelefonMarka] ([TelefonID], [TelAdi], [IsActive], [RouteTelAdi]) VALUES (29, N'Sony Ericsson', 1, N'sonyericsson')
GO
INSERT [dbo].[E_TelefonMarka] ([TelefonID], [TelAdi], [IsActive], [RouteTelAdi]) VALUES (30, N'Toshiba', 1, N'toshiba')
GO
INSERT [dbo].[E_TelefonMarka] ([TelefonID], [TelAdi], [IsActive], [RouteTelAdi]) VALUES (31, N'Turkcell', 1, N'turkcell')
GO
INSERT [dbo].[E_TelefonMarka] ([TelefonID], [TelAdi], [IsActive], [RouteTelAdi]) VALUES (32, N'Vertu', 1, N'vertu')
GO
INSERT [dbo].[E_TelefonMarka] ([TelefonID], [TelAdi], [IsActive], [RouteTelAdi]) VALUES (33, N'Vodafone', 1, N'vodafone')
GO
INSERT [dbo].[E_TelefonMarka] ([TelefonID], [TelAdi], [IsActive], [RouteTelAdi]) VALUES (34, N'ZTE', 1, N'zte')
GO
SET IDENTITY_INSERT [dbo].[E_TelefonMarka] OFF
GO
SET IDENTITY_INSERT [dbo].[E_TelefonModeller] ON 

GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1, N'beTouch E200', 1, 1, N'betouche200')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (2, N'DX650', 1, 1, N'dx650')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (3, N'DX900', 1, 1, N'dx900')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (4, N'E100', 1, 1, N'e100')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (5, N'E101', 1, 1, N'e101')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (6, N'E110', 1, 1, N'e110')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (7, N'E120', 1, 1, N'e120')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (8, N'E130', 1, 1, N'e130')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (9, N'E140', 1, 1, N'e140')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (10, N'E210', 1, 1, N'e210')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (11, N'E310', 1, 1, N'e310')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (12, N'E400', 1, 1, N'e400')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (13, N'F1', 1, 1, N'f1')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (14, N'F900', 1, 1, N'f900')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (15, N'Ferrari', 1, 1, N'ferrari')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (16, N'Iconia A1-810', 1, 1, N'iconiaa1810')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (17, N'Iconia A3', 1, 1, N'iconiaa3')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (18, N'Iconia Tab A110', 1, 1, N'iconiataba110')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (19, N'Iconia Tab W700', 1, 1, N'iconiatabw700')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (20, N'iconia', 1, 1, N'iconia')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (21, N'iconia A1-830', 1, 1, N'iconiaa1830')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (22, N'iconia B1', 1, 1, N'iconiab1')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (23, N'iconia B1-720', 1, 1, N'iconiab1720')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (24, N'iconia Smart', 1, 1, N'iconiasmart')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (25, N'iconia Tab A101', 1, 1, N'iconiataba101')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (26, N'iconia Tab A200', 1, 1, N'iconiataba200')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (27, N'iconia Tab A500', 1, 1, N'iconiataba500')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (28, N'iconia Tab A501', 1, 1, N'iconiataba501')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (29, N'iconia Tab A510', 1, 1, N'iconiataba510')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (30, N'iconia Tab A511', 1, 1, N'iconiataba511')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (31, N'iconia Tab A700', 1, 1, N'iconiataba700')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (32, N'iconia W3', 1, 1, N'iconiaw3')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (33, N'iconia W4', 1, 1, N'iconiaw4')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (34, N'iconia W510', 1, 1, N'iconiaw510')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (35, N'iconia W700', 1, 1, N'iconiaw700')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (36, N'Liquid', 1, 1, N'liquid')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (37, N'Liquid e', 1, 1, N'liquide')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (38, N'Liquid E3', 1, 1, N'liquide3')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (39, N'Liquid Gallant Duo', 1, 1, N'liquidgallantduo')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (40, N'Liquid mt', 1, 1, N'liquidmt')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (41, N'Liquid S2', 1, 1, N'liquids2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (42, N'Liquid Z3', 1, 1, N'liquidz3')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (43, N'Liquid Z4', 1, 1, N'liquidz4')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (44, N'Liquid Z5', 1, 1, N'liquidz5')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (45, N'M900', 1, 1, N'm900')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (46, N'P300', 1, 1, N'p300')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (47, N'P400', 1, 1, N'p400')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (48, N'Stream', 1, 1, N'stream')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (49, N'T500', 1, 1, N't500')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (50, N'X960', 1, 1, N'x960')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (51, N'Kindle Fire', 2, 1, N'kindlefire')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (52, N'Kindle Fire HD', 2, 1, N'kindlefirehd')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (53, N'Kindle Fire HD 8.9', 2, 1, N'kindlefirehd89')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (54, N'8900i', 3, 1, N'8900i')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (55, N'D58', 3, 1, N'd58')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (56, N'D66', 3, 1, N'd66')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (57, N'D68', 3, 1, N'd68')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (58, N'DL66', 3, 1, N'dl66')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (59, N'E71', 3, 1, N'e71')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (60, N'E72W', 3, 1, N'e72w')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (61, N'F818', 3, 1, N'f818')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (62, N'F838', 3, 1, N'f838')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (63, N'GC338', 3, 1, N'gc338')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (64, N'GC666', 3, 1, N'gc666')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (65, N'GC668', 3, 1, N'gc668')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (66, N'GC669', 3, 1, N'gc669')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (67, N'i89', 3, 1, N'i89')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (68, N'i929', 3, 1, N'i929')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (69, N'i939', 3, 1, N'i939')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (70, N'iPhone', 3, 1, N'iphone')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (71, N'K88', 3, 1, N'k88')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (72, N'M12', 3, 1, N'm12')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (73, N'N67', 3, 1, N'n67')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (74, N'S24', 3, 1, N's24')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (75, N'S840M', 3, 1, N's840m')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (76, N'S860m', 3, 1, N's860m')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (77, N'S870', 3, 1, N's870')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (78, N'S880', 3, 1, N's880')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (79, N'ST88', 3, 1, N'st88')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (80, N'Storm', 3, 1, N'storm')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (81, N'T318', 3, 1, N't318')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (82, N'T618', 3, 1, N't618')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (83, N'T628', 3, 1, N't628')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (84, N'T808', 3, 1, N't808')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (85, N'T818', 3, 1, N't818')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (86, N'T828', 3, 1, N't828')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (87, N'T828i', 3, 1, N't828i')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (88, N'Troya', 3, 1, N'troya')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (89, N'V866', 3, 1, N'v866')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (90, N'V868', 3, 1, N'v868')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (91, N'V876', 3, 1, N'v876')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (92, N'W720', 3, 1, N'w720')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (93, N'W730', 3, 1, N'w730')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (94, N'iPad 2', 4, 1, N'ipad2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (95, N'iPad 3', 4, 1, N'ipad3')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (96, N'iPad 4', 4, 1, N'ipad4')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (97, N'iPad Air', 4, 1, N'ipadair')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (98, N'iPad mini', 4, 1, N'ipadmini')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (99, N'iPad Mini Retina', 4, 1, N'ipadminiretina')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (100, N'iPad Wi-Fi', 4, 1, N'ipadwifi')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (101, N'iPhone 3G', 4, 1, N'iphone3g')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (102, N'iPhone 3G S', 4, 1, N'iphone3gs')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (103, N'iPhone 4', 4, 1, N'iphone4')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (104, N'iPhone 4S', 4, 1, N'iphone4s')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (105, N'iPhone 5', 4, 1, N'iphone5')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (106, N'iPhone 5C', 4, 1, N'iphone5c')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (107, N'iPhone 5S', 4, 1, N'iphone5s')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (108, N'iPod Touch 5', 4, 1, N'ipodtouch5')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (109, N'A10', 5, 1, N'a10')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (110, N'A50', 5, 1, N'a50')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (111, N'A636', 5, 1, N'a636')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (112, N'EP101', 5, 1, N'ep101')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (113, N'EP121', 5, 1, N'ep121')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (114, N'EP90', 5, 1, N'ep90')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (115, N'Fonepad', 5, 1, N'fonepad')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (116, N'Fonepad 6E', 5, 1, N'fonepad6e')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (117, N'Fonepad 7', 5, 1, N'fonepad7')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (118, N'G60', 5, 1, N'g60')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (119, N'Google Nexus 7', 5, 1, N'googlenexus7')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (120, N'M10', 5, 1, N'm10')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (121, N'M20', 5, 1, N'm20')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (122, N'Memo', 5, 1, N'memo')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (123, N'MeMo Pad 10', 5, 1, N'memopad10')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (124, N'MeMO Pad 10 ME102A', 5, 1, N'memopad10me102a')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (125, N'MeMo Pad 8', 5, 1, N'memopad8')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (126, N'MeMO Pad 8 ME180A', 5, 1, N'memopad8me180a')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (127, N'MeMo Pad HD 7', 5, 1, N'memopadhd7')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (128, N'MeMO Pad Smart 10 ME301T', 5, 1, N'memopadsmart10me301t')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (129, N'P320', 5, 1, N'p320')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (130, N'P552w', 5, 1, N'p552w')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (131, N'P565', 5, 1, N'p565')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (132, N'P835', 5, 1, N'p835')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (133, N'Padfone', 5, 1, N'padfone')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (134, N'Padfone 2 A68', 5, 1, N'padfone2a68')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (135, N'PadFone E', 5, 1, N'padfonee')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (136, N'PadFone Infinity 2', 5, 1, N'padfoneinfinity2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (137, N'PadFone mini', 5, 1, N'padfonemini')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (138, N'TD300 Transformer Book Duet', 5, 1, N'td300transformerbookduet')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (139, N'Transformer Book T100', 5, 1, N'transformerbookt100')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (140, N'Transformer Pad 300', 5, 1, N'transformerpad300')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (141, N'Transformer Pad Infinity 700', 5, 1, N'transformerpadinfinity700')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (142, N'Transformer Pad TF300T', 5, 1, N'transformerpadtf300t')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (143, N'Transformer Pad TF701T', 5, 1, N'transformerpadtf701t')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (144, N'Transformer Prime TF201', 5, 1, N'transformerprimetf201')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (145, N'Transformer Prime TF700T', 5, 1, N'transformerprimetf700t')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (146, N'Transformer TF101', 5, 1, N'transformertf101')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (147, N'ZenFone 4', 5, 1, N'zenfone4')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (148, N'ZenFone 5', 5, 1, N'zenfone5')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (149, N'ZenFone 6', 5, 1, N'zenfone6')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (150, N'inTouch', 6, 1, N'intouch')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (151, N'inTouch 2', 6, 1, N'intouch2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (152, N'3G', 7, 1, N'3g')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (153, N'9670', 7, 1, N'9670')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (154, N'9720', 7, 1, N'9720')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (155, N'9780', 7, 1, N'9780')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (156, N'9800', 7, 1, N'9800')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (157, N'9810 Torch 2', 7, 1, N'9810torch2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (158, N'Apollo', 7, 1, N'apollo')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (159, N'Bold', 7, 1, N'bold')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (160, N'Bold 2', 7, 1, N'bold2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (161, N'Bold 9650', 7, 1, N'bold9650')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (162, N'Bold 9790', 7, 1, N'bold9790')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (163, N'Bold 9900', 7, 1, N'bold9900')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (164, N'Bold Beyaz', 7, 1, N'boldbeyaz')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (165, N'Bold Touch 9930', 7, 1, N'boldtouch9930')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (166, N'Curve 3G 9300', 7, 1, N'curve3g9300')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (167, N'Curve 3G 9330', 7, 1, N'curve3g9330')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (168, N'Curve 8330', 7, 1, N'curve8330')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (169, N'Curve 8520', 7, 1, N'curve8520')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (170, N'Curve 8900', 7, 1, N'curve8900')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (171, N'Curve 8980', 7, 1, N'curve8980')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (172, N'Curve 9220', 7, 1, N'curve9220')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (173, N'Curve 9300', 7, 1, N'curve9300')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (174, N'Curve 9320', 7, 1, N'curve9320')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (175, N'Curve 9350', 7, 1, N'curve9350')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (176, N'Curve 9360', 7, 1, N'curve9360')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (177, N'Curve 9370', 7, 1, N'curve9370')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (178, N'Curve 9380', 7, 1, N'curve9380')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (179, N'Dakota', 7, 1, N'dakota')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (180, N'Flip', 7, 1, N'flip')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (181, N'Gemini', 7, 1, N'gemini')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (182, N'Onyx', 7, 1, N'onyx')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (183, N'Pearl 2', 7, 1, N'pearl2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (184, N'Pearl 3G', 7, 1, N'pearl3g')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (185, N'PlayBook', 7, 1, N'playbook')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (186, N'PlayBook 2012', 7, 1, N'playbook2012')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (187, N'Playbook LTE', 7, 1, N'playbooklte')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (188, N'Porsche Design P9531', 7, 1, N'porschedesignp9531')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (189, N'Porsche Design P9982', 7, 1, N'porschedesignp9982')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (190, N'Porsche P9981', 7, 1, N'porschep9981')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (191, N'Q10', 7, 1, N'q10')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (192, N'Q5', 7, 1, N'q5')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (193, N'Slider', 7, 1, N'slider')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (194, N'Storm', 7, 1, N'storm')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (195, N'Storm 2', 7, 1, N'storm2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (196, N'Storm 3', 7, 1, N'storm3')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (197, N'Storm2 9520', 7, 1, N'storm29520')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (198, N'Storm2 9550', 7, 1, N'storm29550')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (199, N'Thunder', 7, 1, N'thunder')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (200, N'Torch 9860', 7, 1, N'torch9860')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (201, N'Tour', 7, 1, N'tour')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (202, N'Volt', 7, 1, N'volt')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (203, N'Z10', 7, 1, N'z10')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (204, N'Z30', 7, 1, N'z30')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (205, N'VIA A3216', 8, 1, N'viaa3216')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (206, N'VIA A6108', 8, 1, N'viaa6108')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (207, N'VIA V4', 8, 1, N'viav4')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (208, N'Aero', 9, 1, N'aero')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (209, N'Flash', 9, 1, N'flash')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (210, N'Lightning', 9, 1, N'lightning')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (211, N'Mini 3i', 9, 1, N'mini3i')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (212, N'Mini 3iX', 9, 1, N'mini3ix')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (213, N'Smoke', 9, 1, N'smoke')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (214, N'Streak 10 Pro', 9, 1, N'streak10pro')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (215, N'Streak 5', 9, 1, N'streak5')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (216, N'Streak 7', 9, 1, N'streak7')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (217, N'Streak Pro D43', 9, 1, N'streakprod43')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (218, N'Venue', 9, 1, N'venue')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (219, N'Venue Pro', 9, 1, N'venuepro')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (220, N'XCD28', 9, 1, N'xcd28')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (221, N'XCD35', 9, 1, N'xcd35')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (223, N'Easypad P10ANG', 10, 1, N'easypadp10ang')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (224, N'P10EMS', 10, 1, N'p10ems')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (225, N'P10MAN', 10, 1, N'p10man')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (226, N'Q550', 11, 1, N'q550')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (227, N'3G Cool Black', 12, 1, N'3gcoolblack')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (228, N'Business', 12, 1, N'business')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (229, N'Diamond Bar', 12, 1, N'diamondbar')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (230, N'Diamond Limited Edition', 12, 1, N'diamondlimitededition')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (231, N'Diamond Qwerty', 12, 1, N'diamondqwerty')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (232, N'Diamond Touch', 12, 1, N'diamondtouch')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (233, N'Discovery', 12, 1, N'discovery')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (234, N'Discovery Elite', 12, 1, N'discoveryelite')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (235, N'DST 3G Cool', 12, 1, N'dst3gcool')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (236, N'DST Diamond', 12, 1, N'dstdiamond')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (237, N'DST Picco', 12, 1, N'dstpicco')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (238, N'DST Q200', 12, 1, N'dstq200')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (239, N'DST10', 12, 1, N'dst10')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (240, N'DST11 White', 12, 1, N'dst11white')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (241, N'DST12', 12, 1, N'dst12')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (242, N'DST13', 12, 1, N'dst13')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (243, N'DST1907', 12, 1, N'dst1907')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (244, N'DST250', 12, 1, N'dst250')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (245, N'DST33', 12, 1, N'dst33')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (246, N'DST350', 12, 1, N'dst350')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (247, N'DST3G Smart', 12, 1, N'dst3gsmart')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (248, N'DST450', 12, 1, N'dst450')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (249, N'DST500', 12, 1, N'dst500')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (250, N'DST700', 12, 1, N'dst700')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (251, N'DST800', 12, 1, N'dst800')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (252, N'DSTL1', 12, 1, N'dstl1')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (253, N'DSTM1', 12, 1, N'dstm1')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (254, N'DSTQ100', 12, 1, N'dstq100')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (255, N'DSTS1', 12, 1, N'dsts1')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (256, N'DSTS3', 12, 1, N'dsts3')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (257, N'e-tab', 12, 1, N'etab')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (258, N'e-tab 4G', 12, 1, N'etab4g')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (259, N'Fenomen', 12, 1, N'fenomen')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (260, N'GF2F', 12, 1, N'gf2f')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (261, N'M500', 12, 1, N'm500')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (262, N'Planet', 12, 1, N'planet')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (263, N'Q3', 12, 1, N'q3')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (264, N'Q300', 12, 1, N'q300')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (265, N'Q4', 12, 1, N'q4')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (266, N'S3', 12, 1, N's3')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (267, N'Sense', 12, 1, N'sense')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (268, N'Surf', 12, 1, N'surf')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (269, N'T3', 12, 1, N't3')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (270, N'Ultimate Slim', 12, 1, N'ultimateslim')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (271, N'W2', 12, 1, N'w2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (272, N'M100 TV', 13, 1, N'm100tv')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (273, N'M200 TV', 13, 1, N'm200tv')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (274, N'M7 Wi-Fi', 13, 1, N'm7wifi')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (275, N'M90', 13, 1, N'm90')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (276, N'G1', 14, 1, N'g1')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (277, N'G2', 14, 1, N'g2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (278, N'G2 V2', 14, 1, N'g2v2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (279, N'myTouch 3G', 14, 1, N'mytouch3g')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (280, N'Nexus 7', 14, 1, N'nexus7')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (281, N'Nexus 7 2', 14, 1, N'nexus72')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (282, N'Nexus One', 14, 1, N'nexusone')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (283, N'Nexus Prime', 14, 1, N'nexusprime')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (284, N'Nexus S', 14, 1, N'nexuss')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (285, N'Glisten', 15, 1, N'glisten')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (286, N'iPAQ 214', 15, 1, N'ipaq214')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (287, N'iPAQ 614', 15, 1, N'ipaq614')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (288, N'iPAQ 914', 15, 1, N'ipaq914')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (289, N'iPAQ Data Messenger', 15, 1, N'ipaqdatamessenger')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (290, N'iPAQ K3', 15, 1, N'ipaqk3')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (291, N'iPAQ Voice Messenger', 15, 1, N'ipaqvoicemessenger')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (292, N'Obsidian', 15, 1, N'obsidian')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (293, N'Omni 10', 15, 1, N'omni10')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (294, N'Pre 3', 15, 1, N'pre3')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (295, N'Slate 10 HD', 15, 1, N'slate10hd')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (296, N'Slate 500', 15, 1, N'slate500')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (297, N'Slate 7 Extreme', 15, 1, N'slate7extreme')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (298, N'Slate 7 HD', 15, 1, N'slate7hd')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (299, N'Slate 8 Pro', 15, 1, N'slate8pro')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (300, N'TouchPad', 15, 1, N'touchpad')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (301, N'TouchPad 4G', 15, 1, N'touchpad4g')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (302, N'Veer', 15, 1, N'veer')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (303, N'Veer 4G', 15, 1, N'veer4g')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (304, N'3G', 16, 1, N'3g')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (305, N'7 Pro', 16, 1, N'7pro')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (306, N'7 Surround', 16, 1, N'7surround')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (307, N'8XT', 16, 1, N'8xt')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (308, N'Accord', 16, 1, N'accord')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (309, N'Advantage X7510', 16, 1, N'advantagex7510')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (310, N'Amaze 4G', 16, 1, N'amaze4g')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (311, N'Aria', 16, 1, N'aria')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (312, N'Butterfly', 16, 1, N'butterfly')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (313, N'Butterfly S', 16, 1, N'butterflys')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (314, N'ChaCha', 16, 1, N'chacha')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (315, N'Desire', 16, 1, N'desire')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (316, N'Desire 200', 16, 1, N'desire200')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (317, N'Desire 300', 16, 1, N'desire300')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (318, N'Desire 400', 16, 1, N'desire400')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (319, N'Desire 500', 16, 1, N'desire500')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (320, N'Desire 501', 16, 1, N'desire501')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (321, N'Desire 600', 16, 1, N'desire600')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (322, N'Desire 601', 16, 1, N'desire601')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (323, N'Desire 700', 16, 1, N'desire700')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (324, N'Desire C', 16, 1, N'desirec')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (325, N'Desire HD', 16, 1, N'desirehd')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (326, N'Desire HD 2', 16, 1, N'desirehd2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (327, N'Desire S', 16, 1, N'desires')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (328, N'Desire SV', 16, 1, N'desiresv')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (329, N'Desire U', 16, 1, N'desireu')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (330, N'Desire V', 16, 1, N'desirev')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (331, N'Desire VC', 16, 1, N'desirevc')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (332, N'Desire X', 16, 1, N'desirex')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (333, N'Desire Z', 16, 1, N'desirez')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (334, N'Diamond', 16, 1, N'diamond')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (335, N'Diamond 2', 16, 1, N'diamond2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (336, N'Dream', 16, 1, N'dream')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (337, N'Droid DNA', 16, 1, N'droiddna')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (338, N'Droid Eris', 16, 1, N'droideris')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (339, N'Droid incredible', 16, 1, N'droidincredible')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (340, N'Droid incredible 2', 16, 1, N'droidincredible2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (341, N'Edge', 16, 1, N'edge')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (342, N'EVO 3D', 16, 1, N'evo3d')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (343, N'Evo 4G', 16, 1, N'evo4g')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (344, N'EVO Design 4G', 16, 1, N'evodesign4g')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (345, N'Explorer', 16, 1, N'explorer')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (346, N'First', 16, 1, N'first')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (347, N'Flyer', 16, 1, N'flyer')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (348, N'Freestyle', 16, 1, N'freestyle')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (349, N'G1', 16, 1, N'g1')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (350, N'Google Nexus One', 16, 1, N'googlenexusone')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (351, N'Gratia', 16, 1, N'gratia')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (352, N'HD', 16, 1, N'hd')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (353, N'HD 2', 16, 1, N'hd2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (354, N'HD 3', 16, 1, N'hd3')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (355, N'HD 7', 16, 1, N'hd7')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (356, N'HD Mini', 16, 1, N'hdmini')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (357, N'HD7 S', 16, 1, N'hd7s')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (358, N'Herald P4350', 16, 1, N'heraldp4350')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (359, N'Hero', 16, 1, N'hero')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (360, N'Hero S', 16, 1, N'heros')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (361, N'Imagio', 16, 1, N'imagio')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (362, N'imagio', 16, 1, N'imagio')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (363, N'incredible S', 16, 1, N'incredibles')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (364, N'inspire 4G', 16, 1, N'inspire4g')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (365, N'J', 16, 1, N'j')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (366, N'Jetstream', 16, 1, N'jetstream')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (367, N'Lancaster', 16, 1, N'lancaster')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (368, N'Legend', 16, 1, N'legend')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (369, N'Magic', 16, 1, N'magic')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (370, N'MAX 4G', 16, 1, N'max4g')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (371, N'Mega', 16, 1, N'mega')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (372, N'Merge', 16, 1, N'merge')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (373, N'Mozart', 16, 1, N'mozart')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (374, N'One', 16, 1, N'one')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (375, N'One Max', 16, 1, N'onemax')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (376, N'One mini', 16, 1, N'onemini')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (377, N'One S', 16, 1, N'ones')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (378, N'One SV', 16, 1, N'onesv')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (379, N'One V', 16, 1, N'onev')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (380, N'One X', 16, 1, N'onex')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (381, N'One X Plus', 16, 1, N'onexplus')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (382, N'One XL', 16, 1, N'onexl')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (383, N'Ozone', 16, 1, N'ozone')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (384, N'P3470', 16, 1, N'p3470')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (385, N'P4550', 16, 1, N'p4550')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (386, N'Panache', 16, 1, N'panache')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (387, N'Paradise', 16, 1, N'paradise')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (388, N'Primo', 16, 1, N'primo')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (389, N'Pro', 16, 1, N'pro')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (390, N'Pro 2', 16, 1, N'pro2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (391, N'Pure', 16, 1, N'pure')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (392, N'Radar', 16, 1, N'radar')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (393, N'Raider 4G', 16, 1, N'raider4g')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (394, N'Rezound', 16, 1, N'rezound')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (395, N'Rhyme', 16, 1, N'rhyme')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (396, N'Runnymede', 16, 1, N'runnymede')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (397, N'S740', 16, 1, N's740')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (398, N'Salsa', 16, 1, N'salsa')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (399, N'Sensation', 16, 1, N'sensation')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (400, N'Sensation 4G', 16, 1, N'sensation4g')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (401, N'Sensation XE', 16, 1, N'sensationxe')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (402, N'Sensation XL', 16, 1, N'sensationxl')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (403, N'Smart', 16, 1, N'smart')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (404, N'Snap', 16, 1, N'snap')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (405, N'Status', 16, 1, N'status')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (406, N'Tattoo', 16, 1, N'tattoo')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (407, N'Thunderbolt', 16, 1, N'thunderbolt')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (408, N'Tilt 2', 16, 1, N'tilt2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (409, N'Titan', 16, 1, N'titan')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (410, N'Titan 2', 16, 1, N'titan2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (411, N'Touch 2', 16, 1, N'touch2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (412, N'Touch Cruise 09', 16, 1, N'touchcruise09')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (413, N'Touch Find', 16, 1, N'touchfind')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (414, N'Trophy', 16, 1, N'trophy')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (415, N'Velocity 4G', 16, 1, N'velocity4g')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (416, N'Vigor', 16, 1, N'vigor')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (417, N'Ville', 16, 1, N'ville')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (418, N'Viva', 16, 1, N'viva')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (419, N'Vivid', 16, 1, N'vivid')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (420, N'Wildfire', 16, 1, N'wildfire')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (421, N'Wildfire S', 16, 1, N'wildfires')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (422, N'Windows Phone 8S', 16, 1, N'windowsphone8s')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (423, N'Windows Phone 8X', 16, 1, N'windowsphone8x')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (424, N'Ascend 2', 17, 1, N'ascend2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (425, N'Ascend D quad', 17, 1, N'ascenddquad')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (426, N'Ascend D quad XL', 17, 1, N'ascenddquadxl')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (427, N'Ascend D1', 17, 1, N'ascendd1')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (428, N'Ascend D2', 17, 1, N'ascendd2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (429, N'Ascend G301', 17, 1, N'ascendg301')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (430, N'Ascend G6', 17, 1, N'ascendg6')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (431, N'Ascend G610', 17, 1, N'ascendg610')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (432, N'Ascend Mate', 17, 1, N'ascendmate')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (433, N'Ascend Mate 2', 17, 1, N'ascendmate2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (434, N'Ascend P1', 17, 1, N'ascendp1')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (435, N'Ascend P1 S', 17, 1, N'ascendp1s')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (436, N'Ascend P2', 17, 1, N'ascendp2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (437, N'Ascend P6', 17, 1, N'ascendp6')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (438, N'Ascend W1', 17, 1, N'ascendw1')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (439, N'Ascend W3', 17, 1, N'ascendw3')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (440, N'Ascend Y100', 17, 1, N'ascendy100')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (441, N'Ascend Y200', 17, 1, N'ascendy200')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (442, N'Ascend Y320', 17, 1, N'ascendy320')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (443, N'G6600', 17, 1, N'g6600')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (444, N'G7007', 17, 1, N'g7007')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (445, N'Honor', 17, 1, N'honor')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (446, N'Honor 2', 17, 1, N'honor2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (447, N'Honor 3', 17, 1, N'honor3')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (448, N'Honor 3C', 17, 1, N'honor3c')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (449, N'Honor 3X', 17, 1, N'honor3x')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (450, N'ideos X6', 17, 1, N'ideosx6')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (451, N'M660', 17, 1, N'm660')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (452, N'M886 Mercury', 17, 1, N'm886mercury')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (453, N'MediaPad 10 FHD', 17, 1, N'mediapad10fhd')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (454, N'MediaPad 10 Link', 17, 1, N'mediapad10link')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (455, N'MediaPad 7 Lite', 17, 1, N'mediapad7lite')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (456, N'MediaPad M1', 17, 1, N'mediapadm1')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (457, N'MediaPad X1', 17, 1, N'mediapadx1')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (458, N'S7 Slim', 17, 1, N's7slim')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (459, N'Sonic', 17, 1, N'sonic')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (460, N'T30', 17, 1, N't30')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (461, N'U1280', 17, 1, N'u1280')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (462, N'U3100', 17, 1, N'u3100')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (463, N'U3200', 17, 1, N'u3200')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (464, N'U8110', 17, 1, N'u8110')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (465, N'U8150 ideos', 17, 1, N'u8150ideos')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (466, N'U8230', 17, 1, N'u8230')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (467, N'U8510 ideos X3', 17, 1, N'u8510ideosx3')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (468, N'U8652 Fusion', 17, 1, N'u8652fusion')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (469, N'U8800', 17, 1, N'u8800')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (470, N'U8850 Vision', 17, 1, N'u8850vision')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (471, N'U9130', 17, 1, N'u9130')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (472, N'K 900', 18, 1, N'k900')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (473, N'OPhone', 18, 1, N'ophone')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (474, N'S660', 18, 1, N's660')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (475, N'S850', 18, 1, N's850')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (476, N'S860', 18, 1, N's860')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (477, N'Vibe X', 18, 1, N'vibex')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (478, N'Yoga Tablet 10 HD Plus', 18, 1, N'yogatablet10hdplus')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (479, N'A100', 19, 1, N'a100')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (480, N'A120', 19, 1, N'a120')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (481, N'A130', 19, 1, N'a130')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (482, N'A140', 19, 1, N'a140')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (483, N'A155', 19, 1, N'a155')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (484, N'A160', 19, 1, N'a160')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (485, N'A165', 19, 1, N'a165')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (486, N'A180', 19, 1, N'a180')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (487, N'A190', 19, 1, N'a190')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (488, N'A200', 19, 1, N'a200')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (489, N'A230', 19, 1, N'a230')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (490, N'A350', 19, 1, N'a350')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (491, N'Apex', 19, 1, N'apex')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (492, N'Arena', 19, 1, N'arena')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (493, N'Arena 2', 19, 1, N'arena2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (494, N'BL20', 19, 1, N'bl20')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (495, N'BL40', 19, 1, N'bl40')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (496, N'Brio', 19, 1, N'brio')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (497, N'C105', 19, 1, N'c105')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (498, N'C305', 19, 1, N'c305')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (499, N'C310', 19, 1, N'c310')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (500, N'C320 InTouch Lady', 19, 1, N'c320intouchlady')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (501, N'C375 Cookie Tweet', 19, 1, N'c375cookietweet')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (502, N'C550', 19, 1, N'c550')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (503, N'CF360', 19, 1, N'cf360')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (504, N'Cookie', 19, 1, N'cookie')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (505, N'Cookie Fresh', 19, 1, N'cookiefresh')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (506, N'Cookie Lite', 19, 1, N'cookielite')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (507, N'Cookie Plus', 19, 1, N'cookieplus')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (508, N'Cookie Style T310', 19, 1, N'cookiestylet310')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (509, N'Cookie WiFi T310i', 19, 1, N'cookiewifit310i')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (510, N'Cosmos Touch VN270', 19, 1, N'cosmostouchvn270')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (511, N'CP150', 19, 1, N'cp150')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (512, N'CU500V', 19, 1, N'cu500v')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (513, N'Dare', 19, 1, N'dare')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (514, N'Dimsun', 19, 1, N'dimsun')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (515, N'DoublePlay', 19, 1, N'doubleplay')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (516, N'E430 Optimus L3 II', 19, 1, N'e430optimusl3ii')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (517, N'E475 Optimus L1 2 Tri', 19, 1, N'e475optimusl12tri')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (518, N'E720', 19, 1, N'e720')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (519, N'E973 Optimus G', 19, 1, N'e973optimusg')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (520, N'EGO', 19, 1, N'ego')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (521, N'Etna', 19, 1, N'etna')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (522, N'Fathom', 19, 1, N'fathom')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (523, N'Flick T320', 19, 1, N'flickt320')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (524, N'G Flex', 19, 1, N'gflex')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (525, N'G Pad 8.3', 19, 1, N'gpad8_3')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (526, N'G Pad 8.3 Google Play Edition', 19, 1, N'gpad8_3googleplayedition')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (527, N'G Pro 2', 19, 1, N'gpro2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (528, N'G Pro Lite', 19, 1, N'gprolite')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (529, N'G2', 19, 1, N'g2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (530, N'G2 Mini', 19, 1, N'g2mini')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (531, N'GB102', 19, 1, N'gb102')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (532, N'GB106', 19, 1, N'gb106')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (533, N'GB109', 19, 1, N'gb109')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (534, N'GB110', 19, 1, N'gb110')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (535, N'GB125', 19, 1, N'gb125')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (536, N'GB130', 19, 1, N'gb130')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (537, N'GB160', 19, 1, N'gb160')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (538, N'GB170', 19, 1, N'gb170')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (539, N'GB190', 19, 1, N'gb190')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (540, N'GB210', 19, 1, N'gb210')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (541, N'GB220', 19, 1, N'gb220')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (542, N'GB250', 19, 1, N'gb250')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (543, N'GB270', 19, 1, N'gb270')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (544, N'GB280', 19, 1, N'gb280')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (545, N'GC900', 19, 1, N'gc900')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (546, N'GD310', 19, 1, N'gd310')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (547, N'GD330', 19, 1, N'gd330')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (548, N'GD350', 19, 1, N'gd350')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (549, N'GD550', 19, 1, N'gd550')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (550, N'GD710', 19, 1, N'gd710')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (551, N'GD880 mini', 19, 1, N'gd880mini')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (552, N'GD900 Crystal', 19, 1, N'gd900crystal')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (553, N'GD910', 19, 1, N'gd910')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (554, N'Georgia', 19, 1, N'georgia')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (555, N'GM210', 19, 1, N'gm210')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (556, N'GM310', 19, 1, N'gm310')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (557, N'GM360', 19, 1, N'gm360')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (558, N'GM600', 19, 1, N'gm600')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (559, N'GM650s', 19, 1, N'gm650s')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (560, N'GM730', 19, 1, N'gm730')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (561, N'GM735', 19, 1, N'gm735')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (562, N'GM750', 19, 1, N'gm750')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (563, N'Google Nexus 5', 19, 1, N'googlenexus5')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (564, N'GS106', 19, 1, N'gs106')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (565, N'GS107', 19, 1, N'gs107')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (566, N'GS155', 19, 1, N'gs155')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (567, N'GS200', 19, 1, N'gs200')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (568, N'GS390 Prime', 19, 1, N'gs390prime')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (569, N'GT405', 19, 1, N'gt405')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (570, N'GT505', 19, 1, N'gt505')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (571, N'GT550 Encore', 19, 1, N'gt550encore')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (572, N'GU200', 19, 1, N'gu200')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (573, N'GU285', 19, 1, N'gu285')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (574, N'GU292', 19, 1, N'gu292')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (575, N'GW300 Viewty', 19, 1, N'gw300viewty')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (576, N'GW525', 19, 1, N'gw525')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (577, N'GW550', 19, 1, N'gw550')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (578, N'GW620', 19, 1, N'gw620')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (579, N'GW820 eXpo', 19, 1, N'gw820expo')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (580, N'GW880', 19, 1, N'gw880')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (581, N'GW910 Optimus 7', 19, 1, N'gw910optimus7')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (582, N'GW990', 19, 1, N'gw990')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (583, N'Gx', 19, 1, N'gx')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (584, N'GX200', 19, 1, N'gx200')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (585, N'GX300', 19, 1, N'gx300')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (586, N'GX500', 19, 1, N'gx500')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (587, N'HB620T', 19, 1, N'hb620t')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (588, N'Invision', 19, 1, N'invision')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (589, N'Iron Man', 19, 1, N'ironman')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (590, N'incite', 19, 1, N'incite')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (591, N'Jil Sander', 19, 1, N'jilsander')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (592, N'Joypop', 19, 1, N'joypop')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (593, N'Julia', 19, 1, N'julia')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (594, N'KB770', 19, 1, N'kb770')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (595, N'KC560', 19, 1, N'kc560')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (596, N'KC780', 19, 1, N'kc780')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (597, N'KE590', 19, 1, N'ke590')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (598, N'KE990', 19, 1, N'ke990')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (599, N'KF240', 19, 1, N'kf240')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (600, N'KF245', 19, 1, N'kf245')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (601, N'KF300', 19, 1, N'kf300')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (602, N'KF305', 19, 1, N'kf305')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (603, N'KF310', 19, 1, N'kf310')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (604, N'KF311', 19, 1, N'kf311')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (605, N'KF350', 19, 1, N'kf350')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (606, N'KF390', 19, 1, N'kf390')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (607, N'KF750', 19, 1, N'kf750')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (608, N'KF755', 19, 1, N'kf755')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (609, N'KF757 Secret', 19, 1, N'kf757secret')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (610, N'KH5200 Andro-1', 19, 1, N'kh5200andro1')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (611, N'KM330', 19, 1, N'km330')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (612, N'KM338', 19, 1, N'km338')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (613, N'KM380', 19, 1, N'km380')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (614, N'KM386', 19, 1, N'km386')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (615, N'KM500', 19, 1, N'km500')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (616, N'KM555', 19, 1, N'km555')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (617, N'KM570', 19, 1, N'km570')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (618, N'KM570 Cookie Gig', 19, 1, N'km570cookiegig')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (619, N'KM710', 19, 1, N'km710')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (620, N'KP100', 19, 1, N'kp100')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (621, N'KP105', 19, 1, N'kp105')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (622, N'KP106', 19, 1, N'kp106')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (623, N'KP108', 19, 1, N'kp108')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (624, N'KP110', 19, 1, N'kp110')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (625, N'KP130', 19, 1, N'kp130')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (626, N'KP152', 19, 1, N'kp152')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (627, N'KP170', 19, 1, N'kp170')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (628, N'KP199', 19, 1, N'kp199')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (629, N'KP210', 19, 1, N'kp210')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (630, N'KP215', 19, 1, N'kp215')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (631, N'KP220', 19, 1, N'kp220')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (632, N'KP230', 19, 1, N'kp230')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (633, N'KP235', 19, 1, N'kp235')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (634, N'KP260', 19, 1, N'kp260')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (635, N'KP265', 19, 1, N'kp265')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (636, N'KP270', 19, 1, N'kp270')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (637, N'KP320', 19, 1, N'kp320')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (638, N'KP501', 19, 1, N'kp501')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (639, N'KP502 Cookie', 19, 1, N'kp502cookie')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (640, N'KS365', 19, 1, N'ks365')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (641, N'KS500', 19, 1, N'ks500')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (642, N'KS660', 19, 1, N'ks660')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (643, N'KT520', 19, 1, N'kt520')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (644, N'KT610', 19, 1, N'kt610')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (645, N'KT770', 19, 1, N'kt770')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (646, N'KU2100', 19, 1, N'ku2100')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (647, N'KU385', 19, 1, N'ku385')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (648, N'LH2300', 19, 1, N'lh2300')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (649, N'Lollipop', 19, 1, N'lollipop')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (650, N'LTE2', 19, 1, N'lte2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (651, N'LU2300', 19, 1, N'lu2300')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (652, N'LU3000', 19, 1, N'lu3000')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (653, N'MG160', 19, 1, N'mg160')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (654, N'MG295', 19, 1, N'mg295')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (655, N'Monaco', 19, 1, N'monaco')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (656, N'Neon', 19, 1, N'neon')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (657, N'NeoSmart X335', 19, 1, N'neosmartx335')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (658, N'Nexus 4', 19, 1, N'nexus4')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (659, N'Octane', 19, 1, N'octane')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (660, N'Optimus', 19, 1, N'optimus')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (661, N'Optimus 3D', 19, 1, N'optimus3d')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (662, N'Optimus 4X HD', 19, 1, N'optimus4xhd')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (663, N'Optimus 7', 19, 1, N'optimus7')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (664, N'Optimus 7Q', 19, 1, N'optimus7q')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (665, N'Optimus Big LU6800', 19, 1, N'optimusbiglu6800')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (666, N'Optimus EX SU880', 19, 1, N'optimusexsu880')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (667, N'Optimus F5', 19, 1, N'optimusf5')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (668, N'Optimus F7', 19, 1, N'optimusf7')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (669, N'Optimus G Pro', 19, 1, N'optimusgpro')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (670, N'Optimus Hub', 19, 1, N'optimushub')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (671, N'Optimus L1 II', 19, 1, N'optimusl1ii')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (672, N'Optimus L3', 19, 1, N'optimusl3')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (673, N'Optimus L5', 19, 1, N'optimusl5')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (674, N'Optimus L5 2', 19, 1, N'optimusl52')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (675, N'Optimus L7 2', 19, 1, N'optimusl72')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (676, N'Optimus L9 II', 19, 1, N'optimusl9ii')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (677, N'Optimus L9 P760', 19, 1, N'optimusl9p760')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (678, N'Optimus M', 19, 1, N'optimusm')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (679, N'Optimus Net', 19, 1, N'optimusnet')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (680, N'Optimus Note LU6500', 19, 1, N'optimusnotelu6500')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (681, N'Optimus Pad', 19, 1, N'optimuspad')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (682, N'Optimus Q', 19, 1, N'optimusq')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (683, N'Optimus S', 19, 1, N'optimuss')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (684, N'Optimus Slider', 19, 1, N'optimusslider')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (685, N'Optimus Sol E730', 19, 1, N'optimussole730')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (686, N'Optimus T', 19, 1, N'optimust')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (687, N'Optimus TrueHD LTE P936', 19, 1, N'optimustruehdltep936')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (688, N'Optimus Vu', 19, 1, N'optimusvu')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (689, N'Optimus Vu 2', 19, 1, N'optimusvu2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (690, N'Optimus White', 19, 1, N'optimuswhite')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (691, N'Optimus Z', 19, 1, N'optimusz')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (692, N'Orsay', 19, 1, N'orsay')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (693, N'P350', 19, 1, N'p350')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (694, N'P503', 19, 1, N'p503')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (695, N'P520', 19, 1, N'p520')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (696, N'P700 Optimus L7', 19, 1, N'p700optimusl7')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (697, N'P720 Optimus 3D Max', 19, 1, N'p720optimus3dmax')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (698, N'P930 Nitro HD', 19, 1, N'p930nitrohd')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (699, N'P970 Optimus Black', 19, 1, N'p970optimusblack')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (700, N'P990 Optimus 2X', 19, 1, N'p990optimus2x')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (701, N'Phoenix', 19, 1, N'phoenix')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (702, N'Pop GD510', 19, 1, N'popgd510')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (703, N'Prada 2', 19, 1, N'prada2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (704, N'Prada 3', 19, 1, N'prada3')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (705, N'Puccini', 19, 1, N'puccini')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (706, N'Quantum', 19, 1, N'quantum')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (707, N'Renoir', 19, 1, N'renoir')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (708, N'S310', 19, 1, N's310')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (709, N'S365', 19, 1, N's365')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (710, N'S367', 19, 1, N's367')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (711, N'Shannon', 19, 1, N'shannon')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (712, N'Smile', 19, 1, N'smile')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (713, N'SU420 Cafe', 19, 1, N'su420cafe')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (714, N'SU870 Optimus 3D Cube', 19, 1, N'su870optimus3dcube')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (715, N'SU920', 19, 1, N'su920')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (716, N'SU950', 19, 1, N'su950')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (717, N'T300', 19, 1, N't300')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (718, N'T310', 19, 1, N't310')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (719, N'T315', 19, 1, N't315')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (720, N'T320', 19, 1, N't320')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (721, N'T320 3G', 19, 1, N't3203g')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (722, N'T385', 19, 1, N't385')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (723, N'T505', 19, 1, N't505')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (724, N'T510', 19, 1, N't510')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (725, N'T515 Cookie Duo', 19, 1, N't515cookieduo')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (726, N'Tegra 2', 19, 1, N'tegra2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (727, N'Thrill 4G', 19, 1, N'thrill4g')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (728, N'Thrive', 19, 1, N'thrive')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (729, N'Town C300', 19, 1, N'townc300')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (730, N'Town GT350', 19, 1, N'towngt350')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (731, N'Vortex VS660', 19, 1, N'vortexvs660')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (732, N'Vu', 19, 1, N'vu')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (733, N'Vu 3', 19, 1, N'vu3')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (734, N'Vu Plus', 19, 1, N'vuplus')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (735, N'Wink Mini', 19, 1, N'winkmini')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (736, N'Xenon', 19, 1, N'xenon')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (737, N'Kin One', 20, 1, N'kinone')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (738, N'Kin ONEm', 20, 1, N'kinonem')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (739, N'Kin Two', 20, 1, N'kintwo')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (740, N'Kin TWOm', 20, 1, N'kintwom')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (741, N'Surface', 20, 1, N'surface')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (742, N'Surface 2', 20, 1, N'surface2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (743, N'Windows 7', 20, 1, N'windows7')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (744, N'A1210', 21, 1, N'a1210')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (745, N'A1260', 21, 1, N'a1260')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (746, N'A1600', 21, 1, N'a1600')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (747, N'A1680', 21, 1, N'a1680')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (748, N'A1800', 21, 1, N'a1800')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (749, N'A1890', 21, 1, N'a1890')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (750, N'A3100', 21, 1, N'a3100')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (751, N'A810', 21, 1, N'a810')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (752, N'Atrix', 21, 1, N'atrix')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (753, N'Atrix 2', 21, 1, N'atrix2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (754, N'Atrix 4G', 21, 1, N'atrix4g')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (755, N'Atrix HD', 21, 1, N'atrixhd')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (756, N'Aura', 21, 1, N'aura')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (757, N'Aura Celestial', 21, 1, N'auracelestial')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (758, N'Backflip', 21, 1, N'backflip')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (759, N'Barrage', 21, 1, N'barrage')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (760, N'Bee', 21, 1, N'bee')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (761, N'Beihai', 21, 1, N'beihai')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (762, N'Bravo', 21, 1, N'bravo')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (763, N'Brute i680', 21, 1, N'brutei680')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (764, N'Buzz', 21, 1, N'buzz')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (765, N'C155', 21, 1, N'c155')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (766, N'C290', 21, 1, N'c290')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (767, N'Charm', 21, 1, N'charm')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (768, N'CliQ', 21, 1, N'cliq')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (769, N'CliQ 2', 21, 1, N'cliq2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (770, N'Clutch i465', 21, 1, N'clutchi465')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (771, N'Crush', 21, 1, N'crush')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (772, N'Cupe', 21, 1, N'cupe')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (773, N'DEFY', 21, 1, N'defy')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (774, N'DEFY Plus', 21, 1, N'defyplus')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (775, N'Defy Pro', 21, 1, N'defypro')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (776, N'DEFY XT535', 21, 1, N'defyxt535')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (777, N'Devour', 21, 1, N'devour')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (778, N'DROID MAXX', 21, 1, N'droidmaxx')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (779, N'DROID Mini', 21, 1, N'droidmini')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (780, N'DROID Ultra', 21, 1, N'droidultra')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (781, N'Droid', 21, 1, N'droid')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (782, N'Droid 2 Global', 21, 1, N'droid2global')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (783, N'Droid 2X', 21, 1, N'droid2x')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (784, N'Droid 3', 21, 1, N'droid3')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (785, N'Droid HD', 21, 1, N'droidhd')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (786, N'Droid RAZR', 21, 1, N'droidrazr')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (787, N'Droid RAZR MAXX', 21, 1, N'droidrazrmaxx')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (788, N'Droid X', 21, 1, N'droidx')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (789, N'Droid X ME811', 21, 1, N'droidxme811')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (790, N'E11', 21, 1, N'e11')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (791, N'Electrify M XT905', 21, 1, N'electrifymxt905')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (792, N'EM25', 21, 1, N'em25')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (793, N'EM28', 21, 1, N'em28')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (794, N'EM30', 21, 1, N'em30')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (795, N'EM35', 21, 1, N'em35')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (796, N'ES400', 21, 1, N'es400')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (797, N'EX112', 21, 1, N'ex112')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (798, N'EX115', 21, 1, N'ex115')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (799, N'EX119', 21, 1, N'ex119')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (800, N'EX128', 21, 1, N'ex128')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (801, N'EX201', 21, 1, N'ex201')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (802, N'EX212', 21, 1, N'ex212')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (803, N'EX232', 21, 1, N'ex232')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (804, N'EX245', 21, 1, N'ex245')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (805, N'EX300', 21, 1, N'ex300')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (806, N'Fire XT', 21, 1, N'firext')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (807, N'FlipOut', 21, 1, N'flipout')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (808, N'Flipside', 21, 1, N'flipside')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (809, N'Gleam', 21, 1, N'gleam')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (810, N'Grasp WX404', 21, 1, N'graspwx404')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (811, N'Heron', 21, 1, N'heron')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (812, N'i1', 21, 1, N'i1')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (813, N'i410', 21, 1, N'i410')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (814, N'i856 Debut', 21, 1, N'i856debut')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (815, N'i890', 21, 1, N'i890')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (816, N'Karma QA1', 21, 1, N'karmaqa1')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (817, N'KRZR K1m', 21, 1, N'krzrk1m')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (818, N'L2', 21, 1, N'l2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (819, N'L6 i-mode', 21, 1, N'l6imode')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (820, N'L6i', 21, 1, N'l6i')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (821, N'L800t', 21, 1, N'l800t')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (822, N'MB508', 21, 1, N'mb508')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (823, N'MC55', 21, 1, N'mc55')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (824, N'ME632', 21, 1, N'me632')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (825, N'Milestone', 21, 1, N'milestone')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (826, N'Milestone 2', 21, 1, N'milestone2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (827, N'Milestone XT720', 21, 1, N'milestonext720')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (828, N'Milestone XT883', 21, 1, N'milestonext883')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (829, N'Mini EX109', 21, 1, N'miniex109')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (830, N'Moto G', 21, 1, N'motog')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (831, N'MOTO ME525', 21, 1, N'motome525')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (832, N'Moto X', 21, 1, N'motox')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (833, N'Motocubo A45', 21, 1, N'motocuboa45')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (834, N'MOTOFONE F3c', 21, 1, N'motofonef3c')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (835, N'MotoGO', 21, 1, N'motogo')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (836, N'Motokey Social', 21, 1, N'motokeysocial')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (837, N'Motoluxe XT610', 21, 1, N'motoluxext610')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (838, N'MOTOMING', 21, 1, N'motoming')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (839, N'Motoroi', 21, 1, N'motoroi')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (840, N'MT716', 21, 1, N'mt716')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (841, N'MT810Lx', 21, 1, N'mt810lx')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (842, N'Pearl', 21, 1, N'pearl')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (843, N'Pro Plus', 21, 1, N'proplus')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (844, N'Q11', 21, 1, N'q11')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (845, N'Qilin', 21, 1, N'qilin')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (846, N'Quantico', 21, 1, N'quantico')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (847, N'Quench', 21, 1, N'quench')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (848, N'Quench XT5 XT502', 21, 1, N'quenchxt5xt502')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (849, N'Rambler', 21, 1, N'rambler')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (850, N'RAZR HD', 21, 1, N'razrhd')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (851, N'RAZR i XT890', 21, 1, N'razrixt890')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (852, N'RAZR M', 21, 1, N'razrm')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (853, N'RAZR MAXX', 21, 1, N'razrmaxx')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (854, N'RAZR maxx Ve', 21, 1, N'razrmaxxve')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (855, N'RAZR V MT887', 21, 1, N'razrvmt887')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (856, N'RAZR V XT889', 21, 1, N'razrvxt889')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (857, N'RAZR V3 Pembe', 21, 1, N'razrv3pembe')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (858, N'RAZR V3m', 21, 1, N'razrv3m')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (859, N'RAZR XT910', 21, 1, N'razrxt910')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (860, N'RAZR2 V9m', 21, 1, N'razr2v9m')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (861, N'RAZR2 V9x', 21, 1, N'razr2v9x')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (862, N'RIZR Z9', 21, 1, N'rizrz9')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (863, N'Rival A455', 21, 1, N'rivala455')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (864, N'ROKR W5', 21, 1, N'rokrw5')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (865, N'ROKR W6', 21, 1, N'rokrw6')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (866, N'ROKR Z6m', 21, 1, N'rokrz6m')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (867, N'ROKR ZN50', 21, 1, N'rokrzn50')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (868, N'Sawgrass', 21, 1, N'sawgrass')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (869, N'Sidekick Slide', 21, 1, N'sidekickslide')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (870, N'SLVR iTunes', 21, 1, N'slvritunes')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (871, N'SLVR L7 i-mode', 21, 1, N'slvrl7imode')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (872, N'SLVR L7c', 21, 1, N'slvrl7c')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (873, N'V1100', 21, 1, N'v1100')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (874, N'VE440', 21, 1, N've440')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (875, N'VE538', 21, 1, N've538')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (876, N'VE70', 21, 1, N've70')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (877, N'VE75', 21, 1, N've75')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (878, N'VU20', 21, 1, N'vu20')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (879, N'W161', 21, 1, N'w161')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (880, N'W170', 21, 1, N'w170')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (881, N'W177', 21, 1, N'w177')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (882, N'W181', 21, 1, N'w181')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (883, N'W209', 21, 1, N'w209')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (884, N'W231', 21, 1, N'w231')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (885, N'W233 Renew', 21, 1, N'w233renew')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (886, N'W315', 21, 1, N'w315')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (887, N'W388', 21, 1, N'w388')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (888, N'W396', 21, 1, N'w396')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (889, N'W450', 21, 1, N'w450')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (890, N'W490', 21, 1, N'w490')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (891, N'W7', 21, 1, N'w7')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (892, N'W755', 21, 1, N'w755')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (893, N'Wilder', 21, 1, N'wilder')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (894, N'WX160', 21, 1, N'wx160')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (895, N'WX161', 21, 1, N'wx161')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (896, N'WX180', 21, 1, N'wx180')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (897, N'WX181', 21, 1, N'wx181')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (898, N'WX260', 21, 1, N'wx260')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (899, N'WX265', 21, 1, N'wx265')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (900, N'WX280', 21, 1, N'wx280')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (901, N'WX288', 21, 1, N'wx288')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (902, N'WX290', 21, 1, N'wx290')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (903, N'WX294', 21, 1, N'wx294')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (904, N'WX295', 21, 1, N'wx295')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (905, N'WX390', 21, 1, N'wx390')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (906, N'WX395', 21, 1, N'wx395')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (907, N'WX445', 21, 1, N'wx445')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (908, N'XOOM', 21, 1, N'xoom')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (909, N'XOOM 2', 21, 1, N'xoom2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (910, N'XOOM 2 Media Edition', 21, 1, N'xoom2mediaedition')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (911, N'XOOM Media Edition MZ505', 21, 1, N'xoommediaeditionmz505')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (912, N'XOOM MZ601', 21, 1, N'xoommz601')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (913, N'XOOM MZ604', 21, 1, N'xoommz604')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (914, N'XT300', 21, 1, N'xt300')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (915, N'XT301', 21, 1, N'xt301')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (916, N'XT316', 21, 1, N'xt316')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (917, N'XT320 Defy Mini', 21, 1, N'xt320defymini')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (918, N'XT502', 21, 1, N'xt502')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (919, N'XT532', 21, 1, N'xt532')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (920, N'XT610', 21, 1, N'xt610')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (921, N'XT615', 21, 1, N'xt615')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (922, N'XT701', 21, 1, N'xt701')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (923, N'XT865', 21, 1, N'xt865')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (924, N'Z6c', 21, 1, N'z6c')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (925, N'Z6w', 21, 1, N'z6w')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (926, N'Zhiling', 21, 1, N'zhiling')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (927, N'Zhishang', 21, 1, N'zhishang')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (928, N'ZN200', 21, 1, N'zn200')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (929, N'ZN300', 21, 1, N'zn300')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (930, N'ZN5', 21, 1, N'zn5')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (931, N'100', 22, 1, N'100')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (932, N'1006', 22, 1, N'1006')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (933, N'101', 22, 1, N'101')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (934, N'103', 22, 1, N'103')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (935, N'106', 22, 1, N'106')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (936, N'107', 22, 1, N'107')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (937, N'108', 22, 1, N'108')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (938, N'108 Dual SIM', 22, 1, N'108dualsim')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (939, N'110', 22, 1, N'110')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (940, N'111', 22, 1, N'111')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (941, N'112', 22, 1, N'112')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (942, N'113', 22, 1, N'113')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (943, N'1202', 22, 1, N'1202')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (944, N'1203', 22, 1, N'1203')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (945, N'1280', 22, 1, N'1280')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (946, N'1506', 22, 1, N'1506')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (947, N'1508', 22, 1, N'1508')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (948, N'1606', 22, 1, N'1606')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (949, N'1616', 22, 1, N'1616')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (950, N'1661', 22, 1, N'1661')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (951, N'1680 Classic', 22, 1, N'1680classic')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (952, N'1800', 22, 1, N'1800')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (953, N'206', 22, 1, N'206')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (954, N'207', 22, 1, N'207')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (955, N'208', 22, 1, N'208')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (956, N'2220 Slide', 22, 1, N'2220slide')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (957, N'2228', 22, 1, N'2228')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (958, N'2323 Classic', 22, 1, N'2323classic')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (959, N'2330 Classic', 22, 1, N'2330classic')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (960, N'2608', 22, 1, N'2608')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (961, N'2680 slide', 22, 1, N'2680slide')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (962, N'2690', 22, 1, N'2690')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (963, N'2700 Classic', 22, 1, N'2700classic')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (964, N'2705 Shade', 22, 1, N'2705shade')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (965, N'2710 Navigation', 22, 1, N'2710navigation')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (966, N'2720 fold', 22, 1, N'2720fold')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (967, N'2730 Classic', 22, 1, N'2730classic')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (968, N'301', 22, 1, N'301')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (969, N'3208c', 22, 1, N'3208c')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (970, N'3210 Lekki', 22, 1, N'3210lekki')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (971, N'3555', 22, 1, N'3555')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (972, N'3600 slide', 22, 1, N'3600slide')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (973, N'3606', 22, 1, N'3606')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (974, N'3608', 22, 1, N'3608')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (975, N'3610 fold', 22, 1, N'3610fold')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (976, N'3710 fold', 22, 1, N'3710fold')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (977, N'3711', 22, 1, N'3711')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (978, N'3720 Classic', 22, 1, N'3720classic')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (979, N'3806', 22, 1, N'3806')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (980, N'3G Booklet', 22, 1, N'3gbooklet')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (981, N'500', 22, 1, N'500')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (982, N'5000', 22, 1, N'5000')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (983, N'5030', 22, 1, N'5030')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (984, N'5130 XpressMusic', 22, 1, N'5130xpressmusic')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (985, N'5132', 22, 1, N'5132')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (986, N'515', 22, 1, N'515')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (987, N'5220', 22, 1, N'5220')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (988, N'5228', 22, 1, N'5228')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (989, N'5230', 22, 1, N'5230')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (990, N'5230 Nuron', 22, 1, N'5230nuron')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (991, N'5235', 22, 1, N'5235')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (992, N'5250', 22, 1, N'5250')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (993, N'5320', 22, 1, N'5320')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (994, N'5330', 22, 1, N'5330')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (995, N'5330 Mobile TV', 22, 1, N'5330mobiletv')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (996, N'5530', 22, 1, N'5530')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (997, N'5630', 22, 1, N'5630')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (998, N'5730', 22, 1, N'5730')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (999, N'5800', 22, 1, N'5800')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1000, N'5800 Navigation Edition', 22, 1, N'5800navigationedition')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1001, N'600', 22, 1, N'600')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1002, N'6124 Classic', 22, 1, N'6124classic')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1003, N'6202c', 22, 1, N'6202c')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1004, N'6205', 22, 1, N'6205')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1005, N'6208c', 22, 1, N'6208c')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1006, N'6212 Classic', 22, 1, N'6212classic')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1007, N'6216 Classic', 22, 1, N'6216classic')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1008, N'6260 slide', 22, 1, N'6260slide')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1009, N'6300i', 22, 1, N'6300i')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1010, N'6303 Classic', 22, 1, N'6303classic')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1011, N'6303i Classic', 22, 1, N'6303iclassic')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1012, N'6316s', 22, 1, N'6316s')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1013, N'6350', 22, 1, N'6350')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1014, N'6600 fold', 22, 1, N'6600fold')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1015, N'6600 slide', 22, 1, N'6600slide')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1016, N'6600i Slide', 22, 1, N'6600islide')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1017, N'6650 T-Mobile', 22, 1, N'6650tmobile')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1018, N'6700 Classic', 22, 1, N'6700classic')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1019, N'6700 Gold', 22, 1, N'6700gold')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1020, N'6700 Slide', 22, 1, N'6700slide')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1021, N'6710 Navigator', 22, 1, N'6710navigator')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1022, N'6720 Classic', 22, 1, N'6720classic')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1023, N'6730 Classic', 22, 1, N'6730classic')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1024, N'6760 Slide', 22, 1, N'6760slide')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1025, N'6788', 22, 1, N'6788')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1026, N'700', 22, 1, N'700')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1027, N'701', 22, 1, N'701')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1028, N'7020', 22, 1, N'7020')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1029, N'702T', 22, 1, N'702t')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1030, N'7070 Prism', 22, 1, N'7070prism')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1031, N'7100 Supernova', 22, 1, N'7100supernova')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1032, N'7205 Intrigue', 22, 1, N'7205intrigue')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1033, N'7210 Supernova', 22, 1, N'7210supernova')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1034, N'7230', 22, 1, N'7230')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1035, N'7310 Supernova', 22, 1, N'7310supernova')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1036, N'7510 Supernova', 22, 1, N'7510supernova')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1037, N'7610 Supernova', 22, 1, N'7610supernova')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1038, N'7705 Twist', 22, 1, N'7705twist')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1039, N'800c', 22, 1, N'800c')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1040, N'808 Pureview', 22, 1, N'808pureview')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1041, N'8208', 22, 1, N'8208')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1042, N'8800 Carbon Arte', 22, 1, N'8800carbonarte')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1043, N'Ace', 22, 1, N'ace')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1044, N'Asha 200', 22, 1, N'asha200')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1045, N'Asha 201', 22, 1, N'asha201')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1046, N'Asha 202', 22, 1, N'asha202')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1047, N'Asha 203', 22, 1, N'asha203')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1048, N'Asha 205', 22, 1, N'asha205')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1049, N'Asha 210', 22, 1, N'asha210')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1050, N'Asha 300', 22, 1, N'asha300')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1051, N'Asha 302', 22, 1, N'asha302')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1052, N'Asha 303', 22, 1, N'asha303')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1053, N'Asha 305', 22, 1, N'asha305')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1054, N'Asha 306', 22, 1, N'asha306')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1055, N'Asha 308', 22, 1, N'asha308')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1056, N'Asha 309', 22, 1, N'asha309')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1057, N'Asha 310', 22, 1, N'asha310')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1058, N'Asha 311', 22, 1, N'asha311')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1059, N'Asha 500', 22, 1, N'asha500')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1060, N'Asha 501', 22, 1, N'asha501')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1061, N'Asha 502', 22, 1, N'asha502')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1062, N'Asha 503', 22, 1, N'asha503')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1063, N'Astound', 22, 1, N'astound')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1064, N'C1-00', 22, 1, N'c100')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1065, N'C1-01', 22, 1, N'c101')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1066, N'C1-02', 22, 1, N'c102')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1067, N'C2-00', 22, 1, N'c200')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1068, N'C2-01', 22, 1, N'c201')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1069, N'C2-02', 22, 1, N'c202')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1070, N'C2-03', 22, 1, N'c203')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1071, N'C2-05', 22, 1, N'c205')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1072, N'C2-06', 22, 1, N'c206')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1073, N'C3 Touch', 22, 1, N'c3touch')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1074, N'C3-00', 22, 1, N'c300')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1075, N'C3-01', 22, 1, N'c301')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1076, N'C3-01 Gold Edition', 22, 1, N'c301goldedition')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1077, N'C5 5MP', 22, 1, N'c55mp')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1078, N'C5 TD-SCDMA', 22, 1, N'c5tdscdma')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1079, N'C5-00', 22, 1, N'c500')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1080, N'C5-03', 22, 1, N'c503')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1081, N'C5-06', 22, 1, N'c506')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1082, N'C6-00', 22, 1, N'c600')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1083, N'C6-01', 22, 1, N'c601')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1084, N'C7 Astound', 22, 1, N'c7astound')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1085, N'Carla', 22, 1, N'carla')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1086, N'E5-00', 22, 1, N'e500')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1087, N'E52', 22, 1, N'e52')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1088, N'E55', 22, 1, N'e55')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1089, N'E6-00', 22, 1, N'e600')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1090, N'E63', 22, 1, N'e63')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1091, N'E66', 22, 1, N'e66')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1092, N'E7-00', 22, 1, N'e700')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1093, N'E71', 22, 1, N'e71')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1094, N'E71x', 22, 1, N'e71x')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1095, N'E72', 22, 1, N'e72')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1096, N'E73 Mode', 22, 1, N'e73mode')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1097, N'E75', 22, 1, N'e75')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1098, N'Lumia 1020', 22, 1, N'lumia1020')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1099, N'Lumia 1320', 22, 1, N'lumia1320')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1100, N'Lumia 1520', 22, 1, N'lumia1520')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1101, N'Lumia 2520', 22, 1, N'lumia2520')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1102, N'Lumia 505', 22, 1, N'lumia505')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1103, N'Lumia 510', 22, 1, N'lumia510')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1104, N'Lumia 520', 22, 1, N'lumia520')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1105, N'Lumia 525', 22, 1, N'lumia525')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1106, N'Lumia 610', 22, 1, N'lumia610')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1107, N'Lumia 610 NFC', 22, 1, N'lumia610nfc')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1108, N'Lumia 620', 22, 1, N'lumia620')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1109, N'Lumia 625', 22, 1, N'lumia625')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1110, N'Lumia 710', 22, 1, N'lumia710')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1111, N'Lumia 720', 22, 1, N'lumia720')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1112, N'Lumia 800', 22, 1, N'lumia800')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1113, N'Lumia 820', 22, 1, N'lumia820')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1114, N'Lumia 822', 22, 1, N'lumia822')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1115, N'Lumia 900', 22, 1, N'lumia900')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1116, N'Lumia 920', 22, 1, N'lumia920')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1117, N'Lumia 925', 22, 1, N'lumia925')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1118, N'Lumia 928', 22, 1, N'lumia928')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1119, N'Mini Gold Edition', 22, 1, N'minigoldedition')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1120, N'Morph', 22, 1, N'morph')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1121, N'Mural', 22, 1, N'mural')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1122, N'N79', 22, 1, N'n79')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1123, N'N8-00', 22, 1, N'n800')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1124, N'N8-01', 22, 1, N'n801')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1125, N'N808', 22, 1, N'n808')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1126, N'N810 WiMAX', 22, 1, N'n810wimax')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1127, N'N85', 22, 1, N'n85')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1128, N'N86', 22, 1, N'n86')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1129, N'N87', 22, 1, N'n87')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1130, N'N9', 22, 1, N'n9')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1131, N'N900', 22, 1, N'n900')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1132, N'N950', 22, 1, N'n950')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1133, N'N97', 22, 1, N'n97')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1134, N'N97 mini', 22, 1, N'n97mini')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1135, N'N97 Mini Gold', 22, 1, N'n97minigold')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1136, N'Sabre', 22, 1, N'sabre')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1137, N'Sea Ray', 22, 1, N'searay')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1138, N'Sun', 22, 1, N'sun')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1139, N'Surge', 22, 1, N'surge')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1140, N'T7-00', 22, 1, N't700')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1141, N'Tube', 22, 1, N'tube')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1142, N'U', 22, 1, N'u')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1143, N'X', 22, 1, N'x')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1144, N'X Plus', 22, 1, N'xplus')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1145, N'X1', 22, 1, N'x1')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1146, N'X1-01', 22, 1, N'x101')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1147, N'X2-00', 22, 1, N'x200')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1148, N'X2-01', 22, 1, N'x201')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1149, N'X2-02', 22, 1, N'x202')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1150, N'X2-05', 22, 1, N'x205')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1151, N'X3', 22, 1, N'x3')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1152, N'X3 CDMA', 22, 1, N'x3cdma')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1153, N'X3-02', 22, 1, N'x302')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1154, N'X4', 22, 1, N'x4')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1155, N'X5', 22, 1, N'x5')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1156, N'X5-01', 22, 1, N'x501')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1157, N'X6', 22, 1, N'x6')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1158, N'X6 16 GB', 22, 1, N'x616gb')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1159, N'X6 8GB', 22, 1, N'x68gb')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1160, N'X7-00', 22, 1, N'x700')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1161, N'X8', 22, 1, N'x8')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1162, N'X9', 22, 1, N'x9')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1163, N'XL', 22, 1, N'xl')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1164, N'Eluga', 23, 1, N'eluga')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1165, N'Toughpad FZ-A1', 23, 1, N'toughpadfza1')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1166, N'Toughpad JT-B1', 23, 1, N'toughpadjtb1')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1167, N'191', 24, 1, N'191')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1168, N'192', 24, 1, N'192')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1169, N'193', 24, 1, N'193')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1170, N'198', 24, 1, N'198')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1171, N'199', 24, 1, N'199')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1172, N'292', 24, 1, N'292')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1173, N'298', 24, 1, N'298')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1174, N'C600', 24, 1, N'c600')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1175, N'C700', 24, 1, N'c700')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1176, N'C702', 24, 1, N'c702')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1177, N'D612', 24, 1, N'd612')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1178, N'D812', 24, 1, N'd812')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1179, N'D900', 24, 1, N'd900')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1180, N'D908', 24, 1, N'd908')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1181, N'E100', 24, 1, N'e100')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1182, N'E102', 24, 1, N'e102')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1183, N'E210', 24, 1, N'e210')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1184, N'F511', 24, 1, N'f511')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1185, N'F515', 24, 1, N'f515')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1186, N'F610', 24, 1, N'f610')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1187, N'F718', 24, 1, N'f718')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1188, N'K600', 24, 1, N'k600')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1189, N'K700', 24, 1, N'k700')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1190, N'M200', 24, 1, N'm200')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1191, N'M600', 24, 1, N'm600')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1192, N'T910', 24, 1, N't910')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1193, N'TM700', 24, 1, N'tm700')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1194, N'V808', 24, 1, N'v808')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1195, N'V816', 24, 1, N'v816')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1196, N'V900', 24, 1, N'v900')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1197, N'W186', 24, 1, N'w186')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1198, N'W635', 24, 1, N'w635')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1199, N'X100', 24, 1, N'x100')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1200, N'X116', 24, 1, N'x116')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1201, N'X216', 24, 1, N'x216')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1202, N'X312', 24, 1, N'x312')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1203, N'X320', 24, 1, N'x320')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1204, N'X500', 24, 1, N'x500')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1205, N'X501', 24, 1, N'x501')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1206, N'X503', 24, 1, N'x503')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1207, N'X510', 24, 1, N'x510')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1208, N'X513', 24, 1, N'x513')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1209, N'X516', 24, 1, N'x516')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1210, N'X518', 24, 1, N'x518')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1211, N'X520', 24, 1, N'x520')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1212, N'X523', 24, 1, N'x523')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1213, N'X530', 24, 1, N'x530')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1214, N'X550', 24, 1, N'x550')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1215, N'X600', 24, 1, N'x600')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1216, N'X600', 24, 1, N'x600')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1217, N'X603', 24, 1, N'x603')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1218, N'X605', 24, 1, N'x605')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1219, N'X606', 24, 1, N'x606')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1220, N'X620', 24, 1, N'x620')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1221, N'X630', 24, 1, N'x630')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1222, N'X650', 24, 1, N'x650')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1223, N'X700', 24, 1, N'x700')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1224, N'X703', 24, 1, N'x703')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1225, N'X710', 24, 1, N'x710')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1226, N'X712', 24, 1, N'x712')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1227, N'X713', 24, 1, N'x713')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1228, N'X800', 24, 1, N'x800')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1229, N'X806', 24, 1, N'x806')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1230, N'X809', 24, 1, N'x809')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1231, N'X810', 24, 1, N'x810')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1232, N'X815', 24, 1, N'x815')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1233, N'X830', 24, 1, N'x830')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1234, N'Xenium 9@9j', 24, 1, N'xenium9@9j')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1235, N'Xenium 9@9q', 24, 1, N'xenium9@9q')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1236, N'Xenium 9@9v', 24, 1, N'xenium9@9v')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1237, N'Xenium X300', 24, 1, N'xeniumx300')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1238, N'my721x', 25, 1, N'my721x')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1239, N'P9521 Porsche', 25, 1, N'p9521porsche')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1240, N'P9522 Porsche', 25, 1, N'p9522porsche')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1241, N'Puma Phone', 25, 1, N'pumaphone')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1242, N'Roland Garros', 25, 1, N'rolandgarros')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1243, N'3D', 26, 1, N'3d')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1244, N'4G LTE', 26, 1, N'4glte')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1245, N'A117', 26, 1, N'a117')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1246, N'A127', 26, 1, N'a127')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1247, N'A200K Nori F', 26, 1, N'a200knorif')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1248, N'A220 F Nori', 26, 1, N'a220fnori')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1249, N'A237', 26, 1, N'a237')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1250, N'A437', 26, 1, N'a437')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1251, N'A637', 26, 1, N'a637')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1252, N'A667 Evergreen', 26, 1, N'a667evergreen')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1253, N'A717', 26, 1, N'a717')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1254, N'A727', 26, 1, N'a727')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1255, N'A746', 26, 1, N'a746')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1256, N'A767 Propel', 26, 1, N'a767propel')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1257, N'A777', 26, 1, N'a777')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1258, N'A817 Solstice 2', 26, 1, N'a817solstice2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1259, N'A827 Access', 26, 1, N'a827access')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1260, N'A847 Rugby', 26, 1, N'a847rugby')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1261, N'A867 Eternity', 26, 1, N'a867eternity')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1262, N'A927 Flight 2', 26, 1, N'a927flight2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1263, N'Acclaim', 26, 1, N'acclaim')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1264, N'Alias 2', 26, 1, N'alias2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1265, N'Ativ Odyssey', 26, 1, N'ativodyssey')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1266, N'Ativ S Neo', 26, 1, N'ativsneo')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1267, N'Ativ Smart PC', 26, 1, N'ativsmartpc')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1268, N'Ativ Smart PC 500T', 26, 1, N'ativsmartpc500t')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1269, N'Ativ Smart PC Pro 700T', 26, 1, N'ativsmartpcpro700t')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1270, N'Ativ Tab', 26, 1, N'ativtab')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1271, N'Avila', 26, 1, N'avila')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1272, N'B100', 26, 1, N'b100')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1273, N'B110', 26, 1, N'b110')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1274, N'B130', 26, 1, N'b130')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1275, N'B200', 26, 1, N'b200')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1276, N'B210', 26, 1, N'b210')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1277, N'B220', 26, 1, N'b220')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1278, N'B2700', 26, 1, N'b2700')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1279, N'B300', 26, 1, N'b300')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1280, N'B310', 26, 1, N'b310')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1281, N'B320', 26, 1, N'b320')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1282, N'B3210W', 26, 1, N'b3210w')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1283, N'B3310', 26, 1, N'b3310')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1284, N'B3310W', 26, 1, N'b3310w')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1285, N'B3410', 26, 1, N'b3410')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1286, N'B500', 26, 1, N'b500')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1287, N'B510', 26, 1, N'b510')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1288, N'B520', 26, 1, N'b520')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1289, N'B5330 Galaxy Chat', 26, 1, N'b5330galaxychat')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1290, N'B5510 Galaxy Y Pro', 26, 1, N'b5510galaxyypro')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1291, N'B5702', 26, 1, N'b5702')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1292, N'B5722', 26, 1, N'b5722')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1293, N'B7300 Omnia', 26, 1, N'b7300omnia')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1294, N'B7320', 26, 1, N'b7320')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1295, N'B7330', 26, 1, N'b7330')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1296, N'B7510', 26, 1, N'b7510')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1297, N'B7610', 26, 1, N'b7610')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1298, N'B7722', 26, 1, N'b7722')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1299, N'Beam', 26, 1, N'beam')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1300, N'Behold 2', 26, 1, N'behold2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1301, N'Bigfoot', 26, 1, N'bigfoot')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1302, N'Bigfoot', 26, 1, N'bigfoot')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1303, N'Blue Earth', 26, 1, N'blueearth')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1304, N'Breeze B209', 26, 1, N'breezeb209')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1305, N'C270', 26, 1, N'c270')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1306, N'C3010', 26, 1, N'c3010')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1307, N'C3050', 26, 1, N'c3050')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1308, N'C3053', 26, 1, N'c3053')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1309, N'C3060R', 26, 1, N'c3060r')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1310, N'C3110', 26, 1, N'c3110')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1311, N'C3212', 26, 1, N'c3212')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1312, N'C3222', 26, 1, N'c3222')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1313, N'C3300K Champ', 26, 1, N'c3300kchamp')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1314, N'C3310 Champ Deluxe', 26, 1, N'c3310champdeluxe')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1315, N'C3312R Rex 60', 26, 1, N'c3312rrex60')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1316, N'C3322', 26, 1, N'c3322')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1317, N'C3510T', 26, 1, N'c3510t')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1318, N'C3530', 26, 1, N'c3530')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1319, N'C3560', 26, 1, N'c3560')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1320, N'C3630', 26, 1, N'c3630')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1321, N'C3750', 26, 1, N'c3750')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1322, N'C500', 26, 1, N'c500')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1323, N'C5010', 26, 1, N'c5010')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1324, N'C510', 26, 1, N'c510')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1325, N'C5130', 26, 1, N'c5130')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1326, N'C5212', 26, 1, N'c5212')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1327, N'C5220', 26, 1, N'c5220')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1328, N'C5510', 26, 1, N'c5510')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1329, N'C6112', 26, 1, N'c6112')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1330, N'C6620', 26, 1, N'c6620')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1331, N'C6625', 26, 1, N'c6625')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1332, N'Captivate Glide', 26, 1, N'captivateglide')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1333, N'Champ', 26, 1, N'champ')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1334, N'Champ Deluxe', 26, 1, N'champdeluxe')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1335, N'Champ Duos', 26, 1, N'champduos')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1336, N'Chat', 26, 1, N'chat')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1337, N'Chat 322', 26, 1, N'chat322')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1338, N'Chat 350', 26, 1, N'chat350')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1339, N'Chat 527', 26, 1, N'chat527')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1340, N'Comeback', 26, 1, N'comeback')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1341, N'Continuum i400', 26, 1, N'continuumi400')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1342, N'Corby 2', 26, 1, N'corby2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1343, N'Corby Beat', 26, 1, N'corbybeat')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1344, N'Corby Pro', 26, 1, N'corbypro')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1345, N'Corby TV', 26, 1, N'corbytv')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1346, N'CorbyTXT', 26, 1, N'corbytxt')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1347, N'D780', 26, 1, N'd780')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1348, N'D980', 26, 1, N'd980')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1349, N'DoubleTime', 26, 1, N'doubletime')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1350, N'Duos TV i6712', 26, 1, N'duostvi6712')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1351, N'E1050', 26, 1, N'e1050')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1352, N'E1075', 26, 1, N'e1075')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1353, N'E1080', 26, 1, N'e1080')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1354, N'E1080T', 26, 1, N'e1080t')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1355, N'E1085', 26, 1, N'e1085')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1356, N'E1085T', 26, 1, N'e1085t')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1357, N'E1100', 26, 1, N'e1100')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1358, N'E1117', 26, 1, N'e1117')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1359, N'E1120', 26, 1, N'e1120')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1360, N'E1125', 26, 1, N'e1125')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1361, N'E1130B', 26, 1, N'e1130b')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1362, N'E1150', 26, 1, N'e1150')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1363, N'E1160', 26, 1, N'e1160')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1364, N'E1170', 26, 1, N'e1170')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1365, N'E1180', 26, 1, N'e1180')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1366, N'E1190', 26, 1, N'e1190')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1367, N'E1210', 26, 1, N'e1210')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1368, N'E1225 Shift', 26, 1, N'e1225shift')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1369, N'E1252', 26, 1, N'e1252')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1370, N'E1310', 26, 1, N'e1310')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1371, N'E1360', 26, 1, N'e1360')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1372, N'E1390', 26, 1, N'e1390')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1373, N'E1410', 26, 1, N'e1410')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1374, N'E200 ECO', 26, 1, N'e200eco')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1375, N'E2100B', 26, 1, N'e2100b')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1376, N'E2120', 26, 1, N'e2120')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1377, N'E2120B', 26, 1, N'e2120b')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1378, N'E2130', 26, 1, N'e2130')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1379, N'E215', 26, 1, N'e215')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1380, N'E2152', 26, 1, N'e2152')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1381, N'E2210B', 26, 1, N'e2210b')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1382, N'E2222', 26, 1, N'e2222')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1383, N'E2230', 26, 1, N'e2230')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1384, N'E2232', 26, 1, N'e2232')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1385, N'E2330 Corusso', 26, 1, N'e2330corusso')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1386, N'E2370', 26, 1, N'e2370')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1387, N'E2510', 26, 1, N'e2510')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1388, N'E2530', 26, 1, N'e2530')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1389, N'E2652', 26, 1, N'e2652')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1390, N'E310', 26, 1, N'e310')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1391, N'E3210', 26, 1, N'e3210')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1392, N'E3213 Hero', 26, 1, N'e3213hero')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1393, N'E830 Gold', 26, 1, N'e830gold')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1394, N'Ego', 26, 1, N'ego')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1395, N'EK-GC200 Galaxy Camera 2', 26, 1, N'ekgc200galaxycamera2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1396, N'Epic 4G', 26, 1, N'epic4g')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1397, N'Exhibit 4G', 26, 1, N'exhibit4g')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1398, N'F110 Adidas', 26, 1, N'f110adidas')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1399, N'F268', 26, 1, N'f268')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1400, N'F270 Beat', 26, 1, N'f270beat')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1401, N'F400', 26, 1, N'f400')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1402, N'F480', 26, 1, N'f480')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1403, N'F480i', 26, 1, N'f480i')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1404, N'Fascinate', 26, 1, N'fascinate')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1405, N'Flight', 26, 1, N'flight')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1406, N'Focus', 26, 1, N'focus')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1407, N'G400', 26, 1, N'g400')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1408, N'G810', 26, 1, N'g810')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1409, N'Galaxy 3', 26, 1, N'galaxy3')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1410, N'Galaxy 3D', 26, 1, N'galaxy3d')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1411, N'Galaxy 5', 26, 1, N'galaxy5')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1412, N'Galaxy 551', 26, 1, N'galaxy551')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1413, N'Galaxy Ace Duos', 26, 1, N'galaxyaceduos')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1414, N'Galaxy Ace Le Fleur', 26, 1, N'galaxyacelefleur')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1415, N'Galaxy Core Advance', 26, 1, N'galaxycoreadvance')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1416, N'Galaxy Core i8260', 26, 1, N'galaxycorei8260')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1417, N'Galaxy Core Plus G3500', 26, 1, N'galaxycoreplusg3500')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1418, N'Galaxy Discover', 26, 1, N'galaxydiscover')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1419, N'Galaxy Express', 26, 1, N'galaxyexpress')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1420, N'Galaxy Fit', 26, 1, N'galaxyfit')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1421, N'Galaxy Frame', 26, 1, N'galaxyframe')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1422, N'Galaxy Gear', 26, 1, N'galaxygear')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1423, N'Galaxy Grand 2', 26, 1, N'galaxygrand2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1424, N'Galaxy Lite', 26, 1, N'galaxylite')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1425, N'Galaxy M Pro B7800', 26, 1, N'galaxymprob7800')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1426, N'Galaxy Mega 5.8', 26, 1, N'galaxymega5_8')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1427, N'Galaxy Mega 6.3', 26, 1, N'galaxymega6_3')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1428, N'Galaxy Mini', 26, 1, N'galaxymini')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1429, N'Galaxy Music', 26, 1, N'galaxymusic')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1430, N'Galaxy Music Duos', 26, 1, N'galaxymusicduos')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1431, N'Galaxy Neo', 26, 1, N'galaxyneo')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1432, N'Galaxy Note', 26, 1, N'galaxynote')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1433, N'Galaxy Note 10.1 2014 Edition', 26, 1, N'galaxynote10_12014edition')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1434, N'Galaxy Note 3', 26, 1, N'galaxynote3')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1435, N'Galaxy Player', 26, 1, N'galaxyplayer')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1436, N'Galaxy Player 70 Plus', 26, 1, N'galaxyplayer70plus')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1437, N'Galaxy Prevail', 26, 1, N'galaxyprevail')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1438, N'Galaxy Q', 26, 1, N'galaxyq')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1439, N'Galaxy Round', 26, 1, N'galaxyround')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1440, N'Galaxy S', 26, 1, N'galaxys')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1441, N'Galaxy S 4G', 26, 1, N'galaxys4g')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1442, N'Galaxy S Hoppin', 26, 1, N'galaxyshoppin')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1443, N'Galaxy S Plus', 26, 1, N'galaxysplus')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1444, N'Galaxy S Pro', 26, 1, N'galaxyspro')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1445, N'Galaxy S Wifi 4', 26, 1, N'galaxyswifi4')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1446, N'Galaxy S Wifi 5', 26, 1, N'galaxyswifi5')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1447, N'Galaxy S2 4G', 26, 1, N'galaxys24g')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1448, N'Galaxy S2 HD', 26, 1, N'galaxys2hd')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1449, N'Galaxy S2 Mini', 26, 1, N'galaxys2mini')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1450, N'Galaxy S4', 26, 1, N'galaxys4')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1451, N'Galaxy S4 Active', 26, 1, N'galaxys4active')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1452, N'Galaxy S4 LTE-A', 26, 1, N'galaxys4ltea')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1453, N'Galaxy S4 Zoom', 26, 1, N'galaxys4zoom')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1454, N'Galaxy S5', 26, 1, N'galaxys5')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1455, N'Galaxy SL', 26, 1, N'galaxysl')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1456, N'Galaxy Spica', 26, 1, N'galaxyspica')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1457, N'Galaxy Tab', 26, 1, N'galaxytab')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1458, N'Galaxy Tab 3 7.0', 26, 1, N'galaxytab37_0')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1459, N'Galaxy Tab 3 8.0', 26, 1, N'galaxytab38_0')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1460, N'Galaxy Tab 3 Lite 7.0', 26, 1, N'galaxytab3lite7_0')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1461, N'Galaxy Tab 4G', 26, 1, N'galaxytab4g')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1462, N'Galaxy Trend Lite S7390', 26, 1, N'galaxytrendlites7390')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1463, N'Galaxy U', 26, 1, N'galaxyu')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1464, N'Galaxy W i8150', 26, 1, N'galaxywi8150')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1465, N'Galaxy Y Pro Duos', 26, 1, N'galaxyyproduos')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1466, N'Galaxy Young DS', 26, 1, N'galaxyyoungds')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1467, N'Galaxy Z', 26, 1, N'galaxyz')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1468, N'Gear 2', 26, 1, N'gear2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1469, N'Gear 2 Neo', 26, 1, N'gear2neo')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1470, N'Gear Fit', 26, 1, N'gearfit')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1471, N'Genoa', 26, 1, N'genoa')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1472, N'Genoa 3G', 26, 1, N'genoa3g')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1473, N'Giorgio Armani', 26, 1, N'giorgioarmani')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1474, N'Google Nexus 10', 26, 1, N'googlenexus10')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1475, N'Google Nexus S', 26, 1, N'googlenexuss')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1476, N'Google Nexus S i9020A', 26, 1, N'googlenexussi9020a')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1477, N'Gravity 2', 26, 1, N'gravity2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1478, N'Gravity 3', 26, 1, N'gravity3')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1479, N'Gravity Smart', 26, 1, N'gravitysmart')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1480, N'Gravity T', 26, 1, N'gravityt')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1481, N'GT-B7620', 26, 1, N'gtb7620')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1482, N'GT-I9152P Galaxy Mega Plus', 26, 1, N'gti9152pgalaxymegaplus')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1483, N'Guru', 26, 1, N'guru')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1484, N'Haptic', 26, 1, N'haptic')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1485, N'Hello Kitty', 26, 1, N'hellokitty')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1486, N'Hero Plus B159', 26, 1, N'heroplusb159')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1487, N'Highlight', 26, 1, N'highlight')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1488, N'Impact', 26, 1, N'impact')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1489, N'Impact b', 26, 1, N'impactb')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1490, N'Impact sf', 26, 1, N'impactsf')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1491, N'Infinity', 26, 1, N'infinity')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1492, N'Instinct', 26, 1, N'instinct')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1493, N'i200', 26, 1, N'i200')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1494, N'i225 Exec', 26, 1, N'i225exec')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1495, N'i325', 26, 1, N'i325')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1496, N'i415 Galaxy Stratosphere', 26, 1, N'i415galaxystratosphere')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1497, N'i5800 Galaxy 3', 26, 1, N'i5800galaxy3')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1498, N'i5801 Apollo', 26, 1, N'i5801apollo')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1499, N'i589 Galaxy Ace Duos', 26, 1, N'i589galaxyaceduos')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1500, N'i607 BlackJack', 26, 1, N'i607blackjack')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1501, N'i617 BlackJack 2', 26, 1, N'i617blackjack2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1502, N'i6210', 26, 1, N'i6210')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1503, N'i637 Jack', 26, 1, N'i637jack')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1504, N'i640', 26, 1, N'i640')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1505, N'i6500U Galaxy', 26, 1, N'i6500ugalaxy')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1506, N'i667 Focus 2', 26, 1, N'i667focus2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1507, N'i7110', 26, 1, N'i7110')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1508, N'i740', 26, 1, N'i740')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1509, N'i7410', 26, 1, N'i7410')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1510, N'i7500', 26, 1, N'i7500')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1511, N'i770 Saga', 26, 1, N'i770saga')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1512, N'i8160 Galaxy Ace 2', 26, 1, N'i8160galaxyace2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1513, N'i8190 Galaxy S 3 mini', 26, 1, N'i8190galaxys3mini')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1514, N'i8350 Omnia W', 26, 1, N'i8350omniaw')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1515, N'i8510', 26, 1, N'i8510')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1516, N'i8530 Galaxy Beam', 26, 1, N'i8530galaxybeam')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1517, N'i8550 Galaxy Win', 26, 1, N'i8550galaxywin')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1518, N'i8700', 26, 1, N'i8700')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1519, N'i897 Captivate', 26, 1, N'i897captivate')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1520, N'i9010 Galaxy S Giorgio Armani', 26, 1, N'i9010galaxysgiorgioarmani')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1521, N'i9060 Galaxy Grand Neo', 26, 1, N'i9060galaxygrandneo')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1522, N'i907 Epix', 26, 1, N'i907epix')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1523, N'i9070 Galaxy R Style', 26, 1, N'i9070galaxyrstyle')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1524, N'i9070 Galaxy S Advance', 26, 1, N'i9070galaxysadvance')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1525, N'i9080 Galaxy Grand', 26, 1, N'i9080galaxygrand')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1526, N'i9082 Galaxy Grand', 26, 1, N'i9082galaxygrand')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1527, N'i909 Galaxy S', 26, 1, N'i909galaxys')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1528, N'i9100G Galaxy S 2', 26, 1, N'i9100ggalaxys2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1529, N'i9103 Galaxy R', 26, 1, N'i9103galaxyr')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1530, N'i9105 Galaxy S2 Plus', 26, 1, N'i9105galaxys2plus')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1531, N'i9190 Galaxy S4 mini', 26, 1, N'i9190galaxys4mini')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1532, N'i9250 Galaxy Nexus', 26, 1, N'i9250galaxynexus')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1533, N'i9260 Galaxy Premier', 26, 1, N'i9260galaxypremier')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1534, N'i929 Galaxy S2 Duos', 26, 1, N'i929galaxys2duos')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1535, N'i9300 Galaxy S3', 26, 1, N'i9300galaxys3')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1536, N'i997 infuse 4G', 26, 1, N'i997infuse4g')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1537, N'innov8', 26, 1, N'innov8')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1538, N'intercept', 26, 1, N'intercept')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1539, N'J150', 26, 1, N'j150')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1540, N'J165', 26, 1, N'j165')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1541, N'J210', 26, 1, N'j210')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1542, N'J630', 26, 1, N'j630')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1543, N'J800', 26, 1, N'j800')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1544, N'Jack', 26, 1, N'jack')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1545, N'Jet', 26, 1, N'jet')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1546, N'L700', 26, 1, N'l700')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1547, N'L700i', 26, 1, N'l700i')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1548, N'L811', 26, 1, N'l811')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1549, N'L870', 26, 1, N'l870')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1550, N'M110S Galaxy S', 26, 1, N'm110sgalaxys')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1551, N'M130', 26, 1, N'm130')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1552, N'M130K Galaxy K', 26, 1, N'm130kgalaxyk')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1553, N'M140', 26, 1, N'm140')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1554, N'M150', 26, 1, N'm150')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1555, N'M200', 26, 1, N'm200')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1556, N'M210S Wave2', 26, 1, N'm210swave2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1557, N'M2310', 26, 1, N'm2310')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1558, N'M2510', 26, 1, N'm2510')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1559, N'M2513', 26, 1, N'm2513')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1560, N'M2520', 26, 1, N'm2520')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1561, N'M2710', 26, 1, N'm2710')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1562, N'M310', 26, 1, N'm310')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1563, N'M3200 Beat s', 26, 1, N'm3200beats')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1564, N'M3310', 26, 1, N'm3310')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1565, N'M3310L', 26, 1, N'm3310l')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1566, N'M350 Seek', 26, 1, N'm350seek')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1567, N'M3510 Beat', 26, 1, N'm3510beat')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1568, N'M380 Galaxy Rush', 26, 1, N'm380galaxyrush')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1569, N'M5650 Lindy', 26, 1, N'm5650lindy')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1570, N'M580 Replenish', 26, 1, N'm580replenish')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1571, N'M620', 26, 1, N'm620')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1572, N'M6710 Beat Disc', 26, 1, N'm6710beatdisc')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1573, N'M750 Restore', 26, 1, N'm750restore')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1574, N'M7500', 26, 1, N'm7500')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1575, N'M7600 Beat DJ', 26, 1, N'm7600beatdj')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1576, N'M7603', 26, 1, N'm7603')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1577, N'M8800 Pixon', 26, 1, N'm8800pixon')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1578, N'M8920', 26, 1, N'm8920')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1579, N'M920 Transform', 26, 1, N'm920transform')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1580, N'Mesmerize i500', 26, 1, N'mesmerizei500')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1581, N'Messager', 26, 1, N'messager')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1582, N'Metro TV', 26, 1, N'metrotv')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1583, N'Monte', 26, 1, N'monte')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1584, N'Monte Bar', 26, 1, N'montebar')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1585, N'Monte Slider', 26, 1, N'monteslider')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1586, N'Mpower Muzik 219', 26, 1, N'mpowermuzik219')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1587, N'Mpower TV S239', 26, 1, N'mpowertvs239')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1588, N'Mpower TXT M369', 26, 1, N'mpowertxtm369')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1589, N'Mythic', 26, 1, N'mythic')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1590, N'N5100 Galaxy Note 8.0', 26, 1, N'n5100galaxynote8_0')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1591, N'N710', 26, 1, N'n710')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1592, N'N7100 Galaxy Note 2', 26, 1, N'n7100galaxynote2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1593, N'N7500 Galaxy Note 3 Neo', 26, 1, N'n7500galaxynote3neo')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1594, N'N8005 Galaxy Note 10.1', 26, 1, N'n8005galaxynote10_1')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1595, N'N8010 Galaxy Note 10.1', 26, 1, N'n8010galaxynote10_1')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1596, N'Nexus S i9023', 26, 1, N'nexussi9023')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1597, N'Omnia', 26, 1, N'omnia')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1598, N'Omnia 2', 26, 1, N'omnia2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1599, N'Omnia 652', 26, 1, N'omnia652')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1600, N'Omnia 7', 26, 1, N'omnia7')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1601, N'Omnia HD', 26, 1, N'omniahd')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1602, N'Omnia Pro 4', 26, 1, N'omniapro4')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1603, N'P180', 26, 1, N'p180')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1604, N'P220', 26, 1, N'p220')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1605, N'P250', 26, 1, N'p250')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1606, N'P270', 26, 1, N'p270')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1607, N'P3100 Galaxy Tab 2', 26, 1, N'p3100galaxytab2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1608, N'P3110 Galaxy Tab 2 7.0', 26, 1, N'p3110galaxytab27_0')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1609, N'P5100 Galaxy Tab 2 10.1', 26, 1, N'p5100galaxytab210_1')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1610, N'P5110 Galaxy Tab 2 10.1', 26, 1, N'p5110galaxytab210_1')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1611, N'P5220 Galaxy Tab 3 10.1', 26, 1, N'p5220galaxytab310_1')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1612, N'P6200 Galaxy Tab 7 Plus', 26, 1, N'p6200galaxytab7plus')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1613, N'P6210 Galaxy Tab 7 Plus', 26, 1, N'p6210galaxytab7plus')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1614, N'P6800 Galaxy Tab 7.7', 26, 1, N'p6800galaxytab7_7')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1615, N'P7300 Galaxy Tab 8.9', 26, 1, N'p7300galaxytab8_9')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1616, N'P7310 Galaxy Tab 8.9', 26, 1, N'p7310galaxytab8_9')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1617, N'P960', 26, 1, N'p960')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1618, N'Pixon', 26, 1, N'pixon')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1619, N'Pixon12', 26, 1, N'pixon12')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1620, N'Preston', 26, 1, N'preston')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1621, N'R351 Freeform', 26, 1, N'r351freeform')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1622, N'R360 Freeform 2', 26, 1, N'r360freeform2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1623, N'R360 Messenger Touch', 26, 1, N'r360messengertouch')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1624, N'R570 Messenger 3', 26, 1, N'r570messenger3')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1625, N'R580 Profile', 26, 1, N'r580profile')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1626, N'R900 Craft', 26, 1, N'r900craft')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1627, N'Rugby', 26, 1, N'rugby')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1628, N'S3030 Tobi', 26, 1, N's3030tobi')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1629, N'S3100', 26, 1, N's3100')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1630, N'S3110', 26, 1, N's3110')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1631, N'S3353 Ch@t 335', 26, 1, N's3353ch@t335')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1632, N'S3353 Trevi', 26, 1, N's3353trevi')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1633, N'S3500', 26, 1, N's3500')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1634, N'S3600', 26, 1, N's3600')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1635, N'S3653', 26, 1, N's3653')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1636, N'S3653W', 26, 1, N's3653w')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1637, N'S3770', 26, 1, N's3770')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1638, N'S3802 Rex 70', 26, 1, N's3802rex70')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1639, N'S5050', 26, 1, N's5050')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1640, N'S5150 Olivia', 26, 1, N's5150olivia')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1641, N'S5200', 26, 1, N's5200')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1642, N'S5220 Star 3', 26, 1, N's5220star3')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1643, N'S5222 Rex 80', 26, 1, N's5222rex80')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1644, N'S5230', 26, 1, N's5230')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1645, N'S5253', 26, 1, N's5253')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1646, N'S5280 Galaxy Star', 26, 1, N's5280galaxystar')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1647, N'S5283 Galaxy Star Trios', 26, 1, N's5283galaxystartrios')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1648, N'S5292 Rex 90', 26, 1, N's5292rex90')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1649, N'S5300 Galaxy Pocket', 26, 1, N's5300galaxypocket')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1650, N'S5310 Pocket Neo', 26, 1, N's5310pocketneo')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1651, N'S5360 Galaxy Y', 26, 1, N's5360galaxyy')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1652, N'S5380 Wave Y', 26, 1, N's5380wavey')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1653, N'S5503', 26, 1, N's5503')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1654, N'S5510', 26, 1, N's5510')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1655, N'S5530', 26, 1, N's5530')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1656, N'S5560', 26, 1, N's5560')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1657, N'S5570i Galaxy Pop Plus', 26, 1, N's5570igalaxypopplus')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1658, N'S5600', 26, 1, N's5600')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1659, N'S5600v Blade', 26, 1, N's5600vblade')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1660, N'S5610', 26, 1, N's5610')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1661, N'S5630C', 26, 1, N's5630c')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1662, N'S5690 Galaxy Xcover', 26, 1, N's5690galaxyxcover')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1663, N'S5750 Wave 575', 26, 1, N's5750wave575')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1664, N'S5820 Monte', 26, 1, N's5820monte')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1665, N'S5830', 26, 1, N's5830')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1666, N'S5830i Galaxy Ace', 26, 1, N's5830igalaxyace')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1667, N'S6310 Galaxy Young', 26, 1, N's6310galaxyyoung')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1668, N'S6500 Galaxy Mini 2', 26, 1, N's6500galaxymini2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1669, N'S6700', 26, 1, N's6700')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1670, N'S6810 Galaxy Fame', 26, 1, N's6810galaxyfame')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1671, N'S7070 Diva', 26, 1, N's7070diva')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1672, N'S7220 Ultra b', 26, 1, N's7220ultrab')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1673, N'S7233', 26, 1, N's7233')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1674, N'S7250 Wave M', 26, 1, N's7250wavem')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1675, N'S7270 Galaxy Ace 3', 26, 1, N's7270galaxyace3')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1676, N'S7330', 26, 1, N's7330')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1677, N'S7350', 26, 1, N's7350')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1678, N'S7500 Galaxy Ace Plus', 26, 1, N's7500galaxyaceplus')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1679, N'S7500 Trebon', 26, 1, N's7500trebon')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1680, N'S7560 Trend', 26, 1, N's7560trend')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1681, N'S7562 Galaxy S Duos', 26, 1, N's7562galaxysduos')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1682, N'S7572 Galaxy Trend 2', 26, 1, N's7572galaxytrend2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1683, N'S7580 Galaxy Trend Plus', 26, 1, N's7580galaxytrendplus')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1684, N'S7710 Galaxy Xcover 2', 26, 1, N's7710galaxyxcover2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1685, N'S8300', 26, 1, N's8300')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1686, N'S9110', 26, 1, N's9110')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1687, N'Shark', 26, 1, N'shark')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1688, N'Shark 2', 26, 1, N'shark2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1689, N'Shark 3', 26, 1, N'shark3')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1690, N'SM-P900 Galaxy Note PRO 12.2', 26, 1, N'smp900galaxynotepro12_2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1691, N'SM-T320 Galaxy Tab PRO 8.4', 26, 1, N'smt320galaxytabpro8_4')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1692, N'SM-T520 Galaxy Tab PRO 10.1', 26, 1, N'smt520galaxytabpro10_1')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1693, N'SM-T900 Galaxy Tab PRO 12.2', 26, 1, N'smt900galaxytabpro12_2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1694, N'Solar', 26, 1, N'solar')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1695, N'Solstice', 26, 1, N'solstice')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1696, N'Soul', 26, 1, N'soul')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1697, N'Star', 26, 1, N'star')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1698, N'Star 2', 26, 1, N'star2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1699, N'Star 2 Duos', 26, 1, N'star2duos')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1700, N'Star 3', 26, 1, N'star3')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1701, N'Star 3G', 26, 1, N'star3g')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1702, N'Star NFC', 26, 1, N'starnfc')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1703, N'Star TV', 26, 1, N'startv')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1704, N'Star WiFi', 26, 1, N'starwifi')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1705, N'Steel', 26, 1, N'steel')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1706, N'T109', 26, 1, N't109')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1707, N'T119', 26, 1, N't119')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1708, N'T219', 26, 1, N't219')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1709, N'T229', 26, 1, N't229')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1710, N'T249', 26, 1, N't249')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1711, N'T339', 26, 1, N't339')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1712, N'T349', 26, 1, N't349')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1713, N'T359', 26, 1, N't359')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1714, N'T401G', 26, 1, N't401g')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1715, N'T409', 26, 1, N't409')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1716, N'T429', 26, 1, N't429')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1717, N'T459 Gravity', 26, 1, N't459gravity')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1718, N'T500', 26, 1, N't500')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1719, N'T509', 26, 1, N't509')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1720, N'T539 Beat', 26, 1, N't539beat')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1721, N'T639', 26, 1, N't639')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1722, N'T659 Scarlet', 26, 1, N't659scarlet')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1723, N'T729 Blast', 26, 1, N't729blast')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1724, N'T739 Katalyst', 26, 1, N't739katalyst')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1725, N'T769 Galaxy S Blaze 4G', 26, 1, N't769galaxysblaze4g')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1726, N'T919 Behold', 26, 1, N't919behold')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1727, N'T929 Memoir', 26, 1, N't929memoir')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1728, N'Trevi', 26, 1, N'trevi')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1729, N'U320 Haven', 26, 1, N'u320haven')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1730, N'U360 Gusto', 26, 1, N'u360gusto')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1731, N'U460 intensity 2', 26, 1, N'u460intensity2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1732, N'U800 Soul', 26, 1, N'u800soul')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1733, N'U800 Soulb', 26, 1, N'u800soulb')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1734, N'U810 Renown', 26, 1, N'u810renown')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1735, N'V200', 26, 1, N'v200')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1736, N'V820L', 26, 1, N'v820l')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1737, N'Vibrant', 26, 1, N'vibrant')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1738, N'Vibrant 4G', 26, 1, N'vibrant4g')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1739, N'W169 Duos', 26, 1, N'w169duos')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1740, N'W880', 26, 1, N'w880')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1741, N'W9705', 26, 1, N'w9705')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1742, N'Wave', 26, 1, N'wave')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1743, N'Wave 2', 26, 1, N'wave2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1744, N'Wave 2 Pro', 26, 1, N'wave2pro')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1745, N'Wave 3', 26, 1, N'wave3')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1746, N'Wave 578', 26, 1, N'wave578')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1747, N'Xplorer', 26, 1, N'xplorer')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1748, N'Aquos 3D', 27, 1, N'aquos3D')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1749, N'FX', 27, 1, N'fx')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1750, N'ST21i Tapioca', 28, 1, N'st21itapioca')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1751, N'Tablet P', 28, 1, N'tabletp')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1752, N'Tablet S', 28, 1, N'tablets')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1753, N'Xperia acro S', 28, 1, N'xperiaacros')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1754, N'Xperia C', 28, 1, N'xperiac')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1755, N'Xperia E', 28, 1, N'xperiae')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1756, N'Xperia E Dual', 28, 1, N'xperiaedual')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1757, N'Xperia E1', 28, 1, N'xperiae1')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1758, N'Xperia E1 Dual', 28, 1, N'xperiae1dual')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1759, N'Xperia go', 28, 1, N'xperiago')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1760, N'Xperia GX', 28, 1, N'xperiagx')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1761, N'Xperia ion', 28, 1, N'xperiaion')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1762, N'Xperia J', 28, 1, N'xperiaj')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1763, N'Xperia L', 28, 1, N'xperial')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1764, N'Xperia LT29i Hayabusa', 28, 1, N'xperialt29ihayabusa')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1765, N'Xperia M', 28, 1, N'xperiam')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1766, N'Xperia M2', 28, 1, N'xperiam2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1767, N'Xperia Mint', 28, 1, N'xperiamint')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1768, N'Xperia miro', 28, 1, N'xperiamiro')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1769, N'Xperia neo L', 28, 1, N'xperianeol')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1770, N'Xperia P', 28, 1, N'xperiap')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1771, N'Xperia S', 28, 1, N'xperias')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1772, N'Xperia SL', 28, 1, N'xperiasl')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1773, N'Xperia Sola', 28, 1, N'xperiasola')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1774, N'Xperia SP', 28, 1, N'xperiasp')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1775, N'Xperia SX', 28, 1, N'xperiasx')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1776, N'Xperia T', 28, 1, N'xperiat')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1777, N'Xperia T2 Ultra', 28, 1, N'xperiat2ultra')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1778, N'Xperia T2 Ultra Dual', 28, 1, N'xperiat2ultradual')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1779, N'Xperia Tablet S', 28, 1, N'xperiatablets')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1780, N'Xperia Tablet Z', 28, 1, N'xperiatabletz')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1781, N'Xperia tipo', 28, 1, N'xperiatipo')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1782, N'Xperia tipo dual', 28, 1, N'xperiatipodual')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1783, N'Xperia TL', 28, 1, N'xperiatl')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1784, N'Xperia TX', 28, 1, N'xperiatx')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1785, N'Xperia U', 28, 1, N'xperiau')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1786, N'Xperia V', 28, 1, N'xperiav')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1787, N'Xperia Z', 28, 1, N'xperiaz')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1788, N'Xperia Z Ultra', 28, 1, N'xperiazultra')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1789, N'Xperia Z Ultra Wi-Fi', 28, 1, N'xperiazultrawifi')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1790, N'Xperia Z1', 28, 1, N'xperiaz1')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1791, N'Xperia Z1 Compact', 28, 1, N'xperiaz1compact')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1792, N'Xperia Z2', 28, 1, N'xperiaz2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1793, N'Xperia Z2 Tablet', 28, 1, N'xperiaz2tablet')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1794, N'Xperia ZL', 28, 1, N'xperiazl')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1795, N'Xperia ZR', 28, 1, N'xperiazr')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1796, N'Z Ultra Google Play Edition', 28, 1, N'zultragoogleplayedition')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1797, N'A8i', 29, 1, N'a8i')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1798, N'Active', 29, 1, N'active')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1799, N'Aino', 29, 1, N'aino')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1800, N'Alicia', 29, 1, N'alicia')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1801, N'Arc', 29, 1, N'arc')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1802, N'Aspen', 29, 1, N'aspen')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1803, N'C510', 29, 1, N'c510')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1804, N'C901', 29, 1, N'c901')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1805, N'C901 GreenHeart', 29, 1, N'c901greenheart')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1806, N'C903', 29, 1, N'c903')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1807, N'Cedar', 29, 1, N'cedar')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1808, N'Elm', 29, 1, N'elm')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1809, N'F305', 29, 1, N'f305')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1810, N'G502', 29, 1, N'g502')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1811, N'G700 Business', 29, 1, N'g700business')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1812, N'G702', 29, 1, N'g702')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1813, N'G705', 29, 1, N'g705')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1814, N'Halon', 29, 1, N'halon')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1815, N'Hazel', 29, 1, N'hazel')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1816, N'idou', 29, 1, N'idou')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1817, N'J105', 29, 1, N'j105')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1818, N'J132', 29, 1, N'j132')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1819, N'Jalou', 29, 1, N'jalou')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1820, N'Jalou Dolce Gabbana', 29, 1, N'jaloudolcegabbana')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1821, N'K330', 29, 1, N'k330')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1822, N'Kiki', 29, 1, N'kiki')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1823, N'Kokura', 29, 1, N'kokura')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1824, N'Kurara', 29, 1, N'kurara')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1825, N'Mix', 29, 1, N'mix')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1826, N'Mix Walkman', 29, 1, N'mixwalkman')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1827, N'Neo', 29, 1, N'neo')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1828, N'P5', 29, 1, N'p5')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1829, N'Play', 29, 1, N'play')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1830, N'Pro', 29, 1, N'pro')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1831, N'Pureness', 29, 1, N'pureness')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1832, N'Rachael', 29, 1, N'rachael')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1833, N'Ray', 29, 1, N'ray')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1834, N'Robyn', 29, 1, N'robyn')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1835, N'S003', 29, 1, N's003')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1836, N'S004', 29, 1, N's004')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1837, N'S302', 29, 1, N's302')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1838, N'S312', 29, 1, N's312')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1839, N'Satio', 29, 1, N'satio')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1840, N'Shiho', 29, 1, N'shiho')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1841, N'Spiro', 29, 1, N'spiro')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1842, N'T303', 29, 1, N't303')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1843, N'T700', 29, 1, N't700')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1844, N'T707', 29, 1, N't707')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1845, N'T715', 29, 1, N't715')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1846, N'TM506', 29, 1, N'tm506')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1847, N'TXT', 29, 1, N'txt')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1848, N'TXT Pro', 29, 1, N'txtpro')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1849, N'Vivaz', 29, 1, N'vivaz')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1850, N'Vivaz Pro', 29, 1, N'vivazpro')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1851, N'W205', 29, 1, N'w205')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1852, N'W302', 29, 1, N'w302')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1853, N'W395', 29, 1, N'w395')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1854, N'W508', 29, 1, N'w508')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1855, N'W580 Pink', 29, 1, N'w580pink')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1856, N'W595', 29, 1, N'w595')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1857, N'W595s', 29, 1, N'w595s')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1858, N'W705', 29, 1, N'w705')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1859, N'W715', 29, 1, N'w715')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1860, N'W8', 29, 1, N'w8')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1861, N'W880', 29, 1, N'w880')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1862, N'W902', 29, 1, N'w902')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1863, N'W995', 29, 1, N'w995')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1864, N'Walkman Live', 29, 1, N'walkmanlive')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1865, N'X1', 29, 1, N'x1')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1866, N'X10', 29, 1, N'x10')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1867, N'X10 mini', 29, 1, N'x10mini')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1868, N'X10 Mini Pro', 29, 1, N'x10minipro')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1869, N'X2', 29, 1, N'x2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1870, N'X3', 29, 1, N'x3')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1871, N'X8', 29, 1, N'x8')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1872, N'Xperia Arc S', 29, 1, N'xperiaarcs')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1873, N'Xperia Duo', 29, 1, N'xperiaduo')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1874, N'Xperia Mini', 29, 1, N'xperiamini')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1875, N'Xperia Mini Pro', 29, 1, N'xperiaminipro')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1876, N'Xperia neo V', 29, 1, N'xperianeov')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1877, N'Yari', 29, 1, N'yari')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1878, N'Yendo', 29, 1, N'yendo')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1879, N'Z780', 29, 1, N'z780')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1880, N'Zylo', 29, 1, N'zylo')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1881, N'Air 1000', 30, 1, N'air1000')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1882, N'Air 801', 30, 1, N'air801')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1883, N'AT200 Excite', 30, 1, N'at200excite')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1884, N'AT275 Excite 7.7', 30, 1, N'at275excite7_7')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1885, N'AT305 Excite 10', 30, 1, N'at305excite10')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1886, N'AT335 Excite 13', 30, 1, N'at335excite13')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1887, N'Encore', 30, 1, N'encore')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1888, N'Folia 100', 30, 1, N'folia100')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1889, N'Folia 100 3G', 30, 1, N'folia1003g')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1890, N'G810', 30, 1, N'g810')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1891, N'iS12T', 30, 1, N'is12t')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1892, N'K01', 30, 1, N'k01')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1893, N'M400', 30, 1, N'm400')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1894, N'TG01', 30, 1, N'tg01')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1895, N'TG02', 30, 1, N'tg02')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1896, N'Thrive', 30, 1, N'thrive')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1897, N'Thrive 7', 30, 1, N'thrive7')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1898, N'Touch', 30, 1, N'touch')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1899, N'BlackBerry 8120', 31, 1, N'blackberry8120')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1900, N'BlackBerry Bold', 31, 1, N'blackberrybold')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1901, N'BlackBerry Flip', 31, 1, N'blackberryflip')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1902, N'HTC Touch 3G', 31, 1, N'htctouch3g')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1903, N'LG GD910', 31, 1, N'lggd910')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1904, N'Maxi IQ', 31, 1, N'maxiiq')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1905, N'MaxiPlus 5', 31, 1, N'maxiplus5')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1906, N'MaxiPro 5', 31, 1, N'maxipro5')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1907, N'Samsung Galaxy', 31, 1, N'samsunggalaxy')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1908, N'Samsung Omnia Pro', 31, 1, N'samsungomniapro')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1909, N'T10', 31, 1, N't10')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1910, N'T11', 31, 1, N't11')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1911, N'T20', 31, 1, N't20')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1912, N'T30', 31, 1, N't30')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1913, N'T40', 31, 1, N't40')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1914, N'Tablet', 31, 1, N'tablet')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1915, N'Ascent 2010', 32, 1, N'ascent2010')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1916, N'Ascent Ferrari GT', 32, 1, N'ascentferrarigt')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1917, N'Ascent Ti', 32, 1, N'ascentti')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1918, N'Ascent Ti Damascus Steel', 32, 1, N'ascenttidamascussteel')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1919, N'Constellation 2011', 32, 1, N'constellation2011')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1920, N'Constellation Ayxta', 32, 1, N'constellationayxta')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1921, N'Constellation Quest', 32, 1, N'constellationquest')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1922, N'Constellation Quest Gold', 32, 1, N'constellationquestgold')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1923, N'Signature S', 32, 1, N'signatures')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1924, N'Ti', 32, 1, N'ti')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1925, N'1210', 33, 1, N'1210')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1926, N'1231', 33, 1, N'1231')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1927, N'1240', 33, 1, N'1240')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1928, N'150', 33, 1, N'150')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1929, N'226', 33, 1, N'226')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1930, N'227', 33, 1, N'227')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1931, N'228', 33, 1, N'228')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1932, N'231', 33, 1, N'231')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1933, N'235', 33, 1, N'235')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1934, N'246', 33, 1, N'246')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1935, N'247 Solar', 33, 1, N'247solar')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1936, N'248', 33, 1, N'248')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1937, N'250', 33, 1, N'250')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1938, N'332', 33, 1, N'332')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1939, N'345 Text', 33, 1, N'345text')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1940, N'350', 33, 1, N'350')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1941, N'360 H1', 33, 1, N'360h1')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1942, N'360 H2', 33, 1, N'360h2')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1943, N'360 M1', 33, 1, N'360m1')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1944, N'511', 33, 1, N'511')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1945, N'526', 33, 1, N'526')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1946, N'527', 33, 1, N'527')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1947, N'533', 33, 1, N'533')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1948, N'541', 33, 1, N'541')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1949, N'543', 33, 1, N'543')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1950, N'546', 33, 1, N'546')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1951, N'547', 33, 1, N'547')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1952, N'553', 33, 1, N'553')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1953, N'555', 33, 1, N'555')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1954, N'710', 33, 1, N'710')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1955, N'716', 33, 1, N'716')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1956, N'725', 33, 1, N'725')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1957, N'735', 33, 1, N'735')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1958, N'736', 33, 1, N'736')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1959, N'810', 33, 1, N'810')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1960, N'830i', 33, 1, N'830i')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1961, N'835', 33, 1, N'835')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1962, N'840', 33, 1, N'840')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1963, N'845', 33, 1, N'845')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1964, N'945', 33, 1, N'945')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1965, N'Blade V', 33, 1, N'bladev')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1966, N'Indie', 33, 1, N'indie')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1967, N'Smart', 33, 1, N'smart')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1968, N'Smart 10', 33, 1, N'smart10')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1969, N'Smart 7', 33, 1, N'smart7')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1970, N'Smart II', 33, 1, N'smartii')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1971, N'Smart Mini', 33, 1, N'smartmini')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1972, N'Smart Tab II', 33, 1, N'smarttabii')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1973, N'Smart Tab II 10', 33, 1, N'smarttabii10')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1974, N'Smart Tab III 10', 33, 1, N'smarttabiii10')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1975, N'Smart Tab III 7', 33, 1, N'smarttabiii7')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1976, N'V720', 33, 1, N'v720')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1977, N'V-X760', 33, 1, N'vx760')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1978, N'Blade', 34, 1, N'blade')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1979, N'Cool', 34, 1, N'cool')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1980, N'Geek U988S', 34, 1, N'geeku988s')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1981, N'Grand Memo V9815', 34, 1, N'grandmemov9815')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1982, N'Grand S II', 34, 1, N'grandsii')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1983, N'Grand X', 34, 1, N'grandx')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1984, N'Grand X LTE T82', 34, 1, N'grandxltet82')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1985, N'Live', 34, 1, N'live')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1986, N'Open', 34, 1, N'open')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1987, N'S302', 34, 1, N's302')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1988, N'Score M', 34, 1, N'scorem')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1989, N'Skate', 34, 1, N'skate')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1990, N'Skate Pro', 34, 1, N'skatepro')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1991, N'T100', 34, 1, N't100')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1992, N'V9', 34, 1, N'v9')
GO
INSERT [dbo].[E_TelefonModeller] ([TelefonModelID], [ModelAdi], [TelefonID], [IsActive], [RouteModelAdi]) VALUES (1993, N'V9 Plus', 34, 1, N'v9plus')
GO
SET IDENTITY_INSERT [dbo].[E_TelefonModeller] OFF
GO
SET IDENTITY_INSERT [dbo].[E_UrunAnaKategori] ON 

GO
INSERT [dbo].[E_UrunAnaKategori] ([AnaKategoriID], [AnaKategoriAdi], [RouteKatAdi], [IsActive]) VALUES (1, N'Cep Telefonu Kılıfları', N'cep-telefonu-kiliflari', 1)
GO
INSERT [dbo].[E_UrunAnaKategori] ([AnaKategoriID], [AnaKategoriAdi], [RouteKatAdi], [IsActive]) VALUES (2, N'Ekran Koruyucu Filmler', N'ekran-koruyucu-filmler', 1)
GO
INSERT [dbo].[E_UrunAnaKategori] ([AnaKategoriID], [AnaKategoriAdi], [RouteKatAdi], [IsActive]) VALUES (3, N'Şarj Aletleri', N'sarj-aletleri', 1)
GO
INSERT [dbo].[E_UrunAnaKategori] ([AnaKategoriID], [AnaKategoriAdi], [RouteKatAdi], [IsActive]) VALUES (4, N'Kablo ve Dönüştürücüler', N'kablo-ve-donusturuculer', 1)
GO
INSERT [dbo].[E_UrunAnaKategori] ([AnaKategoriID], [AnaKategoriAdi], [RouteKatAdi], [IsActive]) VALUES (5, N'Kulaklıklar', N'kulakliklar', 1)
GO
INSERT [dbo].[E_UrunAnaKategori] ([AnaKategoriID], [AnaKategoriAdi], [RouteKatAdi], [IsActive]) VALUES (6, N'Oto Araç Ürünleri', N'oto-arac-urunleri', 1)
GO
INSERT [dbo].[E_UrunAnaKategori] ([AnaKategoriID], [AnaKategoriAdi], [RouteKatAdi], [IsActive]) VALUES (8, N'Stylus Kalemler', N'stylus-kalemler', 1)
GO
INSERT [dbo].[E_UrunAnaKategori] ([AnaKategoriID], [AnaKategoriAdi], [RouteKatAdi], [IsActive]) VALUES (9, N'Bataryalar', N'bataryalar', 1)
GO
INSERT [dbo].[E_UrunAnaKategori] ([AnaKategoriID], [AnaKategoriAdi], [RouteKatAdi], [IsActive]) VALUES (10, N'Hafıza Kartları', N'hafiza-kartlari', 1)
GO
INSERT [dbo].[E_UrunAnaKategori] ([AnaKategoriID], [AnaKategoriAdi], [RouteKatAdi], [IsActive]) VALUES (12, N'Diğer Ürünler', N'diger-urunler', 1)
GO
INSERT [dbo].[E_UrunAnaKategori] ([AnaKategoriID], [AnaKategoriAdi], [RouteKatAdi], [IsActive]) VALUES (18, N'Test Kategorim', N'test-kategorim', 0)
GO
SET IDENTITY_INSERT [dbo].[E_UrunAnaKategori] OFF
GO
SET IDENTITY_INSERT [dbo].[E_UrunKategori] ON 

GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (13, N'Cam Ekran Koruyucu Filmler', N'cam-ekran-koruyucu-filmler', 2, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (14, N'Darbe Emici Koruyucu Filmler', N'darbe-emici-koruyucu-filmler', 2, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (15, N'Mat Ekran Koruyucu Filmler', N'mat-ekran-koruyucu-filmler', 9, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (16, N'Ön-Arka Koruyucu Filmler', N'onarka-koruyucu-filmler', 2, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (17, N'Şeffaf Ekran Koruyucu Filmler', N'seffaf-ekran-koruyucu-filmler', 2, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (18, N'Tam Gövde Koruyucu Filmler', N'tam-govde-koruyucu-filmler', 2, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (19, N'Araç Şarj Aletleri', N'arac-sarj-aletleri', 3, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (20, N'Ev Şarj Aletleri', N'ev-sarj-aletleri', 3, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (21, N'Masaüstü Şarj Aletleri', N'masaustu-sarj-aletleri', 3, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (22, N'Tablet Şarj Aletleri', N'tablet-sarj-aletleri', 3, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (23, N'Taşınabilir Şarj Aletleri', N'tasinabilir-sarj-aletleri', 3, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (24, N'Yurtdışı Şarj Aletleri', N'yurtdisi-sarj-aletleri', 3, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (25, N'Kamera Bağlantı Adaptörleri', N'kamera-baglanti-adaptorleri', 4, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (26, N'Data Kabloları', N'data-kablolari', 4, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (27, N'Görüntü Aktarım Cihazları', N'goruntu-aktarim-cihazlari', 4, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (28, N'HDMI Adaptörleri', N'hdmi-adaptorleri', 4, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (29, N'Kulaklık Kabloları', N'kulaklik-kablolari', 4, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (30, N'USB Bağlantı Kitleri', N'usb-baglanti-kitleri', 4, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (33, N'Silikon Kılıflar', N'silikon-kiliflar', 1, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (34, N'Rubber Kılıflar', N'rubber-kiliflar', 1, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (35, N'Kapaklı Kılıflar', N'kapakli-kiliflar', 1, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (36, N'Pencereli Kılıflar', N'pencereli-kiliflar', 1, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (37, N'Dik Kapaklı Kılıflar', N'dik-kapakli-kiliflar', 1, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (38, N'Yan Kapaklı Kılıflar', N'yan-kapakli-kiliflar', 1, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (39, N'İnce Kapaklı Kılıflar', N'ince-kapakli-kiliflar', 1, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (40, N'Standlı Kılıflar', N'standli-kiliflar', 1, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (41, N'Cüzdanlı Kılıflar', N'cuzdanli-kiliflar', 1, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (42, N'Bumper Çerçeve Kılıflar', N'bumper-cerceve-kiliflar', 1, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (43, N'Taşlı Kılıflar', N'tasli-kiliflar', 1, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (44, N'Bataryalı Kılıflar', N'bataryali-kiliflar', 1, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (45, N'Çekmeli Kılıflar', N'cekmeli-kiliflar', 1, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (46, N'Deri Kılıflar', N'deri-kiliflar', 1, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (47, N'Gerçek Deri Kılıflar', N'gercek-deri-kiliflar', 1, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (48, N'Metal Kılıflar', N'metal-kiliflar', 1, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (49, N'Su Geçirmez Kılıflar', N'su-gecirmez-kiliflar', 1, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (50, N'Resimli Kılıflar', N'resimli-kiliflar', 1, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (51, N'Kemere Takılan Kılıflar', N'kemere-takilan-kiliflar', 1, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (52, N'Ultra İnce Kılıflar', N'ultra-ince-kiliflar', 1, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (53, N'Klavyeli Kılıflar', N'klavyeli-kiliflar', 1, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (54, N'İlginç Kılıflar', N'ilginc-kiliflar', 1, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (55, N'Kol Bantı Kılıflar', N'kol-banti-kiliflar', 1, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (56, N'Taraftar Kılıfları', N'taraftar-kiliflari', 1, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (57, N'Fenerbahçe Kılıfları', N'fenerbahce-kiliflari', 1, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (58, N'Galatasaray Kılıfları', N'galatasaray-kiliflari', 1, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (59, N'Beşiktaş Kılıfları', N'besiktas-kiliflari', 1, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (60, N'Ahşap Kılıflar', N'ahsap-kiliflar', 1, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (61, N'Ultra Koruma Kılıflar', N'ultra-koruma-kiliflar', 1, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (62, N'Bluetooth Kulaklıklar', N'bluetooth-kulakliklar', 5, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (63, N'Kulaklık Ara Kablolar', N'kulaklik-ara-kablolar', 5, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (64, N'Fermuarlı Kulaklıklar', N'fermuarli-kulakliklar', 5, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (65, N'Kulak Askılı Kulaklıklar', N'kulak-askili-kulakliklar', 5, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (66, N'Mikrofonlu Kulaklıklar', N'mikrofonlu-kulakliklar', 5, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (67, N'Kulak İçi Kulaklıklar', N'kulak-ici-kulakliklar', 5, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (68, N'Kumandalı Kulaklıklar', N'kumandali-kulakliklar', 5, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (69, N'Hoparlorler', N'hoparlorler', 5, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (70, N'Oto Tablet Tutucular', N'oto-tablet-tutucular', 6, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (71, N'Telefon Tutucular', N'telefon-tutucular', 6, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (72, N'Koltuk Arkası Tutucular', N'koltuk-arkasi-tutucular', 6, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (73, N'Araç Kitleri', N'arac-kitleri', 6, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (74, N'Tukenmez Kalemli Stylus Kalemler', N'tukenmez-kalemli-stylus-kalemler', 8, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (75, N'Cihaza Ozel Stylus Kalemler', N'cihaza-ozel-stylus-kalemler', 8, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (76, N'Lazer Işıklı Stylus Kalemler', N'lazer-isikli-stylus-kalemler', 8, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (77, N'Yedek Bataryalar', N'yedek-bataryalar', 9, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (78, N'Yüksek Kapasiteli Bataryalar', N'yuksek-kapasiteli-bataryalar', 9, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (79, N'Şarjlı Kılıflar', N'sarjli-kiliflar', 9, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (80, N'Ultra Micro SD Hafıza Kartları', N'ultra-micro-sd-hafiza-kartlari', 10, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (81, N'Micro SD Hafıza Kartları', N'micro-sd-hafiza-kartlari', 9, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (82, N'Telefon Küpeleri', N'telefon-kupeleri', 12, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (83, N'Sim Kart Kesiciler', N'sim-kart-kesiciler', 12, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (84, N'Home Butonu', N'home-butonu', 12, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (85, N'Logo Melodi CDleri', N'logo-melodi-cdleri', 12, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (86, N'Telefon Süsleri', N'telefon-susleri', 12, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (87, N'Stand ve Tutucular', N'stand-ve-tutucular', 12, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (88, N'Temizlik Ürünleri', N'temizlik-urunleri', 12, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (89, N'Demo Oyuncak Telefonlar', N'demo-oyuncak-telefonlar', 12, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (90, N'Klavyeler', N'klavyeler', 12, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (91, N'Akıllı Saatler', N'akilli-saatler', 12, 1)
GO
INSERT [dbo].[E_UrunKategori] ([KategoriID], [KategoriAdi], [RouteKatAdi], [UstKategoriID], [IsActive]) VALUES (92, N'Test Alt_Kategorim', N'test-alt_kategorim', 18, 0)
GO
SET IDENTITY_INSERT [dbo].[E_UrunKategori] OFF
GO
SET IDENTITY_INSERT [dbo].[E_Urunler] ON 

GO
INSERT [dbo].[E_Urunler] ([UrunID], [UrunAdi], [Logo], [EskiFiyat], [YeniFiyat], [Indirim], [Indirimli], [Aciklama], [KategoriAdi], [KatID], [TelefonAdi], [TelefonID], [ModelAdi], [TelefonModelID], [Tiklama], [Link], [Tukendi], [SatisIptal], [IsActive]) VALUES (1, N'Spigen Apple iPhone X Kılıf Air Skin (0.3 mm) Ultra İnce Black', N'2d9dbb-9720348377138.jpg', CAST(99.90 AS Decimal(5, 2)), CAST(61.94 AS Decimal(5, 2)), 38, 1, N'<table style="box-sizing: inherit; margin: 0px; padding: 0px; border-width: initial; border-style: none; border-color: initial; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Helvetica, sans-serif; vertical-align: baseline; outline: 0px; width: 1160px; border-spacing: 0px; color: rgb(72, 72, 72);">
	<tbody style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
		<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
			<td class="no-border" style="box-sizing: inherit; margin: 0px; padding: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; border-width: initial !important; border-style: none !important; border-color: initial !important;">
				<div id="productDescriptionContent" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important;">
					<p style="box-sizing: inherit; margin: 0px; padding: initial; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important;">
						<span style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: helvetica; vertical-align: baseline; outline: 0px; max-width: 1152px !important; letter-spacing: -0.3px;">Spigen Apple iPhone X Kılıf Air Skin (0.3 mm) Ultra İnce Black - 057CS22114</span></p>
					<p style="box-sizing: inherit; margin: 0px; padding: initial; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important;">
						&nbsp;</p>
					<p style="box-sizing: inherit; margin: 0px; padding: initial; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important;">
						&nbsp;</p>
				</div>
			</td>
		</tr>
	</tbody>
</table>
<table class="data-list tech-spec" style="box-sizing: inherit; margin: 0px 0px 10px; padding: 0px; border-width: initial; border-style: none; border-color: initial; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Helvetica, sans-serif; vertical-align: baseline; outline: 0px; width: 1152px; border-spacing: 0px; color: rgb(72, 72, 72);">
	<tbody style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
		<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; background-color: rgb(241, 241, 241);">
			<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
				Kılıf Tipi</th>
			<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
				Arka Kapak</td>
		</tr>
		<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
			<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
				Malzeme Türü</th>
			<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
				Sert Plastik</td>
		</tr>
		<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; background-color: rgb(241, 241, 241);">
			<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
				Su Geçirmezlik</th>
			<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
				Yok</td>
		</tr>
		<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
			<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
				Telefon Modeli</th>
			<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
				iPhone X</td>
		</tr>
		<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; background-color: rgb(241, 241, 241);">
			<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
				Uyumlu Marka</th>
			<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
				Apple</td>
		</tr>
	</tbody>
</table>
<table class="data-list tech-spec" style="box-sizing: inherit; margin: 0px; padding: 0px; border-width: initial; border-style: none; border-color: initial; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Helvetica, sans-serif; vertical-align: baseline; outline: 0px; width: 1152px; border-spacing: 0px; color: rgb(72, 72, 72);">
	<caption style="box-sizing: inherit; margin: 0px; padding: 4px 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; text-align: left;">
		Diğer</caption>
	<tbody style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
		<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; background-color: rgb(241, 241, 241);">
			<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
				Garanti Süresi (Ay)</th>
			<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
				1</td>
		</tr>
		<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
			<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
				Yurtdışına Satış</th>
			<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
				Var</td>
		</tr>
		<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; background-color: rgb(241, 241, 241);">
			<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
				Stok kodu</th>
			<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
				HBV000007VZVN</td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
', N'Ultra İnce Kılıflar', 52, N'Apple', 4, N'iPhone 5S', 107, 3, N'129417454-apple-iphone-5s-ultra-ince-kiliflar-cep-telefonu-aksesuarlari-spigen-apple-iphone-x-kilif-air-skin-0_3-mm-ultra-ince-black.aspx', 0, 0, 1)
GO
INSERT [dbo].[E_Urunler] ([UrunID], [UrunAdi], [Logo], [EskiFiyat], [YeniFiyat], [Indirim], [Indirimli], [Aciklama], [KategoriAdi], [KatID], [TelefonAdi], [TelefonID], [ModelAdi], [TelefonModelID], [Tiklama], [Link], [Tukendi], [SatisIptal], [IsActive]) VALUES (2, N'Kkd Apple iPhone 6 /6S Kılıf Silikon Ultra İnce 360 Tam Koruma', N'51c1c5-9546606477362.jpg', CAST(10.00 AS Decimal(5, 2)), CAST(10.00 AS Decimal(5, 2)), 0, 0, N'<table style="box-sizing: inherit; margin: 0px; padding: 0px; border-width: initial; border-style: none; border-color: initial; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Helvetica, sans-serif; vertical-align: baseline; outline: 0px; width: 1160px; border-spacing: 0px; color: rgb(72, 72, 72);">
	<tbody style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
		<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
			<td class="no-border" style="box-sizing: inherit; margin: 0px; padding: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; border-width: initial !important; border-style: none !important; border-color: initial !important;">
				<div id="productDescriptionContent" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important;">
					<p style="box-sizing: inherit; margin: 0px; padding: initial; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important;">
						<span style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: helvetica; vertical-align: baseline; outline: 0px; max-width: 1152px !important; letter-spacing: -0.3px;">Kkd Apple iPhone 6 /6S Kılıf Silikon Ultra İnce 360 Tam Koruma</span></p>
					<b style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">İphone 6 /6S Silikon 360 Tam Korumalı Ultra İnce Kılıf + Tempered Glass Ekran Koruma Cam Filmi Hediye</b><br style="box-sizing: inherit;" />
					<br style="box-sizing: inherit;" />
					<br style="box-sizing: inherit;" />
					<b style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">Ürünün Özellikleri:</b><br style="box-sizing: inherit;" />
					<br style="box-sizing: inherit;" />
					- 2016 Tasarım Silikon Delux Kılıf.<br style="box-sizing: inherit;" />
					- Yüksek Kalite Termostatik Silikon Malzemeden Üretilmiştir.<br style="box-sizing: inherit;" />
					- Harika Kalıp Kesimi Sayesinde Cihazınıza Mükemmel Uyar.<br style="box-sizing: inherit;" />
					- Uzun Ömürlüdür, Darbelere Karşı Maximum Korur.<br style="box-sizing: inherit;" />
					- Kolayca Takıp Çıkartılabilir.<br style="box-sizing: inherit;" />
					- Diğer Kılıflardan Farkı Ön Yüzünü Kapatmaması Ve Bu Sayede Rahatça Kullanabilmenizdir.<br style="box-sizing: inherit;" />
					- Ultra İncedir.<br style="box-sizing: inherit;" />
					- İç Yüzeyi Termostatik Soft Silikon Jelden Üretildiğinden Darbe Emici Özelliktedir.<br style="box-sizing: inherit;" />
					- Cepte Taşırken Diğer Kılıflar Gibi Rahatsızlık Vermez.<br style="box-sizing: inherit;" />
					- Kılıf Cihazınızı Korumakla Kalmayıp Hoş Bir Görünüm Katacaktır.<br style="box-sizing: inherit;" />
					- Sağlam Ve Dayanıklıdır. Cihazınızı Darbelere Karşı Maximum Korur.<br style="box-sizing: inherit;" />
					- Uzun Süre Kullanıma Uygundur.<br style="box-sizing: inherit;" />
					- Telefonunuz İle Tam Uyumludur.<br style="box-sizing: inherit;" />
					- Avrupa''Dan İthal Başka Ürünler Gibi Yan Sanayi Değildir.<br style="box-sizing: inherit;" />
					- Cihazınızı Tamamen Sararak Su Toz Kirden Tamamen Uzak Tutar.<br style="box-sizing: inherit;" />
					&nbsp;</div>
			</td>
		</tr>
	</tbody>
</table>
<div id="ctl00_ContentPlaceHolder1_ProductControl1_MainControl1_TabControl1_ProductDescription1_CustomContentBottom" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Helvetica, sans-serif; vertical-align: baseline; outline: 0px; color: rgb(72, 72, 72);">
	<div id="flix-minisite" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
		&nbsp;</div>
	<div id="flix-inpage" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
		<div id="flixinpage_1527772710438" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
			&nbsp;</div>
		<div id="flixinpage_1527772710452" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
			&nbsp;</div>
		<div id="flixinpage_1527772710665" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
			&nbsp;</div>
	</div>
</div>
<table style="box-sizing: inherit; margin: 0px; padding: 0px; border-width: initial; border-style: none; border-color: initial; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Helvetica, sans-serif; vertical-align: baseline; outline: 0px; width: 1160px; border-spacing: 0px; color: rgb(72, 72, 72);">
	<tbody style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
		<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
			<td class="no-border" style="box-sizing: inherit; margin: 0px; padding: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; border-width: initial !important; border-style: none !important; border-color: initial !important;">
				<table style="box-sizing: inherit; margin: 0px; padding: 0px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 1160px; border-spacing: 0px;">
					<tbody style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
						<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
							<td style="box-sizing: inherit; margin: 0px; padding: 0px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
								<div class="tealium" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important;">
									<div class="cnet-integration" id="ccs-inline-content" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important;">
										&nbsp;</div>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
				<table style="box-sizing: inherit; margin: 0px; padding: 0px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 1160px; border-spacing: 0px;">
					<tbody style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
						<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
							<td style="box-sizing: inherit; margin: 0px; padding: 0px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
								<div id="productTechSpecContainer" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important;">
									<table class="data-list tech-spec" style="box-sizing: inherit; margin: 0px 0px 10px; padding: 0px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 1152px; border-spacing: 0px;">
										<caption style="box-sizing: inherit; margin: 0px; padding: 4px 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; text-align: left;">
											&nbsp;</caption>
										<tbody style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
											<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; background-color: rgb(241, 241, 241);">
												<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
													Kılıf Tipi</th>
												<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
													Arka Kapak</td>
											</tr>
											<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
												<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
													Malzeme Türü</th>
												<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
													Silikon</td>
											</tr>
											<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; background-color: rgb(241, 241, 241);">
												<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
													Su Geçirmezlik</th>
												<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
													Yok</td>
											</tr>
											<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
												<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
													Telefon Modeli</th>
												<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
													iPhone 6</td>
											</tr>
											<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; background-color: rgb(241, 241, 241);">
												<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
													Uyumlu Marka</th>
												<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
													Apple</td>
											</tr>
										</tbody>
									</table>
									<table class="data-list tech-spec" style="box-sizing: inherit; margin: 0px; padding: 0px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 1152px; border-spacing: 0px;">
										<caption style="box-sizing: inherit; margin: 0px; padding: 4px 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; text-align: left;">
											Diğer</caption>
										<tbody style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
											<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; background-color: rgb(241, 241, 241);">
												<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
													Garanti Süresi (Ay)</th>
												<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
													3</td>
											</tr>
											<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
												<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
													Yurtdışına Satış</th>
												<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
													Yok</td>
											</tr>
											<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; background-color: rgb(241, 241, 241);">
												<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
													Stok kodu</th>
												<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
													HBV000002SK6D</td>
											</tr>
										</tbody>
									</table>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
', N'Ultra İnce Kılıflar', 52, N'Apple', 4, N'iPhone 5C', 106, 1, N'129427454-apple-iphone-5c-ultra-ince-kiliflar-cep-telefonu-aksesuarlari-kkd-apple-iphone-6-6s-kilif-silikon-ultra-ince-360-tam-koruma.aspx', 0, 0, 1)
GO
INSERT [dbo].[E_Urunler] ([UrunID], [UrunAdi], [Logo], [EskiFiyat], [YeniFiyat], [Indirim], [Indirimli], [Aciklama], [KategoriAdi], [KatID], [TelefonAdi], [TelefonID], [ModelAdi], [TelefonModelID], [Tiklama], [Link], [Tukendi], [SatisIptal], [IsActive]) VALUES (3, N'Spigen Apple iPhone 6/6S Kılıf Liquid Crystal 4 Tarafı Tam Koruma - Kapalı', N'27192d-9208049664050.jpg', CAST(79.90 AS Decimal(5, 2)), CAST(46.34 AS Decimal(5, 2)), 42, 1, N'<table style="box-sizing: inherit; margin: 0px; padding: 0px; border-width: initial; border-style: none; border-color: initial; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Helvetica, sans-serif; vertical-align: baseline; outline: 0px; width: 1160px; border-spacing: 0px; color: rgb(72, 72, 72);">
	<tbody style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
		<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
			<td class="no-border" style="box-sizing: inherit; margin: 0px; padding: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; border-width: initial !important; border-style: none !important; border-color: initial !important;">
				<div id="productDescriptionContent" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important;">
					<p style="box-sizing: inherit; margin: 0px; padding: initial; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important;">
						<span style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: helvetica; vertical-align: baseline; outline: 0px; max-width: 1152px !important; letter-spacing: -0.3px;">Spigen Apple iPhone 6/6S Kılıf Liquid Crystal 4 Tarafı Tam Koruma - Kapalı - 11596 - 11368</span></p>
					<p style="box-sizing: inherit; margin: 0px; padding: initial; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important;">
						&nbsp;</p>
					<p style="box-sizing: inherit; margin: 0px; padding: initial; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important;">
						&nbsp;</p>
				</div>
			</td>
		</tr>
	</tbody>
</table>
<table class="data-list tech-spec" style="box-sizing: inherit; margin: 0px 0px 10px; padding: 0px; border-width: initial; border-style: none; border-color: initial; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Helvetica, sans-serif; vertical-align: baseline; outline: 0px; width: 1152px; border-spacing: 0px; color: rgb(72, 72, 72);">
	<tbody style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
		<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; background-color: rgb(241, 241, 241);">
			<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
				Kılıf Tipi</th>
			<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
				Arka Kapak</td>
		</tr>
		<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
			<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
				Malzeme Türü</th>
			<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
				Silikon</td>
		</tr>
		<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; background-color: rgb(241, 241, 241);">
			<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
				Su Geçirmezlik</th>
			<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
				Yok</td>
		</tr>
		<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
			<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
				Telefon Modeli</th>
			<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
				iPhone 6, iPhone 6S</td>
		</tr>
		<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; background-color: rgb(241, 241, 241);">
			<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
				Uyumlu Marka</th>
			<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
				Apple</td>
		</tr>
		<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
			<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
				Ürün Kodu</th>
			<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
				HB000003XBYX</td>
		</tr>
	</tbody>
</table>
<table class="data-list tech-spec" style="box-sizing: inherit; margin: 0px; padding: 0px; border-width: initial; border-style: none; border-color: initial; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Helvetica, sans-serif; vertical-align: baseline; outline: 0px; width: 1152px; border-spacing: 0px; color: rgb(72, 72, 72);">
	<caption style="box-sizing: inherit; margin: 0px; padding: 4px 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; text-align: left;">
		Diğer</caption>
	<tbody style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
		<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; background-color: rgb(241, 241, 241);">
			<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
				Garanti Süresi (Ay)</th>
			<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
				24</td>
		</tr>
		<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
			<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
				Yurtdışına Satış</th>
			<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
				Var</td>
		</tr>
		<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; background-color: rgb(241, 241, 241);">
			<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
				Stok kodu</th>
			<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
				TELKILSGP11596</td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
', N'Silikon Kılıflar', 33, N'Apple', 4, N'iPhone 5', 105, 1, N'129437454-apple-iphone-5-silikon-kiliflar-cep-telefonu-aksesuarlari-spigen-apple-iphone-66s-kilif-liquid-crystal-4-tarafi-tam-koruma--kapali.aspx', 0, 0, 1)
GO
INSERT [dbo].[E_Urunler] ([UrunID], [UrunAdi], [Logo], [EskiFiyat], [YeniFiyat], [Indirim], [Indirimli], [Aciklama], [KategoriAdi], [KatID], [TelefonAdi], [TelefonID], [ModelAdi], [TelefonModelID], [Tiklama], [Link], [Tukendi], [SatisIptal], [IsActive]) VALUES (4, N'Samsung Galaxy Note 3 Kılıf Silikon Dikişli Siyah + Cam', N'c9dc62-9201019945010.jpg', CAST(13.00 AS Decimal(5, 2)), CAST(12.35 AS Decimal(5, 2)), 5, 1, N'<table style="box-sizing: inherit; margin: 0px; padding: 0px; border: none; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Helvetica, sans-serif; vertical-align: baseline; outline: 0px; width: 1160px; border-spacing: 0px; color: rgb(72, 72, 72);">
	<tbody style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
		<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
			<td class="no-border" style="box-sizing: inherit; margin: 0px; padding: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; border: none !important;">
				<div id="productDescriptionContent" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important;">
					<p style="box-sizing: inherit; margin: 0px; padding: initial; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important;">
						<span style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: helvetica; vertical-align: baseline; outline: 0px; max-width: 1152px !important; letter-spacing: -0.3px;">Samsung Galaxy Note 3 Kılıf Silikon Dikişli Siyah + Cam</span></p>
					<pre style="box-sizing: inherit; margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; white-space: pre-line;">
Kolayca takıp çıkartılabilir.
Harika kalıp kesimi sayesinde cihaza mükemmel uyar.
Şebeke, Wi-Fi, GPS sinyallerinde azalmaya neden olmaz.
Kolayca takıp çıkartılabilir.
Sağlığa zararlı materyaller içermez.
Cihazınız üzerindeyken tüm slotlara ve sensörlere kolaylıkla ulaşabilirsiniz.
Darbe ve çarpmalara karşı cihazınızı korur.
Kir ve toza karşı dayanıklıdır.
ALDIĞINIZ ÜRÜN "CEPSESUAR" A ÖZEL ÜRÜNE ZARAR GELMEMESİ ADINA KUTUDA VE AMBALAJDA GÖNDRİLMEKTEDİR.</pre>
				</div>
			</td>
		</tr>
	</tbody>
</table>
<div id="ctl00_ContentPlaceHolder1_ProductControl1_MainControl1_TabControl1_ProductDescription1_CustomContentBottom" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Helvetica, sans-serif; vertical-align: baseline; outline: 0px; color: rgb(72, 72, 72);">
	<div id="flix-minisite" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
		&nbsp;</div>
	<div id="flix-inpage" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
		<div id="flixinpage_1527773249571" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
			&nbsp;</div>
		<div id="flixinpage_1527773249615" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
			&nbsp;</div>
		<div id="flixinpage_1527773249908" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
			&nbsp;</div>
	</div>
</div>
<table style="box-sizing: inherit; margin: 0px; padding: 0px; border: none; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Helvetica, sans-serif; vertical-align: baseline; outline: 0px; width: 1160px; border-spacing: 0px; color: rgb(72, 72, 72);">
	<tbody style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
		<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
			<td class="no-border" style="box-sizing: inherit; margin: 0px; padding: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; border: none !important;">
				<table style="box-sizing: inherit; margin: 0px; padding: 0px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 1160px; border-spacing: 0px;">
					<tbody style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
						<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
							<td style="box-sizing: inherit; margin: 0px; padding: 0px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
								<div class="tealium" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important;">
									<div class="cnet-integration" id="ccs-inline-content" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important;">
										&nbsp;</div>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
				<table style="box-sizing: inherit; margin: 0px; padding: 0px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 1160px; border-spacing: 0px;">
					<tbody style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
						<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
							<td style="box-sizing: inherit; margin: 0px; padding: 0px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
								<div id="productTechSpecContainer" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important;">
									<table class="data-list tech-spec" style="box-sizing: inherit; margin: 0px 0px 10px; padding: 0px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 1152px; border-spacing: 0px;">
										<caption style="box-sizing: inherit; margin: 0px; padding: 4px 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; text-align: left;">
											&nbsp;</caption>
										<tbody style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
											<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; background-color: rgb(241, 241, 241);">
												<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
													Malzeme Türü</th>
												<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
													Silikon</td>
											</tr>
											<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
												<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
													Su Geçirmezlik</th>
												<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
													Yok</td>
											</tr>
											<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; background-color: rgb(241, 241, 241);">
												<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
													Telefon Modeli</th>
												<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
													Galaxy Note 3</td>
											</tr>
											<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
												<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
													Uyumlu Marka</th>
												<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
													Samsung</td>
											</tr>
										</tbody>
									</table>
									<table class="data-list tech-spec" style="box-sizing: inherit; margin: 0px; padding: 0px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 1152px; border-spacing: 0px;">
										<caption style="box-sizing: inherit; margin: 0px; padding: 4px 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; text-align: left;">
											Diğer</caption>
										<tbody style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
											<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; background-color: rgb(241, 241, 241);">
												<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
													Garanti Süresi (Ay)</th>
												<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
													3</td>
											</tr>
											<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
												<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
													Yurtdışına Satış</th>
												<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
													Yok</td>
											</tr>
											<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; background-color: rgb(241, 241, 241);">
												<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
													Stok kodu</th>
												<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
													TELKILCEPSE5285</td>
											</tr>
										</tbody>
									</table>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
', N'Silikon Kılıflar', 33, N'Samsung', 26, N'N7500 Galaxy Note 3 Neo', 1593, 1, N'129447454-samsung-n7500-galaxy-note-3-neo-silikon-kiliflar-cep-telefonu-aksesuarlari-samsung-galaxy-note-3-kilif-silikon-dikisli-siyah--cam.aspx', 0, 0, 1)
GO
INSERT [dbo].[E_Urunler] ([UrunID], [UrunAdi], [Logo], [EskiFiyat], [YeniFiyat], [Indirim], [Indirimli], [Aciklama], [KategoriAdi], [KatID], [TelefonAdi], [TelefonID], [ModelAdi], [TelefonModelID], [Tiklama], [Link], [Tukendi], [SatisIptal], [IsActive]) VALUES (5, N'Samsung Galaxy A7 2017 Çift Katmanlı Tank Kapak Kılıf + Cam Ekran Koruyucu', N'062685-9605237243954.jpg', CAST(45.00 AS Decimal(5, 2)), CAST(36.00 AS Decimal(5, 2)), 20, 1, N'<table style="box-sizing: inherit; margin: 0px; padding: 0px; border-width: initial; border-style: none; border-color: initial; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Helvetica, sans-serif; vertical-align: baseline; outline: 0px; width: 1160px; border-spacing: 0px; color: rgb(72, 72, 72);">
	<tbody style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
		<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
			<td class="no-border" style="box-sizing: inherit; margin: 0px; padding: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; border-width: initial !important; border-style: none !important; border-color: initial !important;">
				<div id="productDescriptionContent" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important;">
					<p style="box-sizing: inherit; margin: 0px; padding: initial; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important;">
						<span style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: helvetica; vertical-align: baseline; outline: 0px; max-width: 1152px !important; letter-spacing: -0.3px;">Samsung Galaxy A7 2017 Çift Katmanlı Tank Kapak Kılıf + Cam Ekran Koruyucu</span></p>
					<pre style="box-sizing: inherit; margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; white-space: pre-line;">
Teleplus Samsung Galaxy A7 2017 Çift Katmanlı Tank Kapak Kılıf Mavi + Cam</pre>
				</div>
			</td>
		</tr>
	</tbody>
</table>
<div id="ctl00_ContentPlaceHolder1_ProductControl1_MainControl1_TabControl1_ProductDescription1_CustomContentBottom" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Helvetica, sans-serif; vertical-align: baseline; outline: 0px; color: rgb(72, 72, 72);">
	<div id="flix-minisite" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
		&nbsp;</div>
	<div id="flix-inpage" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
		<div id="flixinpage_1527773258444" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
			&nbsp;</div>
		<div id="flixinpage_1527773258473" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
			&nbsp;</div>
		<div id="flixinpage_1527773258678" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
			&nbsp;</div>
	</div>
</div>
<table style="box-sizing: inherit; margin: 0px; padding: 0px; border-width: initial; border-style: none; border-color: initial; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Helvetica, sans-serif; vertical-align: baseline; outline: 0px; width: 1160px; border-spacing: 0px; color: rgb(72, 72, 72);">
	<tbody style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
		<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
			<td class="no-border" style="box-sizing: inherit; margin: 0px; padding: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; border-width: initial !important; border-style: none !important; border-color: initial !important;">
				<table style="box-sizing: inherit; margin: 0px; padding: 0px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 1160px; border-spacing: 0px;">
					<tbody style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
						<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
							<td style="box-sizing: inherit; margin: 0px; padding: 0px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
								<div class="tealium" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important;">
									<div class="cnet-integration" id="ccs-inline-content" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important;">
										&nbsp;</div>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
				<table style="box-sizing: inherit; margin: 0px; padding: 0px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 1160px; border-spacing: 0px;">
					<tbody style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
						<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
							<td style="box-sizing: inherit; margin: 0px; padding: 0px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
								<div id="productTechSpecContainer" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important;">
									<table class="data-list tech-spec" style="box-sizing: inherit; margin: 0px 0px 10px; padding: 0px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 1152px; border-spacing: 0px;">
										<caption style="box-sizing: inherit; margin: 0px; padding: 4px 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; text-align: left;">
											&nbsp;</caption>
										<tbody style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
											<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; background-color: rgb(241, 241, 241);">
												<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
													Kılıf Tipi</th>
												<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
													Arka Kapak</td>
											</tr>
											<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
												<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
													Malzeme Türü</th>
												<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
													Sert Plastik</td>
											</tr>
											<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; background-color: rgb(241, 241, 241);">
												<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
													Su Geçirmezlik</th>
												<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
													Yok</td>
											</tr>
											<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
												<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
													Telefon Modeli</th>
												<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
													Galaxy A7</td>
											</tr>
											<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; background-color: rgb(241, 241, 241);">
												<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
													Uyumlu Marka</th>
												<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
													Samsung</td>
											</tr>
										</tbody>
									</table>
									<table class="data-list tech-spec" style="box-sizing: inherit; margin: 0px; padding: 0px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 1152px; border-spacing: 0px;">
										<caption style="box-sizing: inherit; margin: 0px; padding: 4px 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; text-align: left;">
											Diğer</caption>
										<tbody style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
											<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; background-color: rgb(241, 241, 241);">
												<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
													Garanti Süresi (Ay)</th>
												<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
													3</td>
											</tr>
											<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
												<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
													Yurtdışına Satış</th>
												<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
													Yok</td>
											</tr>
											<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; background-color: rgb(241, 241, 241);">
												<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
													Stok kodu</th>
												<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border-width: initial; border-style: none; border-color: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
													HBV000004JO5W</td>
											</tr>
										</tbody>
									</table>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
', N'Kapaklı Kılıflar', 35, N'Samsung', 26, N'i9080 Galaxy Grand', 1525, 1, N'129457454-samsung-i9080-galaxy-grand-kapakli-kiliflar-cep-telefonu-aksesuarlari-samsung-galaxy-a7-2017-cift-katmanli-tank-kapak-kilif--cam-ekran-koruyucu.aspx', 0, 0, 1)
GO
INSERT [dbo].[E_Urunler] ([UrunID], [UrunAdi], [Logo], [EskiFiyat], [YeniFiyat], [Indirim], [Indirimli], [Aciklama], [KategoriAdi], [KatID], [TelefonAdi], [TelefonID], [ModelAdi], [TelefonModelID], [Tiklama], [Link], [Tukendi], [SatisIptal], [IsActive]) VALUES (6, N'Samsung Galaxy J5 Kılıf Kapaklı Pencereli Ellite Case Deri Siyah', N'e9b50a-9190432636978.jpg', CAST(32.00 AS Decimal(5, 2)), CAST(25.60 AS Decimal(5, 2)), 20, 1, N'<table style="box-sizing: inherit; margin: 0px; padding: 0px; border: none; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Helvetica, sans-serif; vertical-align: baseline; outline: 0px; width: 1160px; border-spacing: 0px; color: rgb(72, 72, 72);">
	<tbody style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
		<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
			<td class="no-border" style="box-sizing: inherit; margin: 0px; padding: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; border: none !important;">
				<div id="productDescriptionContent" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important;">
					<p style="box-sizing: inherit; margin: 0px; padding: initial; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important;">
						<span style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: helvetica; vertical-align: baseline; outline: 0px; max-width: 1152px !important; letter-spacing: -0.3px;">Samsung Galaxy J5 Kılıf Kapaklı Pencereli Ellite Case Deri Siyah</span></p>
					<div align="left" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important;">
						<p style="box-sizing: border-box; margin: 0px 0px 10px; padding: initial; border: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: inherit; line-height: 20px; font-family: inherit; vertical-align: baseline; outline: 0px; color: rgb(62, 71, 75); widows: 1; max-width: 1152px !important;">
							Telefonunuz için birebir uyumludur.</p>
						<p style="box-sizing: border-box; margin: 0px 0px 10px; padding: initial; border: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: inherit; line-height: 20px; font-family: inherit; vertical-align: baseline; outline: 0px; color: rgb(62, 71, 75); widows: 1; max-width: 1152px !important;">
							Kapağı açmadan gelen aramaları cevaplayabilir ve konuşma yapabilirsiniz.</p>
						<p style="box-sizing: border-box; margin: 0px 0px 10px; padding: initial; border: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: inherit; line-height: 20px; font-family: inherit; vertical-align: baseline; outline: 0px; color: rgb(62, 71, 75); widows: 1; max-width: 1152px !important;">
							Kılıfın için sert plastik malzemeden üretilmiş olup telefon tam oturur.</p>
						<p style="box-sizing: border-box; margin: 0px 0px 10px; padding: initial; border: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: inherit; line-height: 20px; font-family: inherit; vertical-align: baseline; outline: 0px; color: rgb(62, 71, 75); widows: 1; max-width: 1152px !important;">
							Gizli mıknatısı sayesinde tam kapanır ve istenmeyen durumlar açılmasını önler.</p>
						<p style="box-sizing: border-box; margin: 0px 0px 10px; padding: initial; border: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: inherit; line-height: 20px; font-family: inherit; vertical-align: baseline; outline: 0px; color: rgb(62, 71, 75); widows: 1; max-width: 1152px !important;">
							Ön tarafta telefon modelini belirten metal logo kılıfı şık yapan unsurlardan biridir.</p>
						<p style="box-sizing: border-box; margin: 0px 0px 10px; padding: initial; border: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: inherit; line-height: 20px; font-family: inherit; vertical-align: baseline; outline: 0px; color: rgb(62, 71, 75); widows: 1; max-width: 1152px !important;">
							Telefonu dışardan gelen toz,darbe ve kirlere karşı korur.</p>
						<p style="box-sizing: border-box; margin: 0px 0px 10px; padding: initial; border: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: inherit; line-height: 20px; font-family: inherit; vertical-align: baseline; outline: 0px; color: rgb(62, 71, 75); widows: 1; max-width: 1152px !important;">
							Suni deriden üretilmiştir.</p>
						<span style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 13.3333px; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: none; max-width: 1152px !important; color: rgb(0, 0, 0);"><span style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700 !important; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">Hopiyodi - Lopard ambalajında gönderilecektir.<br style="box-sizing: inherit;" />
						<br style="box-sizing: inherit;" />
						NOT: Lütfen başlıktaki cihazın kodlarının cihazınızla aynı olduğuna emin olunuz.</span></span></div>
				</div>
			</td>
		</tr>
	</tbody>
</table>
<div id="ctl00_ContentPlaceHolder1_ProductControl1_MainControl1_TabControl1_ProductDescription1_CustomContentBottom" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Helvetica, sans-serif; vertical-align: baseline; outline: 0px; color: rgb(72, 72, 72);">
	<div id="flix-minisite" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
		&nbsp;</div>
	<div id="flix-inpage" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
		<div id="flixinpage_1527773261374" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
			&nbsp;</div>
		<div id="flixinpage_1527773261401" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
			&nbsp;</div>
		<div id="flixinpage_1527773261580" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
			&nbsp;</div>
	</div>
</div>
<table style="box-sizing: inherit; margin: 0px; padding: 0px; border: none; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Helvetica, sans-serif; vertical-align: baseline; outline: 0px; width: 1160px; border-spacing: 0px; color: rgb(72, 72, 72);">
	<tbody style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
		<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
			<td class="no-border" style="box-sizing: inherit; margin: 0px; padding: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; border: none !important;">
				<table style="box-sizing: inherit; margin: 0px; padding: 0px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 1160px; border-spacing: 0px;">
					<tbody style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
						<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
							<td style="box-sizing: inherit; margin: 0px; padding: 0px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
								<div class="tealium" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important;">
									<div class="cnet-integration" id="ccs-inline-content" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important;">
										&nbsp;</div>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
				<table style="box-sizing: inherit; margin: 0px; padding: 0px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 1160px; border-spacing: 0px;">
					<tbody style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
						<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
							<td style="box-sizing: inherit; margin: 0px; padding: 0px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
								<div id="productTechSpecContainer" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important;">
									<table class="data-list tech-spec" style="box-sizing: inherit; margin: 0px 0px 10px; padding: 0px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 1152px; border-spacing: 0px;">
										<caption style="box-sizing: inherit; margin: 0px; padding: 4px 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; text-align: left;">
											&nbsp;</caption>
										<tbody style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
											<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; background-color: rgb(241, 241, 241);">
												<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
													Kılıf Tipi</th>
												<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
													Kapaklı Kılıf</td>
											</tr>
											<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
												<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
													Malzeme Türü</th>
												<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
													Suni Deri</td>
											</tr>
											<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; background-color: rgb(241, 241, 241);">
												<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
													Su Geçirmezlik</th>
												<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
													Yok</td>
											</tr>
											<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
												<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
													Telefon Modeli</th>
												<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
													Galaxy J5</td>
											</tr>
											<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; background-color: rgb(241, 241, 241);">
												<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
													Uyumlu Marka</th>
												<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
													Samsung</td>
											</tr>
										</tbody>
									</table>
									<table class="data-list tech-spec" style="box-sizing: inherit; margin: 0px; padding: 0px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 1152px; border-spacing: 0px;">
										<caption style="box-sizing: inherit; margin: 0px; padding: 4px 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; text-align: left;">
											Diğer</caption>
										<tbody style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
											<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; background-color: rgb(241, 241, 241);">
												<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
													Garanti Süresi (Ay)</th>
												<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
													12</td>
											</tr>
											<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
												<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
													Yurtdışına Satış</th>
												<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
													Yok</td>
											</tr>
											<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; background-color: rgb(241, 241, 241);">
												<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
													Stok kodu</th>
												<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
													TELKILHOPI00760-SI</td>
											</tr>
										</tbody>
									</table>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
', N'Pencereli Kılıflar', 36, N'Samsung', 26, N'Galaxy S4', 1450, 1, N'129467454-samsung-galaxy-s4-pencereli-kiliflar-cep-telefonu-aksesuarlari-samsung-galaxy-j5-kilif-kapakli-pencereli-ellite-case-deri-siyah.aspx', 0, 0, 1)
GO
INSERT [dbo].[E_Urunler] ([UrunID], [UrunAdi], [Logo], [EskiFiyat], [YeniFiyat], [Indirim], [Indirimli], [Aciklama], [KategoriAdi], [KatID], [TelefonAdi], [TelefonID], [ModelAdi], [TelefonModelID], [Tiklama], [Link], [Tukendi], [SatisIptal], [IsActive]) VALUES (7, N'Case 4U Samsung Galaxy J5 Prime Cam Ekran Koruyucu', N'51e01c-9611694997554.jpg', CAST(24.90 AS Decimal(5, 2)), CAST(9.96 AS Decimal(5, 2)), 60, 1, N'<table class="data-list tech-spec" style="box-sizing: inherit; margin: 0px 0px 10px; padding: 0px; border: none; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Helvetica, sans-serif; vertical-align: baseline; outline: 0px; width: 1152px; border-spacing: 0px; color: rgb(72, 72, 72);">
	<tbody style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
		<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; background-color: rgb(241, 241, 241);">
			<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
				Kılıf Tipi</th>
			<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
				Ekran Koruyucu</td>
		</tr>
		<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
			<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
				Telefon Modeli</th>
			<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
				Galaxy J5</td>
		</tr>
		<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; background-color: rgb(241, 241, 241);">
			<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
				Uyumlu Marka</th>
			<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
				Samsung</td>
		</tr>
	</tbody>
</table>
<table class="data-list tech-spec" style="box-sizing: inherit; margin: 0px; padding: 0px; border: none; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Helvetica, sans-serif; vertical-align: baseline; outline: 0px; width: 1152px; border-spacing: 0px; color: rgb(72, 72, 72);">
	<caption style="box-sizing: inherit; margin: 0px; padding: 4px 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; text-align: left;">
		Diğer</caption>
	<tbody style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
		<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; background-color: rgb(241, 241, 241);">
			<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
				Garanti Süresi (Ay)</th>
			<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
				3</td>
		</tr>
		<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
			<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
				Yurtdışına Satış</th>
			<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
				Var</td>
		</tr>
		<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; background-color: rgb(241, 241, 241);">
			<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
				Stok kodu</th>
			<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
				HBV000004OSE</td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
', N'Cam Ekran Koruyucu Filmler', 13, N'Samsung', 26, N'Google Nexus 10', 1474, 1, N'129477454-samsung-google-nexus-10-cam-ekran-koruyucu-filmler-cep-telefonu-aksesuarlari-case-4u-samsung-galaxy-j5-prime-cam-ekran-koruyucu.aspx', 0, 0, 1)
GO
INSERT [dbo].[E_Urunler] ([UrunID], [UrunAdi], [Logo], [EskiFiyat], [YeniFiyat], [Indirim], [Indirimli], [Aciklama], [KategoriAdi], [KatID], [TelefonAdi], [TelefonID], [ModelAdi], [TelefonModelID], [Tiklama], [Link], [Tukendi], [SatisIptal], [IsActive]) VALUES (8, N'CaseUp Samsung Galaxy A7 2016 CaseUp Ultra İnce Nano Cam', N'6d214b-9639300726834.jpg', CAST(14.00 AS Decimal(5, 2)), CAST(14.00 AS Decimal(5, 2)), 0, 0, N'<table style="box-sizing: inherit; margin: 0px; padding: 0px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 1160px; border-spacing: 0px;">
	<tbody style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
		<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
			<td class="no-border" style="box-sizing: inherit; margin: 0px; padding: 0px; border: none !important; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
				<div id="productDescriptionContent" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important;">
					<p style="box-sizing: inherit; margin: 0px; padding: initial; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important;">
						<span style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: helvetica; vertical-align: baseline; outline: 0px; max-width: 1152px !important; letter-spacing: -0.3px;">CaseUp Samsung Galaxy A7 2016 CaseUp Ultra İnce Nano Cam</span></p>
					<pre style="box-sizing: inherit; margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; white-space: pre-line;">
CaseUp Samsung Galaxy A7 2016 CaseUp Ultra İnce Nano Cam</pre>
				</div>
			</td>
		</tr>
	</tbody>
</table>
<div id="ctl00_ContentPlaceHolder1_ProductControl1_MainControl1_TabControl1_ProductDescription1_CustomContentBottom" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
	<div id="flix-minisite" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
		&nbsp;</div>
	<div id="flix-inpage" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
		<div id="flixinpage_1527774955444" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
			&nbsp;</div>
		<div id="flixinpage_1527774955463" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
			&nbsp;</div>
		<div id="flixinpage_1527774955638" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
			&nbsp;</div>
	</div>
</div>
<table style="box-sizing: inherit; margin: 0px; padding: 0px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 1160px; border-spacing: 0px;">
	<tbody style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
		<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
			<td class="no-border" style="box-sizing: inherit; margin: 0px; padding: 0px; border: none !important; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
				<table style="box-sizing: inherit; margin: 0px; padding: 0px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 1160px; border-spacing: 0px;">
					<tbody style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
						<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
							<td style="box-sizing: inherit; margin: 0px; padding: 0px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
								<div class="tealium" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important;">
									<div class="cnet-integration" id="ccs-inline-content" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important;">
										&nbsp;</div>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
				<table style="box-sizing: inherit; margin: 0px; padding: 0px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 1160px; border-spacing: 0px;">
					<tbody style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
						<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
							<td style="box-sizing: inherit; margin: 0px; padding: 0px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
								<div id="productTechSpecContainer" style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important;">
									<table class="data-list tech-spec" style="box-sizing: inherit; margin: 0px 0px 10px; padding: 0px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 1152px; border-spacing: 0px;">
										<caption style="box-sizing: inherit; margin: 0px; padding: 4px 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; text-align: left;">
											&nbsp;</caption>
										<tbody style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
											<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; background-color: rgb(241, 241, 241);">
												<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
													Kılıf Tipi</th>
												<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
													Ekran Koruyucu</td>
											</tr>
											<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
												<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
													Malzeme Türü</th>
												<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
													Polimer</td>
											</tr>
											<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; background-color: rgb(241, 241, 241);">
												<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
													Su Geçirmezlik</th>
												<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
													Yok</td>
											</tr>
											<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
												<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
													Telefon Modeli</th>
												<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
													Galaxy A7</td>
											</tr>
											<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; background-color: rgb(241, 241, 241);">
												<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
													Uyumlu Marka</th>
												<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
													Samsung</td>
											</tr>
										</tbody>
									</table>
									<table class="data-list tech-spec" style="box-sizing: inherit; margin: 0px; padding: 0px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 1152px; border-spacing: 0px;">
										<caption style="box-sizing: inherit; margin: 0px; padding: 4px 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; text-align: left;">
											Diğer</caption>
										<tbody style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
											<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; background-color: rgb(241, 241, 241);">
												<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
													Garanti Süresi (Ay)</th>
												<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
													3</td>
											</tr>
											<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
												<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
													Yurtdışına Satış</th>
												<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
													Yok</td>
											</tr>
											<tr style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; background-color: rgb(241, 241, 241);">
												<th style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; width: 460px; text-align: left;">
													Stok kodu</th>
												<td style="box-sizing: inherit; margin: 0px; padding: 4px 10px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
													HBV000005JYR7</td>
											</tr>
										</tbody>
									</table>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
	</tbody>
</table>
<br />
<div style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">
	&nbsp;</div>
', N'Şeffaf Ekran Koruyucu Filmler', 17, N'Samsung', 26, N'i9060 Galaxy Grand Neo', 1521, 1, N'129487454-samsung-i9060-galaxy-grand-neo-seffaf-ekran-koruyucu-filmler-cep-telefonu-aksesuarlari-caseup-samsung-galaxy-a7-2016-caseup-ultra-ince-nano-cam.aspx', 0, 0, 1)
GO
INSERT [dbo].[E_Urunler] ([UrunID], [UrunAdi], [Logo], [EskiFiyat], [YeniFiyat], [Indirim], [Indirimli], [Aciklama], [KategoriAdi], [KatID], [TelefonAdi], [TelefonID], [ModelAdi], [TelefonModelID], [Tiklama], [Link], [Tukendi], [SatisIptal], [IsActive]) VALUES (9, N'Syrox Samsung Note 3 Ekran Koruyucu', N'55b324-9573523652658.jpg', CAST(5.00 AS Decimal(5, 2)), CAST(4.50 AS Decimal(5, 2)), 10, 1, N'<div style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: normal; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; outline: 0px; position: relative; text-align: center; color: rgb(0, 51, 0); max-width: 1152px !important;">
	<span style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: 36pt; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important; position: relative; color: rgb(255, 0, 0);">SYROX KIRILMAZ CAM FİLMİ TEMPERLİ&nbsp;</span></div>
<div style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: normal; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; outline: 0px; position: relative; text-align: center; color: rgb(0, 51, 0); max-width: 1152px !important;">
	<span style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: 36pt; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important; position: relative; color: rgb(255, 0, 0);">&nbsp;</span></div>
<div style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: normal; font-family: Helvetica, sans-serif; vertical-align: baseline; outline: 0px; color: rgb(72, 72, 72); position: relative; text-align: center; max-width: 1152px !important;">
	<div style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: normal; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important; position: relative;">
		<font color="#ff0000" face="Arial, Helvetica, sans-serif" style="box-sizing: inherit;"><span style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 48px; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important;"><span style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700 !important; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">''''İTHALATCISINDAN UYGUN FİYATA''''</span></span></font></div>
	<div style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: normal; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important; position: relative;">
		<font color="#00b0f0" face="Arial, Helvetica, sans-serif" style="box-sizing: inherit;"><span style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 48px; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important;"><span style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700 !important; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">Türkiyenin HerYerine ÜCRETSİZ KARGO</span></span></font></div>
	<div style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: normal; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important; position: relative;">
		&nbsp;</div>
	<div style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: normal; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important; position: relative;">
		<font color="#000000" face="Arial, Helvetica, sans-serif" style="box-sizing: inherit;"><span style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 48px; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important;"><span style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700 !important; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">NE ZAMANINIZI BOŞA HARCAYIN!!! NE PARANIZI!!!</span></span></font></div>
	<div style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: normal; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important; position: relative;">
		<font color="#000000" face="Arial, Helvetica, sans-serif" style="box-sizing: inherit;"><span style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 48px; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important;"><span style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700 !important; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">1.KALİTE ÜRÜN</span></span></font></div>
	<div style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: normal; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important; position: relative;">
		&nbsp;</div>
	<div style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: normal; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important; position: relative;">
		&nbsp;</div>
	<div style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: normal; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important; position: relative;">
		<font color="#000000" face="Arial, Helvetica, sans-serif" style="box-sizing: inherit;"><span style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 48px; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important;"><span style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700 !important; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">Usams Tempered Glass Ekran Koruma Cam Filmi</span></span></font></div>
	<div style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: normal; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important; position: relative;">
		<font color="#000000" face="Arial, Helvetica, sans-serif" style="box-sizing: inherit;"><span style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 48px; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important;"><span style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700 !important; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">Tempered Glass: &nbsp; &nbsp; &nbsp; &nbsp; Kimyasal işlemlerle güçlendirilmiş, çok yüksek derecedeki darbelere dayanıklı camdan üretilmiştir. Telefonunuzu diğer tüm ekran koruyucu filmlerden daha iyi korur.</span></span></font></div>
	<div style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: normal; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important; position: relative;">
		<font color="#000000" face="Arial, Helvetica, sans-serif" style="box-sizing: inherit;"><span style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 48px; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important;"><span style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700 !important; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">Çizilmeye Dayanıklı: &nbsp; &nbsp; &nbsp; &nbsp; Sertliği 8-9H?dir, bıçak, anahtar gibi keskin objelerle bile çizilmez. Çok büyük darbelerde kırılarak (cam gibi parçalanmaz, tehlike oluşturmaz) darbeyi emerek telefonunuzun ekranını korur.</span></span></font></div>
	<div style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: normal; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important; position: relative;">
		<font color="#000000" face="Arial, Helvetica, sans-serif" style="box-sizing: inherit;"><span style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 48px; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important;"><span style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700 !important; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">İnce ve Dokunulur: &nbsp; &nbsp; &nbsp; &nbsp; Dokunmatik ekranın hassasiyetini kesinlikle etkilemez. Uzun süre ekranınızı korur. Çıkarmak istediğinizde kolayca sökülebilir. Ekran üzerinde herhangi bir iz bırakmaz.</span></span></font></div>
	<div style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: normal; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important; position: relative;">
		<font color="#000000" face="Arial, Helvetica, sans-serif" style="box-sizing: inherit;"><span style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 48px; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important;"><span style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700 !important; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">Tam Uyum: &nbsp; &nbsp; &nbsp; &nbsp; Hem uygulama kolaylığı hem de güçlü ekran koruması için cihazınızın ekran ölçülerine tam uyumludur.</span></span></font></div>
	<div style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: normal; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important; position: relative;">
		<font color="#000000" face="Arial, Helvetica, sans-serif" style="box-sizing: inherit;"><span style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 48px; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important;"><span style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700 !important; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">&nbsp;</span></span></font></div>
	<div style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: normal; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important; position: relative;">
		<font color="#000000" face="Arial, Helvetica, sans-serif" style="box-sizing: inherit;"><span style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 48px; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px; max-width: 1152px !important;"><span style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700 !important; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: 0px;">HAVA KABARCIGI YAPMAZ TELEFONUNUZUN CIZILMESİNİ ENGELLER</span></span></font></div>
</div>
<p>
	&nbsp;</p>
', N'Tam Gövde Koruyucu Filmler', 18, N'Samsung', 26, N'Galaxy Note 3', 1434, 2, N'129497454-samsung-galaxy-note-3-tam-govde-koruyucu-filmler-cep-telefonu-aksesuarlari-syrox-samsung-note-3-ekran-koruyucu.aspx', 0, 0, 1)
GO
INSERT [dbo].[E_Urunler] ([UrunID], [UrunAdi], [Logo], [EskiFiyat], [YeniFiyat], [Indirim], [Indirimli], [Aciklama], [KategoriAdi], [KatID], [TelefonAdi], [TelefonID], [ModelAdi], [TelefonModelID], [Tiklama], [Link], [Tukendi], [SatisIptal], [IsActive]) VALUES (10, N'Case 4U Apple iPhone 5/5s Cam Ekran Koruyucu ', N'64aabe-9619565314098.jpg', CAST(25.90 AS Decimal(5, 2)), CAST(9.07 AS Decimal(5, 2)), 65, 1, N'<table class="data-list tech-spec">
	<caption>
		Diğer</caption>
	<tbody>
		<tr>
			<th>
				Garanti Süresi (Ay)</th>
			<td>
				3</td>
		</tr>
		<tr>
			<th>
				Yurtdışına Satış</th>
			<td>
				Var</td>
		</tr>
		<tr>
			<th>
				Stok kodu</th>
			<td>
				TELKILCS4UIP5SGLSE</td>
		</tr>
	</tbody>
</table>
<table class="data-list tech-spec">
	<tbody>
		<tr>
			<th>
				Kılıf Tipi</th>
			<td>
				Ekran Koruyucu</td>
		</tr>
		<tr>
			<th>
				Malzeme Türü</th>
			<td>
				Cam</td>
		</tr>
		<tr>
			<th>
				Su Geçirmezlik</th>
			<td>
				Yok</td>
		</tr>
		<tr>
			<th>
				Telefon Modeli</th>
			<td>
				iPhone 5, iPhone 5S</td>
		</tr>
		<tr>
			<th>
				Uyumlu Marka</th>
			<td>
				Apple</td>
		</tr>
		<tr>
			<th>
				Ürün Kodu</th>
			<td>
				iPhone 5/5s</td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
', N'Cam Ekran Koruyucu Filmler', 13, N'Apple', 4, N'iPhone 5S', 107, 1, N'1294107454-apple-iphone-5s-cam-ekran-koruyucu-filmler-cep-telefonu-aksesuarlari-case-4u-apple-iphone-55s-cam-ekran-koruyucu-.aspx', 0, 0, 1)
GO
INSERT [dbo].[E_Urunler] ([UrunID], [UrunAdi], [Logo], [EskiFiyat], [YeniFiyat], [Indirim], [Indirimli], [Aciklama], [KategoriAdi], [KatID], [TelefonAdi], [TelefonID], [ModelAdi], [TelefonModelID], [Tiklama], [Link], [Tukendi], [SatisIptal], [IsActive]) VALUES (11, N'CaseUp iPhone 5 5S CaseUp Ekran Koruyucu ', N'd900d4-9512617639986.jpg', CAST(9.00 AS Decimal(5, 2)), CAST(9.00 AS Decimal(5, 2)), 0, 0, N'<div id="productDescriptionContent">
	<p>
		<span style="color:f28b00;font-family: helvetica;font-weight: bold;font-size:18px;letter-spacing:-0.3px">CaseUp iPhone 5 5S CaseUp Ekran Koruyucu</span></p>
</div>
<table>
	<tbody>
		<tr>
			<td class="no-border">
				<table>
					<tbody>
						<tr>
							<td>
								<div class="tealium">
									<div class="cnet-integration" id="ccs-inline-content">
										&nbsp;</div>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
				<table>
					<tbody>
						<tr>
							<td>
								<div id="productTechSpecContainer">
									<table class="data-list tech-spec">
										<caption>
											&nbsp;</caption>
										<tbody>
											<tr>
												<th>
													Kılıf Tipi</th>
												<td>
													Ekran Koruyucu</td>
											</tr>
											<tr>
												<th>
													Malzeme Türü</th>
												<td>
													Polimer</td>
											</tr>
											<tr>
												<th>
													Su Geçirmezlik</th>
												<td>
													Yok</td>
											</tr>
											<tr>
												<th>
													Telefon Modeli</th>
												<td>
													iPhone 5</td>
											</tr>
											<tr>
												<th>
													Uyumlu Marka</th>
												<td>
													Apple</td>
											</tr>
										</tbody>
									</table>
									<table class="data-list tech-spec">
										<caption>
											Diğer</caption>
										<tbody>
											<tr>
												<th>
													Garanti Süresi (Ay)</th>
												<td>
													3</td>
											</tr>
											<tr>
												<th>
													Yurtdışına Satış</th>
												<td>
													Yok</td>
											</tr>
											<tr>
												<th>
													Stok kodu</th>
												<td>
													HBV000001X7GU</td>
											</tr>
										</tbody>
									</table>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
	</tbody>
</table>
<a data-bind="click: feedback.showInaccurateContentPopup.bind($data.feedback)" id="inaccurate-content-link"> </a>', N'Darbe Emici Koruyucu Filmler', 14, N'Apple', 4, N'iPhone 5', 105, 1, N'1294117454-apple-iphone-5-darbe-emici-koruyucu-filmler-cep-telefonu-aksesuarlari-caseup-iphone-5-5s-caseup-ekran-koruyucu-.aspx', 0, 0, 1)
GO
INSERT [dbo].[E_Urunler] ([UrunID], [UrunAdi], [Logo], [EskiFiyat], [YeniFiyat], [Indirim], [Indirimli], [Aciklama], [KategoriAdi], [KatID], [TelefonAdi], [TelefonID], [ModelAdi], [TelefonModelID], [Tiklama], [Link], [Tukendi], [SatisIptal], [IsActive]) VALUES (12, N'Case 4u Apple iPhone SE Silikon Kılıf Şeffaf + Cam Ekran Koruyucu ', N'61eebe-wwewe332323.jpg', CAST(34.90 AS Decimal(5, 2)), CAST(16.05 AS Decimal(5, 2)), 54, 1, N'<table class="data-list tech-spec">
	<caption>
		Diğer</caption>
	<tbody>
		<tr>
			<th>
				Garanti Süresi (Ay)</th>
			<td>
				3</td>
		</tr>
		<tr>
			<th>
				Yurtdışına Satış</th>
			<td>
				Var</td>
		</tr>
		<tr>
			<th>
				Stok kodu</th>
			<td>
				HBV000003CHNZ</td>
		</tr>
	</tbody>
</table>
<table class="data-list tech-spec">
	<tbody>
		<tr>
			<th>
				Kılıf Tipi</th>
			<td>
				Arka Kapak</td>
		</tr>
		<tr>
			<th>
				Telefon Modeli</th>
			<td>
				iPhone 5, iPhone 5S</td>
		</tr>
		<tr>
			<th>
				Uyumlu Marka</th>
			<td>
				Apple</td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
', N'Şeffaf Ekran Koruyucu Filmler', 17, N'Apple', 4, N'iPod Touch 5', 108, 1, N'1294127454-apple-ipod-touch-5-seffaf-ekran-koruyucu-filmler-cep-telefonu-aksesuarlari-case-4u-apple-iphone-se-silikon-kilif-seffaf--cam-ekran-koruyucu-.aspx', 0, 0, 1)
GO
INSERT [dbo].[E_Urunler] ([UrunID], [UrunAdi], [Logo], [EskiFiyat], [YeniFiyat], [Indirim], [Indirimli], [Aciklama], [KategoriAdi], [KatID], [TelefonAdi], [TelefonID], [ModelAdi], [TelefonModelID], [Tiklama], [Link], [Tukendi], [SatisIptal], [IsActive]) VALUES (13, N'Apple AirPods Stereo Bluetooth Kulaklık- MMEF2TU/A (Apple Türkiye Garantili) ', N'9fe35a-9541175902258.jpg', CAST(899.90 AS Decimal(5, 2)), CAST(782.91 AS Decimal(5, 2)), 13, 1, N'<div id="productDescriptionContent">
	<p>
		<span style="color:f28b00;font-family: helvetica;font-weight: bold;font-size:18px;letter-spacing:-0.3px">Apple AirPods Stereo Bluetooth Kulaklık- MMEF2TU/A (Apple Türkiye Garantili)</span></p>
	<div id="productDescriptionContent">
		<div class="sfProductDesc">
			<div class="container contain-lg-5 contain-md-4 contain-sm-5">
				<div class="row">
					<div class="col lg-2 md-5 sm-5">
						<div id="img-1">
							<img alt="" src="https://images.hepsiburada.net/assets/ProductDescription/201803/4112c54b-9c97-4342-bf33-4798c8da0bff.jpg" /></div>
					</div>
					<div class="col lg-3 md-5 sm-5">
						<h2 id="h2">
							Apple AirPods Stereo Bluetooth Kulaklık- MMEF2TU/ (Apple Türkiye Garantili) Özellikleri</h2>
						<div id="yazi-1">
							<h3>
								Apple Airpods Hepsiburada Farkıyla!</h3>
							<p>
								Teknoloji geliştikçe kullanıcıların hayatını kolaylaştıracak birçok yenilik ortaya çıkıyor. Apple markası da fonksiyonel ve estetik ürünleriyle farkını ortaya koyuyor. Markanın tasarladığı Apple AirPods, kablosuz kulaklık deneyimine yeni bir soluk getiriyor. Kabloların ortaya çıkardığı karışıklıklardan kurtulmayı sağlayan ürün, zarif görünümüyle de beğeni topluyor. Kablosuz kulaklıklar, ses kaliteleriyle de müzikseverlerin beğenisini kazanıyor. Desteklenen sürümlere sahip iPhone, iPad, Mac ve Apple Watch ürünleriyle uyum sağlayan ürün, işlevselliğiyle dikkat çekiyor. Pratik bağlantı ve eşleşme imkanlarıyla öne çıkan Apple AirPods fiyatı ile de beklentileri fazlasıyla karşılıyor. Ergonomik tasarımıyla kulağa ideal biçimde oturan AirPods sayesinde konforlu bir kullanım süreci yaşayabilirsiniz. Ürün, sahip olduğu Apple W1 çipi ile üst düzey bir performans ortaya çıkarıyor. Apple W1 çipi, düşük seviyedeki güç tüketimiyle de adından söz ettiriyor. Kolayca kullanıma hazır hale gelen ürünler, kablosuz kulaklıkla müzik dinleme deneyimine farklı bir boyut kazandırıyor. Hareket ivme ölçer ve optik sensörlere sahip olan ürün, kulağa takılı olduğunu anlıyor ve çıkarıldığında duraklıyor. Sesi azaltmak, yükseltmek ya da şarkıyı değiştirmek için ise kulaklıklara iki kez dokunup Siriyi aktifleştirmek yeterli oluyor. AirPods ile ürüne bağlı olan Apple cihazları arasında geçiş yapabilmek de olanaklı hale geliyor. Kullanıcı dostu Apple AirPods özellikleri sayesinde, kablo sorunu yaşamadan müzik dinleyebilir ve telefon görüşmeleri yapabilirsiniz.</p>
							<p>
								&nbsp;</p>
							<h3 style="box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 24px; line-height: 1.2; font-family: AvenirNextLTPro, Helvetica, sans-serif; vertical-align: baseline; outline: 0px; color: #484848;">
								Apple Airpods Özellikleri!</h3>
							<p>
								<span style="color: #484848; font-family: Helvetica, sans-serif;">Bir sefer şarj edilerek 5 saate kadar dinleme süresi sunan Apple AirPods pil ömrüyle beğeni topluyor. Kulaklıkları şarj etmek için şık görünümlü kasasına yerleştirmek yetiyor. Ürünü hızlı bir şekilde şarj etmek gerektiğinde, kasasında sadece 15 dakika şarj olmasını sağlayarak 3 saate yakın dinleme süresine kavuşabilmek mümkün oluyor. Uzun süreli kesintisiz müzik zevki yaşatan ürün, ses kalitesiyle de dikkatleri üzerine çekiyor. AirPods ile farklı ses tonları en iyi şekilde hissedilebiliyor. Özgün dizaynı ile kullanım kolaylığı sağlayan ürün, müzik tutkunları için nitelikli bir ses sunuyor. Apple AirPods satın al önerisinde bulunan kullanıcıların internetteki yorumlarında da ürünün ses kalitesi hakkında değerlendirmeler bulabilirsiniz. Müzik dinlemeyi zevkli hale getiren gelişmiş Apple Airpods sizlerle.</span></p>
						</div>
					</div>
				</div>
			</div>
			<div class="container contain-lg-5 contain-md-4 contain-sm-5">
				<div class="row">
					<div class="col lg-3 md-5 sm-5">
						<div id="yazi-2">
							<p>
								<span style="color: #484848; font-family: Helvetica, sans-serif;">&nbsp;</span></p>
							<p>
								&nbsp;</p>
							<p>
								&nbsp;</p>
							<p>
								&nbsp;</p>
							<p>
								&nbsp;</p>
							<p>
								&nbsp;</p>
							<p>
								<span style="color: #484848; font-family: Helvetica, sans-serif;">Apple AirPods özellikleri, telefon görüşmesi yaparken de işe yarıyor. Arka plandaki istenmeyen sesleri filtreleyen hüzmeleme özellikli çift mikrofonla konuşmalarınız karşı tarafa anlaşılır biçimde ulaşabiliyor. Sesinize başarılı bir şekilde odaklanan mikrofon sayesinde, rahat ve kaliteli telefon konuşmaları yapabilmek mümkün oluyor. Kulaklıkların şarj işleminin de gerçekleştiği zarif kasa, taşıma kolaylığı da sunuyor. Dekoratif tasarımlı bu kutu çantalarda kolay bir şekilde taşınabiliyor. Küçük ve hafif yapısıyla beğeni toplayan ürünün sağlamlığı da öne çıkan özellikleri arasında yer alıyor. Apple markasının özgün tasarımı ile şekillenen kulaklıklar, kablosuz kullanım deneyimini verimli bir hale getiriyor. Kablo karmaşasına son veren kulaklıklar sayesinde, telefon görüşmelerinizi konforlu bir şekilde gerçekleştirebilirsiniz.</span></p>
						</div>
					</div>
					<div class="col lg-2 md-5 sm-5">
						<div id="img-2">
							<img alt="" src="https://images.hepsiburada.net/assets/ProductDescription/201803/ac484dfa-0b01-4e3d-a84f-0fec279fee7b.jpg" /></div>
					</div>
				</div>
			</div>
			<div class="container contain-lg-5 contain-md-4 contain-sm-5">
				<div class="row">
					<div class="col lg-2 md-5 sm-5">
						<div id="img-3">
							<img alt="" src="https://images.hepsiburada.net/assets/ProductDescription/201803/37c6aaac-4c5a-41b7-b168-16241912159e.jpg" /></div>
					</div>
					<div class="col lg-3 md-5 sm-5">
						<div id="yazi-3">
							<p>
								&nbsp;</p>
							<h3>
								&nbsp;</h3>
							<h3>
								&nbsp;</h3>
							<h3>
								Apple Airpods ile Tanışın!</h3>
							<p>
								AirPods güçlü çipi, nitelikli ses çıkışı ve ideal pil ömrü sayesinde tam bir bütünlük oluşturuyor. Hareket halindeyken de rahatça müzik dinleyebilme imkanı yaratan kablosuz kulaklıklar keyifle kullanılabiliyor. Eşleşmelerini hızlı bir şekilde gerçekleştirebilen ürün gelişmiş nitelikleriyle çağın yenilikçi teknolojilerine ayak uydurabilmenizi sağlıyor. Apple AirPods fiyatı ve özellikleriyle ideal bir performans dengesi yaratıyor. Kulaklıkların tek ya da çift olarak kullanılabilmesi de fonksiyonelliği oldukça arttırıyor. Hem ses kalitesi hem de göze hoş gelen tasarımıyla ilgi çeken ürün, bağlantı olanaklarıyla da beklentileri karşılıyor. Ürünü şarj etmeye ve taşımaya olanak tanıyan kasa da Apple zarafetini yansıtan dizaynı ile beğeni topluyor. AirPods sayesinde sürekli birbirine dolaşan kablolardan kurtulup özgürce müzik dinleyebilirsiniz.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<table>
	<tbody>
		<tr>
			<td>
				<div class="tealium">
					<div class="cnet-integration" id="ccs-inline-content">
						&nbsp;</div>
				</div>
			</td>
		</tr>
	</tbody>
</table>
<table class="data-list tech-spec">
	<caption>
		&nbsp;</caption>
	<tbody>
		<tr>
			<th>
				Çift Telefon Desteği</th>
			<td>
				Yok</td>
		</tr>
		<tr>
			<th>
				Garanti Tipi</th>
			<td>
				Resmi Distribütör Garantili</td>
		</tr>
		<tr>
			<th>
				Kulaklık Tipi</th>
			<td>
				Stereo</td>
		</tr>
		<tr>
			<th>
				Müzik Dinleyebilme</th>
			<td>
				Var</td>
		</tr>
		<tr>
			<th>
				Suya &amp; Tere Dayanıklı</th>
			<td>
				Hayır</td>
		</tr>
	</tbody>
</table>
<table class="data-list tech-spec">
	<caption>
		Diğer</caption>
	<tbody>
		<tr>
			<th>
				Garanti Süresi (Ay)</th>
			<td>
				24</td>
		</tr>
		<tr>
			<th>
				Yurtdışına Satış</th>
			<td>
				Var</td>
		</tr>
		<tr>
			<th>
				Stok kodu</th>
			<td>
				HBV000002NWY3</td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
', N'Bluetooth Kulaklıklar', 62, N'Apple', 4, N'iPhone 5S', 107, 1, N'1294137454-apple-iphone-5s-bluetooth-kulakliklar-cep-telefonu-aksesuarlari-apple-airpods-stereo-bluetooth-kulaklik-mmef2tua-apple-turkiye-garantili-.aspx', 0, 0, 1)
GO
INSERT [dbo].[E_Urunler] ([UrunID], [UrunAdi], [Logo], [EskiFiyat], [YeniFiyat], [Indirim], [Indirimli], [Aciklama], [KategoriAdi], [KatID], [TelefonAdi], [TelefonID], [ModelAdi], [TelefonModelID], [Tiklama], [Link], [Tukendi], [SatisIptal], [IsActive]) VALUES (14, N'Piston Basic Edition Mikrofonlu Kulakiçi Kulaklık Siyah ', N'529d1d-9541176033330.jpg', CAST(69.90 AS Decimal(5, 2)), CAST(30.06 AS Decimal(5, 2)), 57, 1, N'<span style="color:f28b00;font-family: helvetica;font-weight: bold;font-size:18px;letter-spacing:-0.3px">Piston Basic Edition Mikrofonlu Kulakiçi Kulaklık Siyah</span>
<p>
	<b style="font-weight: bold;">Ürün Özellikleri</b></p>
<ul>
	<li>
		Bağlantı: 3.5mm</li>
	<li>
		Hassasiyet: 100dB</li>
	<li>
		Empedans: 32ohms</li>
	<li>
		Frekans Aralığı: 20 - 40KHz</li>
	<li>
		Kablo Uzunluğu: 125 cm</li>
	<li>
		Ağırlık: 14g</li>
	<li>
		Fonksiyonlar
		<ul>
			<li>
				Çağrı Cevaplama</li>
			<li>
				HD Mikrofon</li>
			<li>
				Şarkı Değiştirme</li>
		</ul>
	</li>
</ul>
<p>
	<b style="font-weight: bold;">Kutu İçeriği</b></p>
<ul>
	<li>
		Xiaomi Piston Basic Fresh Edition Kulaklık</li>
	<li>
		2 Adet Yedek Kulaklık Pedleri</li>
</ul>
<p>
	<b style="font-weight: bold;">Xiaomi Piston Basic&nbsp;İle Ne Yapabilirim?</b></p>
<p>
	En popüler kulaklıklardan biri olan Xiaomi Piston Basic&nbsp;ile cep telefonunuzun kutusundan çıkan kulaklıklara göre çok daha iyi bir müzik deneyimi yaşayabilirsiniz. Basları hiç olmadığı kadar daha iyi hissedeceksiniz.</p>
<p>
	<b style="font-weight: bold;">Xiaomi Piston&nbsp;Basic Hangi Telefonlar İle Uyumludur?</b></p>
<p>
	Bu kulaklık tüm 3.5mm jack girişi bulunan tüm telefonlar ile uyumludur. Fakat fonksiyon tuşu sadece Android cihazlar ile çalışır.</p>
<div id="ctl00_ContentPlaceHolder1_ProductControl1_MainControl1_TabControl1_ProductDescription1_CustomContentBottom">
	&nbsp;</div>
<table>
	<tbody>
		<tr>
			<td class="no-border">
				<table>
					<tbody>
						<tr>
							<td>
								<div class="tealium">
									<div class="cnet-integration" id="ccs-inline-content">
										&nbsp;</div>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
				<table>
					<tbody>
						<tr>
							<td>
								<div id="productTechSpecContainer">
									<table class="data-list tech-spec">
										<caption>
											&nbsp;</caption>
										<tbody>
											<tr>
												<th>
													Garanti Süresi (Ay)</th>
												<td>
													24</td>
											</tr>
											<tr>
												<th>
													Yurtdışına Satış</th>
												<td>
													Var</td>
											</tr>
											<tr>
												<th>
													Stok kodu</th>
												<td>
													TELKLKXIAOMIPSTSYH</td>
											</tr>
										</tbody>
									</table>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
', N'Mikrofonlu Kulaklıklar', 66, N'ZTE', 34, N'V9 Plus', 1993, 1, N'1294147454-zte-v9-plus-mikrofonlu-kulakliklar-cep-telefonu-aksesuarlari-piston-basic-edition-mikrofonlu-kulakici-kulaklik-siyah-.aspx', 0, 0, 1)
GO
INSERT [dbo].[E_Urunler] ([UrunID], [UrunAdi], [Logo], [EskiFiyat], [YeniFiyat], [Indirim], [Indirimli], [Aciklama], [KategoriAdi], [KatID], [TelefonAdi], [TelefonID], [ModelAdi], [TelefonModelID], [Tiklama], [Link], [Tukendi], [SatisIptal], [IsActive]) VALUES (15, N'Samsung Level U Bluetooth Kulaklık Altın - EO-BG920BFEGWW', N'e70a27-9183646318642.jpg', CAST(199.89 AS Decimal(5, 2)), CAST(151.92 AS Decimal(5, 2)), 24, 1, N'<div id="productDescriptionContent">
	<p>
		<span style="color:f28b00;font-family: helvetica;font-weight: bold;font-size:18px;letter-spacing:-0.3px">Samsung Level U Bluetooth Kulaklık Altın - EO-BG920BFEGWW</span></p>
	<div class="container contain-lg-5 contain-md-4 contain-sm-5">
		<div class="row">
			<div class="col lg-5 md-5 sm-5" style="text-align:center;">
				<img src="https://images.hepsiburada.net/assets/Telefon/ProductDesc/SamsungLevelUBluetoothKulaklık-1.jpg" style="display:inline-block;" /></div>
		</div>
	</div>
	<br />
	<br />
	<p style="text-align:justify">
		Özgürce müzik dinlemek ve telefonla konuşmak için ideal özellikler sunan&nbsp;Samsung Level U Bluetooth Kulaklık Altın - EO-BG920BFEGWW, rahat kullanımı ile beğeni topluyor. Şık görünümü ve hafif yapısının yanında kaliteli ses sistemine olanak tanıyan Bluetooth kulaklık, kendi alanında fark yaratan cihazlar arasına girmeyi başarıyor. Gürültü önleyici özelliği ve su koruması olan ürün, nitelikli bir kulaklık arayanların beklentilerine cevap veriyor.</p>
	<p style="text-align:justify">
		<b style="font-weight: bold;">Eşsiz Tasarımı ile Göz Alıcı</b></p>
	<ul>
		<li style="text-align:justify">
			Boyundan askılı kulaklık tasarımı ile oldukça konforlu bir kullanım sunan ürün, hafifliği sayesinde kullanıcılarını memnun ediyor. Esneyen kaliteli malzemeden oluşan boyun bantları ile kulaklık keyfi farklı bir boyuta taşınıyor.&nbsp;</li>
		<li style="text-align:justify">
			Aktif iki cihaz bağlantısı sayesinde&nbsp;iki Bluetooth bağlantısına imkan veren ürün, aynı anda iki cihazın kulaklığa bağlanmasını mümkün kılıyor. Böylece hangi cihaz kullanılacaksa o aktif olarak seçilebiliyor.</li>
		<li style="text-align:justify">
			12 mm sürücü ile daha gerçekçi ve Bluetooth&nbsp;4.1 ile daha hızlı ses kalitesine ulaşabilen kulaklık, müziğin ritmine kendini bırakmak isteyenler için ideal bir cihaz olma özelliği taşıyor.</li>
		<li style="text-align:justify">
			Üzerinde iki adet mikrofon bulunan cihaz, telefon görüşmeleri yapmaya olanak tanıyor. Kaliteli mikrofonlar sayesinde görüşmeler kristal netliğinde gerçekleştirilebiliyor.</li>
	</ul>
	<p style="text-align:justify">
		<b style="font-weight: bold;">Konforlu Kullanım Özellikleri</b></p>
	<ul>
		<li style="text-align:justify">
			Multimedya Özellikleri: Mikrofon</li>
		<li style="text-align:justify">
			Bağlantı Özellikleri: Bluetooth 4.1</li>
		<li style="text-align:justify">
			Kullanım Şekli: Kablosuz</li>
	</ul>
	<p style="text-align:justify">
		Sofistike bir tasarıma sahip olan ürün, ince kordonu sayesinde ağırlık yapmıyor. Esneyen ve rahatça hareket&nbsp;ettirilebilen cihaz, bükülmelere karşı da dayanıklılık gösteriyor. Konforlu boyun bantları ise kulaklığın varlığını hissetmeden boyunda taşımaya imkan sağlıyor. Kulaklık sürücülerinin uç kısımlarında minik mıknatıslar bulunuyor ve kulaklık kullanılmadığı zaman sürücüler boyunda birleşerek derli toplu ve düzgün bir görünüm sunuyor. Kulağın içine sıkı bir şekilde yerleşen cihaz, gün boyunca ve spor sırasında rahat bir kullanım imkanı tanıyor. Bluetooth 4.1 bağlantısı sayesinde ultra yüksek kalitede ses özelliğini destekleyen ürün, 24 bit dijital ses deneyimi ile mobil cihazlarda özgün ses kalitesine imza atıyor. Samsung Galaxy cep telefonları ile oldukça uyumlu çalışıyor ve&nbsp;Samsung Level uygulaması ile ses kalitesini geliştirmeye imkan veriyor. Uygulama tüm akıllı cep telefonlarında kullanılabiliyor.</p>
	<p style="text-align:justify">
		<b style="font-weight: bold;">Hafif Tasarım</b></p>
	<p style="text-align:justify">
		Yüksek seste kaliteli müzik dinleme imkanı sunan&nbsp;Samsung Level U Bluetooth Kulaklık Altın - EO-BG920BFEGWW garanti belgesi, kullanım kılavuzu, güç adaptörü&nbsp;ve farklı boylarda silikon başlıklar ile bir arada sunuluyor. Böylece kulağa uygun başlık seçilerek tam kavrama sağlanabiliyor. Bekleme süresi 500 saat olan ürün, 10 saat müzik dinleme ve 11 saat konuşma süresine de imkan tanıyor. Kulaklıkta ayrıca Micro USB&nbsp;şarj girişi ve ses ayarlama tuşu bulunuyor. Rahat kullanım için yükseltilmiş olan düğmeler; önceki ve sonraki parça seçimi, oynatma, duraklatma ve eşleştirme gibi fonksiyonları yerine getiriyor.</p>
	<p style="text-align:justify">
		<b style="font-weight: bold;">Samsung: Geleceği Şekillendiren Teknoloji Devi</b></p>
	<p style="text-align:justify">
		1938 yılında kurulan ve pek çok şirketten oluşan dev bir teknoloji markası olan Samsung, elektronik ve bilişim alanında söz sahibi firmalardan biri. Geleceği şekillendiren teknolojik tasarımlara imza atan şirket, yaratıcılık ve inovasyona odaklı faaliyetlerine devam ediyor. Hayranlık duyulan markalardan biri olmayı başaran Samsung, teknoloji meraklılarının dijital deneyimlerine her geçen gün yeni bir dokunuş katıyor.</p>
	<p style="text-align:justify">
		<b style="font-weight: bold;">Hem Müzik Dinlemek&nbsp;Hem Konuşma Yapmak Mümkün</b></p>
	<p style="text-align:justify">
		Çok yönlü kullanımı ve kolay erişim kontrolü ile kullanıcıların beğenisini toplayan&nbsp;Samsung Level U Bluetooth Kulaklık Altın - EO-BG920BFEGWW, su geçirmezlik özelliği ile yağmur altında da kullanılabiliyor. Müzik dinlemek ve kaliteli görüşmeler yapmak için ideal özellikler sergileyen ürün, hem pratik hem de işlevsel&nbsp;nitelikleri ile göz dolduruyor. Siz de özgürce konuşabileceğiniz ve müzik dinleyebileceğiniz bir kulaklık arıyorsanız ürünü hemen inceleyebilirsiniz.</p>
</div>
<table>
	<tbody>
		<tr>
			<td>
				<div class="tealium">
					<div class="cnet-integration" id="ccs-inline-content">
						&nbsp;</div>
				</div>
			</td>
		</tr>
	</tbody>
</table>
<table class="data-list tech-spec">
	<caption>
		&nbsp;</caption>
	<tbody>
		<tr>
			<th>
				Bluetooth Versiyon</th>
			<td>
				4.1</td>
		</tr>
		<tr>
			<th>
				Çift Telefon Desteği</th>
			<td>
				Var</td>
		</tr>
		<tr>
			<th>
				Kulaklık Tipi</th>
			<td>
				Stereo</td>
		</tr>
		<tr>
			<th>
				Müzik Dinleyebilme</th>
			<td>
				Var</td>
		</tr>
		<tr>
			<th>
				Suya &amp; Tere Dayanıklı</th>
			<td>
				Evet</td>
		</tr>
	</tbody>
</table>
<table class="data-list tech-spec">
	<caption>
		Diğer</caption>
	<tbody>
		<tr>
			<th>
				Garanti Süresi (Ay)</th>
			<td>
				24</td>
		</tr>
		<tr>
			<th>
				Yurtdışına Satış</th>
			<td>
				Var</td>
		</tr>
		<tr>
			<th>
				Stok kodu</th>
			<td>
				TELBULSAMLEVELU-AL</td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
', N'Bluetooth Kulaklıklar', 62, N'Samsung', 26, N'Galaxy S5', 1454, 1, N'1294157454-samsung-galaxy-s5-bluetooth-kulakliklar-cep-telefonu-aksesuarlari-samsung-level-u-bluetooth-kulaklik-altin--eobg920bfegww.aspx', 0, 0, 1)
GO
INSERT [dbo].[E_Urunler] ([UrunID], [UrunAdi], [Logo], [EskiFiyat], [YeniFiyat], [Indirim], [Indirimli], [Aciklama], [KategoriAdi], [KatID], [TelefonAdi], [TelefonID], [ModelAdi], [TelefonModelID], [Tiklama], [Link], [Tukendi], [SatisIptal], [IsActive]) VALUES (16, N'JBL T450BT Wireless Kulaklık CT, OE, Mavi ', N'5abda3-9515753898034.jpg', CAST(229.90 AS Decimal(5, 2)), CAST(200.01 AS Decimal(5, 2)), 13, 1, N'<div id="productDescriptionContent">
	<p>
		<span style="color:f28b00;font-family: helvetica;font-weight: bold;font-size:18px;letter-spacing:-0.3px">JBL T450BT Wireless Kulaklık CT, OE, Siyah</span></p>
	<div class="container contain-lg-5 contain-md-4 contain-sm-5">
		<div class="row">
			<div class="col lg-5 md-5 sm-5" style="text-align:center;">
				<img src="https://images.hepsiburada.net/assets/EE/ProductDesc/HBV00000201ET.jpg" style="display:inline-block;" /></div>
		</div>
	</div>
</div>
<table>
	<tbody>
		<tr>
			<td>
				<div class="tealium">
					<div class="cnet-integration" id="ccs-inline-content">
						&nbsp;</div>
				</div>
			</td>
		</tr>
	</tbody>
</table>
<table class="data-list tech-spec">
	<caption>
		&nbsp;</caption>
	<tbody>
		<tr>
			<th>
				Bağlantı</th>
			<td>
				Bluetooth</td>
		</tr>
		<tr>
			<th>
				Gürültü Önleme</th>
			<td>
				Yok</td>
		</tr>
		<tr>
			<th>
				Kablo Uzunluğu</th>
			<td>
				Yok</td>
		</tr>
		<tr>
			<th>
				Kulaklık Modeli</th>
			<td>
				Kulaküstü Tam Boy</td>
		</tr>
		<tr>
			<th>
				Kullanım Alanı</th>
			<td>
				Müzik</td>
		</tr>
		<tr>
			<th>
				Kullanım Tipi</th>
			<td>
				Kulaküstü</td>
		</tr>
		<tr>
			<th>
				Mikrofon</th>
			<td>
				Var</td>
		</tr>
		<tr>
			<th>
				Paket İçeriği</th>
			<td>
				Şarj Kablosu</td>
		</tr>
		<tr>
			<th>
				Renk</th>
			<td>
				Siyah</td>
		</tr>
	</tbody>
</table>
<table class="data-list tech-spec">
	<caption>
		Diğer</caption>
	<tbody>
		<tr>
			<th>
				Garanti Süresi (Ay)</th>
			<td>
				24</td>
		</tr>
		<tr>
			<th>
				Yurtdışına Satış</th>
			<td>
				Var</td>
		</tr>
		<tr>
			<th>
				Stok kodu</th>
			<td>
				HBV00000201ET</td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
', N'Bluetooth Kulaklıklar', 62, N'Samsung', 26, N'Galaxy S5', 1454, 1, N'1294167454-samsung-galaxy-s5-bluetooth-kulakliklar-cep-telefonu-aksesuarlari-jbl-t450bt-wireless-kulaklik-ct-oe-mavi-.aspx', 0, 0, 1)
GO
INSERT [dbo].[E_Urunler] ([UrunID], [UrunAdi], [Logo], [EskiFiyat], [YeniFiyat], [Indirim], [Indirimli], [Aciklama], [KategoriAdi], [KatID], [TelefonAdi], [TelefonID], [ModelAdi], [TelefonModelID], [Tiklama], [Link], [Tukendi], [SatisIptal], [IsActive]) VALUES (17, N'Samsung HS130 Kulakiçi Mikrofonlu Kulaklık Beyaz EO-HS130 (Samsung Türkiye Garantili) ', N'e27377-9515753898034.jpg', CAST(49.00 AS Decimal(5, 2)), CAST(36.75 AS Decimal(5, 2)), 25, 1, N'<div id="productDescriptionContent">
	<p>
		<span style="color:f28b00;font-family: helvetica;font-weight: bold;font-size:18px;letter-spacing:-0.3px">Samsung HS130 Kulakiçi Mikrofonlu Kulaklık Beyaz EO-HS130 (Samsung Türkiye Garantili)</span></p>
	<div class="container contain-lg-5 contain-md-4 contain-sm-5">
		<div class="row">
			<div class="col lg-5 md-5 sm-5" style="text-align:center;">
				<img src="https://images.hepsiburada.net/assets/Telefon/ProductDesc/SamsungHS130kulaklıkk--5.jpg" style="display:inline-block;" /></div>
		</div>
	</div>
</div>
<table>
	<tbody>
		<tr>
			<td>
				<div class="tealium">
					<div class="cnet-integration" id="ccs-inline-content">
						&nbsp;</div>
				</div>
			</td>
		</tr>
	</tbody>
</table>
<table class="data-list tech-spec">
	<caption>
		&nbsp;</caption>
	<tbody>
		<tr>
			<th>
				Bağlantı</th>
			<td>
				Kablolu</td>
		</tr>
		<tr>
			<th>
				Kulaklık Tipi</th>
			<td>
				Stereo Kulaklıklar</td>
		</tr>
		<tr>
			<th>
				Kullanım Alanı</th>
			<td>
				Telefon</td>
		</tr>
		<tr>
			<th>
				Kullanım Tipi</th>
			<td>
				Kulakiçi</td>
		</tr>
		<tr>
			<th>
				Ürün Kodu</th>
			<td>
				EO-HS1303WEGWW</td>
		</tr>
	</tbody>
</table>
<table class="data-list tech-spec">
	<caption>
		Diğer</caption>
	<tbody>
		<tr>
			<th>
				Garanti Süresi (Ay)</th>
			<td>
				24</td>
		</tr>
		<tr>
			<th>
				Yurtdışına Satış</th>
			<td>
				Var</td>
		</tr>
		<tr>
			<th>
				Stok kodu</th>
			<td>
				TELKLKSAMHS130BY</td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
', N'Mikrofonlu Kulaklıklar', 66, N'Samsung', 26, N'Galaxy Note 3', 1434, 1, N'1294177454-samsung-galaxy-note-3-mikrofonlu-kulakliklar-cep-telefonu-aksesuarlari-samsung-hs130-kulakici-mikrofonlu-kulaklik-beyaz-eohs130-samsung-turkiye-garantili-.aspx', 0, 0, 1)
GO
INSERT [dbo].[E_Urunler] ([UrunID], [UrunAdi], [Logo], [EskiFiyat], [YeniFiyat], [Indirim], [Indirimli], [Aciklama], [KategoriAdi], [KatID], [TelefonAdi], [TelefonID], [ModelAdi], [TelefonModelID], [Tiklama], [Link], [Tukendi], [SatisIptal], [IsActive]) VALUES (18, N'JBL C100SIUWHT Kulaklık CT, IE, Beyaz ', N'6d6c68-9515753898034.jpg', CAST(49.90 AS Decimal(5, 2)), CAST(45.91 AS Decimal(5, 2)), 8, 1, N'<div id="productDescriptionContent">
	<p>
		<span style="color:f28b00;font-family: helvetica;font-weight: bold;font-size:18px;letter-spacing:-0.3px">JBL C100SIUWHT Kulaklık CT, IE, Beyaz</span></p>
	<br />
	* Jbl kulak içi kulaklık, kompakt bir tasarımda etkili sürücülere sahiptir. Net ses ve kuvvetli bas verirken kulağa mükemmel şekilde oturur.<br />
	* Dahili mikrofon, bağlantı halinde kalmanız için müzik ve telefon çağrıları arasında kolayca geçiş yapmanızı sağlar.<br />
	* Bir düğmeye basarak çağrılarınızı zahmetsizce cevaplayın ve yönetin.<br />
	<br />
	<br />
	<b style="font-weight: bold;">Özellikler:</b><br />
	Frekans tepkisi: 20-20.000 Hz<br />
	Hassasiyet: 100 dB<br />
	Sürücü Boyutu: 9mm<br />
	Empedans: 16 ohm<br />
	Kablo uzunluğu: 1,2 m<br />
	Jack: 3,5 mm</div>
<table>
	<tbody>
		<tr>
			<td>
				<div class="tealium">
					<div class="cnet-integration" id="ccs-inline-content">
						&nbsp;</div>
				</div>
			</td>
		</tr>
	</tbody>
</table>
<table class="data-list tech-spec">
	<caption>
		&nbsp;</caption>
	<tbody>
		<tr>
			<th>
				Bağlantı</th>
			<td>
				Kablolu</td>
		</tr>
		<tr>
			<th>
				Gürültü Önleme</th>
			<td>
				Yok</td>
		</tr>
		<tr>
			<th>
				Kablo Uzunluğu</th>
			<td>
				1,2 m</td>
		</tr>
		<tr>
			<th>
				Kulaklık Modeli</th>
			<td>
				Kulakiçi Kanal Tipi</td>
		</tr>
		<tr>
			<th>
				Kullanım Alanı</th>
			<td>
				Müzik</td>
		</tr>
		<tr>
			<th>
				Kullanım Tipi</th>
			<td>
				Kulakiçi</td>
		</tr>
		<tr>
			<th>
				Mikrofon</th>
			<td>
				Var</td>
		</tr>
		<tr>
			<th>
				Renk</th>
			<td>
				Beyaz</td>
		</tr>
	</tbody>
</table>
<table class="data-list tech-spec">
	<caption>
		Diğer</caption>
	<tbody>
		<tr>
			<th>
				Garanti Süresi (Ay)</th>
			<td>
				24</td>
		</tr>
		<tr>
			<th>
				Yurtdışına Satış</th>
			<td>
				Var</td>
		</tr>
		<tr>
			<th>
				Stok kodu</th>
			<td>
				HBV00000201ER</td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
', N'Kulak İçi Kulaklıklar', 67, N'Apple', 4, N'iPod Touch 5', 108, 1, N'1294187454-apple-ipod-touch-5-kulak-ici-kulakliklar-cep-telefonu-aksesuarlari-jbl-c100siuwht-kulaklik-ct-ie-beyaz-.aspx', 0, 0, 1)
GO
INSERT [dbo].[E_Urunler] ([UrunID], [UrunAdi], [Logo], [EskiFiyat], [YeniFiyat], [Indirim], [Indirimli], [Aciklama], [KategoriAdi], [KatID], [TelefonAdi], [TelefonID], [ModelAdi], [TelefonModelID], [Tiklama], [Link], [Tukendi], [SatisIptal], [IsActive]) VALUES (19, N'iPhone X/8 Plus USB-C 29W Hızlı Şarj Aleti Cihazı, Güç Adaptörü, Power Adaptör A1540 MJ262TU/A (İthalatçı Garantili) ', N'b09dbd-9771992186930.jpg', CAST(199.90 AS Decimal(5, 2)), CAST(199.90 AS Decimal(5, 2)), 0, 0, N'<div id="productDescriptionContent">
	<p>
		<span style="color:f28b00;font-family: helvetica;font-weight: bold;font-size:18px;letter-spacing:-0.3px">iPhone X/8 Plus USB-C 29W Hızlı Şarj Aleti Cihazı, Güç Adaptörü, Power Adaptör A1540 MJ262TU/A (İthalatçı Garantili)</span></p>
	<h4 style="color:#ff0000;">
		Bu ürün 2 yıl süre ile ithalatçı firma garantisi altındadır. İthalatçı Firma Garantili ürünlerde 2 yıl süresince, garanti belgenizde bilgileri yer alan teknik servisten garanti kapsamı dahilinde ücretsiz faydalanabilirsiniz. 2 yıl sonrasında ise, marka ile ilgili yetkinliği bulunan tüm teknik servislerden ücretli bir şekilde faydalanmaya devam edebilirsiniz.</h4>
	<br />
	<br />
	<pre>
iPhone 8/ iPhone X/ iPhone Plus Cep Telefonlara uyumludur. İphone telefonunuzu ortalama bir saatte tam olarak doldurur. USB-C  Lightning  Kablosu Ayrıca Satılmaktadır. Bu Satış Sadece Şarj Aletini Kapsamaktadır. USB-C  Lightning Kablo Satışı Mağazamızda Ayrıca Yer Almaktadır.</pre>
</div>
<table>
	<tbody>
		<tr>
			<td class="no-border">
				<table>
					<tbody>
						<tr>
							<td>
								<div class="tealium">
									<div class="cnet-integration" id="ccs-inline-content">
										&nbsp;</div>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
				<table>
					<tbody>
						<tr>
							<td>
								<div id="productTechSpecContainer">
									<table class="data-list tech-spec">
										<caption>
											&nbsp;</caption>
										<tbody>
											<tr>
												<th>
													Araç Şarjı</th>
												<td>
													Yok</td>
											</tr>
											<tr>
												<th>
													Bağlantı Tipi</th>
												<td>
													Apple Lightning 8 Pin</td>
											</tr>
											<tr>
												<th>
													Garanti Tipi</th>
												<td>
													İthalatçı Garantili</td>
											</tr>
											<tr>
												<th>
													Kablosuz Şarj</th>
												<td>
													Var</td>
											</tr>
											<tr>
												<th>
													Seyahat Şarjı</th>
												<td>
													Var</td>
											</tr>
										</tbody>
									</table>
									<table class="data-list tech-spec">
										<caption>
											Diğer</caption>
										<tbody>
											<tr>
												<th>
													Garanti Süresi (Ay)</th>
												<td>
													24</td>
											</tr>
											<tr>
												<th>
													Yurtdışına Satış</th>
												<td>
													Yok</td>
											</tr>
											<tr>
												<th>
													Stok kodu</th>
												<td>
													HBV000009FKJS</td>
											</tr>
										</tbody>
									</table>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
	</tbody>
</table>
<a data-bind="click: feedback.showInaccurateContentPopup.bind($data.feedback)" id="inaccurate-content-link"> </a>', N'Taşınabilir Şarj Aletleri', 23, N'Apple', 4, N'iPhone 5S', 107, 3, N'1294197454-apple-iphone-5s-tasinabilir-sarj-aletleri-cep-telefonu-aksesuarlari-iphone-x8-plus-usbc-29w-hizli-sarj-aleti-cihazi-guc-adaptoru-power-adaptor-a1540-mj262tua-ithalatci-garantili-.aspx', 0, 0, 1)
GO
INSERT [dbo].[E_Urunler] ([UrunID], [UrunAdi], [Logo], [EskiFiyat], [YeniFiyat], [Indirim], [Indirimli], [Aciklama], [KategoriAdi], [KatID], [TelefonAdi], [TelefonID], [ModelAdi], [TelefonModelID], [Tiklama], [Link], [Tukendi], [SatisIptal], [IsActive]) VALUES (20, N'Samsung Samsung Micro Usb Şarj Aleti ', N'e07a0e-9616041836594.jpg', CAST(25.00 AS Decimal(5, 2)), CAST(22.50 AS Decimal(5, 2)), 10, 1, N'<div id="productDescriptionContent">
	<p>
		<span style="color:f28b00;font-family: helvetica;font-weight: bold;font-size:18px;letter-spacing:-0.3px">Samsung Samsung Micro Usb Şarj Aleti</span></p>
	Samsung Şarj Aleti 15W</div>
<table>
	<tbody>
		<tr>
			<td>
				<div class="tealium">
					<div class="cnet-integration" id="ccs-inline-content">
						&nbsp;</div>
				</div>
			</td>
		</tr>
	</tbody>
</table>
<table class="data-list tech-spec">
	<caption>
		&nbsp;</caption>
	<tbody>
		<tr>
			<th>
				Kablosuz Şarj</th>
			<td>
				Yok</td>
		</tr>
	</tbody>
</table>
<table class="data-list tech-spec">
	<caption>
		Diğer</caption>
	<tbody>
		<tr>
			<th>
				Garanti Süresi (Ay)</th>
			<td>
				24</td>
		</tr>
		<tr>
			<th>
				Yurtdışına Satış</th>
			<td>
				Yok</td>
		</tr>
		<tr>
			<th>
				Stok kodu</th>
			<td>
				HBV000004UGWW</td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
', N'Yurtdışı Şarj Aletleri', 24, N'Samsung', 26, N'N710', 1591, 1, N'1294207454-samsung-n710-yurtdisi-sarj-aletleri-cep-telefonu-aksesuarlari-samsung-samsung-micro-usb-sarj-aleti-.aspx', 0, 0, 1)
GO
INSERT [dbo].[E_Urunler] ([UrunID], [UrunAdi], [Logo], [EskiFiyat], [YeniFiyat], [Indirim], [Indirimli], [Aciklama], [KategoriAdi], [KatID], [TelefonAdi], [TelefonID], [ModelAdi], [TelefonModelID], [Tiklama], [Link], [Tukendi], [SatisIptal], [IsActive]) VALUES (21, N'Samsung 3''lü Micro USB Çoklu Şarj Aleti', N'd02d35-9487882125362.jpg', CAST(35.00 AS Decimal(5, 2)), CAST(31.50 AS Decimal(5, 2)), 10, 1, N'<div id="productDescriptionContent">
	<p>
		<span style="color:f28b00;font-family: helvetica;font-weight: bold;font-size:18px;letter-spacing:-0.3px">Samsung 3''lü Micro USB Çoklu Şarj Aleti</span></p>
	Samsung Galaxy Note 3 Orjinal Çoklu Şarj Aleti</div>
<table>
	<tbody>
		<tr>
			<td>
				<div class="tealium">
					<div class="cnet-integration" id="ccs-inline-content">
						&nbsp;</div>
				</div>
			</td>
		</tr>
	</tbody>
</table>
<table class="data-list tech-spec">
	<caption>
		&nbsp;</caption>
	<tbody>
		<tr>
			<th>
				Araç Şarjı</th>
			<td>
				Yok</td>
		</tr>
		<tr>
			<th>
				Bağlantı Tipi</th>
			<td>
				Micro USB</td>
		</tr>
		<tr>
			<th>
				Kablosuz Şarj</th>
			<td>
				Yok</td>
		</tr>
		<tr>
			<th>
				Seyahat Şarjı</th>
			<td>
				Var</td>
		</tr>
	</tbody>
</table>
<table class="data-list tech-spec">
	<caption>
		Diğer</caption>
	<tbody>
		<tr>
			<th>
				Yurtdışına Satış</th>
			<td>
				Var</td>
		</tr>
		<tr>
			<th>
				Stok kodu</th>
			<td>
				TELSARJPLUS9473179</td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
', N'Taşınabilir Şarj Aletleri', 23, N'Samsung', 26, N'Galaxy Note 3', 1434, 1, NULL, 0, 0, 1)
GO
INSERT [dbo].[E_Urunler] ([UrunID], [UrunAdi], [Logo], [EskiFiyat], [YeniFiyat], [Indirim], [Indirimli], [Aciklama], [KategoriAdi], [KatID], [TelefonAdi], [TelefonID], [ModelAdi], [TelefonModelID], [Tiklama], [Link], [Tukendi], [SatisIptal], [IsActive]) VALUES (22, N'Lg V10 Fast Charging  Hızlı Şarj Aleti (İthalatçı Garantili) ', N'adcd6c-9215100354610.jpg', CAST(32.90 AS Decimal(5, 2)), CAST(28.95 AS Decimal(5, 2)), 12, 1, N'<div id="productDescriptionContent">
	<p>
		<span style="color:f28b00;font-family: helvetica;font-weight: bold;font-size:18px;letter-spacing:-0.3px">Lg V10 Fast Charging&nbsp; Hızlı Şarj Aleti (İthalatçı Garantili)</span></p>
	<h4 style="color:#ff0000;">
		Bu ürün 2 yıl süre ile ithalatçı firma garantisi altındadır. İthalatçı Firma Garantili ürünlerde 2 yıl süresince, garanti belgenizde bilgileri yer alan teknik servisten garanti kapsamı dahilinde ücretsiz faydalanabilirsiniz. 2 yıl sonrasında ise, marka ile ilgili yetkinliği bulunan tüm teknik servislerden ücretli bir şekilde faydalanmaya devam edebilirsiniz.</h4>
	<br />
	<br />
	<p>
		<font color="#1f497d">Uyumlu Model: Universal, micro usb bağlantılı tüm cihazlar ile uyumludur&nbsp;</font></p>
	<p>
		&nbsp;</p>
	<p>
		<font color="#1f497d">Input: 100-240V 50/60Hz 0.</font></p>
	<p>
		<font color="#1f497d">5A Output: 9.</font></p>
	<p>
		<font color="#1f497d">0V--1.</font></p>
	<p>
		<font color="#1f497d">8 A Or 5.</font></p>
	<p>
		<font color="#1f497d">0V--1.</font></p>
	<p>
		<font color="#1f497d">8 A</font></p>
	<br />
	<br />
	Ürünün garantisi ithalatçı firma tarafından sağlanmaktadır, firma bilgisi garanti belgesinde bulunmaktadır, LG yetkili servisleri bu ürüne destek vermemektedir.</div>
<table>
	<tbody>
		<tr>
			<td>
				<div class="tealium">
					<div class="cnet-integration" id="ccs-inline-content">
						&nbsp;</div>
				</div>
			</td>
		</tr>
	</tbody>
</table>
<table class="data-list tech-spec">
	<caption>
		&nbsp;</caption>
	<tbody>
		<tr>
			<th>
				Araç Şarjı</th>
			<td>
				Yok</td>
		</tr>
		<tr>
			<th>
				Bağlantı Tipi</th>
			<td>
				Micro USB</td>
		</tr>
		<tr>
			<th>
				Kablosuz Şarj</th>
			<td>
				Yok</td>
		</tr>
		<tr>
			<th>
				Seyahat Şarjı</th>
			<td>
				Var</td>
		</tr>
	</tbody>
</table>
<table class="data-list tech-spec">
	<caption>
		Diğer</caption>
	<tbody>
		<tr>
			<th>
				Garanti Süresi (Ay)</th>
			<td>
				6</td>
		</tr>
		<tr>
			<th>
				Yurtdışına Satış</th>
			<td>
				Var</td>
		</tr>
		<tr>
			<th>
				Stok kodu</th>
			<td>
				TELSARJKSP88775633</td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
', N'Tablet Şarj Aletleri', 22, N'Samsung', 26, N'P3100 Galaxy Tab 2', 1607, 1, N'1294227454-samsung-p3100-galaxy-tab-2-tablet-sarj-aletleri-cep-telefonu-aksesuarlari-lg-v10-fast-charging--hizli-sarj-aleti-ithalatci-garantili-.aspx', 0, 0, 1)
GO
INSERT [dbo].[E_Urunler] ([UrunID], [UrunAdi], [Logo], [EskiFiyat], [YeniFiyat], [Indirim], [Indirimli], [Aciklama], [KategoriAdi], [KatID], [TelefonAdi], [TelefonID], [ModelAdi], [TelefonModelID], [Tiklama], [Link], [Tukendi], [SatisIptal], [IsActive]) VALUES (23, N'Sony UCH10 2.0A Hızlı Şarj Cihazı + Micro Usb Kablo - Siyah (İthalatçı Garantili) ', N'cba9e4-9215100354610.jpg', CAST(31.90 AS Decimal(5, 2)), CAST(29.35 AS Decimal(5, 2)), 8, 1, N'<div id="productDescriptionContent">
	<p>
		<span style="color:f28b00;font-family: helvetica;font-weight: bold;font-size:18px;letter-spacing:-0.3px">Sony UCH10 2.0A Hızlı Şarj Cihazı + Micro Usb Kablo - Siyah (İthalatçı Garantili)</span></p>
	<h4 style="color:#ff0000;">
		Bu ürün 2 yıl süre ile ithalatçı firma garantisi altındadır. İthalatçı Firma Garantili ürünlerde 2 yıl süresince, garanti belgenizde bilgileri yer alan teknik servisten garanti kapsamı dahilinde ücretsiz faydalanabilirsiniz. 2 yıl sonrasında ise, marka ile ilgili yetkinliği bulunan tüm teknik servislerden ücretli bir şekilde faydalanmaya devam edebilirsiniz.</h4>
	<br />
	<br />
	<pre>
Şarj edin ve harekete geçin
Telefonunuzun şarj olmasını beklemenize gerek yok. Hızlı Şarj Ünitesi UCH10 ile 10 dakikalık şarj,size 5,5 saate kadar kullanım süresi sunar
 
Hızlı ve güvenli
Hızlı Şarj Ünitesi UCH10, Sony ve Xperia kalite standartları kapsamında test edilmiş ve onaylanmıştır. Telefonunuzu hızlı ve güvenle şarj edebilirsiniz.


Quick Charger UCH10, Qualcomm® Quick Charger 2.0 standardını destekleyen Xperia cihazlarının şarj süresini azaltır .

Qualcomm 2.0 Hızlı Şarj Destekli Xperia Modelleri: 
Xperia Z5 Premium 
Xperia Z5 Compact 
Xperia Z3+ (Z3 Plus) 
Xperia Z3 Compact 
Xperia Z3 Compact Tablet 
Xperia Z2 Tablet 

Xperia Z3 ve Xperia Z5 modelin hızlı şarj özelliği olmadığı için desteklemez.
Hızlı Şarj Ünitesi UCH10 ile 10 dakikalık şarj, size 5,5 saate kadar kullanım süresi sunar.

Ürünün garantisi ithalatçı firma tarafından sağlanmaktadır, firma bilgisi garanti belgesinde bulunmaktadır, Sony yetkili servisleri bu ürüne destek vermemektedir.</pre>
</div>
<table>
	<tbody>
		<tr>
			<td>
				<div class="tealium">
					<div class="cnet-integration" id="ccs-inline-content">
						&nbsp;</div>
				</div>
			</td>
		</tr>
	</tbody>
</table>
<table class="data-list tech-spec">
	<caption>
		&nbsp;</caption>
	<tbody>
		<tr>
			<th>
				Araç Şarjı</th>
			<td>
				Yok</td>
		</tr>
		<tr>
			<th>
				Bağlantı Tipi</th>
			<td>
				USB</td>
		</tr>
		<tr>
			<th>
				Kablosuz Şarj</th>
			<td>
				Yok</td>
		</tr>
	</tbody>
</table>
<table class="data-list tech-spec">
	<caption>
		Diğer</caption>
	<tbody>
		<tr>
			<th>
				Garanti Süresi (Ay)</th>
			<td>
				24</td>
		</tr>
		<tr>
			<th>
				Yurtdışına Satış</th>
			<td>
				Yok</td>
		</tr>
		<tr>
			<th>
				Stok kodu</th>
			<td>
				HBV000001RJ34</td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
', N'Masaüstü Şarj Aletleri', 21, N'Sony', 28, N'Xperia Z2', 1792, 1, N'1294237454-sony-xperia-z2-masaustu-sarj-aletleri-cep-telefonu-aksesuarlari-sony-uch10-2_0a-hizli-sarj-cihazi--micro-usb-kablo--siyah-ithalatci-garantili-.aspx', 0, 0, 1)
GO
SET IDENTITY_INSERT [dbo].[E_Urunler] OFF
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (1, 1)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (2, 1)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (3, 1)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (4, 1)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (5, 1)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (6, 2)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (7, 2)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (8, 2)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (9, 2)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (10, 3)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (11, 3)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (12, 3)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (13, 3)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (14, 3)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (15, 3)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (16, 4)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (17, 9)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (18, 5)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (19, 7)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (20, 10)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (21, 10)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (22, 11)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (23, 11)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (24, 11)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (25, 12)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (26, 13)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (27, 13)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (28, 13)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (29, 13)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (30, 13)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (31, 14)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (32, 14)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (33, 14)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (34, 14)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (35, 15)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (36, 15)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (37, 15)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (38, 16)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (39, 17)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (40, 18)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (41, 18)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (42, 18)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (43, 19)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (44, 19)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (45, 19)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (46, 20)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (47, 20)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (48, 20)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (49, 20)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (50, 21)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (51, 22)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (52, 23)
GO
INSERT [dbo].[E_UrunResimler] ([E_ResimID], [E_UrunID]) VALUES (53, 23)
GO
ALTER TABLE [dbo].[E_AraBeni_Bildirim] ADD  CONSTRAINT [DF_E_AraBeni_Bildirim_Okundu]  DEFAULT ((0)) FOR [Okundu]
GO
ALTER TABLE [dbo].[E_EBulten] ADD  CONSTRAINT [DF_E_EBulten_Gidecek]  DEFAULT ((1)) FOR [Gidecek]
GO
ALTER TABLE [dbo].[E_EBulten] ADD  CONSTRAINT [DF_E_EBulten_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[E_EBulten_ExcelListesi] ADD  CONSTRAINT [DF_E_EBulten_ExcelListesi_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[E_Iade_Degisim_Bildirim] ADD  CONSTRAINT [DF_E_Iade_Degisim_Bildirim_IslemTamam]  DEFAULT ((0)) FOR [IslemTamam]
GO
ALTER TABLE [dbo].[E_Iletisim_Bildirim] ADD  CONSTRAINT [DF_E_Iletisim_Bildirim_Okundu]  DEFAULT ((0)) FOR [Okundu]
GO
ALTER TABLE [dbo].[E_KargoTakibi] ADD  CONSTRAINT [DF_E_KargoTakibi_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[E_KuryeTakibi] ADD  CONSTRAINT [DF_E_KuryeTakibi_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[E_Odeme_Bildirim_Bilgisi] ADD  CONSTRAINT [DF_E_Odeme_Bildirim_Bilgisi_IslemTamam]  DEFAULT ((0)) FOR [IslemTamam]
GO
ALTER TABLE [dbo].[E_Personel] ADD  CONSTRAINT [DF_E_Personel_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[E_SiparisFaturaAdresi] ADD  CONSTRAINT [DF_E_SiparisFaturaAdresi_TeslimatAdres]  DEFAULT ((0)) FOR [TeslimatAdres]
GO
ALTER TABLE [dbo].[E_SiparisTakip] ADD  CONSTRAINT [DF_E_SiparisTakip_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[E_SiparisTakip] ADD  CONSTRAINT [DF_E_SiparisTakip_IslemTamam]  DEFAULT ((0)) FOR [IslemTamam]
GO
ALTER TABLE [dbo].[E_UrunDetay_Banka] ADD  CONSTRAINT [DF_E_UrunDetay_Banka_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[E_Urunler_HaberdarEt] ADD  CONSTRAINT [DF_E_Urunler_HaberdarEt_IslemTamam]  DEFAULT ((0)) FOR [IslemTamam]
GO
ALTER TABLE [dbo].[E_Uyeler] ADD  CONSTRAINT [DF_E_Uyeler_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Trigger [dbo].[E_A_Giris_Silme]    Script Date: 01.06.2018 15:02:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create TRIGGER [dbo].[E_A_Giris_Silme]
    ON [dbo].[E_A_Giris]
    instead of DELETE
AS
declare @SonID int
set @SonID=(select Giris_ID from deleted)
    update E_A_Giris set IsActive=0 where Giris_ID=@SonID


GO
/****** Object:  Trigger [dbo].[E_EBulten_Silme]    Script Date: 01.06.2018 15:02:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE trigger [dbo].[E_EBulten_Silme]
on [dbo].[E_EBulten]
Instead of delete
as
begin
declare @SonID int
select @SonID=E_bultenID from deleted
update E_EBulten set IsActive=0 where E_bultenID=@SonID
end


GO
/****** Object:  Trigger [dbo].[E_EBultenExcel_Silme]    Script Date: 01.06.2018 15:02:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[E_EBultenExcel_Silme]
on [dbo].[E_EBulten_ExcelListesi]
Instead of delete
as
begin
declare @SonID int
select @SonID=E_ExceLID from deleted
update E_EBulten_ExcelListesi set IsActive=0 where E_ExceLID=@SonID
end


GO
/****** Object:  Trigger [dbo].[E_KargoTakibi_Silme]    Script Date: 01.06.2018 15:02:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create TRIGGER [dbo].[E_KargoTakibi_Silme]
    ON [dbo].[E_KargoTakibi]
    instead of DELETE
AS
declare @SonID int
set @SonID=(select E_KargoTakipID from deleted)
    update E_KargoTakibi set IsActive=0 where E_KargoTakipID=@SonID


GO
/****** Object:  Trigger [dbo].[E_KuryeTakibi_Silme]    Script Date: 01.06.2018 15:02:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create TRIGGER [dbo].[E_KuryeTakibi_Silme]
    ON [dbo].[E_KuryeTakibi]
    instead of DELETE
AS
declare @SonID int
set @SonID=(select E_KuryeTakipID from deleted)
    update E_KuryeTakibi set IsActive=0 where E_KuryeTakipID=@SonID


GO
/****** Object:  Trigger [dbo].[E_Personel_Sec]    Script Date: 01.06.2018 15:02:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[E_Personel_Sec]
    ON [dbo].[E_Personel]
    instead of DELETE
AS
declare @SonID int
set @SonID=(select UyeID from deleted)
    update E_Personel set IsActive=0 where UyeID=@SonID


GO
/****** Object:  Trigger [dbo].[E_SiparisTakip_Silme]    Script Date: 01.06.2018 15:02:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE trigger [dbo].[E_SiparisTakip_Silme]
on [dbo].[E_SiparisTakip]
Instead of delete
as
begin
declare @SonID int
select @SonID=E_SiparisID from deleted
update E_SiparisTakip set IsActive=0 where E_SiparisID=@SonID
end

GO
/****** Object:  Trigger [dbo].[Ana_Kategori_Silme]    Script Date: 01.06.2018 15:02:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE trigger [dbo].[Ana_Kategori_Silme]
on [dbo].[E_UrunAnaKategori]
Instead of delete
as
begin
declare @SonID int
select @SonID=AnaKategoriID from deleted
update E_UrunAnaKategori set IsActive=0 where AnaKategoriID=@SonID
end

GO
/****** Object:  Trigger [dbo].[Kategori_Silme]    Script Date: 01.06.2018 15:02:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE trigger [dbo].[Kategori_Silme]
on [dbo].[E_UrunKategori]
Instead of delete
as
begin
declare @SonID int
select @SonID=KategoriID from deleted
update E_UrunKategori set IsActive=0 where KategoriID=@SonID
end

GO
/****** Object:  Trigger [dbo].[E_Urunler_Silme]    Script Date: 01.06.2018 15:02:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE trigger [dbo].[E_Urunler_Silme]
on [dbo].[E_Urunler]
Instead of delete
as
begin
declare @SonID int
select @SonID=UrunID from deleted
update E_Urunler set IsActive=0, SatisIptal=0 where UrunID=@SonID
end


GO
/****** Object:  Trigger [dbo].[Uyeler_Sec]    Script Date: 01.06.2018 15:02:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[Uyeler_Sec]
    ON [dbo].[E_Uyeler]
    instead of DELETE
AS
declare @SonID int
set @SonID=(select PersonelID from deleted)
    update E_Uyeler set IsActive=0 where PersonelID=@SonID


GO
USE [master]
GO
ALTER DATABASE [GelisimSoft_ETicaretGumus] SET  READ_WRITE 
GO
