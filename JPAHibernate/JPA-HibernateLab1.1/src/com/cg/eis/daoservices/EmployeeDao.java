package com.cg.eis.daoservices;
import java.util.List;
import com.cg.eis.bean.Employee;

public interface EmployeeDao {
 Employee save(Employee employee);
boolean update(Employee employee);
boolean delete(Employee employee);
Employee findOne(int empId);
List <Employee> findAll();
}
