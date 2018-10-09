<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>EL获取常用的WEB对象</title>
</head>
<body>

<%--
	1.pageScope				获取page域对象的值
	2.requestScope			获取request域对象的值
	3.sessionScope			获取session域对象的值
	4.applicationScope		获取application域对象的值
	
	* 例子：向某个域中来存入值	request.setAttribute("xx",yy)
	* 取值：${xx}	正规写法：${requestScope.xx}
	
	5.param			获取表单提交过来的参数。（相当于 request.getParameter()）
	6.paramValues	获取表单提交过来的参数。（相当于 Map<String,String[]> map = request.getParameterMap()）
	7.header		获取请求头信息
	8.headerValues	获取请求头信息
	9.initParam		获取全局的初始化参数
	
	10.cookie		获取cookie对象的引用，可以使用cookie对象的引用获取cookie的名称和cookie的值。
		* 前提条件：是在Servlet程序中创建一个Cookie对象Cookie cookie = new Cookie("last","2015-01-27");
		* ${cookie.last }	-- 获取cookie的名称为last的对象
		* ${cookie.last.name} -- 获取cookie对象的名称就是last
		* ${cookie.last.value} -- 获取cookie对象的值就是2015-01-27
	11.pageContext	
		* 获取项目的虚拟路径（项目名称）
		* ${ pageContext.request.contextPath }	获取项目的名称
 --%>

<h4>传统方式</h4>
<%= request.getParameter("username") %>

<h4>使用EL表达式内置对象获取请求参数</h4>
${ param.username }
${ paramValues.username[0] }


<h4>使用EL表达式的内置对象获取请求头的信息</h4>
${ header.referer }      <%-- http://localhost:8080/test/jsp/eldemo2.jsp --%>
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
${ pageContext.request.contextPath }  <%-- 获取项目的虚拟路径（项目名称） --%>
${ pageContext.request.remoteAddr }

<form action="${ pageContext.request.contextPath }/xxx" method="post">
	<input type="text" name="username"  />
</form>
 
</body>
</html>















