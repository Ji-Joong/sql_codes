select round(cast(numerator / denominator as NUMERIC),2) as conquest_rate, count(user_id)
            --분수를 숫자형변환 후 반올림
from user_small_tags
WHERE raw_denominator>17
  and quiz_id in (select max(quiz_id)
                         from user_small_tags
                         group by user_id)
                         --유저 현재 정복률 산출
  and user_id in (select id from users where admin is false)
  --어드민 계정 제외
group by conquest_rate
order by conquest_rate
