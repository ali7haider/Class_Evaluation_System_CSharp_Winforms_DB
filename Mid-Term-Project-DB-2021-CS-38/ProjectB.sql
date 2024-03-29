USE [master]
GO
/****** Object:  Database [ProjectB]    Script Date: 12/03/2023 11:24:04 am ******/
CREATE DATABASE [ProjectB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProjectB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\ProjectB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProjectB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\ProjectB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [ProjectB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProjectB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProjectB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProjectB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProjectB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProjectB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProjectB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProjectB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProjectB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProjectB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProjectB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProjectB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProjectB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProjectB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProjectB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProjectB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProjectB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ProjectB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProjectB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProjectB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProjectB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProjectB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProjectB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProjectB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProjectB] SET RECOVERY FULL 
GO
ALTER DATABASE [ProjectB] SET  MULTI_USER 
GO
ALTER DATABASE [ProjectB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProjectB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProjectB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProjectB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProjectB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ProjectB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ProjectB', N'ON'
GO
ALTER DATABASE [ProjectB] SET QUERY_STORE = ON
GO
ALTER DATABASE [ProjectB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [ProjectB]
GO
/****** Object:  Table [dbo].[Assessment]    Script Date: 12/03/2023 11:24:04 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assessment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[TotalMarks] [int] NOT NULL,
	[TotalWeightage] [int] NOT NULL,
 CONSTRAINT [PK_Assessment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AssessmentComponent]    Script Date: 12/03/2023 11:24:04 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssessmentComponent](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[RubricId] [int] NOT NULL,
	[TotalMarks] [int] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateUpdated] [datetime] NOT NULL,
	[AssessmentId] [int] NOT NULL,
 CONSTRAINT [PK_AssessmentRubric] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClassAttendance]    Script Date: 12/03/2023 11:24:04 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassAttendance](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AttendanceDate] [datetime] NOT NULL,
 CONSTRAINT [PK_ClassAttendance] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clo]    Script Date: 12/03/2023 11:24:04 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateUpdated] [datetime] NOT NULL,
 CONSTRAINT [PK_Clo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lookup]    Script Date: 12/03/2023 11:24:04 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lookup](
	[LookupId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Lookup] PRIMARY KEY CLUSTERED 
(
	[LookupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rubric]    Script Date: 12/03/2023 11:24:04 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rubric](
	[Id] [int] NOT NULL,
	[Details] [nvarchar](max) NOT NULL,
	[CloId] [int] NOT NULL,
 CONSTRAINT [PK_Rubric] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RubricLevel]    Script Date: 12/03/2023 11:24:04 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RubricLevel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RubricId] [int] NOT NULL,
	[Details] [nvarchar](max) NOT NULL,
	[MeasurementLevel] [int] NOT NULL,
 CONSTRAINT [PK_RubricLevel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 12/03/2023 11:24:04 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NULL,
	[Contact] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NOT NULL,
	[RegistrationNumber] [nvarchar](20) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentAttendance]    Script Date: 12/03/2023 11:24:04 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentAttendance](
	[AttendanceId] [int] NOT NULL,
	[StudentId] [int] NOT NULL,
	[AttendanceStatus] [int] NOT NULL,
 CONSTRAINT [PK_StudentAttendance] PRIMARY KEY CLUSTERED 
(
	[AttendanceId] ASC,
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentResult]    Script Date: 12/03/2023 11:24:04 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentResult](
	[StudentId] [int] NOT NULL,
	[AssessmentComponentId] [int] NOT NULL,
	[RubricMeasurementId] [int] NOT NULL,
	[EvaluationDate] [datetime] NOT NULL,
 CONSTRAINT [PK_StudentResult] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC,
	[AssessmentComponentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Assessment] ON 

INSERT [dbo].[Assessment] ([Id], [Title], [DateCreated], [TotalMarks], [TotalWeightage]) VALUES (1, N'Mid-Term', CAST(N'2023-03-03T00:00:00.000' AS DateTime), 20, 10)
INSERT [dbo].[Assessment] ([Id], [Title], [DateCreated], [TotalMarks], [TotalWeightage]) VALUES (2, N'Quiz 1', CAST(N'2023-03-04T00:00:00.000' AS DateTime), 10, 5)
SET IDENTITY_INSERT [dbo].[Assessment] OFF
GO
SET IDENTITY_INSERT [dbo].[AssessmentComponent] ON 

INSERT [dbo].[AssessmentComponent] ([Id], [Name], [RubricId], [TotalMarks], [DateCreated], [DateUpdated], [AssessmentId]) VALUES (1, N'Ques 1', 2, 2, CAST(N'2023-03-04T00:00:00.000' AS DateTime), CAST(N'2023-03-10T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[AssessmentComponent] ([Id], [Name], [RubricId], [TotalMarks], [DateCreated], [DateUpdated], [AssessmentId]) VALUES (2, N'Question 1', 1, 12, CAST(N'2023-03-05T00:00:00.000' AS DateTime), CAST(N'2023-03-05T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[AssessmentComponent] ([Id], [Name], [RubricId], [TotalMarks], [DateCreated], [DateUpdated], [AssessmentId]) VALUES (3, N'Question 2', 1, 5, CAST(N'2023-03-05T00:00:00.000' AS DateTime), CAST(N'2023-03-05T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[AssessmentComponent] ([Id], [Name], [RubricId], [TotalMarks], [DateCreated], [DateUpdated], [AssessmentId]) VALUES (4, N'Question 3', 1, 1, CAST(N'2023-03-05T00:00:00.000' AS DateTime), CAST(N'2023-03-05T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[AssessmentComponent] ([Id], [Name], [RubricId], [TotalMarks], [DateCreated], [DateUpdated], [AssessmentId]) VALUES (5, N'Ques 2', 1, 8, CAST(N'2023-03-05T00:00:00.000' AS DateTime), CAST(N'2023-03-05T00:00:00.000' AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[AssessmentComponent] OFF
GO
SET IDENTITY_INSERT [dbo].[ClassAttendance] ON 

INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (1, CAST(N'2023-03-01T00:00:00.000' AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (2, CAST(N'2023-03-02T00:00:00.000' AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (3, CAST(N'2023-03-03T00:00:00.000' AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (4, CAST(N'2023-03-25T00:00:00.000' AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (5, CAST(N'2023-03-10T00:00:00.000' AS DateTime))
INSERT [dbo].[ClassAttendance] ([Id], [AttendanceDate]) VALUES (6, CAST(N'2023-03-13T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[ClassAttendance] OFF
GO
SET IDENTITY_INSERT [dbo].[Clo] ON 

INSERT [dbo].[Clo] ([Id], [Name], [DateCreated], [DateUpdated]) VALUES (2, N'CLO1', CAST(N'2023-02-27T21:23:46.790' AS DateTime), CAST(N'2023-02-28T09:49:10.433' AS DateTime))
INSERT [dbo].[Clo] ([Id], [Name], [DateCreated], [DateUpdated]) VALUES (3, N'CLO2', CAST(N'2023-03-01T21:55:35.233' AS DateTime), CAST(N'2023-03-01T21:55:35.233' AS DateTime))
INSERT [dbo].[Clo] ([Id], [Name], [DateCreated], [DateUpdated]) VALUES (4, N'CLO3', CAST(N'2023-03-01T22:01:03.927' AS DateTime), CAST(N'2023-03-01T22:01:03.927' AS DateTime))
INSERT [dbo].[Clo] ([Id], [Name], [DateCreated], [DateUpdated]) VALUES (5, N'CLO4', CAST(N'2023-03-01T22:06:04.827' AS DateTime), CAST(N'2023-03-01T22:06:04.827' AS DateTime))
INSERT [dbo].[Clo] ([Id], [Name], [DateCreated], [DateUpdated]) VALUES (6, N'CLO5', CAST(N'2023-03-01T22:21:55.280' AS DateTime), CAST(N'2023-03-01T22:21:55.280' AS DateTime))
INSERT [dbo].[Clo] ([Id], [Name], [DateCreated], [DateUpdated]) VALUES (7, N'CLO6', CAST(N'2023-03-01T22:23:17.923' AS DateTime), CAST(N'2023-03-01T22:23:17.923' AS DateTime))
SET IDENTITY_INSERT [dbo].[Clo] OFF
GO
SET IDENTITY_INSERT [dbo].[Lookup] ON 

INSERT [dbo].[Lookup] ([LookupId], [Name], [Category]) VALUES (1, N'Present', N'ATTENDANCE_STATUS')
INSERT [dbo].[Lookup] ([LookupId], [Name], [Category]) VALUES (2, N'Absent', N'ATTENDANCE_STATUS')
INSERT [dbo].[Lookup] ([LookupId], [Name], [Category]) VALUES (3, N'Leave', N'ATTENDANCE_STATUS')
INSERT [dbo].[Lookup] ([LookupId], [Name], [Category]) VALUES (4, N'Late', N'ATTENDANCE_STATUS')
INSERT [dbo].[Lookup] ([LookupId], [Name], [Category]) VALUES (5, N'Active', N'STUDENT_STATUS')
INSERT [dbo].[Lookup] ([LookupId], [Name], [Category]) VALUES (6, N'InActive', N'STUDENT_STATUS')
SET IDENTITY_INSERT [dbo].[Lookup] OFF
GO
INSERT [dbo].[Rubric] ([Id], [Details], [CloId]) VALUES (1, N'Design ', 2)
INSERT [dbo].[Rubric] ([Id], [Details], [CloId]) VALUES (2, N'Analysis', 3)
INSERT [dbo].[Rubric] ([Id], [Details], [CloId]) VALUES (3, N'Develop', 4)
INSERT [dbo].[Rubric] ([Id], [Details], [CloId]) VALUES (4, N'Build', 2)
GO
SET IDENTITY_INSERT [dbo].[RubricLevel] ON 

INSERT [dbo].[RubricLevel] ([Id], [RubricId], [Details], [MeasurementLevel]) VALUES (1, 1, N'Yoooooooo', 1)
INSERT [dbo].[RubricLevel] ([Id], [RubricId], [Details], [MeasurementLevel]) VALUES (2, 1, N'Code is divided 
into modules but 
no consideration 
is put into 
reusability and 
cohesion of the 
modules ', 2)
INSERT [dbo].[RubricLevel] ([Id], [RubricId], [Details], [MeasurementLevel]) VALUES (3, 1, N'Functionalities 
are divided into 
proper coherent 
units but the are 
either redundant 
or lack cohesion', 3)
INSERT [dbo].[RubricLevel] ([Id], [RubricId], [Details], [MeasurementLevel]) VALUES (4, 1, N'sasdddddddd', 4)
INSERT [dbo].[RubricLevel] ([Id], [RubricId], [Details], [MeasurementLevel]) VALUES (5, 2, N'Bad', 1)
INSERT [dbo].[RubricLevel] ([Id], [RubricId], [Details], [MeasurementLevel]) VALUES (6, 2, N'Good', 2)
INSERT [dbo].[RubricLevel] ([Id], [RubricId], [Details], [MeasurementLevel]) VALUES (7, 2, N'Very Good', 3)
INSERT [dbo].[RubricLevel] ([Id], [RubricId], [Details], [MeasurementLevel]) VALUES (8, 2, N'Excellent', 4)
SET IDENTITY_INSERT [dbo].[RubricLevel] OFF
GO
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (8, N'1', N'1', N'1', N'1', N'1', 6)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (9, N'2', N'2', N'2', N'2', N'2', 6)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (10, N'Hashir', N'Hussain', N'0323-2312321', N'hashir@gmail.com', N'2021-CS-1', 5)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (11, N'Shahzaib', N'Ali', N'0213123133', N'shahzaib123@gmail.com', N'2021-CS-2', 5)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (12, N'Fahad', N'Karim', N'0344232423', N'fhk402@gmail.com', N'2021-CS-14', 5)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (13, N'Saleem', N'Malik', N'03123213123', N'saleem2022@gamil.com', N'2021-CS-32', 5)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Contact], [Email], [RegistrationNumber], [Status]) VALUES (14, N'Tahir ', N'Ali', N'012321321', N'ranat@gmail.com', N'2021-CS-34', 5)
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (1, 8, 2)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (1, 9, 3)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (2, 8, 2)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (2, 9, 3)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (3, 8, 2)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (3, 9, 3)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (4, 8, 2)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (4, 9, 3)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (5, 10, 4)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (5, 11, 1)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (5, 12, 2)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (5, 13, 4)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (5, 14, 1)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (6, 10, 4)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (6, 11, 1)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (6, 12, 2)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (6, 13, 4)
INSERT [dbo].[StudentAttendance] ([AttendanceId], [StudentId], [AttendanceStatus]) VALUES (6, 14, 1)
GO
INSERT [dbo].[StudentResult] ([StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (10, 2, 1, CAST(N'2023-03-05T00:00:00.000' AS DateTime))
INSERT [dbo].[StudentResult] ([StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (10, 3, 3, CAST(N'2023-03-09T00:00:00.000' AS DateTime))
INSERT [dbo].[StudentResult] ([StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (11, 4, 5, CAST(N'2023-03-05T00:00:00.000' AS DateTime))
INSERT [dbo].[StudentResult] ([StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (12, 2, 1, CAST(N'2023-03-05T00:00:00.000' AS DateTime))
INSERT [dbo].[StudentResult] ([StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (13, 2, 1, CAST(N'2023-03-05T00:00:00.000' AS DateTime))
INSERT [dbo].[StudentResult] ([StudentId], [AssessmentComponentId], [RubricMeasurementId], [EvaluationDate]) VALUES (14, 5, 6, CAST(N'2023-03-05T00:00:00.000' AS DateTime))
GO
ALTER TABLE [dbo].[AssessmentComponent]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentComponent_Assessment] FOREIGN KEY([AssessmentId])
REFERENCES [dbo].[Assessment] ([Id])
GO
ALTER TABLE [dbo].[AssessmentComponent] CHECK CONSTRAINT [FK_AssessmentComponent_Assessment]
GO
ALTER TABLE [dbo].[AssessmentComponent]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentComponent_Rubric] FOREIGN KEY([RubricId])
REFERENCES [dbo].[Rubric] ([Id])
GO
ALTER TABLE [dbo].[AssessmentComponent] CHECK CONSTRAINT [FK_AssessmentComponent_Rubric]
GO
ALTER TABLE [dbo].[Rubric]  WITH CHECK ADD  CONSTRAINT [FK_Rubric_Clo] FOREIGN KEY([CloId])
REFERENCES [dbo].[Clo] ([Id])
GO
ALTER TABLE [dbo].[Rubric] CHECK CONSTRAINT [FK_Rubric_Clo]
GO
ALTER TABLE [dbo].[RubricLevel]  WITH CHECK ADD  CONSTRAINT [FK_RubricLevel_Rubric] FOREIGN KEY([RubricId])
REFERENCES [dbo].[Rubric] ([Id])
GO
ALTER TABLE [dbo].[RubricLevel] CHECK CONSTRAINT [FK_RubricLevel_Rubric]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Lookup] FOREIGN KEY([Status])
REFERENCES [dbo].[Lookup] ([LookupId])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Lookup]
GO
ALTER TABLE [dbo].[StudentAttendance]  WITH CHECK ADD  CONSTRAINT [FK_StudentAttendance_ClassAttendance] FOREIGN KEY([AttendanceId])
REFERENCES [dbo].[ClassAttendance] ([Id])
GO
ALTER TABLE [dbo].[StudentAttendance] CHECK CONSTRAINT [FK_StudentAttendance_ClassAttendance]
GO
ALTER TABLE [dbo].[StudentAttendance]  WITH CHECK ADD  CONSTRAINT [FK_StudentAttendance_Lookup] FOREIGN KEY([AttendanceStatus])
REFERENCES [dbo].[Lookup] ([LookupId])
GO
ALTER TABLE [dbo].[StudentAttendance] CHECK CONSTRAINT [FK_StudentAttendance_Lookup]
GO
ALTER TABLE [dbo].[StudentAttendance]  WITH CHECK ADD  CONSTRAINT [FK_StudentAttendance_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([Id])
GO
ALTER TABLE [dbo].[StudentAttendance] CHECK CONSTRAINT [FK_StudentAttendance_Student]
GO
ALTER TABLE [dbo].[StudentResult]  WITH CHECK ADD  CONSTRAINT [FK_StudentResult_AssessmentComponent] FOREIGN KEY([AssessmentComponentId])
REFERENCES [dbo].[AssessmentComponent] ([Id])
GO
ALTER TABLE [dbo].[StudentResult] CHECK CONSTRAINT [FK_StudentResult_AssessmentComponent]
GO
ALTER TABLE [dbo].[StudentResult]  WITH CHECK ADD  CONSTRAINT [FK_StudentResult_RubricLevel] FOREIGN KEY([RubricMeasurementId])
REFERENCES [dbo].[RubricLevel] ([Id])
GO
ALTER TABLE [dbo].[StudentResult] CHECK CONSTRAINT [FK_StudentResult_RubricLevel]
GO
ALTER TABLE [dbo].[StudentResult]  WITH CHECK ADD  CONSTRAINT [FK_StudentResult_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([Id])
GO
ALTER TABLE [dbo].[StudentResult] CHECK CONSTRAINT [FK_StudentResult_Student]
GO
USE [master]
GO
ALTER DATABASE [ProjectB] SET  READ_WRITE 
GO
