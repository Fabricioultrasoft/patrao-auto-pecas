-- =============================================
-- Author:		<CHARLES GUEDES>
-- Create date: <19/04/2014>
-- Description:	<PROCEDURE PARA INSERIR DADOS NA TABELA>
-- =============================================
CREATE PROCEDURE SP_EXISTS_DESC_PRODUTO
@DESCRICAO VARCHAR(100)
AS
BEGIN

SELECT COUNT(*) FROM TB_DESC_PRODUTO WHERE DESCRICAO = @DESCRICAO

END