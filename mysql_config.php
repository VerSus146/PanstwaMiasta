<?php

    $host = 'localhost';
	$db_user = 'root';
	$db_password = '';
    $db_name = 'panstwamiasta';

    
    $con = new mysqli($host, $db_user, $db_password, $db_name);

    if ($con->connect_error) {

        die ('Zjebalo sie' . $con->connect_errno);

    } else {

        $sql_query = 'SELECT ID from panstwamiasta WHERE ID="1"';
        $con->query($sql_query);

    }
        $con->close();
?>