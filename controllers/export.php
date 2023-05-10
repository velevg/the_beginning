<?php
require_once 'dbconnect.php';

// Query to select all products
$query = "SELECT * FROM products";
$stmt = $pdo->prepare($query);
$stmt->execute();

// Setting headers for file download
header('Content-Type: text/csv');
header('Content-Disposition: attachment; filename="products.csv"');

// Create file handle for writing
$file = fopen('php://output', 'w');

// Write header row
fputcsv($file, ['id', 'category_id', 'name', 'photo', 'price', '','I know its not pdf but its better than nothing :D + You can export it to PDF now :D ']);

// And lets loop through results and write each row
while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
    fputcsv($file, [$row['id'], $row['category_id'], $row['name'], $row['photo'], $row['price']]);
}

fclose($file);
