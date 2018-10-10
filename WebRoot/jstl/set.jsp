<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>set标签</title>
</head>
<body>

<h4>JSTL的方式</h4>
<c:set var="username" value="meimei" scope="page"></c:set>
<c:out value="${ username }"></c:out>

<%
    application.setAttribute("gao", 1);
%>
<c:out value="${ gao }"></c:out>
</body>
</html>


