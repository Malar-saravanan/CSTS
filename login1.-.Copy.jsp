<%-- 
    Document   : login1
    Created on : Oct 6, 2015, 10:32:40 PM
    Author     : hp
--%>


<%-- 

    Document   : index

    Created on : 10-Sep-2015, 15:25:52

    Author     : Manju

--%>

<%-- 

    Document   : login

    Created on : 10-Sep-2015, 15:35:14

    Author     : Manju

--%>

<%@ page import ="java.sql.*" %>

 <%@ page import ="javax.sql.*" %>  

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>JSP Page</title>
        <style>
            #header {
    background-color:black;
    color:white;
    text-align:center;
    padding:5px;
}#section {
    width:350px;
    text-align:center;
    color:black;
    background-color:#eeeeee;
    padding:10px;	
        
}
#aside{
    line-height:30px;
    background-color:whitesmoke;
    width:350px;
    float:right;
    padding:10px;
    text-decoration-color: white;
}
            #footer {
    background-color:black;
    color:white;
    clear:both;
    text-align:center;
   padding:5px;	 	 
}</style>

    </head>

    <body background='car10.jpg'>

    <div id="header">
    <h1>CAR STATUS TRACKING SYSTEM</h1>
    <a href="index.html">
  <img src="small-button-home.jpg" alt="HTML home" style="width:42px;height:42px;border:0">
</div>

        <%

        String pwd=request.getParameter("psw"); 

 //out.println(userid+"$$$"+pwd);

 Class.forName("com.mysql.jdbc.Driver"); 

 java.sql.Connection con = 

DriverManager.getConnection("jdbc:mysql://localhost:3306/csts1","root",""); 

        try{

            String userid=request.getParameter("userid");

         

 //session.putValue("userid",userid); 

 

 Statement st= con.createStatement(); 

 ResultSet rs=st.executeQuery("select * from admin where name='"+userid+"'"); 

 if(rs.next())
     { 

 if(rs.getString(2).equals(pwd)) 
     

 { 

 
   %>
   
    <center>
 <div id="section">
     <ul>    <li type="square"><center><form action="newadmin.html"><input type="submit" value="CHANGE ADMIN"></form><br><br></center>
         <li type="square"> <center> <form action=""><input type="submit" value="ENTER NEW ITEM"></form><br><br></center>
         <li type="square">  <center><form action=""><input type="submit"value="REPORT ANALYSIS"></form><br></center></ul>
     <br> <!--<a href='admin login.html'> LOG OUT</a>-->
 </div></center>
   
<% }}
 else 

 { 
%> <center>
<div id="section">
    <p><center><b><br><br><br><br><br><br><br><a href="admin login.html">PLEASE TRY AGAIN INVALID PASSWORD</a></b></center></p>
</div></center><%
 } 

 

 con.close();

}

        catch(Exception e)

                       {out.println("error "+e.getMessage());}

        con.close();

%>



    </body>

</html>