USE PD_321

--SELECT
--	[ФИО студента]=FORMATMESSAGE('%s %s %s', last_name, first_name, middle_name),
--	[Возраст]=DATEDIFF(hour,birth_date,GETDATE())/8766,
--	[Группа]=group_name
--FROM Students
--JOIN Groups ON (Students.[group]=Groups.group_id)

SELECT 
	[ФИО студента]=FORMATMESSAGE('%s %s %s', last_name, first_name, middle_name),
	[Группа]=group_name,
	[Направление обучения]=direction_name
FROM Students
JOIN Groups ON (Students.[group]=Groups.group_id)
RIGHT OUTER JOIN Directions Directions ON (Groups.direction = Directions.direction_id)