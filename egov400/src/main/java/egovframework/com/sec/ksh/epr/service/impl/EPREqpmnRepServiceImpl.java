package egovframework.com.sec.ksh.epr.service.impl;

import java.util.List;

import egovframework.com.sec.ksh.epr.service.EPREqpmnRepService;
import egovframework.com.sec.ksh.epr.service.EPREqpmnRepVO;
import egovframework.com.sec.ksh.epr.service.EPREqpmnRep;

import org.egovframe.rte.fdl.cmmn.EgovAbstractServiceImpl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("eprEqpmnRepService")
public class EPREqpmnRepServiceImpl extends EgovAbstractServiceImpl implements EPREqpmnRepService {
    
	@Resource(name="eprEqpmnRepDAO")
    private EPREqpmnRepDAO eprEqpmnRepDAO;

    public List<EPREqpmnRepVO> selectEPREqpmnRepList(String excPerRepSeq) throws Exception {
        return eprEqpmnRepDAO.selectEPREqpmnRepList(excPerRepSeq);
    }
    
    public void deleteEPREqpmnRepAll(String excPerRepSeq) throws Exception {
    	eprEqpmnRepDAO.deleteEPREqpmnRepAll(excPerRepSeq);
    }
    
    public void insertEPREqpmnRep(EPREqpmnRep eprEqpmnRep) throws Exception {
    	eprEqpmnRepDAO.insertEPREqpmnRep(eprEqpmnRep);
	}

}
