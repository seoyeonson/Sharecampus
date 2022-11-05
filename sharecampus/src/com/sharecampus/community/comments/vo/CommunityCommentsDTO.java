package com.sharecampus.community.comments.vo;

public class CommunityCommentsDTO {
	private int commCommentNum;
	private int memberNum;
	private int communityNum;
	private String commCommentDate;
	private String memberNickname; 
	private String memberImgName;
	
	public int getCommCommentNum() {
		return commCommentNum;
	}
	public void setCommCommentNum(int commCommentNum) {
		this.commCommentNum = commCommentNum;
	}
	public int getMemberNum() {
		return memberNum;
	}
	public void setMemberNum(int memberNum) {
		this.memberNum = memberNum;
	}
	public int getCommunityNum() {
		return communityNum;	
	}
	public void setCommunityNum(int communityNum) {
		this.communityNum = communityNum;
	}
	public String getCommCommentDate() {
		return commCommentDate;
	}
	public void setCommCommentDate(String commCommentDate) {
		this.commCommentDate = commCommentDate;
	}
	public String getMemberNickname() {
		return memberNickname;
	}
	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}
	public String getMemberImgName() {
		return memberImgName;
	}
	public void setMemberImgName(String memberImgName) {
		this.memberImgName = memberImgName;
	}
	@Override
	public String toString() {
		return "CommunityCommentsDTO [commCommentNum=" + commCommentNum + ", memberNum=" + memberNum + ", communityNum="
				+ communityNum + ", commCommentDate=" + commCommentDate + ", memberNickname=" + memberNickname
				+ ", memberImgName=" + memberImgName + "]";
	}
	
	
}
