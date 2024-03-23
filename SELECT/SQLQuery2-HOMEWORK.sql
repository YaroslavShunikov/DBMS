USE PD_321
-------------1.
--SELECT 
--	last_name + ' ' + first_name + ' ' + middle_name AS 'Ф.И.О. студента',
--	direction_name

--FROM Students, Directions, Groups
--WHERE Students.[group]=Groups.group_id AND
--Groups.direction=Directions.direction_id

-------------2.
--SELECT 
--	last_name + ' ' + first_name + ' ' + middle_name AS 'Ф.И.О. Преподавателя',
--	discipline_name

--FROM Teachers, Disciplines, TeachersDisciplinesRelation
--WHERE Teachers.teacher_id=teacher AND
--Disciplines.discipline_id=disciplines

------------3.
--SELECT 
--	discipline_name,
--	last_name + ' ' + first_name + ' ' + middle_name AS 'Ф.И.О. Преподавателя'
--FROM Teachers, Disciplines, TeachersDisciplinesRelation
--WHERE Teachers.teacher_id=teacher AND
--Disciplines.discipline_id=disciplines AND
--Disciplines.discipline_id=3

------------4.
--SELECT
--	direction_name,
--	discipline_name
--FROM Disciplines, DisciplinesDirectionRelation, Directions
--WHERE Disciplines.discipline_id=discipline AND
--Directions.direction_id=direction

------------5.
--SELECT
--	[Направление обучения] = direction_name,
--	COUNT([group]) AS'Кол-во студентов'
--FROM Students, Groups,Directions
--WHERE Students.[group]=Groups.group_id AND
--Groups.direction=Directions.direction_id
--GROUP BY Directions.direction_name

------------6.

--SELECT
--	[Название группы] = group_name,
--	COUNT([group]) AS'Кол-во студентов'
--FROM Students, Groups
--WHERE Students.[group]=Groups.group_id
--GROUP BY Groups.group_name

------------7.

--SELECT
--discipline_name,
--	COUNT(disciplines) AS'Кол-во преподов'
--FROM Teachers, TeachersDisciplinesRelation, Disciplines
--WHERE Teachers.teacher_id=teacher AND
--Disciplines.discipline_id=disciplines
--GROUP BY Disciplines.discipline_name

SELECT 
	[Дисциплина]=discipline_name,
	[Количество преподов]=COUNT(teacher_id)
FROM Teachers
JOIN TeachersDisciplinesRelation ON (teacher=teacher_id)
RIGHT JOIN Disciplines ON (disciplines=discipline_id)
GROUP BY discipline_name
HAVING COUNT(teacher_id)>1 AND COUNT (teacher_id)<3
ORDER BY COUNT(teacher_id)
