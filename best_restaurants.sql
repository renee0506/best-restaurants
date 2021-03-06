USE [best_restaurants]
GO
/****** Object:  Table [dbo].[cuisines]    Script Date: 2/23/2017 4:46:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cuisines](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cuisine_name] [varchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[restaurants]    Script Date: 2/23/2017 4:46:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[restaurants](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[restaurant_name] [varchar](255) NULL,
	[cuisine_id] [int] NULL,
	[address] [varchar](255) NULL,
	[open_time] [varchar](255) NULL,
	[close_time] [varchar](255) NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[cuisines] ON 

INSERT [dbo].[cuisines] ([id], [cuisine_name]) VALUES (1, N'French Cuisine')
INSERT [dbo].[cuisines] ([id], [cuisine_name]) VALUES (3, N'Mexican Comida')
SET IDENTITY_INSERT [dbo].[cuisines] OFF
SET IDENTITY_INSERT [dbo].[restaurants] ON 

INSERT [dbo].[restaurants] ([id], [restaurant_name], [cuisine_id], [address], [open_time], [close_time]) VALUES (1, N'Le Fromage', 1, N'444', N'3 PM', N'11 PM')
INSERT [dbo].[restaurants] ([id], [restaurant_name], [cuisine_id], [address], [open_time], [close_time]) VALUES (6, N'Taco Time', 3, N'480 Olympic Way', N'8 AM', N'2 AM')
INSERT [dbo].[restaurants] ([id], [restaurant_name], [cuisine_id], [address], [open_time], [close_time]) VALUES (7, N'Taco Bell', 3, N'2000 Seneca Street', N'8 AM', N'4 AM')
INSERT [dbo].[restaurants] ([id], [restaurant_name], [cuisine_id], [address], [open_time], [close_time]) VALUES (8, N'Le Pichet', 1, N'42 Third Ave.', N'4 PM', N'11 PM')
SET IDENTITY_INSERT [dbo].[restaurants] OFF
