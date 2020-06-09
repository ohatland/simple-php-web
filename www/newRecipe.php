<?php
    include 'header.php';
    require_once 'classes/recipe.php';

    $recipie = new Recipe();
    
    // get working recipe
    $dbResult = $recipie->getRecipe($_GET['recipe']);
    echo $twig->render('showRecipe.twig', ['recipes' => $dbResult]);
    
    
    
    // option on adding new element
    echo $twig->render('showAllButtonCreateForm.twig');
    
    if (isset($_POST['image']))
    {
        echo $twig->render('formRecipeImage.twig');
    }

    elseif (isset($_POST['ingredient']))
    {
        echo $twig->render('formRecipeIngredient.twig');
    }

    elseif (isset($_POST['step']))
    {
        echo $twig->render('formRecipeStep.twig');
    }

    elseif (isset($_POST['text']))
    {
        echo $twig->render('formRecipeText.twig');
    }
    
    include 'footer.php';
?>