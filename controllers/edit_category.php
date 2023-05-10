<?php
// Require the database connection
require_once 'dbconnect.php';

// Check if the form has been submitted
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Form data
    $id = $_POST['id'];
    $name = $_POST['name'];
    $description = $_POST['description'];

    // SQL statement
    $stmt = $pdo->prepare("UPDATE categories SET name = ?, description = ? WHERE id = ?");

    // Bind the parameters to the statement
    $stmt->bindParam(1, $name);
    $stmt->bindParam(2, $description);
    $stmt->bindParam(3, $id);

    if ($stmt->execute()) {
        //echo "Category updated successfully";
    } else {
        //echo "Error updating category: " . $stmt->errorInfo()[2];
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