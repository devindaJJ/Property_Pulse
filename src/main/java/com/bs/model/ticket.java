package com.bs.model;


public class ticket {
	
	private int ticketId;
	private String email;
	private String topic;
	private String message;
	

	public ticket(int ticketId, String email, String topic, String message) {
		super();
		this.ticketId = ticketId;
		this.email = email;
		this.topic = topic;
		this.message = message;
	}
	public int getTicketId() {
		return ticketId;
	}

	public String getEmail() {
		return email;
	}

	public String getTopic() {
		return topic;
	}

	public String getMessage() {
		return message;
	}

	

	
	

}
