<%-- 
    Document   : editPaitent
    Created on : Jul 2, 2015, 5:00:43 PM
    Author     : cle-13
--%>

<%@page import="java.util.Enumeration"%>
<%@page import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String username = (String)session.getAttribute("User_Name");
    String department = (String)session.getAttribute("Department");
%>

<%@ include file="include/common.jsp" %>
<%@ include file="include/database.jsp" %>

<!DOCTYPE html>
<html lang="en"><head>
    <meta charset="utf-8">
    <title>UCI: Edit Patient Details</title>
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
          <a class="" href="index.jsp"><span class="navbar-brand"><span class="fa fa-hospital-o"></span> Uganda Cancer Portal</span></a></div>

        <div class="navbar-collapse collapse" style="height: 1px;">
          <ul id="main-menu" class="nav navbar-nav navbar-right">
            <li class="dropdown hidden-xs">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <span class="glyphicon glyphicon-user padding-right-small" style="position:relative;top: 3px;"></span><b><%=username%></b> (<%=department%>)
                    <i class="fa fa-caret-down"></i>
                </a>

              <ul class="dropdown-menu">
                <li><a href="user.html">My Account</a></li>
                <li class="divider"></li>
                <li><a tabindex="-1" href="../logout.jsp">Logout</a></li>
              </ul>
            </li>
          </ul>

        </div>
      </div>
    </div>
    

   <div class="sidebar-nav">
    <ul>
    <li><a href="index.html" data-target=".dashboard-menu" class="nav-header"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a></li>    
    <li ><a href="searchPatient.jsp" class="nav-header"><span class="fa fa-search"></span> Search Patient</a></li>
    <li ><a href="registerPatient.jsp" class="nav-header"><span class="fa fa-pencil"></span> Register Patient</a></li>
    <li ><a href="triage.jsp" class="nav-header"><span class="fa fa-stethoscope"></span> Triage</a></li>
    <li ><a href="treatment.jsp" class="nav-header"><span class="fa fa-medkit"></span> Treatment</a></li>
        <li ><a href="calendar.html" class="nav-header"><span class="fa fa-clock-o"></span> Appointments</a></li>
    <li><a href="help.html" class="nav-header"><i class="fa fa-fw fa-question-circle"></i> Help</a></li>
    

    </div>
    </div>

    <div class="content">
        <div class="header">
            
            <h1 class="page-title">Edit Patient Details</h1>
                    <ul class="breadcrumb">
            <li><a href="index.jsp">Home</a> </li>
            <li><a href="searchPatient.jsp">Search</a> </li>
            <li class="active">Edit Patient</li>
        </ul>

        </div>
        <div class="main-content">
            

<!-- Fetch Patient Details -->


<% 
PatientID1=request.getParameter("PatientID");
if(PatientID1!=null)
PatientID=Integer.parseInt(PatientID1);

rs=stmt.executeQuery("Select * from patient where PatientID="+PatientID);
if(rs.next())
{
fname=rs.getString("fname");
lname=rs.getString("lname");
othername=rs.getString("othername");
email=rs.getString("email");
BirthPlace=rs.getString("BirthPlace");
sex=rs.getString("sex");
DOB=rs.getString("DOB");
occupation=rs.getString("occupation");
tribe=rs.getString("tribe");
district=rs.getString("district");
region=rs.getString("region");
contact=rs.getString("contact");
village=rs.getString("village");
county=rs.getString("county");
subcounty=rs.getString("subcounty");
parish=rs.getString("parish");

}

 %>


            
<ul class="nav nav-tabs">
  <li class="active"><a href="#home" data-toggle="tab">Edit Patient Details</a></li>
  
</ul>

<div class="row">
  <div class="col-md-4">
    <br>
    <div id="myTabContent" class="tab-content">
      <div class="tab-pane active in" id="home">
          <form action="updatePatient.jsp?PatientID=<%=PatientID1%>" method="post">
                        <%
			  update_patient=(String)session.getAttribute("update_patient");
			  session.removeAttribute("update_patient");
			  if(update_patient!=null)out.print(update_patient);
			  %>
                          
        <div class="form-group">
            <label>First Name:</label>
        <input type="text" name="fname" class="form-control" id="fname" value="<%=fname%>">
        </div>
        <div class="form-group">
        <label>Last Name</label>
        <input type="text" name="lname" class="form-control" id="lname" value="<%=lname%>">
        </div>
        <div class="form-group">
        <label>Other name</label>
        <input type="text" name="othername" class="form-control" id="othername" value="<%=othername%>" >
        </div>
        <div class="form-group">
        <label>Email</label>
        <input type="email" name="email" class="form-control" id="email" value="<%=email%>">
        </div>
          <div class="form-group">
            <label>Sex:</label><br />
            <input type="radio" name="sex" value="male"> Male<br />
            <input type="radio" name="sex" value="female"> Female
            </div>
            <div class="form-group">            
        <label>Birth Place:</label>
        <input type="text" name="birthplace" class="form-control" id="birthplace" value="<%=BirthPlace%>">
        </div>
          <div>
            <label>Date Of Bith:</label>
            <input type="date" name="DOB" class="form-control" id="DOB" value="<%=DOB%>">
        </div>
          <div>
          <label>Occupation:</label>
          <input type="text" name="occupation" class="form-control" id="occupation" value="<%=occupation%>">
        </div>
          <div>
        <label>Tribe:</label>
        <input type="text" name="tribe" class="form-control" id="tribe" value="<%=tribe%>">
        </div>
          <div>
        <label>District:</label>
        <input type="text" name="district" class="form-control" id="district" value="<%=district%>">
        </div>
          <div>
        <label>Region:</label>
        <input type="text" name="region" class="form-control" id="region" value="<%=region%>">
        </div>
         <div>
            <label>Contact:</label>
            <input type="text" name="contact" class="form-control" id="contact" value="<%=contact%>">
        </div>
            <div>
        <label>Village:</label>
        <input type="text" name="village" class="form-control" id="Village" value="<%=village%>">
        </div>
            <div>
        <label>County:</label>
        <input type="text" name="county" class="form-control" id="county" value="<%=county%>">
        </div>
            <div>
        <label>Sub-county:</label>
        <input type="text" name="subcounty" class="form-control" id="subcounty" value="<%=subcounty%>">
        </div>
            <div>
        <label>Parish:</label>
        <input type="text" name="parish" class="form-control" id="parish" value="<%=parish%>">
        </div>
        
          <div class="btn-toolbar list-toolbar">
      <button type="submit" class="btn btn-primary"><i class="fa fa-save"></i> Save</button>
      <a href="#myModal" data-toggle="modal" class="btn btn-danger">Delete</a>
    </div>
        </form>
      </div>

      <div class="tab-pane fade" id="profile">

       

    
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
                <p class="pull-right" class="fa fa-github"><a href="http://github.com/oneklaw/App" target="_blank">Github</a> by <a href="http://ihsu.ac.ug" target="_blank">IHSU</a></p>
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
