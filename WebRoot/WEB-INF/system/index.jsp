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

 </head>
  <frameset cols="180,10,*" name="sss" frameborder="NO" border="0" framespacing="0" rows="*">
    <frame name="left" noresize scrolling="auto" src="${pageContext.request.contextPath }/system/f_left.action">
    <frame src="${pageContext.request.contextPath}/system/f_middle.action" name="middle" scrolling="NO" noresize>
   	<frame name="right" src="${pageContext.request.contextPath}/bl/bl_blList.action" scrolling="auto">

   </frameset><noframes></noframes>
<noframes><body>
</body></noframes>
</html>