<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Checkout</title>
</head>
<body>
    <h1>Checkout</h1>
    
    <form action="checkout" method="post">
        <input type="hidden"  name="id" required><br>

        <label for="email">Email:</label>

        <input type="text" id="email" name="email" required><br>

        <label for="fullname">Full Name:</label>
        <input type="text" id="fullname" name="fullname" required><br>

        <label for="phone">Phone Number:</label>
        <input type="text" id="phone" name="phone" required><br>

        <!-- Display Cart Information -->
        <input type="hidden" name="date" required><br>

        
        <input type="hidden" name="total" required><br>

        <input type="submit" value="Finish">
    </form>
</body>
</html>
