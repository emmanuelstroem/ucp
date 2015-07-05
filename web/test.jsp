<%-- 
    Document   : test
    Created on : Jun 15, 2015, 12:22:37 PM
    Author     : AUMA
--%>

<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>


<%
    if ((session.getAttribute("User_Name") == null) || (session.getAttribute("User_Name") == "")) {
%>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>
<%} else {
%>
Welcome <%=session.getAttribute("User_Name")%> from <%=session.getAttribute("Department")%>
<a href='logout.jsp'>Log out</a>
<%
    
    }
%>
 
<!--
<%--
<html>
<head>
<title>Welcome to Test</title>
</head>
<body>
    
    <a href="logout.jsp"><input type="button" name="logout" value="Logout"></a>
 
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/cancer"
     user="root"  password=""/>
 
<sql:query dataSource="${snapshot}" var="result">
SELECT * from staffs;
</sql:query>
 
<table border="1" width="100%">
<tr>
   <th>Staff ID:</th>
   <th>First Name</th>
   <th>Last Name</th>
   <th>Department</th>
   <th>Username</th>
   <th>Password</th>
</tr>

<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.staffid}"/></td>
   <td><c:out value="${row.first_name}"/></td>
   <td><c:out value="${row.last_name}"/></td>
   <td><c:out value="${row.Department}"/></td>
   <td><c:out value="${row.User_Name}"/></td>
   <td><c:out value="${row.pass_Word}"/></td>
   
</tr>
</c:forEach>
</table>
 
</body>
</html>
--%>
-->