<?php 
    require_once 'classes/user.php';
    session_start();
    require_once '../vendor/autoload.php';
    $loader = new \Twig\Loader\FilesystemLoader(['./layoutTemplates', './recipeTemplates', './userTemplates']);
    $user = new User();

    
    $twig = new \Twig\Environment($loader);
    echo $twig->render('header.twig', ['title' => 'Create new user']);
    echo $twig->render('formNewUser.twig');
    echo $twig->render('footer.twig');

    if (isset($_POST['createNewUser']))
        $user->newUser();
        
?>