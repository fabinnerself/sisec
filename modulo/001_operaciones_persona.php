<?php
session_start(); 

if(isset($_SESSION['id_usuario'])){

	if(isset($_REQUEST['oper'])){
		
	//echo "llega";

		include '../lib/php/database.php';
		include '../lib/php/persona.php';

		$database = new Database();
		$db = $database->getConnection();
		$items = new Persona($db);	

		
		switch($_REQUEST['oper']){
	
			case 'persona_listado':
				fn_list_persona($items);
			break;	 
			case 'persona_add':
				fn_persona_adicion($items);
			break;	
			case 'get_data_persona':
				fn_persona_get_data($items);
			break;			
			case 'persona_mod':
				fn_persona_modificacion($items);
			break;				
		
			case 'persona_elim':
				fn_persona_delete($items);
			break;			
				
		
		}
	}
}
 
function fn_list_persona($items){

	$page = isset($_REQUEST['page']) ? intval($_REQUEST['page']) : 1;
	$rows = isset($_REQUEST['rows']) ? intval($_REQUEST['rows']) : 10;
	$offset = ($page-1)*$rows;
	
	$str_nombres	= isset($_REQUEST['prs_nombres']) ? addslashes ($_REQUEST['prs_nombres']) : '';
	$str_ci		 	= isset($_REQUEST['prs_ci']) ? addslashes ($_REQUEST['prs_ci']) : '';	

	//echo "op nom: $str_nombres, ci: $str_ci offset: $offset row: $rows";

	$intCount = $items->getCountPersonas($str_nombres,$str_ci); 
	//echo "count regs: $intCount -"; 
	$arrlistado = $items->getAllPersonas($offset,$rows,$str_nombres,$str_ci);
	
	$result = array();	
	
	$result["total"] = $intCount;	
	$result["rows"] = $arrlistado;

	echo json_encode($result);
}
 
function fn_persona_adicion($items){

	$str_prim_nomb 		= $_REQUEST['txt_persona_Primer_Nombre'];
	$str_seg_nomb 		= $_REQUEST['txt_persona_Segundo_Nombre'];
	$str_paterno 		= $_REQUEST['txt_persona_Paterno'];
	$str_materno 		= $_REQUEST['txt_persona_Materno'];
	$str_ci	 			= $_REQUEST['txt_persona_Carnet'];
	$dte_fecha_nacim	= date( 'Y-m-d',strtotime($_REQUEST['dte_persona_fecha_nacimiento'])); 
	$str_titulo			= $_REQUEST['cbx_persona_titulo']; 
	 
	if(  $dte_fecha_nacim=="1970-01-01")
		$dte_fecha_nacim=""; 

	$items->persona_primer_nombre = $str_prim_nomb;
	$items->persona_segundo_nombre = $str_seg_nomb;
	$items->persona_primer_apellido = $str_paterno;
	$items->persona_segundo_apellido = $str_materno;
	$items->persona_ci = $str_ci;
	$items->titulo = $str_titulo;
	$items->p_fecha_nacimiento = $dte_fecha_nacim;
	$items->p_user_oper = $_SESSION['id_usuario'];
	

	if($items->createPerson()){

		echo json_encode(array(
			'persona_codigo' => 1,
			'nombres' => $str_prim_nomb,
			'ci' => $str_ci,
			'fecha_nacimiento' => $dte_fecha_nacim
		));

    } else{
		echo json_encode(array('errorMsg'=>'Ocurrieron errores al crear la persona.'));
    }

}

function fn_persona_modificacion($items){

	$int_id_persona		= $_REQUEST['id_persona'];
	$str_prim_nomb 		= $_REQUEST['txt_persona_Primer_Nombre'];
	$str_seg_nomb 		= $_REQUEST['txt_persona_Segundo_Nombre'];
	$str_paterno 		= $_REQUEST['txt_persona_Paterno'];
	$str_materno 		= $_REQUEST['txt_persona_Materno'];
	$str_ci	 			= $_REQUEST['txt_persona_Carnet'];
	$dte_fecha_nacim	= date( 'Y-m-d',strtotime($_REQUEST['dte_persona_fecha_nacimiento'])); 
	$str_titulo			= $_REQUEST['cbx_persona_titulo']; 
	
	if(  $dte_fecha_nacim=="1970-01-01")
		$dte_fecha_nacim=""; 
	
	$items->persona_primer_nombre = $str_prim_nomb;
	$items->persona_segundo_nombre = $str_seg_nomb;
	$items->persona_primer_apellido = $str_paterno;
	$items->persona_segundo_apellido = $str_materno;
	$items->persona_ci = $str_ci;
	$items->titulo = $str_titulo;
	$items->p_fecha_nacimiento = $dte_fecha_nacim;		
	$items->persona_codigo = $int_id_persona;
	$items->p_user_oper = $_SESSION['id_usuario'];

	if($items->updatePersona()){

		echo json_encode(array('success'=>true));

    } else{
		echo json_encode(array('errorMsg'=>'Ocurrieron errores al crear la persona.'));
    }
}

function fn_persona_delete($items){

	$int_ec_id 		= $_REQUEST['id'];
	
	$items->persona_codigo = $int_ec_id;

	if($items->deletePersona()){
		echo json_encode(array('success'=>true));
	} else {
		echo json_encode(array('msg'=>'Ocurrieron algunos errores.'));
	}

}
function fn_persona_get_data($items){
	
	$id_persona	= $_REQUEST['id_persona'];
	//echo "in : $id_persona";

	$items->persona_codigo=$id_persona;

	$arrRes=$items->getOnePersona();

	/*
	echo "arr2: <pre>";
	var_dump($arrRes);
	echo "</pre>"; 
	*/
 
	echo json_encode(	$arrRes );	

}
 
?>