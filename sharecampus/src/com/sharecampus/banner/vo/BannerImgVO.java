package com.sharecampus.banner.vo;

public class BannerImgVO {
	private String fileSystemName;
	private String fileOriginalName;
	private int bannerNumber;
	
	public BannerImgVO() {;}

	public String getFileSystemName() {
		return fileSystemName;
	}

	public void setFileSystemName(String fileSystemName) {
		this.fileSystemName = fileSystemName;
	}

	public String getFileOriginalName() {
		return fileOriginalName;
	}

	public void setFileOriginalName(String fileOriginalName) {
		this.fileOriginalName = fileOriginalName;
	}

	public int getBannerNumber() {
		return bannerNumber;
	}

	public void setBoardNumber(int boardNumber) {
		this.bannerNumber = boardNumber;
	}

	@Override
	public String toString() {
		return "BannerImgVO [fileSystemName=" + fileSystemName + ", fileOriginalName=" + fileOriginalName
				+ ", bannerNumber=" + bannerNumber + "]";
	}

	
}
