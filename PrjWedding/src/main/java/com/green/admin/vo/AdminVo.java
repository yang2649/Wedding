package com.green.admin.vo;

public class AdminVo {
	
	// Fields
	private String memid;
	private String mempw;
	private String memname;
	private String memph;
	private String email;
	private String joindate;
	private String lvl;
	
	private String hallid;
	private String hallname;
	private int    hallosprice;
	private int    hallpsprice;
	
	private String dressid;
	private String dressname;
	private String dressfor;
	private int    dressprice;
	private String dressimage;
	
	private String studioid;
	private String studioname;
	private int    studioprice;
	
	private String cateringid;
	private String cateringtype;
	private int    cateringprice;
	
	private String optionid;
	private String optionname;
	private int    optionprice;
	
	private String addid;
	private int    quantity;
	
	private int    favid ;
	
	private String estiid;
	private String estiname;
	private String resdate;
	private String restime;
	private int    guestnum;
	private String totalcost;
	
	private String resid;
	
	private String menu_id;
	private String menu_name;
	private int    menu_seq;
	
	private int    file_num;
	private String filename;
	private String fileext;
	private String sfilename;
	private int    idx;
	private String title;
	private String cont;
	private String writer;
	private String regdate;
	private int    readcount;
	private int    bnum;
	private int    step;
	private int    nref;
	private int    delnum;
	private int    parent;
	
	
	//Constructor
	public AdminVo() {}
	public AdminVo(String memid, String mempw, String memname, String memph, String email, String joindate, String lvl,
			String hallid, String hallname, int hallosprice, int hallpsprice, String dressid, String dressname,
			String dressfor, int dressprice, String dressimage, String studioid, String studioname, int studioprice,
			String cateringid, String cateringtype, int cateringprice, String optionid, String optionname,
			int optionprice, String addid, int quantity, int favid, String estiid, String estiname, String resdate,
			String restime, int guestnum, String totalcost, String resid, String menu_id, String menu_name,
			int menu_seq, int file_num, String filename, String fileext, String sfilename, int idx, String title,
			String cont, String writer, String regdate, int readcount, int bnum, int step, int nref, int delnum,
			int parent) {
		super();
		this.memid = memid;
		this.mempw = mempw;
		this.memname = memname;
		this.memph = memph;
		this.email = email;
		this.joindate = joindate;
		this.lvl = lvl;
		this.hallid = hallid;
		this.hallname = hallname;
		this.hallosprice = hallosprice;
		this.hallpsprice = hallpsprice;
		this.dressid = dressid;
		this.dressname = dressname;
		this.dressfor = dressfor;
		this.dressprice = dressprice;
		this.dressimage = dressimage;
		this.studioid = studioid;
		this.studioname = studioname;
		this.studioprice = studioprice;
		this.cateringid = cateringid;
		this.cateringtype = cateringtype;
		this.cateringprice = cateringprice;
		this.optionid = optionid;
		this.optionname = optionname;
		this.optionprice = optionprice;
		this.addid = addid;
		this.quantity = quantity;
		this.favid = favid;
		this.estiid = estiid;
		this.estiname = estiname;
		this.resdate = resdate;
		this.restime = restime;
		this.guestnum = guestnum;
		this.totalcost = totalcost;
		this.resid = resid;
		this.menu_id = menu_id;
		this.menu_name = menu_name;
		this.menu_seq = menu_seq;
		this.file_num = file_num;
		this.filename = filename;
		this.fileext = fileext;
		this.sfilename = sfilename;
		this.idx = idx;
		this.title = title;
		this.cont = cont;
		this.writer = writer;
		this.regdate = regdate;
		this.readcount = readcount;
		this.bnum = bnum;
		this.step = step;
		this.nref = nref;
		this.delnum = delnum;
		this.parent = parent;
	}
	
	
	//Get/Setter
	public String getMemid() {
		return memid;
	}
	public void setMemid(String memid) {
		this.memid = memid;
	}
	public String getMempw() {
		return mempw;
	}
	public void setMempw(String mempw) {
		this.mempw = mempw;
	}
	public String getMemname() {
		return memname;
	}
	public void setMemname(String memname) {
		this.memname = memname;
	}
	public String getMemph() {
		return memph;
	}
	public void setMemph(String memph) {
		this.memph = memph;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getJoindate() {
		return joindate;
	}
	public void setJoindate(String joindate) {
		this.joindate = joindate;
	}
	public String getLvl() {
		return lvl;
	}
	public void setLvl(String lvl) {
		this.lvl = lvl;
	}
	public String getHallid() {
		return hallid;
	}
	public void setHallid(String hallid) {
		this.hallid = hallid;
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
	public String getStudioid() {
		return studioid;
	}
	public void setStudioid(String studioid) {
		this.studioid = studioid;
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
	public String getCateringid() {
		return cateringid;
	}
	public void setCateringid(String cateringid) {
		this.cateringid = cateringid;
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
	public int getFavid() {
		return favid;
	}
	public void setFavid(int favid) {
		this.favid = favid;
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
	public int getGuestnum() {
		return guestnum;
	}
	public void setGuestnum(int guestnum) {
		this.guestnum = guestnum;
	}
	public String getTotalcost() {
		return totalcost;
	}
	public void setTotalcost(String totalcost) {
		this.totalcost = totalcost;
	}
	public String getResid() {
		return resid;
	}
	public void setResid(String resid) {
		this.resid = resid;
	}
	public String getMenu_id() {
		return menu_id;
	}
	public void setMenu_id(String menu_id) {
		this.menu_id = menu_id;
	}
	public String getMenu_name() {
		return menu_name;
	}
	public void setMenu_name(String menu_name) {
		this.menu_name = menu_name;
	}
	public int getMenu_seq() {
		return menu_seq;
	}
	public void setMenu_seq(int menu_seq) {
		this.menu_seq = menu_seq;
	}
	public int getFile_num() {
		return file_num;
	}
	public void setFile_num(int file_num) {
		this.file_num = file_num;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getFileext() {
		return fileext;
	}
	public void setFileext(String fileext) {
		this.fileext = fileext;
	}
	public String getSfilename() {
		return sfilename;
	}
	public void setSfilename(String sfilename) {
		this.sfilename = sfilename;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCont() {
		return cont;
	}
	public void setCont(String cont) {
		this.cont = cont;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public int getReadcount() {
		return readcount;
	}
	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}
	public int getBnum() {
		return bnum;
	}
	public void setBnum(int bnum) {
		this.bnum = bnum;
	}
	public int getStep() {
		return step;
	}
	public void setStep(int step) {
		this.step = step;
	}
	public int getNref() {
		return nref;
	}
	public void setNref(int nref) {
		this.nref = nref;
	}
	public int getDelnum() {
		return delnum;
	}
	public void setDelnum(int delnum) {
		this.delnum = delnum;
	}
	public int getParent() {
		return parent;
	}
	public void setParent(int parent) {
		this.parent = parent;
	}
	
	
	//toString
	@Override
	public String toString() {
		return "AdminVo [memid=" + memid + ", mempw=" + mempw + ", memname=" + memname + ", memph=" + memph + ", email="
				+ email + ", joindate=" + joindate + ", lvl=" + lvl + ", hallid=" + hallid + ", hallname=" + hallname
				+ ", hallosprice=" + hallosprice + ", hallpsprice=" + hallpsprice + ", dressid=" + dressid
				+ ", dressname=" + dressname + ", dressfor=" + dressfor + ", dressprice=" + dressprice + ", dressimage="
				+ dressimage + ", studioid=" + studioid + ", studioname=" + studioname + ", studioprice=" + studioprice
				+ ", cateringid=" + cateringid + ", cateringtype=" + cateringtype + ", cateringprice=" + cateringprice
				+ ", optionid=" + optionid + ", optionname=" + optionname + ", optionprice=" + optionprice + ", addid="
				+ addid + ", quantity=" + quantity + ", favid=" + favid + ", estiid=" + estiid + ", estiname="
				+ estiname + ", resdate=" + resdate + ", restime=" + restime + ", guestnum=" + guestnum + ", totalcost="
				+ totalcost + ", resid=" + resid + ", menu_id=" + menu_id + ", menu_name=" + menu_name + ", menu_seq="
				+ menu_seq + ", file_num=" + file_num + ", filename=" + filename + ", fileext=" + fileext
				+ ", sfilename=" + sfilename + ", idx=" + idx + ", title=" + title + ", cont=" + cont + ", writer="
				+ writer + ", regdate=" + regdate + ", readcount=" + readcount + ", bnum=" + bnum + ", step=" + step
				+ ", nref=" + nref + ", delnum=" + delnum + ", parent=" + parent + "]";
	}

}
