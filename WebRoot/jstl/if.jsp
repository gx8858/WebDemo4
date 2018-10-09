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
<c:set var="num" value="10" scope="page"></c:set>

<c:if test="${ num eq 10 }" var="i" scope="page">
	num=10
</c:if>

<!-- 使用i的变量 -->
<c:if test="${ i }">
	test=true
</c:if>


<myc:out>
	EL表达式   JSTL
</myc:out>

</body>
</html>