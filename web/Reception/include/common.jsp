
<%@page import="java.util.Date"%>
<%@ include file="system_date_time.jsp" %>
<%!
String patient="", firstName="", lname="",sex="", BirthPlace="", DOB="", lastname="",smid="",scid="",log="",mlog="",clog="",reg="";
String Birthplace=""; String triage="",  fname="", staffid="", rs5="";
String prescription="",bp="", othername="", email="", occupation="", tribe="", district="", region="", contact="", village="", county=""; 
String subcounty="", parish="", id="", patientid="", drug="", dosage="", duration="", cancername="";
int pid=0, cancerid=0, cid=0, pid2=0, prescount=0, prescriptionid=0, requestid=0, screenid=0, sid=0, sequenceid=0;

Date date1;
String item="",item_name="",PatientID1="",item_code="",item_category="",item_price1="",ingredients="",date_added="";
String ingredient="",ingredient_name="",firstname="",ingredient_category="";

String ingredient_price1="",quantity1="",item_slno1="",ingredient_slno1="",update_ingredient="",delete_patient="",update_item="",delete_item="";

String booking="",date="",name="",items="",time="",catagory="",phone="",booking_slno1="",change_status="";
String amount="",type="",show="",draw="",ing_quantity1="",prepare="",deliver="",order_type="",item_status="",status="";

int x=0,triageid=0,temperature=0,slno=0,weight=0,pulse=0,height=0,ingredient_slno=0,booking_slno=0,count=0,totalcount=0,todaycount=0,PatientID=0;

double item_price=0.0,ingredient_price=0.0,quantity=0.0,ing_quantity=0.0;


//Screening Variables

String primarysite="", primarysitevalue="", histology="", seqnum="", behaviour="", grade="", laterality="", diagconfirm="", clinicalt="", clinicaln="", clinicalm="";
String clinicalstage="", pathologict="", pathologicn="", pathologicm="", pathologicstage="";
String staff="", screeningcomment="", staffid3="";
int staff2=0, patid=0, reqid=0;


//Reception variables
String country="", nationality="";


//Admin Variables
String othernames="", dept="";
int editstaffid=0;
%>