<?php

    $host = 'localhost';
	$db_user = 'root';
	$db_password = '';
    $db_name = 'panstwamiasta';

    
    $con = new mysqli($host, $db_user, $db_password, $db_name);

    if ($con->connect_error) {

        die ('Zjebalo sie' . $con->connect_errno);

    } else {

        $sql_query = 'SELECT Panstwa from panstwamiasta WHERE ID="1"';
        $result = $con->query($sql_query);
        
        if($result->num_rows > 0) { 
            while ($row = $result->fetch_assoc()){

        echo 'Twoje panstwo: ' . $row['Panstwa'];

        }

    } else {
        echo '0 wyników';
    }
}   
        $con->close();
?>