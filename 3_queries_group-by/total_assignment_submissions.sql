select cohorts.name, count(*) as total_submissions
from assignment_submissions join students on students.id=student_id
join cohorts on cohorts.id = cohort_id
group by cohorts.name
order by count(*) desc