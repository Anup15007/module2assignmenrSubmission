define dayOfMonth = "trim(to_char(student_dob, 'DAY'))";
define dateFormat = "trim(to_char(student_dob, 'Month, DD YYYY'))";

select student_name "Student Name", &&dateFormat as "Student DOB" 
	from student_master
		where &&dayOfMonth IN ('SATURDAY','SUNDAY');
		
		

		
select student_name "Student Name", trim(to_char(student_dob, 'MONTH, DD YYYY')) "Student DOB"
	from student_master
		where trim(to_char(student_dob, 'DAY')) IN ('SATURDAY','SUNDAY');
		

Link-> https://stackoverflow.com/questions/13269676/issue-when-comparing-result-of-to-charmydate-day-to-a-string		