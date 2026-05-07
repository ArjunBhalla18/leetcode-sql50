SELECT w1.id
FROM Weather w1
JOIN Weather w2
ON w1.recordDate = w2.recordDate + INTERVAL '1 day'
WHERE w1.temperature > w2.temperature;

-- (w1.recordDate = w2.recordDate + interval of 1 day), i.e, w1 day is the next day of w2 day.
-- so if the temperature is greater than the previous day, its selected.
