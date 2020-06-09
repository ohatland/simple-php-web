<?php
    include 'header.php';
    require_once 'classes/recipe.php';

    $recipie = new Recipe();
    
    $dbResult = $recipie->getUserRecipes();

    print_r($dbResult);
    echo $twig->render('showAllRecipes.twig', ['recipies' => $dbResult]);
    include 'footer.php';

?>