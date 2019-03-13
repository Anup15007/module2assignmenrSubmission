package com.cg.eis.services;

import com.cg.eis.bean.Employee;
import com.cg.eis.bean.InsuranceScheme;
import com.cg.eis.daoservices.EmployeeDao;
import com.cg.eis.daoservices.EmployeeDaoImpl;
import com.cg.eis.exceptions.NoSchemeFoundException;

public class EmployeeServiceImpl implements EmployeeServices {
EmployeeDao employeeDao=new EmployeeDaoImpl();
	@Override
	public Employee save(Employee employee) throws NoSchemeFoundException {
		String designation=employee.getEmpDesignation();
		float salary=employee.getEmpSalary();
			if((salary>5000 && salary<20000) && designation.equalsIgnoreCase("System Associate"))
				employee.setInsuranceScheme(new InsuranceScheme("Scheme A"));
			else if((salary>=20000 && salary<40000)&& designation.equalsIgnoreCase("Programmer"))
				employee.setInsuranceScheme(new InsuranceScheme("Scheme B"));
			else if(salary>=40000 && designation.equalsIgnoreCase("Manager"))
				employee.setInsuranceScheme(new InsuranceScheme("Scheme C"));
			else if(salary<5000 && designation.equalsIgnoreCase("Clerk"))
				employee.setInsuranceScheme(new InsuranceScheme("No Scheme"));
			else
				throw new NoSchemeFoundException("No Scheme for this salary and Designation");
			employeeDao.save(employee);
		return employee;
	}
	@Override
	public boolean delete(Employee employee) {
		employeeDao.delete(employee);
		return true;
	}

}
