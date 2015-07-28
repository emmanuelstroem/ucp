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
    
    <title>UCP Search Results</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="../lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="../lib/font-awesome/css/font-awesome.css">

    <script src="../lib/jquery-1.11.1.min.js" type="text/javascript"></script>

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


   
        function getFinding(){
                 var FindingBox = document.getElementById('FindingBox');

                /* selected value of dropdown */
                var selectedFinding = FindingBox.options[FindingBox.selectedIndex].value;

                /* selected value set to input field */
              document.getElementById('finding').value = selectedFinding; 
        }
        
        
        function getCancerID(){
                 var selectBox = document.getElementById('selectBox');

                /* selected value of dropdown */
                var selectedCancerID = selectBox.options[selectBox.selectedIndex].value;

                /* selected value set to input field */
              document.getElementById('cancerid').value = selectedCancerID; 
        }
        
        function getPrimarySite(){
                 var PrimarySite = document.getElementById('PrimarySiteBox');

                /* selected value of dropdown */
                var selectedPrimarySite = PrimarySite.options[PrimarySite.selectedIndex].value;
                

                /* selected value set to input field */
              document.getElementById('primarysite').value = selectedPrimarySite; 
        }
        
        function getHistology(){
                 var Histology = document.getElementById('HistologyBox');

                /* selected value of dropdown */
                var selectedHistology = Histology.options[Histology.selectedIndex].value;
                

                /* selected value set to input field */
              document.getElementById('histology').value = selectedHistology; 
        }
        
        function getSeqnum(){
                 var Seqnum = document.getElementById('SeqnumBox');

                /* selected value of dropdown */
                var selectedSeqnum = Seqnum.options[Seqnum.selectedIndex].value;
                

                /* selected value set to input field */
              document.getElementById('seqnum').value = selectedSeqnum; 
        }
        
        function getBehaviour(){
                 var Behaviour = document.getElementById('BehaviourBox');

                /* selected value of dropdown */
                var selectedBehaviour = Behaviour.options[Behaviour.selectedIndex].value;
                

                /* selected value set to input field */
              document.getElementById('behaviour').value = selectedBehaviour; 
        }
        
        function getGrade(){
                 var Grade = document.getElementById('GradeBox');

                /* selected value of dropdown */
                var selectedGrade = Grade.options[Grade.selectedIndex].value;
                

                /* selected value set to input field */
              document.getElementById('grade').value = selectedGrade; 
        }
        
        function getLaterality(){
                 var Laterality = document.getElementById('LateralityBox');

                /* selected value of dropdown */
                var selectedLaterality = Laterality.options[Laterality.selectedIndex].value;
                

                /* selected value set to input field */
              document.getElementById('laterality').value = selectedLaterality; 
        }
        
        function getLaterality(){
                 var Laterality = document.getElementById('LateralityBox');

                /* selected value of dropdown */
                var selectedLaterality = Laterality.options[Laterality.selectedIndex].value;
                

                /* selected value set to input field */
              document.getElementById('laterality').value = selectedLaterality; 
        }
        
        function getBasisofDiagnosis(){
                 var BasisofDiagnosis = document.getElementById('BasisofDiagnosisBox');

                /* selected value of dropdown */
                var selectedBasisofDiagnosis = BasisofDiagnosis.options[BasisofDiagnosis.selectedIndex].value;
                

                /* selected value set to input field */
              document.getElementById('diagconfirm').value = selectedBasisofDiagnosis; 
        }
        
        function getClinicalT(){
                 var ClinicalT = document.getElementById('ClinicalTBox');

                /* selected value of dropdown */
                var selectedClinicalT = ClinicalT.options[ClinicalT.selectedIndex].value;
                

                /* selected value set to input field */
              document.getElementById('clinicalt').value = selectedClinicalT; 
        }
        
        function getClinicalN(){
                 var ClinicalN = document.getElementById('ClinicalNBox');

                /* selected value of dropdown */
                var selectedClinicalN = ClinicalN.options[ClinicalN.selectedIndex].value;
                

                /* selected value set to input field */
              document.getElementById('clinicaln').value = selectedClinicalN; 
        }
        
        function getClinicalM(){
                 var ClinicalM = document.getElementById('ClinicalMBox');

                /* selected value of dropdown */
                var selectedClinicalM = ClinicalM.options[ClinicalM.selectedIndex].value;
                

                /* selected value set to input field */
              document.getElementById('clinicalm').value = selectedClinicalM; 
        }
        
        function getClinicalStageGroup(){
                 var ClinicalStageGroup = document.getElementById('ClinicalStageGroupBox');

                /* selected value of dropdown */
                var selectedClinicalStageGroup = ClinicalStageGroup.options[ClinicalStageGroup.selectedIndex].value;
                

                /* selected value set to input field */
              document.getElementById('clinicalstage').value = selectedClinicalStageGroup; 
        }
        
        function getPathologicT(){
                 var PathologicT = document.getElementById('PathologicTBox');

                /* selected value of dropdown */
                var selectedPathologicT = PathologicT.options[PathologicT.selectedIndex].value;
                

                /* selected value set to input field */
              document.getElementById('pathologict').value = selectedPathologicT; 
        }
        
        function getPathologicN(){
                 var PathologicN = document.getElementById('PathologicNBox');

                /* selected value of dropdown */
                var selectedPathologicN = PathologicN.options[PathologicN.selectedIndex].value;
                

                /* selected value set to input field */
              document.getElementById('pathologicn').value = selectedPathologicN; 
        }
        
        function getPathologicM(){
                 var PathologicM = document.getElementById('PathologicMBox');

                /* selected value of dropdown */
                var selectedPathologicM = PathologicM.options[PathologicM.selectedIndex].value;
                

                /* selected value set to input field */
              document.getElementById('pathologicm').value = selectedPathologicM; 
        }
        
        function getPathologicStageGroup(){
                 var PathologicStage = document.getElementById('PathologicStageBox');

                /* selected value of dropdown */
                var selectedPathologicStage = PathologicStage.options[PathologicStage.selectedIndex].value;
                

                /* selected value set to input field */
              document.getElementById('pathologicstage').value = selectedPathologicStage; 
        }
        
        
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
lname=request.getParameter("lname");
if(PatientID1!=null)

PatientID=Integer.parseInt(PatientID1);
session.setAttribute("PatientID", pid);
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
    
    
    fname=rs2.getString(2);
    lname=rs2.getString(3);
    sex=rs2.getString(4);
    DOB=rs2.getString(6);

    session.setAttribute("fname", fname);
    session.setAttribute("lname", lname);
    session.setAttribute("sex", sex);
    session.setAttribute("DOB", DOB);


}%>
<table class="table">
     <thead>
         
         <tr>Patient ID:    <b> <%=PatientID1%></b></tr><br/>
         <tr>First Name:    <b><%=fname%></b></tr><br/>
         <tr>Last Name:     <b><%=lname%></b></tr><br/>
         <tr>Sex:           <b><%=sex%></b></tr><br/>
         <tr>Date of Birth: <b><%=DOB%></b></tr><br/> <br />
<tr>-------------------------------</tr><br />
<tr><b>TRIAGE DETAILS</b></tr><br />
<tr>-------------------------------</tr>
     
     <th>Date </th>
     <th> Temp(C) </th>
     <th> Weight(KG) </th>
     <th> Height </th>
     <th> B/P </th>
     <th> Pulse </th>

       
      <th style="width: 3.5em;"></th>


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
               date1=rs.getDate("date");
               session.setAttribute("triageid",triageid);
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


<table class="table">
     <thead>
      
 <tr>-------------------------------</tr><br />
<tr><b>SCREENING REQUESTS</b></tr><br />
<tr>-------------------------------</tr>
     
     <th>Date </th>
     <th> Request No </th>
     <th> Patient Name </th>
     <th> Screen For </th>
     <th> Requested By  </th>

     
      <th style="width: 3.5em;"></th>
      
      
  </thead>
  <tbody>   
        <% int prescount=0;
               rs=stmt.executeQuery("select screensrequest.*, cancer.*, patient.*, staffs.* from screensrequest JOIN cancer ON screensrequest.cancerid=cancer.cancerid JOIN patient ON screensrequest.PatientID=patient.PatientID JOIN staffs ON screensrequest.staffid=staffs.staffid AND screensrequest.patientID='"+PatientID+"';");
               
               
               
while(rs.next())
{ %>   <%
               requestid=rs.getInt("requestid");
               PatientID=rs.getInt("PatientID");
               cancerid=rs.getInt("cancerid");
               cancername=rs.getString("cancername");
               date1=rs.getDate("screensrequest.date");
               firstname=rs.getString("first_Name");
               lastname=rs.getString("last_name");
               fname=rs.getString("fname");
               lname=rs.getString("lname");
               staff2=rs.getInt("staffid");
               session.setAttribute("requestid",requestid);
               session.setAttribute("PatientID", PatientID);
               session.setAttribute("cancerid", cancerid);
               session.setAttribute("staffid",staffid);
               session.setAttribute("cancername",cancername);
               session.setAttribute("lname",lname);
               session.setAttribute("fname",fname);
               session.setAttribute("date1",date1);
               session.setAttribute("first_Name", firstname);
               session.setAttribute("last_name", lastname);
              
%>
              
              <td><%=date1%></td>
              <td><%=requestid%></td>
              <td><%=fname%> <%=lname%></td>
              <td><%=cancername%></td>
              <td><%=firstname%> <%=lastname%></td>
              <td>
                  <div align="left">  <button type="button"   class="btn btn-info brand enter_results" data-toggle="modal" data-target="#results">Enter Results</button> </div>
              </td>

    </tr>
<% }  %>

    
    </tbody>
    
</table>

<a href="health_record.jsp"><div align="right">  <button type="button"   class="btn btn-info btn-warning" data-toggle="modal" data-target="#healthrecord"> History</button> </div> </a>

  

<!------------------------------------------------------------------------------------------------------------------------------------- -->

<div class="modal small fade" id="results" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
        <h4 class="alert" align="center"><%=fname%>'s Results Form</h4>
        
        <div class="modal-body">
            <div id="myTabContent" class="tab-content">
        <div class="tab-pane active in" id="home">
            <form action="doScreenResult.jsp" method="post" name="prescription" >
                <h3>Patient ID: <b><%=PatientID1%></b></h3>
                <h3>Name: <b><%= session.getAttribute("fname")%> <%= session.getAttribute("lname")%></b></h3>
            <input type="hidden" name="PatientID" value="<%=PatientID1%>" >
            <input type="hidden" name="screen_staffid" value="<%=staffid%>" >
            <input type="hidden" name="requestid" value="<%=requestid%>" >
            <input type="hidden" name="cancerid" value="<%=cancerid%>" >
            
         <div class="form-group">
            <label>Finding: </label> 
            <select name="FindingBox" id="FindingBox" onchange="getFinding()" >
                <option name="cancer"> <b>Select a Finding...</b></option>
                <option name="cancer" value="Positive"> <b>Cancer Seen</b></option>
                <option name="cancer" value="Negative"> <b></b>Cancer Absent</option>
            </select>
        </div>
        <input type="hidden" name="finding" id="finding" class="form-control">
        
            
            
        <div class="form-group">
            <label>Primary Site: </label> 
            <select name="PrimarySiteBox" id="PrimarySiteBox" onchange="getPrimarySite()" >
              <option name="PrimarySiteBox"> <b>Select a Primary Site . . .</b></option>


        <%  
            rs4=stmt.executeQuery("select * from primarysite ORDER BY sitevalue");
            
           
            while(rs4.next()){
                primarysite=rs4.getString(3);
       
        %>
            
            <option name="PrimarySiteBox"> <b><%= primarysite%></b></option>
              
        
        <% } %>
        </select>
        </div>
        <input type="hidden" name="primarysite" id="primarysite" class="form-control">
        <div class="form-group">
            <label>Histology:</label>
            <select name="HistologyBox" id="HistologyBox" onchange="getHistology()" >
              <option name="histology"> <b>Select a Histology . . .</b></option>
        <%  
            rs4=stmt.executeQuery("select * from histology ORDER BY histologyvalue");
            
           
            while(rs4.next()){
                sequenceid=rs4.getInt(1);
                histology=rs4.getString(3);
       
        %>
            
            <option name="histology" value="<%=histology%>"> <b><%= rs4.getString(3)%></b></option>
              
        
        <% } %>
        </select>
        </div>
        <input type="hidden" name="histology" id="histology" class="form-control">
        <div class="form-group">
            <label>Sequence No: </label>
            <select name="SeqnumBox" id="SeqnumBox" onchange="getSeqnum()" >
              <option name="seqnum"> <b>Select a Sequence number...</b></option>
        <%  
            rs4=stmt.executeQuery("select * from resultvalues WHERE observation_group='Sequence number' ORDER BY observation_value");
            
           
            while(rs4.next()){
                sequenceid=rs4.getInt(1);
                seqnum=rs4.getString(8);
       
        %>
            
            <option name="seqnum" value="<%=seqnum%>"> <b><%=seqnum%></b></option>
              
        
        <% } %>
        </select>
            
        </div>
        <input type="hidden" name="seqnum" id="seqnum" class="form-control">
        <div class="form-group">
            <label>Behavior: </label>
            <select name="BehaviourBox" id="BehaviourBox" onchange="getBehaviour()" >
              <option name="behavior"> <b>Select a Behaviour...</b></option>
        <%  
            rs4=stmt.executeQuery("select * from resultvalues WHERE observation_group='Behaviour' ORDER BY observation_value");
            
           
            while(rs4.next()){
                sequenceid=rs4.getInt(1);
                behaviour=rs4.getString(8);
       
        %>
            
            <option name="behavior" value="<%=behaviour%>"> <b><%= rs4.getString(8)%></b></option>
              
        
        <% } %>
        </select>
            
        </div>
        <input type="hidden" name="behaviour" id="behaviour" class="form-control">
        <div class="form-group">
            <label>Grade: </label> 
            <select name="GradeBox" id="GradeBox" onchange="getGrade()" >
              <option name="grade"> <b>Select a Grade...</b></option>
        <%  
            rs4=stmt.executeQuery("select * from resultvalues WHERE observation_group='Grade' ORDER BY observation_value");
            
           
            while(rs4.next()){
                sequenceid=rs4.getInt(1);
                grade=rs4.getString(8);
       
        %>
            
            <option name="grade" value="<%=grade%>"> <b><%= rs4.getString(8)%></b></option>
              
        
        <% } %>
        </select>
        </div>
        <input type="hidden" name="grade" id="grade" class="form-control">
        <div class="form-group">
            <label>Laterality: </label> 
            <select name="LateralityBox" id="LateralityBox" onchange="getLaterality()" >
              <option name="laterality"> <b>Select a Laterality...</b></option>
        <%  
            rs4=stmt.executeQuery("select * from resultvalues WHERE observation_group='Laterality' ORDER BY observation_value");
            
           
            while(rs4.next()){
                sequenceid=rs4.getInt(1);
                laterality=rs4.getString(8);
       
        %>
            
            <option name="laterality" value="<%=laterality%>"> <b><%=laterality%></b></option>
              
        
        <% } %>
        </select>
        </div>
        <input type="hidden" name="laterality" id="laterality" class="form-control">
        <div class="form-group">
            <label>Basis of Diagnosis: </label> 
            <select name="BasisofDiagnosisBox" id="BasisofDiagnosisBox" onchange="getBasisofDiagnosis()" >
              <option name="diagconfirm"> <b>Select a Basis of Diagnosis Confirmation...</b></option>
        <%  
            rs4=stmt.executeQuery("select * from resultvalues WHERE observation_group='Basis of Diagnosis' ORDER BY observation_value");
            
           
            while(rs4.next()){
                sequenceid=rs4.getInt(1);
                diagconfirm=rs4.getString(8);
       
        %>
            
            <option name="diagconfirm" value="<%=diagconfirm%>"> <b><%= rs4.getString(8)%></b></option>
              
        
        <% } %>
        </select>
        </div>
        <input type="hidden" name="diagconfirm" id="diagconfirm" class="form-control">
        <div class="form-group">
            <label>Clinical T: </label> 
            <select name="ClinicalTBox" id="ClinicalTBox" onchange="getClinicalT()" >
              <option name="clinicalt"> <b>Select a Clinical T value...</b></option>
        <%  
            rs4=stmt.executeQuery("select * from resultvalues WHERE observation_group='Clinical T' ORDER BY observation_value");
            
           
            while(rs4.next()){
                sequenceid=rs4.getInt(1);
                clinicalt=rs4.getString(8);
       
        %>
            
            <option name="clinicalt" value="<%=clinicalt%>"> <b><%= rs4.getString(8)%></b></option>
              
        
        <% } %>
        </select>
        </div>
        <input type="hidden" name="clinicalt" id="clinicalt" class="form-control">
        <div class="form-group">
            <label>Clinical N: </label> 
            <select name="ClinicalNBox" id="ClinicalNBox" onchange="getClinicalN()" >
              <option name="clinicaln"> <b>Select a Clinical N value...</b></option>
        <%  
            rs4=stmt.executeQuery("select * from resultvalues WHERE observation_group='Clinical N' ORDER BY observation_value");
            
           
            while(rs4.next()){
                sequenceid=rs4.getInt(1);
                clinicaln=rs4.getString(8);
       
        %>
            
            <option name="clinicaln" value="<%=clinicaln%>"> <b><%= rs4.getString(8)%></b></option>
              
        
        <% } %>
        </select>
        </div>
        <input type="hidden" name="clinicaln" id="clinicaln" class="form-control">
        <div class="form-group">
            <label>Clinical M: </label> 
            <select name="ClinicalMBox" id="ClinicalMBox" onchange="getClinicalM()" >
              <option name="clinicalm"> <b>Select a Clinical M value...</b></option>
        <%  
            rs4=stmt.executeQuery("select * from resultvalues WHERE observation_group='Clinical M' ORDER BY observation_value");
            
           
            while(rs4.next()){
                sequenceid=rs4.getInt(1);
                clinicalm=rs4.getString(8);
       
        %>
            
            <option name="clinicalm" value="<%=clinicalm%>"> <b><%= rs4.getString(8)%></b></option>
              
        
        <% } %>
        </select>
        </div>
        <input type="hidden" name="clinicalm" id="clinicalm" class="form-control">
        <div class="form-group">
            <label>Clinical Stage Group: </label> 
            <select name="ClinicalStageGroupBox" id="ClinicalStageGroupBox" onchange="getClinicalStageGroup()" >
              <option name="clinicalstage"> <b>Select a Clinical Stage Group...</b></option>
        <%  
            rs4=stmt.executeQuery("select * from resultvalues WHERE observation_group='Clinical Stage Group' ORDER BY observation_value");
            
           
            while(rs4.next()){
                sequenceid=rs4.getInt(1);
                clinicalstage=rs4.getString(8);
       
        %>
            
            <option name="clinicalstage" value="<%=clinicalstage%>"> <b><%= rs4.getString(8)%></b></option>
              
        
        <% } %>
        </select>
        </div>
        <input type="hidden" name="clinicalstage" id="clinicalstage" class="form-control">
        <div class="form-group">
            <label>Pathologic T: </label> 
            <select name="PathologicTBox" id="PathologicTBox" onchange="getPathologicT()" >
              <option name="pathologict"> <b>Select a Pathologic T...</b></option>
        <%  
            rs4=stmt.executeQuery("select * from resultvalues WHERE observation_group='Pathologic T' ORDER BY observation_value");
            
           
            while(rs4.next()){
                sequenceid=rs4.getInt(1);
                pathologict=rs4.getString(8);
       
        %>
            
            <option name="pathologict" value="<%=pathologict%>"> <b><%= rs4.getString(8)%></b></option>
              
        
        <% } %>
        </select>
        </div>
        <input type="hidden" name="pathologict" id="pathologict" class="form-control">
        <div class="form-group">
            <label>Pathologic N: </label> 
            <select name="PathologicNBox" id="PathologicNBox" onchange="getPathologicN()" >
              <option name="pathologicn"> <b>Select a Pathologic N...</b></option>
        <%  
            rs4=stmt.executeQuery("select * from resultvalues WHERE observation_group='Pathologic N' ORDER BY observation_value");
            
           
            while(rs4.next()){
                sequenceid=rs4.getInt(1);
                pathologicn=rs4.getString(8);
       
        %>
            
            <option name="pathologicn" value="<%=pathologicn%>"> <b><%= rs4.getString(8)%></b></option>
              
        
        <% } %>
        </select>
        </div>
        <input type="hidden" name="pathologicn" id="pathologicn" class="form-control">
        <div class="form-group">
            <label>Pathologic M: </label> 
            <select name="PathologicMBox" id="PathologicMBox" onchange="getPathologicM()" >
              <option name="pathologicm"> <b>Select a Pathologic M...</b></option>
        <%  
            rs4=stmt.executeQuery("select * from resultvalues WHERE observation_group='Pathologic M' ORDER BY observation_value");
            
           
            while(rs4.next()){
                sequenceid=rs4.getInt(1);
                pathologicm=rs4.getString(8);
       
        %>
            
            <option name="pathologicm" value="<%=pathologicm%>"> <b><%= rs4.getString(8)%></b></option>
              
        
        <% } %>
        </select>
        </div>
        <input type="hidden" name="pathologicm" id="pathologicm" class="form-control">
        <div class="form-group">
            <label>Pathologic Stage Group: </label> 
            <select name="PathologicStageBox" id="PathologicStageBox" onchange="getPathologicStageGroup()" >
              <option name="pathologicstage"> <b>Select a Pathologic Stage Group...</b></option>
        <%  
            rs4=stmt.executeQuery("select * from resultvalues WHERE observation_group='Pathologic Stage Group' ORDER BY observation_value");
            
           
            while(rs4.next()){
                sequenceid=rs4.getInt(1);
                pathologicstage=rs4.getString(8);
       
        %>
            
            <option name="pathologicstage" value="<%=pathologicstage%>"> <b><%= rs4.getString(8)%></b></option>
              
        
        <% } %>
        </select>
        </div>
        <input type="hidden" name="pathologicstage" id="pathologicstage" class="form-control">
        
        <div class="form-group">
            <label>Comments:</label>
            <textarea type="text" rows="3" name="screeningcomment" class="form-control" ></textarea>
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
