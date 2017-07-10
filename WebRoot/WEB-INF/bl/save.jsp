<%@page import="com.opensymphony.xwork2.ActionContext"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>保存</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/cjpm.css">
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/cjcalendar.js"></script>
	<script language="javascript" src="${pageContext.request.contextPath }/js/page.js"></script>
	<style type="text/css">
		.errorMessage{
			list-style-type: none;
			
		}
	</style>
  </head>
  <script language="javascript">
	var CalendarWebControl = new atCalendarControl();
	</script>
	<SCRIPT LANGUAGE="javaScript">
	<!--
	function delCom(id){
		if(id == '1'){
			document.idFrmMain.gys.value = "";		
		}else{
			document.idFrmMain.sccj.value = "";
		}
	}
	
	function save()
	{
		document.forms[0].submit();
	}
	
	function back()
	{
		//history.back();
		window.location.href="${pageContext.request.contextPath}/bl/bl_blList.action";
	}

	</SCRIPT>
 <BODY BACKGROUND="${pageContext.request.contextPath }/image/bg.gif"> 
<s:form name="idFormMain" id="idFormMain" method="post" action="bl_save" namespace="/bl" onsubmit="return false">
  <table border="0" width="100%"> 
    <tr> 
      <td width="100%" colspan="0" rowspan="0" align="center" valign="center"> <table border="0" width="100%" id="table1" cellspacing="0"  cellpadding="2"  bgcolor="gray"> 
          <tr> 
            <td class="headerbar61" width="50%">玻璃详细</td> 
            <td class="headerbar63" width="50%"> 
            	<input type="button" name="save70302002" onClick="javascript:save();" value="保存"> 
              <input type="button" name="save70302002" onClick="javascript:back()" value="返回 ">&nbsp; 
		 </td> 
          </tr> 
        </table>
       </td> 
    </tr> 
    <tr> 
      <td width="100%" colspan="0" rowspan="0" align="center" valign="center"> <table border="0" width="100%" id="table1" cellspacing="1"  cellpadding="2"  bgcolor="gray"> 
          <tr> 
			<td class="textbar81" width="15%">编号</td>
            <td class="textbar01" width="35%"> 
            	<s:textfield name="num" size="15" style="width:210px" value="%{#num}" readonly="true"/>
            	<span style="color:threedlightshadow;">*</span>
           	</td>
           	<td width="15%" class="textbar81">质量</td> 
		     <td class="textbar01" width="35%"> 
		       	<s:select name="zl" cssStyle="210px" list="#{'':'请选择','一等品':'一等品','合格品':'合格品','协议品':'协议品' }"/>
		     </td> 
          
          </tr>
          
          <tr> 
           <td class="textbar81" width="15%">名称 </td> 
            <td class="textbar01" width="35%">
            	<input type="text"  name="mc" size="15" style="width:210px" >
            	<span style="color:threedlightshadow;">*</span>
            </td>  
           	<td class="textbar81" width="15%">厚度</td>
            <td class="textbar01" width="35%"> 
            	<s:textfield name="hd" size="15" style="width:210px"/>
           	</td>
             
          </tr>
          
           <tr> 
             <td width="15%" class="textbar81">长度</td> 
		     <td class="textbar01" width="35%"> 
            	<s:textfield name="cd" size="15" style="width:210px"/>
            	<span style="color:threedlightshadow;">*</span>
		     </td> 
		      <td class="textbar81" width="15%">宽度</td>
             <td class="textbar01" width="35%"> 
            	<s:textfield name="kd" size="15" style="width:210px"/>
            	<span style="color:threedlightshadow;">*</span>
             </td>
			 
          </tr>
        </table> 
        <span style="color:red;text-align: left;"><s:actionerror/></span>
        <table border=0 cellspacing=0 cellpadding=0 width="100%" height=5> 
          <tr> 
            <td></td> 
          </tr> 
        </table></td> 
    </tr> 
  </table> 
</s:form>
</BODY>
</html>