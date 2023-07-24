<?php
class Conexion { 
    public static function conectar(){

        define ('servdor','localhost');
        define ('nombredb','pasteleria');
        define ('usuario', 'root');
        define ('password','' );       
$opciones = array (PDO::MYSQL_ATTR_INIT_COMANDO=>'SET NAMES utf8');
try{
    $conexion = new PDO("mysql:host=".servidor.";dbname=".nombredb,usario,password,$opciones);
    return $conexion;
}
catch (Exception $e){
    die("el error de conexion es". $e->getMesage());
}
}
}
?>