-- Registrieren Sie einen Kunden 'atapley2j@kinetecoinc.com' 
-- für unsere Jubilaeumsfeier.
-- Der Kunde wird mit drei Freunden an der Feier teilnehmen.


SELECT 
KundenID 
FROM Kunden
WHERE Email = 'atapley2j@kinetecoinc.com';

INSERT INTO Jubilaeum (ID, Anzahl_Personen)
VALUES ('92', '3');

SELECT *
FROM Jubilaeum;