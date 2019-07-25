const { Pool } = require('pg');

let args = process.argv.slice(2);

const pool = new Pool({
  user: 'vagrantAdmin',
  password: '05111993xhx',
  host: 'localhost',
  database: 'bootcampx'
});

const cohortName = process.argv[2];
// const limit = process.argv[3] || 5;
// Store all potentially malicious values in an array.
const values = ['%' + cohortName + '%'];

pool.query(`
select distinct teachers.name as teacher, cohorts.name as cohort
from assistance_requests
join teachers on teachers.id = teacher_id
join students on students.id = student_id
join cohorts on cohorts.id = cohort_id
where cohorts.name LIKE $1
order by teacher;
`, values)
  .then(res => {
    res.rows.forEach(user => {
      console.log(`${user.cohort}: ${user.teacher}`);
    });
  })
  .catch(err => console.error('query error', err.stack));