package egovframework.com.sec.ksh.epr.web;

import egovframework.com.cmm.EgovMessageSource;
import egovframework.com.cmm.SessionVO;
import egovframework.com.sec.ksh.epr.service.EPREqpmnRep;
import egovframework.com.sec.ksh.epr.service.EPREqpmnRepService;
import egovframework.com.sec.ksh.epr.service.EPREqpmnRepVO;
import egovframework.com.sec.ksh.epr.service.EPRExcRecRep;
import egovframework.com.sec.ksh.epr.service.EPRExcRecRepMngtService;
import egovframework.com.sec.ksh.epr.service.EPRExcRecRepVO;
import egovframework.com.sec.ksh.epr.service.EPRPerRep;
import egovframework.com.sec.ksh.epr.service.EPRPerRepService;
import egovframework.com.sec.ksh.epr.service.EPRPerRepVO;

import javax.annotation.Resource;

import org.egovframe.rte.fdl.property.EgovPropertyService;
import org.egovframe.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springmodules.validation.commons.DefaultBeanValidator;

@Controller
@SessionAttributes(types = SessionVO.class)
public class EPRExcRecRepMngtController {

	@Resource(name = "egovMessageSource")
	EgovMessageSource egovMessageSource;

	@Resource(name = "eprExcRecRepMngtService")
	private EPRExcRecRepMngtService eprExcRecRepMngtService;
	
	@Resource(name = "eprEqpmnRepService")
	private EPREqpmnRepService eprEqpmnRepService;
	
	@Resource(name = "eprPerRepService")
	private EPRPerRepService eprPerRepService;

	/** EgovPropertyService */
	@Resource(name = "propertiesService")
	protected EgovPropertyService propertiesService;

	@Autowired
	private DefaultBeanValidator beanValidator;

	/**
	 * 수행실적신고 목록을 조회한다
	 * 
	 * @param eprExcRecRepVO eprExcRecRepVO
	 * @return String
	 * @exception Exception
	 */
//    @IncludedInfo(name="수행실적신고관리", listUrl="/sec/ksh/epr/selectExcRecRepListPageVw.do", order = 60,gid = 20)
	@RequestMapping(value = "/sec/ksh/epr/selectExcRecRepListPageVw.do")
	public String selectExcRecRepListPageVw(@ModelAttribute("eprExcRecRepVO") EPRExcRecRepVO eprExcRecRepVO,
											ModelMap model) throws Exception {

		/** EgovPropertyService.sample */
		eprExcRecRepVO.setPageUnit(propertiesService.getInt("pageUnit"));
		eprExcRecRepVO.setPageSize(propertiesService.getInt("pageSize"));

		/** paging */
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(eprExcRecRepVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(eprExcRecRepVO.getPageUnit());
		paginationInfo.setPageSize(eprExcRecRepVO.getPageSize());

		eprExcRecRepVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		eprExcRecRepVO.setLastIndex(paginationInfo.getLastRecordIndex());
		eprExcRecRepVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());

		eprExcRecRepVO.setEPRExcRecRepList(eprExcRecRepMngtService.selectEPRExcRecRepList(eprExcRecRepVO));
		model.addAttribute("eprExcRecRepList", eprExcRecRepVO.getEPRExcRecRepList());

        int totCnt = eprExcRecRepMngtService.selectEPRExcRecRepListTotCnt(eprExcRecRepVO);
        paginationInfo.setTotalRecordCount(totCnt);
        model.addAttribute("paginationInfo", paginationInfo);
        model.addAttribute("message", egovMessageSource.getMessage("success.common.select"));

		return "egovframework/com/sec/ksh/epr/EPRExcRecRepList";
	}

	/**
	 * 수행실적신고 등록화면 이동
	 * 
	 * @return String
	 * @exception Exception
	 */
	 @RequestMapping("/sec/ksh/epr/insertEPRExcRecRepVw.do") 
	 public String insertEPRExcRecRepVw(@ModelAttribute("eprExcRecRep") EPRExcRecRep eprExcRecRep) throws Exception { 
		 return "egovframework/com/sec/ksh/epr/EPRExcRecRepInsert";
	 }

	/**
	 * 수행실적신고 세부정보를 등록한다.
	 * 
	 * @param eprExcRecRep  EPRExcRecRep
	 * @param bindingResult BindingResult
	 * @return String
	 * @exception Exception
	 */
	 @RequestMapping(value="/sec/ksh/epr/EPRExcRecRepInsert.do") 
	 public String insertEPRExcRecRep(@ModelAttribute("eprExcRecRep") EPRExcRecRep eprExcRecRep,
			 						BindingResult bindingResult, 
			 						ModelMap model) throws Exception {
		 beanValidator.validate(eprExcRecRep, bindingResult); //validation 수행
		 
		 if (bindingResult.hasErrors()) { 
			 return "egovframework/com/sec/ksh/epr/EPRExcRecRepInsert"; 
		 } else {
			 eprExcRecRepMngtService.insertEPRExcRecRep(eprExcRecRep);
			 model.addAttribute("message", egovMessageSource.getMessage("success.common.insert")); 
			 return "forward:/sec/ksh/epr/selectExcRecRepListPageVw.do"; 
		 } 
	 }
	 
	 /**
	 * 수행실적신고를 삭제한다.
	 * @param excPerRepSeq String
	 * @return String
	 * @exception Exception
	 */  
    @RequestMapping(value="/sec/ksh/epr/EPRExcRecRepDelete.do")
    public String deleteEPRExcRecRep(@RequestParam("excPerRepSeq") String excPerRepSeq,
    								Model model) throws Exception {
    	
    	eprEqpmnRepService.deleteEPREqpmnRepAll(excPerRepSeq);
    	eprPerRepService.deleteEPRPerRepAll(excPerRepSeq);
    	eprExcRecRepMngtService.deleteEPRExcRecRep(excPerRepSeq);
    	
    	// model.addAttribute("message", egovMessageSource.getMessage("success.common.delete"));
        return "redirect:/sec/ksh/epr/selectExcRecRepListPageVw.do";
    }
    
    /**
	 * 수행실적신고 세부정보를 조회한다.
	 * @param excPerRepSeq String
	 * @param eprExcRecRepVO EPRExcRecRepVO
	 * @return String
	 * @exception Exception
	 */   
    @RequestMapping(value="/sec/ksh/epr/selectExcRecRepDtlVw.do")
    public String selectExcRecRepDtlVw(@RequestParam("excPerRepSeq") String excPerRepSeq,
    	                       			@ModelAttribute("eprExcRecRepVO") EPRExcRecRepVO eprExcRecRepVO,
    	                       			@ModelAttribute("eprEqpmnRepVO") EPREqpmnRepVO eprEqpmnRepVO,
    	                       			@ModelAttribute("eprPerRepVO") EPRPerRepVO eprPerRepVO,
    	                       			ModelMap model) throws Exception {
    	
    	eprExcRecRepVO.setExcPerRepSeq(excPerRepSeq);
    	eprEqpmnRepVO.setEPREqpmnRepList(eprEqpmnRepService.selectEPREqpmnRepList(excPerRepSeq));
    	eprPerRepVO.setEPRPerRepList(eprPerRepService.selectEPRPerRepList(excPerRepSeq));
    	
    	model.addAttribute("excPerRepSeq", excPerRepSeq);
    	model.addAttribute("eprExcRecRep", eprExcRecRepMngtService.selectEPRExcRecRepDtl(excPerRepSeq));
    	model.addAttribute("eprEqpmnRepList", eprEqpmnRepVO.getEPREqpmnRepList());
    	model.addAttribute("eprPerRepList", eprPerRepVO.getEPRPerRepList());
    	model.addAttribute("message", egovMessageSource.getMessage("success.common.select"));
    	return "egovframework/com/sec/ksh/epr/EPRExcRecRepDtl";
    }
    
    /**
	 * 장비신고 등록화면 이동
	 * 
	 * @exception Exception
	 */
	 @RequestMapping("/sec/ksh/epr/insertEPREqpmnRepVw.do") 
	 public String insertEPREqpmnRepVw(@ModelAttribute("eprEqpmnRep") EPREqpmnRep eprEqpmnRep,
			 							@RequestParam("excPerRepSeq") String excPerRepSeq,
			 							ModelMap model) throws Exception {
		 model.addAttribute("excPerRepSeq", excPerRepSeq);
		 return "egovframework/com/sec/ksh/epr/EPREqpmnRepInsert";
	 }

	/**
	 * 장비신고 세부정보를 등록한다.
	 * 
	 * @exception Exception
	 */
	 @RequestMapping(value="/sec/ksh/epr/EPREqpmnRepInsert.do") 
	 public String insertEPREqpmnRep(@ModelAttribute("eprEqpmnRep") EPREqpmnRep eprEqpmnRep,
						 			@RequestParam("excPerRepSeq") String excPerRepSeq,
						 			BindingResult bindingResult, 
						 			ModelMap model) throws Exception {
		beanValidator.validate(eprEqpmnRep, bindingResult); //validation 수행
	 
		if (bindingResult.hasErrors()) { 
			 return "egovframework/com/sec/ksh/epr/EPREqpmnRepInsert"; 
		} else {
			eprEqpmnRepService.insertEPREqpmnRep(eprEqpmnRep);
			model.addAttribute("message", egovMessageSource.getMessage("success.common.insert")); 
			return "forward:/sec/ksh/epr/selectExcRecRepDtlVw.do?excPerRepSeq="+eprEqpmnRep.getExcPerRepSeq(); 
		}
	}
	 
	 /**
	 * 실적신고 등록화면 이동
	 * 
	 * @exception Exception
	 */
	 @RequestMapping("/sec/ksh/epr/insertEPRPerRepVw.do") 
	 public String insertEPRPerRepVw(@ModelAttribute("eprPerRep") EPRPerRep eprPerRep) throws Exception { 
		 return "egovframework/com/sec/ksh/epr/EPRPerRepInsert";
	 }
	 
	 /**
	 * 실적신고 세부정보를 등록한다.
	 * 
	 * @exception Exception
	 */
	 @RequestMapping(value="/sec/ksh/epr/EPRPerRepInsert.do") 
	 public String insertEPRPerRep(@ModelAttribute("eprPerRep") EPRPerRep eprPerRep,
			 						BindingResult bindingResult, 
			 						ModelMap model) throws Exception {
		 beanValidator.validate(eprPerRep, bindingResult); //validation 수행
		 
		 if (bindingResult.hasErrors()) { 
			 return "egovframework/com/sec/ksh/epr/EPRPerRepInsert"; 
		 } else {
			 eprPerRepService.insertEPRPerRep(eprPerRep);
			 model.addAttribute("message", egovMessageSource.getMessage("success.common.insert")); 
			 return "forward:/sec/ksh/epr/selectExcRecRepDtlVw.do?excPerRepSeq="+eprPerRep.getExcPerRepSeq(); 
		 } 
	 }
}
