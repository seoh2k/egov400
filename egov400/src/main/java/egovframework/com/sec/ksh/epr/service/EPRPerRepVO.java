package egovframework.com.sec.ksh.epr.service;

import java.util.List;

public class EPRPerRepVO extends EPRPerRep {

	private static final long serialVersionUID = 1L;

	List <EPRPerRepVO> eprPerRepList;

	/**
	 * EPRPerRepList attribute 를 리턴한다.
	 * @return List<EPRPerRepVO>
	 */
	public List<EPRPerRepVO> getEPRPerRepList() {
		return eprPerRepList;
	}

	/**
	 * EPRPerRepList attribute 값을 설정한다.
	 * @param EPRPerRepList List<EPRPerRepVO> 
	 */
	public void setEPRPerRepList(List<EPRPerRepVO> eprPerRepList) {
		this.eprPerRepList = eprPerRepList;
	}
}