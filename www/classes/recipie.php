<?php

include 'db.php';

class Recipie extends DB
{
    public function getAllRecipies()
    {
        $sql = "CALL sp_SelectAllRecipies()";
        $stmt = $this->connect()->prepare($sql);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function getRecipie($recipieID)
    {
        $sql = "CALL sp_SelectRecipie($recipieID)";
        $stmt = $this->connect()->prepare($sql);
        $stmt->execute();
        return $stmt->fetchAll();
    }
}