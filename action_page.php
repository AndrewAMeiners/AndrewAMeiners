<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Enter Page</title>
    <link rel="stylesheet" href="styles.css"/>
</head>
<body class="enter__form">

    You
    <?php echo htmlspecialchars($_POST['firstname']); ?><br>
    <?php echo htmlspecialchars($_POST['lastname']); ?><br>
    Has Been Entered . . . 

    <script href="app.js"></script>
</body>
</html>