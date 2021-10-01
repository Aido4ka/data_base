-- 1.
-- Просмотр клиентов с их заказами

SELECT a.costumer_id,
       b.order_id,
       d.hookah_id,
       e.hookah_nm
FROM public."Costumer" a,
     public."Order" b,
     public."Hookah_in_order" d,
     public."HOOKAH" e
WHERE a.costumer_id = b.costumer_id and
      b.order_id = d.order_id and
      d.hookah_id = e.hookah_id;

-- 2.
-- Просмотр заказов по убыванию даты приема

SELECT a.order_id,
       a.order_date,
       a.order_time,
       b.hookah_id,
       d.hookah_nm
FROM public."Order" a,
     public."Hookah_in_order" b,
     public."HOOKAH" d
WHERE a.order_id = b.order_id and
      b.hookah_id = d.hookah_id
ORDER BY a.order_time DESC;

-- 3.
-- Просмотр офисов, в которых работают сотрудники

SELECT a.location,
       b.employer_nm
FROM public."Office" a,
     public."Employer" b
WHERE a.office_id = b.office_id;

-- 4.
-- Просмотр клиентов, которые оплатили заказ картой

SELECT costumer_id,
       payment_type
FROM public."Payment"
WHERE payment_type = 'Card';

-- 5.
-- Просмотр работников, стаж которых более 3-х лет

SELECT employer_nm,
       experience
FROM public."Employer"
WHERE experience > 3;


