select assignments.id as id, assignments.name as name, assignments.day as day, assignments.chapter as chapter, count(assistance_requests.*) as total_request
from assistance_requests
join assignments on assignments.id = assignment_id
group by assignments.id
order by total_request desc