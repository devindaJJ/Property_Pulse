package com.bs.model;

public class payment {
	private String paymentId;
	private String cardName;
	private long cardNumber;
	private String expYear;
	private String expMonth;
	private String cvv;
	private String paymentUserId;
	
	public payment(String paymentId, String cardName, long cardNumber, String expYear, String expMonth, String cvv, String paymentUserId) {
		
		this.paymentId = paymentId;
		this.cardName = cardName;
		this.cardNumber = cardNumber;
		this.expYear = expYear;
		this.expMonth = expMonth;
		this.cvv = cvv;
		this.paymentUserId = paymentUserId;		
	}
	
	
	public String getPayment_id() {
		return paymentId;
	}
	public String getCardName() {
		return cardName;
	}
	public long getCardNumber() {
		return cardNumber;
	}
	public String getExpYear() {
		return expYear;
	}
	public String getExpMonth() {
		return expMonth;
	}
	public String getCvv() {
		return cvv;
	}
	public String getPaymentUserId() {
		return paymentUserId;
	}
}
