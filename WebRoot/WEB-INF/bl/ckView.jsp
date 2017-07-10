<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>出库</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/cjpm.css">
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/cjcalendar.js"></script>
	<script language="javascript" src="${pageContext.request.contextPath }/js/page.js"></script>
  </head>
  <style type="text/css">
	.errorMessage{
		list-style-type: none;
	}
  </style>
  <script type="text/javascript">
  	function save(){
  		//alert("保存成功");
  		document.forms[0].submit();
  	}
  	function back()
	{
		window.location.href="${pageContext.request.contextPath}/bl/bl_blList.action";
	}
  </script>
  
  <BODY BACKGROUND="${pageContext.request.contextPath }/image/bg.gif"> 
  <form  name="idFormMain" id="idFormMain" method="post" onsubmit="return false" action="${pageContext.request.contextPath }/bl/bl_ck.action?id=${param.id}">
  <table border="0" width="100%"> 
    <tr> 
      <td width="100%" colspan="0" rowspan="0" align="center" valign="center"> <table border="0" width="100%" id="table1" cellspacing="0"  cellpadding="2"  bgcolor="gray"> 
          <tr> 
            <td class="headerbar61" width="50%"></td> 
            <td class="headerbar63" width="50%"> 
            	<input type="button" name="save70302002" onClick="javascript:save();" value="出库"> 
              <input type="button" name="save70302002" onClick="javascript:back()" value="返回 ">&nbsp; 
		 </td> 
          </tr> 
        </table>
       </td> 
    </tr> 
    <tr> 
      <td width="100%" colspan="0" rowspan="0" align="center" valign="center"> <table border="0" width="100%" id="table1" cellspacing="1"  cellpadding="2"  bgcolor="gray"> 
          <tr> 
			<td class="textbar81" width="15%">出库数量</td>
            <td class="textbar01" width="35%"> 
            	<s:textfield name="sl" size="15" style="width:210px"/>
            	<span style="color:threedlightshadow;">*</span>
           	</td>
          </tr>
        </table> 
        <span style="color:red;text-align: left;"><s:actionerror/></span>
  		<span style="color:red;text-align:center;"><s:fielderror></s:fielderror></span>
        <table border=0 cellspacing=0 cellpadding=0 width="100%" height=5> 
          <tr> 
            <td></td> 
          </tr> 
        </table></td> 
    </tr> 
  </table>
  </form> 
</BODY>
</html>
