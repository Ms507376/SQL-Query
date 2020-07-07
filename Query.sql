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
     
  14) How to add and delete the column from existing table?
     -----To add the column in table------------------------
      ALTER TABLE table_name
              ADD (Columnname_1  datatype,
              Columnname_2  datatype,
              …
              Columnname_n  datatype);
              
    ----------To drop/delete the column from existing table---
      ALTER TABLE table_name
      DROP COLUMN column_name;
      
  15 ) How to update the value  in a table?
       UPDATE table_name
       SET column1 = value1, column2 = value2, ...
       WHERE condition;
       
       e.g 
       UPDATE Customers
       SET ContactName = 'Alfred Schmidt', City= 'Frankfurt'
       WHERE CustomerID = 1;
  
  16) Different LIKE operators with '%' and '_' wildcards:
       WHERE CustomerName LIKE 'a%'	          Finds any values that starts with "a"
       WHERE CustomerName LIKE '%a'	          Finds any values that ends with "a"
       WHERE CustomerName LIKE '%or%'        	Finds any values that have "or" in any position
       WHERE CustomerName LIKE '_r%'	         Finds any values that have "r" in the second position
       WHERE CustomerName LIKE 'a_%_%'	       Finds any values that starts with "a" and are at least 3 characters in length
       WHERE ContactName LIKE 'a%o'	          Finds any values that starts with "a" and ends with "o"
       
       
       %	 Represents zero or more characters	bl% finds bl, black, blue, and blob
       _	 Represents a single character	h_t finds hot, hat, and hit
      [] 	Represents any single character within the brackets	h[oa]t finds hot and hat, but not hit
      ^  	Represents any character not in the brackets	h[^oa]t finds hit, but not hot and hat
      -	  Represents a range of characters	c[a-b]t finds cat and cbt
       
  17) Difference between alter and Update ?
       1	ALTER Command is used to add, delete, modify the attributes of the relations (tables) in the database.UPDATE Command is used to update existing records in a database.
       2	ALTER Command by default initializes values of all the tuple(row) as NULL.	UPDATE Command sets specified values in the command to the tuples.
       3	ALTER command make changes with table structure.	UPDATE command makes changes with data inside the table.
       
  18) Grant and revoke ?
      GRANT : It is Used to provide any user access privileges for the database.
          GRANT CREATE SESSION TO username;
          GRANT CREATE TABLE TO username;
          GRANT sysdba TO username;(All database permission is given to user).
          
      REVOKE: It is Used to take back permissions from any user.
              REVOKE CREATE TABLE FROM username;
      
      
      
      
      
      
      
      
      
      
      
      
      
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
   
     
     
    








































