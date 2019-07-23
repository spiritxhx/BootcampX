select cohorts.name as name, sum(completed_at-started_at) as total_duration
from assistance_requests
join students on students.id = student_id
join cohorts on cohorts.id = cohort_id
group by cohorts.name
order by total_duration