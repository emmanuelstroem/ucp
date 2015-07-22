<%-- 
    Document   : dbconnection
    Created on : Jun 13, 2015, 1:35:04 PM
    Author     : AUMA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*;" %>
<%@page import="java.sql.*;" %>
<!DOCTYPE html>
<% 
 Connection conn = null;
    ResultSet result = null;
    Statement stmt = null;


    try {
       Class.forName("com.mysql.jdbc.Driver");
    }
    catch (Exception e) {
      System.out.println("Error occurred " + e);
     }
     try {
       conn = DriverManager.getConnection("jdbc:mysql://us-cdbr-iron-east-02.cleardb.net/heroku_c79a07203b819b6?reconnect=true",  "b7895ee3eb8ef0", "b2e4df22");
     }
     catch (SQLException e) {
        System.out.println("Error occurred " + e);
     }
     try {
        stmt = conn.createStatement();
        result = stmt.executeQuery("SELECT * FROM staffs");
     }
     catch (SQLException e) {
         System.out.println("Error occurred " + e);
      }






%>
