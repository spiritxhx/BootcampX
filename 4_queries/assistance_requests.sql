select count(assistance_requests.*) as total_assistances, name
from teachers
join assistance_requests on teachers.id = teacher_id
where name = 'Waylon Boehm'
group by name