-- Consultas 
-- 1

SELECT T.IDTapa
FROM Tapa T
JOIN Ingredients_Tapa I on I.IDTapa = T.IDTapa
WHERE Nom LIKE '%de la casa%' AND Quantitat > 4 AND TempsPreparacio > 60;

-- 2

SELECT Nom
FROM Distribuidor D
JOIN Ingredient I ON I.IDDistribuidor = D.IDDistribuidor
WHERE EsImportacio = FALSE;

-- 3
SELECT Nom, Cognom1
FROM Persona
JOIN `Client` C ON Persona.DNI = C.DNIClient
UNION
SELECT Nom, Cognom1
FROM Persona
JOIN Empleat ON Persona.DNI = Empleat.DNIEmpleat
WHERE Email LIKE '%@%' AND QuantititatSouExtra IS NOT NULL;
-- 4

SELECT AVG(NumCadires)
FROM Taula
WHERE EsExterior = TRUE;

-- 5

SELECT COUNT(DISTINCT IDIngredient)
FROM Ingredient
WHERE EsPicant = TRUE AND EsImportacio = TRUE AND Descripcio LIKE '%fire%';

-- 6

SELECT *
FROM Carta_Tapes CT
JOIN Tapa T ON T.IDTapa = CT.IDTapa
WHERE T.EsCalent = TRUE AND EsIndividual = FALSE
UNION
SELECT *, Nom
FROM Carta_Begudes CB
JOIN Beguda B ON B.IDBeguda = CB.IDBeguda
WHERE B.TeAlcohol = FALSE;

-- 7

SELECT Nom, (PVP - Cost) AS margeBenefici
FROM Beguda B
JOIN Carta_Begudes CB ON CB.IDBeguda = B.IDBeguda
ORDER BY MargeBenefici DESC, Nom ASC
LIMIT 10;

-- 8

SELECT Nom
FROM Ingredient
WHERE length(nom) > 5 AND 'a%' or 'e%' or 'i%' or 'o%' or 'u%' AND EsImportacio = TRUE;

-- 9

SELECT COUNT(DISTINCT T.IDTapa) as Tapa, B.IDBar
FROM  Bar B
JOIN Carta_Tapes CT ON CT.IDBar = B.IDBar
JOIN Tapa T ON T.IDTapa = CT.IDTapa
GROUP BY IDBar
ORDER BY Tapa desc;

-- 10

SELECT P.DNI, P.Nom, P.Cognom1, P.Cognom2
FROM Persona P
JOIN `Client` C ON C.DNIClient = P.DNI
JOIN Client_Taula CT ON CT.DNIClient = C.DNIClient
WHERE DataHoraArribada BETWEEN '2023-01-00 00:00:00' AND '2023-01-00 23:59:59'
ORDER BY DNI, Cognom1, Cognom2, DNI ASC;

-- 12

SELECT DNI, Email, LlocNeixament
FROM Empleat E
JOIN Persona P ON P.DNI = E.DNIEmpleat
JOIN Carrec_Empleat CE ON CE.NomCarrec = E.NomCarrec
WHERE E.DNICap = E.DNIEmpleat AND E.QuantititatSouExtra = FALSE AND CE.Descripcio LIKE '%xef%';

-- 13

SELECT P.DNI, P.Nom, P.Cognom1, E.QuantititatSouExtra, E.NumCC
FROM Persona P
LEFT JOIN Empleat E ON P.DNI = E.DNIEmpleat;

-- 14

SELECT C.DNIClient
from  `Client` C
join Client_Taula on Client_Taula.DNIClient = C.DNIClient
join Taula T on T.IDBar = Client_Taula.IDBar
join Bar B on B.IDBar = T.IDBar
WHERE EsMajor = TRUE AND DataHoraArribada between '2023-01-01 21:00:00' AND '2023-01-01 23:59:59' AND 
DataHoraSortida between '2023-01-01 21:00:00' AND '2023-01-01 23:59:59'
AND Nom = 'La Rovira';