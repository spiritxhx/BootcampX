select teachers.name as teacher, cohorts.name as cohort, count(assistance_requests.*) as total_assistances
from teachers
join assistance_requests on teacher_id = teachers.id
join students on students.id = student_id
join cohorts on cohorts.id = cohort_id
where cohorts.name = 'JUL02'
group by teachers.name, cohorts.name
order by total_assistances desc
