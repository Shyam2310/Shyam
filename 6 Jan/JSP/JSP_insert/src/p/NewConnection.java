package p;
import java.sql.*;

public class NewConnection {

	public static Connection getCon()
	{
		Connection conn = null;
		String url = "jdbc:mysql://localhost:3306/";
		String dbName = "db1";
		String driver = "com.mysql.jdbc.Driver";
		String username = "root";
		String password = "root";
		try 
		{			
			Class.forName(driver);
			conn = DriverManager.getConnection(url+dbName,username,password);
			//return conn;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return conn;
	}
	
	
}
