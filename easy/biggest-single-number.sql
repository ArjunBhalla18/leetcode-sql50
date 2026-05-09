select max(num) as num
from (
    select num
    from MyNumbers
    group by num
    having count(num)=1
);

-- first make a list of numbers with frequency 1
-- select max from that list
