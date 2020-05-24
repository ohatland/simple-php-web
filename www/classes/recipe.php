<?php

include 'user.php';

class recipe
{
    public function getAllrecipes()
    {
        $sql = "CALL sp_SelectAllRecipes()";
        $stmt = $this->connect()->prepare($sql);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function getrecipe($recipeID)
    {
        $sql = "CALL sp_SelectRecipe(?)";
        $stmt = $this->connect()->prepare($sql);
        $stmt->execute([$recipeID]);
        return $stmt->fetchAll();
    }

    public function newrecipe($recipeName, $userID)
    {
        $sql = "CALL spInsertRecipe(?, ?)";
        $stmt = $this->connect()->prepare($sql);
        $stmt->execute([$recipeName, $userID]);
        return $stmt->fetchAll();
    }

    public function addrecipeText($recipeID, $sequenceNumber, $userID, $recipeText)
    {
        $sql = "CALL spInsertRecipeText(?, ?, ?, ?)";
        $stmt = $this->connect()->prepare($sql);
        $stmt->execute([$recipeID, $sequenceNumber, $userID, $recipeText]);
    }

    public function addIngredient($recipeID, $sequenceNumber, $userID, $ingredientName, $ammount)
    {
        $sql = "CALL spInsertRecipeIngredient(?, ?, ?, ?, ?)";
        $stmt = $this->connect()->prepare($sql);
        $stmt->execute([$recipeID, $sequenceNumber, $userID, $ingredientName, $ammount]);
    }

    public function addStep($recipeID, $sequenceNumber, $userID, $stepText)
    {
        $sql = "CALL spInsertRecipeStep(?, ?, ?, ?)";
        $stmt = $this->connect()->prepare($sql);
        $stmt->execute([$recipeID, $sequenceNumber, $userID, $stepText]);
    }

    public function addImage($recipeID, $sequenceNumber, $userID, $imagePath, $imageTitle)
    {
        $sql = "CALL spInsertRecipeImage(?, ?, ?, ?, ?)";
        $stmt = $this->connect()->prepare($sql);
        $stmt->execute([$recipeID, $sequenceNumber, $userID, $imagePath, $imageTitle]);
    }
}