USE [master]
GO
/****** Object:  Database [ECommerce]    Script Date: 28/03/2016 4:57:20 p. m. ******/
CREATE DATABASE [ECommerce]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ecommerce', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ecommerce.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ecommerce_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ecommerce_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ECommerce] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ECommerce].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ECommerce] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ECommerce] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ECommerce] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ECommerce] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ECommerce] SET ARITHABORT OFF 
GO
ALTER DATABASE [ECommerce] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ECommerce] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ECommerce] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ECommerce] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ECommerce] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ECommerce] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ECommerce] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ECommerce] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ECommerce] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ECommerce] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ECommerce] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ECommerce] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ECommerce] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ECommerce] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ECommerce] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ECommerce] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ECommerce] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ECommerce] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ECommerce] SET  MULTI_USER 
GO
ALTER DATABASE [ECommerce] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ECommerce] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ECommerce] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ECommerce] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ECommerce] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ECommerce]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](30) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[City]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[Code] [int] NOT NULL,
	[Name] [nchar](30) NULL,
	[StateCode] [int] NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Country]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[Code] [nchar](30) NOT NULL,
	[Name] [nchar](30) NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CountryTax]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CountryTax](
	[CountryCode] [nchar](30) NULL,
	[IdTax] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CreditCard]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CreditCard](
	[CreditCardNumber] [bigint] NOT NULL,
	[ExpirationDate] [date] NULL,
	[CheckBank] [bit] NULL,
	[IdUser] [int] NOT NULL,
 CONSTRAINT [PK_CreditCard_1] PRIMARY KEY CLUSTERED 
(
	[CreditCardNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Event]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Detail] [nchar](100) NULL,
	[Timer] [datetime] NULL,
	[IdUser] [int] NULL,
 CONSTRAINT [PK_Event] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Offer]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Offer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](50) NULL,
	[Detail] [nchar](150) NULL,
	[DateStart] [datetime] NULL,
	[DateEnd] [datetime] NULL,
	[PercentageOffer] [real] NULL,
 CONSTRAINT [PK_Offer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Order]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DateOrder] [date] NULL,
	[IdStatus] [tinyint] NULL,
	[IdPayment] [tinyint] NULL,
	[Total] [real] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdOrder] [int] NULL,
	[IdProduct] [int] NULL,
	[IdTax] [int] NULL,
	[Quantity] [int] NULL,
	[SubTotal] [float] NULL,
	[Observation] [nchar](100) NULL,
	[Discount] [float] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PaymentType]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentType](
	[Id] [tinyint] NOT NULL,
	[Detail] [nchar](20) NULL,
 CONSTRAINT [PK_PaymentType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Paypal]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paypal](
	[Id] [nchar](50) NOT NULL,
	[IdUser] [int] NULL,
 CONSTRAINT [PK_Paypal] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](30) NULL,
	[Detail] [nchar](200) NULL,
	[IdCategory] [int] NULL,
	[IdSupplier] [int] NULL,
	[Quantity] [int] NULL,
	[UnitPrice] [float] NULL,
	[IdOffer] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductEvaluation]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductEvaluation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Score] [int] NULL,
	[IdUser] [int] NULL,
	[IdProduct] [int] NULL,
 CONSTRAINT [PK_Evaluation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductUser]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductUser](
	[IdProduct] [int] NULL,
	[IdUser] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Detail] [nchar](20) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shipment]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipment](
	[Id] [int] NOT NULL,
	[IdOrder] [int] NULL,
	[IdUser] [int] NULL,
	[IdSupplier] [int] NULL,
	[IdStatus] [tinyint] NULL,
	[ShipmentDate] [date] NULL,
	[ArrivalDate] [date] NULL,
 CONSTRAINT [PK_Shipment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[State]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[Code] [int] NOT NULL,
	[Name] [nchar](30) NULL,
	[CountryCode] [nchar](30) NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Status]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[Id] [tinyint] NOT NULL,
	[Detail] [nchar](20) NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[Code] [int] NOT NULL,
	[IdUser] [int] NOT NULL,
	[CompanyName] [nchar](30) NULL,
	[Note] [nchar](100) NULL,
	[Discount] [real] NULL,
	[CurrentOrder] [int] NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SupplierEvaluation]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupplierEvaluation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdSupplier] [int] NULL,
	[IdUser] [int] NULL,
	[Score] [int] NULL,
 CONSTRAINT [PK_SupplierEvaluation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tax]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tax](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TaxPercent] [real] NULL,
	[Detail] [nchar](20) NULL,
 CONSTRAINT [PK_Tax] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TypeId]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeId](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[DocumentType] [nchar](20) NULL,
 CONSTRAINT [PK_TypeId] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] NOT NULL,
	[IdTypeId] [tinyint] NOT NULL,
	[Name] [nchar](20) NULL,
	[KeyWord] [nchar](40) NULL,
	[Email] [nchar](50) NULL,
	[PhoneNumber] [nchar](30) NULL,
	[IdRole] [tinyint] NULL,
	[CountryCode] [nchar](30) NULL,
	[IdStatus] [tinyint] NULL,
	[PostalCode] [int] NULL,
	[Adress] [nchar](70) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[City]  WITH CHECK ADD  CONSTRAINT [FK_City_State] FOREIGN KEY([StateCode])
REFERENCES [dbo].[State] ([Code])
GO
ALTER TABLE [dbo].[City] CHECK CONSTRAINT [FK_City_State]
GO
ALTER TABLE [dbo].[CountryTax]  WITH CHECK ADD  CONSTRAINT [FK_CountryTax_Country] FOREIGN KEY([CountryCode])
REFERENCES [dbo].[Country] ([Code])
GO
ALTER TABLE [dbo].[CountryTax] CHECK CONSTRAINT [FK_CountryTax_Country]
GO
ALTER TABLE [dbo].[CountryTax]  WITH CHECK ADD  CONSTRAINT [FK_CountryTax_Tax] FOREIGN KEY([IdTax])
REFERENCES [dbo].[Tax] ([Id])
GO
ALTER TABLE [dbo].[CountryTax] CHECK CONSTRAINT [FK_CountryTax_Tax]
GO
ALTER TABLE [dbo].[CreditCard]  WITH CHECK ADD  CONSTRAINT [FK_CreditCard_User] FOREIGN KEY([IdUser])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[CreditCard] CHECK CONSTRAINT [FK_CreditCard_User]
GO
ALTER TABLE [dbo].[Event]  WITH CHECK ADD  CONSTRAINT [FK_Event_User] FOREIGN KEY([IdUser])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Event] CHECK CONSTRAINT [FK_Event_User]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_PaymentType] FOREIGN KEY([IdPayment])
REFERENCES [dbo].[PaymentType] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_PaymentType]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Status1] FOREIGN KEY([IdStatus])
REFERENCES [dbo].[Status] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Status1]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([IdOrder])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Tax] FOREIGN KEY([IdTax])
REFERENCES [dbo].[Tax] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Tax]
GO
ALTER TABLE [dbo].[Paypal]  WITH CHECK ADD  CONSTRAINT [FK_Paypal_User] FOREIGN KEY([IdUser])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Paypal] CHECK CONSTRAINT [FK_Paypal_User]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([IdCategory])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Offer] FOREIGN KEY([IdOffer])
REFERENCES [dbo].[Offer] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Offer]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Supplier] FOREIGN KEY([IdSupplier])
REFERENCES [dbo].[Supplier] ([Code])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Supplier]
GO
ALTER TABLE [dbo].[ProductEvaluation]  WITH CHECK ADD  CONSTRAINT [FK_ProductEvaluation_Product] FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[ProductEvaluation] CHECK CONSTRAINT [FK_ProductEvaluation_Product]
GO
ALTER TABLE [dbo].[ProductEvaluation]  WITH CHECK ADD  CONSTRAINT [FK_ProductEvaluation_Product1] FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[ProductEvaluation] CHECK CONSTRAINT [FK_ProductEvaluation_Product1]
GO
ALTER TABLE [dbo].[ProductEvaluation]  WITH CHECK ADD  CONSTRAINT [FK_ProductEvaluation_User] FOREIGN KEY([IdUser])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[ProductEvaluation] CHECK CONSTRAINT [FK_ProductEvaluation_User]
GO
ALTER TABLE [dbo].[ProductUser]  WITH CHECK ADD  CONSTRAINT [FK_ProductUser_Product] FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[ProductUser] CHECK CONSTRAINT [FK_ProductUser_Product]
GO
ALTER TABLE [dbo].[ProductUser]  WITH CHECK ADD  CONSTRAINT [FK_ProductUser_User] FOREIGN KEY([IdUser])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[ProductUser] CHECK CONSTRAINT [FK_ProductUser_User]
GO
ALTER TABLE [dbo].[Shipment]  WITH CHECK ADD  CONSTRAINT [FK_Shipment_Order1] FOREIGN KEY([IdOrder])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[Shipment] CHECK CONSTRAINT [FK_Shipment_Order1]
GO
ALTER TABLE [dbo].[Shipment]  WITH CHECK ADD  CONSTRAINT [FK_Shipment_User] FOREIGN KEY([IdUser])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Shipment] CHECK CONSTRAINT [FK_Shipment_User]
GO
ALTER TABLE [dbo].[State]  WITH CHECK ADD  CONSTRAINT [FK_State_Country] FOREIGN KEY([CountryCode])
REFERENCES [dbo].[Country] ([Code])
GO
ALTER TABLE [dbo].[State] CHECK CONSTRAINT [FK_State_Country]
GO
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD  CONSTRAINT [FK_Supplier_Order] FOREIGN KEY([CurrentOrder])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [FK_Supplier_Order]
GO
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD  CONSTRAINT [FK_Supplier_User] FOREIGN KEY([IdUser])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [FK_Supplier_User]
GO
ALTER TABLE [dbo].[SupplierEvaluation]  WITH CHECK ADD  CONSTRAINT [FK_SupplierEvaluation_Supplier] FOREIGN KEY([IdSupplier])
REFERENCES [dbo].[Supplier] ([Code])
GO
ALTER TABLE [dbo].[SupplierEvaluation] CHECK CONSTRAINT [FK_SupplierEvaluation_Supplier]
GO
ALTER TABLE [dbo].[SupplierEvaluation]  WITH CHECK ADD  CONSTRAINT [FK_SupplierEvaluation_User] FOREIGN KEY([IdUser])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[SupplierEvaluation] CHECK CONSTRAINT [FK_SupplierEvaluation_User]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Country] FOREIGN KEY([CountryCode])
REFERENCES [dbo].[Country] ([Code])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Country]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role1] FOREIGN KEY([IdRole])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role1]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Status] FOREIGN KEY([IdStatus])
REFERENCES [dbo].[Status] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Status]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_TypeId] FOREIGN KEY([IdTypeId])
REFERENCES [dbo].[TypeId] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_TypeId]
GO
/****** Object:  StoredProcedure [dbo].[CreateCategory]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreateCategory]
--Parameters
@name nchar(30)

AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	INSERT INTO [dbo].[Category] (Name) VALUES (@name);
END

GO
/****** Object:  StoredProcedure [dbo].[CreateCity]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateCity]
	-- parameters
	@code int,
	@name nchar(30),
	@stateCode int
AS
BEGIN
	SET NOCOUNT ON;

    -- procedure
	INSERT INTO [dbo].[City] (Code,Name,StateCode) VALUES (@code,@name,@stateCode);
END

GO
/****** Object:  StoredProcedure [dbo].[CreateCountry]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateCountry]
	-- parameters
	@code int,
	@name nchar(30)
AS
BEGIN
	SET NOCOUNT ON;

    -- procedure
	INSERT INTO [dbo].[Country] (Code,Name) VALUES (@code,@name);
END

GO
/****** Object:  StoredProcedure [dbo].[CreateCountryTax]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreateCountryTax]
	-- parameters
	@countryCode nchar(30),
	@idTax int 
AS
BEGIN
	SET NOCOUNT ON;

    -- procedure
	INSERT INTO [dbo].[CountryTax] (CountryCode,IdTax) VALUES (@countryCode,@idTax);
END
GO
/****** Object:  StoredProcedure [dbo].[CreateCreditCard]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateCreditCard]
	-- parameters
	@creditCardNumber int,
	@expirationDate date,
	@idUser int,
	@checkBank bit
AS
BEGIN
	SET NOCOUNT ON;

    -- procedure
	INSERT INTO [dbo].[CreditCard] (CreditCardNumber,ExpirationDate,CheckBank,IdUser) VALUES (@creditCardNumber,@expirationDate,@checkBank,@idUser);
END

GO
/****** Object:  StoredProcedure [dbo].[CreateEvent]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateEvent]
	-- parameters
	@detail nchar(100),
	@timer datetime,
	@idUser int
AS
BEGIN
	SET NOCOUNT ON;

    -- procedure
	INSERT INTO [dbo].[Event] (Detail,Timer,IdUser) VALUES (@detail,@timer,@idUser);
END

GO
/****** Object:  StoredProcedure [dbo].[CreateOffer]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreateOffer]
--Parameters
@name nchar(50),
@detail nchar(150),
@dateStart datetime,
@dateEnd datetime,
@percentageOffer real
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	INSERT INTO [dbo].[Offer] (Name,Detail,DateStart,DateEnd,PercentageOffer ) VALUES (@name,@detail,@dateStart,@dateEnd,@percentageOffer); 
END

SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[CreateOrder]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreateOrder]
--Parameters
@dateOrder date,
@total real,
@idStatus  tinyint,
@idPayment tinyint
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	INSERT INTO [dbo].[Order] (DateOrder,IdStatus, IdPayment,Total) VALUES (@dateOrder,@idStatus,@idPayment,@total); 
END

SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[CreateOrderDetail]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreateOrderDetail]
--Parameters
@quantity int,
@subTotal float,
@observation nchar(100),
@discount float
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	INSERT INTO [dbo].[OrderDetail] (Quantity,SubTotal,Observation,Discount ) VALUES (@quantity,@subTotal,@observation,@discount); 
END

SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[CreatePaymentType]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreatePaymentType]
--Parameters
@id tinyint,
@detail nchar(20)

AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	INSERT INTO [dbo].[PaymentType] (Id,Detail) VALUES (@id,@detail);
END

GO
/****** Object:  StoredProcedure [dbo].[CreatePayPal]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreatePayPal]
--Parameters
@idUser int,
@id nchar(50)

AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	INSERT INTO [dbo].[Paypal] (Id,IdUser) VALUES (@id,@idUser);
END


SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[CreateProduct]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreateProduct]
--Parameters
@name nchar(30),
@detail nchar(200),
@idCategory int,
@idSupplier int,
@quantity int,
@unitPrice float
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	INSERT INTO [dbo].[Product] (Name,Detail,IdCategory,IdSupplier,Quantity,UnitPrice) VALUES (@name,@detail,@idCategory,@idSupplier,@quantity,@unitPrice); 
END


SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[CreateProductEvaluation]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateProductEvaluation]
	-- parameters
	@idUser int,
	@idProduct int,
	@score nchar(10)
AS
BEGIN
	SET NOCOUNT ON;

    -- procedure
	INSERT INTO [dbo].[ProductEvaluation] (Score,IdUser,IdProduct) VALUES (@score,@idUser,@idProduct);
END

GO
/****** Object:  StoredProcedure [dbo].[CreateProductUser]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreateProductUser]
--Parameters
@idproduct int,
@iduser int

AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	INSERT INTO [dbo].[ProductUser] (IdProduct,Iduser) VALUES (@idproduct,@iduser);
END

GO
/****** Object:  StoredProcedure [dbo].[CreateRole]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreateRole]
--Parameters

@detail nchar(20)

AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	INSERT INTO [dbo].[Role] (Detail) VALUES (@detail);
END

GO
/****** Object:  StoredProcedure [dbo].[CreateShipment]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreateShipment]
--Parameters
@idOrder int,
@idUser int,
@idSupplier int,
@idStatus tinyint,
@shipmentDate date,
@arrivalDate date


AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	INSERT INTO [dbo].[Shipment] (IdOrder,idUser,IdSupplier,idStatus,ShipmentDate,ArrivalDate ) VALUES (@idOrder,@idUser,@idSupplier,@idStatus,@shipmentDate,@arrivalDate); 
END

GO
/****** Object:  StoredProcedure [dbo].[CreateState]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreateState]
--Parameters
@name nchar(30),
@countryCode int,
@stateCode int
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	INSERT INTO [dbo].[State] (code,CountryCode,Name ) VALUES (@name,@countryCode,@name); 
END

GO
/****** Object:  StoredProcedure [dbo].[CreateStatus]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreateStatus]
--Parameters
@detail nchar(20)
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	INSERT INTO [dbo].[Status] (Detail) VALUES (@detail); 
END

GO
/****** Object:  StoredProcedure [dbo].[CreateSupplier]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateSupplier]
	-- parameters
	@code int,
	@idUser int,
	@companyName nchar(30),
	@note nchar(100),
	@discount real,
	@currentOrder int
AS
BEGIN
	SET NOCOUNT ON;

    -- procedure
	INSERT INTO [dbo].[Supplier] (Code,IdUser,CompanyName,Note,Discount,CurrentOrder) 
	VALUES (@code,@idUser,@companyName,@note,@discount,@currentOrder);
END

GO
/****** Object:  StoredProcedure [dbo].[CreateSupplierEvaluation]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreateSupplierEvaluation]
--Parameters
@idSupplier int,
@idUser int,
@score int

AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	INSERT INTO [dbo].[SupplierEvaluation] (IdSupplier,IdUser,Score) VALUES (@idSupplier,@idUser,@score); 
END

SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[CreateTax]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreateTax]
--Parameters
@detail nchar(20),
@taxpercent real
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	INSERT INTO [dbo].[Tax] (Detail,TaxPercent) VALUES (@detail,@taxpercent); 
END


GO
/****** Object:  StoredProcedure [dbo].[CreateTypeId]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreateTypeId]
--Parameters
@documentType nchar(10)
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	INSERT INTO [dbo].[TypeId] (DocumentType) VALUES (@documentType); 
END

GO
/****** Object:  StoredProcedure [dbo].[CreateUser]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreateUser]
--Parameters
@idTypeId tinyint,
@userName nchar(40),
@keyWord nchar(40),
@email nchar(50),
@phoneNumber nchar(30),
@idRole tinyint,
@countryCode int,
@idCreditCard int,
@idPaypal int,
@idStatus tinyint,
@postalCode int,
@adress nchar (70)
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	INSERT INTO [dbo].[User] (IdTypeid,Name,KeyWord,Email,PhoneNumber,IdRole,CountryCode,IdCreditCard,IdPaypal,IdStatus,PostalCode,Adress) VALUES (@idTypeId,@userName,@keyWord,@email,@phoneNumber,
@idRole,@countryCode,
@idCreditCard,@idPaypal,@idStatus,@postalCode,@adress); 
END

GO
/****** Object:  StoredProcedure [dbo].[DeleteCategory]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteCategory]
--Parameters
@id int
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	DELETE [dbo].[Category] WHERE Id=@id;
END

GO
/****** Object:  StoredProcedure [dbo].[DeleteCity]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteCity]
--Parameters
@code int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Procedure
	DELETE [dbo].[City] WHERE Code=@code;
END

GO
/****** Object:  StoredProcedure [dbo].[DeleteCountry]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteCountry]
--Parameters
@code int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Procedure
	DELETE [dbo].[Country] WHERE Code=@code;
END

GO
/****** Object:  StoredProcedure [dbo].[DeleteCountryTax]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteCountryTax]
--Parameters
@countryCode nchar(30),
@idTax int
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	DELETE [dbo].[CountryTax] WHERE CountryCode=@countryCode AND IdTax=@idTax;
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteCreditCard]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteCreditCard]
--Parameters
@creditCardNumber int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Procedure
	DELETE [dbo].[CreditCard] WHERE CreditCardNumber=@creditCardNumber;
END

GO
/****** Object:  StoredProcedure [dbo].[DeletePaymentType]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeletePaymentType]
--Parameters
@id tinyint
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	DELETE [dbo].[PaymentType] WHERE Id=@id;
END
GO
/****** Object:  StoredProcedure [dbo].[DeletePayPal]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeletePayPal]
--Parameters
@id int
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	DELETE [dbo].[Paypal] WHERE Id=@id;
END






SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[DeleteProduct]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteProduct]
--Parameters
@id int
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	DELETE [dbo].[Product] WHERE Id=@id;
END







SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[DeleteProductEvaluation]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteProductEvaluation]
--Parameters
@id int
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	DELETE [dbo].[ProductEvaluation] WHERE Id=@id;
END

-------------------------------------------------------



GO
/****** Object:  StoredProcedure [dbo].[DeleteProductUser]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteProductUser]
--Parameters
@idProduct int,
@idUser int
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	DELETE [dbo].[ProductUser] WHERE IdProduct=@idproduct and IdUser=@idUser;
END

GO
/****** Object:  StoredProcedure [dbo].[DeleteRole]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteRole]
--Parameters
@Id int
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	DELETE [dbo].[Role] WHERE Id=@Id;
END

GO
/****** Object:  StoredProcedure [dbo].[DeleteState]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteState]
--Parameters
@Code int
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	DELETE [dbo].[State] WHERE Code=@Code;
END

GO
/****** Object:  StoredProcedure [dbo].[DeleteStatus]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteStatus]
--Parameters
@id int
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	DELETE [dbo].[Status] WHERE Id=@id;
END

GO
/****** Object:  StoredProcedure [dbo].[DeleteSupplier]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteSupplier]
--Parameters
@code int
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	DELETE [dbo].[Supplier] WHERE Code=@code;
END

GO
/****** Object:  StoredProcedure [dbo].[DeleteSupplierEvaluation]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteSupplierEvaluation]
--Parameters
@idSupplier int,
@idUser int,
@score int
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	DELETE [dbo].[SupplierEvaluation] WHERE IdSupplier=@idSupplier and IdUser=@idUser;
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteTax]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteTax]
--Parameters
@id int
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	DELETE [dbo].[Tax] WHERE Id=@id;
END


GO
/****** Object:  StoredProcedure [dbo].[DeleteTypeId]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteTypeId]
--Parameters
@id int
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	DELETE [dbo].[TypeId] WHERE Id=@id;
END

GO
/****** Object:  StoredProcedure [dbo].[DeleteUser]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteUser]
--Parameters
@id int
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	DELETE [dbo].[User] WHERE Id=@id;
END


GO
/****** Object:  StoredProcedure [dbo].[GetCategory]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetCategory]
--Parameters
@id int
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	SELECT Name FROM [dbo].[Category] WHERE Id=@id;
END

GO
/****** Object:  StoredProcedure [dbo].[GetCity]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetCity]
	-- parameters
	@code int
AS
BEGIN
	SET NOCOUNT ON;

    -- procedure
	SELECT Name,StateCode FROM [dbo].[City] WHERE Code=@code;
END

GO
/****** Object:  StoredProcedure [dbo].[GetCountry]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetCountry]
	-- parameters
	@code int
AS
BEGIN
	SET NOCOUNT ON;

    -- procedure
	SELECT Name FROM [dbo].[Country] WHERE Code=@code;
END

GO
/****** Object:  StoredProcedure [dbo].[GetCountryTax]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetCountryTax]
--Parameters
@countryCode nchar(30)
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	SELECT IdTax FROM [dbo].[CountryTax] WHERE CountryCode=@countryCode;
END

GO
/****** Object:  StoredProcedure [dbo].[GetCreditCard]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetCreditCard]
	-- parameters
	@creditCardNumber int
AS
BEGIN
	SET NOCOUNT ON;

    -- procedure
	SELECT ExpirationDate,IdUser,CheckBank FROM [dbo].[CreditCard] WHERE CreditCardNumber=@creditCardNumber;
END

GO
/****** Object:  StoredProcedure [dbo].[GetCreditCardUser]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetCreditCardUser]
	-- parameters
	@idUser int
AS
BEGIN
	SET NOCOUNT ON;

    -- procedure
	SELECT ExpirationDate,CheckBank,CreditCardNumber FROM [dbo].[CreditCard] WHERE IdUser=@idUser;
END

GO
/****** Object:  StoredProcedure [dbo].[GetEvent]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetEvent]
--Parameters
@idUser int,
@timer1 datetime,
@timer2 datetime

AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	SELECT Detail,Timer FROM [dbo].[Event] WHERE IdUser=@idUser AND Timer>@timer1 AND Timer<@timer2;
END


GO
/****** Object:  StoredProcedure [dbo].[GetOffer]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetOffer]
--Parameters
@id int
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	SELECT Name,Detail,DateStart,DateEnd,PercentageOffer FROM [dbo].[Offer] WHERE Id=@id;
END

SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[GetOrder]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetOrder]
--Parameters
@id int
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	SELECT IdStatus,IdPayment,DateOrder,Total FROM [dbo].[Order] WHERE Id=@id;
END

SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[GetOrderDetail]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetOrderDetail]
--Parameters
@idOrder int
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	SELECT IdProduct,IdTax,Quantity,SubTotal,Observation,Discount FROM [dbo].[OrderDetail] WHERE IdOrder=@idOrder;
END
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[GetPayment]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPayment]
--Parameters
@id tinyint
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	SELECT Detail FROM [dbo].[PaymentType] WHERE Id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[GetPayPal]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPayPal]
--Parameters
@idUser nchar(50)
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	SELECT Id FROM [dbo].[PayPal] WHERE IdUser=@idUser
END


SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[GetProduct]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetProduct]
--Parameters
@id int
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	SELECT Name,Detail,IdCategory,IdSupplier,Quantity,UnitPrice FROM [dbo].[Product] WHERE Id=@id;
END


SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[GetProductEvaluation]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetProductEvaluation]
--Parameters
@idProduct int
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	SELECT AVG(Score) Score FROM [dbo].[ProductEvaluation] WHERE IdProduct=@idProduct;
END



SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[GetProductUser]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetProductUser]
--Parameters
@idUser int
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	SELECT IdProduct FROM [dbo].[ProductUser] WHERE IdUser=@idUser;
END

GO
/****** Object:  StoredProcedure [dbo].[GetRole]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetRole]
--Parameters
@id int
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	SELECT Detail FROM [dbo].[Role] WHERE Id=@id;
END

GO
/****** Object:  StoredProcedure [dbo].[GetShipment]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetShipment]
--Parameters
@Id int
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	SELECT IdOrder,idUser,IdSupplier,idStatus,ShipmentDate,ArrivalDate FROM [dbo].[Shipment] WHERE Id=@Id;
END

GO
/****** Object:  StoredProcedure [dbo].[GetState]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetState]
--Parameters
@Code int
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	SELECT Name,CountryCode FROM [dbo].[State] WHERE Code=@Code;
END

GO
/****** Object:  StoredProcedure [dbo].[GetStatus]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetStatus]
--Parameters
@id int
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	SELECT Detail FROM [dbo].[Status] WHERE Id=@id;
END

GO
/****** Object:  StoredProcedure [dbo].[GetSupplier]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetSupplier]
--Parameters
@code int
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	SELECT IdUser,CompanyName,Note,Discount,CurrentOrder FROM [dbo].[Supplier] WHERE Code=@code;

END



SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[GetSupplierEvaluation]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetSupplierEvaluation]
--Parameters
@idSupplier int
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	SELECT AVG(Score) Score FROM [dbo].[SupplierEvaluation] WHERE IdSupplier=@idSupplier;
END

SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[GetTax]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetTax]
--Parameters
@id int
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	SELECT Detail,TaxPercent FROM [dbo].[Tax] WHERE Id=@id;
END

GO
/****** Object:  StoredProcedure [dbo].[GetTypeId]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetTypeId]
--Parameters
@id int
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	SELECT DocumentType FROM [dbo].[TypeId] WHERE Id=@id;
END


GO
/****** Object:  StoredProcedure [dbo].[GetUser]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetUser]
--Parameters
@id int
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	SELECT IdTypeid,Name,KeyWord,Email,PhoneNumber,IdRole,CountryCode,IdStatus,PostalCode,Adress FROM [dbo].[User] WHERE Id=@id;
END



GO
/****** Object:  StoredProcedure [dbo].[UpdateCategory]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateCategory]
--Parameters
@id int,
@name nchar(30)
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	UPDATE [dbo].[Category] SET Name=@name WHERE Id=@id;
END

GO
/****** Object:  StoredProcedure [dbo].[UpdateCity]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateCity]
	-- parameters
	@code int,
	@name nchar(30),
	@stateCode int
AS
BEGIN
	SET NOCOUNT ON;

    -- procedure
	UPDATE [dbo].[City] SET Name=@name,StateCode=@stateCode WHERE Code=@code;
END

GO
/****** Object:  StoredProcedure [dbo].[UpdateCountry]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateCountry]
	-- parameters
	@id int,
	@name nchar(30)
AS
BEGIN
	SET NOCOUNT ON;

    -- procedure
	UPDATE [dbo].[Country] SET Name=@name WHERE Code=@id;
END

GO
/****** Object:  StoredProcedure [dbo].[UpdateCountryTax]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateCountryTax]
--Parameters
@countryCode nchar(30),
@idTax int


AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	UPDATE [dbo].[CountryTax] SET CountryCode=@countryCode,IdTax=@idTax WHERE CountryCode=@countryCode AND IdTax=@idTax;
END

GO
/****** Object:  StoredProcedure [dbo].[UpdateCreditCard]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateCreditCard]
	-- parameters
	@creditCardNumber int,
	@expirationDate date,
	@idUser int,
	@checkBank bit
AS
BEGIN
	SET NOCOUNT ON;

    -- procedure
	UPDATE [dbo].[CreditCard] SET ExpirationDate=@expirationDate,CheckBank=@checkBank WHERE CreditCardNumber=@creditCardNumber;
END

GO
/****** Object:  StoredProcedure [dbo].[UpdateOffer]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateOffer]
--Parameters
@id int,
@name nchar(100),
@detail nchar(150),
@dateStart date,
@dateEnd date,
@percentageOffer float,
@idProduct int
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	UPDATE [dbo].[Offer] SET Name=@name,Detail=@detail,DateStart=@dateStart,DateEnd=@dateEnd,PercentageOffer=@percentageOffer WHERE IdProduct=@idProduct;
END

SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[UpdateOrder]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateOrder]
--Parameters
@id int,
@idStatus tinyint,
@idPayment int,
@dateOrder date,
@total float

AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	UPDATE [dbo].[Order] SET DateOrder=@dateOrder,Total=@total,IdPayment=@idPayment,IdStatus=@idStatus WHERE Id=@id;
END

SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[UpdateOrderDetail]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateOrderDetail]
--Parameters
@id int,
@idOrder int,
@idProduct int,
@idTax int,
@quantityTotal int,
@subTotal float,
@observation nchar(100),
@discount float
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	UPDATE [dbo].[OrderDetail] SET QuantityTotal=@quantityTotal,SubTotal=@subTotal,Observation=@observation,Discount=@discount WHERE Id=@id;
END
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[UpdatePayment]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdatePayment]
--Parameters
@id tinyint,
@detail nchar(20)
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	UPDATE [dbo].[PaymentType] SET Detail=@detail WHERE Id=@id;
END

GO
/****** Object:  StoredProcedure [dbo].[UpdateProduct]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateProduct]
--Parameters
@id int,
@name nchar(30),
@detail nchar(200),
@idCategory int,
@idSupplier int,
@quantity int,
@unitPrice float
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	UPDATE [dbo].[Product] SET Name=@name,Detail=@detail,IdCategory=@idCategory,IdSupplier=@idSupplier,Quantity=@quantity, UnitPrice=@unitPrice WHERE Id=@id;
END

SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[UpdateProductEvaluation]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateProductEvaluation]
--Parameters
@score nchar(10),
@idProduct int,
@idUser int
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	UPDATE [dbo].[ProductEvaluation] SET Score=@score WHERE IdProduct=@idProduct AND IdUser=@idUser;
END


SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[UpdateRole]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateRole]
--Parameters
@id int,
@detail nchar(20)

AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	UPDATE [dbo].[Role] SET Detail=@detail WHERE Id=@id;
END


GO
/****** Object:  StoredProcedure [dbo].[UpdateShipment]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateShipment]
--Parameters
@id int,
@idOrder int,
@idUser int,
@idSupplier int,
@idStatus tinyint,
@shipmentDate date,
@arrivalDate date
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	UPDATE [dbo].[Shipment] SET IdOrder=@idOrder,IdUser=@idUser,idSupplier=@idSupplier,IdStatus=@idStatus,ShipmentDate=@shipmentDate,ArrivalDate=@arrivalDate WHERE Id=@id;
END

GO
/****** Object:  StoredProcedure [dbo].[UpdateState]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateState]
--Parameters
@code int,
@name nchar(30),
@countryCode int
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	UPDATE [dbo].[State] SET Name=@name,CountryCode=@countryCode WHERE Code=@code;
END

GO
/****** Object:  StoredProcedure [dbo].[UpdateStatus]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateStatus]
--Parameters
@Id int,
@detail nchar(20)
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	UPDATE [dbo].[Status] SET Detail=@detail WHERE Id=@Id;
END

GO
/****** Object:  StoredProcedure [dbo].[UpdateSupplier]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateSupplier]
--Parameters
@code int,
@companyName nchar(50),
@idUser int,
@note tinyint,
@discount real,
@currentOrder int
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	UPDATE [dbo].[Supplier] SET CompanyName=@companyName,IdUser=@idUser, Note=@note,Discount=@discount,CurrentOrder=@currentOrder WHERE Code=@code;
END


SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[UpdateSupplierEvaluation]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateSupplierEvaluation]
--Parameters
@idSupplier int,
@idUser int,
@score int
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	UPDATE [dbo].[SupplierEvaluation] SET Score=@score WHERE IdSupplier=@idSupplier AND IdUser=@idUser;
END
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[UpdateTax]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateTax]
--Parameters
@id int,
@detail nchar(20),
@taxPercent real
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	UPDATE [dbo].[Tax] SET Detail=@detail,TaxPercent=@taxPercent WHERE Id=@id;
END


GO
/****** Object:  StoredProcedure [dbo].[UpdateTypeId]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateTypeId]
--Parameters
@id int,
@documentType nchar(10)
AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	UPDATE [dbo].[TypeId] SET DocumentType=@documentType WHERE Id=@id;
END

GO
/****** Object:  StoredProcedure [dbo].[UpdateUser]    Script Date: 28/03/2016 4:57:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateUser]
--Parameters
@id int,
@idTypeId tinyint,
@userName nchar(40),
@keyWord nchar(40),
@email nchar(50),
@phoneNumber nchar(30),
@idRole tinyint,
@countryCode int,
@factoryName nchar (10),
@idCreditCard int,
@idPaypal int,
@idStatus tinyint,
@postalCode int,
@adress nchar (70)

AS
BEGIN
	
	SET NOCOUNT ON;
	--Procedure
	UPDATE [dbo].[User] SET IdTypeid=@idTypeId, Name=@userName, KeyWord=@keyWord, Email=@email, PhoneNumber=@phoneNumber, IdRole=@idRole, CountryCode=@countryCode,
	IdCreditCard=@idCreditcard, IdPaypal=@idPaypal, IdStatus=@idStatus, PostalCode=@postalCode, Adress=@adress WHERE Id=@id;
END




GO
USE [master]
GO
ALTER DATABASE [ECommerce] SET  READ_WRITE 
GO
