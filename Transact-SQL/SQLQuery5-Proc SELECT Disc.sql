CREATE PROCEDURE my_sp_select_discipline_for_group_from_schedule
@group	NVARCHAR(10),
@discipline NVARCHAR(150)
AS

SELECT 
	[������]	= PD_321.dbo.Groups.group_name,
	[����������] = PD_321.dbo.Disciplines.discipline_name,
	[����] = [date],
	[���� ������] = DATENAME(WEEKDAY, [date]),
	[�����] = [time],
	[�������������] = FORMATMESSAGE('%s %s %s',last_name,first_name,middle_name),
	[����� �������] = number_of_lesson,
	[���� �������] = subject_of_lesson,
	[������] = IIF(spent=1,'���������', '��������������')
FROM PD_321.dbo.Schedule 
JOIN PD_321.dbo.Disciplines ON (discipline=discipline_id)
JOIN PD_321.dbo.Teachers ON (teacher=teacher_id)
JOIN PD_321.dbo.Groups ON ([group]=group_id)
WHERE discipline_name LIKE (@discipline)
AND group_name = @group