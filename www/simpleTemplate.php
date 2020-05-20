<?php 
    require_once '/var/www/vendor/autoload.php';

    $loader = new \Twig\Loader\FilesystemLoader('/var/www/html/testTemplates');
    $twig = new \Twig\Environment($loader);

    $template = $twig->load('simpleTemplate.twig');

    echo $template->render(['title' => 'My first Twig', 'name' => 'Erlend']);
?>