select * FROM "HOOKAH";

INSERT INTO "Office" (office_id, location, phone_nb) VALUES (11, 'Ivanovskaya', '9254567889');
INSERT INTO "Office" (office_id, location, phone_nb) VALUES (12, 'Lozjevaya', '9457369864');
INSERT INTO "Office" (office_id, location, phone_nb) VALUES (13, 'Dirijabelnata', '9754329880');
INSERT INTO "Office" (office_id, location, phone_nb) VALUES (14, 'Lubimaya', '9257612847');

INSERT INTO "HOOKAH" (hookah_id, hookah_nm, hookah_price, hookah_desc) VALUES (1, 'Light', '1000', 'Usual');
INSERT INTO "HOOKAH" (hookah_id, hookah_nm, hookah_price, hookah_desc) VALUES (2, 'Mean', '1200', 'Usual');
INSERT INTO "HOOKAH" (hookah_id, hookah_nm, hookah_price, hookah_desc) VALUES (3, 'Hard', '1200', 'Difficult');
INSERT INTO "HOOKAH" (hookah_id, hookah_nm, hookah_price, hookah_desc) VALUES (4, 'Yagodniyi', '1000', 'Usual');
INSERT INTO "HOOKAH" (hookah_id, hookah_nm, hookah_price, hookah_desc) VALUES (5, 'Platina', '2000', 'Difficult');
INSERT INTO "HOOKAH" (hookah_id, hookah_nm, hookah_price, hookah_desc) VALUES (6, 'Mary', '1500', 'Difficult');

INSERT INTO "Costumer" (costumer_id) VALUES (1);
INSERT INTO "Costumer" (costumer_id) VALUES (2);
INSERT INTO "Costumer" (costumer_id) VALUES (3);
INSERT INTO "Costumer" (costumer_id) VALUES (4);
INSERT INTO "Costumer" (costumer_id) VALUES (5);

INSERT INTO "Employer" (employer_id, office_id, employer_nm, salary, phone_nb, experience) VALUES (1, 11, 'Andrey Kaznacheev', 18000, '9251285760', 3);
INSERT INTO "Employer" (employer_id, office_id, employer_nm, salary, phone_nb, experience) VALUES (2, 12, 'Evgeny Lubin', 35000, '9653452678', 2);
INSERT INTO "Employer" (employer_id, office_id, employer_nm, salary, phone_nb, experience) VALUES (3, 13, 'Vladislav Novikov', 17000, '9456789009', 0);
INSERT INTO "Employer" (employer_id, office_id, employer_nm, salary, phone_nb, experience) VALUES (4, 12, 'Anya Ivanova', 23000, '9051345267', 6);
INSERT INTO "Employer" (employer_id, office_id, employer_nm, salary, phone_nb, experience) VALUES (5, 14, 'Artur Eniseev', 100000, '9054789405', 8);
INSERT INTO "Employer" (employer_id, office_id, employer_nm, salary, phone_nb, experience) VALUES (6, 11, 'Yulia Zverskaya', 150000, '9654321962', 5);

INSERT INTO "Order" (order_id, office_id, costumer_id, employer_id, order_date, order_time) VALUES (1, 11, 2, 2, '2021-09-11', '21:21:21');
INSERT INTO "Order" (order_id, office_id, costumer_id, employer_id, order_date, order_time) VALUES (2, 13, 3, 4, '2021-09-11', '22:22:22');
INSERT INTO "Order" (order_id, office_id, costumer_id, employer_id, order_date, order_time) VALUES (3, 14, 4, 6, '2021-09-11', '23:23:23');

INSERT INTO "Hookah_in_order" (hookah_id, order_id) VALUES (4, 1);
INSERT INTO "Hookah_in_order" (hookah_id, order_id) VALUES (3, 2);
INSERT INTO "Hookah_in_order" (hookah_id, order_id) VALUES (6, 3);
INSERT INTO "Hookah_in_order" (hookah_id, order_id) VALUES (1, 2);
INSERT INTO "Hookah_in_order" (hookah_id, order_id) VALUES (2, 2);
INSERT INTO "Hookah_in_order" (hookah_id, order_id) VALUES (5, 1);
INSERT INTO "Hookah_in_order" (hookah_id, order_id) VALUES (5, 3);

INSERT INTO "Payment" (order_id, costumer_id, payment_order_date, payment_time, payment_type) VALUES (1, 2, '2021-09-12', '00:00:01', 'Card');
INSERT INTO "Payment" (order_id, costumer_id, payment_order_date, payment_time, payment_type) VALUES (2, 3, '2021-09-12', '01:00:01', 'Card');
INSERT INTO "Payment" (order_id, costumer_id, payment_order_date, payment_time, payment_type) VALUES (3, 1, '2021-09-12', '04:00:01', 'Card');

