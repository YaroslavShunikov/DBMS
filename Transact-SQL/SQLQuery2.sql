USE PD_321

SELECT * FROM CompleteDisciplines
--SELECT [group] FROM Schedule WHERE (SELECT MAX(Schedule.number_of_lesson) FROM Schedule WHERE spent=1) 
SELECT
	lesson_id
FROM Schedule
JOIN Disciplines ON discipline=discipline_id
WHERE (SELECT COUNT(spent) FROM Schedule) = (SELECT MAX(number_of_lesson)FROM Schedule)
AND spent=1

SELECT 
	[Группа]=group_name,
	[Дисциплина]=discipline_name
FROM CompleteDisciplines
JOIN Groups ON [group]= group_id
JOIN Disciplines ON discipline = discipline_id