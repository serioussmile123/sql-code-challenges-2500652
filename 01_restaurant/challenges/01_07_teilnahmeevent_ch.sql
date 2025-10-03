-- Registrieren Sie einen Kunden 'atapley2j@kinetecoinc.com' 
-- für unsere Jubilaeumsfeier.
-- Der Kunde wird mit drei Freunden an der Feier teilnehmen.


SELECT 
KundenID 
FROM Kunden
WHERE Email = 'atapley2j@kinetecoinc.com';

INSERT INTO Jubilaeum (ID, Anzahl_Personen)
VALUES ('92', '4');

SELECT *
FROM Jubilaeum;

UPDATE Jubilaeum
SET Anzahl_Personen = '4'
WHERE ID = '92';

