// Práctica de clase 3 en sql

use company;

// Ejercicio 1

select e1.Fname AS "Employee name", e2.Fname AS "Manager of"
from Employee AS e1
left join employee AS e2
on e1.Ssn=e2.super_Ssn;

// Ejercicio 2

select Fname, Dependent_Name
from Employee AS e
left join Dependent AS d
on e.Ssn=d.Essn
where Salary > 30000;

// Ejercicio 3

select Fname AS "employee name", Dname AS "manager of"
from Employee AS e1 
left join department AS d 
on mgr_Ssn=Ssn;

// Ejercicio 4

select e1.Fname AS "Employee name", d.name AS "manager of", de.dependent_name AS "dependent_name"
from ((Employee AS e1 
left join department AS d
on e1.ssn=d.mgr_ssn)
left join dependent AS de
on e1.Ssn=de.Essn);










