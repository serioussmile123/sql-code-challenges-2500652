-- Fuegen Sie die Bestellung einer Kundin in unsere Datenbank ein
-- und stellen Sie ihr die Gesamtkosten bereit

-- Bestellungsinformationen sind:
-- Für: Loretta Hundey, 6939 Elka Place, 
-- Im Einkaufskorb: 1 House Salad, 1 Mini Cheeseburgers, 1 Tropical Blue Smoothie,
-- Lieferdatum und Zeit: September 20, 2022, @2PM (14:00)

SELECT * FROM Kunden WHERE
Vorname = 'Loretta' AND Nachname = 'Hundey';


INSERT INTO Bestellungen (KundenID, BestellungsDatum)
SELECT KundenID, '2022-09-22 14:00:00'
FROM Kunden
WHERE Vorname = 'Loretta' AND Nachname = 'Hundey';


SELECT * FROM Bestellungen ORDER BY BestellungsDatum DESC;


INSERT INTO BestellungSpeise (BestellungsID, SpeiseID)
SELECT Bestellungen.BestellungsID, Speise.SpeiseID
FROM Bestellungen
JOIN Kunden  ON Bestellungen.KundenID = Kunden.KundenID
JOIN Speise  ON Speise.Name IN ('House Salad', 'Mini Cheeseburgers', 'Tropical Blue Smoothie')
WHERE Kunden.Vorname = 'Loretta' AND Kunden.Nachname = 'Hundey';

SELECT * From BestellungSpeise WHERE BestellungsID = 1001;


SELECT Sum(Speise.Preis) AS 'Gesamtwert Bestellung'
FROM BestellungSpeise
JOIN Speise ON Speise.SpeiseID = BestellungSpeise.SpeiseID
JOIN Bestellungen ON Bestellungen.BestellungsID = BestellungSpeise.BestellungsID
JOIN Kunden ON Bestellungen.KundenID = Kunden.KundenID
WHERE Kunden.Vorname = 'Loretta' AND Kunden.Nachname = 'Hundey' AND BestellungSpeise.BestellungsID = 1001;--Bestellungen.BestellungsDatum = '2022-09-22 14:00:00';