select sum(duration) as total_duration
from assignment_submissions join students on student_id=students.id
where students.name = 'Ibrahim Schimmel'