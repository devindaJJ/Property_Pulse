package com.bs.model;

public class property {
    private int propertyId;
    private String propertyTitle;
    private String description;
    private String propStatus;
    private String propType;
    private int propRooms;
    private int price;
    private int landSize;
    private String propAddress;
    private String propCity;
    private String datePublished;
    private String imageData;

    public property(int id, String title, String description2, String status, String type, int rooms, int price2,
			int landsize2, String address, String city, String date,String image) {
    	  this.propertyId = id;
          this.propertyTitle = title;
          this.description = description2;
          this.propStatus = status;
          this.propType = type;
          this.propRooms = rooms;
          this.price = price2;
          this.landSize = landsize2;
          this.propAddress = address;
          this.propCity = city;
          this.datePublished = date;
          this.imageData = image;
	}

	public int getPropertyId() {
        return propertyId;
    }

    public String getPropertyTitle() {
        return propertyTitle;
    }

    public String getDescription() {
        return description;
    }

    public String getPropStatus() {
        return propStatus;
    }

    public String getPropType() {
        return propType;
    }

    public int getPropRooms() {
        return propRooms;
    }

    public int getPrice() {
        return price;
    }

    public int getLandSize() {
        return landSize;
    }

    public String getPropAddress() {
        return propAddress;
    }

    public String getPropCity() {
        return propCity;
    }

    public String getDatePublished() {
        return datePublished;
    }
    
    public String getImageData() {
        return imageData;
    }
    
    public void setImageData(String imageData) {
        this.imageData = imageData;
    }

}