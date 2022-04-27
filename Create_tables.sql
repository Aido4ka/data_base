CREATE TABLE if not exists "HOOKAH"
(
    hookah_id int NOT NULL,
    hookah_nm varchar(20) NOT NULL,
    hookah_price double NOT NULL,
    hookah_desc text NOT NULL,
    CONSTRAINT hookah_pk PRIMARY KEY (hookah_id),
    CONSTRAINT chk_hookah CHECK (hookah_id > 0 and hookah_price > 0)
);

CREATE TABLE if not exists "Costumer"
(
    costumer_id int NOT NULL,
    costumer_in timestamptz,
    costumer_out timestamptz,
    CONSTRAINT costumer_pk PRIMARY KEY (costumer_id)
);

CREATE TABLE if not exists "Office"
(
    office_id int NOT NULL,
    location varchar(50) NOT NULL,
    phone_nb varchar(20) NOT NULL,
    CONSTRAINT office_pk PRIMARY KEY (office_id),
    CONSTRAINT chk_office CHECK (office_id > 0 and phone_nb not like '%[^0-9]%')
);

CREATE TABLE if not exists "Employer"
(
    employer_id int NOT NULL,
    office_id int NOT NULL,
    employer_nm varchar(50) NOT NULL,
    salary int NOT NULL,
    phone_nb varchar(20) NOT NULL,
    experience int NOT NULL,
    CONSTRAINT employer_pk PRIMARY KEY (employer_id),
    CONSTRAINT office_employer FOREIGN KEY (office_id) REFERENCES "Office" (office_id),
    CONSTRAINT chk_employer CHECK (employer_id > 0 and phone_nb not like '%[^0-9]%' and salary > 10000 and experience >=0)
);

CREATE TABLE if not exists "Order"
(
    order_id int NOT NULL,
    office_id int NOT NULL,
    costumer_id int NOT NULL,
    employer_id int NOT NULL,
    order_date date NOT NULL,
    order_time time NOT NULL,
    CONSTRAINT order_pk PRIMARY KEY (order_id),
    CONSTRAINT order_costumer FOREIGN KEY (costumer_id) REFERENCES "Costumer" (costumer_id),
    CONSTRAINT order_office FOREIGN KEY (office_id) REFERENCES "Office" (office_id),
    CONSTRAINT order_employer FOREIGN KEY (employer_id) REFERENCES "Employer" (employer_id),
    CONSTRAINT chk_order CHECK (order_id > 0)
);

CREATE TABLE if not exists "Hookah_in_order"
(
    hookah_id int NOT NULL,
    order_id int NOT NULL,
    CONSTRAINT hookah_in_order_hookah FOREIGN KEY (hookah_id) REFERENCES "HOOKAH" (hookah_id),
    CONSTRAINT hookah_in_order_order FOREIGN KEY (order_id) REFERENCES "Order" (order_id)
);

CREATE TABLE if not exists "Payment"
(
    order_id int NOT NULL,
    costumer_id int NOT NULL,
    payment_order_date date NOT NULL,
    payment_time time NOT NULL,
    payment_type varchar(50) NOT NULL,
    CONSTRAINT payment_pk PRIMARY KEY (order_id, costumer_id),
    CONSTRAINT payment_costumer FOREIGN KEY (costumer_id) REFERENCES "Costumer" (costumer_id),
    CONSTRAINT payment_order FOREIGN KEY (order_id) REFERENCES "Order" (order_id)
);
