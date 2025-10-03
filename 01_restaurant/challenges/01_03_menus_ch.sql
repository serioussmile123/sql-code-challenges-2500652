-- Kreieren Sie eine Liste, die verwendet wird um drei Menues zu erstellen.

-- Kreieren Sie eine Liste aller Speisen. Sortieren Sie diese nach dem Preis beginnend beim niedrigsten.
-- Kreieren Sie eine Liste von Vorspeisen und Getraenken.
-- Kreieren Sie eine Liste des ganzen Angebots ausgenommen der Getränke.
-- Die letzten beiden Menues sollen nach Gericht-Art sortiert sein.

SELECT *
FROM Speise
ORDER BY Preis ASC;

SELECT *
FROM Speise
WHERE Typ IN ('Vorspeise', 'Getränk')
ORDER BY Typ ASC;


SELECT *
FROM Speise
WHERE Typ <> 'Getränk'
ORDER BY Typ ASC;