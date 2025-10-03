-- Erstellen Sie eine Liste von Mitgliedern,  
-- die am seltensten Bücher ausgeliehen haben. 

SELECT MI.Vorname, MI.Nachname, MI.Email, COUNT(*) AS Anzahl_Ausleihungen
FROM Mitglieder AS MI
JOIN Ausleihung AS AU ON AU.MitgliedsID = MI.MitgliedsID
GROUP BY MI.MitgliedsID
ORDER BY Anzahl_Ausleihungen ASC
Limit 20;