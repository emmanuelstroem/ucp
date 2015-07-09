 <%@ include file="../Reception/include/common.jsp" %>
 <%@ include file="../Reception/include/database.jsp" %>
<html>
<body>
<%
PatientID1=request.getParameter("PatientID");
if(PatientID1!=null)
PatientID=Integer.parseInt(PatientID1);

firstname=request.getParameter("firstName");
lname=request.getParameter("lname");
sex=request.getParameter("sex");

rs=stmt.executeQuery("Select * from patient where patientID='"+1+"'");
if(rs.next())%>


<%
{
PatientID=rs.getInt(1);
firstName=rs.getString("firstName");
lname=rs.getString("lname");
sex=rs.getString("sex");

}

con.close();
session.setAttribute("update_patient","patient ("+PatientID+") updated successfully");
%>
</body>
</html>