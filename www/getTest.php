<?php 
   include './classes/httpResponse.php';
   include './classes/recipie.php';
   $recipie = new Recipie();
   
   require_once '../vendor/autoload.php';
   $loader = new \Twig\Loader\FilesystemLoader(['./layoutTemplates', './recipieTemplates']);

   if( $_GET["recipie"]) {
      getRecipie($loader, $recipie);
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