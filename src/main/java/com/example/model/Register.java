package com.example.model;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class Register {

	@Pattern(regexp="[a-zA-Z\\s]{3,}",message="Should contain atleast 3 alphabets")
	private String name;
	@Pattern(regexp="[0-9]{10}",message="Should contain only ten digits")
	private String mobileno;
	@Size(min=8,message="Should be atleast 8 characters")
	private String password;
	@Email(message = "Enter valid Email")
	@NotEmpty(message="should not empty")
	private String emailid;
	@Pattern(regexp="[a-zA-Z\\s]{3,}",message="Should contain atleast 3 alphabets")
	private String passhint;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMobileno() {
		return mobileno;
	}

	public void setMobileno(String mobileno) {
		this.mobileno = mobileno;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmailid() {
		return emailid;
	}

	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}

	public String getPasshint() {
		return passhint;
	}

	public void setPasshint(String passhint) {
		this.passhint = passhint;
	}

}
