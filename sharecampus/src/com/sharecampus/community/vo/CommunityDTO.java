package com.sharecampus.community.vo;

public class CommunityDTO {
	int communityNum; 
	String communityRegistDate; 
	String communityContents; 
	int memberNum;
	String memberNickname; 
	String memberImgName;
	
	public CommunityDTO() {;}

	public int getCommunityNum() {
		return communityNum;
	}

	public void setCommunityNum(int communityNum) {
		this.communityNum = communityNum;
	}

	public String getCommunityRegistDate() {
		return communityRegistDate;
	}

	public void setCommunityRegistDate(String communityRegistDate) {
		this.communityRegistDate = communityRegistDate;
	}

	public String getCommunityContents() {
		return communityContents;
	}

	public void setCommunityContents(String communityContents) {
		this.communityContents = communityContents;
	}

	public int getMemberNum() {
		return memberNum;
	}

	public void setMemberNum(int memberNum) {
		this.memberNum = memberNum;
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
		return "CommunityDTO [communityNum=" + communityNum + ", communityRegistDate=" + communityRegistDate
				+ ", communityContents=" + communityContents + ", memberNum=" + memberNum + ", memberNickname="
				+ memberNickname + ", memberImgName=" + memberImgName + "]";
	}



	
	
}
