package egovframework.com.sec.ksh.epr.service;

import java.util.List;

public interface EPREqpmnRepService {
    
	public List<EPREqpmnRepVO> selectEPREqpmnRepList(String excPerRepSeq) throws Exception;
	
	public void deleteEPREqpmnRepAll(String excPerRepSeq) throws Exception;

	public void insertEPREqpmnRep(EPREqpmnRep eprEqpmnRep) throws Exception;

}
