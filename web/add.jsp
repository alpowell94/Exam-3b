<%-- 
    Document   : add
    Created on : May 4, 2017, 2:41:20 PM
    Author     : Al
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add A Customer</title>
    </head>
    <body>
        <h1>Add A Customer</h1>
        
        <form name="addForm" action="addCustomer" method="get">
            
            <table>
            <label>First Name:</label>
            <input type="text" name="first" value="" />
            <br>
            <label>Last Name:</label>
            <input type="text" name="last" value="" />
            <br>
            <label>Address 1:</label>
            <input type="text" name="addr1" value="" />
            <br>
            <label>Address 2:</label>
            <input type="text" name="addr2" value="" />
            <br>
            <label>City:</label>
            <input type="text" name="city" value="" />
            <br>
            <label>State:</label>
            <input type="text" name="state" value="" />
            <br>
            <br>
            <label>Zip:</label>
            <input type="text" name="zip" value="" />
            <br>
            <br>
            <label>E-Mail:</label>
            <input type="text" name="email" value="" />
            <br>
            </table>
            <input type="submit" name="submit" value="Submit" />
    
    
        </form>
    
    
    </body>
    
    
    
</html>
