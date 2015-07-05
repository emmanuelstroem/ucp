<%-- 
    Document   : dosearch
    Created on : Jun 23, 2015, 3:31:09 PM
    Author     : ken
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>search Patient</title>
    </head>
    
        <%
        String search=request.getParameter("searchpatient"); 
        
    Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cancer", "root", "");
                 Statement st = con.createStatement();
             st=con.createStatement();
            ResultSet rs,rs1;
    rs = st.executeQuery("select * from patient where patientID='" + search + "' ");
   
         while (rs.next()) {%>
    <body>
        
        <table align="center" border="1">

  <tr>
    <td>Dealer Id</td>
    <td>Dealer Name</td>
    <td>Door no</td>
    <td>Street</td>
    <td>City</td>
    <td>District</td>
    <td>State</td>
    <td>Mobile</td>
    <td>Contact Person</td>
    <td>Phone No</td>

  </tr>
  
  
  <tr>
   <td><%=rs.getString(1)%></td>
    <td ><%=rs.getString(2) %></td>
    <td><%=rs.getString(3) %></td>
    <td><%=rs.getString(4) %></td>
    <td><%= rs.getString(5) %></td>
    <td><%= rs.getString(6)%></td>
    <td><%= rs.getString(7)%></td>
    <td ><%=rs.getString(8)%></td>
    <td><%=rs.getString(9) %></td>
    <td><%=rs.getString(10) %></td>

  </tr>
        
        </table>  
        
 <%}%>
        
    </body>
</html>
