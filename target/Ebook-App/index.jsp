<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.DB.DBConnect" %>
    <%@ page import="java.sql.Connection" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ebook: Index</title>
<%@ include file="all_component/allCss.jsp" %>
<style type="text/css">
.back-img{
background:url("img/bimg.jpg");
height: 50vh;
width :100%;
background-repeat: no-repeat;
background-size: cover;

}
.crd-ho:hover{
background-color: #f7f7f7;
}

</style>
</head>
<body>

<%@ include file="all_component/navbara.jsp" %>


<div class="container-fluid back-img">

<h2 class="text-center text-danger">Ebook Management System</h2>

</div>



<!-- start Recent Book -->
<div class="container-fluid"  style= "background-color:#f7f7f7;">
<h3 class="text-center">Recent Book</h3>
<div class="row">

<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="book/javab.jpg"  style="width:150px; height:200px" class="img-thumblin">
<p>Java Programming</p>
<p>Balguruswamy</p>
<p>Categories: New</p>
<div class="row">
<a href="" class="btn btn-danger btn-sm ml-5">Add Cart</a>
<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
<a href="" class="btn btn-danger btn-sm ml-1">299</a>
</div>
</div>

</div>
</div>

<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="book/javab.jpg"  style="width:150px; height:200px" class="img-thumblin">
<p>Java Programming</p>
<p>Balguruswamy</p>
<p>Categories: New</p>
<div class="row">
<a href="" class="btn btn-danger btn-sm ml-5">Add Cart</a>
<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
<a href="" class="btn btn-danger btn-sm ml-1">299</a>
</div>
</div>

</div>
</div>

<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="book/javab.jpg"  style="width:150px; height:200px" class="img-thumblin">
<p>Java Programming</p>
<p>Balguruswamy</p>
<p>Categories: New</p>
<div class="row">
<a href="" class="btn btn-danger btn-sm ml-5">Add Cart</a>
<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
<a href="" class="btn btn-danger btn-sm ml-1">299</a>
</div>
</div>

</div>
</div>

<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="book/javab.jpg"  style="width:150px; height:200px" class="img-thumblin">
<p>Java Programming</p>
<p>Balguruswamy</p>
<p>Categories: New</p>
<div class="row">
<a href="" class="btn btn-danger btn-sm ml-5">Add Cart</a>
<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
<a href="" class="btn btn-danger btn-sm ml-1">299</a>
</div>
</div>

</div>
</div>
</div>


<div class="text-center mt-1">
<a href="" class="btn btn-danger btn-sm text-white">View All</a>

</div>
</div>
<!-- End Recent Book -->

<hr>

<!-- start New Book -->
<div class="container-fluid"  style= "background-color:#f7f7f7;">
<h3 class="text-center">New Book</h3>
<div class="row">

<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="book/javab.jpg"  style="width:150px; height:200px" class="img-thumblin">
<p>Java Programming</p>
<p>Balguruswamy</p>
<p>Categories: New</p>
<div class="row">
<a href="" class="btn btn-danger btn-sm ml-5">Add Cart</a>
<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
<a href="" class="btn btn-danger btn-sm ml-1">299</a>
</div>
</div>

</div>
</div>

<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="book/javab.jpg"  style="width:150px; height:200px" class="img-thumblin">
<p>Java Programming</p>
<p>Balguruswamy</p>
<p>Categories: New</p>
<div class="row">
<a href="" class="btn btn-danger btn-sm ml-5">Add Cart</a>
<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
<a href="" class="btn btn-danger btn-sm ml-1">299</a>
</div>
</div>

</div>
</div>

<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="book/javab.jpg"  style="width:150px; height:200px" class="img-thumblin">
<p>Java Programming</p>
<p>Balguruswamy</p>
<p>Categories: New</p>
<div class="row">
<a href="" class="btn btn-danger btn-sm ml-5">Add Cart</a>
<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
<a href="" class="btn btn-danger btn-sm ml-1">299</a>
</div>
</div>

</div>
</div>

<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="book/javab.jpg"  style="width:150px; height:200px" class="img-thumblin">
<p>Java Programming</p>
<p>Balguruswamy</p>
<p>Categories: New</p>
<div class="row">
<a href="" class="btn btn-danger btn-sm ml-5">Add Cart</a>
<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
<a href="" class="btn btn-danger btn-sm ml-1">299</a>
</div>
</div>

</div>
</div>
</div>

<div class="text-center mt-1">
<a href="" class="btn btn-danger btn-sm text-white">View All</a>

</div>
</div>
<!-- End New Book -->
<hr>
<!-- start Old Book -->
<div class="container-fluid"  style= "background-color:#f7f7f7;">
<h3 class="text-center">Old Book</h3>
<div class="row">

<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="book/javab.jpg"  style="width:150px; height:200px" class="img-thumblin">
<p>Java Programming</p>
<p>Balguruswamy</p>
<p>Categories: New</p>
<div class="row">

<a href="" class="btn btn-success btn-sm ml-5">View Details</a>
<a href="" class="btn btn-danger btn-sm ml-1">299</a>
</div>
</div>

</div>
</div>

<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="book/javab.jpg"  style="width:150px; height:200px" class="img-thumblin">
<p>Java Programming</p>
<p>Balguruswamy</p>
<p>Categories: New</p>
<div class="row">

<a href="" class="btn btn-success btn-sm ml-5">View Details</a>
<a href="" class="btn btn-danger btn-sm ml-1">299</a>
</div>
</div>

</div>
</div>

<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="book/javab.jpg"  style="width:150px; height:200px" class="img-thumblin">
<p>Java Programming</p>
<p>Balguruswamy</p>
<p>Categories: New</p>
<div class="row">

<a href="" class="btn btn-success btn-sm ml-5">View Details</a>
<a href="" class="btn btn-danger btn-sm ml-1">299</a>
</div>
</div>

</div>
</div>

<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="book/javab.jpg"  style="width:150px; height:200px" class="img-thumblin">
<p>Java Programming</p>
<p>Balguruswamy</p>
<p>Categories: New</p>
<div class="row">

<a href="" class="btn btn-success btn-sm ml-5">View Details</a>
<a href="" class="btn btn-danger btn-sm ml-1">299</a>
</div>
</div>

</div>
</div>
</div>

<div class="text-center mt-1">
<a href="" class="btn btn-danger btn-sm text-white">View All</a>

</div>
</div>
<!-- End Old Book -->

<%@include file="all_component/footer.jsp" %>
</body>
</html>