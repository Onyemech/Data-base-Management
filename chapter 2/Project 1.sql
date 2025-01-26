USE MDC_CH02_CQ;

-- Task A
-- SELECT * FROM CUSTOMER;
-- SELECT * FROM INVOICE;
-- SELECT * FROM INVOICE_ITEM;

-- TASK B
-- SELECT LastName, FirstName,Phone
-- -- concat(lastName,' ',firstName,' ',phone) 
-- FROM mdc_ch02_cq.customer

-- TASK C
-- SELECT LastName, FirstName,Phone
-- FROM mdc_ch02_cq.customer
-- WHERE FirstName = 'Nikki'; 

-- TASK D
-- SELECT c.LastName, c.FirstName, c.Phone, i.DateIn, i.DateOut
-- FROM mdc_ch02_cq.customer c
-- JOIN mdc_ch02_cq.invoice i
-- WHERE TotalAmount > 100.00;

-- TASK E
-- SELECT LastName,FirstName,Phone
-- FROM mdc_ch02_cq.customer
-- WHERE FirstName LIKE 'B%';

-- TASK F
-- SELECT LastName,FirstName,Phone
-- FROM mdc_ch02_cq.customer
-- WHERE LastName LIKE '%cat%';

-- TASK G
-- SELECT LastName,FirstName,Phone
-- FROM mdc_ch02_cq.customer
-- WHERE phone LIKE '_23%';

-- TASK H
-- SELECT LastName, FirstName,Phone
-- FROM mdc_ch02_cq.customer
-- JOIN mdc_ch02_cq.invoice
-- WHERE TotalAmount < 8.00;
-- max = $158
-- min = $8


