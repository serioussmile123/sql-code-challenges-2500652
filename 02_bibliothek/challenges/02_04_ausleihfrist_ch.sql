-- Erstellen Sie eine Liste von Büchern, deren Ausleihfrist am 13. Juli 2022 endet. 
-- Diese Liste soll auch den Namen der ausleihenden Person, 
-- sowie deren Email-Adresse enthalten. 


SELECT MI.Vorname, MI.Nachname, MI.Email,Bu.Titel, AL.Rueckgabefrist
FROM Mitglieder AS MI
JOIN Ausleihung AS AL ON MI.MitgliedsID = AL.MitgliedsID  AND Rueckgabefrist = '2022-07-13'
JOIN Buecher AS BU ON BU.BuchID = AL.BuchID
