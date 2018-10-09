<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<h4>JSTL的方式</h4>
<%
	int a  =10;
	request.setAttribute("num", a);
%>

<c:out value="num"></c:out>
<c:out value="${ num }"></c:out>

<!-- default 默认值  ${ num2 }如果num2没有域属性，输出的是""-->
<c:out value="${ num2 }" default="北京"></c:out>

<c:out value="<a href='http://www.baidu.com'>百度</a>" escapeXml="false"/>


</body>
</html>