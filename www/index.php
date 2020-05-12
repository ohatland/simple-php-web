<?php
    
    include './classes/db.php';
    

    $testObj = new DB();
    $testObj->getUsers();

?>


<?php
/*
$databaseDockername = "db";
$username = "testUser";
$password = "testPassword";
$dbname = "testDB";

// this example uses table testTable with colloms id and name

// PDO statements https://www.php.net/manual/en/class.pdostatement.php

try {
    $conn = new PDO("mysql:host=$databaseDockername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Connected successfully <br>";
    
    $stmt = $conn->prepare("SELECT * FROM testTable");
    $stmt->execute();

    // set the resulting array to numeric 
    $result = $stmt->setFetchMode(PDO::FETCH_NUM);
    
    // for table testTable with colloms id and name
    while ($row = $stmt->fetch()) {
        print $row[0] . " - " . $row[1] . "<br>";
    }

    // Alternative
    
    // set the resulting array to associative 
    // $result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
    
    // for table testTable with colloms id and name
    // while ($row = $stmt->fetch()) {
    //     print $row['id'] . "\t" . $row['name'] . "\n";
    // }
    


} catch(PDOException $e) {
    echo "Error: " . $e->getMessage();
}
$conn = null;
*/
?>
