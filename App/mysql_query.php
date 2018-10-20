<?php

include 'mysql_config.php';

$data = $_POST['data'];

$con = mysqli_connect($host, $db_user, $db_password, $db_name) or die("Błąd podczas łączenia do bazy");

mysqli_query($con, "SET NAMES utf8");

$result=mysqli_query($con,"SELECT Panstwa FROM panstwa");

$correct=false;

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