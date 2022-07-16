package com.cs336.pkg;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Timer;

public class Auction {
	Shoe shoe;
	int initPrice;
	int inc;
	int minSellPrice;
	
	int curPrice;
	int bidNum;
	
	User buyer;
	User seller;
	String closeDate;
	boolean ended;
	
	int id;
	Auction(){}
	Auction(Shoe shoe, int initPrice,
	int inc,
	int minPrice,
	int curPrice,
	User buyer,
	User seller,
	String closeDate,
	int id,
	boolean ended)  {
		this.shoe = shoe;
		this.initPrice = initPrice;
		this.inc = inc;
		this.minSellPrice = minPrice;
		this.curPrice = curPrice;
		this.buyer = buyer;
		this.seller = seller;
		this.closeDate = closeDate;
		this.bidNum = 0;
		this.id = id;
		this.ended = ended;
		
		
	}

	public void setShoe(Shoe shoe) {
		this.shoe = shoe;
	}

	public void setInitPrice(int initPrice) {
		this.initPrice = initPrice;
	}

	public void setInc(int inc) {
		this.inc = inc;
	}

	public void setMinSellPrice(int minSellPrice) {
		this.minSellPrice = minSellPrice;
	}

	public void setCurPrice(int curPrice) {
		this.curPrice = curPrice;
	}

	public void setBuyer(User buyer) {
		this.buyer = buyer;
	}

	public void setCloseDate(String closeDate) {
		this.closeDate = closeDate;
	}

	public Shoe getShoe() {
		return this.shoe;
	}

	public int getInitPrice() {
		return this.initPrice;
	}

	public int getInc() {
		return this.inc;
	}

	public int getMinSellPrice() {
		return this.minSellPrice;
	}

	public int getCurPrice() {
		return this.curPrice;
	}

	public User getBuyer() {
		return this.buyer;
	}

	public String getCloseDate() {
		return this.closeDate;
	}

	public User getSeller() {
		return this.seller;
	}


	public int getBidNum() {
		return this.bidNum;
	}

	public void setBidNum(int bidNum) {
		this.bidNum = bidNum;
	}
	
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public boolean isEnded() {
		return this.ended;
	}

	public void setEnded(boolean ended) {
		this.ended = ended;
	}
}
