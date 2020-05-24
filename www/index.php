<?php 
    require_once '../vendor/autoload.php';
    $loader = new \Twig\Loader\FilesystemLoader(['./layoutTemplates', './recipeTemplates', './userTemplates']);
    

    
    $twig = new \Twig\Environment($loader);
    echo $twig->render('head.twig', ['title' => 'Main Page']);
    
    echo $twig->render('header.twig');
    echo $twig->render('formNewUser.twig');
    echo $twig->render('footer.twig');

?>