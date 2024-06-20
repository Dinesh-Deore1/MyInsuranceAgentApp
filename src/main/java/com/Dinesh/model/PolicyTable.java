package com.Dinesh.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Entity
@Component
public class PolicyTable {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int policyId;
	private String policyHolderName;
	private String policyHolderDob;
	private String policyHolderContact;
	private String policyHoldercAddress;
	private String policyHoldercEmail;
	private String agentContact;
	private String policyTitle;
	private String policyDetails;
	private String dueDate;
	public int getPolicyId() {
		return policyId;
	}
	public void setPolicyId(int policyId) {
		this.policyId = policyId;
	}
	public String getPolicyHolderName() {
		return policyHolderName;
	}
	public void setPolicyHolderName(String policyHolderName) {
		this.policyHolderName = policyHolderName;
	}
	public String getPolicyHolderDob() {
		return policyHolderDob;
	}
	public void setPolicyHolderDob(String policyHolderDob) {
		this.policyHolderDob = policyHolderDob;
	}
	public String getPolicyHolderContact() {
		return policyHolderContact;
	}
	public void setPolicyHolderContact(String policyHolderContact) {
		this.policyHolderContact = policyHolderContact;
	}
	public String getPolicyHoldercAddress() {
		return policyHoldercAddress;
	}
	public void setPolicyHoldercAddress(String policyHoldercAddress) {
		this.policyHoldercAddress = policyHoldercAddress;
	}
	public String getPolicyHoldercEmail() {
		return policyHoldercEmail;
	}
	public void setPolicyHoldercEmail(String policyHoldercEmail) {
		this.policyHoldercEmail = policyHoldercEmail;
	}
	public String getAgentContact() {
		return agentContact;
	}
	public void setAgentContact(String agentContact) {
		this.agentContact = agentContact;
	}
	public String getPolicyTitle() {
		return policyTitle;
	}
	public void setPolicyTitle(String policyTitle) {
		this.policyTitle = policyTitle;
	}
	public String getPolicyDetails() {
		return policyDetails;
	}
	public void setPolicyDetails(String policyDetails) {
		this.policyDetails = policyDetails;
	}
	public String getDueDate() {
		return dueDate;
	}
	public void setDueDate(String dueDate) {
		this.dueDate = dueDate;
	}
	@Override
	public String toString() {
		return "PolicyTable [policyId=" + policyId + ", policyHolderName=" + policyHolderName + ", policyHolderDob="
				+ policyHolderDob + ", policyHoldercontact=" + policyHolderContact + ", policyHolderCAddress="
				+ policyHoldercAddress + ", policyHoldercEmail=" + policyHoldercEmail + ", agentContact=" + agentContact
				+ ", policyTitle=" + policyTitle + ", policyDetails=" + policyDetails + ", dueDate=" + dueDate + "]";
	}
	public PolicyTable() {
		super();
		// TODO Auto-generated constructor stub
	}

	

}	