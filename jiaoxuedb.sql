USE [master]
GO
/****** Object:  Database [jiaoxuedb]    Script Date: 2017/4/7 22:29:45 ******/
CREATE DATABASE [jiaoxuedb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'jiaoxuedb', FILENAME = N'C:\DATA\jiaoxuedb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'jiaoxuedb_log', FILENAME = N'C:\DATA\jiaoxuedb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [jiaoxuedb] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [jiaoxuedb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [jiaoxuedb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [jiaoxuedb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [jiaoxuedb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [jiaoxuedb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [jiaoxuedb] SET ARITHABORT OFF 
GO
ALTER DATABASE [jiaoxuedb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [jiaoxuedb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [jiaoxuedb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [jiaoxuedb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [jiaoxuedb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [jiaoxuedb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [jiaoxuedb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [jiaoxuedb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [jiaoxuedb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [jiaoxuedb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [jiaoxuedb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [jiaoxuedb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [jiaoxuedb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [jiaoxuedb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [jiaoxuedb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [jiaoxuedb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [jiaoxuedb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [jiaoxuedb] SET RECOVERY FULL 
GO
ALTER DATABASE [jiaoxuedb] SET  MULTI_USER 
GO
ALTER DATABASE [jiaoxuedb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [jiaoxuedb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [jiaoxuedb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [jiaoxuedb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [jiaoxuedb] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'jiaoxuedb', N'ON'
GO
ALTER DATABASE [jiaoxuedb] SET QUERY_STORE = OFF
GO
USE [jiaoxuedb]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [jiaoxuedb]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 2017/4/7 22:29:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[Cno] [char](5) NOT NULL,
	[Cname] [char](20) NOT NULL,
	[Chour] [tinyint] NULL,
	[Ccredit] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[Cno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SC]    Script Date: 2017/4/7 22:29:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SC](
	[Sno] [char](10) NOT NULL,
	[Cno] [char](5) NOT NULL,
	[Score] [int] NULL,
 CONSTRAINT [PK_SC] PRIMARY KEY CLUSTERED 
(
	[Sno] ASC,
	[Cno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Student]    Script Date: 2017/4/7 22:29:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Sno] [char](6) NOT NULL,
	[Sname] [char](8) NOT NULL,
	[Sex] [char](2) NULL,
	[Age] [tinyint] NULL,
	[Dept] [char](10) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Sno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TC]    Script Date: 2017/4/7 22:29:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TC](
	[Tno] [char](6) NOT NULL,
	[Cno] [char](5) NOT NULL,
 CONSTRAINT [PK_TC] PRIMARY KEY CLUSTERED 
(
	[Tno] ASC,
	[Cno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 2017/4/7 22:29:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[Tno] [char](6) NOT NULL,
	[Tname] [char](8) NOT NULL,
	[Sex] [char](2) NULL,
	[Age] [tinyint] NULL,
	[Prof] [char](10) NULL,
	[Sal] [smallint] NULL,
	[Comm] [smallint] NULL,
	[Dept] [char](10) NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[Tno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Course] ([Cno], [Cname], [Chour], [Ccredit]) VALUES (N'01001', N'计算机基础          ', 60, CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[Course] ([Cno], [Cname], [Chour], [Ccredit]) VALUES (N'01002', N'程序设计            ', 80, CAST(5.00 AS Decimal(18, 2)))
INSERT [dbo].[Course] ([Cno], [Cname], [Chour], [Ccredit]) VALUES (N'01003', N'微机原理            ', 60, CAST(8.00 AS Decimal(18, 2)))
INSERT [dbo].[Course] ([Cno], [Cname], [Chour], [Ccredit]) VALUES (N'02001', N'数据库              ', 80, CAST(6.00 AS Decimal(18, 2)))
INSERT [dbo].[Course] ([Cno], [Cname], [Chour], [Ccredit]) VALUES (N'02002', N'计算机网络          ', 60, CAST(6.00 AS Decimal(18, 2)))
INSERT [dbo].[Course] ([Cno], [Cname], [Chour], [Ccredit]) VALUES (N'02003', N'数据结构            ', 60, CAST(6.00 AS Decimal(18, 2)))
INSERT [dbo].[Course] ([Cno], [Cname], [Chour], [Ccredit]) VALUES (N'02004', N'操作系统            ', 60, CAST(6.00 AS Decimal(18, 2)))
INSERT [dbo].[Course] ([Cno], [Cname], [Chour], [Ccredit]) VALUES (N'03001', N'软件工程            ', 60, CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[Course] ([Cno], [Cname], [Chour], [Ccredit]) VALUES (N'03002', N'大型数据库          ', 48, CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[Course] ([Cno], [Cname], [Chour], [Ccredit]) VALUES (N'03003', N'图像处理            ', 48, CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[SC] ([Sno], [Cno], [Score]) VALUES (N'001201    ', N'01002', 64)
INSERT [dbo].[SC] ([Sno], [Cno], [Score]) VALUES (N'991101    ', N'01001', 88)
INSERT [dbo].[SC] ([Sno], [Cno], [Score]) VALUES (N'991101    ', N'01002', 90)
INSERT [dbo].[SC] ([Sno], [Cno], [Score]) VALUES (N'991102    ', N'01001', 93)
INSERT [dbo].[SC] ([Sno], [Cno], [Score]) VALUES (N'991102    ', N'01002', 98)
INSERT [dbo].[SC] ([Sno], [Cno], [Score]) VALUES (N'991103    ', N'01001', 90)
INSERT [dbo].[SC] ([Sno], [Cno], [Score]) VALUES (N'991103    ', N'01002', 74)
INSERT [dbo].[SC] ([Sno], [Cno], [Score]) VALUES (N'991104    ', N'01001', 35)
INSERT [dbo].[SC] ([Sno], [Cno], [Score]) VALUES (N'991104    ', N'01002', 85)
INSERT [dbo].[SC] ([Sno], [Cno], [Score]) VALUES (N'991104    ', N'02001', 33)
INSERT [dbo].[SC] ([Sno], [Cno], [Score]) VALUES (N'991201    ', N'01001', 76)
INSERT [dbo].[Student] ([Sno], [Sname], [Sex], [Age], [Dept]) VALUES (N'001101', N'宋大方  ', N'男', 19, N'计算机    ')
INSERT [dbo].[Student] ([Sno], [Sname], [Sex], [Age], [Dept]) VALUES (N'001102', N'许辉    ', N'女', 22, N'计算机    ')
INSERT [dbo].[Student] ([Sno], [Sname], [Sex], [Age], [Dept]) VALUES (N'001201', N'王一山  ', N'男', 20, N'计算机    ')
INSERT [dbo].[Student] ([Sno], [Sname], [Sex], [Age], [Dept]) VALUES (N'001202', N'牛莉    ', N'女', 19, N'计算机    ')
INSERT [dbo].[Student] ([Sno], [Sname], [Sex], [Age], [Dept]) VALUES (N'002101', N'李丽丽  ', N'女', 19, N'信息      ')
INSERT [dbo].[Student] ([Sno], [Sname], [Sex], [Age], [Dept]) VALUES (N'002102', N'李王    ', N'男', 20, N'信息      ')
INSERT [dbo].[Student] ([Sno], [Sname], [Sex], [Age], [Dept]) VALUES (N'991101', N'张彬    ', N'男', 18, N'计算机    ')
INSERT [dbo].[Student] ([Sno], [Sname], [Sex], [Age], [Dept]) VALUES (N'991102', N'王蕾    ', N'女', 19, N'计算机    ')
INSERT [dbo].[Student] ([Sno], [Sname], [Sex], [Age], [Dept]) VALUES (N'991103', N'张建国  ', N'男', 18, N'计算机    ')
INSERT [dbo].[Student] ([Sno], [Sname], [Sex], [Age], [Dept]) VALUES (N'991104', N'李平方  ', N'男', 18, N'计算机    ')
INSERT [dbo].[Student] ([Sno], [Sname], [Sex], [Age], [Dept]) VALUES (N'991201', N'陈东辉  ', N'男', 19, N'计算机    ')
INSERT [dbo].[Student] ([Sno], [Sname], [Sex], [Age], [Dept]) VALUES (N'991202', N'葛鹏    ', N'男', 21, N'计算机    ')
INSERT [dbo].[Student] ([Sno], [Sname], [Sex], [Age], [Dept]) VALUES (N'991203', N'潘桃芝  ', N'女', 19, N'计算机    ')
INSERT [dbo].[Student] ([Sno], [Sname], [Sex], [Age], [Dept]) VALUES (N'991204', N'姚一峰  ', N'男', 18, N'计算机    ')
INSERT [dbo].[TC] ([Tno], [Cno]) VALUES (N'000001', N'01001')
INSERT [dbo].[TC] ([Tno], [Cno]) VALUES (N'000001', N'02001')
INSERT [dbo].[TC] ([Tno], [Cno]) VALUES (N'000002', N'01002')
INSERT [dbo].[TC] ([Tno], [Cno]) VALUES (N'000002', N'01003')
INSERT [dbo].[TC] ([Tno], [Cno]) VALUES (N'000003', N'01003')
INSERT [dbo].[TC] ([Tno], [Cno]) VALUES (N'000003', N'02001')
INSERT [dbo].[TC] ([Tno], [Cno]) VALUES (N'000004', N'02002')
INSERT [dbo].[TC] ([Tno], [Cno]) VALUES (N'000005', N'01001')
INSERT [dbo].[TC] ([Tno], [Cno]) VALUES (N'000006', N'01002')
INSERT [dbo].[TC] ([Tno], [Cno]) VALUES (N'000008', N'02002')
INSERT [dbo].[TC] ([Tno], [Cno]) VALUES (N'000011', N'02003')
INSERT [dbo].[Teacher] ([Tno], [Tname], [Sex], [Age], [Prof], [Sal], [Comm], [Dept]) VALUES (N'00001 ', N'李英    ', N'女', 39, N'副教授    ', 1500, 2000, N'信息      ')
INSERT [dbo].[Teacher] ([Tno], [Tname], [Sex], [Age], [Prof], [Sal], [Comm], [Dept]) VALUES (N'00002 ', N'张雪    ', N'女', 51, N'教授      ', 1900, 3000, N'信息      ')
INSERT [dbo].[Teacher] ([Tno], [Tname], [Sex], [Age], [Prof], [Sal], [Comm], [Dept]) VALUES (N'00003 ', N'张朋    ', N'男', 30, N'讲师      ', 1000, 1200, N'计算机    ')
INSERT [dbo].[Teacher] ([Tno], [Tname], [Sex], [Age], [Prof], [Sal], [Comm], [Dept]) VALUES (N'00004 ', N'王平    ', N'女', 28, N'讲师      ', 850, 1200, N'信息      ')
INSERT [dbo].[Teacher] ([Tno], [Tname], [Sex], [Age], [Prof], [Sal], [Comm], [Dept]) VALUES (N'00005 ', N'李力    ', N'男', 47, N'教授      ', 1800, 3000, N'计算机    ')
INSERT [dbo].[Teacher] ([Tno], [Tname], [Sex], [Age], [Prof], [Sal], [Comm], [Dept]) VALUES (N'00006 ', N'许红霞  ', N'女', 39, N'讲师      ', 1100, 1200, N'计算机    ')
INSERT [dbo].[Teacher] ([Tno], [Tname], [Sex], [Age], [Prof], [Sal], [Comm], [Dept]) VALUES (N'00007 ', N'许永军  ', N'男', 57, N'教授      ', 2000, 3000, N'计算机    ')
INSERT [dbo].[Teacher] ([Tno], [Tname], [Sex], [Age], [Prof], [Sal], [Comm], [Dept]) VALUES (N'00008 ', N'李桂香  ', N'女', 65, N'教授      ', 2000, 3000, N'计算机    ')
INSERT [dbo].[Teacher] ([Tno], [Tname], [Sex], [Age], [Prof], [Sal], [Comm], [Dept]) VALUES (N'00009 ', N'王一凡  ', N'女', 43, N'讲师      ', 1200, 1200, N'计算机    ')
INSERT [dbo].[Teacher] ([Tno], [Tname], [Sex], [Age], [Prof], [Sal], [Comm], [Dept]) VALUES (N'00010 ', N'田峰    ', N'男', 33, N'助教      ', 500, 800, N'信息      ')
/****** Object:  StoredProcedure [dbo].[Pro_C]    Script Date: 2017/4/7 22:29:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Pro_C] @C_cursor CURSOR VARYING OUTPUT
AS 
  SET @C_cursor=CURSOR
  FOR 
     SELECT Sname,Score FROM Student,SC,Course
	 WHERE Student.Sno=SC.Sno and SC.Cno=Course.Cno
	     and Course.Cname='数据库'
	OPEN @C_cursor
GO
USE [master]
GO
ALTER DATABASE [jiaoxuedb] SET  READ_WRITE 
GO
