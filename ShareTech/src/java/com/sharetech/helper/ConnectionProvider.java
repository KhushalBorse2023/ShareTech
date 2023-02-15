
package com.sharetech.helper;
import java.sql.*;
public class ConnectionProvider {
    private static Connection con;
    public static Connection getConnection()
    {
        try{
            if(con==null)
            {
            //Driver Loaded
            Class.forName("com.mysql.jdbc.Driver");
            //Connection Establishment
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sharetech", "root", "");
        }
            
        }
        catch (Exception e )
        {
            e.printStackTrace();
        }
     return con;    
    }
}
