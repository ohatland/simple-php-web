<?php

/*
    Example of simple usage in index.php
    
    <?php
        include './classes/db.php';

        $testObj = new DB();
        $testObj->setUsers("Erlend");
        $testObj->getUsers();
    ?>

*/

class DB 
{
    private $host = "db";  // When using docker-compose this needs to be the service name of the db in the docker-compose yml
    private $user = "root";
    private $pwd = "test";
    private $dbName = "testDB";

    protected function connect() 
    {
        $pdo = new PDO("mysql:host=$this->host;dbname=$this->dbName", $this->user, $this->pwd);
        $pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
        return $pdo;
    }

    // Temp test function
    public function getUsers()
    {
        $sql = "SELECT * FROM testTable";
        $stmt = $this->connect()->prepare($sql);
        $stmt->execute();
        while($row = $stmt->fetch())
        {
            echo $row['name'] . '<br>';
        }
    }
    
    // Temp test function
    public function setUsers($name)
    {
        $sql = "INSERT INTO testTable(name) VALUES(?)";
        $stmt = $this->connect()->prepare($sql);
        $stmt->execute([$name]);
    }
}
?>