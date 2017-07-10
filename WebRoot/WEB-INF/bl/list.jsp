<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
  	<title>日志查询</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/cjpm.css">
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/page.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/cjcalendar.js"></script>
	
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cachecontextPa-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
		.errorMessage{
			list-style-type: none;
		}	
	</style>
 </head>
 <%--  <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.2.min.js"></script> --%>
<script language="javascript">
	var CalendarWebControl = new atCalendarControl();
</script>
<SCRIPT LANGUAGE="javaScript">
<!--
function goto1(strURL)
{
	document.forms[0].action=strURL;
	document.forms[0].submit();
}
function del(id)
{
	if(confirm("您确定删除该条记录？")){
		window.location.href="${pageContext.request.contextPath}/bl/bl_delete.action?id=" + id ;
	}
}

function doAdd(){
	document.forms[0].action="${pageContext.request.contextPath}/bl/bl_saveBut.action";
	document.forms[0].submit();
}

function find(){
	document.forms[0].submit();
}

function update(strURL)
{
	document.forms[0].action=strURL;
	document.forms[0].submit();
}

-->
</SCRIPT>


  
<BODY BACKGROUND="${pageContext.request.contextPath }/image/bg.gif">
<FORM NAME="idFrmMain" ID="idmig0101" METHOD="POST"  ACTION="${pageContext.request.contextPath }/bl/bl_sreach.action" ONSUBMIT="return false" >

<table border=0 cellspacing=0 cellpadding=2 width="100%" bgcolor="gray">
	<tr>
		<td class="headerbar61">查询</td>
	    <td class="headerbar63" width="50%" colspan="1">
	    <p align="right"><input type=button value="查询" onClick="javascript:find();"></p>
	    </td>
    </tr>
	
</table>

<table border=0 cellspacing=0 cellpadding=2 width="100%" height="5">
<tr>
	<td></td>
</tr>
</table>

<table border=0 cellspacing=1 cellpadding=2 width="100%" bgcolor="gray">
<tr>
	<!-- 名称 -->
    <td class="textbar81" width="15%">名称</td>
	<td class="textbar01" width="35%">
		<s:textfield name="mc" size="20"/>
	</td>
	<td width="15%" class="textbar81"></td> 
     <td class="textbar01" width="35%"></td> 
	
   <tr> 
   		<!-- 质量 -->
       <td width="15%" class="textbar81">质量</td> 
       <td class="textbar01" width="35%"> 
       	   <s:select name="zl" cssStyle="210px" list="#{'':'请选择','一等品':'一等品','合格品':'合格品','协议品':'协议品' }"/>
       </td>
        
	   	<!-- 厚度 -->
		<td class="textbar81" width="15%">厚度</td>
		<td class="textbar01" width="35%">
			<s:textfield name="hd" size="20"/>
		</td>
     </tr> 
     
     <tr>
     	<!-- 长度 -->
       <td width="15%" class="textbar81">长度</td> 
       <td class="textbar01" width="35%"> 
      	   <s:textfield name="cd"/>
       </td>  
   		<!-- 宽度 -->
       <td width="15%" class="textbar81">宽度</td> 
       <td class="textbar01" width="35%"> 
       	<s:textfield name="kd"/>
       </td>
      
       
     </tr>            
</table>

<table border=0 cellspacing=0 cellpadding=0 width="100%" height=5>
<tr>
	<td></td>
</tr>
</table>

<table border="0" width="100%" id="table1" cellspacing="0"  cellpadding="2"  bgcolor="gray">
	<tr>
  	<td class="headerbar61" width="50%" colspan="1">规格明细</td>
    <td class="headerbar63" width="50%" colspan="1"><p align="right">
    	<input type="submit" value="新增" onClick="JavaScript:doAdd();"></p></td>
  </tr>
</table>
  <table border=0 cellspacing=0 cellpadding=2 width="100%" height="5"> 
    <tr> 
      <td></td> 
    </tr> 
  </table> 
<table border="0" width="100%" id="table1" cellspacing="0"  cellpadding="0"  bgcolor="gray">
	<tr>
  	<td  width="100%" colspan="1">
  		<table  border="0" cellspacing="1" cellpadding="2" width="100%">
				<tr>
					<td  width="5%" class="headerbar82">编号</td>
					<td  width="10%" class="headerbar82">名称</td>
					<td  width="10%" class="headerbar82">厚度</td>
					<td  width="10%" class="headerbar82">质量</td>
					<td  width="15%" class="headerbar82">长</td>
                    <td  width="10%" class="headerbar82">宽</td>
					<td  width="10%" class="headerbar82">数量</td>
					<td   class="headerbar82">操作</td>
					<td   class="headerbar82"></td>
				</tr>

				<s:iterator value="bls" var="bl">
					<tr>
						<td class="gridbar01" align="center" width="20%">
							<s:property value="num"/>
						</td>
						<td  class="gridbar01" align="center" width="10%"  > <a href="${pageContext.request.contextPath }/bl/bl_updateBut.action?id=${id}" >
							<s:property value="mc"/>
						</a></td>
						<td  class="gridbar01" align="center">
							<s:property value="hd"/> 
						</td>
						<td  class="gridbar01" align="center"> 
								<s:property value="zl"/>
						</td>
						<td  class="gridbar01" align="center"> 
								<s:property value="cd"/>
						</td>
	                    <td   class="gridbar01" align="center"> 
	                    		<s:property value="kd"/>
	                    </td>
						<td   class="gridbar01" align="center"> 
								<s:property value="sl"/>
						</td>
						<td  class="gridbar01" align="center">
							<img src="${pageContext.request.contextPath }/image/del.gif" align="bottom" border="0" alt="删除" onClick="javascript:del('${id}')"  style="cursor:pointer"/>
						</td>
						<td class="gridbar01" align="center">
							<!-- 入库按钮 -->
							<a href="${pageContext.request.contextPath }/bl/bl_rkBut.action?id=${id}">入库</a>&nbsp;
							<!-- 出库按钮 -->
							<a href="${pageContext.request.contextPath }/bl/bl_ckBut.action?id=${id}">出库</a>
						</td>
					</tr>
				</s:iterator>
		</table>
				<span style="color:red;"><s:actionerror theme="simple"/></span>
		
	  </td>
	</tr>
</table>

<table width="100%" border="0" cellpadding="1" cellspacing="2" >
        	<tr>
          	<td colspan="2" align="right" height="20"  nowrap class="textbar3" >
							&nbsp; 共4条 &nbsp; 第1/1页 &nbsp;      				<a  href="#" style="cursor:hand">首页</a>&nbsp; 
      				<a   style="cursor:hand" href="#">上一页</a>&nbsp;
      				<a  style="cursor:hand" href="#">下一页</a>&nbsp; 
      				<a   style="cursor:hand" href="#">尾页</a>&nbsp; 
							&nbsp;
						</td>
          </tr>
        </table>

			</td>
		</tr>
</table>
</FORM>
</BODY>
</html>
