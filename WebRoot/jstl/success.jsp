<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>被import的页面</title>
</head>
<body>

<h4>JSTL的方式</h4>
<h4>success.jsp -- 我是被包含的页面</h4>

<%= request.getParameter("username") %>

<h4>使用EL表达式</h4>
${ param.username }

</body>
</html>


