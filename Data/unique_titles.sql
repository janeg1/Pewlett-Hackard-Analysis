SELECT emp_no, first_name, last_name, title

FROM retirement_titles;
	
SELECT DISTINCT ON (emp_no) emp_no, first_name, last_name, title, to_date

INTO unique_titles

FROM retirement_titles 

WHERE (retirement_titles.to_date = '9999-01-01')

ORDER BY retirement_titles.emp_no, retirement_titles.to_date Desc;


