package com.sharecampus.activities.vo;

public class ActivitiesVO {
	private int member_num;
	private String activ_manager_name;
	private String activ_manager_email;
	private String activ_manager_phonenumber;
	private String activ_manager_dept;
	private int activ_start_date;
	private int activ_end_date;
	private int activ_activing_date;
	private int activ_people ;
	private String activ_field;
	private String activ_area;
	private String activ_dept;
	private String activ_title;
	private String activ_contents;
	private String activ_url;
	private String activ_thumbnail_img_name;
	private String activ_main_img_name;
	
	
	public ActivitiesVO() {;}
	
	private int active_num;
	
	public int getActive_num() {
		return active_num;
	}
	public void setActive_num(int active_num) {
		this.active_num = active_num;
	}
	public int getMember_num() {
		return member_num;
	}
	public void setMember_num(int member_num) {
		this.member_num = member_num;
	}
	public String getActiv_manager_name() {
		return activ_manager_name;
	}
	public void setActiv_manager_name(String activ_manager_name) {
		this.activ_manager_name = activ_manager_name;
	}
	public String getActiv_manager_email() {
		return activ_manager_email;
	}
	public void setActiv_manager_email(String activ_manager_email) {
		this.activ_manager_email = activ_manager_email;
	}
	public String getActiv_manager_phonenumber() {
		return activ_manager_phonenumber;
	}
	public void setActiv_manager_phonenumber(String activ_manager_phonenumber) {
		this.activ_manager_phonenumber = activ_manager_phonenumber;
	}
	public String getActiv_manager_dept() {
		return activ_manager_dept;
	}
	public void setActiv_manager_dept(String activ_manager_dept) {
		this.activ_manager_dept = activ_manager_dept;
	}
	public int getActiv_start_date() {
		return activ_start_date;
	}
	public void setActiv_start_date(int activ_start_date) {
		this.activ_start_date = activ_start_date;
	}
	public int getActiv_end_date() {
		return activ_end_date;
	}
	public void setActiv_end_date(int activ_end_date) {
		this.activ_end_date = activ_end_date;
	}
	public int getActiv_activing_date() {
		return activ_activing_date;
	}
	public void setActiv_activing_date(int activ_activing_date) {
		this.activ_activing_date = activ_activing_date;
	}
	public int getActiv_people() {
		return activ_people;
	}
	public void setActiv_people(int activ_people) {
		this.activ_people = activ_people;
	}
	public String getActiv_field() {
		return activ_field;
	}
	public void setActiv_field(String activ_field) {
		this.activ_field = activ_field;
	}
	public String getActiv_area() {
		return activ_area;
	}
	public void setActiv_area(String activ_area) {
		this.activ_area = activ_area;
	}
	public String getActiv_dept() {
		return activ_dept;
	}
	public void setActiv_dept(String activ_dept) {
		this.activ_dept = activ_dept;
	}
	public String getActiv_title() {
		return activ_title;
	}
	public void setActiv_title(String activ_title) {
		this.activ_title = activ_title;
	}
	public String getActiv_contents() {
		return activ_contents;
	}
	public void setActiv_contents(String activ_contents) {
		this.activ_contents = activ_contents;
	}
	public String getActiv_url() {
		return activ_url;
	}
	public void setActiv_url(String activ_url) {
		this.activ_url = activ_url;
	}
	public String getActiv_thumbnail_img_name() {
		return activ_thumbnail_img_name;
	}
	public void setActiv_thumbnail_img_name(String activ_thumbnail_img_name) {
		this.activ_thumbnail_img_name = activ_thumbnail_img_name;
	}
	public String getActiv_main_img_name() {
		return activ_main_img_name;
	}
	public void setActiv_main_img_name(String activ_main_img_name) {
		this.activ_main_img_name = activ_main_img_name;
	}
	
	
	@Override
	public String toString() {
		return "ActivitiesVO [member_num=" + member_num + ", activ_manager_name=" + activ_manager_name
				+ ", activ_manager_email=" + activ_manager_email + ", activ_manager_phonenumber="
				+ activ_manager_phonenumber + ", activ_manager_dept=" + activ_manager_dept + ", activ_start_date="
				+ activ_start_date + ", activ_end_date=" + activ_end_date + ", activ_activing_date="
				+ activ_activing_date + ", activ_people=" + activ_people + ", activ_field=" + activ_field
				+ ", activ_area=" + activ_area + ", activ_dept=" + activ_dept + ", activ_title=" + activ_title
				+ ", activ_contents=" + activ_contents + ", activ_url=" + activ_url + ", activ_thumbnail_img_name="
				+ activ_thumbnail_img_name + ", activ_main_img_name=" + activ_main_img_name + ", active_num="
				+ active_num + "]";
	}
	
}
