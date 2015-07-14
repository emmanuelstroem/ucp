<%-- 
    Document   : updatePatient
    Created on : Jul 2, 2015, 5:22:10 PM
    Author     : cle-13
--%>

<%@page import="java.util.Enumeration"%>
<%@page import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String username = (String)session.getAttribute("User_Name");
    String department = (String)session.getAttribute("Department");
%>
<%@ include file="include/common.jsp" %>
<%@ include file="include/database.jsp" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Success</title>
    </head>
    <body>
        <h1>Update Success!</h1>
        <%
PatientID1=request.getParameter("PatientID");
if(PatientID1!=null){
PatientID=Integer.parseInt(PatientID1);

fname=request.getParameter("fname");
lname=request.getParameter("lname");
BirthPlace=request.getParameter("birthplace");
occupation=request.getParameter("occupation");
contact=request.getParameter("contact");

pstmt=con.prepareStatement("Update patient set fname=?,lname=?, BirthPlace=?, occupation=?, contact=? where PatientID="+PatientID);


pstmt.setString(1,fname);
pstmt.setString(2,lname);
pstmt.setString(3,BirthPlace);
pstmt.setString(4,occupation);
pstmt.setString(5,contact);

pstmt.executeUpdate();

con.close();
session.setAttribute("update_patient","patient ("+fname+") updated successfully");


}else{
    
out.print("This is BADDDD!!!");
%>

<h2>Error in Updating Patient Details</h2>
<%
}
%>
<jsp:forward page="editPatient.jsp">
<jsp:param name="patientID" value="<%=PatientID%>" />
</jsp:forward>

    </body>
</html>