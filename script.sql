/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2016 (13.0.4001)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [master]
GO
/****** Object:  Database [newData]    Script Date: 2/20/2018 1:39:20 PM ******/
CREATE DATABASE [newData]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'newData', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLSERVERCODE\MSSQL\DATA\newData.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'newData_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLSERVERCODE\MSSQL\DATA\newData_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [newData] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [newData].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [newData] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [newData] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [newData] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [newData] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [newData] SET ARITHABORT OFF 
GO
ALTER DATABASE [newData] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [newData] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [newData] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [newData] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [newData] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [newData] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [newData] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [newData] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [newData] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [newData] SET  DISABLE_BROKER 
GO
ALTER DATABASE [newData] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [newData] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [newData] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [newData] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [newData] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [newData] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [newData] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [newData] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [newData] SET  MULTI_USER 
GO
ALTER DATABASE [newData] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [newData] SET DB_CHAINING OFF 
GO
ALTER DATABASE [newData] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [newData] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [newData] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [newData] SET QUERY_STORE = OFF
GO
USE [newData]
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
USE [newData]
GO
/****** Object:  Table [dbo].[Attendence]    Script Date: 2/20/2018 1:39:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendence](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[atten_emp_id] [int] NULL,
	[atten_status] [bit] NULL,
	[atten_leave_type_id] [int] NULL,
	[atten_date] [datetime] NULL,
	[atten_reason] [nvarchar](max) NULL,
 CONSTRAINT [PK_Attendence] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Award]    Script Date: 2/20/2018 1:39:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Award](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[award_emp_id] [int] NULL,
	[award_name] [nvarchar](100) NULL,
	[award_reason] [nvarchar](max) NULL,
	[award_cash_price] [float] NULL,
	[award_date] [datetime] NULL,
 CONSTRAINT [PK_Award] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departament]    Script Date: 2/20/2018 1:39:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departament](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[depart_name] [nvarchar](100) NULL,
 CONSTRAINT [PK_Departament] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Designation]    Script Date: 2/20/2018 1:39:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Designation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[desig_name] [nvarchar](100) NULL,
	[depart_id] [int] NULL,
 CONSTRAINT [PK_Designation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 2/20/2018 1:39:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[emp_fullname] [nvarchar](100) NULL,
	[emp_fathername] [nvarchar](50) NULL,
	[emp_dateof_birth] [datetime] NULL,
	[emp_gender_id] [int] NULL,
	[emp_phone] [nvarchar](50) NULL,
	[emp_address] [nvarchar](500) NULL,
	[emp_photo] [nvarchar](max) NULL,
	[emp_email] [nvarchar](100) NULL,
	[emp_password] [nvarchar](500) NULL,
	[emp_dep_id] [int] NULL,
	[emp_desig_id] [int] NULL,
	[emp_date_of_joining] [datetime] NULL,
	[emp_exit_date] [datetime] NULL,
	[emp_work_status] [bit] NULL,
	[emp_salary] [float] NULL,
	[emp_resume] [nvarchar](max) NULL,
	[emp_offer_letter] [nvarchar](max) NULL,
	[emp_joining_letter] [nvarchar](max) NULL,
	[emp_contact_and_argue] [nvarchar](max) NULL,
	[emp_ID_proof] [nvarchar](max) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 2/20/2018 1:39:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[gender_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Holiday]    Script Date: 2/20/2018 1:39:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Holiday](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[holiday_name] [nvarchar](100) NULL,
	[holiday_date] [datetime] NULL,
 CONSTRAINT [PK_Holiday] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Leave_App]    Script Date: 2/20/2018 1:39:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Leave_App](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[leave_type_id] [int] NULL,
	[leave_emp_id] [int] NULL,
	[leave_date] [datetime] NULL,
	[leave_reason] [nvarchar](200) NULL,
	[leave_status_id] [int] NULL,
 CONSTRAINT [PK_Leave_App] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Leave_status]    Script Date: 2/20/2018 1:39:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Leave_status](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[status_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Leave_status] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Leave_type]    Script Date: 2/20/2018 1:39:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Leave_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Leave_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notice_Board]    Script Date: 2/20/2018 1:39:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notice_Board](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[notice_title] [nvarchar](100) NULL,
	[notice_content] [nvarchar](max) NULL,
	[notice_status] [bit] NULL,
 CONSTRAINT [PK_Notice_Board] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Attendence] ON 

INSERT [dbo].[Attendence] ([id], [atten_emp_id], [atten_status], [atten_leave_type_id], [atten_date], [atten_reason]) VALUES (1, 1, NULL, 1, CAST(N'2018-06-07T00:00:00.000' AS DateTime), N'rayona gedib')
INSERT [dbo].[Attendence] ([id], [atten_emp_id], [atten_status], [atten_leave_type_id], [atten_date], [atten_reason]) VALUES (2, 1, 1, 1, CAST(N'2016-12-12T00:00:00.000' AS DateTime), N'iwi cixmiwdi')
SET IDENTITY_INSERT [dbo].[Attendence] OFF
SET IDENTITY_INSERT [dbo].[Award] ON 

INSERT [dbo].[Award] ([id], [award_emp_id], [award_name], [award_reason], [award_cash_price], [award_date]) VALUES (1, 1, N'pul qaqa', N'heftenin adamidi bu  oglan', 200, CAST(N'2012-12-12T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Award] OFF
SET IDENTITY_INSERT [dbo].[Departament] ON 

INSERT [dbo].[Departament] ([id], [depart_name]) VALUES (1, N'Programming')
INSERT [dbo].[Departament] ([id], [depart_name]) VALUES (2, N'System')
SET IDENTITY_INSERT [dbo].[Departament] OFF
SET IDENTITY_INSERT [dbo].[Designation] ON 

INSERT [dbo].[Designation] ([id], [desig_name], [depart_id]) VALUES (1, N'my design', 2)
INSERT [dbo].[Designation] ([id], [desig_name], [depart_id]) VALUES (2, N'second', 2)
INSERT [dbo].[Designation] ([id], [desig_name], [depart_id]) VALUES (3, N'sdsddsdsd', 1)
SET IDENTITY_INSERT [dbo].[Designation] OFF
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([id], [emp_fullname], [emp_fathername], [emp_dateof_birth], [emp_gender_id], [emp_phone], [emp_address], [emp_photo], [emp_email], [emp_password], [emp_dep_id], [emp_desig_id], [emp_date_of_joining], [emp_exit_date], [emp_work_status], [emp_salary], [emp_resume], [emp_offer_letter], [emp_joining_letter], [emp_contact_and_argue], [emp_ID_proof]) VALUES (1, N'gh', N'gghjgjhgh', CAST(N'1995-12-12T00:00:00.000' AS DateTime), 2, N'+994506419693', N'jggjgjgj', N'118173_adapted_1080x1920-01.jpeg', N'turan', N'turanturan', 1, 2, CAST(N'2012-12-12T00:00:00.000' AS DateTime), CAST(N'2013-12-12T00:00:00.000' AS DateTime), 1, 400, N'resume', N'effdfdwfsssssssss', N'dffsssssssssss', N'sdsd', N'1234')
SET IDENTITY_INSERT [dbo].[Employee] OFF
SET IDENTITY_INSERT [dbo].[Gender] ON 

INSERT [dbo].[Gender] ([id], [gender_name]) VALUES (1, N'male')
INSERT [dbo].[Gender] ([id], [gender_name]) VALUES (2, N'female')
SET IDENTITY_INSERT [dbo].[Gender] OFF
SET IDENTITY_INSERT [dbo].[Holiday] ON 

INSERT [dbo].[Holiday] ([id], [holiday_name], [holiday_date]) VALUES (1, N'20 Yanvar', CAST(N'2017-01-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Holiday] ([id], [holiday_name], [holiday_date]) VALUES (2, N'Novruz Bayrami', CAST(N'2017-03-20T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Holiday] OFF
SET IDENTITY_INSERT [dbo].[Leave_App] ON 

INSERT [dbo].[Leave_App] ([id], [leave_type_id], [leave_emp_id], [leave_date], [leave_reason], [leave_status_id]) VALUES (1, 1, 1, CAST(N'2012-12-12T00:00:00.000' AS DateTime), N'ekhlkhttetre', 1)
SET IDENTITY_INSERT [dbo].[Leave_App] OFF
SET IDENTITY_INSERT [dbo].[Leave_status] ON 

INSERT [dbo].[Leave_status] ([id], [status_name]) VALUES (1, N'Uzurlu ')
INSERT [dbo].[Leave_status] ([id], [status_name]) VALUES (2, N'Uzursuz')
SET IDENTITY_INSERT [dbo].[Leave_status] OFF
SET IDENTITY_INSERT [dbo].[Leave_type] ON 

INSERT [dbo].[Leave_type] ([id], [type_name]) VALUES (1, N'gecerli')
INSERT [dbo].[Leave_type] ([id], [type_name]) VALUES (2, N'gecersiz')
SET IDENTITY_INSERT [dbo].[Leave_type] OFF
SET IDENTITY_INSERT [dbo].[Notice_Board] ON 

INSERT [dbo].[Notice_Board] ([id], [notice_title], [notice_content], [notice_status]) VALUES (1, N'Hamiya', N'sdsddssdsd', 1)
SET IDENTITY_INSERT [dbo].[Notice_Board] OFF
ALTER TABLE [dbo].[Attendence]  WITH CHECK ADD  CONSTRAINT [FK_Attendence_Employee] FOREIGN KEY([atten_emp_id])
REFERENCES [dbo].[Employee] ([id])
GO
ALTER TABLE [dbo].[Attendence] CHECK CONSTRAINT [FK_Attendence_Employee]
GO
ALTER TABLE [dbo].[Attendence]  WITH CHECK ADD  CONSTRAINT [FK_Attendence_Leave_type] FOREIGN KEY([atten_leave_type_id])
REFERENCES [dbo].[Leave_type] ([id])
GO
ALTER TABLE [dbo].[Attendence] CHECK CONSTRAINT [FK_Attendence_Leave_type]
GO
ALTER TABLE [dbo].[Award]  WITH CHECK ADD  CONSTRAINT [FK_Award_Employee] FOREIGN KEY([award_emp_id])
REFERENCES [dbo].[Employee] ([id])
GO
ALTER TABLE [dbo].[Award] CHECK CONSTRAINT [FK_Award_Employee]
GO
ALTER TABLE [dbo].[Designation]  WITH CHECK ADD  CONSTRAINT [FK_Designation_Designation] FOREIGN KEY([depart_id])
REFERENCES [dbo].[Departament] ([id])
GO
ALTER TABLE [dbo].[Designation] CHECK CONSTRAINT [FK_Designation_Designation]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Departament] FOREIGN KEY([emp_dep_id])
REFERENCES [dbo].[Departament] ([id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Departament]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Designation] FOREIGN KEY([emp_desig_id])
REFERENCES [dbo].[Designation] ([id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Designation]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Gender] FOREIGN KEY([emp_gender_id])
REFERENCES [dbo].[Gender] ([id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Gender]
GO
ALTER TABLE [dbo].[Leave_App]  WITH CHECK ADD  CONSTRAINT [FK_Leave_App_Employee] FOREIGN KEY([leave_emp_id])
REFERENCES [dbo].[Employee] ([id])
GO
ALTER TABLE [dbo].[Leave_App] CHECK CONSTRAINT [FK_Leave_App_Employee]
GO
ALTER TABLE [dbo].[Leave_App]  WITH CHECK ADD  CONSTRAINT [FK_Leave_App_Leave_status] FOREIGN KEY([leave_status_id])
REFERENCES [dbo].[Leave_status] ([id])
GO
ALTER TABLE [dbo].[Leave_App] CHECK CONSTRAINT [FK_Leave_App_Leave_status]
GO
ALTER TABLE [dbo].[Leave_App]  WITH CHECK ADD  CONSTRAINT [FK_Leave_App_Leave_type] FOREIGN KEY([leave_type_id])
REFERENCES [dbo].[Leave_type] ([id])
GO
ALTER TABLE [dbo].[Leave_App] CHECK CONSTRAINT [FK_Leave_App_Leave_type]
GO
USE [master]
GO
ALTER DATABASE [newData] SET  READ_WRITE 
GO
