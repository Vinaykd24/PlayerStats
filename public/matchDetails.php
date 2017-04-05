<?php
include 'dbconnection.php';

$sql = "SELECT a.*, b.tournament_name\n"
    . "FROM `match` a \n"
    . "LEFT JOIN tournament_info b ON a.tour_id = b.tour_id";

$result = mysql_query($sql);
while($row = mysql_fetch_assoc($result)){
  $array[] = $row; }
  $matchInfo = json_encode($array);
  header('Content-Type: application/json');
  echo $matchInfo;

?>