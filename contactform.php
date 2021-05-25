<?php

if (isset($_POST['submit'])) {
    $firstname = $_POST['firstname'];
    $lastname = $_POST['lastname'];
    $mailFrom = $_POST['mail'];
    $subject = $_POST['subject'];
    $message = $_POST['message'];

    $mailTo = "andrewmeiners@icloud.com";
    $headers = "From: ".$mailFrom;
    $txt = "You have received an e-mail from ".$firstname."".$lastname.\n\n".$message;

    mail($mailTo, $subject, $txt, $headers);
    header("Location: enter.php?mailsend");
}