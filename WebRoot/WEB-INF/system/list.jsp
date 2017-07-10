<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>用户管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/cjpm.css">
	</head>
<SCRIPT LANGUAGE="javaScript">
<!--
function goto1()
{
	document.forms[0].action="${pageContext.request.contextPath}/system/f_save.action";
	document.forms[0].submit();
}
 
/* function del(id)
{
	if(confirm("您确定删除该条数据？")){
		//document.forms[0].action="${pageContext.request.contextPath}/user/user_delete.action?id=" + id;
		//document.forms[0].submit();
		window.location.href="${pageContext.request.contextPath}/user/user_delete.action?id=" + id ;
		
	}
} */

function goSearch(){
	document.forms[0].action="${pageContext.request.contextPath}/user/user_sreach.action";
	document.forms[0].submit();
}
 
-->
</SCRIPT>
  
  <BODY BACKGROUND="${pageContext.request.contextPath }/image/bg.gif">
<FORM NAME="mig0101" ID="idmig0101" METHOD="POST"  ACTION="" ONSUBMIT="return false" >
          <table border=0 cellspacing=0 cellpadding=2 width="100%" bgcolor="gray">
			<tr>
				<td class="headerbar61">用户明细查询</td>
				<td class="headerbar61"><p align="right"><input type=submit value="查询" onClick="goSearch();"></p></td>
			</tr>
 	 	  </table>
 	 		
			<!-- 空行 -->
		  <table border=0 cellspacing=0 cellpadding=2 width="100%" height="5">
			<tr>
				<td></td>
			</tr>
		  </table>
		  
		  <table border=0 cellspacing=1 cellpadding=2 width="100%" bgcolor="gray">
			<tr>
				<td class="textbar81" width="15%">用户登录号</td>
				<td class="textbar01" width="35%">
					<s:textfield name="userLogin" size="20"/>
				</td>
				<td class="textbar81" width="15%">用户姓名</td>
				<td class="textbar01" width="35%">
					<s:textfield name="userName" size="20"/>
				</td>
			</tr>
			</table>
			
			<!-- 空点行 -->
			<table border=0 cellspacing=0 cellpadding=2 width="100%" height="5">
				<tr>
					<td></td>
				</tr>
			</table>
			
		    <table border="0" width="100%" id="table1" cellspacing="0"  cellpadding="2"  bgcolor="gray">
                <tr>
                    <td class="headerbar61" width="50%" colspan="1">用户明细表</td>
                    <td class="headerbar63" width="50%" colspan="1">
                   <input type="button" name="add" tabindex="1" onClick="javascript:goto1()" value=" 新 增 "></td>
                </tr>
            </table>
            
	     	<!-- 空点行 -->
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
									<td  width="5%" class="headerbar82">序号</td>
									<td  width="35%" class="headerbar82">用户登录号</td>
									<td  width="35%" class="headerbar82">用户姓名</td>
									<td   class="headerbar82">操作</td>
								</tr>
								<s:iterator value="#users" var="user">
									<tr>
										<td  class="gridbar11" align="center">${user.id }</td>
										<%-- <td  class="gridbar11" align="center"><a href="${pageContext.request.contextPath}/system/f_user1002.action?id=${user.id }"><s:property value="userLogin"/>${user.userLogin }</a></td> --%>
										<td  class="gridbar11" align="center"><a href="${pageContext.request.contextPath}/user/user_updateBut.action?id=${user.id }">${user.userLogin }</a></td>
										<td  class="gridbar11" align="center">${user.userName }</td>
										<td  class="gridbar11" align="center">
											<a href="${pageContext.request.contextPath}/user/user_delete.action?id=${user.id }"><img src="${pageContext.request.contextPath }/image/del.gif" align="bottom" border="0"/></a></td>
									</tr>
								</s:iterator>
								
			  </table>
			  <s:actionerror/>
			  </td>
					</tr>
				</table>


				<table width="100%" border="0" cellpadding="1" cellspacing="2" >
        	<tr>
        	<!-- 
          	<td colspan="2" align="right" height="20"  nowrap class="textbar3" >
							&nbsp; 共3条 &nbsp; 第1/1页 &nbsp;      				<a  href="#" style="cursor:hand">首页</a>&nbsp; 
      				<a   style="cursor:hand" href="#">上一页</a>&nbsp;
      				<a  style="cursor:hand" href="#">下一页</a>&nbsp; 
      				<a   style="cursor:hand" href="#">尾页</a>&nbsp; 
							&nbsp;
						</td> -->
          </tr>
        </table>


</FORM>
</BODY>
</html>