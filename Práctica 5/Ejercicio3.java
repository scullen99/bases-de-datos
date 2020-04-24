

import java.sql.*;

/**

 * Un ejemplo de JDBC

 */

public class Ejercicio3 {

 

    public static void main (String[] args) {

        try {

           // String url = "jdbc:mysql://localhost:3306/company";

            // en el caso de que da error de tiempo cambiarlo con esta línea

            String url = "jdbc:mysql://localhost:3306/company?serverTimezone=UTC"; 

            Connection conn = DriverManager.getConnection(url,"root","");

            Statement stmt = conn.createStatement();

            ResultSet rs;

 

            rs = stmt.executeQuery("select e1.Fname AS \"Employee name\", e2.Fname AS \"Manager of\"\r\n" + 
            		"from Employee AS e1\r\n" + 
            		"left join employee AS e2\r\n" + 
            		"on e1.Ssn=e2.super_Ssn;");

            while ( rs.next() ) {

                String lastName = rs.getString("Fname");

                System.out.println(lastName);
                

            rs = stmt.executeQuery("select Fname, Dependent_Name\r\n" + 
                 		"from Employee AS e\r\n" + 
                 		"left join Dependent AS d\r\n" + 
                 		"on e.Ssn=d.Essn\r\n" + 
                 		"where Salary > 30000;\r\n" + 
                 		"");

            while ( rs.next() ) {

                        String lastName = rs.getString("Fname");

                        System.out.println(lastName);
                        
            rs = stmt.executeQuery("select Fname AS \"employee name\", Dname AS \"manager of\"\r\n" + 
            		"from Employee AS e1 \r\n" + 
            		"left join department AS d \r\n" + 
            		"on mgr_Ssn=Ssn;");

            while ( rs.next() ) {

                                String lastName = rs.getString("Fname");

                                System.out.println(lastName);
                                
             rs = stmt.executeQuery("select e1.Fname AS \"Employee name\", d.name AS \"manager of\", de.dependent_name AS \"dependent_name\"\r\n" + 
             		"from ((Employee AS e1 \r\n" + 
             		"left join department AS d\r\n" + 
             		"on e1.ssn=d.mgr_ssn)\r\n" + 
             		"left join dependent AS de\r\n" + 
             		"on e1.Ssn=de.Essn);\r\n" + 
             		"");

             while ( rs.next() ) {

                                        String lastName = rs.getString("Fname");

                                        System.out.println(lastName);  

            }

            conn.close();

        } catch (Exception e) {

            System.err.println("Got an exception! ");

            System.err.println(e.getMessage());

        }

    }

}
