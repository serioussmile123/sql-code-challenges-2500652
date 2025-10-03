-- Leihen Sie die Bücher „The Picture of Dorian Gray“ 
--  und „Great Expectations“ an Jack Vaan aus. 
-- Das Ausleihdatum ist der 25. August 2022  
--  und die Ausleihfrist endet am 8. September.



INSERT INTO Ausleihung (BuchID, MitgliedsID, AusleihDatum, Rueckgabefrist)
SELECT B.BuchID, M.MitgliedsID, '2022-08-25', '2022-09-08'
FROM (
    SELECT MIN(BuchID) AS BuchID
    FROM Buecher 
    WHERE Titel IN ('The Picture of Dorian Gray', 'Great Expectations')
    GROUP BY Titel
) AS B
JOIN Mitglieder AS M ON M.Vorname = 'Jack' AND M.Nachname = 'Vaan';

SELECT * FROM Ausleihung
ORDER BY AusleihID DESC


DELETE FROM Ausleihung
WHERE MitgliedsID = '50' AND RueckgabeDatum IS NULL;





