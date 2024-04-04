USE PD_321

--EXECUTE my_sp_add_stacionar_to_schedule 'PD_321', '%SQL%', '2024.03.26', '13:30', 'Ковтун', 'Tuesday', 'Thursday', 'Saturday'
EXECUTE my_sp_add_stacionar_to_schedule 'PV_211', 'Объектно-ориентированное программирование%C++', '2023.02.10', '18:30', 'Ковтун', 'Monday', 'Friday', 'Sunday'
EXECUTE my_sp_select_from_schedule

PRINT(DATENAME(WEEKDAY,'2023.02.15'))
PRINT(DATENAME(WEEKDAY,'2023.02.17'))
PRINT(DATENAME(WEEKDAY,'2023.02.19'))
PRINT(DATENAME(WEEKDAY,'2023.02.21'))