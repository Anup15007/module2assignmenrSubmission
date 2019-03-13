select max(staff_sal) as "Maximum", min(staff_sal) as "Minimum", sum(staff_sal) as "Total", round(avg(staff_sal)) as "Average"
	from staff_master;