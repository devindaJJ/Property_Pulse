package com.bs.controller;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.bs.utility.*;
import com.bs.model.user;

public class userController {
	
	private static boolean isSuccess = false;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
//use to validate user login	
	public static boolean validate(String email, String password) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "SELECT * FROM user_details where email='"+email+"'AND password='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
}
	
//use to retrieve user details	
	public static List<user> getUserDetails(String email2) {
				
		ArrayList<user> usr = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "Select * from user_details where email ='"+email2+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String fname = rs.getString(2);
				String lname = rs.getString(3);
				String bday = rs.getString(4);
				int phone = rs.getInt(5);
				String email = rs.getString(6);
				String password= rs.getNString(7);
				
				user u = new user(id, fname, lname, bday, phone, email, password);
				
				usr.add(u);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return usr;
	}
	
//use to intert user details	
	public static boolean insertcustomer(String fname,String lname,String bday,String phone,String email,String password){
		boolean isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "insert into user_details(first_name, last_name, birthday,contact_number,email,password) values('"+fname+"','"+lname+"','"+bday+"','"+phone+"','"+email+"','"+password+"')";
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
	
//use to update user details	
	public static boolean updateCustomer(int id,String fname, String lname,String bday,String phone) {
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			
			String sql ="UPDATE user_details set first_name='"+fname+"',last_name='"+lname+"',birthday='"+bday+"',contact_number='"+phone+"' WHERE user_id='"+id+"' ";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}else {
				isSuccess=false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}

//use to delete user details		
	public static boolean deleteUser(int Id) {
		
		
		try {
			con = DBConnect.getConnection();
			stmt=con.createStatement();
			
			String sql = "DELETE FROM user_details where user_id='"+Id+"'";
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

//use to retrieve user id from email for user session	
	public static int getUserIdByEmail(String email) {
	    int user_id = -1;  
	    try {
	        con = DBConnect.getConnection();
	        stmt = con.createStatement();
	        String sql = "SELECT user_id FROM user_details WHERE email = '" + email + "'";
	        rs = stmt.executeQuery(sql);

	        while (rs.next()) {
	            user_id = rs.getInt(1);
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return user_id;
	}
}

