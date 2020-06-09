<?php
    include 'header.php';
    require_once 'classes/recipe.php';

    $recipe = new Recipe();
    
    $dbResult = $recipe->getUserRecipes();

    echo $twig->render('showAllRecipes.twig', ['recipes' => $dbResult]);

    if (isset($_GET['recipe']))
    {
        $recipeResult = $recipe->getRecipe($_GET['recipe']);
        echo $twig->render('showRecipe.twig', ['recipes' => $recipeResult]);
    }
    include 'footer.php';

?>