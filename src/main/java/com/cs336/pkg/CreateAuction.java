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

@WebServlet("/auctions/createauction")
public class CreateAuction extends HttpServlet {
	public CreateAuction() {
		super();
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		String name = request.getParameter("name");
        String brand = request.getParameter("brand");
        String colors = request.getParameter("colors");
        String type = request.getParameter("type");
        int size = Integer.parseInt(request.getParameter("size"));
        int initPrice = Integer.parseInt(request.getParameter("initPrice"));
        int inc = Integer.parseInt(request.getParameter("inc"));
        int minSellPrice = Integer.parseInt(request.getParameter("minSell"));
        String date = request.getParameter("date");
        HttpSession session = request.getSession();
        Shoe newShoe = new Shoe(brand, colors, name, type, size);
        Auction newAuction = new Auction(newShoe, initPrice, inc, minSellPrice, initPrice, null, (User)session.getAttribute("user"), date, ++Server.AucID, false);
        session.setAttribute("Auc" + newAuction.getId(), ((User)session.getAttribute("user")).getUsername());
        session.setAttribute("AucEnd", "false");
        Server.auctions.add(newAuction);
        response.sendRedirect("buy.jsp");
    }
}