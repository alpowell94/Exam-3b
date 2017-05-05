
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <% String table = (String) request.getAttribute("table"); %>
    <body>
        <h1>Customers</h1>
        <th>Customer ID</th>
    <th>First Name</th>
    <th>Last Name</th>
    <th>Address 1</th>
    <th>Address 2</th>
    <th>City</th>
    <th>State</th>
    <th>Zip Code</th>
    <th>E-Mail</th>
    
        <%= table %>
        
        
        <br><br>
        
        <a href ="add">Add A New Customer</a>
        <br><br>
        <a href="search.jsp">Search Customers</a>
        
    </body>
</html>
