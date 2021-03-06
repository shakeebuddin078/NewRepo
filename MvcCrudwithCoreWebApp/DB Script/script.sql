USE [master]
GO
/****** Object:  Database [EmployeeMVC]    Script Date: 28-08-2020 17:10:40 ******/
CREATE DATABASE [EmployeeMVC]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EmployeeMVC', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\EmployeeMVC.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EmployeeMVC_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\EmployeeMVC_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [EmployeeMVC] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EmployeeMVC].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EmployeeMVC] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EmployeeMVC] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EmployeeMVC] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EmployeeMVC] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EmployeeMVC] SET ARITHABORT OFF 
GO
ALTER DATABASE [EmployeeMVC] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EmployeeMVC] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EmployeeMVC] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EmployeeMVC] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EmployeeMVC] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EmployeeMVC] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EmployeeMVC] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EmployeeMVC] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EmployeeMVC] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EmployeeMVC] SET  ENABLE_BROKER 
GO
ALTER DATABASE [EmployeeMVC] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EmployeeMVC] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EmployeeMVC] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EmployeeMVC] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EmployeeMVC] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EmployeeMVC] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [EmployeeMVC] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EmployeeMVC] SET RECOVERY FULL 
GO
ALTER DATABASE [EmployeeMVC] SET  MULTI_USER 
GO
ALTER DATABASE [EmployeeMVC] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EmployeeMVC] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EmployeeMVC] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EmployeeMVC] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EmployeeMVC] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'EmployeeMVC', N'ON'
GO
ALTER DATABASE [EmployeeMVC] SET QUERY_STORE = OFF
GO
USE [EmployeeMVC]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 28-08-2020 17:10:43 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 28-08-2020 17:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [varchar](50) NOT NULL,
	[EmpCode] [varchar](50) NULL,
	[Position] [varchar](50) NULL,
	[OfficeLocation] [varchar](50) NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200828053037_InitialCreate', N'3.1.7')
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([EmployeeId], [FullName], [EmpCode], [Position], [OfficeLocation]) VALUES (1, N'M B Shakeebuddin', N'SHK', N'Sr. Developer', N'Hyderabad')
INSERT [dbo].[Employees] ([EmployeeId], [FullName], [EmpCode], [Position], [OfficeLocation]) VALUES (2, N'B Vidya Sagar', N'SXP', N'Developer', N'Hyderabad')
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
USE [master]
GO
ALTER DATABASE [EmployeeMVC] SET  READ_WRITE 
GO
