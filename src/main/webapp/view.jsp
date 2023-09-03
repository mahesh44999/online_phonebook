<%@page import="dao.ContactDao"%>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
      <%
          String email = (String)session.getAttribute("email");
          if(email!=null){
        	  ResultSet rs = ContactDao.getAllContacts(email);
     
      %>
         <table border="2px">
          <tr><th>Id</th>
              <th>Name</th>
              <th>Phone</th>
              <th>EDIT</th>
              <th>DELETE</th>
          </tr>
      <% 
          while(rs.next()){
      %>  
             <tr>
               <td><%=rs.getInt(1) %>
               <td><%=rs.getString(2) %></td>
               <td><%=rs.getString(3) %>
               <td><a href="editcontact?id=<%=rs.getInt(1)%>">edit</a></td>
               <td><a href="deletecontact?id=<%=rs.getInt(1)%>">delete</a></td>
               
            </tr>
      <%
            } 
         }else{
    	   response.sendRedirect("login.jsp");
         }  
      %>
        </table>
</body>
</html>