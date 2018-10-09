<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="myc" uri="http://www.itcast.cn/0108/myc" %>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 使用自定义标签 -->
<myc:print/>

<h4>带有标签主体内容的标签</h4>
<myc:out>
	美美
</myc:out>

<%
	request.setAttribute("num", 10);
%>
<myc:if test="${ requestScope.num eq 10 }">
	小凤
</myc:if>

</body>
</html>



