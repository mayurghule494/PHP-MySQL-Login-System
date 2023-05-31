<?php
define("DB_SERVER", "db");
define("DB_USERNAME", "root");
define("DB_PASSWORD", "");
define("DB_NAME", "test");

# Connection
$link = mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME);

# Check connection
if (!$link) {
  die("Connection failed: " . mysqli_connect_error());
}
