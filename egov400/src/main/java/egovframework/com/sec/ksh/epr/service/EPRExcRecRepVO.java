package egovframework.com.sec.ksh.epr.service;

import java.util.List;

public class EPRExcRecRepVO extends EPRExcRecRep {

	private static final long serialVersionUID = 1L;

	List <EPRExcRecRepVO> eprExcRecRepList;

	/**
	 * eprExcRecRepList attribute 를 리턴한다.
	 * @return List<EPRExcRecRepVO>
	 */
	public List<EPRExcRecRepVO> getEPRExcRecRepList() {
		return eprExcRecRepList;
	}

	/**
	 * eprExcRecRepList attribute 값을 설정한다.
	 * @param eprExcRecRepList List<EPRExcRecRepVO> 
	 */
	public void setEPRExcRecRepList(List<EPRExcRecRepVO> eprExcRecRepList) {
		this.eprExcRecRepList = eprExcRecRepList;
	}
}