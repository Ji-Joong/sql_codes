select user_id, count(passed) as score
from quiz_items
where passed is true and quiz_item_type = 'newest'
group by user_id
order by score;
--유저별로 진단테스트 30문제 중 몇문제 맞췄는지
