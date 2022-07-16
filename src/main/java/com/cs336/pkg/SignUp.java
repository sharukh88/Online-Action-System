package com.cs336.pkg;

import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
 
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/signup")
public class SignUp extends HttpServlet {
	public SignUp() {
		super();
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		String name = request.getParameter("name");
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
         

        try {
        	ApplicationDB db = new ApplicationDB();	
    		Connection con = db.getConnection();
    		
	            String sql2 = "INSERT INTO project.users (Name, Username, Password, Email)"
	            		+ "VALUES (?, ?, ?, ?)";
	            PreparedStatement statement = con.prepareStatement(sql2);
	            statement.setString(1, name);
	            statement.setString(2, username);
	            statement.setString(3, password);
	            statement.setString(4, email);
	     
	            int result = statement.executeUpdate();
	            String message = "Successfully created new account";
	            request.setAttribute("message", message);
	            RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
	            dispatcher.forward(request, response);
             
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }
}
