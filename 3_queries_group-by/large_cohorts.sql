select cohorts.name as cohort_name, count(*) as student_count
from cohorts join students on cohorts.id = cohort_id
group by cohorts.id
having count(*) >= 18