package com.green.user.vo;

public class UserVo {
	// Fields
	private String memid;
	private String mempw;
	private String memname;
	private String memph;
	private String email;
	private String joindate;
	
	public UserVo() {};
	public UserVo(String memid, String mempw, String memname, String memph, String email, String joindate) {
		this.memid = memid;
		this.mempw = mempw;
		this.memname = memname;
		this.memph = memph;
		this.email = email;
		this.joindate = joindate;
	}
	
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
	public String getjoindate() {
		return joindate;
	}
	public void setjoindate(String joindate) {
		this.joindate = joindate;
	}
	@Override
	public String toString() {
		return "UserVo [memid=" + memid + ", mempw=" + mempw + ", memname=" + memname + ", memph=" + memph + ", email="
				+ email + ", joindate=" + joindate + "]";
	}
	

	
}
