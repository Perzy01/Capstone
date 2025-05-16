TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `new_employee_notification` AFTER INSERT ON `employee` FOR EACH ROW BEGIN\n  INSERT INTO notifications (message, type, reference_id)\n  VALUES (CONCAT(\'New employee added: \', NEW.`First Name`, \' \', NEW.`Last Name`), \'employee\', NEW.ID);\nEND'
sql_modes=524288
definers='root@localhost'
client_cs_names='utf8mb4'
connection_cl_names='utf8mb4_general_ci'
db_cl_names='latin1_swedish_ci'
created=174729880846
