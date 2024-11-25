<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="com.DAO.BookDAOimpl" %>
      <%@ page import="com.entity.BookDtls" %>
    <%@ page import="java.util.List" %>
        <%@ page import="com.DB.DBConnect" %>
    <%@ page import="java.sql.Connection" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Recent Books</title>
<%@ include file="all_component/allCss.jsp" %>

<style type="text/css">

.crd-ho:hover{
background-color: #f7f7f7;
}

</style>
</head>
<body>
<%@ include file="all_component/navbara.jsp" %>
<div class="cantainer-fluid">
<div class="row p-3">
<%
BookDAOimpl dao2=new BookDAOimpl(DBConnect.getConn());
List<BookDtls> list2=dao2.getAllRecentBooks();
for(BookDtls b:list2){
	%>
	<div class="col-md-3">
<div class="card crd-ho mt-2">
<div class="card-body text-center">
<img alt="" src="book/<%=b.getPhotoName() %>"  style="width:100px; height:150px" class="img-thumblin">
<p><%=b.getBookName() %></p>
<p><%=b.getAuthor() %></p>
<p>
<%
if(b.getBookCategory().equals("Old")){
	%>
	Categories:<%=b.getBookCategory()%></p>
	<div class="row justify-content-center" >
	
    <a href="" class="btn btn-success btn-sm">View Details</a>

<a href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice() %> <i class="fas fa-rupee-sign"></i></a>
</div>
	<%
	}else{
	%>
	Categories:<%=b.getBookCategory()%></p>
		<div class="row">
<a href="" class="btn btn-danger btn-sm ml-5">Add Cart</a>
<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
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
</div>

</body>
</html>