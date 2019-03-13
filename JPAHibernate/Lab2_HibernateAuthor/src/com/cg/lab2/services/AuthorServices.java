package com.cg.lab2.services;
import com.cg.lab2.beans.Author;
public interface AuthorServices {
	Author acceptAuthor(String firstName,String middleName,String lastName,long phoneNo);
    boolean update(Author author);
    Author findAuthor(int authorId);
    boolean removeAuthor(int authorId);
}
