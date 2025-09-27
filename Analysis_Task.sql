-- SQL Mentor user Performance

drop table user_submission
create table user_submission (
	id  serial primary key,
	user_id	bigint,
	question_id	int,
	points	int,
	submitted_at	timestamp with time zone,
	user_name	varchar(100)
);

select * from user_submission



 -- 1 List all distinct user and their stats (return user_name, total_submission, points earned).


select 
	user_name,
	count(id) total_submission,
	sum(points) as points_earned
	from user_submission
	group by 1
	order by points_earned desc

 
 -- 2 Calculate the daily average points for each user.


select 
	user_name,
	extract(day from submitted_at) as day,
	avg(points) as daily_avg_points
	from user_submission
	group by 1,2
	order by daily_avg_points


 
 -- 3 Find the top 3 users with the most positive submissions for each day.



with daily_submission
as
(select 
	to_char(submitted_at, 'DD-MM') as daily,
	user_name,
	sum(case 
		when points > 0 then 1 else 0
		end ) as correct_submission
	from user_submission
	group by 1,2
),
users_ranks
as
(select 
	daily,
	user_name,
	correct_submission,
	dense_rank( ) over(partition by daily order by correct_submission desc) as rank
	from daily_submission
)

select 
	daily,
	user_name,
	correct_submission
from users_ranks
where rank <= 3;


 -- 4 Find the top 5 user with the highest number of incorrect submissions.



select 
	user_name,
	sum(case 
		when points < 0 then 1 else 0
		end ) as incorrect_submission,
	sum(case 
		when points < 0 then 1 else 0
		end ) as incorrect_submission,
	sum(case 
		when points > 0 then 1 else 0
		end ) as correct_submission,
	sum(case 
		when points < 0 then points else 0
		end ) as incorrect_submission_points,
	sum(case 
		when points > 0 then points else 0
		end ) as correct_submission_points,
	sum(points) as points_earned
	from user_submission
	group by 1
	order by incorrect_submission desc
	limit 5


 -- 5 Find the top performers for each week.


 select 
	user_name,
	extract(week from submitted_at) as week_no,
	sum(points) as points_earned,
	dense_rank() over(partition by extract (week from submitted_at) order by sum(points)desc) as rank
	from user_submission
	group by 1,2
	order by 2 desc, 4