package com.green.p.vo;

public class PVo {
	
	private String favid;
	private String dressid;
	private String	dressname;
	private String	dressfor;
	private int	    dressprice;
	private String	dressimage;
	private String  memid;
	
	public PVo() {}
	public PVo(String favid, String dressid, String dressname, String dressfor, int dressprice, String dressimage,
			String memid) {
		
		this.favid = favid;
		this.dressid = dressid;
		this.dressname = dressname;
		this.dressfor = dressfor;
		this.dressprice = dressprice;
		this.dressimage = dressimage;
		this.memid = memid;
	}
	public String getFavid() {
		return favid;
	}
	public void setFavid(String favid) {
		this.favid = favid;
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
	public String getMemid() {
		return memid;
	}
	public void setMemid(String memid) {
		this.memid = memid;
	}
	@Override
	public String toString() {
		return "PVo [favid=" + favid + ", dressid=" + dressid + ", dressname=" + dressname + ", dressfor=" + dressfor
				+ ", dressprice=" + dressprice + ", dressimage=" + dressimage + ", memid=" + memid + "]";
	}
	
	
	
}
