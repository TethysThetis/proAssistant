USE [ProAssistantDB]
GO
/****** Object:  Table [dbo].[tbl_Kullanici]    Script Date: 25.08.2017 00:14:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Kullanici](
	[KullaniciID] [int] IDENTITY(1,1) NOT NULL,
	[AdSoyad] [nvarchar](50) NULL,
	[EPosta] [nvarchar](50) NULL,
	[Sifre] [nvarchar](50) NULL,
	[Yetki] [int] NULL,
	[Yogunluk] [int] NOT NULL,
 CONSTRAINT [PK_tbl_Kullanici] PRIMARY KEY CLUSTERED 
(
	[KullaniciID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Proje]    Script Date: 25.08.2017 00:14:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Proje](
	[ProjeID] [int] IDENTITY(1,1) NOT NULL,
	[ProjeAdi] [nvarchar](50) NULL,
	[IsinTanimi] [nvarchar](500) NULL,
	[BaslamaTarihi] [date] NULL,
	[BitisTarihi] [date] NULL,
	[GecenSure] [int] NULL,
	[IstekMi] [bit] NULL,
	[Aciklama] [nvarchar](500) NULL,
	[DeveloperID] [int] NOT NULL,
	[BittiMi] [bit] NOT NULL,
 CONSTRAINT [PK_tbl_Proje] PRIMARY KEY CLUSTERED 
(
	[ProjeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_Kullanici] ON 

INSERT [dbo].[tbl_Kullanici] ([KullaniciID], [AdSoyad], [EPosta], [Sifre], [Yetki], [Yogunluk]) VALUES (1, N'Yönetici', N'y@y.com', N'321', 1, 0)
INSERT [dbo].[tbl_Kullanici] ([KullaniciID], [AdSoyad], [EPosta], [Sifre], [Yetki], [Yogunluk]) VALUES (2, N'Müşteri1', N'm@m.com', N'83aa2', 3, 0)
INSERT [dbo].[tbl_Kullanici] ([KullaniciID], [AdSoyad], [EPosta], [Sifre], [Yetki], [Yogunluk]) VALUES (3, N'Müşteri2', N'm2@m.com', N'0326c', 3, 0)
INSERT [dbo].[tbl_Kullanici] ([KullaniciID], [AdSoyad], [EPosta], [Sifre], [Yetki], [Yogunluk]) VALUES (5, N'Developer1', N'd@d.com', N'123', 2, 80)
INSERT [dbo].[tbl_Kullanici] ([KullaniciID], [AdSoyad], [EPosta], [Sifre], [Yetki], [Yogunluk]) VALUES (6, N'Developer2', N'd2@d.com', N'8bd38', 2, 120)
INSERT [dbo].[tbl_Kullanici] ([KullaniciID], [AdSoyad], [EPosta], [Sifre], [Yetki], [Yogunluk]) VALUES (7, N'Developer3', N'd3@d.com', N'557a9', 2, 25)
SET IDENTITY_INSERT [dbo].[tbl_Kullanici] OFF
SET IDENTITY_INSERT [dbo].[tbl_Proje] ON 

INSERT [dbo].[tbl_Proje] ([ProjeID], [ProjeAdi], [IsinTanimi], [BaslamaTarihi], [BitisTarihi], [GecenSure], [IstekMi], [Aciklama], [DeveloperID], [BittiMi]) VALUES (1, N'1.proje', N'işin tanımı 1', CAST(N'1753-02-01' AS Date), CAST(N'1753-02-01' AS Date), 0, 1, N'açıklama1', 0, 0)
INSERT [dbo].[tbl_Proje] ([ProjeID], [ProjeAdi], [IsinTanimi], [BaslamaTarihi], [BitisTarihi], [GecenSure], [IstekMi], [Aciklama], [DeveloperID], [BittiMi]) VALUES (2, N'2.proje', N'işin tanımı 2', CAST(N'1753-02-01' AS Date), CAST(N'1753-02-01' AS Date), 0, 1, N'açıklama2', 0, 0)
INSERT [dbo].[tbl_Proje] ([ProjeID], [ProjeAdi], [IsinTanimi], [BaslamaTarihi], [BitisTarihi], [GecenSure], [IstekMi], [Aciklama], [DeveloperID], [BittiMi]) VALUES (3, N'3.proje', N'işin tanımı 3', CAST(N'1753-02-01' AS Date), CAST(N'1753-02-01' AS Date), 0, 1, N'açıklama3', 0, 0)
INSERT [dbo].[tbl_Proje] ([ProjeID], [ProjeAdi], [IsinTanimi], [BaslamaTarihi], [BitisTarihi], [GecenSure], [IstekMi], [Aciklama], [DeveloperID], [BittiMi]) VALUES (4, N'4.proje', N'işin tanımı 4', CAST(N'1753-02-01' AS Date), CAST(N'1753-02-01' AS Date), 0, 1, N'açıklama4', 0, 0)
INSERT [dbo].[tbl_Proje] ([ProjeID], [ProjeAdi], [IsinTanimi], [BaslamaTarihi], [BitisTarihi], [GecenSure], [IstekMi], [Aciklama], [DeveloperID], [BittiMi]) VALUES (5, N'5.proje', N'işin tanımı 5', CAST(N'1753-02-01' AS Date), CAST(N'1753-02-01' AS Date), 0, 1, N'açıklama5', 0, 0)
INSERT [dbo].[tbl_Proje] ([ProjeID], [ProjeAdi], [IsinTanimi], [BaslamaTarihi], [BitisTarihi], [GecenSure], [IstekMi], [Aciklama], [DeveloperID], [BittiMi]) VALUES (6, N'6.proje', N'işin tanımı 6', CAST(N'1753-02-01' AS Date), CAST(N'1753-02-01' AS Date), 0, 0, N'açıklama6', 0, 0)
INSERT [dbo].[tbl_Proje] ([ProjeID], [ProjeAdi], [IsinTanimi], [BaslamaTarihi], [BitisTarihi], [GecenSure], [IstekMi], [Aciklama], [DeveloperID], [BittiMi]) VALUES (14, N'12.proje deve2 nin 2. görevi', N'işin tanımı 12', CAST(N'2017-08-24' AS Date), CAST(N'2017-08-24' AS Date), 0, 0, N'açıklama12
yeni açıklama12 deve2 nin görevi deve2 nin 2. görevi', 6, 0)
INSERT [dbo].[tbl_Proje] ([ProjeID], [ProjeAdi], [IsinTanimi], [BaslamaTarihi], [BitisTarihi], [GecenSure], [IstekMi], [Aciklama], [DeveloperID], [BittiMi]) VALUES (15, N'12.proje deve3 nin  görevi', N'işin tanımı 12', CAST(N'2017-08-08' AS Date), CAST(N'2017-08-31' AS Date), 15, 0, N'açıklama12
yeni açıklama12 deve2 nin görevi deve2 nin 2. görevi deve3 nin  görevi', 7, 0)
INSERT [dbo].[tbl_Proje] ([ProjeID], [ProjeAdi], [IsinTanimi], [BaslamaTarihi], [BitisTarihi], [GecenSure], [IstekMi], [Aciklama], [DeveloperID], [BittiMi]) VALUES (16, N'12.proje deve3 nin 2. görevi', N'işin tanımı 12', CAST(N'2017-08-24' AS Date), CAST(N'2017-08-24' AS Date), 0, 0, N'açıklama12
yeni açıklama12 deve2 nin görevi deve2 nin 2. görevi deve3 nin  görevi deve3 nin 2. görevi', 7, 0)
INSERT [dbo].[tbl_Proje] ([ProjeID], [ProjeAdi], [IsinTanimi], [BaslamaTarihi], [BitisTarihi], [GecenSure], [IstekMi], [Aciklama], [DeveloperID], [BittiMi]) VALUES (17, N'11.proje deve1 görevi', N'işin tanımı 11', CAST(N'2017-08-14' AS Date), CAST(N'2017-09-10' AS Date), 50, 1, N'açıklama11
yeni açıklama11 deve1 görevi', 5, 0)
INSERT [dbo].[tbl_Proje] ([ProjeID], [ProjeAdi], [IsinTanimi], [BaslamaTarihi], [BitisTarihi], [GecenSure], [IstekMi], [Aciklama], [DeveloperID], [BittiMi]) VALUES (18, N'11.proje deve1 2. görevi', N'işin tanımı 11', CAST(N'2017-08-24' AS Date), CAST(N'2017-08-24' AS Date), 0, 1, N'açıklama11
yeni açıklama11 deve1 görevi deve1 2. görevi', 5, 0)
INSERT [dbo].[tbl_Proje] ([ProjeID], [ProjeAdi], [IsinTanimi], [BaslamaTarihi], [BitisTarihi], [GecenSure], [IstekMi], [Aciklama], [DeveloperID], [BittiMi]) VALUES (19, N'11.proje deve2 görevi', N'işin tanımı 11', CAST(N'2017-08-22' AS Date), CAST(N'2017-09-03' AS Date), 20, 1, N'açıklama11
yeni açıklama11 deve1 görevi deve1 2. görevi deve2 görevi', 6, 0)
INSERT [dbo].[tbl_Proje] ([ProjeID], [ProjeAdi], [IsinTanimi], [BaslamaTarihi], [BitisTarihi], [GecenSure], [IstekMi], [Aciklama], [DeveloperID], [BittiMi]) VALUES (20, N'11.proje deve2 2.görevi', N'işin tanımı 11', CAST(N'2017-08-24' AS Date), CAST(N'2017-08-24' AS Date), 0, 1, N'açıklama11
yeni açıklama11 deve1 görevi deve1 2. görevi deve2 görevi deve2 2.görevi', 6, 0)
INSERT [dbo].[tbl_Proje] ([ProjeID], [ProjeAdi], [IsinTanimi], [BaslamaTarihi], [BitisTarihi], [GecenSure], [IstekMi], [Aciklama], [DeveloperID], [BittiMi]) VALUES (21, N'10.proje deve1 in görevi', N'işin tanımı 10', CAST(N'1753-02-01' AS Date), CAST(N'1753-02-01' AS Date), 0, 0, N'10.proje deve1 in görevi açıklama10
yeni açıklama10 deve1 in görevi 10.proje 1. görev bitiş açıklaması 
müşteri onaylamadı bug:yeni açıklama10 
istek:yeni istek10', 0, 1)
INSERT [dbo].[tbl_Proje] ([ProjeID], [ProjeAdi], [IsinTanimi], [BaslamaTarihi], [BitisTarihi], [GecenSure], [IstekMi], [Aciklama], [DeveloperID], [BittiMi]) VALUES (24, N'10.proje deve3 ün 2. görevi', N'işin tanımı 10', CAST(N'2017-08-24' AS Date), CAST(N'2017-08-24' AS Date), 0, 0, N'açıklama10
yeni açıklama10 deve1 in görevi deve1 in 2.görevi deve3 ün görevi deve3 ün 2. görevi', 7, 0)
INSERT [dbo].[tbl_Proje] ([ProjeID], [ProjeAdi], [IsinTanimi], [BaslamaTarihi], [BitisTarihi], [GecenSure], [IstekMi], [Aciklama], [DeveloperID], [BittiMi]) VALUES (25, N'9.proje deve1 in görevi', N'işin tanımı 9', CAST(N'2017-09-01' AS Date), CAST(N'2017-09-10' AS Date), 20, 0, N'açıklama9
yeni açıklama9 deve1 in görevi', 5, 0)
INSERT [dbo].[tbl_Proje] ([ProjeID], [ProjeAdi], [IsinTanimi], [BaslamaTarihi], [BitisTarihi], [GecenSure], [IstekMi], [Aciklama], [DeveloperID], [BittiMi]) VALUES (26, N'9.proje deve2 nin görevi', N'işin tanımı 9', CAST(N'2017-09-10' AS Date), CAST(N'2017-10-01' AS Date), 100, 0, N'açıklama9
yeni açıklama9 deve1 in görevi deve2 nin görevi', 6, 0)
INSERT [dbo].[tbl_Proje] ([ProjeID], [ProjeAdi], [IsinTanimi], [BaslamaTarihi], [BitisTarihi], [GecenSure], [IstekMi], [Aciklama], [DeveloperID], [BittiMi]) VALUES (27, N'9.proje deve3 nin görevi', N'işin tanımı 9', CAST(N'2017-08-28' AS Date), CAST(N'2017-09-04' AS Date), 10, 0, N'açıklama9
yeni açıklama9 deve1 in görevi deve2 nin görevi deve3 nin görevi', 7, 0)
INSERT [dbo].[tbl_Proje] ([ProjeID], [ProjeAdi], [IsinTanimi], [BaslamaTarihi], [BitisTarihi], [GecenSure], [IstekMi], [Aciklama], [DeveloperID], [BittiMi]) VALUES (28, N'8.proje deve1 in görevi (Checked)', N'işin tanımı 8', CAST(N'2017-08-14' AS Date), CAST(N'2017-09-02' AS Date), 30, 0, N'açıklama8 
yeni açıklama8 deve1 in görevi 8.proje bitiş açıklama8', 5, 1)
INSERT [dbo].[tbl_Proje] ([ProjeID], [ProjeAdi], [IsinTanimi], [BaslamaTarihi], [BitisTarihi], [GecenSure], [IstekMi], [Aciklama], [DeveloperID], [BittiMi]) VALUES (29, N'7.proje deve1 görev 1 (Checked)', N'işin tanımı 7', CAST(N'2017-08-16' AS Date), CAST(N'2017-09-02' AS Date), 20, 0, N'açıklama7  deve1 görev 1 bb', 5, 1)
INSERT [dbo].[tbl_Proje] ([ProjeID], [ProjeAdi], [IsinTanimi], [BaslamaTarihi], [BitisTarihi], [GecenSure], [IstekMi], [Aciklama], [DeveloperID], [BittiMi]) VALUES (30, N'7.proje deve1 görev 2', N'işin tanımı 7', CAST(N'2017-08-24' AS Date), CAST(N'2017-08-24' AS Date), 0, 0, N'açıklama7  deve1 görev 1 deve1 görev 2', 5, 0)
INSERT [dbo].[tbl_Proje] ([ProjeID], [ProjeAdi], [IsinTanimi], [BaslamaTarihi], [BitisTarihi], [GecenSure], [IstekMi], [Aciklama], [DeveloperID], [BittiMi]) VALUES (32, N'7.proje deve1 görev 4', N'işin tanımı 7', CAST(N'2017-08-17' AS Date), CAST(N'2017-09-01' AS Date), 10, 0, N'açıklama7  deve1 görev 1 deve1 görev 2 deve1 görev 3 deve1 görev 4', 5, 0)
INSERT [dbo].[tbl_Proje] ([ProjeID], [ProjeAdi], [IsinTanimi], [BaslamaTarihi], [BitisTarihi], [GecenSure], [IstekMi], [Aciklama], [DeveloperID], [BittiMi]) VALUES (34, N'7.proje deve1 görev 3', N'işin tanımı 7', CAST(N'1753-02-01' AS Date), CAST(N'1753-02-01' AS Date), 0, 0, N'7.proje deve1 görev 3 açıklama7  deve1 görev 1 deve1 görev 2 deve1 görev 3 cc', 0, 1)
INSERT [dbo].[tbl_Proje] ([ProjeID], [ProjeAdi], [IsinTanimi], [BaslamaTarihi], [BitisTarihi], [GecenSure], [IstekMi], [Aciklama], [DeveloperID], [BittiMi]) VALUES (35, N'7.proje deve1 görev 5', N'işin tanımı 7', CAST(N'1753-02-01' AS Date), CAST(N'1753-02-01' AS Date), 0, 0, N'7.proje deve1 görev 5 açıklama7  deve1 görev 1 deve1 görev 2 deve1 görev 3 deve1 görev 4 deve1 görev 5 aa', 0, 1)
SET IDENTITY_INSERT [dbo].[tbl_Proje] OFF
