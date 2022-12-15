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

Select*
FROM retirement_titles;