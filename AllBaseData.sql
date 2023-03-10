USE [Prueba]
GO
/****** Object:  Database [Prueba]    Script Date: 2/22/2023 8:13:33 PM ******/
CREATE DATABASE [Prueba]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Prueba', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Prueba.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Prueba_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Prueba.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Prueba] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Prueba].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Prueba] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Prueba] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Prueba] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Prueba] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Prueba] SET ARITHABORT OFF 
GO
ALTER DATABASE [Prueba] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Prueba] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Prueba] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Prueba] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Prueba] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Prueba] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Prueba] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Prueba] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Prueba] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Prueba] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Prueba] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Prueba] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Prueba] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Prueba] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Prueba] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Prueba] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Prueba] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Prueba] SET RECOVERY FULL 
GO
ALTER DATABASE [Prueba] SET  MULTI_USER 
GO
ALTER DATABASE [Prueba] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Prueba] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Prueba] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Prueba] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Prueba] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Prueba] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Prueba', N'ON'
GO
ALTER DATABASE [Prueba] SET QUERY_STORE = ON
GO
--ALTER DATABASE [Prueba] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
--GO
USE [Prueba]
GO
/****** Object:  UserDefinedTableType [dbo].[TVP_OrderProducts]    Script Date: 2/22/2023 8:13:33 PM ******/
CREATE TYPE [dbo].[TVP_OrderProducts] AS TABLE(
	[name] [varchar](20) NULL,
	[quantity] [int] NOT NULL
)
GO
/****** Object:  Table [dbo].[ActionsTypes]    Script Date: 2/22/2023 8:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActionsTypes](
	[idActionType] [int] IDENTITY(1,1) NOT NULL,
	[nameActionType] [varchar](20) NULL,
 CONSTRAINT [pk_idActionType] PRIMARY KEY CLUSTERED 
(
	[idActionType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Addresses]    Script Date: 2/22/2023 8:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Addresses](
	[idAddress] [int] IDENTITY(1,1) NOT NULL,
	[idDistrict] [int] NOT NULL,
	[address1] [varchar](20) NULL,
	[address2] [varchar](20) NULL,
 CONSTRAINT [pk_idAddress] PRIMARY KEY CLUSTERED 
(
	[idAddress] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bills]    Script Date: 2/22/2023 8:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bills](
	[idBill] [int] IDENTITY(1,1) NOT NULL,
	[idOrder] [int] NOT NULL,
	[date] [date] NOT NULL,
	[total] [money] NOT NULL,
 CONSTRAINT [PK_Bills] PRIMARY KEY CLUSTERED 
(
	[idBill] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cantons]    Script Date: 2/22/2023 8:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cantons](
	[idCanton] [int] IDENTITY(1,1) NOT NULL,
	[idProvince] [int] NOT NULL,
	[nameCanton] [varchar](20) NULL,
 CONSTRAINT [pk_idCanton] PRIMARY KEY CLUSTERED 
(
	[idCanton] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommentsForServices]    Script Date: 2/22/2023 8:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommentsForServices](
	[idComments] [int] IDENTITY(1,1) NOT NULL,
	[idPerson] [int] NOT NULL,
	[idOrder] [int] NOT NULL,
	[descriptionComments] [varchar](200) NULL,
	[calification] [int] NULL,
 CONSTRAINT [pk_idUserComments] PRIMARY KEY CLUSTERED 
(
	[idComments] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Companies]    Script Date: 2/22/2023 8:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Companies](
	[idCompany] [int] IDENTITY(1,1) NOT NULL,
	[nameCompany] [varchar](20) NULL,
 CONSTRAINT [pk_idCompany] PRIMARY KEY CLUSTERED 
(
	[idCompany] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 2/22/2023 8:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[idContact] [int] IDENTITY(1,1) NOT NULL,
	[idContactType] [int] NOT NULL,
	[value] [int] NOT NULL,
	[idPerson] [int] NOT NULL,
	[idProvider] [int] NOT NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[idContact] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactsTypes]    Script Date: 2/22/2023 8:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactsTypes](
	[idContactType] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ContactsTypes] PRIMARY KEY CLUSTERED 
(
	[idContactType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactsXPerson]    Script Date: 2/22/2023 8:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactsXPerson](
	[idContactsXPerson] [int] IDENTITY(1,1) NOT NULL,
	[idContact] [int] NOT NULL,
	[idPerson] [int] NOT NULL,
 CONSTRAINT [PK_ContactsXPerson] PRIMARY KEY CLUSTERED 
(
	[idContactsXPerson] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactsXProviders]    Script Date: 2/22/2023 8:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactsXProviders](
	[idContactsXProviders] [int] IDENTITY(1,1) NOT NULL,
	[idContact] [int] NOT NULL,
	[idProvider] [int] NOT NULL,
 CONSTRAINT [PK_ContactsXProviders] PRIMARY KEY CLUSTERED 
(
	[idContactsXProviders] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Continents]    Script Date: 2/22/2023 8:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Continents](
	[idContinent] [int] IDENTITY(1,1) NOT NULL,
	[nameContinent] [varchar](20) NULL,
 CONSTRAINT [pk_idContinent] PRIMARY KEY CLUSTERED 
(
	[idContinent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 2/22/2023 8:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[idCountry] [int] IDENTITY(1,1) NOT NULL,
	[idContinent] [int] NOT NULL,
	[idDemonym] [int] NOT NULL,
	[nameCountry] [varchar](20) NULL,
 CONSTRAINT [pk_idCountry] PRIMARY KEY CLUSTERED 
(
	[idCountry] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Demonyms]    Script Date: 2/22/2023 8:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Demonyms](
	[idDemonym] [int] IDENTITY(1,1) NOT NULL,
	[nameDemonym] [varchar](20) NULL,
 CONSTRAINT [pk_idDemonym] PRIMARY KEY CLUSTERED 
(
	[idDemonym] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Devolutions]    Script Date: 2/22/2023 8:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Devolutions](
	[idDevolutions] [int] NOT NULL,
	[idProduct] [int] NOT NULL,
	[idDevolutionType] [int] NOT NULL,
	[idService] [int] NOT NULL,
	[quantity] [int] NOT NULL,
 CONSTRAINT [PK_Devolutions] PRIMARY KEY CLUSTERED 
(
	[idDevolutions] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DevolutionsTypes]    Script Date: 2/22/2023 8:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DevolutionsTypes](
	[idDevolutionType] [int] NOT NULL,
	[description] [varchar](100) NOT NULL,
 CONSTRAINT [PK_DevolutionsTypes] PRIMARY KEY CLUSTERED 
(
	[idDevolutionType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Districts]    Script Date: 2/22/2023 8:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Districts](
	[idDistrict] [int] IDENTITY(1,1) NOT NULL,
	[idCanton] [int] NOT NULL,
	[nameDistrict] [varchar](20) NULL,
 CONSTRAINT [pk_idDistrict] PRIMARY KEY CLUSTERED 
(
	[idDistrict] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genders]    Script Date: 2/22/2023 8:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genders](
	[idGender] [int] IDENTITY(1,1) NOT NULL,
	[descriptionGender] [varchar](50) NULL,
 CONSTRAINT [pk_idGender] PRIMARY KEY CLUSTERED 
(
	[idGender] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Identifications]    Script Date: 2/22/2023 8:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Identifications](
	[idIdentification] [int] IDENTITY(1,1) NOT NULL,
	[idPerson] [int] NOT NULL,
	[idIdentificationType] [int] NOT NULL,
	[valueIdentification] [int] NULL,
 CONSTRAINT [pk_idIdentification] PRIMARY KEY CLUSTERED 
(
	[idIdentification] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdentificationsTypes]    Script Date: 2/22/2023 8:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentificationsTypes](
	[idIdentificationType] [int] IDENTITY(1,1) NOT NULL,
	[nameIdentificationType] [varchar](20) NULL,
	[mask] [varchar](20) NULL,
 CONSTRAINT [pk_idIdentificationType] PRIMARY KEY CLUSTERED 
(
	[idIdentificationType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InventoryLogs]    Script Date: 2/22/2023 8:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryLogs](
	[idInventoryLogs] [int] IDENTITY(1,1) NOT NULL,
	[idProductStatus] [int] NOT NULL,
	[idActionType] [int] NOT NULL,
	[idProduct] [int] NOT NULL,
	[postTime] [date] NULL,
	[quantity] [int] NULL,
	[buyPrice] [int] NULL,
	[sellPrice] [int] NULL,
	[limitDate] [date] NULL,
 CONSTRAINT [pk_idInventoryLogs] PRIMARY KEY CLUSTERED 
(
	[idInventoryLogs] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 2/22/2023 8:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[idOrder] [int] IDENTITY(1,1) NOT NULL,
	[idPerson] [int] NOT NULL,
	[totalPrice] [money] NULL,
	[totalWeight] [int] NULL,
	[idOrderState] [int] NOT NULL,
	[postTime] [date] NULL,
	[idAddress] [int] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[idOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdersState]    Script Date: 2/22/2023 8:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdersState](
	[idOrderState] [int] IDENTITY(1,1) NOT NULL,
	[description] [varchar](100) NULL,
 CONSTRAINT [PK_OrdersState] PRIMARY KEY CLUSTERED 
(
	[idOrderState] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdersXServices]    Script Date: 2/22/2023 8:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdersXServices](
	[idOrderXService] [int] IDENTITY(1,1) NOT NULL,
	[idOrder] [int] NOT NULL,
	[idService] [int] NOT NULL,
	[postTime] [date] NOT NULL,
	[serviceFinished] [bit] NOT NULL,
 CONSTRAINT [PK_OrdersXServices] PRIMARY KEY CLUSTERED 
(
	[idOrderXService] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Person]    Script Date: 2/22/2023 8:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[idPerson] [int] IDENTITY(1,1) NOT NULL,
	[idGender] [int] NOT NULL,
	[idAddress] [int] NOT NULL,
	[birthday] [date] NULL,
	[namePerson] [varchar](20) NULL,
	[photoURL] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[userName] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[creationDate] [date] NULL,
 CONSTRAINT [pk_idPerson] PRIMARY KEY CLUSTERED 
(
	[idPerson] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 2/22/2023 8:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[idProduct] [int] IDENTITY(1,1) NOT NULL,
	[idUnit] [int] NOT NULL,
	[nameProduct] [varchar](50) NULL,
	[iconProduct] [varchar](100) NULL,
	[enable] [bit] NOT NULL,
	[price] [money] NOT NULL,
 CONSTRAINT [pk_idProduct] PRIMARY KEY CLUSTERED 
(
	[idProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductStatus]    Script Date: 2/22/2023 8:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductStatus](
	[idProductStatus] [int] IDENTITY(1,1) NOT NULL,
	[nameProductStatus] [varchar](20) NULL,
	[iconURL] [varchar](50) NULL,
 CONSTRAINT [pk_idProductStatus] PRIMARY KEY CLUSTERED 
(
	[idProductStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductsXOrders]    Script Date: 2/22/2023 8:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsXOrders](
	[idProductsXOrders] [int] IDENTITY(1,1) NOT NULL,
	[idProducts] [int] NOT NULL,
	[idOrders] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[price] [money] NOT NULL,
 CONSTRAINT [PK_ProductsXOrders] PRIMARY KEY CLUSTERED 
(
	[idProductsXOrders] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductsXProvider]    Script Date: 2/22/2023 8:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsXProvider](
	[idProductXProvider] [int] IDENTITY(1,1) NOT NULL,
	[idProduct] [int] NOT NULL,
	[idProvider] [int] NOT NULL,
	[postTime] [date] NULL,
 CONSTRAINT [PK_ProductsXProvider] PRIMARY KEY CLUSTERED 
(
	[idProductXProvider] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provider]    Script Date: 2/22/2023 8:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provider](
	[idProvider] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](50) NOT NULL,
	[phone] [int] NULL,
	[mail] [nchar](10) NULL,
	[idAddress] [int] NOT NULL,
 CONSTRAINT [PK_Provider] PRIMARY KEY CLUSTERED 
(
	[idProvider] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provinces]    Script Date: 2/22/2023 8:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provinces](
	[idProvince] [int] IDENTITY(1,1) NOT NULL,
	[idCountry] [int] NOT NULL,
	[nameProvince] [varchar](20) NULL,
 CONSTRAINT [pk_idProvince] PRIMARY KEY CLUSTERED 
(
	[idProvince] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Routes]    Script Date: 2/22/2023 8:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Routes](
	[idRoute] [int] IDENTITY(1,1) NOT NULL,
	[idService] [int] NOT NULL,
	[idVehicle] [int] NOT NULL,
	[attendantName] [varchar](20) NULL,
	[destiny] [varchar](100) NULL,
	[dateOfRoute] [date] NULL,
	[idRouteSate] [int] NOT NULL,
 CONSTRAINT [pk_idRoute] PRIMARY KEY CLUSTERED 
(
	[idRoute] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoutesStates]    Script Date: 2/22/2023 8:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoutesStates](
	[idRouteState] [int] IDENTITY(1,1) NOT NULL,
	[description] [varchar](50) NOT NULL,
 CONSTRAINT [PK_RoutesStates] PRIMARY KEY CLUSTERED 
(
	[idRouteState] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 2/22/2023 8:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[idService] [int] IDENTITY(1,1) NOT NULL,
	[nameService] [varchar](20) NULL,
	[destiny] [varchar](50) NULL,
 CONSTRAINT [pk_idService] PRIMARY KEY CLUSTERED 
(
	[idService] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StorageSpaces]    Script Date: 2/22/2023 8:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StorageSpaces](
	[idStorageSpace] [int] IDENTITY(1,1) NOT NULL,
	[idStorageType] [int] NOT NULL,
	[idCompany] [int] NOT NULL,
	[idInventoryLogs] [int] NOT NULL,
	[nameStorageSpace] [varchar](20) NULL,
	[code] [int] NULL,
	[capacity] [int] NULL,
	[location] [varchar](50) NULL,
	[height] [int] NULL,
	[width] [int] NULL,
	[deep] [int] NULL,
	[level] [int] NULL,
 CONSTRAINT [pk_idStorageSpace] PRIMARY KEY CLUSTERED 
(
	[idStorageSpace] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StoragesTypes]    Script Date: 2/22/2023 8:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StoragesTypes](
	[idStoragesTypes] [int] IDENTITY(1,1) NOT NULL,
	[nameStoragesTypes] [varchar](20) NULL,
 CONSTRAINT [pk_StoragesTypes] PRIMARY KEY CLUSTERED 
(
	[idStoragesTypes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Units]    Script Date: 2/22/2023 8:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Units](
	[idUnit] [int] IDENTITY(1,1) NOT NULL,
	[nameUnit] [varchar](20) NULL,
 CONSTRAINT [pk_idUnit] PRIMARY KEY CLUSTERED 
(
	[idUnit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsersTypes]    Script Date: 2/22/2023 8:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersTypes](
	[idUserType] [int] IDENTITY(1,1) NOT NULL,
	[idPerson] [int] NOT NULL,
	[nameUserType] [varchar](20) NULL,
 CONSTRAINT [pk_idUserType] PRIMARY KEY CLUSTERED 
(
	[idUserType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicles]    Script Date: 2/22/2023 8:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicles](
	[idVehicle] [int] IDENTITY(1,1) NOT NULL,
	[idVehicleType] [int] NOT NULL,
	[dateOfInscription] [date] NULL,
	[weight] [int] NULL,
	[driverName] [varchar](20) NULL,
 CONSTRAINT [pk_idVehicle] PRIMARY KEY CLUSTERED 
(
	[idVehicle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VehiclesTypes]    Script Date: 2/22/2023 8:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehiclesTypes](
	[idVehicleType] [int] IDENTITY(1,1) NOT NULL,
	[vehicleTypeName] [varchar](20) NULL,
 CONSTRAINT [pk_idVehicleType] PRIMARY KEY CLUSTERED 
(
	[idVehicleType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Addresses]  WITH CHECK ADD  CONSTRAINT [fk_address_district] FOREIGN KEY([idDistrict])
REFERENCES [dbo].[Districts] ([idDistrict])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Addresses] CHECK CONSTRAINT [fk_address_district]
GO
ALTER TABLE [dbo].[Bills]  WITH CHECK ADD  CONSTRAINT [FK_Bills_Orders] FOREIGN KEY([idOrder])
REFERENCES [dbo].[Orders] ([idOrder])
GO
ALTER TABLE [dbo].[Bills] CHECK CONSTRAINT [FK_Bills_Orders]
GO
ALTER TABLE [dbo].[Cantons]  WITH CHECK ADD  CONSTRAINT [fk_Canton_Province] FOREIGN KEY([idProvince])
REFERENCES [dbo].[Provinces] ([idProvince])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cantons] CHECK CONSTRAINT [fk_Canton_Province]
GO
ALTER TABLE [dbo].[CommentsForServices]  WITH CHECK ADD  CONSTRAINT [fk_Comment_Person] FOREIGN KEY([idPerson])
REFERENCES [dbo].[Person] ([idPerson])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CommentsForServices] CHECK CONSTRAINT [fk_Comment_Person]
GO
ALTER TABLE [dbo].[CommentsForServices]  WITH CHECK ADD  CONSTRAINT [FK_CommentsForServices_Orders] FOREIGN KEY([idOrder])
REFERENCES [dbo].[Orders] ([idOrder])
GO
ALTER TABLE [dbo].[CommentsForServices] CHECK CONSTRAINT [FK_CommentsForServices_Orders]
GO
ALTER TABLE [dbo].[Contacts]  WITH CHECK ADD  CONSTRAINT [FK_Contacts_ContactsTypes] FOREIGN KEY([idContactType])
REFERENCES [dbo].[ContactsTypes] ([idContactType])
GO
ALTER TABLE [dbo].[Contacts] CHECK CONSTRAINT [FK_Contacts_ContactsTypes]
GO
ALTER TABLE [dbo].[ContactsXPerson]  WITH CHECK ADD  CONSTRAINT [FK_ContactsXPerson_Contacts] FOREIGN KEY([idContact])
REFERENCES [dbo].[Contacts] ([idContact])
GO
ALTER TABLE [dbo].[ContactsXPerson] CHECK CONSTRAINT [FK_ContactsXPerson_Contacts]
GO
ALTER TABLE [dbo].[ContactsXPerson]  WITH CHECK ADD  CONSTRAINT [FK_ContactsXPerson_Person] FOREIGN KEY([idPerson])
REFERENCES [dbo].[Person] ([idPerson])
GO
ALTER TABLE [dbo].[ContactsXPerson] CHECK CONSTRAINT [FK_ContactsXPerson_Person]
GO
ALTER TABLE [dbo].[ContactsXProviders]  WITH CHECK ADD  CONSTRAINT [FK_ContactsXProviders_Contacts] FOREIGN KEY([idContact])
REFERENCES [dbo].[Contacts] ([idContact])
GO
ALTER TABLE [dbo].[ContactsXProviders] CHECK CONSTRAINT [FK_ContactsXProviders_Contacts]
GO
ALTER TABLE [dbo].[ContactsXProviders]  WITH CHECK ADD  CONSTRAINT [FK_ContactsXProviders_Provider] FOREIGN KEY([idProvider])
REFERENCES [dbo].[Provider] ([idProvider])
GO
ALTER TABLE [dbo].[ContactsXProviders] CHECK CONSTRAINT [FK_ContactsXProviders_Provider]
GO
ALTER TABLE [dbo].[Countries]  WITH CHECK ADD  CONSTRAINT [fk_Country_Continent] FOREIGN KEY([idContinent])
REFERENCES [dbo].[Continents] ([idContinent])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Countries] CHECK CONSTRAINT [fk_Country_Continent]
GO
ALTER TABLE [dbo].[Countries]  WITH CHECK ADD  CONSTRAINT [fk_Country_Demonym] FOREIGN KEY([idDemonym])
REFERENCES [dbo].[Demonyms] ([idDemonym])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Countries] CHECK CONSTRAINT [fk_Country_Demonym]
GO
ALTER TABLE [dbo].[Devolutions]  WITH CHECK ADD  CONSTRAINT [FK_Devolutions_DevolutionsTypes] FOREIGN KEY([idDevolutionType])
REFERENCES [dbo].[DevolutionsTypes] ([idDevolutionType])
GO
ALTER TABLE [dbo].[Devolutions] CHECK CONSTRAINT [FK_Devolutions_DevolutionsTypes]
GO
ALTER TABLE [dbo].[Devolutions]  WITH CHECK ADD  CONSTRAINT [FK_Devolutions_Products] FOREIGN KEY([idProduct])
REFERENCES [dbo].[Products] ([idProduct])
GO
ALTER TABLE [dbo].[Devolutions] CHECK CONSTRAINT [FK_Devolutions_Products]
GO
ALTER TABLE [dbo].[Devolutions]  WITH CHECK ADD  CONSTRAINT [FK_Devolutions_Services] FOREIGN KEY([idService])
REFERENCES [dbo].[Services] ([idService])
GO
ALTER TABLE [dbo].[Devolutions] CHECK CONSTRAINT [FK_Devolutions_Services]
GO
ALTER TABLE [dbo].[Districts]  WITH CHECK ADD  CONSTRAINT [fk_Distric_Canton] FOREIGN KEY([idCanton])
REFERENCES [dbo].[Cantons] ([idCanton])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Districts] CHECK CONSTRAINT [fk_Distric_Canton]
GO
ALTER TABLE [dbo].[Identifications]  WITH CHECK ADD  CONSTRAINT [fk_Identification_IdentificationType] FOREIGN KEY([idIdentificationType])
REFERENCES [dbo].[IdentificationsTypes] ([idIdentificationType])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Identifications] CHECK CONSTRAINT [fk_Identification_IdentificationType]
GO
ALTER TABLE [dbo].[Identifications]  WITH CHECK ADD  CONSTRAINT [fk_Identification_Person] FOREIGN KEY([idPerson])
REFERENCES [dbo].[Person] ([idPerson])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Identifications] CHECK CONSTRAINT [fk_Identification_Person]
GO
ALTER TABLE [dbo].[InventoryLogs]  WITH CHECK ADD  CONSTRAINT [fk_InventoryLogs_ActionType] FOREIGN KEY([idActionType])
REFERENCES [dbo].[ActionsTypes] ([idActionType])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[InventoryLogs] CHECK CONSTRAINT [fk_InventoryLogs_ActionType]
GO
ALTER TABLE [dbo].[InventoryLogs]  WITH CHECK ADD  CONSTRAINT [fk_InventoryLogs_Product] FOREIGN KEY([idProduct])
REFERENCES [dbo].[Products] ([idProduct])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[InventoryLogs] CHECK CONSTRAINT [fk_InventoryLogs_Product]
GO
ALTER TABLE [dbo].[InventoryLogs]  WITH CHECK ADD  CONSTRAINT [fk_InventoryLogs_ProductStatus] FOREIGN KEY([idProductStatus])
REFERENCES [dbo].[ProductStatus] ([idProductStatus])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[InventoryLogs] CHECK CONSTRAINT [fk_InventoryLogs_ProductStatus]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Addresses] FOREIGN KEY([idAddress])
REFERENCES [dbo].[Addresses] ([idAddress])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Addresses]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_OrdersState] FOREIGN KEY([idOrderState])
REFERENCES [dbo].[OrdersState] ([idOrderState])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_OrdersState]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Person] FOREIGN KEY([idPerson])
REFERENCES [dbo].[Person] ([idPerson])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Person]
GO
ALTER TABLE [dbo].[OrdersXServices]  WITH CHECK ADD  CONSTRAINT [FK_OrdersXServices_Orders] FOREIGN KEY([idOrder])
REFERENCES [dbo].[Orders] ([idOrder])
GO
ALTER TABLE [dbo].[OrdersXServices] CHECK CONSTRAINT [FK_OrdersXServices_Orders]
GO
ALTER TABLE [dbo].[OrdersXServices]  WITH CHECK ADD  CONSTRAINT [FK_OrdersXServices_Services] FOREIGN KEY([idService])
REFERENCES [dbo].[Services] ([idService])
GO
ALTER TABLE [dbo].[OrdersXServices] CHECK CONSTRAINT [FK_OrdersXServices_Services]
GO
ALTER TABLE [dbo].[Person]  WITH CHECK ADD  CONSTRAINT [fk_Person_Address] FOREIGN KEY([idAddress])
REFERENCES [dbo].[Addresses] ([idAddress])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Person] CHECK CONSTRAINT [fk_Person_Address]
GO
ALTER TABLE [dbo].[Person]  WITH CHECK ADD  CONSTRAINT [fk_Person_Gender] FOREIGN KEY([idGender])
REFERENCES [dbo].[Genders] ([idGender])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Person] CHECK CONSTRAINT [fk_Person_Gender]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [fk_Product_Unit] FOREIGN KEY([idUnit])
REFERENCES [dbo].[Units] ([idUnit])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [fk_Product_Unit]
GO
ALTER TABLE [dbo].[ProductsXOrders]  WITH CHECK ADD  CONSTRAINT [FK_ProductsXOrders_Products] FOREIGN KEY([idOrders])
REFERENCES [dbo].[Orders] ([idOrder])
GO
ALTER TABLE [dbo].[ProductsXOrders] CHECK CONSTRAINT [FK_ProductsXOrders_Products]
GO
ALTER TABLE [dbo].[ProductsXOrders]  WITH CHECK ADD  CONSTRAINT [FK_ProductsXOrders_Products1] FOREIGN KEY([idProducts])
REFERENCES [dbo].[Products] ([idProduct])
GO
ALTER TABLE [dbo].[ProductsXOrders] CHECK CONSTRAINT [FK_ProductsXOrders_Products1]
GO
ALTER TABLE [dbo].[ProductsXProvider]  WITH CHECK ADD  CONSTRAINT [FK_ProductsXProvider_Products] FOREIGN KEY([idProduct])
REFERENCES [dbo].[Products] ([idProduct])
GO
ALTER TABLE [dbo].[ProductsXProvider] CHECK CONSTRAINT [FK_ProductsXProvider_Products]
GO
ALTER TABLE [dbo].[ProductsXProvider]  WITH CHECK ADD  CONSTRAINT [FK_ProductsXProvider_Provider] FOREIGN KEY([idProvider])
REFERENCES [dbo].[Provider] ([idProvider])
GO
ALTER TABLE [dbo].[ProductsXProvider] CHECK CONSTRAINT [FK_ProductsXProvider_Provider]
GO
ALTER TABLE [dbo].[Provider]  WITH CHECK ADD  CONSTRAINT [FK_Provider_Addresses] FOREIGN KEY([idAddress])
REFERENCES [dbo].[Addresses] ([idAddress])
GO
ALTER TABLE [dbo].[Provider] CHECK CONSTRAINT [FK_Provider_Addresses]
GO
ALTER TABLE [dbo].[Provinces]  WITH CHECK ADD  CONSTRAINT [fk_Province_Country] FOREIGN KEY([idCountry])
REFERENCES [dbo].[Countries] ([idCountry])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Provinces] CHECK CONSTRAINT [fk_Province_Country]
GO
ALTER TABLE [dbo].[Routes]  WITH CHECK ADD  CONSTRAINT [FK_Routes_RoutesStates] FOREIGN KEY([idRouteSate])
REFERENCES [dbo].[RoutesStates] ([idRouteState])
GO
ALTER TABLE [dbo].[Routes] CHECK CONSTRAINT [FK_Routes_RoutesStates]
GO
ALTER TABLE [dbo].[Routes]  WITH CHECK ADD  CONSTRAINT [fk_Routes_Service] FOREIGN KEY([idService])
REFERENCES [dbo].[Services] ([idService])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Routes] CHECK CONSTRAINT [fk_Routes_Service]
GO
ALTER TABLE [dbo].[Routes]  WITH CHECK ADD  CONSTRAINT [fk_Routes_Vehicle] FOREIGN KEY([idVehicle])
REFERENCES [dbo].[Vehicles] ([idVehicle])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Routes] CHECK CONSTRAINT [fk_Routes_Vehicle]
GO
ALTER TABLE [dbo].[StorageSpaces]  WITH CHECK ADD  CONSTRAINT [fk_StorageSpaces_Company] FOREIGN KEY([idCompany])
REFERENCES [dbo].[Companies] ([idCompany])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StorageSpaces] CHECK CONSTRAINT [fk_StorageSpaces_Company]
GO
ALTER TABLE [dbo].[StorageSpaces]  WITH CHECK ADD  CONSTRAINT [fk_StorageSpaces_InventoryLogs] FOREIGN KEY([idInventoryLogs])
REFERENCES [dbo].[InventoryLogs] ([idInventoryLogs])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StorageSpaces] CHECK CONSTRAINT [fk_StorageSpaces_InventoryLogs]
GO
ALTER TABLE [dbo].[StorageSpaces]  WITH CHECK ADD  CONSTRAINT [FK_StorageSpaces_StorageSpaces] FOREIGN KEY([idStorageSpace])
REFERENCES [dbo].[StorageSpaces] ([idStorageSpace])
GO
ALTER TABLE [dbo].[StorageSpaces] CHECK CONSTRAINT [FK_StorageSpaces_StorageSpaces]
GO
ALTER TABLE [dbo].[StorageSpaces]  WITH CHECK ADD  CONSTRAINT [fk_StorageSpaces_StorageType] FOREIGN KEY([idStorageType])
REFERENCES [dbo].[StoragesTypes] ([idStoragesTypes])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StorageSpaces] CHECK CONSTRAINT [fk_StorageSpaces_StorageType]
GO
ALTER TABLE [dbo].[UsersTypes]  WITH CHECK ADD  CONSTRAINT [fk_UsersTypes_Person] FOREIGN KEY([idPerson])
REFERENCES [dbo].[Person] ([idPerson])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UsersTypes] CHECK CONSTRAINT [fk_UsersTypes_Person]
GO
ALTER TABLE [dbo].[Vehicles]  WITH CHECK ADD  CONSTRAINT [fk_Vehicle_VehicleType] FOREIGN KEY([idVehicleType])
REFERENCES [dbo].[VehiclesTypes] ([idVehicleType])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Vehicles] CHECK CONSTRAINT [fk_Vehicle_VehicleType]
GO
/****** Object:  StoredProcedure [dbo].[FeriaSP_PlaceOrder]    Script Date: 2/22/2023 8:13:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   PROCEDURE [dbo].[FeriaSP_PlaceOrder]
	@clientId INT,
	@products TVP_OrderProducts READONLY
AS 
BEGIN
	
	SET NOCOUNT ON -- no retorne metadatos
	
	--Declaracion de variables para el manejo de errores
	DECLARE @ErrorNumber INT, @ErrorSeverity INT, @ErrorState INT, @CustomError INT
	DECLARE @Message VARCHAR(200)
	DECLARE @InicieTransaccion BIT
	 

	DECLARE @idAddress INT
	DECLARE @productCount INT
	DECLARE @idOrderStatus INT
	DECLARE @idOrder INT
	DECLARE @Total MONEY

	SELECT @idAddress=ISNULL(idAddress,0) FROM dbo.Person WHERE idPerson = @clientId

	SELECT @idOrderStatus = idOrderState FROM dbo.OrdersState WHERE [description] = 'Por entregar'
	
	SELECT @productCount = COUNT(*) FROM @products

	IF (@idAddress>0 AND @productCount>0) BEGIN

		SET @InicieTransaccion = 0
		IF @@TRANCOUNT=0 BEGIN
			SET @InicieTransaccion = 1
			SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
			BEGIN TRANSACTION		
		END
	
		BEGIN TRY
			SET @CustomError = 2001

			INSERT INTO dbo.Orders(postTime, totalprice, totalWeight, idPerson, idOrderState, idAddress)
			VALUES
			(GETDATE(), 0.0, 0, @clientId, @idOrderStatus, @idAddress)

			SELECT @idOrder = SCOPE_IDENTITY()

			INSERT INTO dbo.ProductsXOrders(idProducts, idOrders, quantity, price)
			SELECT idProduct, @idOrder, prodOrders.quantity, prods.price  FROM dbo.Products prods 
			INNER JOIN @products prodOrders ON prodOrders.Name = prods.nameProduct

			SELECT @Total = SUM(quantity*price) FROM dbo.ProductsXOrders WHERE idOrders = @idOrder

			UPDATE dbo.Orders SET totalPrice = @Total WHERE idOrder = @idOrder
			
			IF @InicieTransaccion=1 BEGIN
			    PRINT N'Hecemos Commit';--------------
				COMMIT
			END
		END TRY
		BEGIN CATCH
			PRINT N'Estamos en el catch';--------------
			SET @ErrorNumber = ERROR_NUMBER()
			SET @ErrorSeverity = ERROR_SEVERITY()
			SET @ErrorState = ERROR_STATE()
			SET @Message = ERROR_MESSAGE()
		
			IF @InicieTransaccion=1 BEGIN
				PRINT N'Hacemos ROLLBACK';--------------
				ROLLBACK
			END
			RAISERROR('%s - Error Number: %i', 
				@ErrorSeverity, @ErrorState, @Message, @CustomError)
		END CATCH	
	END
END
RETURN 0	
GO
USE [master]
GO
ALTER DATABASE [Prueba] SET  READ_WRITE 
GO
