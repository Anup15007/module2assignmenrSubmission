package com.cg.eis.daoservices;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.cg.eis.bean.Employee;

public class EmployeeDaoImpl implements EmployeeDao{
	EntityManagerFactory entityManagerFactory=Persistence.createEntityManagerFactory("JPA-PU");
	@Override
	public Employee save(Employee employee) {
		EntityManager entityManager=entityManagerFactory.createEntityManager();
		entityManager.getTransaction().begin();
		entityManager.persist(employee);
		entityManager.getTransaction().commit();
		entityManager.close();
		return employee;
	}

	@Override
	public boolean update(Employee employee) {
		EntityManager entityManager=entityManagerFactory.createEntityManager();
		entityManager.getTransaction().begin();
		entityManager.merge(employee);
		entityManager.getTransaction().commit();
		entityManager.close();
		return true;
	}

	@Override
	public Employee findOne(int empId) {
		EntityManager entityManager=entityManagerFactory.createEntityManager();
		Employee employee=entityManager.find(Employee.class, empId);
		return employee;
	}

	@Override
	public List<Employee> findAll() {
		return entityManagerFactory.createEntityManager().createQuery("from Employee e").getResultList();
	}

	@Override
	public boolean delete(Employee employee) {
		EntityManager entityManager=entityManagerFactory.createEntityManager();
		employee=entityManager.find(Employee.class, employee.getEmpId());
		entityManager.remove(employee);
		return true;
	}

}
