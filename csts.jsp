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
<body>
<%
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/csts","root",""); 
try{
    String carid=request.getParameter("carid");
//out.println("Emsil=="+farmername);
    String slotno =request.getParameter("slotno");
String ft=request.getParameter("ft");
//out.println("Emsil=="+email1);
String throttle=request.getParameter("throttle");
String resistance=request.getParameter("resistance");
String hsf=request.getParameter("hsf");

String ambtemp=request.getParameter("ambtemp");
String cattemp=request.getParameter("cattemp"); 
String normaltemp=request.getParameter("normaltemp");

String bp=request.getParameter("bp");


PreparedStatement pStmt=con.prepareStatement("insert into cardetail values(?,?,?,?,?,?)");
pStmt.setString(1,carid);
pStmt.setString(2,slotno);
pStmt.setString(3,ft);
pStmt.setString(4,throttle);
pStmt.setString(5,resistance);
pStmt.setString(6,hsf);
pStmt.setString(7,ambtemp);
pStmt.setString(8,cattemp);
pStmt.setString(9,normaltemp);
pStmt.setString(10,bp);


//pStmt2.setString(1,email1);


pStmt.executeUpdate();

%>

<br><br><center><h1>thank u!!!</a></h1></center>

<%  con.close();
            }
catch(Exception e)
            {
                out.println("Â£Â£Â£"+e.getMessage());
            }
con.close();
      
   %>
  
</body>
</html>
