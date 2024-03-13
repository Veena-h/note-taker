<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%-- <%@include file="notetaker.jsp" %>
 --%><link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">


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
        <<!-- input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button> -->
      </form>
    </div>
  </div>
</nav>
<!-- navbar end -->

<form action="addnotes" method="post">

<div class=" mx-auto p-2  container-fluid"  style="width: 100rem; margin-top: 2.5rem">
  <label for="exampleFormControlInput1" class="form-label">Note-Title:</label>
  <input type="text" class="form-control" id="exampleFormControlInput1" name="title" placeholder="enter the note titile" required="required">
</div>



<div class=" mx-auto p-2 container-fluid"    style="width: 100rem;  margin-top: 2.5rem">
  <label for="exampleFormControlTextarea1" class="form-label">Content:</label>
  <textarea  class="form-control" id="exampleFormControlTextarea1" name="context" rows="10" required="required"></textarea>
</div>

<div class=" container-fluid"    style="margin-left: 55rem ; margin-top: 1.5rem">

<button type="submit" class="btn btn-dark">Add</button>

</div>
</form>


</body>
</html>