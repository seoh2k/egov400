package egovframework.com.sec.ksh.epr.service;

import egovframework.com.cmm.ComDefaultVO;

public class EPRExcRecRep extends ComDefaultVO {

	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = 1L;
		
	private EPRExcRecRep eprExcRecRep;
	
	private String excPerRepSeq;
	
	private String excPerRepName;
	
	private String progrsStatCode;
	
	private String progrsStatCodeNm;
	
	private String excDate;
	
	private String regDate;
	
	private String cngDate;
	
	private String regId;
	
	private String cngId;

	public EPRExcRecRep getEprExcRecRep() {
		return eprExcRecRep;
	}

	public void setEprExcRecRep(EPRExcRecRep eprExcRecRep) {
		this.eprExcRecRep = eprExcRecRep;
	}

	public String getExcDate() {
		return excDate;
	}

	public void setExcDate(String excDate) {
		this.excDate = excDate;
	}

	public String getExcPerRepSeq() {
		return excPerRepSeq;
	}

	public void setExcPerRepSeq(String excPerRepSeq) {
		this.excPerRepSeq = excPerRepSeq;
	}

	public String getExcPerRepName() {
		return excPerRepName;
	}

	public void setExcPerRepName(String excPerRepName) {
		this.excPerRepName = excPerRepName;
	}

	public String getProgrsStatCode() {
		return progrsStatCode;
	}

	public void setProgrsStatCode(String progrsStatCode) {
		this.progrsStatCode = progrsStatCode;
	}

	public String getProgrsStatCodeNm() {
		return progrsStatCodeNm;
	}

	public void setProgrsStatCodeNm(String progrsStatCodeNm) {
		this.progrsStatCodeNm = progrsStatCodeNm;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public String getCngDate() {
		return cngDate;
	}

	public void setCngDate(String cngDate) {
		this.cngDate = cngDate;
	}

	public String getRegId() {
		return regId;
	}

	public void setRegId(String regId) {
		this.regId = regId;
	}

	public String getCngId() {
		return cngId;
	}

	public void setCngId(String cngId) {
		this.cngId = cngId;
	}
	
}
