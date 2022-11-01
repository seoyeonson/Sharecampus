package com.sharecampus.curriculum.vo;

public class Curriculum_ReplyVO {
private int 	curri_reply_num         ;
private int 	curri_num               ;
private int 	member_num              ;
private String	curri_reply_contents    ;
private String	curri_reply_date        ;
                             
public Curriculum_ReplyVO(
	int	curri_reply_num,
	int	curri_num,
	int	member_num,
	String	curri_reply_contents,
	String	curri_reply_date) {
this.curri_reply_num 		=	curri_reply_num;
this.curri_num 				=	curri_num;
this.member_num				= 	member_num;
this.curri_reply_contents 	=	curri_reply_contents;
this.curri_reply_date 		=	curri_reply_date;
}
public Curriculum_ReplyVO() {;}
public int getCurri_reply_num() {
	return curri_reply_num;
}
public void setCurri_reply_num(int curri_reply_num) {
	this.curri_reply_num = curri_reply_num;
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
public String getCurri_reply_contents() {
	return curri_reply_contents;
}
public void setCurri_reply_contents(String curri_reply_contents) {
	this.curri_reply_contents = curri_reply_contents;
}
public String getCurri_reply_date() {
	return curri_reply_date;
}
public void setCurri_reply_date(String curri_reply_date) {
	this.curri_reply_date = curri_reply_date;
}
@Override
public String toString() {
	return "Curriculum_RelplyVO [curri_reply_num=" + curri_reply_num + ", curri_num=" + curri_num + ", member_num="
			+ member_num + ", curri_reply_contents=" + curri_reply_contents + ", curri_reply_date=" + curri_reply_date
			+ "]";
}

}
