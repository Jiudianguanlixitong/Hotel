/*    ==脚本参数==

    源服务器版本 : SQL Server 2017 (14.0.1000)
    源数据库引擎版本 : Microsoft SQL Server Enterprise Edition
    源数据库引擎类型 : 独立的 SQL Server

    目标服务器版本 : SQL Server 2017
    目标数据库引擎版本 : Microsoft SQL Server Standard Edition
    目标数据库引擎类型 : 独立的 SQL Server
*/
USE [Hotel]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 2017/12/28 下午 9:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[id] [int] NULL,
	[in_day] [date] NULL,
	[out_day] [date] NULL,
	[room_id] [int] NULL,
	[kind] [varchar](20) NOT NULL,
	[request] [varchar](140) NULL,
	[price] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 2017/12/28 下午 9:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[username] [varchar](20) NOT NULL,
	[pass] [varchar](20) NOT NULL,
	[id] [int] NOT NULL,
	[name] [varchar](20) NOT NULL,
	[gender] [varchar](2) NULL,
 CONSTRAINT [PK__Customer__F3DBC5733D5E1FD2] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pre_Book]    Script Date: 2017/12/28 下午 9:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pre_Book](
	[id] [int] NULL,
	[in_day] [date] NOT NULL,
	[out_day] [date] NOT NULL,
	[kind] [varchar](20) NOT NULL,
	[request] [varchar](140) NULL,
	[price] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room_Info]    Script Date: 2017/12/28 下午 9:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room_Info](
	[room_id] [int] NOT NULL,
	[floors] [int] NOT NULL,
	[face] [varchar](4) NOT NULL,
	[feature] [varchar](140) NULL,
	[kind] [varchar](20) NOT NULL,
	[in_day] [date] NOT NULL,
	[out_day] [date] NOT NULL,
	[tidy] [varchar](20) NOT NULL,
	[book_status] [varchar](20) NOT NULL,
 CONSTRAINT [PK__Room_Inf__19675A8A5535A963] PRIMARY KEY CLUSTERED 
(
	[room_id] ASC,
	[in_day] ASC,
	[out_day] ASC,
	[book_status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room_Type]    Script Date: 2017/12/28 下午 9:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room_Type](
	[kind] [varchar](20) NOT NULL,
	[price] [int] NOT NULL,
	[free] [int] NOT NULL,
 CONSTRAINT [PK__Room_Typ__ED32B9605165187F] PRIMARY KEY CLUSTERED 
(
	[kind] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 2017/12/28 下午 9:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[username] [varchar](20) NOT NULL,
	[pass] [varchar](20) NOT NULL,
	[position] [varchar](10) NOT NULL,
 CONSTRAINT [PK__Staff__F3DBC573398D8EEE] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Customer] ([username], [pass], [id], [name], [gender]) VALUES (N'C001', N'C001', 123456, N'李子健', N'男')
INSERT [dbo].[Customer] ([username], [pass], [id], [name], [gender]) VALUES (N'C002', N'C002', 12345, N'customer2', NULL)
INSERT [dbo].[Customer] ([username], [pass], [id], [name], [gender]) VALUES (N'C003', N'C003', 54321, N'customer3', NULL)
INSERT [dbo].[Customer] ([username], [pass], [id], [name], [gender]) VALUES (N'C004', N'C004', 32541, N'customer4', NULL)
INSERT [dbo].[Customer] ([username], [pass], [id], [name], [gender]) VALUES (N'C005', N'C005', 98653, N'customer5', NULL)
INSERT [dbo].[Room_Info] ([room_id], [floors], [face], [feature], [kind], [in_day], [out_day], [tidy], [book_status]) VALUES (101, 1, N'东', N'可住一人', N'单人房', CAST(N'1753-01-01' AS Date), CAST(N'1753-01-01' AS Date), N'整洁', N'可预订')
INSERT [dbo].[Room_Info] ([room_id], [floors], [face], [feature], [kind], [in_day], [out_day], [tidy], [book_status]) VALUES (102, 1, N'东', N'可住一人', N'单人房', CAST(N'1753-01-01' AS Date), CAST(N'1753-01-01' AS Date), N'整洁', N'可预订')
INSERT [dbo].[Room_Info] ([room_id], [floors], [face], [feature], [kind], [in_day], [out_day], [tidy], [book_status]) VALUES (102, 1, N'东', N'可住一人', N'单人房', CAST(N'2017-02-15' AS Date), CAST(N'2017-02-17' AS Date), N'整洁', N'不可预订')
INSERT [dbo].[Room_Info] ([room_id], [floors], [face], [feature], [kind], [in_day], [out_day], [tidy], [book_status]) VALUES (201, 2, N'南', N'可住两人', N'双人房', CAST(N'2017-02-09' AS Date), CAST(N'2017-02-11' AS Date), N'整洁', N'不可预订')
INSERT [dbo].[Room_Info] ([room_id], [floors], [face], [feature], [kind], [in_day], [out_day], [tidy], [book_status]) VALUES (301, 3, N'西', N'可住三人', N'家庭房', CAST(N'2017-03-05' AS Date), CAST(N'2017-03-06' AS Date), N'整洁', N'不可预订')
INSERT [dbo].[Room_Info] ([room_id], [floors], [face], [feature], [kind], [in_day], [out_day], [tidy], [book_status]) VALUES (302, 3, N'西', N'可住三人', N'家庭房', CAST(N'1753-01-01' AS Date), CAST(N'1753-01-01' AS Date), N'整洁', N'可预订')
INSERT [dbo].[Room_Info] ([room_id], [floors], [face], [feature], [kind], [in_day], [out_day], [tidy], [book_status]) VALUES (401, 4, N'北', N'可住四人', N'豪华房', CAST(N'1753-01-01' AS Date), CAST(N'1753-01-01' AS Date), N'整洁', N'可预订')
INSERT [dbo].[Room_Info] ([room_id], [floors], [face], [feature], [kind], [in_day], [out_day], [tidy], [book_status]) VALUES (402, 4, N'东', N'可住四人', N'豪华房', CAST(N'1753-01-01' AS Date), CAST(N'1753-01-01' AS Date), N'整洁', N'可预订')
INSERT [dbo].[Room_Type] ([kind], [price], [free]) VALUES (N'单人房', 100, 10)
INSERT [dbo].[Room_Type] ([kind], [price], [free]) VALUES (N'豪华房', 400, 10)
INSERT [dbo].[Room_Type] ([kind], [price], [free]) VALUES (N'家庭房', 200, 10)
INSERT [dbo].[Room_Type] ([kind], [price], [free]) VALUES (N'双人房', 150, 10)
/****** Object:  Index [UQ__Customer__3213E83E403A8C7D]    Script Date: 2017/12/28 下午 9:20:01 ******/
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [UQ__Customer__3213E83E403A8C7D] UNIQUE NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK__Bill__id__47DBAE45] FOREIGN KEY([id])
REFERENCES [dbo].[Customer] ([id])
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK__Bill__id__47DBAE45]
GO
ALTER TABLE [dbo].[Pre_Book]  WITH CHECK ADD  CONSTRAINT [FK__Pre_Book__id__49C3F6B7] FOREIGN KEY([id])
REFERENCES [dbo].[Customer] ([id])
GO
ALTER TABLE [dbo].[Pre_Book] CHECK CONSTRAINT [FK__Pre_Book__id__49C3F6B7]
GO
ALTER TABLE [dbo].[Room_Info]  WITH CHECK ADD  CONSTRAINT [FK__Room_Info__kind__571DF1D5] FOREIGN KEY([kind])
REFERENCES [dbo].[Room_Type] ([kind])
GO
ALTER TABLE [dbo].[Room_Info] CHECK CONSTRAINT [FK__Room_Info__kind__571DF1D5]
GO
