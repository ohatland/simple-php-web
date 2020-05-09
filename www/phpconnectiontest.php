<?php
$serverName = "localhost";
$connectionInfo = array( "Database"=>"test", "UID"=>"sa", "PWD"=>"Your_password123");
$conn = sqlsrv_connect( $serverName, $connectionInfo);

if( $conn ) {
     echo "Connection established.<br />";
}else{
     echo "Connection could not be established.<br />";
     die( print_r( sqlsrv_errors(), true));
}
?>