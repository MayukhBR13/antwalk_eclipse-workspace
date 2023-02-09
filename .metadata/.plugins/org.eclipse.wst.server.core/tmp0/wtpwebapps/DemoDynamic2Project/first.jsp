<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  errorPage="error.jsp"%>
    
<!--  %@ include file="index.html" %-->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!--%@ taglib uri="loc of lib,out,h" prefix="p" %>
<p.out><p.h>-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="green">
<!-- set out remove if :test condition:true 
	switch-> choose when otherwise
-->
Test JSP Page
<c:set var="i" value="25"></c:set>
<h2>value: <c:out value="${i}"></c:out></h2>




<h2>value: <c:out value="${i}"></c:out></h2>

<c:if test="${i>20}">
<h3><c:out value="${i}"></c:out> is greater than 20</h3>
</c:if>
	
<c:choose>
<c:when test="${i<100}">
	<c:out value="${i}"></c:out> is less than 100
</c:when>
<c:when test="${i>100}">
	<c:out value="${i}"></c:out> is greater than 100
</c:when>
<c:otherwise>
	Default case
</c:otherwise>
</c:choose><br>

<c:forEach var="j" begin="1" end="10">
	VAlue of j is <c:out value="${j}"></c:out><br>
</c:forEach>


<%--<c:url var="newurl" value="https://www.google.com/search">
<c:param name="q" value="jstl"></c:param>
</c:url>
//<c:redirect url="${newurl}">
//</c:redirect--%>
-->
<c:remove var="i"></c:remove>



-----------------------------------------------------------------------




<c:set var="name" value="mayukh"></c:set>
<c:out value="${name}"></c:out>
<br>
Length of string
<c:out value="${fn:length(name) }"></c:out>
<c:out value="${fn:toUpperCase(name) }"></c:out>




--------------------------------------------------------------



<%-- 
<sql:setDataSource driver="" url="" password="Oracle_1" var="" var="ds"></sql:setDataSource>
<sql:query dataSource="${ds}" var="rs"> select * from student;</sql:query>

<c:forEach items="${rs.rows}" var="row">
<c:out value="row.id"></c:out>
<c:out value="row.name"></c:out>
</c:forEach>
--%>






<!--  assignment 8/2/23 -->

<table border=3>
<tr>
<th>Id</th>
<th>Name</th>
</tr>

<sql:setDataSource driver="oracle.jdbc.driver.OracleDriver" url="jdbc:oracle:thin:@localhost:1521:orcl" user="system" password="Oracle_1" var="ds"></sql:setDataSource>
<sql:query dataSource="${ds}" var="rs"> select * from employee</sql:query>

<c:forEach items="${rs.rows}" var="row">
<tr>

<td><c:out value="${row.empid}"></c:out></td>
<td><c:out value="${row.firstname}"></c:out></td>
<br>

</tr>
</c:forEach>


</table>


































</body>
</html>