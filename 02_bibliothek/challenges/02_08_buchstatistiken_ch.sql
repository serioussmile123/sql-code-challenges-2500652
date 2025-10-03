-- Erstellen Sie zwei Buchstatistiken.

-- Die erste soll zeigen wie viele Bücher pro Jahr veröffentlicht wurden. 
-- Die zweite soll zeigen, welche fünf Bücher am meisten ausgeliehen worden sind.

SELECT Erscheinungsdatum, COUNT (*)
FROM Buecher
GROUP BY Erscheinungsdatum
ORDER BY Erscheinungsdatum ASC

SELECT BU.Titel, COUNT (*) AS Anzahl_Ausleihungen
FROM Buecher AS BU
JOIN Ausleihung AU ON BU.BuchID = AU.BuchID
GROUP BY BU.Titel
ORDER BY Anzahl_Ausleihungen DESC
Limit 5;