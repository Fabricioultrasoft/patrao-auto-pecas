
-- =============================================
-- Author:		<CHARLES GUEDES>
-- Create date: <19/04/2014>
-- Description:	<PROCEDURE PARA INSERIR DADOS NA TABELA>
-- =============================================
CREATE PROCEDURE SP_INCLUIR_DESC_PRODUTO
@DESCRICAO varchar(100)
AS
BEGIN
INSERT INTO TB_DESC_PRODUTO(DESCRICAO)
VALUES(@DESCRICAO)
END