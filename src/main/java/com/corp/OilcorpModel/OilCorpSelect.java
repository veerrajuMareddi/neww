package com.corp.OilcorpModel;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class OilCorpSelect {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int branch;
	String country;
	@ManyToOne(cascade=CascadeType.ALL)
	private OilCorp con;
	
	public int getBranch() {
		return branch;
	}
	public void setBranch(int branch) {
		this.branch = branch;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public OilCorp getCon() {
		return con;
	}
	public void setCon(OilCorp con) {
		this.con = con;
	}

}
