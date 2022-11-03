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
	private String 		curri_contents;
	private int 		curri_satisfaction_rating;
	private int 		curri_exam_rating;
	private int         curri_professor_rating;
	private int         curri_assignment_rating;
	private Date		curri_regist_date;

	public CurriculumVO(
								 
			int 		curri_num                    ,
			int 		member_num                   ,
			String 		curri_title                  ,
			String 		curri_university 			 ,
			String   	curri_uni_dert               ,
			String   	curri_field                  ,
			String 		curri_division               ,
			int 		curri_credits                ,
			String 		curri_grade                  ,
			String 		curri_professor              ,
			String 		curri_contents                ,
			int 		curri_satisfaction_rating    ,
			int 		curri_exam_rating            ,
			int			curri_professor_rating		 ,
			int			curri_assignment_rating		 ,
			Date 		curri_regist_date            )   {   
	
	this.curri_num                 =	curri_num;                 
	this.member_num                =	member_num;                
	this.curri_title                =	curri_title;                
	this.curri_division            =	curri_division;            
	this.curri_credits             =	curri_credits;             
	this.curri_grade               =	curri_grade;               
	this.curri_professor           =	curri_professor;           
	this.curri_contents             =	curri_contents;             
	this.curri_satisfaction_rating =	curri_satisfaction_rating; 
	this.curri_exam_rating         =	curri_exam_rating; 
	this.curri_professor_rating    =	curri_professor_rating; 
	this.curri_assignment_rating   =	curri_assignment_rating;
	this.curri_regist_date         =	curri_regist_date;         
}    
	public CurriculumVO() {;}
	
	public CurriculumVO(int curri_num, int member_num, String curri_title, String curri_university,String curri_uni_dert,
			String curri_field, String curri_division, int curri_credits, String curri_grade,
			String curri_professor, int curri_satisfaction_rating, int curri_exam_rating,
			int curri_professor_rating, int curri_assignment_rating, String curri_contents,
			java.sql.Date curri_regist_date) {
		// TODO Auto-generated constructor stub
	}
	public int getCurri_num() {
		return curri_num;
	}
	public void setCurri_num(int curri_num) {
		this.curri_num = curri_num;
	}
	public int getMember_num() {
		return member_num;
	}
	public void setMember_num(int member_num) {
		this.member_num = member_num;
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
	public String getCurri_contents() {
		return curri_contents;
	}
	public void setCurri_contents(String curr_contents) {
		this.curri_contents = curr_contents;
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
	public int getCurri_professor_rating() {
		return curri_professor_rating;
	}
	public void setCurri_professor_rating(int curri_professor_rating) {
		this.curri_professor_rating = curri_professor_rating;
	}
	public int getCurri_assignment_rating() {
		return curri_assignment_rating;
	}
	public void setCurri_assignment_rating(int curri_assignment_rating) {
		this.curri_assignment_rating = curri_assignment_rating;
	}
	public Date getCurri_regist_date() {
		return curri_regist_date;
	}
	public void setCurri_regist_date(Date curri_regist_date) {
		this.curri_regist_date = curri_regist_date;
	}
	@Override
	public String toString() {
		return "CurriculumVO [curri_num=" + curri_num + ", member_num=" + member_num + ", curri_title=" + curri_title
				+ ", curri_university=" + curri_university + ", curri_uni_dert=" + curri_uni_dert + ", curri_field="
				+ curri_field + ", curri_division=" + curri_division + ", curri_credits=" + curri_credits
				+ ", curri_grade=" + curri_grade + ", curri_professor=" + curri_professor + ", curri_contents="
				+ curri_contents + ", curri_satisfaction_rating=" + curri_satisfaction_rating + ", curri_exam_rating="
				+ curri_exam_rating + ", curri_professor_rating=" + curri_professor_rating
				+ ", curri_assignment_rating=" + curri_assignment_rating + ", curri_regist_date=" + curri_regist_date
				+ "]";
	}
	
	
	
}                             
