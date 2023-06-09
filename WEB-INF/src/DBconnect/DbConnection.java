package DBconnect;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;

public class DbConnection {

    public static Connection connection(){

            Connection con = null;
        
           try{

             Class.forName("com.mysql.cj.jdbc.Driver");

             con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pg_db?user=root&password=OmSql877@");
            
           } catch(ClassNotFoundException|SQLException e) {

                   e.printStackTrace();
            
           }
        

           return con;
           
    }
    
    
}
