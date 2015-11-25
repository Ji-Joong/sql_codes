SELECT user_id, count(distinct extract(day from (finished_at))) as weekly_visit
FROM quizzes
where finished_at>='2015-11-15 15:00' and finished_at<='2015-11-22 15:00'
group by user_id
order by weekly_visit;
