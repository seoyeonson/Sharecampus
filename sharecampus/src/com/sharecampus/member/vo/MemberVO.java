package com.sharecampus.member.vo;

public class MemberVO {
	private int memberNum; 
	private String memberId;
	private String memberPw;
	private String memberName;
	private String memberNickname;
	private String memberPhoneNumber;
	private String memberImgName;
	private String memberAuthImgName;
	private int memberAuth;
	private String memberSignupDate;
	private int memberType;
	
	public MemberVO() {;}
	
	
	public int getMemberNum() {
		return memberNum;
	}
	public void setMemberNum(int memberNum) {
		this.memberNum = memberNum;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberPw() {
		return memberPw;
	}
	public void setMemberPw(String memberPw) {
		this.memberPw = memberPw;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getMemberNickname() {
		return memberNickname;
	}
	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}
	public String getMemberPhone_number() {
		return memberPhoneNumber;
	}
	public void setMemberPhone_number(String memberPhoneNumber) {
		this.memberPhoneNumber = memberPhoneNumber;
	}
	public String getMemberImgName() {
		return memberImgName;
	}
	public void setMemberImgName(String memberImgName) {
		this.memberImgName = memberImgName;
	}
	public String getMemberAuthImgName() {
		return memberAuthImgName;
	}
	public void setMemberAuthImgName(String memberAuthImgName) {
		this.memberAuthImgName = memberAuthImgName;
	}
	public int getMemberAuth() {
		return memberAuth;
	}
	public void setMemberAuth(int memberAuth) {
		this.memberAuth = memberAuth;
	}
	public String getMemberSignupDate() {
		return memberSignupDate;
	}
	public void setMemberSignupDate(String memberSignupDate) {
		this.memberSignupDate = memberSignupDate;
	}
	public int getMemberType() {
		return memberType;
	}
	public void setMemberType(int memberType) {
		this.memberType = memberType;
	}

	@Override
	public String toString() {
		return "MemberVO [memberNum=" + memberNum + ", memberId=" + memberId + ", memberPw=" + memberPw
				+ ", memberName=" + memberName + ", memberNickname=" + memberNickname + ", memberPhoneNumber="
				+ memberPhoneNumber + ", memberImgName=" + memberImgName + ", memberAuthImgName=" + memberAuthImgName
				+ ", memberAuth=" + memberAuth + ", memberSignupDate=" + memberSignupDate + ", memberType=" + memberType
				+ "]";
	}

}