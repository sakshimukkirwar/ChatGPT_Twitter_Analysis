use hw5;

CREATE TABLE salaries1 (  

    emp_num INT PRIMARY KEY,  

    valid_from DATE NOT NULL,  

    amount DEC(8 , 2 ) NOT NULL DEFAULT 0  

);  

 

INSERT INTO salaries1 (emp_num, valid_from, amount)  

VALUES  

    (102, '2020-01-10', 45000),  

    (103, '2020-01-10', 65000),  

    (105, '2020-01-10', 55000),  

    (107, '2020-01-10', 70000),  

    (109, '2020-01-10', 40000);  

    

CREATE TABLE total_salary_budget(  

    total_budget DECIMAL(10,2) NOT NULL  

);  

INSERT INTO total_salary_budget (total_budget)  

SELECT SUM(amount) FROM salaries1;