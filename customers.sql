USE [MyDB]
GO

/****** Object:  Table [sales].[customers]    Script Date: 5/4/2025 12:52:42 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [sales].[customers](
	[customer_id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [varchar](255) NOT NULL,
	[last_name] [varchar](255) NOT NULL,
	[phone] [varchar](255) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[street] [varchar](255) NOT NULL,
	[city] [varchar](50) NULL,
	[state] [varchar](30) NULL,
	[zip_code] [varchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


