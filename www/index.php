<?php 
    include './classes/httpResponse.php';
    include './classes/recipe.php';
    $recipe = new recipe();
    
    require_once '../vendor/autoload.php';
    $loader = new \Twig\Loader\FilesystemLoader(['./layoutTemplates', './recipeTemplates']);
    

    if( $_GET["recipe"]) {
        // render the selected recipe
        getrecipe($loader, $recipe);
    }

    // else if $_POST
    
    // else
    // Render a overview of available recipes
    $twig = new \Twig\Environment($loader);
    echo $twig->render('head.twig', ['title' => 'Main Page']);
    echo $twig->render('header.twig');
    
    $dbResult = $recipe->getAllrecipes();
    echo $twig->render('showAllRecipes.twig', ['recipes' => $dbResult]);
    
    echo $twig->render('footer.twig');

?>