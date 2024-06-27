<?php
session_start(); 

if(isset($_SESSION['id_usuario'])){

	if(isset($_REQUEST['oper'])){
		
	//echo "llega";

		include '../lib/php/database.php';
		include '../lib/php/user.php';

		$database = new Database();
		$db = $database->getConnection();
		$items = new Usuario($db);	
		
		switch($_REQUEST['oper']){
	
			case 'usuario_listado':
				fn_list_usuario($items);
			break;	 
			case 'user_add':
				fn_user_adicion($items);
			break;	
			case 'get_data_user':
				fn_user_get_data($items);
			break;			
			case 'user_mod':
				fn_user_modificacion($items);
			break;		
			case 'user_elim':
				fn_user_delete($items);
			break;			
			case 'user_persona':
				fn_combo_persona($items);
			break; 	
		}
 	}
}

function fn_list_usuario($items){	 

	$page = isset($_REQUEST['page']) ? intval($_REQUEST['page']) : 1;
	$rows = isset($_REQUEST['rows']) ? intval($_REQUEST['rows']) : 10;
	$offset = ($page-1)*$rows;
	
	$str_nombres	= isset($_REQUEST['prs_nombres']) ? addslashes ($_REQUEST['prs_nombres']) : '';
	$str_ci		 	= isset($_REQUEST['prs_ci']) ? addslashes ($_REQUEST['prs_ci']) : '';	

	//echo "op nom: $str_nombres, ci: $str_ci offset: $offset row: $rows";

	$intCount = $items->getCountUser($str_nombres,$str_ci); 
	//echo "count regs: $intCount -"; 
	$arrlistado = $items->getAllUsers($offset,$rows,$str_nombres,$str_ci);
	
	$result = array();	
	
	$result["total"] = $intCount;	
	$result["rows"] = $arrlistado;

	echo json_encode($result);
}
 
function fn_user_adicion($items){

	$int_id_persona		= $_REQUEST['cbx_user_persona'];
	$str_login	 		= $_REQUEST['txt_user_login'];
	$str_pwd	 		= $_REQUEST['txt_user_password']; 	
	//echo "login: $str_login";

	$items->u_id_persona 	= $int_id_persona;
	$items->u_login 		= $str_login;
	$items->u_contrasenia 	= $str_pwd;
	$items->u_user_oper 	= $_SESSION['id_usuario'];
	;
	//echo "in ";
	//echo "login item: ".$items->str_login ;

	if($items->createUser()){
 
		echo json_encode(array('success'=>true));

    } else{
		echo json_encode(array('msg'=>'Ocurrieron errores al crear el usuario.'));
    }


}

function fn_user_modificacion($items){

	$int_id_user		= $_REQUEST['id_user'];
	$int_id_persona		= $_REQUEST['cbx_user_persona'];
	$str_login	 		= $_REQUEST['txt_user_login'];
	$str_pwd	 		= $_REQUEST['txt_user_password'];

	$items->usuario_id 		= $int_id_user;
	$items->u_id_persona 	= $int_id_persona;
	$items->u_login 		= $str_login;
	$items->u_contrasenia 	= $str_pwd;
	$items->u_user_oper 	= $_SESSION['id_usuario'];

	/*
	echo " <br>user id ".$items->usuario_id;
	echo " <br>persona ".$items->u_id_persona;
	echo " <br>login ".$items->u_login;
	echo " <br>pwd ".$items->u_contrasenia;
	*/

	if($items->updateUser()){
		echo json_encode(array('success'=>true));
	} else {
		echo json_encode(array('msg'=>'Ocurrieron algunos errores al modificar el usuario.'));
	}

}

function fn_user_delete($items){

	$int_ec_id 		= $_REQUEST['id'];

	$items->usuario_id = $int_ec_id;
	
	if($items->deleteUser()){
		echo json_encode(array('success'=>true));
	} else {
		echo json_encode(array('msg'=>'Ocurrieron algunos errores al eliminar el usuario.'));
	}

}
function fn_user_get_data($items){
 
	$id_user	= $_REQUEST['id_user']; 

	$items->usuario_id=$id_user;

	$arrRes=$items->getOneUser();
	
	echo json_encode(	$arrRes );		

}
function fn_combo_persona($items){
	//echo "in cbx perso";
	
	$arrCombo=$items->getComboPersona();
	 
	echo $arrCombo;
}
?>