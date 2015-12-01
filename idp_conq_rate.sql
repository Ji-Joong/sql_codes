select round((numerator/denominator)::NUMERIC,2) as idp_conq_rate, count(round((numerator/denominator)::NUMERIC,2))
from user_small_tags
where denominator > 17 and quiz_id in (select max(quiz_id)
                                       from user_small_tags
                                       group by user_id)
GROUP BY idp_conq_rate
order by idp_conq_rate;
--idp_conq_rate = 독립 정복률 = 특정 유저의 한 작은 분류에 대한 정복률.
