package com.cg.lab2.client;
import com.cg.lab2.beans.Author;
import com.cg.lab2.services.AuthorServices;
import com.cg.lab2.services.AuthorServicesImpl;
public class MainClass {
	public static void main(String args[]) {
AuthorServices services=new AuthorServicesImpl();
//Accept new author that wii automatically generate id:1
System.out.println(services.acceptAuthor("Shreyansh", "kumar", "jain", 32123232));
System.out.println(services.findAuthor(1));
//Update author with id 1 with find method
Author author=new Author(1, "Shrey", "kumar", "jain", 21321321);
System.out.print(services.update(author));
System.out.println(services.findAuthor(1));
//remove author with id 1 with find method
System.out.println(services.removeAuthor(1));
System.out.println(services.findAuthor(1));
	}
}
