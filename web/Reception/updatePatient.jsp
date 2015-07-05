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
sex=request.getParameter("sex");
email=request.getParameter("email");
birthplace=request.getParameter("birthplace");
DOB=request.getParameter("DOB");
othername=request.getParameter("othername");
occupation=request.getParameter("occupation");
tribe=request.getParameter("tribe");
district=request.getParameter("district");
region=request.getParameter("region");
contact=request.getParameter("contact");
village=request.getParameter("village");
county=request.getParameter("county");
subcounty=request.getParameter("subcounty");
parish=request.getParameter("parish");

pstmt=con.prepareStatement("Update patient set patientID=?, fname=?,lname=?, sex=?, birthplace=?, DOB=?,  occupation=?, tribe=?, district=?, region=?, contact=?, village=?, county=?, subcounty=?, parish=?, othername=?, email=? where PatientID="+PatientID);


pstmt.setString(1, PatientID1);
pstmt.setString(2,fname);
pstmt.setString(3,lname);
pstmt.setString(4,sex);
pstmt.setString(5,birthplace);
pstmt.setString(6,DOB);
pstmt.setString(7,occupation);
pstmt.setString(8,tribe);
pstmt.setString(9,district);
pstmt.setString(10,region);
pstmt.setString(11,contact);
pstmt.setString(12,village);
pstmt.setString(13,county);
pstmt.setString(14,subcounty);
pstmt.setString(15,parish);
pstmt.setString(16,othername);
pstmt.setString(17,email);

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