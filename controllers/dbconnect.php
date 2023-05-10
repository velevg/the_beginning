<?php
$dsn = "mysql:host=127.0.0.1;dbname=smartyapp";

$username = "root";
$password = null;

try {
    $pdo = new PDO($dsn, $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    //echo "Connected successfully" . '<br>';
} catch (PDOException $e) {
    //echo "Connection failed: " . $e->getMessage();
}
