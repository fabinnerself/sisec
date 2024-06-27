<?php 
    class Database {
        private $host = "localhost";
        private $database_name = "db_sisec";
        private $username = "favian";
        private $password = "Pers.1987$";
        public $conn;

        public function getConnection(){
            $this->conn = null;
            try{
                $this->conn = new PDO("mysql:host=" . $this->host . ";dbname=" . $this->database_name, $this->username, $this->password);
                $this->conn->exec("set names utf8");
                // echo "connected";
            }catch(PDOException $exception){
                echo "La Base de Datos relacionada no pudo ser conectada: " . $exception->getMessage();
            }
            return $this->conn;
        }
    }  
?>