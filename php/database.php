<?php

class Database 
{
    private static $dbHost = "localhost";
    private static $dbName = "u278308625_wandsHP";
    private static $dbUser = "u278308625_Louise";
    private static $dbPassword = "LouiseBDD951";

    private static $connection = null;

    public static function connect() {
        if(self::$connection == null){
            try {
                self::$connection = new pdo("mysql:host=". self::$dbHost . ";dbname=". self::$dbName , self::$dbUser, self::$dbPassword);
            } catch (PDOException $e){
                die($e->getMessage());
            }
    }
    return self::$connection;
}

    public static function disconnect(){
        self::$connection = null;
    }

}

?>
