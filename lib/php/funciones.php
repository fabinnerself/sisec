<?php

$str_color_naranja="FCD5B4";
$str_color_rosa="F2DCDB";
$str_color_plomo="F2F2F2";
$str_color_amarillo="FFFF99";
$str_color_celeste="DAEEF3";
$str_color_cafe_titulos_vc="EEECE1";
$str_color_naranja_vd="FDE9D9";
$str_color_plomo_vc="D9D9D9";
$str_color_verde_vm="EBF1DE";
$str_color_cafe_vp="DDD9C4";
$str_color_celeste_ej_ia="DCE6F1";
$str_color_rosa_ej_ct="F2DCDB";
$str_color_amarillo_pato="FFF8DC";




function cellColor($cells,$color){
        global $objPHPExcel;
        $objPHPExcel->getActiveSheet()->getStyle($cells)->getFill()
        ->applyFromArray(array('type' => PHPExcel_Style_Fill::FILL_SOLID,
        'startcolor' => array('rgb' => $color)
        ));
 }

function f_bordes($cells){
	global $objPHPExcel;
	$objPHPExcel->getActiveSheet()->duplicateStyleArray(
			array(
			'borders' => array(
				'bottom'	=> array('style' => PHPExcel_Style_Border::BORDER_THIN),
				'right'		=> array('style' => PHPExcel_Style_Border::BORDER_THIN),
				'left'		=> array('style' => PHPExcel_Style_Border::BORDER_THIN),
				'top'		=> array('style' => PHPExcel_Style_Border::BORDER_THIN)	 
				)
			),
			$cells
	);
}
function f_borde_firma($cells){
	global $objPHPExcel;
	$objPHPExcel->getActiveSheet()->duplicateStyleArray(
			array(
			'borders' => array(
				'bottom'	=> array('style' => PHPExcel_Style_Border::BORDER_THIN)  
				)
			),
			$cells
	);
}

function f_alineamiento($cells,$tipo_alin,$alin){
	global $objPHPExcel;
	if($tipo_alin=="horizontal" and $alin=="center")
		$objPHPExcel->getActiveSheet()->getStyle($cells)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
	if($tipo_alin=="horizontal" and $alin=="right")
		$objPHPExcel->getActiveSheet()->getStyle($cells)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_RIGHT);		
	if($tipo_alin=="horizontal" and $alin=="left")
		$objPHPExcel->getActiveSheet()->getStyle($cells)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_LEFT);		
		
	if($tipo_alin=="vertical" and $alin=="center")
		$objPHPExcel->getActiveSheet()->getStyle($cells)->getAlignment()->setVertical(PHPExcel_Style_Alignment::VERTICAL_CENTER);
	if($tipo_alin=="vertical" and $alin=="top")
		$objPHPExcel->getActiveSheet()->getStyle($cells)->getAlignment()->setVertical(PHPExcel_Style_Alignment::VERTICAL_TOP);

}

function filter_by_value ($array, $index, $value){ 
	if(is_array($array) && count($array)>0)  
	{ 
		$newarray =array();
		foreach(array_keys($array) as $key){ 
			$temp[$key] = $array[$key][$index]; 
			 
			if ($temp[$key] == $value){ 
				$newarray[$key] = $array[$key]; 
			} 
		} 
	} 
		
  return $newarray; 
} 

	function f_ajusta_fecha_ingles($str_fecha){
		$trozos=explode("-",$str_fecha);
		
		switch($trozos[1]){
			case 'Ene':
			case 'ene':
				$aux_mes="Jan";
				break;
			case 'Abr':
			case 'abr':		
				$aux_mes="Apr";
				break;			
			case 'Ago':
			case 'ago':		
				$aux_mes="Aug";
				break;			
			case 'Dic':
			case 'dic':		
				$aux_mes="Dec";
				break;		
			default:
				$aux_mes=$trozos[1];				
		}
	
		return $trozos[0]."-".$aux_mes."-".$trozos[2];
	}
 
	/*
		genera un equivalente segun el numero; 1=A,2=B,3=C, 27AA,28AB,...
	*/
	function fn_obtiene_columna_caracter($int_posicion_col,$int_fila ){
	
		 switch(true) {
		   case in_array($int_posicion_col, range(1,26)):  
				$str_entre=chr(64+$int_posicion_col)."$int_fila";
				break;
		   case in_array($int_posicion_col, range(27,52)):  
				$str_entre="A".chr(38+$int_posicion_col)."$int_fila";
				break;
		   case in_array($int_posicion_col, range(53,78)):  
				$str_entre="B".chr(12+$int_posicion_col)."$int_fila";
				break;		 
		   case in_array($int_posicion_col, range(79,104)):  
				$str_entre="C".chr(-14+$int_posicion_col)."$int_fila";
				break;		
		   case in_array($int_posicion_col, range(105,130)):  
				$str_entre="D".chr(-40+$int_posicion_col)."$int_fila";
				break;	
			case in_array($int_posicion_col, range(131,156)):  
				$str_entre="E".chr(-66+$int_posicion_col)."$int_fila";
				break;		
			case in_array($int_posicion_col, range(157,182)):  
				$str_entre="F".chr(-92+$int_posicion_col)."$int_fila";
				break;	
			case in_array($int_posicion_col, range(183,208)):  
				$str_entre="G".chr(-118+$int_posicion_col)."$int_fila";
				break;		
			case in_array($int_posicion_col, range(209,234)):  
				$str_entre="H".chr(-144+$int_posicion_col)."$int_fila";
				break;		
			case in_array($int_posicion_col, range(235,260)):  
				$str_entre="I".chr(-170+$int_posicion_col)."$int_fila";
				break;		
			case in_array($int_posicion_col, range(261,286)):  
				$str_entre="J".chr(-196+$int_posicion_col)."$int_fila";
				break;		
			case in_array($int_posicion_col, range(287,302)):  
				$str_entre="K".chr(-222+$int_posicion_col)."$int_fila";
				break;			
			case in_array($int_posicion_col, range(303,328)):  
				$str_entre="L".chr(-248+$int_posicion_col)."$int_fila";
				break;			
			case in_array($int_posicion_col, range(329,354)):  
				$str_entre="M".chr(-274+$int_posicion_col)."$int_fila";
				break;		
			case in_array($int_posicion_col, range(355,380)):  
				$str_entre="N".chr(-300+$int_posicion_col)."$int_fila";
				break;					
		}
		return($str_entre);
	}
	
	/*
		quita elementos de un array
	*/
	function fn_array_delete($array, $element) {
		return (array_diff($array, $element));
	}

	
/*
	une varios array segun el orden de elementos de cada array
*/
function f_array_interlace() { 
    $args = func_get_args(); 
    $total = count($args); 

    if($total < 2) { 
        return FALSE; 
    } 
    
    $i = 0; 
    $j = 0; 
    $arr = array(); 
    
    foreach($args as $arg) { 
        foreach($arg as $v) { 
            $arr[$j] = $v; 
            $j += $total; 
        } 
        
        $i++; 
        $j = $i; 
    } 
    
    //ksort($arr); 
    return array_values($arr); 
} 

	/*
		busca en un array multidimensional el valor dado, en el campo especificado,
		el valor buscado debe ser necesariamente cadena
	*/
	function f_array_mult_search($products, $needle,$field) {
		foreach($products as $key => $product){
			 
			if ( $product[$field] ===  $needle  ){
		 
				return $key; 
			}
		
		}
		return -1;
	}		
	
	
	/*
		encuentra segun el tamño de un numero, encuentra el numero segun minimos y maximos
	*/
	 function f_encuentra_largo_fila($int_largo_etapa_obs){
		$in_alto_fila=0;
		$minValue = 61;
		$maxValue = 120;

		$base_min=60;		 
		$i=1;
		$arr_largo=array(42,50,60,80,85,90,110,120,130,140,150,160,170,180,200,210,230,235,255,365,375,385,395,305,350,360,370,380,390);
		
		do{

			//echo "<br> le: $int_largo_etapa_obs min:$minValue max:$maxValue   ";
			
			if (($int_largo_etapa_obs >= $minValue and $int_largo_etapa_obs <= $maxValue) and$int_largo_etapa_obs>80) { 
			  //do something
			  $in_alto_fila=$arr_largo[$i-1];
			}	
						
			if($in_alto_fila>0){
				break;
			}
			else{
				$i++;
				$minValue=($i*$base_min)+1;
				$maxValue=($i+1)*$base_min;			
			}
			
			//echo "<br> le: $int_largo_etapa_obs min:$minValue max:$maxValue enc: $in_alto_fila   ";
		}while($in_alto_fila==0 and $int_largo_etapa_obs>60 );
	
		//echo "<br>final enc: $in_alto_fila min:$minValue max:$maxValue";
		return($in_alto_fila);
	}	
?>