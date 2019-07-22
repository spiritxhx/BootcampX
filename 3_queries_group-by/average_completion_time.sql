select students.name, avg(assignment_submissions.duration) as average_assignment_duration
from assignment_submissions 
join students on students.id = student_id
where end_date is null
group by students.name
order by average_assignment_duration desc