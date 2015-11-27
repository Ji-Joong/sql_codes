--dau = distinct useres who finished at least 1 quiz in a day
select count(distinct user_id)
from quizzes
where finished_at >= '2015-11-11 15:00' and finished_at <= '2015-11-12 15:00' ;
