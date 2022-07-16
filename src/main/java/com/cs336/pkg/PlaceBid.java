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

@WebServlet("/auctions/placebid")
public class PlaceBid extends HttpServlet {
	public PlaceBid() {
		super();
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int bid = Integer.parseInt(request.getParameter("bid"));
        User user = (User)request.getSession().getAttribute("user");
        user.getCurAuction().setBidNum(user.getCurAuction().getBidNum() + 1);
        user.getCurAuction().setCurPrice(bid);
        user.getCurAuction().setBuyer((User)request.getSession().getAttribute("user"));
        request.setAttribute("Auc" + user.getCurAuction().getId(), user.getUsername());
        if(((User)request.getSession().getAttribute("user")).getMyBids() != null) {
	        for(Auction a : ((User)request.getSession().getAttribute("user")).getMyBids()) {
	        	if(a.id == user.getCurAuction().getId()) {
	        		response.sendRedirect("/cs336Project/auctions/placebid.jsp?id=" + user.getCurAuction().getId());
	        		return;
	        	}
	        }
        }
        ((User)request.getSession().getAttribute("user")).addBid(user.getCurAuction());
        response.sendRedirect("/cs336Project/auctions/placebid.jsp?id=" + user.getCurAuction().getId());
    }
}