<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>choose标签</title>
</head>
<body>

<h4>JSTL的方式</h4>
<c:set var="num" value="10" scope="page"></c:set>
<c:choose>
	<c:when test="${ num ge 10 }">
		num>=10
	</c:when>
	<c:when test="${ num lt 10 }">
		num<10
	</c:when>
	<c:otherwise>
		其他
	</c:otherwise>
</c:choose>

</body>
</html>