/* Ejercicio 5 sql */

USE company;

/* Ejercicio A */

Create Or Replace View emp1 (Dept_name, Manager_last_name, Manager_first_name, Mgr_salary)
As Select Dname As Dept_name, Lname AS Manager_last_name, Fname As Manager_first_name, Salary As Mgr_salary
From Department, Employee
Where Mgr_ssn=Ssn;

Select * from emp1;

/* Ejercicio B */

Create Or Replace View emp1 (Dept_name, Manager_last_name, Manager_first_name, Mgr_salary)
As Select Dname As Dept_name, Lname AS Manager_last_name, Fname As Manager_first_name, Salary As Mgr_salary
From Department Left Join Employee ON Mgr_ssn=Ssn;

Select * From emp1;

/* Ejercicio C */

Create Or Replace View empleado (Lname, Fname, Supervisor, Salary)
As Select E.Lname, E.Fname, S.Lname, E.Salary
From Department, Employee As E, Employee As S
Where Dname='Research' AND E.Super_ssn=S.Ssn AND E.dno=Dnumber;

Select * from empleado;

/* Ejercicio D */

Create Or Replace View empleado (Lname, Fname, Supervisor, Salary)
As Select E.Lname, E.Fname, S.Lname, E.Salary
From Employee As E Left Join Employee As S On S.Ssn=E.Super_ssn Left Join Department As D On Dnumer=E.Dno;
Where D.Dname='Research';

Select * from empleado;

/* Ejercicio E */

/* Ejercicio F */