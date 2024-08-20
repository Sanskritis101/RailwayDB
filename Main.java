//connecting Mysql to Java through JDBC

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
public class Main
{
    public static void main(String args[]) throws SQLException {
        //Registering the Driver
        DriverManager.registerDriver(new com.mysql.jdbc.Driver());
        //Getting the connection
        String mysqlUrl = "jdbc:mysql://localhost/railway_system";
        Connection con = DriverManager.getConnection(mysqlUrl, "root", "root");
        System.out.println("Connection established......");
        //Creating the Statement
        Statement stmt = con.createStatement();
        //Query to retrieve records
        String query = "Select * from passenger";
        //Executing the query
        ResultSet rs = stmt.executeQuery(query);
        System.out.println("Contents of the passenger table:");
        while(rs.next()) {
            System.out.print("passenger_id: "+rs.getInt("passenger_id")+", ");
            System.out.print("name: "+rs.getString("name")+", ");
            System.out.print("Age: "+rs.getInt("age")+", ");
            System.out.print("gender: "+rs.getString("gender")+", ");
            System.out.print("ticket_no: "+rs.getInt("ticket_no")+", ");
            System.out.print("train_no: "+rs.getInt("train_no")+", ");
            System.out.print("Class: "+rs.getString("Class"));
            System.out.println();

        }
    }
}

/* Output:-
 Connection established......
Contents of the passenger table:
passenger_id: 9000700, name: Jayesh, Age: 32, gender: M, ticket_no: 99030, train_no: 20, Class: Seat_Sleeper
passenger_id: 9000705, name: Purabh, Age: 46, gender: M, ticket_no: 99050, train_no: 20, Class: Seat_AC_tier1
passenger_id: 9000715, name: Lily, Age: 26, gender: F, ticket_no: 99040, train_no: 40, Class: Seat_AC_tier3
passenger_id: 9000720, name: Kiran, Age: 39, gender: F, ticket_no: 99020, train_no: 50, Class: Seat_Sleeper

Process finished with exit code 0 */
