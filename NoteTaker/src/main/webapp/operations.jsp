<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.connection.connection"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="com.entity.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

</head>
<body>

   <table>
   
     <thead>
     
       <th>Name</th>
       <th>Gender</th>
       <th>Address</th>
        <th>Class</th>
       <th>Email</th>
       <th>Phone</th>
       <th>PRN</th>
       <th>Img</th>
     
     </thead>
     <tbody>
  <%    try{
    	
    	SessionFactory s=connection.getFactory();
    	Session ss=s.openSession();
    	Query q=ss.createQuery("from form_entity");
    	List<form_entity> l=q.list();
    	
    	for(form_entity f:l)
    	{
    
    %>     
    
    
      <td><%=f.get %></td>
    
    
   
    
    <%
     
    ss.close();
        	}}
    catch(Exception e)
    {
    	e.printStackTrace();
    }



    %>
    
    
    %> 
     
     </tbody>
   
   
   </table>


</body>
</html>