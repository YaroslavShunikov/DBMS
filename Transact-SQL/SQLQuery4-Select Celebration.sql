USE PD_321

DECLARE @date DATE = '2024.05.09'

--SELECT * FROM PD_321.dbo.Celebrations WHERE celebration_day=DATEPART(DAY,@date) AND celebration_month= DATEPART(MONTH,@date)
--IF @date IN (SELECT )

--PRINT(dbo.isCelebration(@date))
--EXECUTE my_sp_select_from_schedule

EXECUTE my_sp_add_stacionar_to_schedule 'PD_212','Сетевое программирование','2024-02-28', '14:30', 'Ковтун', 'Monday', 'Wednesday', 'Friday' 
EXECUTE my_sp_select_discipline_for_group_from_schedule 'PD_212', 'Сетевое программирование'