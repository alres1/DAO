CREATE TABLE CUSTOMERS
(
    id           INT          NOT NULL AUTO_INCREMENT,
    name         VARCHAR(255) NOT NULL,
    surname      VARCHAR(255) NOT NULL,
    age          INT(3)       NOT NULL,
    phone_number VARCHAR(10),
    PRIMARY KEY (id),
    UNIQUE INDEX id (id)
)
    COLLATE = 'utf8mb4_0900_ai_ci';

CREATE TABLE ORDERS
(
    id           INT NOT NULL AUTO_INCREMENT,
    date         DATETIME,
    customer_id  INT,
    product_name VARCHAR(255),
    amount       FLOAT,
    PRIMARY KEY (id),
    UNIQUE INDEX id (id),
    CONSTRAINT FK__CUSTOMERS FOREIGN KEY (customer_id) REFERENCES CUSTOMERS (id)
)
    COLLATE = 'utf8mb4_0900_ai_ci';

insert into CUSTOMERS(id, name, surname, age, phone_number)
values (1, 'Ivan', 'Ivanov', 25, '+7 912 345-67-89');
insert into CUSTOMERS(id, name, surname, age)
values (2, 'Alexey', 'Petrov', 20);

insert into ORDERS(id, customer_id, product_name, amount)
values (1, 1, 'pen', 5);
insert into ORDERS(id, customer_id, product_name, amount)
values (2, 1, 'pencil', 10);
insert into ORDERS(id, customer_id, product_name, amount)
values (3, 2, 'notebook', 3);