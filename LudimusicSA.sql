USE [master]
GO
/****** Object:  Database [LudimusicSA]    Script Date: 23/12/2019 18:36:21 ******/
CREATE DATABASE [LudimusicSA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LudimusicSA', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\LudimusicSA.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LudimusicSA_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\LudimusicSA_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [LudimusicSA] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LudimusicSA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LudimusicSA] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LudimusicSA] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LudimusicSA] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LudimusicSA] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LudimusicSA] SET ARITHABORT OFF 
GO
ALTER DATABASE [LudimusicSA] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LudimusicSA] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LudimusicSA] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LudimusicSA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LudimusicSA] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LudimusicSA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LudimusicSA] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LudimusicSA] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LudimusicSA] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LudimusicSA] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LudimusicSA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LudimusicSA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LudimusicSA] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LudimusicSA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LudimusicSA] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LudimusicSA] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LudimusicSA] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LudimusicSA] SET RECOVERY FULL 
GO
ALTER DATABASE [LudimusicSA] SET  MULTI_USER 
GO
ALTER DATABASE [LudimusicSA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LudimusicSA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LudimusicSA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LudimusicSA] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [LudimusicSA] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'LudimusicSA', N'ON'
GO
ALTER DATABASE [LudimusicSA] SET QUERY_STORE = OFF
GO
USE [LudimusicSA]
GO
/****** Object:  Table [dbo].[STG_DIM_Client]    Script Date: 23/12/2019 18:36:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STG_DIM_Client](
	[BK_Client] [int] NOT NULL,
	[DS_Client] [nvarchar](255) NULL,
	[DS_Client_Category] [nvarchar](255) NULL,
	[CD_NIF] [nvarchar](11) NULL,
	[CD_LoginName] [nvarchar](100) NULL,
	[DS_TypeCliente] [nvarchar](100) NULL,
	[DS_AreaOfInterest] [nvarchar](100) NULL,
	[DS_Status] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[BK_Client] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[STG_DIM_Concurrent]    Script Date: 23/12/2019 18:36:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STG_DIM_Concurrent](
	[BK_Concurrent] [int] NOT NULL,
	[DS_Concurrent] [nvarchar](255) NULL,
	[DS_Product] [nvarchar](255) NULL,
	[DS_Product_Category] [nvarchar](255) NULL,
	[DS_Color] [nvarchar](255) NULL,
	[DS_Brand] [nvarchar](255) NULL,
	[NM_Price] [decimal](19, 2) NULL,
	[DS_Active] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[BK_Concurrent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[STG_DIM_MethodPayment]    Script Date: 23/12/2019 18:36:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STG_DIM_MethodPayment](
	[BK_MethodPayment] [int] NOT NULL,
	[DS_MethodPayment] [nvarchar](255) NULL,
	[DS_TypeMethodPayment] [nvarchar](255) NULL,
	[NM_FeeAmount] [decimal](10, 2) NULL,
	[DS_Company] [nvarchar](255) NULL,
	[DS_Status] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[BK_MethodPayment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[STG_DIM_Product]    Script Date: 23/12/2019 18:36:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STG_DIM_Product](
	[BK_Product] [int] NOT NULL,
	[DS_Product] [nvarchar](255) NULL,
	[DS_Product_Category] [nvarchar](255) NULL,
	[DS_Color] [nvarchar](255) NULL,
	[DS_Brand] [nvarchar](255) NULL,
	[AM_Price] [decimal](19, 2) NULL,
	[DS_Active] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[BK_Product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[STG_DIM_Region]    Script Date: 23/12/2019 18:36:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STG_DIM_Region](
	[BK_Region] [int] NOT NULL,
	[DS_Region] [nvarchar](255) NULL,
	[DS_City] [nvarchar](255) NULL,
	[DS_Country] [nvarchar](255) NULL,
	[CD_PostalCode] [nvarchar](255) NULL,
 CONSTRAINT [PK__STG_DIM_Regi__2EB90D3457A45B4C] PRIMARY KEY CLUSTERED 
(
	[BK_Region] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[STG_DIM_SalesChannel]    Script Date: 23/12/2019 18:36:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STG_DIM_SalesChannel](
	[BK_SalesChannel] [int] NOT NULL,
	[DS_SalesChannel] [nvarchar](255) NULL,
	[DS_TypeSalesChannel] [nvarchar](255) NULL,
	[DS_SiteName] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[BK_SalesChannel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[STG_DIM_Time]    Script Date: 23/12/2019 18:36:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STG_DIM_Time](
	[BK_Time] [int] NOT NULL,
	[DT_Date] [datetime] NOT NULL,
	[DT_Year] [date] NOT NULL,
	[DS_Shortdate] [char](10) NOT NULL,
	[DS_Day] [varchar](30) NOT NULL,
	[NM_DayNumber] [int] NOT NULL,
	[DS_Month] [varchar](30) NOT NULL,
	[NM_MonthNumber] [int] NOT NULL,
	[NM_Trimester] [int] NOT NULL,
	[NM_Semester] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BK_Time] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[STG_FCT_Inventory]    Script Date: 23/12/2019 18:36:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STG_FCT_Inventory](
	[FK_Region] [int] NOT NULL,
	[FK_Product] [int] NOT NULL,
	[FK_Time] [int] NOT NULL,
	[Stock] [decimal](19, 2) NULL,
	[UnitCost] [decimal](19, 2) NULL,
 CONSTRAINT [PK_STG_FCT_Inventory] PRIMARY KEY CLUSTERED 
(
	[FK_Region] ASC,
	[FK_Product] ASC,
	[FK_Time] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[STG_FCT_Market]    Script Date: 23/12/2019 18:36:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STG_FCT_Market](
	[FK_Region] [int] NOT NULL,
	[FK_Product] [int] NOT NULL,
	[FK_Time] [int] NOT NULL,
	[FK_Concurrent] [int] NOT NULL,
	[MarginValue] [decimal](19, 2) NULL,
 CONSTRAINT [PK_STG_FCT_Market] PRIMARY KEY CLUSTERED 
(
	[FK_Region] ASC,
	[FK_Product] ASC,
	[FK_Time] ASC,
	[FK_Concurrent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[STG_FCT_Sales]    Script Date: 23/12/2019 18:36:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STG_FCT_Sales](
	[FK_Client] [int] NOT NULL,
	[FK_Region] [int] NOT NULL,
	[FK_Product] [int] NOT NULL,
	[FK_Time] [int] NOT NULL,
	[FK_MethodPayment] [int] NOT NULL,
	[FK_SalesChannel] [int] NOT NULL,
	[SalesAmount] [decimal](19, 2) NULL,
	[FeeAmount] [decimal](19, 2) NULL,
 CONSTRAINT [PK__STG_FCT_Sale__C98F2A67926A4C6A] PRIMARY KEY CLUSTERED 
(
	[FK_Client] ASC,
	[FK_Region] ASC,
	[FK_Product] ASC,
	[FK_Time] ASC,
	[FK_MethodPayment] ASC,
	[FK_SalesChannel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[STG_FCT_Inventory]  WITH CHECK ADD  CONSTRAINT [FK_STG_FCT_Inventory_STG_DIM_Product] FOREIGN KEY([FK_Product])
REFERENCES [dbo].[STG_DIM_Product] ([BK_Product])
GO
ALTER TABLE [dbo].[STG_FCT_Inventory] CHECK CONSTRAINT [FK_STG_FCT_Inventory_STG_DIM_Product]
GO
ALTER TABLE [dbo].[STG_FCT_Inventory]  WITH CHECK ADD  CONSTRAINT [FK_STG_FCT_Inventory_STG_DIM_Region] FOREIGN KEY([FK_Region])
REFERENCES [dbo].[STG_DIM_Region] ([BK_Region])
GO
ALTER TABLE [dbo].[STG_FCT_Inventory] CHECK CONSTRAINT [FK_STG_FCT_Inventory_STG_DIM_Region]
GO
ALTER TABLE [dbo].[STG_FCT_Inventory]  WITH CHECK ADD  CONSTRAINT [FK_STG_FCT_Inventory_STG_DIM_Time] FOREIGN KEY([FK_Time])
REFERENCES [dbo].[STG_DIM_Time] ([BK_Time])
GO
ALTER TABLE [dbo].[STG_FCT_Inventory] CHECK CONSTRAINT [FK_STG_FCT_Inventory_STG_DIM_Time]
GO
ALTER TABLE [dbo].[STG_FCT_Market]  WITH CHECK ADD  CONSTRAINT [FK_STG_FCT_Market_STG_DIM_Concurrent] FOREIGN KEY([FK_Concurrent])
REFERENCES [dbo].[STG_DIM_Concurrent] ([BK_Concurrent])
GO
ALTER TABLE [dbo].[STG_FCT_Market] CHECK CONSTRAINT [FK_STG_FCT_Market_STG_DIM_Concurrent]
GO
ALTER TABLE [dbo].[STG_FCT_Market]  WITH CHECK ADD  CONSTRAINT [FK_STG_FCT_Market_STG_DIM_Product] FOREIGN KEY([FK_Product])
REFERENCES [dbo].[STG_DIM_Product] ([BK_Product])
GO
ALTER TABLE [dbo].[STG_FCT_Market] CHECK CONSTRAINT [FK_STG_FCT_Market_STG_DIM_Product]
GO
ALTER TABLE [dbo].[STG_FCT_Market]  WITH CHECK ADD  CONSTRAINT [FK_STG_FCT_Market_STG_DIM_Region] FOREIGN KEY([FK_Region])
REFERENCES [dbo].[STG_DIM_Region] ([BK_Region])
GO
ALTER TABLE [dbo].[STG_FCT_Market] CHECK CONSTRAINT [FK_STG_FCT_Market_STG_DIM_Region]
GO
ALTER TABLE [dbo].[STG_FCT_Market]  WITH CHECK ADD  CONSTRAINT [FK_STG_FCT_Market_STG_DIM_Time] FOREIGN KEY([FK_Time])
REFERENCES [dbo].[STG_DIM_Time] ([BK_Time])
GO
ALTER TABLE [dbo].[STG_FCT_Market] CHECK CONSTRAINT [FK_STG_FCT_Market_STG_DIM_Time]
GO
ALTER TABLE [dbo].[STG_FCT_Sales]  WITH CHECK ADD  CONSTRAINT [FK_STG_FCT_Sales_STG_DIM_Client] FOREIGN KEY([FK_Client])
REFERENCES [dbo].[STG_DIM_Client] ([BK_Client])
GO
ALTER TABLE [dbo].[STG_FCT_Sales] CHECK CONSTRAINT [FK_STG_FCT_Sales_STG_DIM_Client]
GO
ALTER TABLE [dbo].[STG_FCT_Sales]  WITH CHECK ADD  CONSTRAINT [FK_STG_FCT_Sales_STG_DIM_MethodPayment] FOREIGN KEY([FK_MethodPayment])
REFERENCES [dbo].[STG_DIM_MethodPayment] ([BK_MethodPayment])
GO
ALTER TABLE [dbo].[STG_FCT_Sales] CHECK CONSTRAINT [FK_STG_FCT_Sales_STG_DIM_MethodPayment]
GO
ALTER TABLE [dbo].[STG_FCT_Sales]  WITH CHECK ADD  CONSTRAINT [FK_STG_FCT_Sales_STG_DIM_Product] FOREIGN KEY([FK_Product])
REFERENCES [dbo].[STG_DIM_Product] ([BK_Product])
GO
ALTER TABLE [dbo].[STG_FCT_Sales] CHECK CONSTRAINT [FK_STG_FCT_Sales_STG_DIM_Product]
GO
ALTER TABLE [dbo].[STG_FCT_Sales]  WITH CHECK ADD  CONSTRAINT [FK_STG_FCT_Sales_STG_DIM_Region] FOREIGN KEY([FK_Region])
REFERENCES [dbo].[STG_DIM_Region] ([BK_Region])
GO
ALTER TABLE [dbo].[STG_FCT_Sales] CHECK CONSTRAINT [FK_STG_FCT_Sales_STG_DIM_Region]
GO
ALTER TABLE [dbo].[STG_FCT_Sales]  WITH CHECK ADD  CONSTRAINT [FK_STG_FCT_Sales_STG_DIM_SalesChannel] FOREIGN KEY([FK_SalesChannel])
REFERENCES [dbo].[STG_DIM_SalesChannel] ([BK_SalesChannel])
GO
ALTER TABLE [dbo].[STG_FCT_Sales] CHECK CONSTRAINT [FK_STG_FCT_Sales_STG_DIM_SalesChannel]
GO
ALTER TABLE [dbo].[STG_FCT_Sales]  WITH CHECK ADD  CONSTRAINT [FK_STG_FCT_Sales_STG_DIM_Time] FOREIGN KEY([FK_Time])
REFERENCES [dbo].[STG_DIM_Time] ([BK_Time])
GO
ALTER TABLE [dbo].[STG_FCT_Sales] CHECK CONSTRAINT [FK_STG_FCT_Sales_STG_DIM_Time]
GO
USE [master]
GO
ALTER DATABASE [LudimusicSA] SET  READ_WRITE 
GO
