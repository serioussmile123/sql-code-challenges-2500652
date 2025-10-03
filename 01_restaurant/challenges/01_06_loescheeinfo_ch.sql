-- Entfernen Sie eine ungueltige Reservierung aus der Datenbank.

-- Ein Kunde namens Norby hat uns informiert, dass er seine Reservierung
-- für Freitag stornieren moechte. Heute ist der 24.Juli 2022.

SELECT
Kunden.Vorname
, Reservierung.ReservierungsID, Reservierung.KundenID, Reservierung.Datum, Reservierung.PartyGroesse

FROM Kunden
JOIN Reservierung ON Kunden.KundenID = Reservierung.KundenID
WHERE Kunden.Vorname = 'Norby' -- AND Reservierung.Datum > '2022-07-24'

ORDER BY  Reservierung.Datum DESC;

DELETE  FROM Reservierung WHERE ReservierungsID = xxx;