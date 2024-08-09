DESC employees;

SELECT * FROM employees; 

SELECT first_name, job_id, salary
FROM 
employees;

SELECT job_title, max_salary, min_salary
FROM jobs;

SELECT last_name "Name" , salary + commission_pct "Total Salary"
FROM employees;

SELECT last_name, salary, commission_pct, 12*salary*commission_pct AnnSal
FROM employees;
//some rows are null because it is unknown

SELECT employees.employee_id "Emp#", employees.first_name, employees.last_name, jobs.job_title "Job Title",departments.department_id "Department ID" 
FROM employees, jobs, departments;

SELECT DISTINCT job_id
FROM employees;

SELECT first_name || ' '|| last_name AS "Full Name", 'Phone: ' || phone_number ||  ' ' || 'Email: ' || email AS "Contact Details"
FROM employees;

SELECT * FROM employees
WHERE department_id = 60;

SELECT last_name, job_id
FROM employees
WHERE job_id = 'IT_PROG';