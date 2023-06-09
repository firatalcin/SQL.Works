--TABLODAK� VER�LER� GET�RMEK ���N KULLANILIR
SELECT * FROM CUSTOMERS
SELECT ID,CUSTOMERNAME FROM CUSTOMERS

--TABLOYA VER� EKLEME
INSERT INTO CUSTOMERS
(CUSTOMERNAME,CITY,BIRTHDATE,DISTRICT,GENDER)
VALUES ('MEHMET �ZAL','ANTALYA','1990-12-21','ALANYA','E')

USING ETRADE

--TABLODA VER� DE�ER� DE���T�RME
UPDATE CUSTOMERS SET NATION = 'TR' , AGE = DATEDIFF(YEAR,BIRTHDATE,GETDATE())

--TABLODAN VER� S�LMEK ���N KULLANIR
DELETE FROM CUSTOMERS WHERE ID = 1005

--TABLOYU �LK OLU�TURULDU�U HAL�NE D�N��T�RMEK
TRUNCATE TABLE CUSTOMERS

--�ART �RNEKLER�
SELECT * FROM CUSTOMERS WHERE CITY = '�ZM�R'
SELECT * FROM CUSTOMERS WHERE CITY <> '�ZM�R'
SELECT * FROM CUSTOMERS WHERE BIRTHDATE < '19980101'
SELECT * FROM CUSTOMERS WHERE BIRTHDATE BETWEEN '19980101' AND '20220101'
SELECT * FROM CUSTOMERS WHERE CUSTOMERNAME LIKE '%AL�%'
SELECT * FROM CUSTOMERS WHERE CITY IN ('�ZM�R','�STANBUL')

--AND ve OR OPERAT�RLER�
SELECT * FROM CUSTOMERS WHERE CITY = '�STANBUL' AND DISTRICT = 'BEYL�KD�Z�'
SELECT * FROM CUSTOMERS WHERE CITY = '�STANBUL' OR CITY = 'ANKARA'

--TEKRAR EDEN KAYITLARI TEK�LLE�T�RMEK
SELECT DISTINCT CITY FROM CUSTOMERS

--VER�LER� SIRALAMAK
SELECT * FROM CUSTOMERS ORDER BY AGE DESC

--SINIRLI SAYIDA VER� GET�RMEK
SELECT TOP 500 * FROM CUSTOMERS