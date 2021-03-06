<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 引入JSTL的标签库 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!-- 引入EL的函数库 -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 操作域对象中的数据 -->
<c:set var="username" value="abcdefg" scope="page"></c:set>

<h4>EL函数来操作page域内容</h4>
${ fn:indexOf(username,"de") }          <!-- 输出： 3 -->    

${ fn:startsWith(username,"f") }        <!-- 输出： false -->

${ fn:toUpperCase(username) }           <!-- 输出： ABCDEFG -->

${ fn:substringAfter(username,"de") }   <!-- 输出： fg -->
${ fn:substringBefore(username,"de") }  <!-- 输出： abc -->

</body>
</html>





