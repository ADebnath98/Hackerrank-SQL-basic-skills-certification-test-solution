SELECT s.roll_number, s.name 
FROM student_information s
INNER JOIN examination_marks e
on s.roll_number = e.roll_number
GROUP BY e.roll_number
HAVING SUM(e.subject_one + e.subject_two + e.subject_three) < 100