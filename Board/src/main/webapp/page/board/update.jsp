<%@ include file="/layout/jstl.jsp" %>
<%@ include file="/layout/common.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html>
<head>
	<title>project💻 - ALOHA CLASS🌴</title>
	<jsp:include page="/layout/meta.jsp" />
	<jsp:include page="/layout/link.jsp" />
</head>
<body>
	<jsp:include page="/layout/header.jsp" />
	<%-- [Contents] ######################################################### --%>
		
	<main>
		<div class="container mt-5">
			<h2 class="mb-4">게시글 수정</h2>
			<form id="form" action="${ root }/board/update" method="post">
				<input type="hidden" name="id" value="${board.id}" />
	
				<div class="mb-3">
					<label for="title" class="form-label">제목</label>
					<input type="text" class="form-control" id="title" name="title" value="${board.title}" required>
				</div>
	
				<div class="mb-3">
					<label for="username" class="form-label">작성자</label>
					<input type="text" class="form-control" id="username" name="username" value="${board.user.name}" readonly>
				</div>
	
				<div class="mb-3">
					<label for="content" class="form-label">내용</label>
					<textarea class="form-control" id="content" name="content" rows="6" required>${board.content}</textarea>
				</div>
	
				<div class="d-grid gap-2 mt-4">
					<button type="submit" class="btn btn-primary">수정</button>
					<button type="button" class="btn btn-danger" id="btn-delete">삭제</button>
					<a href="${ root }/board/list" class="btn btn-secondary">목록</a>
				</div>
			</form>
		</div>
	</main>
	
	
	<%-- [Contents] ######################################################### --%>
	<jsp:include page="/layout/footer.jsp" />
	<jsp:include page="/layout/script.jsp" />
	
	<script>
// 		const form = document.getElementById("form")
		const form = $('#form')
		
		// 삭제 버튼 클릭
		$('#btn-delete').on('click', function() {
			const check = confirm("정말로 삭제하시겠습니까?")
			if( !check ) return
// 			form.action = "/Board/board/delete"
			form.attr("action", "/Board/board/delete")
			form.submit()
		})
	
	</script>
</body>
</html>