-- =============================================
-- Author:		<CHARLES GUEDES>
-- Create date: <23/04/2014>
-- Description:	<PROCEDURE PARA INSERIR DADOS NA TABELA>
-- =============================================
CREATE PROCEDURE SP_UPDATE_PRODUTO
@ID INT,
@OBSERVACAO VARCHAR(100),
@POSICAO_PECA VARCHAR(100),
@QUANTIDADE INT,
@VALOR_UNITARIO DECIMAL(18,2),
@ESTADO_PECA VARCHAR(50),
@ANO INT,
@ID_ESTOQUE INT,
@ID_FABRICANTE INT,
@ID_DESC_PROD INT,
@ID_COR INT,
@ID_MODELO INT 

AS
BEGIN

UPDATE TB_PRODUTO SET OBSERVACAO = @OBSERVACAO, POSICAO_PECA = @POSICAO_PECA,
                      VALOR_UNITARIO = @VALOR_UNITARIO, ESTADO_PECA = @ESTADO_PECA,
                      ANO = @ANO, ID_ESTOQUE = @ID_ESTOQUE, ID_FABRICANTE = @ID_FABRICANTE,
                      ID_DESC_PROD = @ID_DESC_PROD, ID_COR = @ID_COR, ID_MODELO = @ID_MODELO
                      WHERE ID = @ID   

END