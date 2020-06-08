<?php 
    require_once 'classes/user.php';

    session_start();
    $user = new User();
    if (isset($_POST['login']))
    {
        $user->loginUser();
    }
    require_once '../vendor/autoload.php';
    $loader = new \Twig\Loader\FilesystemLoader(['./layoutTemplates', './recipeTemplates', './userTemplates']);
    $twig = new \Twig\Environment($loader);
    echo $twig->render('header.twig', ['title' => 'Main Page']);
    if ($_SESSION['userID'])
        echo $twig->render('index.twig');
    else 
        echo $twig->render('formLogin.twig');
    echo $twig->render('footer.twig');
?>