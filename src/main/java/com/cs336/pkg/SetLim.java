package com.cs336.pkg;


import java.io.*;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
 
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/auctions/setlim")
public class SetLim extends HttpServlet {
	public SetLim() {
		super();
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int lim = Integer.parseInt(request.getParameter("lim"));
        User user = (User)request.getSession().getAttribute("user");
        user.setLimit(lim);
        response.sendRedirect("/cs336Project/auctions/placebid.jsp?id=" + user.getCurAuction().getId());
    }
}