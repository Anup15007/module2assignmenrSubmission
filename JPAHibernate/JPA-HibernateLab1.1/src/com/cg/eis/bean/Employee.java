package com.cg.eis.bean;

import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Employee {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int empId;
	private String empName;
	private float empSalary;
	private String empDesignation;
	@Embedded
	private InsuranceScheme insuranceScheme;
	public Employee() {}
	public Employee(int empId, String empName, float empSalary, String empDesignation,
			InsuranceScheme insuranceScheme) {
		super();
		this.empId = empId;
		this.empName = empName;
		this.empSalary = empSalary;
		this.empDesignation = empDesignation;
		this.insuranceScheme = insuranceScheme;
	}
	
	public Employee(String empName, float empSalary, String empDesignation, InsuranceScheme insuranceScheme) {
		super();
		this.empName = empName;
		this.empSalary = empSalary;
		this.empDesignation = empDesignation;
		this.insuranceScheme = insuranceScheme;
	}
	@Override
	public String toString() {
		return "Employee [empId=" + empId + ", empName=" + empName + ", empSalary=" + empSalary + ", empDesignation="
				+ empDesignation + ", insuranceScheme=" + insuranceScheme + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((empDesignation == null) ? 0 : empDesignation.hashCode());
		result = prime * result + empId;
		result = prime * result + ((empName == null) ? 0 : empName.hashCode());
		result = prime * result + Float.floatToIntBits(empSalary);
		result = prime * result + ((insuranceScheme == null) ? 0 : insuranceScheme.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Employee other = (Employee) obj;
		if (empDesignation == null) {
			if (other.empDesignation != null)
				return false;
		} else if (!empDesignation.equals(other.empDesignation))
			return false;
		if (empId != other.empId)
			return false;
		if (empName == null) {
			if (other.empName != null)
				return false;
		} else if (!empName.equals(other.empName))
			return false;
		if (Float.floatToIntBits(empSalary) != Float.floatToIntBits(other.empSalary))
			return false;
		if (insuranceScheme == null) {
			if (other.insuranceScheme != null)
				return false;
		} else if (!insuranceScheme.equals(other.insuranceScheme))
			return false;
		return true;
	}
	public int getEmpId() {
		return empId;
	}
	public void setEmpId(int empId) {
		this.empId = empId;
	}
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public float getEmpSalary() {
		return empSalary;
	}
	public void setEmpSalary(float empSalary) {
		this.empSalary = empSalary;
	}
	public String getEmpDesignation() {
		return empDesignation;
	}
	public void setEmpDesignation(String empDesignation) {
		this.empDesignation = empDesignation;
	}
	public InsuranceScheme getInsuranceScheme() {
		return insuranceScheme;
	}
	public void setInsuranceScheme(InsuranceScheme insuranceScheme) {
		this.insuranceScheme = insuranceScheme;
	}
	public Employee(String empName, float empSalary, String empDesignation) {
		super();
		this.empName = empName;
		this.empSalary = empSalary;
		this.empDesignation = empDesignation;
	}
	
	
	
}
