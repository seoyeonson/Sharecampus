package com.sharecampus.community.vo;

public class CommunityDTO {
	private int communityNum;
	private int memberNum;
	private String communityRegistDate;
	private String communityContents;
	private int memberId;
	private String memberImgName;
	
	public CommunityDTO() {;}

	public int getCommunityNum() {
		return communityNum;
	}

	public void setCommunityNum(int communityNum) {
		this.communityNum = communityNum;
	}

	public int getMemberNum() {
		return memberNum;
	}

	public void setMemberNum(int memberNum) {
		this.memberNum = memberNum;
	}

	public int getMemberId() {
		return memberId;
	}

	public void setMemberId(int memberId) {
		this.memberId = memberId;
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

	public String getMemberImgName() {
		return memberImgName;
	}

	public void setMemberImgName(String memberImgName) {
		this.memberImgName = memberImgName;
	}

	@Override
	public String toString() {
		return "CommunityDTO [communityNum=" + communityNum + ", memberNum=" + memberNum + ", communityRegistDate="
				+ communityRegistDate + ", communityContents=" + communityContents + ", memberId=" + memberId
				+ ", memberImgName=" + memberImgName + "]";
	}

	


	
}
