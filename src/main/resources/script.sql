create schema netology;

create table if not exists netology.CUSTOMERS(
                                   id serial PRIMARY KEY,
                                   name varchar(255),
                                   surname varchar(255),
                                   age int,
                                   phone_number varchar(255)
);
insert into netology.CUSTOMERS(name, surname, age, phone_number)
VALUES ('Alexey', 'Alexeev', 35, '89102416578');
VALUES ('Sonya', 'Ushakova', 98, '89102416584');
VALUES ('Anna', 'Anina', 58, '8910246532');

create table if not exists netology.ORDERS(
                                id serial PRIMARY KEY,
                                date DATE,
                                customer_id int,
                                product_name varchar(255),
                                amount int,
                                FOREIGN KEY (customer_id) REFERENCES netology.CUSTOMERS(id)
);
insert into netology.ORDERS(date, customer_id, product_name, amount)
VALUES ('2024-02-07', 1, 'корм для кота', 1500);
VALUES ('2024-02-07', 1, 'наполнитель', 2000);
VALUES ('2024-02-08', 2, 'сигареты', 180);
VALUES ('2024-02-09', 3, 'кола', 100);


