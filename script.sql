USE [master]
GO
/****** Object:  Database [Asistencias]    Script Date: 23/12/2024 01:50:25 p. m. ******/
CREATE DATABASE [Asistencias]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Asistencias', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Asistencias.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Asistencias_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Asistencias_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Asistencias] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Asistencias].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Asistencias] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Asistencias] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Asistencias] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Asistencias] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Asistencias] SET ARITHABORT OFF 
GO
ALTER DATABASE [Asistencias] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Asistencias] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Asistencias] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Asistencias] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Asistencias] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Asistencias] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Asistencias] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Asistencias] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Asistencias] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Asistencias] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Asistencias] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Asistencias] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Asistencias] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Asistencias] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Asistencias] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Asistencias] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Asistencias] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Asistencias] SET RECOVERY FULL 
GO
ALTER DATABASE [Asistencias] SET  MULTI_USER 
GO
ALTER DATABASE [Asistencias] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Asistencias] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Asistencias] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Asistencias] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Asistencias] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Asistencias] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Asistencias', N'ON'
GO
ALTER DATABASE [Asistencias] SET QUERY_STORE = ON
GO
ALTER DATABASE [Asistencias] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Asistencias]
GO
/****** Object:  Table [dbo].[Asist_Usuarios]    Script Date: 23/12/2024 01:50:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asist_Usuarios](
	[id_Asistencia_Us] [int] IDENTITY(1,1) NOT NULL,
	[id_Usuario] [int] NULL,
	[check_entrada] [datetime] NULL,
	[check_salida] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Asistencia_Us] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 23/12/2024 01:50:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[id_Usuario] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NULL,
	[email] [varchar](100) NULL,
	[password] [varchar](100) NULL,
	[rol] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Asist_Usuarios] ON 

INSERT [dbo].[Asist_Usuarios] ([id_Asistencia_Us], [id_Usuario], [check_entrada], [check_salida]) VALUES (1, 1, CAST(N'2024-12-22T22:31:43.267' AS DateTime), CAST(N'2024-12-22T22:31:50.167' AS DateTime))
INSERT [dbo].[Asist_Usuarios] ([id_Asistencia_Us], [id_Usuario], [check_entrada], [check_salida]) VALUES (2, 1, CAST(N'2024-12-23T02:57:48.863' AS DateTime), CAST(N'2024-12-23T03:10:40.443' AS DateTime))
INSERT [dbo].[Asist_Usuarios] ([id_Asistencia_Us], [id_Usuario], [check_entrada], [check_salida]) VALUES (3, 1, CAST(N'2024-12-23T03:16:58.197' AS DateTime), CAST(N'2024-12-23T03:17:10.997' AS DateTime))
INSERT [dbo].[Asist_Usuarios] ([id_Asistencia_Us], [id_Usuario], [check_entrada], [check_salida]) VALUES (4, 1, CAST(N'2024-12-23T03:20:44.713' AS DateTime), CAST(N'2024-12-23T03:21:05.353' AS DateTime))
INSERT [dbo].[Asist_Usuarios] ([id_Asistencia_Us], [id_Usuario], [check_entrada], [check_salida]) VALUES (5, 1, CAST(N'2024-12-23T03:33:56.000' AS DateTime), CAST(N'2024-12-23T03:34:03.780' AS DateTime))
INSERT [dbo].[Asist_Usuarios] ([id_Asistencia_Us], [id_Usuario], [check_entrada], [check_salida]) VALUES (6, 1, CAST(N'2024-12-23T04:06:56.093' AS DateTime), CAST(N'2024-12-23T04:20:54.677' AS DateTime))
INSERT [dbo].[Asist_Usuarios] ([id_Asistencia_Us], [id_Usuario], [check_entrada], [check_salida]) VALUES (7, 1, CAST(N'2024-12-23T04:26:36.310' AS DateTime), CAST(N'2024-12-23T04:27:58.253' AS DateTime))
INSERT [dbo].[Asist_Usuarios] ([id_Asistencia_Us], [id_Usuario], [check_entrada], [check_salida]) VALUES (8, 1, CAST(N'2024-12-23T04:30:12.233' AS DateTime), CAST(N'2024-12-23T04:30:22.517' AS DateTime))
INSERT [dbo].[Asist_Usuarios] ([id_Asistencia_Us], [id_Usuario], [check_entrada], [check_salida]) VALUES (9, 1, CAST(N'2024-12-23T04:35:34.047' AS DateTime), CAST(N'2024-12-23T04:35:43.513' AS DateTime))
INSERT [dbo].[Asist_Usuarios] ([id_Asistencia_Us], [id_Usuario], [check_entrada], [check_salida]) VALUES (10, 1, CAST(N'2024-12-23T04:39:06.373' AS DateTime), CAST(N'2024-12-23T04:39:18.493' AS DateTime))
INSERT [dbo].[Asist_Usuarios] ([id_Asistencia_Us], [id_Usuario], [check_entrada], [check_salida]) VALUES (11, 1, CAST(N'2024-12-23T04:40:49.383' AS DateTime), CAST(N'2024-12-23T04:42:11.907' AS DateTime))
INSERT [dbo].[Asist_Usuarios] ([id_Asistencia_Us], [id_Usuario], [check_entrada], [check_salida]) VALUES (12, 1, CAST(N'2024-12-23T04:42:23.023' AS DateTime), CAST(N'2024-12-23T04:43:30.490' AS DateTime))
INSERT [dbo].[Asist_Usuarios] ([id_Asistencia_Us], [id_Usuario], [check_entrada], [check_salida]) VALUES (13, 1, CAST(N'2024-12-23T04:52:15.843' AS DateTime), CAST(N'2024-12-23T04:52:23.783' AS DateTime))
INSERT [dbo].[Asist_Usuarios] ([id_Asistencia_Us], [id_Usuario], [check_entrada], [check_salida]) VALUES (14, 1, CAST(N'2024-12-23T04:54:18.180' AS DateTime), CAST(N'2024-12-23T04:54:27.897' AS DateTime))
INSERT [dbo].[Asist_Usuarios] ([id_Asistencia_Us], [id_Usuario], [check_entrada], [check_salida]) VALUES (15, 1, CAST(N'2024-12-23T05:00:45.230' AS DateTime), CAST(N'2024-12-23T05:00:53.557' AS DateTime))
INSERT [dbo].[Asist_Usuarios] ([id_Asistencia_Us], [id_Usuario], [check_entrada], [check_salida]) VALUES (16, 1, CAST(N'2024-12-23T05:01:25.657' AS DateTime), CAST(N'2024-12-23T05:01:33.773' AS DateTime))
INSERT [dbo].[Asist_Usuarios] ([id_Asistencia_Us], [id_Usuario], [check_entrada], [check_salida]) VALUES (17, 1, CAST(N'2024-12-23T12:00:49.933' AS DateTime), CAST(N'2024-12-23T12:01:01.920' AS DateTime))
INSERT [dbo].[Asist_Usuarios] ([id_Asistencia_Us], [id_Usuario], [check_entrada], [check_salida]) VALUES (18, 5, CAST(N'2024-12-23T13:37:20.267' AS DateTime), CAST(N'2024-12-23T13:37:27.303' AS DateTime))
SET IDENTITY_INSERT [dbo].[Asist_Usuarios] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([id_Usuario], [nombre], [email], [password], [rol]) VALUES (1, N'Osvaldo', N'alejandrogaspar89@gmail.com', N'oaem9808', N'user')
INSERT [dbo].[Usuario] ([id_Usuario], [nombre], [email], [password], [rol]) VALUES (2, N'a', N'a', N'a', N'a')
INSERT [dbo].[Usuario] ([id_Usuario], [nombre], [email], [password], [rol]) VALUES (3, N'a', N'a@example.com', N'a', N'a')
INSERT [dbo].[Usuario] ([id_Usuario], [nombre], [email], [password], [rol]) VALUES (4, N'a', N'ae@example.com', N'a', N'a')
INSERT [dbo].[Usuario] ([id_Usuario], [nombre], [email], [password], [rol]) VALUES (5, N'alejandro', N'osvaldo89@gmail.com', N'123', N'user')
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Usuario__AB6E6164345A5F14]    Script Date: 23/12/2024 01:50:25 p. m. ******/
ALTER TABLE [dbo].[Usuario] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Asist_Usuarios] ADD  DEFAULT (sysdatetime()) FOR [check_entrada]
GO
ALTER TABLE [dbo].[Usuario] ADD  DEFAULT ('user') FOR [rol]
GO
ALTER TABLE [dbo].[Asist_Usuarios]  WITH CHECK ADD FOREIGN KEY([id_Usuario])
REFERENCES [dbo].[Usuario] ([id_Usuario])
GO
USE [master]
GO
ALTER DATABASE [Asistencias] SET  READ_WRITE 
GO
