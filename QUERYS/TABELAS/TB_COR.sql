IF NOT EXISTS(SELECT * FROM sys.objects WHERE name = 'TB_COR')  

CREATE TABLE [dbo].[TB_COR](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DESCRICAO] [varchar](100) NOT NULL,
 CONSTRAINT [PK_TB_COR] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)
) ON [PRIMARY]

GO