package egovframework.com.sec.ksh.epr.service;

import egovframework.com.cmm.ComDefaultVO;

public class EPREqpmnRep extends ComDefaultVO {

	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = 1L;
	/**
	 * 장비신고
	 */	
	private EPREqpmnRep eprEqpmnRep;
	/**
	 * 수행실적신고일련번호
	 */	
	private String excPerRepSeq;
	/**
	 * 장비순서번호
	 */	
	private int eqpmnNo;
	/**
	 * 장비명
	 */	
	private String eqpmnName;
	/**
	 * 규격
	 */	
	private String stndrd;
	/**
	 * 등록번호
	 */	
	private int regNo;
	/**
	 * 등급코드
	 */	
	private String gradCode;
	/**
	 * 등록일자
	 */	
	private String regDate;
	/**
	 * 등록자ID
	 */	
	private String regId;
	/**
	 * 수정일자
	 */	
	private String cngDate;
	/**
	 * 수정자ID
	 */	
	private String cngId;
	
	public EPREqpmnRep getEprEqpmnRep() {
		return eprEqpmnRep;
	}
	public void setEprEqpmnRep(EPREqpmnRep eprEqpmnRep) {
		this.eprEqpmnRep = eprEqpmnRep;
	}
	public String getExcPerRepSeq() {
		return excPerRepSeq;
	}
	public void setExcPerRepSeq(String excPerRepSeq) {
		this.excPerRepSeq = excPerRepSeq;
	}
	public int getEqpmnNo() {
		return eqpmnNo;
	}
	public void setEqpmnNo(int eqpmnNo) {
		this.eqpmnNo = eqpmnNo;
	}
	public String getEqpmnName() {
		return eqpmnName;
	}
	public void setEqpmnName(String eqpmnName) {
		this.eqpmnName = eqpmnName;
	}
	public String getStndrd() {
		return stndrd;
	}
	public void setStndrd(String stndrd) {
		this.stndrd = stndrd;
	}
	public int getRegNo() {
		return regNo;
	}
	public void setRegNo(int regNo) {
		this.regNo = regNo;
	}
	public String getGradCode() {
		return gradCode;
	}
	public void setGradCode(String gradCode) {
		this.gradCode = gradCode;
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
