IF NOT EXISTS(SELECT * FROM sys.objects WHERE name = 'BD_PATRAO1')  
CREATE DATABASE BD_PATRAO1
GO

USE BD_PATRAO1
GO

SELECT * FROM sys.databases WHERE name = 'BD_PATRAO1'