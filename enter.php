<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Enter php</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>

    <form action="contactform.php" method="POST" class="enter__form">
        <h1 class="enter__form">Enter Here</h1>
        <p>First Name: <input type="text" name="firstname" value="" placeholder="First name"></p><br>
        <p>Last Name: <input type="text" name="lastname" value="" placeholder="Last name"></p><br>
        <p>Email: <input type="text" name="mail" value="" placeholder="Your e-mail"><br>
        <p>Subject: <input type="text" name="subject" value="" placeholder="Subject"><br>
        <textarea name="message" id="enter__form" placeholder="Message"></textarea><br>
        <input type="submit" name="submit" value="Submit"><br>
    </form>

</body>
</html>