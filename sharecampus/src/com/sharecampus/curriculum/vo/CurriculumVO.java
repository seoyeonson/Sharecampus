package com.sharecampus.curriculum.vo;

import java.util.Date;

public class CurriculumVO {

	private int 		curri_num;
	private int 		member_num;
	private String 		curri_title;
	private String 		curri_university ;
	private String  	curri_uni_dert ;
	private String   	curri_field ;
	private String 		curri_division;
	private int 		curri_credits;
	private String 		curri_grade;
	private String 		curri_professor;
	private String 		curr_contents;
	private int 		curri_satisfaction_rating;
	private int 		curri_exam_rating;
	private Date		curri_regist_date;

	public CurriculumVO(
			int 		curri_num                    ,
			int 		member_num                   ,
			String 		curri_title                   ,
			String 		curri_university 			 ,
			String   	curri_uni_dert               ,
			String   	curri_field                  ,
			String 		curri_division               ,
			int 		curri_credits                ,
			String 		curri_grade                  ,
			String 		curri_professor              ,
			String 		curr_contents                ,
			int 		curri_satisfaction_rating    ,
			int 		curri_exam_rating            ,
			Date 		curri_regist_date            )   {   
	this.curri_num                 =	curri_num;                 
	this.member_num                =	member_num;                
	this.curri_title                =	curri_title;                
	this.curri_division            =	curri_division;            
	this.curri_credits             =	curri_credits;             
	this.curri_grade               =	curri_grade;               
	this.curri_professor           =	curri_professor;           
	this.curr_contents             =	curr_contents;             
	this.curri_satisfaction_rating =	curri_satisfaction_rating; 
	this.curri_exam_rating         =	curri_exam_rating;         
	this.curri_regist_date         =	curri_regist_date;         
}    
	public CurriculumVO() {;}
	public int getCurri_num() {
		return curri_num;
	}
	public void setCurri_num(int curri_num) {
		this.curri_num = curri_num;
	}
	public int getMember_num() {
		return member_num;
	}
	public void setMember_num(int mEMBER_num) {
		member_num = mEMBER_num;
	}
	public String getCurri_title() {
		return curri_title;
	}
	public void setCurri_title(String curri_title) {
		this.curri_title = curri_title;
	}
	
	public String getCurri_university() {
		return curri_university;
	}
	public void setCurri_university(String curri_university) {
		this.curri_university = curri_university;
	}
	public String getCurri_uni_dert() {
		return curri_uni_dert;
	}
	public void setCurri_uni_dert(String curri_uni_dert) {
		this.curri_uni_dert = curri_uni_dert;
	}
	public String getCurri_field() {
		return curri_field;
	}
	public void setCurri_field(String curri_field) {
		this.curri_field = curri_field;
	}
	public String getCurri_division() {
		return curri_division;
	}
	public void setCurri_division(String curri_division) {
		this.curri_division = curri_division;
	}
	public int getCurri_credits() {
		return curri_credits;
	}
	public void setCurri_credits(int curri_credits) {
		this.curri_credits = curri_credits;
	}
	public String getCurri_grade() {
		return curri_grade;
	}
	public void setCurri_grade(String curri_grade) {
		this.curri_grade = curri_grade;
	}
	public String getCurri_professor() {
		return curri_professor;
	}
	public void setCurri_professor(String curri_professor) {
		this.curri_professor = curri_professor;
	}
	public String getCurr_contents() {
		return curr_contents;
	}
	public void setCurr_contents(String curr_contents) {
		this.curr_contents = curr_contents;
	}
	public int getCurri_satisfaction_rating() {
		return curri_satisfaction_rating;
	}
	public void setCurri_satisfaction_rating(int curri_satisfaction_rating) {
		this.curri_satisfaction_rating = curri_satisfaction_rating;
	}
	public int getCurri_exam_rating() {
		return curri_exam_rating;
	}
	public void setCurri_exam_rating(int curri_exam_rating) {
		this.curri_exam_rating = curri_exam_rating;
	}
	public Date getCurri_regist_date() {
		return curri_regist_date;
	}
	public void setCurri_regist_date(Date curri_regist_date) {
		this.curri_regist_date = curri_regist_date;
	}
	@Override
	public String toString() {
		return "CurriculumVO [curri_num=" + curri_num + ", MEMBER_num=" + member_num + ", curr_title=" + curri_title
				+ ", curri_university=" + curri_university + ", curri_uni_dert=" + curri_uni_dert + ", curri_field="
				+ curri_field + ", curri_division=" + curri_division + ", curri_credits=" + curri_credits
				+ ", curri_grade=" + curri_grade + ", curri_professor=" + curri_professor + ", curr_contents="
				+ curr_contents + ", curri_satisfaction_rating=" + curri_satisfaction_rating + ", curri_exam_rating="
				+ curri_exam_rating + ", curri_regist_date=" + curri_regist_date + "]";
	}
	
	
}                             
