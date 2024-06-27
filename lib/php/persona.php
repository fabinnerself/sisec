<?php
    class Persona{
        // Connection
        private $conn;
        // Table
        private $db_table = "t_persona";
        // Columns
        public $persona_codigo;
        public $persona_primer_nombre;
        public $persona_segundo_nombre;   
        public $persona_primer_apellido;  
        public $persona_segundo_apellido; 
        public $persona_ci;
        public $titulo;
        public $p_fecha_nacimiento;
        public $p_user_oper;

        // Db connection
        public function __construct($db){
            $this->conn = $db;
        }
        // GET ALL
        public function getAllPersonas($offset,$rows, $str_nombres,$str_ci){

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

            $sqlQuery = "SELECT  persona_codigo,nombres,ci, fecha_nacimiento FROM v_persona $str_where  limit $offset,$rows ";

            //echo "cons: $sqlQuery"; 

            $stmt = $this->conn->prepare($sqlQuery);
            $stmt->execute();
                
            $ClienteArr = array();
    
            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
                extract($row);
                $e = array(
                    "persona_codigo" => $persona_codigo,
                    "nombres" => $nombres,
                    "ci" => $ci,
                    "fecha_nacimiento" => $fecha_nacimiento 
                );
                
                array_push($ClienteArr, $e);
            }


            return $ClienteArr;
        }
        public function getOnePersona(){

            $sqlQuery = "SELECT  persona_primer_nombre txt_persona_Primer_Nombre,
            COALESCE(persona_segundo_nombre,'') txt_persona_Segundo_Nombre,
            persona_primer_apellido txt_persona_Paterno,
            COALESCE(persona_segundo_apellido ,'') txt_persona_Materno,
            COALESCE(persona_ci,'') txt_persona_Carnet,COALESCE(titulo,'') cbx_persona_titulo,
            COALESCE(date_format(p_fecha_nacimiento,'%m/%d/%Y'),'') dte_persona_fecha_nacimiento ,
            COALESCE(date_format(p_fecha_nacimiento,'%m/%d/%Y'),'') txt_aux_fecha 
            FROM ". $this->db_table ." WHERE persona_codigo= ".$this->persona_codigo;

            /*
            COALESCE(date_format(p_fecha_nacimiento,'%d-%m-%Y'),'') dte_persona_fecha_nacimiento ,
            COALESCE(date_format(p_fecha_nacimiento,'%d-%m-%Y'),'') txt_aux_fecha 
            */

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
    public function getCountPersonas($str_nombres,$str_ci){
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

        $sqlQuery = "SELECT count(*) count  FROM v_persona $str_where";

        //echo "cons: $sqlQuery"; 

        $stmt = $this->conn->prepare($sqlQuery);
        $stmt->execute();
        $row = $stmt->fetch();
        return $row['count'];      

    }        
       
        // CREATE
        public function createPerson(){

            try {
               
                $sqlQuery = " INSERT INTO ". $this->db_table ." SET 
                persona_primer_nombre = :persona_primer_nombre,persona_segundo_nombre = :persona_segundo_nombre,
                persona_primer_apellido = :persona_primer_apellido,persona_segundo_apellido = :persona_segundo_apellido,
                persona_ci = :persona_ci,titulo = :titulo,p_fecha_nacimiento = :p_fecha_nacimiento,p_user_add=:uo, p_fecha_add=now() ";    

                $stmt = $this->conn->prepare($sqlQuery);
            
                // sanitize
                $this->persona_primer_nombre=htmlspecialchars(strip_tags($this->persona_primer_nombre));
                $this->persona_segundo_nombre=htmlspecialchars(strip_tags($this->persona_segundo_nombre));
                $this->persona_primer_apellido=htmlspecialchars(strip_tags($this->persona_primer_apellido));
                $this->persona_segundo_apellido=htmlspecialchars(strip_tags($this->persona_segundo_apellido));
                $this->persona_ci=htmlspecialchars(strip_tags($this->persona_ci));
                $this->titulo=htmlspecialchars(strip_tags($this->titulo));                
                $this->p_fecha_nacimiento = !empty($this->p_fecha_nacimiento) ? htmlspecialchars(strip_tags($this->p_fecha_nacimiento)) : null;
                $this->p_user_oper=htmlspecialchars(strip_tags($this->p_user_oper));

                //echo "q: $sqlQuery";
                // bind data
                $stmt->bindParam(":persona_primer_nombre", $this->persona_primer_nombre);
                $stmt->bindParam(":persona_segundo_nombre", $this->persona_segundo_nombre);
                $stmt->bindParam(":persona_primer_apellido", $this->persona_primer_apellido);
                $stmt->bindParam(":persona_segundo_apellido", $this->persona_segundo_apellido);
                $stmt->bindParam(":persona_ci", $this->persona_ci);
                $stmt->bindParam(":titulo",$this->titulo);
                $stmt->bindParam(":p_fecha_nacimiento", $this->p_fecha_nacimiento);                               
                $stmt->bindParam(":uo", $this->p_user_oper);
            
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
        public function updatePersona(){ 

            $sqlQuery = "UPDATE ". $this->db_table ."
                        SET persona_primer_nombre=:pn,persona_segundo_nombre=:sn,
                        persona_primer_apellido=:pa,persona_segundo_apellido=:sa,
                        persona_ci=:ci,titulo=:tit,p_fecha_nacimiento=:fn,
                        p_user_mod=:uo,p_fecha_mod=now()
                        WHERE persona_codigo=:id ";                        
        
            $stmt = $this->conn->prepare($sqlQuery);
        
            $this->persona_primer_nombre=htmlspecialchars(strip_tags($this->persona_primer_nombre));
            $this->persona_segundo_nombre=htmlspecialchars(strip_tags($this->persona_segundo_nombre));
            $this->persona_primer_apellido=htmlspecialchars(strip_tags($this->persona_primer_apellido));
            $this->persona_segundo_apellido=htmlspecialchars(strip_tags($this->persona_segundo_apellido));
            $this->persona_ci=htmlspecialchars(strip_tags($this->persona_ci));
            $this->p_fecha_nacimiento=htmlspecialchars(strip_tags($this->p_fecha_nacimiento));
            $this->persona_codigo=htmlspecialchars(strip_tags($this->persona_codigo));
            $this->titulo=htmlspecialchars(strip_tags($this->titulo));
            $this->p_user_oper=htmlspecialchars(strip_tags($this->p_user_oper));
            //echo " user op: ".$this->p_user_oper; 
        
            // bind data
            $stmt->bindParam(":pn", $this->persona_primer_nombre);
            $stmt->bindParam(":sn", $this->persona_segundo_nombre);
            $stmt->bindParam(":pa", $this->persona_primer_apellido);
            $stmt->bindParam(":sa", $this->persona_segundo_apellido);
            $stmt->bindParam(":ci", $this->persona_ci);
            $stmt->bindParam(":fn", $this->p_fecha_nacimiento);
            $stmt->bindParam(":tit",$this->titulo);
            $stmt->bindParam(":id", $this->persona_codigo);
            $stmt->bindParam(":uo", $this->p_user_oper);
        
            if($stmt->execute()){
               return true;
            }
            return false;
        }
        // DELETE
        function deletePersona(){
            $sqlQuery = "DELETE FROM " . $this->db_table . " WHERE persona_codigo = ?";
            //echo "q: $sqlQuery";
            $stmt = $this->conn->prepare($sqlQuery);
        
            $this->persona_codigo=htmlspecialchars(strip_tags($this->persona_codigo));
        
            //echo "val: ".$this->persona_codigo;
            $stmt->bindParam(1, $this->persona_codigo);
        
            if($stmt->execute()){
               return true;
            }else {
                return false;
            }
        }
    }
?>