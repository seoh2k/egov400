<%
 /**
  * @Class Name : EgoveprExcRecRep.java
  * @Description : EgoveprExcRecRep List 화면
  * @Modification Information
  * @
  * @  수정일                     수정자                    수정내용
  * @ -------       --------    ---------------------------
  * @ 2009.03.01    Lee.m.j       최초 생성
  *   2016.06.13    장동한          표준프레임워크 v3.6 개선
  *
  *  @author 실행환경 개발팀 홍길동
  *  @since 2009.02.01
  *  @version 1.0
  *  @see
  *
  */
%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="pageTitle"><spring:message code="comCopSecRam.title"/></c:set>
<!DOCTYPE html>
<html>
<head>
<title>수행실적신고 목록 <spring:message code="title.list" /></title><!-- 수행실적신고 목록 -->
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/com/com.css' />">
<script type="text/javaScript" language="javascript" defer="defer">
function fncCheckAll() {
    var checkField = document.listForm.delYn;
    if(document.listForm.checkAll.checked) {
        if(checkField) {
            if(checkField.length > 1) {
                for(var i=0; i < checkField.length; i++) {
                    checkField[i].checked = true;
                }
            } else {
                checkField.checked = true;
            }
        }
    } else {
        if(checkField) {
            if(checkField.length > 1) {
                for(var j=0; j < checkField.length; j++) {
                    checkField[j].checked = false;
                }
            } else {
                checkField.checked = false;
            }
        }
    }
}

function fncManageChecked() {

    var checkField = document.listForm.delYn;
    var checkId = document.listForm.checkId;
    var returnValue = "";

    var returnBoolean = false;
    var checkCount = 0;

    if(checkField) {
        if(checkField.length > 1) {
            for(var i=0; i<checkField.length; i++) {
                if(checkField[i].checked) {
                    checkField[i].value = checkId[i].value;
                    if(returnValue == "")
                        returnValue = checkField[i].value;
                    else
                	    returnValue = returnValue + ";" + checkField[i].value;
                    checkCount++;
                }
            }
            if(checkCount > 0)
                returnBoolean = true;
            else {
                alert("<spring:message code="comCopSecRam.validate.authorSelect" />"); //선택된 권한이 없습니다."
                returnBoolean = false;
            }
        } else {
            if(document.listForm.delYn.checked == false) {
                alert("<spring:message code="comCopSecRam.validate.authorSelect" />"); //선택된 권한이 없습니다."
                returnBoolean = false;
            }
            else {
                returnValue = checkId.value;
                returnBoolean = true;
            }
        }
    } else {
        alert("<spring:message code="comCopSecRam.validate.authorSelectResult" />"); //조회된 결과가 없습니다.
    }

    document.listForm.authorCodes.value = returnValue;

    return returnBoolean;
}

function fncSelectEPRExcRecRepList(pageNo){
    document.listForm.searchCondition.value = "1";
    document.listForm.pageIndex.value = pageNo;
    document.listForm.action = "<c:url value='/sec/ksh/epr/EPRExcRecRepList.do'/>";
    document.listForm.submit();
}

function fncAddEPRExcRecRepInsert() {
    location.replace("<c:url value='/sec/ksh/epr/EPRExcRecRepInsertView.do'/>");
}

function fncEPRExcRecRepDeleteList() {

    if(fncManageChecked()) {
    	if(confirm("<spring:message code="common.delete.msg" />")){	//삭제하시겠습니까?
            document.listForm.action = "<c:url value='/sec/ksh/epr/EPRExcRecRepListDelete.do'/>";
            document.listForm.submit();
        }
    }
}

function fncAddEPRExcRecRepView() {
    document.listForm.action = "<c:url value='/sec/ksh/epr/EPRExcRecRepUpdate.do'/>";
    document.listForm.submit();
}

function linkPage(pageNo){
    document.listForm.searchCondition.value = "1";
    document.listForm.pageIndex.value = pageNo;
    document.listForm.action = "<c:url value='/sec/ksh/epr/selectExcRecRepListPageVw.do'/>";
    document.listForm.submit();
}

function press() {

    if (event.keyCode==13) {
    	fncSelectEPRExcRecRepList('1');
    }
}
</script>
</head>
<body>
<!-- javascript warning tag  -->
<noscript class="noScriptTitle"><spring:message code="common.noScriptTitle.msg" /></noscript>
<form:form name="listForm" action="${pageContext.request.contextPath}/sec/ksh/epr/EPRExcRecRepList.do" method="post">
<div class="board">
	<h1>수행실적신고 목록</h1><!-- 권한관리 목록 -->
	<!-- 검색영역 -->
	<div class="search_box" title="<spring:message code="common.searchCondition.msg" />">
		<ul>
			<li><div style="line-height:4px;">&nbsp;</div><div>수행년도 : </div></li><!-- 권한명 -->
			<!-- 검색키워드 및 조회버튼 -->
			<li style="border: 0px solid #d2d2d2;">
				<input class="s_input" name="searchKeyword" type="text"  size="35" title="<spring:message code="title.search" /> <spring:message code="input.input" />" value='<c:out value="${eprExcRecRepVO.searchKeyword}"/>'  maxlength="155" >
				<input type="submit" class="s_btn" value="<spring:message code="button.inquire" />" title="<spring:message code="title.inquire" /> <spring:message code="input.button" />" />
				<span class="btn_b"><a href="<c:url value='/sec/ksh/epr/insertEPRExcRecRepVw.do'/>" onClick="javascript:fncAddEPRExcRecRepInsert();"  title="<spring:message code="button.create" /> <spring:message code="input.button" />"><spring:message code="button.create" /></a></span>
			</li>
		</ul>
	</div>
	
	<!-- 목록영역 -->
	<table class="board_list" summary="<spring:message code="common.summary.list" arguments="${pageTitle}" />">
	<caption>${pageTitle} <spring:message code="title.list" /></caption>
	<colgroup>
		<col style="width: 9%;">
		<col style="width: 33%;">
		<col style="width: 30%;">
		<col style="width: ;">
	</colgroup>
	<thead>
	<tr>
		<th>수행년도</th>
		<th>수행실적신고명</th>
		<th>진행상태</th>
		<th>수행일시</th>
		<th>삭제</th>
	</tr>
	</thead>
	<tbody class="ov">
	<c:if test="${fn:length(eprExcRecRepList) == 0}">
	<tr>
		<td colspan="3"><spring:message code="common.nodata.msg" /></td>
	</tr>
	</c:if>
	<c:forEach var="eprExcRecRep" items="${eprExcRecRepList}" varStatus="status">
	<tr>
		<td><c:out value="${eprExcRecRep.excDate}"/></td>
		<td><a href="/sec/ksh/epr/selectExcRecRepDtlVw.do?excPerRepSeq=${eprExcRecRep.excPerRepSeq}"><c:out value="${eprExcRecRep.excPerRepName}"/></a></td>
		<td><c:out value="${eprExcRecRep.progrsStatCodeNm}"/></td>
		<td><c:out value="${eprExcRecRep.cngDate}"/></td>
		<td><a href="/sec/ksh/epr/EPRExcRecRepDelete.do?excPerRepSeq=${eprExcRecRep.excPerRepSeq}" type="button" class="s_btn"/>삭제</td>
	</tr>
	</c:forEach>
	</tbody>
	</table>
	
	<c:if test="${!empty eprExcRecRepVO.pageIndex }">
		<!-- paging navigation -->
		<div class="pagination">
			<ul><ui:pagination paginationInfo="${paginationInfo}" type="image" jsFunction="linkPage"/></ul>
		</div>
	</c:if>


</div><!-- end div board -->

<input type="hidden" name="pageIndex" value="<c:out value='${eprExcRecRepVO.pageIndex}'/>"/>
<input type="hidden" name="searchCondition" value="1"/>
</form:form>
</body>
</html>
