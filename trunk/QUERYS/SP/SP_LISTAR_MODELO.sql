-- =============================================
-- Author:		<CHARLES GUEDES>
-- Create date: <19/04/2014>
-- Description:	<PROCEDURE PARA INSERIR DADOS NA TABELA>
-- =============================================
CREATE PROCEDURE SP_LISTAR_MODELO
@ID INT
AS
BEGIN

SELECT * FROM TB_MODELO WHERE ID_FABRICANTE = @ID ORDER BY DESCRICAO

END