
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ include file="include/common.jsp" %>
<%@ include file="include/database.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<script type="text/javascript">
function del()
{
if(confirm("Do You Want to Delete this Patient?"))
{
}
else
{
return false;
}
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title></title>
<link rel="stylesheet" href="images/style.css" type="text/css" charset="utf-8" />
</head>
<body>
<% 
PatientID1=request.getParameter("PatientID");
if(PatientID1!=null)
PatientID=Integer.parseInt(PatientID1);
delete_patient=request.getParameter("delete_patient");

if("yes".equals(delete_patient))
{
PatientID1=request.getParameter("PatientID");
x=stmt1.executeUpdate("Delete from patient where PatientID="+PatientID);
}
%>

    
<h2>VIEW Patients</h2> <a href="registerPatient.jsp"><input type="button" value="Add Patient" color="green"></a>
        
          <table width="736" height="97" border="1">
           <% if(x==1)
	{
	%> <tr bgcolor="#06FF0">
              <th  height="35"  colspan="9"><div align="center">
			  Patient (<%=PatientID%>) deleted successfully
			  </div></th>
            </tr>
			<%}%>
            <tr bgcolor="#06FF0">
              <td><div align="center"><strong>SLNO</strong></div></td>
              <td><div align="center"><strong>FIRST NAME</strong></div></td>
              <td><div align="center"><strong>LAST NAME </strong></div></td>
              <td><div align="center"><strong>BIRTH PLACE </strong></div></td>
              <td><div align="center"><strong>SEX </strong></div></td>
             <td colspan="2"><div align="center"><strong>ACTION</strong></div></td>
            </tr>
			<% int icount=0;
rs=stmt.executeQuery("select * from patient");
while(rs.next())
{ ingredient_slno=rs.getInt("patientID");
 %>
            <tr>
              <td><%=rs.getString("patientID")%></td>
              <td><%=rs.getString("firstName")%></td>
              <td><%=rs.getString("lname")%></td>
              <td><%=rs.getString("BirthPlace")%></td>
              <td><%=rs.getString("sex")%></td>
              <td><a href="edit_ingredient.jsp?PatientID=<%=PatientID%>">Edit</a></div></td>
              <td><div align="center"><a href="view_ingredients.jsp?delete_patient=yes&PatientID=<%=PatientID%>" onclick="return del()">Delete</a></div></td>
            </tr>
<% }  %>			
        </table>
        
          
</body>
</html>

