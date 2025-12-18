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
		<div class="container">
			<div class="px-4 pt-5 my-5 text-center">
				<div class="col-lg-6 mx-auto">
					<form action="${ root }/login" method="post">
				        <div class="row justify-content-center">
			                <div class="card p-5">
			                	<h2 class="display-4 fw-bold">Login</h2>
			                    <div class="card-body">
			                        <div class="mb-3">
									    <input class="form-control" type="text" name="username" id="username" placeholder="아이디" value="${ username }">
									</div>
									<div class="mb-3">
									    <input class="form-control" type="password" name="password" id="password" placeholder="비밀번호">
									</div>
									<div class="row">
									  <div class="mb-3 col-6">
									  	<c:if test="${ rememberId == null || rememberId == '' }">
									      	<input type="checkbox" class="form-check-input" name="rememberId" id="remember-id">
									      </c:if>
									  	<c:if test="${ rememberId != null && rememberId == 'on' }">
									        <input type="checkbox" class="form-check-input" name="rememberId" id="remember-id" checked>
									  	</c:if>
									      <label class="form-check-label" for="remember-id">아이디 저장</label>
									  </div>
									  <div class="mb-3 col-6">
									      <input type="checkbox" class="form-check-input" name="rememberMe" id="remember-me">
									      <label class="form-check-label" for="remember-me">자동 로그인</label>
									  </div>
									</div>
			                        <div class="d-grid gap-2">
			                            <button type="submit" class="btn btn-primary">로그인</button>
			                            <a href="${ root }/join" class="btn btn-success">회원가입</a>
			                        </div>
			                    </div>
			                </div>
				        </div>
					</form>
					
				
				</div>
			</div>
		</div>
	</main>
	
	
	<%-- [Contents] ######################################################### --%>
	<jsp:include page="/layout/footer.jsp" />
	<jsp:include page="/layout/script.jsp" />
</body>
</html>