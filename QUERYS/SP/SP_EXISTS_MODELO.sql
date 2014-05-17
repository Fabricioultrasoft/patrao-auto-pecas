-- =============================================
-- Author:		<CHARLES GUEDES>
-- Create date: <21/04/2014>
-- Description:	<PROCEDURE PARA INSERIR DADOS NA TABELA>
-- =============================================
CREATE PROCEDURE SP_EXISTS_MODELO
@ID INT,
@DESCRICAO VARCHAR(100)
AS
BEGIN

SELECT COUNT(*) FROM TB_MODELO WHERE DESCRICAO = @DESCRICAO AND ID_FABRICANTE = @ID

END