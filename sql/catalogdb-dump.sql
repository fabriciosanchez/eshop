/****** Object:  Database [catalogdb]    Script Date: 10/4/2018 9:31:57 AM ******/
CREATE DATABASE [catalogdb]  ;
GO
ALTER DATABASE [catalogdb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [catalogdb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [catalogdb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [catalogdb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [catalogdb] SET ARITHABORT OFF 
GO
ALTER DATABASE [catalogdb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [catalogdb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [catalogdb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [catalogdb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [catalogdb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [catalogdb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [catalogdb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [catalogdb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [catalogdb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [catalogdb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [catalogdb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [catalogdb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [catalogdb] SET  MULTI_USER 
GO
ALTER DATABASE [catalogdb] SET QUERY_STORE = OFF
GO
/*** The scripts of database scoped configurations in Azure should be executed inside the target database connection. ***/
GO
-- ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
-- ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
-- ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
-- ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
-- ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
-- ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
-- ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
-- ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
-- ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
/****** Object:  Sequence [dbo].[catalog_brand_hilo]    Script Date: 10/4/2018 9:31:57 AM ******/
CREATE SEQUENCE [dbo].[catalog_brand_hilo] 
 AS [bigint]
 START WITH 1
 INCREMENT BY 10
 MINVALUE -9223372036854775808
 MAXVALUE 9223372036854775807
 CACHE 
GO
/****** Object:  Sequence [dbo].[catalog_hilo]    Script Date: 10/4/2018 9:31:57 AM ******/
CREATE SEQUENCE [dbo].[catalog_hilo] 
 AS [bigint]
 START WITH 1
 INCREMENT BY 10
 MINVALUE -9223372036854775808
 MAXVALUE 9223372036854775807
 CACHE 
GO
/****** Object:  Sequence [dbo].[catalog_type_hilo]    Script Date: 10/4/2018 9:31:57 AM ******/
CREATE SEQUENCE [dbo].[catalog_type_hilo] 
 AS [bigint]
 START WITH 1
 INCREMENT BY 10
 MINVALUE -9223372036854775808
 MAXVALUE 9223372036854775807
 CACHE 
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 10/4/2018 9:31:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BasketItem]    Script Date: 10/4/2018 9:31:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BasketItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BasketId] [int] NULL,
	[CatalogItemId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitPrice] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_BasketItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Baskets]    Script Date: 10/4/2018 9:31:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Baskets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BuyerId] [nvarchar](max) NULL,
 CONSTRAINT [PK_Baskets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catalog]    Script Date: 10/4/2018 9:31:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalog](
	[Id] [int] NOT NULL,
	[CatalogBrandId] [int] NOT NULL,
	[CatalogTypeId] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Name] [nvarchar](50) NOT NULL,
	[PictureUri] [nvarchar](max) NULL,
	[Price] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Catalog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatalogBrand]    Script Date: 10/4/2018 9:31:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatalogBrand](
	[Id] [int] NOT NULL,
	[Brand] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_CatalogBrand] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatalogType]    Script Date: 10/4/2018 9:31:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatalogType](
	[Id] [int] NOT NULL,
	[Type] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_CatalogType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItems]    Script Date: 10/4/2018 9:31:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NULL,
	[UnitPrice] [decimal](18, 2) NOT NULL,
	[Units] [int] NOT NULL,
	[ItemOrdered_CatalogItemId] [int] NOT NULL,
	[ItemOrdered_PictureUri] [nvarchar](max) NULL,
	[ItemOrdered_ProductName] [nvarchar](max) NULL,
 CONSTRAINT [PK_OrderItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 10/4/2018 9:31:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BuyerId] [nvarchar](max) NULL,
	[OrderDate] [datetimeoffset](7) NOT NULL,
	[ShipToAddress_City] [nvarchar](max) NULL,
	[ShipToAddress_Country] [nvarchar](max) NULL,
	[ShipToAddress_State] [nvarchar](max) NULL,
	[ShipToAddress_Street] [nvarchar](max) NULL,
	[ShipToAddress_ZipCode] [nvarchar](max) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20171018175735_Initial', N'2.1.0-rtm-30799')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180621152423_InitialModel', N'2.1.0-rtm-30799')
GO
SET IDENTITY_INSERT [dbo].[BasketItem] ON 
GO
INSERT [dbo].[BasketItem] ([Id], [BasketId], [CatalogItemId], [Quantity], [UnitPrice]) VALUES (1, 2, 1, 1, CAST(19.50 AS Decimal(18, 2)))
GO
SET IDENTITY_INSERT [dbo].[BasketItem] OFF
GO
SET IDENTITY_INSERT [dbo].[Baskets] ON 
GO
INSERT [dbo].[Baskets] ([Id], [BuyerId]) VALUES (1, N'demouser@microsoft.com')
GO
INSERT [dbo].[Baskets] ([Id], [BuyerId]) VALUES (2, N'ea520f02-1d91-4d0e-920a-c7b63370553e')
GO
SET IDENTITY_INSERT [dbo].[Baskets] OFF
GO
INSERT [dbo].[Catalog] ([Id], [CatalogBrandId], [CatalogTypeId], [Description], [Name], [PictureUri], [Price]) VALUES (1, 2, 2, N'.NET Bot Black Sweatshirt', N'.NET Bot Black Sweatshirt', N'http://catalogbaseurltobereplaced/images/products/1.png', CAST(19.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[Catalog] ([Id], [CatalogBrandId], [CatalogTypeId], [Description], [Name], [PictureUri], [Price]) VALUES (2, 2, 1, N'.NET Black & White Mug', N'.NET Black & White Mug', N'http://catalogbaseurltobereplaced/images/products/2.png', CAST(8.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[Catalog] ([Id], [CatalogBrandId], [CatalogTypeId], [Description], [Name], [PictureUri], [Price]) VALUES (3, 5, 2, N'Prism White T-Shirt', N'Prism White T-Shirt', N'http://catalogbaseurltobereplaced/images/products/3.png', CAST(12.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Catalog] ([Id], [CatalogBrandId], [CatalogTypeId], [Description], [Name], [PictureUri], [Price]) VALUES (4, 2, 2, N'.NET Foundation Sweatshirt', N'.NET Foundation Sweatshirt', N'http://catalogbaseurltobereplaced/images/products/4.png', CAST(12.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Catalog] ([Id], [CatalogBrandId], [CatalogTypeId], [Description], [Name], [PictureUri], [Price]) VALUES (5, 5, 3, N'Roslyn Red Sheet', N'Roslyn Red Sheet', N'http://catalogbaseurltobereplaced/images/products/5.png', CAST(8.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[Catalog] ([Id], [CatalogBrandId], [CatalogTypeId], [Description], [Name], [PictureUri], [Price]) VALUES (6, 2, 2, N'.NET Blue Sweatshirt', N'.NET Blue Sweatshirt', N'http://catalogbaseurltobereplaced/images/products/6.png', CAST(12.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Catalog] ([Id], [CatalogBrandId], [CatalogTypeId], [Description], [Name], [PictureUri], [Price]) VALUES (7, 5, 2, N'Roslyn Red T-Shirt', N'Roslyn Red T-Shirt', N'http://catalogbaseurltobereplaced/images/products/7.png', CAST(12.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Catalog] ([Id], [CatalogBrandId], [CatalogTypeId], [Description], [Name], [PictureUri], [Price]) VALUES (8, 5, 2, N'Kudu Purple Sweatshirt', N'Kudu Purple Sweatshirt', N'http://catalogbaseurltobereplaced/images/products/8.png', CAST(8.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[Catalog] ([Id], [CatalogBrandId], [CatalogTypeId], [Description], [Name], [PictureUri], [Price]) VALUES (9, 5, 1, N'Cup<T> White Mug', N'Cup<T> White Mug', N'http://catalogbaseurltobereplaced/images/products/9.png', CAST(12.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Catalog] ([Id], [CatalogBrandId], [CatalogTypeId], [Description], [Name], [PictureUri], [Price]) VALUES (10, 2, 3, N'.NET Foundation Sheet', N'.NET Foundation Sheet', N'http://catalogbaseurltobereplaced/images/products/10.png', CAST(12.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Catalog] ([Id], [CatalogBrandId], [CatalogTypeId], [Description], [Name], [PictureUri], [Price]) VALUES (11, 2, 3, N'Cup<T> Sheet', N'Cup<T> Sheet', N'http://catalogbaseurltobereplaced/images/products/11.png', CAST(8.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[Catalog] ([Id], [CatalogBrandId], [CatalogTypeId], [Description], [Name], [PictureUri], [Price]) VALUES (12, 5, 2, N'Prism White TShirt', N'Prism White TShirt', N'http://catalogbaseurltobereplaced/images/products/12.png', CAST(12.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[CatalogBrand] ([Id], [Brand]) VALUES (1, N'Azure')
GO
INSERT [dbo].[CatalogBrand] ([Id], [Brand]) VALUES (2, N'.NET')
GO
INSERT [dbo].[CatalogBrand] ([Id], [Brand]) VALUES (3, N'Visual Studio')
GO
INSERT [dbo].[CatalogBrand] ([Id], [Brand]) VALUES (4, N'SQL Server')
GO
INSERT [dbo].[CatalogBrand] ([Id], [Brand]) VALUES (5, N'Other')
GO
INSERT [dbo].[CatalogType] ([Id], [Type]) VALUES (1, N'Mug')
GO
INSERT [dbo].[CatalogType] ([Id], [Type]) VALUES (2, N'T-Shirt')
GO
INSERT [dbo].[CatalogType] ([Id], [Type]) VALUES (3, N'Sheet')
GO
INSERT [dbo].[CatalogType] ([Id], [Type]) VALUES (4, N'USB Memory Stick')
GO
/****** Object:  Index [IX_BasketItem_BasketId]    Script Date: 10/4/2018 9:31:58 AM ******/
CREATE NONCLUSTERED INDEX [IX_BasketItem_BasketId] ON [dbo].[BasketItem]
(
	[BasketId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Catalog_CatalogBrandId]    Script Date: 10/4/2018 9:31:58 AM ******/
CREATE NONCLUSTERED INDEX [IX_Catalog_CatalogBrandId] ON [dbo].[Catalog]
(
	[CatalogBrandId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Catalog_CatalogTypeId]    Script Date: 10/4/2018 9:31:58 AM ******/
CREATE NONCLUSTERED INDEX [IX_Catalog_CatalogTypeId] ON [dbo].[Catalog]
(
	[CatalogTypeId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderItems_OrderId]    Script Date: 10/4/2018 9:31:58 AM ******/
CREATE NONCLUSTERED INDEX [IX_OrderItems_OrderId] ON [dbo].[OrderItems]
(
	[OrderId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BasketItem]  WITH CHECK ADD  CONSTRAINT [FK_BasketItem_Baskets_BasketId] FOREIGN KEY([BasketId])
REFERENCES [dbo].[Baskets] ([Id])
GO
ALTER TABLE [dbo].[BasketItem] CHECK CONSTRAINT [FK_BasketItem_Baskets_BasketId]
GO
ALTER TABLE [dbo].[Catalog]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_CatalogBrand_CatalogBrandId] FOREIGN KEY([CatalogBrandId])
REFERENCES [dbo].[CatalogBrand] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Catalog] CHECK CONSTRAINT [FK_Catalog_CatalogBrand_CatalogBrandId]
GO
ALTER TABLE [dbo].[Catalog]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_CatalogType_CatalogTypeId] FOREIGN KEY([CatalogTypeId])
REFERENCES [dbo].[CatalogType] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Catalog] CHECK CONSTRAINT [FK_Catalog_CatalogType_CatalogTypeId]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Orders_OrderId]
GO
ALTER DATABASE [catalogdb] SET  READ_WRITE 
GO
