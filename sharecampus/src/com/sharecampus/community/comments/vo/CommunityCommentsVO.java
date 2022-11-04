package com.sharecampus.community.comments.vo;

public class CommunityCommentsVO {
	private int commCommentNum;
	private int memberNum;
	private int communityNum;
	private String commCommentContents;
	private String commCommentDate;
	
	public CommunityCommentsVO() {;}

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

	public String getCommCommentContents() {
		return commCommentContents;
	}

	public void setCommCommentContents(String commCommentContents) {
		this.commCommentContents = commCommentContents;
	}

	public String getCommCommentDate() {
		return commCommentDate;
	}

	public void setCommCommentDate(String commCommentDate) {
		this.commCommentDate = commCommentDate;
	}

	@Override
	public String toString() {
		return "CommunityCommentsVO [commCommentNum=" + commCommentNum + ", memberNum=" + memberNum + ", communityNum="
				+ communityNum + ", commCommentContents=" + commCommentContents + ", commCommentDate=" + commCommentDate
				+ "]";
	}
	
	
}
