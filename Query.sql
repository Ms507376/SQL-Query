/* ----------------------Table – EmployeeDetails------------------------------------------------------------

EmpId	FullName	  ManagerId	DateOfJoining	 City
121	  John Snow	    321	   01/31/2014    	Toronto
321	  Walter White	986  	 01/30/2015	    California
421 	Kuldeep Rana	876	   27/11/2016	    New Delhi


-------------------Table – EmployeeSalary------------------------------------------------------------------
EmpId	Project	Salary	  Variable
121	    P1	  8000	    500
321	    P2	  10000	    1000
421	    P1	  12000	     0


----------------------------------Questions------------------------------------------------------------------
1) Write a SQL query to fetch all the Employees who are also managers from EmployeeDetails table. */

SELECT DISTINCT E.FullName
FROM EmployeeDetails E
INNER JOIN EmployeeDetails M
ON E.EmpID = M.ManagerID;

o/p---> Walter White

/* 2)Write a SQL query to fetch duplicate records from a EmployeeDetails (leaving the primary key – EmpId) */

SELECT FullName, ManagerId, DateOfJoining, City, COUNT(*)
FROM EmployeeDetails
GROUP BY FullName, ManagerId, DateOfJoining, City
HAVING COUNT(*) > 1;

/*
output - Null(No duplicate record)
*/

/* 3)Write a SQL query to fetch only odd rows and only even row from the table.
 --------odd row--------------*/
SELECT * FROM EmployeeDetails 
WHERE MOD (EmpId, 2) <> 0;

/*-----------Even row-----------*/
SELECT * FROM EmployeeDetails 
WHERE MOD (EmpId, 2) = 0;

 /* 4)Write a SQL query to create a new table with data and structure copied from another table */
   
   create table newtable AS select * from EmployeeDetails;
   SELECT * INTO newtable FROM EmployeeDetails;
   

/* 5)Write a SQL query to create an empty table with the same structure as some other table. */
   
   create table newtable1 AS select * from EmployeeDetails where 1=0;
   SELECT * INTO newtable FROM EmployeeDetails WHERE 1 = 0;
   
/* 6) Write a SQL query to fetch top 2 records? */
   
   SELECT * FROM EmployeeSalary ORDER BY Salary DESC LIMIT 2;
   
/* 7) Write a SQL query to fetch MAX/MIN/AVG salary from table? */
    
    SELECT MAX(Salary) AS sal from EmployeeSalary;

    SELECT MIN(Salary) AS sal from EmployeeSalary;

    SELECT AVG(Salary) AS sal from EmployeeSalary;
    
/* 8)Write a SQL query to fetch 3rd highest salary from  EmployeeSalary table? */

  SELECT DISTINCT(Salary) FROM EmployeeSalary ORDER BY Salary DESC LIMIT 2,1;
  NOTE: SELECT DISTINCT(Salary) FROM EmployeeSalary ORDER BY Salary DESC LIMIT N-1,1;(for Nth Highest salary)
  
/* 9) Write an SQL query to fetch unique values of DEPARTMENT from Worker table. */
    Select distinct DEPARTMENT from Worker;
    
/* 10)Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000. */
     Select * from Worker where SALARY between 100000 and 500000;
     
/* 11)write an SQL query to print details of the Workers who have joined in Feb’2014. */
     Select * from Worker where year(JOINING_DATE) = 2014 and month(JOINING_DATE) = 2;
    
/* 12)write sql query to get current date. */ 
    SELECT SYSDATE();
    SELECT GETDATE();
    SELECT CURDATE();
    
/* 13)To get sql developer version */
     SELECT @@VERSION
     
     
    








































