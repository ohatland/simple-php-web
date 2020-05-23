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
        $sql = "CALL sp_SelectRecipie(?)";
        $stmt = $this->connect()->prepare($sql);
        $stmt->execute([$recipieID]);
        return $stmt->fetchAll();
    }

    public function newRecipie($recipieName, $userID)
    {
        $sql = "CALL spInsertRecipie(?, ?)";
        $stmt = $this->connect()->prepare($sql);
        $stmt->execute([$recipieName, $userID]);
        return $stmt->fetchAll();
    }

    public function addRecipieText($recipieID, $sequenceNumber, $userID, $recipieText)
    {
        $sql = "CALL spInsertRecipieText(?, ?, ?, ?)";
        $stmt = $this->connect()->prepare($sql);
        $stmt->execute([$recipieID, $sequenceNumber, $userID, $recipieText]);
    }

    public function addIngredient($recipieID, $sequenceNumber, $userID, $ingredientName, $ammount)
    {
        $sql = "CALL spInsertIngredient(?, ?, ?, ?, ?)";
        $stmt = $this->connect()->prepare($sql);
        $stmt->execute([$recipieID, $sequenceNumber, $userID, $ingredientName, $ammount]);
    }

    public function addStep($recipieID, $sequenceNumber, $userID, $stepText)
    {
        $sql = "CALL spInsertStep(?, ?, ?, ?)";
        $stmt = $this->connect()->prepare($sql);
        $stmt->execute([$recipieID, $sequenceNumber, $userID, $stepText]);
    }

    public function addImage($recipieID, $sequenceNumber, $userID, $imagePath, $imageTitle)
    {
        $sql = "CALL spInsertImage(?, ?, ?, ?, ?)";
        $stmt = $this->connect()->prepare($sql);
        $stmt->execute([$recipieID, $sequenceNumber, $userID, $imagePath, $imageTitle]);
    }
}