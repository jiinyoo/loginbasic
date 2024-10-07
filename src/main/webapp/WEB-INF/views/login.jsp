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
	<form method="post" action="loginOk">
<table>
<caption>로그인</caption>
<tr>
	<td>
		아이디
	</td>
	<td>
		<input type="text" name="userid">
	</td>
</tr>
<tr>
	<td>
		비밀번호
	</td>
	<td>
		<input type="password"  name="pwd">
	</td>
		<c:if test="${param.err==1}">
		<tr>
			<td colspan="2">
				<span>아이디 비밀번호가 일치하지 않습니다.</span>
			</td>
		</tr>
		</c:if>
</tr>
<tr>
	<td colspan="2" align="center">
		<input type="submit"  value="로그인">
	</td>
</tr>
</table>
</form>
</body>
</html>