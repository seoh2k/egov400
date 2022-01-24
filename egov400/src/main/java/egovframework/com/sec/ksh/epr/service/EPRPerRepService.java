package egovframework.com.sec.ksh.epr.service;

import java.util.List;

public interface EPRPerRepService {
    
	public List<EPRPerRepVO> selectEPRPerRepList(String excPerRepSeq) throws Exception;
	
	public void deleteEPRPerRepAll(String excPerRepSeq) throws Exception;

}
