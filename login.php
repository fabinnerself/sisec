<?php

 
	$str_login	= isset($_REQUEST['txt_user_login']) ? addslashes ($_REQUEST['txt_user_login']) : '';
	$str_pwd= isset($_REQUEST['txt_user_password']) ? addslashes ($_REQUEST['txt_user_password']) : '';
	
	if(!empty($str_login) and !empty($str_pwd)){
		//include 'lib/php/conexion.php';
		include 'lib/php/database.php';
		include 'lib/php/user.php';

		$database = new Database();
		$db = $database->getConnection();
		$items = new Usuario($db);
		
		$intLogin = $items->verifyLoginUser($str_login,$str_pwd);
		
		session_start();
		
		switch($intLogin){
			case -2:
				$str_error="Nombre de usuario ingresado incorrecto";
				$result=array( 'msg'=>$str_error);
				$_SESSION['id_usuario']="";
				break;
			case -1:
				$str_error="Contraseña ingresada  incorrecta";
				$result=array( 'msg'=>$str_error);
				$_SESSION['id_usuario']="";
				break;		
			case -3:
				$str_error="La Contraseña y nombre de usuario ingresados incorrectos";
				$result=array( 'msg'=>$str_error);
				$_SESSION['id_usuario']="";
				break;	
			default:				
				$str_error = $items->getLoginUser($intLogin);				
				$_SESSION['id_usuario']=$intLogin ; 
				$result=array('success'=>true,'msg'=>$str_error);	
				break;
		}
	 
		echo json_encode($result);		
	}

?>