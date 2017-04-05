<?php
$conn = mysql_connect("localhost:3306", "root", "");

if (!$conn) {
    echo "Unable to connect to DB: " . mysql_error();
    exit;
}

if (!mysql_select_db("team_performance")) {
    echo "Unable to select mydbname: " . mysql_error();
    exit;
}
?>