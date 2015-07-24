<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@page import="java.sql.*" %>
<%

/*Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:rest","root","");*/

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://us-cdbr-iron-east-02.cleardb.net/heroku_c79a07203b819b6?reconnect=true", "b7895ee3eb8ef0", "b2e4df22");

Statement stmt=con.createStatement();
Statement stmt1=con.createStatement();
Statement stmt2=con.createStatement();
Statement stmt3=con.createStatement();
Statement stmt4=con.createStatement();
Statement stmt5=con.createStatement();

ResultSet rs,rs1,rs2,rs3,rs4,rs5;

PreparedStatement pstmt,pstmt1,pstmt2,pstmt3,pstmt4,pstmt5;

%>