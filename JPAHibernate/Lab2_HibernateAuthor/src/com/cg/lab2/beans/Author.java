package com.cg.lab2.beans;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity
public class Author {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	private int authorId;
	private String firstName;
	private String middleName;
	private String lastName;
	private long phoneNo;
public Author() {}
public Author(String firstName, String middleName, String lastName, long phoneNo) {
	super();
	this.firstName = firstName;
	this.middleName = middleName;
	this.lastName = lastName;
	this.phoneNo = phoneNo;
}
public Author(int authorId, String firstName, String middleName, String lastName, long phoneNo) {
	super();
	this.authorId = authorId;
	this.firstName = firstName;
	this.middleName = middleName;
	this.lastName = lastName;
	this.phoneNo = phoneNo;
}
public int getAuthorId() {
	return authorId;
}
public void setAuthorId(int authorId) {
	this.authorId = authorId;
}
public String getFirstName() {
	return firstName;
}
public void setFirstName(String firstName) {
	this.firstName = firstName;
}
public String getMiddleName() {
	return middleName;
}
public void setMiddleName(String middleName) {
	this.middleName = middleName;
}
public String getLastName() {
	return lastName;
}
public void setLastName(String lastName) {
	this.lastName = lastName;
}
public long getPhoneNo() {
	return phoneNo;
}
public void setPhoneNo(long phoneNo) {
	this.phoneNo = phoneNo;
}
@Override
public int hashCode() {
	final int prime = 31;
	int result = 1;
	result = prime * result + authorId;
	result = prime * result + ((firstName == null) ? 0 : firstName.hashCode());
	result = prime * result + ((lastName == null) ? 0 : lastName.hashCode());
	result = prime * result + ((middleName == null) ? 0 : middleName.hashCode());
	result = prime * result + (int) (phoneNo ^ (phoneNo >>> 32));
	return result;
}
@Override
public boolean equals(Object obj) {
	if (this == obj)
		return true;
	if (obj == null)
		return false;
	if (getClass() != obj.getClass())
		return false;
	Author other = (Author) obj;
	if (authorId != other.authorId)
		return false;
	if (firstName == null) {
		if (other.firstName != null)
			return false;
	} else if (!firstName.equals(other.firstName))
		return false;
	if (lastName == null) {
		if (other.lastName != null)
			return false;
	} else if (!lastName.equals(other.lastName))
		return false;
	if (middleName == null) {
		if (other.middleName != null)
			return false;
	} else if (!middleName.equals(other.middleName))
		return false;
	if (phoneNo != other.phoneNo)
		return false;
	return true;
}
@Override
public String toString() {
	return "Author [authorId=" + authorId + ", firstName=" + firstName + ", middleName=" + middleName + ", lastName="
			+ lastName + ", phoneNo=" + phoneNo + "]";
}

}
