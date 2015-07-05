<%@ include file="include/common.jsp" %>
<%@ include file="include/database.jsp" %>

<%
fname=request.getParameter("fname");
lname=request.getParameter("lname");
sex=request.getParameter("sex");
birthplace=request.getParameter("birthplace");

pstmt=con.prepareStatement("Insert into patient(fname,lname,sex,birthplace) values(?,?,?,?");
pstmt.setString(1,fname);
pstmt.setString(2,lname);
pstmt.setString(3,sex);
pstmt.setString(4,birthplace);
pstmt.executeUpdate();

con.close();
session.setAttribute("fname","lname ("+lname+") added successfully");
response.sendRedirect("add_ingredient.jsp");

%>