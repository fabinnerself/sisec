
var m_names = new Array("Ene", "Feb", "Mar", 
"Abr", "May", "Jun", "Jul", "Ago", "Sep", 
"Oct", "Nov", "Dic");

function f_Day_Diff(first, second) {
    return (second-first)/(1000*60*60*24)
}

function f_Parse_Date(str) {
    var mdy = str.split('/');
	if(mdy.length==2){
		dte_aux=new Date(mdy[2], mdy[1]-1, mdy[0])
	}
	else{
		mdy = str.split('-');
		dte_aux=new Date(mdy[2], mdy[1]-1, mdy[0])
	}
    return dte_aux;
}

	function f_Convierte_Fecha(str_fecha){

		var m_names = new Array();

		m_names["Ene"] = "01"; 
		m_names["Feb"] = "02"; 
		m_names["Mar"] = "03"; 
		m_names["Abr"] = "04"; 
		m_names["May"] = "05";
		m_names["Jun"] = "06";
		m_names["Jul"] = "07";
		m_names["Ago"] = "08"; 
		m_names["Sep"] = "09"; 
		m_names["Oct"] = "10"; 
		m_names["Nov"] = "11"; 
		m_names["Dic"] = "12";
		
		m_names["ene"] = "01"; 
		m_names["feb"] = "02"; 
		m_names["mar"] = "03"; 
		m_names["abr"] = "04"; 
		m_names["may"] = "05";
		m_names["jun"] = "06";
		m_names["jul"] = "07";
		m_names["ago"] = "08"; 
		m_names["sep"] = "09"; 
		m_names["oct"] = "10"; 
		m_names["nov"] = "11"; 
		m_names["dic"] = "12";		
		
		var arr_fecha=str_fecha.split("-");
		
		var mes_num=m_names[arr_fecha[1]];
		
		var str_res=arr_fecha[0]+"-"+mes_num+"-"+arr_fecha[2];
		
		return(str_res)	
	}
	

function es_Periodo(txt_Date) {
	var currVal = txt_Date;
	if (currVal == '')
	   return false;

	//Declare Regex  
	var rxDatePattern = /^(\d{4})(\/|-)(\d{1,2})$/;
	var dtArray = currVal.match(rxDatePattern); // is format OK?

	var now = new Date(),
	year = now.getFullYear()+5;

	if (dtArray == null)
	  return false;

	//Checks for dd/mm/yyyy format.
	var dtMonth = dtArray[3];
	var dtYear = dtArray[1];

	if (dtMonth < 1 || dtMonth > 12)
	  return false;
	else if (dtYear < 1900 || dtYear > year)
	  return false;
	 
	return true;
}	


function isDate(txtDate) {
    var currVal = txtDate;
    if (currVal == '')
       return false;

  //Declare Regex  
  var rxDatePattern = /^(\d{1,2})(\/|-)(\d{1,2})(\/|-)(\d{4})$/;
  var dtArray = currVal.match(rxDatePattern); // is format OK?

  if (dtArray == null)
      return false;

   //Checks for dd/mm/yyyy format.
   var dtDay = dtArray[1];
   var dtMonth = dtArray[3];
   var dtYear = dtArray[5];

  if (dtMonth < 1 || dtMonth > 12)
      return false;
  else if (dtDay < 1 || dtDay > 31)
      return false;
  else if ((dtMonth == 4 || dtMonth == 6 || dtMonth == 9 || dtMonth == 11) && dtDay == 31)
      return false;
  else if (dtMonth == 2) {
      var isleap = (dtYear % 4 == 0 && (dtYear % 100 != 0 || dtYear % 400 == 0));
      if (dtDay > 29 || (dtDay == 29 && !isleap))
          return false;
  }

  return true;
}

/*
function fn_onSelect( ){
	var date_field = $( this );
	var str_fecha_format=date_field.getDate()+"-"+(m_names[date_field.getMonth()])+"-"+date_field.getFullYear();
	date_field.datebox('setValue',str_fecha_format);
}
*/
/*
$.fn.datebox.defaults.onBlur = function(date){
 
	var y = date.getFullYear();
	var m = date.getMonth();
	var d = date.getDate();
	return d+'-'+m_names[m]+'-'+y;
}
*/

$("dte_fecha_proy_seg").blur(function(){
  alert("This input field has lost its focus.");
});

$.fn.datebox.defaults.formatter = function(date){
 
	var y = date.getFullYear();
	var m = date.getMonth();
	var d = date.getDate();
	return d+'-'+m_names[m]+'-'+y;
}

