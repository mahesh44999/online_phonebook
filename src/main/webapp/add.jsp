<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="sign.css">
 <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
  />
</head>
<body>
      
    <%
      String email = (String)session.getAttribute("email");
      if(email!=null){
    %>
     <form action="addcontact" method="post" class="animate__animated animate__rotateIn" >
        <fieldset>
            <legend></legend>
            <table>
                <tr>
                    <td><label for="#First">NAME</label></td>
                    <td><input type="text" id="First" placeholder="enter name" name="name"></td>
                </tr>
                <tr>
                    <td><label for="#last">PHONE</label></td>
                    <td><input type="text" id="last" placeholder="enter number" name="phone"></td>
                </tr>
                <tr>
                   <td><input type="email" name="email" value="<%=email%>" hidden="true"></td>
                </tr>

                <tr><td><input type="submit" value="save"></td></tr>
                <tr>
                    <td>Already have a Number /</td>
                    <td><a href="search.jsp">View contact</a></td>
                </tr>
            </table>
        </fieldset>
    </form>
     <%
         }else{
    	   response.sendRedirect("login.jsp");
         } 
     %>
        
    
</body>
</html>