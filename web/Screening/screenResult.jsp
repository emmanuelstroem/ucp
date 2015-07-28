<%-- 
    Document   : screenResult
    Created on : Jul 3, 2015, 7:41:08 PM
    Author     : cle-13
--%>

<%@page import="java.util.Enumeration"%>
<%@page import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../Reception/include/common.jsp" %>
<%@ include file="../Reception/include/database.jsp" %>

<%
    String username = (String)session.getAttribute("User_Name");
    String department = (String)session.getAttribute("Department");
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Success</title>
    </head>
    <body>
        <h1>Update Success!</h1>
        <%
            String result;    
            String intensity;
            
            result = request.getParameter("fname");
            intensity = request.getParameter("lname");
        
        if(result!=null){
            
            Class.forName("com.mysql.jdbc.Driver");
            
            Statement statement = con.createStatement();

            statement.executeUpdate("insert into screens_result(histology, behavior) values('"+result+"','"+intensity+"')");

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
