<%-- 
    Document   : triage
    Created on : Jun 25, 2015, 11:51:14 AM
    Author     : ken
--%>

<%@page import="java.util.Enumeration"%>
<%@page import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String username = (String)session.getAttribute("User_Name");
    String department = (String)session.getAttribute("Department");
    int staffid = (Integer)session.getAttribute("staffid");
%><!DOCTYPE html>
<!doctype html>
<html lang="en"><head>
    <meta charset="utf-8">
    <title>UCI: Triage Details</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="lib/font-awesome/css/font-awesome.css">

    <script src="lib/jquery-1.11.1.min.js" type="text/javascript"></script>

    

    <link rel="stylesheet" type="text/css" href="stylesheets/theme.css">
    <link rel="stylesheet" type="text/css" href="stylesheets/premium.css">

</head>
<body class=" theme-blue">

    <!-- Demo page code -->

    <script type="text/javascript">
        $(function() {
            var match = document.cookie.match(new RegExp('color=([^;]+)'));
            if(match) var color = match[1];
            if(color) {
                $('body').removeClass(function (index, css) {
                    return (css.match (/\btheme-\S+/g) || []).join(' ')
                })
                $('body').addClass('theme-' + color);
            }

            $('[data-popover="true"]').popover({html: true});
            
        });
    </script>
    <style type="text/css">
        #line-chart {
            height:300px;
            width:800px;
            margin: 0px auto;
            margin-top: 1em;
        }
        .navbar-default .navbar-brand, .navbar-default .navbar-brand:hover { 
            color: #fff;
        }
    </style>

    <script type="text/javascript">
        $(function() {
            var uls = $('.sidebar-nav > ul > *').clone();
            uls.addClass('visible-xs');
            $('#main-menu').append(uls.clone());
        });
    </script>

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="../assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
  

  <!--[if lt IE 7 ]> <body class="ie ie6"> <![endif]-->
  <!--[if IE 7 ]> <body class="ie ie7 "> <![endif]-->
  <!--[if IE 8 ]> <body class="ie ie8 "> <![endif]-->
  <!--[if IE 9 ]> <body class="ie ie9 "> <![endif]-->
  <!--[if (gt IE 9)|!(IE)]><!--> 
   
  <!--<![endif]-->

    <div class="navbar navbar-default" role="navigation">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="" href="index.html"><span class="navbar-brand"><span class="fa fa-hospital-o"></span> Uganda Cancer Portal</span></a></div>

        <div class="navbar-collapse collapse" style="height: 1px;">
          <ul id="main-menu" class="nav navbar-nav navbar-right">
            <li class="dropdown hidden-xs">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <span class="glyphicon glyphicon-user padding-right-small" style="position:relative;top: 3px;"></span> <%=username%> (<%=department%>)
                    <i class="fa fa-caret-down"></i>
                </a>

              <ul class="dropdown-menu">
                <li><a href="./">My Account</a></li>
                <li><a tabindex="-1" href="../logout.jsp">Logout</a></li>
              </ul>
            </li>
          </ul>

        </div>
      </div>
    </div>
    

   <div class="sidebar-nav">
    <ul>
    <li><a href="index.jsp" data-target=".dashboard-menu" class="nav-header"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a></li>    
    <li ><a href="index.jsp" class="nav-header"><span class="fa fa-search"></span> Search Patient</a></li>
    <li ><a href="registerPatient.jsp" class="nav-header"><span class="fa fa-pencil"></span> Register Patient</a></li>
    <li ><a href="triage.jsp" class="nav-header"><span class="fa fa-stethoscope"></span> Triage</a></li>
    <li ><a href="treatment.jsp" class="nav-header"><span class="fa fa-medkit"></span> Treatment</a></li>
        <li ><a href="calendar.html" class="nav-header"><span class="fa fa-clock-o"></span> Appointments</a></li>
    <li><a href="help.html" class="nav-header"><i class="fa fa-fw fa-question-circle"></i> Help</a></li>
    

    </div>
    </div>

    <div class="content">
        <div class="header">
            
            <h1 class="page-title">New Patient Triage Registration</h1>
                    

        </div>
        <div class="main-content">
            <%@page import="java.sql.*" %>
            <%
                Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cancer",  "root", "");
    Statement st = con.createStatement();
    ResultSet rs,rs1;
    int pid=0, patientID2=0;
    String pid1;
    rs = st.executeQuery("select patientID,fname, lname from patient");
    
    pid=rs.getInt(1);
    
    
                
                %>

<div class="row">
   
            <div class="col-md-4">
            <br>
            <div id="myTabContent" class="tab-content">
            <div class="tab-pane active in" id="home">
            <form action="dotriage.jsp" method="post">
                <div class="form-group">
            <label>Select Patient</label>
            <select name="DropDownPatient" id="DropDownPatient" class="form-control">
              <option value="-12.0">select patient</option>
              <%
                while(rs.next()){
                    
                    pid=rs.getInt(1);
                    
                    %>
                <option  value="postrate" name="patient"><%= rs.getString(1) %> <%= rs.getString(2) %>  <%= rs.getString(3) %></option>
                
         <%
                }
                %>
              
            </select> 
                </div>
                 
            <div class="form-group">
            <label>Body Temperature (c) </label>
            <input type="number" name="temperature" class="form-control">
            </div>
                
                
              
                <div>
                    <input type="HIDDEN" name="patientID" value="<%=pid%>" class="form-control">
                    <input type="HIDDEN" name="staffid" value="<%=staffid%>" class="form-control">
                </div>
                
                
                
                
            <div class="form-group">
            <label>Weight (kgs)</label>
            <input type="text" name="weight" class="form-control">
            </div>
            <div class="form-group">
            <label>Height (cms)</label>
            <input type="text" name="height" class="form-control">
            </div>
            <div class="form-group">
            <label>BP</label>
            <input type="text" name="bp" placeholder="120/80" class="form-control">
            </div>

        <div class="form-group">
            <label>Pulse</label>
            <input type="text" name="pulse"  class="form-control">
            </div>
<div class="btn-toolbar list-toolbar">
      <button type="submit" class="btn btn-primary"><i class="fa fa-save"></i> Save</button>
      <a href="#myModal" data-toggle="modal" class="btn btn-danger">Delete</a>
    </div>
            </form>
     
      </div>
    
        
     
    </div>

    
  </div>
</div>

<div class="modal small fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h3 id="myModalLabel">Delete Confirmation</h3>
      </div>
      <div class="modal-body">
        
        <p class="error-text"><i class="fa fa-warning modal-icon"></i>Are you sure you want to delete the user?</p>
      </div>
      <div class="modal-footer">
        <button class="btn btn-default" data-dismiss="modal" aria-hidden="true">Cancel</button>
        <button class="btn btn-danger" data-dismiss="modal">Delete</button>
      </div>
    </div>
  </div>
</div>


            <footer>
                <hr>

                <!-- Purchase a site license to remove this link from the footer: http://www.portnine.com/bootstrap-themes -->
                <p class="pull-right">A <a href="http://www.portnine.com/bootstrap-themes" target="_blank">Free Bootstrap Theme</a> by <a href="http://www.portnine.com" target="_blank">Portnine</a></p>
                <p>© 2014 <a href="http://www.portnine.com" target="_blank">Portnine</a></p>
            </footer>
        </div>
    </div>


    <script src="lib/bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript">
        $("[rel=tooltip]").tooltip();
        $(function() {
            $('.demo-cancel-click').click(function(){return false;});
        });
    </script>
    
  
</body></html>
