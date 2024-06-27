<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="keywords" content="sisec,seguimiento,proyectos,login">
	<meta name="description" content="sisec seguimiento proyectos">
	<title>Ingreso a SISEC</title>

	<link rel="stylesheet" type="text/css" href="lib/js/easyui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="lib/js/easyui/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="lib/js/easyui/demo/demo.css">
	<link rel="stylesheet" type="text/css" href="lib/css/mis_icon.css">
	<script type="text/javascript" src="lib/js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="lib/js/easyui/jquery.easyui.min.js"></script>
	<link rel="icon" href="/favicon.png">


	<script type="text/javascript">
	
	function fn_ingresar(){
		url='login.php'
		$('#form_login').form('submit',{
			url: url,
			onSubmit: function(param){
				 return $(this).form('validate');			
			},
			success: function(result){
				var result = eval('('+result+')');
				if (result.success){
					
					$.messager.alert('Suceso',result.msg,'info',fn_ir);	 
					
				} else {
					$.messager.show({
						title: 'Error',
						msg: result.msg
					});
				}
			}
		});
	
	}
	
	function fn_ir(){
		$(location).attr('href','index.html');
	}
 
 	function fn_cancela(){		 
		$('#form_login').form('clear');
		$('#txt_user_login').focus();
	}
 
	$( document ).ready(function() {
		$('#form_login').form('load','logout.php');
		fn_cancela(); 
	});

	</script>
</head>
<body >
 
	
	<div id="win" class="easyui-window" title="Ingreso" style="width:320px;height:180px;" 
		data-options=" minimizable:false, maximizable:false,collapsible:false,closable:false,resizable:false,draggable:false" >
	<form id="form_login" method="post" novalidate > 
		<table width="30%" align=center>
		<tbody>
		<tr><td colspan=2 align=center> Ingreso al sistema SISPEC</td>
		</tr>
		<tr> <td>Usuario:</td> <td>
			<input id=txt_user_login name="txt_user_login" class="easyui-validatebox" required="true"
					data-options=" missingMessage:'Este campo es Requerido' " style="width: 150px;" maxlength=20></td>
		</tr><tr> <td> Contraseña:</td><td>
			 
			<input id="txt_user_password" name="txt_user_password" class="easyui-validatebox"  
					data-options="required:true, missingMessage:'Este campo es Requerido'"
					style="width: 150px;" type="password"   maxlength=20 ></td></tr>
		<tr><td colspan=2>
			<div style="padding:5px;text-align:center;">
				<a href="#" id=btn_ingresar class="easyui-linkbutton" iconcls="icon-ok"  onclick="fn_ingresar()">Ingresar</a>
				<a href="#" class="easyui-linkbutton" iconcls="icon-cancel" onclick="fn_cancela()">Cancelar</a>
			</div></td></tr>
		</tbody>
		</table>			
	</form>
	</div>

 
 		
</body>
</html>