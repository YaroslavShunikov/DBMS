USE PD_321

SELECT 
	last_name + ' ' + first_name + ' ' + middle_name AS '�.�.�. ��������',
	DATEDIFF(HOUR, birth_date, GETDATE())/8766 AS '�������',
	DATEDIFF(hour,work_since,GETDATE())/8766 AS '���� ������������'
FROM Teachers