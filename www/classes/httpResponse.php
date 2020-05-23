<?php

function getRecipie($loader, $recipie)
{
    $twig = new \Twig\Environment($loader);

    
    echo $twig->render('head.twig', ['title' => 'Main Page']);
    echo $twig->render('header.twig');

    $dbResult = $recipie->getAllRecipies();
    echo $twig->render('showAll.twig', ['recipies' => $dbResult]);
    
    // content goes here
    $dbResult = $recipie->getRecipie($_GET['recipie']);
    
    echo $twig->render('showRecipie.twig', ['recipies' => $dbResult]);
    
    echo $twig->render('footer.twig');
    exit();
}


function postRecipie()
{
    // TODO
}

?>