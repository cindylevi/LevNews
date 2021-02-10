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

    if(isset($_GET['ID']) && $_GET['ID'] != ''){
        $stmt = $pdo -> prepare('UPDATE noticia SET Titulo = :titulo, Copete = :copete, Imagen = :imagen, Texto = :texto, Autor = :autor WHERE ID = :id');
        $stmt -> bindParam(':id', $_GET['ID']);

    }else{

        $stmt = $pdo -> prepare('INSERT INTO noticia(Titulo, Copete, Imagen, Texto, Autor) VALUES (:titulo, :copete, :imagen, :texto, :autor)');
    }

    $titulo = $_GET['titulo'];
    $copete = $_GET['copete'];
    $imagen = $_GET['imagen'];
    $texto = $_GET['texto'];
    $autor = $_GET['autor'];

    $stmt -> bindParam(':titulo',$titulo);
    
    $stmt -> bindParam(':copete',$copete);
    
    $stmt -> bindParam(':imagen',$imagen);
    
    $stmt -> bindParam(':texto',$texto);
    
    $stmt -> bindParam(':autor',$autor);

    $stmt -> execute();

    header('location: index.html');
?>