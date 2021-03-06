USE [master]
GO
/****** Object:  Database [Bank Transactions]    Script Date: 4/11/2018 6:40:12 PM ******/
CREATE DATABASE [Bank Transactions]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Bank Transactions', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Bank Transactions.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Bank Transactions_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Bank Transactions_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Bank Transactions] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Bank Transactions].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Bank Transactions] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Bank Transactions] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Bank Transactions] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Bank Transactions] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Bank Transactions] SET ARITHABORT OFF 
GO
ALTER DATABASE [Bank Transactions] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Bank Transactions] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Bank Transactions] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Bank Transactions] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Bank Transactions] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Bank Transactions] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Bank Transactions] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Bank Transactions] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Bank Transactions] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Bank Transactions] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Bank Transactions] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Bank Transactions] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Bank Transactions] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Bank Transactions] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Bank Transactions] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Bank Transactions] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Bank Transactions] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Bank Transactions] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Bank Transactions] SET  MULTI_USER 
GO
ALTER DATABASE [Bank Transactions] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Bank Transactions] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Bank Transactions] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Bank Transactions] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Bank Transactions] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Bank Transactions] SET QUERY_STORE = OFF
GO
USE [Bank Transactions]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Bank Transactions]
GO
/****** Object:  Table [dbo].[Transactions]    Script Date: 4/11/2018 6:40:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transactions](
	[id] [int] NOT NULL,
	[Timestamp] [datetime] NULL,
	[Action] [varchar](50) NULL,
	[AccountNumber] [int] NULL,
	[AccountChanged] [money] NULL,
	[newAmount] [money] NULL,
 CONSTRAINT [PK_Transactions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTransactions]    Script Date: 4/11/2018 6:40:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTransactions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Timestamp] [datetime] NULL,
	[Action] [varchar](50) NULL,
	[AccountNumber] [int] NULL,
	[AmountChanged] [int] NULL,
	[newAmount] [int] NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Bank Transactions] SET  READ_WRITE 
GO
