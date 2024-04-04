USE PD_321

DECLARE @day TINYINT = 1
DECLARE @end_day TINYINT = 10
DECLARE @month TINYINT = 5
DECLARE @name NVARCHAR(50)='Майские праздники'

WHILE @day <= @end_day
BEGIN
	IF(NOT EXISTS (SELECT * FROM Celebrations WHERE @day= celebration_day AND @month=celebration_month))
	BEGIN
		INSERT INTO Celebrations 
			(celebration_day, celebration_month, celebration_name)
		VALUES (@day, @month, @name)
	END
	SET @day= @day + 1
END

SELECT * FROM Celebrations ORDER BY Celebrations.celebration_month