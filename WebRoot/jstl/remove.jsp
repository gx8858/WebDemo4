<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>remove标签</title>
</head>
<body>

<h4>JSTL的方式</h4>

<!-- 先运行set.jsp，把application域中赋上值，然后运行remove.jsp,你会发现输出没值 -->
<c:remove var="gao" scope="application" />
<c:out value="${ gao }" default="没值"></c:out>

</body>
</html>