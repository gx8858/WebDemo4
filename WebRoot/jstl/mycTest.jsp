<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="myc" uri="http://www.itcast.cn/0108/myc"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>测试自定义标签</title>
</head>
<body>

<!-- 自定义标签（没有标签主体） -->
<myc:print />    <!-- 输出：hello -->
<myc:print/>

<!-- 自定义标签（带有标签主体） -->
<myc:out>
	EL表达式   JSTL
</myc:out>

<!-- 自定义标签（带有标签主体和属性） -->
<%
	request.setAttribute("num", 10);
%>

<myc:if test="${ requestScope.num eq 10 }">
	小凤
</myc:if>
	
</body>
</html>