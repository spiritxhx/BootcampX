select sum(duration) as total_duration
from assignment_submissions join students on student_id=student.id
where student.name = 'Ibrahim Schimmel'