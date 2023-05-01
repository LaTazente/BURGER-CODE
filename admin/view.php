<?php
    require 'database.php';
    if(!empty($_GET['id'])){
        $id=checkInput()
    }

    $db = Database::connect();
    $statement = $db->prepare('select item.id,item.name,item.price,item.description,categorie.name as category 
                            from item inner join categorie on item.category = categorie.id
                            where item.id = ?');
    $statement-<execute(array($id))
    function checkInput($data){
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }
?>