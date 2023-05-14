package com.green.reservation.vo;

public class ReservationVo {
	private int    package_id; 
	private String package_title;
	private String package_cont;
	private int    package_cost;
	
	public ReservationVo() {}
	public ReservationVo(int package_id, String package_title, String package_cont, int package_cost) {
	
		this.package_id = package_id;
		this.package_title = package_title;
		this.package_cont = package_cont;
		this.package_cost = package_cost;
	}
	public int getPackage_id() {
		return package_id;
	}
	public void setPackage_id(int package_id) {
		this.package_id = package_id;
	}
	public String getPackage_title() {
		return package_title;
	}
	public void setPackage_title(String package_title) {
		this.package_title = package_title;
	}
	public String getPackage_cont() {
		return package_cont;
	}
	public void setPackage_cont(String package_cont) {
		this.package_cont = package_cont;
	}
	public int getPackage_cost() {
		return package_cost;
	}
	public void setPackage_cost(int package_cost) {
		this.package_cost = package_cost;
	}
	@Override
	public String toString() {
		return "ReservationVo [package_id=" + package_id + ", package_title=" + package_title + ", package_cont="
				+ package_cont + ", package_cost=" + package_cost + "]";
	}
	
}
