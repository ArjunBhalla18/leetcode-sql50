select s.user_id, round(coalesce(avg(
    Case 
    when c.action='confirmed' then 1 
    else 0 
    end)::numeric,
     0),
     2) as confirmation_rate
from Signups s left join Confirmations c
on s.user_id = c.user_id
group by s.user_id;


-- Make cases in postgresql
-- coalesce is for "isnull", if value isnull then assign 0.
-- find the rate of confirmations
