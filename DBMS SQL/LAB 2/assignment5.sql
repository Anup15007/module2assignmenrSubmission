select staff_name, staff_sal,
	CASE
		WHEN staff_sal >= 50000 THEN 'A' 
		WHEN staff_sal >= 25000 AND staff_sal < 50000 THEN 'B'
		WHEN staff_sal >= 10000 AND staff_sal < 25000 THEN 'C'
		ELSE 'D'
	END AS "Grade"
	FROM staff_master;