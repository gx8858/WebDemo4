<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>el支持运算</title>
</head>
<body>

<%
	request.setAttribute("n1", 10);
	request.setAttribute("n2", 20);
	request.setAttribute("n3", 30);
	request.setAttribute("n4", 40);
%>
<h4>EL表达式支持运算</h4>
${ n1 + n2 }

<h4>是否相等</h4>
${ n1 == n2 }  ${ n1 eq n2 }

<h4>是否不等</h4>
${ n1 != n2 } ${ n1 ne n2 }

<h4>大于或者小于</h4>
${ n1 > n2 } ${ n1 gt n2 }  ${ n1 < n2 } ${ n1 lt n2 }

<h4>大于等于或者小于等于</h4>
${ n1 >= n2 } ${ n1 ge n2 }  ${ n1 <= n2 } ${ n1 le n2 }

<h4>与或非</h4>
${ n1 > n2 && n3 > n4 } ${ n1>n2 and n3>n4 }
${ n1 > n2 || n3 > n4 } ${ n1>n2 or n3>n4 }
${ !(n1>n2) }	${ not(n1>n2) }

</body>
</html>


