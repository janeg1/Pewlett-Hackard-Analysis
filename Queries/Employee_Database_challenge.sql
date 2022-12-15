--PART 1
SELECT 
	e.emp_no, 
	e.first_name, 
	e.last_name,
	t.title,
	t.from_date, 
	t.to_date

INTO retirement_titles
FROM employees as e

LEFT JOIN titles as t
ON e.emp_no = t.emp_no

WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'

ORDER BY e.emp_no;

--PART 2

SELECT emp_no, first_name, last_name, title

FROM retirement_titles;
	
SELECT DISTINCT ON (emp_no) emp_no, first_name, last_name, title, to_date

INTO unique_titles

FROM retirement_titles 

WHERE (retirement_titles.to_date = '9999-01-01')

ORDER BY retirement_titles.emp_no, retirement_titles.to_date Desc;


SELECT COUNT (emp_no), title

INTO retiring_titles

FROM unique_titles

GROUP BY unique_titles.title

ORDER BY count DESC;

--PART 3


SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date, t.title

INTO mentorship_eligibility

FROM employees as e

INNER JOIN dept_emp as de

ON e.emp_no=de.emp_no

INNER JOIN titles as t

ON e.emp_no=t.emp_no

WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31')

AND  de.to_date = ('9999-01-01')

ORDER BY emp_no;

