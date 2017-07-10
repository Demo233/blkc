<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>无标题文档</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/frame.css">
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/common.js"></script>
	<script type="text/jscript" language="JavaScript" src="${pageContext.request.contextPath }/js/qq_hidemenu.js"></script>
	<script type="text/jscript" language="JavaScript" src="${pageContext.request.contextPath }/js/page.js"></script>

  </head>
  
<body   nLoad="widgets.ToggleWidget(hideTop2);widgets.ToggleWidget(hideBest);widgets.ToggleWidget(hideBoard);widgets.ToggleWidget(hideSearch);">
<FORM METHOD=POST ACTION="">
<table width="180" height="100%"  border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td valign="top" class="left"><table width="98%"  border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td  height="9"></td>
      </tr>
      <tr>
        <td >
		<table width="100%" cellspacing="0" cellpadding="0" border="0">
				<tr>
				<td  class="left1">
				<a id="exp52" title="折叠" href="javascript:widgets.ToggleWidget(hideTop1);"><img id="exp5" alt="折叠" src="${pageContext.request.contextPath }/image/qq_minimize.gif"  border="0"></a>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a id="exp51" title="折叠" href="javascript:widgets.ToggleWidget(hideTop1);">系统管理</a>
				</td>
				</tr>
			</table>
		</td>
        </tr>
      <tr>
        <td class="left2" >
		<div id="hideTop1" class="hiderScroll" img="exp5" openAlt="折叠" closedAlt="展开">
		<table width="100%"  border="0" cellspacing="1" cellpadding="0">
		<!--begin个导航1-->
		<tr>
		<td>
		<div  id="menuDiv2" class="menu">&nbsp;&nbsp;&nbsp;
		<img  src="${pageContext.request.contextPath }/image/right2.gif" >
			<a href="${pageContext.request.contextPath }/common/f_index.action" target="midFrame" style="cursor: pointer;">修改密码</a>
		</div>
		</td>
		</tr>
		<!--end导航1-->   
		 <tr>
        <td>&nbsp;</td>
      </tr>
        </table>
		</div></td>
      </tr>	  
      <tr>
        <td>&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>
</FORM>
</body>
</html>