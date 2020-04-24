/* Ejercicio 4 en sql */

Use company;

// Ejercicio 1

Select Lname
From Employee
where E.Dno IN (Select Dno From Employee as M 
Where M.Salary in (Select Min(C.Salary) from Employee)

// Ejercicio 2

SELECT Lname
FROM EMPLOYEE AS E
WHERE E.SALARY >= (10000 + (SELECT MIN(C.Salary) FROM EMPLOYEE AS C));

// Ejercicio 3

Select Pname as pname, sum(hours)
From Project, works_on
Where Pnumber=pno
Group by pno;

// Ejercicio 4

Select Dname, avg(Salary)
From Department as d, Employee as e
Where dnumber=dno
Group by dno;

// Ejercicio 5

Select Dname, count (*) 
From Employee, Department
Where Dnumber=dno, Group by Dname having 
avg(salary)>33000;

// Ejercicio 6

Select Dname, count (*)
From Employee, Department
Where sex='M' AND Dno=Dnumber
AND Dno In(Select Dnumber From Employee, 
Group by Dno
Having avg(Salary)>330000)
Group by Dno;
















