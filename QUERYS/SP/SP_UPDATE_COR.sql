-- =============================================
-- Author:		<CHARLES GUEDES>
-- Create date: <19/04/2014>
-- Description:	<PROCEDURE PARA INSERIR DADOS NA TABELA>
-- =============================================
CREATE PROCEDURE SP_UPDATE_COR
@ID INT,
@DESCRICAO VARCHAR(100)
AS
BEGIN

UPDATE TB_COR SET DESCRICAO = @DESCRICAO WHERE ID = @ID   

END