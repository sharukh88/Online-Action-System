package com.cs336.pkg;
import java.sql.*;
 
public class CheckUser {
 
    public User checkLogin(String username, String password) throws SQLException,
            ClassNotFoundException {
    	ApplicationDB db = new ApplicationDB();	
		Connection con = db.getConnection();
        String sql = "SELECT * FROM Users WHERE Username = ? and Password = ? COLLATE utf8mb4_0900_as_cs";
        PreparedStatement statement = con.prepareStatement(sql);
        statement.setString(1, username);
        statement.setString(2, password);
 
        ResultSet result = statement.executeQuery();
 
        User user = null;
 
        if (result.next()) {
            user = new User();
            user.setUsername(username);
        }
 
        con.close();
 
        return user;
    }
}