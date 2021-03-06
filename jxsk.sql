USE [master]
GO
/****** Object:  Database [jxsk]    Script Date: 04/07/2017 11:40:59 ******/
CREATE DATABASE [jxsk] ON  PRIMARY 
( NAME = N'jxsk', FILENAME = N'C:\DATA\jxsk.mdf' , SIZE = 3072KB , MAXSIZE = 102400KB , FILEGROWTH = 4096KB )
 LOG ON 
( NAME = N'jxsk_log', FILENAME = N'C:\DATA\jxsk_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [jxsk] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [jxsk].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [jxsk] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [jxsk] SET ANSI_NULLS OFF
GO
ALTER DATABASE [jxsk] SET ANSI_PADDING OFF
GO
ALTER DATABASE [jxsk] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [jxsk] SET ARITHABORT OFF
GO
ALTER DATABASE [jxsk] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [jxsk] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [jxsk] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [jxsk] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [jxsk] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [jxsk] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [jxsk] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [jxsk] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [jxsk] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [jxsk] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [jxsk] SET  DISABLE_BROKER
GO
ALTER DATABASE [jxsk] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [jxsk] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [jxsk] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [jxsk] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [jxsk] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [jxsk] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [jxsk] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [jxsk] SET  READ_WRITE
GO
ALTER DATABASE [jxsk] SET RECOVERY FULL
GO
ALTER DATABASE [jxsk] SET  MULTI_USER
GO
ALTER DATABASE [jxsk] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [jxsk] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'jxsk', N'ON'
GO
USE [jxsk]
GO
/****** Object:  Table [dbo].[test2]    Script Date: 04/07/2017 11:41:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[test2](
	[TN] [nchar](8) NOT NULL,
	[SEX] [nchar](2) NULL,
	[AGE] [tinyint] NULL,
	[PROF] [nchar](10) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[test2] ([TN], [SEX], [AGE], [PROF]) VALUES (N'刘伟      ', N'男 ', 30, N'讲师        ')
INSERT [dbo].[test2] ([TN], [SEX], [AGE], [PROF]) VALUES (N'李力      ', N'男 ', 47, N'教授        ')
/****** Object:  Table [dbo].[test1]    Script Date: 04/07/2017 11:41:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[test1](
	[SNO] [nchar](2) NOT NULL,
	[SN] [nchar](8) NOT NULL,
	[SEX] [nchar](2) NULL,
	[AGE] [tinyint] NULL,
	[DEPT] [nchar](10) NULL,
	[NATIVE] [char](16) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[test1] ([SNO], [SN], [SEX], [AGE], [DEPT], [NATIVE]) VALUES (N'S1', N'赵亦      ', N'女 ', 17, N'计算机       ', N'NULL            ')
INSERT [dbo].[test1] ([SNO], [SN], [SEX], [AGE], [DEPT], [NATIVE]) VALUES (N'S2', N'钱尔      ', N'男 ', 18, N'信息        ', N'NULL            ')
INSERT [dbo].[test1] ([SNO], [SN], [SEX], [AGE], [DEPT], [NATIVE]) VALUES (N'S3', N'张晓明     ', N'男 ', 18, N'信息        ', N'NULL            ')
INSERT [dbo].[test1] ([SNO], [SN], [SEX], [AGE], [DEPT], [NATIVE]) VALUES (N'S4', N'李思      ', N'男 ', 21, N'自动化       ', N'NULL            ')
INSERT [dbo].[test1] ([SNO], [SN], [SEX], [AGE], [DEPT], [NATIVE]) VALUES (N'S5', N'周武      ', N'男 ', 19, N'信息        ', N'NULL            ')
INSERT [dbo].[test1] ([SNO], [SN], [SEX], [AGE], [DEPT], [NATIVE]) VALUES (N'S6', N'吴丽      ', N'女 ', 20, N'自动化       ', N'NULL            ')
INSERT [dbo].[test1] ([SNO], [SN], [SEX], [AGE], [DEPT], [NATIVE]) VALUES (N'S7', N'范思萌     ', N'女 ', 18, N'信息        ', N'NULL            ')
INSERT [dbo].[test1] ([SNO], [SN], [SEX], [AGE], [DEPT], [NATIVE]) VALUES (N'S8', N'孙姗      ', N'女 ', 20, N'信息        ', N'NULL            ')
INSERT [dbo].[test1] ([SNO], [SN], [SEX], [AGE], [DEPT], [NATIVE]) VALUES (N'S9', N'张海涛     ', N'男 ', 19, N'信息        ', N'NULL            ')
INSERT [dbo].[test1] ([SNO], [SN], [SEX], [AGE], [DEPT], [NATIVE]) VALUES (N'S0', N'王青山     ', N'男 ', 19, N'计算机       ', N'NULL            ')
/****** Object:  Table [dbo].[TEST_SC]    Script Date: 04/07/2017 11:41:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEST_SC](
	[SNO] [nchar](2) NOT NULL,
	[CNO] [nchar](10) NOT NULL,
	[SCORE] [tinyint] NULL,
 CONSTRAINT [PK_TEST_SC] PRIMARY KEY CLUSTERED 
(
	[SNO] ASC,
	[CNO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TC]    Script Date: 04/07/2017 11:41:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TC](
	[TNO] [nchar](2) NOT NULL,
	[CNO] [nchar](2) NOT NULL,
	[Evaluation] [nchar](20) NULL,
 CONSTRAINT [PK_TC] PRIMARY KEY CLUSTERED 
(
	[TNO] ASC,
	[CNO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[TC] ([TNO], [CNO], [Evaluation]) VALUES (N'T1', N'C1', NULL)
INSERT [dbo].[TC] ([TNO], [CNO], [Evaluation]) VALUES (N'T1', N'C4', NULL)
INSERT [dbo].[TC] ([TNO], [CNO], [Evaluation]) VALUES (N'T2', N'C5', NULL)
INSERT [dbo].[TC] ([TNO], [CNO], [Evaluation]) VALUES (N'T3', N'C1', NULL)
INSERT [dbo].[TC] ([TNO], [CNO], [Evaluation]) VALUES (N'T3', N'C5', NULL)
INSERT [dbo].[TC] ([TNO], [CNO], [Evaluation]) VALUES (N'T4', N'C2', NULL)
INSERT [dbo].[TC] ([TNO], [CNO], [Evaluation]) VALUES (N'T4', N'C3', NULL)
INSERT [dbo].[TC] ([TNO], [CNO], [Evaluation]) VALUES (N'T5', N'C5', NULL)
INSERT [dbo].[TC] ([TNO], [CNO], [Evaluation]) VALUES (N'T5', N'C7', NULL)
/****** Object:  Table [dbo].[T]    Script Date: 04/07/2017 11:41:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T](
	[TNO] [nchar](2) NOT NULL,
	[TN] [nchar](8) NULL,
	[SEX] [nchar](2) NULL,
	[AGE] [tinyint] NULL,
	[PROF] [nchar](10) NULL,
	[SAL] [smallint] NULL,
	[COMM] [smallint] NULL,
	[DEPT] [nchar](10) NULL,
 CONSTRAINT [PK_TNO] PRIMARY KEY CLUSTERED 
(
	[TNO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[T] ([TNO], [TN], [SEX], [AGE], [PROF], [SAL], [COMM], [DEPT]) VALUES (N'T1', N'李力      ', N'男 ', 47, N'教授        ', 1800, 3000, N'计算机       ')
INSERT [dbo].[T] ([TNO], [TN], [SEX], [AGE], [PROF], [SAL], [COMM], [DEPT]) VALUES (N'T2', N'王平      ', N'女 ', 28, N'讲师        ', 900, 1200, N'信息        ')
INSERT [dbo].[T] ([TNO], [TN], [SEX], [AGE], [PROF], [SAL], [COMM], [DEPT]) VALUES (N'T3', N'刘伟      ', N'男 ', 30, N'讲师        ', 1000, 1200, N'计算机       ')
INSERT [dbo].[T] ([TNO], [TN], [SEX], [AGE], [PROF], [SAL], [COMM], [DEPT]) VALUES (N'T4', N'张雪      ', N'女 ', 51, N'教授        ', 2200, 3000, N'自动化       ')
INSERT [dbo].[T] ([TNO], [TN], [SEX], [AGE], [PROF], [SAL], [COMM], [DEPT]) VALUES (N'T5', N'张兰      ', N'女 ', 39, N'副教授       ', 1500, 2000, N'信息        ')
/****** Object:  Table [dbo].[SC]    Script Date: 04/07/2017 11:41:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SC](
	[SNO] [char](2) NOT NULL,
	[CNO] [char](2) NOT NULL,
	[SCORE] [tinyint] NULL,
 CONSTRAINT [PK_SC] PRIMARY KEY CLUSTERED 
(
	[SNO] ASC,
	[CNO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[SC] ([SNO], [CNO], [SCORE]) VALUES (N'S1', N'C1', 90)
INSERT [dbo].[SC] ([SNO], [CNO], [SCORE]) VALUES (N'S1', N'C2', 85)
INSERT [dbo].[SC] ([SNO], [CNO], [SCORE]) VALUES (N'S2', N'C5', 67)
INSERT [dbo].[SC] ([SNO], [CNO], [SCORE]) VALUES (N'S2', N'C6', 80)
INSERT [dbo].[SC] ([SNO], [CNO], [SCORE]) VALUES (N'S2', N'C7', NULL)
INSERT [dbo].[SC] ([SNO], [CNO], [SCORE]) VALUES (N'S3', N'C1', 75)
INSERT [dbo].[SC] ([SNO], [CNO], [SCORE]) VALUES (N'S3', N'C2', 70)
INSERT [dbo].[SC] ([SNO], [CNO], [SCORE]) VALUES (N'S3', N'C4', 85)
INSERT [dbo].[SC] ([SNO], [CNO], [SCORE]) VALUES (N'S4', N'C1', 93)
INSERT [dbo].[SC] ([SNO], [CNO], [SCORE]) VALUES (N'S4', N'C2', 85)
INSERT [dbo].[SC] ([SNO], [CNO], [SCORE]) VALUES (N'S4', N'C3', 83)
INSERT [dbo].[SC] ([SNO], [CNO], [SCORE]) VALUES (N'S5', N'C2', 89)
/****** Object:  Table [dbo].[S]    Script Date: 04/07/2017 11:41:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[S](
	[SNO] [nchar](2) NOT NULL,
	[SN] [nchar](8) NOT NULL,
	[SEX] [nchar](2) NULL,
	[AGE] [tinyint] NULL,
	[DEPT] [nchar](10) NULL,
	[NATIVE] [char](16) NULL,
 CONSTRAINT [PK_S] PRIMARY KEY CLUSTERED 
(
	[SNO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[S] ([SNO], [SN], [SEX], [AGE], [DEPT], [NATIVE]) VALUES (N'S0', N'王青山     ', N'男 ', 19, N'计算机       ', N'NULL            ')
INSERT [dbo].[S] ([SNO], [SN], [SEX], [AGE], [DEPT], [NATIVE]) VALUES (N'S2', N'钱尔      ', N'男 ', 18, N'信息        ', N'NULL            ')
INSERT [dbo].[S] ([SNO], [SN], [SEX], [AGE], [DEPT], [NATIVE]) VALUES (N'S3', N'张晓明     ', N'男 ', 18, N'信息        ', N'NULL            ')
INSERT [dbo].[S] ([SNO], [SN], [SEX], [AGE], [DEPT], [NATIVE]) VALUES (N'S4', N'李思      ', N'男 ', 21, N'自动化       ', N'NULL            ')
INSERT [dbo].[S] ([SNO], [SN], [SEX], [AGE], [DEPT], [NATIVE]) VALUES (N'S5', N'周武      ', N'男 ', 19, N'计算机       ', NULL)
INSERT [dbo].[S] ([SNO], [SN], [SEX], [AGE], [DEPT], [NATIVE]) VALUES (N'S6', N'吴丽      ', N'女 ', 20, N'自动化       ', N'NULL            ')
INSERT [dbo].[S] ([SNO], [SN], [SEX], [AGE], [DEPT], [NATIVE]) VALUES (N'S7', N'范思萌     ', N'女 ', 18, N'信息        ', N'NULL            ')
INSERT [dbo].[S] ([SNO], [SN], [SEX], [AGE], [DEPT], [NATIVE]) VALUES (N'S8', N'孙姗      ', N'女 ', 20, N'信息        ', N'NULL            ')
INSERT [dbo].[S] ([SNO], [SN], [SEX], [AGE], [DEPT], [NATIVE]) VALUES (N'S9', N'张海涛     ', N'男 ', 19, N'信息        ', N'NULL            ')
/****** Object:  Table [dbo].[C]    Script Date: 04/07/2017 11:41:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[C](
	[CNO] [char](2) NOT NULL,
	[CN] [char](10) NOT NULL,
	[CT] [tinyint] NULL,
 CONSTRAINT [PK_C] PRIMARY KEY CLUSTERED 
(
	[CNO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[C] ([CNO], [CN], [CT]) VALUES (N'C1', N'程序设计  ', 60)
INSERT [dbo].[C] ([CNO], [CN], [CT]) VALUES (N'C2', N'微机原理  ', 80)
INSERT [dbo].[C] ([CNO], [CN], [CT]) VALUES (N'C3', N'数字逻辑  ', 60)
INSERT [dbo].[C] ([CNO], [CN], [CT]) VALUES (N'C4', N'数据结构  ', 80)
INSERT [dbo].[C] ([CNO], [CN], [CT]) VALUES (N'C5', N'数据库    ', 60)
INSERT [dbo].[C] ([CNO], [CN], [CT]) VALUES (N'C6', N'编译原理  ', 60)
INSERT [dbo].[C] ([CNO], [CN], [CT]) VALUES (N'C7', N'操作系统  ', 60)
/****** Object:  View [dbo].[View_S]    Script Date: 04/07/2017 11:41:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_S]
AS
SELECT     SNO, SEX, DEPT, SN
FROM         dbo.S
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[1] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "S"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 180
            End
            DisplayFlags = 280
            TopColumn = 2
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_S'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_S'
GO
/****** Object:  View [dbo].[VIEW_CTABLE]    Script Date: 04/07/2017 11:41:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_CTABLE]
AS SELECT TN,CN FROM T,C,TC
WHERE T.TNO=TC.TNO AND C.CNO =TC.CNO
GO
/****** Object:  View [dbo].[View_SCORETABLE]    Script Date: 04/07/2017 11:41:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_SCORETABLE]
AS
SELECT     dbo.View_S.SN, dbo.SC.SCORE, dbo.C.CN
FROM         dbo.View_S INNER JOIN
                      dbo.SC ON dbo.View_S.SNO = dbo.SC.SNO INNER JOIN
                      dbo.C ON dbo.SC.CNO = dbo.C.CNO
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[9] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "View_S"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 180
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SC"
            Begin Extent = 
               Top = 6
               Left = 218
               Bottom = 110
               Right = 360
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "C"
            Begin Extent = 
               Top = 6
               Left = 398
               Bottom = 110
               Right = 540
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_SCORETABLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_SCORETABLE'
GO
