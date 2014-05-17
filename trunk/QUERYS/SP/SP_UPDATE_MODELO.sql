-- =============================================
-- Author:		<CHARLES GUEDES>
-- Create date: <21/04/2014>
-- Description:	<PROCEDURE PARA INSERIR DADOS NA TABELA>
-- =============================================
CREATE PROCEDURE SP_UPDATE_MODELO
@ID INT,
@ID_FABRICANTE INT,
@DESCRICAO VARCHAR(100)
AS
BEGIN

UPDATE TB_MODELO SET DESCRICAO = @DESCRICAO WHERE ID_FABRICANTE = @ID_FABRICANTE AND ID = @ID   

END