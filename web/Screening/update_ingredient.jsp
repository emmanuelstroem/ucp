<%@ include file="include/common.jsp" %>
<%@ include file="include/database.jsp" %>

<%
PatientID1=request.getParameter("PatientID");
if(PatientID1!=null)
PatientID=Integer.parseInt(PatientID1);

firstname=request.getParameter("firstName");
lname=request.getParameter("lname");
sex=request.getParameter("sex");
Birthplace=request.getParameter("BirthPlace");


pstmt=con.prepareStatement("Update patient set firstName=?,lname=?,sex=?,BirthPlace=? where PatientID="+PatientID);

pstmt.setString(1,firstName);
pstmt.setString(2,lname);
pstmt.setString(3,sex);
pstmt.setString(4,Birthplace);
pstmt.executeUpdate();

con.close();
session.setAttribute("update_patient","patient ("+PatientID+") updated successfully");
%>
<jsp:forward page="edit_patient.jsp">
<jsp:param name="patientID" value="<%=PatientID%>" />
</jsp:forward>
