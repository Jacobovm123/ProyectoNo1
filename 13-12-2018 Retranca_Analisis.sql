USE [master]
GO
/****** Object:  Database [Retranca_Analisis]    Script Date: 12/13/2018 10:48:41 PM ******/
CREATE DATABASE [Retranca_Analisis]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Retranca_Analisis', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Retranca_Analisis.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Retranca_Analisis_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Retranca_Analisis_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Retranca_Analisis] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Retranca_Analisis].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Retranca_Analisis] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Retranca_Analisis] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Retranca_Analisis] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Retranca_Analisis] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Retranca_Analisis] SET ARITHABORT OFF 
GO
ALTER DATABASE [Retranca_Analisis] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Retranca_Analisis] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Retranca_Analisis] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Retranca_Analisis] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Retranca_Analisis] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Retranca_Analisis] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Retranca_Analisis] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Retranca_Analisis] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Retranca_Analisis] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Retranca_Analisis] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Retranca_Analisis] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Retranca_Analisis] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Retranca_Analisis] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Retranca_Analisis] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Retranca_Analisis] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Retranca_Analisis] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Retranca_Analisis] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Retranca_Analisis] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Retranca_Analisis] SET  MULTI_USER 
GO
ALTER DATABASE [Retranca_Analisis] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Retranca_Analisis] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Retranca_Analisis] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Retranca_Analisis] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Retranca_Analisis] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Retranca_Analisis] SET QUERY_STORE = OFF
GO
USE [Retranca_Analisis]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 12/13/2018 10:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Id_Admin] [int] IDENTITY(1,1) NOT NULL,
	[Usser] [varchar](250) NULL,
	[Pass] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Admin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Binnacle]    Script Date: 12/13/2018 10:48:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Binnacle](
	[Id_Binnacle] [int] IDENTITY(1,1) NOT NULL,
	[Id_User] [int] NULL,
	[Tabble] [varchar](250) NULL,
	[Action] [varchar](250) NULL,
	[Detail] [varchar](250) NULL,
	[Date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Binnacle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chapter]    Script Date: 12/13/2018 10:48:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chapter](
	[Id_Chapter] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](250) NULL,
	[Id_Province] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Chapter] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 12/13/2018 10:48:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[Id_Country] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Country] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Event]    Script Date: 12/13/2018 10:48:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event](
	[Id_Event] [bigint] IDENTITY(1,1) NOT NULL,
	[Id_Chapter] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[Address] [varchar](50) NULL,
	[Minimum_Dishes] [int] NOT NULL,
	[Previous_Balance] [decimal](10, 2) NULL,
	[Amount_Attendance] [decimal](10, 2) NULL,
	[Amount_Offering] [decimal](10, 2) NULL,
	[Amount_Special_Offering] [decimal](10, 2) NULL,
	[Credit_Amount] [decimal](10, 2) NULL,
	[Total_Amount] [decimal](10, 2) NULL,
	[Payment_Discharge] [decimal](10, 2) NULL,
	[Current_Balance] [decimal](10, 2) NULL,
 CONSTRAINT [PK__Event_Re__7C1C2787749817D9] PRIMARY KEY CLUSTERED 
(
	[Id_Event] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Event_Attendance]    Script Date: 12/13/2018 10:48:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event_Attendance](
	[Id_Event_Attendance] [bigint] IDENTITY(1,1) NOT NULL,
	[Id_Event] [bigint] NULL,
	[Id_Person] [int] NULL,
	[Id_Event_Fee_Type] [int] NULL,
	[Amount_Fee] [decimal](10, 2) NULL,
	[Payment_Type] [int] NULL,
	[Special_Offering] [decimal](10, 2) NULL,
	[Special_Offering_Description] [varchar](250) NULL,
 CONSTRAINT [PK__Event_At__60B806D9C62876DA] PRIMARY KEY CLUSTERED 
(
	[Id_Event_Attendance] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Event_Attendance_Payment]    Script Date: 12/13/2018 10:48:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event_Attendance_Payment](
	[Id_Evente_Attendance_Payment] [int] IDENTITY(1,1) NOT NULL,
	[Id_Event_Attendance] [bigint] NULL,
	[Amount] [decimal](10, 2) NULL,
	[Pending] [decimal](10, 2) NULL,
	[Date] [date] NOT NULL,
 CONSTRAINT [PK__Event_At__418737EA272316DF] PRIMARY KEY CLUSTERED 
(
	[Id_Evente_Attendance_Payment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Event_Fee_Type]    Script Date: 12/13/2018 10:48:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event_Fee_Type](
	[Id_Event_Fee] [int] IDENTITY(1,1) NOT NULL,
	[Id_Chapter] [int] NOT NULL,
	[Description] [varchar](50) NULL,
	[Amount] [decimal](10, 2) NULL,
 CONSTRAINT [PK__Event_Fe__892C879608BBB619] PRIMARY KEY CLUSTERED 
(
	[Id_Event_Fee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Event_Template]    Script Date: 12/13/2018 10:48:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event_Template](
	[Id_Event_Template] [int] IDENTITY(1,1) NOT NULL,
	[Id_Chapter] [int] NOT NULL,
	[Address] [varchar](50) NULL,
	[Minimum_Dishes] [int] NULL,
 CONSTRAINT [PK__Event__0DBEC62A524F57D5] PRIMARY KEY CLUSTERED 
(
	[Id_Event_Template] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 12/13/2018 10:48:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[Id_Invoice] [int] IDENTITY(1,1) NOT NULL,
	[Id_Chapter] [int] NULL,
	[Id_Person] [int] NULL,
	[Id_Payment_Type] [int] NULL,
	[Date] [date] NULL,
	[Amount] [decimal](10, 2) NULL,
	[Special_Offering] [decimal](10, 2) NULL,
	[Detail] [varchar](50) NULL,
 CONSTRAINT [PK__Receipt__22C9D986113F0846] PRIMARY KEY CLUSTERED 
(
	[Id_Invoice] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Membership_old]    Script Date: 12/13/2018 10:48:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Membership_old](
	[Id_Membership] [int] IDENTITY(1,1) NOT NULL,
	[Id_Membership_Type] [bigint] NULL,
	[Id_Person] [int] NULL,
	[Membership_Number] [varchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK__Membersh__CD419009E82AB81C] PRIMARY KEY CLUSTERED 
(
	[Id_Membership] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Membership_Payment_Fee]    Script Date: 12/13/2018 10:48:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Membership_Payment_Fee](
	[Id_Membership_Payment_Fee] [bigint] IDENTITY(1,1) NOT NULL,
	[Id_Membership_Fee] [bigint] NULL,
	[Amount] [decimal](10, 2) NULL,
	[Date] [date] NOT NULL,
 CONSTRAINT [PK__Payment___F56DC2EC09191899] PRIMARY KEY CLUSTERED 
(
	[Id_Membership_Payment_Fee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Membership_Type]    Script Date: 12/13/2018 10:48:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Membership_Type](
	[Id_Membership] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Cost] [decimal](10, 2) NULL,
 CONSTRAINT [PK_Membership_Type] PRIMARY KEY CLUSTERED 
(
	[Id_Membership] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment_Type]    Script Date: 12/13/2018 10:48:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment_Type](
	[Id_Payment_Type] [int] NOT NULL,
	[Id_Chapter] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Payment_Type] PRIMARY KEY CLUSTERED 
(
	[Id_Payment_Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Person]    Script Date: 12/13/2018 10:48:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[Id_Person] [int] IDENTITY(1,1) NOT NULL,
	[Id_Chapter] [int] NOT NULL,
	[Id_Membership_Type] [int] NULL,
	[Membership_Id] [varchar](50) NULL,
	[Membership_Status] [tinyint] NULL,
	[Registration_Date] [date] NOT NULL,
	[Surnames] [varchar](50) NULL,
	[Names] [varchar](50) NOT NULL,
	[Occupation] [varchar](50) NULL,
	[Birth_Date] [date] NULL,
	[Marital_Status] [bit] NULL,
	[Wife_Name] [varchar](100) NULL,
	[Address] [varchar](50) NULL,
	[Mobile] [varchar](20) NULL,
	[Phone] [varchar](20) NULL,
	[Email] [varchar](50) NULL,
	[Godfather] [int] NULL,
	[Description] [varchar](100) NULL,
 CONSTRAINT [PK__Person__3DA61872135E11C8] PRIMARY KEY CLUSTERED 
(
	[Id_Person] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Province]    Script Date: 12/13/2018 10:48:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Province](
	[Id_Province] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](250) NULL,
	[Id_Country] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Province] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rol]    Script Date: 12/13/2018 10:48:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol](
	[Id_Rol] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](250) NULL,
	[Role_Type] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Rol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suscription_Fee]    Script Date: 12/13/2018 10:48:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suscription_Fee](
	[Id_Suscription_Fee] [bigint] IDENTITY(1,1) NOT NULL,
	[Amount] [decimal](10, 2) NULL,
	[Pending_Amount] [decimal](10, 2) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK__Fee__5E3CF6F959CD426A] PRIMARY KEY CLUSTERED 
(
	[Id_Suscription_Fee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 12/13/2018 10:48:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket](
	[Id_Ticket] [int] IDENTITY(1,1) NOT NULL,
	[Id_Chapter] [int] NULL,
	[Id_Person] [int] NULL,
	[Id_Event_Fee_Type] [int] NULL,
	[Id_Event_Attendance] [bigint] NULL,
	[Id_Invoice] [int] NOT NULL,
	[Ticket_Code] [varchar](25) NULL,
 CONSTRAINT [PK__Ticket__2CE8F3C776E0705A] PRIMARY KEY CLUSTERED 
(
	[Id_Ticket] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 12/13/2018 10:48:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id_User] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](250) NULL,
	[Pass] [varchar](250) NULL,
	[Id_Role] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_User] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Work_Session]    Script Date: 12/13/2018 10:48:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Work_Session](
	[Id_Work_Session] [int] IDENTITY(1,1) NOT NULL,
	[Id_Chapter] [int] NULL,
	[Date] [date] NULL,
	[Address] [varchar](50) NULL,
	[Donation] [decimal](10, 2) NULL,
	[Next_Event_Date] [date] NULL,
	[Next_Event_Type] [varchar](50) NULL,
	[Next_Minimum_Dishes] [int] NULL,
	[Last_Dishes_Paid] [int] NULL,
	[Last_Dishes_Paid_Amount] [decimal](10, 2) NULL,
 CONSTRAINT [PK__Work_Ses__AA4A1235760A6DD8] PRIMARY KEY CLUSTERED 
(
	[Id_Work_Session] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Work_Session_Attendance]    Script Date: 12/13/2018 10:48:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Work_Session_Attendance](
	[Id_Work_Session_Attendance] [int] IDENTITY(1,1) NOT NULL,
	[Id_Work_Session] [int] NULL,
	[Id_Person] [int] NULL,
	[Id_Work_Session_Fee] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Work_Session_Attendance] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Work_Session_Fee]    Script Date: 12/13/2018 10:48:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Work_Session_Fee](
	[Id_Work_Session_Fee] [int] IDENTITY(1,1) NOT NULL,
	[Type] [varchar](250) NULL,
	[Cost] [decimal](6, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Work_Session_Fee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Chapter] ON 

INSERT [dbo].[Chapter] ([Id_Chapter], [Name], [Id_Province]) VALUES (1, N'Capitulo Dorado', 1)
SET IDENTITY_INSERT [dbo].[Chapter] OFF
SET IDENTITY_INSERT [dbo].[Country] ON 

INSERT [dbo].[Country] ([Id_Country], [Name]) VALUES (1, N'Guatemala')
SET IDENTITY_INSERT [dbo].[Country] OFF
SET IDENTITY_INSERT [dbo].[Event] ON 

INSERT [dbo].[Event] ([Id_Event], [Id_Chapter], [Date], [Address], [Minimum_Dishes], [Previous_Balance], [Amount_Attendance], [Amount_Offering], [Amount_Special_Offering], [Credit_Amount], [Total_Amount], [Payment_Discharge], [Current_Balance]) VALUES (4, 1, CAST(N'2018-12-13' AS Date), N'Guatemala', 30, CAST(100.00 AS Decimal(10, 2)), CAST(1000.00 AS Decimal(10, 2)), CAST(200.00 AS Decimal(10, 2)), CAST(100.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), CAST(1400.00 AS Decimal(10, 2)), CAST(1000.00 AS Decimal(10, 2)), CAST(400.00 AS Decimal(10, 2)))
INSERT [dbo].[Event] ([Id_Event], [Id_Chapter], [Date], [Address], [Minimum_Dishes], [Previous_Balance], [Amount_Attendance], [Amount_Offering], [Amount_Special_Offering], [Credit_Amount], [Total_Amount], [Payment_Discharge], [Current_Balance]) VALUES (5, 1, CAST(N'2018-12-13' AS Date), N'Camino Real Zona 10 Guatemala', 30, CAST(1000.00 AS Decimal(10, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Event] OFF
SET IDENTITY_INSERT [dbo].[Event_Attendance] ON 

INSERT [dbo].[Event_Attendance] ([Id_Event_Attendance], [Id_Event], [Id_Person], [Id_Event_Fee_Type], [Amount_Fee], [Payment_Type], [Special_Offering], [Special_Offering_Description]) VALUES (1, 4, 1, 1, NULL, 2, CAST(0.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Event_Attendance] ([Id_Event_Attendance], [Id_Event], [Id_Person], [Id_Event_Fee_Type], [Amount_Fee], [Payment_Type], [Special_Offering], [Special_Offering_Description]) VALUES (2, 4, 1, 1, CAST(456.00 AS Decimal(10, 2)), 1, NULL, NULL)
INSERT [dbo].[Event_Attendance] ([Id_Event_Attendance], [Id_Event], [Id_Person], [Id_Event_Fee_Type], [Amount_Fee], [Payment_Type], [Special_Offering], [Special_Offering_Description]) VALUES (3, 4, 2, 1, NULL, 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Event_Attendance] OFF
SET IDENTITY_INSERT [dbo].[Event_Fee_Type] ON 

INSERT [dbo].[Event_Fee_Type] ([Id_Event_Fee], [Id_Chapter], [Description], [Amount]) VALUES (1, 1, N'Desayuno', CAST(100.00 AS Decimal(10, 2)))
INSERT [dbo].[Event_Fee_Type] ([Id_Event_Fee], [Id_Chapter], [Description], [Amount]) VALUES (2, 1, N'Cafe', CAST(30.00 AS Decimal(10, 2)))
INSERT [dbo].[Event_Fee_Type] ([Id_Event_Fee], [Id_Chapter], [Description], [Amount]) VALUES (3, 1, N'Ninguno', CAST(0.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Event_Fee_Type] OFF
SET IDENTITY_INSERT [dbo].[Event_Template] ON 

INSERT [dbo].[Event_Template] ([Id_Event_Template], [Id_Chapter], [Address], [Minimum_Dishes]) VALUES (1, 1, N'Camino Real Guatemala', 30)
SET IDENTITY_INSERT [dbo].[Event_Template] OFF
INSERT [dbo].[Payment_Type] ([Id_Payment_Type], [Id_Chapter], [Nombre]) VALUES (1, 1, N'Credito')
INSERT [dbo].[Payment_Type] ([Id_Payment_Type], [Id_Chapter], [Nombre]) VALUES (2, 1, N'Contado')
SET IDENTITY_INSERT [dbo].[Person] ON 

INSERT [dbo].[Person] ([Id_Person], [Id_Chapter], [Id_Membership_Type], [Membership_Id], [Membership_Status], [Registration_Date], [Surnames], [Names], [Occupation], [Birth_Date], [Marital_Status], [Wife_Name], [Address], [Mobile], [Phone], [Email], [Godfather], [Description]) VALUES (1, 1, NULL, NULL, NULL, CAST(N'2018-12-13' AS Date), N'Mendez Cruz', N'Erick Arturo', N'Estudiante', CAST(N'1995-11-29' AS Date), 0, NULL, NULL, N'30801366', NULL, N'erickmcruz29@gmail.com', NULL, NULL)
INSERT [dbo].[Person] ([Id_Person], [Id_Chapter], [Id_Membership_Type], [Membership_Id], [Membership_Status], [Registration_Date], [Surnames], [Names], [Occupation], [Birth_Date], [Marital_Status], [Wife_Name], [Address], [Mobile], [Phone], [Email], [Godfather], [Description]) VALUES (2, 1, NULL, NULL, NULL, CAST(N'2018-12-13' AS Date), N'Perez Ajcu', N'Spencer Perez', N'Administrador', CAST(N'1994-12-17' AS Date), 1, N'Juanita', N'San Pedro Las Huertas', N'58582525', N'13651565', N'Spencerin@gmail.com', 2, NULL)
INSERT [dbo].[Person] ([Id_Person], [Id_Chapter], [Id_Membership_Type], [Membership_Id], [Membership_Status], [Registration_Date], [Surnames], [Names], [Occupation], [Birth_Date], [Marital_Status], [Wife_Name], [Address], [Mobile], [Phone], [Email], [Godfather], [Description]) VALUES (4, 1, NULL, NULL, NULL, CAST(N'2018-12-13' AS Date), N'Santamarina Morales', N'Alejandro Jose', N'Estudiante', CAST(N'1997-06-27' AS Date), 1, N'Juliana', N'Antigua G.', N'351175536', N'42712947', N'aleale@hotmail.com', 2, N'prueba 2')
SET IDENTITY_INSERT [dbo].[Person] OFF
SET IDENTITY_INSERT [dbo].[Province] ON 

INSERT [dbo].[Province] ([Id_Province], [Name], [Id_Country]) VALUES (1, N'Guatemala', 1)
SET IDENTITY_INSERT [dbo].[Province] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Ticket__C5BD8D1A83986E9A]    Script Date: 12/13/2018 10:48:42 PM ******/
ALTER TABLE [dbo].[Ticket] ADD  CONSTRAINT [UQ__Ticket__C5BD8D1A83986E9A] UNIQUE NONCLUSTERED 
(
	[Ticket_Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Binnacle]  WITH CHECK ADD FOREIGN KEY([Id_User])
REFERENCES [dbo].[User] ([Id_User])
GO
ALTER TABLE [dbo].[Binnacle]  WITH CHECK ADD FOREIGN KEY([Id_User])
REFERENCES [dbo].[User] ([Id_User])
GO
ALTER TABLE [dbo].[Chapter]  WITH CHECK ADD FOREIGN KEY([Id_Province])
REFERENCES [dbo].[Province] ([Id_Province])
GO
ALTER TABLE [dbo].[Chapter]  WITH CHECK ADD FOREIGN KEY([Id_Province])
REFERENCES [dbo].[Province] ([Id_Province])
GO
ALTER TABLE [dbo].[Event]  WITH CHECK ADD  CONSTRAINT [FK_Event_Chapter] FOREIGN KEY([Id_Chapter])
REFERENCES [dbo].[Chapter] ([Id_Chapter])
GO
ALTER TABLE [dbo].[Event] CHECK CONSTRAINT [FK_Event_Chapter]
GO
ALTER TABLE [dbo].[Event_Attendance]  WITH CHECK ADD  CONSTRAINT [FK__Event_Att__Id_Ev__6383C8BA] FOREIGN KEY([Id_Event_Fee_Type])
REFERENCES [dbo].[Event_Fee_Type] ([Id_Event_Fee])
GO
ALTER TABLE [dbo].[Event_Attendance] CHECK CONSTRAINT [FK__Event_Att__Id_Ev__6383C8BA]
GO
ALTER TABLE [dbo].[Event_Attendance]  WITH CHECK ADD  CONSTRAINT [FK__Event_Att__Id_Pe__656C112C] FOREIGN KEY([Id_Person])
REFERENCES [dbo].[Person] ([Id_Person])
GO
ALTER TABLE [dbo].[Event_Attendance] CHECK CONSTRAINT [FK__Event_Att__Id_Pe__656C112C]
GO
ALTER TABLE [dbo].[Event_Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Event_Attendance_Event] FOREIGN KEY([Id_Event])
REFERENCES [dbo].[Event] ([Id_Event])
GO
ALTER TABLE [dbo].[Event_Attendance] CHECK CONSTRAINT [FK_Event_Attendance_Event]
GO
ALTER TABLE [dbo].[Event_Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Event_Attendance_Payment_Type] FOREIGN KEY([Payment_Type])
REFERENCES [dbo].[Payment_Type] ([Id_Payment_Type])
GO
ALTER TABLE [dbo].[Event_Attendance] CHECK CONSTRAINT [FK_Event_Attendance_Payment_Type]
GO
ALTER TABLE [dbo].[Event_Attendance_Payment]  WITH CHECK ADD  CONSTRAINT [FK__Event_Att__Id_Ev__66603565] FOREIGN KEY([Id_Event_Attendance])
REFERENCES [dbo].[Event_Attendance] ([Id_Event_Attendance])
GO
ALTER TABLE [dbo].[Event_Attendance_Payment] CHECK CONSTRAINT [FK__Event_Att__Id_Ev__66603565]
GO
ALTER TABLE [dbo].[Event_Fee_Type]  WITH CHECK ADD  CONSTRAINT [FK_Event_Fee_Chapter] FOREIGN KEY([Id_Chapter])
REFERENCES [dbo].[Chapter] ([Id_Chapter])
GO
ALTER TABLE [dbo].[Event_Fee_Type] CHECK CONSTRAINT [FK_Event_Fee_Chapter]
GO
ALTER TABLE [dbo].[Event_Template]  WITH CHECK ADD  CONSTRAINT [FK_Event_Template_Chapter] FOREIGN KEY([Id_Chapter])
REFERENCES [dbo].[Chapter] ([Id_Chapter])
GO
ALTER TABLE [dbo].[Event_Template] CHECK CONSTRAINT [FK_Event_Template_Chapter]
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Chapter] FOREIGN KEY([Id_Chapter])
REFERENCES [dbo].[Chapter] ([Id_Chapter])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_Invoice_Chapter]
GO
ALTER TABLE [dbo].[Membership_Payment_Fee]  WITH CHECK ADD  CONSTRAINT [FK__Payment_F__Id_Fe__6B24EA82] FOREIGN KEY([Id_Membership_Fee])
REFERENCES [dbo].[Suscription_Fee] ([Id_Suscription_Fee])
GO
ALTER TABLE [dbo].[Membership_Payment_Fee] CHECK CONSTRAINT [FK__Payment_F__Id_Fe__6B24EA82]
GO
ALTER TABLE [dbo].[Payment_Type]  WITH CHECK ADD  CONSTRAINT [FK_Payment_Type_Chapter] FOREIGN KEY([Id_Chapter])
REFERENCES [dbo].[Chapter] ([Id_Chapter])
GO
ALTER TABLE [dbo].[Payment_Type] CHECK CONSTRAINT [FK_Payment_Type_Chapter]
GO
ALTER TABLE [dbo].[Person]  WITH CHECK ADD  CONSTRAINT [FK__Person__Id_Chapt__6C190EBB] FOREIGN KEY([Id_Chapter])
REFERENCES [dbo].[Chapter] ([Id_Chapter])
GO
ALTER TABLE [dbo].[Person] CHECK CONSTRAINT [FK__Person__Id_Chapt__6C190EBB]
GO
ALTER TABLE [dbo].[Person]  WITH CHECK ADD  CONSTRAINT [FK_Person_Membership_Type] FOREIGN KEY([Id_Membership_Type])
REFERENCES [dbo].[Membership_Type] ([Id_Membership])
GO
ALTER TABLE [dbo].[Person] CHECK CONSTRAINT [FK_Person_Membership_Type]
GO
ALTER TABLE [dbo].[Person]  WITH CHECK ADD  CONSTRAINT [FK_Person_Person] FOREIGN KEY([Godfather])
REFERENCES [dbo].[Person] ([Id_Person])
GO
ALTER TABLE [dbo].[Person] CHECK CONSTRAINT [FK_Person_Person]
GO
ALTER TABLE [dbo].[Province]  WITH CHECK ADD FOREIGN KEY([Id_Country])
REFERENCES [dbo].[Country] ([Id_Country])
GO
ALTER TABLE [dbo].[Province]  WITH CHECK ADD FOREIGN KEY([Id_Country])
REFERENCES [dbo].[Country] ([Id_Country])
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Chapter] FOREIGN KEY([Id_Chapter])
REFERENCES [dbo].[Chapter] ([Id_Chapter])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Chapter]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Event_Attendance] FOREIGN KEY([Id_Event_Attendance])
REFERENCES [dbo].[Event_Attendance] ([Id_Event_Attendance])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Event_Attendance]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Event_Fee_Type] FOREIGN KEY([Id_Event_Fee_Type])
REFERENCES [dbo].[Event_Fee_Type] ([Id_Event_Fee])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Event_Fee_Type]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Invoice] FOREIGN KEY([Id_Invoice])
REFERENCES [dbo].[Invoice] ([Id_Invoice])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Invoice]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Person] FOREIGN KEY([Id_Person])
REFERENCES [dbo].[Person] ([Id_Person])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Person]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD FOREIGN KEY([Id_Role])
REFERENCES [dbo].[Rol] ([Id_Rol])
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD FOREIGN KEY([Id_Role])
REFERENCES [dbo].[Rol] ([Id_Rol])
GO
ALTER TABLE [dbo].[Work_Session]  WITH CHECK ADD  CONSTRAINT [FK__Work_Sess__Id_Ch__71D1E811] FOREIGN KEY([Id_Chapter])
REFERENCES [dbo].[Chapter] ([Id_Chapter])
GO
ALTER TABLE [dbo].[Work_Session] CHECK CONSTRAINT [FK__Work_Sess__Id_Ch__71D1E811]
GO
ALTER TABLE [dbo].[Work_Session_Attendance]  WITH CHECK ADD  CONSTRAINT [FK__Work_Sess__Id_Pe__73BA3083] FOREIGN KEY([Id_Person])
REFERENCES [dbo].[Person] ([Id_Person])
GO
ALTER TABLE [dbo].[Work_Session_Attendance] CHECK CONSTRAINT [FK__Work_Sess__Id_Pe__73BA3083]
GO
ALTER TABLE [dbo].[Work_Session_Attendance]  WITH CHECK ADD FOREIGN KEY([Id_Work_Session_Fee])
REFERENCES [dbo].[Work_Session_Fee] ([Id_Work_Session_Fee])
GO
ALTER TABLE [dbo].[Work_Session_Attendance]  WITH CHECK ADD  CONSTRAINT [FK__Work_Sess__Id_Wo__74AE54BC] FOREIGN KEY([Id_Work_Session])
REFERENCES [dbo].[Work_Session] ([Id_Work_Session])
GO
ALTER TABLE [dbo].[Work_Session_Attendance] CHECK CONSTRAINT [FK__Work_Sess__Id_Wo__74AE54BC]
GO
ALTER TABLE [dbo].[Work_Session_Attendance]  WITH CHECK ADD FOREIGN KEY([Id_Work_Session_Fee])
REFERENCES [dbo].[Work_Session_Fee] ([Id_Work_Session_Fee])
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del Evento' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'Id_Event'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del capitulo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'Id_Chapter'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha que se registra el evento' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Direccion donde se lleva a cabo el evento ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cantidad de platos minimos para el evento' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'Minimum_Dishes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Saldo que se trae del evento anterior' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'Previous_Balance'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Monto que se recaudo de los asistentes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'Amount_Attendance'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Monto Recaudado en Ofrendas' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'Amount_Offering'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Monto Recaudado en ofrendas especiales' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'Amount_Special_Offering'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Monto de creidto otorgado ese dia a personas' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'Credit_Amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total de la suma de todos los ingresos contando la suma de creditos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'Total_Amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cantidad que se pago para cubrir costos del evento' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'Payment_Discharge'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Saldo  obtenido de la resta entre el total y lo que se pago ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event', @level2type=N'COLUMN',@level2name=N'Current_Balance'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cantidad pendiente por pagar ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Event_Attendance_Payment', @level2type=N'COLUMN',@level2name=N'Pending'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id de la membresia para uso exclusivo de la base de datos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Membership_old', @level2type=N'COLUMN',@level2name=N'Id_Membership'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID unico generado  al momento de volverse miembro' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Membership_old', @level2type=N'COLUMN',@level2name=N'Id_Membership_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id unico al registro de la persona en la tabla "Person"' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Membership_old', @level2type=N'COLUMN',@level2name=N'Id_Person'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Numero de la membresia fisica' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Membership_old', @level2type=N'COLUMN',@level2name=N'Membership_Number'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Para saber si la membresia esta vigente o vencida' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Membership_old', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador para saber a que membresia se abono' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Membership_Payment_Fee', @level2type=N'COLUMN',@level2name=N'Id_Membership_Fee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cantidad que se pago o abono ese dia para el pago de la membresia' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Membership_Payment_Fee', @level2type=N'COLUMN',@level2name=N'Amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registro de la fecha que fue efectuado el pago ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Membership_Payment_Fee', @level2type=N'COLUMN',@level2name=N'Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A la hora que realizen un pago tener un registro de la fecha en que se pago y el monto a abonar' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Membership_Payment_Fee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id unico al mometo de obtener cualquier tipo de membresia' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Membership_Type', @level2type=N'COLUMN',@level2name=N'Id_Membership'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estado para saber si la membresia es de tipo "Vitalisia" o "Anual"' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Membership_Type', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'El costo que tendra la membresia dependiendo el tipo que sea ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Membership_Type', @level2type=N'COLUMN',@level2name=N'Cost'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Guarda el registro del tipo de membresias que hay "Vitalisia" o "Anual"' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Membership_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del tipo de membresia, Null para personas que nunca han sido miembros' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Person', @level2type=N'COLUMN',@level2name=N'Id_Membership_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id con el que se asocia el estado de cuenta de una membresia' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suscription_Fee', @level2type=N'COLUMN',@level2name=N'Id_Suscription_Fee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Monto que ha abonado a la membresia' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suscription_Fee', @level2type=N'COLUMN',@level2name=N'Amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Monto pendiente que aun debe pagar' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suscription_Fee', @level2type=N'COLUMN',@level2name=N'Pending_Amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estado para saber si la membresia es "Vigente" o "Vencida"' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suscription_Fee', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llevar un control de saldos por si la membresia esta siendo pagada por pagos parciales' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suscription_Fee'
GO
USE [master]
GO
ALTER DATABASE [Retranca_Analisis] SET  READ_WRITE 
GO
