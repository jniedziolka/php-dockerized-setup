<?php

$serverName = 'db';
$databaseName = 'db';
$username = 'user';
$password = 'password';

try {
    $conn = new PDO("mysql:host=$serverName;dbname=$databaseName", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Connected successfully";
} catch(PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}
