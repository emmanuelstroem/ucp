<%@ include file="include/common.jsp" %>
<%@ include file="include/database.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Food Online</title>
<link rel="stylesheet" href="images/style.css" type="text/css" charset="utf-8" />
</head>
<body>
    
<% 
PatientID1=request.getParameter("PatientID");
if(PatientID1!=null)
PatientID=Integer.parseInt(PatientID1);

rs=stmt.executeQuery("Select * from patient where PatientID="+PatientID);
if(rs.next())
{
fname=rs.getString("firstName");
lname=rs.getString("lname");
sex=rs.getString("sex");
BirthPlace=rs.getString("BirthPlace");

}

 %>

        <h2>EDIT PATIENT DETAILS </h2>
        <form name="ingredient" id="ingredient" action="update_patient.jsp" method="post" >
          <table width="332" height="252" border="0" align="center" cellpadding="2" cellspacing="2">
            <tr>
              <th height="33" colspan="2"><div align="center">
			  <%
			  update_patient=(String)session.getAttribute("update_patient");
			  session.removeAttribute("update_patient");
			  if(update_patient!=null)out.print(update_patient);
			  %>
			  </div></th>
            </tr>
            <tr>
              <th>First Name: </th>
              <td><input name="fname" type="text" class="text" id="fname" value="<%=fname%>" /></td>
            </tr>
            <tr>
              <th>Last Name: </th>
              <td><input name="lname" type="text" class="text" id="lname" value="<%=lname%>" /></td>
            </tr>
            <tr>
              <th>Sex: </th>
              <td><input name="sex" type="text" class="text" id="sex" value="<%=sex%>" /></td>
            </tr>
            <tr>
              <th>Birth Place</th>
              <td><input name="BirthPlace" type="text" class="text" id="BirthPlace" value="<%=BirthPlace%>" /></td>
            </tr>
            
            
            <tr>
              <td class="submission" colspan="6">
                <input type="hidden" name="PatientID"  value="<%=PatientID%>"/>
                <input name="s" type="submit" class="button" value="UPDATE" />
                
              </td>
            </tr>
            <tr>
              <th class="submission" colspan="2"><div align="center"><a href="view_patient.jsp">View Patient</a> </div></th>
            </tr>
          </table>
        </form>
     
</body>
</html>
