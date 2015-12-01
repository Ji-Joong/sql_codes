select user_id, count(passed) as score
from quiz_items
where passed is true and quiz_id in (select id
                                          from quizzes
                                         where finished is true
                                           and quiz_type = 'newest')
group by user_id
order by score;
--진단테스트 마친유저별로 진단테스트 30문제 중 몇문제 맞췄는지
