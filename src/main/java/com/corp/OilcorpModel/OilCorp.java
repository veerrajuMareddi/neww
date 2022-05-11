package com.corp.OilcorpModel;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonManagedReference;
@Entity
@Table(name="OilCorp")
    public class OilCorp {
	@Id
	@Column(name="Branch_No")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int branch;
	private String branchManager;
	private String location;
	
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	@Column(name="Oil_reserves")
	private String oilReserves;
	
	@Column(name="Barrel_Price")
	private Double barrelPrice;
	
	@OneToOne(cascade=CascadeType.ALL,mappedBy="corp")
	@JsonManagedReference
	@JoinColumn(name = "emp_id")
	private OilCorpEmployees emp;
	
	@OneToOne(cascade=CascadeType.ALL,mappedBy="oilPrices")
	@JsonManagedReference
	private OilCorpPrices prices;
	
	public int getBranch() {
		return branch;
	}
	public void setBranch(int branch) {
		this.branch = branch;
	}
	public String getBranchManager() {
		return branchManager;
	}
	public void setBranchManager(String branchManager) {
		this.branchManager = branchManager;
	}
	
	public String getOilReserves() {
		return oilReserves;
	}
	public void setOilReserves(String oilReserves) {
		this.oilReserves = oilReserves;
	}
	public Double getBarrelPrice() {
		return barrelPrice;
	}
	public void setBarrelPrice(Double barrelPrice) {
		this.barrelPrice = barrelPrice;
	}
	public OilCorpEmployees getEmp() {
		return emp;
	}
	public void setEmp(OilCorpEmployees emp) {
		this.emp = emp;
	}
	public OilCorpPrices getPrices() {
		return prices;
	}
	public void setPrices(OilCorpPrices prices) {
		this.prices = prices;
	}
	
	}
	
	
	
	

