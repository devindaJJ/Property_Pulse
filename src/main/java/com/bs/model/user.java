package com.bs.model;


public class user {
	private int id;
	private String firstname;
	private String lastname;
	private String birthday;
	private int phone;
	private String email;
	private String password;
	
	public user(int id, String firstname, String lastname, String bday, int phone, String email,String password) {
		this.id = id;
		this.firstname = firstname;
		this.lastname = lastname;
		this.birthday = bday;
		this.phone = phone;
		this.email = email;
		this.password = password;
	}
	
	
	public void setId(int user_id) {
		this.id = user_id;
	}

	public int getId() {
		return id;
	}

	public String getFirstname() {
		return firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public String getBirthday() {
		return birthday;
	}

	public int getPhone() {
		return phone;
	}

	public String getEmail() {
		return email;
	}

	public String getPassword() {
		return password;
	}
}
