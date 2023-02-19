drop table if exists ORDERS;

drop table if exists CUSTOMERS;

create table CUSTOMERS
(
    id           serial primary key,
    name         varchar(255),
    surname      varchar(255),
    age          int check ( age > 0 ),
    phone_number varchar(255)
);

insert into CUSTOMERS (name, surname, age)
values ('alexey', 'Romanov', 15);

insert into CUSTOMERS (name, surname, age)
values ('Alexey', 'Sidorov', 25);

insert into CUSTOMERS (name, surname, age)
values ('Ivan', 'Romanov', 20);

create table ORDERS
(
    id serial primary key,
    date date default now(),
    customer_id int,
    product_name varchar(255),
    amount int,
    foreign key (customer_id) references CUSTOMERS(id)
);

insert into ORDERS(customer_id, product_name)
values (1, 'Milk');

insert into ORDERS(customer_id, product_name)
values (1, 'Sugar');

insert into ORDERS(customer_id, product_name)
values (2, 'tea');

insert into ORDERS(customer_id, product_name)
values (3, 'coffee');