<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 引入自己的EL函数 -->
<%@ taglib prefix="myfn" uri="http://www.itcast.cn/0108/myfn" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>自定义EL函数前台显示页面</title>
</head>
<body>

<h4>使用自己编写EL函数</h4>
${ myfn:sayHi("小凤") }


</body>
</html>













