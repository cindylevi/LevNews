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

    $stmt = $pdo -> prepare('SELECT * FROM noticia');

    $stmt -> execute();

    $noticias = $stmt -> fetchAll(PDO::FETCH_OBJ);

    echo json_encode($noticias);
    
?>