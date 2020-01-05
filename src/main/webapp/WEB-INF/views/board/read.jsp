
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp" %>

<div id="saveOK" class="alert alert-warning hidden" role="alert">글이 수정되었습니다.</div>	

<div class="box-body">
	<span><b>글번호:</b> ${boardVO.bno}</span>	
	<div class="form-group">
		<label for="title">Title</label>
		<input type="text" id="title" name="title" class="form-control" value="${boardVO.title}" readonly="readonly"/>		
	</div>
	<div class="form-group">
		<label for="content">Content</label>
		<textarea name="content" id="content" class="form-control" rows="3" readonly="readonly">${boardVO.content}</textarea>		
	</div>
	<div class="form-group">
		<label for="writer">Writer</label>
		<input type="text" id="writer" name="writer" class="form-control" value="${boardVO.writer}" readonly="readonly"/>		
	</div>
</div>
	
<div>
	<a href="/board/listAll" class="btn btn-primary">LIST ALL</a>
	<a href="/board/update?bno=${boardVO.bno}" class="btn btn-warning">update</a>
	<button id="btn-remove" class="btn btn-danger">delete</button>
</div>
	
<script>
	var result = '${result}';
	$(function(){
		$('#btn-remove').click(function(){
			if(confirm("Are u sure?")){
				self.location.href = "/board/remove?bno=${boardVO.bno}";
			}
		});
			
		//수정 성공시 문구 나타났다 사라짐
		if(result === 'saveOK'){
			$('#saveOK').removeClass('hidden');
			$('#saveOK').fadeOut(2000);
		}
	});
</script>
<%@include file="../include/footer.jsp" %>