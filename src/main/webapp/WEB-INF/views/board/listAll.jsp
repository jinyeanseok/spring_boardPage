<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp" %>
<table class="table table-bordered">
	<tr>
		<th style="width: 10px">BNO</th>
		<th>TITLE</th>
		<th>WRITER</th>
		<th>REGDATE</th>
		<th style="width: 40px">VIEWCNT</th>
	</tr>
	
	<!-- for 문 -->
	<c:forEach items="${list}" var="boardVO"> <!-- model의 속성 list에 담겨있는 조회결과를 차례로 boardVO에 대입-->
		<tr>
			<td>${ boardVO.bno }</td>
			<td><a href="/board/read?bno=${boardVO.bno}">${ boardVO.title }</a></td>
			<td>${ boardVO.writer}</td>
			<td><fmt:formatDate pattern="YYYY-MM-dd HH:mm:ss" value="${ boardVO.regdate}"/></td>
			<td>${ boardVO.viewcnt}</td>
		</tr>
	</c:forEach>
</table>

<!-- 등록페이지로 가는 버튼 -->
<a href="/board/register"><button class="btn btn-primary">새글등록</button></a>

<script>
	var result = '${result}';
	if(result === 'registerOK'){
		alert('등록이 완료되었습니다.');
	}
</script>

<%@include file="../include/footer.jsp" %>