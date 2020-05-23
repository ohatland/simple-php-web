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

    public function newRecipie($recipieName, $userID)
    {
        $sql = "CALL spInsertRecipie($recipieName, $userID)";
        $stmt = $this->connect()->prepare($sql);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function addRecipieText($recipieID, $sequenceNumber, $userID, $recipieText)
    {
        $sql = "CALL spInsertRecipie($recipieID, $sequenceNumber, $userID, $recipieText)";
        $stmt = $this->connect()->prepare($sql);
        $stmt->execute();
    }

    public function addIngredient($recipieID, $sequenceNumber, $userID, $ingredientName, $ammount)
    {
        $sql = "CALL spInsertRecipie($recipieID, $sequenceNumber, $userID, $ingredientName, $ammount)";
        $stmt = $this->connect()->prepare($sql);
        $stmt->execute();
    }

    public function addStep($recipieID, $sequenceNumber, $userID, $stepText)
    {
        $sql = "CALL spInsertRecipie($recipieID, $sequenceNumber, $userID, $stepText)";
        $stmt = $this->connect()->prepare($sql);
        $stmt->execute();
    }

    public function addImage($recipieID, $sequenceNumber, $userID, $imagePath, $imageTitle)
    {
        $sql = "CALL spInsertRecipie($recipieID, $sequenceNumber, $userID, $imagePath, $imageTitle)";
        $stmt = $this->connect()->prepare($sql);
        $stmt->execute();
    }
}