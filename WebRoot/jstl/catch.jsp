<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>catch标签</title>
</head>
<body>

<h4>JSTL的方式</h4>

<%
	try{
	
	}catch(Exception e){
		
	}
%>
<c:catch var="e">
<% 
	int a = 10/0;
%>	
</c:catch>
${ e }            <!-- java.lang.ArithmeticException: / by zero -->
${ e.message }    <!-- / by zero -->


</body>
</html>





