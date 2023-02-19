-- UPDATE/DELETE 
SET SQL_SAFE_UPDATES = 0;

-- 1
UPDATE Carta_Tapes
SET PVP = PVP * 1.03;

UPDATE Carta_Begudes
SET PVP = PVP * 1.05
WHERE IDBeguda IN (
  SELECT IDBeguda
  FROM Beguda
  WHERE EsCalent = true
);

-- 2

-- 3
DELETE T
FROM Tapa T
INNER JOIN Ingredients_Tapa ON T.IDTapa = Ingredients_Tapa.IDTapa
INNER JOIN Ingredient ON Ingredients_Tapa.IDIngredient = Ingredient.IDIngredient
WHERE Ingredient.EsPicant = TRUE
AND T.IDTapa NOT IN (
	SELECT IDTapa
    FROM Carta_Tapes);


-- 4
DELETE C
FROM `Client` C
JOIN Client_Taula CT ON CT.DNIClient = C.DNIClient
JOIN Comanda_Begudes CoB ON CoB.IDClientTaula = CT.IDClientTaula
JOIN Carta_Begudes CaB ON CaB.IDBeguda = CoB.IDBeguda AND CaB.IDBar = CoB.IDBar
JOIN Beguda B ON B.IDBeguda = CaB.IDBeguda
WHERE TeAlcohol = TRUE AND EsMajor = FALSE;

-- 5
DELETE B
FROM Beguda B
JOIN Distro_Beguda DB ON DB.IDBeguda = B.IDBeguda
JOIN Distribuidor D ON D.IDDistribuidor = DB.IDDistribuidor
WHERE ContactePrincipal = 'hijos de rivera';