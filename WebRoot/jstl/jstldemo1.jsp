<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 引入JSTL的标签库  （uri中 Alt+"/" 快捷键） -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>快速入门</title>
</head>
<body>

<%
	request.setAttribute("num", 10);
%>

<%-- 访问http://localhost:8080/test/jstl/jstldemo1.jsp --%>

<c:if test="${ num eq 10 }">
	<font>test是true</font>
</c:if>

</body>
</html>