-- 1 
SELECT course_id, semester, CONCAT(course_id, '-', semester) AS course_semester
FROM courses;
-- 2
SELECT course_id, course_name, lab_time 
FROM courses 
WHERE lab_time LIKE '%Fri%'
-- 3
SELECT due_date , title
FROM assignments
WHERE due_date > CURRENT_DATE
-- 4
SELECT status, COUNT(*) AS assignment_count
FROM assignments
GROUP BY status;
--5
SELECT course_name 
FROM courses
ORDER BY LENGTH(course_name) DESC
LIMIT 1
-- 6
SELECT UPPER(course_name) AS course_name_upper
FROM courses
-- 7
SELECT title, due_date 
FROM assignments
WHERE due_date LIKE '%09%'
-- 8
SELECT * 
FROM assignments
WHERE due_date IS NULL
