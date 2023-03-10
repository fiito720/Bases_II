Create database ClaseBD2
USE [ClaseBD2]
GO
/****** Object:  Table [dbo].[ActionsTypes]    Script Date: 2/25/2023 8:17:47 PM ******/
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
/****** Object:  Table [dbo].[Addresses]    Script Date: 2/25/2023 8:17:47 PM ******/
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
/****** Object:  Table [dbo].[Bills]    Script Date: 2/25/2023 8:17:47 PM ******/
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
/****** Object:  Table [dbo].[Cantons]    Script Date: 2/25/2023 8:17:47 PM ******/
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
/****** Object:  Table [dbo].[CommentsForServices]    Script Date: 2/25/2023 8:17:47 PM ******/
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
/****** Object:  Table [dbo].[Companies]    Script Date: 2/25/2023 8:17:47 PM ******/
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
/****** Object:  Table [dbo].[Contacts]    Script Date: 2/25/2023 8:17:47 PM ******/
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
/****** Object:  Table [dbo].[ContactsTypes]    Script Date: 2/25/2023 8:17:47 PM ******/
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
/****** Object:  Table [dbo].[ContactsXPerson]    Script Date: 2/25/2023 8:17:47 PM ******/
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
/****** Object:  Table [dbo].[ContactsXProviders]    Script Date: 2/25/2023 8:17:47 PM ******/
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
/****** Object:  Table [dbo].[Continents]    Script Date: 2/25/2023 8:17:47 PM ******/
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
/****** Object:  Table [dbo].[Countries]    Script Date: 2/25/2023 8:17:47 PM ******/
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
/****** Object:  Table [dbo].[Demonyms]    Script Date: 2/25/2023 8:17:47 PM ******/
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
/****** Object:  Table [dbo].[Devolutions]    Script Date: 2/25/2023 8:17:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Devolutions](
	[idDevolutions] [int] IDENTITY(1,1) NOT NULL,
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
/****** Object:  Table [dbo].[DevolutionsTypes]    Script Date: 2/25/2023 8:17:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DevolutionsTypes](
	[idDevolutionType] [int] IDENTITY(1,1) NOT NULL,
	[description] [varchar](100) NOT NULL,
 CONSTRAINT [PK_DevolutionsTypes] PRIMARY KEY CLUSTERED 
(
	[idDevolutionType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Districts]    Script Date: 2/25/2023 8:17:47 PM ******/
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
/****** Object:  Table [dbo].[Genders]    Script Date: 2/25/2023 8:17:47 PM ******/
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
/****** Object:  Table [dbo].[Identifications]    Script Date: 2/25/2023 8:17:47 PM ******/
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
/****** Object:  Table [dbo].[IdentificationsTypes]    Script Date: 2/25/2023 8:17:47 PM ******/
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
/****** Object:  Table [dbo].[InventoryLogs]    Script Date: 2/25/2023 8:17:47 PM ******/
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
	[idLot] [int] NOT NULL,
 CONSTRAINT [pk_idInventoryLogs] PRIMARY KEY CLUSTERED 
(
	[idInventoryLogs] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lots]    Script Date: 2/25/2023 8:17:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lots](
	[idLot] [int] IDENTITY(1,1) NOT NULL,
	[idProduct] [int] NOT NULL,
	[idProvider] [int] NOT NULL,
	[idService] [int] NOT NULL,
	[enableQuantity] [int] NOT NULL,
	[dueDate] [date] NOT NULL,
	[buyPrice] [int] NOT NULL,
	[sellPrice] [int] NOT NULL,
 CONSTRAINT [PK_Lots] PRIMARY KEY CLUSTERED 
(
	[idLot] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 2/25/2023 8:17:47 PM ******/
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
/****** Object:  Table [dbo].[OrdersState]    Script Date: 2/25/2023 8:17:47 PM ******/
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
/****** Object:  Table [dbo].[OrdersXServices]    Script Date: 2/25/2023 8:17:47 PM ******/
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
/****** Object:  Table [dbo].[Person]    Script Date: 2/25/2023 8:17:47 PM ******/
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
/****** Object:  Table [dbo].[Products]    Script Date: 2/25/2023 8:17:47 PM ******/
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
 CONSTRAINT [pk_idProduct] PRIMARY KEY CLUSTERED 
(
	[idProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductStatus]    Script Date: 2/25/2023 8:17:47 PM ******/
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
/****** Object:  Table [dbo].[ProductsXOrders]    Script Date: 2/25/2023 8:17:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsXOrders](
	[idProductsXOrders] [int] IDENTITY(1,1) NOT NULL,
	[idProducts] [int] NOT NULL,
	[idOrders] [int] NOT NULL,
	[idInventaryLogs] [int] NOT NULL,
 CONSTRAINT [PK_ProductsXOrders] PRIMARY KEY CLUSTERED 
(
	[idProductsXOrders] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductsXProvider]    Script Date: 2/25/2023 8:17:47 PM ******/
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
/****** Object:  Table [dbo].[Provider]    Script Date: 2/25/2023 8:17:47 PM ******/
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
/****** Object:  Table [dbo].[Provinces]    Script Date: 2/25/2023 8:17:47 PM ******/
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
/****** Object:  Table [dbo].[Routes]    Script Date: 2/25/2023 8:17:47 PM ******/
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
/****** Object:  Table [dbo].[RoutesStates]    Script Date: 2/25/2023 8:17:47 PM ******/
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
/****** Object:  Table [dbo].[Services]    Script Date: 2/25/2023 8:17:47 PM ******/
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
/****** Object:  Table [dbo].[StorageSpaces]    Script Date: 2/25/2023 8:17:47 PM ******/
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
/****** Object:  Table [dbo].[StoragesTypes]    Script Date: 2/25/2023 8:17:47 PM ******/
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
/****** Object:  Table [dbo].[Units]    Script Date: 2/25/2023 8:17:47 PM ******/
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
/****** Object:  Table [dbo].[UsersTypes]    Script Date: 2/25/2023 8:17:47 PM ******/
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
/****** Object:  Table [dbo].[Vehicles]    Script Date: 2/25/2023 8:17:47 PM ******/
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
/****** Object:  Table [dbo].[VehiclesTypes]    Script Date: 2/25/2023 8:17:47 PM ******/
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
ALTER TABLE [dbo].[InventoryLogs]  WITH CHECK ADD  CONSTRAINT [FK_InventoryLogs_Lots] FOREIGN KEY([idLot])
REFERENCES [dbo].[Lots] ([idLot])
GO
ALTER TABLE [dbo].[InventoryLogs] CHECK CONSTRAINT [FK_InventoryLogs_Lots]
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
ALTER TABLE [dbo].[Lots]  WITH CHECK ADD  CONSTRAINT [FK_Lots_Products] FOREIGN KEY([idProduct])
REFERENCES [dbo].[Products] ([idProduct])
GO
ALTER TABLE [dbo].[Lots] CHECK CONSTRAINT [FK_Lots_Products]
GO
ALTER TABLE [dbo].[Lots]  WITH CHECK ADD  CONSTRAINT [FK_Lots_Provider] FOREIGN KEY([idProvider])
REFERENCES [dbo].[Provider] ([idProvider])
GO
ALTER TABLE [dbo].[Lots] CHECK CONSTRAINT [FK_Lots_Provider]
GO
ALTER TABLE [dbo].[Lots]  WITH CHECK ADD  CONSTRAINT [FK_Lots_Services] FOREIGN KEY([idService])
REFERENCES [dbo].[Services] ([idService])
GO
ALTER TABLE [dbo].[Lots] CHECK CONSTRAINT [FK_Lots_Services]
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
ALTER TABLE [dbo].[ProductsXOrders]  WITH CHECK ADD  CONSTRAINT [FK_ProductsXOrders_InventoryLogs] FOREIGN KEY([idInventaryLogs])
REFERENCES [dbo].[InventoryLogs] ([idInventoryLogs])
GO
ALTER TABLE [dbo].[ProductsXOrders] CHECK CONSTRAINT [FK_ProductsXOrders_InventoryLogs]
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

---------------------------------------------------------INSERTS-----------------------------------------------------------------------
INSERT INTO ActionsTypes (nameActionType)
VALUES ('Ingresando'),
('Extrayendo')
GO

INSERT INTO ProductStatus(nameProductStatus) VALUES
('Bueno'),
('Malo'),
('Regular')
GO

INSERT INTO dbo.Units(nameUnit)
VALUES('Gramo'),
('Mililitro')
GO

INSERT INTO dbo.Products(idUnit, nameProduct, [enable])
VALUES(1, 'Manzana', 1),
(1, 'Uva', 1),
(1, 'Zanahoria', 1),
(1, 'Masa', 1),
(2, 'Tabasco', 1),
(2, 'Salsa de tomate', 1),
(1, 'Maiz', 1),
(2, 'Mostaza', 1),
(1, 'Frijoles', 1),
(2, 'Leche', 1),
(1, 'Queso', 1),
(1, 'Salchichon', 1),
(1, 'Culantro', 1),
(1, 'Tomillo', 1),
(2, 'Coca cola', 1)
INSERT INTO Continents(nameContinent)
VALUES('America')
GO

INSERT INTO Demonyms(nameDemonym)
VALUES('Costarricense')
GO

INSERT INTO Countries(idContinent, idDemonym, nameCountry)
VALUES(1, 1, 'Costa Rica')
GO

INSERT INTO Provinces(idCountry, nameProvince)
VALUES(1, 'San Jose'),
(1, 'Alajuela'),
(1, 'Cartago'),
(1, 'Heredia'),
(1, 'Guanacaste'),
(1, 'Puntarenas'),
(1, 'Limon')
GO

INSERT INTO Cantons(idProvince, nameCanton)
VALUES(7, 'Limon'),
(5, 'Vagases')
GO

INSERT INTO Districts(idCanton, nameDistrict)
VALUES(1, 'Limon'),
(2,'Vagases'),
(2, 'Rio Naranjo'),
(1, 'Rio Blanco')
GO

INSERT INTO Addresses(idDistrict, address1, address2)
VALUES(1, 'Limon', 'Limon'),
(4, 'Rio Blanco', 'Bufalo')
GO

Insert Into Provider (name,phone,mail,idAddress) values
('Luis Jimenez',86452312,'xxx',2)
GO
Insert Into ProductsXProvider (idProduct,idProvider,postTime) values
(1,1,'2023-02-10'),
(2,1,'2023-02-10'),
(3,1,'2023-02-10'),
(4,1,'2023-02-10'),
(5,1,'2023-02-10'),
(6,1,'2023-02-10'),
(7,1,'2023-02-10'),
(8,1,'2023-02-10'),
(9,1,'2023-02-10'),
(10,1,'2023-02-10'),
(11,1,'2023-02-10'),
(12,1,'2023-02-10'),
(13,1,'2023-02-10'),
(14,1,'2023-02-10'),
(15,1,'2023-02-10')
GO
INSERT INTO Genders(descriptionGender) VALUES
('Femenino'),
('Masculino'),
('Otro')
GO

INSERT INTO dbo.Person(idGender, idAddress, birthday, namePerson, userName, password, creationDate)
VALUES(2, 1, '1999/11/15', 'David', 'xxx', 'xxx', '2023/02/15'),
(2, 1, '1999/11/15', 'Marcos', 'xxx', 'xxx', '2023/02/15'),
(2, 1, '1999/11/15', 'Juan', 'xxx', 'xxx', '2023/02/15'),
(2, 2, '1999/11/15', 'Judas', 'xxx', 'xxx', '2023/02/15'),
(2, 1, '1999/11/15', 'Robert', 'xxx', 'xxx', '2023/02/15'),
(2, 1, '1999/11/15', 'Satiago', 'xxx', 'xxx', '2023/02/15'),
(2, 1, '1999/11/15', 'Alejandro', 'xxx', 'xxx', '2023/02/15'),
(2, 1, '1999/11/15', 'Rodolfo', 'xxx', 'xxx', '2023/02/15'),
(1, 2, '1999/11/15', 'Angie', 'xxx', 'xxx', '2023/02/15'),
(1, 1, '1999/11/15', 'Cristina', 'xxx', 'xxx', '2023/02/15'),
(1, 1, '1999/11/15', 'Fabiola', 'xxx', 'xxx', '2023/02/15'),
(1, 1, '1999/11/15', 'Sharon', 'xxx', 'xxx', '2023/02/15'),
(1, 1, '1999/11/15', 'Ana', 'xxx', 'xxx', '2023/02/15'),
(1, 2, '1999/11/15', 'Maria', 'xxx', 'xxx', '2023/02/15'),
(1, 2, '1999/11/15', 'Tannia', 'xxx', 'xxx', '2023/02/15'),
(2, 2, '1999/11/15', 'German', 'xxx', 'xxx', '2023/02/15'),
(2, 2, '1999/11/15', 'Alfonso', 'xxx', 'xxx', '2023/02/15'),
(2, 1, '1999/11/15', 'Rene', 'xxx', 'xxx', '2023/02/15'),
(2, 1, '1999/11/15', 'Duglas', 'xxx', 'xxx', '2023/02/15'),
(2, 1, '1999/11/15', 'Kevin', 'xxx', 'xxx', '2023/02/15')
GO

INSERT INTO OrdersState([description])
VALUES('Por entregar'),
('Entregado')
GO
INSERT INTO [dbo].[Services](destiny, nameService) VALUES
('Limon','Recolección'),
('Guanacaste', 'Entrega')
GO
INSERT INTO Lots(idProduct, idProvider,idService,enableQuantity,dueDate,buyPrice,sellPrice) values
(1,1,1,20,'2023-03-10',300,400),
(2,1,1,20,'2023-03-10',1000,1100),
(3,1,1,20,'2023-03-10',400,500),
(4,1,1,20,'2023-03-10',1900,2000),
(5,1,1,20,'2023-03-10',900,1000),
(6,1,1,20,'2023-03-10',550,650),
(7,1,1,20,'2023-03-10',1100,1200),
(8,1,1,20,'2023-03-10',350,450),
(9,1,1,20,'2023-03-10',775,875),
(10,1,1,20,'2023-03-10',825,925),
(11,1,1,20,'2023-03-10',950,1050),
(12,1,1,20,'2023-03-10',1250,1350),
(13,1,1,20,'2023-03-10',100,200),
(14,1,1,20,'2023-03-10',50,150),
(15,1,1,20,'2023-03-10',900,1000)
GO
INSERT INTO Orders(idOrderState, idPerson, idAddress, postTime,totalPrice,totalWeight)
VALUES(1,1,1,'2023-02-22', 5000, 100),
(1,2,1,'2023-02-22', 10000, 200),
(1,3,1,'2023-02-22', 4000, 50),
(1,4,1,'2023-02-22', 7000, 421),
(2,5,1,'2023-02-22', 400, 21),
(1,6,1,'2023-02-22', 8000, 500),
(1,7,1,'2023-02-21', 5000, 100),
(1,8,1,'2023-02-21', 10000, 200),
(1,9,1,'2023-02-21', 4000, 50),
(1,10,1,'2023-02-21', 7000, 421),
(2,11,1,'2023-02-21', 400, 21),
(1,12,1,'2023-02-21', 8000, 500),
(1,13,1,'2023-02-22', 5000, 100),
(1,14,1,'2023-02-22', 10000, 200),
(1,15,1,'2023-02-22', 4000, 50),
(1,16,1,'2023-02-22', 7000, 421),
(2,17,1,'2023-02-22', 400, 21),
(1,18,1,'2023-02-22', 8000, 500),
(1,19,1,'2023-02-01', 5000, 100),
(1,20,1,'2023-02-01', 10000, 200),
(1,11,1,'2023-01-01', 4000, 50),
(1,12,1,'2023-02-08', 7000, 421),
(2,13,1,'2023-02-01', 400, 21),
(1,14,1,'2023-02-08', 8000, 500),
(1,1,1,GETDATE(), 5000, 100),
(1,3,1,GETDATE(), 10000, 200),
(1,1,1,GETDATE(), 4000, 50),
(1,5,1,GETDATE(), 7000, 421),
(2,5,1,GETDATE(), 400, 21),
(1,5,1,GETDATE(), 8000, 500),
(1,12,1,'2023-01-08', 7000, 421)
GO
INSERT INTO InventoryLogs(idProduct,idProductStatus,idActionType,postTime,quantity,idLot) VALUES
(1,1,1,'2023-02-10',20,1),
(2,1,1,'2023-02-10',20,2),
(3,1,1,'2023-02-10',20,3),
(4,1,1,'2023-02-10',20,4),
(5,1,1,'2023-02-10',20,5),
(6,1,1,'2023-02-10',20,6),
(7,1,1,'2023-02-10',20,7),
(8,1,1,'2023-02-10',20,8),
(9,1,1,'2023-02-10',20,9),
(10,1,1,'2023-02-10',20,10),
(11,1,1,'2023-02-10',20,11),
(12,1,1,'2023-02-10',20,12),
(13,1,1,'2023-02-10',20,13),
(14,1,1,'2023-02-10',20,14),
(15,1,1,'2023-02-10',20,15),

(2, 1, 2,'2023-02-22', 2,2),
(1, 1, 2,'2023-02-22', 3,1),
(10, 1, 2,'2023-02-22', 3,10),
(11, 1, 2,'2023-02-22', 2,11),
(12, 1, 2,'2023-02-22', 2,12),
(15, 1, 2,'2023-02-22', 2,15),
(7, 1, 2,'2023-02-21', 5,7),
(2, 1, 2,'2023-02-21', 2,2),
(1, 1, 2,'2023-02-21', 3,1),
(10, 1, 2,'2023-02-22', 3,10),
(11, 1, 2,'2023-02-22', 2,11),
(12, 1, 2,'2023-02-22', 2,12),
(15, 1, 2,'2023-02-22', 2,15),
(7, 1, 2,'2023-02-22', 5,7),
(7, 1, 2,'2023-02-22', 5,7),
(7, 1, 2,'2023-02-01', 5,7),
(7, 1, 2,'2023-02-01', 5,7),
(2, 1, 2,'2023-02-01', 2,2),
(1, 1, 2,'2023-02-08', 3,1),
(10, 1, 2,'2023-02-01', 3,10),
(11, 1, 2,'2023-02-08', 2,11),
(12, 1, 2,GETDATE(), 2,12),
(15, 1, 2,GETDATE(), 2,15),
(7, 1, 2,GETDATE(), 5,7),
(7, 1, 2,GETDATE(), 5,7),
(7, 1, 2,GETDATE(), 5,7),
(7, 1, 2,GETDATE(), 5,7)
GO

INSERT INTO ProductsXOrders(idProducts,idOrders, idInventaryLogs) VALUES
(2, 1, 1),
(1, 2, 2),
(10, 3, 3),
(11, 4, 4),
(12, 5, 5),
(15, 6, 6),
(7, 10, 7),
(2, 11, 8),
(1, 12, 9),
(10, 13, 10),
(11, 14, 11),
(12, 15, 12),
(15, 16, 13),
(7, 17, 14),
(7, 18, 15),
(7, 19, 16),
(7, 20, 17),
(2, 21, 18),
(1, 22, 19),
(10, 23, 20),
(11, 24, 21),
(12, 25, 22),
(15, 26, 23),
(7, 27, 24),
(7, 28, 25),
(7, 29, 26),
(7, 30, 27)
GO


INSERT INTO VehiclesTypes(vehicleTypeName) VALUES
('Frio'),
('Ambiente')
GO

INSERT INTO Vehicles(dateOfInscription, driverName, idVehicleType, weight) VALUES
('2011-11-23', 'Juan perez', 1, 1000),
('2011-11-24', 'Duglas Monge', 2, 534),
('2011-11-25', 'Luis Rodríguez', 2, 1534)
GO

INSERT INTO RoutesStates([description]) VALUES
('Por entregar'),
('Entregado')
GO


INSERT INTO [dbo].[Routes](idService,idVehicle,idRouteSate,attendantName,dateOfRoute,destiny) VALUES
(1,2,2,'Juan',Getdate(),'Limon'),
(2,3,1,'Luis',Getdate(),'Guanacaste')
GO

INSERT INTO OrdersXServices(idOrder, idService, postTime, serviceFinished) VALUES
(1, 2, '2023-02-22', 0),
(2, 2, '2023-02-22', 0),
(3, 2, '2023-02-22', 0),
(4, 2, '2023-01-22', 0),
(5, 2, '2023-02-22', 0),
(6, 2, '2023-02-22', 0),
(9, 2, '2023-01-22', 0),
(10, 2, '2023-02-22', 0)
GO

INSERT INTO DevolutionsTypes([description]) VALUES
('Mal servicio'), 
('Producto caducado'),
('Producto en mal estado')

INSERT INTO Devolutions(idDevolutionType, idProduct,idService, quantity) VALUES
(1, 1, 2, 1),
(2, 10, 2, 1),
(3, 13, 2, 4),
(2, 11, 2, 1),
(1, 4, 2, 2),
(2, 2, 2, 1),
(2, 13, 2, 1),
(2, 15, 2, 1),
(2, 1, 2, 2),
(2, 4, 2, 5),
(2, 13, 2, 1),
(2, 14, 2, 1)

INSERT INTO IdentificationsTypes(nameIdentificationType) VALUES
('Cedula'),
('Pasaporte')

INSERT INTO Identifications(idIdentificationType, idPerson, valueIdentification) VALUES
(1, 1, 33333333),
(1, 2, 33333333),
(1, 3, 33333333),
(1, 4, 33333333),
(1, 5, 33333333),
(1, 6, 33333333),
(1, 7, 33333333),
(1, 8, 33333333),
(1, 9, 33333333),
(1, 10, 33333333),
(1, 11, 33333333),
(1, 12, 33333333),
(1, 13, 33333333),
(1, 14, 33333333),
(1, 15, 33333333),
(1, 16, 33333333),
(1, 17, 33333333),
(1, 18, 33333333),
(1, 19, 33333333),
(1, 20, 33333333)
GO

--Transacciones
--Query 1
BEGIN TRAN
Update dbo.Vehicles set idVehicleType=2 where idVehicle = 1;
GO
Update dbo.[Routes] set idVehicle=2 where idRoute=2;
GO
Commit

--Query 2
BEGIN TRAN
Update dbo.[Routes] set idVehicle=1 where idRoute=2;
GO

Update dbo.Vehicles set driverName='Pedro Jimenez' where idVehicle = 1;
GO
Commit

