<?php

try {
  $conn = new PDO('mysql:host=localhost;dbname=citycykler', 'root', 'root');
} catch (PDOException $e) {
  die("Error: " . $e->getMessage());
}
