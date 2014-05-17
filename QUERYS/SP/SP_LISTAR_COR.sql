

-- =============================================
-- Author:		<CHARLES GUEDES>
-- Create date: <19/04/2014>
-- Description:	<PROCEDURE PARA INSERIR DADOS NA TABELA>
-- =============================================
CREATE PROCEDURE SP_LISTAR_COR
AS
BEGIN

SELECT * FROM TB_COR ORDER BY DESCRICAO

END