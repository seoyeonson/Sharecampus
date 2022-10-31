package com.sharecampus.activities.bookmark.vo;

public class ActivitesBookmarkVO {
	private int activ_bookmark_num_int;
	
	private int activ_num_int;
	private int member_num_int;
	
	public ActivitesBookmarkVO() {;}
	
	public int getActiv_bookmark_num_int() {
		return activ_bookmark_num_int;
	}
	public void setActiv_bookmark_num_int(int activ_bookmark_num_int) {
		this.activ_bookmark_num_int = activ_bookmark_num_int;
	}
	public int getActiv_num_int() {
		return activ_num_int;
	}
	public void setActiv_num_int(int activ_num_int) {
		this.activ_num_int = activ_num_int;
	}
	public int getMember_num_int() {
		return member_num_int;
	}
	public void setMember_num_int(int member_num_int) {
		this.member_num_int = member_num_int;
	}
	
	@Override
	public String toString() {
		return "ActivitesBookmarkVO [activ_bookmark_num_int=" + activ_bookmark_num_int + ", activ_num_int="
				+ activ_num_int + ", member_num_int=" + member_num_int + ", getActiv_bookmark_num_int()="
				+ getActiv_bookmark_num_int() + ", getActiv_num_int()=" + getActiv_num_int() + ", getMember_num_int()="
				+ getMember_num_int() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}
}
