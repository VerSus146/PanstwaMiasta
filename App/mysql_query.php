<?php

include 'mysql_config.php';

$data;

$query;

$nickname;

$type;

if(isset($_POST['type'])){
    $type = $_POST['type'];
}

if(isset($_POST['data'])){
    $data = $_POST['data'];
}

if(isset($_POST['query'])){
    $query = $_POST['query'];
}

if(isset($_POST['nickname'])){
    $nickname = $_POST['nickname'];
}

$correct=false;

$result;

$con = mysqli_connect($host, $db_user, $db_password, $db_name) or die("Błąd podczas łączenia do bazy");

mysqli_query($con, "SET NAMES utf8");

switch($query){
    case "Kolor":
        $result=mysqli_query($con,"SELECT kolory FROM kolory") or die("Zle zapytanie o kolory");
        $query = "kolory";
        break;
        
    case "Państwo":
        $result=mysqli_query($con,"SELECT Panstwa FROM panstwa") or die ("Zle zapytanie o panstwo");
        $query = "Panstwa";
        break;

    case "Miasto":
        $result=mysqli_query($con,"SELECT Miasta FROM miasta") or die ("Zle zapytanie o miasto");
        $query = "Miasta";
        break;

    case "Submit":
        $result=mysqli_query($con,"INSERT INTO `highscores`(`points`, `nickname`) VALUES ($data,'$nickname')") or die ("Zly Input do highscores");
        break;
}
if($type != "submit"){
    while ($row = $result->fetch_assoc()) {
        if(isset($row[$query]) & $type == "compare"){
            if($data == $row[$query]){
                $correct=true;
                break;
            } 
        } else if(isset($row[$query]) & $type == "get_data"){
            echo $row[$query].",";
        }
    }
}

if($correct==true && $type == "compare"){
    echo strlen($data);
} else if($type == "compare") {
    echo strlen($data)*(-1);
}

$con->close();

?>