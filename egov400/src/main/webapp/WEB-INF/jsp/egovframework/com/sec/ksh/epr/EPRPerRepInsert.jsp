<%
/**
 * @Class Name  : EPRPerRepInsert.java
 * @Description : EPRPerRepInsert jsp
 * @Modification Information
 * @
 * @  수정일         수정자          수정내용
 * @ -------    --------    ---------------------------
 * @ 2009.02.01    lee.m.j          최초 생성
 *   2016.06.13    장동한            표준프레임워크 v3.6 개선
 *
 *  @EPRPerRep lee.m.j
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
<title>실적신고 등록 <spring:message code="title.create" /></title><!-- 권한관리 등록 -->
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/com/com.css' />">

<script type="text/javascript" src="<c:url value="/validator.do"/>"></script>
<validator:javascript formName="eprPerRep" staticJavascript="false" xhtml="true" cdata="false"/>
<script type="text/javaScript" language="javascript">
function fncPerRepInsert(form) {
	if(confirm("<spring:message code="common.regist.msg" />")){	//등록하시겠습니까?
        if(!validateEPRPerRep(form)){
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
<form:form modelAttribute="eprPerRep" action="${pageContext.request.contextPath}/sec/ksh/epr/EPRPerRepInsert.do" method="post" onSubmit="fncPerRepInsert(document.forms[0]); return false;"> 
<div class="wTableFrm">
	<!-- 타이틀 -->
	<h2>실적신고 등록</h2>

	<!-- 등록폼 -->
	<table class="wTable" summary="<spring:message code="common.summary.list" arguments="${pageTitle}" />">
	<caption>${pageTitle} <spring:message code="title.create" /></caption>
	<colgroup>
		<col style="width: 16%;"><col style="width: ;">
	</colgroup>
	<tbody>
		<!-- 입력 -->
		<c:set var="inputTxt"><spring:message code="input.input" /></c:set>
		<!-- 수행실적신고번호 -->
		<input name="excPerRepSeq" type="hidden" value="${excPerRepSeq}"/>
		<!-- 용역명 -->
		<tr>
			<th>용역명 <span class="pilsu">*</span></th>
			<td class="left">
   				<input type="text" name="servcName" size="40" maxlength="30" />
			</td>
		</tr>
		<!-- 용역구분 -->
		<tr>
			<th>용역구분 <span class="pilsu">*</span></th>
			<td class="left">
   				<input type="text" name="servcSeCode" size="40" maxlength="30" />
   				<select name="servcSeCode">
   					<option value="0001">GIS</option>
   					<option value="0002">부동산</option>
   					<option value="0003">비트코인</option>
   					<option value="0004">빅데이터</option>
   				</select>
			</td>
		</tr>
		<!-- 계약금액 -->
		<tr>
			<th>계약금액 <span class="pilsu">*</span></th>
			<td class="left">
   				<input type="text" name="cntrctAmount" size="40" maxlength="30" />
			</td>
		</tr>
		<!-- 담당자명 -->
		<tr>
			<th>담당자명 </th>
			<td class="left">
   				<input type="text" name="chargerName" size="40" maxlength="30" />
			</td>
		</tr>
		<!-- 용역내용 -->
		<tr>
			<th>용역내용 <span class="pilsu">*</span></th>
			<td class="left">
   				<input type="text" name="servc" size="40" maxlength="30" />
			</td>
		</tr>
		<!-- 등록자ID -->
		<input name="regId" type="hidden" value="TEST1"/>
		<!-- 수정자ID -->
		<input name="cngId" type="hidden" value="TEST1"/>
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

