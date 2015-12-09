select user_id, avg(max(solved_at) - min(solved_at)) as time)
from quiz_items
where user_id in (select id from users where admin is false)
  and quiz_item_type = 'newest'
  and quiz_id in (select id from quizzes where finished is true)
group by user_id
order by time ; 
