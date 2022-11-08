package com.sharecampus.banner.vo;

import java.util.List;

import com.sharecampus.banner.vo.BannerImgVO;

public class BannerDTO {
	private int bannerNum;
	private int bannerUse;
	private String bannerImgName;
	private String banneRegistDate;
	private List<BannerImgVO> files;
	
	public BannerDTO() {;}
	
	public int getBannerNum() {
		return bannerNum;
	}
	
	public void setBannerNum(int bannerNum) {
		this.bannerNum = bannerNum;
	}
	
	public int getBannerUse() {
		return bannerUse;
	}
	
	public void setBannerUse(int bannerUse) {
		this.bannerUse = bannerUse;
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
	
	public List<BannerImgVO> getFiles() {
		return files;
	}
	
	public void setFiles(List<BannerImgVO> files) {
		this.files = files;
	}

	@Override
	public String toString() {
		return "BannerDTO [bannerNum=" + bannerNum + ", bannerUse=" + bannerUse + ", bannerImgName=" + bannerImgName
				+ ", banneRegistDate=" + banneRegistDate + ", files=" + files + "]";
	}

	
}
