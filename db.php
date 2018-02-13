<?php

try {
  $conn = new PDO('mysql:host=localhost;dbname=citycykler;charset=utf8', 'root', 'root');
} catch (PDOException $e) {
  die("Error: " . $e->getMessage());
}
