<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
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
    String staffname="", department="", passwd="";
    int staffid=0;
    String DptPharmacy = Department;
    String pwd = password;
    Class.forName("com.mysql.jdbc.Driver");
    
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/cancer", "root","");
    
    Statement st = con.createStatement();
    ResultSet rs,rs1,rs3;
    rs = st.executeQuery("select * from staffs where User_Name='" + username + "' and pass_Word='" + password + "'");
    
    
   
    while (rs.next()){
        
        staffid=rs.getInt(1);
        staffname=rs.getString(2);
        department=rs.getString(5);
        session.setAttribute("User_Name", staffname);
        session.setAttribute("staffid", staffid);
        session.setAttribute("Department", department);
        session.setAttribute("pass_Word", passwd);
    
    
    }
    
    
    //String user_name = (String)session.getAttribute("User_Name");
    
            if (staffname == null) {
                out.println("NOT LOGGED IN NOW!! <a href='index.jsp'>try again</a>");
            }else{
                rs1 = st.executeQuery("select User_Name, Department, staffid from staffs where User_Name='" + username + "' and Department='" + Department + "'");


                if (rs1.next()) {



                    rs3 = st.executeQuery("select * from staffs where User_Name='" + username + "' and Department='" + Department + "'");


                   //session.setAttribute("Department", Department);


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