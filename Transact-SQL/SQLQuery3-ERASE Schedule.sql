USE PD_321

DELETE FROM Schedule WHERE [group]=(SELECT group_id FROM Groups WHERE group_name='PV_211')
EXECUTE my_sp_select_from_schedule