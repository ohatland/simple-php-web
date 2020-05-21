<?php 
    include './classes/recipie.php';
    $recipie = new Recipie();
    
    require_once '../vendor/autoload.php';
    $loader = new \Twig\Loader\FilesystemLoader(['./layoutTemplates', './recipieTemplates']);

    if( $_GET["recipie"]) {
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

?>
<html>
   <body>
   
      <form action = "<?php $_PHP_SELF ?>" method = "GET">
         Recipie number: <input type = "number" name = "recipie" />
         <input type = "submit" />
      </form>
      
   </body>
</html>