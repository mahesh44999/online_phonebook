<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="home.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.css" integrity="sha512-FA9cIbtlP61W0PRtX36P6CGRy0vZs0C2Uw26Q1cMmj3xwhftftymr0sj8/YeezDnRwL9wtWw8ZwtCiTDXlXGjQ==" crossorigin="anonymous" referrerpolicy="no-referrer">
   
</head>
<body>
    <%
      String email = (String)session.getAttribute("email");
      if(email!=null){
    %>
    <div id="j">
        <h1 align="center" class="border:100px 20px 100px">ONLINE PHONEBOOK</h1>
    </div>
    <div id="b">
        <nav style="font-size:25px;" >
            <span><a href="add.jsp"><i class="fa-solid fa-phone" align="center"></i>Add Contact</a></span>  
            <span><a href="view.jsp" ><i class="fa-solid fa-list"></i>View Contacts</a></span>
            <span><a href="search.jsp"><i class="fa-solid fa-magnifying-glass"></i>Search</a></span>
            <span><a href="logout"><i class="fa-solid fa-circle-xmark"></i>Logout</a></span>     
        </nav>
    </div>
    <div>
     <img alt="" src="https://img.freepik.com/free-vector/library-online-cocept-layout-chart-print_1284-6709.jpg?w=740&t=st=1689766081~exp=1689766681~hmac=38b628d8348a085825a96b6b75c47b30570e9f0528127af7147fc35efaca2dc1">
    </div>
        
    <% } %>
</body>
</html>