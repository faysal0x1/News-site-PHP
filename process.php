<?php
// Get form data
$name = $_POST['name'];
$email = $_POST['email'];
$message = $_POST['message'];

// Validate input
if (empty($name) || empty($email) || empty($message) || !filter_var($email, FILTER_VALIDATE_EMAIL)) {
    // If input is invalid, redirect back to form with error message
    header("Location: contact.php?status=error");
    exit;
}

// Connect to database
$host = "localhost";
$username = "root";
$password = "";
$database = "news-site";

$conn = new mysqli($host, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Insert data into table
$sql = "INSERT INTO messages (name, email, message) VALUES ('$name', '$email', '$message')";

if ($conn->query($sql) === TRUE) {
    // If data inserted successfully, send email and redirect back to form with success message
    $to = "recipient@example.com";
    $subject = "New message from $name";
    $body = "From: $name\nEmail: $email\n\n$message";

    if (mail($to, $subject, $body)) {
        header("Location: contact.php?status=success");
    } else {
        header("Location: contact.php?status=email_error");
    }
} else {
    // If data insertion failed, redirect back to form with error message
    header("Location: contact.php?status=db_error");
}

$conn->close();
