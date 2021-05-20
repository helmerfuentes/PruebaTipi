/*
 Navicat Premium Data Transfer

 Source Server         : Sql Server
 Source Server Type    : SQL Server
 Source Server Version : 15002000
 Source Host           : localhost:1433
 Source Catalog        : tipitest
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 15002000
 File Encoding         : 65001

 Date: 20/05/2021 00:29:35
*/


-- ----------------------------
-- Table structure for Person
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Person]') AND type IN ('U'))
	DROP TABLE [dbo].[Person]
GO

CREATE TABLE [dbo].[Person] (
  [ID] int  NOT NULL,
  [NOMBRE] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [APELLIDO] varchar(50) COLLATE Modern_Spanish_CI_AS  NOT NULL,
  [EDAD] int  NULL
)
GO

ALTER TABLE [dbo].[Person] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Person
-- ----------------------------
INSERT INTO [dbo].[Person] ([ID], [NOMBRE], [APELLIDO], [EDAD]) VALUES (N'1', N'HELMER', N'FUENTES', N'12')
GO

INSERT INTO [dbo].[Person] ([ID], [NOMBRE], [APELLIDO], [EDAD]) VALUES (N'2', N'Fu', N'FUENTES', N'12')
GO

INSERT INTO [dbo].[Person] ([ID], [NOMBRE], [APELLIDO], [EDAD]) VALUES (N'4', N'USER 4', N'USUARIO 4', N'13')
GO

INSERT INTO [dbo].[Person] ([ID], [NOMBRE], [APELLIDO], [EDAD]) VALUES (N'5', N'USER 5', N'USUARIO 5', N'14')
GO

INSERT INTO [dbo].[Person] ([ID], [NOMBRE], [APELLIDO], [EDAD]) VALUES (N'6', N'USER 6', N'USUARIO 6', N'14')
GO

INSERT INTO [dbo].[Person] ([ID], [NOMBRE], [APELLIDO], [EDAD]) VALUES (N'7', N'USER 7', N'USUARIO 6', N'194')
GO

INSERT INTO [dbo].[Person] ([ID], [NOMBRE], [APELLIDO], [EDAD]) VALUES (N'8', N'USERDEL', N'USUARIODEL', N'199')
GO


-- ----------------------------
-- Primary Key structure for table Person
-- ----------------------------
ALTER TABLE [dbo].[Person] ADD CONSTRAINT [PK__Person__3214EC277D008B48] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

