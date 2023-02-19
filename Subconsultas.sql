-- Subconsultas
-- 1

SELECT Nom 
FROM Bar 
WHERE IDBar IN (
    SELECT IDBar 
    FROM Carta_Begudes 
    GROUP BY IDBar 
    HAVING COUNT(*) = (
        SELECT MAX(num_bebidas) 
        FROM (
            SELECT IDBar, COUNT(*) as num_bebidas 
            FROM Carta_Begudes 
            GROUP BY IDBar
        ) as bebidas_por_bar
    )
);

-- 2



-- 3

SELECT *
FROM Comanda_Begudes CB
WHERE CB.IdBeguda IN (
    SELECT B.IDBeguda
    FROM Beguda B
    WHERE B.TeAlcohol = TRUE
)
AND CB.IdClientTaula IN (
    SELECT CT.IdClientTaula
    FROM Client_Taula CT
    JOIN Taula T ON T.NumeroTaula = CT.NumeroTaula AND T.IDBar = CT.IDBar
    WHERE T.EsFumadors = TRUE AND T.NumCadires > 5
);

-- 4.

SELECT Nom
FROM Tapa
WHERE IDTapa IN (
  SELECT IDTapa
  FROM Ingredients_Tapa
  WHERE IDIngredient IN (
    SELECT IDIngredient
    FROM Ingredient
    WHERE EsImportacio = 1
  )
  GROUP BY IDTapa
  HAVING COUNT(*) > 3
);

-- 5
SELECT NomEmpresa 
FROM Distribuidor 
WHERE IDDistribuidor = (
    SELECT DISTINCT IDDistribuidor 
    FROM Distro_Beguda 
    GROUP BY IDDistribuidor 
    ORDER BY COUNT(DISTINCT IDBeguda) ASC 
    LIMIT 1
);
