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

        <label for="email">Email:</label>

        <input type="text" id="email" name="email" required><br>

        <label for="fullname">Full Name:</label>
        <input type="text" id="fullname" name="fullname" required><br>

        <label for="phone">Phone Number:</label>
        <input type="text" id="phone" name="phone" required><br>
                <label for="phone">Date:</label>
                <input type="date" id="phone" name="date1" required><br>
        <label for="phone">Promotion:</label>
        <input type="text" id="phone" name="promotion" required><br>
        <!-- Display Cart Information -->
                     
        <input type="submit" value="Finish">
    </form>
</body>
</html>
