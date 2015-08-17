 <%-- 
    Document   : results
    Created on : Jun 24, 2015, 5:34:15 PM
    Author     : ken
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
<html lang="en">
  <head><meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  <meta charset="utf-8">
    <title>UCP Search Results</title>
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
<script type="text/javascript" src="http://ajax.googleapis.com/
ajax/libs/jquery/1.5/jquery.min.js"></script>
<script type="text/javascript" src="jquery.form.js"></script>

<!-- ***************************************************** -->
<script type="text/javascript">
$('document').ready(function()
{
$('#form').ajaxForm( {
target: '#preview',
success: function() {
$('#formbox').slideUp('fast');
}
});
});
</script>
<!-- ***************************************************** -->
    <link rel="shortcut icon" href="../assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
  
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title></title>
<link rel="stylesheet" href="images/style.css" type="text/css" charset="utf-8" />

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
    <li><a href="../Doctor/index.jsp" data-target=".dashboard-menu" class="nav-header"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a></li>    
    <li ><a href="index.jsp" class="nav-header"><span class="fa fa-search"></span> Search Patient</a></li>
    <li ><a href="triage.html" class="nav-header"><span class="fa fa-stethoscope"></span> Triage</a></li>
    <li ><a href="treatment.html" class="nav-header"><span class="fa fa-medkit"></span> Treatment</a></li>
        <li ><a href="calendar.html" class="nav-header"><span class="fa fa-clock-o"></span> Appointments</a></li>
    <li><a href="help.html" class="nav-header"><i class="fa fa-fw fa-question-circle"></i> Help</a></li>
    

    </div>
    </div>

    <div class="content">
        <div class="header">
            
            <h1 class="page-title"><a href="index.jsp">Home</a> </h1>
                    <ul class="breadcrumb">
            
           
        </ul>

        </div>
        <div class="main-content">
            
            
<div class="btn-toolbar list-toolbar divalign" >
    <button  class="btn btn-primary" data-toggle="modal" data-target="#editDetails"><i class="fa fa-plus"></i> Edit Patient Data</button> 
    <div class="btn-group">
  </div>
</div>
            <% 
                           
            
PatientID1=request.getParameter("PatientID");
lname=request.getParameter("lname");
if(PatientID1!=null)
PatientID=Integer.parseInt(PatientID1);
delete_patient=request.getParameter("delete_patient");

if("yes".equals(delete_patient))
{
fname=request.getParameter("fname");
x=stmt1.executeUpdate("Delete from patient where PatientID="+PatientID+"'");
}
%>
           
            <%  
           
           // ResultSet resultset = stmt.executeQuery("select * from patient where fname like '"+fname+"%' and lname like '"+lname+"%'");
%>

<% 
    rs2=stmt.executeQuery("select * from patient WHERE patientID='"+PatientID1+"'");
    while(rs2.next()){
    
    pid=rs2.getInt(1);
    fname=rs2.getString(2);
    lname=rs2.getString(3);
    sex=rs2.getString(4);
    BirthPlace=rs2.getString(5);
    DOB=rs2.getString(6);
    occupation=rs2.getString(7);
    contact=rs2.getString(11);

    session.setAttribute("PatientID", pid);
    session.setAttribute("fname", fname);
    session.setAttribute("lname", lname);
    session.setAttribute("sex", sex);
    session.setAttribute("DOB", DOB);


}%>
<table class="table">
     <thead>
         
         <tr>Patient ID:    <b> <%=pid%></b></tr><br/>
         <tr>First Name:    <b><%=fname%></b></tr><br/>
         <tr>Last Name:     <b><%=lname%></b></tr><br/>
         <tr>Sex:           <b><%=sex%></b></tr><br/>
         <tr>Date of Birth: <b><%=DOB%></b></tr><br/> <br />
        
     
     <th>Date </th>
     <th> Temp(C) </th>
     <th> Weight(Kg) </th>
     <th> Height (cm)</th>
     <th> B/P </th>
     <th> Pulse </th>

       
      <th style="width: 3.5em;"></th>
   
  </thead>
  <tbody>   
        <% int icount=0;
               rs=stmt.executeQuery("select * from triage INNER JOIN patient ON triage.patientID=patient.patientID AND triage.patientID='"+PatientID+"';");
               
               
               
while(rs.next())
{ 
               triageid=rs.getInt("triageid");
               temperature=rs.getInt("temperature");
               weight=rs.getInt("weight");
               height=rs.getInt("height");
               bp=rs.getString("bp");
               pulse=rs.getInt("pulse");
               date1=rs.getDate("date");
               session.setAttribute("triageidtriageid",triageid);
               session.setAttribute(" temperature", temperature);
               session.setAttribute(" weight", weight);
               session.setAttribute("height",height);
               session.setAttribute("bp",bp);
               session.setAttribute("pulse", pulse);
               session.setAttribute("date1",date1);
              
%>
              
              <td><%=date1%></td>
              <td><%=temperature%></td>
              <td><%=weight%></td>
              <td><%=height%></td>
              <td><%= bp%></td>
               <td><%=pulse%></td>
              
           


    </tr>
<% }  %>

    
    </tbody>
    
</table>
    
<div align="left">  <button type="button"   class="btn btn-info brand" data-toggle="modal" data-target="#triage">Add Triage</button> </div>
  

<!------------------------------------------------------------------------------------------------------------------------------------- -->

<div class="modal small fade" id="triage" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
        <h4 class="alert" align="center">Triage Form</h4>
        
        <div class="modal-body">
            <div id="myTabContent" class="tab-content">
        <div class="tab-pane active in" id="home">
            <form action="dotriage.jsp" method="post" name="prescription" >
                <h3>Patient ID: <b><%=pid%></b></h3>
                <h3>Name: <b><%= session.getAttribute("fname")%> <%= session.getAttribute("lname")%></b></h3>
            <input type="hidden" name="PatientID" value="<%=pid%>" >
            <input type="hidden" name="staffid" value="<%=staffid%>" >
        <div class="form-group">
            <label>Temp (c):</label><input type="number" name="temperature" class="form-control">
        </div>
        <div class="form-group">
            <label>Weight (kg): </label><input type="number" name="weight" class="form-control">
            
        </div>
        <div class="form-group">
            <label>Height(cm): </label><input type="number" name="height" class="form-control">
            
        </div>
        <div class="form-group">
            <label>Blood Pressure (d/v): </label> <input type="text" name="bp" class="form-control">
        </div>
        <div class="form-group">
            <label>Pulse: </label> <input type="number" name="pulse" class="form-control">
        </div>
         
          <div class="btn-toolbar list-toolbar">
      
      <a href="#myModal" data-dismiss="modal" class="btn btn-danger">Cancel</a>
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
        
        
        
        
        
        
<div class="modal small fade" id="editDetails" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
        <h4 class="alert" align="center"><%=fname%>'s Details</h4>
        
        <div class="modal-body">
            <div id="myTabContent" class="tab-content">
        <div class="tab-pane active in" id="home">
            <form action="updatePatient.jsp" method="post" name="prescription" >
                <h3>Patient ID: <b><%=pid%></b></h3>
                
            <input type="hidden" name="PatientID" value="<%=pid%>" >
            <input type="hidden" name="staffid" value="<%=staffid%>" >
            
        <div class="form-group">
            <label>First Name:</label><input type="text" name="fname" value="<%=fname%>" class="form-control">
        </div>
        <div class="form-group">
            <label>Last Name: </label><input type="text" name="lname" value="<%=lname%>" class="form-control">
            
        </div>
        <div class="form-group">
            <label>Birth Place: </label><input type="text" name="birthplace" value="<%=BirthPlace%>" class="form-control">
            
        </div>
        <div class="form-group">
            <label>Occupation: </label> <input type="text" name="occupation" value="<%=occupation%>" class="form-control">
        </div>
        <div class="form-group">
            <label>Contact: </label> <input type="number" name="contact" value="<%=contact%>" class="form-control">
        </div>
         
          <div class="btn-toolbar list-toolbar">
      
      <a href="#myModal" data-dismiss="modal" class="btn btn-danger">Cancel</a>
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
            
           
        </div>

<!--************************************************************************************************************************************* -->
<!------------------------------------------------------------------------------------------------------------------------------------- -->



        </div>
        
        
        <!-- screening ***************************************************** -->
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
    
  
</body>

</html>
