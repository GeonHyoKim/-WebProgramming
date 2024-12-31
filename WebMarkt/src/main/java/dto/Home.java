package dto;

import java.io.Serializable;

public class Home implements Serializable{
	
	private static final long serialVersion =4274700572038677000L;
	
	private String homename; //방 호수
	private String username; //세입자
	private Integer number; //휴대폰 번호
	private String address; //주소
	private String category; //방크기
	private String realtor; //공인중개사 
	private String filename; //이미지 파일명

	public Home() {
		super();
	}
	
	public Home(String homename, String username, Integer number) {
		this.homename = homename;
		this.username = username;
		this.number = number;
	}
	public String getHomename() {
		return homename;
	}
	public String getusername() {
		return username;
	}
	public void setusername(String username) {
		this.username = username;
	}
	public void setHomename(String homename) {
		this.homename = homename;
	}
	public Integer getnumber() {
		return number;
	}
	public void setnumber(Integer number) {
		this.number = number;
	}
	public String getaddress() {
		return address;
	}
	public void setaddress(String address) {
		this.address = address;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getrealtor() {
		return realtor;
	}
	public void setrealtor(String realtor) {
		this.realtor = realtor;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename){
		this.filename = filename;
	}
}

