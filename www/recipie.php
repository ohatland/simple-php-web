<?php 
    include './classes/recipie.php';
    $recipie = new Recipie();
    
    require_once '../vendor/autoload.php';
    $loader = new \Twig\Loader\FilesystemLoader(['./layoutTemplates', './recipieTemplates']);
    $twig = new \Twig\Environment($loader);

    
    echo $twig->render('head.twig', ['title' => 'Main Page']);
    echo $twig->render('header.twig');
    
    // content goes here
    $dbResult = $recipie->getRecipie(1);

    echo $twig->render('showRecipie.twig', ['recipies' => $dbResult]);
    
    echo $twig->render('footer.twig');

?>