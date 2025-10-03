-- Finden Sie die Reservierung eines Kunden, 
-- dessen Namen wir nicht genau buchstabieren können.

-- Der Name hat unter anderem folgenede Variationen:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant
-- Heute ist der 14.Juni.

SELECT *
FROM Reservierung
JOIN Kunden ON Kunden.KundenID = Reservierung.KundenID
WHERE Kunden.Nachname IN ('Stevensen', 'Stephensen', 'Stevenson', 'Stephenson', 'Stuyvesant')
AND Reservierung.Datum >= '2022-06-14';