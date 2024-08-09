SELECT *
FROM employees;

SELECT * 
FROM employees e, departments d
WHERE e.department_id = d.department_id;

// q1
SELECT e.first_name, e.last_name, d.department_name
FROM employees e, departments d
WHERE e.department_id = d.department_id AND e.first_name LIKE 'A%';

// q2
SELECT e.first_name || ' ' || e.last_name AS "Full Name", e.job_id AS "Job Title", d.department_name AS "Department Name"
FROM employees e, departments d
WHERE e.department_id = d.department_id
ORDER BY e.last_name;

// q3
SELECT e.first_name || ' ' || e.last_name AS "Full Name", d.department_name, 
e.salary, l.city
FROM employees e, departments d, locations l
WHERE e.department_id = d.department_id 
AND d.location_id = l.location_id
AND e.salary > 12000;

// q4
SELECT DISTINCT d.department_id, d.department_name, l.street_address, l.postal_code, 
l.city, l.state_province, r.region_name
FROM departments d, locations l, regions r, countries c
WHERE d.location_id = l.location_id
AND l.country_id = c.country_id
AND c.region_id = r.region_id
AND r.region_id IN 1 OR r.region_id IN 4;

// q5
SELECT e.first_name || ' ' || e.last_name AS "Full Name", e.email || '@MEGACORP.COM' AS Email, 
d.department_name AS "Department Name", l.city || ', ' || c.country_name 
AS "Full Address"
FROM employees e, departments d, locations l, countries c
WHERE e.department_id = d.department_id
AND d.location_id = l.location_id
AND l.country_id = c.country_id
ORDER BY e.last_name;

// q6
SELECT e.first_name || ' ' || e.last_name AS "Full Name", e.email || '@MEGACORP.COM' AS Email, 
d.department_name AS "Department Name", l.city || ', ' || c.country_name 
AS "Full Address"
FROM employees e, departments d, locations l, countries c
WHERE e.department_id = d.department_id
AND d.location_id = l.location_id
AND l.country_id = c.country_id
AND c.country_name = '&country_name';

// q7 
SELECT e.first_name || ' ' || e.last_name AS "Full Name", d.department_name
FROM employees e, departments d
WHERE e.department_id(+) = d.department_id;

//q8
SELECT e.first_name || ' ' || e.last_name "Employee Name", e.employee_id "Employee #", 
m.employee_id "Manager #", m.first_name ||' '|| m.last_name "Manager Name"
FROM employees e, employees m
WHERE e.manager_id = m.employee_id;

//q10
SELECT e.first_name || ' ' || e.last_name "Employee Name", e.employee_id"Employee #", 
m.employee_id "Manager #", m.first_name ||' '|| m.last_name "Manager Name"
FROM employees e, employees m
WHERE e.manager_id = m.employee_id(+);