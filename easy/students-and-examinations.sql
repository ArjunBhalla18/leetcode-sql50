select s.student_id, s.student_name, j.subject_name, count(e.student_id) as attended_exams 
from Students s 
cross join Subjects j
left join Examinations e 
on s.student_id = e.student_id
and j.subject_name = e.subject_name
group by s.student_id, s.student_name, j.subject_name
order by student_id, subject_name;

-- cross join for all combinations of students and their given exams.
-- left join for matching rows
