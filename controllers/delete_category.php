<?php
// Require the database connection
require_once 'dbconnect.php';
// SQL statement to fetch all categories
$stmt = $pdo->query("SELECT * FROM categories");

//while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
//    echo '<tr>';
//    echo '<td>' . $row['id'] . '</td>';
//    echo '<td>' . $row['name'] . '</td>';
//    echo '<td>' . $row['description'] . '</td>';
//    echo '<td><form method="POST" action="delete_category.php"><input type="hidden" name="id" value="' . $row['id'] . '"><button type="submit">Delete</button></form></td>';
//    echo '</tr>';
//}

// Check if the form has been submitted
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Retrieve the category ID from the form data
    $id = $_POST['id'];

    // SQL statement to delete the category with the given ID
    $stmt = $pdo->prepare("DELETE FROM categories WHERE id = ?");

    // Bind the ID parameter to the statement
    $stmt->bindParam(1, $id);

    if ($stmt->execute()) {
        //echo "Category deleted successfully";
    } else {
        //echo "Error deleting category: " . $stmt->errorInfo()[2];
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