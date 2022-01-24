<%
/**
 * @Class Name  : EPRExcRecRepInsert.java
 * @Description : EPRExcRecRepInsert jsp
 * @Modification Information
 * @
 * @  수정일         수정자          수정내용
 * @ -------    --------    ---------------------------
 * @ 2009.02.01    lee.m.j          최초 생성
 *   2016.06.13    장동한            표준프레임워크 v3.6 개선
 *
 *  @author lee.m.j
 *  @since 2009.03.11
 *  @version 1.0
 *  @see
 *
 */
 %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<!DOCTYPE html>
<html>
<head>
<title>수행실적신고 등록 <spring:message code="title.create" /></title><!-- 권한관리 등록 -->
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/com/com.css' />">

<script type="text/javascript" src="<c:url value="/validator.do"/>"></script>
<validator:javascript formName="eprExcRecRep" staticJavascript="false" xhtml="true" cdata="false"/>
<script type="text/javaScript" language="javascript">
function fncSelectExcRecRepList() {
	var varFrom = document.getElementById("eprExcRecRep");
	varFrom.action = "<c:url value='/sec/ksh/epr/EPRExcRecRepList.do'/>";
	varFrom.submit();
}

function fncExcRecRepInsert(form) {
	if(confirm("<spring:message code="common.regist.msg" />")){	//등록하시겠습니까?
        if(!validateeprExcRecRep(form)){
        	return false;
        }else{
        	form.submit();
        }
    }
}

function fncExcRecRepUpdate() {
	var varFrom = document.getElementById("eprExcRecRep");
	varFrom.action = "<c:url value='/sec/ksh/epr/EPRExcRecRepUpdate.do'/>";

	if(confirm("<spring:message code="common.regist.msg" />")){	//등록하시겠습니까?
        if(!validateeprExcRecRep(varFrom)){
            return;
        }else{
            varFrom.submit();
        }
    }
}

function fncExcRecRepDelete() {
	var varFrom = document.getElementById("eprExcRecRep");
	varFrom.action = "<c:url value='/sec/ksh/epr/EPRExcRecRepDelete.do'/>";
	if(confirm("<spring:message code="common.delete.msg" />")){ //삭제하시겠습니까?
	    varFrom.submit();
	}
}
</script>
</head>

<body>
<!-- javascript warning tag  -->
<noscript class="noScriptTitle"><spring:message code="common.noScriptTitle.msg" /></noscript>
<form:form modelAttribute="eprExcRecRep" action="${pageContext.request.contextPath}/sec/ksh/epr/EPRExcRecRepInsert.do" method="post" onSubmit="fncExcRecRepInsert(document.forms[0]); return false;"> 
<div class="wTableFrm">
	<!-- 타이틀 -->
	<h2>수행신고실적 등록</h2>

	<!-- 등록폼 -->
	<table class="wTable" summary="<spring:message code="common.summary.list" arguments="${pageTitle}" />">
	<caption>${pageTitle} <spring:message code="title.create" /></caption>
	<colgroup>
		<col style="width: 16%;"><col style="width: ;">
	</colgroup>
	<tbody>
		<!-- 입력 -->
		<c:set var="inputTxt"><spring:message code="input.input" /></c:set>
		<!-- 수행실적신고명 -->
		<tr>
			<th>수행실적신고명 <span class="pilsu">*</span></th>
			<td class="left">
			    <form:input path="excPerRepName" title="${excPerRepName} ${inputTxt}" size="40" maxlength="30" />
   				<div><form:errors path="excPerRepName" cssClass="error" /></div> 
			</td>
		</tr>
		<!-- 진행상태코드 -->
		<tr>
			<th>진행상태코드 <span class="pilsu">*</span></th>
			<td class="left">
			    <form:input path="progrsStatCode" title="${progrsStatCode} ${inputTxt}" size="40" maxlength="60" />
   				<div><form:errors path="progrsStatCode" cssClass="error" /></div> 
			</td>
		</tr>
		<!-- 등록자ID -->
		<tr>
			<th>등록자ID <span class="pilsu">*</span></th>
			<td class="left">
			    <form:input path="regId" title="${regId} ${inputTxt}" size="40" maxlength="30" />
   				<div><form:errors path="regId" cssClass="error" /></div> 
			</td>
		</tr>
		<!-- 수정자ID -->
		<tr>
			<th>수정자ID <span class="pilsu">*</span></th>
			<td class="left">
			    <form:input path="cngId" title="${cngId} ${inputTxt}" size="40" maxlength="60" />
   				<div><form:errors path="cngId" cssClass="error" /></div> 
			</td>
		</tr>
	</tbody>
	</table>

	<!-- 하단 버튼 -->
	<div class="btn">
		<input type="submit" class="s_submit" value="<spring:message code="button.create" />" title="<spring:message code="button.create" /> <spring:message code="input.button" />" /><!-- 등록 -->
		<span class="btn_s"><a href="<c:url value='/sec/ksh/epr/selectExcRecRepListPageVw.do' />"  title="<spring:message code="button.list" />  <spring:message code="input.button" />"><spring:message code="button.list" /></a></span><!-- 목록 -->
	</div><div style="clear:both;"></div>
	
</div>
</form:form>	

</body>
</html>

