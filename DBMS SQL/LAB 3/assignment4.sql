select s.staff_code, s.staff_name, d.dept_name, g.design_name, b.book_code, b.book_name, bt.book_issue_date
from staff_master s
	join department_master d on s.dept_code = d.dept_code
	join designation_master g on s.design_code = g.design_code
	join book_transactions bt on s.staff_code = bt.staff_code 
	join book_master b on bt.book_code = b.book_code
where floor(sysdate - bt.book_issue_date) < 30 and floor(sysdate - bt.book_issue_date) >= 0;