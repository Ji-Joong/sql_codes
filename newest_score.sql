select user_id, count(passed) as score
from quiz_items
where passed is true and quiz_id in (select id
                                          from quizzes
                                         where finished is true
                                           and quiz_type = 'newest')
group by user_id
order by score;
--진단테스트 마친유저별로 진단테스트 30문제 중 몇문제 맞췄는지
select user_id, count(passed) as correct
from quiz_items
where quiz_id in (select id from quizzes where quiz_type = 'newest' and finished is true)
  AND user_id in (select user_id from users where admin is false)
  and passed is true
  and created_at >= '2015-10-23 03:00'
group by user_id
order by correct;
--어드민 계정을 빼고 계산.
--근데 진단테스트 완료 인원보다 높게 나옴. 이거 왜이러는걸까요?
