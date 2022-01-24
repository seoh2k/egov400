package egovframework.com.sec.ksh.epr.service.impl;

import java.util.List;

import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import egovframework.com.sec.ksh.epr.service.EPRExcRecRep;
import egovframework.com.sec.ksh.epr.service.EPRExcRecRepVO;

import org.springframework.stereotype.Repository;

/**
 * 권한관리에 대한 DAO 클래스를 정의한다.
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

@Repository("eprExcRecRepMngtDAO")
public class EPRExcRecRepMngtDAO extends EgovComAbstractDAO {

    /**
	 * 수행실적목록을 조회한다.
	 * @param eprExcRecRepVO EPRExcRecRepVO
	 * @return List<EPRExcRecRepVO>
	 * @exception Exception
	 */
    @SuppressWarnings("unchecked")
	public List<EPRExcRecRepVO> selectEPRExcRecRepList(EPRExcRecRepVO eprExcRecRepVO) throws Exception {
        return (List<EPRExcRecRepVO>) list("eprExcRecRepMngtDAO.selectEPRExcRecRepList", eprExcRecRepVO);
    }
    
    /**
	 * 수행실적목록을 등록한다.
	 * @param eprExcRecRep EPRExcRecRep
	 * @exception Exception
	 */
    public void insertEPRExcRecRep(EPRExcRecRep eprExcRecRep) throws Exception {
        insert("eprExcRecRepMngtDAO.insertEPRExcRecRep", eprExcRecRep);
    }
    
    /**
	 * 수행실적목록을 삭제한다.
	 * @param excPerRepSeq String
	 * @exception Exception
	 */
    public void deleteEPRExcRecRep(String excPerRepSeq) throws Exception {
        delete("eprExcRecRepMngtDAO.deleteEPRExcRecRep", excPerRepSeq);
    }
    
    /**
	 * 수행실적을 상세조회한다.
	 * @param excPerRepSeq String
	 * @return eprExcRecRepVO
	 * @exception Exception
	 */
    public EPRExcRecRepVO selectEPRExcRecRepDtl(String excPerRepSeq) throws Exception {
        return (EPRExcRecRepVO) selectOne("eprExcRecRepMngtDAO.selectEPRExcRecRepDtl", excPerRepSeq);
    }
    
    /**
	 * 수행실적목록 총 갯수를 조회한다.
	 * @exception Exception
	 */
    public int selectEPRExcRecRepListTotCnt(EPRExcRecRepVO eprExcRecRepVO)  throws Exception {
        return (Integer) selectOne("eprExcRecRepMngtDAO.selectEPRExcRecRepListTotCnt", eprExcRecRepVO);
    }
    
}
