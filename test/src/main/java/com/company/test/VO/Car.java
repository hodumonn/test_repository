package com.company.test.VO;

import java.util.Date;

public class Car {
	private Integer car_key;
	private String car_index;
	private String car_name;
	private String delete_yn;
	private Date reg_time;
	private Date update_time;
	private String config_data;
	
	
	public Integer getCar_key() {
		return car_key;
	}
	public void setCar_key(Integer car_key) {
		this.car_key = car_key;
	}
	public String getCar_index() {
		return car_index;
	}
	public void setCar_index(String car_index) {
		this.car_index = car_index;
	}
	public String getCar_name() {
		return car_name;
	}
	public void setCar_name(String car_name) {
		this.car_name = car_name;
	}
	public String getDelete_yn() {
		return delete_yn;
	}
	public void setDelete_yn(String delete_yn) {
		this.delete_yn = delete_yn;
	}
	public Date getReg_time() {
		return reg_time;
	}
	public void setReg_time(Date reg_time) {
		this.reg_time = reg_time;
	}
	public Date getUpdate_time() {
		return update_time;
	}
	public void setUpdate_time(Date update_time) {
		this.update_time = update_time;
	}
	public String getConfig_data() {
		return config_data;
	}
	public void setConfig_data(String config_data) {
		this.config_data = config_data;
	}
	@Override
	public String toString() {
		return "Car [car_key=" + car_key + ", car_index=" + car_index + ", car_name=" + car_name + ", delete_yn="
				+ delete_yn + ", reg_time=" + reg_time + ", update_time=" + update_time + ", config_data=" + config_data
				+ "]";
	}
	
	
}
