-- Finden Sie heraus wie viele Kopien von 
-- „Dracula“ im Moment verfügbar sind.

SELECT COUNT (Buecher.Titel) 
FROM Buecher
LEFT JOIN Ausleihung on Ausleihung.BuchID = Buecher.BuchID
WHERE Titel = 'Dracula' AND Ausleihung.RueckgabeDatum IS NULL;

SELECT
(SELECT COUNT (Buecher.Titel) 
FROM Buecher
WHERE Titel = 'Dracula') -
(SELECT COUNT (Buecher.Titel) 
FROM Buecher
LEFT JOIN Ausleihung on Ausleihung.BuchID = Buecher.BuchID
WHERE Titel = 'Dracula' AND Ausleihung.RueckgabeDatum IS NULL) AS 'Anzahl_verfübare_Bücher';