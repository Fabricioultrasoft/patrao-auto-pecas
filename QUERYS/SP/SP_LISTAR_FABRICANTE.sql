-- =============================================
-- Author:		<CHARLES GUEDES>
-- Create date: <19/04/2014>
-- Description:	<PROCEDURE PARA INSERIR DADOS NA TABELA>
-- =============================================
CREATE PROCEDURE SP_LISTAR_FABRICANTE
AS
BEGIN

SELECT * FROM TB_FABRICANTE ORDER BY DESCRICAO

END