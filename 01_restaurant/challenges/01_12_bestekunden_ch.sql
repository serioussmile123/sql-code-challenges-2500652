-- Erstellen Sie eine Liste von Kundinnen/Kunden,
-- die die meisten Bestellungen abgegeben haben,
-- sodass wir ihnen einen Coupon schenken können.

-- Geben Sie die Anzahl der Bestellungen, 
-- den Vornamen, Nachnamen sowie die Email-Adresse an.

SELECT Kunden.Vorname, Kunden.Nachname, Kunden.Email, count(*) AS 'Anzahl_Bestellungen'
FROM Bestellungen
JOIN Kunden ON Kunden.KundenID = Bestellungen.KundenID
GROUP BY Kunden.KundenID, Kunden.Vorname, Kunden.Nachname, Kunden.Email
ORDER BY Anzahl_Bestellungen DESC