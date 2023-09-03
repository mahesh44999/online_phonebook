<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
     <form action="savesignin" method="post">
        <pre>
        NAME         : <input type="text" name="name"><br>
        PHONE        : <input type="text" name="phone"><br>
        EMAIL        : <input type="email" name="email"><br>
        PASSWORD     : <input type="password" name="pwd1"><br>
        CNF PASSWORD : <input type="password" name="pwd2"><br>
                       <input type="submit" value="signin">
      
        </pre>
                     <a href="login.jsp">go to login</a>
     </form>
</body>
</html>