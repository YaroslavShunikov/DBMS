USE PD_321

(SELECT COUNT(Schedule.spent)FROM Schedule WHERE spent=1 GROUP BY discipline, [group])

UPDATE Schedule
SET spent=1
WHERE number_of_lesson >= 23


EXECUTE my_sp_select_discipline_for_group_from_schedule 'PD_321', '%SQL%'

SELECT
	[Группа] = group_name,
	[Дисциплина] = discipline_name
FROM CompleteDisciplines 
JOIN Groups ON [group]=group_id
JOIN Disciplines ON discipline = discipline_id