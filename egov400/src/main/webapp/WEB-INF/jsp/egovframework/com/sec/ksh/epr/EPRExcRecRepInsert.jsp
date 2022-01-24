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
 *  @EPRExcRecRep lee.m.j
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
function fncExcRecRepInsert(form) {
	if(confirm("<spring:message code="common.regist.msg" />")){	//등록하시겠습니까?
        if(!validateEPRExcRecRep(form)){
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
		<!-- 수행년도 -->
		<tr>
			<th>수행년도 <span class="pilsu">*</span></th>
			<td class="left">
   				<input type="text" name="excDate" size="40" maxlength="30" />
			</td>
		</tr>
		<!-- 수행실적신고명 -->
		<tr>
			<th>수행실적신고명 <span class="pilsu">*</span></th>
			<td class="left">
   				<input type="text" name="excPerRepName" size="40" maxlength="30" />
			</td>
		</tr>
		<!-- 진행상태코드 -->
		<input name="progrsStatCode" type="hidden" value="0001"/>
		<!-- 등록자ID -->
		<input name="regId" type="hidden" value="TEST1"/>
		<!-- 수정자ID -->
		<input name="cngId" type="hidden" value="TEST1"/>
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

