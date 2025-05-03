USE [MyDB]
GO

/****** Object:  Table [sales].[orders]    Script Date: 5/4/2025 12:53:52 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [sales].[orders](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[customer_id] [int] NULL,
	[store_id] [int] NOT NULL,
	[order_status] [int] NOT NULL,
	[order_date] [date] NOT NULL,
	[required_date] [date] NOT NULL,
	[shipped_date] [date] NOT NULL,
	[staff_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [sales].[orders]  WITH CHECK ADD FOREIGN KEY([customer_id])
REFERENCES [sales].[customers] ([customer_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [sales].[orders]  WITH CHECK ADD FOREIGN KEY([staff_id])
REFERENCES [sales].[staffs] ([staff_id])
GO

ALTER TABLE [sales].[orders]  WITH CHECK ADD FOREIGN KEY([store_id])
REFERENCES [sales].[stores] ([store_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO


