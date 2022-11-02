package com.sharecampus.community.vo;

public class CommunityDTO {
	private int communityNum;
	private int memberNum;
	private String communityRegistDate;
	private String communityContents;
	private int memberId;
	
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

	@Override
	public String toString() {
		return "CommunityDTO [communityNum=" + communityNum + ", memberNum=" + memberNum + ", memberId=" + memberId
				+ ", communityRegistDate=" + communityRegistDate + ", communityContents=" + communityContents + "]";
	}


	
}
