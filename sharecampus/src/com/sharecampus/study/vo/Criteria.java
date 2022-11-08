package com.sharecampus.study.vo;

public class Criteria {
	private String areaSelect;
	private String departSelect;
	
	public Criteria() {;}


	public String getAreaSelect() {
		return areaSelect;
	}

	public void setAreaSelect(String areaSelect) {
		this.areaSelect = areaSelect;
	}

	public String getDepartSelect() {
		return departSelect;
	}

	public void setDepartSelect(String departSelect) {
		this.departSelect = departSelect;
	}

	@Override
	public String toString() {
		return "Criteria [areaSelect=" + areaSelect + ", departSelect=" + departSelect + "]";
	}

}
