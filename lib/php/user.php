<?php
class Usuario{
        // Connection
    private $conn;
    // Table
    private $db_table = "s_usuario";
    // Columns
    public $usuario_id;
    public $u_id_persona;
    public $u_nivel;
    public $u_login;
    public $u_contrasenia;
    public $u_user_oper;

        // Db connection
    public function __construct($db){
        $this->conn = $db;
    }
        // GET ALL
    public function getAllUsers($offset,$rows, $str_nombres,$str_ci){

        //echo "obj nom: $str_nombres, ci: $str_ci offse: $offset row: $rows";
        $str_where="";

        if(!empty($str_nombres ) ){
            $str_where = " WHERE nombres LIKE '%$str_nombres%' ";
        }
    
        if(!empty($str_ci ) and !empty($str_where) ){
            $str_where .= " AND  ci LIKE '%$str_ci%' ";
        }	
        
        if(!empty($str_ci ) and empty($str_where) ){
            $str_where = " WHERE ci LIKE '%$str_ci%' ";
        }

        $sqlQuery = "SELECT  usuario_id, u_nivel, u_login,  nombres, ci FROM v_usuario $str_where  limit $offset,$rows ";

        //echo "cons: $sqlQuery"; 

        $stmt = $this->conn->prepare($sqlQuery);
        $stmt->execute();
            
        $ClienteArr = array();

        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
            extract($row);
            $e = array(
                "usuario_id" => $usuario_id,
                "u_nivel" => $u_nivel,
                "u_login" => $u_login,
                "nombres" => $nombres,
                "ci" => $ci  
            );
            
            array_push($ClienteArr, $e);
        }

        return $ClienteArr;
    }

    public function getOneUser(){

        $sqlQuery = "SELECT u_id_persona cbx_user_persona,
        u_login txt_user_login,u_contrasenia txt_user_password, u_contrasenia  rpwd 
        FROM s_usuario 
        WHERE usuario_id=".$this->usuario_id;

        //echo "cons: $sqlQuery"; 

        $stmt = $this->conn->prepare($sqlQuery);

        $stmt->execute();
        $row = $stmt->fetch(PDO::FETCH_ASSOC);

        /*
        echo "array: <pre>";
        var_export($row);
        echo "</pre>";  
        */          

        return $row;
    }        

       // GET number of records 
    public function getCountUser($str_nombres,$str_ci){
        //echo "llega obj prop ";
        //echo "obj count nom: $str_nombres, ci: $str_ci";
        $str_where="";
	
        if(!empty($str_nombres ) ){
            $str_where = " WHERE nombres LIKE '%$str_nombres%' ";
        }
    
        if(!empty($str_ci ) and !empty($str_where) ){
            $str_where .= " AND  ci LIKE '%$str_ci%' ";
        }	
        
        if(!empty($str_ci ) and empty($str_where) ){
            $str_where = " WHERE ci LIKE '%$str_ci%' ";
        }

        $sqlQuery = "SELECT count(*) count  FROM v_usuario $str_where";

        //echo "cons: $sqlQuery"; 

        $stmt = $this->conn->prepare($sqlQuery);
        $stmt->execute();
        $row = $stmt->fetch();
        return $row['count'];      

    }        
       
        // CREATE
    public function createUser(){

        try {
            
            $sqlQuery = " INSERT INTO ". $this->db_table ." SET 
             u_id_persona=:ip,u_nivel=1,u_login=:log,u_contrasenia=:con,u_id_usuario=:iu, u_fecha_add=now() ";    

            $stmt = $this->conn->prepare($sqlQuery);
        
            // sanitize
            $this->u_id_persona=htmlspecialchars(strip_tags($this->u_id_persona));
            $this->u_login=htmlspecialchars(strip_tags($this->u_login));
            $this->u_contrasenia=htmlspecialchars(strip_tags($this->u_contrasenia));
            $this->u_user_oper=htmlspecialchars(strip_tags($this->u_user_oper));

            //echo "q: $sqlQuery";
            // bind data
            $stmt->bindParam(":ip", $this->u_id_persona);
            $stmt->bindParam(":log", $this->u_login);
            $stmt->bindParam(":con", $this->u_contrasenia);                               
            $stmt->bindParam(":iu", $this->u_user_oper);    
        
            //echo "sql bind: $sqlQuery";
                    
            if($stmt->execute()){                    
                return true;
            }               
            else {
                throw new Exception("Error ejecutando la consulta: " . implode(" ", $stmt->errorInfo()));
                return false; 
            }
        }catch (Exception $e) {     
                return $e->getMessage();
        }
    }
        
    // UPDATE
    public function updateUser(){ 

        $sqlQuery = "UPDATE ". $this->db_table ." SET u_id_persona= :ip,
        u_nivel= 1, u_login=:log, u_contrasenia=:con, u_id_usuario_mod=:io,u_fecha_mod=now()
        WHERE usuario_id=:iu ";        
    
        $stmt = $this->conn->prepare($sqlQuery);        
    
        $this->u_id_persona=htmlspecialchars(strip_tags($this->u_id_persona));
        $this->u_login=htmlspecialchars(strip_tags($this->u_login));
        $this->u_contrasenia=htmlspecialchars(strip_tags($this->u_contrasenia));
        $this->usuario_id=htmlspecialchars(strip_tags($this->usuario_id));
        $this->u_user_oper=htmlspecialchars(strip_tags($this->u_user_oper));
    
        // bind data
        $stmt->bindParam(":ip", $this->u_id_persona);
        $stmt->bindParam(":log", $this->u_login);
        $stmt->bindParam(":con", $this->u_contrasenia);
        $stmt->bindParam(":iu", $this->usuario_id);
        $stmt->bindParam(":io", $this->u_user_oper);

        /*
        echo " <br>user id ".$this->usuario_id;
        echo " <br>persona ".$this->u_id_persona;
        echo " <br>login ".$this->u_login;
        echo " <br>pwd ".$this->u_contrasenia;
        */

        //echo " <br>q: $sqlQuery";
    
        if($stmt->execute()){
            return true;
        }
        return false;
    }
        // DELETE
    function deleteUser(){
        $sqlQuery = "DELETE FROM " . $this->db_table . " WHERE usuario_id = ?";
        //echo "q: $sqlQuery";
        $stmt = $this->conn->prepare($sqlQuery);
    
        $this->usuario_id=htmlspecialchars(strip_tags($this->usuario_id));
    
        //echo "val: ".$this->persona_codigo;
        $stmt->bindParam(1, $this->usuario_id);
    
        if($stmt->execute()){
            return true;
        }else {
            return false;
        }
    }
    public function verifyLoginUser($str_login,$str_pwd){
        $sqlQuery = "select fn_login('$str_login','$str_pwd') result";       

        //echo "cons: $sqlQuery"; 

        $stmt = $this->conn->prepare($sqlQuery);
        $stmt->execute();
        $row = $stmt->fetch();
        return $row['result'];
    }  
    public function getLoginUser($intUser){

        $sqlQuery = "
            SELECT  CONCAT_WS(\" \",\"Bienvenido usuario\",u_login,\" con nombres\",nombres,\"y ci\",ci) mens
            FROM v_usuario
            WHERE  usuario_id = $intUser
        ";
        

        //echo "cons: $sqlQuery"; 

        $stmt = $this->conn->prepare($sqlQuery);
        $stmt->execute();
        $row = $stmt->fetch();
        return $row['mens'];
    }           

    public function getComboPersona(){   

        $sqlQuery = "SELECT persona_codigo,nombres FROM v_persona order by nombres ";

        //echo "cons: $sqlQuery"; 

        $stmt = $this->conn->prepare($sqlQuery);
        $stmt->execute();
            
        $ClienteArr = array();

        while ($row = $stmt->fetch(PDO:: FETCH_OBJ)){
            array_push($ClienteArr, $row);
             
        }

        $result = json_encode($ClienteArr);
        return $result;
    }    
}
?>