<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/frame.css">

  <script language="JavaScript">
	function clearStyle(){
	  ttd1.className='top1';
	  ttd2.className='top1';
	  ttd3.className='top1';
	  ttd4.className='top1';
	  ttd5.className='top1';
	  ttd6.className='top1';
	  ttd7.className='top1';
	  ttd8.className='top1';	
	  ttd9.className='top1';	
	  ttd10.className='top1';
	  ttd11.className='top1';	
	  ttd12.className='top1';		
	  ttd13.className='top1';	
	}
	
	function goto2(itt){ 	
	  clearStyle(); 	 
	  var obj = document.getElementById("ttd"+itt); 	 
	  obj.className="top2";	 
	}

</script>
<style type="text/css">
<!--
.style1 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	color: #FFFFFF;
	font-weight: bold;
}
.style2 {color: #FFFFFF}
-->
</style>
</head>
  
 <body style="overflow:hidden ">
	<table width="100%"  border="0" cellspacing="0" cellpadding="0">
		<tr>
		  <td width="100%" height="32"><TABLE WIDTH=100% BORDER=0 CELLPADDING=0 CELLSPACING=0>
            <TR>
              <TD width="376"> <IMG SRC="${pageContext.request.contextPath }/image/top_1.jpg" WIDTH=376 HEIGHT=54 ALT=""></TD>
              <TD width="90%" align="right" valign="bottom" background="${pageContext.request.contextPath }/image/top_2.jpg"><table width="100%"  border="0" align="right" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="5%" align="center">&nbsp;</td>
                    <td width="80%" align="right">&nbsp;</td>
                    <td width="27%" align="right"><table width="75%"  border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="128" height="24" align="right" background="${pageContext.request.contextPath }/image/top.jpg"><img src="${pageContext.request.contextPath }/image/bian.gif" width="128" height="24" border="0" usemap="#Map"></td>
                        </tr>
                    </table></td>
                  </tr>
              </table></TD>
            </TR>
          </TABLE></td>
		</tr>
	    <tr>
			<td height="29" background="${pageContext.request.contextPath }/image/top_m.gif">
				<table width="100%"  border="0" cellpadding="0" cellspacing="0">
				  <tr>
					<td>&nbsp;</td>
					<td><img src="${pageContext.request.contextPath }/image/top_line.gif" width="2" height="29"></td>
					<td class="top1" onClick="goto2(1);" id="ttd1" >
						<a href="${pageContext.request.contextPath }/system/f_index.action" target="midFrame">系统管理</a>
					</td> 
					<td><img src="${pageContext.request.contextPath }/image/top_line.gif" width="2" height="29"></td>
					<%-- <td class="top1" onClick="goto2(8);" id="ttd8">
						<a href="${pageContext.request.contextPath }/stock/f_index.action" target="midFrame">库存管理</a>
					</td>					
					<td><img src="${pageContext.request.contextPath }/image/top_line.gif" width="2" height="29"></td> --%>
					<td class="top1" onClick="goto2(10);" id="ttd10">
						<a href="${pageContext.request.contextPath }/common/f_index.action" target="midFrame">辅助管理</a>
					</td>
					
					<td><img src="${pageContext.request.contextPath }/image/top_line.gif" width="2" height="29"></td>
					<td align="right">${sessionScope.user.userLogin },您好！<span id="clock"></span></td>
					
				  </tr>
			 </table>
		</td>
	 </tr>
</table>
    <map name="Map">
      <area shape="rect" coords="1,3,63,25" href="#">
      <area shape="rect" coords="68,3,127,25" href="${pageContext.request.contextPath }/user/user_logout.action" target="_parent">
	</map>
</body>
</html>
