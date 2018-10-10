<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>foreach标签</title>
</head>
<body>

<h4>JSTL的方式</h4>
<%
	List<String> list = new ArrayList<String>();
	list.add("美美");
	list.add("小凤");
	list.add("芙蓉");
	request.setAttribute("list", list);
%>
<h4>遍历list集合和数组方式是一样的</h4>
<!--  for(String str : list){ } -->
<c:forEach var="str" items="${ list }">
	${ str }
</c:forEach>

<%
	Map<String,String> map = new HashMap<String,String>();
	map.put("aaa", "美美");
	map.put("bbb", "小凤");
	map.put("ccc", "芙蓉");
	request.setAttribute("map", map);
%>
<c:forEach var="entry" items="${ map }">
	${ entry.key } -- ${ entry.value }
</c:forEach>


<h4>从1循环10</h4>
<c:forEach var="i" begin="1" end="10" step="1">
	${ i }
</c:forEach>

<h1>从1加到10的和</h1>
<c:set var="sum" value="0" scope="page"></c:set>
<c:forEach var="i" begin="1" end="10" step="1">
	<c:set var="sum" value="${ sum + i }" scope="page"></c:set>
</c:forEach>
${ sum }


<h4>遍历10到100的偶数，每到第3个数，显示红色</h4>
<c:forEach var="i" begin="10" end="100" step="2" varStatus="status">
	<c:choose>
		<c:when test="${ status.first }">
			<font color="green">${ i }</font>
		</c:when>
		<c:when test="${ status.count % 3 eq 0 }">
			<font color="red">${ i }</font>
		</c:when>
		<c:otherwise>
			${ i }
		</c:otherwise>
	</c:choose>
</c:forEach>

</body>
</html>







