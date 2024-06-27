<?php
 

$conn = mysql_connect('127.0.0.1','root','' );
if (!$conn) {
	die('Could not connect: ' . mysql_error());
}
mysql_set_charset('utf8', $conn);
mysql_select_db('db_sisec', $conn);
 


function f_obtiene_datos_combo($str_query){
	$result_db=mysql_query($str_query);
	$items = array();
	   while($row = mysql_fetch_object($result_db)){
 
		  array_push($items,  $row);
	   }
	   $result = $items;

	   $result= json_encode($result);
	   return($result);
}
function f_obtiene_mult_array_datos_asoc($str_query){
	$arr_res = array();
	//$rs_query = mysql_query($str_query);
	if ($rs_query = mysql_query ($str_query)){

		while($row_res = mysql_fetch_assoc($rs_query)){	
			array_push($arr_res , $row_res);
		}
		if(count($arr_res)>0)
			mysql_free_result($rs_query);
		return ($arr_res);
	}
	else
		echo (mysql_error ());
	
}

function f_reconect_db(){
	global $conn;
	mysql_close($conn);
	$conn = mysql_connect('127.0.0.1','root','' );
	mysql_set_charset('utf8', $conn);
	mysql_select_db('db_sisec', $conn);
}

function f_ping_db(){
	global $conn;
	if(! mysql_ping($conn))
		f_reconect_db();
		
}

?>