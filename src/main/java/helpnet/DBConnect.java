package helpnet;

import java.sql.DriverManager;
import java.sql.Connection;

public class DBConnect {
	
	private static String url = "jdbc:mysql://127.0.0.1:3306/helpnet";
	private static String userName = "root";
	private static String password = "";
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, userName, password);
		}
		catch (Exception e) {
			System.out.println("Database Connection is not succes!!!");
		}
		
		return con;
	}
}
