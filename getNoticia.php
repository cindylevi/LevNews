<?php
    function getNoticia($id){
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

        $stmt = $pdo -> prepare('SELECT * FROM noticia WHERE ID = :id');
        
        $stmt -> bindParam(':id',$id);

        $stmt -> setFetchMode(PDO::FETCH_ASSOC);

        $stmt -> execute();

        return $stmt -> fetch();
    }
?>