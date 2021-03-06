USE [asd]
GO
/****** Object:  User [KPC\инет]    Script Date: 01.06.2021 10:22:16 ******/
CREATE USER [KPC\инет] FOR LOGIN [KPC\инет] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [KPC\инет]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [KPC\инет]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [KPC\инет]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [KPC\инет]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [KPC\инет]
GO
ALTER ROLE [db_datareader] ADD MEMBER [KPC\инет]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [KPC\инет]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [KPC\инет]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [KPC\инет]
GO
/****** Object:  Table [dbo].[users]    Script Date: 01.06.2021 10:22:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[ID] [int] NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsersDate]    Script Date: 01.06.2021 10:22:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersDate](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NULL,
 CONSTRAINT [PK_UsersDate] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UsersDate]  WITH CHECK ADD  CONSTRAINT [FK_UsersDate_users] FOREIGN KEY([ID])
REFERENCES [dbo].[users] ([ID])
GO
ALTER TABLE [dbo].[UsersDate] CHECK CONSTRAINT [FK_UsersDate_users]
GO
