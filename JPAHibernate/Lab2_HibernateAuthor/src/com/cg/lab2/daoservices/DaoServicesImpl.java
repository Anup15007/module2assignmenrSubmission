package com.cg.lab2.daoservices;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import com.cg.lab2.beans.Author;

public class DaoServicesImpl implements DaoServices {
	private EntityManagerFactory entityManagerFactory=Persistence.createEntityManagerFactory("JPA-PU");

	@Override
	public Author save(Author author) {
		EntityManager entityManager=entityManagerFactory.createEntityManager();
		entityManager.getTransaction().begin();
		entityManager.persist(author);
		entityManager.getTransaction().commit();
		entityManager.close();
		return author;
	}

	@Override
	public boolean update(Author author) {
		EntityManager entityManager=entityManagerFactory.createEntityManager();
		entityManager.getTransaction().begin();
		entityManager.merge(author);
		entityManager.getTransaction().commit();
		entityManager.close();
		return true;
	}

	@Override
	public Author findOne(int authorId) {
		return entityManagerFactory.createEntityManager().find(Author.class, authorId);

	}

	@Override
	public boolean remove(int authorId) {
		EntityManager entityManager=entityManagerFactory.createEntityManager();
		Author author=entityManager.find(Author.class, authorId);
		entityManager.getTransaction().begin();
		entityManager.remove(author);
		entityManager.getTransaction().commit();
		entityManager.close();
		return true;
	}

}
