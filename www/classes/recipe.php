<?php

include 'user.php';

// Class that can manipulate recipe data.
class recipe
{
    public function getAllRecipes()
    {
        $sql = "CALL sp_SelectAllRecipes()";
        $stmt = $this->connect()->prepare($sql);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function getRecipe($recipeID)
    {
        $sql = "CALL sp_SelectRecipe(?)";
        $stmt = $this->connect()->prepare($sql);
        $stmt->execute([$recipeID]);
        return $stmt->fetchAll();
    }

    public function newRecipe($recipeName, $userID)
    {
        $sql = "CALL spInsertRecipe(?, ?)";
        $stmt = $this->connect()->prepare($sql);
        $stmt->execute([$recipeName, $userID]);
        return $stmt->fetchAll();
    }

    public function addRecipeText($recipeID, $sequenceNumber, $userID, $recipeText)
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