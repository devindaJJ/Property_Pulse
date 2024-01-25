package com.bs.controller;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.bs.utility.*;
import com.bs.model.payment;

public class paymentController {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//Retreive data from the database
	public static List<payment> getPaymentDetails(int user) {
		
  // 	int convertID = Integer.parseInt(paymentId);
		
		ArrayList<payment> pay = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "Select * from payment_details where payment_user_id ='"+user+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int paymentId1 = rs.getInt("payment_id");
				String cardName = rs.getString(2);
				long cardNumber = rs.getLong(3);
				String expYear = rs.getString(4);
				String expMonth = rs.getString(5);
				String cvv = rs.getString(6);
				String paymentUserId = rs.getString(7);
				
				payment payment = new payment(String.valueOf(paymentId1), cardName, cardNumber, expYear, expMonth, cvv, paymentUserId); //referes to the payment java class
				
				pay.add(payment);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return pay;
	}
	
	//Write / Insert Data
	public static boolean insertPaymentDetails( String cardName, long cardNumber, int expYear, int expMonth, int cvv, int user_id){
		boolean isSuccess = false;
		
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();

			String sql = "insert into payment_details (card_name, card_number, exp_year, exp_month, cvv, payment_user_id)values('"+cardName+"','"+cardNumber+"','"+expYear+"','"+expMonth+"','"+cvv+"', '"+user_id+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0)
			{
				isSuccess = true;			 	
			}else {
				isSuccess = false;
			}
			
			
		} 	catch (Exception e) {
			e.printStackTrace();
		}
			 
			return isSuccess;
	}
	
	
	//Update details
	
	public static boolean updatePayment(int paymentId, String cardName, long cardNumber, int expYear, int expMonth, int cvv, int userid) {
	    try {
	        con = DBConnect.getConnection();
	        stmt = con.createStatement();
	        

	        String sql = "UPDATE payment_details SET card_name='" + cardName + "', card_number=" + cardNumber +
	                     ", exp_year=" + expYear + ", exp_month=" + expMonth + ", cvv=" + cvv +
	                     " WHERE payment_id=" + paymentId + " AND payment_user_id=" + userid;
	    	        
	        int rs = stmt.executeUpdate(sql);

	        if (rs > 0) {
	            isSuccess = true;
	        } else {
	            isSuccess = false;
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return isSuccess;
	}

	
	//Delete 
	public static boolean deletePayment(int paymentid) {
		
		//int cName=Integer.parseInt(cardName);
		
		try {
			con = DBConnect.getConnection();
			stmt=con.createStatement();
			String sql = "DELETE FROM payment_details where payment_id='"+paymentid+"'";
			int r=stmt.executeUpdate(sql);
			
			if(r>0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			}
		return isSuccess;
	}
	
	
	
	

}
