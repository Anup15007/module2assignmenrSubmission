package com.cg.eis.client;

import com.cg.eis.bean.Employee;
import com.cg.eis.exceptions.NoSchemeFoundException;
import com.cg.eis.services.EmployeeServiceImpl;
import com.cg.eis.services.EmployeeServices;

public class Client {

	public static void main(String[] args) {
		EmployeeServices services=new EmployeeServiceImpl();
		Employee employee=new Employee("Arun", 50000, "System Associate");
		try {
			System.out.println(services.save(employee));
			services.delete(employee1);
		} catch (NoSchemeFoundException e) {
			System.out.println(e.getMessage());
		}
	
	 	
	}

}
