package com.green.estimate.vo;

import java.util.Date;

public class EstimateVo {
	
	    private String estiId;
	    private String estiName;
	    private String memId;
	    private Date resDate;
	    private Date resTime;
	    private int guestNum;
	    private String hallId;
	    private String cateringId;
	    private String studioId;
	    private String dressId;
	    private int totalCost;
	    
	    
	    // 필드
	    public EstimateVo(){}
		public EstimateVo(String estiId, String estiName, String memId, Date resDate, Date resTime, int guestNum,
				String hallId, String cateringId, String studioId, String dressId, int totalCost) {
			super();
			this.estiId = estiId;
			this.estiName = estiName;
			this.memId = memId;
			this.resDate = resDate;
			this.resTime = resTime;
			this.guestNum = guestNum;
			this.hallId = hallId;
			this.cateringId = cateringId;
			this.studioId = studioId;
			this.dressId = dressId;
			this.totalCost = totalCost;
		}
		
		// getter/setter
		public String getEstiId() {
			return estiId;
		}
		public void setEstiId(String estiId) {
			this.estiId = estiId;
		}
		public String getEstiName() {
			return estiName;
		}
		public void setEstiName(String estiName) {
			this.estiName = estiName;
		}
		public String getMemId() {
			return memId;
		}
		public void setMemId(String memId) {
			this.memId = memId;
		}
		public Date getResDate() {
			return resDate;
		}
		public void setResDate(Date resDate) {
			this.resDate = resDate;
		}
		public Date getResTime() {
			return resTime;
		}
		public void setResTime(Date resTime) {
			this.resTime = resTime;
		}
		public int getGuestNum() {
			return guestNum;
		}
		public void setGuestNum(int guestNum) {
			this.guestNum = guestNum;
		}
		public String getHallId() {
			return hallId;
		}
		public void setHallId(String hallId) {
			this.hallId = hallId;
		}
		public String getCateringId() {
			return cateringId;
		}
		public void setCateringId(String cateringId) {
			this.cateringId = cateringId;
		}
		public String getStudioId() {
			return studioId;
		}
		public void setStudioId(String studioId) {
			this.studioId = studioId;
		}
		public String getDressId() {
			return dressId;
		}
		public void setDressId(String dressId) {
			this.dressId = dressId;
		}
		public int getTotalCost() {
			return totalCost;
		}
		public void setTotalCost(int totalCost) {
			this.totalCost = totalCost;
		}
		
		// toString
		@Override
		public String toString() {
			return "EstimateVo [estiId=" + estiId + ", estiName=" + estiName + ", memId=" + memId + ", resDate="
					+ resDate + ", resTime=" + resTime + ", guestNum=" + guestNum + ", hallId=" + hallId
					+ ", cateringId=" + cateringId + ", studioId=" + studioId + ", dressId=" + dressId + ", totalCost="
					+ totalCost + "]";
		}
		
}
