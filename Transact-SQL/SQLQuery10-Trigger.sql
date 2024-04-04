USE PD_321
GO

ALTER TRIGGER my_t_complete_discipline ON Schedule
AFTER INSERT, UPDATE
AS
BEGIN
--	IF (SELECT [group] FROM Schedule WHERE (SELECT MAX(Schedule.number_of_lesson) FROM Schedule WHERE spent=1)NOT IN (SELECT * FROM CompleteDisciplines))    
--		(SELECT MAX(Schedule.number_of_lesson) FROM Schedule WHERE spent=1 GROUP BY discipline, [group])
----	=	(SELECT number_of_lessons FROM Disciplines JOIN Schedule ON discipline=discipline_id) 
--	BEGIN
--		INSERT INTO CompleteDisciplines
--			(discipline, [group])
--		VALUES 
--		(
--			(SELECT discipline	FROM Schedule WHERE spent=1 AND number_of_lesson = (SELECT number_of_lessons FROM Schedule JOIN Disciplines ON discipline=discipline_id)),
--			(SELECT [group]		FROM Schedule WHERE spent=1 AND number_of_lesson = (SELECT number_of_lessons FROM Schedule JOIN Disciplines ON discipline=discipline_id))
--		)
--	END
UPDATED
END

SELECT
	[Группа]= group_name,
	[Дисциплина]=discipline_name,
	[Количество проведённых занятий]= COUNT(Schedule.spent)
FROM Schedule JOIN Disciplines ON (discipline=discipline_id)
JOIN Groups ON ([group]=group_id)
WHERE spent=1 
GROUP BY discipline_name, [group_name]

SELECT
	--[Группа]= group_name,
	--[Дисциплина]=discipline_name,
	[Количество проведённых занятий]= COUNT(Schedule.spent)
FROM Schedule 
--JOIN Disciplines ON (discipline=discipline_id)
--JOIN Groups ON ([group]=group_id)
WHERE spent=1 
GROUP BY discipline, [group]