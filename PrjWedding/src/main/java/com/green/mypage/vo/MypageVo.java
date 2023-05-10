package com.green.mypage.vo;

public class MypageVo {
	
	// Fields
	// ESTIMATES
	private String estiid; 
	private String estiname; 
	private String memid; 
	private String resdate;
	private String restime; 
	private String guestnum;
	private String hallid;
	private String cateringid;
	private String studioid;
	private String dressid;
	private String    totalcost;
	
	// HALL
	private String hallname;
	private int    hallosprice;
	private int    hallpsprice;
	
	// CATERING
	private String cateringtype;
	private int    cateringprice;
	
	// STUDIO
	private String studioname;
	private int    studioprice;
	
	// DRESS
	private String dressname;
	private String dressfor;
	private int    dressprice;
	private String dressimage;
	
	// OPTIONS
	private String optionid;
	private String optionname;
	private int    optionprice;
	
	// ADDITIONAL
	private String addid;
	private int    quantity;
	
	// Constructor
	public MypageVo() {}
	public MypageVo(String estiid, String estiname, String memid, String resdate, String restime, String guestnum,
			String hallid, String cateringid, String studioid, String dressid, String totalcost, String hallname,
			int hallosprice, int hallpsprice, String cateringtype, int cateringprice, String studioname,
			int studioprice, String dressname, String dressfor, int dressprice, String dressimage, String optionid,
			String optionname, int optionprice, String addid, int quantity) {
		this.estiid = estiid;
		this.estiname = estiname;
		this.memid = memid;
		this.resdate = resdate;
		this.restime = restime;
		this.guestnum = guestnum;
		this.hallid = hallid;
		this.cateringid = cateringid;
		this.studioid = studioid;
		this.dressid = dressid;
		this.totalcost = totalcost;
		this.hallname = hallname;
		this.hallosprice = hallosprice;
		this.hallpsprice = hallpsprice;
		this.cateringtype = cateringtype;
		this.cateringprice = cateringprice;
		this.studioname = studioname;
		this.studioprice = studioprice;
		this.dressname = dressname;
		this.dressfor = dressfor;
		this.dressprice = dressprice;
		this.dressimage = dressimage;
		this.optionid = optionid;
		this.optionname = optionname;
		this.optionprice = optionprice;
		this.addid = addid;
		this.quantity = quantity;
	}
	public String getEstiid() {
		return estiid;
	}
	public void setEstiid(String estiid) {
		this.estiid = estiid;
	}
	public String getEstiname() {
		return estiname;
	}
	public void setEstiname(String estiname) {
		this.estiname = estiname;
	}
	public String getMemid() {
		return memid;
	}
	public void setMemid(String memid) {
		this.memid = memid;
	}
	public String getResdate() {
		return resdate;
	}
	public void setResdate(String resdate) {
		this.resdate = resdate;
	}
	public String getRestime() {
		return restime;
	}
	public void setRestime(String restime) {
		this.restime = restime;
	}
	public String getGuestnum() {
		return guestnum;
	}
	public void setGuestnum(String guestnum) {
		this.guestnum = guestnum;
	}
	public String getHallid() {
		return hallid;
	}
	public void setHallid(String hallid) {
		this.hallid = hallid;
	}
	public String getCateringid() {
		return cateringid;
	}
	public void setCateringid(String cateringid) {
		this.cateringid = cateringid;
	}
	public String getStudioid() {
		return studioid;
	}
	public void setStudioid(String studioid) {
		this.studioid = studioid;
	}
	public String getDressid() {
		return dressid;
	}
	public void setDressid(String dressid) {
		this.dressid = dressid;
	}
	public String getTotalcost() {
		return totalcost;
	}
	public void setTotalcost(String totalcost) {
		this.totalcost = totalcost;
	}
	public String getHallname() {
		return hallname;
	}
	public void setHallname(String hallname) {
		this.hallname = hallname;
	}
	public int getHallosprice() {
		return hallosprice;
	}
	public void setHallosprice(int hallosprice) {
		this.hallosprice = hallosprice;
	}
	public int getHallpsprice() {
		return hallpsprice;
	}
	public void setHallpsprice(int hallpsprice) {
		this.hallpsprice = hallpsprice;
	}
	public String getCateringtype() {
		return cateringtype;
	}
	public void setCateringtype(String cateringtype) {
		this.cateringtype = cateringtype;
	}
	public int getCateringprice() {
		return cateringprice;
	}
	public void setCateringprice(int cateringprice) {
		this.cateringprice = cateringprice;
	}
	public String getStudioname() {
		return studioname;
	}
	public void setStudioname(String studioname) {
		this.studioname = studioname;
	}
	public int getStudioprice() {
		return studioprice;
	}
	public void setStudioprice(int studioprice) {
		this.studioprice = studioprice;
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
	public String getOptionid() {
		return optionid;
	}
	public void setOptionid(String optionid) {
		this.optionid = optionid;
	}
	public String getOptionname() {
		return optionname;
	}
	public void setOptionname(String optionname) {
		this.optionname = optionname;
	}
	public int getOptionprice() {
		return optionprice;
	}
	public void setOptionprice(int optionprice) {
		this.optionprice = optionprice;
	}
	public String getAddid() {
		return addid;
	}
	public void setAddid(String addid) {
		this.addid = addid;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	@Override
	public String toString() {
		return "MypageVo [estiid=" + estiid + ", estiname=" + estiname + ", memid=" + memid + ", resdate=" + resdate
				+ ", restime=" + restime + ", guestnum=" + guestnum + ", hallid=" + hallid + ", cateringid="
				+ cateringid + ", studioid=" + studioid + ", dressid=" + dressid + ", totalcost=" + totalcost
				+ ", hallname=" + hallname + ", hallosprice=" + hallosprice + ", hallpsprice=" + hallpsprice
				+ ", cateringtype=" + cateringtype + ", cateringprice=" + cateringprice + ", studioname=" + studioname
				+ ", studioprice=" + studioprice + ", dressname=" + dressname + ", dressfor=" + dressfor
				+ ", dressprice=" + dressprice + ", dressimage=" + dressimage + ", optionid=" + optionid
				+ ", optionname=" + optionname + ", optionprice=" + optionprice + ", addid=" + addid + ", quantity="
				+ quantity + "]";
	}
	
	
	
}
