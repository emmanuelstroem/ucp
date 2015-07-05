<%-- 
    Document   : newpatient
    Created on : Jun 22, 2015, 5:18:17 PM
    Author     : ken
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>New Patient Registration</title>

    <!-- Bootstrap Core CSS -->
    <link href="../scripts/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../scripts/css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
  

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

    <div id="wrapper" class="patientab">

        <!-- Navigation -->
        
        

        <div id="page-wrapper" align="center">
            <div class="row">
                <div class="col-lg-12">
                    <p align ="center">  <h1 class="page-header" align="center">New Patient Registration Form</h1> </p>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Bio Data
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <form role="form" action="donewpatient.jsp" method="post"> 
                                        
                                             
                                        <div class="form-group">
                                            <label>First Name: <input type="text" name="firstName"></label>
                                            </div>
                                             
                                        <div class="form-group">
                                            <label>Last Name: <input type="text" name="lastName"></label>
                                            </div>
                                        <div class="form-group">
                                            <label>Sex:</label> 
                                            <input type="radio" name="sex" value="male">Male
                                            <input type="radio" name="sex" value="female">Female  
                                              
                                            </div>
                                             <div class="form-group">
                                            <label>Place Of Birth: <input type="text" name="BirthPlace"></label>
                                            </div>
                                             <div class="form-group">
                                            <label>Date of Birth: <input type="date" min=yyyy-mm-dd name="DOB"></label>
                                            </div>
                                             <div class="form-group">
                                            <label>Occupation: <input type="text" name="occupation"></label>
                                            </div>
                                        <div class="form-group">
                                            <label>Tribe: <input type="text" name="Tribe"></label>
                                            </div>
                                             
         <div class="col-lg-12">
                   <div class="panel panel-default">
                  <div class="panel-heading">
                                   Address Information
                  </div>
          </div>
         </div>    
                                             
                                             
                                             <div class="form-group">
                                            <label>District: <input type="text" name="District"></label>
                                            </div>
                                             <div class="form-group">
                                            <label>Region: <input type="text" name="region"></label>
                                            </div>
                                             <div class="form-group">
                                            <label>Village: <input type="text" name="village"></label>
                                            </div>
                                             <div class="form-group">
                                            <label>Contact: <input type="text" name="Contact"></label>
                                            </div>
                                             <div class="form-group">
                                            <label>County: <input type="text" name="County"></label>
                                            </div>
                                             <div class="form-group">
                                            <label>Sub-county: <input type="text" name="subcounty"></label>
                                            </div>
                                             <div class="form-group">
                                            <label>Parish: <input type="text" name="parish"></label>
                                            </div>
                                        <div class="form-group">
                                            <input type="reset" value="Reset"> <input type="Submit" value="Register">
                                            </div>
                                        
                                        
                                        
                                    </form>
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery Version 1.11.0 -->
    <script src="../scripts/js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../scripts/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../scripts/js/plugins/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../scripts/js/sb-admin-2.js"></script>

</body>

</html>
