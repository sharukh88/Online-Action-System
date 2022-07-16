package com.cs336.pkg;

import java.util.TimerTask;


public class AuctionTimer extends TimerTask{
	private Auction a;


    AuctionTimer (Auction a)
    {
      this.a = a;
    }

    public void run() {
      a.ended = true;
    }
}
