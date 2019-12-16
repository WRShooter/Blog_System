package com.profile.entity;

public class ProfileEntity {
	private String user_name;
	public String getUer_name() {
		return user_name;
	}

	public void setUer_name(String uer_name) {
		this.user_name = uer_name;
	}
	private String intro;
	private String name;
	private String gender;
	private String birthday;
	private String location;
	private String occupational;
	
	public ProfileEntity() {
	
	}
	
	public ProfileEntity(String user_name,String intro, String name, String gender, String birthday, String location,String occupational) {
		super();
		this.user_name = user_name;
		this.intro = intro;
		this.name = name;
		this.gender = gender;
		this.birthday = birthday;
		this.location = location;
		this.occupational = occupational;
	}
	
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getOccupational() {
		return occupational;
	}
	public void setOccupational(String occupational) {
		this.occupational = occupational;
	}
	
	
}
