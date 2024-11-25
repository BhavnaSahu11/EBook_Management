<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.DB.DBConnect" %>
    <%@ page import="java.sql.Connection" %>
     <%@ page import="com.DAO.BookDAOimpl" %>
      <%@ page import="com.entity.BookDtls" %>
    <%@ page import="java.util.List" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ebook: Index</title>
<%@ include file="all_component/allCss.jsp" %>
<style type="text/css">
.back-img{
//background:url("img/bimg.jpg");
background:url("img/bookbackground.webp");
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
<%
BookDAOimpl dao2=new BookDAOimpl(DBConnect.getConn());
List<BookDtls> list2=dao2.getRecentBooks();
for(BookDtls b:list2){
	%>
	<div class="col-md-3">
<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="book/<%=b.getPhotoName() %>"  style="width:150px; height:200px" class="img-thumblin">
<p><%=b.getBookName() %></p>
<p><%=b.getAuthor() %></p>
<p>
<%
if(b.getBookCategory().equals("Old")){
	%>
	Categories:<%=b.getBookCategory()%></p>
	<div class="row justify-content-center" >
	
    <a href="view_books.jsp?bid=<%=b.getBookId()%>" class="btn btn-success btn-sm">View Details</a>

<a href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice() %> <i class="fas fa-rupee-sign"></i></a>
</div>
	<%
	}else{
	%>
	Categories:<%=b.getBookCategory()%></p>
		<div class="row">
<a href="" class="btn btn-danger btn-sm ml-5">Add Cart</a>
<a href="view_books.jsp?bid=<%=b.getBookId()%>" class="btn btn-success btn-sm ml-1">View Details</a>
<a href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice() %> <i class="fas fa-rupee-sign"></i></a>
</div>
	<%
	}
%>


</div>

</div>
</div>
<% 
}
%>

</div>


<div class="text-center mt-1">
<a href="all_recent_books.jsp" class="btn btn-danger btn-sm text-white">View All</a>

</div>
</div>
<!-- End Recent Book -->

<hr>

<!-- start New Book -->
<div class="container-fluid"  style= "background-color:#f7f7f7;">
<h3 class="text-center">New Book</h3>
<div class="row">

<%
BookDAOimpl dao=new BookDAOimpl(DBConnect.getConn());
List<BookDtls> list=dao.getNewBook();
for(BookDtls b: list){
	%>
	
<div class="col-md-3">
	<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="book/<%=b.getPhotoName() %>"  style="width:150px; height:200px" class="img-thumblin">

<p><%=b.getBookName()%></p>
<p><%=b.getAuthor()%></p>
<p>Categories:<%=b.getBookCategory() %></p>
<div class="row">
<a href="" class="btn btn-danger btn-sm ml-5">Add Cart</a>
<a href="view_books.jsp?bid=<%=b.getBookId()%>" class="btn btn-success btn-sm ml-1">View Details</a>
<a href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice() %>  <i class="fas fa-rupee-sign"></i></a>
</div>
</div>

</div>
</div>
	<%

}
%>





</div>

<div class="text-center mt-1">
<a href="all_new_books.jsp" class="btn btn-danger btn-sm text-white">View All</a>

</div>
</div>
<!-- End New Book -->
<hr>
<!-- start Old Book -->
<div class="container-fluid"  style= "background-color:#f7f7f7;">
<h3 class="text-center">Old Book</h3>
<div class="row">

<%
BookDAOimpl dao3=new BookDAOimpl(DBConnect.getConn());
List<BookDtls> list3=dao.getOldBooks();
for(BookDtls b: list3){
	%>
	
<div class="col-md-3">
	<div class="card crd-ho">
<div class="card-body text-center">
<img alt="" src="book/<%=b.getPhotoName() %>"  style="width:150px; height:200px" class="img-thumblin">

<p><%=b.getBookName()%></p>
<p><%=b.getAuthor()%></p>
<p>Categories:<%=b.getBookCategory() %></p>
<div class="row justify-content-center">

<a href="view_books.jsp?bid=<%=b.getBookId()%>" class="btn btn-success btn-sm ml">View Details</a>
<a href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice() %>  <i class="fas fa-rupee-sign"></i></a>
</div>
</div>

</div>
</div>
	<%

}
%>




</div>

<div class="text-center mt-1">
<a href="all_old_books.jsp" class="btn btn-danger btn-sm text-white">View All</a>

</div>
</div>
<!-- End Old Book -->

<%@include file="all_component/footer.jsp" %>
</body>
</html>