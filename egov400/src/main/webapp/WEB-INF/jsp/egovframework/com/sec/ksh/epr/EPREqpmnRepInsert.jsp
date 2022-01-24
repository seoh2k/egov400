<%
/**
 * @Class Name  : eprEqpmnRepInsert.java
 * @Description : eprEqpmnRepInsert jsp
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
<title>장비신고 등록 <spring:message code="title.create" /></title><!-- 권한관리 등록 -->
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/com/com.css' />">

<script type="text/javascript" src="<c:url value="/validator.do"/>"></script>
<validator:javascript formName="eprEqpmnRep" staticJavascript="false" xhtml="true" cdata="false"/>
<script type="text/javaScript" language="javascript">

function fncEPREqpmnRepInsert(form) {
	if(confirm("<spring:message code="common.regist.msg" />")){	//등록하시겠습니까?
        if(!validateEPREqpmnRep(form)){
        	return false;
        }else{
        	form.submit();
        }
    }
}
</script>
</head>

<body>
<!-- javascript warning tag  -->
<noscript class="noScriptTitle"><spring:message code="common.noScriptTitle.msg" /></noscript>
<form:form modelAttribute="eprEqpmnRep" action="${pageContext.request.contextPath}/sec/ksh/epr/EPREqpmnRepInsert.do" method="post" onSubmit="fncEPREqpmnRepInsert(document.forms[0]); return false;"> 
<div class="wTableFrm">
	<!-- 타이틀 -->
	<h2>장비신고 등록</h2>

	<!-- 등록폼 -->
	<table class="wTable" summary="<spring:message code="common.summary.list" arguments="${pageTitle}" />">
	<caption>${pageTitle} <spring:message code="title.create" /></caption>
	<colgroup>
		<col style="width: 16%;"><col style="width: ;">
	</colgroup>
	<tbody>
		<!-- 입력 -->
		<c:set var="inputTxt"><spring:message code="input.input" /></c:set>
		<!-- 수행실적신고일련번호 -->
		<tr>
			<th>수행실적신고일련번호 <span class="pilsu">*</span></th>
			<td class="left">
			    <form:input path="excPerRepSeq" title="${excPerRepSeq} ${inputTxt}" readonly="true" size="40" maxlength="30" />
			</td>
		</tr>
		<!-- 장비순서번호 -->
		<tr>
			<th>장비순서번호 <span class="pilsu">*</span></th>
			<td class="left">
			    <form:input path="eqpmnNo" title="${eqpmnNo} ${inputTxt}" size="40" maxlength="60" />
   				<div><form:errors path="eqpmnNo" cssClass="error" /></div> 
			</td>
		</tr>
		<!-- 장비명 -->
		<tr>
			<th>장비명 <span class="pilsu">*</span></th>
			<td class="left">
			    <form:input path="eqpmnName" title="${eqpmnName} ${inputTxt}" size="40" maxlength="30" />
   				<div><form:errors path="eqpmnName" cssClass="error" /></div> 
			</td>
		</tr>
		<!-- 규격 -->
		<tr>
			<th>규격 <span class="pilsu">*</span></th>
			<td class="left">
			    <form:input path="stndrd" title="${stndrd} ${inputTxt}" size="40" maxlength="60" />
   				<div><form:errors path="stndrd" cssClass="error" /></div> 
			</td>
		</tr>
		<!-- 등록번호 -->
		<tr>
			<th>등록번호 <span class="pilsu">*</span></th>
			<td class="left">
			    <form:input path="regNo" title="${regNo} ${inputTxt}" size="40" maxlength="60" />
   				<div><form:errors path="regNo" cssClass="error" /></div> 
			</td>
		</tr>
		<!-- 등급코드 -->
		<tr>
			<th>등급코드 <span class="pilsu">*</span></th>
			<td class="left">
			    <form:input path="gradCode" title="${gradCode} ${inputTxt}" size="40" maxlength="60" />
   				<div><form:errors path="gradCode" cssClass="error" /></div> 
			</td>
		</tr>
		<!-- 등록자ID -->
		<tr>
			<th>등록자ID <span class="pilsu">*</span></th>
			<td class="left">
			    <form:input path="regId" title="${regId} ${inputTxt}" size="40" maxlength="60" />
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
		<span class="btn_s"><a href="<c:url value='/sec/ksh/epr/selectExcRecRepDtlVw.do?excPerRepSeq=${excPerRepSeq}' />"  title="<spring:message code="button.list" />  <spring:message code="input.button" />"><spring:message code="button.list" /></a></span><!-- 목록 -->
	</div><div style="clear:both;"></div>
	
</div>
</form:form>	

</body>
</html>

