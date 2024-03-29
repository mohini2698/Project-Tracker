USE [master]
GO
/****** Object:  Database [ProjectTracker]    Script Date: 15/07/2019 2:37:59 PM ******/
CREATE DATABASE [ProjectTracker]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProjectTracker', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS02\MSSQL\DATA\ProjectTracker.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProjectTracker_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS02\MSSQL\DATA\ProjectTracker_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ProjectTracker] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProjectTracker].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProjectTracker] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProjectTracker] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProjectTracker] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProjectTracker] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProjectTracker] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProjectTracker] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProjectTracker] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProjectTracker] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProjectTracker] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProjectTracker] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProjectTracker] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProjectTracker] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProjectTracker] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProjectTracker] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProjectTracker] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ProjectTracker] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProjectTracker] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProjectTracker] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProjectTracker] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProjectTracker] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProjectTracker] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProjectTracker] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProjectTracker] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProjectTracker] SET  MULTI_USER 
GO
ALTER DATABASE [ProjectTracker] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProjectTracker] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProjectTracker] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProjectTracker] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProjectTracker] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ProjectTracker] SET QUERY_STORE = OFF
GO
USE [ProjectTracker]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 15/07/2019 2:37:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[ClientId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Country] [nvarchar](100) NOT NULL,
	[State] [nvarchar](100) NOT NULL,
	[Address] [nvarchar](500) NOT NULL,
	[Projectname] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[ClientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientContact]    Script Date: 15/07/2019 2:37:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientContact](
	[ContactId] [int] IDENTITY(1,1) NOT NULL,
	[Contactname] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Mobile] [decimal](10, 0) NOT NULL,
	[Skype] [nvarchar](100) NULL,
	[WhatsApp] [decimal](10, 0) NULL,
	[ClientId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Project]    Script Date: 15/07/2019 2:37:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[ProjectId] [int] IDENTITY(1,1) NOT NULL,
	[Projectname] [nvarchar](100) NOT NULL,
	[ClientId] [int] NULL,
	[SVN_Location] [nvarchar](100) NOT NULL,
	[Estimated_Start_Date] [date] NOT NULL,
	[Estimated_Finish_Date] [date] NOT NULL,
	[Actual_Start_Date] [date] NULL,
	[Actual_Finish_Date] [date] NULL,
	[Per_WorkCompleted] [float] NULL,
	[ProjectStatus] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectTask]    Script Date: 15/07/2019 2:37:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectTask](
	[TaskId] [int] IDENTITY(1,1) NOT NULL,
	[Taskname] [nvarchar](100) NOT NULL,
	[Allocated_hrs] [decimal](4, 2) NOT NULL,
	[Actual_hrs] [decimal](4, 2) NOT NULL,
	[Status] [nvarchar](100) NOT NULL,
	[Per_WorkDone] [float] NULL,
	[Estimated_Start_Date] [date] NOT NULL,
	[Estimated_Finish_Date] [date] NOT NULL,
	[Actual_Start_Date] [date] NULL,
	[Actual_Finish_Date] [date] NULL,
	[ProjectId] [int] NULL,
	[Id] [int] NULL,
	[Username] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[TaskId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectTeam]    Script Date: 15/07/2019 2:37:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectTeam](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Project_role] [nvarchar](100) NOT NULL,
	[UserId] [int] NULL,
	[ProjectId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeSheet]    Script Date: 15/07/2019 2:37:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeSheet](
	[EntryId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[TaskId] [int] NULL,
	[Date] [date] NOT NULL,
	[Hrs_Spent] [decimal](4, 2) NOT NULL,
	[Remarks] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EntryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 15/07/2019 2:37:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](100) NOT NULL,
	[Password] [nvarchar](100) NOT NULL,
	[FirstName] [nvarchar](100) NOT NULL,
	[MiddleName] [nvarchar](100) NULL,
	[LastName] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Mobile] [decimal](10, 0) NOT NULL,
	[Mobile2] [decimal](10, 0) NULL,
	[EmployeeId] [int] NOT NULL,
	[OrganisationRole] [nvarchar](100) NOT NULL,
	[RetryAttempt] [int] NULL,
	[IsLocked] [bit] NULL,
	[LockedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ClientContact]  WITH CHECK ADD FOREIGN KEY([ClientId])
REFERENCES [dbo].[Client] ([ClientId])
GO
ALTER TABLE [dbo].[Project]  WITH CHECK ADD FOREIGN KEY([ClientId])
REFERENCES [dbo].[Client] ([ClientId])
GO
ALTER TABLE [dbo].[ProjectTask]  WITH CHECK ADD FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Project] ([ProjectId])
GO
ALTER TABLE [dbo].[ProjectTask]  WITH CHECK ADD FOREIGN KEY([Id])
REFERENCES [dbo].[ProjectTeam] ([Id])
GO
ALTER TABLE [dbo].[ProjectTeam]  WITH CHECK ADD FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Project] ([ProjectId])
GO
ALTER TABLE [dbo].[ProjectTeam]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[TimeSheet]  WITH CHECK ADD FOREIGN KEY([TaskId])
REFERENCES [dbo].[ProjectTask] ([TaskId])
GO
ALTER TABLE [dbo].[TimeSheet]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
/****** Object:  StoredProcedure [dbo].[Authenticate]    Script Date: 15/07/2019 2:37:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Authenticate] 
@Username nvarchar(50),
@Password nvarchar(50)
as
Begin
Declare @OrganisationRole nvarchar(50)
Declare @Count int
Select @Count =COUNT(Username) from Users
where [UserName] = @UserName and [Password]=@Password
Select @OrganisationRole = OrganisationRole from Users
where [UserName] = @UserName and [Password]=@Password
if(@Count =-1)
 Begin
 Select Null as ReturnCode
 End
 Else
 Begin
  Select  @OrganisationRole as ReturnCode
 End 
End
GO
/****** Object:  StoredProcedure [dbo].[AuthenticateTM]    Script Date: 15/07/2019 2:37:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[AuthenticateTM]
@Username nvarchar(50)
as
Begin
Declare @Retutrncode int
Declare @Count int
Select @Count =COUNT(Username) from Users
where [UserName] = @UserName

if(@Count =-1)
 Begin
 Select -1 as ReturnCode
 End
 Else
 Begin
  Select  1 as ReturnCode
 End 
End
GO
/****** Object:  StoredProcedure [dbo].[RegisterClient]    Script Date: 15/07/2019 2:37:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[RegisterClient]
@Name nvarchar(100),
@Country nvarchar(100),
@State nvarchar(100),
@Address nvarchar(100),
@Projectname nvarchar(200)
as
Declare @ClientId int
Declare @ReturnCode int

Begin
    
	Insert into Client(Name,Country,State,Address,Projectname) values
	(@Name,@Country,@State,@Address,@Projectname)

	Select @ClientId = ClientId from Client
where [Name] = @Name and [Projectname]=@Projectname

Begin
  Select  @ClientId as ReturnCode
 End 
End
GO
/****** Object:  StoredProcedure [dbo].[RegisterClientContact]    Script Date: 15/07/2019 2:37:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[RegisterClientContact]

@Contactname nvarchar(100),
@Email nvarchar(100),
@Mobile dec(10,0),
@Skype nvarchar(100),
@WhatsApp dec(10,0),
@ClientId int
as
BEGIN
   IF NOT EXISTS (SELECT * FROM ClientContact 
                   WHERE Contactname = @Contactname
                   AND Email = @Email
                   AND Mobile = @Mobile
				   AND Skype = @Skype
				   AND WhatsApp = @WhatsApp
				   )
   BEGIN
      Insert into ClientContact(Contactname,Email,Mobile,Skype,WhatsApp,ClientId) values
	(@Contactname,@Email,@Mobile,@Skype,@WhatsApp,@ClientId)
   END
END
GO
/****** Object:  StoredProcedure [dbo].[RegisterProject]    Script Date: 15/07/2019 2:37:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[RegisterProject]

@Projectname nvarchar(200),
@ClientId int,
@SVN_Location  nvarchar(100),
@Estimated_Start_Date Date  ,
@Estimated_Finish_Date Date  ,
@Actual_Start_Date Date  ,
@Actual_Finish_Date Date ,
@Per_WorkCompleted FLOAT,
@ProjectStatus nvarchar(100)


as
Begin
    
	Insert into Project(Projectname,ClientId,SVN_Location,Estimated_Start_Date,Estimated_Finish_Date,Actual_Start_Date,Actual_Finish_Date,Per_WorkCompleted,ProjectStatus
) values
	(@Projectname,@ClientId,@SVN_Location,@Estimated_Start_Date,@Estimated_Finish_Date,@Actual_Start_Date,@Actual_Finish_Date,@Per_WorkCompleted,@ProjectStatus)
End
GO
/****** Object:  StoredProcedure [dbo].[RegisterProjectTask]    Script Date: 15/07/2019 2:37:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[RegisterProjectTask]

@Taskname nvarchar(200),
@Allocated_hrs decimal(4,2),
@Actual_hrs  decimal(4,2),
@Status nvarchar(100),
@Per_WorkDone float,
@Estimated_Start_Date Date  ,
@Estimated_Finish_Date Date  ,
@Actual_Start_Date Date  ,
@Actual_Finish_Date Date ,
@ProjectId int,
@Id int,
@Username nvarchar(255)


as
Begin
    
Insert into ProjectTask(Taskname,Allocated_hrs,Actual_hrs,Status,Per_WorkDone,Estimated_Start_Date,Estimated_Finish_Date,Actual_Start_Date,Actual_Finish_Date,ProjectId,Id,Username) values
(@Taskname,@Allocated_hrs,@Actual_hrs,@Status,@Per_WorkDone,convert(varchar, @Estimated_Start_Date, 6)	,convert(varchar, @Estimated_Finish_Date, 6),@Actual_Start_Date,@Actual_Finish_Date,@ProjectId,@Id,@Username)
SET  @Estimated_Start_Date = CONVERT(VARCHAR(10), @Estimated_Start_Date, 6)
End
GO
/****** Object:  StoredProcedure [dbo].[RegisterUser]    Script Date: 15/07/2019 2:37:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[RegisterUser]
@Username nvarchar(100),
@Password nvarchar(100),
@FirstName nvarchar(100),
@MiddleName nvarchar(100),
@LastName nvarchar(100),
@Email nvarchar(100),
@Mobile decimal(10,0),
@Mobile2 decimal(10,0),
@EmployeeId  int,
@OrganisationRole nvarchar(100)
as
Begin
 Declare @Count int
 Declare @ReturnCode int

 Select @Count =COUNT(Username)
 from Users where Username = @Username

 If @Count>0
 Begin
    Set @ReturnCode = -1
 End
 Else
 Begin
    Set @ReturnCode = 1
	Insert into Users(Username,Password,FirstName,MiddleName,LastName,Email,Mobile,Mobile2,EmployeeId,OrganisationRole) values
	(@UserName,@Password,@FirstName,@MiddleName,@LastName,@Email,@Mobile,@Mobile2,@EmployeeId,@OrganisationRole)
End
Select @ReturnCode as ReturnValue
End
GO
USE [master]
GO
ALTER DATABASE [ProjectTracker] SET  READ_WRITE 
GO
