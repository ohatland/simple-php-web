<?php
    include 'header.php';
    require_once 'classes/recipe.php';

    $recipie = new Recipe();
    
    $dbResult = $recipie->getUserRecipes();

    echo $twig->render('showAllRecipes.twig', ['recipes' => $dbResult]);
    include 'footer.php';

?>