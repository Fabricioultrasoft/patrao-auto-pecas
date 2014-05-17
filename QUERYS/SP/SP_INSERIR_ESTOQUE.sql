-- =============================================
-- Author:		<CHARLES GUEDES>
-- Create date: <15/04/2014>
-- Description:	<PROCEDURE PARA INSERIR DADOS NA TABELA>
-- =============================================
CREATE PROCEDURE SP_INSERIR_ESTOQUE
@DESCRICAO varchar(100)
AS
BEGIN
INSERT INTO TB_ESTOQUE(DESCRICAO)
VALUES(@DESCRICAO)
END

--TESTE
EXEC SP_INSERIR_ESTOQUE 'LOCAL1'
EXEC SP_INSERIR_ESTOQUE 'LOCAL2'

--SELECT * FROM TB_ESTOQUE 
