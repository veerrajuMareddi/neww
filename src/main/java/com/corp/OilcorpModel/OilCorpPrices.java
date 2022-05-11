package com.corp.OilcorpModel;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;

@Entity
@Table(name="OilPrices")
public class OilCorpPrices {
	@Id
	@Column(name="Branch_No")
	@GeneratedValue(strategy = GenerationType.IDENTITY )
	private int branch;
	@Column(name="CrudeOil_Price")
	Double crudePrice;
	@Column(name="Petrol_Price")
	Double petrolPrice;
	@Column(name="Diesel_Price")
	Double dieselPrice;
	@Column(name="Gas_Price")
	Double gasPrice;
	@OneToOne(cascade=CascadeType.ALL)
	@JsonBackReference
	private OilCorp oilPrices;
	
	
	public OilCorp getOilPrices() {
		return oilPrices;
	}
	public void setOilPrices(OilCorp oilPrices) {
		this.oilPrices = oilPrices;
	}
	public int getBranch() {
		return branch;
	}
	public void setBranch(int branch) {
		this.branch = branch;
	}
	public Double getCrudePrice() {
		return crudePrice;
	}
	public void setCrudePrice(Double crudePrice) {
		this.crudePrice = crudePrice;
	}
	public Double getPetrolPrice() {
		return petrolPrice;
	}
	public void setPetrolPrice(Double petrolPrice) {
		this.petrolPrice = petrolPrice;
	}
	public Double getDieselPrice() {
		return dieselPrice;
	}
	public void setDieselPrice(Double dieselPrice) {
		this.dieselPrice = dieselPrice;
	}
	public Double getGasPrice() {
		return gasPrice;
	}
	public void setGasPrice(Double gasPrice) {
		this.gasPrice = gasPrice;
	}
	
	

}
