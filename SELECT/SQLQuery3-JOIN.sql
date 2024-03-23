USE PD_321

--SELECT
--	[��� ��������]=FORMATMESSAGE('%s %s %s', last_name, first_name, middle_name),
--	[�������]=DATEDIFF(hour,birth_date,GETDATE())/8766,
--	[������]=group_name
--FROM Students
--JOIN Groups ON (Students.[group]=Groups.group_id)

SELECT 
	[��� ��������]=FORMATMESSAGE('%s %s %s', last_name, first_name, middle_name),
	[������]=group_name,
	[����������� ��������]=direction_name
FROM Students
JOIN Groups ON (Students.[group]=Groups.group_id)
RIGHT OUTER JOIN Directions Directions ON (Groups.direction = Directions.direction_id)