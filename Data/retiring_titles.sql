SELECT COUNT (emp_no), title

INTO retiring_titles

FROM unique_titles

GROUP BY unique_titles.title

ORDER BY count DESC;
