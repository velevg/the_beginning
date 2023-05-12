<?php
require_once 'dbconnect.php';
require_once '../TCPDF/tcpdf.php';

// Query to select all products
$query = "SELECT * FROM products";
$stmt = $pdo->prepare($query);
$stmt->execute();

// Create new PDF instance
$pdf = new TCPDF('P', 'mm', 'A4', true, 'UTF-8');

// Set document information
$pdf->SetCreator('Your Name');
$pdf->SetAuthor('Your Name');
$pdf->SetTitle('Products');

// Add a page
$pdf->AddPage();

// Set font
$pdf->SetFont('dejavusans', '', 12);

// Write header row
$pdf->Cell(20, 10, 'id', 1, 0, 'C');
$pdf->Cell(30, 10, 'category_id', 1, 0, 'C');
$pdf->Cell(50, 10, 'name', 1, 0, 'C');
$pdf->Cell(50, 10, 'photo', 1, 0, 'C');
$pdf->Cell(30, 10, 'price', 1, 1, 'C');

// Loop through results and write each row
while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
    $pdf->Cell(20, 10, $row['id'], 1, 0, 'C');
    $pdf->Cell(30, 10, $row['category_id'], 1, 0, 'C');
    $pdf->Cell(50, 10, $row['name'], 1, 0, 'C');
    $pdf->Cell(50, 10, $row['photo'], 1, 0, 'C');
    $pdf->Cell(30, 10, $row['price'], 1, 1, 'C');
}

// Output the PDF as a file
$pdf->Output('products.pdf', 'D');
