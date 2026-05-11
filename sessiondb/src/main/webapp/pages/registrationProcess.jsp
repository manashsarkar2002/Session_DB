<%@ page language="java" import="java.sql.*" %>
<%
    Connection con;
    Statement stmt;
    try
    {
       String driver="oracle.jdbc.driver.OracleDriver";
 	   Class.forName(driver);
 	   String url="jdbc:oracle:thin:@localhost:1521:xe";
 	   String userid_db="system";
 	   String password_db="manash";
 	   con= DriverManager.getConnection(url,userid_db,password_db);
 	   stmt=con.createStatement();
 	   
 	   String userid=request.getParameter("userid");
 	   String uname=request.getParameter("uname");
 	   String password=request.getParameter("password");
 	   
 	   String query="INSERT INTO USERS(USERID,UNAME,PASSWORD)VALUES('"+userid+"','"+uname+"','"+password+"')";
 	   int rn= stmt.executeUpdate(query);
 	   if(rn>0)
 	   {
 		   session.setAttribute("uname",uname);
 		   response.sendRedirect("success.jsp");
 	   }
 	   else
 		   response.sendRedirect("registration.jsp");
 	   con.close();
 	   
    }
    catch (Exception e)
    {
    	out.print(e);
    }
%>
