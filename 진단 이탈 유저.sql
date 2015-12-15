user_id in (select user_id from quizzes where id in (select min(id) from quizzes where quiz_type = 'frv' group by user_id) and finished is false )
