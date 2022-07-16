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

@WebServlet("/auctions/aucredir")
public class AucRedir extends HttpServlet {
	public AucRedir() {
		super();
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("id"));
		for(Auction au:Server.auctions) {
			if(au.getId() == id) {
				((User)request.getSession().getAttribute("user")).setCurAuction(au);
				break;
			}
		}
		
		response.sendRedirect("/cs336Project/auctions/placebid.jsp?id=" + id);
    }
}