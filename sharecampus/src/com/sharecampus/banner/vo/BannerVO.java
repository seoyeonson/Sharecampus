package com.sharecampus.banner.vo;

public class BannerVO {
	private int bannerNum;
	private String bannerImgName;
	private String banneRegistDate;
	
	public BannerVO() {;}
	
	public int getBannerNum() {
		return bannerNum;
	}
	
	public void setBannerNum(int bannerNum) {
		this.bannerNum = bannerNum;
	}
	public String getBannerImgName() {
		return bannerImgName;
	}
	public void setBannerImgName(String bannerImgName) {
		this.bannerImgName = bannerImgName;
	}
	public String getBanneRegistDate() {
		return banneRegistDate;
	}
	public void setBanneRegistDate(String banneRegistDate) {
		this.banneRegistDate = banneRegistDate;
	}
	@Override
	public String toString() {
		return "BannerVO [bannerNum=" + bannerNum + ", bannerImgName=" + bannerImgName + ", banneRegistDate="
				+ banneRegistDate + "]";
	}
	
	
}
