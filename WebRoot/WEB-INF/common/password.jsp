<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>线通知</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/cjpm.css">
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/page.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/msn_message.js"></script>
	<style type="text/css">
	<!--
	body {
		background-color: #f8f7f7;
	}
	.errorMessage{
		list-style-type: none;
	}
	-->
	</style>
	<script type="text/javascript">
		function save(){
			
			//alert("保存成功！！！");
			document.forms[0].submit();
		}
	</script>
  </head>
  
<BODY BACKGROUND="${pageContext.request.contextPath }/image/bg.gif">

<FORM NAME="BSDTERM001" ID="BSDTERM001" METHOD="POST"  ACTION="${pageContext.request.contextPath }/user/user_updatePwd.action" ONSUBMIT="return false" >
<table border=0 cellspacing=0 cellpadding=2 width="100%" bgcolor="gray">
			<tr>
				<td class="headerbar61">修改密码</td>
				<td class="headerbar61"><p align="right"><input type=submit value="保存" onClick="JavaScript:save();"></p></td>
			</tr>
			</table>
			<table border=0 cellspacing=0 cellpadding=2 width="100%" height="5">
			<tr>
				<td></td>
			</tr>
			</table>
			<table border=0 cellspacing=1 cellpadding=2 width="100%" bgcolor="gray">
			<tr>
				<td class="textbar81" width="15%">旧密码</td>
				<td class="textbar01" width="85%"><input type="password" name="oddPwd" size="30" ></td>				
			</tr>	
			<tr>
				<td class="textbar81" width="15%">新密码</td>
				<td class="textbar01" width="85%"><input type="password" name="newPwd1" size="30" ></td>				
			</tr>	
			<tr>
				<td class="textbar81" width="15%">确认密码</td>
				<td class="textbar01" width="85%"><input type="password" name="newPwd2" size="30" ></td>				
			</tr>			
			</table>
			<span style="color:red;"><s:actionerror/></span>

</FORM>
</body>
</html>