USE [master]
GO
/****** Object:  Database [MC_Ber]    Script Date: 14.02.2024 15:52:32 ******/
CREATE DATABASE [MC_Ber]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MC_Ber', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\MC_Ber.mdf' , SIZE = 139264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MC_Ber_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\MC_Ber_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MC_Ber] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MC_Ber].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MC_Ber] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MC_Ber] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MC_Ber] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MC_Ber] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MC_Ber] SET ARITHABORT OFF 
GO
ALTER DATABASE [MC_Ber] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MC_Ber] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MC_Ber] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MC_Ber] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MC_Ber] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MC_Ber] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MC_Ber] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MC_Ber] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MC_Ber] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MC_Ber] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MC_Ber] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MC_Ber] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MC_Ber] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MC_Ber] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MC_Ber] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MC_Ber] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MC_Ber] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MC_Ber] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MC_Ber] SET  MULTI_USER 
GO
ALTER DATABASE [MC_Ber] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MC_Ber] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MC_Ber] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MC_Ber] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MC_Ber] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MC_Ber] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [MC_Ber] SET QUERY_STORE = OFF
GO
USE [MC_Ber]
GO
/****** Object:  Table [dbo].[Вложение и окупаемость]    Script Date: 14.02.2024 15:52:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Вложение и окупаемость](
	[id] [int] NOT NULL,
	[Название] [nvarchar](255) NULL,
	[Мебель] [int] NULL,
	[Оборудование] [int] NULL,
	[Расходниники] [int] NULL,
	[Работа мастеров] [int] NOT NULL,
	[Итог] [money] NULL,
 CONSTRAINT [PK_Вложение и окупаемость] PRIMARY KEY CLUSTERED 
(
	[Работа мастеров] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[График работы]    Script Date: 14.02.2024 15:52:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[График работы](
	[№ смены] [int] NOT NULL,
	[Дни смены] [nvarchar](255) NULL,
	[Время смены] [nvarchar](255) NULL,
	[перерыв] [nvarchar](255) NULL,
	[Выходной] [nvarchar](255) NULL,
 CONSTRAINT [PK_График работы] PRIMARY KEY CLUSTERED 
(
	[№ смены] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Клиенты]    Script Date: 14.02.2024 15:52:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Клиенты](
	[id] [int] NOT NULL,
	[ФИО] [nvarchar](255) NULL,
	[Телефон] [nvarchar](255) NULL,
	[Дата] [datetime] NULL,
	[Время] [nvarchar](255) NULL,
	[Сотрудник] [int] NULL,
	[Услуга] [int] NULL,
	[Цена] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Мебель]    Script Date: 14.02.2024 15:52:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Мебель](
	[id мебели] [int] NOT NULL,
	[Название] [nvarchar](255) NULL,
	[Количество] [int] NULL,
	[Стоимость 1шт] [money] NULL,
	[Общая стоимость] [money] NULL,
	[Итог] [money] NULL,
 CONSTRAINT [PK_Мебель] PRIMARY KEY CLUSTERED 
(
	[id мебели] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Оборудование]    Script Date: 14.02.2024 15:52:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Оборудование](
	[id оборудования] [int] NOT NULL,
	[Название] [nvarchar](255) NULL,
	[Количество] [int] NULL,
	[Стоимость 1 шт] [money] NULL,
	[Общая стоимость] [money] NULL,
	[Итог] [money] NULL,
 CONSTRAINT [PK_Оборудование] PRIMARY KEY CLUSTERED 
(
	[id оборудования] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Рассходники]    Script Date: 14.02.2024 15:52:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Рассходники](
	[id расходников] [int] NOT NULL,
	[Название] [nvarchar](255) NULL,
	[Кольчество упаковок] [int] NULL,
	[Количество штук в упаковке] [int] NULL,
	[Стоимось 1шт] [money] NULL,
	[Общая стоимость] [money] NULL,
	[Итог] [money] NULL,
 CONSTRAINT [PK_Рассходники] PRIMARY KEY CLUSTERED 
(
	[id расходников] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Сотрудники]    Script Date: 14.02.2024 15:52:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Сотрудники](
	[id] [int] NOT NULL,
	[ФИО сотрудника] [nvarchar](255) NULL,
	[Стаж] [nvarchar](255) NULL,
	[Должность] [nvarchar](255) NULL,
	[Работа мастера] [money] NULL,
	[Паспортные данный] [nvarchar](255) NULL,
	[Дата рождения] [datetime] NULL,
	[Адрес проживания] [nvarchar](255) NULL,
	[Телефон] [nvarchar](255) NULL,
	[смена] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Цена услуг]    Script Date: 14.02.2024 15:52:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Цена услуг](
	[id] [int] NOT NULL,
	[Услуга] [nvarchar](255) NULL,
	[Цена] [money] NOT NULL,
	[Работа мастера] [int] NULL,
	[Итог цены] [money] NULL,
 CONSTRAINT [PK_Цена услуг] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Вложение и окупаемость]  WITH CHECK ADD  CONSTRAINT [FK_Вложение и окупаемость_Мебель] FOREIGN KEY([Мебель])
REFERENCES [dbo].[Мебель] ([id мебели])
GO
ALTER TABLE [dbo].[Вложение и окупаемость] CHECK CONSTRAINT [FK_Вложение и окупаемость_Мебель]
GO
ALTER TABLE [dbo].[Вложение и окупаемость]  WITH CHECK ADD  CONSTRAINT [FK_Вложение и окупаемость_Оборудование] FOREIGN KEY([Оборудование])
REFERENCES [dbo].[Оборудование] ([id оборудования])
GO
ALTER TABLE [dbo].[Вложение и окупаемость] CHECK CONSTRAINT [FK_Вложение и окупаемость_Оборудование]
GO
ALTER TABLE [dbo].[Вложение и окупаемость]  WITH CHECK ADD  CONSTRAINT [FK_Вложение и окупаемость_Рассходники] FOREIGN KEY([Расходниники])
REFERENCES [dbo].[Рассходники] ([id расходников])
GO
ALTER TABLE [dbo].[Вложение и окупаемость] CHECK CONSTRAINT [FK_Вложение и окупаемость_Рассходники]
GO
ALTER TABLE [dbo].[Цена услуг]  WITH CHECK ADD  CONSTRAINT [FK_Цена услуг_Вложение и окупаемость] FOREIGN KEY([Работа мастера])
REFERENCES [dbo].[Вложение и окупаемость] ([Работа мастеров])
GO
ALTER TABLE [dbo].[Цена услуг] CHECK CONSTRAINT [FK_Цена услуг_Вложение и окупаемость]
GO
USE [master]
GO
ALTER DATABASE [MC_Ber] SET  READ_WRITE 
GO
