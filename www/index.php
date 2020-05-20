<?php 
    require_once '/var/www/vendor/autoload.php';

    $loader = new \Twig\Loader\FilesystemLoader(['/var/www/html/layoutTemplates', '/var/www/html/recipieTemplates']);
    $twig = new \Twig\Environment($loader);

    
    echo $twig->render('head.twig', ['title' => 'Main Page']);
    echo $twig->render('header.twig');

    // content goes here
    
    echo $twig->render('footer.twig');

?>