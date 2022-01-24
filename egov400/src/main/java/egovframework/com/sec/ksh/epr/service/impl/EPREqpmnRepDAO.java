package egovframework.com.sec.ksh.epr.service.impl;

import java.util.List;

import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import egovframework.com.sec.ksh.epr.service.EPREqpmnRepVO;
import egovframework.com.sec.ksh.epr.service.EPREqpmnRep;

import org.springframework.stereotype.Repository;

@Repository("eprEqpmnRepDAO")
public class EPREqpmnRepDAO extends EgovComAbstractDAO {

    @SuppressWarnings({ "unchecked", "deprecation" })
	public List<EPREqpmnRepVO> selectEPREqpmnRepList(String excPerRepSeq) throws Exception {
        return (List<EPREqpmnRepVO>) list("eprEqpmnRepDAO.selectEPREqpmnRepList", excPerRepSeq);
    }
    
    public void deleteEPREqpmnRepAll(String excPerRepSeq) throws Exception {
        delete("eprEqpmnRepDAO.deleteEPREqpmnRepAll", excPerRepSeq);
    }
    
    public void insertEPREqpmnRep(EPREqpmnRep eprEqpmnRep) throws Exception {
        insert("eprEqpmnRepDAO.insertEPREqpmnRep", eprEqpmnRep);
    }
    
}
