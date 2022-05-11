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
@Table(name="OilCorpEmployees")
public class OilCorpEmployees {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    private int branch;
	
	@Column(name="TotalsEmplyoees")
	private int toatalEmployees;
	
	@Column(name="salaryforIndividual")
	Double salary;
	
	String assistManager;
	

	public String getAssistManager() {
		return assistManager;
	}
	public void setAssistManager(String assistManager) {
		this.assistManager = assistManager;
	}
	@OneToOne(cascade=CascadeType.ALL )
	@JsonBackReference
	private OilCorp corp;
	
	
	public OilCorp getCorp() {
		return corp;
	}
	public void setCorp(OilCorp corp) {
		this.corp = corp;
	}
	public int getBranch() {
		return branch;
	}
	public void setBranch(int branch) {
		this.branch = branch;
	}
	public int getToatalEmployees() {
		return toatalEmployees;
	}
	public void setToatalEmployees(int toatalEmployees) {
		this.toatalEmployees = toatalEmployees;
	}
	public Double getSalary() {
		return salary;
	}
	public void setSalary(Double salary) {
		this.salary = salary;
	}
}
