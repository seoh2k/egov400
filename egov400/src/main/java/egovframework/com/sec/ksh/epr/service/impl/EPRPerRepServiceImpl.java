package egovframework.com.sec.ksh.epr.service.impl;

import java.util.List;

import egovframework.com.sec.ksh.epr.service.EPRPerRep;
import egovframework.com.sec.ksh.epr.service.EPRPerRepService;
import egovframework.com.sec.ksh.epr.service.EPRPerRepVO;

import org.egovframe.rte.fdl.cmmn.EgovAbstractServiceImpl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("eprPerRepService")
public class EPRPerRepServiceImpl extends EgovAbstractServiceImpl implements EPRPerRepService {
    
	@Resource(name="eprPerRepDAO")
    private EPRPerRepDAO eprPerRepDAO;

    public List<EPRPerRepVO> selectEPRPerRepList(String excPerRepSeq) throws Exception {
        return eprPerRepDAO.selectEPRPerRepList(excPerRepSeq);
    }
    
    public void deleteEPRPerRepAll(String excPerRepSeq) throws Exception {
    	eprPerRepDAO.deleteEPRPerRepAll(excPerRepSeq);
    }
    
    public void insertEPRPerRep(EPRPerRep eprPerRep) throws Exception {
    	eprPerRepDAO.insertEPRPerRep(eprPerRep);
	}

}
