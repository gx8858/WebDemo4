<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<h4>传统方式</h4>
<%= request.getParameter("username") %>

<h4>使用EL表达式内置对象获取请求参数</h4>
${ param.username }
${ paramValues.username[0] }


<h4>使用EL表达式的内置对象获取请求头的信息</h4>
${ header.referer }
${ headerValues.referer[0] }
${ header["user-agent"] }

<h4>获取全局初始化参数的值</h4>
${ initParam.encoding }


<h4>使用传统方式获取cookie中的值</h4>
<%
	Cookie [] cookies = request.getCookies();
	for(Cookie c : cookies){
		if(c.getName().equals("last")){
			String value = c.getValue();
%>			
		<font color="blue"><%= value %></font>
<% 		
		}	
	}
%>

<h4>使用EL表达式来获取内容</h4>
${ cookie.last.name }  -- ${ cookie.last.value }
<font color="red">${ cookie.last.value }</font>

<form action="">
	<input type="text" name="username" value="${ cookie.last.value }" />
</form>


<h4>EL表达式中的pageContext对象</h4>
${ pageContext.request.contextPath }
${ pageContext.request.remoteAddr }

<form action="${ pageContext.request.contextPath }/xxx" method="post">
	<input type="text" name="username"  />
</form>

</body>
</html>















