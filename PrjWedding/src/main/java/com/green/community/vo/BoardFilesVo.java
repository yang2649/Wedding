package com.green.community.vo;

public class BoardFilesVo {

	// Board 자료
	private  int      idx;
	private  String   title;
	private  String   cont;
	private  String   writer;
	private  String   regdate;
	private  int      readcount;
	private  String   memid;
	
	// board 답글 여부
	private  int      bnum;
	private  int      lvl;
	private  int      step;
	private  int      nref;
	
	// 삭제 처리
	private  int      delnum;
	private  int      parent;	
	
	// 파일 자료수
	private  int      filescount;
	
	// 메뉴정보
	private  String   menu_id;
	private  String   menu_name;
	private  int      menu_seq;
	
	// Files  table
	private  int      file_num;
	private  String   filename;
	private  String   fileext;
	private  String   sfilename;
	
	//Constructor
	public BoardFilesVo() {}

	public BoardFilesVo(int idx, String title, String cont, String writer, String regdate, int readcount, String memid,
			int bnum, int lvl, int step, int nref, int delnum, int parent, int filescount, String menu_id,
			String menu_name, int menu_seq, int file_num, String filename, String fileext, String sfilename) {
	
		this.idx = idx;
		this.title = title;
		this.cont = cont;
		this.writer = writer;
		this.regdate = regdate;
		this.readcount = readcount;
		this.memid = memid;
		this.bnum = bnum;
		this.lvl = lvl;
		this.step = step;
		this.nref = nref;
		this.delnum = delnum;
		this.parent = parent;
		this.filescount = filescount;
		this.menu_id = menu_id;
		this.menu_name = menu_name;
		this.menu_seq = menu_seq;
		this.file_num = file_num;
		this.filename = filename;
		this.fileext = fileext;
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

	public String getMemid() {
		return memid;
	}

	public void setMemid(String memid) {
		this.memid = memid;
	}

	public int getBnum() {
		return bnum;
	}

	public void setBnum(int bnum) {
		this.bnum = bnum;
	}

	public int getLvl() {
		return lvl;
	}

	public void setLvl(int lvl) {
		this.lvl = lvl;
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

	public int getFilescount() {
		return filescount;
	}

	public void setFilescount(int filescount) {
		this.filescount = filescount;
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

	@Override
	public String toString() {
		return "BoardFilesVo [idx=" + idx + ", title=" + title + ", cont=" + cont + ", writer=" + writer + ", regdate="
				+ regdate + ", readcount=" + readcount + ", memid=" + memid + ", bnum=" + bnum + ", lvl=" + lvl
				+ ", step=" + step + ", nref=" + nref + ", delnum=" + delnum + ", parent=" + parent + ", filescount="
				+ filescount + ", menu_id=" + menu_id + ", menu_name=" + menu_name + ", menu_seq=" + menu_seq
				+ ", file_num=" + file_num + ", filename=" + filename + ", fileext=" + fileext + ", sfilename="
				+ sfilename + "]";
	}

	
}
