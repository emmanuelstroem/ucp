<%-- 
    Document   : results
    Created on : Jun 24, 2015, 5:34:15 PM
    Author     : ken
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*" %>
<%@include file="../Reception/include/common.jsp" %>
<%@include file="../Reception/include/database.jsp" %>
<%@page import=" java.util.Enumeration;" %>
<%@page import=" java.util.*" %>
<%
    String username = (String)session.getAttribute("User_Name");
    String department = (String)session.getAttribute("Department");
    int staffid = (Integer)session.getAttribute("staffid");
%>
<!doctype html>
<html lang="en"><head>
    <meta charset="utf-8">
    <title>Results</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="../lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="../lib/font-awesome/css/font-awesome.css">

    <script src="lib/jquery-1.11.1.min.js" type="text/javascript"></script>
    <script src="//ajax.googleapis.com/ajax/libs/dojo/1.10.4/dojo/dojo.js" data-dojo-config="async: true"></script>
    <script src="../Reception/lib/dojo.js" type="text/javascript"></script>

    

    <link rel="stylesheet" type="text/css" href="stylesheets/theme.css">
    <link rel="stylesheet" type="text/css" href="stylesheets/premium.css">
    
    <script type="text/javascript">
        require(["dojox/charting/Chart", "dojox/charting/axis2d/Default", "dojox/charting/plot2d/StackedAreas", "dojox/charting/themes/Wetland" , "dojo/ready"],
  function(Chart, Default, StackedAreas, Wetland, ready){
    ready(function(){
      var c = new Chart("chart3d");
      c.addPlot("default", {type: StackedAreas, tension:3})
        .addAxis("x", {fixLower: "major", fixUpper: "major"})
        .addAxis("y", {vertical: true, fixLower: "major", fixUpper: "major", min: 0})
        .setTheme(Wetland)
        .addSeries("Series A", [1, 2, 0.5, 1.5, 1, 2.8, 0.4])
        .addSeries("Series B", [2.6, 1.8, 2, 1, 1.4, 0.7, 2])
        .addSeries("Series C", [6.3, 1.8, 3, 0.5, 4.4, 2.7, 2])
        .render();
    });
});
    </script>

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
          <a class="" href="index.html"><span class="navbar-brand"><span class="fa fa-paper-plane"></span> Uganda Cancer Portal</span></a></div>

        <div class="navbar-collapse collapse" style="height: 1px;">
          <ul id="main-menu" class="nav navbar-nav navbar-right">
            <li class="dropdown hidden-xs">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <span class="glyphicon glyphicon-user padding-right-small" style="position:relative;top: 3px;"></span> <b><%=username%></b> (<%=department%>)
                    <i class="fa fa-caret-down"></i>
                </a>

              <ul class="dropdown-menu">
                <li><a href="./">My Account</a></li>
                <li class="divider"></li>
                <li class="dropdown-header">Admin Panel</li>
                <li><a href="./">Users</a></li>
                <li><a href="./">Security</a></li>
                <li><a tabindex="-1" href="./">Payments</a></li>
                <li class="divider"></li>
                <li><a tabindex="-1" href="sign-in.html">Logout</a></li>
              </ul>
            </li>
          </ul>

        </div>
      </div>
    </div>
    

   <div class="sidebar-nav">
    <ul>
    <li><a href="index.jsp" data-target=".dashboard-menu" class="nav-header"><i class="fa fa-fw fa-dashboard"></i>Dashboard</a></li>    
    <li ><a href="searchStaff.jsp" class="nav-header"><span class="fa fa-search"></span> Staff Members</a></li>
    <li ><a href="reports.jsp" class="nav-header"><span class="fa fa-stethoscope"></span> Reports </a></li>
    <li ><a href="treatment.html" class="nav-header"><span class="fa fa-medkit"></span> Statistics</a></li>
    

    </div>
    </div>

    <div class="content">
        <div class="header">
            
            <h1 class="page-title">Report</h1>
                    <ul class="breadcrumb">
            <li><a href="index.html">Home</a> </li>
            <li class="active">Reports</li>
        </ul>

        </div>
        <div class="main-content">
            
<div class="btn-toolbar list-toolbar">
    <button class="btn btn-default">Export</button>
  <div class="btn-group">
  </div>
</div>
         <table class="table">   
            <%  
            String gender = request.getParameter("gender");    
            String finding = request.getParameter("finding");    
            String nationality = request.getParameter("nationality"); 
            
            Class.forName("com.mysql.jdbc.Driver");
            
            Statement statement = con.createStatement();

            ResultSet resultset = statement.executeQuery("select screens_result.*, patient.*, count(*)  from screens_result INNER JOIN patient ON screens_result.patientID=patient.patientID where patient.sex like '"+gender+"%' and screens_result.finding like '"+finding+"%'");
%>


<table class="table">
  <thead>
    <tr>
        
      <th>Gender</th>
      <th> Nationality</th>
      <th>Finding</th>
      <th>Total</th>
      <th style="width: 3.5em;"></th>
    </tr>
  </thead>
  <tbody>
  <%
            while(resultset.next()){ 
                report=resultset.getInt("count(*)");
        %>
            <tr>
      <td><%= gender%></td>
      <td><%= nationality%></td>
      <td><%= finding %></td>
      <td><%=report%></td>
      <td>
          <a href="user.html"><i class="fa fa-pencil"></i></a>
          <a href="#myModal" role="button" data-toggle="modal"><i class="fa fa-trash-o"></i></a>
      </td>
            </tr>
            

<!--****************************************************************************************************************** -->

<% 
            } 
        %>
        
  
    
  </tbody>
</table

<div id="chart3d" style="width: 500px; height: 500px;"></div>


<div class="modal small fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h3 id="myModalLabel">Delete Confirmation</h3>
        </div>
        <div class="modal-body">
            <p class="error-text"><i class="fa fa-warning modal-icon"></i>Are you sure you want to delete the user?<br>This cannot be undone.</p>
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
                <p class="pull-right" class="fa fa-github"><a href="http://github.com/emmanuelstroem/ucp" target="_blank">Github</a> by <a href="http://ihsu.ac.ug" target="_blank">IHSU</a></p>
                <p>© 2015 <a href="http://www.uci.or.ug/" target="_blank">UCI</a></p>
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