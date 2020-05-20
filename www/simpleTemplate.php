<?php 
    require_once '/var/www/vendor/autoload.php';

    $loader = new \Twig\Loader\FilesystemLoader('/var/www/html/templates');
    $twig = new \Twig\Environment($loader);

    $template = $twig->load('simpleTemplate.html');

    echo $template->render(['title' => 'My first Twig', 'name' => 'Øyvind']);
?>