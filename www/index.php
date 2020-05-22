<?php 
    include './classes/httpResponse.php';
    include './classes/recipie.php';
    $recipie = new Recipie();
    
    require_once '../vendor/autoload.php';
    $loader = new \Twig\Loader\FilesystemLoader(['./layoutTemplates', './recipieTemplates']);
    

    if( $_GET["recipie"]) {
        // render the selected recipie
        getRecipie($loader, $recipie);
    }

    // else if $_POST
    
    // else
    // Render a overview of available recipies
    $twig = new \Twig\Environment($loader);
    echo $twig->render('head.twig', ['title' => 'Main Page']);
    echo $twig->render('header.twig');
    
    $dbResult = $recipie->getAllRecipies();
    echo $twig->render('showAll.twig', ['recipies' => $dbResult]);
    
    echo $twig->render('footer.twig');


?>