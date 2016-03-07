<%@ page import ="java.sql.*" %>

 <%@ page import ="javax.sql.*" %>  

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>JSP Page</title>

    </head>

    <body bgcolor="orange">

    

        <%
            

        String slotno=request.getParameter("slotno"); 

 //out.println(userid+"$$$"+pwd);

 Class.forName("com.mysql.jdbc.Driver"); 

 java.sql.Connection con = 

DriverManager.getConnection("jdbc:mysql://localhost:3306/csts","root",""); 

   Statement statement = con.createStatement() ;
   
   
           Statement statement2 = con.createStatement() ;
    
   
            ResultSet rs = 
                statement.executeQuery("select * from cardetail where slotno='"+slotno+"'");
   
           String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="";
           float a1,a2,a3,a4,a5,a6,a7,a8;int c1=0,c2=0,c3=0,c4=0,c5=0,c6=0,c7=0,c8=0;
           while(rs.next())
           {
         
s1=rs.getString(3);
s2=rs.getString(4);
s3=rs.getString(5);
s4=rs.getString(6);
s5=rs.getString(7);
s6=rs.getString(8);
s7=rs.getString(9);
s8=rs.getString(10);
a1=Float.parseFloat(s1);
a2=Float.parseFloat(s2);
a3=Float.parseFloat(s3);
a4=Float.parseFloat(s4);
a5=Float.parseFloat(s5);
a6=Float.parseFloat(s6);
a7=Float.parseFloat(s7);
a8=Float.parseFloat(s8);

        
if(!(a1>=0.4&&a1<=5.0))
    c1++;
if(!(a2>=1.0&&a2<=5.0))
c2++;
   if(!(a3>30.0&&a3<=200.0))
       c3++;
   if(!(a4>=14.0&&a4<=25.0))
       c4++;
   if(!(a5>=70.0&&a5<=120.0))
       c5++;
   if(!(a6>=400.0&&a6<=600.0))
       c6++;
   if(!(a7>=1200.0&&a7<=1600.0))
       c7++;
   if(!(a8>=21&&a8<=81))
       c8++;
   }
          out.println(c1);
           out.println(c2);
          out.println(c3);
          out.println(c4);
          out.println(c5);
          out.println(c6);
          out.println(c7);
          out.println(c8);
          
%>
    %>
    <a href="dealerclosing.html"> search completed</a>
        
        
        
    
  </body>

</html>

