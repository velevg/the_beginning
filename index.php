<?php
// Path to smarty
require_once('libs/Smarty.class.php');

// NBew Smarty object
$smarty = new Smarty();

// Template directories
$smarty->setTemplateDir('templates/');
$smarty->setCompileDir('cache/');

// Assign variables
$smarty->assign('title', 'smartyApp');
$smarty->assign('content', 'Welcome and <i>Enjoy! :)</i>');

// Path to db
require_once './controllers/dbconnect.php';

// Query th tables and fetch the results
$stmt = $pdo->query('SELECT * FROM categories');
$categories = $stmt->fetchAll(PDO::FETCH_ASSOC);
$smarty->assign('categories', $categories);

$stmt = $pdo->query('SELECT * FROM products');
$products = $stmt->fetchAll(PDO::FETCH_ASSOC);
$smarty->assign('products', $products);

// Display the template
$smarty->display('./templates/index.tpl');
// Display the categories
//foreach ($categories as $category) {
//  echo $category['name'] . '<br>';
//}
//
//// Display the products
//foreach ($products as $product) {
//  echo $product['name'];
//  echo $product['photo'];
//  echo $product['price'] . '<br>';
//}

