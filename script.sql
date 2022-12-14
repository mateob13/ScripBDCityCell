USE [master]
GO
/****** Object:  Database [CityCell]    Script Date: 7/08/2022 7:36:02 p. m. ******/
CREATE DATABASE [CityCell]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CityCell', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\CityCell.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CityCell_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\CityCell_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CityCell] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CityCell].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CityCell] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CityCell] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CityCell] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CityCell] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CityCell] SET ARITHABORT OFF 
GO
ALTER DATABASE [CityCell] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CityCell] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CityCell] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CityCell] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CityCell] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CityCell] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CityCell] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CityCell] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CityCell] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CityCell] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CityCell] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CityCell] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CityCell] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CityCell] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CityCell] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CityCell] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CityCell] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CityCell] SET RECOVERY FULL 
GO
ALTER DATABASE [CityCell] SET  MULTI_USER 
GO
ALTER DATABASE [CityCell] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CityCell] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CityCell] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CityCell] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CityCell] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CityCell] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'CityCell', N'ON'
GO
ALTER DATABASE [CityCell] SET QUERY_STORE = OFF
GO
USE [CityCell]
GO
/****** Object:  Table [dbo].[Tbl_Products]    Script Date: 7/08/2022 7:36:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](250) NOT NULL,
	[Price] [float] NOT NULL,
	[Reference] [nvarchar](250) NULL,
 CONSTRAINT [PK_Tbl_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Users]    Script Date: 7/08/2022 7:36:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Identification] [nvarchar](100) NOT NULL,
	[Mail] [nvarchar](250) NOT NULL,
	[UserLogin] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Tbl_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Tbl_Products] ON 

INSERT [dbo].[Tbl_Products] ([Id], [ProductName], [Price], [Reference]) VALUES (1, N'Celulares iPhone 13', 4000000, N'iPhone 13')
INSERT [dbo].[Tbl_Products] ([Id], [ProductName], [Price], [Reference]) VALUES (2, N'Estuche para cualquier referencia', 50000, N'Estuches')
INSERT [dbo].[Tbl_Products] ([Id], [ProductName], [Price], [Reference]) VALUES (3, N'Audifonos inalambricos JBL', 300000, N'Auriculares')
SET IDENTITY_INSERT [dbo].[Tbl_Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Users] ON 

INSERT [dbo].[Tbl_Users] ([Id], [Name], [Identification], [Mail], [UserLogin], [Password]) VALUES (1, N'Mateo Bedoya Betancur', N'1152216768', N'mateo.bedoya.b@gmail.com', N'mbedoya', N'12345')
INSERT [dbo].[Tbl_Users] ([Id], [Name], [Identification], [Mail], [UserLogin], [Password]) VALUES (2, N'Anthony Bedoya Salas', N'1021943730', N'thony1303@gmail.com', N'thony13', N'54321')
INSERT [dbo].[Tbl_Users] ([Id], [Name], [Identification], [Mail], [UserLogin], [Password]) VALUES (4, N'Juan Jose Bedoya', N'789456123', N'juanjose@outlook.com', N'jbedoya', N'98765')
INSERT [dbo].[Tbl_Users] ([Id], [Name], [Identification], [Mail], [UserLogin], [Password]) VALUES (5, N'santiago giraldo betancur', N'1000397573', N'betasanti8@gmail.com', N'santig2831', N'santi123')
SET IDENTITY_INSERT [dbo].[Tbl_Users] OFF
GO
/****** Object:  StoredProcedure [dbo].[SP_00_CHECK_LOGIN]    Script Date: 7/08/2022 7:36:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_00_CHECK_LOGIN]
(
	@USER_ID NVARCHAR(50),
	@PASSWORD NVARCHAR(MAX)
)

AS
BEGIN
-----------TEST-------------
--DECLARE @USER_ID NVARCHAR(50) = 'mbedoya',
--@PASSWORD NVARCHAR(MAX) = '12345'
----------------------------


SELECT 
[Name],
Mail
FROM Tbl_Users
WHERE UserLogin = @USER_ID AND [Password] = @PASSWORD

END
GO
USE [master]
GO
ALTER DATABASE [CityCell] SET  READ_WRITE 
GO
