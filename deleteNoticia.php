<?php

        $host = 'localhost';
        $user = 'root';
        $pass = '';
        $db = 'diario';
        try{
            $pdo = new PDO("mysql:host={$host};dbname={$db}", $user,$pass);
        }
        catch(PDOException $ex){
            echo $ex -> getMessage();
        }

        $stmt = $pdo -> prepare('DELETE FROM noticia WHERE ID = :id');
        
        $stmt -> bindParam(':id',$_GET['ID']);

        $stmt -> execute();

        $stmt -> fetch();

        header('location: index.html');
    
?>