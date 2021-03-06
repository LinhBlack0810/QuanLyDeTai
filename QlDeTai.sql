USE [QLDeTai]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 12/26/2021 12:41:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[username] [nvarchar](50) NOT NULL,
	[pass] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuDe]    Script Date: 12/26/2021 12:41:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuDe](
	[macd] [nvarchar](50) NOT NULL,
	[tencd] [nvarchar](50) NULL,
 CONSTRAINT [PK_ChuDe] PRIMARY KEY CLUSTERED 
(
	[macd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeTai]    Script Date: 12/26/2021 12:41:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeTai](
	[madt] [nvarchar](50) NOT NULL,
	[macd] [nvarchar](50) NOT NULL,
	[tendt] [nvarchar](50) NULL,
	[ngaybd] [date] NULL,
	[ngaykt] [date] NULL,
 CONSTRAINT [PK_DeTai] PRIMARY KEY CLUSTERED 
(
	[madt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Admin] ([username], [pass]) VALUES (N'admin', N'12345')
GO
INSERT [dbo].[ChuDe] ([macd], [tencd]) VALUES (N'CD01', N'Khoa Học')
INSERT [dbo].[ChuDe] ([macd], [tencd]) VALUES (N'CD02', N'Toán Học')
INSERT [dbo].[ChuDe] ([macd], [tencd]) VALUES (N'CD03', N'Tin Học')
INSERT [dbo].[ChuDe] ([macd], [tencd]) VALUES (N'CD04', N'Văn Học')
INSERT [dbo].[ChuDe] ([macd], [tencd]) VALUES (N'CD05', N'Báo Chí')
INSERT [dbo].[ChuDe] ([macd], [tencd]) VALUES (N'CD06', N'Sử Học')
INSERT [dbo].[ChuDe] ([macd], [tencd]) VALUES (N'CD07', N'Thiên Văn')
INSERT [dbo].[ChuDe] ([macd], [tencd]) VALUES (N'CD10', N'TT')
GO
INSERT [dbo].[DeTai] ([madt], [macd], [tendt], [ngaybd], [ngaykt]) VALUES (N'DT01', N'CD02', N'Bảo Vệ Môi Trường', CAST(N'2021-12-20' AS Date), CAST(N'2022-05-05' AS Date))
INSERT [dbo].[DeTai] ([madt], [macd], [tendt], [ngaybd], [ngaykt]) VALUES (N'DT02', N'CD05', N'Toán Học Đại Cương', CAST(N'2021-12-15' AS Date), CAST(N'2022-05-05' AS Date))
GO
ALTER TABLE [dbo].[DeTai]  WITH CHECK ADD  CONSTRAINT [FK_DeTai_ChuDe] FOREIGN KEY([macd])
REFERENCES [dbo].[ChuDe] ([macd])
GO
ALTER TABLE [dbo].[DeTai] CHECK CONSTRAINT [FK_DeTai_ChuDe]
GO
