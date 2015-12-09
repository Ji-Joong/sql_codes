select user_id, count(passed) as score
from quiz_items
where passed is true and quiz_id in (select id
                                          from quizzes
                                         where finished is true
                                           and quiz_type = 'newest')
group by user_id
order by score;
--수정한 버전
select user_id, count(passed) as correct
from quiz_items
where quiz_id in (select id from quizzes where quiz_type = 'newest' and finished is true)
  AND user_id in (select user_id from users where admin is false)
  --어드민 계정을 빼고 계산.
  and passed is true
  and created_at >= '2015-10-23 03:00'
--10월 23일 12:00에 클베 런칭했다고 치고 이렇게 계산.
group by user_id
order by correct;
