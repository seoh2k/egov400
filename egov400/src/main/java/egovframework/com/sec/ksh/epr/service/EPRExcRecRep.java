package egovframework.com.sec.ksh.epr.service;

import egovframework.com.cmm.ComDefaultVO;

/**
 * 수행실적신고에 대한 model 클래스를 정의한다.
 * @author 공통서비스 개발팀 이문준
 * @since 2009.06.01
 * @version 1.0
 * @see
 *
 * <pre>
 * << 개정이력(Modification Information) >>
 *   
 *   수정일      수정자           수정내용
 *  -------    --------    ---------------------------
 *   2009.03.20  이문준          최초 생성
 *
 * </pre>
 */

public class EPRExcRecRep extends ComDefaultVO {

	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = 1L;
	/**
	 * 수행실적신고
	 */	
	private EPRExcRecRep eprExcRecRep;
	/**
	 * 수행실적신고일련번호
	 */	
	private String excPerRepSeq;
	/**
	 * 수행실적신고명
	 */
	private String excPerRepName;
	/**
	 * 진행상태코드
	 */	
	private String progrsStatCode;
	/**
	 * 진행상태코드명
	 */	
	private String progrsStatCodeNm;
	/**
	 * 수행일자
	 */	
	private String excDate;
	/**
	 * 등록일자
	 */	
	private String regDate;
	/**
	 * 수정일자
	 */	
	private String cngDate;
	/**
	 * 등록자ID
	 */	
	private String regId;
	/**
	 * 수정자ID
	 */	
	private String cngId;
	
	public EPRExcRecRep getEprExcRecRep() {
		return eprExcRecRep;
	}
	
	public void setEprExcRecRep(EPRExcRecRep eprExcRecRep) {
		this.eprExcRecRep = eprExcRecRep;
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
	
	public String getExcDate() {
		return excDate;
	}
	
	public void setExcDate(String excDate) {
		this.excDate = excDate;
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
