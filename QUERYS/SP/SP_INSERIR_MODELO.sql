-- =============================================
-- Author:		<CHARLES GUEDES>
-- Create date: <18/04/2014>
-- Description:	<PROCEDURE PARA INSERIR DADOS NA TABELA>
-- =============================================
CREATE PROCEDURE SP_INSERIR_MODELO
@DESCRICAO varchar(100),
@ID_FABRICANTE INT
AS
BEGIN
INSERT INTO TB_MODELO(DESCRICAO,ID_FABRICANTE)
VALUES(@DESCRICAO,@ID_FABRICANTE)
END

--NOVO
--'FIAT'
EXEC SP_INSERIR_MODELO 'NOVO MODELO',1
EXEC SP_INSERIR_MODELO 'PALIO',1
EXEC SP_INSERIR_MODELO 'UNO', 1
EXEC SP_INSERIR_MODELO 'TIPO', 1
EXEC SP_INSERIR_MODELO 'TEMPRA',1
EXEC SP_INSERIR_MODELO 'STILO',1
EXEC SP_INSERIR_MODELO 'MAREA',1
EXEC SP_INSERIR_MODELO 'PUNTO',1
EXEC SP_INSERIR_MODELO 'DOBRO',1
EXEC SP_INSERIR_MODELO 'LINEA',1
--'VOLKSWAGEN'
EXEC SP_INSERIR_MODELO 'NOVO MODELO',2
EXEC SP_INSERIR_MODELO 'AMAROK',2
EXEC SP_INSERIR_MODELO 'GOL',2
EXEC SP_INSERIR_MODELO 'APOLLO',2
EXEC SP_INSERIR_MODELO 'SANTANA',2
EXEC SP_INSERIR_MODELO 'PARATI',2
EXEC SP_INSERIR_MODELO 'BORA',2
EXEC SP_INSERIR_MODELO 'DOBRO',2
EXEC SP_INSERIR_MODELO 'CROSSFOX',2
EXEC SP_INSERIR_MODELO 'FOX',2
EXEC SP_INSERIR_MODELO 'GOLF',2
EXEC SP_INSERIR_MODELO 'JETA',2
EXEC SP_INSERIR_MODELO 'LOGUS',2
EXEC SP_INSERIR_MODELO 'PASSAT',2
EXEC SP_INSERIR_MODELO 'QUANTUM',2
EXEC SP_INSERIR_MODELO 'SAVEIRO',2
EXEC SP_INSERIR_MODELO 'SPACE CROSS',2
EXEC SP_INSERIR_MODELO 'SPACEFOX',2
EXEC SP_INSERIR_MODELO 'VOYAGE',2
--'CHEVROLET'
EXEC SP_INSERIR_MODELO 'NOVO MODELO',3
EXEC SP_INSERIR_MODELO 'AGILE',3
EXEC SP_INSERIR_MODELO 'ONIX',3
EXEC SP_INSERIR_MODELO 'ASTRA',3
EXEC SP_INSERIR_MODELO 'BLAZER',3
EXEC SP_INSERIR_MODELO 'CAPTIVA',3
EXEC SP_INSERIR_MODELO 'CELTA',3
EXEC SP_INSERIR_MODELO 'CLASSIC',3
EXEC SP_INSERIR_MODELO 'COBALT',3
EXEC SP_INSERIR_MODELO 'CORSA',3
EXEC SP_INSERIR_MODELO 'KADETT',3
EXEC SP_INSERIR_MODELO 'IPANEMA',3
EXEC SP_INSERIR_MODELO 'MERIVA',3
EXEC SP_INSERIR_MODELO 'MONTANA',3
EXEC SP_INSERIR_MODELO 'MONZA',3
EXEC SP_INSERIR_MODELO 'OMEGA',3
EXEC SP_INSERIR_MODELO 'OPALA',3
EXEC SP_INSERIR_MODELO 'PRISMA',3
EXEC SP_INSERIR_MODELO 'PICKUP CORSA',3
EXEC SP_INSERIR_MODELO 'S10',3
EXEC SP_INSERIR_MODELO 'SILVERADO',3
EXEC SP_INSERIR_MODELO 'SONIC',3
EXEC SP_INSERIR_MODELO 'SPIN',3
EXEC SP_INSERIR_MODELO 'VECTRA',3
EXEC SP_INSERIR_MODELO 'ZAFIRA',3
--'FORD'
EXEC SP_INSERIR_MODELO 'NOVO MODELO',4
EXEC SP_INSERIR_MODELO 'BELINA',4
EXEC SP_INSERIR_MODELO 'CORCEL',4
EXEC SP_INSERIR_MODELO 'ECOSPORT',4
EXEC SP_INSERIR_MODELO 'ESCORT',4
EXEC SP_INSERIR_MODELO 'FIESTA',4
EXEC SP_INSERIR_MODELO 'FOCUS',4
EXEC SP_INSERIR_MODELO 'FUSION',4
EXEC SP_INSERIR_MODELO 'KA',4
EXEC SP_INSERIR_MODELO 'MONDEO',4
EXEC SP_INSERIR_MODELO 'PAMPA',4
EXEC SP_INSERIR_MODELO 'RANGER',4
EXEC SP_INSERIR_MODELO 'VERONA',4
--'PEGEOUT'
EXEC SP_INSERIR_MODELO 'NOVO MODELO',5
EXEC SP_INSERIR_MODELO '206',5
EXEC SP_INSERIR_MODELO '207',5
EXEC SP_INSERIR_MODELO '208',5
EXEC SP_INSERIR_MODELO '306',5
EXEC SP_INSERIR_MODELO '307',5
EXEC SP_INSERIR_MODELO '308',5
--'CITROEN'
EXEC SP_INSERIR_MODELO 'NOVO MODELO',6
EXEC SP_INSERIR_MODELO 'C3',6
EXEC SP_INSERIR_MODELO 'C4',6
--'HONDA'
EXEC SP_INSERIR_MODELO 'NOVO MODELO',7
EXEC SP_INSERIR_MODELO 'ACCORD',7
EXEC SP_INSERIR_MODELO 'FIT',7
EXEC SP_INSERIR_MODELO 'CITY',7
EXEC SP_INSERIR_MODELO 'CIVIC',7
--'NISSAN'
EXEC SP_INSERIR_MODELO 'NOVO MODELO',8
EXEC SP_INSERIR_MODELO 'LIVINA',8
--'HYNDAI'
EXEC SP_INSERIR_MODELO 'NOVO MODELO',9
EXEC SP_INSERIR_MODELO 'ELANTRA',9
EXEC SP_INSERIR_MODELO 'AZERA',9
EXEC SP_INSERIR_MODELO 'SANTA FE',9
EXEC SP_INSERIR_MODELO 'HB20',9
EXEC SP_INSERIR_MODELO 'i30',9
EXEC SP_INSERIR_MODELO 'iX35',9
EXEC SP_INSERIR_MODELO 'TUCSON',9
EXEC SP_INSERIR_MODELO 'SONATA',9
EXEC SP_INSERIR_MODELO 'VELOSTER',9
EXEC SP_INSERIR_MODELO 'VERA CRUZ',9
--'TOYOTA'
EXEC SP_INSERIR_MODELO 'NOVO MODELO',10
EXEC SP_INSERIR_MODELO 'COROLLA',10
EXEC SP_INSERIR_MODELO 'ETIOS',10
EXEC SP_INSERIR_MODELO 'FIELDER',10
EXEC SP_INSERIR_MODELO 'HILUX',10
--'CHERY'
EXEC SP_INSERIR_MODELO 'NOVO MODELO',11
EXEC SP_INSERIR_MODELO 'CIELO',11
EXEC SP_INSERIR_MODELO 'CELER',11
EXEC SP_INSERIR_MODELO 'FACE',11
EXEC SP_INSERIR_MODELO 'QQ',11
EXEC SP_INSERIR_MODELO 'S-18',11
EXEC SP_INSERIR_MODELO 'TIGGO',11
--'RENAULT'
EXEC SP_INSERIR_MODELO 'NOVO MODELO',12
EXEC SP_INSERIR_MODELO 'CLIO',12
EXEC SP_INSERIR_MODELO 'DUSTER',12
EXEC SP_INSERIR_MODELO 'FLUENCE',12
EXEC SP_INSERIR_MODELO 'KANGOO',12
EXEC SP_INSERIR_MODELO 'LAGUNA',12
EXEC SP_INSERIR_MODELO 'LOGAN',12
EXEC SP_INSERIR_MODELO 'MEGANE',12
EXEC SP_INSERIR_MODELO 'SCENIC',12
EXEC SP_INSERIR_MODELO 'SANDERO',12
EXEC SP_INSERIR_MODELO 'TWINGO',12

