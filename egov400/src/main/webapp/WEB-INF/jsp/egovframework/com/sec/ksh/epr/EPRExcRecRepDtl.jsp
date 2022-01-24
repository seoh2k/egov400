<%
/**
 * @Class Name  : egovAuthorUpdate.java
 * @Description : egovAuthorUpdate jsp
 * @Modification Information
 * @
 * @  수정일         수정자          수정내용
 * @ -------    --------    ---------------------------
 * @ 2009.02.01    lee.m.j          최초 생성
 *   2016.06.13    장동한          표준프레임워크 v3.6 개선
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
<c:set var="pageTitle"><spring:message code="comCopSecRam.title"/></c:set>
<!DOCTYPE html>
<html>
<head>
<title>수행실적신고 상세보기</title><!-- 권한관리 수정 -->
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/com/com.css' />">

<script type="text/javascript" src="<c:url value="/validator.do"/>"></script>
<validator:javascript formName="eprExcRecRep" staticJavascript="false" xhtml="true" cdata="false"/>
<script type="text/javaScript" language="javascript">

</script>
</head>

<body>
<!-- javascript warning tag  -->
<noscript class="noScriptTitle"><spring:message code="common.noScriptTitle.msg" /></noscript>
<div class="wTableFrm">
	<!-- 타이틀 -->
	<h2>수행실적신고 상세보기</h2>

	<!-- 상세보기 -->
	<table class="wTable" summary="<spring:message code="common.summary.list" arguments="${pageTitle}" />">
	<caption>${pageTitle} <spring:message code="title.create" /></caption>
	<colgroup>
		<col style="width: 16%;"><col style="width: ;">
	</colgroup>
	<tbody>
		<!-- 수행년도 -->
		<tr>
			<th>수행년도</th>
			<td class="left">
				<div><c:out value="${eprExcRecRep.excDate}"/></div>
			</td>
		</tr>
		<!-- 수행실적신고명 -->
		<tr>
			<th>수행실적신고명</th>
			<td class="left">
				<div><c:out value="${eprExcRecRep.excPerRepName}"/></div>
			</td>
		</tr>
	</tbody>
	</table>

	<!-- 하단 버튼 -->
	<div class="btn">
		<span class="btn_s"><a href="<c:url value='/sec/ksh/epr/selectExcRecRepListPageVw.do' />"  title="<spring:message code="button.list" />  <spring:message code="input.button" />"><spring:message code="button.list" /></a></span><!-- 목록 -->
	</div><div style="clear:both;"></div>
	
</div>
<div class="board">
	<h1>장비신고 목록</h1><!-- 장비신고 목록 -->
	<!-- 등록영역 -->
	<div class="search_box" title="<spring:message code="common.searchCondition.msg" />">
		<ul>
			<li style="border: 0px solid #d2d2d2;">
				<span class="btn_b"><a href="<c:url value='/sec/ksh/epr/insertEPREqpmnRepVw.do?excPerRepSeq=${excPerRepSeq}'/>" onClick="javascript:fncAddEPREqpmnRepInsert();"  title="<spring:message code="button.create" /> <spring:message code="input.button" />"><spring:message code="button.create" /></a></span>
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
		<th>장비순서번호</th>
		<th>장비명</th>
		<th>규격</th>
		<th>등록번호</th>
		<th>등급코드명</th>
		<th>삭제</th>
	</tr>
	</thead>
	<tbody class="ov">
	<c:if test="${fn:length(eprEqpmnRepList) == 0}">
	<tr>
		<td colspan="3"><spring:message code="common.nodata.msg" /></td>
	</tr>
	</c:if>
	<c:forEach var="eprEqpmnRep" items="${eprEqpmnRepList}" varStatus="status">
	<tr>
		<td><c:out value="${eprEqpmnRep.eqpmnNo}"/></td>
		<td><c:out value="${eprEqpmnRep.eqpmnName}"/></td>
		<td><c:out value="${eprEqpmnRep.stndrd}"/></td>
		<td><c:out value="${eprEqpmnRep.regNo}"/></td>
		<td><c:out value="${eprEqpmnRep.gradCode}"/></td>
		<td><a href="/sec/ksh/epr/EPRExcRecRepDelete.do?excPerRepSeq=${eprExcRecRep.excPerRepSeq}&eqpmnNo=${eprEqpmnRep.eqpmnNo}" type="button" class="s_btn"/>삭제</td>
	</tr>
	</c:forEach>
	</tbody>
	</table>
</div><!-- end div board -->
<div class="board">
	<h1>실적신고 목록</h1><!-- 실적신고 목록 -->
	<!-- 등록영역 -->
	<div class="search_box" title="<spring:message code="common.searchCondition.msg" />">
		<ul>
			<li style="border: 0px solid #d2d2d2;">
				<span class="btn_b"><a href="<c:url value='/sec/ksh/epr/insertEPRPerRepVw.do?excPerRepSeq=${excPerRepSeq}'/>" onClick="javascript:fncAddEPRPerRepInsert();"  title="<spring:message code="button.create" /> <spring:message code="input.button" />"><spring:message code="button.create" /></a></span>
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
		<th>실적순서번호</th>
		<th>용역명</th>
		<th>용역구분코드</th>
		<th>계약금액</th>
		<th>담당자명</th>
		<th>용역내용</th>
		<th>등록일자</th>
		<th>등록자ID</th>
		<th>삭제</th>
	</tr>
	</thead>
	<tbody class="ov">
	<c:if test="${fn:length(eprPerRepList) == 0}">
	<tr>
		<td colspan="3"><spring:message code="common.nodata.msg" /></td>
	</tr>
	</c:if>
	<c:forEach var="eprPerRep" items="${eprPerRepList}" varStatus="status">
	<tr>
		<td><c:out value="${eprPerRep.perNo}"/></td>
		<td><c:out value="${eprPerRep.servcName}"/></td>
		<td><c:out value="${eprPerRep.servcSeCode}"/></td>
		<td><c:out value="${eprPerRep.cntrctAmount}"/></td>
		<td><c:out value="${eprPerRep.chargerName}"/></td>
		<td><c:out value="${eprPerRep.servc}"/></td>
		<td><c:out value="${eprPerRep.regDate}"/></td>
		<td><c:out value="${eprPerRep.regId}"/></td>
		<td><a href="/sec/ksh/epr/EPRPerRepDelete.do?excPerRepSeq=${eprPerRep.excPerRepSeq}&perNo=${eprPerRep.perNo}" type="button" class="s_btn"/>삭제</td>
	</tr>
	</c:forEach>
	</tbody>
	</table>
</div><!-- end div board -->
<input type="hidden" name="searchCondition" value="<c:out value='${eprExcRecRepVO.searchCondition}'/>"/>
<input type="hidden" name="searchKeyword" value="<c:out value='${eprExcRecRepVO.searchKeyword}'/>"/>
<input type="hidden" name="pageIndex" value="<c:out value='${eprExcRecRepVO.pageIndex}'/>"/>	

</body>
</html>

