<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/gb3/gb/add" method="get">
		<table border="1" width="500px">
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
				<td>비밀번호</td>
				<td><input type="text" name="password"></td>
			</tr>
			<tr>
				<td colspan="4"><textarea name="content" rows="5" cols="40" style="resize: none; width: 480px;"></textarea></td>
			</tr>
			<tr>
				<td colspan="4"><button>확인</button></td>
			</tr>
		</table>
		<br>
	</form>
	
	<c:forEach items="${gList }" var="vo" varStatus="status">
		<table border="1" width="500px">
			<tr>
				<td>${vo.no }</td>
				<td>${vo.name }</td>
				<td>${vo.date }</td>
				<td><a href="/gb3/gb/deleteForm?no=${vo.no }">삭제</a></td>
			</tr>
			<tr>
				<td colspan="4" style="white-space: pre-line;">${vo.content }</td>
			</tr>
		</table><br>
	</c:forEach>

</body>
</html>