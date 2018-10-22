<?php

include 'mysql_config.php';

$data = $_POST['data'];

$query = $_POST['query'];


$correct=false;

$result;

$con = mysqli_connect($host, $db_user, $db_password, $db_name) or die("Błąd podczas łączenia do bazy");

mysqli_query($con, "SET NAMES utf8");

switch($query){
    case "Kolor":
        $result=mysqli_query($con,"SELECT kolory FROM kolory") or die("Zle zapytanie o kolory");
        break;
        
    case "Państwo":
        $result=mysqli_query($con,"SELECT Panstwa FROM panstwa") or die ("Zle zapytanie o panstwo");
        break;
}

while ($row = $result->fetch_assoc()) {
    if($data == $row['Panstwa']){
        $correct=true;
        break;
    }
}

if($correct==true){
    echo "correct";
} else {
    echo "wrong";
}

$con->close();

?>