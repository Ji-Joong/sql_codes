--아직 개별 유저의 현재 정복률이 반영이 안됐음.
select small_tag_id, avg(numerator/denominator) as user_avg_conq_rate
from user_small_tags
where denominator <> 0
GROUP BY small_tag_id ;


--개별 유저의 현재 정복률만 반영한 계산(in이란 다중 선택 함수가 있었다니....)
select small_tag_id, avg(numerator/denominator) as user_avg_conq_rate, count(distinct user_id)
from user_small_tags
where denominator >= 17 and quiz_id in (select max(quiz_id)
                                       from user_small_tags
                                       group by user_id)
  and user_id in (select id from users where admin is false)
GROUP BY small_tag_id
order by small_tag_id;
