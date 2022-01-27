<?php
// Logging my php to the database Misc
$pdo = new PDO('mysql:host=localhost; port3306; dbname=misc', 'fred', 'zap');

// Errors
$pdo -> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);   
?>