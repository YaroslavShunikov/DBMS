USE PD_321_SQL

--CREATE TABLE Disciplines
--(
--	discipline_id SMALLINT PRIMARY KEY IDENTITY(1,1),
--	discipline_name NVARCHAR(50) NOT NULL,
--	number_of_lessons TINYINT NOT NULL,
--)
------------------------------------------
--CREATE TABLE DisciplinesDirectionRelation
--(
--	discipline SMALLINT CONSTRAINT FK_DisciplinesDirectionsRelation_Disciplines FOREIGN KEY REFERENCES Disciplines(discipline_id),
--	direction TINYINT CONSTRAINT FK_DisciplinesDirectionsRelation_Directions FOREIGN KEY REFERENCES Directions(direction_id),
--	PRIMARY KEY(discipline, direction)
--)
--CREATE TABLE RequiredDisciplines
--(
--	pending_discipline SMALLINT				CONSTRAINT FK_PendingDiscipline_Disciplines FOREIGN KEY REFERENCES Disciplines(discipline_id),
--	required_discipline SMALLINT	CONSTRAINT FK_RequiredDiscipline_Disciplines FOREIGN KEY REFERENCES Disciplines(discipline_id),
--	PRIMARY KEY(pending_discipline, required_discipline)
--)

--CREATE TABLE DependentDisciplines
--(
--	current_discipline SMALLINT				CONSTRAINT FK_CurrentDiscipline_Disciplines FOREIGN KEY REFERENCES Disciplines(discipline_id),
--	dependent_discipline SMALLINT	CONSTRAINT FK_RequiredDisciplines_Disciplines FOREIGN KEY REFERENCES Disciplines(discipline_id),
--	PRIMARY KEY(current_discipline, dependent_discipline)
--)
--------------------------------------------------------------------------

--CREATE TABLE TeachersDisciplinesRelation
--(
--	teacher SMALLINT NOT NULL
--	CONSTRAINT FK_TeachersDisciplinesRelation_Teachers
--	FOREIGN KEY REFERENCES Teachers (teacher_id),
--
--	discipline SMALLINT NOT NULL
--	CONSTRAINT FK_TeachersDisciplinesRelation_Disciplines
--	FOREIGN KEY REFERENCES Disciplines (discipline_id),
--	PRIMARY KEY (teacher, discipline)
--)

--CREATE TABLE Grades
--(
--	student INT NOT NULL CONSTRAINT FK_Grades_Students FOREIGN KEY REFERENCES Students(stud_id),
--	lesson BIGINT NOT NULL,
--	grade_1 tinyint,
--	grade_2 tinyint,
--	PRIMARY KEY(student, lesson)
--)

--CREATE TABLE Attendance
--(
--	student INT NOT NULL CONSTRAINT FK_Attendance_Students FOREIGN KEY REFERENCES Students(stud_id),
--	lesson BIGINT NOT NULL,
--	present BIT
--	PRIMARY KEY(student, lesson)
--)
--CREATE TABLE Schedule
--(
--	lesson_id BIGINT PRIMARY KEY NOT NULL,
--				--CONSTRAINT FK_Schedule_Attendance FOREIGN KEY REFERENCES Attendance(lesson),
--				--CONSTRAINT FK_Schedule_Grades FOREIGN KEY REFERENCES Grades(lesson),
--	[group] INT NOT NULL
--	CONSTRAINT FK_Schedule_Groups FOREIGN KEY REFERENCES Groups(group_id),
--	discipline SMALLINT NOT NULL,
--	teacher SMALLINT NOT NULL
--	CONSTRAINT FK_Schedule_Teachers FOREIGN KEY REFERENCES Teachers(teacher_id),
--	date DATE,
--	time TIME(0),
--	spent BIT
--)
--!!!!!!!!!!!!!!!!
--ALTER TABLE Attendance 
--	ADD CONSTRAINT FK_Attendance_Schedule FOREIGN KEY(lesson) REFERENCES Schedule(lesson_id)
--ALTER TABLE Grades
--	ADD CONSTRAINT FK_Grades_Schedule FOREIGN KEY(lesson) REFERENCES Schedule(lesson_id)
--!!!!!!!!!!!!!!!!!

--CREATE TABLE CompleteDisciplines
--(
--	[group] INT
--	CONSTRAINT FK_CompleteDisciplines_Groups FOREIGN KEY REFERENCES Groups(group_id),
--	discipline SMALLINT
--	CONSTRAINT FK_CompleteDisciplines_Disciplines FOREIGN KEY REFERENCES Disciplines(discipline_id),
--	PRIMARY KEY([group], discipline)
--)

CREATE TABLE Exams
(
	student INT
	CONSTRAINT FK_Exams_Students FOREIGN KEY REFERENCES Students(stud_id),
	discipline SMALLINT
	CONSTRAINT FK_Exams_Disciplines FOREIGN KEY REFERENCES Disciplines(discipline_id),
	date DATE,
	grade TINYINT,
	PRIMARY KEY(student, discipline)
)