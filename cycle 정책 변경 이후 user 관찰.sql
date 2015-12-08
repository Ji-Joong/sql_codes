select user_id, count(finished_at)
from quizzes
where user_id in (select id from users where created_at >= '2015-12-03 09:00' and admin is false )
group by user_id
order by user_id;
