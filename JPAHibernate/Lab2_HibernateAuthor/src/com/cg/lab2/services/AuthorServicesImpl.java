package com.cg.lab2.services;

import com.cg.lab2.beans.Author;
import com.cg.lab2.daoservices.DaoServices;
import com.cg.lab2.daoservices.DaoServicesImpl;

public class AuthorServicesImpl implements AuthorServices {
private DaoServices daoServices;
public  AuthorServicesImpl() {
	daoServices=new DaoServicesImpl();
}
	@Override
	public Author acceptAuthor(String firstName, String middleName, String lastName, long phoneNo) {
		Author author=new Author(firstName, middleName, lastName, phoneNo);
	    author=daoServices.save(author);
	    return author;
	}

	@Override
	public boolean update(Author author) {
		return daoServices.update(author);
	}

	@Override
	public Author findAuthor(int authorId) {
		return daoServices.findOne(authorId);
	}

	@Override
	public boolean removeAuthor(int authorId) {
		return daoServices.remove(authorId);
	}

}
