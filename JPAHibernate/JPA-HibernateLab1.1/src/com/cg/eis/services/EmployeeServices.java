package com.cg.eis.services;

import com.cg.eis.bean.Employee;
import com.cg.eis.exceptions.NoSchemeFoundException;

public interface EmployeeServices {
	Employee save(Employee employee) throws NoSchemeFoundException; 
	boolean delete (Employee employee);
}
