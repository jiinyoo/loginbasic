<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script>

function useridCheck(my) {
	userid=my.value;
	
	var chk=new XMLHttpRequest();
	chk.onload=function() {
		if(chk.responseText==1) {
			document.getElementById("check").innerText="아이디가 존재합니다."
		} else if(chk.responseText==0&&my.value.trim()!=""){
			document.getElementById("check").innerText="사용할 수 있는 아이디입니다."	
		}else if(my.value.trim()==""){
			document.getElementById("check").innerText="아이디를 한글자 이상 입력하세요"	
		}
	}
	chk.open("GET", "/useridcheck?userid="+userid);
	chk.send();

}



</script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post"  action="memberOk " >
<table>
<caption> 회원 가입</caption>
	<tr>
		<td>
			아이디
		</td>
		<td>
			<input type="text"  name="userid"  id="userid"  onblur="useridCheck(this)" required><span id="check"></span>
		</td>
	</tr>
	<tr>
		<td>
			이름
		</td>
		<td>
			<input type="text"  name="name" required>
		</td>
	</tr>
		<tr>
		<td>
			비밀번호
		</td>
		<td>
			<input type="password"  name="pwd" required>
		</td>
	</tr>
		<tr>
		<td>
			이메일
		</td>
		<td>
			<input type="email"  name="email" required>
		</td>
	</tr>	
		<tr>
		<td>
			전화번호
		</td>
		<td>
			<input type="text"  name="phone" required>
		</td>
	</tr>	
	<tr  align="center">
		<td colspan="2" >
			<input type="submit"  value="회원가입">
		</td>
	</tr>
</table>
</form>
</body>
</html>
	
	
	
	

	
	
	
