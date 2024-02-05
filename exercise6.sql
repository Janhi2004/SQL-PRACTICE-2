select user_id,
DATE(max(post_date))-DATE(min(post_date)) as days_between
from posts
where post_date between '01/01/2021' and '01/01/2022'
group by user_id
having count(post_date) > 2;
