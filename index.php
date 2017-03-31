<?php
/*$servername = "localhost:3306";
$username = "root";
$password = "";
$dbname = "team_performance";*/

$conn = mysql_connect("localhost:3306", "root", "");

if (!$conn) {
    echo "Unable to connect to DB: " . mysql_error();
    exit;
}

if (!mysql_select_db("team_performance")) {
    echo "Unable to select mydbname: " . mysql_error();
    exit;
}

$query = "SELECT * FROM player_info";
$result = mysql_query($query);
while($row = mysql_fetch_assoc($result)){
  $array[] = $row; }
  $playerInfo = json_encode($array);
  header('Content-Type: application/json');
  echo $playerInfo;
?>
