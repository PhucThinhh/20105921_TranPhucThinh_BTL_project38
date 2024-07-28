<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*, dao.UserDAO, model.User" %>
<%@ page import="org.apache.commons.codec.digest.DigestUtils" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Process</title>
</head>
<body>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    // Password hashing (optional, should match the registration process)
    String hashedPassword = DigestUtils.sha256Hex(password);

    UserDAO userDAO = new UserDAO();
    User user = userDAO.loginUser(username, hashedPassword);

    if (user != null) {
        // Successful login
        session.setAttribute("user", user);
        response.sendRedirect("index.jsp");
    } else {
        // Failed login
        out.println("Invalid username or password. <a href='login.jsp'>Try again</a>");
    }
%>
</body>
</html>
