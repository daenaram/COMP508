SELECT first_name, last_name, commission_pct, job_id
FROM employees
WHERE commission_pct > 0.25;

SELECT first_name, last_name, job_id, salary
FROM employees
WHERE salary BETWEEN 7000 AND 9000;

SELECT first_name, last_name, job_id, salary
FROM employees
WHERE salary NOT BETWEEN 7000 AND 9000;

SELECT first_name, last_name, job_id, hire_date
FROM employees
WHERE last_name = 'Atkinson' 
OR last_name = 'Greenberg';

SELECT street_address, postal_code, city
FROM locations
WHERE country_id = 'BR' 
OR country_id = 'UK';

SELECT first_name, last_name, 'Phone: ' || phone_number 
||  ' ' || 'Email: ' || email AS "Contact Details"
FROM employees
WHERE hire_date BETWEEN '01/08/98' AND '31/08/99'
ORDER BY first_name;

SELECT first_name ||' '|| last_name AS "Full Name", 'Phone: ' || 
phone_number ||  ' ' || 'Email: ' || email AS "Contact Details"
FROM employees
WHERE hire_date > '31/12/99'
ORDER BY job_id DESC;

SELECT *
FROM employees
WHERE first_name LIKE '%S%'
AND first_name LIKE '%n';

SELECT first_name, last_name, job_id
FROM employees
WHERE job_id = 'AC_MGR' OR job_id = 'AD_VP' 
OR job_id = 'FI_MGR' OR job_id = 'HR_REP' OR job_id = 'PR_REP';
//or
SELECT first_name, last_name, job_id
FROM employees
WHERE job_id IN ('AC_MGR', 'AD_VP', 'FI_MGR', 'HR_REP', 'PR_REP');

SELECT employee_id, last_name, salary, department_id
FROM employees
WHERE department_id = &department_id;
// 90 = 3, 30 = 6, 60 = 5, 100 = 6
