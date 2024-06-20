package com.Dinesh.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Entity
@Component
public class PolicyHolder {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int pId;
	private String name;
	private String dob;
	private String contact;
	private String address;
	private String email;
	private String password;
	
	
	public int getpId() {
		return pId;
	}
	public void setpId(int pId) {
		this.pId = pId;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
	public PolicyHolder() {
		super();
		
	}
	public PolicyHolder(int pId, String name, String dob, String contact, String address, String email,
			String password) {
		super();
		this.pId = pId;
		this.name = name;
		this.dob = dob;
		this.contact = contact;
		this.address = address;
		this.email = email;
		this.password = password;
	}
	@Override
	public String toString() {
		return "PolicyHolder [pId=" + pId + ", name=" + name + ", dob=" + dob + ", contact=" + contact + ", address="
				+ address + ", email=" + email + ", password=" + password + "]";
	}
	
	
	

}
