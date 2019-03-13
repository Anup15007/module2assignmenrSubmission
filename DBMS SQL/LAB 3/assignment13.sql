select d.dept_code, d.dept_name, NVL2(count(s.student_code),count(s.student_code),0)+ NVL2(count(st.staff_code),count(st.staff_code),0)
	from department_master d
		left join student_master s on d.dept_code = s.dept_code
		left join staff_master st on d.dept_code = st.dept_code
	group by d.dept_code,d.dept_name;