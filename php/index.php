<?php 
mysqli_connect("db", "root", "root", "my_db") or die(mysqli_error());
echo "Connected to MySQL<br />";

// phpinfo();