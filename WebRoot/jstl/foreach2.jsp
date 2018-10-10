<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>foreach标签2</title>
</head>
<body>

<h4>JSTL的方式</h4>
<h4>可以获取request域中的list集合</h4>
<c:forEach var="u" items="${ uList }" >
	${ u.username }
	${ u.password }
</c:forEach>


<h4>用户信息列表</h4>
<table border="1" width="60%" cellpadding="10">
	<tr>
		<th>序号</th>
		<th>姓名</th>
		<th>密码</th>
		<th>操作</th>
	</tr>
	<c:forEach var="user" items="${ uList }" varStatus="s">
		<tr align="center">
			<td>${ s.count }</td>
			<td>${ user.username }</td>
			<td>${ user.password }</td>
			<td><a href="${ pageContext.request.contextPath }/deleteUser?username=${user.username}">删除</a></td>
		</tr>
	</c:forEach>
</table>


</body>
</html>









