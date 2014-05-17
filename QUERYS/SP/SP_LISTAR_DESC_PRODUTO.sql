

-- =============================================
-- Author:		<CHARLES GUEDES>
-- Create date: <19/04/2014>
-- Description:	<PROCEDURE PARA INSERIR DADOS NA TABELA>
-- =============================================
CREATE PROCEDURE SP_LISTAR_DESC_PRODUTO
AS
BEGIN

SELECT * FROM TB_DESC_PRODUTO ORDER BY DESCRICAO

END