USE [MyDB]
GO

/****** Object:  Table [sales].[stores]    Script Date: 5/4/2025 12:54:33 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [sales].[stores](
	[store_id] [int] IDENTITY(1,1) NOT NULL,
	[store_name] [varchar](255) NOT NULL,
	[phone] [varchar](25) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[street] [varchar](255) NOT NULL,
	[city] [varchar](255) NOT NULL,
	[state] [varchar](25) NOT NULL,
	[zip_code] [varchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[store_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


