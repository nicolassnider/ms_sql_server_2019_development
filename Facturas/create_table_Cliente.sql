USE [Facturas]
GO

ALTER TABLE [dbo].[Cliente] DROP CONSTRAINT [CK_edad_mayor_cero]
GO

/****** Object:  Table [dbo].[Cliente]    Script Date: 18/09/2021 17:37:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cliente]') AND type in (N'U'))
DROP TABLE [dbo].[Cliente]
GO

/****** Object:  Table [dbo].[Cliente]    Script Date: 18/09/2021 17:37:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Cliente](
	[dni] [varchar](10) NOT NULL,
	[nombre] [nchar](40) NOT NULL,
	[email] [nchar](25) NULL,
	[edad] [tinyint] NULL,
	[direccion] [varchar](40) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[dni] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_Cliente] UNIQUE NONCLUSTERED 
(
	[dni] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [CK_edad_mayor_cero] CHECK  (([edad]>(0)))
GO

ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [CK_edad_mayor_cero]
GO


