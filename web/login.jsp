<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UCP</title>
        <link rel="stylesheet" type="text/css" href="scripts/style.css" >
    </head>
    <body>
        
        <p align="center">
<%@ page import ="java.sql.*" %>
<%
    String username = request.getParameter("username");    
    String password = request.getParameter("password"); 
    String Department= request.getParameter("Department");
    String staffid= request.getParameter("staffid");
    String DptPharmacy = Department;
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cancer",  "root", "");
    Statement st = con.createStatement();
    ResultSet rs,rs1,rs3;
    rs = st.executeQuery("select * from staffs where User_Name='" + username + "' and pass_Word='" + password + "'");
   
    session.setAttribute("User_Name", username);
    
    String user_name = (String)session.getAttribute("User_Name");
    
    if (user_name == null) {
        out.println("NOT LOGGED IN NOW!! <a href='index.jsp'>try again</a>");
    }else{
        rs1 = st.executeQuery("select User_Name, Department from staffs where User_Name='" + username + "' and Department='" + Department + "'");
        if (rs1.next()) {
            
            rs3 = st.executeQuery("select staffid from staffs where User_Name='" + username + "' and Department='" + Department + "'");
            session.setAttribute("staffid", staffid);
            
           session.setAttribute("Department", Department);
        //session.setAttribute("Departmet", Department);
        // session.setAttribute("Department", Department);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
    // if ( ((String)pageContext.findAttribute("Department")).equals("Pharmacy") ){
        
        //response.sendRedirect("test.jsp");
           
           
           
           
           
        if(DptPharmacy==Department){
            
            response.sendRedirect(Department);
            
        }else{
            out.println("Department DOESN'T exist..HAHA");
        
        }
        
        
     //}
    }else{
        out.println("Please Select your TRUE Department");
    }
        
    } 
%>
        </p>
        </div>
    </body>
</html>