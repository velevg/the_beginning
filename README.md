# smartyApp
:)
How to setup:
extract in htdocs
change the folder name to "smartyApp" if it's "smartyApp-master" (should be by default)!
run XAMPP > Apache + MySQL

in localhost/phpmyadmin/
query the following:
CREATE DATABASE smartyapp

CREATE TABLE categories (
  id INT(11) NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  PRIMARY KEY (id)
);

CREATE TABLE products (
  id INT(11) NOT NULL AUTO_INCREMENT,
  category_id INT(11) NOT NULL,
  name VARCHAR(255) NOT NULL,
  photo VARCHAR(255) NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE CASCADE
);

address:
localhost/../smartyApp/
