select 
round ( (count( distinct(player_id)))::numeric/
(select count(distinct(player_id)) from Activity) , 2) as fraction
from Activity a
where exists(
    select 1
    from Activity
    where player_id = a.player_id
    group by player_id
    having min(event_date)= a.event_date -1
);
