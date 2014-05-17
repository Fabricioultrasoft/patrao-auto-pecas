-- =============================================
-- Author:		<CHARLES GUEDES>
-- Create date: <19/04/2014>
-- Description:	<PROCEDURE PARA INSERIR DADOS NA TABELA>
-- =============================================
CREATE PROCEDURE SP_DELETE_PRODUTO
@ID INT
AS
BEGIN
DELETE FROM TB_PRODUTO WHERE ID = @ID
END