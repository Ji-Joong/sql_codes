select distinct case when extract(hour from created_at)+9 < 24 then extract(hour from created_at)+9
                        when extract(hour from created_at)+9 >= 24 then extract(hour from created_at)+9-24
                        end as created_hour,
                        count(extract(hour from created_at)+9 )
from quizzes
group by created_hour
order by created_hour;
