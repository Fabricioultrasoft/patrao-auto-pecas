-- =============================================
-- Author:		<CHARLES GUEDES>
-- Create date: <19/04/2014>
-- Description:	<PROCEDURE PARA INSERIR DADOS NA TABELA>
-- =============================================
CREATE PROCEDURE SP_EXISTS_COR
@DESCRICAO VARCHAR(100)
AS
BEGIN

SELECT COUNT(*) FROM TB_COR WHERE DESCRICAO = @DESCRICAO

END