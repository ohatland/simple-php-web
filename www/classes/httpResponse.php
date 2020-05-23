<?php

function getRecipe($loader, $recipe)
{
    $twig = new \Twig\Environment($loader);

    
    echo $twig->render('head.twig', ['title' => 'Main Page']);
    echo $twig->render('header.twig');

    $dbResult = $recipe->getAllRecipes();
    echo $twig->render('showAllRecipes.twig', ['recipes' => $dbResult]);
    
    // content goes here
    $dbResult = $recipe->getRecipe($_GET['recipe']);
    
    echo $twig->render('showRecipe.twig', ['recipes' => $dbResult]);
    
    echo $twig->render('footer.twig');
    exit();
}


function postrecipe()
{
    // TODO
}

?>