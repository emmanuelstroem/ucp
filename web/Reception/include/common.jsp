
<%@ include file="system_date_time.jsp" %>
<%!
String patient="", firstName="",lname="",sex="", BirthPlace="", DOB="", update_patient="", fname="", othername="", email="",occupation="",mlog="",clog="",reg="";
String birthplace="", tribe="", district="", region="", contact="", village="", county="", subcounty="", parish="";

//String userid="",uid="",password="",pass="",managerid="",clerkid="",mid="",cid="",smid="",scid="",log="",mlog="",clog="",reg="";

String item="",item_name="",PatientID1="",item_code="",item_category="",item_price1="",ingredients="",date_added="";

String ingredient="",ingredient_name="",firstname="",ingredient_category="";

String ingredient_price1="",quantity1="",item_slno1="",ingredient_slno1="",update_ingredient="",delete_patient="",update_item="",delete_item="";

String booking="",date="",name="",items="",time="",catagory="",phone="",booking_slno1="",change_status="";
String amount="",type="",show="",draw="",ing_quantity1="",prepare="",deliver="",order_type="",item_status="",status="";

int x=0,slno=0,item_slno=0,ingredient_slno=0,booking_slno=0,count=0,totalcount=0,todaycount=0,PatientID=0;

double item_price=0.0,ingredient_price=0.0,quantity=0.0,ing_quantity=0.0;

%>