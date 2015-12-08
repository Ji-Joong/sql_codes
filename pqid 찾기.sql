select id
from public_qnas
where book_id in (select id from books where title = '토익 정기시험 기출문제집(LC+RC 1200)')
  and book_page = '264'
  and (book_qno = '141'
   or book_qno = '142'
   or book_qno = '143') ;
