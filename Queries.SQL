/* Exercise #1 */ 
SELECT first_name, last_name
FROM student;

/* Exercise #2 */
SELECT instructor_id
FROM instructor
WHERE tenured = 1;

/* Exercise #3 */
SELECT s.first_name AS student_first_name, s.last_name AS student_last_name, 
i.first_name AS advisor_first_name, i.last_name AS advisor_last_name
FROM student s
JOIN instructor i ON s.advisor_id = i.instructor_id;


/* Exercise #4 */
SELECT instructor_id, first_name, last_name
FROM instructor
LEFT JOIN student ON instructor.instructor_id = student.advisor_id;

/* Exercise #5 */
SELECT instructor.first_name, instructor.last_name, SUM(course.num_credits) as total_credits
FROM instructor
JOIN course ON instructor.instructor_id = course.instructor_id
GROUP BY instructor.instructor_id;
  
/* Exercise #6 */
SELECT course_code, course_name
FROM course
WHERE course_code LIKE 'FILM 3%' OR course_code LIKE 'ITSC 3%';

/* Exercise #7 */
SELECT course.course_code, instructor.first_name, instructor.last_name, course.num_credits
FROM course
JOIN instructor ON course.instructor_id = instructor.instructor_id
JOIN student_schedule ON course.course_id = student_schedule.course_id
WHERE student_schedule.student_id = 1;






