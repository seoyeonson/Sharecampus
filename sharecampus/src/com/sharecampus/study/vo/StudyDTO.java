package com.sharecampus.study.vo;

public class StudyDTO {
	private int studyNum;
	private int memberNum;
	private String studyTitle;
	private String studyIntro;
	private String studyArea;
	private int studyPeople;
	private String studyRegistDate;
	private boolean studyIng;
	private String studyDepart;
	private String studyContact;
	private String memberNickName;

	public StudyDTO() {;}

	public int getStudyNum() {
		return studyNum;
	}

	public void setStudyNum(int studyNum) {
		this.studyNum = studyNum;
	}

	public int getMemberNum() {
		return memberNum;
	}

	public void setMemberNum(int memberNum) {
		this.memberNum = memberNum;
	}

	public String getStudyTitle() {
		return studyTitle;
	}

	public void setStudyTitle(String studyTitle) {
		this.studyTitle = studyTitle;
	}

	public String getStudyIntro() {
		return studyIntro;
	}

	public void setStudyIntro(String studyIntro) {
		this.studyIntro = studyIntro;
	}

	public String getStudyArea() {
		return studyArea;
	}

	public void setStudyArea(String studyArea) {
		this.studyArea = studyArea;
	}

	public int getStudyPeople() {
		return studyPeople;
	}

	public void setStudyPeople(int studyPeople) {
		this.studyPeople = studyPeople;
	}

	public String getStudyRegistDate() {
		return studyRegistDate;
	}

	public void setStudyRegistDate(String studyRegistDate) {
		this.studyRegistDate = studyRegistDate;
	}

	public boolean isStudyIng() {
		return studyIng;
	}

	public void setStudyIng(boolean studyIng) {
		this.studyIng = studyIng;
	}

	public String getStudyDepart() {
		return studyDepart;
	}

	public void setStudyDepart(String studyDepart) {
		this.studyDepart = studyDepart;
	}

	public String getStudyContact() {
		return studyContact;
	}

	public void setStudyContact(String studyContact) {
		this.studyContact = studyContact;
	}

	public String getMemberNickName() {
		return memberNickName;
	}

	public void setMemberNickName(String memberNickName) {
		this.memberNickName = memberNickName;
	}

	@Override
	public String toString() {
		return "StudyDTO [studyNum=" + studyNum + ", memberNum=" + memberNum + ", studyTitle=" + studyTitle
				+ ", studyIntro=" + studyIntro + ", studyArea=" + studyArea + ", studyPeople=" + studyPeople
				+ ", studyRegistDate=" + studyRegistDate + ", studyIng=" + studyIng + ", studyDepart=" + studyDepart
				+ ", studyContact=" + studyContact + ", memberNickName=" + memberNickName + "]";
	}

	
	
}
