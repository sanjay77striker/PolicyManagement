package com.example.model;

import javax.validation.constraints.Pattern;

public class Policy {
	
	@Pattern(regexp="[0-9]{3,}",message="Should contain atleast 3 digits,only numbers")
	private String policyid;	
	
	private String policyname;
	private String policytype;
	
	@Pattern(regexp="[0-9]{1,}",message="Should contain only numbers")
	private String amount;
	@Pattern(regexp="[0-9]{1,}",message="Should contain only numbers")
	private String years;
	@Pattern(regexp="[0-9]{1,}",message="Should contain only numbers")
	private String maturity;
	@Pattern(regexp="[a-zA-Z\\s]{3,}",message="Should contain atleast 3 alphabets")
	private String nomination;
	@Pattern(regexp="[a-zA-Z\\s]{3,}",message="Should contain atleast 3 alphabets")
	private String bankname;
	@Pattern(regexp="[0-9]{6,}",message="Should contain atleast 6 numbers")	
	private String accountno;

	
    private String userid;	
    private String username; 


	public String getPolicyid() {
		return policyid;
	}

	public void setPolicyid(String policyid) {
		this.policyid = policyid;
	}

	public String getPolicyname() {
		return policyname;
	}

	public void setPolicyname(String policyname) {
		this.policyname = policyname;
	}

	public String getPolicytype() {
		return policytype;
	}

	public void setPolicytype(String policytype) {
		this.policytype = policytype;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	public String getYears() {
		return years;
	}

	public void setYears(String years) {
		this.years = years;
	}

	public String getMaturity() {
		return maturity;
	}

	public void setMaturity(String maturity) {
		this.maturity = maturity;
	}

	public String getNomination() {
		return nomination;
	}

	public void setNomination(String nomination) {
		this.nomination = nomination;
	}

	public String getBankname() {
		return bankname;
	}

	public void setBankname(String bankname) {
		this.bankname = bankname;
	}

	public String getAccountno() {
		return accountno;
	}

	public void setAccountno(String accountno) {
		this.accountno = accountno;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}  

}
