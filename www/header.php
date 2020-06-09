<?php 
    require_once 'classes/user.php';

    session_start();
    $user = new User();
    require_once '../vendor/autoload.php';
    $loader = new \Twig\Loader\FilesystemLoader(['./layoutTemplates', './recipeTemplates', './userTemplates']);
    $twig = new \Twig\Environment($loader);

    // POST/Redirect/Get designpattern to avoid resubmission of forms
    if(!empty($_POST['userName'] && !empty($_POST['userPassword']))) 
    {
        $user->loginUser();
        if ($_SESSION['userID']) 
        {
            header("Location: /index.php");
            exit;
        }
        else 
            header("Location: /index.php?invalid_login");
    }

    echo $twig->render('header.twig');
?>