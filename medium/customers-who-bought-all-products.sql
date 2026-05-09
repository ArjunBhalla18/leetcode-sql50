select customer_id from Customer
group by customer_id
having count (distinct product_key) = (
    select count(*) from Product
);

-- select customer id if the count of distinct products bought by customer (by grouping) is equal to count of products in product table.
