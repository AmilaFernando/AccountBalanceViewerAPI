USE [AccountReports]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 3/24/2022 12:54:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountBalance]    Script Date: 3/24/2022 12:54:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountBalance](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Month] [int] NOT NULL,
	[Year] [int] NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[AccountTypeId] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_AccountBalance] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 3/24/2022 12:54:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 3/24/2022 12:54:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 3/24/2022 12:54:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 3/24/2022 12:54:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 3/24/2022 12:54:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 3/24/2022 12:54:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 3/24/2022 12:54:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220315120155_InitialCreate', N'6.0.3')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220316111009_Initial', N'6.0.3')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220317150553_AddAuthentication', N'6.0.3')
GO
SET IDENTITY_INSERT [dbo].[AccountBalance] ON 
GO
INSERT [dbo].[AccountBalance] ([Id], [Month], [Year], [Amount], [AccountTypeId], [CreatedDate]) VALUES (1, 1, 2022, CAST(4600.50 AS Decimal(18, 2)), 1, CAST(N'2022-03-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[AccountBalance] ([Id], [Month], [Year], [Amount], [AccountTypeId], [CreatedDate]) VALUES (2, 1, 2022, CAST(12500.49 AS Decimal(18, 2)), 2, CAST(N'2022-03-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[AccountBalance] ([Id], [Month], [Year], [Amount], [AccountTypeId], [CreatedDate]) VALUES (3, 1, 2022, CAST(10000.00 AS Decimal(18, 2)), 3, CAST(N'2022-03-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[AccountBalance] ([Id], [Month], [Year], [Amount], [AccountTypeId], [CreatedDate]) VALUES (4, 1, 2022, CAST(24000.00 AS Decimal(18, 2)), 4, CAST(N'2022-03-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[AccountBalance] ([Id], [Month], [Year], [Amount], [AccountTypeId], [CreatedDate]) VALUES (5, 1, 2022, CAST(2000.00 AS Decimal(18, 2)), 5, CAST(N'2022-03-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[AccountBalance] ([Id], [Month], [Year], [Amount], [AccountTypeId], [CreatedDate]) VALUES (6, 3, 2022, CAST(31000.10 AS Decimal(18, 2)), 1, CAST(N'2022-03-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[AccountBalance] ([Id], [Month], [Year], [Amount], [AccountTypeId], [CreatedDate]) VALUES (7, 3, 2022, CAST(9800.00 AS Decimal(18, 2)), 2, CAST(N'2022-03-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[AccountBalance] ([Id], [Month], [Year], [Amount], [AccountTypeId], [CreatedDate]) VALUES (8, 3, 2022, CAST(24000.00 AS Decimal(18, 2)), 3, CAST(N'2022-03-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[AccountBalance] ([Id], [Month], [Year], [Amount], [AccountTypeId], [CreatedDate]) VALUES (9, 3, 2022, CAST(-10000.00 AS Decimal(18, 2)), 4, CAST(N'2022-03-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[AccountBalance] ([Id], [Month], [Year], [Amount], [AccountTypeId], [CreatedDate]) VALUES (10, 3, 2022, CAST(11000.00 AS Decimal(18, 2)), 5, CAST(N'2022-03-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[AccountBalance] ([Id], [Month], [Year], [Amount], [AccountTypeId], [CreatedDate]) VALUES (11, 2, 2022, CAST(35000.00 AS Decimal(18, 2)), 1, CAST(N'2022-03-21T17:52:53.5407924' AS DateTime2))
GO
INSERT [dbo].[AccountBalance] ([Id], [Month], [Year], [Amount], [AccountTypeId], [CreatedDate]) VALUES (12, 2, 2022, CAST(50000.00 AS Decimal(18, 2)), 2, CAST(N'2022-03-21T17:52:53.5408461' AS DateTime2))
GO
INSERT [dbo].[AccountBalance] ([Id], [Month], [Year], [Amount], [AccountTypeId], [CreatedDate]) VALUES (13, 2, 2022, CAST(10000.00 AS Decimal(18, 2)), 3, CAST(N'2022-03-21T17:52:53.5408471' AS DateTime2))
GO
INSERT [dbo].[AccountBalance] ([Id], [Month], [Year], [Amount], [AccountTypeId], [CreatedDate]) VALUES (14, 2, 2022, CAST(16000.88 AS Decimal(18, 2)), 4, CAST(N'2022-03-21T17:52:53.5408476' AS DateTime2))
GO
INSERT [dbo].[AccountBalance] ([Id], [Month], [Year], [Amount], [AccountTypeId], [CreatedDate]) VALUES (15, 2, 2022, CAST(2000.00 AS Decimal(18, 2)), 5, CAST(N'2022-03-21T17:52:53.5408482' AS DateTime2))
GO
INSERT [dbo].[AccountBalance] ([Id], [Month], [Year], [Amount], [AccountTypeId], [CreatedDate]) VALUES (16, 12, 2021, CAST(12200.00 AS Decimal(18, 2)), 1, CAST(N'2022-03-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[AccountBalance] ([Id], [Month], [Year], [Amount], [AccountTypeId], [CreatedDate]) VALUES (17, 12, 2021, CAST(47000.00 AS Decimal(18, 2)), 2, CAST(N'2022-03-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[AccountBalance] ([Id], [Month], [Year], [Amount], [AccountTypeId], [CreatedDate]) VALUES (18, 12, 2021, CAST(8222.00 AS Decimal(18, 2)), 3, CAST(N'2022-03-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[AccountBalance] ([Id], [Month], [Year], [Amount], [AccountTypeId], [CreatedDate]) VALUES (19, 12, 2021, CAST(93300.00 AS Decimal(18, 2)), 4, CAST(N'2022-03-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[AccountBalance] ([Id], [Month], [Year], [Amount], [AccountTypeId], [CreatedDate]) VALUES (20, 12, 2021, CAST(10000.00 AS Decimal(18, 2)), 5, CAST(N'2022-03-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[AccountBalance] ([Id], [Month], [Year], [Amount], [AccountTypeId], [CreatedDate]) VALUES (21, 11, 2021, CAST(2100.50 AS Decimal(18, 2)), 1, CAST(N'2022-03-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[AccountBalance] ([Id], [Month], [Year], [Amount], [AccountTypeId], [CreatedDate]) VALUES (22, 11, 2021, CAST(22500.49 AS Decimal(18, 2)), 2, CAST(N'2022-03-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[AccountBalance] ([Id], [Month], [Year], [Amount], [AccountTypeId], [CreatedDate]) VALUES (23, 11, 2021, CAST(40000.00 AS Decimal(18, 2)), 3, CAST(N'2022-03-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[AccountBalance] ([Id], [Month], [Year], [Amount], [AccountTypeId], [CreatedDate]) VALUES (24, 11, 2021, CAST(-800.00 AS Decimal(18, 2)), 4, CAST(N'2022-03-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[AccountBalance] ([Id], [Month], [Year], [Amount], [AccountTypeId], [CreatedDate]) VALUES (25, 11, 2021, CAST(27000.00 AS Decimal(18, 2)), 5, CAST(N'2022-03-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[AccountBalance] ([Id], [Month], [Year], [Amount], [AccountTypeId], [CreatedDate]) VALUES (26, 10, 2021, CAST(40000.50 AS Decimal(18, 2)), 1, CAST(N'2022-03-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[AccountBalance] ([Id], [Month], [Year], [Amount], [AccountTypeId], [CreatedDate]) VALUES (27, 10, 2021, CAST(22500.49 AS Decimal(18, 2)), 2, CAST(N'2022-03-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[AccountBalance] ([Id], [Month], [Year], [Amount], [AccountTypeId], [CreatedDate]) VALUES (28, 10, 2021, CAST(800.00 AS Decimal(18, 2)), 3, CAST(N'2022-03-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[AccountBalance] ([Id], [Month], [Year], [Amount], [AccountTypeId], [CreatedDate]) VALUES (29, 10, 2021, CAST(-27000.00 AS Decimal(18, 2)), 4, CAST(N'2022-03-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[AccountBalance] ([Id], [Month], [Year], [Amount], [AccountTypeId], [CreatedDate]) VALUES (30, 10, 2021, CAST(14000.00 AS Decimal(18, 2)), 5, CAST(N'2022-03-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[AccountBalance] ([Id], [Month], [Year], [Amount], [AccountTypeId], [CreatedDate]) VALUES (31, 9, 2021, CAST(40000.50 AS Decimal(18, 2)), 1, CAST(N'2022-03-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[AccountBalance] ([Id], [Month], [Year], [Amount], [AccountTypeId], [CreatedDate]) VALUES (32, 9, 2021, CAST(40000.49 AS Decimal(18, 2)), 2, CAST(N'2022-03-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[AccountBalance] ([Id], [Month], [Year], [Amount], [AccountTypeId], [CreatedDate]) VALUES (33, 9, 2021, CAST(4333.32 AS Decimal(18, 2)), 3, CAST(N'2022-03-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[AccountBalance] ([Id], [Month], [Year], [Amount], [AccountTypeId], [CreatedDate]) VALUES (34, 9, 2021, CAST(2111.65 AS Decimal(18, 2)), 4, CAST(N'2022-03-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[AccountBalance] ([Id], [Month], [Year], [Amount], [AccountTypeId], [CreatedDate]) VALUES (35, 9, 2021, CAST(3223.00 AS Decimal(18, 2)), 5, CAST(N'2022-03-15T00:00:00.0000000' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[AccountBalance] OFF
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'439fefdb-bd33-4c20-829f-0425f5a0b992', N'User', N'USER', N'cf43ede2-6972-4a2e-a1aa-a7b1c8d0892d')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'65cb5e51-c2a2-4df6-b1dc-3aa7c11b98c7', N'Admin', N'ADMIN', N'd57dd39b-34b7-436b-b34e-139bf3cceb37')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0531fdbc-2f67-4ea7-8adf-1fd2d9c4fdaa', N'439fefdb-bd33-4c20-829f-0425f5a0b992')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'42cf56c2-9d9d-4b9d-a83e-dddf58b8bf32', N'439fefdb-bd33-4c20-829f-0425f5a0b992')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0531fdbc-2f67-4ea7-8adf-1fd2d9c4fdaa', N'65cb5e51-c2a2-4df6-b1dc-3aa7c11b98c7')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'0531fdbc-2f67-4ea7-8adf-1fd2d9c4fdaa', N'Admin', N'ADMIN', N'Admin@gmail.com', N'ADMIN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEN6qdt+Qw4WpIs8vcwey+zbdHpqQnhLqisdY3fsB+T/ZioUgCURVdivs+BjdPY282Q==', N'BJDL3FWSFPQ7N54PAQH4I4OJU4NZBCWA', N'19f77ae9-04a2-4cfe-b430-abbf00596a3d', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'42cf56c2-9d9d-4b9d-a83e-dddf58b8bf32', N'Amila', N'AMILA', N'amila@gmail.com', N'AMILA@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEFHVPyCHpLsZLSRUTLPbgW6i1rXxOUqWja5h45t6ZwGKOpugrRqkeivyXhv+8+mHtg==', N'KCRW2JNNT77YURVJJNGSLW2NJ2M35KMD', N'b2035f27-48b9-4097-8173-909caf3cce9c', NULL, 0, 0, NULL, 1, 0)
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
