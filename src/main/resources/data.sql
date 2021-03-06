-- Insert factory devices
INSERT INTO FACTORY_DEVICES (ID, NAME, MANUFACTURING_YEAR, TYPE) VALUES (1, 'Device X', 2004, 'Type 19');
INSERT INTO FACTORY_DEVICES (ID, NAME, MANUFACTURING_YEAR, TYPE) VALUES (2, 'Device Y', 1987, 'Type 2');
INSERT INTO FACTORY_DEVICES (ID, NAME, MANUFACTURING_YEAR, TYPE) VALUES (3, 'Device Z', 1982, 'Type 11');

-- Insert maintenance tasks
INSERT INTO MAINTENANCE_TASKS (ID, DEVICE_ID, ENTRY_TIME, DESCRIPTION, CLASSIFICATION, TASK_COMPLETED) VALUES (1, 1, 1609452000000, 'Check lights', 'MINOR', false);
INSERT INTO MAINTENANCE_TASKS (ID, DEVICE_ID, ENTRY_TIME, DESCRIPTION, CLASSIFICATION, TASK_COMPLETED) VALUES (2, 2, 1617224400000, 'Yearly maintenance', 'MAJOR', true);
INSERT INTO MAINTENANCE_TASKS (ID, DEVICE_ID, ENTRY_TIME, DESCRIPTION, CLASSIFICATION, TASK_COMPLETED) VALUES (3, 3, 1625086800000, 'Check parts', 'MAJOR', false);
INSERT INTO MAINTENANCE_TASKS (ID, DEVICE_ID, ENTRY_TIME, DESCRIPTION, CLASSIFICATION, TASK_COMPLETED) VALUES (4, 2, 1633035600000, 'Change battery', 'CRITICAL', true);
INSERT INTO MAINTENANCE_TASKS (ID, DEVICE_ID, ENTRY_TIME, DESCRIPTION, CLASSIFICATION, TASK_COMPLETED) VALUES (5, 1, 1640988000000, 'Clean parts', 'MAJOR', true);