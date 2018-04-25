<?php

require_once "config.php";

$con = new PDO("mysql:dbname=".DB_BASE.";host=".DB_HOST.";charset=utf8", DB_USER, DB_SENHA);

$produto = $_REQUEST["produto"];
$marca = $_REQUEST["marca"];
$categoria = $_REQUEST["categoria"];
$sexo = $_REQUEST["sexo"];
$preco = $_REQUEST["preco"];

$sql = "INSERT INTO produtos
    (nome, marca, categoria, sexo, preco)
    VALUES
    ('$produto', '$marca','$categoria','$sexo','$preco')";

$res = $con->exec($sql);

if ($res === false){
    echo "Ocorreu um erro ao inserir o produto...";
}else{
    echo "Ok";
}

?>