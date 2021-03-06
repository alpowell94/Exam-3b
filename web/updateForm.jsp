

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Customers"%>
<% Customers customers = (Customers) request.getAttribute("customers"); %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/stylesheet.css">
        <title>Update A Customer</title>
    </head>
    <body>
               <div class="wrap">

            <%@ include file="includes/header.jsp" %>


            <%@ include file="includes/menu.jsp" %>

            <div class="main">
        <h1>Update A Customer</h1>
        <form name="updateForm" action="updateCustomer" method="get">
           
            <table class="update">
                <tr>
                     <td class="right">Customer ID:</td>
                     <td><input type="text" name="id" value="<%= customers.getCustID() %>" readonly /></td>
                </tr>
                 <tr>
                     <td class="right">First Name:</td>
                     <td><input type="text" name="first" value="<%= customers.getFirstName() %>" /></td>
                </tr>
                <tr>
                     <td class="right">Last Name:</td>
                     <td><input type="text" name="last" value="<%= customers.getLastName() %>" /></td>
                </tr>
                <tr>
                     <td class="right">Address 1:</td>
                     <td><input type="text" name="addr1" value="<%= customers.getAddr1() %>" /></td>
                </tr>
                <tr>
                     <td class="right">Address 2:</td>
                     <td><input type="text" name="addr2" value="<%= customers.getAddr2() %>" /></td>
                </tr>
                <tr>
                     <td class="right">City:</td>
                     <td><input type="text" name="city" value="<%= customers.getCity() %>" /></td>
                </tr>
                <tr>
                     <td class="right">State:</td>
                     <td><input type="text" name="state" value="<%= customers.getState() %>" /></td>
                </tr>
                <tr>
                     <td class="right">Zip Code:</td>
                     <td><input type="text" name="zip" value="<%= customers.getZip() %>" /></td>
                </tr>
                 <tr>
                     <td class="right">E-Mail Address:</td>
                     <td><input type="text" name="email" value="<%= customers.getEmailAddr() %>" /></td>
                </tr>
            </table>
                <br>
                <input type="reset" name="reset" value="Clear" />
                <input type="submit" name="submit" value="Update" />
          </div>

            <%@ include file="includes/footer.jsp" %>
        </div>
            
    </body>
</html>
