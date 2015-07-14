 <%-- 
    Document   : results
    Created on : Jun 24, 2015, 5:34:15 PM
    Author     : ken
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ include file="../Reception/include/common.jsp" %>
<%@ include file="../Reception/include/database.jsp" %>
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
    <button  class="btn btn-primary" ><i class="fa fa-plus"></i> Showing Search Result</button> 
    <div class="btn-group">
  </div>
</div>
            <% 
            
PatientID1=request.getParameter("PatientID");
fname=request.getParameter("fname");
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

<% if(x==1)
	{
	%>
        
        <%}%>
<table class="table">
     <thead>
     <tr>
     <th>Patient ID </th>
     <th>First Name</th>
     <th>Last Name</th>
     <th>Birth Place</th>
     <th>Sex</th>
     <th> Temp(C) </th>
     <th> WEIGHT(KG) </th>
     <th> HEIGHT </th>
     <th> BP </th>
     <th> PULSE </th>
     <th> RECORD DATE </th>
     <th colspan="4"><button value=<b><font color="green"> SELECT ACTION BELOW  </font>   </b> </button></th>

       
      <th style="width: 3.5em;"></th>
    </tr>
  </thead>
  <tbody>   
        <% int icount=0;
               rs=stmt.executeQuery("select * from triage INNER JOIN patient ON triage.patientID=patient.patientID AND triage.patientID='"+PatientID+"';");
               
               
               
while(rs.next())
{ %>   <%
               triageid=rs.getInt("triageid");
               temperature=rs.getInt("temperature");
               weight=rs.getInt("weight");
               height=rs.getInt("height");
               bp=rs.getString("bp");
               pulse=rs.getInt("pulse");
               date1=rs.getTimestamp("date");
               session.setAttribute("triageidtriageid",triageid);
               session.setAttribute(" temperature", temperature);
               session.setAttribute(" weight", weight);
               session.setAttribute("height",height);
               session.setAttribute("bp",bp);
               session.setAttribute("pulse", pulse);
               session.setAttribute("date1",date1);
              
%>

              <td><%=PatientID1%></td>
              <td><%=(String)session.getAttribute("fname")%></td>
              <td><%=(String)session.getAttribute("lname")%></td>
              <td><%=(String)session.getAttribute("BirthPlace")%></td>
              <td><%=(String)session.getAttribute("sex")%></td>
              
              <td><%=temperature%></td>
              <td><%=weight%></td>
              <td><%=height%></td>
              <td><%= bp%></td>
               <td><%=pulse%></td>
              <td><%=date1%></td>
              
             
             <td><div align="center">  <button type="button"   class="btn btn-info brand" data-toggle="modal" data-target="#prescribe"> Prescribe</button> </div></td>
             <td><div align="center">  <button type="button"   class="btn btn-info btn-success" data-toggle="modal" data-target="#screen"> screening</button> </div></td>
             <td><a href="health_record.jsp"><div align="center">  <button type="button"   class="btn btn-info btn-warning" data-toggle="modal" data-target="#healthrecord"> History</button> </div> </a></td>


    </tr>
<% }  %>	
    </tbody>
</table>
  


<!------------------------------------------------------------------------------------------------------------------------------------- -->

<div class="modal small fade" id="prescribe" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
        <h4 class="alert" align="center">Prescription Form</h4>
        
        <div class="modal-body">
            <div id="myTabContent" class="tab-content">
        <div class="tab-pane active in" id="home">
            <form action="doprescription.jsp" method="post" name="prescription" >
                <h3>Patient ID: <b><%=PatientID1%></b></h3>
                <h3>Name: <b><%= session.getAttribute("fname")%> <%= session.getAttribute("lname")%></b></h3>
            <input type="hidden" name="PatientID" value="<%=PatientID1%>" >
            <input type="hidden" name="staffid" value="<%=staffid%>" >
        <div class="form-group">
            <label>Drug:</label><input type="text" name="drug" class="form-control">
        </div>
        <div class="form-group">
            <label>Dosage: </label><input type="text" name="dosage" class="form-control">
            
        </div>
        <div class="form-group">
            <label>Duration(days): </label><input type="text" name="duration" class="form-control">
            
        </div>
        <div class="form-group">
            <label>Return Date: </label> <input type="date" name="checkup" class="form-control">
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
        
        
        
        
        
        
<div class="modal small fade" id="screen" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
        <h4 class="alert" align="center">Screening Request</h4>
        
        <div class="modal-body">
            <div id="myTabContent" class="tab-content">
        <div class="tab-pane active in" id="home">
            <form action="doscreeningrequest.jsp" method="post" name="screening" >
                <h3>Patient ID: <b><%=PatientID%></b></h3>
                <h3>Name: <b><%= session.getAttribute("fname")%> <%= session.getAttribute("lname")%></b></h3>
            <input type="hidden" name="PatientID" value="<%=PatientID1%>" >
            <input type="hidden" name="staffid" value="<%=staffid%>" >
        <div class="form-group">
            <label>Cancer:</label>
            <select name="cancername">
        <%  
            rs4=stmt.executeQuery("select * from cancer");
            
           
            while(rs4.next()){ %>
            <option name="cancerid" value="9"><%= rs4.getString(4)%> <b><%= rs4.getString(2)%></b></option>
        <% } %>
        </select>
        </div>
        
        <div class="form-group">
            <label>Allergy: </label><input type="text" name="allergy" class="form-control">
            
        </div>
        
        <label>HIV Status:</label>
         <div class="radio">
             <label><input type="radio" name="hiv" value="Negative">Negative</label>
        </div>
        <div class="radio">
            <label><input type="radio" name="hiv" value="Positive">Positive</label>
        </div>
        <div class="radio">
            <label><input type="radio" name="hiv" value="Don't Know">Don't Know</label>
        </div>
        <br />
        
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
        
        
        <!-- screening ***************************************************** -->
         <div class="modal fade" id="screening" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content*************************************************************-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="alert-danger" align="center">Screening Request Form</h4>
        </div>
         
          
          <div class="badge" >
            <form action="doscreeningrequest.jsp" method="post" class="alert-success">
               
            <input type="hidden" name="PatientID" value="<%= PatientID%>" >
           <input type="hidden" name="staffid" value="<%= staffid%>" >
            
           <hr>
              <h3 class="alert">  Select Cancer for Screening: </h3>
                  &nbsp; &nbsp; &nbsp;
                     <input type="checkbox" name="cancertype" value="L192" >  AFP &nbsp; &nbsp;
                     <input type="checkbox" name="cancertype" value="X432" > βHCG quantitative &nbsp; &nbsp;
                      <input type="checkbox" name="cancertype" value="C118" >  CEA    &nbsp; &nbsp;
                      <input type="checkbox" name="cancertype" value="K193" > CA 153-Breast       &nbsp; &nbsp;
                       <input type="checkbox" name="cancertype" value="S443" > CA 724     &nbsp; &nbsp;
                      <input type="checkbox" name="cancertype" value="H100" >  PSA only-monitoring &nbsp; &nbsp;
                      <input type="checkbox" name="cancertype" value="M195" >CA 125-Ovary       &nbsp; &nbsp;<br>
                     
                     <input type="checkbox" name="cancertype" value="K838" > PSA (+ Free PSA)> &nbsp; &nbsp;
                     <input type="checkbox" name="cancertype" value="F121" > PSA -Complex  &nbsp; &nbsp;
                     <input type="checkbox" name="cancertype" value="S100" > Malignant melanoma S-100B  &nbsp; &nbsp;
                      <input type="checkbox" name="cancertype" value="N288" > B2 microglobin  &nbsp; &nbsp;
                      <input type="checkbox" name="cancertype" value="D119" >CA 199   &nbsp; &nbsp; 
                      <hr>
                      <p align="left">  Allergy  <input type="text" name="allergy"  ></p>
                      <p align="left">  HIV status 
               <input type="radio" name="HIV_status" value="positive" >  positive
               <input type="radio" name="HIV_status" value="Negative" >  Negative
               <input type="radio" name="HIV_status" value="donotknow" >  I Don't Know
            </p> 
                  <h3 class="alert">   Other test: </h3>
                <textarea rows="8" cols="70" name="othertest">Specify other test here</textarea>
               <div>
                   
         
                    <div class="modal-footer">
                        <div> <input type="submit" value="SAVE"class="btn btn-default" ></div> <br>
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          
        </div>
                    
      </div>
      </form>
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
    
  
</body>







</html>
