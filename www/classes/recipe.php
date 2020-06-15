<?php

require_once 'db.php';

// Class that can manipulate recipe data.
class Recipe extends DB
{
    public function getUserRecipes()
    {
        $sql = "CALL sp_SelectUserRecipes(?)";
        $stmt = $this->connect()->prepare($sql);
        $stmt->execute([$_SESSION['userID']]);
        return $stmt->fetchAll();
    }

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
        $this->increaseSequenceNumbers($sequenceNumber);
        $sql = "CALL spInsertRecipeText(?, ?, ?, ?)";
        $stmt = $this->connect()->prepare($sql);
        $stmt->execute([$recipeID, $sequenceNumber, $userID, $recipeText]);
    }

    public function addIngredient($recipeID, $sequenceNumber, $userID, $ingredientName, $ammount)
    {
        $this->increaseSequenceNumbers($recipeID, $sequenceNumber);
        $sql = "CALL spInsertRecipeIngredient(?, ?, ?, ?, ?)";
        $stmt = $this->connect()->prepare($sql);
        $stmt->execute([$recipeID, $sequenceNumber, $userID, $ingredientName, $ammount]);
    }

    public function addStep($recipeID, $sequenceNumber, $userID, $stepText)
    {
        $this->increaseSequenceNumbers($sequenceNumber);
        $sql = "CALL spInsertRecipeStep(?, ?, ?, ?)";
        $stmt = $this->connect()->prepare($sql);
        $stmt->execute([$recipeID, $sequenceNumber, $userID, $stepText]);
    }

    public function addImage($recipeID, $sequenceNumber, $userID, $imagePath, $imageTitle)
    {   
        $this->increaseSequenceNumbers($sequenceNumber);
        $sql = "CALL spInsertRecipeImage(?, ?, ?, ?, ?)";
        $stmt = $this->connect()->prepare($sql);
        $stmt->execute([$recipeID, $sequenceNumber, $userID, $imagePath, $imageTitle]);
    }

    public function updateRecipeText($sequenceNumber, $recipeID)
    {
        $sql = "CALL sp_updateRecipeText(?, ?, ?)";
        $stmt = $this->connect()->prepare($sql);
        $stmt->execute([$recipeID, $sequenceNumber, $_POST['recipeText']]);
    }

    public function updateIngredient($sequenceNumber, $recipeID)
    {
        $sql = "CALL sp_updateRecipeIngredient(?, ?, ?, ?)";
        $stmt = $this->connect()->prepare($sql);
        $stmt->execute([$recipeID, $sequenceNumber, $_POST['recipeIngredient'], $_POST['recipeIngredientAmmount']]);
    }

    public function updateStep($sequenceNumber, $recipeID)
    {
        $sql = "CALL sp_updateRecipeStep(?, ?, ?)";
        $stmt = $this->connect()->prepare($sql);
        $stmt->execute([$recipeID, $sequenceNumber, $_POST['recipeStep']]);
    }

    public function updateImage($sequenceNumber, $recipeID)
    {
        $sql = "CALL sp_updateRecipeImage(?, ?, ?, ?)";
        $stmt = $this->connect()->prepare($sql);
        $stmt->execute([$recipeID, $sequenceNumber, $_POST['recipeImagePath'], $_POST['recipeImageTitle']]);
    }

    public function deleteSequence($sequenceNumber, $recipeID)
    {
        $sql = "CALL sp_deleteRecipeSequence(?, ?)";
        $stmt = $this->connect()->prepare($sql);
        $stmt->execute([$recipeID, $sequenceNumber]);
    }

    public function deleteRecipe($recipeID)
    {
        $sql = "CALL sp_deleteRecipe(?)";
        $stmt = $this->connect()->prepare($sql);
        $stmt->execute([$recipeID]);
    }

    public function increaseSequenceNumbers($recipeID, $sequenceNumber)
    {
        $sql = "CALL sp_updateRecipeText(?, ?)";
        $stmt = $this->connect()->prepare($sql);
        $stmt->execute([$recipeID, $sequenceNumber]);
        $result = $stmt->fetchAll();
        $sql = "CALL sp_updateSequenceNumber(?, ?)";
        $stmt = $this->connect()->prepare($sql);
        $newSequencenumber = $sequenceNumber;
        foreach ($result as $key => $value) 
        {
            $newSequencenumber += 1;
            $stmt->execute([$value, $newSequencenumber]);
        }
    }
}