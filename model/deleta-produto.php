<?php

require_once "config.php";

$con = new PDO("mysql:dbname=".DB_BASE.";host=".DB_HOST.";charset=utf8", DB_USER, DB_SENHA);

$id = $_GET['id'];

$sql = "DELETE FROM produtos WHERE id = $id";

$res = $con->exec($sql);

if ($res === false){
    echo "Ocorreu um erro ao inserir o produto...";
}else{
    echo "Ok";
}
header("Location: /produtos.html")
?>