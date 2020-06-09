<?php 
    include 'header.php';

    echo $twig->render('formNewUser.twig');
    
    if (isset($_POST['createNewUser']))
        $user->newUser();
    
    include 'footer.php';
?>