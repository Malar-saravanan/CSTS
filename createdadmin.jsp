<%-- 
    Document   : consmartteach
    Created on : Sep 17, 2015, 9:05:27 PM
    Author     : malar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<style>
            #header {
    background-color:black;
    color:white;
    text-align:center;
    padding:5px;
}#section {
    width:350px;
    float:left;
    padding:10px;	 	 
}
#aside{
    line-height:30px;
    background-color:#eeeeee;
    width:350px;
    float:right;
    padding:10px;
}
            #footer {
    background-color:black;
    color:white;
    clear:both;
    text-align:center;
   padding:5px;	 	 
}</style>
<body background='car10.jpg'>
    <div id="header">
        <h1>CAR STATUS TRACKING SYSTEM</h1>
    <a href="index.html">
  <img src="small-button-home.jpg" alt="HTML home" style="width:42px;height:42px;border:0">
</div>
<%
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/csts1","root",""); 
try{
    String username=request.getParameter("userid");
//out.println("Emsil=="+farmername);
    String newname =request.getParameter("psw");
    String pass=request.getParameter("psd");




PreparedStatement pStmt=con.prepareStatement
        ("update admin set name=?,password=? where name='"+username+"'");
        
                                                 


pStmt.setString(1,newname);


pStmt.setString(2,pass);


int r=pStmt.executeUpdate();

%>
<div id="section">
    
<br><br><center><h1>ADMIN CHANGED</h1>
    <h2> <a href="admin login.html"> PLEASE LOGIN AGAIN!!!</h2></center></div>

<%  con.close();
            }
catch(Exception e)
            {
                out.println("£££"+e.getMessage());
            }
con.close();
      
   %>
   <div id="aside"
        <a href='admin login.html'>LOG OUT</a></div>
  
</body>
</html>
