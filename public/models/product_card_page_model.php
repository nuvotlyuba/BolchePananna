<?php
require_once "core.php";
//Запрос из базы данных
if (isset($_GET['good_id'])) {
    $query = "SELECT * FROM goods WHERE good_id=" . $_GET['good_id'];
 
    $mysqli = connect_db();
 
 
    $current_good = query_db_one($mysqli, $query);
    // var_dump($current_course);
    // print_r($current_good);
 } else echo " ooooo  no no no no no no no";
 if($current_good['name_size'] == 'XS'){
 
 }
?>