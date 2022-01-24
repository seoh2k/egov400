package egovframework.com.sec.ksh.epr.service.impl;

import java.util.List;

import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import egovframework.com.sec.ksh.epr.service.EPRPerRepVO;

import org.springframework.stereotype.Repository;

@Repository("eprPerRepDAO")
public class EPRPerRepDAO extends EgovComAbstractDAO {

    @SuppressWarnings({ "unchecked", "deprecation" })
	public List<EPRPerRepVO> selectEPRPerRepList(String excPerRepSeq) throws Exception {
        return (List<EPRPerRepVO>) list("eprPerRepDAO.selectEPRPerRepList", excPerRepSeq);
    }
    
    public void deleteEPRPerRepAll(String excPerRepSeq) throws Exception {
        delete("eprPerRepDAO.deleteEPRPerRepAll", excPerRepSeq);
    }
    
}
