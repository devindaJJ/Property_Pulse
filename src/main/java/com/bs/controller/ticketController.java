package com.bs.controller;

import com.bs.utility.*;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.bs.model.ticket;
//insert ticket method
public class ticketController {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean insertTicket(String email,String topic,String message){
		boolean isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "insert into message_details(email, message_title, message_description ) values('"+email+"','"+topic+"','"+message+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0)
			{
				isSuccess = true;				
			}else {
				isSuccess = false;
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
			 
		return isSuccess;
	}
	//read ticket details method
	public static List<ticket> viewTicket(String mail) {
		
		ArrayList<ticket> tic = new ArrayList<>();
		
		try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "select* from message_details where email ='"+mail+"'";
		rs = stmt.executeQuery(sql);
		
		if(rs.next()) {
			int message_id = rs.getInt(1);
			String email = rs.getString(2);
			String message_title = rs.getString(3);
			String message_description = rs.getString(4);
			
			ticket t = new ticket(message_id,email,message_title,message_description);
			tic.add(t);	
		}
		
		}catch(Exception e){
			e.printStackTrace();
			
		}		
		return tic;
	}
	//update ticket method
	public static boolean updateTicket(String id, String email, String topic, String message) {
		
		try {
		con = DBConnect.getConnection();
		stmt= con.createStatement();
		String sql = "update message_details set email='"+email+"',  message_title='"+topic+"',  message_description='"+message+"' where message_id = '"+id+"'"  ;
		int rs = stmt.executeUpdate(sql);
		
		if(rs >0) {
			isSuccess = true;
		}else {
			isSuccess = false;
		}
		
		
		
		
		}catch(Exception e){
			e.printStackTrace();
		}
		
		
		
		
		
		
		return isSuccess;
	}
	//get ticket details
	public static List<ticket> getTicketDetails(String Id){
		
		int convertedId = Integer.parseInt(Id);
		
		ArrayList<ticket> t = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "Select * from message_details where message_id='"+convertedId+"'";
			rs =stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String email = rs.getString(2);
				String message_title = rs.getString(3);
				String message_description = rs.getString(4);
				
				ticket c = new ticket(id,email,message_title,message_description);
				t.add(c);
			}
			
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		
		return t;
		
		
	}
	
	//delete ticket method
	public static boolean deleteTicket(String id) {
		
		int convertedInt = Integer.parseInt(id);
		
		try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql ="delete from message_details where message_id ='"+convertedInt+"' "; 
		int rs = stmt.executeUpdate(sql);
		
		if(rs>0) {
			isSuccess = true;
			
		}else {
			isSuccess = false;
		}
		
		
		
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return isSuccess;
	}

}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	



