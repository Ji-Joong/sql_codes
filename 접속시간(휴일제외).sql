select distinct case when extract(hour from created_at)+9 < 24 then extract(hour from created_at)+9
                        when extract(hour from created_at)+9 >= 24 then extract(hour from created_at)+9-24
                        end as created_hour,
                        count(extract(hour from created_at)+9 )
from quizzes
where extract(day from created_at) <> 14 and 
       extract(day from created_at) <> 15 and 
       extract(day from created_at) <> 7  and 
       extract(day from created_at) <> 8 and 
       extract(day from created_at) <> 31 and 
       extract(day from created_at) <> 1  and 
       extract(day from created_at) <> 24 and 
       extract(day from created_at) <> 25 
group by created_hour
order by created_hour;
