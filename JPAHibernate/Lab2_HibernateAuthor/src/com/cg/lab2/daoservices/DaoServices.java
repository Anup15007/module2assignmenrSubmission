package com.cg.lab2.daoservices;

import com.cg.lab2.beans.Author;

public interface DaoServices {
     Author save(Author author);
     boolean update(Author author);
     Author findOne(int authorId);
     boolean remove(int authorId);
}
