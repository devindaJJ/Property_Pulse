package com.bs.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.bs.utility.*;
import com.bs.model.property;


public class propertyController {
	
	private static Connection con = null;
	
	
//use to insert property details
public static boolean insertproperty(String proptitle, String description, String propstatus, String proptype,
		String propRooms, String propprice, String landsize, String address, String propcity, int userid, 
		InputStream image) {        
	boolean isSuccess = false;

        try {
            con = DBConnect.getConnection();

            // Use a PreparedStatement to prevent SQL injection
            String sql = "INSERT INTO property_details(property_title, description, prop_status, prop_type, "
                    + "prop_rooms, price, land_size, prop_address, prop_city, date_published, Puser_id, prop_image) "
                    + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement pstmt = con.prepareStatement(sql);

            int convprice = Integer.parseInt(propprice);
            int convrooms = Integer.parseInt(propRooms);
            int convland = Integer.parseInt(landsize);

            // Set the values for the PreparedStatement
            pstmt.setString(1, proptitle);
            pstmt.setString(2, description);
            pstmt.setString(3, propstatus);
            pstmt.setString(4, proptype);
            pstmt.setInt(5, convrooms);
            pstmt.setInt(6, convprice);
            pstmt.setInt(7, convland);
            pstmt.setString(8, address);
            pstmt.setString(9, propcity);

            
            LocalDateTime currentDateTime = LocalDateTime.now();

            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
            String formattedDateTime = currentDateTime.format(formatter);
            pstmt.setString(10, formattedDateTime);

            pstmt.setInt(11, userid);
            pstmt.setBlob(12, image);

            int rs = pstmt.executeUpdate();

            if (rs > 0) {
                isSuccess = true;
            } else {
                isSuccess = false;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return isSuccess;
    }


//use to retrieve property details by property id
public static List<property> getPropertyDetailsByPropId(String propid) {
    ArrayList<property> prop = new ArrayList<>();

    try {
        con = DBConnect.getConnection();
        int convId = Integer.parseInt(propid);

        String sql = "SELECT * FROM property_details WHERE property_id = ?";
        try (PreparedStatement pstmt = con.prepareStatement(sql)) {
            pstmt.setInt(1, convId); 
            try (ResultSet rs = pstmt.executeQuery()) {
                while (rs.next()) {
                    int id = rs.getInt(1);
                    String title = rs.getString(2);
                    String description = rs.getString(3);
                    String status = rs.getString(4);
                    String type = rs.getString(5);
                    int rooms = rs.getInt(6);
                    int price = rs.getInt(7);
                    int landsize = rs.getInt(8);
                    String address = rs.getString(9);
                    String city = rs.getString(10);
                    String date = rs.getString(11);                    
                    InputStream inputStream = rs.getBinaryStream(13);
                    int fileLength = inputStream.available();
                    byte[] buffer = new byte[fileLength];
                    inputStream.read(buffer);
                    inputStream.close();
                    String imageData = Base64.getEncoder().encodeToString(buffer);

                    property p = new property(id, title, description, status, type, rooms, price, landsize, address, city, date, imageData);

                    prop.add(p);
                }
            }
        }
    } catch (Exception e) {
        e.printStackTrace();
    }

    return prop;
}

//use to retrieve property details by user id
public static List<property> getPropertyDetailsbyUserid(int userid) {

    ArrayList<property> prop = new ArrayList<>();

    try {
        con = DBConnect.getConnection();
        String sql = "SELECT * FROM property_details WHERE Puser_id = ?";
        try (PreparedStatement pstmt = con.prepareStatement(sql)) {
            pstmt.setInt(1, userid);
            try (ResultSet rs = pstmt.executeQuery()) {
                while (rs.next()) {
                    int id = rs.getInt(1);
                    String title = rs.getString(2);
                    String description = rs.getString(3);
                    String status = rs.getString(4);
                    String type = rs.getString(5);
                    int rooms = rs.getInt(6);
                    int price = rs.getInt(7);
                    int landsize = rs.getInt(8);
                    String address = rs.getString(9);
                    String city = rs.getString(10);
                    String date = rs.getString(11);                    
                    InputStream inputStream = rs.getBinaryStream(13);
    				int fileLength = inputStream.available();
    				byte[] buffer = new byte[fileLength];
    				inputStream.read(buffer);
    				inputStream.close();
    				String imageData = Base64.getEncoder().encodeToString(buffer);

                    property p = new property(id, title, description, status, type, rooms, price, landsize, address, city, date, imageData);

                    prop.add(p);
                }
            }
        }
    } catch (Exception e) {
        e.printStackTrace();
    }

    return prop;
}

//use to delete property details
public static boolean deleteProperty(String id) {
    int convid = Integer.parseInt(id);
	boolean isSuccess = false;

    try {
        con = DBConnect.getConnection();

        String sql = "DELETE FROM property_details WHERE property_id = ?";
        try (PreparedStatement pstmt = con.prepareStatement(sql)) {
            pstmt.setInt(1, convid);
            int r = pstmt.executeUpdate();

            if (r > 0) {
                isSuccess = true;
            } else {
                isSuccess = false;
            }
        }

    } catch (Exception e) {
        e.printStackTrace();
    }
    
    return isSuccess;
}

//use to update property details
public static boolean updateProperty(String propId, String proptitle, String description, String propstatus, String proptype, String propRooms, String propprice, String landsize, String address, String propcity, InputStream image) {
    boolean isSuccess = false;

    try {
        con = DBConnect.getConnection();

        String sql = "UPDATE property_details SET property_title=?, description=?, prop_status=?, prop_type=?, prop_rooms=?, price=?, land_size=?, prop_address=?, prop_city=?, prop_image=? WHERE property_id=?";
        try (PreparedStatement pstmt = con.prepareStatement(sql)) {
            int convprice = Integer.parseInt(propprice);
            int convrooms = Integer.parseInt(propRooms);
            int convland = Integer.parseInt(landsize);

            pstmt.setString(1, proptitle);
            pstmt.setString(2, description);
            pstmt.setString(3, propstatus);
            pstmt.setString(4, proptype);
            pstmt.setInt(5, convrooms);
            pstmt.setInt(6, convprice);
            pstmt.setInt(7, convland);
            pstmt.setString(8, address);
            pstmt.setString(9, propcity);
            pstmt.setBlob(10, image);

            int propertyId = Integer.parseInt(propId);
            pstmt.setInt(11, propertyId);

            int rs = pstmt.executeUpdate();

            if (rs > 0) {
                isSuccess = true;
            } else {
                isSuccess = false;
            }
        }

    } catch (SQLException e) {
        e.printStackTrace();
    } catch (Exception e) {
        e.printStackTrace();
    }

    return isSuccess;
}


//use to retrieve all property details
public static List<property> DisplayAllProperty() {
	ArrayList<property> prop = new ArrayList<>();

    try {
        con = DBConnect.getConnection();

        String sql = "SELECT * FROM property_details";
        try (PreparedStatement pstmt = con.prepareStatement(sql)) {
            try (ResultSet rs = pstmt.executeQuery()) {
                while (rs.next()) {
                    int id = rs.getInt(1);
                    String title = rs.getString(2);
                    String description = rs.getString(3);
                    String status = rs.getString(4);
                    String type = rs.getString(5);
                    int rooms = rs.getInt(6);
                    int price = rs.getInt(7);
                    int landsize = rs.getInt(8);
                    String address = rs.getString(9);
                    String city = rs.getString(10);
                    String date = rs.getString(11);                    
                    InputStream inputStream = rs.getBinaryStream(13);
                    int fileLength = inputStream.available();
                    byte[] buffer = new byte[fileLength];
                    inputStream.read(buffer);
                    inputStream.close();
                    String imageData = Base64.getEncoder().encodeToString(buffer);

                    property p = new property(id, title, description, status, type, rooms, price, landsize, address, city, date, imageData);

                    prop.add(p);
                }
            }
        }
    } catch (Exception e) {
        e.printStackTrace();
    }

    return prop;
}



}



