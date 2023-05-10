<?php
// Require the database connection
require_once 'dbconnect.php';

// Check if the form has been submitted
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Retrieve the form data!
    $category_id = $_POST['category_id'];
    $name = $_POST['name'];
    $photo = $_FILES["photo"]["name"];
    $price = $_POST['price'];

    // SQL statement to check if the product exists :}
    $checkStmt = $pdo->prepare("SELECT COUNT(*) FROM products WHERE name = ?");
    $checkStmt->bindParam(1, $name);
    $checkStmt->execute();

    $productExists = $checkStmt->fetchColumn();

    if ($productExists) {
        //echo "Product already exists";
    } else {
        // SQL statement
        $stmt = $pdo->prepare("INSERT INTO products (category_id, name, photo, price) VALUES (?, ?, ?, ?)");

        // Bind the parameters to the statement
        $stmt->bindParam(1, $category_id);
        $stmt->bindParam(2, $name);
        $stmt->bindParam(3, $photo);
        $stmt->bindParam(4, $price);

        if ($stmt->execute()) {
            //echo "Product added successfully";
        } else {
            //echo "Error adding product: " . $stmt->errorInfo()[2];
        }
    }
}
//Photo Upload
$target_dir = "../uploads/";
$target_file = $target_dir . basename($_FILES["photo"]["name"]);
$uploadOk = 1;
$imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));

// Check if image file is a actual image or fake image :D
if (isset($_POST["submit"])) {
    $check = getimagesize($_FILES["photo"]["tmp_name"]);
    if ($check !== false) {
        //echo "File is an image - " . $check["mime"] . ".";
        $uploadOk = 1;
    } else {
        //echo "File is not an image.";
        $uploadOk = 0;
    }
}

// Check if file already exists
if (file_exists($target_file)) {
    //echo "Sorry, file already exists.";
    $uploadOk = 0;
}

// Check file size
if ($_FILES["photo"]["size"] > 500000) {
    //echo "Sorry, your file is too large.";
    $uploadOk = 0;
}

// Allow certain file formats
if (
    $imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
    && $imageFileType != "gif"
) {
    //echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
    $uploadOk = 0;
}

// Check if $uploadOk is set to 0 by an error
if ($uploadOk == 0) {
    //echo "Sorry, your file was not uploaded.";
} else {
    if (move_uploaded_file($_FILES["photo"]["tmp_name"], $target_file)) {
        //echo "The file " . htmlspecialchars(basename($_FILES["photo"]["name"])) . " has been uploaded.";
    } else {
        //echo "Sorry, there was an error uploading your file.";
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