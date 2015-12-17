select user_id, count(finished_at)
from quizzes
where user_id in (select id from users where created_at >= '2015-12-03 09:00' and admin is false )
group by user_id
order by user_id;

--order 수정, 신규 가입 유저만 해당

select user_id, count(finished_at)
from quizzes
where user_id in (select id from users where created_at >= '2015-12-03 09:00' and admin is false )
group by user_id
order by count;

--기존 가입유저중 모의고사 넘은 사람
select user_id, count(finished_at)
from quizzes
where user_id in (select user_id from quizzes where finished_at >= '2015-12-03 09:00' and quiz_type = 'diagnosis')
  and user_id in (select id from users where created_at <= '2015-12-03 09:00' and admin is false)
group by user_id
order by count;
