<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*, dao.UserDAO, model.User" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register Process</title>
</head>
<body>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    // Hash the password for security (optional, but recommended)
    String hashedPassword = org.apache.commons.codec.digest.DigestUtils.sha256Hex(password);

    User newUser = new User(username, hashedPassword);
    UserDAO userDAO = new UserDAO();

    if (userDAO.registerUser(newUser)) {
        out.println("<h1>Thank you for registering, " + username + "!</h1>");
        out.println("<a href='login.jsp'>Login now</a>");
    } else {
        out.println("<h1>Registration failed. Username might already be taken.</h1>");
        out.println("<a href='register.jsp'>Try again</a>");
    }
%>
</body>
</html>
