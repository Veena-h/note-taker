<%@page import="javax.persistence.Query"%>
<%@page import="com.entity.form_entity"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.connection.connection"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>navigation</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<style type="text/css">
.nav-item{

    margin-left: 3.5rem;

}
.nav-item:hover{
		
		border-bottom: 2px solid red;
}

</style>
</head>
<body style="background-color:#4f6e89;">
<nav class=" navbar navbar-expand-lg bg-dark  mt-0"  >
  <div class="container-fluid bg-dark rounded  " style="margin-top: -7px; padding: 15px">
      <img class="card-img-top mt-3 ml-5  mx-auto"  style="height: 2.5rem;width: 2.5rem;" src="note.png" alt="Card image cap">
  
    <a class="navbar-brand text-success" href="#">NoteTaker</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse " id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0  ">
        <li class="nav-item" >
              <img class="card-img-top mt-3 ml-5  mx-auto"  style="height: 2.5rem;width: 2.5rem;" src="add.png" alt="Card image cap">
        
          <a class="nav-link active text-light" aria-current="page" href="add-notes.jsp">Add Notes</a>
        </li>
        <li class="nav-item text-light">
              <img class="card-img-top mt-3 ml-5  mx-auto"  style="height: 2.5rem;width: 2.5rem;" src="show.png" alt="Card image cap">
        
          <a class="nav-link text-light" href="show.jsp">Show-Notes</a>
        </li>
        <!--  --><!-- li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle text-light" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Dropdown
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li> -->
        <!-- <li class="nav-item">
          <a class="nav-link disabled" aria-disabled="true">Disabled</a>
        </li> -->
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
<!-- navbar end -->

<!-- card start -->

<h1 class="text-center text-light">Notes</h1>

<%-- <%
     try{
       Session ss=connection.getFactory().openSession();
       Query q=ss.createQuery("from form_entity");
       List <form_entity> l=q.getResultList();
       for(form_entity f:l)
       {
    	   
      
  
%>

  
<div class="card mt-5 mx-auto" style="width: 46rem;">



  <div class="card-body ">
   
    <h5 class="card-title"><%=f.getNotetitle() %></h5>
    <p class="card-text"><%=f.getContend() %></p>
    
    <p class="card-text"><%=f.getDate() %></p>
    <a href="update.jsp?id=<%=f.getId() %>" class="btn btn-primary ">Update</a>
     <a href="delete_ser?id=<%=f.getId() %>" class="btn btn-danger ">Delete</a>
    <hr>
  </div>
  
  
</div>
<!-- ard ends -->

<%
       ss.close();
  }
  
     }catch(Exception e)
{
    	 e.printStackTrace();
    	 }
  
  %> --%>
  
  
  <%
     try{
       Session ss=connection.getFactory().openSession();
       Query q=ss.createQuery("from form_entity");
       List <form_entity> l=q.getResultList();
       for(form_entity f:l)
       {
    	   
      
  
%>
  
  
  <div class="card  mt-5 mx-auto" style="width: 50rem;">
  
<!--   <img class="card-img-top mt-3 ml-5  mx-auto"  style="height: 5rem;width: 5rem" src="note.png" alt="Card image cap">
 -->  <div class="card-body">
    <h5 class="card-title"><%=f.getNotetitle() %></h5>
   <p class="card-text"><%=f.getContend() %></p>
       <p class="card-text text-info"><%=f.getDate() %></p>
   
    
   
	<a href="update.jsp?id=<%=f.getId() %>" class="btn btn-primary ">Update</a>
     <a href="delete_ser?id=<%=f.getId() %>" class="btn btn-danger ">Delete</a>
      
      </div>
      
      <hr>
</div>
<%
       ss.close();
  }
  
     }catch(Exception e)
{
    	 e.printStackTrace();
    	 }
  
  %>
</body>
</html>