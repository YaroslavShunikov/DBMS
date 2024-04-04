CREATE FUNCTION isCelebration(@date AS DATE)RETURNS BIT AS
BEGIN
	DECLARE @celebration BIT=0
	IF EXISTS(SELECT * FROM PD_321.dbo.Celebrations WHERE DATEPART(DAY,@date)=celebration_day AND DATEPART(MONTH,@date)=celebration_month)
		SET @celebration=1
	RETURN @celebration
END
