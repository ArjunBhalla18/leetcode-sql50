select e.name, b.bonus from Employee e left join Bonus b 
on e.empID = b.empID where b.bonus is NULL or b.bonus < 1000;
