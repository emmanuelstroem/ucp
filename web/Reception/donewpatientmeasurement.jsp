<%-- 
    Document   : donewpatient
    Created on : Jun 22, 2015, 8:29:09 PM
    Author     : ken
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"  %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Registration successful</title>

    <!-- Bootstrap Core CSS -->
    <link href="../scripts/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../scripts/css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../scripts/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../scripts/font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

    <body>

    
        
        <% 
        
        
String patientID=request.getParameter("patientID");                                    
String firstName=request.getParameter("firstName");
String  lname=request.getParameter("lastName");
String  sex=request.getParameter("sex");

String BirthPlace=request.getParameter("BirthPlace");
String  DOB=request.getParameter("DOB");
SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd"); 
java.util.Date dateStr = formatter.parse(DOB);
String occupation=request.getParameter("occupation");
String Tribe=request.getParameter("Tribe");
String  District=request.getParameter("District");
String region=request.getParameter("region");
String Contact=request.getParameter("Contact");
String village=request.getParameter("village");
String  county=request.getParameter("County");
String subCounty=request.getParameter("subcounty");
String parish=request.getParameter("Parish");

             %>
       <%
            String username = request.getParameter("username");    
    String password = request.getParameter("password"); 
    String Department= request.getParameter("Department");
    String DptPharmacy = Department;
    Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cancer", "root", "");
                 Statement st = con.createStatement();
             st=con.createStatement();
            String stmt=("insert into patient(firstName,lname,sex,BirthPlace,DOB,occupation,tribe,district ,region,Contact,county,subCounty,parish) values('"+firstName+"','"+lname+"','"+sex+"','"+BirthPlace+"','"+DOB+"','"+occupation+"','"+Tribe+"','"+District+"' ,'"+region+"','"+Contact+"','"+county+"','"+subCounty+"','"+parish+"')");	
	
	st.executeUpdate(stmt);
        ResultSet resultset = st.executeQuery("select * from patient where dob='"+DOB+"'");
         while(resultset.next()){ 
        %>
        <div class="container" onmouseover="blink">
        <div class="row">
            <div class="col-md-6 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">  Patient below has been added to the database</h3>
                    </div>
                    <div class="panel-body">
                        
                            <fieldset>
                                <div class="form-group">
                                    
                                </div>
                                <div class="form-group">
                                   
                                </div>
                                <div class="checkbox">
                                    <label>
                                      <TABLE BORDER="1">
                                          <TR colspan="4">
                    <TD> ID </TD>
                    <TD> First name </TD>
                    <TD> Last Name </TD>
                    <TD> Sex </TD>
                    <TD> Phone </TD>
                    <TD> Place of Birth </TD>
                    <TD> DoB </TD>
                    <TD> occupation </TD>
                   
                </TR>
                
                <TR colspan="4">
                    <TD> <%= resultset.getString(1) %> </TD>
                    <TD> <%= resultset.getString(2) %> </TD>
                    <TD> <%= resultset.getString(3) %> </TD>
                    <TD> <%= resultset.getString(4) %> </TD>
                    <TD> <%= resultset.getString(5) %> </TD>
                    <TD> <%= resultset.getString(6) %> </TD>
                    <TD> <%= resultset.getString(7) %> </TD>
                    <TD> <%= resultset.getString(8) %> </TD>
                   
                </TR>
            </TABLE>
                                    </label>
                                </div>
                                <!-- Change this to a button or input when using this as a form -->
                                <a href="../Reception/index.jsp" class="btn btn-lg btn-success btn-block">Go Back To dashboard</a>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
        <% 
            } 
        %><%

	

            
           
            
            %>
    </body>
  <script src="../scripts/js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../scripts/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../scripts/js/plugins/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../scripts/js/sb-admin-2.js"></script>

</body>

</html>
