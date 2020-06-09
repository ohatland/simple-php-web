<?php 
    include 'header.php';

    if (isset($_POST['signOut']))
        $user->signOut();
    if ($_SESSION['userID'])
        echo $twig->render('index.twig');
    else 
        echo $twig->render('formLogin.twig');
    
    include 'footer.php';
?>