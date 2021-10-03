BULK INSERT MeterReadingTable
FROM 'E:\VS Repos\ENSEK technical test\meter-reading-uploads\Meter_Reading.CSV'
WITH (
 FIELDTERMINATOR = ',',
 ROWTERMINATOR = '\n',
 MAXERRORS = 100,
 FIRSTROW = 2,
 ERRORFILE = 'E:\VS Repos\ENSEK technical test\insert-errors\daily.txt'
)

SELECT *
FROM MeterReadingTable