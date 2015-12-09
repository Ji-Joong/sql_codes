select user_id, count(solved_at)
from quiz_items
where quiz_id in (select min(quiz_id)
                      from quiz_items
                     where quiz_item_type = 'focus'
                     group by user_id)
  and user_id in (select id
                     FROM users
                    where admin is false)
group by user_id
order by count
