package com.green.user.vo;

public class UserVo {
	// Fields
	private String memid;
	private String mempw;
	private String memname;
	private String memph;
	private String email;
	private String joindate;
	private String lvl;
	
	//Constructor
	public UserVo() {}
	public UserVo(String memid, String mempw, String memname, String memph, String email, String joindate, String lvl) {
		super();
		this.memid = memid;
		this.mempw = mempw;
		this.memname = memname;
		this.memph = memph;
		this.email = email;
		this.joindate = joindate;
		this.lvl = lvl;
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
	
	//toString
	@Override
	public String toString() {
		return "UserVo [memid=" + memid + ", mempw=" + mempw + ", memname=" + memname + ", memph=" + memph + ", email="
				+ email + ", joindate=" + joindate + ", lvl=" + lvl + "]";
	}
	
}
