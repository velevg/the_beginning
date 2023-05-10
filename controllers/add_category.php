  <?php
  // Require the database connection
  require_once 'dbconnect.php';

  // Check if the form has been submitted
  if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Retrieve the form data
    $name = $_POST['name'];
    $description = $_POST['description'];

    // SQL statement to check if the category exists :}
    $checkStmt = $pdo->prepare("SELECT COUNT(*) FROM categories WHERE name = ?");
    $checkStmt->bindParam(1, $name);
    $checkStmt->execute();

    $categoryExists = $checkStmt->fetchColumn();

    if ($categoryExists) {
      //echo "Category already exists";
    } else {
      // Category does not exist, proceeds with adding the category :} yey
      // SQL statement
      $stmt = $pdo->prepare("INSERT INTO categories (name, description) VALUES (?, ?)");

      // Bind the parameters to the statement
      $stmt->bindParam(1, $name);
      $stmt->bindParam(2, $description);

      // if statement is exec.
      if ($stmt->execute()) {
        //echo "Category added successfully";
      } else {
        //echo "Error adding category: " . $stmt->errorInfo()[2];
      }
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