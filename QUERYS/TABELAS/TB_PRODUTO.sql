
IF NOT EXISTS(SELECT * FROM sys.objects WHERE name = 'TB_PRODUTO')  


CREATE TABLE [dbo].[TB_PRODUTO](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OBSERVACAO] [varchar](500) NULL,
	[POSICAO_PECA] [varchar](50) NULL,
	[QUANTIDADE] [int] NULL,
	[VALOR_UNITARIO] [decimal](18, 2) NULL,
	[ESTADO_PECA] [varchar](50) NULL,
	[ANO] [int] NULL,
	[ID_ESTOQUE] [int] NOT NULL,
	[ID_FABRICANTE] [int] NOT NULL,
	[ID_DESC_PROD] [int] NOT NULL,
	[ID_COR] [int] NOT NULL,
	[ID_MODELO] [int] NOT NULL,
 CONSTRAINT [PK_TB_PRODUTO] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[TB_PRODUTO]  WITH CHECK ADD  CONSTRAINT [FK_TB_PRODUTO_TB_COR] FOREIGN KEY([ID_COR])
REFERENCES [dbo].[TB_COR] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[TB_PRODUTO] CHECK CONSTRAINT [FK_TB_PRODUTO_TB_COR]
GO

ALTER TABLE [dbo].[TB_PRODUTO]  WITH CHECK ADD  CONSTRAINT [FK_TB_PRODUTO_TB_DESC_PRODUTO] FOREIGN KEY([ID_DESC_PROD])
REFERENCES [dbo].[TB_DESC_PRODUTO] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[TB_PRODUTO] CHECK CONSTRAINT [FK_TB_PRODUTO_TB_DESC_PRODUTO]
GO

ALTER TABLE [dbo].[TB_PRODUTO]  WITH CHECK ADD  CONSTRAINT [FK_TB_PRODUTO_TB_ESTOQUE] FOREIGN KEY([ID_ESTOQUE])
REFERENCES [dbo].[TB_ESTOQUE] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[TB_PRODUTO] CHECK CONSTRAINT [FK_TB_PRODUTO_TB_ESTOQUE]
GO

ALTER TABLE [dbo].[TB_PRODUTO]  WITH CHECK ADD  CONSTRAINT [FK_TB_PRODUTO_TB_FABRICANTE] FOREIGN KEY([ID_FABRICANTE])
REFERENCES [dbo].[TB_FABRICANTE] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[TB_PRODUTO] CHECK CONSTRAINT [FK_TB_PRODUTO_TB_FABRICANTE]
GO





