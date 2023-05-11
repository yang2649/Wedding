package com.green.dress.vo;

public class DressVo {
	
	
	
private String	dressid;
private String	dressname;
private String	dressfor;
private int	    dressprice;
private String	dressimage;

public DressVo() {
	
}
public DressVo(String dressid, String dressname, String dressfor, int dressprice, String dressimage) {
	this.dressid = dressid;
	this.dressname = dressname;
	this.dressfor = dressfor;
	this.dressprice = dressprice;
	this.dressimage = dressimage;
}

public String getDressid() {
	return dressid;
}

public void setDressid(String dressid) {
	this.dressid = dressid;
}

public String getDressname() {
	return dressname;
}

public void setDressname(String dressname) {
	this.dressname = dressname;
}

public String getDressfor() {
	return dressfor;
}

public void setDressfor(String dressfor) {
	this.dressfor = dressfor;
}

public int getDressprice() {
	return dressprice;
}

public void setDressprice(int dressprice) {
	this.dressprice = dressprice;
}

public String getDressimage() {
	return dressimage;
}

public void setDressimage(String dressimage) {
	this.dressimage = dressimage;
}

@Override
public String toString() {
	return "ImageVo [dressid=" + dressid + ", dressname=" + dressname + ", dressfor=" + dressfor + ", dressprice="
			+ dressprice + ", dressimage=" + dressimage + "]";
}

	
}
