package com.sharecampus.activities.vo;

public class Criteria {
 private String area;
 private String dept;
 
 public Criteria() {;}
 
public String getDept() {
	return dept;
}
public void setDept(String dept) {
	this.dept = dept;
}

public String getArea() {
	return area;
}

public void setArea(String area) {
	this.area = area;
}

@Override
public String toString() {
	return "Criteria [area=" + area + ", dept=" + dept + ", getDept()=" + getDept() + ", getArea()=" + getArea()
			+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
}

public String[] getAreas() {
	return this.area != null ? this.area.split("") : new String[] {};
}

public String[] getDepts() {
	return this.dept != null ? this.dept.split("") : new String[] {};
}


 

 
 
 
}
