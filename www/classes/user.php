<?php
require_once 'db.php';

class User extends DB
{
    function loginUser()
    {
        $sql = "CALL sp_GetUser(?)";
        $stmt = $this->connect()->prepare($sql);
        $stmt->execute([$_POST['userName']]);
        $result = $stmt->fetchAll();

        if (password_verify($_POST['userPassword'], $result[0]['userPassword']))
        {
            $_SESSION['userID'] = $result[0]['ID'];
            $_SESSION['firstName'] = $result[0]['firstName'];
            $_SESSION['lastName'] = $result[0]['lastName'];
            $_SESSION['mail'] = $result[0]['mail'];
        }        
    }

    function signOut()
    {
        $_SESSION['userID'] = NULL;
        $_SESSION['firstName'] = NULL;
        $_SESSION['lastName'] = NULL;
        $_SESSION['mail'] = NULL;
    }

    function newUser()
    {
        // TODO Check to see if user exists
        $sql = "CALL sp_InsertUser(?, ?, ?, ?)";
        $stmt = $this->connect()->prepare($sql);
        $stmt->execute([$_POST['firstName'], $_POST['lastName'], $_POST['userMail'], password_hash($_POST['password'], PASSWORD_DEFAULT)]);        
    }
    
    function getUserId()
    {
        return $userID;
    }
}

?>