// Práctica de clase día 24-10-2018

// Ejercicio 1

Select Lname From Employee
Where 
 not exists (select * from dependent where ssn=Essn)
AND 
 exists (select * from department where ssn=Mgr_ssn);
 
// Ejercicio 2

Select Fname From Employee
Where
 not exists (select * from Works_on Where Essn=ssn); 
 
// Ejercicio 3

Select Fname From Employee
Where not exists (select * from Works_on Where Essn=ssn AND Pno=2);

// Ejercicio 4

Select Fname From Employee
Where exists (select * from Works_on Where Essn=ssn AND Pno=20)
AND not exists (select * from Works_on where Essn=ssn AND Pno!=20);
	
// Ejercicio 5

Select Fname, Adress From Employee
Where exists (select * from Works_on, project Where ssn=Essn AND Pno=Pnumber AND Plocation="Houston" AND Dnum=Dno);

// Ejercicio 6

Select Fname From Employee





