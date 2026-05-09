select query_name, 
round( avg (rating::numeric/position) ,2) as quality,
round(((count(case when rating<3 then 1 end)* 100.0)/ count(*))::numeric,2 ) as poor_query_percentage
from Queries
group by query_name;

-- count the cases where rating is less than 3 only
-- numeric on rating rather than whole average to avoid integer division or else it will give 3/2 = 1 instead of 1.5
