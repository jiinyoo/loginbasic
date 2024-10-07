<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${userid==null}">
		<a href="login">로그인</a> | <a href="/member"> 회원가입</a>
	</c:if>
	<c:if test="${userid!=null}">
		${userid }님 | <a href="logout">로그아웃</a>
	</c:if>
</body>
</html>