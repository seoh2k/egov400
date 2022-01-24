package egovframework.com.sec.ksh.epr.service.impl;

import java.util.List;

import egovframework.com.sec.ksh.epr.service.EPRExcRecRep;
import egovframework.com.sec.ksh.epr.service.EPRExcRecRepMngtService;
import egovframework.com.sec.ksh.epr.service.EPRExcRecRepVO;

import org.egovframe.rte.fdl.cmmn.EgovAbstractServiceImpl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

/**
 * 권한관리에 관한 ServiceImpl 클래스를 정의한다.
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
 *   2009.03.11  이문준          최초 생성
 *
 * </pre>
 */

@Service("eprExcRecRepMngtService")
public class EPRExcRecRepMngtServiceImpl extends EgovAbstractServiceImpl implements EPRExcRecRepMngtService {
    
	@Resource(name="eprExcRecRepMngtDAO")
    private EPRExcRecRepMngtDAO eprExcRecRepMngtDAO;

    /**
	 * 수행실적신고 목록을 조회한다.
	 * @param eprExcRecRepVO EPRExcRecRepVO
	 * @return List<EPRExcRecRepVO>
	 * @exception Exception
	 */
    public List<EPRExcRecRepVO> selectEPRExcRecRepList(EPRExcRecRepVO eprExcRecRepVO) throws Exception {
        return eprExcRecRepMngtDAO.selectEPRExcRecRepList(eprExcRecRepVO);
    }
    
    /**
	 * 수행실적신고을 등록한다.
	 * @param eprExcRecRep EPRExcRecRep
	 * @exception Exception
	 */
	public void insertEPRExcRecRep(EPRExcRecRep eprExcRecRep) throws Exception {
		eprExcRecRepMngtDAO.insertEPRExcRecRep(eprExcRecRep);
	}
	
	/**
	 * 수행실적신고을 삭제한다.
	 * @param excPerRepSeq String
	 * @exception Exception
	 */
    public void deleteEPRExcRecRep(String excPerRepSeq) throws Exception {
    	eprExcRecRepMngtDAO.deleteEPRExcRecRep(excPerRepSeq);
    }
    
    /**
	 * 수행실적신고을 조회한다.
	 * @param excPerRepSeq String
	 * @return eprExcRecRepVO
	 * @exception Exception
	 */
    public EPRExcRecRepVO selectEPRExcRecRepDtl(String excPerRepSeq) throws Exception {
    	EPRExcRecRepVO resultVO = eprExcRecRepMngtDAO.selectEPRExcRecRepDtl(excPerRepSeq);
        if (resultVO == null)
            throw processException("info.nodata.msg");
        return resultVO;
    }
    
    /**
	 * 수행실적신고 목록 카운트를 조회한다.
	 * @exception Exception
	 */
    public int selectEPRExcRecRepListTotCnt(EPRExcRecRepVO eprExcRecRepVO) throws Exception {
        return eprExcRecRepMngtDAO.selectEPRExcRecRepListTotCnt(eprExcRecRepVO);
    }

}
