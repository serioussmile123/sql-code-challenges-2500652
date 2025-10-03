-- Ertstellen Sie eine Liste von Büchern, die von 1890 bis 1899  
-- veröffentlicht wurden und im Moment ausgeliehen werden können. 


SELECT  BU.Titel, BU.Barcode, BU.Erscheinungsdatum
FROM Buecher AS BU
WHERE BU.Erscheinungsdatum BETWEEN 1890 AND 1899
AND NOT EXISTS (
    SELECT 1
    FROM Ausleihung AS AU
    WHERE AU.BuchID = BU.BuchID
    AND AU.AusleihDatum IS NULL
)
ORDER BY BU.Erscheinungsdatum ASC;
