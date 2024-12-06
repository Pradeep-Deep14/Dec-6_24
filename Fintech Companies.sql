CREATE TABLE fintech_companies (
         company_id INT PRIMARY KEY, 
         company_name VARCHAR(100), 
         users INT, 
         established_year INT
     );
     INSERT INTO fintech_companies VALUES 
         (1, 'Paytm', 15000000, 2010), 
         (2, 'PhonePe', 12000000, 2016), 
         (3, 'MobiKwik', 8000000, 2014);



SELECT * FROM FINTECH_COMPANIES

/*
Get all fintech companies that have more than 10 million users and were established before 2015.
*/

SELECT COMPANY_NAME
FROM FINTECH_COMPANIES
WHERE USERS > 10000000
AND ESTABLISHED_YEAR < 2015
