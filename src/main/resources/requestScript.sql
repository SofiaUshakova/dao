select product_name from netology.ORDERS
                             inner join netology.CUSTOMERS C2 on C2.id = ORDERS.customer_id
where lower(C2.name) = lower(:name);