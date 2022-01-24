package egovframework.com.sec.ksh.epr.service;

import java.util.List;

public class EPREqpmnRepVO extends EPREqpmnRep {

	private static final long serialVersionUID = 1L;

	List <EPREqpmnRepVO> eprEqpmnRepList;

	/**
	 * EPREqpmnRepList attribute 를 리턴한다.
	 * @return List<EPREqpmnRepVO>
	 */
	public List<EPREqpmnRepVO> getEPREqpmnRepList() {
		return eprEqpmnRepList;
	}

	/**
	 * EPREqpmnRepList attribute 값을 설정한다.
	 * @param EPREqpmnRepList List<EPREqpmnRepVO> 
	 */
	public void setEPREqpmnRepList(List<EPREqpmnRepVO> eprEqpmnRepList) {
		this.eprEqpmnRepList = eprEqpmnRepList;
	}
}