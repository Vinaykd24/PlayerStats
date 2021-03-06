<?php
/*$servername = "localhost:3306";
$username = "root";
$password = "";
$dbname = "team_performance";*/

/*$conn = mysql_connect("localhost:3306", "root", "");

if (!$conn) {
    echo "Unable to connect to DB: " . mysql_error();
    exit;
}

if (!mysql_select_db("team_performance")) {
    echo "Unable to select mydbname: " . mysql_error();
    exit;
}*/

include 'dbconnection.php';

$query = "SELECT a.pname,a.photo,a.batting_style,a.bowling_style,a.role, b.*, COUNT(c.man_of_match) as MOM\n"
    . "FROM player_info a\n"
    . " INNER JOIN\n"
    . " (\n"
    . " SELECT match_info.player_id, SUM(match_info.runs_scored) as runScored, MAX(match_info.runs_scored) as high_runs, SUM(match_info.runs_scored >= 50 and match_info.runs_scored < 100) as fifties,SUM(match_info.runs_scored >= 100) as centuries, SUM(match_info.wickets_taken) as wickets, MAX(match_info.wickets_taken) as high_wkts, SUM(match_info.wickets_taken >= 3 and match_info.wickets_taken < 5 ) as threewkts, SUM(match_info.wickets_taken >= 5) as fivewkts,COUNT(match_info.match_id) as matches, COUNT(match_info.innings_played='Y' or null) as inn, COUNT(match_info.not_out='Y' or null) as notOut, SUM(match_info.balls_faced) as ballfaced, TRUNCATE(SUM(match_info.overs),2) as overs, SUM(match_info.maidens) as maidens, SUM(match_info.runs_given) as runsGiven FROM `match_info` WHERE 1 GROUP BY `player_id`\n"
    . " ) b ON b.player_id = a.player_id\n"
    . "LEFT JOIN\n"
    . "`match`c ON b.player_id = c.man_of_match GROUP BY b.player_id\n"
    . "";
$result = mysql_query($query);
while($row = mysql_fetch_assoc($result)){
  $array[] = $row; }
  $playerInfo = json_encode($array);
  header('Content-Type: application/json');
  echo $playerInfo;

?>
