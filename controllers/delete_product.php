<?php
// Require the database connection
require_once 'dbconnect.php';
// SQL statement to fetch all products
$stmt = $pdo->query("SELECT * FROM products");

//while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
//    echo '<tr>';
//    echo '<td>' . $row['id'] . '</td>';
//    echo '<td>' . $row['category_id'] . '</td>';
//    echo '<td>' . $row['name'] . '</td>';
//    echo '<td>' . $row['photo'] . '</td>';
//    echo '<td>' . $row['price'] . '</td>';
//    echo '<td><form method="POST" action="delete_product.php"><input type="hidden" name="id" value="' . $row['id'] . '"><button type="submit">Delete</button></form></td>';
//    echo '</tr>';
//}

// Check if the product ID has been sent via POST
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Retrieve the product ID
    $id = $_POST['id'];

    // SQL statement
    $stmt = $pdo->prepare("DELETE FROM products WHERE id = ?");

    // Bind the parameter to the statement
    $stmt->bindParam(1, $id);

    if ($stmt->execute()) {
        //echo "Product deleted successfully";
    } else {
        //echo "Error deleting product: " . $stmt->errorInfo()[2];
    }
}
?>
<script>
    function redirectAfterDelay(url, delay) {
        setTimeout(function() {
            window.location.href = url;
        }, delay);
    }
    redirectAfterDelay("http://localhost/smartyProject/smartyApp/", 0001); // :D
</script>