<?php 
    include './classes/recipiesDB.php';
    $recipiesDB = new recipiesDB();
    
    require_once '../vendor/autoload.php';
    $loader = new \Twig\Loader\FilesystemLoader(['./layoutTemplates', './recipieTemplates']);
    $twig = new \Twig\Environment($loader);

    
    echo $twig->render('head.twig', ['title' => 'Main Page']);
    echo $twig->render('header.twig');
    
    // content goes here
    $dbResult = $recipiesDB->getAllRecipies();
    echo $twig->render('showAll.twig', ['recipies' => $dbResult]);
    
    echo $twig->render('footer.twig');

?>