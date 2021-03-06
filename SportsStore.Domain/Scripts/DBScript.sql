USE [SportsStore]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 02/11/2016 14:30:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
	[Price] [decimal](16, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Products] ON
INSERT [dbo].[Products] ([ProductID], [Name], [Description], [Category], [Price]) VALUES (1, N'Kayak', N'A Boat for one person', N'Watersports', CAST(275.00 AS Decimal(16, 2)))
INSERT [dbo].[Products] ([ProductID], [Name], [Description], [Category], [Price]) VALUES (2, N'Lifejacket', N'Protective and fashionable', N'Watersports', CAST(48.95 AS Decimal(16, 2)))
INSERT [dbo].[Products] ([ProductID], [Name], [Description], [Category], [Price]) VALUES (3, N'Soccer Ball', N'FIFA-approved size and weight', N'Soccer', CAST(19.50 AS Decimal(16, 2)))
INSERT [dbo].[Products] ([ProductID], [Name], [Description], [Category], [Price]) VALUES (4, N'Corner Flags', N'Give your playing field a professional touch', N'Soccer', CAST(34.95 AS Decimal(16, 2)))
INSERT [dbo].[Products] ([ProductID], [Name], [Description], [Category], [Price]) VALUES (5, N'Stadium', N'Flat-packed, 35,000-seat stadium', N'Soccer', CAST(79500.00 AS Decimal(16, 2)))
INSERT [dbo].[Products] ([ProductID], [Name], [Description], [Category], [Price]) VALUES (6, N'Thinking Cap', N'Improve your brain efficiency by 75%', N'Chess', CAST(16.00 AS Decimal(16, 2)))
INSERT [dbo].[Products] ([ProductID], [Name], [Description], [Category], [Price]) VALUES (7, N'Unsteady Chair', N'Secretly give your opponent a disadvantage', N'Chess', CAST(29.95 AS Decimal(16, 2)))
INSERT [dbo].[Products] ([ProductID], [Name], [Description], [Category], [Price]) VALUES (8, N'Human chess Board', N'A fun game for the family', N'Chess', CAST(75.00 AS Decimal(16, 2)))
INSERT [dbo].[Products] ([ProductID], [Name], [Description], [Category], [Price]) VALUES (9, N'Bling-Bling King', N'Gold-plated, diamond-studded King', N'Chess', CAST(1200.00 AS Decimal(16, 2)))
SET IDENTITY_INSERT [dbo].[Products] OFF
