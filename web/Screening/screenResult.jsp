<%-- 
    Document   : screenResult
    Created on : Jul 3, 2015, 7:41:08 PM
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
            String result;    
            String intensity;
            
            result = request.getParameter("fname");
            intensity = request.getParameter("lname");
        
        if(result!=null){
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/cancer","root", "");

            Statement statement = connection.createStatement();

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
