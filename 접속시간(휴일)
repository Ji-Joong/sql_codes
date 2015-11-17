select distinct case when extract(hour from created_at)+9 < 24 then extract(hour from created_at)+9
                        when extract(hour from created_at)+9 >= 24 then extract(hour from created_at)+9-24
                        end as created_hour,
                        count(extract(hour from created_at)+9 )
from quizzes
where extract(day from created_at) = 14 OR 
       extract(day from created_at) = 15 OR 
       extract(day from created_at) = 7  OR 
       extract(day from created_at) = 8 OR 
       extract(day from created_at) = 31 OR 
       extract(day from created_at) = 1  OR
       extract(day from created_at) = 24 OR
       extract(day from created_at) = 25 
group by created_hour
order by created_hour;
