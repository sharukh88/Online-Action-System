package com.cs336.pkg;

import java.util.ArrayList;

public class User {
    private String username;
    private String password;
    private int limit = -1;
    private ArrayList<Auction> myBids;
    private Auction curAuction;
    
	public String getUsername() {
		return this.username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getLimit() {
		return this.limit;
	}
	public void setLimit(int limit) {
		this.limit = limit;
	}

	public ArrayList<Auction> getMyBids() {
		return this.myBids;
	}
	public void addBid(Auction a) {
		if(this.myBids == null) this.myBids = new ArrayList<Auction>();
		this.myBids.add(a);
	}
	public Auction getCurAuction() {
		return this.curAuction;
	}
	public void setCurAuction(Auction curAuction) {
		this.curAuction = curAuction;
	}


 
}
