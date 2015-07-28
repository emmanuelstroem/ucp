<%-- 
    Document   : doctorSearch
    Created on : Jun 24, 2015, 1:06:32 PM
    Author     : ken
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../Reception/include/common.jsp" %>
<%@ include file="../Reception/include/database.jsp" %>
<%@page import="java.util.Enumeration"%>
<%@page import="java.util.*" %>
<%
    String username = (String)session.getAttribute("User_Name");
    String department = (String)session.getAttribute("Department");
%>

<!doctype html>
<html lang="en"><head>
    <meta charset="utf-8">
    <title>Administrator Dashboard</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="lib/font-awesome/css/font-awesome.css">

    <script src="lib/jquery-1.11.1.min.js" type="text/javascript"></script>

        <script src="lib/jQuery-Knob/js/jquery.knob.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function() {
            $(".knob").knob();
        });
    </script>


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
        #inner {
    width: 50%;
    margin: 0 auto;
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
          <a class="" href="index.jsp"><span class="navbar-brand"><span class="fa fa-hospital-o"></span> Uganda Cancer Portal</span></a></div>

        <div class="navbar-collapse collapse" style="height: 1px;">
          <ul id="main-menu" class="nav navbar-nav navbar-right">
            <li class="dropdown hidden-xs">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <span class="glyphicon glyphicon-user padding-right-small" style="position:relative;top: 3px;"></span><%=username%> (<%=department%>)
                    <i class="fa fa-caret-down"></i>
                </a>

              <ul class="dropdown-menu">                
                
                <li><a tabindex="-1" href="../logout.jsp">Logout</a></li>
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

    <div class="content">
        <div class="header">
        

            <h1 class="page-title">Admin's Dashboard</h1>
                    <ul class="breadcrumb">
            <li><a href="index.jsp">Home</a> </li>
            <li class="active">Dashboard</li>
        </ul>
              

        </div>
         <div class="main-content">
            
            <div class="row" style="text-align: center;">
                    <div class="pull-left unstyled col-sm-4 col-md-4">
                        <p><button class="btn btn-default" data-toggle="modal" data-target="#register" style="width: 150px;">Generate Report</button></p>
                        <p><a href="searchPatient.jsp" class="btn btn-default" style="width: 150px;">Search Patients</a></p>
                        
                    </div>
                </div>
            
            
            
            
            <div class="modal small fade" id="register" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                  <div class="modal-content">
                      <h4 class="alert" align="center">Select Criteria/h4>

                    <div class="modal-body">
                     <div id="myTabContent" class="tab-content">
                      <div class="tab-pane active in" id="home">
                          <form action="doregisterPatient.jsp" method="post" name="registration" >
                          
                        <div class="form-group">
                            <label>First Name:</label>
                        <input type="text" name="fname" class="form-control">
                        </div>
                        <div class="form-group">
                        <label>Last Name</label>
                        <input type="text" name="lname" class="form-control">
                        </div>
                        <div class="form-group">
                        <label>Other name</label>
                        <input type="text" name="othername" class="form-control">
                        </div>
                        <div class="form-group">
                        <label>Email</label>
                        <input type="email" name="email" class="form-control">
                        </div>
                          <div class="form-group">
                            <label>Sex:</label><br />
                            <input type="radio" name="sex" value="Male"> Male<br>
                            <input type="radio" name="sex" value="Female"> Female
                            </div>
                            <div class="form-group">            
                        <label>Birth Place:</label>
                        <input type="text" name="birthplace" class="form-control" data-provide="dob">
                        </div>
                          <div>
                            <label>Date Of Bith:</label>
                            
                        <input type="text" name="DOB" id="datepicker" class="form-control dob">
                        </div>
                          <div>
                          <label>Occupation:</label>
                        <input type="text" name="occupation" class="form-control">
                        </div>
                          <div>
                        <label>Tribe:</label>
                        <input type="text" name="tribe" class="form-control">
                        </div>
                        <div>
                        <label>Nationality:</label><br />
                        <select name="NationalityBox" id="NationalityBox" onchange="getNationality()">

                            <%
                                rs2=stmt.executeQuery("select * from countries");
                                
                                    while(rs2.next()){

                                    nationality=rs2.getString(3);
                            %>
                             <option type="hidden" name="nationality" class="form-control"><%=nationality%></option>
                        
                             <%
                                    }
                             %>
                        </select>
                        </div>
                        <input type="text" name="nationality" id="nationality" class="form-control">
                         <div>
                        <label>District:</label>
                        <input type="text" name="district" class="form-control">
                        </div>
                          <div>
                        <label>Region:</label>
                        <input type="text" name="region" class="form-control">
                        </div>
                            <div>
                            <label>Contact:</label>
                        <input type="text" name="contact" class="form-control">
                        </div>
                            <div>
                        <label>Village:</label>
                        <input type="text" name="village" class="form-control">
                        </div>
                            <div>
                        <label>County:</label>
                        <input type="text" name="county" class="form-control">
                        </div>
                            <div>
                        <label>Sub-County:</label>
                        <input type="text" name="subcounty" class="form-control">
                        </div>
                            <div>
                        <label>Parish:</label>
                        <input type="text" name="parish" class="form-control">
                        </div>
                        <div>
                        <br />
                        </div>
                        <br />

                        <div class="btn-toolbar list-toolbar">

                            <a href="#register" data-dismiss="modal" class="btn btn-danger">Cancel</a>
                            <button type="submit" class="btn btn-save"><i class="fa fa-save"></i> Save</button>
                        </div>
                      </form>
                    </div>

                    <div class="tab-pane fade" id="profile">

                    </div>
                   </div>
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
