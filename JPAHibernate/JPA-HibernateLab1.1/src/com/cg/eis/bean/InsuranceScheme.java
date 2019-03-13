package com.cg.eis.bean;

import javax.persistence.Embeddable;

@Embeddable
public class InsuranceScheme {
 private String EmpInsuranceScheme;
 public InsuranceScheme() {}
public InsuranceScheme(String empInsuranceScheme) {
	super();
	EmpInsuranceScheme = empInsuranceScheme;
}
public String getEmpInsuranceScheme() {
	return EmpInsuranceScheme;
}
public void setEmpInsuranceScheme(String empInsuranceScheme) {
	EmpInsuranceScheme = empInsuranceScheme;
}
@Override
public String toString() {
	return "InsuranceScheme [EmpInsuranceScheme=" + EmpInsuranceScheme + "]";
}
@Override
public int hashCode() {
	final int prime = 31;
	int result = 1;
	result = prime * result + ((EmpInsuranceScheme == null) ? 0 : EmpInsuranceScheme.hashCode());
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
	InsuranceScheme other = (InsuranceScheme) obj;
	if (EmpInsuranceScheme == null) {
		if (other.EmpInsuranceScheme != null)
			return false;
	} else if (!EmpInsuranceScheme.equals(other.EmpInsuranceScheme))
		return false;
	return true;
}
	


}
