<?php
include 'db.php';

class User extends DB
{
    function loginUser()
    {
        $userMail = $_POST['userName'];
        $password = hashPassword($_POST['userPassword']);
        // TODO make stored procedure
        $sql = "CALL sp_LoginUser(?, ?)";
        $stmt = $this->connect()->prepare($sql);
        $stmt->execute([$userMail, $password]);
        $result = $stmt->fetchAll();
        $_SESSION['userID'] = $result['ID'];
    }

    function newUser()
    {
        // TODO Check to see if user exists
        $sql = "CALL sp_InsertUser(?, ?, ?, ?)";
        $stmt = $this->connect()-prepare($sql);
        $stmt->execute([$_POST['firstName'], $_POST['lastName'], $_POST['userMail'], hashPassword($_POST['password'])]);        
    }
    
    private function hashPassword($passwordInn)
    {
        return password_hash($passwordInn, PASSWORD_DEFAULT);
    }
}

?>