package helpnet;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class inquiryDBUtil {
    
    private static Connection con = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;
    private static boolean isSuccess;

    // Method to validate inquiry by name and email
    public static List<inquiry> validate(String name, String email) {
        ArrayList<inquiry> inq = new ArrayList<>();

        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            
            // SQL query to check for matching name and email
            String sql = "SELECT * FROM inquiry WHERE name = '" + name + "' AND email = '" + email + "'";
            rs = stmt.executeQuery(sql);
            
            if (rs.next()) {
                int inqNo = rs.getInt(1);
                String nameU = rs.getString(2);
                String emailU = rs.getString(3);
                String message = rs.getString(4);

                // Creating inquiry object and adding to the list
                inquiry i = new inquiry(inqNo, nameU, emailU, message);
                inq.add(i);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return inq;
    }

    // Method to insert a new inquiry
    public static boolean insertinquiry(String name, String email, String message) {
        boolean isSuccess = false;
        String sql = "INSERT INTO inquiry (name, email, message) VALUES (?, ?, ?)";

        try (Connection con = DBConnect.getConnection();
             PreparedStatement pstmt = con.prepareStatement(sql)) {

            pstmt.setString(1, name);
            pstmt.setString(2, email);
            pstmt.setString(3, message);

            int rowsAffected = pstmt.executeUpdate();
            isSuccess = rowsAffected > 0; // Check if at least one row was affected

        } catch (Exception e) {
            e.printStackTrace();
        }
        return isSuccess;
    }

    // Method to update an existing inquiry
    public static boolean updateinquiry(String inqNo, String name, String email, String message) {
        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String sql = "UPDATE inquiry SET name='" + name + "', email='" + email + "', message='" + message + "'"
                    + " WHERE inqNo='" + inqNo + "'";
            int rs = stmt.executeUpdate(sql);

            isSuccess = rs > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return isSuccess;
    }

    // Method to get inquiry details by inquiry number
    public static List<inquiry> getinquiryDetails(String inqNo) {
        int convertedID = Integer.parseInt(inqNo);
        ArrayList<inquiry> inq = new ArrayList<>();

        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String sql = "SELECT * FROM inquiry WHERE inqNo = '" + convertedID + "'";
            rs = stmt.executeQuery(sql);

            // Use a different variable name here to avoid conflict with the method parameter
            while (rs.next()) {
                int inquiryNumber = rs.getInt(1);  
                String name = rs.getString(2);
                String email = rs.getString(3);
                String message = rs.getString(4);

                inquiry i = new inquiry(inquiryNumber, name, email, message);
                inq.add(i);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return inq;
    }
    
    public static boolean deleteinquiry(String inqNo) {
    	
    	int convId = Integer.parseInt(inqNo);
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "delete from inquiry where inqNo='"+convId+"'";
    		int r = stmt.executeUpdate(sql);
    		
    		if (r > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	
    	return isSuccess;
    	
    }
}
