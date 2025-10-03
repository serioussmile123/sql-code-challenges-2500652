-- Updaten Sie die Informationen in der Datenbank.

-- Tragen Sie Cleo Goldwaters Lieblingsgericht 
-- als "Quinoa Salmon Salad" ein.

SELECT * 
FROM Kunden 
WHERE Vorname = 'Cleo' AND Nachname = 'Goldwater';

SElECT *
FROM Speise
WHERE Name = 'Quinoa Salmon Salad';


UPDATE Kunden
SET LieblingsGericht = (
    SELECT SpeiseID
    FROM Speise
    WHERE Name = 'Quinoa Salmon Salad'
)
WHERE Vorname = 'Cleo' AND Nachname = 'Goldwater';


