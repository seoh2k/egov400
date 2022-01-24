package egovframework.com.sec.ksh.epr.service;

import egovframework.com.cmm.ComDefaultVO;

public class EPRPerRep extends ComDefaultVO {

	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = 1L;

	private EPRPerRep eprPerRep;
	
	private String excPerRepSeq;
	
	private String perNo;
	
	private String servcName;
	
	private String servcSeCode;
	
	private String cntrctAmount;
	
	private String chargerName;
	
	private String servc;
	
	private String regDate;
	
	private String regId;
	
	private String cngDate;
	
	private String cngId;

	public EPRPerRep getEprPerRep() {
		return eprPerRep;
	}

	public void setEprPerRep(EPRPerRep eprPerRep) {
		this.eprPerRep = eprPerRep;
	}

	public String getExcPerRepSeq() {
		return excPerRepSeq;
	}

	public void setExcPerRepSeq(String excPerRepSeq) {
		this.excPerRepSeq = excPerRepSeq;
	}

	public String getPerNo() {
		return perNo;
	}

	public void setPerNo(String perNo) {
		this.perNo = perNo;
	}

	public String getServcName() {
		return servcName;
	}

	public void setServcName(String servcName) {
		this.servcName = servcName;
	}

	public String getServcSeCode() {
		return servcSeCode;
	}

	public void setServcSeCode(String servcSeCode) {
		this.servcSeCode = servcSeCode;
	}

	public String getCntrctAmount() {
		return cntrctAmount;
	}

	public void setCntrctAmount(String cntrctAmount) {
		this.cntrctAmount = cntrctAmount;
	}

	public String getChargerName() {
		return chargerName;
	}

	public void setChargerName(String chargerName) {
		this.chargerName = chargerName;
	}

	public String getServc() {
		return servc;
	}

	public void setServc(String servc) {
		this.servc = servc;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public String getRegId() {
		return regId;
	}

	public void setRegId(String regId) {
		this.regId = regId;
	}

	public String getCngDate() {
		return cngDate;
	}

	public void setCngDate(String cngDate) {
		this.cngDate = cngDate;
	}

	public String getCngId() {
		return cngId;
	}

	public void setCngId(String cngId) {
		this.cngId = cngId;
	}
	
}
